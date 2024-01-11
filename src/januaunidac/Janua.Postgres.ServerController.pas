unit Janua.Postgres.ServerController;

interface

uses
  System.SysUtils, System.Classes, Janua.Core.Classes, Janua.Core.Mail, Janua.Core.System,
  Janua.Core.Params;

type
  TDataModule4 = class(TDataModule)
    JanuaCoreOS1: TJanuaCoreOS;
    JanuaMailSender1: TJanuaMailSender;
    JanuaCoreLogger1: TJanuaCoreLogger;
    JanuaIBAN1: TJanuaIBAN;
    JanuaBarcode1: TJanuaBarcode;
    JanuaParamsReader1: TJanuaParamsReader;
    JanuaVatCode1: TJanuaVatCode;
    JanuaFiscalCode1: TJanuaFiscalCode;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule4: TDataModule4;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
