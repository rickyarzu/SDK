unit MainModule;

interface

uses
  uniGUIMainModule, SysUtils, Classes, DBClient, DB;

type
  TUniMainModule = class(TUniGUIMainModule)
    ClientDataSet: TClientDataSet;
    procedure UniGUIMainModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function UniMainModule: TUniMainModule;

implementation

{$R *.dfm}

uses
  UniGUIVars, Windows, ServerModule, UniGUIServer, uniWinUtils, UniGUIApplication,
  uniStrUtils;

function UniMainModule: TUniMainModule;
begin
  Result := TUniMainModule(UniApplication.UniMainModule);
end;


procedure TUniMainModule.UniGUIMainModuleCreate(Sender: TObject);
begin
  Theme := UniServerModule.CurrentTheme;
end;

initialization
  RegisterMainModuleClass(TUniMainModule);
end.
