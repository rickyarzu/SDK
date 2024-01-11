unit udmPgbooksUniversity;

interface

uses
  System.SysUtils, System.Variants, System.Classes, udmPgBooks, Data.DB,
  Janua.Core.Classes, Janua.Postgres.Functions, PgAccess, MemDS, DBAccess, Datasnap.Provider, Datasnap.DBClient;

type
  TdmPgbooksUniversity = class(TdmPgBooks)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmPgbooksUniversity: TdmPgbooksUniversity;

implementation

{$R *.dfm}

end.
