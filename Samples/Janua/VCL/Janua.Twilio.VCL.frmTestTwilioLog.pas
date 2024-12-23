unit Janua.Twilio.VCL.frmTestTwilioLog;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, CRGrid, AdvMemo, advmjson, DBAdvMemo, PictureContainer, HTMLabel,
  dbhtmlab, System.ImageList, Vcl.ImgList;

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
    DBNavigator3: TDBNavigator;
    DBMemo3: TDBMemo;
    CRDBGrid2: TCRDBGrid;
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
    procedure btnMaxClick(Sender: TObject);
    procedure btnOpenDatasetsClick(Sender: TObject);
    procedure btnSyncClick(Sender: TObject);
    procedure btnWebNookClick(Sender: TObject);
    procedure btnSyncMessagesClick(Sender: TObject);
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

end.
