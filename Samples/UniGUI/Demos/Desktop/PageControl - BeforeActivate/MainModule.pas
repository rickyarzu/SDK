unit MainModule;

interface

uses
  uniGUIMainModule, SysUtils, Classes, Data.DB, Datasnap.DBClient;

type
  TUniMainModule = class(TUniGUIMainModule)
    ClientDataSet1: TClientDataSet;
    ClientDataSet2: TClientDataSet;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
  private
    { Private declarations }
  public
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

initialization
  RegisterMainModuleClass(TUniMainModule);
end.
