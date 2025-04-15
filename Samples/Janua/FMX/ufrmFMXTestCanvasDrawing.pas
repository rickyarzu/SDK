unit ufrmFMXTestCanvasDrawing;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  // FMX
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.TMSFNCTypes, FMX.TMSFNCUtils,
  FMX.TMSFNCGraphics, FMX.TMSFNCGraphicsTypes, FMX.TMSFNCCustomControl, FMX.TMSFNCWebBrowser,
  FMX.TMSFNCCustomWEBControl, FMX.TMSFNCMemo, FMX.TabControl, FMX.Objects,
  // Janua
  Janua.FMX.frameCanvasPaintImage, Janua.Core.Types, FMX.Controls.Presentation, FMX.StdCtrls;

type
  TfrmFMXTestCanvasDrawing = class(TForm)
    TMSFNCMemo1: TTMSFNCMemo;
    TestDrawCircle: TTabControl;
    tabFrame: TTabItem;
    frameFMXImageDraw1: TframeFMXImageDraw;
    tabTestDrawCircle: TTabItem;
    imgCar: TImage;
    pbBadge: TPaintBox;
    btnTestOffset: TButton;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure pbBadgeMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Single);
    procedure pbBadgeMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Single);
    procedure btnTestOffsetClick(Sender: TObject);
    procedure frameFMXImageDraw1btnTestOffsetClick(Sender: TObject);
  private
    FBadge: NativeInt;
    FClickPoint: TPointF;
    FBadgeDraws: TJanuaImageDraws;

    FShowBadge: Boolean;
    FBadgeItem: TStyledControl;
    FVPadding: Single;
    FVertTextMargin: Integer;
    FHPadding: Single;
    FHorzTextMargin: Integer;
    FPointColor: TAlphaColor;
    FTestPoint: TPointF;

    procedure SetBadge(const Value: NativeInt);
    procedure SetClickPoint(const Value: TPointF);
    procedure SetPointColor(const Value: TAlphaColor);
    procedure SetTestPoint(const Value: TPointF);
    { Private declarations }
  public
    procedure DrawBadge;
  public
    property Badge: NativeInt read FBadge write SetBadge;
    property TestPoint: TPointF read FTestPoint write SetTestPoint;
    property ClickPoint: TPointF read FClickPoint write SetClickPoint;
    property PointColor: TAlphaColor read FPointColor write SetPointColor;
  end;

var
  frmFMXTestCanvasDrawing: TfrmFMXTestCanvasDrawing;

implementation

{$R *.fmx}

procedure TfrmFMXTestCanvasDrawing.btnTestOffsetClick(Sender: TObject);
begin
  FVPadding := 0;
  FHPadding := 0;
  FClickPoint.X := pbBadge.Width / 2;
  FClickPoint.Y := pbBadge.Height / 2;
  DrawBadge;
  FTestPoint.X := pbBadge.Width / 2;
  FTestPoint.Y := pbBadge.Height / 2;
end;

procedure TfrmFMXTestCanvasDrawing.DrawBadge;
var
  R: TRectF;
  TextSize: TSizeF;
  Brush: TBrush;
  BadgeRadius: Single;
begin
  // (lCanvas: TCanvas; const ARect: TPointF; const Text: string; const Color: TAlphaColor)
  var
  lCanvas := pbBadge.Canvas;
  Inc(FBadge);
  var
  lText := FBadge.ToString;

  if not(FTestPoint.X = 0.0) then
  begin
    var
    vButtonText := 'Test(' + FTestPoint.X.ToString + ' , ' + FTestPoint.Y.ToString + ') - ';
    vButtonText := vButtonText + 'Test(' + FClickPoint.X.ToString + ' , ' + FClickPoint.Y.ToString + ') - ';
    FVPadding := FTestPoint.Y - FClickPoint.Y;
    FHPadding := FTestPoint.X - FClickPoint.X;
    btnTestOffset.Text := vButtonText;
    FTestPoint.X := 0.0;
    FTestPoint.Y := 0.0;
  end;

  // not(csDesigning in self.ComponentState) and
  if Assigned(lCanvas) and (FBadge > 0) then
    try
      lCanvas.Font.Size := 12;
      // Measure lText width
      TextSize := TSizeF.Create(lCanvas.TextWidth(lText), lCanvas.TextHeight(lText));
      // Calculate badge rect
      R := TRectF.Create(FClickPoint.X, FClickPoint.Y, FClickPoint.X + 12, FClickPoint.Y + 12);
      if R.Width < R.Height then
        R.Width := R.Height;
      // Position rect
      R.Offset(FHPadding, FVPadding);
      // Draw badge
      BadgeRadius := R.Height / 2;
      Brush := TBrush.Create(TBrushKind.Solid, FPointColor);
      try
        lCanvas.BeginScene;
        lCanvas.FillRect(R, BadgeRadius, BadgeRadius, AllCorners, 1, Brush);
        lCanvas.EndScene;
      finally
        Brush.Free;
        Brush := nil;
      end;
      // Draw lText
      { lCanvas.Fill.Color := TAlphaColorRec.White;
        lCanvas.FillText(R, lText, False, 1, [], TTextAlign.Center, TTextAlign.Center); }
    except
      on e: exception do
        raise exception.Create('TJanuaFmxBadge.DrawBadge Error Drawing Badge');
    end;
end;

procedure TfrmFMXTestCanvasDrawing.FormCreate(Sender: TObject);
begin
  FBadge := 0;
  FPointColor := TAlphaColorRec.Red;
  FHorzTextMargin := 2;
  FVertTextMargin := 2;
  FVPadding := 22;
  FHPadding := -4;
end;

procedure TfrmFMXTestCanvasDrawing.FormShow(Sender: TObject);
begin
  frameFMXImageDraw1.Activate(0.0);
end;

procedure TfrmFMXTestCanvasDrawing.frameFMXImageDraw1btnTestOffsetClick(Sender: TObject);
begin
  frameFMXImageDraw1.btnTestOffsetClick(Sender);

end;

procedure TfrmFMXTestCanvasDrawing.pbBadgeMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Single);
begin
  FClickPoint.Create(X, Y);
end;

procedure TfrmFMXTestCanvasDrawing.pbBadgeMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState;
  X, Y: Single);
begin
  FClickPoint.X := X;
  FClickPoint.Y := Y;
  var
  aDraw := TJanuaDraw.Create(X, Y);
  FBadgeDraws.AddDraw(aDraw);
  DrawBadge;
end;

procedure TfrmFMXTestCanvasDrawing.SetBadge(const Value: NativeInt);
begin
  FBadge := Value;
end;

procedure TfrmFMXTestCanvasDrawing.SetClickPoint(const Value: TPointF);
begin
  FClickPoint := Value;
end;

procedure TfrmFMXTestCanvasDrawing.SetPointColor(const Value: TAlphaColor);
begin
  FPointColor := Value;
end;

procedure TfrmFMXTestCanvasDrawing.SetTestPoint(const Value: TPointF);
begin
  FTestPoint := Value;
end;

end.
