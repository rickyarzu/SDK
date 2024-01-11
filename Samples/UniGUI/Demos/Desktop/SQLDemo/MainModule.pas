unit MainModule;
                                                          
interface                                                 
                                                          
uses
  uniGUIMainModule, SysUtils, Classes, DB, ADODB;
  
type                                                      
  TUniMainModule = class(TUniGUIMainModule)
    DataSource: TDataSource;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
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
var
  S, sPath : string;
begin
  ADOConnection1.Connected := False;
  S := ADOConnection1.ConnectionString;
  sPath := TranslateFullPath(UniServerModule.StartPath, '..\..\CommonData\');
  S := StringReplace(S, '[DBPATH]\', sPath, [rfReplaceAll]);
  ADOConnection1.ConnectionString := S;
end;

initialization                                            
  RegisterMainModuleClass(TUniMainModule);                   
end.                                                      
