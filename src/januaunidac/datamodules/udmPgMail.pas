unit udmPgMail;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Uni, MemDS, DBAccess,
  udmJanuaPostgresModel, UniProvider, PostgreSQLUniProvider,
  // Janua
  Janua.Cloud.Types, Janua.Core.System, Janua.Core.Classes, Janua.Unidac.Connection, Janua.Cloud.Mail.Intf;

type
  TdmMail = class(TdmJanuaPostgresModel)
    qryMail: TUniQuery;
    qryMailms_send_id: TLargeintField;
    qryMaildb_user_id: TIntegerField;
    qryMaildb_schema_id: TIntegerField;
    qryMailms_to: TWideStringField;
    qryMailms_cc: TWideStringField;
    qryMailms_bcc: TWideStringField;
    qryMailms_text: TWideStringField;
    qryMailms_object: TWideStringField;
    qryMailuser_insert: TWideStringField;
    qryMailuser_update: TWideStringField;
    qryMailms_owner: TWideStringField;
    qryMailms_sent: TWideStringField;
    qryMailms_from: TWideStringField;
    qryMailms_from_addr: TWideStringField;
    tbMailAttach: TUniTable;
    tbMailAttachms_send_id: TLargeintField;
    tbMailAttachattach_id: TLargeintField;
    tbMailAttachfilename: TWideStringField;
    tbMailAttachattachment: TBlobField;
    dsMail: TDataSource;
    qryMailSeq: TUniQuery;
    qryMailSeqNEXTVAL: TFMTBCDField;
  private
    { Private declarations }
    FMailMessage: TJanuaMailMessage;
  public
    { Public declarations }
    function SendMailMultiDB(aMailBuilder: IJanuaMailMessageBuilder; var serror: string): boolean;
  end;

var
  dmMail: TdmMail;

implementation

function TdmMail.SendMailMultiDB(aMailBuilder: IJanuaMailMessageBuilder; var serror: string): boolean;
var
  i: integer;
begin
  try
    // ****** invio tramite db della mail *****************************************
    Result := True;
    OpenDataset(qryMailSeq);
    qryMail.ParamByName('ms_send_id').AsLargeInt := self.qryMailSeqNEXTVAL.AsLargeInt;
    qryMail.ParamByName('USERNAME').AsString := UpperCase('YUMED');
    OpenDataset(qryMail);
    qryMail.Insert;
    qryMailms_send_id.AsLargeInt := qryMailSeqNEXTVAL.AsLargeInt;
    qryMailSeq.Close;
    FMailMessage := aMailBuilder.GetMailMessage;
    qryMailms_to.AsString := FMailMessage.MailTo;
    qryMailms_cc.AsString := '';
    qryMailms_bcc.AsString := FMailMessage.CC;
    qryMailms_text.AsString := FMailMessage.Text;
    qryMailms_object.AsString := FMailMessage.Subject;
    qryMailms_owner.AsString := UpperCase('YUMED');
    self.qryMailms_from.AsWideString := 'Keriks Medical Social Forum';
    self.qryMailms_from_addr.AsString := 'info@keriks.com';
    qryMail.Post;
    WriteLog('Messaggio inviato in posta in uscita per: ' + FMailMessage.MailTo);

    if FMailMessage.AttachFileList.Count > 0 then
      try
        for i := 0 to FMailMessage.AttachFileList.Count - 1 do
          if TRIM(FMailMessage.AttachFileList[i]) > '' then
          begin
            OpenDataset(tbMailAttach);
            tbMailAttach.Insert;
            tbMailAttachfilename.AsString := (FMailMessage.AttachFileList[i]);
            tbMailAttachattachment.LoadFromFile(FMailMessage.AttachFileList[i]);
            tbMailAttach.Post;
          end;
      except
        on e: exception do
        begin
          serror := e.Message;
          Result := False;
        end;
      end;

    // if sesRemote.InTransaction  then sesRemote.Commit;
    // sesRemote.Disconnect;
  except
    on e: exception do
    begin
      WriteLog(' TdmMailSend.SendMailMultiDB errore invio mail' + sLineBreak + e.Message);

      serror := e.Message;
      Result := False;
    end;
  end;
end;

{$R *.dfm}

end.
