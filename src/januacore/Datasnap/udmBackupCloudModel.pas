unit udmBackupCloudModel;

interface

uses
  System.SysUtils, System.Classes,
  Data.DB,
  Datasnap.DBClient, Data.DBXDataSnap, IPPeerClient, Data.DBXCommon,
  Data.SqlExpr, Data.FMTBcd, Datasnap.DSConnect, Janua.Core.Backup, Janua.Core.Commons,  Janua.Core.Classes,
  Janua.Legacy.Logger;

type
  TdmBackupCloudModel = class(TDataModule)
    cdsFileBackup: TClientDataSet;
    cdsFileBackupid: TIntegerField;
    cdsFileBackupLocalRoot: TStringField;
    cdsFileBackupParentID: TIntegerField;
    cdsFileBackupDir: TBooleanField;
    cdsFileBackupTreeOrder: TStringField;
    cdsFileBackupName: TStringField;
    cdsFileBackupLocation: TStringField;
    cdsFileBackupTitle: TStringField;
    cdsFileBackupDescription: TStringField;
    cdsFileBackupPath: TStringField;
    cdsFileBackupDateTime: TDateTimeField;
    cdsFileBackupAttr: TIntegerField;
    cdsFileBackupFileExt: TStringField;
    cdsFileBackupFileNameNoExt: TStringField;
    dsFileBackup: TDataSource;
    {
      JanuaFMXIOSource1: TJanuaFMXIOSource;
      JanuaLogger1: TJanuaLogger;
      JanuaDirectoryBackup1: TJanuaDirectoryBackup;
      JanuaDirBackupIO1: TJanuaDirBackupIO;
    }
    cdsSchemas: TClientDataSet;
    cdsSchemasDB_SCHEMA_ID: TBCDField;
    cdsSchemasDB_SCHEMA_NAME: TStringField;
    cdsSchemasDB_SCHEMA_DESCRIPTION: TStringField;
    cdsSchemasDB_OWNER_ID: TBCDField;
    cdsSchemasDB_SCHEMA_KEY: TFMTBCDField;
    cdsSchemasDB_SCHEMA_ENCRYPTED_KEY: TVarBytesField;
    cdsFileBackupRootDirID: TSmallintField;
    cdsDirectories: TClientDataSet;
    cdsDirectoriesdirectory_id: TLargeintField;
    cdsDirectoriescomputer_id: TLargeintField;
    cdsDirectoriesdb_schema_id: TIntegerField;
    cdsDirectoriesdirectory_name: TWideStringField;
    cdsDirectoriesdirectory_path: TWideStringField;
    cdsDirectoriesLocalDirID: TSmallintField;
  private
    FLoggedIn: boolean;
    FUserID: integer;
    FSEssionID: integer;
    FPassword: string;
    FUserName: string;
    { dmErgoSystemClient: TdmErgoSystemClient; }
    procedure SetLoggedIn(const Value: boolean);
    procedure SetPassword(const Value: string);
    procedure SetSEssionID(const Value: integer);
    procedure SetUserID(const Value: integer);
    procedure SetUserName(const Value: string);
    { Private declarations }
  public
    { Public declarations }
    function Login: boolean;
    property UserName: string read FUserName write SetUserName;
    property Password: string read FPassword write SetPassword;
    property LoggedIn: boolean read FLoggedIn write SetLoggedIn;
    property UserID: integer read FUserID write SetUserID;
    property SEssionID: integer read FSEssionID write SetSEssionID;
  end;

var
  dmBackupCloudModel: TdmBackupCloudModel;

implementation

{ uses udmErgoCloudClient; }

{$R *.dfm}
{ TdmBackupCloudModel }

function TdmBackupCloudModel.Login: boolean;
begin
  { if not Assigned(dmErgoSystemClient) then
    dmErgoSystemClient := TdmErgoSystemClient.Create(self);
    self.FLoggedIn := dmErgoSystemClient.Login(FUserName, FPassword); }
end;

procedure TdmBackupCloudModel.SetLoggedIn(const Value: boolean);
begin
  FLoggedIn := Value;
end;

procedure TdmBackupCloudModel.SetPassword(const Value: string);
begin
  FPassword := Value;
end;

procedure TdmBackupCloudModel.SetSEssionID(const Value: integer);
begin
  FSEssionID := Value;
end;

procedure TdmBackupCloudModel.SetUserID(const Value: integer);
begin
  FUserID := Value;
end;

procedure TdmBackupCloudModel.SetUserName(const Value: string);
begin
  FUserName := Value;
end;

end.