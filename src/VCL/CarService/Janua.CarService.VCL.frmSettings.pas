unit Janua.CarService.VCL.frmSettings;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Winapi.WebView2,
  Winapi.ActiveX,
  // DB
  Data.DB, MemDS, DBAccess, Uni, UniProvider, PostgreSQLUniProvider,
  // VCL
  VCL.Graphics, VCL.ClipBrd, VCL.Controls, VCL.Forms, VCL.Dialogs, VCL.Grids, VCL.DBGrids, CRGrid,
  VCL.StdCtrls, VCL.Mask, VCL.ExtCtrls, VCL.DBCGrids, VCL.ComCtrls, VCL.DBCtrls, VCL.Edge,
  // Almediadev Style Controls
  AdvmWS, scControls, scDBControls, scGrids, scDBGrids,
  // FNC
  VCL.TMSFNCWebBrowser, VCL.TMSFNCCustomComponent, VCL.TMSFNCCloudBase, VCL.TMSFNCCloudSendGrid,
  VCL.TMSFNCTypes, VCL.TMSFNCUtils, VCL.TMSFNCGraphics, VCL.TMSFNCGraphicsTypes, VCL.TMSFNCCustomControl,
  // TMS
  advmjson, DBAdvNavigator, DBAdvMemo, AdvScrollControl, AdvRichEditorBase, AdvRichEditor, AdvMemo,
  //
  // Januaproject
  Janua.ViewModels.Intf, uJanuaVCLForm, Janua.Core.Types, Janua.Core.Classes.Intf, Janua.Orm.Intf,
  Janua.Forms.Types, Janua.Controls.Intf, Janua.Controls.Forms.Intf, Janua.Bindings.Intf,
  Janua.Anagraph.Types,
  // Types/Intf
  Janua.Cloud.Types, Janua.Cloud.Mail.Conf, Janua.Core.System.Types, Janua.Cloud.Sms.Intf,
  Janua.Cloud.Mail.Intf, Janua.Cloud.Mail.Impl,
  // Impl
  Janua.Unidac.Connection, Janua.VCL.Interposers, Janua.TMS.Interposers, Janua.CarService.PgSettings,
  Janua.VCL.Cloud.frameMailMessageConfig, Janua.CarService.Intf, Janua.VCL.Cloud.frameSMSMessageConfig,
  Janua.VCL.Cloud.FrameLandingMessageConfig, Janua.VCL.Cloud.frameSMSSenderConfig;

type
  TSubRecordTest = record
    TestGUID: TGUID;
  private
    function GetAsSTring: string;
    procedure SetAsString(const Value: string);
  public
    property AsString: string read GetAsSTring write SetAsString;
  end;

  TRecordTest = record
    TestInteger: integer;
    TestString: string;
    TestFloat: Real;
    TestDate: TDateTime;
    TestSubRecord: TSubRecordTest;
  end;

  TfrmVCLCarServiceSettings = class(TJanuaVCLFormModel, IJanuaForm, IJanuaContainer, IJanuaBindable)
    pgcMessageSender: TPageControl;
    tabBooking: TTabSheet;
    tabMailMessage: TTabSheet;
    lblCellPhone: TLabel;
    lblDriverPhone: TLabel;
    CRDBGrid1: TCRDBGrid;
    btnGenerateTinyUrl: TButton;
    edtTinyUrl: TEdit;
    edtCustomerPhone: TEdit;
    edtDriverPhone: TEdit;
    btnSendMessageCustomer: TButton;
    btnSendMessageDriver: TButton;
    grdTimeTable: TDBCtrlGrid;
    dbedtworkingday: TDBEdit;
    dbedtslot_des: TDBEdit;
    dbedtan_cellular: TDBEdit;
    AdvRichEditor1: TAdvRichEditor;
    AdvMemo1: TAdvMemo;
    AdvMemo2: TAdvMemo;
    PgErgoConnection: TJanuaUniConnection;
    PgUni: TPostgreSQLUniProvider;
    dsPickup: TDataSource;
    dsBooking: TDataSource;
    tabTestConf: TTabSheet;
    pgcTestConfigurations: TPageControl;
    tabSerizlizer: TTabSheet;
    btnDeserialize1: TButton;
    AdvMemo5: TAdvMemo;
    AdvMemo4: TAdvMemo;
    AdvMemo3: TAdvMemo;
    btnSerialize1: TButton;
    TMSFNCCloudSendGrid1: TTMSFNCCloudSendGrid;
    tabConfiguration: TTabSheet;
    Button1: TButton;
    Button2: TButton;
    pgcMailSettings: TPageControl;
    tabMailUser: TTabSheet;
    astHtml: TAdvHTMLMemoStyler;
    tabCompanyMail: TTabSheet;
    astJson: TAdvJSONMemoStyler;
    tabServiceMail: TTabSheet;
    tabCheckConfiguration: TTabSheet;
    DBAdvNavigator1: TDBAdvNavigator;
    dsConfiguration: TUniDataSource;
    DBAdvMemo1: TDBAdvMemo;
    CRDBGrid2: TCRDBGrid;
    frameCustomerMailMessageConfig: TframeVCLMailMessageConfig;
    pgcDriversMail: TPageControl;
    tabDriver1Mail: TTabSheet;
    tabDriver2Mail: TTabSheet;
    frameDriver1MailMessageConfig: TframeVCLMailMessageConfig;
    frameDriver2MailMessageConfig: TframeVCLMailMessageConfig;
    frameCompanyMailMessageConfig: TframeVCLMailMessageConfig;
    frameServiceMailMessageConfig: TframeVCLMailMessageConfig;
    tabLog: TTabSheet;
    advmLog: TAdvMemo;
    tabLandingPages: TTabSheet;
    tabSMSMessages: TTabSheet;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    pgcSmsMessage: TPageControl;
    tabSmsCustomer: TTabSheet;
    tabSmsDriver1: TTabSheet;
    tabSmsDriver2: TTabSheet;
    frameSMSCustomer: TframeVCLSMSMessageConfig;
    frameSmsDriver1: TframeVCLSMSMessageConfig;
    frameSMSDriver2: TframeVCLSMSMessageConfig;
    pgcLandingPages: TPageControl;
    tabLandingCustomer: TTabSheet;
    tabLandingDriver1: TTabSheet;
    frameLandingCustomer: TFrameVCLLandingMessageConfig;
    frameLandingDriver: TFrameVCLLandingMessageConfig;
    spl1: TSplitter;
    grpSendgrid: TGroupBox;
    edtAPIKey: TEdit;
    btnSendgridAPIKeySave: TButton;
    btnSendgridAPIKeyLoad1: TButton;
    frameVCLMailSmsSenderConfig1: TframeVCLMailSmsSenderConfig;
    tsLandingBooking: TTabSheet;
    frameLandingBooking: TFrameVCLLandingMessageConfig;
    tbConfigParams: TTabSheet;
    pnlDBConfiguration: TPanel;
    scDBNavigator1: TscDBNavigator;
    scDBGrid1: TscDBGrid;
    DBAdvMemo2: TDBAdvMemo;
    tabContracts: TTabSheet;
    PageControl1: TPageControl;
    tabCustomerContract: TTabSheet;
    tabDriverContract: TTabSheet;
    tabServiceContract: TTabSheet;
    frameCustomerContract: TFrameVCLLandingMessageConfig;
    frameDriverContract: TFrameVCLLandingMessageConfig;
    frameServiceContract: TFrameVCLLandingMessageConfig;
    procedure btnDeserialize1Click(Sender: TObject);
    procedure btnSerialize1Click(Sender: TObject);
    procedure btnSendgridAPIKeySaveClick(Sender: TObject);
    procedure btnSendgridAPIKeyLoad1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnGenerateMailClick(Sender: TObject);
    procedure btnGenerateDriverMailClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure frameSMSCustomerbtnTestUrlClick(Sender: TObject);
    procedure frameSMSCustomerbtnSendMailToClick(Sender: TObject);
    procedure frameCustomerMailMessageConfigbtnSaveConfigClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure tabDriverContractContextPopup(Sender: TObject; MousePos: TPoint; var Handled: Boolean);
  private
    // Mail Management
    FMailServerConf: TJanuaMailServerConf;
    FCustomerMailMessage: IJanuaMailMessageBuilder;
    FDriver1MailMessage: IJanuaMailMessageBuilder;
    FDriver2MailMessage: IJanuaMailMessageBuilder;
    FGridMailSender: IJanuaMailSendGridSender;
    FCSDriverMailBuilder1: IJanuaCSDriverMailBuilder1;
    FCSCustomerMailBuilder: IJanuaCSCustomerMailBuilder;
    FCSDriverMailBuilder2: IJanuaCSDriverMailBuilder2;
    FCSServiceMailBuilder: IJanuaCSServiceMailBuilder;
    FCSBackOfficeMailBuilder: IJanuaCSBackOfficeMailBuilder;

    // Landing Messages
    FCSDriverLandingMsgBuilder: IJanuaCSDriverLandingMsgBuilder;
    FCSCustomerLandingMsgBuilder: IJanuaCSCustomerLandingMsgBuilder;
    FCSBookingLandingMsgBuilder: IJanuaCSBookingLandingMsgBuilder;

    // Contracts
    // (IJanuaCSDriverContractBuilder, );
    FCSDriverContractBuilder: IJanuaCSDriverContractBuilder;
    // (IJanuaCSCustomerContractBuilder, );
    FCSCustomerContractBuilder: IJanuaCSCustomerContractBuilder;
    // (IJanuaCSServiceContractBuilder, );
    FCSServiceContractBuilder: IJanuaCSServiceContractBuilder;

    // SMS Builder
    FCSDriverSMSBuilder1: IJanuaCSDriverSMSBuilder1;
    FCSDriverSMSBuilder2: IJanuaCSDriverSMSBuilder2;
    FCSCustomerSMSBuilder: IJanuaCSCustomerSMSBuilder;

    // SMSSender
    FCSDriverSMSSender1: IJanuaSMS  Twilio;
    FCSDriverSMSSender2: IJanuaSMSTwilio;
    FCSCustomerSMSSender: IJanuaSMSTwilio;

    FDMCarserviceUniPgSettings: TdmCarserviceUniPgSettings;
  end;

var
  frmVCLCarServiceSettings: TfrmVCLCarServiceSettings;

implementation

uses Janua.Application.Framework, Janua.Core.Functions, Janua.Core.Json,
  // Janua.Core.Http contiene la funzione GenerateTinyUrl per testare l'url di chiamata
  Janua.Core.Http;

{$R *.dfm}

procedure TfrmVCLCarServiceSettings.btnDeserialize1Click(Sender: TObject);
var
  aTestRecord: TRecordTest;
begin
  AdvMemo4.Lines.Text := TJanuaApplication.UserSessionVM.ReadSchemaConf('TestConf', AdvMemo3.Lines.Text);
  aTestRecord := TJanuaJson.DeserializeSimple<TRecordTest>(AdvMemo4.Lines.Text);
  AdvMemo5.Lines.Text := TJanuaJson.SerializeSimple<TRecordTest>(aTestRecord);
end;

procedure TfrmVCLCarServiceSettings.btnGenerateDriverMailClick(Sender: TObject);
var
  aMessage1, aMessage2: TJanuaMailMessage;
begin
  FDriver1MailMessage.LoadSettings;
  FDriver1MailMessage.Dataset := dmCarserviceUniPgSettings.qryBooking;
  aMessage1 := FDriver1MailMessage.GenerateMailMessage;
  { edtDriver1TestMailTo.Text := aMessage1.MailTo;
    edtDriver1MsgFromName.Text := aMessage1.From;
    edtDriver1MsgFrom.Text := aMessage1.FromAddr;
    edtMailDriver1TestSubject.Text := aMessage1.Subject;
    brwDriver1TestMessage1.LoadHTML(aMessage1.Text); }

  FDriver2MailMessage.LoadSettings;
  FDriver2MailMessage.Dataset := dmCarserviceUniPgSettings.qryBooking;
  aMessage2 := FDriver2MailMessage.GenerateMailMessage;
  { edtDriver2TestMailTo.Text := aMessage2.MailTo;
    edtDriver2MsgFromName.Text := aMessage2.From;
    edtDriver2MsgFrom.Text := aMessage2.FromAddr;
    edtDriver2MailSubject.Text := aMessage2.Subject;
    brwDriver2TestMessage.LoadHTML(aMessage2.Text); }
end;

procedure TfrmVCLCarServiceSettings.btnGenerateMailClick(Sender: TObject);
var
  aMessage: TJanuaMailMessage;
begin
  FCustomerMailMessage.LoadSettings;
  FCustomerMailMessage.Dataset := dmCarserviceUniPgSettings.qryBooking;
  aMessage := FCustomerMailMessage.GenerateMailMessage;

  { edtMailCustomerMsgRecipient.Text := aMessage.MailTo;
    edtCustomerTestMailTo.Text := aMessage.From;
    edtCustomerMsgFrom.Text := aMessage.FromAddr;
    edtMailCustomerSubject.Text := aMessage.Subject;
    brwCustomerTestMessage1.LoadHTML(aMessage.Text); }
end;

procedure TfrmVCLCarServiceSettings.btnSendgridAPIKeyLoad1Click(Sender: TObject);
begin
  FMailServerConf.APIKey := edtAPIKey.Text;
  TJanuaApplication.UserSessionVM.ReadSchemaConf('SendGridKey', FMailServerConf.AsJson);
end;

procedure TfrmVCLCarServiceSettings.btnSendgridAPIKeySaveClick(Sender: TObject);
begin
  FMailServerConf.APIKey := edtAPIKey.Text;
  var
  lConf := FMailServerConf.AsJson;
  TJanuaApplication.UserSessionVM.WriteSchemaConf('SendGridKey', lConf);
end;

procedure TfrmVCLCarServiceSettings.btnSerialize1Click(Sender: TObject);
var
  aTestRecord: TRecordTest;
begin
  aTestRecord.TestInteger := 100;
  aTestRecord.TestString := 'Ciao';
  aTestRecord.TestFloat := 13.45;
  aTestRecord.TestDate := Now();
  aTestRecord.TestSubRecord.TestGUID := TGUID.NewGuid;
  AdvMemo3.Lines.Text := TJanuaJson.SerializeSimple<TRecordTest>(aTestRecord);
  TJanuaApplication.UserSessionVM.WriteSchemaConf('TestConf', AdvMemo3.Lines.Text);
end;

procedure TfrmVCLCarServiceSettings.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Assigned(FCSDriverMailBuilder1) then
    TJanuaApplication.ReleaseObject(FCSDriverMailBuilder1.GetSelf);
  if Assigned(FCSCustomerMailBuilder) then
    TJanuaApplication.ReleaseObject(FCSCustomerMailBuilder.GetSelf);
  if Assigned(FCSDriverMailBuilder2) then
    TJanuaApplication.ReleaseObject(FCSDriverMailBuilder2.GetSelf);
  if Assigned(FCSServiceMailBuilder) then
    TJanuaApplication.ReleaseObject(FCSServiceMailBuilder.GetSelf);
  if Assigned(FCSCustomerLandingMsgBuilder) then
    TJanuaApplication.ReleaseObject(FCSCustomerLandingMsgBuilder.GetSelf);
  // FCSBookingLandingMsgBuilder : IJanuaCSBookingLandingMsgBuilder;
  if Assigned(FCSBookingLandingMsgBuilder) then
    TJanuaApplication.ReleaseObject(FCSBookingLandingMsgBuilder.GetSelf);

  FCSDriverMailBuilder1 := nil;
  FCSCustomerMailBuilder := nil;
  FCSDriverMailBuilder2 := nil;
  FCSServiceMailBuilder := nil;
  FCSCustomerLandingMsgBuilder := nil;
  FCSBookingLandingMsgBuilder := nil;

end;

procedure TfrmVCLCarServiceSettings.FormCreate(Sender: TObject);
begin
  // Server Configuration
  FMailServerConf := TJanuaMailServerConf.Create;
  FDMCarserviceUniPgSettings := TdmCarserviceUniPgSettings.Create(self);

  // Grid Sender ---------------------------------------------------------------------------------------------
  TJanuaApplicationFactory.TryGetInterface(IJanuaMailSendGridSender, FGridMailSender, True); // ;

  // ---------------------------------------------------------------------------------------------------------
  TJanuaApplicationFactory.TryGetInterface(IJanuaCSCustomerMailBuilder, FCSCustomerMailBuilder);
  FCSCustomerMailBuilder.Dataset := FDMCarserviceUniPgSettings.qryBooking;
  FCSCustomerMailBuilder.MailSender := FGridMailSender;

  frameCustomerMailMessageConfig.MailMessageBuilder := FCSCustomerMailBuilder;

  // ---------------------------------------------------------------------------------------------------------
  TJanuaApplicationFactory.TryGetInterface(IJanuaCSDriverMailBuilder1, FCSDriverMailBuilder1);
  FCSDriverMailBuilder1.Dataset := FDMCarserviceUniPgSettings.qryBooking;
  FCSDriverMailBuilder1.MailSender := FGridMailSender;
  frameDriver1MailMessageConfig.MailMessageBuilder := FCSDriverMailBuilder1;

  // ---------------------------------------------------------------------------------------------------------
  TJanuaApplicationFactory.TryGetInterface(IJanuaCSDriverMailBuilder2, FCSDriverMailBuilder2);
  FCSDriverMailBuilder2.Dataset := FDMCarserviceUniPgSettings.qryBooking;
  FCSDriverMailBuilder2.MailSender := FGridMailSender;
  frameDriver2MailMessageConfig.MailMessageBuilder := FCSDriverMailBuilder2;

  // ---------------------------------------------------------------------------------------------------------
  TJanuaApplicationFactory.TryGetInterface(IJanuaCSBackOfficeMailBuilder, FCSBackOfficeMailBuilder);
  FCSBackOfficeMailBuilder.Dataset := FDMCarserviceUniPgSettings.qryBooking;
  FCSBackOfficeMailBuilder.MailSender := FGridMailSender;
  frameCompanyMailMessageConfig.MailMessageBuilder := FCSBackOfficeMailBuilder;

  // ---------------------------------------------------------------------------------------------------------
  TJanuaApplicationFactory.TryGetInterface(IJanuaCSServiceMailBuilder, FCSServiceMailBuilder);
  FCSServiceMailBuilder.Dataset := FDMCarserviceUniPgSettings.qryBooking;
  FCSServiceMailBuilder.MailSender := FGridMailSender;
  frameServiceMailMessageConfig.MailMessageBuilder := FCSServiceMailBuilder;

  // ---------------------------------------------------------------------------------------------------------
  TJanuaApplicationFactory.TryGetInterface(IJanuaSMSTwilio, FCSCustomerSMSSender, True);
  TJanuaApplicationFactory.TryGetInterface(IJanuaCSCustomerSMSBuilder, FCSCustomerSMSBuilder);
  FCSCustomerSMSBuilder.Dataset := FDMCarserviceUniPgSettings.qryBooking;
  FCSCustomerSMSBuilder.SMSSender := FCSCustomerSMSSender;
  frameSMSCustomer.SMSMessageBuilder := FCSCustomerSMSBuilder;

  // ---------------------------------------------------------------------------------------------------------
  TJanuaApplicationFactory.TryGetInterface(IJanuaSMSTwilio, FCSDriverSMSSender1, True);
  TJanuaApplicationFactory.TryGetInterface(IJanuaCSDriverSMSBuilder1, FCSDriverSMSBuilder1);
  FCSDriverSMSBuilder1.Dataset := FDMCarserviceUniPgSettings.qryBooking;
  FCSDriverSMSBuilder1.SMSSender := FCSDriverSMSSender1;
  frameSmsDriver1.SMSMessageBuilder := FCSDriverSMSBuilder1;

  // ---------------------------------------------------------------------------------------------------------
  TJanuaApplicationFactory.TryGetInterface(IJanuaSMSTwilio, FCSDriverSMSSender2, True);
  TJanuaApplicationFactory.TryGetInterface(IJanuaCSDriverSMSBuilder2, FCSDriverSMSBuilder2);
  FCSDriverSMSBuilder2.Dataset := FDMCarserviceUniPgSettings.qryBooking;
  FCSDriverSMSBuilder2.SMSSender := FCSDriverSMSSender2;
  frameSMSDriver2.SMSMessageBuilder := FCSDriverSMSBuilder2;

  // ---------------------------------------------------------------------------------------------------------
  TJanuaApplicationFactory.TryGetInterface(IJanuaCSDriverLandingMsgBuilder, FCSDriverLandingMsgBuilder);
  FCSDriverLandingMsgBuilder.Dataset := FDMCarserviceUniPgSettings.qryConfigTimetable;
  frameLandingDriver.LandingMessageBuilder := FCSDriverLandingMsgBuilder;

  // ---------------------------------------------------------------------------------------------------------
  TJanuaApplicationFactory.TryGetInterface(IJanuaCSCustomerLandingMsgBuilder, FCSCustomerLandingMsgBuilder);
  FCSCustomerLandingMsgBuilder.Dataset := FDMCarserviceUniPgSettings.qryConfigTimetable;
  frameLandingCustomer.LandingMessageBuilder := FCSCustomerLandingMsgBuilder;

  // ---------------------------------------------------------------------------------------------------------
  TJanuaApplicationFactory.TryGetInterface(IJanuaCSBookingLandingMsgBuilder, FCSBookingLandingMsgBuilder);
  FCSBookingLandingMsgBuilder.Dataset := FDMCarserviceUniPgSettings.qryBooking;
  frameLandingBooking.LandingMessageBuilder := FCSBookingLandingMsgBuilder;

  // Contracts
  // ---------------------------------------------------------------------------------------------------------
  TJanuaApplicationFactory.TryGetInterface(IJanuaCSDriverContractBuilder, FCSDriverContractBuilder);
  FCSDriverContractBuilder.Dataset := FDMCarserviceUniPgSettings.qryBooking;
  frameDriverContract.LandingMessageBuilder := FCSDriverContractBuilder;

  // ---------------------------------------------------------------------------------------------------------
  TJanuaApplicationFactory.TryGetInterface(IJanuaCSCustomerContractBuilder, FCSCustomerContractBuilder);
  FCSCustomerContractBuilder.Dataset := FDMCarserviceUniPgSettings.qryBooking;
  frameCustomerContract.LandingMessageBuilder := FCSCustomerContractBuilder;

  // ---------------------------------------------------------------------------------------------------------
  TJanuaApplicationFactory.TryGetInterface(IJanuaCSServiceContractBuilder, FCSServiceContractBuilder);
  FCSServiceContractBuilder.Dataset := FDMCarserviceUniPgSettings.qryBooking;
  frameServiceContract.LandingMessageBuilder := FCSServiceContractBuilder;

  FDMCarserviceUniPgSettings.qryConfiguration.Open;
  FDMCarserviceUniPgSettings.qryBooking.Open;
end;

procedure TfrmVCLCarServiceSettings.FormDestroy(Sender: TObject);
begin
  if Assigned(FMailServerConf) then
    FreeAndNil(FMailServerConf);
  // FGridMailSender
  FGridMailSender := nil;
  FCSServiceMailBuilder := nil;
end;

procedure TfrmVCLCarServiceSettings.FormShow(Sender: TObject);
begin
  inherited;
  pnlDBConfiguration.Caption := 'Schema ID: ' + TJanuaApplication.DBSchemaID.ToString + ', Database: ' +
    TJanuaApplication.ServerDatabaseName + ', Server: ' + TJanuaApplication.ServerAddress;
  FDMCarserviceUniPgSettings.qryConfiguration.Open;
end;

procedure TfrmVCLCarServiceSettings.frameCustomerMailMessageConfigbtnSaveConfigClick(Sender: TObject);
begin
  frameCustomerMailMessageConfig.btnSaveConfigClick(Sender);

end;

procedure TfrmVCLCarServiceSettings.frameSMSCustomerbtnSendMailToClick(Sender: TObject);
begin
  frameSMSCustomer.btnSendMailToClick(Sender);
end;

procedure TfrmVCLCarServiceSettings.frameSMSCustomerbtnTestUrlClick(Sender: TObject);
begin
  frameSMSCustomer.btnTestUrlClick(Sender);
end;

procedure TfrmVCLCarServiceSettings.tabDriverContractContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  inherited;

end;

{ TSubRecordTest }

function TSubRecordTest.GetAsSTring: string;
begin
  Result := TestGUID.ToString;
end;

procedure TSubRecordTest.SetAsString(const Value: string);
begin
  TestGUID := TGUID.Create(Value);
end;

end.
