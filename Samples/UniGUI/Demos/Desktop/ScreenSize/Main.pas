unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUIForm, uniGUITypes, StdCtrls, UniMemo, UniLabel,
  uniGUIBaseClasses, uniGUIRegClasses,  uniguiclasses;

type
  TMainForm = class(TUniForm)
    UniLabel1: TUniLabel;
    procedure UniFormScreenResize(Sender: TObject; AWidth, AHeight: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  UniGUIVars, MainModule;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.UniFormScreenResize(Sender: TObject; AWidth,
  AHeight: Integer);
begin
  UniLabel1.Caption:='Screen Size is = '+Format('%d x %d', [AWidth, AHeight]);
end;

initialization
  RegisterMainFormClass(TMainForm);

end.
