unit UmyCloudDataDataSetFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, CloudMyCloudDataDataSet,
  Datasnap.DBClient, CloudCustomDataSet, CloudBase, CloudCustommyCloudData;

type
  TForm3 = class(TForm)
    AdvMyCloudDataDataSet1: TAdvMyCloudDataDataSet;
    AdvMyCloudDataConnection1: TAdvMyCloudDataConnection;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    btnConn: TButton;
    DBNavigator1: TDBNavigator;
    btnDisConn: TButton;
    Label1: TLabel;
    procedure btnConnClick(Sender: TObject);
    procedure AdvMyCloudDataConnection1Connected(Sender: TObject);
    procedure btnDisConnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Init;
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

// PLEASE USE A VALID INCLUDE FILE THAT CONTAINS THE APPLICATION KEY & SECRET
// FOR THE CLOUD STORAGE SERVICES YOU WANT TO USE
// STRUCTURE OF THIS .INC FILE SHOULD BE
//
// const
//  MYCLOUDDATAKEY = 'xxxxxxxxx';
//  MYCLOUDDATASECRET = 'xxxxxxxxx';

{$I APPIDS.INC}

procedure TForm3.AdvMyCloudDataConnection1Connected(Sender: TObject);
begin
  btnDisConn.Enabled := true;
  btnConn.Enabled := false;
  Init;
end;

procedure TForm3.btnConnClick(Sender: TObject);
begin
  AdvMyCloudDataConnection1.PersistTokens.Location := plIniFile;
  AdvMyCloudDataConnection1.PersistTokens.Key := '.\myclouddatadataset.ini';
  AdvMyCloudDataConnection1.PersistTokens.Section := 'tokens';

  AdvMyCloudDataConnection1.App.Key := MYCLOUDDATAKEY;
  AdvMyCloudDataConnection1.App.Secret := MYCLOUDDATASECRET;

  AdvMyCloudDataConnection1.App.CallBackPort := 8888;
  AdvMyCloudDataConnection1.App.CallBackURL := 'http://127.0.0.1:8888';

  AdvMyCloudDataConnection1.Connected := true;
end;

procedure TForm3.btnDisConnClick(Sender: TObject);
begin
  AdvMyCloudDataDataSet1.Active := false;
  AdvMyCloudDataConnection1.Connected := false;
  AdvMyCloudDataConnection1.ClearTokens;

  btnDisConn.Enabled := false;
  btnConn.Enabled := true;
end;

procedure TForm3.Init;
var
  table: TMyCloudDataTable;
  i: integer;

begin
  Cursor := crHourGlass;
  table := AdvMyCloudDataConnection1.CloudData.TableByName('CONTACTS');

  if not Assigned(table) then
  begin
    table :=  AdvMyCloudDataConnection1.CloudData.CreateTable('CONTACTS');
    table.MetaData.Add('NAME', ftString, 50);
    table.MetaData.Add('EMAIL',ftString, 50);
    table.MetaData.Add('SEX', ftString, 1);
    table.MetaData.Add('PICTURE', ftBlob);
    table.MetaData.Add('BIRTHDATE', ftDate);
    table.MetaData.Add('FRIEND', ftBoolean);
    table.SetMetaData;
  end;


  AdvMyCloudDataDataSet1.Table := 'CONTACTS';
  AdvMyCloudDataDataSet1.Active := true;

  // initialize grid column widths
  for i := 0 to DBGrid1.Columns.Count - 1 do
    DBGrid1.Columns[i].Width := 128;
  DBGrid1.Columns[0].Width := 20;

  Cursor := crDefault;
end;

end.
