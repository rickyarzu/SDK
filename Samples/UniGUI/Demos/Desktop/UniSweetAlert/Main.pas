//AllFeatures: SweetAlert,Basic Demo,icon-message-box
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniSweetAlert,
  uniButton, uniImageList, uniEdit, uniCheckBox, uniMultiItem, uniComboBox;

type
  TMainForm = class(TUniForm)
    UniComboBox1: TUniComboBox;
    UniCheckBox1: TUniCheckBox;
    UniCheckBox2: TUniCheckBox;
    UniEdit1: TUniEdit;
    UniEdit2: TUniEdit;
    UniCheckBox3: TUniCheckBox;
    UniCheckBox4: TUniCheckBox;
    UniEdit3: TUniEdit;
    UniButton1: TUniButton;
    UniButton2: TUniButton;
    UniSweetAlert1: TUniSweetAlert;
    UniNativeImageList1: TUniNativeImageList;
    UniCheckBox6: TUniCheckBox;
    UniButton3: TUniButton;
    UniEdit4: TUniEdit;
    procedure UniButton1Click(Sender: TObject);
    procedure UniButton2Click(Sender: TObject);
    procedure UniButton3Click(Sender: TObject);
    procedure UniSweetAlert1Confirm(Sender: TObject);
    procedure UniSweetAlert1PreConfirm(Sender: TObject; var Result: Boolean;
      var ErrorString: string);
    procedure UniSweetAlert1Dismiss(Sender: TObject;
      const Reason: TDismissType);
  private
    procedure ConfigSweetAlert(const ShowLoader: Boolean = False);
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

procedure TMainForm.ConfigSweetAlert(const ShowLoader: Boolean = False);
begin
  with UniSweetAlert1 do
  begin
    AlertType := TAlertType(UniComboBox1.ItemIndex);
    AllowEscapeKey := UniCheckBox1.Checked;
    AllowOutsideClick := UniCheckBox2.Checked;
    CancelButtonText := UniEdit1.Text;
    ConfirmButtonText := UniEdit2.Text;
    ShowCancelButton := UniCheckBox3.Checked;
    ShowCloseButton := UniCheckBox4.Checked;
    ShowLoaderOnConfirm := ShowLoader;
    Title := UniEdit3.Text;
    if UniCheckBox6.Checked then
    begin
      InputType := ItText;
      InputValue := UniEdit4.Text;
    end
    else
      InputType := ItNone;
  end;
end;


procedure TMainForm.UniButton1Click(Sender: TObject);
begin
  ConfigSweetAlert;
  UniSweetAlert1.Show;
end;

procedure TMainForm.UniButton2Click(Sender: TObject);
begin
  ConfigSweetAlert;
  if UniSweetAlert1.Execute then
    ShowMessageN('Execute : Success ' + UniSweetAlert1.InputResult);
end;

procedure TMainForm.UniButton3Click(Sender: TObject);
begin
  ConfigSweetAlert(True);
  UniSweetAlert1.Show;
end;

procedure TMainForm.UniSweetAlert1Confirm(Sender: TObject);
begin
  ShowMessageN('Confirm ' + UniSweetAlert1.InputResult);
end;

procedure TMainForm.UniSweetAlert1Dismiss(Sender: TObject;
  const Reason: TDismissType);
begin
  case Reason of
    dtOverlay:   ShowMessageN('Dismiss Overlay');
    dtCancel: ShowMessageN('Dismiss Cancel');
    dtClose:  ShowMessageN('Dismiss Close');
    dtESC:  ShowMessageN('Dismiss ESC');
    dtTimer:  ShowMessageN('Dismiss Timer');
  end;
end;

procedure TMainForm.UniSweetAlert1PreConfirm(Sender: TObject;
  var Result: Boolean; var ErrorString: string);
begin
  Sleep(2000); // dummy wait!
  Result := True;
  ShowMessageN('Confirm ' + UniSweetAlert1.InputResult);
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
