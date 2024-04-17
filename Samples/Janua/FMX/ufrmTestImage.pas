unit ufrmTestImage;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects;

type
  TForm3 = class(TForm)
    Image1: TImage;
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Single);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.fmx}

procedure TForm3.Image1MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Single);
var
  MyRect: TRectF;
  Point: TPointF;
begin
  // sets the circumscribed rectangle of the ellipse
  Caption := X.ToString + ',' + Y.ToString;
  Point := TPointF.Create(X, Y);
  // Point:=ClientToScreen(Point);
  Point := Image1.AbsoluteToLocal(Point);
  TRectF.Create(Point, 5, 5);

  // draws the ellipse on the canvas
  Image1.Bitmap.Canvas.BeginScene;
  Image1.Bitmap.Canvas.DrawEllipse(MyRect, 20);
  Image1.Bitmap.Canvas.EndScene;
end;

end.
