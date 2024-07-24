unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, TypInfo,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniButton,
  uniBitBtn, UniFSiGrowl, uniPanel, uniLabel, uniMultiItem, uniComboBox, uniEdit,
  uniRadioButton, uniPageControl;

type
  TMainForm = class(TUniForm)
    pgcMaster: TUniPageControl;
    procedure UniFormAjaxEvent(Sender: TComponent; EventName: string;
      Params: TUniStrings);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, uDmMensagens, uniGUIFrame;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.UniFormAjaxEvent(Sender: TComponent; EventName: string;
  Params: TUniStrings);
var
  TabSheet: TUniTabSheet;
  FCurrentFrame: TUniFrameClass;
  Fr: TUniFrame;
begin
  if EventName = 'afterrender' then
  begin
    TabSheet := TUniTabSheet.Create(MainForm);
    TabSheet.PageControl := pgcMaster;
    TabSheet.Caption := 'Demo FSiGrowl';

    FCurrentFrame:= TUniFrameClass(FindClass('TfrmiGrowl'));

    Fr := FCurrentFrame.Create(TabSheet);
    Fr.Parent := TabSheet;
  end;
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
