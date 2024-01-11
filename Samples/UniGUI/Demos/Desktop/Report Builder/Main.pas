unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniButton,  uniLabel,
  ServerModule, uniURLFrame,  DB,  uniCheckBox,
  uniMultiItem, uniComboBox, uniDBComboBox, uniDBLookupComboBox, Unit1;

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
      UniForm1.Show();
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
