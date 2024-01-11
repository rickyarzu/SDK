unit Janua.TMS.Cloud.Mail.VCL;

interface

{$I JANUACORE.INC}

uses System.SysUtils, System.Classes, Data.DB, System.Generics.Collections,
  // TMS FNC
  VCL.TMSFNCCustomComponent, VCL.TMSFNCCloudBase, VCL.TMSFNCCloudSendGrid, VCL.TMSFNCUtils,
  // Janua Intf / Commons
  Janua.Cloud.Types, Janua.Cloud.Mail.Intf, Janua.Orm.Intf, Janua.Core.System.Types,
  // Janua Implementations / Classes
  Janua.Core.Classes, Janua.Cloud.Mail.Conf, Janua.Cloud.Mail.Impl;

type
  { TJanuaTMSFNCCloudSendGrid = class(TTMSFNCCloudSendGrid)
    private
    FMailMessage: TJanuaMailMessage;
    procedure SetMailMessage(const Value: TJanuaMailMessage);
    public
    property MailMessage: TJanuaMailMessage read FMailMessage write SetMailMessage;
    end; }

  TJanuaTmsSendGridMailSender = class(TJanuaCustomMailSender, IJanuaMailSendGridSender, IJanuaMailSender)
  private
    FTMSFNCCloudSendGrid1: TTMSFNCCloudSendGrid;
  protected
    function SendMailInternal: Boolean; override;
    procedure SendMailError(Sender: TObject; AErrorMessage: string);
    procedure SendMailOK(Sender: TObject);
  public
    constructor Create; override;
    destructor Destroy; override;
    function TestMailServer: Boolean; override;
  end;

implementation

uses Janua.Application.Framework;

{ TJanuaTmsSendGridMailSender }

constructor TJanuaTmsSendGridMailSender.Create;
begin
  FSchemaKey := 'SendGridKey';
  inherited;
  FTMSFNCCloudSendGrid1 := TTMSFNCCloudSendGrid.Create(nil);
  FTMSFNCCloudSendGrid1.OnError := SendMailError;
  FTMSFNCCloudSendGrid1.OnSendSuccess := SendMailOK;
end;

destructor TJanuaTmsSendGridMailSender.Destroy;
begin
  try
    FTMSFNCCloudSendGrid1.Free;
  finally
    inherited;
  end;
end;

procedure TJanuaTmsSendGridMailSender.SendMailError(Sender: TObject; AErrorMessage: string);
begin
  var
  lError := AErrorMessage;

  if Assigned(FOnMailSendError) then
    FOnMailSendError(Self, lError, FMailMessage);
end;

function TJanuaTmsSendGridMailSender.SendMailInternal: Boolean;
var
  p: TTMSFNCCloudSendGridRecipient;
  bcc: TTMSFNCCloudSendGridBCC;
  cc: TTMSFNCCloudSendGridCC;
  c: TTMSFNCCloudSendGridContent;
begin
  Result := False;
  var
  lMailMessage := FMailMessage;

  FTMSFNCCloudSendGrid1.APIKey := FMailServerConf.APIKey;
  { FTMSFNCCloudSendGrid1.MailMessage := lMailMessage; }
  FTMSFNCCloudSendGrid1.Template.ReplyTo.Email := lMailMessage.ReplyTo;
  FTMSFNCCloudSendGrid1.Template.From.Email := lMailMessage.FromAddr;
  FTMSFNCCloudSendGrid1.Template.From.Name := lMailMessage.From;
  FTMSFNCCloudSendGrid1.Template.Subject := lMailMessage.Subject;

  FTMSFNCCloudSendGrid1.Template.CCList.Clear;
  if lMailMessage.cc <> '' then
  begin
    cc := TTMSFNCCloudSendGridCC.Create;
    cc.Email := lMailMessage.cc;
    FTMSFNCCloudSendGrid1.Template.CCList.Add(cc);
  end;

  FTMSFNCCloudSendGrid1.Template.BCCList.Clear;
  if lMailMessage.bcc <> '' then
  begin
    bcc := TTMSFNCCloudSendGridBCC.Create;
    bcc.Email := lMailMessage.bcc;
    FTMSFNCCloudSendGrid1.Template.BCCList.Add(bcc);
  end;

  FTMSFNCCloudSendGrid1.Template.RecipientsList.Clear;
  p := TTMSFNCCloudSendGridRecipient.Create;
  p.Email := lMailMessage.MailTo;
  FTMSFNCCloudSendGrid1.Template.RecipientsList.Add(p);

  FTMSFNCCloudSendGrid1.Template.content.Clear;
  c := TTMSFNCCloudSendGridContent.Create;
  c.ContentType := lMailMessage.ContentType;
  c.Value := lMailMessage.Text;
  FTMSFNCCloudSendGrid1.Template.content.Add(c);

  FTMSFNCCloudSendGrid1.SendMail;

  Result := True;

  if Assigned(FOnMailSendStart) then
    FOnMailSendStart(Self, 'Started Message: ', lMailMessage);

end;

procedure TJanuaTmsSendGridMailSender.SendMailOK(Sender: TObject);
begin
  if Assigned(FOnMailSendOK) then
    FOnMailSendOK(Self, 'Mail OK', FMailMessage);
end;

function TJanuaTmsSendGridMailSender.TestMailServer: Boolean;
begin
  Result := True;
end;

(*

  { TJanuaTMSFNCCloudSendGrid }

  procedure TJanuaTMSFNCCloudSendGrid.SetMailMessage(const Value: TJanuaMailMessage);
  begin
  FMailMessage := Value;
  end;
*)
initialization

// TJanuaTmsSendGridMailSender =  IJanuaMailSendGridSender, IJanuaMailSender
try
  TJanuaApplicationFactory.RegisterClass(IJanuaMailSendGridSender, TJanuaTmsSendGridMailSender);
except
  on e: Exception do
    raise Exception.Create('Janua TMS Cloud Mail Initialization: ' + e.message);
end;

end.
