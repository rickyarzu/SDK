unit Janua.Twilio.dmPgWhatsApp;

interface

uses
  System.SysUtils, System.Classes,
  // UniDAC
  UniProvider, PostgreSQLUniProvider, Data.DB, DBAccess, Uni, MemDS,
  // Interfaces
  Janua.Controls.Forms.Intf, Janua.Core.Classes.Intf, Janua.Bindings.Intf, Janua.Core.DB.Intf, Janua.Uni.Intf,
  // Janua
  udmPgStorage, Janua.Cloud.Types, Janua.Unidac.Connection;

type
  TdmPgTwilioWhatsApp = class(TdmPgStorage, IJanuaDataModule, IJanuaBindable)
    qryTwilioLog: TUniQuery;
    qryTwilioLogid: TLargeintField;
    qryTwilioLogdb_schema_id: TIntegerField;
    qryTwilioLogjguid: TGuidField;
    qryTwilioLogdeleted: TBooleanField;
    qryTwilioLoginsert_date: TDateTimeField;
    qryTwilioLogupdate_date: TDateTimeField;
    qryTwilioLoguser_insert: TWideStringField;
    qryTwilioLoguser_update: TWideStringField;
    qryTwilioLogjson_content: TWideMemoField;
    qryTwilioLogbody_received: TWideMemoField;
    qryTwilioLogaction: TWideStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure FallBack(const aFallback: string);
    procedure StatusCallback(const aText: string; aStatus: TTWilioStatus);
    procedure WebHook(const aText: string; aHook: TTwilioWebHook);
  end;

var
  dmPgTwilioWhatsApp: TdmPgTwilioWhatsApp;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}
{$R *.dfm}
{ TDataModule1 }

procedure TdmPgTwilioWhatsApp.DataModuleCreate(Sender: TObject);
begin
  inherited;
  qryTwilioLog.Open;
end;

procedure TdmPgTwilioWhatsApp.FallBack(const aFallback: string);
begin
  qryTwilioLog.Append;
  qryTwilioLogbody_received.AsString := aFallback;
  qryTwilioLogaction.AsString := 'fallback';
  qryTwilioLog.Post;
end;

procedure TdmPgTwilioWhatsApp.StatusCallback(const aText: string; aStatus: TTWilioStatus);
begin
  qryTwilioLog.Append;
  qryTwilioLogbody_received.AsString := aText;
  qryTwilioLogaction.AsString := 'status_callback';
  qryTwilioLogjson_content.AsString := aStatus.GetAsJson;
  qryTwilioLog.Post;
end;

procedure TdmPgTwilioWhatsApp.WebHook(const aText: string; aHook: TTwilioWebHook);
begin
  qryTwilioLog.Append;
  qryTwilioLogbody_received.AsString := aText;
  qryTwilioLogaction.AsString := 'webhook';
  qryTwilioLogjson_content.AsString := aHook.GetAsJson;
  qryTwilioLog.Post;
end;

end.
