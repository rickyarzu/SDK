unit Janua.Phoenix.PgTwilioSync;

interface

uses
  System.SysUtils, System.Classes, udmPgStorage, UniProvider, PostgreSQLUniProvider, Data.DB, DBAccess, Uni,
  Janua.Unidac.Connection, InterBaseUniProvider;

type
  TdmPgStorage1 = class(TdmPgStorage)
    FbPhoenixConnection: TUniConnection;
    InterBaseUniProvider1: TInterBaseUniProvider;
    procedure PgErgoConnectionBeforeConnect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmPgStorage1: TdmPgStorage1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

procedure TdmPgStorage1.PgErgoConnectionBeforeConnect(Sender: TObject);
begin
  // Before Connect Test
  inherited;

end;

end.
