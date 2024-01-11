unit Janua.Core.CRM;

interface

{$I JANUACORE.INC}

uses Classes, Janua.Core.Classes, Janua.Core.Servers, Janua.Legacy.Classes,
  System.JSON, System.JSONConsts, DB;

type
  TJanuaCoreCRMServer = class(TJanuaCustomServer)
  private
  public
  published
  end;

type
  /// <summary>
  /// This component helps an user to register his email address ana anagraph
  /// id to the central system
  /// </summary>
  TJanuaCoreCrmRegister = class(TJanuaCoreComponent)
  private
  public
  published
  end;

type
  TJanuaCoreCrmCampaign = class(TJanuaObject)
  private
    FSendingDate: TDateTime;
    FCampaignEmaiTest: TStringList;
    FCampaignName: string;
    FCampaignDate: TDateTime;
    FCampaignID: integer;
    procedure SetCampaignDate(const Value: TDateTime);
    procedure SetCampaignEmaiTest(const Value: TStringList);
    procedure SetCampaignID(const Value: integer);
    procedure SetCampaignName(const Value: string);
    procedure SetSendingDate(const Value: TDateTime);
  public
  published
    /// <summary>
    /// The unique ID of a sending campaign
    /// </summary>
    property CampaignID: integer read FCampaignID write SetCampaignID;

    /// <summary>
    /// Date of creation of campaign
    /// </summary>
    property CampaignDate: TDateTime read FCampaignDate write SetCampaignDate;

    /// <summary>
    /// Date and time the campaign started sending.
    /// </summary>
    property SendingDate: TDateTime read FSendingDate write SetSendingDate;
    property CampaignName: string read FCampaignName write SetCampaignName;
    property CampaignEmaiTest: TStringList read FCampaignEmaiTest write SetCampaignEmaiTest;

  end;

type
  TJanuaCustomCrmInvitation = class(TJanuaCoreComponent)
  private
    FInvitersEMail: string;
    FIsConfirmedEMail: boolean;
    FInvitedList: TStringList;
    procedure SetInvitedList(const Value: TStringList);
    procedure SetInvitersEMail(const Value: string);
    procedure SetIsConfirmedEMail(const Value: boolean);
  public
    procedure CheckEmailInvitations;
    procedure ConfirmEmail(aEmail: string);
    procedure ConfirmInvitation(aID: int64);
    procedure SendInvitations(aID: int64);
  published
    property IsConfirmedEMail: boolean read FIsConfirmedEMail write SetIsConfirmedEMail;
    property InvitersEMail: string read FInvitersEMail write SetInvitersEMail;
    property InvitedList: TStringList read FInvitedList write SetInvitedList;

  end;

type
  TJanuaCustomCRMSMSClient = class(TJanuaCoreComponent)
  private
    FSmsDataset: TDataset;
    FResource: TJanuaResource;
    procedure SetSmsDataset(const Value: TDataset);
    procedure SetResource(const Value: TJanuaResource);
  public
    procedure SendSingleSMS;

  published
    property SmsDataset: TDataset read FSmsDataset write SetSmsDataset;
    property Resource: TJanuaResource read FResource write SetResource;

  end;

implementation

{ TJanuaCoreCrmCampaign }

procedure TJanuaCoreCrmCampaign.SetCampaignDate(const Value: TDateTime);
begin
  FCampaignDate := Value;
end;

procedure TJanuaCoreCrmCampaign.SetCampaignEmaiTest(const Value: TStringList);
begin
  FCampaignEmaiTest := Value;
end;

procedure TJanuaCoreCrmCampaign.SetCampaignID(const Value: integer);
begin
  FCampaignID := Value;
end;

procedure TJanuaCoreCrmCampaign.SetCampaignName(const Value: string);
begin
  FCampaignName := Value;
end;



procedure TJanuaCoreCrmCampaign.SetSendingDate(const Value: TDateTime);
begin
  FSendingDate := Value;
end;

{ TJanuaCoreCrmInvitation }

procedure TJanuaCustomCrmInvitation.CheckEmailInvitations;
begin

end;

procedure TJanuaCustomCrmInvitation.ConfirmEmail(aEmail: string);
begin

end;

procedure TJanuaCustomCrmInvitation.ConfirmInvitation(aID: int64);
begin

end;

procedure TJanuaCustomCrmInvitation.SendInvitations(aID: int64);
begin

end;

procedure TJanuaCustomCrmInvitation.SetInvitedList(const Value: TStringList);
begin
  FInvitedList := Value;
end;

procedure TJanuaCustomCrmInvitation.SetInvitersEMail(const Value: string);
begin
  FInvitersEMail := Value;
end;

procedure TJanuaCustomCrmInvitation.SetIsConfirmedEMail(const Value: boolean);
begin
  FIsConfirmedEMail := Value;
end;

{ TJanuaCustomCRMSMS }

procedure TJanuaCustomCRMSMSClient.SendSingleSMS;
begin

end;

procedure TJanuaCustomCRMSMSClient.SetResource(const Value: TJanuaResource);
begin
  FResource := Value;
end;

procedure TJanuaCustomCRMSMSClient.SetSmsDataset(const Value: TDataset);
begin
  FSmsDataset := Value;
end;

end.
