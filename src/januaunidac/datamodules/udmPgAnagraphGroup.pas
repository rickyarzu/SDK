unit udmPgAnagraphGroup;

interface

uses
  System.SysUtils, System.Classes, udmPgStorage, UniProvider, PostgreSQLUniProvider, Data.DB, DBAccess, Uni;

type
  TdmPgAnagraphGroup = class(TdmPgStorage)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmPgAnagraphGroup: TdmPgAnagraphGroup;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
