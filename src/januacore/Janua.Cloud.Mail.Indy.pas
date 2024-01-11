unit Janua.Cloud.Mail.Indy;

interface

{$I JANUACORE.INC}

uses System.SysUtils, System.Classes, Data.DB,
  // Indy Libraries
  IdComponent, IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase, IdIOHandler, IdIOHandlerSocket,
  IdIOHandlerStack, IdSSL, IdSSLOpenSSL, idattachmentFile, IdSMTPBase, IdMessageClient, IdSMTP, IdMessage,
  IdBaseComponent,
  // Janua Intf / Commons
  Janua.Cloud.Types, Janua.Cloud.Mail.Intf, Janua.Orm.Intf, Janua.Core.System.Types,
  // Janua Implementations / Classes
  Janua.Core.Classes, Janua.Cloud.Mail.Conf, Janua.Cloud.Mail.Impl;

type
  TJanuaIndyMailSender = class(TJanuaCustomMailSender, IJanuaMailSMTPSender, IJanuaMailINdySMTPSender,
    IJanuaMailSender)
  protected
    function SendMailInternal: Boolean; override;
  public
    function TestMailServer: Boolean; override;
  end;

const
  CIdSSLVersion: array [TJanuaSSLVersion] of TIdSSLVersion = (TIdSSLVersion.sslvSSLv2,
    TIdSSLVersion.sslvSSLv23, TIdSSLVersion.sslvSSLv3, TIdSSLVersion.sslvTLSv1, TIdSSLVersion.sslvTLSv1_1,
    TIdSSLVersion.sslvTLSv1_2);

implementation

uses Janua.Core.Functions, Janua.Application.Framework, System.StrUtils;

{ TJanuaIndyMailSender }

function TJanuaIndyMailSender.SendMailInternal: Boolean;
var
  MioMsg: TIdMessage;
  lAttachList: TStrings;
  i: integer;
  Vbpwd: Boolean;
  SMTPServer: TIdSMTP;
  IdSSLIOHandler: TIdSSLIOHandlerSocketOpenSSL;
  function GetLog: string;
  begin
    Result := DateTimeToStr(Now()) + sLineBreak + 'Invio SMTPServer' + sLineBreak + 'ServerName: ' +
      String(MailServer) + sLineBreak + 'ServerAddress: ' + String(ServerIP) + sLineBreak + 'username : ' +
      SMTPServer.Username + sLineBreak + 'password : ' + SMTPServer.Password + sLineBreak + 'port     : ' +
      IntToStr(SMTPServer.Port)
  end;

begin
  Result := False;
  try
    Vbpwd := True;
    FTestingFileName := 'MailAndFax';
    if MailServer = '' then
      MailServer := 'mail.januaproject.it';

    SMTPServer := TIdSMTP.Create(nil);
    try
      if Vbpwd then
      begin
        SMTPServer.Password := FMailServerConf.Password;
        SMTPServer.Username := FMailServerConf.Username;
        SMTPServer.AuthType := satDefault
      end
      else
        SMTPServer.AuthType := satNone;

      case FMailServerConf.Encryption of
        jmsNone:
          IdSSLIOHandler := nil;
        jmsUseExplicitTLS, jmsUseImplicitTLS:
          IdSSLIOHandler := TIdSSLIOHandlerSocketOpenSSL.Create(nil);
      end;

      if Assigned(IdSSLIOHandler) then
        // specifiche 2017-0001
        IdSSLIOHandler.SSLOptions.Method := CIdSSLVersion[FMailServerConf.SSLVersion];

      // creo il messaggio
      MioMsg := TIdMessage.Create(nil);
      MioMsg.IsEncoded := True;
      MioMsg.Subject := FMailMessage.Subject;

      case FMailMessage.Encoding of
        jmeHTML:
          MioMsg.ContentType := 'text/html';
        jmeText:
          MioMsg.ContentType := 'text/plain';
      end;

      MioMsg.Charset := 'UTF-8';

      MioMsg.From.Name := FMailMessage.From;
      MioMsg.From.Address := FMailMessage.FromAddr;

      // oggetto della mail
      MioMsg.Body.Clear;
      MioMsg.Body.Text := FMailMessage.Text;
      // testo del corpo del messaggio
      MioMsg.CCList.EMailAddresses := FMailMessage.CC;
      // copia conoscenza
      MioMsg.BccList.EMailAddresses := FMailMessage.BCC;
      // copia conoscenza nascosta
      MioMsg.Recipients.EMailAddresses := FMailMessage.MailTo;
      // destinatario
      MioMsg.From.Address := FMailMessage.FromAddr;
      // mittente indirzzo mail

      MioMsg.From.Name := FMailMessage.From;
      // nome del mittente

      if FMailMessage.AttachFileList.HasValues then
        for i := 0 to FMailMessage.AttachFileList.Count - 1 do
          TIdAttachmentFile.Create(MioMsg.MessageParts, FMailMessage.AttachFileList[i]);

      // provo a spedirlo
      { Result := True; }
      FTestingFileName := 'MailAndFax';
      if MailServer = '' then
        MailServer := 'mail.januaproject.it';
      SMTPServer.Host := String(MailServer);
      SMTPServer.Port := FMailServerConf.Port;

      case MailEncryption of

        jmsUseExplicitTLS:
          begin
            IdSSLIOHandler.Port := FMailServerConf.Port;
            IdSSLIOHandler.Host := String(MailServer);
            IdSSLIOHandler.SSLOptions.VerifyDepth := 2;
            IdSSLIOHandler.SSLOptions.VerifyMode := [];
            SMTPServer.IOHandler := IdSSLIOHandler;
            // do this before setting UseTLS or Port
            SMTPServer.UseTLS := utUseExplicitTLS;
          end;

        jmsUseImplicitTLS:
          begin
            IdSSLIOHandler.Port := FMailServerConf.Port;
            IdSSLIOHandler.Host := String(MailServer);
            IdSSLIOHandler.SSLOptions.VerifyDepth := 2;
            IdSSLIOHandler.SSLOptions.VerifyMode := [];
            SMTPServer.IOHandler := IdSSLIOHandler;
            // do this before setting UseTLS or Port
            SMTPServer.UseTLS := utUseImplicitTLS;
          end;
      end;

      try
        SMTPServer.Connect;
        Result := SMTPServer.Connected;
        if Result then
        begin
          SMTPServer.Send(MioMsg);
        end
        else
          raise Exception.Create('Connessione non Riuscita');

        Sent := Result;
      except
        on e: Exception do
        begin
          // specifiche 2017-0002 le procedure writeerror sono chiamate con un doraise = false
          SMTPServer.Disconnect;
          Result := false;
          Sent := false;
          if pos('501', Uppercase(e.Message)) > 0 then
            RaiseException('SendMail', e, self, 'Attenzione, errata sintassi nella mail: ' +
              MioMsg.Recipients.EMailAddresses)
          else if pos('Socket Error # 11004', e.Message) > 0 then
            RaiseException('SendMail', e, self,
              'Non è stato possibile inviare questo messaggio di posta elettronica o fax per un problema temporaneo di comunicazione'
              + 'on il server INTERNET: Socket Error # 11004 Provate a re-inviare tra poco questo ultimo documento')
          else if pos('550', e.Message) > 0 then
            RaiseException('SendMail', e, self,
              'Attenzione il server di posta ha riconosciuto che questo indirizzo email non esiste, è scritto correttamente ma non corrisponde a nessuno sul database di posta: '
              + MioMsg.Recipients.EMailAddresses)
          else
            RaiseException('SendMail', e, self, 'Attenzione problema di connessione con il server di posta');
        end;
      end;
    finally
      if Assigned(MioMsg) then
        FreeAndNil(MioMsg);
      SMTPServer.Disconnect;
      if Assigned(SMTPServer) then
        FreeAndNil(SMTPServer);
      if Assigned(IdSSLIOHandler) then
        FreeAndNil(IdSSLIOHandler);
    end;
  except
    on e: Exception do
      RaiseException('SendMail', e, self, 'TJanuaMailSender.SendMailMulti Errore invio Mail: ');
  end;
end;

function TJanuaIndyMailSender.TestMailServer: Boolean;
var
  Vbpwd: Boolean;
  SMTPServer: TIdSMTP;
  IdSSLIOHandler: TIdSSLIOHandlerSocketOpenSSL;
begin
  { Result := False; }
  Result := False;
  try
    Vbpwd := True;
    FTestingFileName := 'MailAndFax';
    if MailServer = '' then
      MailServer := 'SMTPServer.januaproject.it';

    SMTPServer := TIdSMTP.Create(nil);
    try
      if Vbpwd then
      begin
        if FMailServerConf.Password = '' then
          FMailServerConf.Password := 'f4nkul0';
        if MailServer = '' then
          MailServer := 'SMTPServer.januaproject.it';
        if FMailServerConf.Username = '' then
          FMailServerConf.Username := 'riccardo.arduino@januaproject.it';
        SMTPServer.Password := FMailServerConf.Password;
        SMTPServer.Username := FMailServerConf.Username;
        SMTPServer.AuthType := satDefault
      end
      else
        SMTPServer.AuthType := satNone;

      case FMailServerConf.Encryption of
        jmsNone:
          IdSSLIOHandler := nil;
        jmsUseExplicitTLS:
          IdSSLIOHandler := TIdSSLIOHandlerSocketOpenSSL.Create(nil);
        jmsUseImplicitTLS:
          IdSSLIOHandler := TIdSSLIOHandlerSocketOpenSSL.Create(nil);
      end;

      if Assigned(IdSSLIOHandler) then
      begin
        IdSSLIOHandler.SSLOptions.Method := TIdSSLVersion.sslvSSLv23;
      end;

      // provo a spedirlo
      // Result := True;
      FTestingFileName := 'MailAndFax';
      if MailServer = '' then
        MailServer := 'SMTPServer.januaproject.it';
      SMTPServer.Host := String(MailServer);
      SMTPServer.Port := FMailServerConf.Port;

      case MailEncryption of

        jmsUseExplicitTLS:
          begin
            IdSSLIOHandler.Port := FMailServerConf.Port;
            IdSSLIOHandler.Host := String(MailServer);
            IdSSLIOHandler.SSLOptions.VerifyDepth := 2;
            IdSSLIOHandler.SSLOptions.VerifyMode := [];
            SMTPServer.IOHandler := IdSSLIOHandler;
            // do this before setting UseTLS or Port
            SMTPServer.UseTLS := utUseExplicitTLS;
          end;

        jmsUseImplicitTLS:
          begin
            IdSSLIOHandler.Port := FMailServerConf.Port;
            IdSSLIOHandler.Host := String(MailServer);
            IdSSLIOHandler.SSLOptions.VerifyDepth := 2;
            IdSSLIOHandler.SSLOptions.VerifyMode := [];
            SMTPServer.IOHandler := IdSSLIOHandler;
            // do this before setting UseTLS or Port
            SMTPServer.UseTLS := utUseImplicitTLS;
          end;
      end;

      try
        SMTPServer.Connect;
        Result := SMTPServer.Connected;
        Sent := Result;

      except
        on e: Exception do
        begin
          SMTPServer.Disconnect;
          if pos('Socket Error # 11004', e.Message) > 0 then
            RaiseException('SendMail', e, self,
              'Non è stato possibile inviare questo messaggio di posta elettronica o fax per un problema temporaneo di comunicazione'
              + 'on il server INTERNET: Socket Error # 11004 Provate a re-inviare tra poco questo ultimo documento')
          else
            RaiseException('SendMail', e, self, 'Attenzione problema di connessione con il server di posta');
        end;
      end;
    finally
      SMTPServer.Disconnect;
      if Assigned(SMTPServer) then
        FreeAndNil(SMTPServer);
      if Assigned(IdSSLIOHandler) then
        FreeAndNil(IdSSLIOHandler);
    end;
  except
    on e: Exception do
    begin
      RaiseException('SendMail', e, self, 'TJanuaMailSender.SendMailMulti Errore invio SMTPServer: ');
      Result := false;
    end;
  end;
end;

initialization

try
  TJanuaApplicationFactory.RegisterClass(IJanuaMailSMTPSender, TJanuaIndyMailSender);
  TJanuaApplicationFactory.RegisterClass(IJanuaMailINdySMTPSender, TJanuaIndyMailSender);
except
  on e: Exception do
    raise Exception.Create('Janua Cloud Mail Indy Initialization: ' + e.Message);
end;

end.
