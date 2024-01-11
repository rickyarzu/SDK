unit Janua.Health.dmDico33Client;

interface

uses
  System.SysUtils, System.Classes, udmHealthBooking, Data.DB, Uni, MemDS, DBAccess, UniProvider,
  PostgreSQLUniProvider, Janua.Unidac.Connection;

type
  TdmDico33Client = class(TdmHealthBooking)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmDico33Client: TdmDico33Client;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

end.
