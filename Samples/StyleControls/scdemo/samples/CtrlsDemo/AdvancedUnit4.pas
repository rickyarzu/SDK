unit AdvancedUnit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MainUnit, scControls,
  scExtControls, Vcl.StdCtrls, Vcl.Mask, TestFrame1, TestFrame2, TestFrame3,
  scModernControls, scAdvancedControls;

type
  TAdvancedFrame4 = class(TFrame)
    scScrollBox1: TscScrollBox;
    scButton1: TscButton;
    scCheckBox1: TscCheckBox;
    scGroupBox1: TscGroupBox;
    scLabel1: TscLabel;
    scComboBox1: TscComboBox;
    scLabel3: TscLabel;
    scComboBox3: TscComboBox;
    scCheckBox2: TscCheckBox;
    scFrameBar1: TscFrameBar;
    scEdit1: TscEdit;
    scCheckBox3: TscCheckBox;
    scCheckBox4: TscCheckBox;
    scScrollBox2: TscScrollBox;
    scListGroupPanel3: TscListGroupPanel;
    scLabel12: TscLabel;
    scAdvancedComboBox1: TscAdvancedComboBox;
    scCheckBox5: TscCheckBox;
    scCheckBox6: TscCheckBox;
    scListGroupPanel2: TscListGroupPanel;
    scLabel10: TscLabel;
    scLabel11: TscLabel;
    scPasswordEdit1: TscPasswordEdit;
    scEdit2: TscEdit;
    scListGroupPanel1: TscListGroupPanel;
    scLabel5: TscLabel;
    scLabel6: TscLabel;
    scLabel9: TscLabel;
    scSwitch1: TscSwitch;
    scSwitch2: TscSwitch;
    scSwitch3: TscSwitch;
    scCheckBox7: TscCheckBox;
    procedure scCheckBox2Click(Sender: TObject);
    procedure scComboBox1Click(Sender: TObject);
    procedure scComboBox3Click(Sender: TObject);
    procedure scFrameBar1Items0FrameCreate(Sender: TObject;
      var AFrame: TCustomFrame);
    procedure scFrameBar1Items1FrameCreate(Sender: TObject;
      var AFrame: TCustomFrame);
    procedure scFrameBar1Items2FrameCreate(Sender: TObject;
      var AFrame: TCustomFrame);
    procedure scCheckBox3Click(Sender: TObject);
    procedure scFrameBar1Items1FrameDestroy(Sender: TObject;
      var AFrame: TCustomFrame; var ACanDestroy: Boolean);
    procedure scFrameBar1Items2FrameDestroy(Sender: TObject;
      var AFrame: TCustomFrame; var ACanDestroy: Boolean);
    procedure scCheckBox4Click(Sender: TObject);
    procedure scCheckBox7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TAdvancedFrame4.scCheckBox2Click(Sender: TObject);
begin
  if scCheckBox2.Checked then
  begin
    scFrameBar1.Wallpapers := MainForm.scImageCollection1;
    scScrollBox1.Wallpapers := MainForm.scImageCollection1;
    scScrollBox2.Wallpapers := MainForm.scImageCollection1;
  end
  else
  begin
    scFrameBar1.Wallpapers := nil;
    scScrollBox1.Wallpapers := nil;
    scScrollBox2.Wallpapers := nil;
  end;
end;

procedure TAdvancedFrame4.scCheckBox3Click(Sender: TObject);
begin
  scFrameBar1.Animation := scCheckBox3.Checked;
end;

procedure TAdvancedFrame4.scCheckBox4Click(Sender: TObject);
begin
  if scCheckBox4.Checked then
  begin
    scFrameBar1.ButtonTransparentBackground := True;
    scFrameBar1.CustomBackgroundImageIndex := 3;
    scScrollBox1.CustomBackgroundImageIndex := 3;
    scScrollBox2.CustomBackgroundImageIndex := 3;
  end
  else
  begin
    scFrameBar1.ButtonTransparentBackground := False;
    scFrameBar1.CustomBackgroundImageIndex := -1;
    scScrollBox1.CustomBackgroundImageIndex := -1;
    scScrollBox2.CustomBackgroundImageIndex := -1;
  end;
end;

procedure TAdvancedFrame4.scCheckBox7Click(Sender: TObject);
begin
  scScrollBox2.FullUpdate := scCheckBox7.Checked;
  SendMessage(scScrollBox2.Handle, WM_SETREDRAW, 0, 0);
  scListGroupPanel1.TransparentBackground := scCheckBox7.Checked;
  scListGroupPanel2.TransparentBackground := scCheckBox7.Checked;
  scListGroupPanel3.TransparentBackground := scCheckBox7.Checked;
  if scCheckBox7.Checked then
  begin
    scListGroupPanel1.GroupColorAlpha := 150;
    scListGroupPanel2.GroupColorAlpha := 150;
    scListGroupPanel3.GroupColorAlpha := 150;
  end
  else
  begin
    scListGroupPanel1.GroupColorAlpha := 255;
    scListGroupPanel2.GroupColorAlpha := 255;
    scListGroupPanel3.GroupColorAlpha := 255;
  end;
  SendMessage(scScrollBox2.Handle, WM_SETREDRAW, 1, 0);
  scScrollBox2.FullRedraw;
end;

procedure TAdvancedFrame4.scComboBox1Click(Sender: TObject);
begin
  scFrameBar1.ButtonStyle := TscbbButtonStyle(scComboBox1.ItemIndex);
end;

procedure TAdvancedFrame4.scComboBox3Click(Sender: TObject);
begin
  scScrollBox1.BackgroundStyle := TscsbBackgroundStyle(scComboBox3.ItemIndex);
  scScrollBox2.BackgroundStyle := TscsbBackgroundStyle(scComboBox3.ItemIndex);
  scFrameBar1.BackgroundStyle := TscsbBackgroundStyle(scComboBox3.ItemIndex);
end;

procedure TAdvancedFrame4.scFrameBar1Items0FrameCreate(Sender: TObject;
  var AFrame: TCustomFrame);
begin
  AFrame := TBarFrame1.Create(nil);
end;

procedure TAdvancedFrame4.scFrameBar1Items1FrameCreate(Sender: TObject;
  var AFrame: TCustomFrame);
begin
  AFrame := TBarFrame2.Create(nil);
end;

procedure TAdvancedFrame4.scFrameBar1Items1FrameDestroy(Sender: TObject;
  var AFrame: TCustomFrame; var ACanDestroy: Boolean);
begin
  ACanDestroy := False;
end;

procedure TAdvancedFrame4.scFrameBar1Items2FrameCreate(Sender: TObject;
  var AFrame: TCustomFrame);
begin
  AFrame := TBarFrame3.Create(nil);
end;

procedure TAdvancedFrame4.scFrameBar1Items2FrameDestroy(Sender: TObject;
  var AFrame: TCustomFrame; var ACanDestroy: Boolean);
begin
  ACanDestroy := False;
end;

end.
