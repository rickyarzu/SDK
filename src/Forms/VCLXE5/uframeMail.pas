unit uframeMail;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, functions,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls,IdText, idattachmentFile,  udmMailSend ;

type
  TframeMail = class(TFrame)
    pnlBottom: TPanel;
    Memo1: TMemo;
    pnlButtons: TPanel;
    bbtnAdvanced: TBitBtn;
    pnlSmallButtons: TPanel;
    bbtnCancel: TBitBtn;
    bbtnOk: TBitBtn;
    pnlTop: TPanel;
    pnlTopLeft: TPanel;
    lblCC: TLabel;
    lblBCC: TLabel;
    lblPriority: TLabel;
    edtCC: TEdit;
    edtBCC: TEdit;
    cboPriority: TComboBox;
    chkReturnReciept: TCheckBox;
    pnlMainDetails: TPanel;
    lblTo: TLabel;
    lblSubject: TLabel;
    edtTo: TEdit;
    edtSubject: TEdit;
    grpAttachment: TGroupBox;
    lvFiles: TListView;
    btnAttachment: TBitBtn;
    btnText: TBitBtn;
    Edit1: TEdit;
    Label1: TLabel;
    edtFrom: TEdit;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    edAttach: TEdit;
    Label2: TLabel;
    procedure btnAttachmentClick(Sender: TObject);
    procedure bbtnOkClick(Sender: TObject);
    procedure btnTextClick(Sender: TObject);
    procedure ResetAttachmentListView;
    procedure SetDefault;
    procedure AddAttachment(sattach: string);
    procedure edsetcolorenter(Sender: TObject);
    procedure edsetcolorexit(Sender: TObject);
  private
    FFrom: String;
    FCC: String;
    FAutentication: boolean;
    FsmtpServer: String;
    FPassword: String;
    FUsername: String;
    FFMailSend: TdmSendMail;
    procedure SetCC(const Value: String);
    procedure SetFrom(const Value: String);
    procedure SetAutentication(const Value: boolean);
    procedure SetPassword(const Value: String);
    procedure SetsmtpServer(const Value: String);
    procedure SetUsername(const Value: String);
    procedure SetFMailSend(const Value: TdmSendMail);
    { Private declarations }
  public
    { Public declarations }
  published
    property CC: String read FCC write SetCC;
    property From: String read FFrom write SetFrom;
    property Autentication: boolean read FAutentication write SetAutentication;
    property Username: String read FUsername write SetUsername;
    property Password: String read FPassword write SetPassword;
    property smtpServer: String read FsmtpServer write SetsmtpServer;
  end;

implementation


{$R *.dfm}


procedure TframeMail.SetAutentication(const Value: boolean);
begin
  FAutentication := Value;
end;

procedure TframeMail.SetCC(const Value: String);
begin
  FCC := Value;
end;

procedure TframeMail.SetDefault;
begin
     //edtTo.text ,
     edtCC.Text  := FCC;
     edtFrom.text := FFrom;
end;

procedure TframeMail.SetFMailSend(const Value: TdmSendMail);
begin
  FFMailSend := Value;
end;

procedure TframeMail.SetFrom(const Value: String);
begin
  FFrom := Value;
end;

procedure TframeMail.SetPassword(const Value: String);
begin
  FPassword := Value;
end;

procedure TframeMail.SetsmtpServer(const Value: String);
begin
  FsmtpServer := Value;
end;

procedure TframeMail.SetUsername(const Value: String);
begin
  FUsername := Value;
end;

procedure TframeMail.bbtnOkClick(Sender: TObject);
begin
     dmSendMail.SendMail(
              edtTo.text ,
             edtCC.Text ,
             edAttach.Text,
             Memo1.text,
             edtSubject.text ,
             edtFrom.Text,
             edtFrom.Text
           , FAutentication
            , FUserName
            , FPassword
            ,  FSmtpServer

           );
end;

procedure TframeMail.btnAttachmentClick(Sender: TObject);
begin
   if OpenDialog1.Execute then  AddAttachment(OpenDialog1.FileName)

end;

procedure TframeMail.AddAttachment(sattach: string);
begin
     TIdAttachmentFile.Create(FFMailSend.MailMessage.MessageParts, sattach);
     ResetAttachmentListView;
     edAttach.Text := sAttach;
end;


procedure TframeMail.btnTextClick(Sender: TObject);
begin
    if Length(Edit1.Text) = 0 then
      begin
         MessageDlg('Indicate ContentType first', mtError, [mbOk], 0);
      end
   else
      begin
         with TIdText.Create(FFMailSend.MailMessage.MessageParts, Memo1.Lines) do
            begin
               ContentType := Edit1.Text;
            end;
         Memo1.Clear;
         ResetAttachmentListView;
      end;
end;

procedure TframeMail.edsetcolorenter(Sender: TObject);
begin
   setcolorenter(sender)
end;

procedure TframeMail.edsetcolorexit(Sender: TObject);
begin
  setcolorexit(sender)
end;

procedure TframeMail.ResetAttachmentListView;
var li: TListItem;
   idx: Integer;
begin
   lvFiles.Items.Clear;
   for idx := 0 to Pred(FFMailSend.MailMessage.MessageParts.Count) do
      begin
         li := lvFiles.Items.Add;
         if FFMailSend.MailMessage.MessageParts.Items[idx] is TIdAttachmentFile then
            begin
               li.ImageIndex := 0;
               li.Caption := TIdAttachmentFile(FFMailSend.MailMessage.MessageParts.Items[idx]).Filename;
               li.SubItems.Add(TIdAttachmentFile(FFMailSend.MailMessage.MessageParts.Items[idx]).ContentType);
            end
         else
            begin
               li.ImageIndex := 1;
               li.Caption := FFMailSend.MailMessage.MessageParts.Items[idx].ContentType;
            end;
      end;
end;

end.
