//  Images Grid = Grids
unit GridsImagesGrid;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniButton, jpeg, uniImage,
  uniCheckBox, uniDBCheckBox, uniDBNavigator, DB, uniBasicGrid, uniDBGrid,
  uniGUIBaseClasses, uniPanel, MainModule, ServerModule, DBClient;

type
  TUniGridsImagesGrid = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniDBGrid1: TUniDBGrid;
    DataSource1: TDataSource;
    UniDBNavigator1: TUniDBNavigator;
    UniDBCheckBox1: TUniDBCheckBox;
    UniImage1: TUniImage;
    UniButton1: TUniButton;
    UniImage2: TUniImage;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1EmpNo: TIntegerField;
    ClientDataSet1LastName: TStringField;
    ClientDataSet1FirstName: TStringField;
    ClientDataSet1PhoneExt: TStringField;
    ClientDataSet1HireDate: TDateTimeField;
    ClientDataSet1Salary: TFloatField;
    ClientDataSet1Shift: TBooleanField;
    ClientDataSet1ShiftStart: TTimeField;
    ClientDataSet1City: TStringField;
    ClientDataSet1Name2: TStringField;
    ClientDataSet1Sex: TStringField;
    procedure UniButton1Click(Sender: TObject);
    procedure UniDBGrid1FieldImage(const Column: TUniDBGridColumn;
      const AField: TField; var OutImage: TGraphic; var DoNotDispose: Boolean;
      var ATransparent: TUniTransparentOption);
    procedure UniDBGrid1FieldImageURL(const Column: TUniDBGridColumn;
      const AField: TField; var OutImageURL: string);
    procedure UniFrameCreate(Sender: TObject);
    procedure ClientDataSet1CalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public

    { Public declarations }
  end;

implementation

{$R *.dfm}



procedure TUniGridsImagesGrid.ClientDataSet1CalcFields(DataSet: TDataSet);
var
  Nm : string;
begin
  ClientDataSet1Name2.Value := ClientDataSet1FirstName.Value + ' '+ClientDataSet1LastName.Value;

  Nm := LowerCase(ClientDataSet1FirstName.AsString);
  if
    (Nm = 'roberto') or
    (Nm = 'bruce') or
    (Nm = 'phil') or
    (Nm = 'stewart') or
    (Nm = 'chris') or
    (Nm = 'pete') or
    (Nm = 'roger') or
    (Nm = 'leslie') or
    (Nm = 'ashok') or
    (Nm = 'takashi') or
    (Nm = 'bill') or
    (Nm = 'randy') or
    (Nm = 'kevin') or
    (Nm = 'michael') or
    (Nm = 'scott') or
    (Nm = 'claudia') or
    (Nm = 'walter')
   then
    ClientDataSet1Sex.Value := 'male'
   else if
    (Nm = 'kim') or
    (Nm = 'terri') or
    (Nm = 'katherine') or
    (Nm = 'ann') or
    (Nm = 'janet') or
    (Nm = 'sue anne') or
    (Nm = 'dana') or
    (Nm = 'mary') or
    (Nm = 'kelly')
   then
    ClientDataSet1Sex.Value := 'female'
   else
    ClientDataSet1Sex.Value := '-';
end;



procedure TUniGridsImagesGrid.UniButton1Click(Sender: TObject);
begin
  if DataSource1.DataSet.Active then
  begin
    DataSource1.DataSet.Close;
    UniButton1.Caption:='Open';
  end
  else
  begin
    DataSource1.DataSet.Open;
    UniButton1.Caption:='Close';
  end;
end;

procedure TUniGridsImagesGrid.UniDBGrid1FieldImage(const Column: TUniDBGridColumn;
  const AField: TField; var OutImage: TGraphic; var DoNotDispose: Boolean;
  var ATransparent: TUniTransparentOption);
begin
 if SameText(AField.FieldName, 'Name2') then
  begin
    OutImage := TBitmap.Create;
    with (OutImage as TBitmap) do
    begin
      SetSize(128, 32);
      Canvas.Font.Size := 12;
      Canvas.Font.Color := clBlue;
      Canvas.Font.Style := [fsBold,  fsItalic];
      Canvas.Brush.Style := bsBDiagonal;
      Canvas.Brush.Color := clGreen;
      Canvas.Rectangle(1, 1, 127, 31);
      Canvas.TextOut(2, 2, AField.DisplayText);
    end;
  end
  else if SameText(AField.FieldName, 'gender') then
  begin
    DoNotDispose := True; // we provide an static image so do not free it.
    if AField.AsString = 'male' then
      OutImage := UniImage1.Picture.Graphic
    else if AField.AsString = 'female' then
      OutImage := UniImage2.Picture.Graphic;
  end;
end;

procedure TUniGridsImagesGrid.UniDBGrid1FieldImageURL(const Column: TUniDBGridColumn;
  const AField: TField; var OutImageURL: string);
begin
  if (Column.Tag = 255) and SameText(AField.FieldName, 'shift') then
  begin
    if AField.AsBoolean then
      OutImageURL := 'files/sun.jpeg'
    else
      OutImageURL := 'files/moon.jpeg';
  end;
end;

procedure TUniGridsImagesGrid.UniFrameCreate(Sender: TObject);
begin
  UniMainModule.LoadClientFromStream(ClientDataSet1, 'Employee.cds');
end;

initialization
   RegisterClass(TUniGridsImagesGrid);

end.
