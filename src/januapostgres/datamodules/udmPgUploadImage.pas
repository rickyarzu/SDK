unit udmPgUploadImage;

interface

uses
  System.SysUtils, System.Classes, Data.DB, DBAccess, PgAccess, MemDS, Janua.Core.CustomControls,
  Janua.VCL.Dialogs, Janua.Core.Classes, Janua.Core.System, Janua.Server.System, Janua.Core.JPublic,
  Janua.Server.JPublic, Janua.Core.Users, Janua.Server.Users, MemData;

type
  TdmPgUploadImage = class(TDataModule)
    PgConnection1: TPgConnection;
    qrySession: TPgQuery;
    qrySessiondb_user_id: TIntegerField;
    qrySessiondb_schema_id: TIntegerField;
    qrySessiondb_session_id: TLargeintField;
    qrySessionlanguage_id: TSmallintField;
    qrySessionstart_time: TDateTimeField;
    PgTable1: TPgQuery;
    PgTable1external_file_id: TLargeintField;
    PgTable1external_name: TStringField;
    PgTable1location_id: TSmallintField;
    PgTable1db_schema_id: TIntegerField;
    PgTable1blob_id: TLargeintField;
    PgTable1ext_file_key: TStringField;
    PgTable1db_user_id: TIntegerField;
    qryBlob: TPgQuery;
    qryBlobblob_id: TLargeintField;
    qryBlobblob_file: TBlobField;
    qryBlobblob_size: TLargeintField;
    qryBlobdb_schema_id: TIntegerField;
    qryBlobblob_key: TStringField;
    qryBlobdb_user_id: TIntegerField;
    qrySessiondb_session_key: TWideStringField;
  private
    FSessionKey: string;
    FLastErrorMessage: string;
    FHasErrors: boolean;
    FLog: TStrings;
    procedure SetSessionKey(const Value: string);
    procedure SetHasErrors(const Value: boolean);
    procedure SetLastErrorMessage(const Value: string);
    procedure SetLog(const Value: TStrings);
    { Private declarations }
  public
    { Public declarations }
    procedure Login;
    function UploadBlob(filename: TFileName): Int64;
    property SessionKey: string read FSessionKey write SetSessionKey;
    property HasErrors: boolean read FHasErrors write SetHasErrors;
    property LastErrorMessage: string read FLastErrorMessage write SetLastErrorMessage;
    property Log: TStrings read FLog write SetLog;
  end;

var
  dmPgUploadImage: TdmPgUploadImage;

implementation

{ %CLASSGROUP 'Vcl.Controls.TControl' }

{$R *.dfm}
{ TDataModule1 }

procedure TdmPgUploadImage.Login;
begin

end;

procedure TdmPgUploadImage.SetHasErrors(const Value: boolean);
begin
  FHasErrors := Value;
end;

procedure TdmPgUploadImage.SetLastErrorMessage(const Value: string);
begin
  FLastErrorMessage := Value;
end;

procedure TdmPgUploadImage.SetLog(const Value: TStrings);
begin

end;

procedure TdmPgUploadImage.SetSessionKey(const Value: string);
begin

end;

function TdmPgUploadImage.UploadBlob(filename: TFileName): Int64;
begin

end;

end.
