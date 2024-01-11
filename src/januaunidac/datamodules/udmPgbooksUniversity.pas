unit udmPgbooksUniversity;

interface

uses
  System.SysUtils, System.Variants, System.Classes, udmPgBooks, UniProvider, PostgreSQLUniProvider, Data.DB,
  Uni, MemDS, DBAccess;

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
