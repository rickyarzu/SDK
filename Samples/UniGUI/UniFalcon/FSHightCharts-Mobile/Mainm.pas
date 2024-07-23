unit Mainm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUImClasses,
  uniGUIRegClasses, uniGUIForm, uniGUImForm, uniGUImJSForm, uniGUIBaseClasses,
  uniPanel, uniHTMLFrame, Data.DB, Datasnap.DBClient, MidasLib, uniButton,
  uniBitBtn, unimBitBtn;

type
  TMainmForm = class(TUnimForm)
    btnHCBar: TUnimBitBtn;
    btnHCPie: TUnimBitBtn;
    btnHCBar2: TUnimBitBtn;
    btnHCLine: TUnimBitBtn;
    procedure btnHCPieClick(Sender: TObject);
    procedure btnHCBarClick(Sender: TObject);
    procedure btnHCBar2Click(Sender: TObject);
    procedure btnHCLineClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainmForm: TMainmForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, uFrmHCPie, uFrmHCBar, uFrmHCBar2, uFrmHCLine;

function MainmForm: TMainmForm;
begin
  Result := TMainmForm(UniMainModule.GetFormInstance(TMainmForm));
end;

{ TMainmForm }

procedure TMainmForm.btnHCBar2Click(Sender: TObject);
begin
  frmHCBar2.ShowModal();
end;

procedure TMainmForm.btnHCBarClick(Sender: TObject);
begin
  frmHCBar.ShowModal();
end;

procedure TMainmForm.btnHCLineClick(Sender: TObject);
begin
  FrmHCLine.ShowModal();
end;

procedure TMainmForm.btnHCPieClick(Sender: TObject);
begin
  frmHCPie.ShowModal();
end;

initialization
  RegisterAppFormClass(TMainmForm);

end.
