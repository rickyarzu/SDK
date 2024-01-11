//AllFeatures: StringGrid,Cell Draw,icon-cell-editing
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUIForm, uniGUITypes, Grids, UniStringGrid,
  StdCtrls, UniLabel, DBGrids, uniDBGrid, DB, DBClient, ExtCtrls, DBCtrls,
  UniDBNavigator, uniGUIRegClasses,  uniGUIClasses, UniPanel, UniBasicGrid, uniGUIBaseClasses,
  UniGUIAbstractClasses, uniButton, uniBitBtn;

type
  TMainForm = class(TUniForm)
    UniStringGrid1: TUniStringGrid;
    UniDBGrid1: TUniDBGrid;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    ClientDataSet1Col1: TStringField;
    ClientDataSet1UnitPrice: TFloatField;
    ClientDataSet1Quantity: TIntegerField;
    UniDBNavigator1: TUniDBNavigator;
    procedure UniStringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      var Value: string; Attribs: TUniCellAttribs);
    procedure UniFormCreate(Sender: TObject);
    procedure UniDBGrid1DrawColumnCell(Sender: TObject; ACol, ARow: Integer;
      Column: TUniDBGridColumn; Attribs: TUniCellAttribs);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  UniGUIVars, MainModule;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.UniFormCreate(Sender: TObject);
var
  I, J : Integer;
begin
  for I := 0 to UniStringGrid1.ColCount - 1 do
    for J := 0 to UniStringGrid1.RowCount - 1 do
      UniStringGrid1.Cells[I, J]:=IntToStr(Random(3000));

  for I := 1 to 10 do
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

procedure TMainForm.UniDBGrid1DrawColumnCell(Sender: TObject; ACol,
  ARow: Integer; Column: TUniDBGridColumn; Attribs: TUniCellAttribs);
begin
  if ACol=0 then
  begin
    Attribs.Color:=$E0E0E0;
    Attribs.Font.Style:=[fsBold];
  end;

  if Column.FieldName='UnitPrice' then
  begin
    if Column.Field.AsFloat>100 then
    begin
      Attribs.Font.Color:=clMaroon;
      Attribs.Font.Style:=[fsBold, fsItalic];
    end;
  end
  else if Column.FieldName='Quantity' then
  begin
    if Column.Field.AsInteger<200 then
    begin
      Attribs.Font.Color:=clRed;
      Attribs.Font.Style:=[fsBold];
      Attribs.Color:=clLtGray;
    end;
  end;
end;

procedure TMainForm.UniStringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
  var Value: string; Attribs: TUniCellAttribs);
var
  S : string;
  Val : Integer;
begin
  S:=TUniStringGrid(Sender).Cells[ACol, ARow];
  Val:=StrToIntDef(S, -1);
  case val of
    0..1000 :
      Attribs.Font.Color:=clNavy;

    1001..2000 :
      begin
        Attribs.Font.Color:=clRed;
        Attribs.Font.Style:=[fsBold];
      end;

    2001..3000 :
      begin
        Attribs.Font.Color:=clBlue;
        Attribs.Font.Style:=[fsBold, fsItalic];
        Attribs.Color:=clLtGray;
      end;
  end;
end;

initialization
  RegisterMainFormClass(TMainForm);

end.
