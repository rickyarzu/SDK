unit Mainm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUImForm, uniGUIBaseClasses,
  uniImageList, uniToolBar, unimToolbar, Printers, uniButton, unimButton,
  uniGUImJSForm, unimSegmentedButton;

type
  TMainmForm = class(TUnimForm)
    UniImageList1: TUniImageList;
    UnimContainerPanel1: TUnimContainerPanel;
    UnimToolBar1: TUnimToolBar;
    UnimToolButton7: TUnimToolButton;
    UnimToolButton1: TUnimToolButton;
    UnimToolButton2: TUnimToolButton;
    UnimToolButton3: TUnimToolButton;
    UnimToolButton4: TUnimToolButton;
    UnimToolButton5: TUnimToolButton;
    UnimToolButton6: TUnimToolButton;
    UnimToolButton8: TUnimToolButton;
    UnimToolButton9: TUnimToolButton;
    UnimToolButton11: TUnimToolButton;
    UnimToolButton10: TUnimToolButton;
    UnimToolBar2: TUnimToolBar;
    UnimToolButton12: TUnimToolButton;
    UnimSegmentedButton1: TUnimSegmentedButton;
    UnimToolButton13: TUnimToolButton;
    procedure UnimToolButton5Click(Sender: TObject);
    procedure UnimToolButton6Click(Sender: TObject);
    procedure UnimButton1Click(Sender: TObject);
    procedure UnimButton2Click(Sender: TObject);
    procedure UnimButton3Click(Sender: TObject);
    procedure UnimButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainmForm: TMainmForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, ServerModule;

function MainmForm: TMainmForm;
begin
  Result := TMainmForm(UniMainModule.GetFormInstance(TMainmForm));
end;

procedure TMainmForm.UnimButton1Click(Sender: TObject);
begin
  ShowMessage('Yes');
end;

procedure TMainmForm.UnimButton2Click(Sender: TObject);
begin
  ShowMessage('Well, Congratulations!');
end;

procedure TMainmForm.UnimButton3Click(Sender: TObject);
begin
  ShowMessage('Oley!');
end;

procedure TMainmForm.UnimButton4Click(Sender: TObject);
begin
  ShowMessage('..and I''m OK with that');
end;

procedure TMainmForm.UnimToolButton5Click(Sender: TObject);
begin
  UniSession.SendFile(UniServerModule.FilesFolderPath+ 'text.txt', 'NewName.txt');
end;

procedure TMainmForm.UnimToolButton6Click(Sender: TObject);
begin
  UnimToolButton6.BadgeText:=IntToStr(StrToInt(UnimToolButton6.BadgeText)+1);
end;

initialization
  RegisterAppFormClass(TMainmForm);

end.
