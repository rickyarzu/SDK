unit Mainm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIRegClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniGUIBaseClasses, uniButton, uniBitBtn, unimBitBtn, unimMenu, uniImageList;

type
  TMainmForm = class(TUnimForm)
    UnimMenu1: TUnimMenu;
    UnimMenu2: TUnimMenu;
    UnimMenu3: TUnimMenu;
    UnimBitBtn1: TUnimBitBtn;
    UnimBitBtn2: TUnimBitBtn;
    UnimBitBtn3: TUnimBitBtn;
    UniImageList1: TUniImageList;
    UnimMenu4: TUnimMenu;
    UnimBitBtn4: TUnimBitBtn;
    procedure UnimBitBtn1Click(Sender: TObject);
    procedure UnimBitBtn2Click(Sender: TObject);
    procedure UnimBitBtn3Click(Sender: TObject);
    procedure UnimMenu1Click(Sender: TUnimMenuItem);
    procedure UnimMenu4Click(Sender: TUnimMenuItem);
    procedure UnimBitBtn4Click(Sender: TObject);
    procedure UnimFormTitleButtonClick(Sender: TUnimTitleButton);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainmForm: TMainmForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication;

function MainmForm: TMainmForm;
begin
  Result := TMainmForm(UniMainModule.GetFormInstance(TMainmForm));
end;

procedure TMainmForm.UnimBitBtn1Click(Sender: TObject);
begin
  UnimMenu1.Visible := True;
end;

procedure TMainmForm.UnimBitBtn2Click(Sender: TObject);
begin
  UnimMenu2.Visible := True;
end;

procedure TMainmForm.UnimBitBtn3Click(Sender: TObject);
begin
  UnimMenu3.Visible := True;
end;

procedure TMainmForm.UnimBitBtn4Click(Sender: TObject);
begin
  UnimMenu4.Visible := True;
end;

procedure TMainmForm.UnimFormTitleButtonClick(Sender: TUnimTitleButton);
begin
  case Sender.ButtonId of
    0 : UnimMenu1.Visible := True;
  end;
end;

procedure TMainmForm.UnimMenu1Click(Sender: TUnimMenuItem);
begin
  if Sender.MenuId = 2 then
    Close
  else
  begin
    ShowMessage(Sender.Caption);
    Sender.Parent.Visible := False;
  end;
end;

procedure TMainmForm.UnimMenu4Click(Sender: TUnimMenuItem);
begin
  ShowMessage(Sender.Caption);
  Sender.Parent.Visible := False;
end;

initialization
  RegisterAppFormClass(TMainmForm);

end.
