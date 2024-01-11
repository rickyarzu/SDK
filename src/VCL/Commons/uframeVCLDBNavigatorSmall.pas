unit uframeVCLDBNavigatorSmall;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvAppStyler, AdvGlowButton, Vcl.ExtCtrls, Shader;

type
  TframeVCLDBNavigatorSmall = class(TFrame)
    AdvFormStyler1: TAdvFormStyler;
    Shader1: TShader;
    btnPdf: TAdvGlowButton;
    btnHelp: TAdvGlowButton;
    btnPrint: TAdvGlowButton;
    btnExcel: TAdvGlowButton;
    btnRefresh: TAdvGlowButton;
    btnDelete: TAdvGlowButton;
    btnUndo: TAdvGlowButton;
    btnPost: TAdvGlowButton;
    btnModifica: TAdvGlowButton;
    btnNew: TAdvGlowButton;
    btnLast: TAdvGlowButton;
    btnNext: TAdvGlowButton;
    btnFirst: TAdvGlowButton;
    btnPrev: TAdvGlowButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses udmVCLDBNavigator;

end.
