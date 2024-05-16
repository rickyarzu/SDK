unit udmTestFireBirdStorage;

interface

uses
  System.SysUtils, System.Classes, UniProvider, InterBaseUniProvider, Data.DB, DBAccess, Uni,
  // Janua
  Janua.Firebird.dmStorage, Janua.Unidac.Connection, MemDS;

type
  TdmTestFireBirdStorage = class(TdmJanuaFBStorage)
    qryMaster: TUniQuery;
    dsMaster: TUniDataSource;
    qryDetail: TUniQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmTestFireBirdStorage: TdmTestFireBirdStorage;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

end.
