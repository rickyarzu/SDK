unit uLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniButton,
  uniBitBtn, uniLabel;

type
  TUniLoginForm1 = class(TUniLoginForm)
    btnHello: TUniBitBtn;
    lblFalconSistemas: TUniLabel;
    procedure btnHelloClick(Sender: TObject);
    procedure lblFalconSistemasClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function UniLoginForm1: TUniLoginForm1;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, uDmMensagens, Main, UniFSiGrowl;

function UniLoginForm1: TUniLoginForm1;
begin
  Result := TUniLoginForm1(UniMainModule.GetFormInstance(TUniLoginForm1));
end;

procedure TUniLoginForm1.btnHelloClick(Sender: TObject);
begin
  dmMensagens.FSiGrowlComp.Delay := 3000;
  dmMensagens.FSiGrowlComp.Messages := EmptyStr;

  dmMensagens.FSiGrowlComp.PlacementX := TPlacementX.left;
  dmMensagens.FSiGrowlComp.Title  := 'Falcon';
  dmMensagens.FSiGrowlComp.Run;


  dmMensagens.FSiGrowlComp.PlacementX := TPlacementX.right;
  dmMensagens.FSiGrowlComp.Title  := 'Sistemas';
  dmMensagens.FSiGrowlComp.Run;


  dmMensagens.FSiGrowlComp.PlacementX := TPlacementX.left;
  dmMensagens.FSiGrowlComp.PlacementY := TPlacementY.bottom;
  dmMensagens.FSiGrowlComp.EnterAnimation := TEnterAnimation.slideInUp;
  dmMensagens.FSiGrowlComp.Title  := 'Seja';
  dmMensagens.FSiGrowlComp.Run;


  dmMensagens.FSiGrowlComp.PlacementX := TPlacementX.right;
  dmMensagens.FSiGrowlComp.PlacementY := TPlacementY.bottom;
  dmMensagens.FSiGrowlComp.Title  := 'Bem Vindo!';
  dmMensagens.FSiGrowlComp.Run;

  Self.Hide;
  MainForm.ShowModal();
end;

procedure TUniLoginForm1.lblFalconSistemasClick(Sender: TObject);
begin
  UniSession.AddJS('window.open("'+TUniLabel(Sender).Caption+'")');
end;

initialization
  RegisterAppFormClass(TUniLoginForm1);

end.
