//AllFeatures: Clientside Alignment,Layout Table,icon-disclosure-list
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniButton, uniGUIBaseClasses,
  uniPanel, uniLabel;

type
  TMainForm = class(TUniForm)
    UniContainerPanel1: TUniContainerPanel;
    UniButton1: TUniButton;
    procedure UniButton1Click(Sender: TObject);
  private
    PanelNumber : Integer;
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

 PanelNumber := PanelNumber +1;
 with TUniPanel.Create(Self) do
    begin
      Parent:=UniContainerPanel1;
      Caption:= 'UniPanel-'+IntToStr(PanelNumber);
      Name := 'UniPanel'+IntToStr(PanelNumber);
      Height := 35;
      LayoutConfig.Width := '100%';
    end;
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
