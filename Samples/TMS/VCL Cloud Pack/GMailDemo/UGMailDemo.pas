{***************************************************************************}
{ TMS Cloud Pack                                                            }
{ for Delphi & C++Builder                                                   }
{                                                                           }
{ written by TMS Software                                                   }
{            copyright © 2018                                               }
{            Email : info@tmssoftware.com                                   }
{            Web : http://www.tmssoftware.com                               }
{                                                                           }
{ The source code is given as is. The author is not responsible             }
{ for any possible damage done due to the use of this code.                 }
{ The component can be freely used in any application. The complete         }
{ source code remains property of the author and may not be distributed,    }
{ published, given or sold in any form as such. No parts of the source      }
{ code can be included in any other component or application without        }
{ written authorization of the author.                                      }
{***************************************************************************}
unit UGMailDemo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, StdCtrls, ExtCtrls, CloudBase,
  CloudBaseWin, CloudCustomGoogle, CloudGoogleWin, CloudCustomGMail, CloudGMail,
  ComCtrls, CheckLst, Vcl.OleCtrls, SHDocVw;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    AdvGMail1: TAdvGmail;
    OpenDialog1: TOpenDialog;
    lblMsg: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Button2: TButton;
    lvMails: TListView;
    WebBrowser1: TWebBrowser;
    Label1: TLabel;
    meToRecipients: TMemo;
    Label6: TLabel;
    cbLabels: TCheckListBox;
    Label2: TLabel;
    meCC: TMemo;
    Label3: TLabel;
    meBCC: TMemo;
    Label5: TLabel;
    txtSubject: TEdit;
    Label4: TLabel;
    meBody: TMemo;
    rgMessageType: TRadioGroup;
    btnAttachFile: TButton;
    btnSendMail: TButton;
    btnRemove: TButton;
    lstFiles: TListBox;
    lblErrorMsg: TLabel;
    ComboBox1: TComboBox;
    procedure Button1Click(Sender: TObject);
    procedure AdvGMail1ReceivedAccessToken(Sender: TObject);
    procedure btnSendMailClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnAttachFileClick(Sender: TObject);
    procedure DisableControls;
    procedure EnableControls;
    procedure btnRemoveClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure lvMailsChange(Sender: TObject; Item: TListItem;
      Change: TItemChange);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    Connected: Boolean;
    procedure ShowLabels;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.AdvGMail1ReceivedAccessToken(Sender: TObject);
begin
  AdvGMail1.SaveTokens;
  Connected := True;
  ShowLabels;
  EnableControls;
end;

// PLEASE USE A VALID INCLUDE FILE THAT CONTAINS THE APPLICATION KEY & SECRET
// FOR THE CLOUD STORAGE SERVICES YOU WANT TO USE
// STRUCTURE OF THIS .INC FILE SHOULD BE
//
// const
//  GAppkey = 'xxxxxxxxx';
//  GAppSecret = 'yyyyyyyy';

{$I APPIDS.INC}

procedure TForm1.Button1Click(Sender: TObject);
var
  Acc: Boolean;
begin
  DisableControls;
  AdvGMail1.App.Key := GAppkey;
  AdvGMail1.App.Secret := GAppSecret;

  if AdvGMail1.App.Key <> '' then
  begin
    AdvGMail1.PersistTokens.Location := plIniFile;
    AdvGMail1.PersistTokens.Key := '.\google.ini';
    AdvGMail1.PersistTokens.Section := 'tokens';
    AdvGMail1.LoadTokens;

    Acc := AdvGMail1.TestTokens;
    Connected := Acc;

    if not Acc then
    begin
      AdvGMail1.RefreshAccess;
      Acc := AdvGMail1.TestTokens;

      if not Acc then
        AdvGMail1.DoAuth
      else
      begin
        ShowLabels;
        EnableControls;
      end;
    end
    else
    begin
      ShowLabels;
      EnableControls;
    end;
  end
  else
    ShowMessage('Please provide a valid application ID for the client component');
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  I: Integer;
  li: TListItem;
  mailbox: string;
begin
  lvMails.Clear;

  Screen.Cursor := crHourGlass;

  mailbox := 'INBOX';

  if ComboBox1.ItemIndex >= 0 then
    mailbox := ComboBox1.Items[ComboBox1.ItemIndex];

  if AdvGMail1.GetMails(mailbox, 10) then
  begin
    for I := 0 to AdvGMail1.Mails.Count - 1 do
    begin
      li := lvMails.Items.Add;
      li.Caption := AdvGMail1.Mails[I].From;
      li.SubItems.Add(AdvGMail1.Mails[I].Subject);
      li.SubItems.Add(AdvGMail1.Mails[I].Date);
      li.Data := AdvGMail1.Mails[I];
    end;
  end;
  Screen.Cursor := crDefault;
end;

procedure TForm1.ShowLabels;
var
  I: Integer;
  labelname: string;
begin
  cbLabels.Clear;
  ComboBox1.Clear;
  AdvGMail1.GetLabels;

  for I := 0 to AdvGMail1.Labels.Count - 1 do
  begin
    if AdvGMail1.Labels.Items[I].Name <> 'SENT' then
    begin
      labelname := AdvGMail1.Labels.Items[I].Name;
      cbLabels.Items.Add(labelname);
      ComboBox1.Items.Add(labelname);
      if labelname = 'INBOX' then
        ComboBox1.ItemIndex := ComboBox1.Items.Count -1;
    end;
  end;
end;

procedure TForm1.DisableControls;
begin
  txtSubject.Enabled := False;
  meToRecipients.Enabled := False;
  meCC.Enabled := False;
  meBCC.Enabled := False;
  meBody.Enabled := False;
  btnSendMail.Enabled := False;
  btnAttachFile.Enabled := False;
  rgMessageType.Enabled := False;
  PageControl1.Enabled := False;
  lblMsg.Caption := 'Working...';
end;

procedure TForm1.EnableControls;
begin
  txtSubject.Enabled := True;
  meToRecipients.Enabled := True;
  meCC.Enabled := True;
  meBCC.Enabled := True;
  meBody.Enabled := True;
  btnSendMail.Enabled := True;
  btnAttachFile.Enabled := True;
  rgMessageType.Enabled := True;
  PageControl1.Enabled := True;
  lblMsg.Caption := '';
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  WebBrowser1.Free;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  ReportMemoryLeaksOnShutdown := True;
  DisableControls;

  lblMsg.Caption := 'Not Connected...';

  WebBrowser1.Navigate('about:blank');
end;

procedure TForm1.lvMailsChange(Sender: TObject; Item: TListItem;
  Change: TItemChange);
var
  Doc: Variant;
  Body: string;
  m: TGMailMessage;
begin
  if lvMails.ItemIndex >= 0 then
  begin
    Doc := WebBrowser1.Document;
    Doc.Clear;

    m := TGMailMessage(lvMails.Items[lvMails.ItemIndex].Data);

    Body := m.Body;
    if Body = '' then
     Body := Body + m.HTMLBody;

    Doc.Write(Body);
    Doc.Close;
  end;
end;

procedure TForm1.btnAttachFileClick(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    AdvGMail1.Files.Add.FileName := OpenDialog1.FileName;
    btnAttachFile.Caption := 'Added: ' + OpenDialog1.FileName;
    lstFiles.AddItem(OpenDialog1.FileName, AdvGMail1.Files[AdvGMail1.Files.Count - 1]);
    lstFiles.ItemIndex := lstFiles.Count - 1;
    btnRemove.Enabled := True;
  end;
end;

procedure TForm1.btnRemoveClick(Sender: TObject);
var
  Indx: Integer;
begin
  Indx := lstFiles.ItemIndex;
  lstFiles.Items.Objects[Indx].Destroy;
  lstFiles.DeleteSelected;

  if lstFiles.Count = 0 then
  begin
    btnRemove.Enabled := False;
    btnAttachFile.Caption := 'Select File To Attach';
  end
  else
    lstFiles.ItemIndex := lstFiles.Count - 1;
end;

procedure TForm1.btnSendMailClick(Sender: TObject);
var
  M: TGmailMessage;
  I: Integer;
begin
  DisableControls;

  if (meToRecipients.Lines.Count = 0)  and (meCC.Lines.Count = 0) and (mecc.Lines.Count = 0) then
  begin
    lblErrorMsg.Caption := 'No recipients found';
    lblErrorMsg.Font.Color := clRed;

    EnableControls;
    Exit;
  end;

  M := AdvGMail1.Mails.Add;
  M.Subject := txtSubject.Text;
  M.Body := meBody.Text;

  M.Body  := '';
  for I := 0 to meBody.Lines.Count - 1 do
  begin
    M.Body := M.Body + meBody.Lines[I];
    M.Body := m.Body + sLineBreak;
  end;

  for I := 0 to meToRecipients.Lines.Count - 1 do
  begin
    M.ToRecipients.Add(meToRecipients.Lines[I]);
  end;

  for I := 0 to meCC.Lines.Count - 1 do
  begin
    M.CCRecipients.Add(meCC.Lines[I]);
  end;

  for I := 0 to meBCC.Lines.Count - 1 do
  begin
    M.BCCRecipients.Add(meBCC.Lines[I]);
  end;

  if rgMessageType.ItemIndex = 0 then
    M.MessageType := mtPlainText
  else
    M.MessageType := mtHTML;


  for I := 0 to cbLabels.Items.Count - 1 do
  begin
    if cbLabels.Checked[I] then
      M.Labels.Add(cbLabels.Items.Strings[I]);
  end;

  if AdvGMail1.SendMessage(M) then
  begin
    lblErrorMsg.Caption := 'Email was sent';
    lblErrorMsg.Font.Color := clGreen;
  end
  else
  begin
    if not Connected then
      lblErrorMsg.Caption := 'Not connected!'
    else
      lblErrorMsg.Caption := 'Error sending email';
    lblErrorMsg.Font.Color := clRed;
  end;

  EnableControls;
end;

end.
