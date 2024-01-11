unit MainModule;

interface

uses
  uniGUIMainModule, SysUtils, Classes, DBClient, DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.StorageBin,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TUniMainModule = class(TUniGUIMainModule)
    FDMemTable1: TFDMemTable;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function UniMainModule: TUniMainModule;

implementation

{$R *.dfm}

uses
  UniGUIVars, Windows, ServerModule, UniGUIServer, uniWinUtils, UniGUIApplication,
  uniStrUtils;

function UniMainModule: TUniMainModule;
begin
  Result := TUniMainModule(UniApplication.UniMainModule);
end;


initialization
  RegisterMainModuleClass(TUniMainModule);
end.

