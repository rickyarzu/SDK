unit MainModule;

interface

uses
  uniGUIMainModule, SysUtils, Classes, uniGUIBaseClasses, uniGUIClasses,
  UniFSTheme, FS.SistemaLogado;

type
  TUniMainModule = class(TUniGUIMainModule)
    FSTheme: TUniFSTheme;
    procedure UniGUIMainModuleCreate(Sender: TObject);
    procedure UniGUIMainModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    SistemaLogado : TSistemaLogado;
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

procedure TUniMainModule.UniGUIMainModuleCreate(Sender: TObject);
begin
  FSTheme.Aplly;

  SistemaLogado := TSistemaLogado.Create;
end;

procedure TUniMainModule.UniGUIMainModuleDestroy(Sender: TObject);
begin
  FreeAndNil(SistemaLogado);
end;

initialization
  RegisterMainModuleClass(TUniMainModule);
end.
