unit Janua.Cloud.dmOpenAI;

interface

uses
  System.SysUtils, System.Classes
  // Janua
    , Janua.Core.DataModule, Janua.Bindings.Intf, Janua.Controls.Intf, Janua.Controls.Forms.Intf,
  Janua.Core.Classes.Intf, Janua.Core.Types, Janua.Orm.Intf, OpenAI, OpenAI.Component.Chat,
  OpenAI.Component.Functions;

type
  TdmCloudOpenAI = class(TJanuaCoreDataModule, IJanuaDataModule, IJanuaBindable)
    OpenAIChatFunctions1: TOpenAIChatFunctions;
    OpenAIChat1: TOpenAIChat;
    OpenAIClient1: TOpenAIClient;
    procedure OpenAIChat1BeginWork(Sender: TObject);
    procedure OpenAIChat1Chat(Sender: TObject; Event: TChat);
    procedure OpenAIChat1ChatDelta(Sender: TObject; Event: TChat; IsDone: Boolean);
    procedure OpenAIChat1EndWork(Sender: TObject);
    procedure OpenAIChat1Error(Sender: TObject; Error: Exception);
  private
    FBusy: Boolean;
    FMemoMessages: TStringList;
    FMessagesText: string;
    procedure SetBusy(const Value: Boolean);
    function GetBusy: Boolean;
    procedure SetMemoMessages(const Value: TStringList);
    procedure SetMessagesText(const Value: string);
    function GetMessagesText: string;
    { Private declarations }
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  public
    { Public declarations }
    property Busy: Boolean read GetBusy write SetBusy;
    property MemoMessages: TStringList read FMemoMessages write SetMemoMessages;
    property MessagesText: string read GetMessagesText write SetMessagesText;
  end;

var
  dmCloudOpenAI: TdmCloudOpenAI;

implementation

uses
  System.JSON, System.IOUtils, OpenAI.Chat, OpenAI.Utils.Base64;

{%CLASSGROUP 'System.Classes.TPersistent'}
{$R *.dfm}

constructor TdmCloudOpenAI.Create(AOwner: TComponent);
begin
  inherited;
  FMemoMessages := TStringList.Create
end;

destructor TdmCloudOpenAI.Destroy;
begin
  FMemoMessages.Free;
  inherited;
end;

function TdmCloudOpenAI.GetBusy: Boolean;
begin
  Result := FBusy;
end;

function TdmCloudOpenAI.GetMessagesText: string;
begin
  Result := MemoMessages.Text;
end;

{ TDataModule1 }

procedure TdmCloudOpenAI.OpenAIChat1BeginWork(Sender: TObject);
begin
  inherited;
  Busy := True;
end;

procedure TdmCloudOpenAI.OpenAIChat1Chat(Sender: TObject; Event: TChat);
begin
  inherited;
  MemoMessages.Add('Assistant: ' + Event.Choices[0].Message.Content);
  MemoMessages.Add('');
  Notify('MessagesText');
end;

procedure TdmCloudOpenAI.OpenAIChat1ChatDelta(Sender: TObject; Event: TChat; IsDone: Boolean);
begin
  inherited;
  if Assigned(Event) then
  begin
    if Event.Choices[0].FinishReason = TFinishReason.FunctionCall then
    begin
      MemoMessages.Add('Call function ' + Event.Choices[0].Delta.FunctionCall.Name);
    end
    else
      MemoMessages.Text := MemoMessages.Text + Event.Choices[0].Delta.Content;
  end;
  if IsDone then
    MemoMessages.Add('');
  Notify('MessagesText');
end;

procedure TdmCloudOpenAI.OpenAIChat1EndWork(Sender: TObject);
begin
  inherited;
  Busy := False;
end;

procedure TdmCloudOpenAI.OpenAIChat1Error(Sender: TObject; Error: Exception);
begin
  inherited;
  MemoMessages.Add('Error: ' + Error.Message);
  MemoMessages.Add('');
  Notify('MessagesText');
end;

procedure TdmCloudOpenAI.SetBusy(const Value: Boolean);
begin
  if FBusy <> Value then
  begin
    FBusy := Value;
    Notify('Busy');
  end;
end;

procedure TdmCloudOpenAI.SetMemoMessages(const Value: TStringList);
begin
  if Assigned(Value) then
    FMemoMessages.Assign(Value);
end;

procedure TdmCloudOpenAI.SetMessagesText(const Value: string);
begin
  FMessagesText := Value;
end;

end.
