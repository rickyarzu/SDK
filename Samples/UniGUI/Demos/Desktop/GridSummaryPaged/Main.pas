//AllFeatures: Grid,Summary - Paged,icon-grid-summary
unit Main;
{$I uniCompilers.inc}

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIRegClasses,  uniguiclasses, uniGUIForm, uniGUIBaseClasses, uniBasicGrid, uniDBGrid, DB,
  DBClient, uniPanel, uniDBNavigator, uniEdit, uniDBEdit, uniButton;

type
  TMainForm = class(TUniForm)
    UniDBGrid1: TUniDBGrid;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1Col1: TStringField;
    ClientDataSet1UnitPrice: TFloatField;
    ClientDataSet1Quantity: TIntegerField;
    DataSource1: TDataSource;
    UniDBNavigator1: TUniDBNavigator;
    ClientDataSet1Category: TStringField;
    procedure UniFormCreate(Sender: TObject);
    procedure UniDBGrid1ColumnSummaryResult(Column: TUniDBGridColumn;
      GroupFieldValue: Variant; Attribs: TUniCellAttribs; var Result: string);
    procedure ClientDataSet1NewRecord(DataSet: TDataSet);
    procedure ClientDataSet1AfterPost(DataSet: TDataSet);
  private
    { Private declarations }
    FInited : Boolean;
    GTotal: Integer;
    GTotalPrice: Real;
    procedure CalcTotals;
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication;

const
  Categories : array [1..3] of string = ('Raw Material', 'Product', 'Other');

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.ClientDataSet1AfterPost(DataSet: TDataSet);
begin
  // Recalculate totals each time grid data is updated
  CalcTotals;
end;

procedure TMainForm.ClientDataSet1NewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('unitprice').AsFloat:=5.0;
end;

procedure TMainForm.UniDBGrid1ColumnSummaryResult(Column: TUniDBGridColumn;
  GroupFieldValue: Variant; Attribs: TUniCellAttribs; var Result: string);
begin
  if SameText(Column.FieldName, 'quantity') then
  begin
    Result:=Format('Total Units: %d', [GTotal]);
    Attribs.Font.Style:=[fsBold];
    Attribs.Font.Color:=clGreen;
  end
  else if SameText(Column.FieldName, 'unitprice') then
  begin
    Result:='Total Cost: '+FormatCurr('0,0.00 ', GTotalPrice) + FmtSettings.CurrencyString;
    Attribs.Font.Style:=[fsBold];
    Attribs.Font.Color:=clNavy;
  end;
end;

// We need to handle calculating Totals here because our grid is paged and only one page is displayed at a time
procedure TMainForm.CalcTotals;
var
  B : TBookmark;
begin
  if not FInited then Exit;
  ClientDataSet1.DisableControls;
  B := ClientDataSet1.GetBookmark;
  try
    GTotal := 0;
    GTotalPrice := 0.0;

    ClientDataSet1.First;
    while not ClientDataSet1.Eof do
    begin
      GTotal := GTotal + ClientDataSet1.FieldByName('Quantity').AsInteger;
      GTotalPrice := GTotalPrice +
                    ( ClientDataSet1.FieldByName('UnitPrice').AsFloat * ClientDataSet1.FieldByName('Quantity').AsInteger );

      ClientDataSet1.Next;
    end;
  finally
    ClientDataSet1.GotoBookmark(B);
    ClientDataSet1.FreeBookmark(B);
    ClientDataSet1.EnableControls;
  end;
end;

procedure TMainForm.UniFormCreate(Sender: TObject);
var
  I : Integer;
begin
  for I := 1 to 100 do
  begin
    with ClientDataSet1 do
    begin
      Append;
      FieldByName('Item').AsString:='AG-'+Format('%0.5d', [I]);
      FieldByName('UnitPrice').AsFloat:=Random(2000)/100;
      FieldByName('Quantity').AsInteger:=Random(20);
      FieldByName('Category').AsString:=Categories[Random(3)+1];
      Post;
    end;
  end;

  ClientDataSet1.First;

  FInited := True;
  CalcTotals;
end;

initialization
  RegisterMainFormClass(TMainForm);

end.
