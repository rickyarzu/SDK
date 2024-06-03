unit UCloudDataSetDemo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, DBCtrls, Grids, DBGrids,
  CloudCustomDataSet, CloudCustomDataAdapter, CloudDataAdapter, DB,
  DBClient, CloudDataSet, CloudCustomCloudKit, CloudCloudKit,
  CloudBase, CloudBaseWin, CloudCustomDataStore, CloudCustomGDataStore,
  CloudGDataStore, StdCtrls, ExtCtrls, CloudCustomMyCloudData, CloudMyCloudData;

type
  TForm8 = class(TForm)
    Panel1: TPanel;
    RadioGroup1: TRadioGroup;
    btConnect: TButton;
    btDisconnect: TButton;
    Panel2: TPanel;
    AdvCloudKit1: TAdvCloudKit;
    CloudDataSet1: TCloudDataSet;
    CloudDataStoreAdapter1: TCloudDataStoreAdapter;
    Panel3: TPanel;
    DBNavigator1: TDBNavigator;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    AdvGDataStore1: TAdvGDataStore;
    Panel4: TPanel;
    Label1: TLabel;
    AdvMyCloudData1: TAdvMyCloudData;
    procedure btConnectClick(Sender: TObject);
    procedure AdvGDataStore1ReceivedAccessToken(Sender: TObject);
    procedure CloudDataStoreAdapter1MetaDataRetrieved(Sender: TObject;
      MetaDataItem: TDataStoreMetaDataItem; var Allow: Boolean);
    procedure btDisconnectClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure InitDB;
    procedure InitMetaData;
    function DataStore: TCustomDataStore;
  end;

var
  Form8: TForm8;

implementation

{$R *.dfm}

// PLEASE USE A VALID INCLUDE FILE THAT CONTAINS THE APPLICATION KEY & SECRET
// FOR THE CLOUD DATASTORE SERVICES YOU WANT TO USE
// STRUCTURE OF THIS .INC FILE SHOULD BE
//
// const
//  myCloudDataAppkey = 'xxxxxxxxxx';
//  myCloudDataAppSecret = 'xxxxxxxxxx';
//  myCloudDataTable = 'xxxxxxxxxx';
//
//  GDataStoreAppkey = 'xxxxxxxxxx';
//  GDataStoreAppSecret = 'xxxxxxxxxx';
//  GDataStoreProject = 'xxxxxxxxxx';
//  GDataStoreDatabase = 'xxxxxxxxxx';
//  GDataStoreTable = 'xxxxxxxxxx';
//
//  CloudKitAppKey = 'xxxxxxxxxx';
//  CloudKitProject = 'xxxxxxxxxx';
//  CloudKitDatabase = 'xxxxxxxxxx';

{$I APPIDS.INC}

procedure TForm8.AdvGDataStore1ReceivedAccessToken(Sender: TObject);
begin
  DataStore.SaveTokens;
  InitDB;
end;

procedure TForm8.btConnectClick(Sender: TObject);
begin
  if DataStore is TAdvCloudKit then
    InitMetaData;

  DataStore.LoadTokens;

  if DataStore.TestTokens then
    InitDB
  else
    DataStore.DoAuth;
end;

procedure TForm8.btDisconnectClick(Sender: TObject);
begin
  DataStore.Entities.Clear;
  CloudDataSet1.Active := false;
  DataStore.ClearTokens;

  btConnect.Enabled := true;
  btDisconnect.Enabled := false;
  RadioGroup1.Enabled := true;
end;

procedure TForm8.CloudDataStoreAdapter1MetaDataRetrieved(Sender: TObject;
  MetaDataItem: TDataStoreMetaDataItem; var Allow: Boolean);
begin
  if MetaDataItem.PropertyName = 'BirthDate' then
    MetaDataItem.DataType := ftDateTime;
end;

// retrieve the abstract datastore
function TForm8.DataStore: TCustomDataStore;
begin
  Result := nil;
  case RadioGroup1.ItemIndex of
  0: Result := AdvMyCloudData1;
  1: Result := AdvGDataStore1;
  2: Result := AdvCloudKit1;
  end;
end;

procedure TForm8.FormCreate(Sender: TObject);
begin
  AdvMyCloudData1.App.Key := myCloudDataAppkey;
  AdvMyCloudData1.App.Secret := myCloudDataAppSecret;
  AdvMyCloudData1.Table := myCloudDataTable;

  AdvGDataStore1.App.Key := GDataStoreAppkey;
  AdvGDataStore1.App.Secret := GDataStoreAppSecret;
  AdvGDataStore1.Project := GDataStoreProject;
  AdvGDataStore1.Database := GDataStoreDatabase;
  AdvGDataStore1.Table := GDataStoreTable;

  AdvCloudKit1.App.Key := CloudKitAppKey;
  AdvCloudKit1.Project := CloudKitProject;
  AdvCloudKit1.Database := CloudKitDatabase;
end;

procedure TForm8.InitDB;
var
  I: integer;
begin
  CloudDataSet1.Active := false;
  // set the correct used datastore for the dataset adapter
  CloudDataStoreAdapter1.CloudDataStore := DataStore;
  CloudDataSet1.Active := true;

  // initialize default column width
  for I := 0 to DBGrid1.Columns.Count - 1 do
  begin
    if DBGrid1.Columns[I].FieldName = 'ID' then
      DBGrid1.Columns[I].Visible := false;
    DBGrid1.Columns[I].Width := 100;
  end;

  btConnect.Enabled := false;
  btDisconnect.Enabled := true;
  RadioGroup1.Enabled := false;
end;

// CloudKit database schema initialization
procedure TForm8.InitMetaData;
var
  mi: TDataStoreMetaDataItem;
begin
  AdvCloudKit1.MetaData.Clear;

  mi := AdvCloudKit1.MetaData.Add;
  mi.PropertyName := 'Name';
  mi.DataType := ftWideString;

  mi := AdvCloudKit1.MetaData.Add;
  mi.PropertyName := 'Children';
  mi.DataType := ftInteger;

  mi := AdvCloudKit1.MetaData.Add;
  mi.PropertyName := 'Salary';
  mi.DataType := ftFloat;

  mi := AdvCloudKit1.MetaData.Add;
  mi.PropertyName := 'BirthDate';
  mi.DataType := ftDateTime;
end;

end.
