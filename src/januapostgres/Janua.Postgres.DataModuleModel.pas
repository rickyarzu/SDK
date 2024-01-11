unit Janua.Postgres.DataModuleModel;

interface

uses
  System.SysUtils, System.Classes, Janua.Core.Classes, Janua.Core.System, Janua.Postgres.System,
  Janua.Core.Servers;

type
  /// Postgres Data Module Model is the main model for any Postgres-Based Application.
  ///  when inherited on VCL, FMX and LCL Modules
  TPostgresDataModuleModel = class(TDataModule)
    JanuaPostgresSystem1: TJanuaPostgresSystem;
    JanuaCoreOS1: TJanuaCoreOS;
    JanuaCoreLogger1: TJanuaCoreLogger;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PostgresDataModuleModel: TPostgresDataModuleModel;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

{$R *.dfm}

end.
