unit Janua.Test.FDac.dmExportImport;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Moni.Base,
  FireDAC.Moni.FlatFile, FireDAC.Stan.StorageJSON, FireDAC.Stan.StorageXML, FireDAC.Stan.StorageBin;

type
  TdmTestFireDACImportExport = class(TDataModule)
    FDConnection1: TFDConnection;
    FDCommand1: TFDCommand;
    mtbArticoli: TFDMemTable;
    qryArticoli: TFDQuery;
    tbArticoli: TFDTable;
    FDUpdateSQL1: TFDUpdateSQL;
    tbArticoliID: TIntegerField;
    tbArticoliCODICE: TWideStringField;
    tbArticoliDESCRIZIONE: TWideStringField;
    tbArticoliPREZZO: TFMTBCDField;
    tbArticoliUPDATED_AT: TSQLTimeStampField;
    tbArticoliCREATED_AT: TSQLTimeStampField;
    qryArticoliID: TIntegerField;
    qryArticoliCODICE: TWideStringField;
    qryArticoliDESCRIZIONE: TWideStringField;
    qryArticoliPREZZO: TFMTBCDField;
    qryArticoliUPDATED_AT: TSQLTimeStampField;
    qryArticoliCREATED_AT: TSQLTimeStampField;
    FDStanStorageBinLink1: TFDStanStorageBinLink;
    FDStanStorageXMLLink1: TFDStanStorageXMLLink;
    FDStanStorageJSONLink1: TFDStanStorageJSONLink;
    FDMoniFlatFileClientLink1: TFDMoniFlatFileClientLink;
  private
    { Private declarations }
    FArticoli64: string;
  public
    { Public declarations }
    function ExportArticoliBinary: string;
    procedure ImportArticoliBinary;

    function ExportArticoliJson: string;
    procedure ImportArticoliJson;

    function ExportArticoliXml: string;
    procedure ImportArticoliXml;

    function ExportArticoli(const aFormat: string): string;
  end;

var
  dmTestFireDACImportExport: TdmTestFireDACImportExport;

implementation

uses Janua.FireDAC.Commons;

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}
{ TDataModule2 }

function TdmTestFireDACImportExport.ExportArticoli(const aFormat: string): string;
begin
  Result := TFireDacExporter.ExportDataset(qryArticoli, aFormat);
  FArticoli64 := Result;
end;

function TdmTestFireDACImportExport.ExportArticoliBinary: string;
begin
  Result := TFireDacExporter.ExportToBase64(qryArticoli);
  FArticoli64 := Result;
end;

function TdmTestFireDACImportExport.ExportArticoliJson: string;
begin
  Result := TFireDacExporter.ExportToJson(qryArticoli);
  FArticoli64 := Result;
end;

function TdmTestFireDACImportExport.ExportArticoliXml: string;
begin
  Result := TFireDacExporter.ExportToXml(qryArticoli);
  FArticoli64 := Result;
end;

procedure TdmTestFireDACImportExport.ImportArticoliBinary;
begin
  TFireDacExporter.ImportFromBase64(mtbArticoli, FArticoli64);
end;

procedure TdmTestFireDACImportExport.ImportArticoliJson;
begin
  TFireDacExporter.ImportFromJson(mtbArticoli, FArticoli64);
end;

procedure TdmTestFireDACImportExport.ImportArticoliXml;
begin
  TFireDacExporter.ImportFromXml(mtbArticoli, FArticoli64);
end;

end.
