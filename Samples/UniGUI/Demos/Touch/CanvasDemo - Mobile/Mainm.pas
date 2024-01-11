//AllFeatures: Miscellaneous,Canvas Demo,icon-d3-canvas
unit Mainm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUIForm, uniGUImForm, uniGUITypes, ExtCtrls, UniCanvas,
  StdCtrls, uniGroupBox, UniButton, Buttons, UniSpeedButton, ImgList, UniEdit,
  UniLabel, UniBitBtn, uniGUIRegClasses,  uniguiclasses, UniPanel, uniGUIBaseClasses,
  unimButton, unimCanvas, unimEdit, uniGUImJSForm, unimPanel, unimToggle,
  unimLabel, uniToolBar, unimToolbar;

type
  TMainmForm = class(TUnimForm)
    UniCanvas1: TUnimCanvas;
    UniCanvas2: TUnimCanvas;
    ImageList1: TImageList;
    UnimToolBar1: TUnimToolBar;
    UnimToolButton1: TUnimToolButton;
    UnimToolButton2: TUnimToolButton;
    UnimToolButton4: TUnimToolButton;
    UnimToolButton5: TUnimToolButton;
    UnimToolButton6: TUnimToolButton;
    UnimToolButton7: TUnimToolButton;
    UnimToolButton8: TUnimToolButton;
    UniEdit1: TUnimEdit;
    UnimToolBar2: TUnimToolBar;
    UnimToolButton9: TUnimToolButton;
    UnimToolButton10: TUnimToolButton;
    UnimToolButton11: TUnimToolButton;
    UnimToolButton12: TUnimToolButton;
    UnimToolButton13: TUnimToolButton;
    Clear: TUnimToolButton;
    UnimToolButton3: TUnimToolButton;
    UniSpeedButton1: TUnimToggle;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainmForm: TMainmForm;

implementation

{$R *.dfm}

uses
  UniGUIVars, MainModule, ServerModule;

function MainmForm: TMainmForm;
begin
  Result  :=  TMainmForm(UniMainModule.GetFormInstance(TMainmForm));
end;

procedure TMainmForm.UniButton10Click(Sender: TObject);
var
  I : Integer;
begin
  for I  :=  0 to ImageList1.Count - 1 do
    ImageList1.Draw(UniCanvas2.BitmapCanvas, 16, I*36+16, I);
  UniCanvas2.RefreshBitmap;
end;

procedure TMainmForm.UniButton11Click(Sender: TObject);
begin
  UniCanvas1.LoadFromFile(UniServerModule.StartPath+'nature.jpg');
end;

procedure TMainmForm.UniButton12Click(Sender: TObject);
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

procedure TMainmForm.UniButton1Click(Sender: TObject);
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

procedure TMainmForm.UniButton2Click(Sender: TObject);
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

procedure TMainmForm.UniButton3Click(Sender: TObject);
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

procedure TMainmForm.UniButton4Click(Sender: TObject);
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

procedure TMainmForm.UniButton5Click(Sender: TObject);
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

procedure TMainmForm.UniButton6Click(Sender: TObject);
begin
  UniCanvas1.Clear;
end;

procedure TMainmForm.UniButton7Click(Sender: TObject);
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

procedure TMainmForm.UniButton8Click(Sender: TObject);
begin
  UniCanvas2.Clear;
end;

procedure TMainmForm.UniButton9Click(Sender: TObject);
begin
  UniCanvas1.SubmitData;
end;

procedure TMainmForm.UniCanvas1AfterSubmit(Sender: TObject);
var
  fName : string;
begin
  fName := UniServerModule.LocalCachePath+'Test.jpg';
  UniCanvas1.SaveToFile(fName, tiJPG);
  ShowMessage('Saved to: '+fName);
end;

procedure TMainmForm.UniCanvas1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  UniEdit1.Text := Format('Down %d,%d', [X, Y]);
end;

procedure TMainmForm.UniCanvas1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  UniEdit1.Text := Format('Up %d,%d', [X, Y]);
end;

procedure TMainmForm.UniFormCreate(Sender: TObject);
begin
  UniCanvas1.Editable := UniSpeedButton1.Toggled;
end;

procedure TMainmForm.UniSpeedButton1Click(Sender: TObject);
begin
  if UniSpeedButton1.Toggled then
  begin
    UniCanvas1.PaintMode := pmFreeHand;
    UniCanvas1.Editable := True;
  end
  else
    UniCanvas1.Editable := False;
end;

initialization
  RegisterAppFormClass(TMainmForm);

end.
