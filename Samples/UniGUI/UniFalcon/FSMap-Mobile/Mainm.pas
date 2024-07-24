unit Mainm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIRegClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniGUIBaseClasses, uniPanel, uniHTMLFrame, UniFSMap, UnimFSMap, uniButton,
  uniBitBtn, unimBitBtn, unimHTMLFrame;

type
  TMainmForm = class(TUnimForm)
    btnMarcadoresSimples: TUnimBitBtn;
    btnPolygon: TUnimBitBtn;
    btnCurrentPosition: TUnimBitBtn;
    btnSearchBox: TUnimBitBtn;
    btnRoute: TUnimBitBtn;
    procedure btnMarcadoresSimplesClick(Sender: TObject);
  private
    { Private declarations }
    function Rpl(Str: string):string;
    procedure AbreTela(Frm, Caption: string);
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

procedure TMainmForm.AbreTela(Frm, Caption: string);
var
  Form : TUniForm;
  FrmClass : TUniFormClass;
begin
  FrmClass  := TUniFormClass(FindClass(Frm));

  Form := FrmClass.Create(UniApplication);
  Form.Caption :=  Caption;
  Form.ShowModal();
end;

procedure TMainmForm.btnMarcadoresSimplesClick(Sender: TObject);
begin
  AbreTela(Rpl(TUnimBitBtn(Sender).Name), TUnimBitBtn(Sender).Caption);
end;

function TMainmForm.Rpl(Str: string): string;
begin
  Result := StringReplace(Str,'btn','Tfrm',[rfReplaceAll]);
end;

initialization
  RegisterAppFormClass(TMainmForm);

end.
