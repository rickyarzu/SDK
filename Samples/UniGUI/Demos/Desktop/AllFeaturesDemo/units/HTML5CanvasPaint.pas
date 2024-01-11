// Paint = HTML5 Canvas
unit HTML5CanvasPaint;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniFileUpload, uniGUIBaseClasses, uniImageList,
  uniCanvas, uniStatusBar, uniButton, uniBitBtn, uniSpeedButton, uniPanel,
  uniToolBar, PaintSaveUnit;

type
  TUniHTML5CanvasPaint = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniToolBar1: TUniToolBar;
    UniToolButton5: TUniToolButton;
    UniToolButton1: TUniToolButton;
    UniToolButton2: TUniToolButton;
    UniToolButton4: TUniToolButton;
    UniPanel1: TUniPanel;
    UniSpeedButton1: TUniSpeedButton;
    UniSpeedButton2: TUniSpeedButton;
    UniSpeedButton3: TUniSpeedButton;
    UniSpeedButton4: TUniSpeedButton;
    UniSpeedButton5: TUniSpeedButton;
    UniSpeedButton6: TUniSpeedButton;
    UniSpeedButton7: TUniSpeedButton;
    UniSpeedButton8: TUniSpeedButton;
    UniSpeedButton9: TUniSpeedButton;
    UniSpeedButton10: TUniSpeedButton;
    UniSpeedButton11: TUniSpeedButton;
    UniSpeedButton12: TUniSpeedButton;
    UniSpeedButton13: TUniSpeedButton;
    UniSpeedButton14: TUniSpeedButton;
    UniSpeedButton15: TUniSpeedButton;
    PenPanel: TUniPanel;
    BrushPanel: TUniPanel;
    UniPanel2: TUniPanel;
    UniCanvas1: TUniCanvas;
    UniFileUpload1: TUniFileUpload;
    UniNativeImageList1: TUniNativeImageList;
    procedure UniToolButton5Click(Sender: TObject);
    procedure UniToolButton1Click(Sender: TObject);
    procedure UniToolButton2Click(Sender: TObject);
    procedure UniSpeedButton1Click(Sender: TObject);
    procedure UniSpeedButton10Click(Sender: TObject);
    procedure UniSpeedButton15Click(Sender: TObject);
    procedure UniSpeedButton14Click(Sender: TObject);
    procedure UniCanvas1AfterSubmit(Sender: TObject);
    procedure UniFileUpload1Completed(Sender: TObject; AStream: TFileStream);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}



procedure TUniHTML5CanvasPaint.UniCanvas1AfterSubmit(Sender: TObject);
begin
  UniForm3.Canvas := UniCanvas1;
  UniForm3.ShowModal;
end;

procedure TUniHTML5CanvasPaint.UniFileUpload1Completed(Sender: TObject;
  AStream: TFileStream);
begin
  UniCanvas1.Clear;
  UniCanvas1.LoadFromStream(AStream);
end;

procedure TUniHTML5CanvasPaint.UniSpeedButton10Click(Sender: TObject);
begin
  case TUniSpeedButton(Sender).Tag of
    1 : UniCanvas1.Pen.Width:=1;
    2 : UniCanvas1.Pen.Width:=2;
    3 : UniCanvas1.Pen.Width:=3;
    4 : UniCanvas1.Pen.Width:=4;
    5 : UniCanvas1.Pen.Width:=5;
  end;
end;

procedure TUniHTML5CanvasPaint.UniSpeedButton14Click(Sender: TObject);
begin
  UniCanvas1.PaintMode:=pmFill;
end;

procedure TUniHTML5CanvasPaint.UniSpeedButton15Click(Sender: TObject);
begin
  UniCanvas1.PaintMode:=pmFreeHand;
end;

procedure TUniHTML5CanvasPaint.UniSpeedButton1Click(Sender: TObject);
var
  C : Tcolor;
begin
  case TUniSpeedButton(Sender).Tag of
    1 : C:=clBlack;
    2 : C:=clAqua;
    3 : C:=clLime;
    4 : C:=clRed;
    5 : C:=clBlue;
    6 : C:=clLtGray;
    7 : C:=clFuchsia;
    8 : C:=clYellow;
  else
    C:=clBlack;
  end;
  case UniCanvas1.PaintMode of
    pmFreeHand:
      begin
        UniCanvas1.Pen.Color:=C;
        PenPanel.Color:=UniCanvas1.Pen.Color;
      end;
    pmFill:
      begin
        UniCanvas1.Brush.Color:=C;
        BrushPanel.Color:=UniCanvas1.Brush.Color;
      end;
  end;
end;

procedure TUniHTML5CanvasPaint.UniToolButton1Click(Sender: TObject);
begin
  UniFileUpload1.Execute;
end;

procedure TUniHTML5CanvasPaint.UniToolButton2Click(Sender: TObject);
begin
  UniCanvas1.SubmitData;
end;

procedure TUniHTML5CanvasPaint.UniToolButton5Click(Sender: TObject);
begin
  UniCanvas1.Clear;
end;

initialization
  RegisterClass(TUniHTML5CanvasPaint);
end.
