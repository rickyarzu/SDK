unit ufrmFMXTestCanvasDrawing;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  // FMX
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.TMSFNCTypes, FMX.TMSFNCUtils,
  FMX.TMSFNCGraphics, FMX.TMSFNCGraphicsTypes, FMX.TMSFNCCustomControl, FMX.TMSFNCWebBrowser,
  FMX.TMSFNCCustomWEBControl, FMX.TMSFNCMemo, FMX.TabControl, FMX.Objects,
  // Janua
  Janua.FMX.frameCanvasPaintImage, Janua.Core.Types;

type
  TfrmFMXTestCanvasDrawing = class(TForm)
    TMSFNCMemo1: TTMSFNCMemo;
    TestDrawCircle: TTabControl;
    tabFrame: TTabItem;
    frameFMXImageDraw1: TframeFMXImageDraw;
    tabTestDrawCircle: TTabItem;
    imgCar: TImage;
    pbBadge: TPaintBox;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure pbBadgeMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Single);
    procedure pbBadgeClick(Sender: TObject);
  private
    FBadge: NativeInt;
    FClickPoint: TPointF;
    FBadgeDraws: TJanuaImageDraws;
    procedure SetBadge(const Value: NativeInt);
    procedure SetClickPoint(const Value: TPointF);
    { Private declarations }
  public
    procedure DrawBadge(Canvas: TCanvas; const ARect: TRectF; const Text: string;
      const Color: TAlphaColor = TAlphaColorRec.Red);
  public
    property Badge: NativeInt read FBadge write SetBadge;
    property ClickPoint: TPointF read FClickPoint write SetClickPoint;
  end;

var
  frmFMXTestCanvasDrawing: TfrmFMXTestCanvasDrawing;

implementation

{$R *.fmx}

procedure TfrmFMXTestCanvasDrawing.DrawBadge(Canvas: TCanvas; const ARect: TRectF; const Text: string;
  const Color: TAlphaColor);
begin

end;

procedure TfrmFMXTestCanvasDrawing.FormCreate(Sender: TObject);
begin
  FBadge := 0;
end;

procedure TfrmFMXTestCanvasDrawing.FormShow(Sender: TObject);
begin
  frameFMXImageDraw1.Activate(0.0);
end;

procedure TfrmFMXTestCanvasDrawing.pbBadgeClick(Sender: TObject);
begin
var aDraw :=
  FBadgeDraws.AddDraw();
end;

procedure TfrmFMXTestCanvasDrawing.pbBadgeMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState;
  X, Y: Single);
begin
  FClickPoint.Create(X, Y);
end;

procedure TfrmFMXTestCanvasDrawing.SetBadge(const Value: NativeInt);
begin
  FBadge := Value;
end;

procedure TfrmFMXTestCanvasDrawing.SetClickPoint(const Value: TPointF);
begin
  FClickPoint := Value;
end;

end.
