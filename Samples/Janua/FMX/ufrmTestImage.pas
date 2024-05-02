unit ufrmTestImage;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects, FMX.TabControl,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.TMSFNCTypes, FMX.TMSFNCUtils, FMX.TMSFNCGraphics,
  FMX.TMSFNCGraphicsTypes, FMX.TMSFNCWXJSONFormatter, FMX.TMSFNCCustomControl, FMX.TMSFNCWebBrowser,
  FMX.TMSFNCCustomWEBControl, FMX.TMSFNCWXHTMLMemo;

type
  TForm3 = class(TForm)
    tabImage: TTabControl;
    pgImage: TTabItem;
    TabItem2: TTabItem;
    TabItem3: TTabItem;
    Panel2: TPanel;
    imgCar: TImage;
    PaintBox2: TPaintBox;
    TMSFNCWXHTMLMemo1: TTMSFNCWXHTMLMemo;
    TMSFNCWXJSONFormatter1: TTMSFNCWXJSONFormatter;
    procedure imgCarMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Single);
    procedure PaintBox1MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Single);
    procedure PaintBox1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Single);
    procedure PaintBox1MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Single);
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
    xold, yold: Single;
    Drawing: boolean; // to indicate that we should be drawing in the `OnMouseMove` event

  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.fmx}

procedure TForm3.FormResize(Sender: TObject);
begin
  imgCar.Height := self.Width * (330/540)
end;

procedure TForm3.FormShow(Sender: TObject);
begin
  imgCar.Height := self.Width * (330/540)
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

procedure TForm3.PaintBox1MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Single);
begin
  Drawing := True;
  xold := X;
  yold := Y + imgCar.Position.Y;
end;

procedure TForm3.PaintBox1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Single);
var
  xpre, ypre: Single;
  PointO, PointN: TPointF;
begin
  if Drawing then
  begin
    Canvas.BeginScene;
    try
      xpre := xold;
      ypre := yold; // fetch previous position
      xold := X;
      yold := Y + imgCar.Position.Y; // store current position for next event

      Canvas.Stroke.Thickness := 10;
      Canvas.Stroke.Cap := TStrokeCap.Round;
      Canvas.Stroke.Color := TAlphaColorRec.Red;

      Canvas.DrawLine(PointF(xpre, ypre), PointF(X, Y + imgCar.Position.Y), 1); // draw line from prev pos to current
    finally
      Canvas.EndScene;
    end;
  end;

end;

procedure TForm3.PaintBox1MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Single);
begin
  Drawing := False;
end;

end.
