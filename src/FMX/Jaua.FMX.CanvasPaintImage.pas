unit Jaua.FMX.CanvasPaintImage;

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
  TframFMXImageDraw = class(TFrame)
    Panel2: TPanel;
    btnClear: TButton;
    btnRedraw: TButton;
    btnDelLast: TButton;
    imgCar: TImage;
    procedure FormResize(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
    procedure pntBoxCarMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Single);
    procedure pntBoxCarMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Single);
    procedure pntBoxCarMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Single);
    procedure btnRedrawClick(Sender: TObject);
    procedure btnJsonClick(Sender: TObject);
    procedure btnDelLastClick(Sender: TObject);
  private
    { Private declarations }
    FDrawing: boolean; // to indicate that we should be FDrawing in the `OnMouseMove` event
    ImgDrawings: TJanuaImageDraws;
    LastDraw: TJanuaDraw;
    FOffset: Single;
    FCanvasControl: TControl;
    FCoordCaption: string;
    procedure SetCanvasControl(const Value: TControl);
    procedure SetCoordCaption(const Value: string);
  protected
    pntBoxCar: TPaintBox;
    procedure DrawCanvas(xpre, ypre, X, Y, Offset: Single);
  public
    { Public declarations }
    procedure Activate;
    procedure AfterConstruction; override;
    procedure CreatePaintBox;
    procedure Redraw;
    procedure ClearBox;
    procedure DelLastDraw;
    property CanvasControl: TControl read FCanvasControl write SetCanvasControl;
    property CoordCaption: string read FCoordCaption write SetCoordCaption;
  end;

var
  framFMXImageDraw: TframFMXImageDraw;

implementation

{$R *.fmx}

procedure TframFMXImageDraw.Activate;
begin
  imgCar.Height := Width * (330 / 540);
  SetCanvasControl(imgCar);
end;

procedure TframFMXImageDraw.AfterConstruction;
begin
  inherited;

end;

procedure TframFMXImageDraw.btnClearClick(Sender: TObject);
begin
  ClearBox
end;

procedure TframFMXImageDraw.btnDelLastClick(Sender: TObject);
begin
  DelLastDraw
end;

procedure TframFMXImageDraw.btnJsonClick(Sender: TObject);
begin
  memJson.Lines.Text := ImgDrawings.Serialize
end;

procedure TframFMXImageDraw.btnRedrawClick(Sender: TObject);
begin
  Redraw;
end;

procedure TframFMXImageDraw.ClearBox;
begin
  pntBoxCar.Free;
  CreatePaintBox;
end;

procedure TframFMXImageDraw.CreatePaintBox;
begin
  pntBoxCar := TPaintBox.Create(FCanvasControl);
  pntBoxCar.OnMouseDown := pntBoxCarMouseDown;
  pntBoxCar.OnMouseMove := pntBoxCarMouseMove;
  pntBoxCar.OnMouseUp := pntBoxCarMouseUp;
  pntBoxCar.Align := TAlignLayout.Client;
  pntBoxCar.Parent := FCanvasControl;
  pntBoxCar.Visible := True;
end;

procedure TframFMXImageDraw.DelLastDraw;
begin
  if FDrawing then
    LastDraw := TJanuaDraw.Create(0.0, 0.0)
  else
    ImgDrawings.DelDraw;
  ClearBox;
  Sleep(100);
  Redraw;
end;

procedure TframFMXImageDraw.DrawCanvas(xpre, ypre, X, Y, Offset: Single);
begin
  pntBoxCar.Canvas.BeginScene;
  try
    pntBoxCar.Canvas.Stroke.Thickness := 5;
    pntBoxCar.Canvas.Stroke.Cap := TStrokeCap.Round;
    pntBoxCar.Canvas.Stroke.Color := TAlphaColorRec.Red;
    var
    lOffset := Offset + self.Position.Y;

    pntBoxCar.Canvas.DrawLine(PointF(xpre, ypre + lOffset), PointF(X, Y + lOffset), 1);
  finally
    pntBoxCar.Canvas.EndScene;
  end;
  // draw line from prev pos to current
end;

procedure TframFMXImageDraw.FormResize(Sender: TObject);
begin
  imgCar.Height := self.Width * (330 / 540)
end;

procedure TframFMXImageDraw.pntBoxCarMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState;
  X, Y: Single);
begin
  FDrawing := True;
  { if Assigned(pntBoxCar) then
    pntBoxCar.Canvas.BeginScene; }
  LastDraw := TJanuaDraw.Create(X, Y);
  lbCount.Text := 'Count: ' + LastDraw.Count.ToString;

end;

procedure TframFMXImageDraw.pntBoxCarMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Single);
var
  xpre, ypre: Single;
  PointO, PointN: TPointF;
begin
  if FDrawing then
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

procedure TframFMXImageDraw.pntBoxCarMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState;
  X, Y: Single);
begin
  try
    ImgDrawings.AddDraw(LastDraw);
    lbCount.Text := 'Count: ' + LastDraw.Count.ToString;
    lbCoordinates.Text := 'Coordinates: ' + LastDraw.ActualX.ToString + ' , ' + LastDraw.ActualY.ToString;
  finally
    { if Assigned(pntBoxCar) then
      pntBoxCar.Canvas.EndScene; }
    FDrawing := False;
  end;

end;

procedure TframFMXImageDraw.Redraw;
begin
  if Assigned(pntBoxCar) then
    try
      {pntBoxCar.Canvas.BeginScene;}
      var
      RX := pntBoxCar.Width / ImgDrawings.Width;

      var
      RY := pntBoxCar.Height / ImgDrawings.Heigth;

      for var I := 0 to Pred(ImgDrawings.Count) do
      begin
        var
        lDrawing := ImgDrawings[I];
        for var J := 1 to Pred(lDrawing.Count) do
        begin
          var
          xpre := lDrawing[Pred(J)].X * RX;
          var
          ypre := lDrawing[Pred(J)].Y * RY;
          var
          lX := lDrawing[J].X * RX;
          var
          lY := lDrawing[J].Y * RY;

          DrawCanvas(xpre, ypre, lX, lY, FOffset);
        end;
      end;
    finally
      {pntBoxCar.Canvas.EndScene;}
    end;
end;

procedure TframFMXImageDraw.SetCanvasControl(const Value: TControl);
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

procedure TframFMXImageDraw.SetCoordCaption(const Value: string);
begin
  FCoordCaption := Value;
end;

end.
