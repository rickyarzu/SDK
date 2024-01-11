unit Mainm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIRegClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  DB, uniDBNavigator, unimDBNavigator, uniGUIBaseClasses, uniBasicGrid,
  uniDBGrid, unimDBListGrid, unimDBGrid, jpeg, uniImage, unimImage,
  pngimage;

type
  TMainmForm = class(TUnimForm)
    UnimDBGrid1: TUnimDBGrid;
    DataSource1: TDataSource;
    UniImage2: TUnimImage;
    UniImage1: TUnimImage;
    procedure UnimDBGrid1FieldImage(const Column: TunimDBGridColumn;
      const AField: TField; var OutImage: TGraphic; var DoNotDispose: Boolean;
      var ATransparent: TUniTransparentOption);
    procedure UnimDBGrid1FieldImageURL(const Column: TunimDBGridColumn;
      const AField: TField; var OutImageURL: string);
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

procedure TMainmForm.UnimDBGrid1FieldImage(const Column: TunimDBGridColumn;
  const AField: TField; var OutImage: TGraphic; var DoNotDispose: Boolean;
  var ATransparent: TUniTransparentOption);
begin
  if SameText(AField.FieldName, 'Name2') then
  begin
    OutImage := TBitmap.Create;
    with (OutImage as TBitmap) do
    begin
      SetSize(256, 60);
      Canvas.Font.Size := 20;
      Canvas.Font.Color := clBlue;
      Canvas.Font.Style := [fsBold,  fsItalic];
      Canvas.Brush.Style := bsBDiagonal;
      Canvas.Brush.Color := clGreen;
      Canvas.Rectangle(1, 1, 255, 59);
      Canvas.TextOut(2, 6, AField.DisplayText);
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

procedure TMainmForm.UnimDBGrid1FieldImageURL(const Column: TunimDBGridColumn;
  const AField: TField; var OutImageURL: string);
begin
  if (Column.Tag = 255) and SameText(AField.FieldName, 'shift') then
  begin
    if AField.AsBoolean then
      OutImageURL := 'files/sun.png'
    else
      OutImageURL := 'files/moon.png';
  end;
end;

initialization
  RegisterAppFormClass(TMainmForm);

end.
