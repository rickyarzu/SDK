unit januamailcomponents;

interface

uses
  SysUtils, Classes, IdMessage, IdBaseComponent, Janualogger,
  IdComponent, IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase,
  idattachmentFile, IdSMTPBase, IdMessageClient, IdSMTP;

type TJanuaMailEncoding = (jmeHTML, jmeText);

type
  TJanuaMailSender = class(TComponent)
  private
    FsFrom: string;
    FSent: boolean;
    FsSubject: widestring;
    FsCC: string;
    FsAttach: string;
    FsError: string;
    FsBcc: string;
    FsText: widestring;
    FsTo: string;
    FsFromAddr: string;
    FTraceOn: boolean;
    FTestingFileName: string;
    FMailPassword: string;
    FMailUsername: string;
    FMailServer: string;
    { Private declarations }
        ErrFile    : TextFile ;
        riga       : String ;
        body       : String ;
        started    : boolean;
    FMailEncoding: TJanuaMailEncoding;
    FLogger: TJanuaLogger;
    procedure scrivifile(stringa: string);
    function SendMailInternal: boolean; 
    procedure SetsAttach(const Value: string);
    procedure SetsBcc(const Value: string);
    procedure SetsCC(const Value: string);
    procedure SetSent(const Value: boolean);
    procedure SetsError(const Value: string);
    procedure SetsFrom(const Value: string);
    procedure SetsFromAddr(const Value: string);
    procedure SetsSubject(const Value: widestring);
    procedure SetsText(const Value: widestring);
    procedure SetsTo(const Value: string);
    procedure SetTraceOn(const Value: boolean);
    procedure SetTestingFileName(const Value: string);
    procedure SetMailPassword(const Value: string);
    procedure SetMailUsername(const Value: string);
    function ConnettiSMTP( MailMessage: TidMessage ): Boolean;
    procedure SetMailServer(const Value: string);
    procedure SetMailEncoding(const Value: TJanuaMailEncoding);
    procedure SetLogger(const Value: TJanuaLogger);


  protected
    { Protected declarations }
  public
    { Public declarations }
     function SendMailMulti(vsTo, vsCC, vsBcc, vsAttach, vsText, vsSubject, vsFrom,
                            vsFromAddr: string; var serror: string): boolean;
    function SendMail: boolean;
    procedure Log(logmessage : string; e: Exception);
    constructor Create(AOwner: TComponent) ; override;
  published
    { Published declarations }
    property sTo: string read FsTo write SetsTo;
    property sCC: string read FsCC write SetsCC;
    property sBcc: string read FsBcc write SetsBcc;
    property sAttach: string read FsAttach write SetsAttach;
    property sText: widestring read FsText write SetsText;
    property sSubject: widestring read FsSubject write SetsSubject;
    property sFrom: string read FsFrom write SetsFrom;
    property sFromAddr: string read FsFromAddr write SetsFromAddr;
    property sError: string read FsError write SetsError;
    property Sent: boolean read FSent write SetSent;
    property TraceOn: boolean read FTraceOn write SetTraceOn;
    property TestingFileName: string read FTestingFileName write SetTestingFileName;
    property MailPassword: string read FMailPassword write SetMailPassword;
    property MailUsername: string read FMailUsername write SetMailUsername;
    property MailServer: string read FMailServer write SetMailServer;
    property MailEncoding: TJanuaMailEncoding read FMailEncoding write SetMailEncoding;
    property Logger : TJanuaLogger read FLogger write SetLogger;

   // property ErrorFile: string; 

  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('JanuaCore', [TJanuaMailSender]);
end;

{ TJanuaMailSender }

function TJanuaMailSender.ConnettiSMTP(MailMessage: TidMessage): Boolean;
var
 sbpwd: string;
begin


end;

constructor TJanuaMailSender.Create(AOwner: TComponent);
begin
  inherited;

end;

procedure TJanuaMailSender.Log(logmessage: string; e: Exception);
begin
  if Assigned(self.FLogger) then
  begin
    FLogger.LogMessage := logmessage;
    FLogger.E := E;
    FLogger.LogType := Janualogger.jltError;
  end;

end;

procedure TJanuaMailSender.scrivifile(stringa: string);
begin
try
 try
   Assignfile(ErrFile,'C:\januaproject\log\mailsend.log') ;
   If FileExists('C:\januaproject\log\mailsend.log') then
   Append(ErrFile)
  else
    Rewrite(ErrFile) ;
    WriteLn(ErrFile, stringa) ;
    CloseFile(ErrFile) ;
 finally
    CloseFile(ErrFile) ;
 end;
except on e: exception do
  begin
    self.Log('TJanuaMailSender.scrivifile', e);
  end;
end;
end;

function TJanuaMailSender.SendMail: boolean;
begin
try
   Result := SendMailInternal;
except on e: exception do
  begin
    self.Log('TJanuaMailSender.SendMail', e);
  end;
end;
end;

function TJanuaMailSender.SendMailInternal: boolean;
var
  MioMsg : TIdMessage;
  i: integer;
  Vbpwd: boolean;
  Mail : TIdSMTP;
begin
  try
   Vbpwd := True;
   FTestingFileName := 'MailAndFax';

   if FMailServer = '' then FMailServer := 'mail.januaproject.it';

   scrivifile(DateTimeToStr(Now()) +  'smtpServer: ' + FMailServer);


   scrivifile(
                  sLineBreak + DateTimeToStr(Now()) + '***************** SendMailMulti: Invio Mail' + sTo
                 + sLineBreak + 'oggetto: ' + FsSubject + sLineBreak
                 + sLineBreak + 'invio mail via: ' + FMailServer + sLineBreak
                 + sLineBreak + 'attachment: ' + FsAttach + sLineBreak +
                 '************************************************************');
   Mail := TIdSMTP.Create(self);
   try
      if Vbpwd then
      begin
          if FMailPassword = '' then  FMailPassword := 'f4nkul0';
          if FMailServer = '' then  FMailServer := 'mail.januaproject.it';
          if FMailUsername = '' then  FMailUsername := 'riccardo.arduino@januaproject.it';
          Mail.Password := FMailPassword;
          Mail.Username := FMailUsername;
          Mail.AuthType :=  satDefault
      end
      else
           Mail.AuthType := satNone;

      // creo il messaggio
      MioMsg := TIdMessage.create( nil );

      MioMsg.IsEncoded := True;
      MioMsg.Subject := FsSubject;
      if FMailEncoding  = jmeHTML then MioMsg.ContentType := 'text/html'; 
      
      // oggetto della mail

      MioMsg.Body.Text := FsText;
      // testo del corpo del messaggio

      MioMsg.CCList.EMailAddresses := FsCC;
      // copia conoscenza

      MioMsg.BccList.EMailAddresses := FsBCC;
     // copia conoscenza nascosta


      MioMsg.Recipients.EMailAddresses := FsTo;
     // destinatario

      MioMsg.From.Address := FsFromAddr;
     // mittente indirzzo mail

      MioMsg.From.Name :=  FsFrom;
    //  nome del mittente

   //  JShowWarning('Attachment: ' +  sAttach,'','');
   //   for I := Low(sAttach) to High(sAttach) do
        if TRIM(FsAttach) > '' then
        begin
          TIdAttachmentFile.Create(MioMsg.MessageParts, FsAttach);
           scrivifile(sLineBreak + '**** inserito attach: ' +  FsAttach + sLineBreak +
                 '************************************************************');
        end;

   // provo a spedirlo
    result := True;
    FTestingFileName := 'MailAndFax';
    if FMailServer = '' then FMailServer := 'mail.januaproject.it' ;
    Scrivifile(
                  sLineBreak + DateTimeToStr(Now()) + '***************** ConnettiSMTP: Invio Mail'
                 + sLineBreak + 'invio mail via: ' + FMailServer + sLineBreak +
                 'username : ' + Mail.Username + sLineBreak +
                 'password : ' + Mail.Password + sLineBreak +
                 '************************************************************');
    Mail.Host := FMailServer;
    try
      Mail.Connect;
      Mail.Send(MioMsg);
      Result := Mail.Connected;
    except
      on e: exception do
      begin
            Mail.Disconnect;
            serror := e.Message;
            if pos('501',Uppercase(e.message)) > 0 then scrivifile ('Attenzione, errata sintassi nella mail: ' +
                       MioMsg.Recipients.EMailAddresses )
            else if pos('Socket Error # 11004',e.message)> 0 then
            begin
              scrivifile ('Non è stato possibile inviare questo messaggio di posta elettronica o fax per un problema temporaneo di comunicazione con il server INTERNET: Socket Error # 11004');
              scrivifile ('Provate a re-inviare tra poco questo ultimo documento');
            end
            else if pos('550', e.message) > 0 then
            begin
              scrivifile ('Attenzione il server di posta ha riconosciuto che questo indirizzo email non esiste, è scritto correttamente ma non corrisponde a nessuno sul database di posta: ' +
                          MioMsg.Recipients.EMailAddresses) ;
              scrivifile (e.Message);
            end
            else
            begin
               scrivifile ('Attenzione problema di connessione con il server di posta' + sLineBreak + e.message);
            end;
      end;
    end;
    Mail.Disconnect;
   finally
     FreeAndNil(MioMsg);
     FreeAndNil(Mail);
   end;
  except on e:exception do
   begin
      self.Log('TJanuaMailSender.SendMailMulti', e);
   end;
  end;
end;

function TJanuaMailSender.SendMailMulti(vsTo, vsCC, vsBcc, vsAttach, vsText,
  vsSubject, vsFrom, vsFromAddr: string; var serror: string): boolean;
begin
  try
   FsTo := vsTo;
   FsCC := vsCC;
   FsBcc := vsBcc;
   FsAttach := vsAttach;
   FsText := vsText;
   FsSubject := vsSubject;
   FsFrom := vsFrom;
   FsFromAddr  := vsFromAddr;
   Result := SendMailInternal;
  except on e: exception do
    begin
    self.Log('TJanuaMailSender.SendMailMulti', e);
    end;
  end;
end;


procedure TJanuaMailSender.SetLogger(const Value: TJanuaLogger);
begin
  FLogger := Value;
end;

procedure TJanuaMailSender.SetMailEncoding(const Value: TJanuaMailEncoding);
begin
  FMailEncoding := Value;
end;

procedure TJanuaMailSender.SetMailPassword(const Value: string);
begin
  FMailPassword := Value;
end;

procedure TJanuaMailSender.SetMailServer(const Value: string);
begin
  FMailServer := Value;
end;

procedure TJanuaMailSender.SetMailUsername(const Value: string);
begin
  FMailUsername := Value;
end;

procedure TJanuaMailSender.SetsAttach(const Value: string);
begin
  FsAttach := Value;
end;

procedure TJanuaMailSender.SetsBcc(const Value: string);
begin
  FsBcc := Value;
end;

procedure TJanuaMailSender.SetsCC(const Value: string);
begin
  FsCC := Value;
end;

procedure TJanuaMailSender.SetSent(const Value: boolean);
begin
  FSent := Value;
end;

procedure TJanuaMailSender.SetsError(const Value: string);
begin
  FsError := Value;
end;

procedure TJanuaMailSender.SetsFrom(const Value: string);
begin
  FsFrom := Value;
end;

procedure TJanuaMailSender.SetsFromAddr(const Value: string);
begin
  FsFromAddr := Value;
end;


procedure TJanuaMailSender.SetsSubject(const Value: widestring);
begin
  FsSubject := Value;
end;

procedure TJanuaMailSender.SetsText(const Value: widestring);
begin
  FsText := Value;
end;

procedure TJanuaMailSender.SetsTo(const Value: string);
begin
  FsTo := Value;
end;


procedure TJanuaMailSender.SetTestingFileName(const Value: string);
begin
  FTestingFileName := Value;
end;

procedure TJanuaMailSender.SetTraceOn(const Value: boolean);
begin
  FTraceOn := Value;
end;

end.
