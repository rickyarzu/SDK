unit MainModule;

interface

uses
  uniGUIMainModule, SysUtils, Classes, DBClient, DB;

type
  TUniMainModule = class(TUniGUIMainModule)
    ClientDataSet: TClientDataSet;
    ClientDataSetSpeciesNo: TFloatField;
    ClientDataSetCategory: TStringField;
    ClientDataSetCommon_Name: TStringField;
    ClientDataSetSpeciesName: TStringField;
    ClientDataSetLengthcm: TFloatField;
    ClientDataSetLength_In: TFloatField;
    ClientDataSetNotes: TMemoField;
    ClientDataSetGraphic: TGraphicField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function UniMainModule: TUniMainModule;

implementation

{$R *.dfm}

uses
  UniGUIVars, Windows, UniGUIServer, uniWinUtils, UniGUIApplication;

function UniMainModule: TUniMainModule;
begin
  Result := TUniMainModule(UniApplication.UniMainModule);
end;

initialization
  RegisterMainModuleClass(TUniMainModule);
end.
