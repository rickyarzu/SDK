unit udmCloud;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Uni, MemDS, DBAccess,

{$IFDEF MSWINDOWS}
  MidasLib,
{$ENDIF}
  Janua.Core.System, Janua.Core.Jpublic, Janua.Core.Functions, Janua.Core.Classes,
  // Janua Forms
  udmJanuaPostgresModel, UniProvider, PostgreSQLUniProvider;

type
  TdmCloud = class(TdmJanuaPostgresModel)
    qryTextFiles: TUniQuery;
    qryTextFilestext_file_id: TLargeintField;
    qryTextFilestext_file_name: TWideStringField;
    qryTextFilestext_file_des: TWideStringField;
    qryTextFilestext_file: TWideMemoField;
    qryTextFilesdb_schema_id: TIntegerField;
    qryTextFilesdb_owner_id: TIntegerField;
    qryTextFilessystem_file: TBooleanField;
    qryTextFilestext_file_key: TWideStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    FLog: TStringList;
    FisServer: boolean;
    FSessionKey: string;
    procedure SetisServer(const Value: boolean);
    procedure SetLog(const Value: TStringList);
    procedure SetSessionKey(const Value: string);
    { Private declarations }
  public
    { Public declarations }
    property SessionKey: string read FSessionKey write SetSessionKey;
    property Log: TStringList read FLog write SetLog;
    property isServer: boolean read FisServer write SetisServer;
  end;

var
  dmCloud: TdmCloud;

implementation


{$R *.dfm}

procedure TdmCloud.DataModuleCreate(Sender: TObject);
begin
  self.FLog := TStringList.Create;
end;

procedure TdmCloud.SetisServer(const Value: boolean);
begin
  FisServer := Value;
end;

procedure TdmCloud.SetLog(const Value: TStringList);
begin
  FLog := Value;
end;


procedure TdmCloud.SetSessionKey(const Value: string);
begin
  FSessionKey := Value;
end;

end.
