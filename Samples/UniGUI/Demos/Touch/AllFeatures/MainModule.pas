unit MainModule;

interface

uses
  uniGUIMainModule, SysUtils, Classes, DB, DBClient, uniGUIBaseClasses, uniGUIClasses, UniFSTheme;

type
  TUniMainModule = class(TUniGUIMainModule)
    ClientDataSetFishFact: TClientDataSet;
    ClientDataSetFishFactSpeciesNo: TFloatField;
    ClientDataSetFishFactCategory: TStringField;
    ClientDataSetFishFactCommon_Name: TStringField;
    ClientDataSetFishFactSpeciesName: TStringField;
    ClientDataSetFishFactLengthcm: TFloatField;
    ClientDataSetFishFactLength_In: TFloatField;
    ClientDataSetFishFactNotes: TMemoField;
    ClientDataSetFishFactGraphic: TGraphicField;
    DataSourceFishFact: TDataSource;
    FSTheme: TUniFSTheme;
    procedure UniGUIMainModuleCreate(Sender: TObject);
  private
    { Private declarations }
    FolderPath : string;
  public
    { Public declarations }
    Species: Integer;
    procedure LoadClientFromStream(ClientData: TClientDataSet; CDS: string);
  end;

function UniMainModule: TUniMainModule;

implementation

{$R *.dfm}

uses
  UniGUIVars, ServerModule, uniGUIApplication, uniStrUtils, Inifiles,
  Windows;

procedure TUniMainModule.LoadClientFromStream(ClientData: TClientDataSet; CDS: string);
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

function UniMainModule: TUniMainModule;
begin
  Result := TUniMainModule(UniApplication.UniMainModule)
end;

procedure TUniMainModule.UniGUIMainModuleCreate(Sender: TObject);
var
  Ini: TIniFile;
begin
  Ini := TIniFile.Create(UniServerModule.FilesFolderPath+'DatabasePath.ini');
  try
    FolderPath :=  TranslateFullPath(UniServerModule.StartPath, Ini.ReadString('path', 'current', '..\..\CommonPath'));
  finally
    Ini.Free;
  end;
end;

initialization
  RegisterMainModuleClass(TUniMainModule);
end.
