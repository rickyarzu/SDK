unit Janua.FMX.CanvasPainter;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  // FMX
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects, FMX.StdCtrls,
  // Janua
  Janua.Core.Types;

type
  TJanuaFMXCanvasPainter = class(TComponent)
  private
    Drawing: boolean; // to indicate that we should be drawing in the `OnMouseMove` event
    ImgDrawings: TJanuaImageDraws;
    LastDraw: TJanuaDraw;
    FControl: TControl;
    procedure SetControl(const Value: TControl);
  protected
    FPaintBox: TPaintBox;
    procedure DrawCanvas(xpre, ypre, X, Y, Offset: Single);
  public
    { Public declarations }
    procedure CreatePaintBox;
    procedure Redraw;
    procedure ClearBox;
    procedure DelLastDraw;
  public
    procedure pntBoxMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Single);
    procedure pntBoxMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Single);
    procedure pntBoxMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Single);
  published
    property Control: TControl read FControl write SetControl;
    property end;

implementation

{ TJanuaFMXCanvasPainter }

procedure TJanuaFMXCanvasPainter.ClearBox;
begin
  pntBoxCar.Free;
  CreatePaintBox;
end;

procedure TJanuaFMXCanvasPainter.CreatePaintBox;
begin
  FPaintBox := TPaintBox.Create(imgCar);
  FPaintBox.OnMouseDown := pntBoxCarMouseDown;
  FPaintBox.OnMouseMove := pntBoxCarMouseMove;
  FPaintBox.OnMouseUp := pntBoxCarMouseUp;
  FPaintBox.Align := TAlignLayout.Client;
  FPaintBox.Parent := imgCar;
  FPaintBox.Visible := True;
end;

procedure TJanuaFMXCanvasPainter.DelLastDraw;
begin
  if Drawing then
    LastDraw := TJanuaDraw.Create(0.0, 0.0)
  else
    ImgDrawings.DelDraw;
  Redraw;
end;

procedure TJanuaFMXCanvasPainter.DrawCanvas(xpre, ypre, X, Y, Offset: Single);
begin

end;

procedure TJanuaFMXCanvasPainter.pntBoxMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState;
  X, Y: Single);
begin

end;

procedure TJanuaFMXCanvasPainter.pntBoxMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Single);
begin

end;

procedure TJanuaFMXCanvasPainter.pntBoxMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState;
  X, Y: Single);
begin

end;

procedure TJanuaFMXCanvasPainter.Redraw;
begin

end;

procedure TJanuaFMXCanvasPainter.SetControl(const Value: TControl);
  procedure CalulateTop;
  begin

  end;

begin
  FControl := Value;
end;

end.
