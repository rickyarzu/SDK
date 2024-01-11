unit uJanuaPostgresServerController;

interface

uses
  System.SysUtils, System.Classes, Janua.Core.Classes, Janua.Core.Mail,
  Janua.Core.System,
  Janua.Core.Params, Janua.Postgres.System, Janua.Core.Servers;

type
  TJanuaPostgresServerController = class(TDataModule)
    JanuaCoreOS1: TJanuaCoreOS;
    JanuaMailSender1: TJanuaMailSender;
    JanuaCoreLogger1: TJanuaCoreLogger;
    JanuaIBAN1: TJanuaIBAN;
    JanuaBarcode1: TJanuaBarcode;
    JanuaParamsReader1: TJanuaParamsReader;
    JanuaVatCode1: TJanuaVatCode;
    JanuaFiscalCode1: TJanuaFiscalCode;
    JanuaPostgresSystem1: TJanuaPostgresSystem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  JanuaPostgresServerController: TJanuaPostgresServerController;

implementation

{$R *.dfm}

end.
