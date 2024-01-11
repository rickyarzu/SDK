program WebServiceServerGUI;
{$APPTYPE GUI}

{===============================================================================
 Demo Web Service Part 1

 For Blaise Pascal Magazine 2021
 https://www.blaisepascalmagazine.eu/

 Author: Danny Wind (https://dannywind.nl)
 License: Creative Commons CC-BY
===============================================================================}

uses
  Vcl.Forms,
  Web.WebReq,
  IdHTTPWebBrokerBridge,
  FormUnit1 in 'FormUnit1.pas' {FormMain},
  WebModuleUnit1 in 'WebModuleUnit1.pas' {WebModule1: TWebModule};

{$R *.res}

begin
  if WebRequestHandler <> nil then
    WebRequestHandler.WebModuleClass := WebModuleClass;
  Application.Initialize;
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
