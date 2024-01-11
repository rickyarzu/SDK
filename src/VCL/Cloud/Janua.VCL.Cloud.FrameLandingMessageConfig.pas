unit Janua.VCL.Cloud.FrameLandingMessageConfig;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Clipbrd,
  // FireDAC.Comp.UI
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  // VCL
  VCL.Graphics, VCL.Controls, VCL.Forms, VCL.Dialogs, VCL.StdCtrls, VCL.ExtCtrls, VCL.TMSFNCTypes,
  VCL.TMSFNCUtils, VCL.TMSFNCGraphics, VCL.TMSFNCGraphicsTypes, VCL.TMSFNCCustomControl, VCL.TMSFNCWebBrowser,
  AdvMemo, VCL.ComCtrls, VCL.Grids, VCL.DBGrids, advmjson, AdvmWS,
  // Januaproject
  // Intf/Types
  Janua.Cloud.Mail.Intf, Janua.Cloud.Types, Janua.Core.System.Types, Janua.Cloud.Intf,
  // Classes/Impl
  Janua.Unidac.Connection, Janua.VCL.Interposers, Janua.TMS.Interposers, Janua.Cloud.Mail.Impl,
  Janua.Cloud.Conf, Janua.Cloud.Mail.Conf, Janua.VCL.frameHtmlEditor;

type
  TFrameVCLLandingMessageConfig = class(TFrame)
    pnlButtons: TPanel;
    btnMsgConfig: TButton;
    btnLoadMsgConfig: TButton;
    btnGenerateMessage: TButton;
    lblMailImagesURL: TLabel;
    edtLandingUrl: TEdit;
    btnGenerateTinyUrl: TButton;
    edtTinyUrl: TEdit;
    pgcCustomerMail: TPageControl;
    tabCustomerMailPreview: TTabSheet;
    brwModelMessage: TTMSFNCWebBrowser;
    tabCustomerTestMail: TTabSheet;
    lblMailCustomerCC: TLabel;
    edtMailTestSubject: TEdit;
    pnlMailTest: TPanel;
    lblMailFrom1: TLabel;
    lblTestMailTo1: TLabel;
    edtMsgTestFrom: TEdit;
    edtTestTinyUrl: TEdit;
    pgcTestPreview: TPageControl;
    tabPagePreview: TTabSheet;
    brwTestMessage: TTMSFNCWebBrowser;
    tabHtmlPreview: TTabSheet;
    advmMailHtmlPreview: TAdvMemo;
    tabJsonPreview: TTabSheet;
    advmMailJsonPreview: TAdvMemo;
    fdmParams: TFDMemTable;
    fldParamskey: TStringField;
    fldParamsValue: TStringField;
    dsParams: TDataSource;
    astHtml: TAdvHTMLMemoStyler;
    astJson: TAdvJSONMemoStyler;
    tabEditor: TTabSheet;
    frameHTMLEditor1: TframeHTMLEditor;
    tabAdvanced: TTabSheet;
    pgAdvanced: TPageControl;
    dbgrdParams: TDBGrid;
    tabAdvancedHtml: TTabSheet;
    advmMailHtml: TAdvMemo;
    tabAdvancedJson: TTabSheet;
    advmMailJson: TAdvMemo;
    tabAdvancedLog: TTabSheet;
    advmLogMessage: TAdvMemo;
    pnlLists: TPanel;
    edLabelTag: TEdit;
    lst1: TListBox;
    spl2: TSplitter;
    lst2: TListBox;
    dsMaster: TDataSource;
    grdMaster: TDBGrid;
    lbMasterDataset: TLabel;
    procedure btnMsgConfigClick(Sender: TObject);
    procedure btnLoadMsgConfigClick(Sender: TObject);
    procedure btnGenerateMessageClick(Sender: TObject);
    procedure frameHTMLEditor1lst1Click(Sender: TObject);
    procedure lst1Click(Sender: TObject);
    procedure pnlListsClick(Sender: TObject);
    procedure lst2Click(Sender: TObject);
    procedure tabCustomerMailPreviewShow(Sender: TObject);
    procedure tabPagePreviewShow(Sender: TObject);
    procedure tabCustomerTestMailShow(Sender: TObject);
  private
    { FMailConf: TJanuaMailConf; }
    FMessageConf: TLandingMessageConf;
    [Weak]
    FLandingMessageBuilder: IJanuaLandingMessageBuilder;
    FLandingMessage: TLandingMessage;
    FDetailDataset: TDataSet;
    FMasterDataset: TDataSet;
    procedure LoadRefreshConfig;
    procedure SetMessageConf(const Value: TLandingMessageConf);
    procedure SetLandingMessageBuilder(const Value: IJanuaLandingMessageBuilder);
    procedure SetDetailDataset(const Value: TDataSet);
    procedure SetMasterDataset(const Value: TDataSet);
    { FMailSender: IJanuaMailSender; }
  public
    procedure frameHTMLSaveButtonClick(Sender: TObject);
    procedure AfterConstruction; override;
    procedure LogProc(aProc: string; aLog: string; aObject: TObject);
    procedure GenerateTest;
  public
    { Public declarations }
    property MasterDataset: TDataSet read FMasterDataset write SetMasterDataset;
    property DetailDataset: TDataSet read FDetailDataset write SetDetailDataset;
    property MessageConf: TLandingMessageConf read FMessageConf write SetMessageConf;
    property LandingMessageBuilder: IJanuaLandingMessageBuilder read FLandingMessageBuilder
      write SetLandingMessageBuilder;
  end;

implementation

uses Janua.Core.Http, Janua.Application.Framework, Janua.Core.Json;

{$R *.dfm}
{ TFrameVCLLandingMessageConfig }

procedure TFrameVCLLandingMessageConfig.AfterConstruction;
begin
  inherited;
  frameHTMLEditor1.OnSaveButton := frameHTMLSaveButtonClick;
end;

procedure TFrameVCLLandingMessageConfig.btnGenerateMessageClick(Sender: TObject);
begin
  FLandingMessageBuilder.LogProc := LogProc;
  FLandingMessageBuilder.LoadSettings;
  if not Assigned(FLandingMessageBuilder.DataSet) then
    FLandingMessageBuilder.DataSet := FMasterDataset;
  FLandingMessage := FLandingMessageBuilder.GenerateLandingMessage;
  brwTestMessage.LoadHTML('<htmlt><body>' + FLandingMessage.Text + '</body></html>');
  advmMailHtmlPreview.Text := '<htmlt><body>' + sLineBreak + FLandingMessage.Text + sLineBreak +
    '</body></html>';
  advmMailJsonPreview.Text := FLandingMessage.GetAsJson;

  edtMsgTestFrom.Text := FLandingMessage.Url;
  if FLandingMessage.Url <> '' then
    edtTestTinyUrl.Text := GenerateTinyUrl(FLandingMessage.Url);

end;

procedure TFrameVCLLandingMessageConfig.btnLoadMsgConfigClick(Sender: TObject);
begin
  LoadRefreshConfig;
  brwModelMessage.LoadHTML('<html><body>' + FMessageConf.Text + '</body></html>');
  frameHTMLEditor1.Html := FMessageConf.Text;
end;

procedure TFrameVCLLandingMessageConfig.btnMsgConfigClick(Sender: TObject);
begin
  FMessageConf.LandingMessageConf.CustomFields.LoadFromDataset(fdmParams);
  FMessageConf.SaveConfig;
  frameHTMLEditor1.Html := FMessageConf.Text;
  brwModelMessage.LoadHTML('<html><body>' + FMessageConf.Text + '</body></html>');
end;

procedure TFrameVCLLandingMessageConfig.frameHTMLEditor1lst1Click(Sender: TObject);
begin
  frameHTMLEditor1.lst1Click(Sender);
end;

procedure TFrameVCLLandingMessageConfig.frameHTMLSaveButtonClick(Sender: TObject);
begin
  advmMailHtml.Lines.Text := (frameHTMLEditor1.E.Document.OuterHTML);
  brwModelMessage.LoadHTML('<htmlt><body>' + FMessageConf.Text + '</body></html>');
end;

procedure TFrameVCLLandingMessageConfig.GenerateTest;
begin
  btnGenerateMessageClick(self);
end;

procedure TFrameVCLLandingMessageConfig.LoadRefreshConfig;
begin
  if Assigned(FMessageConf) then
  begin
    FMessageConf.LoadConfig;
    advmMailHtml.Text := FMessageConf.Text;
    FMessageConf.Bind('Text', advmMailHtml, 'Text');
    advmMailJson.Text := FMessageConf.AsJson;
    FMessageConf.Bind('AsJson', advmMailJson, 'Text');
    edtLandingUrl.Text := FMessageConf.Url;
    FMessageConf.Bind('Url', edtLandingUrl, 'Text');

    frameHTMLEditor1.Html := FMessageConf.Text;

    fdmParams.EmptyDataSet;
    if FMessageConf.LandingMessageConf.CustomFields.HasCustomFields then
      FMessageConf.LandingMessageConf.CustomFields.SaveToDataset(fdmParams);
  end;
end;

procedure TFrameVCLLandingMessageConfig.LogProc(aProc, aLog: string; aObject: TObject);
begin
  TJanuaLogger.LogRecord(aProc, aLog, aObject);
  advmLogMessage.Lines.Add(JsonLogString(aProc, aLog, aObject));
end;

procedure TFrameVCLLandingMessageConfig.lst1Click(Sender: TObject);
begin
  Clipboard.AsText := lst1.Items[lst1.ItemIndex];
  edLabelTag.Text := lst1.Items[lst1.ItemIndex];
end;

procedure TFrameVCLLandingMessageConfig.lst2Click(Sender: TObject);
begin
  Clipboard.AsText := lst2.Items[lst2.ItemIndex];
  edLabelTag.Text := lst2.Items[lst2.ItemIndex];
end;

procedure TFrameVCLLandingMessageConfig.pnlListsClick(Sender: TObject);
begin
  Clipboard.AsText := lst1.Items[lst1.ItemIndex];
  edLabelTag.Text := lst1.Items[lst1.ItemIndex];
end;

procedure TFrameVCLLandingMessageConfig.SetDetailDataset(const Value: TDataSet);
begin
  FDetailDataset := Value;
  frameHTMLEditor1.DetailDataset := FDetailDataset;
  frameHTMLEditor1.Setup;
end;

procedure TFrameVCLLandingMessageConfig.SetLandingMessageBuilder(const Value: IJanuaLandingMessageBuilder);
begin
  FLandingMessageBuilder := Value;
  FLandingMessageBuilder.LogProc := LogProc;
  SetMessageConf(FLandingMessageBuilder.MessageConf);
end;

procedure TFrameVCLLandingMessageConfig.SetMasterDataset(const Value: TDataSet);
var
  aField: TField;
begin
  FMasterDataset := Value;
  if Assigned(FMasterDataset) then
  begin
    for aField in FMasterDataset.Fields do
      lst1.Items.Add('$$' + aField.FieldName + '$$');
    var
    lbOwner := '';
    if Assigned(FMasterDataset.Owner) then
      lbOwner := FMasterDataset.Owner.Name + '.';
    lbMasterDataset.Caption := lbOwner + FMasterDataset.Name;
  end;

  frameHTMLEditor1.MasterDataset := FMasterDataset;
  dsMaster.DataSet := FMasterDataset;
  frameHTMLEditor1.Setup;
end;

procedure TFrameVCLLandingMessageConfig.SetMessageConf(const Value: TLandingMessageConf);
begin
  FMessageConf := Value;
  LoadRefreshConfig;
end;

procedure TFrameVCLLandingMessageConfig.tabCustomerMailPreviewShow(Sender: TObject);
begin
  brwModelMessage.LoadHTML('<htmlt><body>' + FMessageConf.Text + '</body></html>');
end;

procedure TFrameVCLLandingMessageConfig.tabCustomerTestMailShow(Sender: TObject);
begin
  brwTestMessage.LoadHTML('<htmlt><body>' + FLandingMessage.Text + '</body></html>');
end;

procedure TFrameVCLLandingMessageConfig.tabPagePreviewShow(Sender: TObject);
begin
  advmMailHtmlPreview.Text := '<htmlt><body>' + sLineBreak + FLandingMessage.Text + sLineBreak +
    '</body></html>';
end;

end.
