unit MainModule;

interface

uses
  uniGUIMainModule, SysUtils, Classes, DB, DBClient;

type
  TUniMainModule = class(TUniGUIMainModule)
    ClientDataSet: TClientDataSet;
    procedure UniGUIMainModuleDestroy(Sender: TObject);
  private
   CDSFileName, DestFileName : string;
    { Private declarations }
  public
    { Public declarations }
  end;

function UniMainModule: TUniMainModule;

implementation

{$R *.dfm}

uses
  UniGUIVars, ServerModule, uniGUIApplication, Windows;

function UniMainModule: TUniMainModule;
begin
  Result := TUniMainModule(UniApplication.UniMainModule)
end;

procedure TUniMainModule.UniGUIMainModuleDestroy(Sender: TObject);
begin
  ClientDataSet.Close;
end;

initialization
  RegisterMainModuleClass(TUniMainModule);
end.
