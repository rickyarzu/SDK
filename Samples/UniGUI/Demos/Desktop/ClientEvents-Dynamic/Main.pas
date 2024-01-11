//AllFeatures: Client Events,Client Events - Dynamic,icon-binding-dynamic
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniButton,
  uniEdit;

type
  TMainForm = class(TUniForm)
    UniButton1: TUniButton;
    UniEdit1: TUniEdit;
    UniEdit2: TUniEdit;
    procedure UniFormCreate(Sender: TObject);
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

procedure TMainForm.UniFormCreate(Sender: TObject);
begin
  UniButton1.ClientEvents.ExtEvents.Values['click']:='function(sender){alert("Click")}';



  UniEdit1.ClientEvents.ExtEvents.Values['change']:='function(sender, newValue){MainForm.UniEdit2.setValue(newValue)}';

  Self.ClientEvents.ExtEvents.Values['form.click']:='function(sender){MainForm.UniEdit2.setValue("form.click")}';

  Self.ClientEvents.ExtEvents.Values['window.move']:='function(sender){MainForm.UniEdit2.setValue("window.move")}';
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
