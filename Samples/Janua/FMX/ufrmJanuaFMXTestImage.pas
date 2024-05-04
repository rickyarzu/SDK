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
  TForm3 = class(TForm)
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
    procedure imgCarMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Single);
    procedure FormResize(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
    procedure pntBoxCarMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Single);
    procedure pntBoxCarMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Single);
    procedure pntBoxCarMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Single);
    procedure btnRedrawClick(Sender: TObject);
    procedure btnJsonClick(Sender: TObject);
  private
    { Private declarations }
    Drawing: boolean; // to indicate that we should be drawing in the `OnMouseMove` event
    ImgDrawings: TJanuaImageDraws;
    LastDraw: TJanuaDraw;
  protected
    pntBoxCar: TPaintBox;
    procedure DrawCanvas(xpre, ypre, X, Y, Offset: Single);
  public
    { Public declarations }
    procedure CreatePaintBox;
  end;

var
  Form3: TForm3;

implementation

{$R *.fmx}

procedure TForm3.btnClearClick(Sender: TObject);
begin
  pntBoxCar.Free;
  CreatePaintBox;
  // pntBoxCar.Canvas.Clear(TAlphaColorRec.Alpha);
end;

procedure TForm3.btnJsonClick(Sender: TObject);
begin
  memJson.Lines.Text := ImgDrawings.Serialize
end;

procedure TForm3.btnRedrawClick(Sender: TObject);
var
  I, J: integer;
begin
  var
  Offset := imgCar.Position.Y;
  var
  RX := imgCar.Width / ImgDrawings.Width;

  var
  RY := imgCar.Height / ImgDrawings.Heigth;

  for I := 0 to Pred(ImgDrawings.Count) do
  begin
    var
    Drawing := ImgDrawings[I];
    for J := 1 to Pred(Drawing.Count) do
      DrawCanvas(Drawing[Pred(J)].X * RX, Drawing[Pred(J)].Y * RY, Drawing[J].X * RX, Drawing[J].Y * RY,
        imgCar.Position.Y);
  end;

end;

procedure TForm3.CreatePaintBox;
begin
  pntBoxCar := TPaintBox.Create(imgCar);
  pntBoxCar.OnMouseDown := pntBoxCarMouseDown;
  pntBoxCar.OnMouseMove := pntBoxCarMouseMove;
  pntBoxCar.OnMouseUp := pntBoxCarMouseUp;
  pntBoxCar.Align := TAlignLayout.Client;
  pntBoxCar.Parent := imgCar;
  pntBoxCar.Visible := True;
end;

procedure TForm3.DrawCanvas(xpre, ypre, X, Y, Offset: Single);
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

procedure TForm3.FormCreate(Sender: TObject);
begin
  imgCar.Height := self.Width * (330 / 540);
  ImgDrawings := TJanuaImageDraws.Create(imgCar.Width, imgCar.Height);
  CreatePaintBox;
end;

procedure TForm3.FormResize(Sender: TObject);
begin
  imgCar.Height := self.Width * (330 / 540)
end;

procedure TForm3.imgCarMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Single);
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

procedure TForm3.pntBoxCarMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Single);
begin
  Drawing := True;
  LastDraw := TJanuaDraw.Create(X, Y);
  lbCount.Text := 'Count: ' + LastDraw.Count.ToString;

end;

procedure TForm3.pntBoxCarMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Single);
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
    DrawCanvas(xpre, ypre, X, Y, imgCar.Position.Y);
    lbCoordinates.Text := 'Coordinates: ' + LastDraw.ActualX.ToString + ' , ' + LastDraw.ActualY.ToString;
  end;

end;

procedure TForm3.pntBoxCarMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Single);
begin
  ImgDrawings.AddDraw(LastDraw);
  lbCount.Text := 'Count: ' + LastDraw.Count.ToString;
  lbCoordinates.Text := 'Coordinates: ' + LastDraw.ActualX.ToString + ' , ' + LastDraw.ActualY.ToString;
  Drawing := False;
end;

end.
