//AllFeatures: Colors,Color Palette,icon-form-color-picker
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniCheckBox, uniPanel,
  uniGUIBaseClasses, UniColorPalette, uniStatusBar;

type
  TMainForm = class(TUniForm)
    UniPanel1: TUniPanel;
    UniColorPalette1: TUniColorPalette;
    UniStatusBar1: TUniStatusBar;
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
  UniPanel1.Color := UniColorPalette1.Color;
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
