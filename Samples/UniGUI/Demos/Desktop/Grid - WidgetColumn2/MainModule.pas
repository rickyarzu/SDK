unit MainModule;

interface

uses
  uniGUIMainModule, SysUtils, Classes, Data.DB, Datasnap.DBClient,
  uniGUIBaseClasses, uniGUIClasses, uniImageList;

type
  TUniMainModule = class(TUniGUIMainModule)
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    UniNativeImageList1: TUniNativeImageList;
    ClientDataSet1SpeciesNo: TFloatField;
    ClientDataSet1Category: TStringField;
    ClientDataSet1Common_Name: TStringField;
    ClientDataSet1SpeciesName: TStringField;
    ClientDataSet1Lengthcm: TFloatField;
    ClientDataSet1Length_In: TFloatField;
    ClientDataSet1Notes: TMemoField;
    ClientDataSet1Graphic: TGraphicField;
    procedure ClientDataSet1Length_InGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function UniMainModule: TUniMainModule;

implementation

{$R *.dfm}

uses
  UniGUIVars, ServerModule, uniGUIApplication, uniStrUtils;

function UniMainModule: TUniMainModule;
begin
  Result := TUniMainModule(UniApplication.UniMainModule)
end;

procedure TUniMainModule.ClientDataSet1Length_InGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := uniFloatToStr(Sender.AsFloat, 2, FmtSettings);
end;

initialization
  RegisterMainModuleClass(TUniMainModule);
end.
