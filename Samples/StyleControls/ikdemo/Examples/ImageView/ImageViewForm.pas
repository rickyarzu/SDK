unit ImageViewForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IKLayerView, IKLayer, jpeg, IKImageView, StdCtrls, ExtCtrls,
  ComCtrls, IKDXView, IKImage, IKTypes, Vcl.Imaging.pngimage;

type
  TImageViewFrm = class(TForm)
    ImageView1: TIKImageView;
    Panel1: TPanel;
    Label1: TLabel;
    ContentMode: TComboBox;
    Label2: TLabel;
    BackgroundMode: TComboBox;
    Label3: TLabel;
    RotationAngle: TTrackBar;
    Opacity: TTrackBar;
    Label5: TLabel;
    Label4: TLabel;
    Filter: TComboBox;
    RotationAngleY: TTrackBar;
    Label6: TLabel;
    RotationAngleX: TTrackBar;
    Label7: TLabel;
    Button1: TButton;
    ShadowBox: TCheckBox;
    ShadowRadius: TTrackBar;
    AniBox: TCheckBox;
    Label8: TLabel;
    ScaleBar: TTrackBar;
    procedure ContentModeChange(Sender: TObject);
    procedure BackgroundModeChange(Sender: TObject);
    procedure RotationAngleChange(Sender: TObject);
    procedure OpacityChange(Sender: TObject);
    procedure FilterChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ShadowBoxClick(Sender: TObject);
    procedure ShadowRadiusChange(Sender: TObject);
    procedure AniBoxClick(Sender: TObject);
    procedure ScaleBarChange(Sender: TObject);
    procedure RotationAngleYChange(Sender: TObject);
    procedure RotationAngleXChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
  public
  end;

var
  ImageViewFrm: TImageViewFrm;

implementation

{$R *.dfm}

uses ScreenshotFrm, splash;

procedure TImageViewFrm.Button1Click(Sender: TObject);
var
  P: TPngImage;
begin
  P := ImageView1.GrabToPngImage;
  try
    ScreenshotForm := TScreenshotForm.Create(Self);
    ScreenshotForm.Image1.Picture.Assign(P);
    ScreenshotForm.ShowModal;
    ScreenshotForm.Free;
  finally
    P.Free;
  end;
end;

procedure TImageViewFrm.ScaleBarChange(Sender: TObject);
begin
  ImageView1.Scale := ScaleBar.Position / 10;
end;

procedure TImageViewFrm.ShadowBoxClick(Sender: TObject);
begin
  ImageView1.ShowShadow := ShadowBox.Checked;
end;

procedure TImageViewFrm.ShadowRadiusChange(Sender: TObject);
begin
  ImageView1.ShadowRadius := ShadowRadius.Position;
end;

procedure TImageViewFrm.ContentModeChange(Sender: TObject);
begin
  ImageView1.ContentMode := TIKContentMode(ContentMode.ItemIndex);
end;

procedure TImageViewFrm.AniBoxClick(Sender: TObject);
begin
  ImageView1.Animatable := AniBox.Checked;
end;

procedure TImageViewFrm.BackgroundModeChange(Sender: TObject);
begin
  ImageView1.BackgroundMode := TIKBackgroundMode(BackgroundMode.ItemIndex);
end;

procedure TImageViewFrm.RotationAngleChange(Sender: TObject);
begin
  ImageView1.RotationAngle := RotationAngle.Position;
end;

procedure TImageViewFrm.RotationAngleXChange(Sender: TObject);
begin
  ImageView1.XRotationAngle := RotationAngleX.Position;
end;

procedure TImageViewFrm.RotationAngleYChange(Sender: TObject);
begin
  ImageView1.YRotationAngle := RotationAngleY.Position;
end;

procedure TImageViewFrm.OpacityChange(Sender: TObject);
begin
  ImageView1.Opacity := Opacity.Position / 100;
end;

procedure TImageViewFrm.FilterChange(Sender: TObject);
begin
  ImageView1.ContentFilter := TIKFilter.CreateWithName(Filter.Items[Filter.ItemIndex]);
end;

procedure TImageViewFrm.FormCreate(Sender: TObject);
begin
  SplashForm := TSplashForm.Create(Application);
  SplashForm.ShowModal;
  SplashForm.Free;
end;

end.
