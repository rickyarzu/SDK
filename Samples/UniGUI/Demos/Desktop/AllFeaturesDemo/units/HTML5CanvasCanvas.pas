// Canvas = HTML5 Canvas
unit HTML5CanvasCanvas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, ImgList, uniEdit, uniLabel, uniBitBtn,
  uniSpeedButton, uniButton, uniGroupBox, uniGUIBaseClasses, uniCanvas, uniPanel;

type
  TUniHTML5CanvasCanvas = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniCanvas1: TUniCanvas;
    UniCanvas2: TUniCanvas;
    UniGroupBox1: TUniGroupBox;
    UniButton1: TUniButton;
    UniButton2: TUniButton;
    UniButton3: TUniButton;
    UniButton8: TUniButton;
    UniButton10: TUniButton;
    UniButton12: TUniButton;
    UniGroupBox2: TUniGroupBox;
    UniSpeedButton1: TUniSpeedButton;
    UniLabel1: TUniLabel;
    UniButton4: TUniButton;
    UniButton5: TUniButton;
    UniButton6: TUniButton;
    UniButton7: TUniButton;
    UniButton9: TUniButton;
    UniButton11: TUniButton;
    UniEdit1: TUniEdit;
    ImageList1: TImageList;
    procedure UniButton5Click(Sender: TObject);
    procedure UniSpeedButton1Click(Sender: TObject);
    procedure UniButton7Click(Sender: TObject);
    procedure UniButton6Click(Sender: TObject);
    procedure UniButton4Click(Sender: TObject);
    procedure UniButton11Click(Sender: TObject);
    procedure UniButton9Click(Sender: TObject);
    procedure UniButton10Click(Sender: TObject);
    procedure UniButton3Click(Sender: TObject);
    procedure UniButton1Click(Sender: TObject);
    procedure UniButton12Click(Sender: TObject);
    procedure UniButton8Click(Sender: TObject);
    procedure UniButton2Click(Sender: TObject);
    procedure UniCanvas1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure UniCanvas1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure UniCanvas1AfterSubmit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses ServerModule;

procedure TUniHTML5CanvasCanvas.UniButton10Click(Sender: TObject);
var
  I : Integer;
begin
  for I := 0 to ImageList1.Count - 1 do
    ImageList1.Draw(UniCanvas2.BitmapCanvas, 16, I*36+16, I);
  UniCanvas2.RefreshBitmap;
end;

procedure TUniHTML5CanvasCanvas.UniButton11Click(Sender: TObject);
begin
  UniCanvas1.LoadFromFile(UniServerModule.StartPath+'files\nature.jpg');
end;

procedure TUniHTML5CanvasCanvas.UniButton12Click(Sender: TObject);
var
  X1, Y1, X2, Y2 : Integer;
  B : Byte;
begin
  X1:=Random(Width div 2);
  Y1:=Random(Height div 2);
  X2:=Random(Width div 2);
  Y2:=Random(Height div 2);
  B:=Ord(High(TBrushStyle));
  UniCanvas2.BitmapCanvas.Brush.Style:=TBrushStyle(Random(B));
  UniCanvas2.BitmapCanvas.Pen.Color:=Random($FFFFFF);
  UniCanvas2.BitmapCanvas.Brush.Color:=Random($FFFFFF);
  UniCanvas2.BitmapCanvas.Rectangle(X1, Y1, X2, Y2);

end;

procedure TUniHTML5CanvasCanvas.UniButton1Click(Sender: TObject);
var
  X1, Y1, X2, Y2 : Integer;
begin
  X1:=Random(Width div 2);
  Y1:=Random(Height div 2);
  X2:=Random(Width div 2);
  Y2:=Random(Height div 2);
  UniCanvas2.BitmapCanvas.Brush.Color:=Random($FFFFFF);
  UniCanvas2.BitmapCanvas.Ellipse(X1, Y1, X2, Y2);
end;

procedure TUniHTML5CanvasCanvas.UniButton2Click(Sender: TObject);
var
  X1, Y1, X2, Y2 : Integer;
begin
  X1:=Random(Width div 2);
  Y1:=Random(Height div 2);
  X2:=Random(Width);
  Y2:=Random(Height);
  UniCanvas2.BitmapCanvas.Pen.Color:=Random($FFFFFF);
  UniCanvas2.BitmapCanvas.Brush.Style:=bsClear;
  UniCanvas2.BitmapCanvas.Rectangle(X1, Y1, X2, Y2);
end;

procedure TUniHTML5CanvasCanvas.UniButton3Click(Sender: TObject);
var
  X1, Y1, X2, Y2 : Integer;
begin
  X1:=Random(Width div 2);
  Y1:=Random(Height div 2);
  X2:=Random(Width);
  Y2:=Random(Height);
  UniCanvas2.BitmapCanvas.MoveTo(X1, Y1);
  UniCanvas2.BitmapCanvas.LineTo(X2, Y2);
end;

procedure TUniHTML5CanvasCanvas.UniButton4Click(Sender: TObject);
var
  X1, Y1, X2, Y2 : Integer;
begin
  X1:=Random(Width div 2);
  Y1:=Random(Height div 2);
  X2:=Random(Width);
  Y2:=Random(Height);
  UniCanvas1.Pen.Color:=Random($FFFFFF);
  UniCanvas1.MoveTo(X1, Y1);
  UniCanvas1.LineTo(X2, Y2);
end;

procedure TUniHTML5CanvasCanvas.UniButton5Click(Sender: TObject);
var
  X1, Y1, R: Integer;
begin
  X1:=Random(Width div 2);
  Y1:=Random(Height div 2);
  R:=Random(Width div 4);
  UniCanvas1.Pen.Color:=Random($FFFFFF);
  UniCanvas1.Brush.Color:=Random($FFFFFF);
  UniCanvas1.Circle(X1, Y1, R);
end;

procedure TUniHTML5CanvasCanvas.UniButton6Click(Sender: TObject);
begin
  UniCanvas1.Clear;
end;

procedure TUniHTML5CanvasCanvas.UniButton7Click(Sender: TObject);
var
  X1, Y1, X2, Y2 : Integer;
begin
  X1:=Random(Width div 2);
  Y1:=Random(Height div 2);
  X2:=Random(Width div 2);
  Y2:=Random(Height div 2);
  UniCanvas1.Pen.Color:=Random($FFFFFF);
  UniCanvas1.Brush.Color:=Random($FFFFFF);
  UniCanvas1.Rectangle(X1, Y1, X2, Y2);
end;

procedure TUniHTML5CanvasCanvas.UniButton8Click(Sender: TObject);
begin
  UniCanvas2.Clear;
end;

procedure TUniHTML5CanvasCanvas.UniButton9Click(Sender: TObject);
begin
  UniCanvas1.SubmitData;
end;

procedure TUniHTML5CanvasCanvas.UniCanvas1AfterSubmit(Sender: TObject);
var
  fName : string;
begin
  fName:=UniServerModule.LocalCachePath+'Test.jpg';
  UniCanvas1.SaveToFile(fName, tiJPG);
  ShowMessage('Saved to: '+fName);
end;

procedure TUniHTML5CanvasCanvas.UniCanvas1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  UniEdit1.Text:=Format('MouseDown: %d,%d', [X, Y]);
end;

procedure TUniHTML5CanvasCanvas.UniCanvas1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  UniEdit1.Text:=Format('MouseUp: %d,%d', [X, Y]);
end;

procedure TUniHTML5CanvasCanvas.UniSpeedButton1Click(Sender: TObject);
begin
  if UniSpeedButton1.Down then
  begin
    UniCanvas1.PaintMode:=pmFreeHand;
    UniCanvas1.Editable:=True;
  end
  else
    UniCanvas1.Editable:=False;
end;

initialization
  RegisterClass(TUniHTML5CanvasCanvas);

end.
