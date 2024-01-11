unit ServerModule;

interface

uses
  Classes, SysUtils, uniGUIServer, uniGUIMainModule, uniGUIApplication, uIdCustomHTTPServer,
  uniGUITypes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Phys,
  FireDAC.Comp.Client, FireDAC.ConsoleUI.Wait, FireDAC.Comp.UI,
  FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef
  {$ifdef MSWINDOWS}
  ,FireDAC.VCLUI.Wait  // needed for Windows
  {$endif}
  ;

type
  TUniServerModule = class(TUniGUIServerModule)
    FDManager1: TFDManager;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    procedure UniGUIServerModuleCreate(Sender: TObject);
    procedure UniGUIServerModuleDestroy(Sender: TObject);
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
  UniGUIVars, uniStrUtils;

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
{$ifdef Linux64}
  FrameworkFilesRoot := '/etc/fmsoft/unigui/unigui_runtime'; // customize this path for your particular setup
{$endif}
end;

procedure TUniServerModule.UniGUIServerModuleCreate(Sender: TObject);
var
  oParams : TStringList;
begin
{$ifdef Linux64}
  FDPhysMySQLDriverLink1.VendorLib := '/usr/lib/x86_64-linux-gnu/libmysqlclient.so';
{$else}
  FDPhysMySQLDriverLink1.VendorLib := TranslateFullPath(StartPath, '..\..\CommonData\lib\mysql') + 'libmysql.dll';
{$endif}

  // Use pooled connections for FireDAC. See: http://docwiki.embarcadero.com/RADStudio/XE6/en/Multithreading_(FireDAC)
  oParams := TStringList.Create;
  try
    oParams.Add('Server=mysql.fmprime.com');
    oParams.Add('User_Name=uni_test_db');
    oParams.Add('Password=Myqd2KCH9UypfdpJ');
    oParams.Add('Database=employees');
    oParams.Add('Pooled=True');
    oParams.Add('POOL_MaximumItems=100');
    oParams.Add('CharacterSet=utf8');

    FDManager1.AddConnectionDef('MySQL_Pooled', 'MySQL', oParams);
  finally
    oParams.Free;
  end;

  FDManager1.Active := True;
end;

procedure TUniServerModule.UniGUIServerModuleDestroy(Sender: TObject);
begin
  FDManager1.Close;
end;

initialization
  RegisterServerModuleClass(TUniServerModule);
end.
