unit udmRSSService;

interface

uses
  System.SysUtils, System.Classes, udmRSSFeed, Data.DB, MemDS, DBAccess,
  PgAccess;

type
  TdmRSSService = class(TDataModule)
    PgConnection1: TPgConnection;
    prcNewArticle: TPgStoredProc;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmRSSService: TdmRSSService;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
