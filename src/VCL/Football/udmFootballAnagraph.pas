unit udmFootballAnagraph;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, udmPgAnagraph, Data.DB, Uni, MemDS, DBAccess,
  Janua.Core.Classes,  Datasnap.Provider, Datasnap.DBClient, Janua.Core.Exceptions,
  UniProvider, PostgreSQLUniProvider;

type
  TdmFootballAnagraph = class(TdmPgAnagraph)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmFootballAnagraph: TdmFootballAnagraph;

implementation

{$R *.dfm}

end.
