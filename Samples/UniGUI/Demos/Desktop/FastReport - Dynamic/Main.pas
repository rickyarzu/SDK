//AllFeatures: FastReport,FastReport - Dynamic,icon-framed-panels
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, DB, uniGUIBaseClasses,
  uniBasicGrid, uniDBGrid, uniButton, frxClass, frxDBSet, Unit1,
  uniMultiItem, uniComboBox, frxExportPDF, ServerModule, uniURLFrame,
  uniDBComboBox, uniDBLookupComboBox, uniLabel, uniPanel, uniCheckBox,
  uniThreadTimer, Menus, uniMainMenu;

type
  TMainForm = class(TUniForm)
    UniButton1: TUniButton;
    UniDBLookupComboBox1: TUniDBLookupComboBox;
    UniLabel1: TUniLabel;
    procedure UniButton1Click(Sender: TObject);
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

procedure TMainForm.UniButton1Click(Sender: TObject);
begin
  if (Trim(UniDBLookupComboBox1.Text)<>'') then
  begin
    UniDBLookupComboBox1.Color := clWindow;
    UniForm1.InvNum := UniDBLookupComboBox1.Text;
    UniForm1.ShowModal;
  end
  else
  begin
    UniDBLookupComboBox1.Color := clYellow;
    UniDBLookupComboBox1.SetFocus;
  end;
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
