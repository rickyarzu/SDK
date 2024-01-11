unit Janua.Framework.JormGenerator.Firebird;

interface

uses
  System.SysUtils, System.Classes, Janua.Framework.JormGenerator.Postgres, Data.DB, Uni, DASQLMonitor,
  UniSQLMonitor, DAScript, UniScript, DBAccess, MemDS, VirtualTable, UniProvider, PostgreSQLUniProvider,
  Janua.Unidac.Connection, InterBaseUniProvider;

type
  TdmPgFrameworkJormGenerator1 = class(TdmPgFrameworkJormGenerator)
    InterBaseUniProvider1: TInterBaseUniProvider;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmPgFrameworkJormGenerator1: TdmPgFrameworkJormGenerator1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
