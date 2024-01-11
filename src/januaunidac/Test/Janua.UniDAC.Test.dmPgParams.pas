unit Janua.UniDAC.Test.dmPgParams;

interface

uses
  System.SysUtils, System.Classes, Spring.Collections,
  // UniDAC
  UniProvider, PostgreSQLUniProvider, Data.DB, DBAccess, Uni, MemDS, DAScript, UniScript,
  // JOrm.Documents.Impl Booking
  JOrm.Carservice.Booking.Intf, Janua.Orm.Types, JOrm.Anagraph.Intf,
  // Januaproject
  // Lookup Interface
  Janua.Orm.Intf,
  // Janua Orm unitTest
  JOrm.System.Intf,
  // Januaproject
  Janua.Carservice.Commons, udmPgStorage, Janua.Unidac.Connection;

type
  TdmPgTestParams = class(TdmPgStorage)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmPgTestParams: TdmPgTestParams;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
