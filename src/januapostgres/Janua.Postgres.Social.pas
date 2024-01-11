unit Janua.Postgres.Social;

interface

uses
  System.SysUtils, System.Classes, Janua.Core.Social, udmSocial, Janua.Core.Functions,
  Janua.Core.Classes;

type
  TJanuaServerSocial = class(TJanuaCustomServerSocial)
  private
    FMessages: TJanuaSocialRecord;
    procedure SetMessages(const Value: TJanuaSocialRecord);
    procedure InternalUpdateMessageCount;
    { Private declarations }
  protected
    { Protected declarations }
    DM: TdmSocial;
    procedure CreateDataModule; override;
    procedure DestroyDataModule(Force: boolean = false); override;
  public
    { Public declarations }
    procedure updateMessageCount;
    function InsertMessage(FThisMessage: Janua.Core.Social.TMessage): int64;
    procedure LoadMessages;
    function DeleteMessage(FThisMessage: Janua.Core.Social.TMessage): boolean;
  published
    { Published declarations }
    property Messages: TJanuaSocialRecord read FMessages write SetMessages;
  end;

implementation

{ TJanuaServerSocial }

procedure TJanuaServerSocial.CreateDataModule;
begin
  if not Assigned(DM) then
  begin
    DM := TdmSocial.Create(nil);
    IDM := DM;
    FMessageCount := 0;
    DM.JanuaCoreLogger := (self.JanuaLogger as TJanuaCoreLogger);
    if Assigned(JanuaServerSystem) then
      DM.ServerSession := self.JanuaServerSystem.JanuaServerSession;
    InternalUpdateMessageCount;
  end;
end;

function TJanuaServerSocial.DeleteMessage(FThisMessage: Janua.Core.Social.TMessage): boolean;
begin
  try
    CreateDataModule;
    Result := DM.DeleteMessage(FThisMessage);
  finally
    DestroyDataModule
  end;
end;

procedure TJanuaServerSocial.InternalUpdateMessageCount;
begin
  if JanuaServerSystem.UserProfile.User.ID > 0 then
  begin
    DM.UserProfile := self.JanuaServerSystem.UserProfile;
    DM.TestConnect;
    DM.updateMessageCount;
    self.FMessageCount := DM.MessageCount;
  end;
end;

procedure TJanuaServerSocial.DestroyDataModule(Force: boolean = false);
begin
  if ((not self.KeepAlive) or Force) and Assigned(DM) then
  begin
    JanuaFree(DM);
    self.DM := nil;
    self.IDM := nil;
  end;
  inherited;
end;

function TJanuaServerSocial.InsertMessage(FThisMessage: Janua.Core.Social.TMessage): int64;
begin
  try
    CreateDataModule;
    FLastMessageID := DM.InsertMessage(FThisMessage);
    Result := self.FLastMessageID;
  finally
    DestroyDataModule
  end;
end;

procedure TJanuaServerSocial.LoadMessages;
var
  i: integer;
begin
  CreateDataModule;

  try
    with DM do
    begin
      qryMessages.Close;
      qryMessages.ParamByName('ricerca').Value := '%';
      qryMessages.ParamByName('p_to_id').Value := self.JanuaServerSystem.UserProfile.User.ID;
      qryMessages.ParamByName('p_from_id').Value := 0;
      DM.ServerFunctions.OpenDataset(qryMessages);

      WriteLog('Numero di Messaggi: ' + IntToStr(qryMessages.RecordCount));
      SetLength(FMessages.Messages, qryMessages.RecordCount);
      qryMessages.First;
      i := 0;
      while not qryMessages.Eof do
      begin
        Inc(i);
        FMessages.Messages[i - 1].subject := qryMessagesSUBJECT.AsWideString;
        FMessages.Messages[i - 1].Text := qryMessagesmsg_text.AsWideString;
        if FMessages.Messages[i - 1].Text = '' then
          FMessages.Messages[i - 1].Text := qryMessagesShortTEXT.AsWideString;
        FMessages.Messages[i - 1].ShortText := qryMessagesShortTEXT.AsWideString;
        FMessages.Messages[i - 1].from_id := qryMessagesFROM_ID.AsInteger;
        FMessages.Messages[i - 1].read := qryMessagesmsg_read.AsString = 'Y';
        FMessages.Messages[i - 1].message_id := qryMessagesMESSAGE_ID.AsInteger;
        FMessages.Messages[i - 1].from_name := qryMessageslast_name.AsString + ' ' + qryMessagesfirst_name.AsString;
        FMessages.Messages[i - 1].sent_datetime := qryMessagesmsg_datetime.AsDateTime;
        WriteLog('Messaggio numero: ' + IntToStr(i) + ' ' + FMessages.Messages[i - 1].subject);
        qryMessages.Next;
      end;
    end;
  finally
    DestroyDataModule;
  end;

end;

procedure TJanuaServerSocial.SetMessages(const Value: TJanuaSocialRecord);
begin
  FMessages := Value;
end;

procedure TJanuaServerSocial.updateMessageCount;
begin
  CreateDataModule;
  try
    self.FMessageCount := DM.MessageCount;
  finally
    DestroyDataModule;
  end;
end;

end.
