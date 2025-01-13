unit Janua.Twilio.VCL.frmTestTwilioLog;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, VCL.Graphics,
  VCL.Controls, VCL.Forms, VCL.Dialogs, VCL.ExtCtrls, Data.DB, VCL.StdCtrls, VCL.Mask, VCL.DBCtrls,
  VCL.Buttons, VCL.Grids, VCL.DBGrids, CRGrid, AdvMemo, advmjson, DBAdvMemo, PictureContainer, HTMLabel,
  dbhtmlab, System.ImageList, VCL.ImgList, VCL.ComCtrls, VCL.ExtDlgs, scControls, scDBControls, VCL.DBCGrids;

type
  TfrmVCLJanuaTestTwilioLog = class(TForm)
    pnlTop: TPanel;
    btnMax: TButton;
    dsMax: TDataSource;
    dsTwilioLog: TDataSource;
    dsTwilioClone: TDataSource;
    DBEdit1: TDBEdit;
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    DBMemo1: TDBMemo;
    CRDBGrid1: TCRDBGrid;
    btnOpenDatasets: TButton;
    btnSync: TButton;
    Panel2: TPanel;
    DBNavigator2: TDBNavigator;
    btnWebNook: TButton;
    btnSyncMessages: TButton;
    dsWhatsAppMessage: TDataSource;
    Panel3: TPanel;
    DBMemo3: TDBMemo;
    AdvJSONMemoStyler1: TAdvJSONMemoStyler;
    DBAdvMemo2: TDBAdvMemo;
    grdTwilioClone: TCRDBGrid;
    DBMemo2: TDBMemo;
    DBAdvMemo1: TDBAdvMemo;
    CRDBGrid3: TCRDBGrid;
    dsWebHook: TDataSource;
    Panel4: TPanel;
    DBNavigator4: TDBNavigator;
    DBMemo4: TDBMemo;
    DBAdvMemo3: TDBAdvMemo;
    CRDBGrid4: TCRDBGrid;
    dsTwilioStatus: TDataSource;
    DBHTMLabel1: TDBHTMLabel;
    PictureContainer1: TPictureContainer;
    ImageList1: TImageList;
    PageControl1: TPageControl;
    tabMessages: TTabSheet;
    TabSheet2: TTabSheet;
    CRDBGrid2: TCRDBGrid;
    DBNavigator3: TDBNavigator;
    pnlStatus: TPanel;
    DBNavigator5: TDBNavigator;
    CRDBGrid5: TCRDBGrid;
    dsWhatsAppStates: TDataSource;
    scDBImage1: TscDBImage;
    OpenPictureDialog1: TOpenPictureDialog;
    SpeedButton1: TSpeedButton;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    tabStatini: TTabSheet;
    DBCtrlGrid1: TDBCtrlGrid;
    btnSetIcons: TButton;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    scDBImage2: TscDBImage;
    procedure btnMaxClick(Sender: TObject);
    procedure btnOpenDatasetsClick(Sender: TObject);
    procedure btnSyncClick(Sender: TObject);
    procedure btnWebNookClick(Sender: TObject);
    procedure btnSyncMessagesClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSetIconsClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVCLJanuaTestTwilioLog: TfrmVCLJanuaTestTwilioLog;

implementation

{$R *.dfm}

uses Janua.Phoenix.PgTwilioSync;

procedure TfrmVCLJanuaTestTwilioLog.btnMaxClick(Sender: TObject);
begin
  dmPgTWilioSync.qryMaxTwilioLog.Close;
  dmPgTWilioSync.qryMaxTwilioLog.Open;
end;

procedure TfrmVCLJanuaTestTwilioLog.btnOpenDatasetsClick(Sender: TObject);
begin
  dmPgTWilioSync.OpenTwilio;
  dmPgTWilioSync.qryMaxTwilioLog.Close;
  dmPgTWilioSync.qryMaxTwilioLog.Open;
end;

procedure TfrmVCLJanuaTestTwilioLog.btnSetIconsClick(Sender: TObject);
begin
  dmPgTWilioSync.StatiniStatus;
end;

procedure TfrmVCLJanuaTestTwilioLog.btnSyncClick(Sender: TObject);
begin
  dmPgTWilioSync.SyncDBTwilio;
  dmPgTWilioSync.qryMessageStatus.Close;
  dmPgTWilioSync.qryMessageStatus.Open;
  dmPgTWilioSync.qryWebHook.Close;
  dmPgTWilioSync.qryWebHook.Open;
end;

procedure TfrmVCLJanuaTestTwilioLog.btnSyncMessagesClick(Sender: TObject);
begin
  dmPgTWilioSync.SyncStatus;
  dmPgTWilioSync.qryMessageList.Close;
  dmPgTWilioSync.qryMessageList.Open;
end;

procedure TfrmVCLJanuaTestTwilioLog.btnWebNookClick(Sender: TObject);
begin
  dmPgTWilioSync.SyncMessages;
  dmPgTWilioSync.qryWebHook.Open;
  dmPgTWilioSync.qryMessageList.Close;
  dmPgTWilioSync.qryMessageList.Open;
end;

procedure TfrmVCLJanuaTestTwilioLog.FormCreate(Sender: TObject);
begin
  dsWhatsAppStates.DataSet.Open;
end;

procedure TfrmVCLJanuaTestTwilioLog.SpeedButton1Click(Sender: TObject);
begin
  if OpenPictureDialog1.Execute then
  begin
    dmPgTWilioSync.tbWhatsAppStates.Edit;
    dmPgTWilioSync.tbWhatsAppStatesIMAGE.LoadFromFile(OpenPictureDialog1.FileName);
  end;
end;

end.
