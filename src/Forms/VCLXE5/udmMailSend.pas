unit udmMailSend;

interface

uses
  SysUtils, Classes, IdMessage, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase,
  IdSMTP, DB, OraSmart, MemDS, DBAccess, Ora,  idattachmentFile,
  januacorefunctions, JanuaSystem, JanuaDialogs;

type
  TdmSendMail = class(TDataModule)
    Mail: TIdSMTP;
    MailMessage: TIdMessage;
    qryMail: TOraQuery;
    qryMailMS_SEND_ID: TFloatField;
    qryMailMS_TO: TWideStringField;
    qryMailMS_CC: TWideStringField;
    qryMailMS_BCC: TWideStringField;
    qryMailMS_TEXT: TWideStringField;
    qryMailMS_OBJECT: TWideStringField;
    qryMailINSERT_DATE: TDateTimeField;
    qryMailUPDATE_DATE: TDateTimeField;
    qryMailUSER_INSERT: TWideStringField;
    qryMailUSER_UPDATE: TWideStringField;
    qryMailMS_OWNER: TWideStringField;
    qryMailMS_SENT: TWideStringField;
    tbMailAttach: TOraTable;
    tbMailAttachMS_SEND_ID: TFloatField;
    tbMailAttachMAIL_ATTACH_ID: TFloatField;
    tbMailAttachMAIL_ATTACH_FILENAME: TWideStringField;
    tbMailAttachMAIL_ATTACH_BLOB: TBlobField;
    dsMail: TOraDataSource;
    sesTest: TOraSession;
    JanuaSystem1: TJanuaSystem;
    JanuaDialog1: TJanuaDialog;

    //********** email *********************************************************
    procedure SendFax(faxnumber: string; attachfile: string);
    function SendMail(sTo: string; sCC: string; sAttach: string; sText: string;
                       sSubject: string; sFrom: string; sFromAddr: string;
                       bpwd: boolean; susername: string; spassword: string
                       ;SmtpServer: string): boolean;

    function  SendMailMulti(sTo: string; sCC: string;
                       sAttach: array of string;  sText: string;
                       sSubject: string; sFrom: string; sFromAddr: string;
                       bpwd: boolean; susername: string; spassword: string
                       ;SmtpServer: string; var serror: string): boolean;

    function SendMailMultiDB(sTo: string; sCC: string;
                       sAttach: array of string;  sText: string;
                       sSubject: string; sFrom: string; sFromAddr: string;
                       var serror: string): boolean;
                       
    function  SendMailStatic(sTo: string; sCC: string; sAttach: string; sText: string;
                       sSubject: string; sFrom: string; sFromAddr: string;
                       bpwd: boolean; susername: string; spassword: string
                       ;SmtpServer: string): boolean;

    procedure writeerror (writeText: string);

   procedure WriteFileText(writeText: string);
    procedure tbMailAttachNewRecord(DataSet: TDataSet);

  private
        FMailDatabase: boolean;
        FTestingFileName: string;
        FSilent: boolean;
    FMailServer: string;
    FMailUsername: string;
    FMailPassword: string;
    FMailAutentication: boolean;
    FMailError: string;
    FOraSession: TOraSession;
    FJanuaSystem: TJanuaSystem;
   function ConnettiSMTP( SmtpServer: string; MailMessage: TidMessage; var serror: string ): Boolean;
    procedure SetMailError(const Value: string);
    procedure SetOraSession(const Value: TOraSession);
    procedure SetJanuaSystem(const Value: TJanuaSystem);

    { Private declarations }
  public
    { Public declarations }

  published
    property Silent: boolean read FSilent write FSilent;
    //************ specifiche 2008-0045 MAIL SERVER ****************************
    property MailServer: string read FMailServer write FMailServer;
    property MailUsername: string   read FMailUsername write FMailUsername;
    property MailPassword: string   read FMailPassword write FMailPassword;
    property MailAutentication: boolean   read FMailAutentication write FMailAutentication;
    property MailDatabase: boolean read FMailDatabase write FMailDatabase;
    property MailError: string read FMailError write SetMailError;
    property OraSession: TOraSession read FOraSession write SetOraSession;
    property JanuaSystem: TJanuaSystem read FJanuaSystem write SetJanuaSystem;
  end;

var
  dmSendMail: TdmSendMail;

implementation

procedure  TdmSendMail.SendFax(faxnumber: string; attachfile: string);
var
  Risultato: boolean;
begin
   Risultato :=  SendMail
             (faxnumber + '@fwfax.it' // destinatario
             , ''  // intestazione e cc
             , attachfile,  // attach
             '' , // text
             '[MailAndFax]',  // subject
             'riccardo.arduino@fastwebnet.it',  // mail from address
             'riccardo.arduino@fastwebnet.it'  // mailfrom
             , True  // autentication
             , 'riccardo.arduino@fastwebnet.it'  // fax username
             , 'f4nkul0' // fax password
             , 'smtp.fastwebnet.it' // smtpserver
           );
     FJanuaSystem.WriteFileText(DateTimeToStr(Now()) + ' ' + 'Inviato Fax: ' + faxnumber);

end;

procedure TdmSendMail.writeerror (writeText: string);
begin
 FTestingFileName := 'error';
 WriteFileText(writeText);
end;

procedure TdmSendMail.WriteFileText(writeText: string);
var
   ErrFile    : TextFile ;
begin
   //***************************************************************************
   //******* Procedura di scrittura dello unit.testing *************************
   //***************************************************************************
 Assignfile(ErrFile,FTestingFileName) ;
 If FileExists(FTestingFileName) then
  Append(ErrFile)
 else
  Rewrite(ErrFile) ;
  WriteLn(ErrFile,writeText) ;
  CloseFile(ErrFile) ;
end;


function  TdmSendMail.SendMail(sTo: string; sCC: string; sAttach: string; sText: string;
                       sSubject: string; sFrom: string; sFromAddr: string;
                       bpwd: boolean; susername: string; spassword: string
                       ;SmtpServer: string): boolean;
var
  serror: string;
begin
   if SmtpServer = '' then SmtpServer := FMailServer;
   if SmtpServer = '' then SmtpServer := 'mail.januaproject.it';
   FMailError := '';

   if FMailDatabase and not (sSubject = '[MailAndFax]') then
     Result := SendMailMultiDB(sTo, sCC, [sAttach], sText, sSubject, sFrom,
                             sFromAddr,  serror)
   else
     Result := SendMailMulti(sTo, sCC, [sAttach], sText, sSubject, sFrom, sFromAddr,
                            bpwd, susername, spassword,SmtpServer, serror);
    FTestingFileName := 'MailAndFax';
    if Result then
    begin
        WriteFileText(sLineBreak + DateTimeToStr(Now()) + '***************** SendMail: Invio');
        WriteFileText(   'Inviato Mail: ' + sTo
                         + sLineBreak + 'bcc:' +   scc
                         + sLineBreak + sSubject
                         + sLineBreak + 'usando server mail: ' + SmtpServer);
        WriteFileText('*********************************************************')
    end
    else
    begin
        WriteFileText(sLineBreak + DateTimeToStr(Now()) + '***************** SendMail: Errore');
        WriteFileText(DateTimeToStr(Now()) + ' ' + 'Errore Mail: ' + sTo
                         + sLineBreak + sSubject + sLineBreak + serror);
        WriteFileText('*********************************************************');
        if not FSilent then JanuaDialog1.JShowError('Errore invio Mail/Fax', serror, '') else FMailError := serror;
    end;
end;

function  TdmSendMail.SendMailMultiDB(sTo: string; sCC: string;
                       sAttach: array of string;  sText: string;
                       sSubject: string; sFrom: string; sFromAddr: string;
                       var serror: string): boolean;
var
  i: integer;
begin
 try
  //****** invio tramite db della mail *****************************************
  Result := True;
  {
  sesRemote.Username := 'JANUA_PUBLIC';
  sesRemote.Server := 'REMOTE';
  sesRemote.Password := 'F4NKUL0';
  sesRemote.Options.Net := False;
  if not sesRemote.Connected then sesRemote.Connect;
  }

  qryMail.ParamByName('USERNAME').AsString := UpperCase(FOraSession.Username);
  qryMail.Open;
  qryMail.Insert;
  qryMailMS_TO.AsString := sTo;
  qryMailMS_CC.AsString := '';
  qryMailMS_BCC.AsString := sCC;
  qryMailMS_TEXT.AsString :=  sText;
  qryMailMS_OBJECT.AsString := sSubject;
  qryMailMS_OWNER.AsString :=  UpperCase(FOraSession.Username);
  qryMail.Post;
  if not Fsilent then JanuaDialog1.JShowMessage('Messaggio inviato in posta in uscita per: ' +  sTo, '', '');
  try
      for I := Low(sAttach) to High(sAttach) do
        if TRIM(sAttach[i]) > '' then
        begin
          tbMailAttach.Open;
          tbMailAttach.Insert;
          tbMailAttachMAIL_ATTACH_FILENAME.AsString := (sAttach[i]);
          tbMailAttachMAIL_ATTACH_BLOB.LoadFromFile(sAttach[i]);
          tbMailAttach.Post;
        end;
  except on e:exception do
       begin
          serror := e.Message;
          Result := False;
       end;
  end;

//  if sesRemote.InTransaction  then sesRemote.Commit;
//  sesRemote.Disconnect;
  except on e:exception do
       begin
          WriteError(' TdmMailSend.SendMailMultiDB errore invio mail' + sLineBreak +
                     e.Message);
                     
          serror := e.Message;
          Result := False;
       end;
  end;
end;

function  TdmSendMail.SendMailMulti(sTo: string; sCC: string;
                       sAttach: array of string;  sText: string;
                       sSubject: string; sFrom: string; sFromAddr: string;
                       bpwd: boolean; susername: string; spassword: string
                       ;SmtpServer: string; var serror: string): boolean;
var
  MioMsg : TIdMessage;
  i: integer;
  Vbpwd: boolean;
begin
   Vbpwd := bpwd;

   if not Vbpwd then Vbpwd := FMailAutentication;
   FTestingFileName := 'MailAndFax';

   if SmtpServer = '' then SmtpServer := FMailServer;

   WriteFileText(DateTimeToStr(Now()) +  'smtpServer: ' + FMailServer);


    WriteFileText(
                  sLineBreak + DateTimeToStr(Now()) + '***************** SendMailMulti: Invio Mail' + sTo
                 + sLineBreak + 'oggetto: ' + sSubject + sLineBreak 
                 + sLineBreak + 'invio mail via: ' + smtpServer + sLineBreak +
                 'username : ' + Mail.Username + sLineBreak +
                 'password : ' + Mail.Password + sLineBreak +
                 '************************************************************');

   try
      if Vbpwd then
      begin
        {
         verifica parametri:

      }
          if FMailPassword = '' then  FMailPassword := 'f4nkul0';
          if FMailServer = '' then  FMailServer := 'mail.januaproject.it';
          if FMailUsername = '' then  FMailUsername := 'riccardo.arduino@januaproject.it';

           if sPassword = '' then sPassword := FMailPassword;
           Mail.Password := sPassword;
           if susername = '' then susername := FMailUsername;
           Mail.Username := susername;
           if SmtpServer = '' then SmtpServer := FMailServer;
           Mail.AuthType :=  atDefault
      end
      else
           Mail.AuthType := atNone;

      // creo il messaggio
      MioMsg := TIdMessage.create( nil );

      MioMsg.IsEncoded := True;
      MioMsg.Subject := sSubject;
      //JShowWarning('Subject: ' + sSubject,'','');

      MioMsg.Body.Text := sText;
      // JShowWarning('Body: ' + sText,'','');

      MioMsg.BccList.EMailAddresses := sCC;
     // JShowWarning('Mailaddresses: ' + sCC,'','');

     // if LocalCC > '' then
     //     MioMsg.CCList.EMailAddresses := MioMsg.CCList.EMailAddresses + ',' + LocalCC;

     // JShowWarning('Localcc: ' + MioMsg.CCList.EMailAddresses + ',' + LocalCC,'','');

      MioMsg.Recipients.EMailAddresses := sTo;
     // JShowWarning('Recipients: ' + sTo,'','');

      MioMsg.From.Address := sFromAddr;
     // JShowWarning('From address: ' + sFromAddr,'','');

      MioMsg.From.Name :=  sFrom;
    //  JShowWarning('From: ' + sFrom,'','');

   //  JShowWarning('Attachment: ' +  sAttach,'','');
      for I := Low(sAttach) to High(sAttach) do
        if TRIM(sAttach[i]) > '' then
          TIdAttachmentFile.Create(MioMsg.MessageParts, sAttach[i]);
      // provo a spedirlo
      Result := ConnettiSMTP( SmtpServer , MioMsg, serror );
     except on e:exception do
       begin
          serror := e.Message;
          Result := False;
       end;
     end;
     MioMsg.Free;
end;



function TdmSendMail.ConnettiSMTP( SmtpServer: string; MailMessage: TidMessage; var serror: string ): Boolean;
// funzione usata dalle due seguenti
var
 sbpwd: string;
begin
    result := True;
    if Mail.AuthType = atDefault  then sbpwd := 'Y' else sbpwd:= 'N';
    FTestingFileName := 'MailAndFax';

    if SmtpServer = '' then SmtpServer := FMailServer;
    // ShowMessage('connessione a:  ' + SmtpServer);
    if SmtpServer = '' then SmtpServer := 'mail.januaproject.it' ;
    WriteFileText(
                  sLineBreak + DateTimeToStr(Now()) + '***************** ConnettiSMTP: Invio Mail'
                 + sLineBreak + 'invio mail via: ' + smtpServer + sLineBreak +
                 'username : ' + Mail.Username + sLineBreak +
                 'password : ' + Mail.Password + sLineBreak +
                 '************************************************************');

    Mail.Host := SmtpServer;
    try
      Mail.Connect;
      if Assigned( MailMessage ) then
        Mail.Send(MailMessage);
        Result := Mail.Connected;
    except
      on e: exception do
      begin
            Mail.Disconnect;
            serror := e.Message;
            if pos('501',Uppercase(e.message)) > 0 then
                      if not FSilent then   JanuaDialog1.JShowWarning('Attenzione, errata sintassi nella mail: ' +
                       MailMessage.Recipients.EMailAddresses,'','' )
            else if pos('Socket Error # 11004',e.message)> 0 then
            begin
              if not FSilent then  JanuaDialog1.JShowWarning('Non è stato possibile inviare questo messaggio di posta elettronica o fax per un problema temporaneo di comunicazione con il server INTERNET: Socket Error # 11004','','');
              if not FSilent then  JanuaDialog1.JShowWarning('Provate a re-inviare tra poco questo ultimo documento','','');
            end
            else if pos('550', e.message) > 0 then
            begin
              if not FSilent then    JanuaDialog1.JShowWarning('Attenzione il server di posta ha riconosciuto che questo indirizzo email non esiste, è scritto correttamente ma non corrisponde a nessuno sul database di posta: ' + MailMessage.Recipients.EMailAddresses,'','') ;
              if not FSilent then   JanuaDialog1.JShowWarning(e.Message, '', '');
            end
            else
            begin
               if not FSilent then  JanuaDialog1.JShowError('Attenzione problema di connessione con il server di posta', e.Message, '');
            end;
      end;
    end;
      Mail.Disconnect;
end;


function  TdmSendMail.SendMailStatic(sTo: string; sCC: string; sAttach: string; sText: string;
                       sSubject: string; sFrom: string; sFromAddr: string;
                       bpwd: boolean; susername: string; spassword: string
                       ;SmtpServer: string): boolean;
var
  serror: string;
begin
      if bpwd then
      begin
           Mail.Password := sPassword;
           Mail.Username := susername;
           Mail.AuthType :=  atDefault
      end
      else
           Mail.AuthType := atNone;

      // creo il messaggio
      MailMessage := TIdMessage.create( nil );

      MailMessage.IsEncoded := True;
      MailMessage.Subject := sSubject;
      //JShowMessage('Subject: ' + sSubject,'','');

      MailMessage.Body.Text := sText;
      // ShowMessage('Body: ' + sText);

      MailMessage.CCList.EMailAddresses := sCC;
     // ShowMessage('Mailaddresses: ' + sCC);

     // if LocalCC > '' then
     //     MailMessage.CCList.EMailAddresses := MailMessage.CCList.EMailAddresses + ',' + LocalCC;

     // ShowMessage('Localcc: ' + MailMessage.CCList.EMailAddresses + ',' + LocalCC);

      MailMessage.Recipients.EMailAddresses := sTo;
     // ShowMessage('Recipients: ' + sTo);

      MailMessage.From.Address := sFromAddr;
     // ShowMessage('From address: ' + sFromAddr);

      MailMessage.From.Name :=  sFrom;
    //  ShowMessage('From: ' + sFrom);

   //  ShowMessage('Attachment: ' +  sAttach);
      if sAttach > '' then TIdAttachmentFile.Create(MailMessage.MessageParts, sAttach);
      // provo a spedirlo
      Result := ConnettiSMTP( SmtpServer , MailMessage, serror );
      if not Result and not FSilent then JanuaDialog1.JShowError('Errore invio mail', serror, '');
      
end;






procedure TdmSendMail.SetJanuaSystem(const Value: TJanuaSystem);
begin
  FJanuaSystem := Value;
end;

procedure TdmSendMail.SetMailError(const Value: string);
begin
  FMailError := Value;
end;

procedure TdmSendMail.SetOraSession(const Value: TOraSession);
begin
  FOraSession := Value;
  qryMail.Session := FOraSession;
  tbMailAttach.Session := FOraSession; 
end;

procedure TdmSendMail.tbMailAttachNewRecord(DataSet: TDataSet);
begin
  tbMailAttachMS_SEND_ID.AsInteger := qryMailMS_SEND_ID.AsInteger;
end;

{$R *.dfm}

end.
