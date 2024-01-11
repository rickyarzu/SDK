//AllFeatures: Miscellaneous,Canvas Demo,icon-d3-canvas
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUIForm, uniGUITypes, ExtCtrls, UniCanvas,
  StdCtrls, uniGroupBox, UniButton, Buttons, UniSpeedButton, ImgList, UniEdit,
  UniLabel, UniBitBtn, uniGUIRegClasses,  uniguiclasses, UniPanel, uniGUIBaseClasses;

type
  TMainForm = class(TUniForm)
    UniCanvas1: TUniCanvas;
    UniGroupBox1: TUniGroupBox;
    UniGroupBox2: TUniGroupBox;
    UniButton1: TUniButton;
    UniButton2: TUniButton;
    UniButton3: TUniButton;
    UniButton4: TUniButton;
    UniCanvas2: TUniCanvas;
    UniButton5: TUniButton;
    UniButton6: TUniButton;
    UniButton7: TUniButton;
    UniButton8: TUniButton;
    UniButton9: TUniButton;
    UniButton11: TUniButton;
    UniSpeedButton1: TUniSpeedButton;
    ImageList1: TImageList;
    UniButton10: TUniButton;
    UniButton12: TUniButton;
    UniEdit1: TUniEdit;
    UniLabel1: TUniLabel;
    UniButton13: TUniButton;
    UniButton14: TUniButton;
    procedure UniButton1Click(Sender: TObject);
    procedure UniButton2Click(Sender: TObject);
    procedure UniButton3Click(Sender: TObject);
    procedure UniButton4Click(Sender: TObject);
    procedure UniButton5Click(Sender: TObject);
    procedure UniButton6Click(Sender: TObject);
    procedure UniButton7Click(Sender: TObject);
    procedure UniButton8Click(Sender: TObject);
    procedure UniButton9Click(Sender: TObject);
    procedure UniCanvas1AfterSubmit(Sender: TObject);
    procedure UniButton11Click(Sender: TObject);
    procedure UniSpeedButton1Click(Sender: TObject);
    procedure UniButton10Click(Sender: TObject);
    procedure UniButton12Click(Sender: TObject);
    procedure UniCanvas1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure UniCanvas1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure UniFormCreate(Sender: TObject);
    procedure UniButton13Click(Sender: TObject);
    procedure UniButton14Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  UniGUIVars, MainModule, ServerModule;

function MainForm: TMainForm;
begin
  Result  :=  TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.UniButton10Click(Sender: TObject);
var
  I : Integer;
begin
  for I  :=  0 to ImageList1.Count - 1 do
    ImageList1.Draw(UniCanvas2.BitmapCanvas, 16, I*36+16, I);
  UniCanvas2.RefreshBitmap;
end;

procedure TMainForm.UniButton11Click(Sender: TObject);
begin
  UniCanvas1.LoadFromFile(UniServerModule.StartPath+'nature.jpg');
end;

procedure TMainForm.UniButton12Click(Sender: TObject);
var
  X1, Y1, X2, Y2 : Integer;
  B : Byte;
begin
  X1 := Random(Width div 2);
  Y1 := Random(Height div 2);
  X2 := Random(Width div 2);
  Y2 := Random(Height div 2);
  B := Ord(High(TBrushStyle));
  UniCanvas2.BitmapCanvas.Brush.Style := TBrushStyle(Random(B));
  UniCanvas2.BitmapCanvas.Pen.Color := Random($FFFFFF);
  UniCanvas2.BitmapCanvas.Brush.Color := Random($FFFFFF);
  UniCanvas2.BitmapCanvas.Rectangle(X1, Y1, X2, Y2);
end;

procedure TMainForm.UniButton13Click(Sender: TObject);
begin
  UniCanvas1.Clear;
  UniCanvas1.LoadImageUrl(0, 0, 'files/Freesample.svg');
end;

procedure TMainForm.UniButton14Click(Sender: TObject);
begin
  UniCanvas1.Clear;
  UniCanvas1.LoadImageUrlFile(25, 25,  UniServerModule.StartPath +  'images/html5.gif');
end;

procedure TMainForm.UniButton1Click(Sender: TObject);
var
  X1, Y1, X2, Y2 : Integer;
begin
  X1 := Random(Width div 2);
  Y1 := Random(Height div 2);
  X2 := Random(Width div 2);
  Y2 := Random(Height div 2);
  UniCanvas2.BitmapCanvas.Brush.Color := Random($FFFFFF);
  UniCanvas2.BitmapCanvas.Ellipse(X1, Y1, X2, Y2);
end;

procedure TMainForm.UniButton2Click(Sender: TObject);
var
  X1, Y1, X2, Y2 : Integer;
begin
  X1 := Random(Width div 2);
  Y1 := Random(Height div 2);
  X2 := Random(Width);
  Y2 := Random(Height);
  UniCanvas2.BitmapCanvas.Pen.Color := Random($FFFFFF);
  UniCanvas2.BitmapCanvas.Brush.Style := bsClear;
  UniCanvas2.BitmapCanvas.Rectangle(X1, Y1, X2, Y2);
end;

procedure TMainForm.UniButton3Click(Sender: TObject);
var
  X1, Y1, X2, Y2 : Integer;
begin
  X1 := Random(Width div 2);
  Y1 := Random(Height div 2);
  X2 := Random(Width);
  Y2 := Random(Height);
  UniCanvas2.BitmapCanvas.MoveTo(X1, Y1);
  UniCanvas2.BitmapCanvas.LineTo(X2, Y2);
end;

procedure TMainForm.UniButton4Click(Sender: TObject);
var
  X1, Y1, X2, Y2 : Integer;
begin
  X1 := Random(Width div 2);
  Y1 := Random(Height div 2);
  X2 := Random(Width);
  Y2 := Random(Height);
  UniCanvas1.Pen.Color := Random($FFFFFF);
  UniCanvas1.MoveTo(X1, Y1);
  UniCanvas1.LineTo(X2, Y2);
end;

procedure TMainForm.UniButton5Click(Sender: TObject);
var
  X1, Y1, R: Integer;
begin
  X1 := Random(Width div 2);
  Y1 := Random(Height div 2);
  R := Random(Width div 4);
  UniCanvas1.Pen.Color := Random($FFFFFF);
  UniCanvas1.Brush.Color := Random($FFFFFF);
  UniCanvas1.Circle(X1, Y1, R);
end;

procedure TMainForm.UniButton6Click(Sender: TObject);
begin
  UniCanvas1.Clear;
end;

procedure TMainForm.UniButton7Click(Sender: TObject);
var
  X1, Y1, X2, Y2 : Integer;
begin
  X1 := Random(Width div 2);
  Y1 := Random(Height div 2);
  X2 := Random(Width div 2);
  Y2 := Random(Height div 2);
  UniCanvas1.Pen.Color := Random($FFFFFF);
  UniCanvas1.Brush.Color := Random($FFFFFF);
  UniCanvas1.Rectangle(X1, Y1, X2, Y2);
end;

procedure TMainForm.UniButton8Click(Sender: TObject);
begin
  UniCanvas2.Clear;
end;

procedure TMainForm.UniButton9Click(Sender: TObject);
begin
  UniCanvas1.SubmitData;
end;

procedure TMainForm.UniCanvas1AfterSubmit(Sender: TObject);
var
  fName : string;
begin
  fName := UniServerModule.LocalCachePath+'Test.jpg';
  UniCanvas1.SaveToFile(fName, tiJPG);
  ShowMessage('Saved to: '+fName);
end;

procedure TMainForm.UniCanvas1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  UniEdit1.Text := Format('MouseDown: %d,%d', [X, Y]);
end;

procedure TMainForm.UniCanvas1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  UniEdit1.Text := Format('MouseUp: %d,%d', [X, Y]);
end;

procedure TMainForm.UniFormCreate(Sender: TObject);
begin
  UniCanvas1.Editable := UniSpeedButton1.Down;
end;

procedure TMainForm.UniSpeedButton1Click(Sender: TObject);
begin
  if UniSpeedButton1.Down then
  begin
    UniCanvas1.PaintMode := pmFreeHand;
    UniCanvas1.Editable := True;
  end
  else
    UniCanvas1.Editable := False;
end;

initialization
  RegisterMainFormClass(TMainForm);

end.
