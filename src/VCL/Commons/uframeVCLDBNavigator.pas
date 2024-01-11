unit uframeVCLDBNavigator;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvAppStyler, AdvGlowButton, Vcl.ExtCtrls, Shader;

type
  TframVCLDBNavigator = class(TFrame)
    AdvFormStyler1: TAdvFormStyler;
    Shader1: TShader;
    btnPrimo: TAdvGlowButton;
    SpeedButton2: TAdvGlowButton;
    SpeedButton1: TAdvGlowButton;
    SpeedButton4: TAdvGlowButton;
    btnNuovo: TAdvGlowButton;
    btnModifica: TAdvGlowButton;
    btnElimina: TAdvGlowButton;
    btnAggiorna: TAdvGlowButton;
    btnSalva: TAdvGlowButton;
    btnAnnulla: TAdvGlowButton;
    btnStampa: TAdvGlowButton;
    btnAnteprima: TAdvGlowButton;
    btnExcel: TAdvGlowButton;
    btnPdf: TAdvGlowButton;
    btnHelp: TAdvGlowButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses udmVCLDBNavigator;

end.
