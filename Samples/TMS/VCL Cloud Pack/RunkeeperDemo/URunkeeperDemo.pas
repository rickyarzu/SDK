unit URunkeeperDemo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CloudRunkeeper, Vcl.StdCtrls, CloudBase,
  CloudBaseWin, CloudCustomRunkeeper;

type
  TForm19 = class(TForm)
    Button1: TButton;
    AdvRunkeeper1: TAdvRunkeeper;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure AdvRunkeeper1ReceivedAccessToken(Sender: TObject);
  private
    { Private declarations }
    Connected: Boolean;
  public
    { Public declarations }
    procedure ToggleControls;
  end;

var
  Form19: TForm19;

// PLEASE USE A VALID INCLUDE FILE THAT CONTAINS THE APPLICATION KEY & SECRET
// FOR THE CLOUD STORAGE SERVICES YOU WANT TO USE
// STRUCTURE OF THIS .INC FILE SHOULD BE
//
// const
//  RunkeeperAppkey = 'xxxxxxxxx';
//  RunkeeperAppSecret = 'yyyyyyyy';

{$I TMSAPPIDS.INC}

implementation

{$R *.dfm}

procedure TForm19.AdvRunkeeper1ReceivedAccessToken(Sender: TObject);
begin
  AdvRunkeeper1.SaveTokens;
  Connected := True;
  ToggleControls;
end;

procedure TForm19.Button1Click(Sender: TObject);
var
  acc: boolean;
begin
  Screen.Cursor := crHourGlass;
  AdvRunkeeper1.App.Key := RunkeeperAppkey;
  AdvRunkeeper1.App.Secret := RunkeeperAppSecret;

  if AdvRunkeeper1.App.Key <> '' then
  begin
    AdvRunkeeper1.PersistTokens.Location := plIniFile;
    AdvRunkeeper1.PersistTokens.Key := '.\runkeeper.ini';
    AdvRunkeeper1.PersistTokens.Section := 'tokens';
    AdvRunkeeper1.LoadTokens;

    acc := AdvRunkeeper1.TestTokens;

    if not acc then
    begin
      AdvRunkeeper1.RefreshAccess;
      AdvRunkeeper1.DoAuth;
    end
    else
    begin
      Connected := true;
      ToggleControls;
    end;
  end
  else
    ShowMessage('Please provide a valid application ID for the client component');

  Screen.Cursor := crDefault;
end;

procedure TForm19.ToggleControls;
begin
  Label1.Caption := AdvRunkeeper1.GetFitnessActivities.ToString() + ' Activities';
end;

end.
