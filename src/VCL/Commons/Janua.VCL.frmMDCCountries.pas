unit Janua.VCL.frmMDCCountries;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, VCL.Graphics,
  VCL.Controls, VCL.Forms, VCL.Dialogs, Data.DB, VCL.Grids, VCL.DBGrids, CRGrid, VCL.ExtCtrls,
  VCL.StdCtrls, VCL.Mask, VCL.DBCtrls, VCL.ComCtrls,
  // Janua
  Janua.Core.Types, Janua.Core.Classes.Intf, Janua.Orm.Intf, Janua.Forms.Types, Janua.Bindings.Intf,
  Janua.Controls.Intf, Janua.Controls.Forms.Intf,
  // Januaproject
  Janua.Commons.pgCountriesLocal, uJanuaVCLForm, Janua.DevIDE.VCL.dmCountriesLocalController;

type
  TfrmVCLMDCCountriesLocal = class(TJanuaVCLFormModel, IJanuaForm, IJanuaContainer, IJanuaControl,
    IJanuaBindable)
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
    FController: TdmVCLCountriesLocalController;
    procedure SetController(const Value: TdmVCLCountriesLocalController);
    { Private declarations }
  public
    { Public declarations }
    property Controller: TdmVCLCountriesLocalController read FController write SetController;
  end;

var
  frmVCLMDCCountriesLocal: TfrmVCLMDCCountriesLocal;

implementation

{$R *.dfm}

uses udmSVGImageList;
{ TfrmVCLMDCCountriesLocal }

procedure TfrmVCLMDCCountriesLocal.SetController(const Value: TdmVCLCountriesLocalController);
begin
  FController := Value;
  if Assigned(FController) then
  begin
    grdCountries.DataSource := FController.dsCountries;
    edCountryCode.DataSource := FController.dsCountries;
    edCountryCode2.DataSource := FController.dsCountries;
    edCountryName.DataSource := FController.dsCountries;
    FController.dsCountries.Dataset.Open;
  end
  else
  begin
    grdCountries.DataSource := nil;
    edCountryCode.DataSource := nil;
    edCountryCode2.DataSource := nil;
    edCountryName.DataSource := nil;
  end;
end;

end.
