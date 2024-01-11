//AllFeatures: Grid,Widget Column,icon-widget-grid
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniWidgets, uniPanel,
  uniGUIBaseClasses, uniBasicGrid, uniDBGrid, Data.DB;

type
  TMainForm = class(TUniForm)
    UniDBGrid1: TUniDBGrid;
    UniHiddenPanel1: TUniHiddenPanel;
    UniSparklineBarWidget1: TUniSparklineBarWidget;
    procedure UniSparklineBarWidget1GetDataRecord(const DataSet: TDataSet;
      var Data: UniWidgetRecordArray);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.UniSparklineBarWidget1GetDataRecord(const DataSet: TDataSet;
  var Data: UniWidgetRecordArray);
var
  I : Integer;
begin
  with UniMainModule do
  begin
    ClientDataSet2.SetRangeStart;
    ClientDataSet2.FieldByName('custno').AsInteger := DataSet.FieldByName('custno').AsInteger;
    ClientDataSet2.FieldByName('SaleDate').AsDateTime := 0;
    ClientDataSet2.SetRangeEnd;
    ClientDataSet2.FieldByName('custno').AsInteger := DataSet.FieldByName('custno').AsInteger;
    ClientDataSet2.FieldByName('SaleDate').AsDateTime := MaxDateTime;
    ClientDataSet2.ApplyRange;

    SetLength(Data, ClientDataSet2.RecordCount);
    ClientDataSet2.First;
    I := 0;
    while not ClientDataSet2.Eof  do
    begin
      Data[I].AValue := ClientDataSet2.FieldByName('ItemsTotal').AsFloat;
      Data[I].ALabel := 'Date:' + FormatDateTime('dd/mm/yy',
                                        ClientDataSet2.FieldByName('SaleDate').AsDateTime) + ',';
      Inc(I);
      ClientDataSet2.Next;
    end;

  end;
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
