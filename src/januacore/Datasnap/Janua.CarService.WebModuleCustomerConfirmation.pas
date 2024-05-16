unit Janua.CarService.WebModuleCustomerConfirmation;

interface

uses
  System.SysUtils, System.Classes, Web.HTTPApp;

type
  TWebModule1 = class(TWebModule)
    procedure WebModule1DefaultHandlerAction(Sender: TObject; Request: TWebRequest; Response: TWebResponse;
      var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  WebModuleClass: TComponentClass = TWebModule1;

implementation

uses Janua.Application.Framework, Janua.CarService.PgCustomers, Janua.Http.Types;

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

procedure TWebModule1.WebModule1DefaultHandlerAction(Sender: TObject; Request: TWebRequest;
  Response: TWebResponse; var Handled: Boolean);
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
    Response.ContentType := TJanuaMimeString.TEXT_HTML;
    Response.Content := lPage;
  finally
    DM.Free;
  end;
end;

end.
