unit Janua.Web.WebModuleFactory;

interface

uses
  System.SysUtils, System.Classes, Web.HTTPApp,
    // JanuaProject
  Janua.Http.Intf;

type
  TWebModuleFactory = class(TWebModule)
    procedure WebModuleCreate(Sender: TObject);
  private
    { Private declarations }
  private
    FWebManager: IWebManager;
  public
    { Public declarations }
  end;

var
  WebModuleClass: TComponentClass = TWebModuleFactory;

implementation

uses Web.WebReq, Janua.Web.dmWebBrokerSession, Janua.Core.Classes;

{$R *.dfm}

procedure TWebModuleFactory.WebModuleCreate(Sender: TObject);
begin
  if not Assigned(FWebManager) then
  begin
    JwriteLog('TWebModule1.WebModuleCreate GetWebSession');
    self.FWebManager := TJanuaWebBrokerFactory.GetWebSession;
    JwriteLog('TWebModule1.FSession RegisterWebModule');
    FWebManager.RegisterWebModule(self as TWebModule);
  end;
end;

initialization

finalization

Web.WebReq.FreeWebModules;

end.
