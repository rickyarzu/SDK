unit FOAuth2_Social;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, pngimage;

type
  TFRMOAuth2_Social = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Label1: TLabel;
    Label2: TLabel;
    txtClientId: TEdit;
    txtClientSecret: TEdit;
    txtTenantId: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure Image1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRMOAuth2_Social: TFRMOAuth2_Social;

implementation

uses
  sgcHTTP_OAuth2_Client_Google, sgcHTTP_OAuth2_Client_Microsoft,
  FOAuth2_Social_Profile;

{$R *.dfm}

procedure TFRMOAuth2_Social.Image1Click(Sender: TObject);
var
  oClient: TsgcHTTPComponentClient_OAuth2_Google;
  oData: TsgcOAuth2_Google_Data;
begin
  oClient := TsgcHTTPComponentClient_OAuth2_Google.Create(nil);
  Try
    oData := oClient.Authenticate(txtClientId.Text, txtClientSecret.Text);
    if oData.Authenticated then
      ShowProfile(oData.UserProfile.Id, oData.UserProfile._Name)
    else
      raise Exception.Create('Google Login Error!!!');
  Finally
    oClient.Free;
  End;
end;

procedure TFRMOAuth2_Social.Image2Click(Sender: TObject);
var
  oClient: TsgcHTTPComponentClient_OAuth2_Microsoft;
  oData: TsgcOAuth2_Microsoft_Data;
begin
  oClient := TsgcHTTPComponentClient_OAuth2_Microsoft.Create(nil);
  Try
    oData := oClient.Authenticate(txtTenantId.Text, txtClientId.Text, txtClientSecret.Text);
    if oData.Authenticated then
      ShowProfile(oData.UserProfile.Id, oData.UserProfile.DisplayName)
    else
      raise Exception.Create('Microsoft Login Error!!!');
  Finally
    oClient.Free;
  End;
end;

end.
