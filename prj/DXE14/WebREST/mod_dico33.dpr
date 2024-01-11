library mod_dico33;

uses
  {$IFDEF MSWINDOWS}
  Winapi.ActiveX,
  System.Win.ComObj,
  {$ENDIF }
  Web.WebBroker,
  Web.ApacheApp,
  Web.HTTPD24Impl,
  Data.DBXCommon,
  Datasnap.DSSession,
  Janua.Web.ServerContainer in '..\..\..\src\januawebrest\Janua.Web.ServerContainer.pas' {ServerContainer1: TDataModule},
  Janua.Web.ServerMethods in '..\..\..\src\januawebrest\Janua.Web.ServerMethods.pas' {ServerMethods1: TDSServerModule},
  Janua.Web.WebModule in '..\..\..\src\januawebrest\Janua.Web.WebModule.pas' {WebModule1: TWebModule},
  Janua.Web.Tools in '..\..\..\src\januawebrest\Janua.Web.Tools.pas' {dmWebTools: TDataModule},
  udmHealthBooking in '..\..\..\src\januaunidac\datamodules\udmHealthBooking.pas' {dmHealthBooking: TDataModule},
  udmDico33WebBroker in '..\..\..\src\VCL\Health\udmDico33WebBroker.pas' {dmDico33WebBroker: TDataModule};

{$R *.res}

// httpd.conf entries:
//
(*
 LoadModule dico33_module modules/mod_dico33.dll

 <Location /dico33>
    SetHandler mod_dico33-handler
 </Location>
*)
//
// These entries assume that the output directory for this project is the apache/modules directory.
//
// httpd.conf entries should be different if the project is changed in these ways:
//   1. The TApacheModuleData variable name is changed
//   2. The project is renamed.
//   3. The output directory is not the apache/modules directory
//

// Declare exported variable so that Apache can access this module.
var
  GModuleData: TApacheModuleData;
exports
  GModuleData name 'dico33_module';

procedure TerminateThreads;
begin
  TDSSessionManager.Instance.Free;
  Data.DBXCommon.TDBXScheduler.Instance.Free;
end;

begin
{$IFDEF MSWINDOWS}
  CoInitFlags := COINIT_MULTITHREADED;
{$ENDIF}
  Web.ApacheApp.InitApplication(@GModuleData);
  Application.Initialize;
  Application.WebModuleClass := WebModuleClass;
  TApacheApplication(Application).OnTerminate := TerminateThreads;
  Application.CreateForm(TdmWebTools, dmWebTools);
  Application.CreateForm(TdmHealthBooking, dmHealthBooking);
  Application.CreateForm(TdmDico33WebBroker, dmDico33WebBroker);
  Application.Run;
end.
