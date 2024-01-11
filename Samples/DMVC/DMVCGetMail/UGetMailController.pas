unit UGetMailController;

interface

uses
  MVCFramework, MVCFramework.Commons, MVCFramework.Serializer.Commons;

type

  [MVCPath('/')]
  TGetMailController = class(TMVCController)
  public
    [MVCPath]
    [MVCHTTPMethod([httpGET])]
    procedure Index;

    [MVCPath('/reversedstrings/($Value)')]
    [MVCHTTPMethod([httpGET])]
    procedure GetReversedString(const Value: String);

    [MVCPath('/getMailByStr/($Value)')]
    [MVCHTTPMethod([httpGET])]
    procedure GetMailByStr(const Value: String);

  end;

implementation

uses
  System.SysUtils, MVCFramework.Logger, System.StrUtils, UGetMail;

procedure TGetMailController.Index;
begin
  // use Context property to access to the HTTP request and response
  Render('Hello DelphiMVCFramework World');
end;

procedure TGetMailController.GetMailByStr(const Value: String);
begin
  Render(getMailWithGUIDString(Value));
end;

procedure TGetMailController.GetReversedString(const Value: String);
begin
  Render(System.StrUtils.ReverseString(Value.Trim));
end;

end.
