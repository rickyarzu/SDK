unit Mainm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUImClasses,
  uniGUIRegClasses, uniGUIForm, uniGUImForm, uniGUImJSForm, uniGUIBaseClasses,
  UniFSToggle, UnimFSToggle, uniButton, uniBitBtn, unimBitBtn, uniLabel,
  unimLabel;

type
  TMainmForm = class(TUnimForm)
    tgl1: TUnimFSToggle;
    tgl2: TUnimFSToggle;
    tgl3: TUnimFSToggle;
    tgl4: TUnimFSToggle;
    tgl5: TUnimFSToggle;
    tgl6: TUnimFSToggle;
    tgl7: TUnimFSToggle;
    tgl8: TUnimFSToggle;
    tgl9: TUnimFSToggle;
    tgl10: TUnimFSToggle;
    btn1: TUnimBitBtn;
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainmForm: TMainmForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication;

function MainmForm: TMainmForm;
begin
  Result := TMainmForm(UniMainModule.GetFormInstance(TMainmForm));
end;

procedure TMainmForm.btn1Click(Sender: TObject);
begin
  if tgl1.Toggled then
    tgl1.Toggled := False
  else
    tgl1.Toggled := True;
end;

initialization
  RegisterAppFormClass(TMainmForm);

end.
