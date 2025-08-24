unit Janua.DevIDE.VCL.dmCountriesLocalController;

interface

uses
  System.SysUtils, System.Classes, Janua.Commons.pgCountriesLocal, Data.DB, System.Actions, Vcl.ActnList;

type
  TdmVCLCountriesLocalController = class(TDataModule)
    dsCountries: TDataSource;
    dsRegions: TDataSource;
    dsDistricts: TDataSource;
    dsTowns: TDataSource;
    actCountries: TActionList;
    actUploadImage: TAction;
    actGenerateText: TAction;
  private
    { Private declarations }
  public
    { Public declarationdmVCLCountriesLocalController }
  end;

var
  dmVCLCountriesLocalController : TdmVCLCountriesLocalController;

implementation

uses udmSVGImageList;

end.
