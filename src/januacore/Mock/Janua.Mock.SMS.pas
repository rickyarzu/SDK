unit Janua.Mock.SMS;

interface

uses System.Classes, System.SysUtils, Janua.Cloud.SMS.Intf, Janua.Cloud.SMS.Impl;

type
  TSMSTwilioMock = class(TCustomSMSSender, IJanuaSMSSender, IJanuaSMSTwilio)
  public
    procedure SendSMS(aUpdateProc: TUpdateProc; aErrorProc: TExceptionProc; aFinishProc: TProc); override;
  public
    constructor Create; override;
    destructor Destroy; override;
  end;

implementation

uses Janua.Application.Framework;

{ TSMSTwilioMock }

constructor TSMSTwilioMock.Create;
begin
  inherited;
  LoadSystemConf;
end;

destructor TSMSTwilioMock.Destroy;
begin

  inherited;
end;

procedure TSMSTwilioMock.SendSMS(aUpdateProc: TUpdateProc; aErrorProc: TExceptionProc; aFinishProc: TProc);
begin
  var
  lLogProc := Assigned(FLogProc);

  var
  lSMS := GetSMSMessage;

  if GetRecipients.Count = 0 then
    if lLogProc then
      FLogProc('SendSMS', '{"level" : "ERROR", "message" : "no recipients for SMS ' + lSMS + '"', self);

  for var I := 0 to Pred(GetRecipients.Count) do
    try
      if Assigned(aUpdateProc) then
        aUpdateProc(I, Recipients[I]);
      if lLogProc then
        FLogProc('SendSMS', '{"level" : "INFO", "phone" : "' + Recipients[I] + '", "message" : "' + lSMS +
          '"', self);
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
end;

initialization

try
  // TSMSTwilioSender = class(TCustomSMSSender, IJanuaSMSSender, IJanuaSMSTwilio)
  TJanuaApplicationFactory.RegisterClass(IJanuaSMSTwilio, TSMSTwilioMock);
  TJanuaApplicationFactory.RegisterClass(IJanuaSMSSender, TSMSTwilioMock);
except
  on e: Exception do
    raise Exception.Create('TMS.SMS.Initialization ' + e.Message);
end;

end.
