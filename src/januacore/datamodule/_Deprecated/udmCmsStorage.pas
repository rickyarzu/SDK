unit udmCmsStorage;

interface

uses
  System.SysUtils, System.Classes, Janua.Orm.Intf, Data.DB;

type
  TdmCmsStorage = class(TDataModule)
  public
    procedure OpenMainArguments; Virtual; Abstract;
    procedure OpenArticles(aArgumentID: integer); overload; Virtual; Abstract;
    procedure OpenArticles(aArgumentGUID: TGUID); overload; Virtual; Abstract;
  public
  end;

var
  dmCmsStorage: TdmCmsStorage;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}
{$R *.dfm}
{ TdmCmsStorage }

end.
