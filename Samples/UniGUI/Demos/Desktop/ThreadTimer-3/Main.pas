//AllFeatures: Thread Time,Thread Timer - 3,icon-panel-time
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniButton, uniGUIBaseClasses,
  uniProgressBar, uniThreadTimer, uniTimer, uniSpinEdit, UniChart, uniPanel,
  uniRadioGroup, uniLabel, uniGUIFrame, ThrdFrame;

type
  TMainForm = class(TUniForm)
    UniFrame11: TUniFrame1;
    UniFrame12: TUniFrame1;
    procedure UniFormClose(Sender: TObject; var Action: TCloseAction);
    procedure UniFormResize(Sender: TObject);
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

procedure TMainForm.UniFormClose(Sender: TObject; var Action: TCloseAction);
begin
  if UniFrame11.Busy or UniFrame12.Busy then
  begin
    Action := caNone;
    ShowMessage('Busy!!!!');
  end;
end;

procedure TMainForm.UniFormResize(Sender: TObject);
begin
  UniFrame11.Width := (Width div 2) - 8;
  UniFrame12.Width := (Width div 2) - 8;
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
