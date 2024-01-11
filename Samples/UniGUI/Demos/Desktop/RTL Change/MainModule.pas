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
    procedure SaveRTL(const Value: Boolean);
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

{ TUniMainModule }

procedure TUniMainModule.SaveRTL(const Value: Boolean);
var
  Ini : TIniFile;
begin
  Ini := TIniFile.Create(UniServerModule.StartPath + 'rtl.ini');
  try
    Ini.WriteBool('Lang', 'RTL', Value);
  finally
    Ini.Free;
  end;

  (UniApplication as TUniGUIApplication).Restart;
end;

procedure TUniMainModule.UniGUIMainModuleCreate(Sender: TObject);
var
  Ini : TIniFile;
begin
  Ini := TIniFile.Create(UniServerModule.StartPath + 'rtl.ini');
  try
    Self.RTL := Ini.ReadBool('Lang', 'RTL', False);
  finally
    Ini.Free;
  end;
end;

initialization
  RegisterMainModuleClass(TUniMainModule);
end.
