unit uFrmConfirm;

interface

uses
  UniFSConfirm, uConfirmExternal, Windows, Messages, SysUtils, Variants, Classes,
  Graphics, Controls, Forms, uniGUITypes, uniGUIAbstractClasses, uniGUIClasses,
  uniGUIFrame, uniGUIBaseClasses, uniButton, uniBitBtn, UniFSButton, uniLabel,
  uniEdit, uniGroupBox, uniMultiItem, uniComboBox, uniCheckBox, UniFSToast,
  uniPanel, uniPageControl, uniImage;

type
  TfrmConfirm = class(TUniFrame)
    btn1: TUniFSButton;
    Confirm: TUniFSConfirm;
    btnAlert: TUniFSButton;
    btnAlertCallBack: TUniFSButton;
    btnConfirm3Button: TUniFSButton;
    btnConfirmCreateDinamic: TUniFSButton;
    pgcMaster: TUniPageControl;
    tabParameters: TUniTabSheet;
    tabPrompt: TUniTabSheet;
    tabScreenMask: TUniTabSheet;
    edtScreenMask: TUniEdit;
    btnScreenMask: TUniFSButton;
    btnScreenMaskDinamic: TUniFSButton;
    chkRequiredField: TUniCheckBox;
    edtTextRequiredFiled: TUniEdit;
    lbl11: TUniLabel;
    lbl12: TUniLabel;
    cmbTypePrompt: TUniComboBox;
    lbl13: TUniLabel;
    cmbCharCase: TUniComboBox;
    btnPrompt: TUniFSButton;
    edtTtile: TUniEdit;
    lbl1: TUniLabel;
    lbl2: TUniLabel;
    edtContent: TUniEdit;
    lbl3: TUniLabel;
    edtIcon: TUniEdit;
    chkScrenMask: TUniCheckBox;
    edtTextScreenMask: TUniEdit;
    cmbTypeColor: TUniComboBox;
    lbl4: TUniLabel;
    lbl5: TUniLabel;
    cmbTheme: TUniComboBox;
    edtSleep: TUniNumberEdit;
    lbl6: TUniLabel;
    lbl7: TUniLabel;
    btnConfirm: TUniFSButton;
    chkRTL: TUniCheckBox;
    chkCloseIcon: TUniCheckBox;
    lbl8: TUniLabel;
    edtTextButtonConfirm: TUniEdit;
    lbl9: TUniLabel;
    edtTextButtonCancel: TUniEdit;
    lbl10: TUniLabel;
    chkButtonEnterConfirm: TUniCheckBox;
    chkEscapeKey: TUniCheckBox;
    chkDraggabel: TUniCheckBox;
    lbl14: TUniLabel;
    edtBoxWidth: TUniEdit;
    imgFalconSistemas: TUniImage;
    lblVersion: TUniLabel;
    lbl111: TUniLabel;
    edtTextDefaultValue: TUniEdit;
    procedure btn1Click(Sender: TObject);
    procedure btnConfirmClick(Sender: TObject);
    procedure btnAlertClick(Sender: TObject);
    procedure btnPromptClick(Sender: TObject);
    procedure btnAlertCallBackClick(Sender: TObject);
    procedure btnScreenMaskClick(Sender: TObject);
    procedure btnConfirm3ButtonClick(Sender: TObject);
    procedure btnConfirmCreateDinamicClick(Sender: TObject);
    procedure btnScreenMaskDinamicClick(Sender: TObject);
    procedure UniFrameCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

implementation

uses
  MainModule;

{$R *.dfm}

procedure TfrmConfirm.btn1Click(Sender: TObject);
begin
  Confirm.Question('Hello', 'Are you sure to continue?', 'far fa-question-circle', TTypeColor.blue, TTheme.modern,
    procedure(Button: TConfirmButton)
    begin
      if Button = Yes then
      begin
        Confirm.Alert('Congratulations !!!', ' ', 'far fa-thumbs-up', TTypeColor.green, TTheme.modern);
      end;
      if Button = No then
        Confirm.Alert('Canceled', ' ', 'fas fa-exclamation-circle', TTypeColor.orange, TTheme.modern);
    end);
end;

procedure TfrmConfirm.btnAlertCallBackClick(Sender: TObject);
begin
  Confirm.Alert('My Alert', 'BUG Found', 'fas fa-bug', TTypeColor.red, TTheme.material,
    procedure(Button: TConfirmButton)
    begin
      if Button = Ok then
        Confirm.Alert('Your Confirmed ','BUG - FIXED', 'fas fa-bug', TTypeColor.green, TTheme.modern);
    end
  );
end;

procedure TfrmConfirm.btnAlertClick(Sender: TObject);
begin
  Confirm.Alert('My Alert', 'Description optional', 'fas fa-bug', TTypeColor.red, TTheme.material);
end;

procedure TfrmConfirm.btnConfirm3ButtonClick(Sender: TObject);
begin
  Confirm.boxWidth := '420px';
  Confirm.Question('3 Buttons', 'choose one of the options?', 'far fa-smile',
    TTypeColor.blue, TTheme.modern,
    procedure(Button: TConfirmButton)
    begin
      if Button = Yes then
        Confirm.Alert('Button 1', ' ', 'fas fa-exclamation', TTypeColor.green, TTheme.modern);
      if Button = No then
        Confirm.Alert('Button 2', ' ', 'fas fa-exclamation-circle', TTypeColor.red, TTheme.modern);
      if Button = Other then
        Confirm.Alert('Button 3', ' ', 'fas fa-exclamation-triangle', TTypeColor.purple, TTheme.modern);
    end, TTypeConfirm.ConfirmOther);
end;

procedure TfrmConfirm.btnConfirmClick(Sender: TObject);
begin
  Confirm.TypeColor := TTypeColor(cmbTypeColor.ItemIndex);
  Confirm.Theme := TTheme(cmbTheme.ItemIndex);
  Confirm.ScreenMask.Enabled := chkScrenMask.Checked;
  Confirm.ScreenMask.Text := edtTextScreenMask.Text;
  Confirm.RTL := chkRTL.Checked;
  Confirm.CloseIcon := chkCloseIcon.Checked;
  Confirm.ButtonTextConfirm := edtTextButtonConfirm.Text;
  Confirm.ButtonTextCancel := edtTextButtonCancel.Text;
  Confirm.ButtonEnterConfirm := chkButtonEnterConfirm.Checked;
  Confirm.EscapeKey := chkEscapeKey.Checked;
  Confirm.Draggable := chkDraggabel.Checked;
  Confirm.boxWidth := edtBoxWidth.Text;

  Confirm.Question(edtTtile.Text,edtContent.Text,edtIcon.Text,
    procedure(Button: TConfirmButton)
    begin
      if Button = Yes then
      begin
        if chkScrenMask.Checked then
          Sleep(Trunc(edtSleep.Value));
      end;
    end
    );
end;

procedure TfrmConfirm.btnConfirmCreateDinamicClick(Sender: TObject);
var
  Confirm: TUniFSConfirm;
begin
  Confirm := TUniFSConfirm.Create(Self);
  try
    Confirm.Alert('Test unit external','Congratulations','',TTypeColor.dark_,TTheme.material);
  finally
    FreeAndNil(Confirm);
  end;
end;

procedure TfrmConfirm.btnPromptClick(Sender: TObject);
begin
  Confirm.PromptType.RequiredField := chkRequiredField.Checked;
  Confirm.PromptType.TextRequiredField := edtTextRequiredFiled.Text;
  Confirm.PromptType.DefaultValue := edtTextDefaultValue.Text;
  Confirm.PromptType.TypePrompt := TTypePrompt(cmbTypePrompt.ItemIndex);
  Confirm.PromptType.CharCase := TTypeCharCase(cmbCharCase.ItemIndex);

  Confirm.Prompt('Prompt!','Enter something here', '', TTypeColor.orange, TTheme.light,
    procedure(Button: TConfirmButton; Result: string)
    begin
      if Button = Yes then
        Confirm.Alert('Your Confirmed ',Result);
      if Button = No then
        Confirm.Alert('Your Canceld ',Result, 'fas fa-exclamation-triangle', TTypeColor.red, TTheme.modern);
    end
  );
end;

procedure TfrmConfirm.btnScreenMaskClick(Sender: TObject);
begin
  {Habiliting -> UniMainModule.EnableSynchronousOperations = True}
  try
    Confirm.ShowMask(edtScreenMask.Text);

    Sleep(5000); {My long task}

  finally
    Confirm.RemoveMask;
  end;
end;

procedure TfrmConfirm.btnScreenMaskDinamicClick(Sender: TObject);
begin
  {Habiliting -> UniMainModule.EnableSynchronousOperations = True}
  try
    Confirm.ShowMask('Starting Processing...',10);
    Sleep(2000);
    Confirm.ShowMaskUpdate('Creating Order...',25);
    Sleep(2000);
    Confirm.ShowMaskUpdate('Processing Payment...',70);
    Sleep(2000);
    Confirm.ShowMaskUpdate('Ending Asking...',90);
    Sleep(1000);
    Confirm.ShowMaskUpdate('Ending Asking...',100);
    Sleep(1000);
    Confirm.Alert('Thanks for the purchase','Order 561560','far fa-check-circle',TTypeColor.green, TTheme.modern);
  finally
    Confirm.RemoveMask;
  end;
end;

procedure TfrmConfirm.UniFrameCreate(Sender: TObject);
begin
  lblVersion.Caption := 'Component Version: '+UniFSConfirm.PackageVersion;

  pgcMaster.ActivePage := tabParameters;
end;

initialization
  RegisterClass(TfrmConfirm);

end.
