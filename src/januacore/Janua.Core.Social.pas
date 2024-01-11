unit Janua.Core.Social;

{$I JANUACORE.INC}

interface

uses Janua.Core.Classes, Janua.Core.Servers, Janua.Core.System,
  Janua.Core.Functions;

type
  TMessage = record
    message_id: int64;
    from_id: integer;
    from_name: string;
    to_id: integer;
    to_name: string;
    Text: string;
    read: boolean;
    subject: string;
    from_Text: string; // riporta il testo del messaggio a cui sto rispondendo
    from_message_id: int64;
    sent_datetime: TDateTime;
    ShortText: string;
  public
    function ToString: string;
    procedure Reset;
  end;

type
  TJanuaSocialRecord = record
    Messages: array of TMessage;
  end;

type
  TJanuaCustomServerSocial = class(TJanuaCustomDBServer)
  private
    FJanuaServerSystem: TJanuaCustomServerSystem;
    procedure SetJanuaServerSystem(const Value: TJanuaCustomServerSystem);
  strict protected
    function InternalActivate: boolean; override;
  protected
    FMessageCount: integer;
    FLastMessageID: int64;
  published
    property MessageCount: integer read FMessageCount;
    property LastMessageID: int64 read FLastMessageID;
    property JanuaServerSystem: TJanuaCustomServerSystem read FJanuaServerSystem write SetJanuaServerSystem;
  end;

implementation

uses System.SysUtils, Janua.Application.Framework;

{ TMessage }

procedure TMessage.Reset;
begin
  self.message_id := 0;
  self.from_id := 0;
  self.from_name := '';
  self.to_id := 0;
  self.to_name := '';
  self.Text := '';
  self.read := false;
  self.from_Text := '';
  self.from_message_id := 0;
  self.ShortText := '';
end;

function TMessage.ToString: string;
begin
  Result := 'To: ' + self.to_name + sLineBreak + 'From: ' + self.from_name + sLineBreak + 'Subject: ' + self.subject +
    sLineBreak + 'Text: ' + sLineBreak + self.Text;
end;

{ TJanuaCustomServerSocial }

function TJanuaCustomServerSocial.InternalActivate: boolean;
begin
  Result := Active;
  if not Result then
    try
      Result := inherited and Assigned(FJanuaServerSystem) and FJanuaServerSystem.Active;
      if Result then
      begin
        Result := false;
        self.SessionKey := self.FJanuaServerSystem.SessionKey;
        self.FJanuaServerSession := self.FJanuaServerSystem.JanuaServerSession;
        Result := True;
      end;
    except
      on e: exception do
         RaiseException('InternalActivate', E, Self);
    end;

end;

procedure TJanuaCustomServerSocial.SetJanuaServerSystem(const Value: TJanuaCustomServerSystem);
begin
  FJanuaServerSystem := Value;
end;

end.
