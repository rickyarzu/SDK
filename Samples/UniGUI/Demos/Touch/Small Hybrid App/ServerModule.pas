unit ServerModule;

interface

uses
  Classes, SysUtils, uniGUIServer, uniGUIMainModule, uniGUIApplication, uIdCustomHTTPServer,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Phys, FireDAC.Comp.Client,
  FireDAC.Stan.ExprFuncs, FireDAC.Phys.SQLiteDef, FireDAC.Phys.SQLite,
  FireDAC.ConsoleUI.Wait, FireDAC.Comp.UI;

type
  TUniServerModule = class(TUniGUIServerModule)
    FDManager1: TFDManager;
    FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    procedure UniGUIServerModuleCreate(Sender: TObject);
  private
    FConnString : string;
  protected
    procedure FirstInit; override;
  public
    property ConnString : string read FConnString;
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
  FDManager1.Active := True;

  FConnString := 'DriverID=SQLite;Database=' + FilesFolderPath + 'SQLite_Sales.db';
end;

initialization
  RegisterServerModuleClass(TUniServerModule);
end.
