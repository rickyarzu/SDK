unit uJanuaPostgresServerController;

interface

uses
  System.SysUtils, System.Classes, Janua.Core.Classes,
  Janua.Core.System,
  Janua.Core.Params, Janua.Postgres.System, Janua.Core.Servers;

type
  TJanuaPostgresServerController = class(TDataModule)
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
