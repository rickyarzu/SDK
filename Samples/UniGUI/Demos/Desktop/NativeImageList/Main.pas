//AllFeatures: ImageList,NativeImageList - Basic Demo,icon-imageviewer
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniBitBtn, uniButton,
  uniGroupBox, uniGUIBaseClasses, uniImageList, uniToolBar, ServerModule;

type
  TMainForm = class(TUniForm)
    UniToolBar1: TUniToolBar;
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
    UniNativeImageList1: TUniNativeImageList;
    UniToolBar2: TUniToolBar;
    UniNativeImageList2: TUniNativeImageList;
    UniToolButton12: TUniToolButton;
    UniToolButton13: TUniToolButton;
    UniToolButton14: TUniToolButton;
    UniToolButton15: TUniToolButton;
    UniToolButton16: TUniToolButton;
    UniToolButton17: TUniToolButton;
    UniToolButton18: TUniToolButton;
    UniToolButton19: TUniToolButton;
    UniGroupBox1: TUniGroupBox;
    UniButton1: TUniButton;
    UniButton2: TUniButton;
    UniButton3: TUniButton;
    UniBitBtn1: TUniBitBtn;
    UniBitBtn2: TUniBitBtn;
    UniBitBtn3: TUniBitBtn;
    UniNativeImageList3: TUniNativeImageList;
    UniToolBar3: TUniToolBar;
    UniButton4: TUniButton;
    UniNativeImageList4: TUniNativeImageList;
    UniButton5: TUniButton;
    UniToolButton20: TUniToolButton;
    UniGroupBox2: TUniGroupBox;
    UniButton6: TUniButton;
    UniButton7: TUniButton;
    UniButton8: TUniButton;
    UniBitBtn4: TUniBitBtn;
    UniBitBtn5: TUniBitBtn;
    UniBitBtn6: TUniBitBtn;
    UniNativeImageList5: TUniNativeImageList;
    UniGroupBox3: TUniGroupBox;
    UniButton9: TUniButton;
    UniButton10: TUniButton;
    UniButton11: TUniButton;
    UniBitBtn7: TUniBitBtn;
    UniBitBtn8: TUniBitBtn;
    UniBitBtn9: TUniBitBtn;
    UniNativeImageList6: TUniNativeImageList;
    UniGroupBox4: TUniGroupBox;
    UniButton12: TUniButton;
    UniButton13: TUniButton;
    UniButton14: TUniButton;
    UniBitBtn10: TUniBitBtn;
    UniBitBtn11: TUniBitBtn;
    UniBitBtn12: TUniBitBtn;
    UniNativeImageList7: TUniNativeImageList;
    UniButton15: TUniButton;
    procedure UniButton4Click(Sender: TObject);
    procedure UniButton5Click(Sender: TObject);
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

procedure TMainForm.UniButton4Click(Sender: TObject);
var
  I : Integer;
begin
  UniButton4.Enabled := False;
  for I := 0 to 3 do
    with TUniToolButton.Create(Self) do
    begin
      Parent:=UniToolBar3;
      Caption:= 'ToolButton-'+IntToStr(I);
      Name := 'UniToolButtonAddLater'+IntToStr(I);
      ImageIndex := UniNativeImageList4.AddImageFile(UniServerModule.FilesFolderPath+IntToStr(I)+'.png');
    end;
end;

procedure TMainForm.UniButton5Click(Sender: TObject);
begin
  if UniToolButton20.ImageIndex = -1 then
    UniToolButton20.ImageIndex := UniNativeImageList4.AddImageFile(UniServerModule.FilesFolderPath+'image.png');
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
