unit MainModule;

interface

uses
  uniGUIMainModule, SysUtils, Classes, DB, ADODB;

type
  TUniMainModule = class(TUniGUIMainModule)
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSource2: TDataSource;
    ADOQuery2: TADOQuery;
    DataSource1: TDataSource;
    procedure UniGUIMainModuleCreate(Sender: TObject);
    procedure UniGUIMainModuleNewComponent(AComponent: TComponent);
 private
    { Private declarations }
  public
    { Public declarations }
  end;

function UniMainModule: TUniMainModule;

implementation

{$R *.dfm}

uses
  UniGUIVars, ServerModule, uniGUIApplication, Windows, frxClass, uniStrUtils;

function UniMainModule: TUniMainModule;
begin
  Result := TUniMainModule(UniApplication.UniMainModule)
end;

{ TUniMainModule }
procedure TUniMainModule.UniGUIMainModuleCreate(Sender: TObject);
const
{$ifdef CPUX64}
  DBConnStr = 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=[DBPATH];Persist Security Info=False';
{$else}
  DBConnStr = 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=[DBPATH];Persist Security Info=False';
{$endif}
var
  SrcFile, FolderPath: string;
begin
  FolderPath :=  TranslateFullPath(UniServerModule.StartPath,'..\..\CommonData\');
  ADOConnection1.Connected := False;
  SrcFile := FolderPath + 'invoice.mdb';
  ADOConnection1.ConnectionString := StringReplace(DBConnStr, '[DBPATH]', SrcFile, [rfReplaceAll]);

  ADOQuery2.Active := True;
end;

procedure TUniMainModule.UniGUIMainModuleNewComponent(AComponent: TComponent);
begin
  if AComponent is TfrxReport then
  begin
    (AComponent as TfrxReport).EngineOptions.UseGlobalDataSetList := False;
  end;

end;

initialization
  RegisterMainModuleClass(TUniMainModule);
end.
