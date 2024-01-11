//AllFeatures: Grid,Cell Style,icon-cell-editing
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniBasicGrid,
  uniStringGrid, Data.DB, Datasnap.DBClient, uniDBGrid;

type
  TMainForm = class(TUniForm)
    UniStringGrid1: TUniStringGrid;
    UniDBGrid1: TUniDBGrid;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1Col1: TStringField;
    ClientDataSet1UnitPrice: TFloatField;
    ClientDataSet1Quantity: TIntegerField;
    DataSource1: TDataSource;
    procedure UniStringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      var Value: string; Attribs: TUniCellAttribs);
    procedure UniFormCreate(Sender: TObject);
    procedure UniDBGrid1FieldImage(const Column: TUniDBGridColumn;
      const AField: TField; var OutImage: TGraphic; var DoNotDispose: Boolean;
      var ATransparent: TUniTransparentOption);
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
  uniGUIVars, MainModule, uniGUIApplication;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.UniDBGrid1DrawColumnCell(Sender: TObject; ACol,
  ARow: Integer; Column: TUniDBGridColumn; Attribs: TUniCellAttribs);
begin
  if ACol = 1 then
    Attribs.Style.Cls:= 'myShadowStyle' // style is defined in file "files/mycss.css"
  else if ACol = 2 then
    Attribs.Style.Padding := '0px';    // force image to fit in the cell
end;

procedure TMainForm.UniDBGrid1FieldImage(const Column: TUniDBGridColumn;
  const AField: TField; var OutImage: TGraphic; var DoNotDispose: Boolean;
  var ATransparent: TUniTransparentOption);
begin
  OutImage := TBitmap.Create;
  OutImage.SetSize(128,32);
  TBitmap(OutImage).Canvas.Brush.Style := bsSolid;
  TBitmap(OutImage).Canvas.Brush.Color := $00EEEEEE;
  TBitmap(OutImage).Canvas.Rectangle(0, 0, 127, 32);
  TBitmap(OutImage).Canvas.Pen.Color := clGray;
  TBitmap(OutImage).Canvas.Rectangle(2, 2, 125, 29);

  TBitmap(OutImage).Canvas.Font.Color := clBlue;
  TBitmap(OutImage).Canvas.Font.Size := 12;
  TBitmap(OutImage).Canvas.Font.Style := [fsBold];
  TBitmap(OutImage).Canvas.TextOut(5, 5, AField.Value);
  ATransparent := toNone; // We don't need transparency here, so Prevent automatic transparency conversion
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

procedure TMainForm.UniStringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
  var Value: string; Attribs: TUniCellAttribs);
begin
  if Random(3) = 1 then
    Attribs.Style.Cls := 'myStyle1'  // style is defined in file "files/mycss.css"
  else if Random(3) = 1 then
    Attribs.Style.Style := 'border: 2px solid green'   // define a style directly
  else if Random(3) = 1 then
    Attribs.Style.Style := 'border: 2px dotted red';
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
