// ImageList3 = Image
unit ImageImageList3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniGUIBaseClasses, uniImageList, uniBitBtn,
  uniButton, uniGroupBox, uniToolBar, uniPanel;

type
  TUniImageImageList3 = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
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
    UniToolBar2: TUniToolBar;
    UniToolButton12: TUniToolButton;
    UniToolButton13: TUniToolButton;
    UniToolButton15: TUniToolButton;
    UniToolButton16: TUniToolButton;
    UniToolButton14: TUniToolButton;
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
    UniToolBar3: TUniToolBar;
    UniToolButton20: TUniToolButton;
    UniButton4: TUniButton;
    UniButton5: TUniButton;
    UniGroupBox2: TUniGroupBox;
    UniButton6: TUniButton;
    UniButton7: TUniButton;
    UniButton8: TUniButton;
    UniBitBtn4: TUniBitBtn;
    UniBitBtn5: TUniBitBtn;
    UniBitBtn6: TUniBitBtn;
    UniGroupBox3: TUniGroupBox;
    UniButton9: TUniButton;
    UniButton10: TUniButton;
    UniButton11: TUniButton;
    UniBitBtn7: TUniBitBtn;
    UniBitBtn8: TUniBitBtn;
    UniBitBtn9: TUniBitBtn;
    UniButton15: TUniButton;
    UniGroupBox4: TUniGroupBox;
    UniButton12: TUniButton;
    UniButton13: TUniButton;
    UniButton14: TUniButton;
    UniBitBtn10: TUniBitBtn;
    UniBitBtn11: TUniBitBtn;
    UniBitBtn12: TUniBitBtn;
    UniNativeImageList1: TUniNativeImageList;
    UniNativeImageList2: TUniNativeImageList;
    UniNativeImageList3: TUniNativeImageList;
    UniNativeImageList4: TUniNativeImageList;
    UniNativeImageList5: TUniNativeImageList;
    UniNativeImageList6: TUniNativeImageList;
    UniNativeImageList7: TUniNativeImageList;
    procedure UniButton5Click(Sender: TObject);
    procedure UniButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses ServerModule;

procedure TUniImageImageList3.UniButton4Click(Sender: TObject);
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

procedure TUniImageImageList3.UniButton5Click(Sender: TObject);
begin
  if UniToolButton20.ImageIndex = -1 then
    UniToolButton20.ImageIndex := UniNativeImageList4.AddImageFile(UniServerModule.FilesFolderPath+'image.png');
end;

initialization
  RegisterClass(TUniImageImageList3);

end.
