unit Janua.FMX.frameCanvasPaintImage;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  // FMX
  FMX.Layouts, FMX.TMSBaseControl, FMX.TMSMemo, FMX.TMSMemoStyles, FMX.TMSFNCCustomWEBControl, FMX.TabControl,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Controls.Presentation, FMX.StdCtrls,
  // Janua
  Janua.Core.Types, Janua.FMX.dlgNotes;

type
  TJanuaLayterType = (jltLayer, jltImage, jltBitmap);

  TframeFMXImageDraw = class(TFrame)
    pnlButtons: TPanel;
    btnClear: TButton;
    btnRedraw: TButton;
    btnDelLast: TButton;
    btnAddNotes: TButton;
    Timer1: TTimer;
    Rectangle1: TRectangle;
    LayoutImage: TLayout;
    imgCar: TImage;
    btnTestOffset: TButton;
    procedure FormResize(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
    procedure pntBoxCarMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Single);
    procedure pntBoxCarMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Single);
    procedure pntBoxCarMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Single);
    procedure btnRedrawClick(Sender: TObject);
    procedure btnDelLastClick(Sender: TObject);
    procedure btnAddNotesClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure btnTestOffsetClick(Sender: TObject);
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
    FLayerType: TJanuaLayterType;

    // Added Fields
    FPointColor: TAlphaColor;
    FClickPoint: TPointF;
    FDefaultShape: TJanuaShape;
    FTestPoint: TPointF;
    FShowBadge: boolean;
    FBadgeItem: TStyledControl;
    FVPadding: Single;
    FVertTextMargin: Integer;
    FHPadding: Single;
    FHorzTextMargin: Integer;

    procedure SetCanvasControl(const Value: TControl);
    procedure SetCoordCaption(const Value: string);
    procedure SetCoordinates(const Value: string);
    procedure SetCount(const Value: string);
    procedure SetOffset(const aControl: TControl);
    procedure SetImageDrawings(const Value: TJanuaImageDraws);
    procedure SetLayerType(const Value: TJanuaLayterType);
    procedure SetClickPoint(const Value: TPointF);
    procedure SetDefaultShape(const Value: TJanuaShape);
    procedure SetPointColor(const Value: TAlphaColor);
    procedure SetTestPoint(const Value: TPointF);
  protected
    pntBoxCar: TPaintBox;
    FJanuaBlob: TJanuaBlob;
    procedure DrawCanvas(xpre, ypre, X, Y, Offset: Single);
    procedure DrawBadge;
  public
    { Public declarations }
    procedure UpdateSize;
    procedure btnNoteOKClick(Sender: TObject);
    procedure btnNoteCancelClick(Sender: TObject);
    procedure FreeNotes;
    procedure Activate(const aOffset: Single = 0.0);
    procedure AfterConstruction; override;
    constructor Create(AOwner: TComponent); override;
    procedure CreatePaintBox;
    procedure Redraw;
    procedure ClearBox;
    procedure DelLastDraw;
    property CanvasControl: TControl read FCanvasControl write SetCanvasControl;
    property CoordCaption: string read FCoordCaption write SetCoordCaption;
    property Count: string read FCount write SetCount;
    property Coordinates: string read FCoordinates write SetCoordinates;
    property ImageDrawings: TJanuaImageDraws read FImageDrawings write SetImageDrawings;
    property LayerType: TJanuaLayterType read FLayerType write SetLayerType;
    // New Properties added to Manage Badge Drawing (circle Ellipse and so on)
    property TestPoint: TPointF read FTestPoint write SetTestPoint;
    property ClickPoint: TPointF read FClickPoint write SetClickPoint;
    property PointColor: TAlphaColor read FPointColor write SetPointColor;
    property DefaultShape: TJanuaShape read FDefaultShape write SetDefaultShape;
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

procedure TframeFMXImageDraw.SetPointColor(const Value: TAlphaColor);
begin
  FPointColor := Value;
end;

procedure TframeFMXImageDraw.SetTestPoint(const Value: TPointF);
begin
  FTestPoint := Value;
end;

procedure TframeFMXImageDraw.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled := False;
  Redraw;
end;

procedure TframeFMXImageDraw.UpdateSize;
begin
  Height := pnlButtons.Height + Trunc(Width * (330 / 540));
  LayoutImage.Height := Trunc(Width * (330 / 540));
end;

procedure TframeFMXImageDraw.Activate(const aOffset: Single = 0.0);
begin
  FOffset := aOffset;
  SetCanvasControl(imgCar);
  Timer1.Enabled := True;
end;

procedure TframeFMXImageDraw.AfterConstruction;
begin
  inherited;
  if Assigned(imgCar.Bitmap) then
  begin
    var
    aStream := TMemoryStream.Create;
    try
      imgCar.Bitmap.SaveToStream(aStream);
      FJanuaBlob.LoadFromStream(aStream);
    finally
      aStream.Free;
    end;
  end;
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
  FdlgFMXNotes.WindowState := TWindowState.wsMaximized;
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
  FreeNotes;
end;

procedure TframeFMXImageDraw.btnNoteOKClick(Sender: TObject);
begin
  if Assigned(FdlgFMXNotes) then
  begin
    FImgDrawings.Notes := FdlgFMXNotes.Memo1.Lines.Text;
    FreeNotes;
  end;
end;

procedure TframeFMXImageDraw.btnRedrawClick(Sender: TObject);
begin
  Redraw;
end;

procedure TframeFMXImageDraw.btnTestOffsetClick(Sender: TObject);
begin
  FVPadding := 0;
  FHPadding := 0;
  if Assigned(pntBoxCar) then
  begin
    FClickPoint.X := pntBoxCar.Width / 2;
    FClickPoint.Y := pntBoxCar.Height / 2;
    DrawBadge;
    FTestPoint.X := pntBoxCar.Width / 2;
    FTestPoint.Y := pntBoxCar.Height / 2;
  end;
end;

procedure TframeFMXImageDraw.ClearBox;
begin
  if FLayerType = jltLayer then
  begin
    pntBoxCar.Free;
    CreatePaintBox;
  end
  else
  begin
    var
    aStream := TMemoryStream.Create;
    try
      FJanuaBlob.SaveToStream(aStream);
      aStream.Position := 0;
      imgCar.Bitmap.LoadFromStream(aStream);
    finally
      aStream.Free;
    end;
  end;
end;

constructor TframeFMXImageDraw.Create(AOwner: TComponent);
begin
  inherited;
  FPointColor := TAlphaColorRec.Red;
  FHorzTextMargin := 2;
  FVertTextMargin := 2;
  FVPadding := 22;
  FHPadding := -4;
end;

procedure TframeFMXImageDraw.CreatePaintBox;
begin
  pntBoxCar := TPaintBox.Create(FCanvasControl);
  // pntBoxCar.OnMouseDown := pntBoxCarMouseDown;
  // pntBoxCar.OnMouseMove := pntBoxCarMouseMove;
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

procedure TframeFMXImageDraw.DrawBadge;
var
  R: TRectF;
  TextSize: TSizeF;
  Brush: TBrush;
  BadgeRadius: Single;
begin
  if not Assigned(pntBoxCar) then
    Exit;

  var
  lCanvas := pntBoxCar.Canvas;

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
  if Assigned(lCanvas) then
    try
      lCanvas.Font.Size := 12;
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

procedure TframeFMXImageDraw.DrawCanvas(xpre, ypre, X, Y, Offset: Single);
begin
  var
  aCanvas := CanvasControl.Canvas;

  case FLayerType of
    jltLayer:
      begin
        aCanvas := pntBoxCar.Canvas
      end;
    jltBitmap:
      begin
        if CanvasControl is TImage then
          aCanvas := TImage(CanvasControl).Canvas
      end;
  end;

  aCanvas.BeginScene;
  try
    aCanvas.Stroke.Thickness := 5;
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
  if Assigned(pntBoxCar) then
    pntBoxCar.Canvas.BeginScene;
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
  case self.DefaultShape of

    jsCircle, jsEllipse:
      begin
        FClickPoint.X := X;
        FClickPoint.Y := Y;
        var
        aDraw := TJanuaDraw.Create(X, Y);
        FImgDrawings.AddDraw(aDraw);
        DrawBadge;
      end;
    jsSquare:
      begin
      end;
    jsRectangle:
      begin
      end;
    jsStar:
      begin
      end;
    jsPentagon:
      begin
      end;
    jsHexagon:
      begin
      end;
    jsDiamond:
      begin
      end;
  else
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
    if FLayerType = jltLayer then
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

procedure TframeFMXImageDraw.SetClickPoint(const Value: TPointF);
begin
  FClickPoint := Value;
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

procedure TframeFMXImageDraw.SetDefaultShape(const Value: TJanuaShape);
begin
  FDefaultShape := Value;
end;

procedure TframeFMXImageDraw.SetImageDrawings(const Value: TJanuaImageDraws);
begin
  FImageDrawings := Value;
end;

procedure TframeFMXImageDraw.SetLayerType(const Value: TJanuaLayterType);
begin
  FLayerType := Value;
end;

end.
