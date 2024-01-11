unit Janua.Test.FDac.dmRemoteDMCustomers;

interface

uses
  System.SysUtils, System.Classes,
  // FireDAC
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,
  // Janua
  Janua.Core.DB.Types;

type
  TdmTestFDacRemoteCustomers = class(TDataModule)
    mtbArticoli: TFDMemTable;
  private
    FMainUrl: string;
    FCustomersUrl: string;
    procedure SetCustomersUrl(const Value: string);
    procedure SetMainUrl(const Value: string);
    { Private declarations }
  public
    { Public declarations }
    function OpenCustomers(aFormat: TRestFormat): string;
  public
    property MainUrl: string read FMainUrl write SetMainUrl;
    property CustomersUrl: string read FCustomersUrl write SetCustomersUrl;
  end;

var
  dmTestFDacRemoteCustomers: TdmTestFDacRemoteCustomers;

implementation

uses RESTRequest4D, Janua.FireDAC.Commons;

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

const
  ML_APIBASE = 'http://127.0.0.1:8080/api';
  ML_GET_CUSTOMERS = '/customers/{aFormat}';

  { TdmTestFDacRemoteCustomers }

function TdmTestFDacRemoteCustomers.OpenCustomers(aFormat: TRestFormat): string;
var
  LResponse: IResponse;
  lFormat, lAccept: string;
begin
  // This converts aFormat to it's string definition as example: rfBinary = 'bin'
  lFormat := TJanuaRestDBContext.StringFormat[aFormat];
  // This converts aFormat to it's string MIME accepted Type as example: rfJson = 'application/json'
  lAccept := TJanuaRestDBContext.MimeFormat[aFormat];

  LResponse := RESTRequest4D.TRequest.New.BaseURL(ML_APIBASE) // Url Base
    .Resource(ML_GET_CUSTOMERS) // Uso Risorse
    .AddUrlSegment('aFormat', lFormat) // definizione formato
  // .Token('Bearer ' + editAccess_Token.Text)
    .Accept(lAccept) // Accept Value
    .RaiseExceptionOn500(True).Get;

  Result := LResponse.Content;

  TFireDacExporter.ImportDataset(mtbArticoli, Result, aFormat);
end;

procedure TdmTestFDacRemoteCustomers.SetCustomersUrl(const Value: string);
begin
  FCustomersUrl := Value;
end;

procedure TdmTestFDacRemoteCustomers.SetMainUrl(const Value: string);
begin
  FMainUrl := Value;
end;

end.
