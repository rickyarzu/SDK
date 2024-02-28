unit Janua.TMS.SMS;

interface

uses System.Classes, System.SysUtils, Janua.Cloud.SMS.Intf, Janua.Cloud.SMS.Impl, Janua.Cloud.Types;

type
  TSMSTwilioSender = class(TCustomSMSSender, IJanuaSMSSender, IJanuaSMSTwilio)
  public
    procedure SendSMS(aUpdateProc: TUpdateProc; aErrorProc: TExceptionProc; aFinishProc: TProc); override;
  public
    constructor Create; override;
    destructor Destroy; override;
  end;

implementation

uses {Janua.Core.Types,} CloudBase, CloudSMS, Janua.Application.Framework;

{ TSMSTwilioSender }

constructor TSMSTwilioSender.Create;
begin
  inherited;
  // At Least Conf Name must be set to properly Run Configuration
  Key := 'AC221a150df22723daef8d097a7f76cfcf';
  Secret := 'f3c90112efdccd931b81dea46f74f1da';
  AppName := '+393513535778' { '+15302036772' };
  FMessageType := jmtWhatsApp;
  LoadSystemConf;

  {
    AC221a150df22723daef8d097a7f76cfcf
    MGa44a619c3b765b376c2f42eb691e4033
    +19498326448
  }
end;

destructor TSMSTwilioSender.Destroy;
begin
  inherited;
end;

procedure TSMSTwilioSender.SendSMS(aUpdateProc: TUpdateProc; aErrorProc: TExceptionProc; aFinishProc: TProc);
var
  AdvTwilio: TAdvTwilio;
begin
  AdvTwilio := TAdvTwilio.Create(nil);
  try
    var
    lLogProc := Assigned(FLogProc);

    AdvTwilio.App.Key := GetKey;
    // 'AC221a150df22723daef8d097a7f76cfcf';
    AdvTwilio.App.Secret := GetSecret;
    // 'f3c90112efdccd931b81dea46f74f1da';
    AdvTwilio.App.Name := GetAppName;
    // '+15302036772';
    var
    lSMS := GetSMSMessage;

    if GetRecipients.Count = 0 then
      if lLogProc then
        FLogProc('SendSMS', '{"level" : "ERROR", "message" : "no recipients for Message ' + lSMS + '"', self);

    for var I := 0 to Pred(GetRecipients.Count) do
      try
        var
        lRecipient := Recipients[I];
        if FMessageType = jmtWhatsApp then
          lRecipient := 'whatsapp:' + lRecipient;

        if AdvTwilio.SendSMS(lRecipient, lSMS) then
        begin
          if Assigned(aUpdateProc) then
            aUpdateProc(I, Recipients[I]);
          if lLogProc then
            FLogProc('SendSMS', '{"level" : "INFO", "phone" : "' + Recipients[I] + '", "message" : "' + lSMS +
              '"', self);
        end
        else
        begin
          if lLogProc then
            FLogProc('SendSMS', '{"level" : "ERROR", "phone" : "' + Recipients[I] + '", "message" : "' + lSMS
              + '", "log" : ' + AdvTwilio.LastError, self);
          raise Exception.Create('Error sending Message' + sLineBreak + AdvTwilio.LastError);
        end;
      except
        on e: Exception do
        begin
          if Assigned(aErrorProc) then
            aErrorProc(e, Recipients[I])
          else
            raise
        end;
      end;

    if Assigned(aFinishProc) then
      aFinishProc;
    // '+393479392209'
  finally
    AdvTwilio.Free;
  end;
end;

initialization

try
  // TSMSTwilioSender = class(TCustomSMSSender, IJanuaSMSSender, IJanuaSMSTwilio)
  TJanuaApplicationFactory.RegisterClass(IJanuaSMSTwilio, TSMSTwilioSender);
  TJanuaApplicationFactory.RegisterClass(IJanuaSMSSender, TSMSTwilioSender);
except
  on e: Exception do
    raise Exception.Create('TMS.SMS.Initialization ' + e.Message);
end;

end.
