unit Janua.FMX.frameCanvasPaintImage;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  // FMX
  FMX.Layouts, FMX.TMSBaseControl, FMX.TMSMemo, FMX.TMSMemoStyles, FMX.TMSFNCCustomWEBControl, FMX.TabControl,

  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects, FMX.TMSFNCWXHTMLMemo,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.TMSFNCTypes, FMX.TMSFNCUtils, FMX.TMSFNCGraphics,
  FMX.TMSFNCGraphicsTypes, FMX.TMSFNCWXJSONFormatter, FMX.TMSFNCCustomControl, FMX.TMSFNCWebBrowser,
  // Janua
  Janua.Core.Types, Janua.FMX.dlgNotes;

type
  TframeFMXImageDraw = class(TFrame)
    pnlButtons: TPanel;
    btnClear: TButton;
    btnRedraw: TButton;
    btnDelLast: TButton;
    btnAddNotes: TButton;
    LayoutImage: TLayout;
    imgCar: TImage;
    procedure FormResize(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
    procedure pntBoxCarMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Single);
    procedure pntBoxCarMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Single);
    procedure pntBoxCarMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Single);
    procedure btnRedrawClick(Sender: TObject);
    procedure btnDelLastClick(Sender: TObject);
    procedure btnAddNotesClick(Sender: TObject);
  private
    { Private declarations }
    FDrawing: boolean; // to indicate that we should be FDrawing in the `OnMouseMove` event
    FImgDrawings: TJanuaImageDraws;
    LastDraw: TJanuaDraw;
    FOffset: Single;
    FCanvasControl: TControl;
    FCoordCaption: string;
    FCoordinates: string;
    FdlgFMXNotes: TdlgFMXNotes;
    FCount: string;
    FImageDrawings: TJanuaImageDraws;
    procedure SetCanvasControl(const Value: TControl);
    procedure SetCoordCaption(const Value: string);
    procedure SetCoordinates(const Value: string);
    procedure SetCount(const Value: string);
    procedure SetOffset(const aControl: TControl);
    procedure SetImageDrawings(const Value: TJanuaImageDraws);
  protected
    pntBoxCar: TPaintBox;
    procedure DrawCanvas(xpre, ypre, X, Y, Offset: Single);
  public
    { Public declarations }
    procedure UpdateSize;
    procedure btnNoteOKClick(Sender: TObject);
    procedure btnNoteCancelClick(Sender: TObject);
    procedure FreeNotes;
    procedure Activate(const aOffset: Single = 0.0);
    procedure AfterConstruction; override;
    procedure CreatePaintBox;
    procedure Redraw;
    procedure ClearBox;
    procedure DelLastDraw;
    property CanvasControl: TControl read FCanvasControl write SetCanvasControl;
    property CoordCaption: string read FCoordCaption write SetCoordCaption;
    property Count: string read FCount write SetCount;
    property Coordinates: string read FCoordinates write SetCoordinates;
    property ImageDrawings: TJanuaImageDraws read FImageDrawings write SetImageDrawings;
  end;

var
  frameFMXImageDraw: TframeFMXImageDraw;

implementation

{$R *.fmx}

procedure TframeFMXImageDraw.SetOffset(const aControl: TControl);
begin
  var
  aClassName := aControl.ClassName;
  if (aControl.Position.Y > 0) and (aControl.Position.Y <> 65535) and not(aClassName = 'TTabControlContent')
  then
    FOffset := FOffset + aControl.Position.Y;
  if Assigned(aControl.Parent) and (aControl.Parent is TControl) then
    SetOffset(TControl(aControl.Parent));
end;

procedure TframeFMXImageDraw.UpdateSize;
begin
  self.Height := pnlButtons.Height + Trunc(Width * (330 / 540));
  LayoutImage.Height := Trunc(Width * (330 / 540));
end;

procedure TframeFMXImageDraw.Activate(const aOffset: Single = 0.0);
begin
  FOffset := aOffset;
  SetCanvasControl(imgCar);
end;

procedure TframeFMXImageDraw.AfterConstruction;
begin
  inherited;

end;

procedure TframeFMXImageDraw.btnAddNotesClick(Sender: TObject);
begin
  if not Assigned(FdlgFMXNotes) then
    FdlgFMXNotes := TdlgFMXNotes.Create(self);
  FdlgFMXNotes.OkEvent := self.btnNoteOKClick;
  FdlgFMXNotes.CancelEvent := self.btnNoteCancelClick;
{$IFDEF MSWINDOWS}
  FdlgFMXNotes.ShowModal;
{$ELSE}
  FdlgFMXNotes.WindowState := wsMaximized;
  FdlgFMXNotes.ShowModal;
{$ENDIF}
end;

procedure TframeFMXImageDraw.btnClearClick(Sender: TObject);
begin
  ClearBox
end;

procedure TframeFMXImageDraw.btnDelLastClick(Sender: TObject);
begin
  DelLastDraw
end;

procedure TframeFMXImageDraw.btnNoteCancelClick(Sender: TObject);
begin
  // FreeNotes;
end;

procedure TframeFMXImageDraw.btnNoteOKClick(Sender: TObject);
begin
  if Assigned(FdlgFMXNotes) then
  begin
    FImgDrawings.Notes := FdlgFMXNotes.Memo1.Lines.Text;
    // FreeNotes;
  end;
end;

procedure TframeFMXImageDraw.btnRedrawClick(Sender: TObject);
begin
  Redraw;
end;

procedure TframeFMXImageDraw.ClearBox;
begin
  pntBoxCar.Free;
  CreatePaintBox;
end;

procedure TframeFMXImageDraw.CreatePaintBox;
begin
  pntBoxCar := TPaintBox.Create(FCanvasControl);
  pntBoxCar.OnMouseDown := pntBoxCarMouseDown;
  pntBoxCar.OnMouseMove := pntBoxCarMouseMove;
  pntBoxCar.OnMouseUp := pntBoxCarMouseUp;
  pntBoxCar.Align := TAlignLayout.Client;
  pntBoxCar.Parent := FCanvasControl;
  pntBoxCar.Visible := True;
end;

procedure TframeFMXImageDraw.DelLastDraw;
begin
  if FDrawing then
    LastDraw := TJanuaDraw.Create(0.0, 0.0)
  else
    FImgDrawings.DelDraw;
  ClearBox;
  Sleep(100);
  Redraw;
end;

procedure TframeFMXImageDraw.DrawCanvas(xpre, ypre, X, Y, Offset: Single);
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

procedure TframeFMXImageDraw.FormResize(Sender: TObject);
begin
  imgCar.Height := self.Width * (330 / 540);
  { if Assigned(FCanvasControl) then
    SetOffset(FCanvasControl); }
end;

procedure TframeFMXImageDraw.FreeNotes;
begin
  if Assigned(FdlgFMXNotes) then
  begin
    FdlgFMXNotes.Free;
    FdlgFMXNotes := nil;
  end;
end;

procedure TframeFMXImageDraw.pntBoxCarMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState;
  X, Y: Single);
begin
  FDrawing := True;
  { if Assigned(pntBoxCar) then
    pntBoxCar.Canvas.BeginScene; }
  LastDraw := TJanuaDraw.Create(X, Y);
  { lbCount.Text := 'Count: ' + LastDraw.Count.ToString; }

end;

procedure TframeFMXImageDraw.pntBoxCarMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Single);
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
    Count := 'Count: ' + LastDraw.Count.ToString;
    // Coord: 0,0
    DrawCanvas(xpre, ypre, X, Y, FOffset);
    Coordinates := 'Coordinates: ' + LastDraw.ActualX.ToString + ' , ' + LastDraw.ActualY.ToString;
  end;

end;

procedure TframeFMXImageDraw.pntBoxCarMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState;
  X, Y: Single);
begin
  try
    FImgDrawings.AddDraw(LastDraw);
    Count := 'Count: ' + LastDraw.Count.ToString;
    Coordinates := 'Coordinates: ' + LastDraw.ActualX.ToString + ' , ' + LastDraw.ActualY.ToString;
  finally
    { if Assigned(pntBoxCar) then
      pntBoxCar.Canvas.EndScene; }
    FDrawing := False;
  end;

end;

procedure TframeFMXImageDraw.Redraw;
begin
  if Assigned(pntBoxCar) then
    try
      { pntBoxCar.Canvas.BeginScene; }
      var
      RX := pntBoxCar.Width / FImgDrawings.Width;

      var
      RY := pntBoxCar.Height / FImgDrawings.Heigth;

      for var I := 0 to Pred(FImgDrawings.Count) do
      begin
        var
        lDrawing := FImgDrawings[I];
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
      { pntBoxCar.Canvas.EndScene; }
    end;
end;

procedure TframeFMXImageDraw.SetCanvasControl(const Value: TControl);
begin
  FCanvasControl := Value;
  if Assigned(FCanvasControl) then
  begin
    if FOffset = 0.0 then
      SetOffset(FCanvasControl);
    CreatePaintBox;
    if FImgDrawings.Width = 0.0 then
      FImgDrawings := TJanuaImageDraws.Create(FCanvasControl.Width, FCanvasControl.Height);
  end
  else if Assigned(pntBoxCar) then
  begin
    pntBoxCar.Free;
    pntBoxCar := nil;
  end;
end;

procedure TframeFMXImageDraw.SetCoordCaption(const Value: string);
begin
  FCoordCaption := Value;
end;

procedure TframeFMXImageDraw.SetCoordinates(const Value: string);
begin
  FCoordinates := Value;
end;

procedure TframeFMXImageDraw.SetCount(const Value: string);
begin
  FCount := Value;
end;

procedure TframeFMXImageDraw.SetImageDrawings(const Value: TJanuaImageDraws);
begin
  FImageDrawings := Value;
end;

end.
