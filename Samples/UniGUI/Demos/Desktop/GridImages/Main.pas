//AllFeatures: Grid,Images,icon-imageviewer
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, DB, uniPanel,
  uniDBNavigator, uniButton, uniGUIBaseClasses, uniBasicGrid, uniDBGrid,
  uniImage, uniCheckBox, uniDBCheckBox, jpeg;

type
  TMainForm = class(TUniForm)
    UniDBGrid1: TUniDBGrid;
    UniButton1: TUniButton;
    UniDBNavigator1: TUniDBNavigator;
    DataSource1: TDataSource;
    UniDBCheckBox1: TUniDBCheckBox;
    UniImage1: TUniImage;
    UniImage2: TUniImage;
    procedure UniButton1Click(Sender: TObject);
    procedure UniDBGrid1FieldImageURL(const Column: TUniDBGridColumn;
      const AField: TField; var OutImageURL: string);
    procedure UniDBGrid1FieldImage(const Column: TUniDBGridColumn;
      const AField: TField; var OutImage: TGraphic; var DoNotDispose: Boolean;
      var ATransparent: TUniTransparentOption);
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

procedure TMainForm.UniButton1Click(Sender: TObject);
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

procedure TMainForm.UniDBGrid1FieldImage(const Column: TUniDBGridColumn;
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

procedure TMainForm.UniDBGrid1FieldImageURL(const Column: TUniDBGridColumn;
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

initialization
  RegisterAppFormClass(TMainForm);

end.
