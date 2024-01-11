unit WebModuleJormModel;

interface

uses
  System.SysUtils, System.Classes, Web.HTTPApp,
  Web.WebFileDispatcher, Web.HTTPProd;

type
  TWebModule1 = class(TWebModule)
    WebFileDispatcher1: TWebFileDispatcher;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  WebModuleClass: TComponentClass = TWebModule1;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}
{$R *.dfm}

uses Web.WebReq;

initialization

finalization

Web.WebReq.FreeWebModules;

end.
