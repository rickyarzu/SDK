unit Janua.VCL.Cloud.dlgGoogleConnect;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  // VCL
  VCL.Graphics, VCL.Controls, VCL.Forms, VCL.Dialogs, SVGIconImage, VCL.ExtCtrls,
  // Cloud
  CloudBase, CloudBaseWin, CloudCustomGoogle, CloudGoogleWin, CloudCustomGCalendar, CloudGCalendar,
  // Janua
  Janua.Phoenix.VCL.dmGCalendarController;

type
  TdlgVclCloudGoogleConnect = class(TForm)
    SVGIconImage1: TSVGIconImage;
    AdvGCalendar1: TAdvGCalendar;
    Timer1: TTimer;
    Timer2: TTimer;
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure AdvGCalendar1ReceivedAccessToken(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    lcnt: TdmPhoenixVCLGCalendarController;
  public
    { Public declarations }
    procedure UpdateGoogle;
    procedure CheckCalendarColors;
    function AddGoogleItem(aItem: string): string;
    function UpdateGoogleItem(aItem: string): string;
    function DeleteGoogleItem(aItem: string): string;
    function ConfirmMessage(const aID: string): string;
    function WhatsAppSentMessage(const aID: string): string;
    procedure RestoreGoogle;
  end;

var
  dlgVclCloudGoogleConnect: TdlgVclCloudGoogleConnect;

implementation

uses Janua.Application.Framework;

{$R *.dfm}

function TdlgVclCloudGoogleConnect.AddGoogleItem(aItem: string): string;
begin
  Result := lcnt.AddNewGoogleItem(aItem);
end;

procedure TdlgVclCloudGoogleConnect.AdvGCalendar1ReceivedAccessToken(Sender: TObject);
begin
  AdvGCalendar1.SaveTokens;
  Close;
end;

procedure TdlgVclCloudGoogleConnect.CheckCalendarColors;
begin
  if not AdvGCalendar1.TestTokens then
    AdvGCalendar1.RefreshAccess;

  if not AdvGCalendar1.TestTokens then
    AdvGCalendar1.DoAuth;

  lcnt.CheckCalendarColors;

end;

function TdlgVclCloudGoogleConnect.WhatsAppSentMessage(const aID: string): string;
begin
  Result := lcnt.WhatsAppSentMessage(aID);
end;

function TdlgVclCloudGoogleConnect.ConfirmMessage(const aID: string): string;
begin
  Result := lcnt.ConfirmMessage(aID);
end;

function TdlgVclCloudGoogleConnect.DeleteGoogleItem(aItem: string): string;
begin
  Result := lcnt.DeleteGoogleItem(aItem)
end;

procedure TdlgVclCloudGoogleConnect.FormCreate(Sender: TObject);
begin
  AdvGCalendar1.PersistTokens.Location := plIniFile;
  AdvGCalendar1.PersistTokens.Key := 'C:\Phoenix\tokens.ini';
  AdvGCalendar1.PersistTokens.Section := 'google_janua';
  AdvGCalendar1.LoadTokens;
  AdvGCalendar1.Logging := true;
  AdvGCalendar1.LogLevel := llDetail;
  AdvGCalendar1.App.Key := TJanuaApplication.CloudConf.GoogleAppKey;
  AdvGCalendar1.App.Secret := TJanuaApplication.CloudConf.GoogleAppSecret;

  if not AdvGCalendar1.TestTokens then
    AdvGCalendar1.RefreshAccess;

  if not AdvGCalendar1.TestTokens then
    AdvGCalendar1.DoAuth;

  lcnt := TdmPhoenixVCLGCalendarController.Create(nil);
  lcnt.AdvGCalendar1 := AdvGCalendar1;
end;

procedure TdlgVclCloudGoogleConnect.FormDestroy(Sender: TObject);
begin
  lcnt.Free;
end;

procedure TdlgVclCloudGoogleConnect.FormShow(Sender: TObject);
begin
  Timer1.Enabled := true;
end;

procedure TdlgVclCloudGoogleConnect.RestoreGoogle;
begin
  (*
    if Assigned(cnt) then
    begin
    cnt.Free;
    cnt := nil;
    end;
    cnt := TdmPhoenixVCLGCalendarController.Create(nil);
    cnt.AdvGCalendar1 := AdvGCalendar1;
  *)
end;

procedure TdlgVclCloudGoogleConnect.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled := False;
  if not AdvGCalendar1.TestTokens then
    AdvGCalendar1.RefreshAccess;

  if not AdvGCalendar1.TestTokens then
    AdvGCalendar1.DoAuth
  else
    Close;
end;

procedure TdlgVclCloudGoogleConnect.Timer2Timer(Sender: TObject);
begin
  Timer2.Enabled := False;
  (*
    cnt := TdmPhoenixVCLGCalendarController.Create(nil);
    try
    cnt.AdvGCalendar1 := self.AdvGCalendar1;
    cnt.FillGoogleCalendars;
    finally
    cnt.Free;
    end;
  *)
end;

procedure TdlgVclCloudGoogleConnect.UpdateGoogle;
begin
  lcnt.AdvGCalendar1 := AdvGCalendar1;
  lcnt.FillGoogleCalendars;
  lcnt.AddNewGoogleItems;
end;

function TdlgVclCloudGoogleConnect.UpdateGoogleItem(aItem: string): string;
begin
  Result := lcnt.UpdateGoogleItem(aItem);
end;

end.
