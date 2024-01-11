unit splash;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, IKDXView, IKLayerView, IKImageView,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.Imaging.jpeg, IKAnimation;

type
  TSplashForm = class(TForm)
    Image1: TImage;
    IKImageView1: TIKImageView;
    IKImageView2: TIKImageView;
    IKImageView3: TIKImageView;
    IKImageView4: TIKImageView;
    procedure FormCreate(Sender: TObject);
    procedure IKImageView4Click(Sender: TObject);
    procedure IKImageView1Click(Sender: TObject);
    procedure IKImageView2Click(Sender: TObject);
    procedure IKImageView3Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure IKImageView4MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure IKImageView4MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SplashForm: TSplashForm;

implementation
  Uses ShellAPI;

{$R *.dfm}

procedure TSplashForm.FormCreate(Sender: TObject);
begin
  TIKTransaction.BeginUpdate(True);
  try
    TIKTransaction.Current.Duration := 2;
    TIKTransaction.Current.RepeatCount := 2;
    TIKTransaction.Current.TimingFunction := LinearTimingFunc;
    IKImageView1.ImageLayer.YRotationAngle := 360;
    IKImageView2.ImageLayer.YRotationAngle := 360;
    IKImageView3.ImageLayer.XRotationAngle := 360;
  finally
    TIKTransaction.EndUpdate;
  end;
end;

procedure TSplashForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  Close;
end;

procedure TSplashForm.IKImageView1Click(Sender: TObject);
begin
  Close;
end;

procedure TSplashForm.IKImageView2Click(Sender: TObject);
begin
  Close;
end;

procedure TSplashForm.IKImageView3Click(Sender: TObject);
begin
  Close;
end;

procedure TSplashForm.IKImageView4Click(Sender: TObject);
begin
  if IKImageView4.ImageLayer.XRotationAngle = 360 then
    IKImageView4.ImageLayer.XRotationAngle := 0
  else
    IKImageView4.ImageLayer.XRotationAngle := 360;
  ShellExecute(0, 'open', 'http://www.almdev.com', nil, nil, SW_SHOWNORMAL);
end;

procedure TSplashForm.IKImageView4MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  IKImageView4.Scale := 0.8;
end;

procedure TSplashForm.IKImageView4MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 IKImageView4.Scale := 1;
end;

procedure TSplashForm.Image1Click(Sender: TObject);
begin
  Close;
end;

end.
