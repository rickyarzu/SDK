unit udmPgMailService;

interface

uses
  System.SysUtils, System.Classes, Janua.Core.Mail, udmJanuaPostgresModel,
  Data.DB, PgAccess, MemDS,
  DBAccess;

type
  TdmPgMailService = class(TdmJanuaPostgresModel)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmPgMailService: TdmPgMailService;

implementation

{$R *.dfm}

end.
