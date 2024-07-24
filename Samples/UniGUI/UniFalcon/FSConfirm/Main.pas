unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniPanel, uniGUIBaseClasses, UniFSConfirm, uniImage, uniEdit,
  uniMultiItem, uniComboBox, uniCheckBox, uniLabel, uniPageControl, uniButton, uniBitBtn, UniFSButton;

type
  TMainForm = class(TUniForm)
    btn1: TUniFSButton;
    btnAlert: TUniFSButton;
    btnAlertCallBack: TUniFSButton;
    btnConfirm3Button: TUniFSButton;
    btnConfirmCreateDinamic: TUniFSButton;
    pgcMaster: TUniPageControl;
    tabParameters: TUniTabSheet;
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
    tabPrompt: TUniTabSheet;
    chkRequiredField: TUniCheckBox;
    edtTextRequiredFiled: TUniEdit;
    lbl11: TUniLabel;
    lbl12: TUniLabel;
    cmbTypePrompt: TUniComboBox;
    lbl13: TUniLabel;
    cmbCharCase: TUniComboBox;
    btnPrompt: TUniFSButton;
    lbl111: TUniLabel;
    edtTextDefaultValue: TUniEdit;
    tabScreenMask: TUniTabSheet;
    edtScreenMask: TUniEdit;
    btnScreenMask: TUniFSButton;
    btnScreenMaskDinamic: TUniFSButton;
    imgFalconSistemas: TUniImage;
    lblVersion: TUniLabel;
    Confirm: TUniFSConfirm;
    procedure UniFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure NewPagePanel(Name: string);
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, uniGUIFrame;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.NewPagePanel(Name: string);
var
  Pnl: TUniPanel;
  FCurrentFrame :TUniFrameClass;
  Fr : TUniFrame;
begin
  Pnl := TUniPanel.Create(Self);
  Pnl.Name := Name;
  Pnl.Align := alClient;
  Pnl.BorderStyle := ubsNone;
  Pnl.Parent := Self;

  FCurrentFrame := TUniFrameClass(FindClass(Name));

  Fr := FCurrentFrame.Create(Pnl);
  Fr.Align := alClient;
  Fr.Parent := Pnl;
end;

procedure TMainForm.UniFormCreate(Sender: TObject);
begin
   NewPagePanel('TfrmConfirm');
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
