unit MainModule;

interface

uses
  uniGUIMainModule, SysUtils, Classes, Data.DB, Data.Win.ADODB;

type
  TUniMainModule = class(TUniGUIMainModule)
    ADOConnection1: TADOConnection;
    QueryInvoices: TADOQuery;
    SrcInvoices: TDataSource;
    procedure UniGUIMainModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    UserId : integer;
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

procedure TUniMainModule.UniGUIMainModuleCreate(Sender: TObject);
const
{$ifdef CPUX64}
  DBConnStr = 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=[DBPATH];Persist Security Info=False';
{$else}
  DBConnStr = 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=[DBPATH];Persist Security Info=False';
{$endif}

var
  S1,SrcFile :string;
begin
  ADOConnection1.Connected := False;
  SrcFile := UniServerModule.FilesFolderPath + 'SimpleDemo.mdb';

  S1 := DBConnStr;
  S1 := StringReplace(S1, '[DBPATH]', SrcFile, [rfReplaceAll]);
  ADOConnection1.ConnectionString := S1;
  ADOConnection1.Connected := True;
end;

initialization
  RegisterMainModuleClass(TUniMainModule);
end.
