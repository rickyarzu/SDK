unit udmPgTestExportImport;

interface

uses
  System.SysUtils, System.Classes, UniProvider, PostgreSQLUniProvider, Data.DB, DBAccess, Uni, MemDS,
  VirtualTable;

type
  TdmPgTestExportImport = class(TDataModule)
    PgConnections: TUniConnection;
    PostgreSQLUniProvider1: TPostgreSQLUniProvider;
    vtCountries: TVirtualTable;
    tbCountries: TUniTable;
  private
    { Private declarations }
    FArticoli64: string;
  public
    { Public declarations }
    function ExportArticoliBinary: string;
    procedure ImportArticoliBinary;
  end;

var
  dmPgTestExportImport: TdmPgTestExportImport;

implementation

uses Janua.Core.Functions;

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}
{ TdmPgTestExportImport }

function TdmPgTestExportImport.ExportArticoliBinary: string;
var
  lStream: TStringStream;
begin
  lStream := TStringStream.Create;
  try
    tbCountries.Open;
    tbCountries.SaveToXML(lStream);
    Result := lStream.DataString;
    FArticoli64 := Result;
  finally
    lStream.Free;
  end;

end;

procedure TdmPgTestExportImport.ImportArticoliBinary;
var
  lStream: TStringStream;
begin
  lStream := TStringStream.Create(FArticoli64);
  try
    // function Decode64(const aString: string; aStream: TStream): string; overload;
    vtCountries.LoadFromStream(lStream);
    if not vtCountries.Active then
      vtCountries.Open;
  finally
    lStream.Free;
  end;

end;

end.
