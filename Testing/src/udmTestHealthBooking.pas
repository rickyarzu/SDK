unit udmTestHealthBooking;

interface

uses
  System.SysUtils, System.Classes, Janua.Core.Classes, Janua.Core.System, Janua.Core.Mail, Janua.Core.Football,
  Janua.Postgres.Football, Janua.Postgres.System, Janua.Core.Health, Janua.Postgres.Health, Janua.Core.JPublic,
  Janua.Postgres.JPublic, Janua.Core.Servers, Janua.Core.Cms, Janua.Postgres.Cms, Janua.Core.Http,
  Janua.Postgres.Functions, Data.DB, DBAccess, Uni, udmJanuaPostgresModel, MemDS, Janua.Core.Functions,
  Janua.VCL.OS, AdvAppStyler, Datasnap.Provider, Datasnap.DBClient, VirtualTable;

type
  TdmTestHealthBooking = class(TdmJanuaPostgresModel)
    JanuaServerPgCms: TJanuaServerPgCms;
    JanuaServerJPublic: TJanuaServerJPublic;
    JanuaServerHealth: TJanuaServerHealth;
    JanuaPostgresSystem: TJanuaPostgresSystem;
    JanuaServerPgFootball: TJanuaServerPgFootball;
    JanuaMailSender1: TJanuaMailSender;
    JanuaCoreLogger1: TJanuaCoreLogger;
    JanuaApplicationProfile1: TJanuaApplicationProfile;
    JanuaPostgresTemplateRepository1: TJanuaPostgresTemplateRepository;
    dsServices: TUniDataSource;
    JanuaServerHealthBooking1: TJanuaServerHealthBooking;
    dsInstitutes: TUniDataSource;
    JanuaFiscalCode1: TJanuaFiscalCode;
    JanuaHealthPgWebSession1: TJanuaHealthPgWebSession;
    JanuaVCLOS1: TJanuaVCLOS;
    AdvAppStyler1: TAdvAppStyler;
    dsBooking: TUniDataSource;
    dsPrescription: TUniDataSource;
    dsPerson: TUniDataSource;
    dsBookingInstitutes: TUniDataSource;
    vrtLog: TVirtualTable;
    dsLog: TUniDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmTestHealthBooking: TdmTestHealthBooking;

implementation

{ %CLASSGROUP 'Vcl.Controls.TControl' }

{$R *.dfm}
{ TdmTestHealthBooking }


end.
