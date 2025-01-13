unit Janua.Test.VCL.frameBindTestOrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Mask, JvExMask, JvToolEdit, JvBaseEdits,
  Vcl.ComCtrls, Vcl.Samples.Spin, FireDAC.Comp.Client, Vcl.DBGrids, CRGrid, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.Grids,

  // Jnaua
  Janua.ViewModels.Intf, Janua.ViewModels.Templates, Janua.Test.ViewModel.Intf, Janua.Orm.Intf,
  Janua.Orm.Test.Intf, Janua.Core.Classes,
  Janua.Orm.Dataset.Intf, Janua.Vcl.EnhCRDBGrid,
  // Interposers
  Janua.Vcl.Interposers, Janua.TMS.Interposers, Vcl.Buttons;

type
  TframeBindTestOrm = class(TFrame)
    grpMaster: TGroupBox;
    grpDetail: TGroupBox;
    edStringField: TEdit;
    edExtended: TJvCalcEdit;
    edBoolean: TCheckBox;
    edDateTime: TDateTimePicker;
    edMemo: TMemo;
    edDetailString: TEdit;
    btnPrev: TButton;
    btnNext: TButton;
    btnDel: TButton;
    btnAdd: TButton;
    btnSave: TButton;
    btnPost: TButton;
    edDetailInt: TSpinEdit;
    Button1: TButton;
    btnUndo: TButton;
    EnhCRDBGrid1: TEnhCRDBGrid;
    DBNavigator1: TDBNavigator;
    lbDetailGUID: TLabel;
    edIntFiled: TJvCalcEdit;
    lbString: TLabel;
    lbJguid: TLabel;
    lbInt: TLabel;
    lbDate: TLabel;
    btnFirst: TButton;
    btnLast: TButton;
    procedure btnAddClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure btnFirstClick(Sender: TObject);
    procedure btnLastClick(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure btnPrevClick(Sender: TObject);
    procedure btnUndoClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    FTestNestedRecord: IJanuaTestNestedRecord;
    FMemTable: TFDMemTable;
    FSerialization: IJanuaDatasetSerialization;
    procedure SetTestNestedRecord(const Value: IJanuaTestNestedRecord);
    procedure SetMemTable(const Value: TFDMemTable);
    procedure SetFSerialization(const Value: IJanuaDatasetSerialization);
  public
    { Public declarations }
    property TestNestedRecord: IJanuaTestNestedRecord read FTestNestedRecord write SetTestNestedRecord;
    property MemTable: TFDMemTable read FMemTable write SetMemTable;
    property Serialization: IJanuaDatasetSerialization read FSerialization write SetFSerialization;
  end;

implementation

uses Janua.Application.Framework, Janua.Orm.Dataset.Impl;

{$R *.dfm}

procedure TframeBindTestOrm.btnAddClick(Sender: TObject);
begin
  FTestNestedRecord.SubRecordSet.Append;
end;

procedure TframeBindTestOrm.btnDelClick(Sender: TObject);
begin
  FTestNestedRecord.SubRecordSet.Delete;
end;

procedure TframeBindTestOrm.btnFirstClick(Sender: TObject);
begin
  FTestNestedRecord.SubRecordSet.First;
end;

procedure TframeBindTestOrm.btnLastClick(Sender: TObject);
begin
  FTestNestedRecord.SubRecordSet.Last
end;

procedure TframeBindTestOrm.btnNextClick(Sender: TObject);
begin
  FTestNestedRecord.SubRecordSet.Next;
end;

procedure TframeBindTestOrm.btnPostClick(Sender: TObject);
begin
  FTestNestedRecord.SubRecordSet.Post;
end;

procedure TframeBindTestOrm.btnPrevClick(Sender: TObject);
begin
  FTestNestedRecord.SubRecordSet.Prev;
end;

procedure TframeBindTestOrm.btnUndoClick(Sender: TObject);
begin
  // This 'undoes' changes to Dataset by restoring data from original dataset Record 'How'?
  // The Record must locate in the connected dataset 'itself' if present through a locate proc
  // after it must reload from Dataset itself.
  FTestNestedRecord.RefreshFromDataset;
end;

procedure TframeBindTestOrm.Button1Click(Sender: TObject);
begin
  FTestNestedRecord.SaveToDataset(False);
end;

{ TframeBindTestOrm }

procedure TframeBindTestOrm.SetTestNestedRecord(const Value: IJanuaTestNestedRecord);
begin
  (*
    Questa procedura di Test riceve il 'record' Test (che è stato popolato dalla procedura di Load del tasto
    'Start').
    Il Record si compone di diversi Campi  (Record Master) e di un Sub Dataset Caricati dalla procedura:
    FCurrentRecord.LoadFromDataset(FDM.jdsTestMaster, [FDM.jdsTestDetail]);
    IJanuaRecord.LoadFromDataset loads the Current Record in the Dataset.

    La struttura IJanuaRecord ed IJanuaRecordSet vengono impiegate anche dal Repository per definire tipi di
    dato Custom (Business Objects) o per 'mappare' Tabelle di Database.
  *)
  try
    FTestNestedRecord := Value;
    FTestNestedRecord.Bind('GUIDString', lbJguid, 'Caption', True);
    FTestNestedRecord.TestString.Bind('AsString', Self.edStringField, 'Text');
    FTestNestedRecord.TestString.Bind('AsString', Self.lbString, 'Caption');
    // edIntFiled
    FTestNestedRecord.TestInteger.Bind('AsInteger', Self.edIntFiled, 'Value');
    FTestNestedRecord.TestInteger.Bind('AsString', Self.lbInt, 'Caption');
    // edExtended
    FTestNestedRecord.TestDouble.Bind('AsFloat', Self.edExtended, 'Value');
    // edBoolean
    FTestNestedRecord.TestBoolean.Bind('AsBoolean', Self.edBoolean, 'Checked');
    // edDateTime.DateTime
    FTestNestedRecord.TestDateTime.Bind('AsDateTime', edDateTime, 'DateTime');
    FTestNestedRecord.TestDateTime.Bind('AsString', Self.lbDate, 'Caption');
    // edMemo.Text
    FTestNestedRecord.TestMemo.Bind('AsString', edMemo, 'Text');
    // Self.edDetailInt
    FTestNestedRecord.SubRecordSet.TestInteger.Bind('AsInteger', Self.edDetailInt, 'Value');
    // edMemo.Text
    FTestNestedRecord.SubRecordSet.TestString.Bind('AsString', edDetailString, 'Text');
    FTestNestedRecord.SubRecordSet.CurrentRecord.Bind('GUIDString', lbDetailGUID, 'Caption', True);

    FMemTable := TFDMemTable.Create(nil);
    (*
      Il Nucleo del Test è l'oggetto 'Serializzazione' o Dataset Serialization.
      FSerialization è l'oggetto che contiene il Dataset Sincronizzato con lo JanuaRecordset di riferimento
      e che ci permette quindi di Collegare il recordset 'Logico' IJanuaRecordset come se fosse un normale
      Dataset usando componenti Data-Aware standard
    *)
    FSerialization := TOrmDatasetFactory.CreateDatasetSerialization(FTestNestedRecord.SubRecordSet);
    FSerialization.Activate;
    EnhCRDBGrid1.DataSource := FSerialization.DataSource;
    DBNavigator1.DataSource := FSerialization.DataSource;
  except
    on e: Exception do
      RaiseException('btnSetupRecordClick', e, Self);
  end;
end;

procedure TframeBindTestOrm.SetFSerialization(const Value: IJanuaDatasetSerialization);
begin
  FSerialization := Value;
end;

procedure TframeBindTestOrm.SetMemTable(const Value: TFDMemTable);
begin
  FMemTable := Value;
end;

end.
