unit Janua.VCL.frmMDCCountries;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids, CRGrid, Vcl.ExtCtrls, udmPublic,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmVCLMDCCountries = class(TForm)
    pnlCountries: TPanel;
    grdCountries: TCRDBGrid;
    lbCountryCode: TLabel;
    edCountryCode: TDBEdit;
    edCountryCode2: TDBEdit;
    lbCountryC2: TLabel;
    edCountryName: TDBEdit;
    Label1: TLabel;
    btnCountryText: TButton;
    btnCountryImage: TButton;
    btnTranslations: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVCLMDCCountries: TfrmVCLMDCCountries;

implementation

{$R *.dfm}

end.
