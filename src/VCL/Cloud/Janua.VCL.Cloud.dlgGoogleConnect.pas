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
  private
    { Private declarations }
  public
    { Public declarations }
    procedure UpdateGoogle;
    procedure CheckCalendarColors;
    function AddGoogleItem(aItem: string): string;
    function UpdateGoogleItem(aItem: string): string;
    function DeleteGoogleItem(aItem: string): string;
  end;

var
  dlgVclCloudGoogleConnect: TdlgVclCloudGoogleConnect;

implementation

uses Janua.Application.Framework;

{$R *.dfm}

function TdlgVclCloudGoogleConnect.AddGoogleItem(aItem: string): string;
var
  cnt: TdmPhoenixVCLGCalendarController;
begin
  Result := '';

  if not AdvGCalendar1.TestTokens then
    AdvGCalendar1.RefreshAccess;

  if not AdvGCalendar1.TestTokens then
    AdvGCalendar1.DoAuth;

  if AdvGCalendar1.TestTokens then
    try
      cnt := TdmPhoenixVCLGCalendarController.Create(nil);
      cnt.AdvGCalendar1 := AdvGCalendar1;
      Result := cnt.AddNewGoogleItem(aItem);
    finally
      cnt.Free;
    end;

end;

procedure TdlgVclCloudGoogleConnect.AdvGCalendar1ReceivedAccessToken(Sender: TObject);
begin
  AdvGCalendar1.SaveTokens;
  Close;
end;

procedure TdlgVclCloudGoogleConnect.CheckCalendarColors;
var
  cnt: TdmPhoenixVCLGCalendarController;
begin
  if not AdvGCalendar1.TestTokens then
    AdvGCalendar1.RefreshAccess;

  if not AdvGCalendar1.TestTokens then
    AdvGCalendar1.DoAuth;

  if AdvGCalendar1.TestTokens then
    try
      cnt := TdmPhoenixVCLGCalendarController.Create(nil);
      cnt.AdvGCalendar1 := AdvGCalendar1;
      cnt.CheckCalendarColors;
    finally
      cnt.Free;
    end;
end;

function TdlgVclCloudGoogleConnect.DeleteGoogleItem(aItem: string): string;
var
  cnt: TdmPhoenixVCLGCalendarController;
begin
  Result := '';

  if not AdvGCalendar1.TestTokens then
    AdvGCalendar1.RefreshAccess;

  if not AdvGCalendar1.TestTokens then
    AdvGCalendar1.DoAuth;

  if AdvGCalendar1.TestTokens then
    try
      cnt := TdmPhoenixVCLGCalendarController.Create(nil);
      cnt.AdvGCalendar1 := AdvGCalendar1;
      Result := cnt.DeleteGoogleItem(aItem);
    finally
      cnt.Free;
    end;

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
end;

procedure TdlgVclCloudGoogleConnect.FormShow(Sender: TObject);
begin
  Timer1.Enabled := true;
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
var
  cnt: TdmPhoenixVCLGCalendarController;
begin
  Timer2.Enabled := False;
  if not AdvGCalendar1.TestTokens then
    AdvGCalendar1.RefreshAccess;

  if not AdvGCalendar1.TestTokens then
    AdvGCalendar1.DoAuth;

  try
    cnt := TdmPhoenixVCLGCalendarController.Create(nil);
    cnt.AdvGCalendar1 := self.AdvGCalendar1;
    cnt.FillGoogleCalendars;
  finally
    cnt.Free;
  end;

end;

procedure TdlgVclCloudGoogleConnect.UpdateGoogle;
var
  cnt: TdmPhoenixVCLGCalendarController;
begin
  if not AdvGCalendar1.TestTokens then
    AdvGCalendar1.RefreshAccess;

  if not AdvGCalendar1.TestTokens then
    AdvGCalendar1.DoAuth;

  try
    cnt := TdmPhoenixVCLGCalendarController.Create(nil);
    cnt.AdvGCalendar1 := self.AdvGCalendar1;
    cnt.FillGoogleCalendars;
    cnt.AddNewGoogleItems;
  finally
    cnt.Free;
  end;
end;

function TdlgVclCloudGoogleConnect.UpdateGoogleItem(aItem: string): string;
var
  cnt: TdmPhoenixVCLGCalendarController;
begin
  Result := '';

  if not AdvGCalendar1.TestTokens then
    AdvGCalendar1.RefreshAccess;

  if not AdvGCalendar1.TestTokens then
    AdvGCalendar1.DoAuth;

  if AdvGCalendar1.TestTokens then
    try
      cnt := TdmPhoenixVCLGCalendarController.Create(nil);
      cnt.AdvGCalendar1 := AdvGCalendar1;
      Result := cnt.UpdateGoogleItem(aItem);
    finally
      cnt.Free;
    end;

end;

end.
