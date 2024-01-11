//FishFact Without DBControls = Database
unit DatabaseFishFactWithoutDBControls;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, DB, DBClient, uniMultiItem,
  unimList, uniGUIBaseClasses, uniGUImJSForm, FishFact, ServerModule, MainModule;

type
  TUniDatabaseFishFactWithoutDBControls = class(TUniFrame)
    UnimContainerPanel1: TUnimContainerPanel;
    UnimList1: TUnimList;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1SpeciesNo: TFloatField;
    ClientDataSet1Category: TStringField;
    ClientDataSet1Common_Name: TStringField;
    ClientDataSet1SpeciesName: TStringField;
    ClientDataSet1Lengthcm: TFloatField;
    ClientDataSet1Length_In: TFloatField;
    ClientDataSet1Notes: TMemoField;
    ClientDataSet1Graphic: TGraphicField;
    DataSourceFishFact: TDataSource;
    procedure UniFrameCreate(Sender: TObject);
    procedure UnimList1Disclose(Sender: TObject);
  private
    { Private declarations }
  public

    { Public declarations }
  end;

implementation

{$R *.dfm}



procedure TUniDatabaseFishFactWithoutDBControls.UniFrameCreate(Sender: TObject);
begin
  UniMainModule.LoadClientFromStream(ClientDataSet1, 'biolife.cds');

 // ClientDataSet1.IndexDefs.Add('SpeciesNoIndex', 'Species No', []);

 with ClientDataSet1 do
  begin
    UnimList1.Clear;
    while not Eof do
    begin
      UnimList1.Items.AddObject(FieldByName('Species Name').AsString, TObject(FieldByName('Species No').AsInteger));
      Next;
    end;

  end;
end;

procedure TUniDatabaseFishFactWithoutDBControls.UnimList1Disclose(Sender: TObject);
begin
 UniMainModule.Species := Integer(UnimList1.Items.Objects[UnimList1.ItemIndex]);
 UnimForm1.ShowModal();
end;

 initialization
  RegisterClass(TUniDatabaseFishFactWithoutDBControls);

end.
