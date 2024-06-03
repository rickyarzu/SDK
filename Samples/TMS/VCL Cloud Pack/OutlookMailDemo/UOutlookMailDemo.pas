unit UOutlookMailDemo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CloudBase, CloudBaseWin,
  CloudCustomOutlook, CloudOutlookWin, CloudCustomOutlookMail, CloudOutlookMail,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.OleCtrls, SHDocVw;

type
  TForm12 = class(TForm)
    Panel1: TPanel;
    btConnect: TButton;
    btRemove: TButton;
    AdvOutlookMail1: TAdvOutlookMail;
    OpenDialog1: TOpenDialog;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    WebBrowser1: TWebBrowser;
    cbFolders: TComboBox;
    btGetMails: TButton;
    lvMails: TListView;
    Label3: TLabel;
    meTo: TMemo;
    Label1: TLabel;
    edSubject: TEdit;
    Label5: TLabel;
    lbFiles: TListBox;
    btAttachments: TButton;
    btDelAttach: TButton;
    Label2: TLabel;
    meBody: TMemo;
    cbHTML: TCheckBox;
    btSendMail: TButton;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    meCC: TMemo;
    meBCC: TMemo;
    procedure btConnectClick(Sender: TObject);
    procedure AdvOutlookMail1Connected(Sender: TObject);
    procedure btSendMailClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btRemoveClick(Sender: TObject);
    procedure btGetMailsClick(Sender: TObject);
    procedure lvMailsChange(Sender: TObject; Item: TListItem;
      Change: TItemChange);
    procedure btAttachmentsClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btDelAttachClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Connected: boolean;
    procedure ToggleControls;
    procedure InitFolders;
  end;

var
  Form12: TForm12;

implementation

{$R *.dfm}

// PLEASE USE A VALID INCLUDE FILE THAT CONTAINS THE APPLICATION KEY & SECRET
// FOR THE CLOUD STORAGE SERVICES YOU WANT TO USE
// STRUCTURE OF THIS .INC FILE SHOULD BE
//
// const
//  OutlookAppkey = 'xxxxxxxxx';
//  OutlookAppSecret = 'yyyyyyyy';

{$I APPIDS.INC}

procedure TForm12.AdvOutlookMail1Connected(Sender: TObject);
begin
  AdvOutlookMail1.SaveTokens;
  Connected := true;
  ToggleControls;
  InitFolders;
end;

procedure TForm12.btAttachmentsClick(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    lbFiles.Items.Add(OpenDialog1.FileName);
    lbFiles.ItemIndex := lbFiles.Count - 1;
  end;
end;

procedure TForm12.btConnectClick(Sender: TObject);
begin
  AdvOutlookMail1.App.Key := OutlookAppkey;
  AdvOutlookMail1.App.Secret := OutlookAppSecret;
  AdvOutlookMail1.Logging := true;

  AdvOutlookMail1.PersistTokens.Location := plIniFile;
  AdvOutlookMail1.PersistTokens.Key := '.\outlook.ini';
  AdvOutlookMail1.PersistTokens.Section := 'tokens';
  AdvOutlookMail1.LoadTokens;

  AdvOutlookMail1.Connect;
end;

procedure TForm12.btDelAttachClick(Sender: TObject);
begin
  lbFiles.DeleteSelected;
end;

procedure TForm12.btGetMailsClick(Sender: TObject);
var
  I: Integer;
  li: TListItem;
begin
  lvMails.Clear;

  if AdvOutlookMail1.GetMails((cbFolders.Items.Objects[cbFolders.ItemIndex] as TOutlookMailFolder).ID) then
  begin
    for I := 0 to AdvOutlookMail1.Items.Count - 1 do
    begin
      li := lvMails.Items.Add;
      li.Caption := AdvOutlookMail1.Items[I].SenderName;
      li.SubItems.Add(AdvOutlookMail1.Items[I].Subject);
      li.SubItems.Add(DateTimeToStr(AdvOutlookMail1.Items[I].ReceivedDateTime));
      li.SubItems.Add(BoolToStr(AdvOutlookMail1.Items[I].HasAttachments, true));
      li.Data := AdvOutlookMail1.Items[I];
    end;
  end;
end;

procedure TForm12.btRemoveClick(Sender: TObject);
begin
  AdvOutlookMail1.ClearTokens;
  Connected := False;
  ToggleControls;
  lvMails.Items.Clear;
  cbFolders.Items.Clear;
end;

procedure TForm12.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  WebBrowser1.Free;
end;

procedure TForm12.FormCreate(Sender: TObject);
begin
  ReportMemoryLeaksOnShutdown := true;
  Connected := false;
  ToggleControls;
  WebBrowser1.Navigate('about:blank');
end;

procedure TForm12.InitFolders;
var
  I: Integer;
begin
  cbFolders.Items.Clear;
  if AdvOutlookMail1.GetFolders then
  begin
    for I := 0 to AdvOutlookMail1.Folders.Count - 1 do
    begin
      cbFolders.Items.AddObject(AdvOutlookMail1.Folders[I].DisplayName
        + ' (' + IntToStr(AdvOutlookMail1.Folders[I].ItemCount) + ')', AdvOutlookMail1.Folders[I]);
      if AdvOutlookMail1.Folders[I].DisplayName = 'Inbox' then
        cbFolders.ItemIndex := I;
    end;
  end;
end;

procedure TForm12.lvMailsChange(Sender: TObject; Item: TListItem;
  Change: TItemChange);
var
  Doc: Variant;
begin
  if lvMails.ItemIndex >= 0 then
  begin
    Doc := WebBrowser1.Document;
    Doc.Clear;
    Doc.Write(TOutlookMailItem(lvMails.Items[lvMails.ItemIndex].Data).Body);
    Doc.Close;
  end;
end;

procedure TForm12.ToggleControls;
begin
  btConnect.Enabled := not Connected;
  btRemove.Enabled := Connected;
  btSendMail.Enabled := Connected;
  edSubject.Enabled := Connected;
  meTo.Enabled := Connected;
  meBody.Enabled := Connected;
  cbHTML.Enabled := Connected;
  cbFolders.Enabled := Connected;
  btGetMails.Enabled := Connected;
  btAttachments.Enabled := Connected;
  btDelAttach.Enabled := Connected;
  meCC.Enabled := Connected;
  meBCC.Enabled := Connected;
  lbFiles.Enabled := Connected;
end;

procedure TForm12.btSendMailClick(Sender: TObject);
var
  I: Integer;
  mi: TOutlookMailItem;
begin
  if meTo.Text = '' then
  begin
    ShowMessage('Please add at least one email address in the "To" field.');
    Exit;
  end;

  mi := TOutlookMailItem.Create(nil);

  mi.Subject := edSubject.Text;
  mi.Body := meBody.Text;

  for I := 0 to meTo.Lines.Count - 1 do
    mi.RecipientEmails.Add(meTo.Lines[I]);

  for I := 0 to meCC.Lines.Count - 1 do
    mi.CcRecipientEmails.Add(meCC.Lines[I]);

  for I := 0 to meBCC.Lines.Count - 1 do
    mi.BccRecipientEmails.Add(meBCC.Lines[I]);

  for I := 0 to lbFiles.Count - 1 do
    mi.Attachments.Add(lbFiles.Items[I]);

  if cbHTML.Checked then
    mi.MailType := mtHTML
  else
    mi.MailType := mtPlainText;

  if AdvOutlookMail1.SendMessage(mi) then
    ShowMessage('Mail sent.')
  else
    ShowMessage('Error sending mail, please try again.');

  mi.Free;
end;

end.
