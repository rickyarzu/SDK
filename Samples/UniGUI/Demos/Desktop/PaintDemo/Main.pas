unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUIForm, uniGUITypes, Menus, UniMainMenu,
  ImgList, ComCtrls, UniToolBar, ToolWin, ExtCtrls, UniPanel, UniStatusBar,
  UniCanvas, Buttons, UniSpeedButton, UniFileUpload, uniGUIRegClasses,  uniguiclasses, UniButton,
  UniBitBtn, uniGUIBaseClasses, uniImageList;

type
  TMainForm = class(TUniForm)
    UniMainMenu1: TUniMainMenu;
    File1: TUniMenuItem;
    Open1: TUniMenuItem;
    Exit1: TUniMenuItem;
    UniToolBar1: TUniToolBar;
    UniToolButton1: TUniToolButton;
    UniToolButton2: TUniToolButton;
    ImageList1: TUniImageList;
    UniPanel1: TUniPanel;
    UniStatusBar1: TUniStatusBar;
    UniPanel2: TUniPanel;
    UniCanvas1: TUniCanvas;
    Exit2: TUniMenuItem;
    UniSpeedButton1: TUniSpeedButton;
    UniSpeedButton2: TUniSpeedButton;
    UniSpeedButton3: TUniSpeedButton;
    UniSpeedButton4: TUniSpeedButton;
    UniSpeedButton5: TUniSpeedButton;
    UniSpeedButton6: TUniSpeedButton;
    UniSpeedButton7: TUniSpeedButton;
    UniSpeedButton8: TUniSpeedButton;
    UniToolButton3: TUniToolButton;
    UniToolButton4: TUniToolButton;
    UniFileUpload1: TUniFileUpload;
    UniToolButton5: TUniToolButton;
    New1: TUniMenuItem;
    UniSpeedButton9: TUniSpeedButton;
    UniSpeedButton10: TUniSpeedButton;
    UniSpeedButton11: TUniSpeedButton;
    UniSpeedButton12: TUniSpeedButton;
    UniSpeedButton13: TUniSpeedButton;
    UniSpeedButton14: TUniSpeedButton;
    UniSpeedButton15: TUniSpeedButton;
    PenPanel: TUniPanel;
    BrushPanel: TUniPanel;
    UniNativeImageList1: TUniNativeImageList;
    procedure Exit2Click(Sender: TObject);
    procedure UniToolButton1Click(Sender: TObject);
    procedure UniFileUpload1Completed(Sender: TObject; AStream: TFileStream);
    procedure UniToolButton5Click(Sender: TObject);
    procedure UniSpeedButton1Click(Sender: TObject);
    procedure UniSpeedButton12Click(Sender: TObject);
    procedure UniToolButton2Click(Sender: TObject);
    procedure UniCanvas1AfterSubmit(Sender: TObject);
    procedure UniSpeedButton14Click(Sender: TObject);
    procedure UniSpeedButton15Click(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  UniGUIVars, MainModule, Unit1;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.Exit2Click(Sender: TObject);
begin
  Close;
end;

procedure TMainForm.UniCanvas1AfterSubmit(Sender: TObject);
begin
  UniForm1.ShowModal;
end;

procedure TMainForm.UniFileUpload1Completed(Sender: TObject;
  AStream: TFileStream);
begin
  UniCanvas1.Clear;
  UniCanvas1.LoadFromStream(AStream);
end;

procedure TMainForm.UniFormShow(Sender: TObject);
begin
  PenPanel.Color:=UniCanvas1.Pen.Color;
  BrushPanel.Color:=UniCanvas1.Brush.Color;
end;

procedure TMainForm.UniSpeedButton12Click(Sender: TObject);
begin
  case TUniSpeedButton(Sender).Tag of
    1 : UniCanvas1.Pen.Width:=1;
    2 : UniCanvas1.Pen.Width:=2;
    3 : UniCanvas1.Pen.Width:=3;
    4 : UniCanvas1.Pen.Width:=4;
    5 : UniCanvas1.Pen.Width:=5;
  end;
end;

procedure TMainForm.UniSpeedButton14Click(Sender: TObject);
begin
  UniCanvas1.PaintMode:=pmFill;
end;

procedure TMainForm.UniSpeedButton15Click(Sender: TObject);
begin
  UniCanvas1.PaintMode:=pmFreeHand;
end;

procedure TMainForm.UniSpeedButton1Click(Sender: TObject);
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

procedure TMainForm.UniToolButton1Click(Sender: TObject);
begin
  UniFileUpload1.Execute;
end;

procedure TMainForm.UniToolButton2Click(Sender: TObject);
begin
  UniCanvas1.SubmitData;
end;

procedure TMainForm.UniToolButton5Click(Sender: TObject);
begin
  UniCanvas1.Clear;
end;

initialization
  RegisterMainFormClass(TMainForm);

end.
