unit Janua.Server.Social;

interface

uses
  System.SysUtils, System.Classes, Janua.Core.Social, udmSocial, Janua.Core.System;

type
  TJanuaServerSocial = class(TJanuaCustomServerSocial)
  private
    FMessages: TJanuaSocialRecord;
    procedure SetMessages(const Value: TJanuaSocialRecord);
    { Private declarations }
  protected
    { Protected declarations }
    a: TdmSocial;
    procedure CreateDataModule;
    procedure DestroyDataModule;
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
  if not Assigned(a) then
  begin
    a := TdmSocial.Create(nil);
    a.JanuaCoreLogger := (self.JanuaLogger as TJanuaCoreLogger);
    a.ServerSession := self.JanuaServerSystem.JanuaServerSession;
    a.User := self.JanuaServerSystem.UserProfile.User;
    a.updateMessageCount;
    self.FMessageCount := a.MessageCount;
  end;
end;

function TJanuaServerSocial.DeleteMessage(FThisMessage: Janua.Core.Social.TMessage): boolean;
begin
  try
    CreateDataModule;
    Result  := a.DeleteMessage(FThisMessage);
  finally
    DestroyDataModule
  end;
end;

procedure TJanuaServerSocial.DestroyDataModule;
begin
  if not self.FKeepAlive and Assigned(a) then
    FreeAndNil(a);
end;

function TJanuaServerSocial.InsertMessage(FThisMessage: Janua.Core.Social.TMessage): int64;
begin
  try
    CreateDataModule;
    FLastMessageID := a.InsertMessage(FThisMessage);
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
    with a do
    begin
      qryMessages.Close;
      qryMessages.ParamByName('ricerca').Value := '%';
      qryMessages.ParamByName('p_to_id').Value := self.JanuaServerSystem.UserProfile.User.id;
      qryMessages.ParamByName('p_from_id').Value := 0;
      qryMessages.Open;

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
        FMessages.Messages[i - 1].from_name := qryMessageslast_name.AsString + ' ' +
          qryMessagesfirst_name.AsString;
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
    self.FMessageCount := a.MessageCount;
  finally
    DestroyDataModule;
  end;
end;

end.
