unit uCarServiceBookingList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Winapi.WebView2,
  Winapi.ActiveX,
  // DB
  Data.DB, MemDS, DBAccess, Uni, UniProvider, PostgreSQLUniProvider,
  // VCL
  Vcl.Graphics, Vcl.ClipBrd, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, CRGrid,
  Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls, Vcl.DBCGrids, Vcl.ComCtrls, Vcl.DBCtrls, AdvmWS, Vcl.Edge,
  // FNC
  Vcl.TMSFNCWebBrowser, Vcl.TMSFNCCustomComponent, Vcl.TMSFNCCloudBase, Vcl.TMSFNCCloudSendGrid,
  Vcl.TMSFNCTypes, Vcl.TMSFNCUtils, Vcl.TMSFNCGraphics, Vcl.TMSFNCGraphicsTypes, Vcl.TMSFNCCustomControl,
  // TMS
  advmjson, DBAdvNavigator, DBAdvMemo, AdvScrollControl, AdvRichEditorBase, AdvRichEditor, AdvMemo,
  //
  // Januaproject
  // Types/Intf
  Janua.Cloud.Types, Janua.Cloud.Mail.Conf, Janua.Core.System.Types, Janua.Cloud.Sms.Intf,
  Janua.Cloud.Mail.Intf, Janua.Cloud.Mail.Impl,
  // Impl
  Janua.Unidac.Connection, Janua.Vcl.Interposers, Janua.TMS.Interposers,
  Janua.Vcl.Cloud.frameMailMessageConfig, Janua.Carservice.Intf, Janua.Vcl.Cloud.frameSMSMessageConfig,
  Janua.Vcl.Cloud.FrameLandingMessageConfig, Janua.Vcl.Cloud.frameSMSSenderConfig;

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

  TfrmVCLCarServiceBookingList = class(TForm)
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
    qryBooking: TUniQuery;
    PgErgoConnection: TJanuaUniConnection;
    PgUni: TPostgreSQLUniProvider;
    dsPickup: TDataSource;
    dsBooking: TDataSource;
    qryTimeTable: TUniQuery;
    DateField1: TDateField;
    SmallintField1: TSmallintField;
    LargeintField1: TLargeintField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    SmallintField2: TSmallintField;
    BooleanField1: TBooleanField;
    WideStringField1: TWideStringField;
    GuidField1: TGuidField;
    qryTimeTabledriver_anagraph_id: TIntegerField;
    qryTimeTablean_cellular: TWideStringField;
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
    qryConfiguration: TUniQuery;
    qryConfigurationdb_schema_id: TIntegerField;
    qryConfigurationkey: TWideStringField;
    qryConfigurationconf: TWideMemoField;
    qryConfigurationjguid: TGuidField;
    qryConfigurationdeleted: TBooleanField;
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
    pnlLists: TPanel;
    lst1: TListBox;
    spl1: TSplitter;
    spl2: TSplitter;
    lst2: TListBox;
    qryConfigTimetable: TUniQuery;
    qryConfigTimetablepickup_an_id: TIntegerField;
    qryConfigTimetablepickup_first_name: TWideStringField;
    qryConfigTimetablepickup_vat_id: TSmallintField;
    qryConfigTimetablepickup_address: TWideStringField;
    qryConfigTimetablepickup_postal_code: TWideStringField;
    qryConfigTimetablepickup_fiscal_code: TWideStringField;
    qryConfigTimetablepickup_town: TWideStringField;
    qryConfigTimetablepickup_last_name: TWideStringField;
    qryConfigTimetablepickup_full_address: TWideMemoField;
    qryConfigTimetablepickup_phone: TWideStringField;
    qryConfigTimetablepickup_email: TWideStringField;
    qryConfigTimetablepickup_cellular: TWideStringField;
    qryConfigTimetabledelivery_an_id: TIntegerField;
    qryConfigTimetabledelivery_first_name: TWideStringField;
    qryConfigTimetabledelivery_vat_id: TSmallintField;
    qryConfigTimetabledelivery_address: TWideStringField;
    qryConfigTimetabledelivery_postal_code: TWideStringField;
    qryConfigTimetabledelivery_fiscal_code: TWideStringField;
    qryConfigTimetabledelivery_town: TWideStringField;
    qryConfigTimetabledelivery_last_name: TWideStringField;
    qryConfigTimetabledelivery_full_address: TWideMemoField;
    qryConfigTimetabledelivery_phone: TWideStringField;
    qryConfigTimetabledelivery_email: TWideStringField;
    qryConfigTimetabledelivery_cellular: TWideStringField;
    qryConfigTimetablejguid: TGuidField;
    qryConfigTimetablepickup_time: TWideStringField;
    qryConfigTimetablepickup_date: TDateField;
    qryConfigTimetabledriver_id: TIntegerField;
    qryConfigTimetablebooking_id: TLargeintField;
    qryConfigTimetabledriver_email: TWideStringField;
    qryConfigTimetabledriver1_cellular: TWideStringField;
    qryConfigTimetabledriver_jguid: TGuidField;
    qryTimeTablepickup_an_id: TIntegerField;
    qryTimeTablepickup_first_name: TWideStringField;
    qryTimeTablepickup_vat_id: TSmallintField;
    qryTimeTablepickup_address: TWideStringField;
    qryTimeTablepickup_postal_code: TWideStringField;
    qryTimeTablepickup_fiscal_code: TWideStringField;
    qryTimeTablepickup_town: TWideStringField;
    qryTimeTablepickup_last_name: TWideStringField;
    qryTimeTablepickup_full_address: TWideMemoField;
    qryTimeTablepickup_phone: TWideStringField;
    qryTimeTablepickup_email: TWideStringField;
    qryTimeTablepickup_cellular: TWideStringField;
    qryTimeTabledelivery_an_id: TIntegerField;
    qryTimeTabledelivery_first_name: TWideStringField;
    qryTimeTabledelivery_vat_id: TSmallintField;
    qryTimeTabledelivery_address: TWideStringField;
    qryTimeTabledelivery_postal_code: TWideStringField;
    qryTimeTabledelivery_fiscal_code: TWideStringField;
    qryTimeTabledelivery_town: TWideStringField;
    qryTimeTabledelivery_last_name: TWideStringField;
    qryTimeTabledelivery_full_address: TWideMemoField;
    qryTimeTabledelivery_phone: TWideStringField;
    qryTimeTabledelivery_email: TWideStringField;
    qryTimeTabledelivery_cellular: TWideStringField;
    qryTimeTablepickup_time: TWideStringField;
    qryTimeTablepickup_date: TDateField;
    qryTimeTabledriver_id: TIntegerField;
    qryTimeTabledriver_email: TWideStringField;
    qryTimeTabledriver1_cellular: TWideStringField;
    qryTimeTabledriver_jguid: TGuidField;
    qryTimeTablevehicle_numberplate: TWideStringField;
    qryTimeTablevehicle_model: TWideStringField;
    qryTimeTablevehicle_color: TWideStringField;
    qryTimeTablepickup_day: TDateField;
    qryTimeTablepickup_slot_id: TSmallintField;
    qryTimeTablereturn_day: TDateField;
    grpSendgrid: TGroupBox;
    edtAPIKey: TEdit;
    btnSendgridAPIKeySave: TButton;
    btnSendgridAPIKeyLoad1: TButton;
    frameVCLMailSmsSenderConfig1: TframeVCLMailSmsSenderConfig;
    tsBookingEnd: TTabSheet;
    frameLandingBookingEnd: TFrameVCLLandingMessageConfig;
    qryBookingid: TLargeintField;
    qryBookingoffice_id: TIntegerField;
    qryBookingjguid: TGuidField;
    qryBookingdb_schema_id: TIntegerField;
    qryBookinguser_insert: TIntegerField;
    qryBookinginsert_date: TDateTimeField;
    qryBookingcustomer_id: TIntegerField;
    qryBookingstate_id: TSmallintField;
    qryBookingbranch_id: TIntegerField;
    qryBookingvehicle_model: TWideStringField;
    qryBookingvehicle_color: TWideStringField;
    qryBookingvehicle_numberplate: TWideStringField;
    qryBookingpickup_day: TDateField;
    qryBookingpickup_slot_id: TSmallintField;
    qryBookingreturn_day: TDateField;
    qryBookingreturn_slot_id: TSmallintField;
    qryBookingan_last_name: TWideStringField;
    qryBookingan_vat_id: TSmallintField;
    qryBookingan_address: TWideStringField;
    qryBookingan_postal_code: TWideStringField;
    qryBookingan_fiscal_code: TWideStringField;
    qryBookingan_town: TWideStringField;
    qryBookingservice_name: TWideStringField;
    qryBookingservice_address: TWideStringField;
    qryBookingan_phone: TWideStringField;
    qryBookingan_email: TWideStringField;
    qryBookingan_cellular: TWideStringField;
    qryBookingbranch_address: TWideStringField;
    qryBookingbranch_postal_code: TWideStringField;
    qryBookingbranch_town: TWideStringField;
    qryBookingbranch_phone: TWideStringField;
    qryBookingcust_first_name: TWideStringField;
    qryBookingcust_last_name: TWideStringField;
    qryBookingfull_address: TWideStringField;
    qryBookingcust_cellular: TWideStringField;
    qryBookingcust_email: TWideStringField;
    qryBookingpickup_address: TWideStringField;
    qryBookingreturn_address: TWideStringField;
    qryBookingpickup_time: TWideStringField;
    qryBookingreturn_time: TWideStringField;
    qryBookingpickup_date: TDateField;
    qryBookingreturn_date: TDateField;
    qryBookingdriver1_id: TIntegerField;
    qryBookingdriver2_id: TIntegerField;
    qryBookingdriver1_email: TWideStringField;
    qryBookingdriver2_email: TWideStringField;
    qryBookingdriver1_cellular: TWideStringField;
    qryBookingdriver2_cellular: TWideStringField;
    qryBookingpickup_jguid: TGuidField;
    qryBookingreturn_jguid: TGuidField;
    procedure btnDeserialize1Click(Sender: TObject);
    procedure btnSerialize1Click(Sender: TObject);
    procedure btnSendgridAPIKeySaveClick(Sender: TObject);
    procedure btnSendgridAPIKeyLoad1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnGenerateMailClick(Sender: TObject);
    procedure btnGenerateDriverMailClick(Sender: TObject);
    procedure lst1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure frameSMSCustomerbtnTestUrlClick(Sender: TObject);
    procedure frameSMSCustomerbtnSendMailToClick(Sender: TObject);
    procedure frameCustomerMailMessageConfigbtnSaveConfigClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
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
    FCSDriverLandingMsgBuilder: IJanuaCSDriverLandingMsgBuilder;
    FCSCustomerLandingMsgBuilder: IJanuaCSCustomerLandingMsgBuilder;
    FCSCustomerBookingMsgBuilder: IJanuaCSBookingLandingMsgBuilder;
    FCSDriverSMSBuilder1: IJanuaCSDriverSMSBuilder1;
    FCSDriverSMSBuilder2: IJanuaCSDriverSMSBuilder2;
    FCSCustomerSMSBuilder: IJanuaCSCustomerSMSBuilder;
    // SMSSender
    FCSDriverSMSSender1: IJanuaSMSTwilio;
    FCSDriverSMSSender2: IJanuaSMSTwilio;
    FCSCustomerSMSSender: IJanuaSMSTwilio;
  end;

var
  frmVCLCarServiceBookingList: TfrmVCLCarServiceBookingList;

implementation

uses Janua.Application.Framework, Janua.Core.Functions,
  // Janua.Core.Http contiene la funzione GenerateTinyUrl per testare l'url di chiamata
  Janua.Core.Http;

{$R *.dfm}

procedure TfrmVCLCarServiceBookingList.btnDeserialize1Click(Sender: TObject);
var
  aTestRecord: TRecordTest;
begin
  AdvMemo4.Lines.Text := TJanuaApplication.UserSessionVM.ReadSchemaConf('TestConf', AdvMemo3.Lines.Text);
  aTestRecord := TJanuaCoreOs.DeserializeSimple<TRecordTest>(AdvMemo4.Lines.Text);
  AdvMemo5.Lines.Text := TJanuaCoreOs.SerializeSimple<TRecordTest>(aTestRecord);
end;

procedure TfrmVCLCarServiceBookingList.btnGenerateDriverMailClick(Sender: TObject);
var
  aMessage1, aMessage2: TJanuaMailMessage;
begin
  FDriver1MailMessage.LoadSettings;
  FDriver1MailMessage.Dataset := qryBooking;
  aMessage1 := FDriver1MailMessage.GenerateMailMessage;
  { edtDriver1TestMailTo.Text := aMessage1.MailTo;
    edtDriver1MsgFromName.Text := aMessage1.From;
    edtDriver1MsgFrom.Text := aMessage1.FromAddr;
    edtMailDriver1TestSubject.Text := aMessage1.Subject;
    brwDriver1TestMessage1.LoadHTML(aMessage1.Text); }

  FDriver2MailMessage.LoadSettings;
  FDriver2MailMessage.Dataset := qryBooking;
  aMessage2 := FDriver2MailMessage.GenerateMailMessage;
  { edtDriver2TestMailTo.Text := aMessage2.MailTo;
    edtDriver2MsgFromName.Text := aMessage2.From;
    edtDriver2MsgFrom.Text := aMessage2.FromAddr;
    edtDriver2MailSubject.Text := aMessage2.Subject;
    brwDriver2TestMessage.LoadHTML(aMessage2.Text); }
end;

procedure TfrmVCLCarServiceBookingList.btnGenerateMailClick(Sender: TObject);
var
  aMessage: TJanuaMailMessage;
begin
  FCustomerMailMessage.LoadSettings;
  FCustomerMailMessage.Dataset := qryBooking;
  aMessage := FCustomerMailMessage.GenerateMailMessage;

  { edtMailCustomerMsgRecipient.Text := aMessage.MailTo;
    edtCustomerTestMailTo.Text := aMessage.From;
    edtCustomerMsgFrom.Text := aMessage.FromAddr;
    edtMailCustomerSubject.Text := aMessage.Subject;
    brwCustomerTestMessage1.LoadHTML(aMessage.Text); }
end;

procedure TfrmVCLCarServiceBookingList.btnSendgridAPIKeyLoad1Click(Sender: TObject);
begin
  FMailServerConf.APIKey := edtAPIKey.Text;
  TJanuaApplication.UserSessionVM.ReadSchemaConf('SendGridKey', FMailServerConf.AsJson);
end;

procedure TfrmVCLCarServiceBookingList.btnSendgridAPIKeySaveClick(Sender: TObject);
begin
  FMailServerConf.APIKey := edtAPIKey.Text;
  var
  lConf := FMailServerConf.AsJson;
  TJanuaApplication.UserSessionVM.WriteSchemaConf('SendGridKey', lConf);
end;

procedure TfrmVCLCarServiceBookingList.btnSerialize1Click(Sender: TObject);
var
  aTestRecord: TRecordTest;
begin
  aTestRecord.TestInteger := 100;
  aTestRecord.TestString := 'Ciao';
  aTestRecord.TestFloat := 13.45;
  aTestRecord.TestDate := Now();
  aTestRecord.TestSubRecord.TestGUID := TGUID.NewGuid;
  AdvMemo3.Lines.Text := TJanuaCoreOs.SerializeSimple<TRecordTest>(aTestRecord);
  TJanuaApplication.UserSessionVM.WriteSchemaConf('TestConf', AdvMemo3.Lines.Text);
end;

procedure TfrmVCLCarServiceBookingList.FormClose(Sender: TObject; var Action: TCloseAction);
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
  // FCSCustomerBookingMsgBuilder: IJanuaCSBookingLandingMsgBuilder;
  if Assigned(FCSCustomerBookingMsgBuilder) then
    TJanuaApplication.ReleaseObject(FCSCustomerBookingMsgBuilder.GetSelf);

  FCSDriverMailBuilder1 := nil;
  FCSCustomerMailBuilder := nil;
  FCSDriverMailBuilder2 := nil;
  FCSServiceMailBuilder := nil;
  FCSCustomerLandingMsgBuilder := nil;
  FCSCustomerBookingMsgBuilder := nil;
end;

procedure TfrmVCLCarServiceBookingList.FormCreate(Sender: TObject);
var
  aField: TField;
begin
  // Server Configuration
  FMailServerConf := TJanuaMailServerConf.Create;

  // Grid Sender ---------------------------------------------------------------------------------------------
  TJanuaApplicationFactory.TryGetInterface(IJanuaMailSendGridSender, FGridMailSender, True); // ;

  // ---------------------------------------------------------------------------------------------------------
  TJanuaApplicationFactory.TryGetInterface(IJanuaCSCustomerMailBuilder, FCSCustomerMailBuilder);
  FCSCustomerMailBuilder.Dataset := qryBooking;
  FCSCustomerMailBuilder.MailSender := FGridMailSender;
  frameCustomerMailMessageConfig.MailMessageBuilder := FCSCustomerMailBuilder;

  // ---------------------------------------------------------------------------------------------------------
  TJanuaApplicationFactory.TryGetInterface(IJanuaCSDriverMailBuilder1, FCSDriverMailBuilder1);
  FCSDriverMailBuilder1.Dataset := qryBooking;
  FCSDriverMailBuilder1.MailSender := FGridMailSender;
  frameDriver1MailMessageConfig.MailMessageBuilder := FCSDriverMailBuilder1;

  // ---------------------------------------------------------------------------------------------------------
  TJanuaApplicationFactory.TryGetInterface(IJanuaCSDriverMailBuilder2, FCSDriverMailBuilder2);
  FCSDriverMailBuilder2.Dataset := qryBooking;
  FCSDriverMailBuilder2.MailSender := FGridMailSender;
  frameDriver2MailMessageConfig.MailMessageBuilder := FCSDriverMailBuilder2;

  // ---------------------------------------------------------------------------------------------------------
  TJanuaApplicationFactory.TryGetInterface(IJanuaCSBackOfficeMailBuilder, FCSBackOfficeMailBuilder);
  FCSBackOfficeMailBuilder.Dataset := qryBooking;
  FCSBackOfficeMailBuilder.MailSender := FGridMailSender;
  frameCompanyMailMessageConfig.MailMessageBuilder := FCSBackOfficeMailBuilder;

  // ---------------------------------------------------------------------------------------------------------
  TJanuaApplicationFactory.TryGetInterface(IJanuaCSServiceMailBuilder, FCSServiceMailBuilder);
  FCSServiceMailBuilder.Dataset := qryBooking;
  FCSServiceMailBuilder.MailSender := FGridMailSender;
  frameServiceMailMessageConfig.MailMessageBuilder := FCSServiceMailBuilder;

  // ---------------------------------------------------------------------------------------------------------
  TJanuaApplicationFactory.TryGetInterface(IJanuaSMSTwilio, FCSCustomerSMSSender, True);
  TJanuaApplicationFactory.TryGetInterface(IJanuaCSCustomerSMSBuilder, FCSCustomerSMSBuilder);
  FCSCustomerSMSBuilder.Dataset := qryBooking;
  FCSCustomerSMSBuilder.SMSSender := FCSCustomerSMSSender;
  frameSMSCustomer.SMSMessageBuilder := FCSCustomerSMSBuilder;

  // ---------------------------------------------------------------------------------------------------------
  TJanuaApplicationFactory.TryGetInterface(IJanuaSMSTwilio, FCSDriverSMSSender1, True);
  TJanuaApplicationFactory.TryGetInterface(IJanuaCSDriverSMSBuilder1, FCSDriverSMSBuilder1);
  FCSDriverSMSBuilder1.Dataset := qryBooking;
  FCSDriverSMSBuilder1.SMSSender := FCSDriverSMSSender1;
  frameSmsDriver1.SMSMessageBuilder := FCSDriverSMSBuilder1;

  // ---------------------------------------------------------------------------------------------------------
  TJanuaApplicationFactory.TryGetInterface(IJanuaSMSTwilio, FCSDriverSMSSender2, True);
  TJanuaApplicationFactory.TryGetInterface(IJanuaCSDriverSMSBuilder1, FCSDriverSMSBuilder2);
  FCSDriverSMSBuilder2.Dataset := qryBooking;
  FCSDriverSMSBuilder2.SMSSender := FCSDriverSMSSender2;
  frameSMSDriver2.SMSMessageBuilder := FCSDriverSMSBuilder2;

  // ---------------------------------------------------------------------------------------------------------
  TJanuaApplicationFactory.TryGetInterface(IJanuaCSDriverLandingMsgBuilder, FCSDriverLandingMsgBuilder);
  FCSDriverLandingMsgBuilder.Dataset := qryConfigTimetable;
  frameLandingDriver.LandingMessageBuilder := FCSDriverLandingMsgBuilder;

  // ---------------------------------------------------------------------------------------------------------
  TJanuaApplicationFactory.TryGetInterface(IJanuaCSCustomerLandingMsgBuilder, FCSCustomerLandingMsgBuilder);
  FCSCustomerLandingMsgBuilder.Dataset := qryConfigTimetable;
  frameLandingCustomer.LandingMessageBuilder := FCSCustomerLandingMsgBuilder;

  // ---------------------------------------------------------------------------------------------------------
  // FCSCustomerBookingMsgBuilder: IJanuaCSBookingLandingMsgBuilder;
  TJanuaApplicationFactory.TryGetInterface(IJanuaCSBookingLandingMsgBuilder, FCSCustomerBookingMsgBuilder);
  FCSCustomerBookingMsgBuilder.Dataset := qryBooking;
  frameLandingBookingEnd.LandingMessageBuilder := FCSCustomerBookingMsgBuilder;

  qryConfiguration.Open;
  qryBooking.Open;
  for aField in qryBooking.Fields do
    lst1.Items.Add('$$' + aField.FieldName + '$$');
  qryConfigTimetable.Open;
  for aField in qryConfigTimetable.Fields do
    lst2.Items.Add('$$' + aField.FieldName + '$$');
end;

procedure TfrmVCLCarServiceBookingList.FormDestroy(Sender: TObject);
begin
  if Assigned(FMailServerConf) then
    FreeAndNil(FMailServerConf);
  // FGridMailSender
  FGridMailSender := nil;
  FCSServiceMailBuilder := nil;

end;

procedure TfrmVCLCarServiceBookingList.frameCustomerMailMessageConfigbtnSaveConfigClick(Sender: TObject);
begin
  frameCustomerMailMessageConfig.btnSaveConfigClick(Sender);

end;

procedure TfrmVCLCarServiceBookingList.frameSMSCustomerbtnSendMailToClick(Sender: TObject);
begin
  frameSMSCustomer.btnSendMailToClick(Sender);

end;

procedure TfrmVCLCarServiceBookingList.frameSMSCustomerbtnTestUrlClick(Sender: TObject);
begin
  frameSMSCustomer.btnTestUrlClick(Sender);

end;

procedure TfrmVCLCarServiceBookingList.lst1Click(Sender: TObject);
begin
  Clipboard.AsText := lst1.Items[lst1.ItemIndex]
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
