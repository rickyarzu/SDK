unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniEdit,
  UniFSColorPicker, uniPanel, uniButton, uniBitBtn, uniColorButton, uniLabel;

type
  TMainForm = class(TUniForm)
    cmbc: TUniFSColorPicker;
    pnlColor: TUniPanel;
    btnc: TUniColorButton;
    lbl1: TUniLabel;
    lbl2: TUniLabel;
    btnSetColorWeb: TUniBitBtn;
    procedure cmbcKeyPress(Sender: TObject; var Key: Char);
    procedure cmbcChangeColor(const color: string);
    procedure btnSetColorWebClick(Sender: TObject);

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

procedure TMainForm.btnSetColorWebClick(Sender: TObject);
begin
  cmbc.SetColorWeb('#FF9800');
end;

procedure TMainForm.cmbcChangeColor(const color: string);
begin
  Self.Caption := 'Componente Ext.Color.Picker ' + color;
  pnlColor.Caption := 'TUniPanel ' + color;
  pnlColor.Color := cmbc.ColorValue;
end;

procedure TMainForm.cmbcKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #$D then
    pnlColor.Color := cmbc.ColorValue;
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
