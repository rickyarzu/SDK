unit MainModule;

interface

uses
  uniGUIMainModule, SysUtils, Classes, DBClient;

type
  TUniMainModule = class(TUniGUIMainModule)
    procedure UniGUIMainModuleCreate(Sender: TObject);
  private
    FolderPath: string;
    { Private declarations }
  public
     procedure LoadClientFromStream(ClientData: TClientDataSet; CDS: string);
    { Public declarations }
  end;

function UniMainModule: TUniMainModule;

implementation

{$R *.dfm}

uses
  UniGUIVars, ServerModule, uniGUIApplication, IniFiles, uniStrUtils;

function UniMainModule: TUniMainModule;
begin
  Result := TUniMainModule(UniApplication.UniMainModule)
end;

procedure TUniMainModule.LoadClientFromStream(ClientData: TClientDataSet;
  CDS: string);
var
  F : TFileStream;
begin
  F := TFileStream.Create(FolderPath + CDS, fmOpenRead + fmShareDenyNone);
  try
    ClientData.LoadFromStream(F);
  finally
    F.Free;
  end;
end;

procedure TUniMainModule.UniGUIMainModuleCreate(Sender: TObject);
var
  Ini: TIniFile;
begin
  Ini := TIniFile.Create(UniServerModule.FilesFolderPath+'DatabasePath.ini');
  try
    FolderPath :=  TranslateFullPath(UniServerModule.StartPath, Ini.ReadString('path', 'current', '..\..\CommonData'));
  finally
    Ini.Free;
  end;
end;

initialization
  RegisterMainModuleClass(TUniMainModule);
end.
