unit udmTestingComponents;

interface

uses
  System.SysUtils, System.Classes, Janua.Core.Classes, Janua.Core.System, Janua.Core.Mail, Janua.Core.Servers,
  Janua.Postgres.System, Janua.VCL.System, Janua.Core.Health, Janua.Postgres.Health, Janua.Core.Football,
  Janua.Postgres.Football, Janua.Core.Cms, Janua.Postgres.Cms, Janua.Core.Cloud, Janua.Components.Cloud,
  Janua.Components.Mail;

type
  TdmTestingComponents = class(TDataModule)
    JanuaCoreLogger1: TJanuaCoreLogger;
    JanuaSystem1: TJanuaSystem;
    JanuaPostgresSystem1: TJanuaPostgresSystem;
    JanuaMailSender1: TJanuaMailSender;
    JanuaServerHealthBooking1: TJanuaServerHealthBooking;
    JanuaServerPgFootball1: TJanuaServerPgFootball;
    JanuaServerPgCms1: TJanuaServerPgCms;
    JanuaCloudOAuth1: TJanuaCloudOAuth;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmTestingComponents: TdmTestingComponents;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
