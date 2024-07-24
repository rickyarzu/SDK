unit Mainm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUImClasses,
  uniGUIRegClasses, uniGUIForm, uniGUImForm, uniGUImJSForm, uniGUIBaseClasses,
  uniLabel, unimLabel, uniPanel, unimHTMLFrame, UniFSSignature, UnimFSSignature,
  uniToolBar, unimToolbar, unimPanel, uniButton, uniBitBtn, unimBitBtn,
  uniHTMLFrame;

type
  TMainmForm = class(TUnimForm)
    Signature: TUnimFSSignature;
    UnimToolBar1: TUnimToolBar;
    pnl1: TUnimPanel;
    btnClear: TUnimBitBtn;
    btnSave: TUnimBitBtn;
    lbl1: TUnimLabel;
    lbl2: TUnimLabel;
    lbl3: TUnimLabel;
    procedure btnClearClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure SignatureGetImage(Sender: TObject; PathImage: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainmForm: TMainmForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, uFrmmNavigation, uniGUIServer;

function MainmForm: TMainmForm;
begin
  Result := TMainmForm(UniMainModule.GetFormInstance(TMainmForm));
end;

procedure TMainmForm.btnClearClick(Sender: TObject);
begin
  Signature.Clear;
end;

procedure TMainmForm.btnSaveClick(Sender: TObject);
begin
  Signature.GetImage('image/png');
end;

procedure TMainmForm.SignatureGetImage(Sender: TObject; PathImage: string);
begin
  frmmNavigation.url.URL := UniServerInstance.LocalCacheURL + ExtractFileName(PathImage);
  frmmNavigation.ShowModal();
end;

initialization
  RegisterAppFormClass(TMainmForm);

end.
