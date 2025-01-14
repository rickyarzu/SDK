unit UCustomPathBlox;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.TMSFNCTypes, FMX.TMSFNCUtils, FMX.TMSFNCGraphics, FMX.TMSFNCGraphicsTypes,
  FMX.TMSFNCBloxSelector, FMX.TMSFNCCustomControl,
  FMX.TMSFNCCustomScrollControl, FMX.TMSFNCBloxControl, FMX.TMSFNCBloxCoreBlock,
  FMX.TMSFNCBloxUIRegistration, FMX.TMSFNCBloxCoreElement, FMX.TMSFNCBloxCorePaintInfo,
  FMX.TMSFNCBloxCoreTypes,
  FMX.TMSFNCBloxCoreLinkPoint, FMX.TMSFNCBloxCoreUtils, FMX.TMSFNCBloxCoreLine,
  FMX.TMSFNCBloxCorePolygon, FMX.TMSFNCBloxCoreTextCell,
  FMX.TMSFNCBloxCoreLineArrow, FMX.TMSFNCBloxCoreHandle,
  FMX.TMSFNCBloxCoreGroup, FMX.TMSFNCBloxUISnapGrid, FMX.TMSFNCBloxUIRenderer,
  FMX.Controls.Presentation, FMX.StdCtrls;

type
  TCircle = class(TTMSFNCBloxBlock)
  public
    constructor Create; override;
    procedure GetBlockPath(APath: TTMSFNCBloxPath; ADrawer: TTMSFNCBloxBlockDrawer); override;
  end;

  TForm1 = class(TForm)
    TMSFNCBloxSelector1: TTMSFNCBloxSelector;
    TMSFNCBloxControl1: TTMSFNCBloxControl;
    Label1: TLabel;
    procedure TMSFNCBloxControl1RegisterElements(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure TMSFNCBloxControl1MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState;
      X, Y: Single);
    procedure TMSFNCBloxControl1Click(Sender: TObject);
  private
    { Private declarations }
    VX: Single;
    VY: Single;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

const
  VW = 10.0;
  VH = 10.0;

{$R *.fmx}
  { TMyBlock }

constructor TCircle.Create;
var
  w, h: Double;
begin
  inherited;

  w := OriginalRect.Right - OriginalRect.Left;
  h := OriginalRect.Bottom - OriginalRect.Top;

  LinkPoints.Clear;
  {
    LinkPoints.AddLink(0, h / 4, aoLeft);
    LinkPoints.AddLink(0, 3 * h / 4, aoLeft);
    LinkPoints.AddLink(w, h / 2, aoRight);
  }
end;

procedure TCircle.GetBlockPath(APath: TTMSFNCBloxPath; ADrawer: TTMSFNCBloxBlockDrawer);
var
  poly: TTMSFNCBloxPointArray;
  w, h: Double;
begin
  inherited;
  APath.Reset;

  w := OriginalRect.Right - OriginalRect.Left;
  h := OriginalRect.Bottom - OriginalRect.Top;

  {
    APath.AddLine(0, h/4, w/4, h/4);
    APath.CloseFigure(False);

    APath.AddLine(0, 3 * h / 4, w/4, 3 * h / 4);
    APath.CloseFigure(False);

    APath.AddLine(w/4, 0, w/4, h);
    APath.AddLine(w/4, 0, w/2, 0);
  }
  APath.AddArc(0, 0, w, h, 0, 360);
  // APath.AddLine(w/2, h, w/4, h);
  APath.CloseFigure(False);

  // APath.AddLine(3 * w / 4, h / 2, w, h / 2);
end;

procedure TForm1.Label1Click(Sender: TObject);
begin
  TTMSFNCUtils.OpenURL('https://www.tmssoftware.com/site/tmsfncblox.asp');
end;

procedure TForm1.TMSFNCBloxControl1Click(Sender: TObject);
begin
  TMSFNCBloxControl1.BeginUpdate;

  var
  sp := TCircle.Create;

  sp.Width := 10;
  sp.Height := 10;
  sp.FontSize := 16;
  sp.FillColor := TAlphaColors.Red;

  sp.Top := VY;
  sp.Left := VX;
  TMSFNCBloxControl1.Blox.Add(sp);

    TMSFNCBloxControl1.EndUpdate;
end;

procedure TForm1.TMSFNCBloxControl1MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState;
  X, Y: Single);
begin
  if Button = TMouseButton.mbLeft then
  begin
    VX := X - 18;
    VY := Y - 18;
  end;
end;

procedure TForm1.TMSFNCBloxControl1RegisterElements(Sender: TObject);
begin
  RegisterElement(TCircle, '', 'Circle', 'Custom Blocks');
end;

end.
