unit Janua.VCL.Cloud.frameSMSMessageConfig;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  // VCL
  VCL.Graphics, VCL.Controls, VCL.Forms, VCL.Dialogs, VCL.StdCtrls, AdvMemo, VCL.ExtCtrls, VCL.Grids,
  VCL.DBGrids, advmjson, VCL.ComCtrls,
  // FireDAC
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.DatS, FireDAC.Phys.Intf,
  // Janua  Intf/Types
  Janua.Cloud.Types, Janua.Cloud.Intf, Janua.Cloud.Sms.Intf, Janua.Orm.Intf, Janua.Core.System.Types,
  // Januaproject  Classes
  Janua.VCL.Interposers, Janua.TMS.Interposers, Janua.Cloud.Conf, Janua.Core.Classes, Janua.Cloud.Impl,
  VCL.Mask;

type
  TframeVCLSMSMessageConfig = class(TFrame, IJanuaSMSBuilderForm)
    Panel1: TPanel;
    Panel2: TPanel;
    lblMsgTo: TLabel;
    grpURL: TGroupBox;
    lblMobileCustomerUrl: TLabel;
    edtMobileUrl: TEdit;
    btnTestUrl: TButton;
    edtCustomerMobileUrl1: TEdit;
    edtTestTinyUrl: TEdit;
    advmSMSTemplate: TAdvMemo;
    btnSaveConfig: TButton;
    btnLoadSMSConfig: TButton;
    btnGenerateSMS: TButton;
    btnSendMailTo: TButton;
    edPhoneCustomerTo: TEdit;
    rgEngine: TRadioGroup;
    fdmParams: TFDMemTable;
    fldParamskey: TStringField;
    fldParamsValue: TStringField;
    dsParams: TDataSource;
    ast1: TAdvJSONMemoStyler;
    pnlLists: TPanel;
    spl2: TSplitter;
    lst1: TListBox;
    lst2: TListBox;
    edLabelTag: TEdit;
    lbKey: TLabel;
    pnlSmsTestConfig: TPanel;
    dbgrdParams: TDBGrid;
    DBGrid1: TDBGrid;
    dsMaster: TDataSource;
    edTestSMSTo: TEdit;
    advmSMSTest: TAdvMemo;
    advmjson: TAdvMemo;
    lbEdtTemplateSID: TLabeledEdit;
    btnSendSmsTemplate: TButton;
    memTemplateParams: TMemo;
    lbContentVariables: TLabel;
    memParamsDestination: TMemo;
    procedure btnLoadSMSConfigClick(Sender: TObject);
    procedure btnSaveConfigClick(Sender: TObject);
    procedure btnGenerateSMSClick(Sender: TObject);
    procedure btnSendMailToClick(Sender: TObject);
    procedure btnTestUrlClick(Sender: TObject);
    procedure rgEngineClick(Sender: TObject);
    procedure lst2Click(Sender: TObject);
    procedure lst1Click(Sender: TObject);
    procedure btnSendSmsTemplateClick(Sender: TObject);
  private
    FSMSMessageBuilder: IJanuaSMSBuilder;
    FTemplateDataset: TDataSet;
    FSMSConf: TSMSMessageConf;
    FSMSSender: IJanuaSMSSender;
    procedure UpdatedFrame;
    function GetSMSMessageBuilder: IJanuaSMSBuilder;
    procedure SetSMSMessageBuilder(const Value: IJanuaSMSBuilder);
    procedure SetSMSConf(const Value: TSMSMessageConf);
    procedure SetSMSSender(const Value: IJanuaSMSSender);
    procedure SetTemplateDataset(const Value: TDataSet);
  public
    procedure ReloadConfig;
    { Private declarations }
  public
    property SMSConf: TSMSMessageConf read FSMSConf write SetSMSConf;
    property TemplateDataset: TDataSet read FTemplateDataset write SetTemplateDataset;
    property SMSSender: IJanuaSMSSender read FSMSSender write SetSMSSender;
    property SMSMessageBuilder: IJanuaSMSBuilder read GetSMSMessageBuilder write SetSMSMessageBuilder;
  end;

implementation

uses Spring, Janua.Core.Functions, Clipbrd, Janua.VCL.dlgMobilePreview;

{$R *.dfm}
{ TframeVCLSMSMessageConfig }

procedure TframeVCLSMSMessageConfig.btnGenerateSMSClick(Sender: TObject);
begin
  FSMSMessageBuilder.LoadSettings;
  FSMSMessageBuilder.DataSet := FTemplateDataset;
  var
  lMessage := FSMSMessageBuilder.GenerateSMSMessage;

  edTestSMSTo.Text := lMessage.MsgTo;
  advmSMSTest.Text := lMessage.Body;
  memTemplateParams.Text := lMessage.
end;

procedure TframeVCLSMSMessageConfig.btnLoadSMSConfigClick(Sender: TObject);
begin
  ReloadConfig;

end;

procedure TframeVCLSMSMessageConfig.btnSaveConfigClick(Sender: TObject);
begin
  FSMSConf.SMSMessageConf.CustomFields.LoadFromDataset(fdmParams);

  { FSMSConf.Bind('msgTo', edPhoneCustomerTo, 'Text'); }
  FSMSConf.MsgTo := edPhoneCustomerTo.Text;
  { FSMSConf.Bind('Body', advmSMSTemplate, 'Text'); }
  FSMSConf.Body := advmSMSTemplate.Text;
  { FSMSConf.Bind('Url', advmSMSTemplate, 'Text'); }
  FSMSConf.Url := edtMobileUrl.Text;

  { FSMSConf.Bind('TemplateMessageID', lbEdtTemplateSID, 'Text'); }
  FSMSConf.TemplateMessageID := lbEdtTemplateSID.Text;
  { FSMSConf.Bind('TemplateMessageID', lbEdtTemplateSID, 'Text'); }
  FSMSConf.TemplateParams := memTemplateParams.Text;

  advmjson.Text := FSMSConf.AsJson;
  FSMSConf.SaveConfig;
  UpdatedFrame;

end;

procedure TframeVCLSMSMessageConfig.btnSendMailToClick(Sender: TObject);
var
  lMessage: TSMSMessage;
  lError: string;
begin
  Guard.CheckNotNull(FSMSMessageBuilder, 'FSMSMessageBuilder');
  Guard.CheckNotNull(FSMSMessageBuilder.SMSSender, 'FMailSender');

  FSMSMessageBuilder.LoadSettings;
  FSMSMessageBuilder.SendSMS(FTemplateDataset, nil,
    procedure(Ex: Exception; aOrigin: string)
    begin
      JShowError(aOrigin + slineBreak + Ex.Message);
    end,
    procedure
    begin
      JShowMessage('Messaggio Inviato');
    end);

end;

procedure TframeVCLSMSMessageConfig.btnSendSmsTemplateClick(Sender: TObject);
var
  lMessage: TSMSMessage;
  lError: string;
begin
  Guard.CheckNotNull(FSMSMessageBuilder, 'FSMSMessageBuilder');
  Guard.CheckNotNull(FSMSMessageBuilder.SMSSender, 'FMailSender');

  FSMSMessageBuilder.LoadSettings;
  FSMSMessageBuilder.SendSMS(FTemplateDataset, nil,
    procedure(Ex: Exception; aOrigin: string)
    begin
      JShowError(aOrigin + slineBreak + Ex.Message);
    end,
    procedure
    begin
      JShowMessage('Messaggio Inviato');
    end);

end;

procedure TframeVCLSMSMessageConfig.btnTestUrlClick(Sender: TObject);
var
  lMsg: TSMSMessage;
  ldlgVCLMobilePreview: TdlgVCLMobilePreview;
begin
  lMsg := FSMSMessageBuilder.GenerateSMSMessage;
  edtCustomerMobileUrl1.Text := lMsg.Url;
  edtTestTinyUrl.Text := lMsg.TinyUrl;
  ldlgVCLMobilePreview := TdlgVCLMobilePreview.Create(self);
  try
    ldlgVCLMobilePreview.NavigateToUrl(edtTestTinyUrl.Text);
    ldlgVCLMobilePreview.ShowModal;
  finally
    ldlgVCLMobilePreview.Free;
  end;
end;

function TframeVCLSMSMessageConfig.GetSMSMessageBuilder: IJanuaSMSBuilder;
begin
  Result := FSMSMessageBuilder;
end;

procedure TframeVCLSMSMessageConfig.lst1Click(Sender: TObject);
begin
  Clipboard.AsText := lst1.Items[lst1.ItemIndex];
  edLabelTag.Text := lst1.Items[lst1.ItemIndex];
end;

procedure TframeVCLSMSMessageConfig.lst2Click(Sender: TObject);
begin
  Clipboard.AsText := lst2.Items[lst2.ItemIndex];
  edLabelTag.Text := lst2.Items[lst2.ItemIndex];
end;

procedure TframeVCLSMSMessageConfig.ReloadConfig;
begin
  if Assigned(FSMSConf) then
  begin
    FSMSConf.LoadConfig;
    UpdatedFrame;
  end;
end;

procedure TframeVCLSMSMessageConfig.rgEngineClick(Sender: TObject);
begin
  case rgEngine.ItemIndex of
    0:
      FSMSConf.SMSSendingEngine := jseSMS;
    1:
      FSMSConf.SMSSendingEngine := jseWhatsapp;
  end;
  { jmtSMS, jmtTelegram, jmtWhatsApp }
  if Assigned(FSMSSender) then
  begin
    case rgEngine.ItemIndex of
      0:
        FSMSSender.MessageType := jmtSMS;
      1:
        FSMSSender.MessageType := jmtWhatsApp;
    end;
  end;
end;

procedure TframeVCLSMSMessageConfig.SetSMSConf(const Value: TSMSMessageConf);
begin
  FSMSConf := Value;
  if Assigned(FSMSConf) then
  begin
    ReloadConfig;
    FSMSConf.Bind('msgTo', edPhoneCustomerTo, 'Text');
    FSMSConf.Bind('Body', advmSMSTemplate, 'Text');
    FSMSConf.Bind('Url', advmSMSTemplate, 'Text');
    FSMSConf.Bind('AsJson', advmSMSTemplate, 'Text');
    FSMSConf.Bind('TemplateMessageID', lbEdtTemplateSID, 'Text');
    FSMSConf.Bind('TemplateParams', memTemplateParams, 'Text');
  end;
end;

procedure TframeVCLSMSMessageConfig.SetSMSMessageBuilder(const Value: IJanuaSMSBuilder);
begin
  FSMSMessageBuilder := Value;
  if Assigned(FSMSMessageBuilder) then
  begin
    SetSMSConf(FSMSMessageBuilder.SMSMessageConf);
    if Assigned(FSMSMessageBuilder.DataSet) then
      SetTemplateDataset(FSMSMessageBuilder.DataSet);
  end;
end;

procedure TframeVCLSMSMessageConfig.SetSMSSender(const Value: IJanuaSMSSender);
begin
  FSMSSender := Value;
end;

procedure TframeVCLSMSMessageConfig.SetTemplateDataset(const Value: TDataSet);
var
  aField: TField;
begin
  FTemplateDataset := Value;
  if Assigned(FTemplateDataset) then
    for aField in FTemplateDataset.Fields do
      lst1.Items.Add('$$' + aField.FieldName + '$$');
  dsMaster.DataSet := FTemplateDataset;
  if not FTemplateDataset.Active then
    FTemplateDataset.Open;

end;

procedure TframeVCLSMSMessageConfig.UpdatedFrame;
begin
  case FSMSConf.SMSMessageConf.SMSSendingEngine of
    jseSMS:
      begin
        rgEngine.ItemIndex := 0;
      end;
    jseWhatsapp:
      begin
        rgEngine.ItemIndex := 1;
      end;
  end;
  lbKey.Caption := FSMSConf.Key;
  edPhoneCustomerTo.Text := FSMSConf.MsgTo;
  advmSMSTemplate.Text := FSMSConf.Body;
  edtMobileUrl.Text := FSMSConf.Url;
  lbEdtTemplateSID.Text := FSMSConf.TemplateMessageID;
  memTemplateParams.Text := FSMSConf.TemplateParams;

  advmjson.Text := FSMSConf.AsJson;
  fdmParams.EmptyDataSet;
  if FSMSConf.SMSMessageConf.CustomFields.HasCustomFields then
    FSMSConf.SMSMessageConf.CustomFields.SaveToDataset(fdmParams);
end;

end.
