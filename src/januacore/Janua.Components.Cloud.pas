unit Janua.Components.Cloud;

interface

uses
  System.Classes,
  // Janua.Core.DB, Janua.Core.Classes, Janua.Core.CustomControls, Janua.Legacy.Classes,
  Janua.Core.Types, Janua.Core.Classes.Social, Janua.Core.Sockets, Janua.Core.Entities, Janua.Core.Cloud;

Type
  TJanuaCloudOAuth = class(TJanuaCustomCloudOAuth)
  private
    FJanuaFacebookOuth: TJanuaFacebookOAuth;
    FJanuaCloudOAuthForm: TJanuaCustomCloudOAuthForm;
  strict protected
    function GetSocialType: TJanuaSocialType; override;
    function GetJanuaCloudOAuthForm: TJanuaCustomCloudOAuthForm; override;
    function GetJanuaFacebookOuth: TJanuaFacebookOAuth; override;
    procedure SetJanuaFacebookOuth(const Value: TJanuaFacebookOAuth); override;
    function GetStrToken: string; override;
    function GetTokenURL: string; override;
    procedure SetStrToken(const Value: string); override;
    procedure SetTokenUrl(const Value: string); override;
    procedure SetJanuaCloudOAuthForm(const Value: TJanuaCustomCloudOAuthForm); override;
    procedure SetCode(const Value: string); override;
    function GetCode: string; override;
  strict protected
    FSocialType: TJanuaSocialType;
    procedure SetSocialType(const Value: TJanuaSocialType); override;
    // This can be inherited by WebBroker or VCL or FMX Components to manage oAuth Tokens.
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure Execute; override;
    procedure Execute(aToken: string); override;
    procedure Execute(aToken: string; aSocialType: TJanuaSocialType); override;
    procedure SetToken(AURL: string); override;
    procedure GetWinOAuth; override;

  end;

implementation

{ TJanuaCloudOAuth }

constructor TJanuaCloudOAuth.Create(AOwner: TComponent);
begin
  inherited;
  self.FJanuaFacebookOuth := TJanuaFacebookOAuth.Create(self);
end;

destructor TJanuaCloudOAuth.Destroy;
begin
  FJanuaFacebookOuth.Free;
  inherited;
end;

procedure TJanuaCloudOAuth.Execute(aToken: string);
begin
  Token := aToken;
  self.Execute;
end;

procedure TJanuaCloudOAuth.Execute;
begin
  case self.FSocialType of
    jstFacebook:
      self.FJanuaFacebookOuth.Execute;
    jstTwitter:
      ;
    jstLinkedIN:
      ;
    jstVKontakte:
      ;
  end;

end;

procedure TJanuaCloudOAuth.Execute(aToken: string; aSocialType: TJanuaSocialType);
begin
  self.FSocialType := aSocialType;
  self.Execute(aToken);
end;

function TJanuaCloudOAuth.GetCode: string;
begin
  Result := FJanuaFacebookOuth.Code
end;

function TJanuaCloudOAuth.GetJanuaCloudOAuthForm: TJanuaCustomCloudOAuthForm;
begin
  Result := FJanuaCloudOAuthForm
end;

function TJanuaCloudOAuth.GetJanuaFacebookOuth: TJanuaFacebookOAuth;
begin
  Result := FJanuaFacebookOuth
end;

function TJanuaCloudOAuth.GetSocialType: TJanuaSocialType;
begin
  Result := FSocialType
end;

function TJanuaCloudOAuth.GetStrToken: string;
begin
  case self.FSocialType of
    jstFacebook:
      Result := self.FJanuaFacebookOuth.Token;
    jstTwitter:
      ;
    jstLinkedIN:
      ;
    jstVKontakte:
      ;
  end;
end;

function TJanuaCloudOAuth.GetTokenURL: string;
begin

end;

procedure TJanuaCloudOAuth.GetWinOAuth;
begin
  // FJanuaCloudOAuthForm
  if (FJanuaCloudOAuthForm <> nil) and (self.FJanuaFacebookOuth <> nil) then
    FJanuaCloudOAuthForm.Execute;
end;

procedure TJanuaCloudOAuth.SetCode(const Value: string);
begin
  FJanuaFacebookOuth.Code := Value;
end;

procedure TJanuaCloudOAuth.SetJanuaCloudOAuthForm(const Value: TJanuaCustomCloudOAuthForm);
begin
  FJanuaCloudOAuthForm := Value;
  if (FJanuaCloudOAuthForm <> nil) and (self.FJanuaFacebookOuth <> nil) then
    FJanuaCloudOAuthForm.FacebookOAuth := self.FJanuaFacebookOuth;
end;

procedure TJanuaCloudOAuth.SetJanuaFacebookOuth(const Value: TJanuaFacebookOAuth);
begin
  FJanuaFacebookOuth := Value;
end;

procedure TJanuaCloudOAuth.SetSocialType(const Value: TJanuaSocialType);
begin
  FSocialType := Value;
end;

procedure TJanuaCloudOAuth.SetStrToken(const Value: string);
begin

end;

procedure TJanuaCloudOAuth.SetToken(AURL: string);
begin
  FJanuaFacebookOuth.Token := AURL;
end;

procedure TJanuaCloudOAuth.SetTokenUrl(const Value: string);
begin
  FJanuaFacebookOuth.TokenUrl := Value;
end;

end.
