unit udmSocial;

interface

uses
  System.SysUtils, System.Classes, Data.DB, DBAccess, Uni, MemDS,
  Janua.Core.System, Janua.Core.Social,
  Janua.Core.Classes,
  udmJanuaPostgresModel, Datasnap.Provider, Datasnap.DBClient, UniProvider, PostgreSQLUniProvider;

type
  TdmSocial = class(TdmJanuaPostgresModel)
    spInsertMessage: TUniStoredProc;
    qryMessages: TUniQuery;
    spDeleteMessage: TUniStoredProc;
    qryMessageCount: TUniQuery;
    qryMessageCountmessages: TLargeintField;
    qryMessagesNotRead: TUniQuery;
    qryMessagesNotReadmessage_id: TLargeintField;
    qryMessagesNotReadfrom_id: TIntegerField;
    qryMessagesNotReadto_id: TIntegerField;
    qryMessagesNotReadsubject: TWideStringField;
    qryMessagesNotReadmsg_text: TWideMemoField;
    qryMessagesNotReadshorttext: TWideStringField;
    qryMessagesNotReadmsg_datetime: TDateTimeField;
    qryMessagesNotReadmsg_read: TBooleanField;
    qryMessagesNotReadmsg_sent: TBooleanField;
    qryMessagesmessage_id: TLargeintField;
    qryMessagesfrom_id: TIntegerField;
    qryMessagesto_id: TIntegerField;
    qryMessagessubject: TWideStringField;
    qryMessagesmsg_text: TWideMemoField;
    qryMessagesshorttext: TWideStringField;
    qryMessagesmsg_datetime: TDateTimeField;
    qryMessagesmsg_read: TBooleanField;
    qryMessagesmsg_sent: TBooleanField;
    qryMessagesfirst_name: TWideStringField;
    qryMessageslast_name: TWideStringField;
    qryMessagesreceiver_first_name: TWideStringField;
    qryMessagesreceiver_last_name: TWideStringField;
    qryDeleteMessage: TUniQuery;
    procedure DataModuleCreate(Sender: TObject); override;
  private
    FMessageCount: integer;
    FLastMessage: Janua.Core.Social.TMessage;
    procedure SetMessageCount(const Value: integer);
    procedure SetLastMessage(const Value: Janua.Core.Social.TMessage);
    { Private declarations }
  public
    { Public declarations }
    function CheckSessionKey(aSessionKey: string): boolean; override;
    procedure updateMessageCount;
    function DeleteMessage(FThisMessage: Janua.Core.Social.TMessage): boolean;
    function InsertMessage(aMessage: Janua.Core.Social.TMessage): int64;
  published
    property MessageCount: integer read FMessageCount write SetMessageCount;
    property LastMessage: Janua.Core.Social.TMessage read FLastMessage write SetLastMessage;
  end;

var
  dmSocial: TdmSocial;

implementation

{$R *.dfm}

function TdmSocial.CheckSessionKey(aSessionKey: string): boolean;
begin
  inherited;
  self.updateMessageCount;
  Result := False;
  { TODO : Implement dmSocial.CheckSessionKey or remove }
end;

procedure TdmSocial.DataModuleCreate(Sender: TObject);
begin
  inherited;
  self.WriteLog('TdmSocial Creato');
end;

function TdmSocial.DeleteMessage(FThisMessage: Janua.Core.Social.TMessage): boolean;
begin
  self.qryDeleteMessage.ParamByName('p_message_id').AsLargeInt := FThisMessage.message_id;
  self.qryDeleteMessage.Execute;
  Result := True;
end;

function TdmSocial.InsertMessage(aMessage: TMessage): int64;
begin
  self.spInsertMessage.ParamByName('in_from_id').Value := aMessage.from_id;
  self.spInsertMessage.ParamByName('in_to_id').Value := aMessage.to_id;
  self.spInsertMessage.ParamByName('in_subject').Value := aMessage.subject;
  self.spInsertMessage.ParamByName('in_text').Value := aMessage.Text;
  self.spInsertMessage.ExecProc;

  FLastMessage := aMessage;
  FLastMessage.message_id := self.spInsertMessage.ParamByName('Result').AsLargeInt;
  FLastMessage.read := False;
  FLastMessage.sent_datetime := Now();
  // self.spInsertMessage.ParamByName('in_message_datetime').AsLargeInt;

  Result := FLastMessage.message_id;
  self.WriteLog(sLineBreak + '***************** inviato messaggio *******' + sLineBreak + FLastMessage.ToString);
end;


procedure TdmSocial.SetLastMessage(const Value: Janua.Core.Social.TMessage);
begin
  FLastMessage := Value;
end;

procedure TdmSocial.SetMessageCount(const Value: integer);
begin
  FMessageCount := Value;
end;


procedure TdmSocial.updateMessageCount;
begin
  if self.UserProfile.User.ID > 0 then
  begin
    self.qryMessageCount.Close;
    self.qryMessageCount.ParamByName('p_to_id').AsInteger := UserProfile.User.ID;
    self.qryMessageCount.ParamByName('p_from_id').AsInteger := 0;
    self.qryMessageCount.ParamByName('ricerca').AsWideString := '%';
    ServerFunctions.OpenDataset(self.qryMessageCount);
    self.FMessageCount := self.qryMessageCountmessages.AsInteger;
    self.qryMessageCount.Close;
    // imposto l'array in base ai record Letti .............
  end;
end;

end.
