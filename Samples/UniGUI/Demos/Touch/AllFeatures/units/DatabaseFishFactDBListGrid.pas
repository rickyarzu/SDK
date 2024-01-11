//FishFact DBListGrid = Database
unit DatabaseFishFactDBListGrid;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, DB, DBClient, uniGUIBaseClasses,
  uniFileUpload, unimFileUpload, uniDBNavigator, unimDBNavigator, uniImage,
  uniDBImage, unimDBImage, uniButton, unimButton, uniMultiItem, unimSelect,
  unimDBSelect, uniEdit, uniDBEdit, unimDBEdit, uniBasicGrid, uniDBGrid,
  unimDBListGrid, uniGUImJSForm, ServerModule, MAinModule;

type
  TUniDatabaseFishFactDBListGrid = class(TUniFrame)
    UnimContainerPanel1: TUnimContainerPanel;
    UnimDBListGrid1: TUnimDBListGrid;
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
    UnimDBImage1: TUnimDBImage;
    procedure UniFrameCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}



procedure TUniDatabaseFishFactDBListGrid.UniFrameCreate(Sender: TObject);
begin
  UniMainModule.LoadClientFromStream(ClientDataSetFishFact, 'biolife.cds');

  //ClientDataSetFishFact.IndexDefs.Add('SpeciesNoIndex', 'Species No', []);
end;

initialization
  RegisterClass(TUniDatabaseFishFactDBListGrid);
end.
