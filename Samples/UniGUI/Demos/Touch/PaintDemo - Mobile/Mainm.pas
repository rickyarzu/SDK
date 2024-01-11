unit Mainm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUIForm, uniGUImForm, uniGUITypes, Menus, UniMainMenu,
  ImgList, ComCtrls, UniToolBar, ToolWin, ExtCtrls, UniPanel, UniStatusBar,
  UniCanvas, Buttons, UniSpeedButton, UniFileUpload, uniGUIRegClasses,  uniguiclasses, UniButton,
  UniBitBtn, uniGUIBaseClasses, uniImageList, uniGUImJSForm, unimPanel,
  unimToolbar, unimFileUpload, uniMultiItem, unimSelect, unimCanvas,
  uniCalendarPanel, unimCalendarPanel;

type
  TMainmForm = class(TUnimForm)
    UniToolBar1: TUnimToolBar;
    UniToolButton1: TUnimToolButton;
    UniToolButton2: TUnimToolButton;
    UniPanel2: TUnimPanel;
    UniCanvas1: TUnimCanvas;
    UniToolButton3: TUnimToolButton;
    UniToolButton4: TUnimToolButton;
    UniFileUpload1: TUnimFileUpload;
    UniToolButton5: TUnimToolButton;
    UniNativeImageList1: TUniNativeImageList;
    UnimToolButton1: TUnimToolButton;
    UnimToolButton2: TUnimToolButton;
    UnimSelect1: TUnimSelect;
    UnimToolButton3: TUnimToolButton;
    UnimToolButton4: TUnimToolButton;
    UnimSelect2: TUnimSelect;
    UnimToolButton5: TUnimToolButton;
    UnimToolButton6: TUnimToolButton;
    UnimSelect3: TUnimSelect;
    UnimToolButton7: TUnimToolButton;
    ColPanel: TUnimPanel;
    procedure Exit2Click(Sender: TObject);
    procedure UniToolButton1Click(Sender: TObject);
    procedure UniFileUpload1Completed(Sender: TObject; AStream: TFileStream);
    procedure UniToolButton5Click(Sender: TObject);
    procedure UniToolButton2Click(Sender: TObject);
    procedure UniCanvas1AfterSubmit(Sender: TObject);
    procedure UnimSelect1Change(Sender: TObject);
    procedure UnimSelect2Change(Sender: TObject);
    procedure UnimSelect3Change(Sender: TObject);
    procedure UnimFormCreate(Sender: TObject);
  private
    procedure SetColorIndex(const Col: TColor);
    procedure ResetCanvas;
    { Private declarations }
  public
    { Public declarations }
  end;

function MainmForm: TMainmForm;

implementation

{$R *.dfm}

uses
  UniGUIVars, MainModule, Unit1;

function MainmForm: TMainmForm;
begin
  Result := TMainmForm(UniMainModule.GetFormInstance(TMainmForm));
end;

procedure TMainmForm.Exit2Click(Sender: TObject);
begin
  Close;
end;

procedure TMainmForm.UniCanvas1AfterSubmit(Sender: TObject);
begin
  UniForm1.ShowModal;
end;

procedure TMainmForm.UniFileUpload1Completed(Sender: TObject;
  AStream: TFileStream);
begin
  ResetCanvas;
  UniCanvas1.LoadFromStream(AStream);
end;

procedure TMainmForm.ResetCanvas;
begin
  UnimSelect1.ItemIndex := 0;
  UnimSelect2.ItemIndex := 0;
  UnimSelect3.ItemIndex := 0;
  UniCanvas1.Clear;
  UniCanvas1.Pen.Color := clBlack;
  UniCanvas1.Brush.Color := clGray;
  UniCanvas1.PaintMode := pmFreeHand;
  ColPanel.Color := UniCanvas1.Pen.Color;
  SetColorIndex(ColPanel.Color);
end;

procedure TMainmForm.UnimFormCreate(Sender: TObject);
begin
  ResetCanvas;
end;

procedure TMainmForm.UnimSelect1Change(Sender: TObject);
var
  C : Tcolor;
begin
  case unimSelect1.ItemIndex of
    0 : C:=clBlack;
    1 : C:=clBlue;
    2 : C:=clAqua;
    3 : C:=clGray;
    4 : C:=clLime;
    5 : C:=clFuchsia;
    6 : C:=clRed;
    7 : C:=clYellow;
  else
    C:=clBlack;
  end;
  ColPanel.Color := C;
  case UniCanvas1.PaintMode of
    pmFreeHand:
      begin
        UniCanvas1.Pen.Color := C;
      end;

    pmFill:
      begin
        UniCanvas1.Brush.Color := C;
      end;
  end;
end;

procedure TMainmForm.SetColorIndex(const Col: TColor);
begin
  case Col of
    clBlack : unimSelect1.ItemIndex := 0;
    clBlue : unimSelect1.ItemIndex := 1;
    clAqua : unimSelect1.ItemIndex := 2;
    clGray : unimSelect1.ItemIndex := 3;
    clLime : unimSelect1.ItemIndex := 4;
    clFuchsia : unimSelect1.ItemIndex := 5;
    clRed : unimSelect1.ItemIndex := 6;
    clYellow : unimSelect1.ItemIndex := 7;
  end;
end;

procedure TMainmForm.UnimSelect2Change(Sender: TObject);
begin
  case UnimSelect2.ItemIndex of
    0 : UniCanvas1.Pen.Width:=1;
    1 : UniCanvas1.Pen.Width:=2;
    2 : UniCanvas1.Pen.Width:=3;
    3 : UniCanvas1.Pen.Width:=4;
    4 : UniCanvas1.Pen.Width:=5;
  end;
end;

procedure TMainmForm.UnimSelect3Change(Sender: TObject);
begin
  case UnimSelect3.ItemIndex of
    0 :
      begin
        UniCanvas1.PaintMode:=pmFreeHand;
        ColPanel.Color := UniCanvas1.Pen.Color;
      end;
    1 :
      begin
        UniCanvas1.PaintMode:=pmFill;
        ColPanel.Color := UniCanvas1.Brush.Color;
      end;
  end;
  SetColorIndex(ColPanel.Color);
end;

procedure TMainmForm.UniToolButton1Click(Sender: TObject);
begin
  UniFileUpload1.Execute;
end;

procedure TMainmForm.UniToolButton2Click(Sender: TObject);
begin
  UniCanvas1.SubmitData;
end;

procedure TMainmForm.UniToolButton5Click(Sender: TObject);
begin
  ResetCanvas;
end;

initialization
  RegisterAppFormClass(TMainmForm);

end.
