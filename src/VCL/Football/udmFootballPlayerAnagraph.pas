unit udmFootballPlayerAnagraph;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, udmPgAnagraph, DBAccess, Uni, Data.DB, MemDS, Datasnap.Provider,
  Datasnap.DBClient, Janua.Core.Classes, Janua.Core.Exceptions, UniProvider, PostgreSQLUniProvider;

type
  TdmFootballPlayerAnagraph = class(TdmPgAnagraph)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmFootballPlayerAnagraph: TdmFootballPlayerAnagraph;

implementation

{$R *.dfm}

end.
