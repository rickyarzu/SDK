// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://webservices.dotnethell.it/codicefiscale.asmx?WSDL
//  >Import : http://webservices.dotnethell.it/codicefiscale.asmx?WSDL:0
// Encoding : utf-8
// Version  : 1.0
// (21/04/2013 18.12.39 - - $Rev: 10138 $)
// ************************************************************************ //

unit codicefiscale;

interface

uses InvokeRegistry, SOAPHTTPClient, Types, XSBuiltIns;

const
  IS_OPTN = $0001;
  IS_REF  = $0080;


type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Borland types; however, they could also 
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]



  // ************************************************************************ //
  // Namespace : http://webservices.dotnethell.it/CodiceFiscale
  // soapAction: http://webservices.dotnethell.it/CodiceFiscale/%operationName%
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // binding   : CodiceFiscaleSoap
  // service   : CodiceFiscale
  // port      : CodiceFiscaleSoap
  // URL       : http://webservices.dotnethell.it/codicefiscale.asmx
  // ************************************************************************ //
    CodiceFiscaleSoap = interface(IInvokable)
  ['{B74A5067-925C-E90A-E0DE-3E988643AC7A}']
    function  CalcolaCodiceFiscale(const Nome: WideString; const Cognome: WideString; const ComuneNascita: WideString; const DataNascita: WideString; const Sesso: WideString): WideString; stdcall;
    function  CodiceComune(const NomeComune: WideString): WideString; stdcall;
    function  NomeComune(const CodiceComune: WideString): WideString; stdcall;
    function  ControllaCodiceFiscale(const CodiceFiscale: WideString): WideString; stdcall;
  end;

function GetCodiceFiscaleSoap(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): CodiceFiscaleSoap;


implementation
  uses SysUtils;

function GetCodiceFiscaleSoap(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): CodiceFiscaleSoap;
const
  defWSDL = 'http://webservices.dotnethell.it/codicefiscale.asmx?WSDL';
  defURL  = 'http://webservices.dotnethell.it/codicefiscale.asmx';
  defSvc  = 'CodiceFiscale';
  defPrt  = 'CodiceFiscaleSoap';
var
  RIO: THTTPRIO;
begin
  Result := nil;
  if (Addr = '') then
  begin
    if UseWSDL then
      Addr := defWSDL
    else
      Addr := defURL;
  end;
  if HTTPRIO = nil then
    RIO := THTTPRIO.Create(nil)
  else
    RIO := HTTPRIO;
  try
    Result := (RIO as CodiceFiscaleSoap);
    if UseWSDL then
    begin
      RIO.WSDLLocation := Addr;
      RIO.Service := defSvc;
      RIO.Port := defPrt;
    end else
      RIO.URL := Addr;
  finally
    if (Result = nil) and (HTTPRIO = nil) then
      RIO.Free;
  end;
end;


initialization
  InvRegistry.RegisterInterface(TypeInfo(CodiceFiscaleSoap), 'http://webservices.dotnethell.it/CodiceFiscale', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(CodiceFiscaleSoap), 'http://webservices.dotnethell.it/CodiceFiscale/%operationName%');
  InvRegistry.RegisterInvokeOptions(TypeInfo(CodiceFiscaleSoap), ioDocument);

end.