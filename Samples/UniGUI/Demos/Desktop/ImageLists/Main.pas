//AllFeatures: ImageList,Basic Demo,icon-imageviewer
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniImageList, uniGUIBaseClasses,
  uniToolBar, uniBitBtn, uniButton, uniPanel, uniCanvas, uniImage;

type
  TMainForm = class(TUniForm)
    UniToolBar1: TUniToolBar;
    UniImageList1: TUniImageList;
    UniNativeImageList1: TUniNativeImageList;
    UniToolButton1: TUniToolButton;
    UniToolButton2: TUniToolButton;
    UniToolButton3: TUniToolButton;
    UniToolButton4: TUniToolButton;
    UniToolButton5: TUniToolButton;
    UniToolButton6: TUniToolButton;
    UniToolButton7: TUniToolButton;
    UniToolButton8: TUniToolButton;
    UniToolButton9: TUniToolButton;
    UniToolButton10: TUniToolButton;
    UniToolButton11: TUniToolButton;
    UniToolButton12: TUniToolButton;
    UniToolButton13: TUniToolButton;
    UniToolButton14: TUniToolButton;
    UniButton1: TUniButton;
    UniButton2: TUniButton;
    UniButton3: TUniButton;
    UniBitBtn1: TUniBitBtn;
    UniBitBtn2: TUniBitBtn;
    UniButton4: TUniButton;
    UniImageList2: TUniImageList;
    UniPanel1: TUniPanel;
    UniButton5: TUniButton;
    UniToolBar2: TUniToolBar;
    UniToolButton15: TUniToolButton;
    UniToolButton16: TUniToolButton;
    UniToolButton17: TUniToolButton;
    UniToolButton18: TUniToolButton;
    UniToolButton19: TUniToolButton;
    UniToolButton20: TUniToolButton;
    UniToolButton21: TUniToolButton;
    UniToolButton22: TUniToolButton;
    UniToolButton23: TUniToolButton;
    UniToolButton24: TUniToolButton;
    UniToolButton25: TUniToolButton;
    UniToolButton26: TUniToolButton;
    UniPanel2: TUniPanel;
    UniButton6: TUniButton;
    UniToolBar3: TUniToolBar;
    UniToolButton27: TUniToolButton;
    UniToolButton28: TUniToolButton;
    UniToolButton29: TUniToolButton;
    UniToolButton30: TUniToolButton;
    UniToolButton31: TUniToolButton;
    UniToolButton32: TUniToolButton;
    UniToolButton33: TUniToolButton;
    UniToolButton34: TUniToolButton;
    UniToolButton35: TUniToolButton;
    UniToolButton36: TUniToolButton;
    UniToolButton37: TUniToolButton;
    UniToolButton38: TUniToolButton;
    UniNativeImageList2: TUniNativeImageList;
    UniButton7: TUniButton;
    UniPanel3: TUniPanel;
    UniCanvas1: TUniCanvas;
    UniButton8: TUniButton;
    UniButton9: TUniButton;
    UniButton10: TUniButton;
    UniButton11: TUniButton;
    UniPanel4: TUniPanel;
    UniImage1: TUniImage;
    procedure UniButton5Click(Sender: TObject);
    procedure UniButton6Click(Sender: TObject);
    procedure UniButton7Click(Sender: TObject);
    procedure UniButton8Click(Sender: TObject);
    procedure UniButton9Click(Sender: TObject);
    procedure UniButton10Click(Sender: TObject);
    procedure UniButton11Click(Sender: TObject);
    procedure UniButton1Click(Sender: TObject);
    procedure UniBitBtn1Click(Sender: TObject);
    procedure UniToolButton1Click(Sender: TObject);
  private
    procedure AssignImages(AImages: TUniCustomImageList; AToolBar: TUniToolBar);
    { Private declarations }
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, ServerModule,
  pngimage, jpeg;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.AssignImages(AImages: TUniCustomImageList; AToolBar: TUniToolBar);
var
  F : TFileRec;
  Sr: TSearchRec;
  S, sPath : string;
  Ix, ImgIx : Integer;
  B : TUniToolButton;
begin
  Ix := 0;
  sPath := UniServerModule.StartPath + 'image_icons\';
  AImages.Clear;
  if FindFirst(sPath + '*.ico', faAnyFile, Sr) = 0 then
  begin
    repeat
      if Sr.Attr <> faDirectory then
      begin
        S := sPath + Sr.Name;
        ImgIx := AImages.AddIconFile(S);

        if Ix < AToolBar.Buttons.Count then
          if TObject(AToolBar.Buttons[Ix]) is TUniToolButton then
          begin
            B := TUniToolButton(AToolBar.Buttons[Ix]);
            B.ImageIndex := ImgIx;
          end;
        Inc(Ix);
      end;
    until FindNext(Sr) <> 0;
  end;
end;

procedure TMainForm.UniBitBtn1Click(Sender: TObject);
begin
  (Sender as TUniBitBtn).ImageIndex := (Sender as TUniBitBtn).ImageIndex + 1;
end;

procedure TMainForm.UniButton10Click(Sender: TObject);
var
  B : TUniBitmap;
begin
  B := TUniBitmap.Create;
  try
    UniNativeImageList1.GetBitmap(0, B, clWhite);
    UniImage1.Picture.Assign(B);
  finally
    B.Free;
  end;
end;

procedure TMainForm.UniButton11Click(Sender: TObject);
var
  P : TPngImage;
begin
  P := TPngImage.Create;
  try
    UniNativeImageList1.GetPng(1, P);
    UniImage1.Picture.Assign(P);
  finally
    P.Free;
  end;
end;

procedure TMainForm.UniButton1Click(Sender: TObject);
begin
  (Sender as TUniButton).ImageIndex := (Sender as TUniButton).ImageIndex + 1;
end;

procedure TMainForm.UniButton5Click(Sender: TObject);
begin
  AssignImages(UniImageList2, UniToolBar2);
end;

procedure TMainForm.UniButton6Click(Sender: TObject);
begin
  AssignImages(UniNativeImageList2, UniToolBar3);
end;

procedure TMainForm.UniButton7Click(Sender: TObject);
var
  I, Ix : Integer;
begin
  Ix := 0;
  for I := 0 to UniImageList1.Count - 1  do
  begin
    UniImageList1.Draw(UniCanvas1.BitmapCanvas, (Ix mod 25) * 18, (Ix div 25) * 18, I);
    Inc(Ix);
  end;

  for I := 0 to UniNativeImageList1.Count - 1  do
  begin
    UniNativeImageList1.Draw(UniCanvas1.BitmapCanvas, (Ix mod 25) * 18, (Ix div 25) * 18, I);
    Inc(Ix);
  end;

  for I := 0 to UniImageList2.Count - 1  do
  begin
    UniImageList2.Draw(UniCanvas1.BitmapCanvas, (Ix mod 25) * 18, (Ix div 25) * 18, I);
    Inc(Ix);
  end;

  for I := 0 to UniNativeImageList2.Count - 1  do
  begin
    UniNativeImageList2.Draw(UniCanvas1.BitmapCanvas, (Ix mod 25) * 18, (Ix div 25) * 18, I);
    Inc(Ix);
  end;

  UniCanvas1.RefreshBitmap;
end;

procedure TMainForm.UniButton8Click(Sender: TObject);
var
  Ic : TIcon;
begin
  Ic := TIcon.Create;
  try
    UniImageList1.GetIcon(0, Ic);
    UniImage1.Picture.Assign(Ic);
  finally
    Ic.Free;
  end;
end;

procedure TMainForm.UniButton9Click(Sender: TObject);
var
  P : TPngImage;
begin
  P := TPngImage.Create;
  try
    UniImageList1.GetPng(1, P);
    UniImage1.Picture.Assign(P);
  finally
    P.Free;
  end;
end;

procedure TMainForm.UniToolButton1Click(Sender: TObject);
begin
  (Sender as TUniToolButton).ImageIndex := (Sender as TUniToolButton).ImageIndex + 1;
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
