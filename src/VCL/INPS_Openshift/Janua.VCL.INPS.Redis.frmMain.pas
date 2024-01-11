unit Janua.VCL.INPS.Redis.frmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.StdCtrls;

type
  TfrmVCLINPMainRedis = class(TForm)
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    File2: TMenuItem;
    Apri1: TMenuItem;
    Apri2: TMenuItem;
    SalvaconNome1: TMenuItem;
    pnlMain: TPanel;
    pgProjects: TPageControl;
    tabCommon: TTabSheet;
    tabSviluppo: TTabSheet;
    tabCollaudo: TTabSheet;
    tabProduzione: TTabSheet;
    lbAreaFunzionale: TLabel;
    edAreaFunzionaleCodice: TEdit;
    edAreaFunzionaleDescrizione: TEdit;
    lbMicroservizio: TLabel;
    edMicroservizio: TEdit;
    lbOrganization: TLabel;
    edLabelOrganization: TEdit;
    lbPartOf: TLabel;
    edLabelPartOf: TEdit;
    lbmaxMemoryPolicy: TLabel;
    edMemoryPolicy: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVCLINPMainRedis: TfrmVCLINPMainRedis;

implementation

{$R *.dfm}

end.
