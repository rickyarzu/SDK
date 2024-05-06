unit ufrmJanuaFMXTestImage;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  // FMX
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects, FMX.TabControl,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.TMSFNCTypes, FMX.TMSFNCUtils, FMX.TMSFNCGraphics,
  FMX.TMSFNCGraphicsTypes, FMX.TMSFNCWXJSONFormatter, FMX.TMSFNCCustomControl, FMX.TMSFNCWebBrowser,
  FMX.TMSFNCCustomWEBControl, FMX.TMSFNCWXHTMLMemo,
  // Janua
  Janua.Core.Types, FMX.Layouts, FMX.TMSBaseControl, FMX.TMSMemo, FMX.TMSMemoStyles;

type
  TfrmFMXTestImageDraw = class(TForm)
    tabImage: TTabControl;
    pgImage: TTabItem;
    TabItem2: TTabItem;
    TabItem3: TTabItem;
    Panel2: TPanel;
    imgCar: TImage;
    btnClear: TButton;
    btnRedraw: TButton;
    btnJson: TButton;
    lbCount: TLabel;
    lbCoordinates: TLabel;
    Layout1: TLayout;
    TMSFMXMemoJavaScriptStyler1: TTMSFMXMemoJavaScriptStyler;
    memJson: TTMSFMXMemo;
    btnDelLast: TButton;
    Panel1: TPanel;
    procedure imgCarMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Single);
    procedure FormResize(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
    procedure pntBoxCarMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Single);
    procedure pntBoxCarMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Single);
    procedure pntBoxCarMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Single);
    procedure btnRedrawClick(Sender: TObject);
    procedure btnJsonClick(Sender: TObject);
    procedure btnDelLastClick(Sender: TObject);
  private
    { Private declarations }
    Drawing: boolean; // to indicate that we should be drawing in the `OnMouseMove` event
    ImgDrawings: TJanuaImageDraws;
    LastDraw: TJanuaDraw;
    FOffset: Single;
    FCanvasControl: TControl;
    procedure SetCanvasControl(const Value: TControl);
  protected
    pntBoxCar: TPaintBox;
    procedure DrawCanvas(xpre, ypre, X, Y, Offset: Single);
  public
    { Public declarations }
    procedure CreatePaintBox;
    procedure Redraw;
    procedure ClearBox;
    procedure DelLastDraw;
    property CanvasControl: TControl read FCanvasControl write SetCanvasControl;
  end;

var
  frmFMXTestImageDraw: TfrmFMXTestImageDraw;

implementation

{$R *.fmx}

procedure TfrmFMXTestImageDraw.btnClearClick(Sender: TObject);
begin
  ClearBox
end;

procedure TfrmFMXTestImageDraw.btnDelLastClick(Sender: TObject);
begin
  DelLastDraw
end;

procedure TfrmFMXTestImageDraw.btnJsonClick(Sender: TObject);
begin
  memJson.Lines.Text := ImgDrawings.Serialize
end;

procedure TfrmFMXTestImageDraw.btnRedrawClick(Sender: TObject);
begin
  Redraw;
end;

procedure TfrmFMXTestImageDraw.ClearBox;
begin
  pntBoxCar.Free;
  CreatePaintBox;
end;

procedure TfrmFMXTestImageDraw.CreatePaintBox;
begin
  pntBoxCar := TPaintBox.Create(FCanvasControl);
  pntBoxCar.OnMouseDown := pntBoxCarMouseDown;
  pntBoxCar.OnMouseMove := pntBoxCarMouseMove;
  pntBoxCar.OnMouseUp := pntBoxCarMouseUp;
  pntBoxCar.Align := TAlignLayout.Client;
  pntBoxCar.Parent := FCanvasControl;
  pntBoxCar.Visible := True;
end;

procedure TfrmFMXTestImageDraw.DelLastDraw;
begin
  if Drawing then
    LastDraw := TJanuaDraw.Create(0.0, 0.0)
  else
    ImgDrawings.DelDraw;
  ClearBox;
  Sleep(100);
  Redraw;
end;

procedure TfrmFMXTestImageDraw.DrawCanvas(xpre, ypre, X, Y, Offset: Single);
begin
  pntBoxCar.Canvas.BeginScene;
  try
    pntBoxCar.Canvas.Stroke.Thickness := 10;
    pntBoxCar.Canvas.Stroke.Cap := TStrokeCap.Round;
    pntBoxCar.Canvas.Stroke.Color := TAlphaColorRec.Red;

    pntBoxCar.Canvas.DrawLine(PointF(xpre, ypre + Offset), PointF(X, Y + Offset), 1);
    // draw line from prev pos to current
  finally
    pntBoxCar.Canvas.EndScene;
  end;
end;

procedure TfrmFMXTestImageDraw.FormCreate(Sender: TObject);
begin
  imgCar.Height := Width * (330 / 540);
  SetCanvasControl(imgCar);
end;

procedure TfrmFMXTestImageDraw.FormResize(Sender: TObject);
begin
  imgCar.Height := self.Width * (330 / 540)
end;

procedure TfrmFMXTestImageDraw.imgCarMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState;
  X, Y: Single);
var
  MyRect: TRectF;
  Point: TPointF;
begin
  // sets the circumscribed rectangle of the ellipse
  Caption := X.ToString + ',' + Y.ToString;
  Point := TPointF.Create(X, Y);
  // Point:=ClientToScreen(Point);
  Point := imgCar.AbsoluteToLocal(Point);
  TRectF.Create(Point, 5, 5);

  imgCar.Bitmap.Canvas.Stroke.Thickness := 10;
  imgCar.Bitmap.Canvas.Stroke.Cap := TStrokeCap.Round;
  imgCar.Bitmap.Canvas.Stroke.Color := TAlphaColorRec.Red;

  // draws the ellipse on the canvas
  imgCar.Bitmap.Canvas.BeginScene;
  imgCar.Bitmap.Canvas.DrawEllipse(MyRect, 20);
  imgCar.Bitmap.Canvas.EndScene;
end;

procedure TfrmFMXTestImageDraw.pntBoxCarMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState;
  X, Y: Single);
begin
  Drawing := True;
  LastDraw := TJanuaDraw.Create(X, Y);
  lbCount.Text := 'Count: ' + LastDraw.Count.ToString;

end;

procedure TfrmFMXTestImageDraw.pntBoxCarMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Single);
var
  xpre, ypre: Single;
  PointO, PointN: TPointF;
begin
  if Drawing then
  begin
    // fetch previous position
    xpre := LastDraw.ActualX;
    ypre := LastDraw.ActualY;
    // store current position for next event
    LastDraw.AddPoint(X, Y);
    lbCount.Text := 'Count: ' + LastDraw.Count.ToString;
    // Coord: 0,0
    DrawCanvas(xpre, ypre, X, Y, FOffset);
    lbCoordinates.Text := 'Coordinates: ' + LastDraw.ActualX.ToString + ' , ' + LastDraw.ActualY.ToString;
  end;

end;

procedure TfrmFMXTestImageDraw.pntBoxCarMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState;
  X, Y: Single);
begin
  ImgDrawings.AddDraw(LastDraw);
  lbCount.Text := 'Count: ' + LastDraw.Count.ToString;
  lbCoordinates.Text := 'Coordinates: ' + LastDraw.ActualX.ToString + ' , ' + LastDraw.ActualY.ToString;
  Drawing := False;
end;

procedure TfrmFMXTestImageDraw.Redraw;
begin
  var
  RX := Round(pntBoxCar.Width / ImgDrawings.Width);

  var
  RY := Round(pntBoxCar.Height / ImgDrawings.Heigth);

  for var I := 0 to Pred(ImgDrawings.Count) do
  begin
    var
    Drawing := ImgDrawings[I];

    for var J := 1 to Pred(Drawing.Count) do
    begin
      var
      xpre := Drawing[Pred(J)].X * RX;
      var
      ypre := Drawing[Pred(J)].Y * RY;
      var
      lX := Drawing[J].X * RX;
      var
      lY := Drawing[J].Y * RY;

      DrawCanvas(xpre, ypre, lX, lY, FOffset);
    end;
  end;
end;

procedure TfrmFMXTestImageDraw.SetCanvasControl(const Value: TControl);
  procedure SetOffset(const aControl: TControl);
  begin
    var
    aClassName := aControl.ClassName;
    if (aControl.Position.Y > 0) and (aControl.Position.Y <> 65535) and not(aClassName = 'TTabControlContent')
    then
      FOffset := FOffset + aControl.Position.Y;
    if Assigned(aControl.Parent) and (aControl.Parent is TControl) then
      SetOffset(TControl(aControl.Parent));
  end;

begin
  FCanvasControl := Value;
  FOffset := 0.0;
  if Assigned(FCanvasControl) then
  begin
    SetOffset(FCanvasControl);
    CreatePaintBox;
    if ImgDrawings.Width = 0.0 then
      ImgDrawings := TJanuaImageDraws.Create(FCanvasControl.Width, FCanvasControl.Height);
  end
  else if Assigned(pntBoxCar) then
  begin
    pntBoxCar.Free;
    pntBoxCar := nil;
  end;
end;

end.
