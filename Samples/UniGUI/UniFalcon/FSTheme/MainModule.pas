unit MainModule;

interface

uses
  uniGUIMainModule, SysUtils, Classes, uniGUIBaseClasses, uniGUIClasses,
  UniFSTheme, MidasLib, uniGUIConst;

type
  TUniMainModule = class(TUniGUIMainModule)
    FSTheme: TUniFSTheme;
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
  FSTheme.Aplly;
end;

initialization
  RegisterMainModuleClass(TUniMainModule);
end.
