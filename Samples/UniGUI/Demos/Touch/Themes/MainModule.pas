unit MainModule;

interface

uses
  uniGUIMainModule, SysUtils, Classes;

type
  TUniMainModule = class(TUniGUIMainModule)
    procedure UniGUIMainModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure SetNewTheme(Value: string);
  end;

function UniMainModule: TUniMainModule;

implementation

{$R *.dfm}

uses
  UniGUIVars, ServerModule, uniGUIApplication, IniFiles;

function UniMainModule: TUniMainModule;
begin
  Result := TUniMainModule(UniApplication.UniMainModule)
end;

procedure TUniMainModule.SetNewTheme(Value: string);
var
  Ini: TIniFile;
begin
  Ini := TIniFile.Create(UniServerModule.StartPath+'theme.ini');
  try
    Ini.WriteString('theme', 'current', Value);
  finally
    Ini.Free;
  end;
  UniSession.UniApplication.Restart;
end;

procedure TUniMainModule.UniGUIMainModuleCreate(Sender: TObject);
var
  Ini: TIniFile;
begin
  Ini := TIniFile.Create(UniServerModule.StartPath+'theme.ini');
  try
    TouchTheme := Ini.ReadString('theme', 'current', 'sencha-touch');
  finally
    Ini.Free;
  end;
end;

initialization
  RegisterMainModuleClass(TUniMainModule);
end.
