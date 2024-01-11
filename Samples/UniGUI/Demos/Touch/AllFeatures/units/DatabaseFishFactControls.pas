//FishFact Controls = Database
unit DatabaseFishFactControls;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, DB, DBClient, uniDBNavigator,
  unimDBNavigator, uniMemo, uniDBMemo, unimDBMemo, uniMultiItem, unimSelect,
  unimDBSelect, uniEdit, uniDBEdit, unimDBEdit, uniImage, uniDBImage,
  unimDBImage, uniGUIBaseClasses, uniGUImJSForm, ServerModule, MainModule;

type
  TUniDatabaseFishFactControls = class(TUniFrame)
    UnimContainerPanel1: TUnimContainerPanel;
    UnimDBImage1: TUnimDBImage;
    UnimDBEdit1: TUnimDBEdit;
    UnimDBEdit2: TUnimDBEdit;
    UnimDBSelect1: TUnimDBSelect;
    UnimDBMemo1: TUnimDBMemo;
    UnimDBNavigator1: TUnimDBNavigator;
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
    procedure UniFrameCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TUniDatabaseFishFactControls.UniFrameCreate(Sender: TObject);
begin
  UniMainModule.LoadClientFromStream(ClientDataSetFishFact, 'biolife.cds');

 // ClientDataSetFishFact.IndexDefs.Add('SpeciesNoIndex', 'Species No', []);
end;

initialization
  RegisterClass(TUniDatabaseFishFactControls);

end.
