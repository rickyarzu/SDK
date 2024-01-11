unit Mainm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIRegClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniGUIBaseClasses, uniBasicGrid, uniDBGrid, unimDBListGrid, unimDBGrid,
  DB, DBClient;

type
  TMainmForm = class(TUnimForm)
    UnimDBGrid1: TUnimDBGrid;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1Col1: TStringField;
    ClientDataSet1UnitPrice: TFloatField;
    ClientDataSet1Quantity: TIntegerField;
    DataSource1: TDataSource;
    procedure UnimFormCreate(Sender: TObject);
    procedure UnimDBGrid1ColumnSummary(Column: TunimDBGridColumn);
    procedure UnimDBGrid1ColumnSummaryResult(Column: TunimDBGridColumn;
      var Result: string);
    procedure ClientDataSet1NewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainmForm: TMainmForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication;

function MainmForm: TMainmForm;
begin
  Result := TMainmForm(UniMainModule.GetFormInstance(TMainmForm));
end;

procedure TMainmForm.ClientDataSet1NewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('unitprice').AsFloat:=5.0;
end;

procedure TMainmForm.UnimDBGrid1ColumnSummary(Column: TunimDBGridColumn);
begin
  if SameText(Column.FieldName, 'quantity') then
  begin
    if Column.AuxValue=NULL then Column.AuxValue:=0;
    Column.AuxValue:=Column.AuxValue + Column.Field.AsInteger;
  end
  else if SameText(Column.FieldName, 'unitprice') then
  begin
    if Column.AuxValue=NULL then Column.AuxValue:=0.0;
    Column.AuxValue:=Column.AuxValue + (Column.Field.AsFloat * ClientDataSet1Quantity.AsInteger);
  end;
end;

procedure TMainmForm.UnimDBGrid1ColumnSummaryResult(Column: TunimDBGridColumn;
  var Result: string);
var
  I : Integer;
  F : Real;
begin
  if SameText(Column.FieldName, 'quantity') then
  begin
    I:=Column.AuxValue;
    Result:=Format('Total Units: %d', [I]);
  end
  else if SameText(Column.FieldName, 'unitprice') then
  begin
    F:=Column.AuxValue;
    Result:='Total Cost: '+FormatCurr('0,0.00 ', F) + FormatSettings.CurrencyString;
  end;
  Column.AuxValue:=NULL;
end;

procedure TMainmForm.UnimFormCreate(Sender: TObject);
var
  I : Integer;
begin
  for I := 1 to 15 do
  begin
    with ClientDataSet1 do
    begin
      Append;
      FieldByName('Item').AsString:='AG-'+Format('%0.5d', [I]);
      FieldByName('UnitPrice').AsFloat:=Random(20000)/100;
      FieldByName('Quantity').AsInteger:=Random(500);
    end;
  end;
end;

initialization
  RegisterAppFormClass(TMainmForm);

end.
