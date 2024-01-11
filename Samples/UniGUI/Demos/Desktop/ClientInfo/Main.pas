//AllFeatures: Miscellaneous,Client Info,icon-radar-marked
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUIForm, uniGUITypes, StdCtrls, UniLabel,
  uniGUIBaseClasses, uniGUIRegClasses,  uniGUIClasses;

type
  TMainForm = class(TUniForm)
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    UniLabel3: TUniLabel;
    UniLabel4: TUniLabel;
    UniLabel5: TUniLabel;
    UniLabel6: TUniLabel;
    UniLabel7: TUniLabel;
    UniLabel8: TUniLabel;
    procedure UniFormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  UniGUIVars, MainModule, UniGUIApplication;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.UniFormActivate(Sender: TObject);
var
  C : TUniClientInfoRec;
begin
  UniLabel7.Caption:=UniApplication.RemoteAddress;

  C:=UniApplication.ClientInfoRec;

  UniLabel6.Caption:=C.BrowserType;
  UniLabel4.Caption:=IntToStr(C.BrowserVersion);
  UniLabel5.Caption:=C.OSType;

end;

initialization
  RegisterMainFormClass(TMainForm);

end.
