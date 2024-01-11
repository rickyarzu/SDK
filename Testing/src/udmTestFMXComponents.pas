unit udmTestFMXComponents;

interface

uses
  System.SysUtils, System.Classes, Janua.Core.System, Janua.Postgres.System, Janua.Core.Classes,
  Janua.Core.Servers, Janua.Core.Health, Janua.Postgres.Health;

type
  TDataModule1 = class(TDataModule)
    JanuaServerHealth1: TJanuaServerHealth;
    JanuaPostgresSystem1: TJanuaPostgresSystem;
    JanuaCoreOS1: TJanuaCoreOS;
    JanuaCoreLogger1: TJanuaCoreLogger;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

{$R *.dfm}

end.
