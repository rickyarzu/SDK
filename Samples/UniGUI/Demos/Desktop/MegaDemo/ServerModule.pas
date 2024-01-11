unit ServerModule;
                                                          
interface                                                 
                                                          
uses                                                      
  UniGUIServer;                                           
                                                          
type                                                      
  TUniServerModule = class(TUniGUIServerModule)
    procedure UniGUIServerModuleCreate(Sender: TObject);
  private                                                 
    { Private declarations }
  protected
    procedure FirstInit; override;
  public
    { Public declarations }
    CurrentTheme : string;
  end;

function UniServerModule: TUniServerModule;

implementation

{$R *.dfm}

uses
  UniGUIVars;

function UniServerModule: TUniServerModule;
begin
  Result:=TUniServerModule(UniGUIServerInstance);
end;

procedure TUniServerModule.FirstInit;
begin
  InitServerModule(Self);
end;

procedure TUniServerModule.UniGUIServerModuleCreate(Sender: TObject);
begin
  CurrentTheme:='default';
end;

initialization
  RegisterServerModuleClass(TUniServerModule);
end.                                                      
