unit udmUnidacModel;

interface

uses
  System.SysUtils, System.Classes, Uni, Data.DB, MemDS, DBAccess;

type
  TDataModule1 = class(TDataModule)
    UniQuery1: TUniQuery;
    UniTable1: TUniTable;
    UniConnection1: TJanuaUniConnection;
    UniDataSource1: TUniDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

{$R *.dfm}

end.
