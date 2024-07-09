unit Janua.VCL.Cloud.dlgGoogleConnect;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, VCL.Graphics,
  VCL.Controls, VCL.Forms, VCL.Dialogs, SVGIconImage, CloudBase, CloudBaseWin, CloudCustomGoogle,
  CloudGoogleWin, CloudCustomGCalendar, CloudGCalendar, VCL.ExtCtrls;

type
  TdlgVclCloudGoogleConnect = class(TForm)
    SVGIconImage1: TSVGIconImage;
    AdvGCalendar1: TAdvGCalendar;
    Timer1: TTimer;
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure AdvGCalendar1ReceivedAccessToken(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  dlgVclCloudGoogleConnect: TdlgVclCloudGoogleConnect;

implementation

uses Janua.Application.Framework;

{$R *.dfm}

procedure TdlgVclCloudGoogleConnect.AdvGCalendar1ReceivedAccessToken(Sender: TObject);
begin
  AdvGCalendar1.SaveTokens;
  Close;
end;

procedure TdlgVclCloudGoogleConnect.FormCreate(Sender: TObject);
begin
  AdvGCalendar1.PersistTokens.Location := plIniFile;
  AdvGCalendar1.PersistTokens.Key := 'C:\Phoenix\tokens.ini';
  AdvGCalendar1.PersistTokens.Section := 'google_janua';
  AdvGCalendar1.LoadTokens;
end;

procedure TdlgVclCloudGoogleConnect.FormShow(Sender: TObject);
begin
  AdvGCalendar1.Logging := true;
  AdvGCalendar1.LogLevel := llDetail;
  AdvGCalendar1.App.Key := TJanuaApplication.CloudConf.GoogleAppKey;
  AdvGCalendar1.App.Secret := TJanuaApplication.CloudConf.GoogleAppSecret;
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

end.
