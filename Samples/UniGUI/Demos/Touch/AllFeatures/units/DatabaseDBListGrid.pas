//DBListGrid = Database
unit DatabaseDBListGrid;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, DB, DBClient, uniLabel, unimLabel,
  uniBasicGrid, uniDBGrid, unimDBListGrid, uniGUIBaseClasses, uniGUImJSForm,
  EditForm, ShowDataForm, ServerModule, MainModule;

type
  TUniDatabaseDBListGrid = class(TUniFrame)
    UnimContainerPanel1: TUnimContainerPanel;
    UnimDBListGrid1: TUnimDBListGrid;
    UnimLabel1: TUnimLabel;
    procedure UnimDBListGrid1ClickHold(Sender: TObject);
    procedure UnimDBListGrid1DblClick(Sender: TObject);
    procedure UnimDBListGrid1Disclose(Sender: TObject);
    procedure UnimDBListGrid1Swipe(Sender: TObject);
    procedure UniFrameCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}



procedure TUniDatabaseDBListGrid.UniFrameCreate(Sender: TObject);
begin

  UniMainModule.LoadClientFromStream(UniMainModule.ClientDataSetFishFact, 'biolife.cds');
//  UniMainModule.ClientDataSetFishFact.LoadFromFile(UniServerModule.FilesFolderPath + 'biolife.cds');

  //ClientDataSetFishFact.IndexDefs.Add('SpeciesNoIndex', 'Species No', []);
end;

procedure TUniDatabaseDBListGrid.UnimDBListGrid1ClickHold(Sender: TObject);
begin
  UniMainModule.DataSourceFishFact.DataSet.Edit;
  UniMainModule.DataSourceFishFact.DataSet.FieldByName('Length (cm)').AsFloat := UniMainModule.DataSourceFishFact.DataSet.FieldByName('Length (cm)').AsFloat + 1;
  UniMainModule.DataSourceFishFact.DataSet.Post;

  ShowMessage('Length (cm) is increased');
end;

procedure TUniDatabaseDBListGrid.UnimDBListGrid1DblClick(Sender: TObject);
begin
    UnimEditForm.UnimEdit1.Text := UniMainModule.DataSourceFishFact.DataSet.FieldByName('Species No').AsString;
    UnimEditForm.UnimSelect1.Text := UniMainModule.DataSourceFishFact.DataSet.FieldByName('Category').AsString;
    UnimEditForm.UnimEdit3.Text := UniMainModule.DataSourceFishFact.DataSet.FieldByName('Common_Name').AsString;
    UnimEditForm.UnimEdit4.Text := UniMainModule.DataSourceFishFact.DataSet.FieldByName('Species Name').AsString;
    UnimEditForm.UnimEdit5.Text := UniMainModule.DataSourceFishFact.DataSet.FieldByName('Length (cm)').AsString;
    UnimEditForm.UnimEdit6.Text := UniMainModule.DataSourceFishFact.DataSet.FieldByName('Length_In').AsString;



  UnimEditForm.ShowModal();
end;

procedure TUniDatabaseDBListGrid.UnimDBListGrid1Disclose(Sender: TObject);
begin

  UnimShowDataForm.UnimImage1.Assign(TBlobField(UniMainModule.DataSourceFishFact.DataSet.FieldByName('Graphic')));
  UnimShowDataForm.UnimEdit1.Text := UniMainModule.DataSourceFishFact.DataSet.FieldByName('Species No').AsString;
  UnimShowDataForm.UnimEdit2.Text := UniMainModule.DataSourceFishFact.DataSet.FieldByName('Category').AsString;
  UnimShowDataForm.UnimEdit3.Text := UniMainModule.DataSourceFishFact.DataSet.FieldByName('Common_Name').AsString;
  UnimShowDataForm.UnimEdit4.Text := UniMainModule.DataSourceFishFact.DataSet.FieldByName('Species Name').AsString;
  UnimShowDataForm.UnimEdit5.Text := UniMainModule.DataSourceFishFact.DataSet.FieldByName('Length (cm)').AsString;
  UnimShowDataForm.UnimEdit6.Text := UniMainModule.DataSourceFishFact.DataSet.FieldByName('Length_In').AsString;
  UnimShowDataForm.UnimMemo1.Text := UniMainModule.DataSourceFishFact.DataSet.FieldByName('Notes').AsString;


  UnimShowDataForm.ShowModal();
end;

procedure TUniDatabaseDBListGrid.UnimDBListGrid1Swipe(Sender: TObject);
begin
  UniMainModule.DataSourceFishFact.DataSet.Delete;

  ShowMessage('Record is deleted');
end;

 initialization
  RegisterClass(TUniDatabaseDBListGrid);


end.
