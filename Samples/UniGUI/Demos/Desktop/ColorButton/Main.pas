//AllFeatures: Colors,Color Button,icon-color-picker
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniCheckBox, uniPanel,
  uniGUIBaseClasses, UniColorPalette, uniStatusBar, uniButton, uniBitBtn,
  uniColorButton;

type
  TMainForm = class(TUniForm)
    UniPanel1: TUniPanel;
    UniStatusBar1: TUniStatusBar;
    uniColorButton1: TuniColorButton;
    uniColorButton2: TuniColorButton;
    procedure UniColorPalette1Select(Sender: TObject; Color: TColor);
    procedure UniFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.UniColorPalette1Select(Sender: TObject; Color: TColor);
begin
  UniPanel1.Color := Color;
  UniStatusBar1.Panels.Items[0].Text := ColorToString(Color);
end;

procedure TMainForm.UniFormCreate(Sender: TObject);
begin
  UniPanel1.Color := uniColorButton1.Color;
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
