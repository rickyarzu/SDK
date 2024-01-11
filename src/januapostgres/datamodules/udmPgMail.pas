unit udmPgMail;

interface

uses
  System.SysUtils, System.Classes, Data.DB, PgAccess, MemDS, DBAccess,
  udmJanuaPostgresModel,
  Janua.Core.Mail, Janua.Core.System, Janua.Core.Classes,
  Janua.Postgres.Functions;

type
  TdmMail = class(TdmJanuaPostgresModel)
    qryMail: TPgQuery;
    qryMailms_send_id: TLargeintField;
    qryMaildb_user_id: TIntegerField;
    qryMaildb_schema_id: TIntegerField;
    qryMailms_to: TWideStringField;
    qryMailms_cc: TWideStringField;
    qryMailms_bcc: TWideStringField;
    qryMailms_text: TWideStringField;
    qryMailms_object: TWideStringField;
    qryMailinsert_date: TPgTimeStampField;
    qryMailupdate_date: TPgTimeStampField;
    qryMailuser_insert: TWideStringField;
    qryMailuser_update: TWideStringField;
    qryMailms_owner: TWideStringField;
    qryMailms_sent: TWideStringField;
    qryMailms_from: TWideStringField;
    qryMailms_from_addr: TWideStringField;
    tbMailAttach: TPgTable;
    tbMailAttachms_send_id: TLargeintField;
    tbMailAttachattach_id: TLargeintField;
    tbMailAttachfilename: TWideStringField;
    tbMailAttachattachment: TBlobField;
    dsMail: TDataSource;
    qryMailSeq: TPgQuery;
    qryMailSeqNEXTVAL: TFMTBCDField;
  private
    { Private declarations }
  public
    { Public declarations }
    function SendMailMultiDB(aMail: TJanuaMail; var serror: string): boolean;
  end;

var
  dmMail: TdmMail;

implementation

function TdmMail.SendMailMultiDB(aMail: TJanuaMail; var serror: string): boolean;
var
  i: integer;
begin
  try
    // ****** invio tramite db della mail *****************************************
    Result := True;
    OpenDataset(self.qryMailSeq);
    qryMail.ParamByName('ms_send_id').AsLargeInt := self.qryMailSeqNEXTVAL.AsLargeInt;
    qryMail.ParamByName('USERNAME').AsString := UpperCase('YUMED');
    OpenDataset(qryMail);
    qryMail.Insert;
    self.qryMailms_send_id.AsLargeInt := self.qryMailSeqNEXTVAL.AsLargeInt;
    self.qryMailSeq.Close;
    qryMailms_to.AsString := aMail.sTo;
    qryMailms_cc.AsString := '';
    qryMailms_bcc.AsString := aMail.sCC;
    qryMailms_text.AsString := aMail.sText.Text;
    qryMailms_object.AsString := aMail.sSubject;
    qryMailms_owner.AsString := UpperCase('YUMED');
    self.qryMailms_from.AsWideString := 'Keriks Medical Social Forum';
    self.qryMailms_from_addr.AsString := 'info@keriks.com';
    qryMail.Post;
    WriteLog('Messaggio inviato in posta in uscita per: ' + aMail.sTo);

    if aMail.sAttach.Count > 0 then
      try
        for i := 0 to aMail.sAttach.Count - 1 do
          if TRIM(aMail.sAttach[i]) > '' then
          begin
            OpenDataset(tbMailAttach);
            tbMailAttach.Insert;
            tbMailAttachfilename.AsString := (aMail.sAttach[i]);
            tbMailAttachattachment.LoadFromFile(aMail.sAttach[i]);
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
