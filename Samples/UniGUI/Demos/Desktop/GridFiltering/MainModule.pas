unit MainModule;
                                                          
interface                                                 
                                                          
uses
  uniGUIMainModule, SysUtils, Classes, DB, ADODB;
  
type                                                      
  TUniMainModule = class(TUniGUIMainModule)
    DataSource: TDataSource;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    ADOQuery1CustomerID: TWideStringField;
    ADOQuery1CompanyName: TWideStringField;
    ADOQuery1ContactName: TWideStringField;
    ADOQuery1ContactTitle: TWideStringField;
    ADOQuery1Address: TWideStringField;
    ADOQuery1City: TWideStringField;
    ADOQuery1Region: TWideStringField;
    ADOQuery1PostalCode: TWideStringField;
    ADOQuery1Country: TWideStringField;
    ADOQuery1Phone: TWideStringField;
    ADOQuery1Fax: TWideStringField;
    ADOQuery2: TADOQuery;
    DataSource1: TDataSource;
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
  UniGUIVars, ServerModule, UniGUIApplication, Windows, uniGUIUtils, uniStrUtils;

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
  sPath := TranslateFullPath(UniServerModule.StartPath, '..\..\CommonData\');
  S := DBConnStr;
  S := StringReplace(S, '[DBPATH]\', sPath, [rfReplaceAll]);
  ADOConnection1.ConnectionString := S;
end;

initialization                                            
  RegisterMainModuleClass(TUniMainModule);                   
end.                                                      
