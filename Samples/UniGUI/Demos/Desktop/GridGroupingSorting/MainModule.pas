unit MainModule;

interface

uses
  uniGUIMainModule, SysUtils, Classes, DB, ADODB;

type
  TUniMainModule = class(TUniGUIMainModule)
    ADOConnection1: TADOConnection;
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
  UniGUIVars, ServerModule, uniGUIApplication, uniStrUtils;

function UniMainModule: TUniMainModule;
begin
  Result := TUniMainModule(UniApplication.UniMainModule)
end;

procedure TUniMainModule.UniGUIMainModuleCreate(Sender: TObject);
const
  DBConnStr = 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=[DBPATH]\fddemo.mdb;Persist Security Info=False';

var
  S, sPath : string;
begin
  ADOConnection1.Connected := False;
  S := DBConnStr;
  sPath := TranslateFullPath(UniServerModule.StartPath, '..\..\CommonData\');
  S := StringReplace(S, '[DBPATH]\', sPath, [rfReplaceAll]);
  ADOConnection1.ConnectionString := S;
end;

initialization
  RegisterMainModuleClass(TUniMainModule);
end.
