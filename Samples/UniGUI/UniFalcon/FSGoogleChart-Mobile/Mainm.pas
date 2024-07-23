unit Mainm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIRegClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniGUIBaseClasses, uniPanel, uniHTMLFrame, UniFSGoogleChart, UnimFSGoogleChart,
  Data.DB, Datasnap.DBClient, MidasLib, uniButton, uniBitBtn, unimBitBtn;

type
  TMainmForm = class(TUnimForm)
    btnGauge: TUnimBitBtn;
    btnBar: TUnimBitBtn;
    btnPie: TUnimBitBtn;
    procedure btnGaugeClick(Sender: TObject);
    procedure btnPieClick(Sender: TObject);
    procedure btnBarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainmForm: TMainmForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, uFrmGauge, uFrmPie, uFrmBar;

function MainmForm: TMainmForm;
begin
  Result := TMainmForm(UniMainModule.GetFormInstance(TMainmForm));
end;

{ TMainmForm }

procedure TMainmForm.btnBarClick(Sender: TObject);
begin
  frmBar.ShowModal();
end;

procedure TMainmForm.btnGaugeClick(Sender: TObject);
begin
  frmGauge.ShowModal();
end;

procedure TMainmForm.btnPieClick(Sender: TObject);
begin
  frmPie.ShowModal();
end;

initialization
  RegisterAppFormClass(TMainmForm);

end.
