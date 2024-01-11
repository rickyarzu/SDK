unit udmMailService;

interface

uses
  System.SysUtils, System.Classes, Janua.Core.Mail, udmJanuaPostgresModel, Data.DB, PgAccess, MemDS,
  DBAccess;

type
  TdmMailService = class(TdmJanuaPostgresModel)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmMailService: TdmMailService;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
