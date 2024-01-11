unit Janua.VCL.Cloud.frameMailMessageConfig;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Data.DB,
  // VCL
  VCL.Graphics, VCL.Controls, VCL.Forms, VCL.Dialogs, VCL.StdCtrls, VCL.ExtCtrls, VCL.ComCtrls, VCL.DBGrids,
  VCL.Grids,
  // TMS
  AdvMemo, advmjson, AdvmWS, ParamListbox, AdvUtil, AdvObj, BaseGrid, AdvGrid,
  // FireDAC
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Stan.Intf,
  // FNC
  VCL.TMSFNCTypes, VCL.TMSFNCUtils, VCL.TMSFNCGraphics, VCL.TMSFNCGraphicsTypes, VCL.TMSFNCCustomControl,
  VCL.TMSFNCWebBrowser,
  // Januaproject
  Janua.Unidac.Connection, Janua.Cloud.Types, Janua.Cloud.Mail.Conf, Janua.Core.System.Types,
  Janua.VCL.Interposers, Janua.TMS.Interposers, Janua.Cloud.Mail.Intf, Janua.Cloud.Mail.Impl,
  Janua.VCL.frameHtmlEditor;

type
  TframeVCLMailMessageConfig = class(TFrame, IJanuaMailMessageForm)
    pnlCustomerMail: TPanel;
    lblMailCustomerTo: TLabel;
    lblMailFrom: TLabel;
    lblMailFromName: TLabel;
    lblMaillMailCustomerBCC: TLabel;
    lblMailReply: TLabel;
    lblSubject: TLabel;
    lblMailImagesURL: TLabel;
    lblMaillMailCustomerCC: TLabel;
    btnGenerateMail: TButton;
    btnLoadMailConfig: TButton;
    btnSaveConfig: TButton;
    btnSendMailTo: TButton;
    edtCustomerFrom: TEdit;
    edtCustomerFromMail: TEdit;
    edtCustomerTestRecipients: TEdit;
    edtlMailCC: TEdit;
    edtlMailBCC: TEdit;
    edtMailCustomerRecipient: TEdit;
    edtMailCustomerTo: TEdit;
    edtMailSubject: TEdit;
    edtReplyTo: TEdit;
    pgcCustomerMail: TPageControl;
    tabCustomerMailPreview: TTabSheet;
    brwModelMessage: TTMSFNCWebBrowser;
    tabCustomerTestMail: TTabSheet;
    lblMailCustomerCC: TLabel;
    edtMailTestSubject: TEdit;
    pnlMailTest: TPanel;
    lblMailFrom1: TLabel;
    lblMailTo: TLabel;
    lblTestMailTo1: TLabel;
    edtMsgTestFrom: TEdit;
    edtTestMailTo: TEdit;
    edtTestMailFromName: TEdit;
    pgcTestPreview: TPageControl;
    tabPagePreview: TTabSheet;
    brwTestMessage: TTMSFNCWebBrowser;
    tabHtmlPreview: TTabSheet;
    advmMailHtmlPreview: TAdvMemo;
    astHtml: TAdvHTMLMemoStyler;
    astJson: TAdvJSONMemoStyler;
    tabJsonPreview: TTabSheet;
    advmMailJsonPreview: TAdvMemo;
    fdmParams: TFDMemTable;
    fldParamskey: TStringField;
    fldParamsValue: TStringField;
    dsParams: TDataSource;
    grpURL: TGroupBox;
    lblMobileCustomerUrl: TLabel;
    edtCustomerMobileUrl: TEdit;
    btnTestUrl: TButton;
    edtCustomerMobileUrl1: TEdit;
    edtTestTinyUrl: TEdit;
    tabEditor: TTabSheet;
    frameHTMLEditor1: TframeHTMLEditor;
    tabAdvanced: TTabSheet;
    pgcAdvanced: TPageControl;
    tabAdvancedHtml: TTabSheet;
    advmMailHtml: TAdvMemo;
    dbgrdParams: TDBGrid;
    tabAdvancedJson: TTabSheet;
    advmMailJson: TAdvMemo;
    tabJsonLog: TTabSheet;
    memJsonLog: TAdvMemo;
    pnlLists: TPanel;
    spl2: TSplitter;
    edLabelTag: TEdit;
    lst1: TListBox;
    lst2: TListBox;
    Label1: TLabel;
    grdMaster: TDBGrid;
    dsMaster: TDataSource;
    procedure btnLoadMailConfigClick(Sender: TObject);
    procedure btnSaveConfigClick(Sender: TObject);
    procedure btnGenerateMailClick(Sender: TObject);
    procedure btnSendMailToClick(Sender: TObject);
    procedure tabCustomerMailPreviewShow(Sender: TObject);
    procedure fdmParamsBeforeDelete(DataSet: TDataSet);
    procedure btnTestUrlClick(Sender: TObject);
    procedure lst1Click(Sender: TObject);
    procedure lst2Click(Sender: TObject);
  private
    FMailConf: TJanuaMailConf;
    [Weak]
    FMailMessageBuilder: IJanuaMailMessageBuilder;
    [Weak]
    FMailSender: IJanuaMailSender;
    FDetailDataset: TDataSet;
    FMasterDataset: TDataSet;
    FMessage: TJanuaMailMessage;
    procedure SetMailConf(const Value: TJanuaMailConf);
    procedure SetMailMessageBuilder(const Value: IJanuaMailMessageBuilder);
    procedure SetMailSender(const Value: IJanuaMailSender);
    function GetMailMessageBuilder: IJanuaMailMessageBuilder;
    procedure SetDetailDataset(const Value: TDataSet);
    procedure SetMasterDataset(const Value: TDataSet);
  protected
    procedure LoadSettings;
    procedure SaveSettings;
    procedure LoadConfig;
    procedure SaveConfig;
    { Private declarations }
  public
    constructor Create(AOwner: TComponent); override;
    procedure OnSaveHtml(Sender: TObject);
    procedure AfterConstruction; override;
    procedure LogProc(aProc: string; aLog: string; aObject: TObject);
    destructor Destroy; override;
    procedure SendMailOk(Sender: TObject; AOkMessage: string; aMessage: TJanuaMailMessage);
    procedure SendMailError(Sender: TObject; AErrorMessage: string; aMessage: TJanuaMailMessage);
    procedure SendMailLog(Sender: TObject; AOkMessage: string; aMessage: TJanuaMailMessage);
  public
    { Public declarations }
    property MasterDataset: TDataSet read FMasterDataset write SetMasterDataset;
    property DetailDataset: TDataSet read FDetailDataset write SetDetailDataset;
    property MailConf: TJanuaMailConf read FMailConf write SetMailConf;
    property MailMessageBuilder: IJanuaMailMessageBuilder read GetMailMessageBuilder
      write SetMailMessageBuilder;
    property MailSender: IJanuaMailSender read FMailSender write SetMailSender;
  end;

implementation

uses Spring, Clipbrd, Janua.Application.Framework, Janua.Core.Functions, Janua.Cloud.Impl, Janua.Core.Json;

{$R *.dfm}
{ TFrame1 }

procedure TframeVCLMailMessageConfig.AfterConstruction;
begin
  inherited;
  frameHTMLEditor1.OnSaveButton := OnSaveHtml;
end;

procedure TframeVCLMailMessageConfig.btnGenerateMailClick(Sender: TObject);
begin
  FMailMessageBuilder.LoadSettings;
  FMailMessageBuilder.DataSet := FMasterDataset;
  FMessage := FMailMessageBuilder.GenerateMailMessage;

  edtTestMailTo.Text := FMessage.MailTo;
  edtTestMailFromName.Text := FMessage.From;
  edtMsgTestFrom.Text := FMessage.FromAddr;
  edtMailTestSubject.Text := FMessage.Subject;
  brwTestMessage.LoadHTML(FMessage.Text);
  advmMailHtmlPreview.Lines.Text := FMessage.Text;
  advmMailJsonPreview.Lines.Text := FMessage.GetAsJson;
end;

procedure TframeVCLMailMessageConfig.btnLoadMailConfigClick(Sender: TObject);
begin
  FMailConf.LoadConfig;
  frameHTMLEditor1.Html := FMailConf.AsHtml;
end;

procedure TframeVCLMailMessageConfig.btnSaveConfigClick(Sender: TObject);
begin
  SaveConfig;
end;

procedure TframeVCLMailMessageConfig.btnSendMailToClick(Sender: TObject);
var
  lError: string;
begin
  Guard.CheckNotNull(FMailMessageBuilder, 'FMailMessageBuilder');
  Guard.CheckNotNull(FMailSender, 'FMailSender');

  LoadSettings;
  FMailMessageBuilder.DataSet := FMasterDataset;
  FMessage := FMailMessageBuilder.GenerateMailMessage;

  edtTestMailTo.Text := FMessage.MailTo;
  edtTestMailFromName.Text := FMessage.From;
  edtMsgTestFrom.Text := FMessage.FromAddr;
  edtMailSubject.Text := FMessage.Subject;
  brwTestMessage.LoadHTML(FMessage.Text);

  FMailSender.LoadServerConf;
  FMailSender.SendMailMulti(FMessage, lError);
  if lError <> '' then
    JShowWarning(lError);
end;

procedure TframeVCLMailMessageConfig.btnTestUrlClick(Sender: TObject);
var
  sTemp: string;
begin
  sTemp := FMailConf.GenerateUrl(FMasterDataset);
  edtCustomerMobileUrl1.Text := sTemp;
  sTemp := FMailConf.GenerateTinyUrl(sTemp);
  edtTestTinyUrl.Text := sTemp;
end;

constructor TframeVCLMailMessageConfig.Create(AOwner: TComponent);
begin
  inherited;
{$IFNDEF DEBUG}
  Label1.Visible := False;
{$ENDIF}
end;

destructor TframeVCLMailMessageConfig.Destroy;
begin
  if Assigned(FMailConf) then
    FMailConf.Free;
  inherited;
end;

procedure TframeVCLMailMessageConfig.fdmParamsBeforeDelete(DataSet: TDataSet);
begin
  FMailConf.MailMessageConf.CustomFields.RemoveCustomField(fdmParams.FieldByName('key').AsString);
end;

function TframeVCLMailMessageConfig.GetMailMessageBuilder: IJanuaMailMessageBuilder;
begin
  Result := FMailMessageBuilder
end;

procedure TframeVCLMailMessageConfig.LoadConfig;
begin
  FMailConf.LoadConfig;
  brwModelMessage.LoadHTML(FMailConf.AsHtml);
  fdmParams.EmptyDataSet;
  if FMailConf.MailMessageConf.CustomFields.HasCustomFields then
    FMailConf.MailMessageConf.CustomFields.SaveToDataset(fdmParams);
end;

procedure TframeVCLMailMessageConfig.LoadSettings;
begin
  FMailMessageBuilder.LoadSettings;
end;

procedure TframeVCLMailMessageConfig.LogProc(aProc, aLog: string; aObject: TObject);
begin
  TJanuaLogger.LogRecord(aProc, aLog, aObject);
  memJsonLog.Lines.Add(JsonLogString(aProc, aLog, aObject));
end;

procedure TframeVCLMailMessageConfig.lst1Click(Sender: TObject);
begin
  Clipboard.AsText := lst1.Items[lst1.ItemIndex];
  edLabelTag.Text := lst1.Items[lst1.ItemIndex];
end;

procedure TframeVCLMailMessageConfig.lst2Click(Sender: TObject);
begin
  Clipboard.AsText := lst2.Items[lst2.ItemIndex];
  edLabelTag.Text := lst2.Items[lst2.ItemIndex];
end;

procedure TframeVCLMailMessageConfig.OnSaveHtml(Sender: TObject);
begin
  advmMailHtml.Lines.Text := frameHTMLEditor1.E.Document.OuterHTML;
  FMailConf.AsHtml := frameHTMLEditor1.Html;
  brwModelMessage.LoadHTML('<htmlt><body>' + advmMailHtml.Lines.Text + '</body></html>');
end;

procedure TframeVCLMailMessageConfig.SetMailMessageBuilder(const Value: IJanuaMailMessageBuilder);
begin
  if not Supports(Value, IJanuaMailMessageBuilder) then
    raise Exception.Create(ClassName + ': IJanuaMailMessageBuilder not supported');

  FMailMessageBuilder := Value;
  FMailMessageBuilder.LogProc := LogProc;
  SetMailConf(FMailMessageBuilder.MailConf);
  if Assigned(FMailMessageBuilder.MailSender) then
    SetMailSender(FMailMessageBuilder.MailSender);
  if Assigned(FMailMessageBuilder.DataSet) then
    SetMasterDataset(FMailMessageBuilder.DataSet);
  LoadSettings;
  SetMasterDataset(FMailMessageBuilder.DataSet);
end;

procedure TframeVCLMailMessageConfig.SetMailSender(const Value: IJanuaMailSender);
begin
  FMailSender := Value;
  if Assigned(FMailSender) then
  begin
    FMailSender.OnMailSendStart := SendMailLog;
    FMailSender.OnMailSendError := SendMailError;
    FMailSender.OnMailSendError := SendMailError;
  end;
end;

procedure TframeVCLMailMessageConfig.SetMasterDataset(const Value: TDataSet);
var
  aField: TField;
begin
  if FMasterDataset <> Value then
  begin
    FMasterDataset := Value;
    if Assigned(FMasterDataset) then
    begin
      for aField in FMasterDataset.Fields do
        lst1.Items.Add('$$' + aField.FieldName + '$$');
{$IFDEF DEBUG}
      Label1.Caption := FMasterDataset.ClassName + ' ' + FMasterDataset.Owner.QualifiedClassName + ' ' +
        FMasterDataset.Owner.Name + '.' + FMasterDataset.Name;
{$ENDIF}
    end;
  end;
  dsMaster.DataSet := FMasterDataset;
  if not FMasterDataset.Active then
    FMasterDataset.Open;

  frameHTMLEditor1.MasterDataset := FMasterDataset;
  frameHTMLEditor1.Setup;
end;

procedure TframeVCLMailMessageConfig.SaveConfig;
begin
  FMailConf.AsHtml := advmMailHtml.Text;
  FMailConf.MailFrom := edtCustomerFrom.Text;
  FMailConf.Subject := edtMailSubject.Text;
  FMailConf.MailReply := edtReplyTo.Text;
  FMailConf.MailTo := edtMailCustomerTo.Text;
  FMailConf.Url := edtCustomerMobileUrl.Text;
  FMailConf.MailMessageConf.CustomFields.LoadFromDataset(fdmParams);
  FMailConf.SaveConfig;
  frameHTMLEditor1.Html := FMailConf.AsHtml;
end;

procedure TframeVCLMailMessageConfig.SaveSettings;
begin
  SaveConfig
end;

procedure TframeVCLMailMessageConfig.SendMailError(Sender: TObject; AErrorMessage: string;
  aMessage: TJanuaMailMessage);
begin
  JShowError(AErrorMessage, aMessage.Subject)
end;

procedure TframeVCLMailMessageConfig.SendMailLog(Sender: TObject; AOkMessage: string;
  aMessage: TJanuaMailMessage);
begin
  LogProc('SendMail', AOkMessage + sLineBreak + aMessage.Subject, Sender);
end;

procedure TframeVCLMailMessageConfig.SendMailOk(Sender: TObject; AOkMessage: string;
  aMessage: TJanuaMailMessage);
begin
  LogProc('SendMail', AOkMessage + sLineBreak + aMessage.Subject, Sender);
  JShowMessage('Message Sent', aMessage.Subject);
end;

procedure TframeVCLMailMessageConfig.SetDetailDataset(const Value: TDataSet);
begin
  FDetailDataset := Value;
  frameHTMLEditor1.DetailDataset := FDetailDataset;
end;

procedure TframeVCLMailMessageConfig.SetMailConf(const Value: TJanuaMailConf);
begin
  FMailConf := Value;

  if Assigned(FMailConf) then
  begin
    FMailConf.LoadConfig;
    FMailConf.Bind('AsHtml', advmMailHtml, 'Text');
    FMailConf.Bind('MailFrom', edtCustomerFrom, 'Text');
    FMailConf.Bind('Subject', edtMailSubject, 'Text');
    FMailConf.Bind('MailReply', edtReplyTo, 'Text');
    FMailConf.Bind('AsJson', advmMailJson, 'Text');
    // edtMailCC
    FMailConf.Bind('MailCC', edtlMailCC, 'Text');
    // edtMailCC
    FMailConf.Bind('MailBCC', edtlMailBCC, 'Text');
    // edtMailCustomerTo - mailto
    FMailConf.Bind('MailTo', edtMailCustomerTo, 'Text');
    // edtCustomerFromMail  - mailfromname
    FMailConf.Bind('MailFromName', edtCustomerFromMail, 'Text');
    FMailConf.Bind('TestRecipients', edtMailCustomerRecipient, 'Text');
    FMailConf.Bind('MailCDNUrl', edtCustomerTestRecipients, 'Text');
    // 'Url'
    FMailConf.Bind('Url', edtCustomerMobileUrl, 'Text');

    frameHTMLEditor1.Html := FMailConf.AsHtml;
  end;
end;

procedure TframeVCLMailMessageConfig.tabCustomerMailPreviewShow(Sender: TObject);
begin
  brwModelMessage.LoadHTML(FMailConf.AsHtml);
end;

end.
