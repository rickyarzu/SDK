unit Janua.Mock.MailSender;

interface

uses
  // Janua Intf / Commons
  Janua.Cloud.Types, Janua.Cloud.Mail.Intf, Janua.Orm.Intf, Janua.Core.System.Types,
  // Janua Implementations / Classes
  Janua.Core.Classes, Janua.Cloud.Mail.Conf, Janua.Cloud.Mail.Impl;

type
  TJanuaMockMailSender = class(TJanuaCustomMailSender, IJanuaMailSMTPSender, IJanuaMailINdySMTPSender,
    IJanuaMailSender, IJanuaMailSendGridSender)
  protected
    function SendMailInternal: Boolean; override;
  public
    function TestMailServer: Boolean; override;
  end;

implementation

uses System.SysUtils, Janua.Application.Framework;

{ TJanuaMockMailSender }

function TJanuaMockMailSender.SendMailInternal: Boolean;
begin
  Result := True;
end;

function TJanuaMockMailSender.TestMailServer: Boolean;
begin
  Result := True;
end;

initialization

try
  TJanuaApplicationFactory.RegisterClass(IJanuaMailSMTPSender, TJanuaMockMailSender);
  TJanuaApplicationFactory.RegisterClass(IJanuaMailINdySMTPSender, TJanuaMockMailSender);
  TJanuaApplicationFactory.RegisterClass(IJanuaMailSendGridSender, TJanuaMockMailSender);
except
  on e: Exception do
    raise Exception.Create('Janua Cloud Mail Indy Initialization: ' + e.Message);
end;

end.
