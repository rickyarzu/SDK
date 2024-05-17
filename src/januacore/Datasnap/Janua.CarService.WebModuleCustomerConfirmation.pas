unit Janua.CarService.WebModuleCustomerConfirmation;

interface

uses
  System.SysUtils, System.Classes, Web.HTTPApp;

type
  TwmCarserviceCustomerConfirmation = class(TWebModule)
    procedure WebModule1DefaultHandlerAction(Sender: TObject; Request: TWebRequest; Response: TWebResponse;
      var Handled: Boolean);
    procedure wmCarserviceCustomerConfirmationPostHandlerAction(Sender: TObject; Request: TWebRequest;
      Response: TWebResponse; var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  WebModuleClass: TComponentClass = TwmCarserviceCustomerConfirmation;

implementation

uses Janua.Application.Framework, Janua.CarService.PgCustomers, Janua.Http.Types, Janua.Core.Http;

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

procedure TwmCarserviceCustomerConfirmation.WebModule1DefaultHandlerAction(Sender: TObject;
  Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
var
  DM: TdmPgCarServiceCustomers;
begin
  DM := TdmPgCarServiceCustomers.Create(nil);
  try
    // BookingID
    var
    sGUID := Request.QueryFields.Values['BookingID'];
    var
    lPage := '';
    var
    lStatusCode := DM.WebResponse(sGUID, lPage);
    EncodeUTF8Response(Response, lPage, TJanuaMimeString.TEXT_HTML);
    Handled := True;
  finally
    DM.Free;
  end;
end;

procedure TwmCarserviceCustomerConfirmation.wmCarserviceCustomerConfirmationPostHandlerAction(Sender: TObject;
  Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
var
  DM: TdmPgCarServiceCustomers;
begin
  DM := TdmPgCarServiceCustomers.Create(nil);
  try
    var
    vTest := Request.ContentFields.Text;
    var
    lPage := '';
    DM.WebConfirmation(Request.ContentFields, lPage);
    EncodeUTF8Response(Response, lPage, TJanuaMimeString.TEXT_HTML);
    Handled := True;
  finally
    DM.Free;
  end;
end;

end.
