unit MainModule;

interface

uses
  uniGUIMainModule, SysUtils, Classes;

type
  TUniMainModule = class(TUniGUIMainModule)
    procedure UniGUIMainModuleBeforeLogin(Sender: TObject;
      var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function UniMainModule: TUniMainModule;

implementation

{$R *.dfm}

uses
  UniGUIVars, ServerModule, uniGUIApplication;

function UniMainModule: TUniMainModule;
begin
  Result := TUniMainModule(UniApplication.UniMainModule)
end;

procedure TUniMainModule.UniGUIMainModuleBeforeLogin(Sender: TObject;
  var Handled: Boolean);
begin
  //UniSession.AddJS('$("LINK[href*=''/packages/font-awesome/resources/font-awesome-all.css'']").remove();');
  //UniSession.AddJS('$("LINK[href*=''/packages/font-pictos/resources/font-pictos-all.css'']").remove();');
end;

initialization
  RegisterMainModuleClass(TUniMainModule);
end.
