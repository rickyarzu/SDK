unit udmMail;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Uni, MemDS, DBAccess,
  Janua.Server.Functions, Janua.Core.Mail, Janua.Core.System;
type
  TdmMail = class(TDataModule)
    qryMail: TUniQuery;
    qryMailms_send_id: TLargeintField;
    qryMaildb_user_id: TIntegerField;
    qryMaildb_schema_id: TIntegerField;
    qryMailms_to: TWideStringField;
    qryMailms_cc: TWideStringField;
    qryMailms_bcc: TWideStringField;
    qryMailms_text: TWideStringField;
    qryMailms_object: TWideStringField;
    qryMailinsert_date: TUniTimeStampField;
    qryMailupdate_date: TUniTimeStampField;
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
  public
    { Public declarations }
    function SendMailMultiDB(aMail: TJanuaMail; var serror: string): boolean;
  end;

var
  dmMail: TdmMail;

implementation

function  TdmMail.SendMailMultiDB(aMail: TJanuaMail; var serror: string): boolean;
var
  i: integer;
begin
 try
  //****** invio tramite db della mail *****************************************
  Result := True;
  OpenDataset(self.qryMailSeq);
  qryMail.ParamByName('ms_send_id').AsLargeInt := self.qryMailSeqNEXTVAL.AsLargeInt;
  qryMail.ParamByName('USERNAME').AsString := UpperCase('YUMED');
  OpenDataset(qryMail);
  qryMail.Insert;
  self.qryMailMS_SEND_ID.AsLargeInt := self.qryMailSeqNEXTVAL.AsLargeInt;
  self.qryMailSeq.Close;
  qryMailMS_TO.AsString := aMail.sTo;
  qryMailMS_CC.AsString := '';
  qryMailMS_BCC.AsString := aMail.sCC;
  qryMailMS_TEXT.AsString :=  aMail.sText;
  qryMailMS_OBJECT.AsString := aMail.sSubject;
  qryMailMS_OWNER.AsString :=  UpperCase('YUMED');
  self.qryMailMS_FROM.AsWideString := 'Keriks Medical Social Forum';
  self.qryMailMS_FROM_ADDR.AsString := 'info@keriks.com';
  qryMail.Post;
  WriteLog('Messaggio inviato in posta in uscita per: ' +  aMail.sTo);
  try
      for I := Low(aMail.sAttach) to High(aMail.sAttach) do
        if TRIM(aMail.sAttach[i]) > '' then
        begin
          OpenDataset(tbMailAttach);
          tbMailAttach.Insert;
          tbMailAttachfilename.AsString := (aMail.sAttach[i]);
          tbMailAttachattachment.LoadFromFile(aMail.sAttach[i]);
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
          WriteLog(' TdmMailSend.SendMailMultiDB errore invio mail' + sLineBreak +
                     e.Message);

          serror := e.Message;
          Result := False;
       end;
  end;
end;


{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
