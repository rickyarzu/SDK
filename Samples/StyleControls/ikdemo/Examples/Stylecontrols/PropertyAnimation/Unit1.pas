unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IKAnimation, IKTypes, StdCtrls, ComCtrls, scControls, scGPMeters,
  scGPControls, IKControls, scImageCollection, Vcl.Imaging.pngimage, IKDXView,
  ShellApi, scGPExtControls, Vcl.Mask;


type
  TForm1 = class(TForm)
    IKPageView1: TIKPageView;
    IKPageViewPage2: TIKPageViewPage;
    scPanel1: TscPanel;
    scLabel28: TscLabel;
    scGPButton2: TscGPButton;
    scLabel1: TscLabel;
    scLabel4: TscLabel;
    scButton10: TscButton;
    IKPageViewPage1: TIKPageViewPage;
    scGPMeter1201: TscGPMeter120;
    scGPHVMeter2: TscGPHVMeter;
    scGPHVMeter1: TscGPHVMeter;
    scGPButton5: TscGPButton;
    Duration: TscGPSlider;
    DurationLabel: TscLabel;
    scGPMeter1: TscGPMeter;
    scGPButton1: TscGPButton;
    scGPMemo2: TscGPMemo;
    scImageCollection1: TscImageCollection;
    procedure scGPButton1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure scGPButton5Click(Sender: TObject);
    procedure DurationChange(Sender: TObject);
    procedure scGPHVMeter1GetArrowColor(Sender: TObject; var AColor: TColor;
      var AColorAlpha);
    procedure scGPHVMeter1GetProgressColor(Sender: TObject; var AColor: TColor;
      var AColorAlpha);
    procedure scGPMeter1201GetArrowColor(Sender: TObject; var AColor: TColor;
      var AColorAlpha);
    procedure scGPButton2Click(Sender: TObject);
    procedure scButton10Click(Sender: TObject);
    procedure IKPageView1ChangePage(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  A1, A2, A3, A4: TIKPropertyAnimation;

implementation

{$R *.dfm}

procedure TForm1.DurationChange(Sender: TObject);
begin
  DurationLabel.Caption := 'Duration (' + IntToStr(Round(Duration.Value)) + 'ms):';
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
 if Assigned(A1) then
    A1.Free;
  if Assigned(A2) then
    A2.Free;
  if Assigned(A3) then
    A3.Free;
  if Assigned(A4) then
    A4.Free;
end;

procedure TForm1.IKPageView1ChangePage(Sender: TObject);
begin
  if IKPageView1.PageIndex = 1 then
    scGPButton2.SetFocus
  else
    scGPButton5.SetFocus;
end;

procedure TForm1.scButton10Click(Sender: TObject);
begin
  ShellExecute(0, 'open', 'http://www.almdev.com', nil, nil, SW_SHOWNORMAL);
end;

procedure TForm1.scGPButton1Click(Sender: TObject);
begin
  IKPageView1.TransitionKind := ikpv3DYRotation;
  IKPageView1.PageIndex := 1;
end;

procedure TForm1.scGPButton2Click(Sender: TObject);
begin
  IKPageView1.TransitionKind := ikpv3DXRotation;
  IKPageView1.PageIndex := 0;
end;

procedure TForm1.scGPButton5Click(Sender: TObject);
var
  D: Double;
begin
  // animation 1
  if Assigned(A1) then
  begin
    A1.Stop;
    A1.Free;
  end;
  D := Random(8000);
  A1 := TIKPropertyAnimation.Create(scGPMeter1, 'Value', D);
  A1.FreeOnFinished := False;
  A1.Duration := Round(Duration.Value) / 1000;
  A1.Start;
  // animation 2
  if Assigned(A2) then
  begin
    A2.Stop;
    A2.Free;
  end;
  D := Random(100);
  A2 := TIKPropertyAnimation.Create(scGPMeter1201, 'Value', D);
  A2.FreeOnFinished := False;
  A2.Duration := Round(Duration.Value) / 1000;
  A2.Start;
  // animation 3
  if Assigned(A3) then
  begin
    A3.Stop;
    A3.Free;
  end;
  D := Random(100);
  D := -50 + D;
  A3 := TIKPropertyAnimation.Create(scGPHVMeter1, 'Value', D);
  A3.FreeOnFinished := False;
  A3.Duration := Round(Duration.Value) / 1000;
  A3.Start;
  // animation 4
  if Assigned(A4) then
  begin
    A4.Stop;
    A4.Free;
  end;
  D := Random(200);
  D := (D - 100) / 100;
  A4 := TIKPropertyAnimation.Create(scGPHVMeter2, 'Value', D);
  A4.FreeOnFinished := False;
  A4.Duration := Round(Duration.Value) / 1000;
  A4.Start;
end;

procedure TForm1.scGPHVMeter1GetArrowColor(Sender: TObject; var AColor: TColor;
  var AColorAlpha);
begin
   if Abs(scGPHVMeter1.Value) > 25 then
    AColor := clRed;
end;

procedure TForm1.scGPHVMeter1GetProgressColor(Sender: TObject;
  var AColor: TColor; var AColorAlpha);
begin
  if Abs(scGPHVMeter1.Value) > 25 then
    AColor := clRed;
end;

procedure TForm1.scGPMeter1201GetArrowColor(Sender: TObject; var AColor: TColor;
  var AColorAlpha);
begin
  if scGPMeter1201.Value < 20 then
    AColor := clRed;
end;

end.
