unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  SkinData, DynamicSkinForm, se_effect, se_ani, se_form, ImgList, ComCtrls,
  SkinTabs, SkinCtrls, StdCtrls, Mask, SkinBoxCtrls, Unit2, Unit3;

type
  TForm1 = class(TForm)
    spDynamicSkinForm1: TspDynamicSkinForm;
    spSkinData1: TspSkinData;
    spCompressedStoredSkin1: TspCompressedStoredSkin;
    seAnimationList1: TseAnimationList;
    seAnimation1: TseAnimation;
    spSkinPageControl1: TspSkinPageControl;
    spSkinTabSheet1: TspSkinTabSheet;
    spSkinTabSheet2: TspSkinTabSheet;
    spSkinTabSheet3: TspSkinTabSheet;
    spSkinButton1: TspSkinButton;
    spSkinButton2: TspSkinButton;
    spSkinButton3: TspSkinButton;
    PagerAnimation: TseAnimation;
    spSkinGroupBox1: TspSkinGroupBox;
    spSkinEdit1: TspSkinEdit;
    spSkinPanel1: TspSkinPanel;
    spSkinCheckRadioBox1: TspSkinCheckRadioBox;
    ImageList2: TImageList;
    ImageList3: TImageList;
    spSkinButtonsBar1: TspSkinButtonsBar;
    spSkinButton4: TspSkinButton;
    spSkinMemo1: TspSkinMemo;
    spSkinButton5: TspSkinButton;
    spCompressedStoredSkin2: TspCompressedStoredSkin;
    seAnimation2: TseAnimation;
    seAnimationForm1: TseAnimationForm;
    seAnimation3: TseAnimation;
    procedure spSkinPageControl1Change(Sender: TObject);
    procedure spSkinPageControl1Changing(Sender: TObject;
      var AllowChange: Boolean);
    procedure spSkinButtonsBar1Change(Sender: TObject);
    procedure spSkinButtonsBar1Changing(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure spSkinButton4Click(Sender: TObject);
    procedure spSkinButton5Click(Sender: TObject);
  private
    { Private declarations }
    Frame2: TFrame2;
    Frame3: TFrame3;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.spSkinPageControl1Change(Sender: TObject);
begin
  with PagerAnimation do
  begin
    try
      Execute;
    finally
      Restore;
    end;
  end;
end;

procedure TForm1.spSkinPageControl1Changing(Sender: TObject;
  var AllowChange: Boolean);
begin
  with PagerAnimation do
  begin
    FreezeControlClient(spSkinPageControl1, spSkinPageControl1.ClientRect);
  end;
end;

procedure TForm1.spSkinButtonsBar1Change(Sender: TObject);
begin
  with PagerAnimation do
  begin
    try
      Execute;
    finally
      Restore;
    end;
  end;
end;

procedure TForm1.spSkinButtonsBar1Changing(Sender: TObject);
begin
  with PagerAnimation do
  begin
    FreezeControlClient(spSkinButtonsBar1, spSkinButtonsBar1.ClientRect);
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Frame2 := TFrame2.Create(Self);
  Frame2.Parent := Self;
  Frame2.SetBounds(15, 270, 280, 160);
  Frame2.spSkinFrame1.SkinData := spSkinData1;
  Frame2.spSkinFrame1.CtrlsSkinData := spSkinData1;
  Frame3 := nil;
  Randomize;
end;

procedure TForm1.spSkinButton4Click(Sender: TObject);
var
  R: TRect;
begin
  with PagerAnimation do
  begin
    R := Rect(15, 270, 15 + 280, 270 + 160);
    FreezeControlClient(Form1, R);
    if Frame2 <> nil
    then
      begin
        Frame2.Visible := False;
        Frame2.Free;
        Frame3 := TFrame3.Create(Self);
        Frame3.Visible := False;
        Frame3.Parent := Self;
        Frame3.SetBounds(15, 270, 280, 160);
        Frame3.spSkinFrame1.SkinData := spSkinData1;
        Frame3.spSkinFrame1.CtrlsSkinData := spSkinData1;
        Frame2 := nil;
        Frame3.Visible := True;
      end
    else
      begin
        Frame3.Visible := False;
        Frame3.Free;
        Frame2 := TFrame2.Create(Self);
        Frame2.Visible := False;
        Frame2.Parent := Self;
        Frame2.SetBounds(15, 270, 280, 160);
        Frame2.spSkinFrame1.SkinData := spSkinData1;
        Frame2.spSkinFrame1.CtrlsSkinData := spSkinData1;
        Frame3 := nil;
        Frame2.Visible := True;
      end;
    try
      Execute;
    finally
      Restore;
    end;
  end;
end;

procedure TForm1.spSkinButton5Click(Sender: TObject);
begin
  with seAnimation3 do
  begin
    FreezeControl(Form1, Rect(0, 0, Form1.Width, Form1.Height));
    if spSkinData1.CompressedStoredSkin = spCompressedStoredSkin2
    then
     spSkinData1.CompressedStoredSkin := spCompressedStoredSkin1
    else
     spSkinData1.CompressedStoredSkin := spCompressedStoredSkin2;
  end;
  with seAnimation3 do
  begin
    try
      Execute;
    finally
      Restore;
    end;
  end;

end;

end.
