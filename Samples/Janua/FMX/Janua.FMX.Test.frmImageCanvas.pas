unit Janua.FMX.Test.frmImageCanvas;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  // FMX
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects, FMX.TabControl,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.TMSFNCTypes, FMX.TMSFNCUtils, FMX.TMSFNCGraphics,
  FMX.TMSFNCGraphicsTypes, FMX.TMSFNCWXJSONFormatter, FMX.TMSFNCCustomControl, FMX.TMSFNCWebBrowser,
  FMX.TMSFNCCustomWEBControl, FMX.TMSFNCWXHTMLMemo,
  // Janua
  Janua.Core.Types, FMX.Layouts, FMX.TMSBaseControl, FMX.TMSMemo, FMX.TMSMemoStyles, uframeJanuaFMXTestImage,
  Janua.FMX.frameCanvasPaintImage, FMX.Memo.Types, FMX.ScrollBox, FMX.Memo;

type
  TfrmFMXTestImageDraw = class(TForm)
    tabTestComponent: TTabControl;
    pgImage: TTabItem;
    pgCode: TTabItem;
    PgTestComponent: TTabItem;
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
    pnlTabsButtons: TPanel;
    btnPgImage: TButton;
    btnPgCode: TButton;
    btnPgTestComponent: TButton;
    imgTestComponent: TImage;
    Layout2: TLayout;
    memTestJson: TTMSFMXMemo;
    pntTestComponentButtons: TPanel;
    btnTestClear: TButton;
    Button2: TButton;
    Button3: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Button4: TButton;
    btnFrame: TButton;
    pgFrame: TTabItem;
    btnDialog: TButton;
    frameFMXImageDraw1: TframeFMXImageDraw;
    Memo1: TMemo;
    btnImageX: TButton;
    tabImageX: TTabItem;
    Panel1: TPanel;
    btnTestX: TButton;
    Button5: TButton;
    Button6: TButton;
    Label3: TLabel;
    Label4: TLabel;
    Button7: TButton;
    ImageCarX: TImage;
    Button8: TButton;
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
    procedure btnPgImageClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnFrameClick(Sender: TObject);
    procedure btnDialogClick(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure btnTestXClick(Sender: TObject);
    procedure ImageCarXMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Single);
  private
    { Private declarations }
    FDrawing: boolean; // to indicate that we should be FDrawing in the `OnMouseMove` event
    ImgDrawings: TJanuaImageDraws;
    LastDraw: TJanuaDraw;
    FOffset: Single;
    FCanvasControl: TControl;
    FJanuaBlob: TJanuaBlob;
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

uses Janua.FMX.dlgCanvasImage;

procedure TfrmFMXTestImageDraw.btnClearClick(Sender: TObject);
begin
  ClearBox
end;

procedure TfrmFMXTestImageDraw.btnDelLastClick(Sender: TObject);
begin
  DelLastDraw
end;

procedure TfrmFMXTestImageDraw.btnDialogClick(Sender: TObject);
begin
  var
  dlgFMXCanvasImage := TdlgFMXCanvasImage.Create(Self);
  try
    dlgFMXCanvasImage.ShowModal;
  finally
    dlgFMXCanvasImage.Free;
  end;
end;

procedure TfrmFMXTestImageDraw.btnFrameClick(Sender: TObject);
begin
  tabTestComponent.ActiveTab := pgFrame
end;

procedure TfrmFMXTestImageDraw.btnJsonClick(Sender: TObject);
begin
  memJson.Lines.Text := ImgDrawings.Serialize
end;

procedure TfrmFMXTestImageDraw.btnPgImageClick(Sender: TObject);
begin
  tabTestComponent.ActiveTab := pgImage
end;

procedure TfrmFMXTestImageDraw.btnRedrawClick(Sender: TObject);
begin
  Redraw;
end;

procedure TfrmFMXTestImageDraw.btnTestXClick(Sender: TObject);
var
  XPos, YPos: Single;
begin
  // Set up the canvas for drawing
  with ImageCarX.Bitmap.Canvas do
  begin
    BeginScene;
    try
      // Set the font properties
      Font.Size := 100; // Adjust the size as needed
      Font.Family := 'Arial'; // You can choose any font family
      Fill.Color := TAlphaColors.Red;
      var
      aW := TextWidth('X');
      var
      aH := TextHeight('X');

      // Calculate position to center the text
      XPos := (ImageCarX.Width / 2) - aW;
      YPos := (ImageCarX.Height / 2) - aH;

      // Draw the character 'X'
      FillText(RectF(XPos, YPos, XPos + aW, YPos + aH), 'X', False, 1.0, [], TTextAlign.Leading,
        TTextAlign.Leading);
    finally
      EndScene;
    end;
  end;

end;

procedure TfrmFMXTestImageDraw.Button8Click(Sender: TObject);
begin
  var
  aStream := TMemoryStream.Create;
  try
    FJanuaBlob.SaveToStream(aStream);
    aStream.Position := 0;
    ImageCarX.Bitmap.LoadFromStream(aStream);
  finally
    aStream.Free;
  end;
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
  if FDrawing then
    LastDraw := TJanuaDraw.Create(0.0, 0.0)
  else
    ImgDrawings.DelDraw;
  ClearBox;
  Sleep(100);
  Redraw;
end;

procedure TfrmFMXTestImageDraw.DrawCanvas(xpre, ypre, X, Y, Offset: Single);
begin
  if Assigned(pntBoxCar) then
  begin
    pntBoxCar.Canvas.BeginScene;
    try
      pntBoxCar.Canvas.Stroke.Thickness := 10;
      pntBoxCar.Canvas.Stroke.Cap := TStrokeCap.Round;
      pntBoxCar.Canvas.Stroke.Color := TAlphaColorRec.Red;

      pntBoxCar.Canvas.DrawLine(PointF(xpre, ypre + Offset), PointF(X, Y + Offset), 1);
    finally
      pntBoxCar.Canvas.EndScene;
    end;
    // draw line from prev pos to current
  end;
end;

procedure TfrmFMXTestImageDraw.FormCreate(Sender: TObject);
begin
  imgCar.Height := Width * (330 / 540);
  SetCanvasControl(imgCar);
  if Assigned(ImageCarX.Bitmap) then
  begin
    var
    aStream := TMemoryStream.Create;
    try
      ImageCarX.Bitmap.SaveToStream(aStream);
      FJanuaBlob.LoadFromStream(aStream);
    finally
      aStream.Free;
    end;
  end;
end;

procedure TfrmFMXTestImageDraw.FormResize(Sender: TObject);
begin
  imgCar.Height := Self.Width * (330 / 540);
  Self.frameFMXImageDraw1.UpdateSize;
end;

procedure TfrmFMXTestImageDraw.FormShow(Sender: TObject);
begin
  frameFMXImageDraw1.Activate;
end;

procedure TfrmFMXTestImageDraw.ImageCarXMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState;
  X, Y: Single);
var
  XPos, YPos: Single;
  MyRect: TRectF;
  Point: TPointF;
begin
  var
  Offset := 90;

  Point := TPointF.Create(X, Y + 2 * Offset);
  // Point:=ClientToScreen(Point);
  Point := ImageCarX.AbsoluteToLocal(Point);
  MyRect := TRectF.Create(Point, 5, 5);

  // Set up the canvas for drawing
  with ImageCarX.{ Bitmap. } Canvas do
  begin
    BeginScene;
    try
      Stroke.Thickness := 5;
      Stroke.Cap := TStrokeCap.Round;
      Stroke.Color := TAlphaColorRec.Red;
      (*
        // Set the font properties
        Font.Size := 100; // Adjust the size as needed
        Font.Family := 'Arial'; // You can choose any font family
        Fill.Color := TAlphaColors.Red;
        var
        aW := TextWidth('X');
        var
        aH := TextHeight('X');

        // Calculate position to center the text
        XPos := { (ImageCarX.Width / 2) } X - aW { / 2 };
        YPos := { (ImageCarX.Height / 2) } Y - aH { / 2 };

        // Draw the character 'X'
        FillText(RectF(XPos, YPos, XPos + aW, YPos + aH), 'X', False, 1.0, [], TTextAlign.Leading,
        TTextAlign.Leading);
      *)
      { ImageCarX.Canvas. } DrawEllipse(MyRect, 30);
    finally
      EndScene;
    end;
  end;

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
  FDrawing := True;
  LastDraw := TJanuaDraw.Create(X, Y);
  lbCount.Text := 'Count: ' + LastDraw.Count.ToString;

end;

procedure TfrmFMXTestImageDraw.pntBoxCarMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Single);
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

procedure TfrmFMXTestImageDraw.pntBoxCarMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState;
  X, Y: Single);
begin
  try
    ImgDrawings.AddDraw(LastDraw);
    lbCount.Text := 'Count: ' + LastDraw.Count.ToString;
    lbCoordinates.Text := 'Coordinates: ' + LastDraw.ActualX.ToString + ' , ' + LastDraw.ActualY.ToString;
  finally
    if Assigned(pntBoxCar) then
      pntBoxCar.Canvas.EndScene;
    FDrawing := False;
  end;

end;

procedure TfrmFMXTestImageDraw.Redraw;
begin
  if Assigned(pntBoxCar) then
    try
      { pntBoxCar.Canvas.BeginScene; }
      var
      RX := pntBoxCar.Width / ImgDrawings.Width;

      var
      RY := pntBoxCar.Height / ImgDrawings.Heigth;

      for var I := 0 to Pred(ImgDrawings.Count) do
      begin
        var
        FDrawing := ImgDrawings[I];
        for var J := 1 to Pred(FDrawing.Count) do
        begin
          var
          xpre := FDrawing[Pred(J)].X * RX;
          var
          ypre := FDrawing[Pred(J)].Y * RY;
          var
          lX := FDrawing[J].X * RX;
          var
          lY := FDrawing[J].Y * RY;

          DrawCanvas(xpre, ypre, lX, lY, FOffset);
        end;
      end;
    finally
      { pntBoxCar.Canvas.EndScene; }
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
