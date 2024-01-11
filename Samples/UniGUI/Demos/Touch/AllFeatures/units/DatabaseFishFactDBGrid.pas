//FishFact DBGrid = Database
unit DatabaseFishFactDBGrid;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, DB, uniBasicGrid, uniDBGrid, unimDBListGrid,
  unimDBGrid, uniGUIBaseClasses, uniFileUpload, unimFileUpload, uniDBNavigator,
  unimDBNavigator, uniImage, uniDBImage, unimDBImage, uniButton, unimButton,
  uniMultiItem, unimSelect, unimDBSelect, uniEdit, uniDBEdit, unimDBEdit,
  uniGUImJSForm, DBClient, ServerModule, MainModule;

type
  TUniDatabaseFishFactDBGrid = class(TUniFrame)
    ClientDataSetFishFact: TClientDataSet;
    ClientDataSetFishFactSpeciesNo: TFloatField;
    ClientDataSetFishFactCategory: TStringField;
    ClientDataSetFishFactCommon_Name: TStringField;
    ClientDataSetFishFactSpeciesName: TStringField;
    ClientDataSetFishFactLengthcm: TFloatField;
    ClientDataSetFishFactLength_In: TFloatField;
    ClientDataSetFishFactNotes: TMemoField;
    ClientDataSetFishFactGraphic: TGraphicField;
    UnimContainerPanel1: TUnimContainerPanel;
    UnimDBNavigator1: TUnimDBNavigator;
    UnimDBGrid1: TUnimDBGrid;
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


procedure TUniDatabaseFishFactDBGrid.UniFrameCreate(Sender: TObject);
begin
  UniMainModule.LoadClientFromStream(ClientDataSetFishFact, 'biolife.cds');
end;

initialization
  RegisterClass(TUniDatabaseFishFactDBGrid);
end.
