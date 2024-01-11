unit Janua.UniGUI.ServerModule;

interface

uses
  Classes, SysUtils, uniGUIServer, uniGUIMainModule, uniGUIApplication, uIdCustomHTTPServer,
  uniGUITypes, uniMapKeys;

type
  TUniServerModule = class(TUniGUIServerModule)
    UniMapKeys1: TUniMapKeys;
    procedure UniGUIServerModuleServerStartup(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure FirstInit; override;
  public
    { Public declarations }
  end;

function UniServerModule: TUniServerModule;

implementation

{$R *.dfm}

uses
    Janua.Application.Framework, UniGUIVars;

function UniServerModule: TUniServerModule;
begin
  Result:=TUniServerModule(UniGUIServerInstance);
end;

procedure TUniServerModule.FirstInit;
begin
  InitServerModule(Self);
end;

procedure TUniServerModule.UniGUIServerModuleServerStartup(Sender: TObject);
begin
  Port := TJanuacoreOS.ReadParam('UniGUI', 'Port', 8077);
end;

initialization
  RegisterServerModuleClass(TUniServerModule);
end.
