unit ufrmBindTestOrm;

interface

uses
  DUnitX.TestFramework,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, CRGrid,
  Vcl.Samples.Spin, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Mask, JvExMask, JvToolEdit,
  JvBaseEdits, AdvEdit, AdvMoneyEdit, MoneyEdit,
  FireDAC.Comp.Client,
  // Jnaua
  Janua.ViewModels.Intf, Janua.ViewModels.Templates, Janua.Test.ViewModel.Intf, Janua.Orm.Intf,
  Janua.Orm.Test.Intf, Janua.Core.Classes,
  Janua.Orm.Dataset.Intf, Janua.Vcl.EnhCRDBGrid,
  // Interposers
  Janua.Vcl.Interposers, Janua.TMS.Interposers;

type
  TfrmBindTestOrm = class(TForm)
    lbString: TLabel;
    lbInt: TLabel;
    lbDate: TLabel;
    grpMaster: TGroupBox;
    lbJguid: TLabel;
    edStringField: TEdit;
    edBoolean: TCheckBox;
    edDateTime: TDateTimePicker;
    edMemo: TMemo;
    Button1: TButton;
    btnUndo: TButton;
    edIntFiled: TJvCalcEdit;
    grpDetail: TGroupBox;
    lbDetailGUID: TLabel;
    edDetailString: TEdit;
    btnPrev: TButton;
    btnNext: TButton;
    btnDel: TButton;
    btnAdd: TButton;
    btnSave: TButton;
    btnPost: TButton;
    edDetailInt: TSpinEdit;
    btnFirst: TButton;
    Button3: TButton;
    EnhCRDBGrid1: TEnhCRDBGrid;
    DBNavigator1: TDBNavigator;
    edExtended: TAdvMoneyEdit;
    MoneyEdit1: TMoneyEdit;
    procedure btnAddClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure btnPrevClick(Sender: TObject);
    procedure btnUndoClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    FCurrentRecord: IJanuaTestNestedRecord;
    FMemTable: TFDMemTable;
    FSerialization: IJanuaDatasetSerialization;
    procedure SetCurrentRecord(const Value: IJanuaTestNestedRecord);
    procedure SetMemTable(const Value: TFDMemTable);
    procedure SetFSerialization(const Value: IJanuaDatasetSerialization);
  public
    { Public declarations }
    property CurrentRecord: IJanuaTestNestedRecord read FCurrentRecord write SetCurrentRecord;
    property MemTable: TFDMemTable read FMemTable write SetMemTable;
    property Serialization: IJanuaDatasetSerialization read FSerialization write SetFSerialization;
  end;

var
  frmBindTestOrm: TfrmBindTestOrm;

implementation

uses Janua.Application.Framework;

{$R *.dfm}
{ TForm3 }

procedure TfrmBindTestOrm.btnAddClick(Sender: TObject);
begin
  FCurrentRecord.SubRecordSet.Append;
end;

procedure TfrmBindTestOrm.btnDelClick(Sender: TObject);
begin
  FCurrentRecord.SubRecordSet.Delete;
end;

procedure TfrmBindTestOrm.btnNextClick(Sender: TObject);
begin
  FCurrentRecord.SubRecordSet.Next;
end;

procedure TfrmBindTestOrm.btnPostClick(Sender: TObject);
begin
  FCurrentRecord.SubRecordSet.Post;
end;

procedure TfrmBindTestOrm.btnPrevClick(Sender: TObject);
begin
  FCurrentRecord.SubRecordSet.Prev;
end;

procedure TfrmBindTestOrm.btnUndoClick(Sender: TObject);
begin
  // This 'undoes' changes to Dataset by restoring data from original dataset Record 'How'?
  // The Record must locate in the connected dataset 'itself' if present through a locate proc
  // after it must reload from Dataset itself.
  FCurrentRecord.RefreshFromDataset;
end;

procedure TfrmBindTestOrm.Button1Click(Sender: TObject);
begin
  FCurrentRecord.SaveToDataset(False);
end;

procedure TfrmBindTestOrm.Button3Click(Sender: TObject);
begin

end;

{ TfrmBindTestOrm }

procedure TfrmBindTestOrm.SetCurrentRecord(const Value: IJanuaTestNestedRecord);
var
  R: IJanuaTestNestedRecord;
begin
  try
    FCurrentRecord := Value;
    R := Value;
    FCurrentRecord.Bind('GUIDString', lbJguid, 'Caption', True);
    Assert.AreEqual(1, R.BindManager.BindCount, 'Record Bool');
    Assert.AreEqual(0, lbJguid.BindManager.BindCount, 'lbJguid');

    FCurrentRecord.TestString.Bind('AsString', Self.edStringField, 'Text');
    FCurrentRecord.TestString.Bind('AsString', Self.lbString, 'Caption', True);
    Assert.AreEqual(2, R.TestString.BindManager.BindCount, 'Record Bool');
    Assert.AreEqual(0, lbString.BindManager.BindCount, 'lbString');
    Assert.AreEqual(1, edStringField.BindManager.BindCount, 'edStringField');
    Assert.AreEqual(R.TestString.AsString, Self.lbString.Caption, 'String Caption');
    Assert.AreEqual(R.TestString.AsString, Self.edStringField.Text, 'String Text');

    // edIntFiled
    FCurrentRecord.TestInteger.Bind('AsInteger', Self.edIntFiled, 'Value');
    FCurrentRecord.TestInteger.Bind('AsString', Self.lbInt, 'Caption', True);
    Assert.AreEqual(2, R.TestInteger.BindManager.BindCount, 'Record Integer');
    Assert.AreEqual(1, edIntFiled.BindManager.BindCount, 'edIntFiled');
    Assert.AreEqual(0, lbInt.BindManager.BindCount, 'lbInt');

    // edExtended
    FCurrentRecord.TestDouble.Bind('AsFloat', Self.edExtended, 'Value');

    // edBoolean
    FCurrentRecord.TestBoolean.Bind('AsBoolean', Self.edBoolean, 'Checked');
    Assert.AreEqual(1, R.GetBoolean.BindManager.BindCount, 'Record Bool');

    // edDateTime.DateTime
    FCurrentRecord.TestDateTime.Bind('AsDateTime', edDateTime, 'DateTime');
    FCurrentRecord.TestDateTime.Bind('AsString', Self.lbDate, 'Caption');

    // edMemo.Text
    FCurrentRecord.TestMemo.Bind('AsString', edMemo, 'Text');

    // Self.edDetailInt
    FCurrentRecord.SubRecordSet.TestInteger.Bind('AsInteger', Self.edDetailInt, 'Value');

    // edDtailString.Text
    FCurrentRecord.SubRecordSet.TestString.Bind('AsString', edDetailString, 'Text');
    FCurrentRecord.SubRecordSet.CurrentRecord.Bind('GUIDString', lbDetailGUID, 'Caption', True);

    FMemTable := TFDMemTable.Create(nil);
    FSerialization := TOrmDatasetFactory.CreateDatasetSerialization(FCurrentRecord.SubRecordSet);
    FSerialization.Activate;
    EnhCRDBGrid1.DataSource := FSerialization.DataSource;
    DBNavigator1.DataSource := FSerialization.DataSource;
  except
    on e: Exception do
      RaiseException('SetCurrentRecord', e, Self);
  end;
end;

procedure TfrmBindTestOrm.SetFSerialization(const Value: IJanuaDatasetSerialization);
begin
  FSerialization := Value;
end;

procedure TfrmBindTestOrm.SetMemTable(const Value: TFDMemTable);
begin
  FMemTable := Value;
end;

end.
