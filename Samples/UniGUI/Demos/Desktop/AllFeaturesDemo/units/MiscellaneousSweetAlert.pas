// Sweet Alert = Miscellaneous
unit MiscellaneousSweetAlert;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniGUIBaseClasses, uniPanel, uniImageList,
  uniSweetAlert, uniButton, uniEdit, uniCheckBox, uniMultiItem, uniComboBox;

type
  TUniMiscellaneousSweetAlert = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniComboBox1: TUniComboBox;
    UniCheckBox1: TUniCheckBox;
    UniCheckBox2: TUniCheckBox;
    UniEdit1: TUniEdit;
    UniEdit2: TUniEdit;
    UniCheckBox3: TUniCheckBox;
    UniCheckBox4: TUniCheckBox;
    UniEdit3: TUniEdit;
    UniButton1: TUniButton;
    UniCheckBox6: TUniCheckBox;
    UniButton3: TUniButton;
    UniEdit4: TUniEdit;
    UniSweetAlert1: TUniSweetAlert;
    UniNativeImageList1: TUniNativeImageList;
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

implementation

{$R *.dfm}



{ TUniMiscellaneousSweetAlert }

procedure TUniMiscellaneousSweetAlert.ConfigSweetAlert(
  const ShowLoader: Boolean);
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

procedure TUniMiscellaneousSweetAlert.UniButton1Click(Sender: TObject);
begin
  ConfigSweetAlert;
  UniSweetAlert1.Show;
end;

procedure TUniMiscellaneousSweetAlert.UniButton2Click(Sender: TObject);
begin
  ConfigSweetAlert;
  if UniSweetAlert1.Execute then
    ShowMessageN('Execute : Success ' + UniSweetAlert1.InputResult);
end;

procedure TUniMiscellaneousSweetAlert.UniButton3Click(Sender: TObject);
begin
  ConfigSweetAlert(True);
  UniSweetAlert1.Show;
end;

procedure TUniMiscellaneousSweetAlert.UniSweetAlert1Confirm(Sender: TObject);
begin
  ShowMessageN('Confirm ' + UniSweetAlert1.InputResult);
end;

procedure TUniMiscellaneousSweetAlert.UniSweetAlert1Dismiss(Sender: TObject;
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

procedure TUniMiscellaneousSweetAlert.UniSweetAlert1PreConfirm(Sender: TObject;
  var Result: Boolean; var ErrorString: string);
begin
  Sleep(2000); // dummy wait!
  Result := True;
  ShowMessageN('Confirm ' + UniSweetAlert1.InputResult);
end;

initialization
  RegisterClass(TUniMiscellaneousSweetAlert);
end.
