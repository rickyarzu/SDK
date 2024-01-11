unit MainModule;

interface

uses
  uniGUIMainModule, SysUtils, Classes, DB, DBClient;

type
  TUniMainModule = class(TUniGUIMainModule)
    ClientDataSet: TClientDataSet;
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
  uniGUIVars, Windows, ServerModule, UniGUIApplication, uniWinUtils,
  uniStrUtils;

function UniMainModule: TUniMainModule;
begin
  Result := TUniMainModule(UniApplication.UniMainModule);
end;

procedure TUniMainModule.UniGUIMainModuleCreate(Sender: TObject);
var
  FolderPath : string;
  F : TFileStream;
begin
  FolderPath :=  TranslateFullPath(UniServerModule.StartPath,'..\..\CommonData\');
  Theme:=UniServerModule.CurrentTheme;
  F := TFileStream.Create(FolderPath + 'biolife.cds', fmOpenRead + fmShareDenyNone);
  try
    ClientDataSet.LoadFromStream(F);
    ClientDataSet.Close;
  finally
    F.Free;
  end;
end;

initialization
  RegisterMainModuleClass(TUniMainModule);
end.
