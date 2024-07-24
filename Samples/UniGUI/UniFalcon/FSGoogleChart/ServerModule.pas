unit ServerModule;

interface

uses
  Classes, SysUtils, uniGUIServer, uniGUIMainModule, uniGUIApplication, uIdCustomHTTPServer,
  uniGUITypes, UniFSKeys, uniGUIBaseClasses, uniGUIClasses;

type
  TUniServerModule = class(TUniGUIServerModule)
    UniFSKeys: TUniFSKeys;
    procedure UniGUIServerModuleBeforeInit(Sender: TObject);
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
  UniGUIVars;

function UniServerModule: TUniServerModule;
begin
  Result:=TUniServerModule(UniGUIServerInstance);
end;

procedure TUniServerModule.FirstInit;
begin
  InitServerModule(Self);
end;

procedure TUniServerModule.UniGUIServerModuleBeforeInit(Sender: TObject);
begin
  UniAddCSSLibrary('https://fonts.googleapis.com/css?family=Roboto', True, [upoAsync, upoPlatformBoth]);
end;

initialization
  RegisterServerModuleClass(TUniServerModule);
end.
