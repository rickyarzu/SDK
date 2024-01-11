unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  se_form, se_effect, se_ani, bsSkinData, BusinessSkinForm, ComCtrls,
  bsSkinTabs, StdCtrls, bsSkinBoxCtrls, bsSkinCtrls, ImgList,
  Unit2, Unit3, ExtCtrls;

type
  TForm1 = class(TForm)
    seAnimationList1: TseAnimationList;
    seAnimation1: TseAnimation;
    PagerAnimation: TseAnimation;
    seAnimationForm1: TseAnimationForm;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    bsSkinData1: TbsSkinData;
    bsCompressedStoredSkin1: TbsCompressedStoredSkin;
    bsSkinPageControl1: TbsSkinPageControl;
    bsSkinTabSheet1: TbsSkinTabSheet;
    bsSkinTabSheet2: TbsSkinTabSheet;
    bsSkinTabSheet3: TbsSkinTabSheet;
    bsSkinMemo1: TbsSkinMemo;
    bsSkinButton1: TbsSkinButton;
    bsSkinTrackBar1: TbsSkinTrackBar;
    bsSkinCheckRadioBox1: TbsSkinCheckRadioBox;
    bsSkinTrackBar2: TbsSkinTrackBar;
    bsSkinPanel1: TbsSkinPanel;
    bsSkinGroupBox1: TbsSkinGroupBox;
    ImageList2: TImageList;
    ImageList3: TImageList;
    bsSkinButtonsBar1: TbsSkinButtonsBar;
    seAnimation2: TseAnimation;
    bsSkinButton2: TbsSkinButton;
    bsSkinButton3: TbsSkinButton;
    bsCompressedStoredSkin2: TbsCompressedStoredSkin;
    SkinAnimation: TseAnimation;
    procedure bsSkinPageControl1Change(Sender: TObject);
    procedure bsSkinPageControl1Changing(Sender: TObject;
      var AllowChange: Boolean);
    procedure bsSkinButtonsBar1Change(Sender: TObject);
    procedure bsSkinButtonsBar1Changing(Sender: TObject);
    procedure bsSkinButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bsSkinButton3Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
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

procedure TForm1.bsSkinPageControl1Change(Sender: TObject);
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

procedure TForm1.bsSkinPageControl1Changing(Sender: TObject;
  var AllowChange: Boolean);
begin
 with PagerAnimation do
  begin
    FreezeControlClient(bsSkinPageControl1, bsSkinPageControl1.ClientRect);
  end;
end;

procedure TForm1.bsSkinButtonsBar1Change(Sender: TObject);
begin
  with seAnimation2 do
  begin
    try
      Execute;
    finally
      Restore;
    end;
  end;
end;

procedure TForm1.bsSkinButtonsBar1Changing(Sender: TObject);
begin
  with seAnimation2 do
  begin
    FreezeControlClient(bsSkinButtonsBar1, bsSkinButtonsBar1.ClientRect);
  end;
end;

procedure TForm1.bsSkinButton2Click(Sender: TObject);
var
  R: TRect;
begin
  with PagerAnimation do
  begin
    R := Rect(8, 256, 8 + 353, 256 + 121);
    FreezeControlClient(Form1, R);
    if Frame2 <> nil
    then
      begin
        Frame2.Visible := False;
        Frame2.Free;
        Frame3 := TFrame3.Create(Self);
        Frame3.Visible := False;
        Frame3.Parent := Self;
        Frame3.SetBounds(8, 256, 353, 121);
        Frame3.bsSkinFrame1.SkinData := bsSkinData1;
        Frame3.bsSkinFrame1.CtrlsSkinData := bsSkinData1;
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
        Frame2.SetBounds(8, 256, 353, 121);
        Frame2.bsSkinFrame1.SkinData := bsSkinData1;
        Frame2.bsSkinFrame1.CtrlsSkinData := bsSkinData1;
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

procedure TForm1.FormCreate(Sender: TObject);
begin
  Frame2 := TFrame2.Create(Self);
  Frame2.Parent := Self;
  Frame2.SetBounds(8, 256, 353, 121);
  Frame2.bsSkinFrame1.SkinData := bsSkinData1;
  Frame2.bsSkinFrame1.CtrlsSkinData := bsSkinData1;
  Frame3 := nil;
  Randomize;
end;

procedure TForm1.bsSkinButton3Click(Sender: TObject);
begin
  with SkinAnimation do
  begin
    FreezeControl(Form1, Rect(0, 0, Form1.Width, Form1.Height));
    if bsSkinData1.CompressedStoredSkin = bsCompressedStoredSkin2
    then
     bsSkinData1.CompressedStoredSkin := bsCompressedStoredSkin1
    else
     bsSkinData1.CompressedStoredSkin := bsCompressedStoredSkin2;
  end;
  with SkinAnimation do
  begin
    try
      Execute;
    finally
      Restore;
    end;
  end;
end;

procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  seAnimationForm1.HideAnimation := seAnimation1;
end;

end.
