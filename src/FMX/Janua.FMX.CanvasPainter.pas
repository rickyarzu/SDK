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
    FDrawing: boolean; // to indicate that we should be drawing in the `OnMouseMove` event
    ImgDrawings: TJanuaImageDraws;
    LastDraw: TJanuaDraw;
    FControl: TControl;
    FOffset: Single;
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
  end;

implementation

{ TJanuaFMXCanvasPainter }

procedure TJanuaFMXCanvasPainter.ClearBox;
begin
  if Assigned(FPaintBox) then
    FPaintBox.Free;
  CreatePaintBox;
end;

procedure TJanuaFMXCanvasPainter.CreatePaintBox;
begin
  if Assigned(FControl) and not(csDesigning in ComponentState) then
  begin
    FPaintBox := TPaintBox.Create(FControl);
    FPaintBox.OnMouseDown := pntBoxMouseDown;
    FPaintBox.OnMouseMove := pntBoxMouseMove;
    FPaintBox.OnMouseUp := pntBoxMouseUp;
    FPaintBox.Align := TAlignLayout.Client;
    FPaintBox.Parent := FControl;
    FPaintBox.Visible := True;
  end;
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
  FControl := Value;
end;

end.
