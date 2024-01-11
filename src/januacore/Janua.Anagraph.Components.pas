unit Janua.Anagraph.Components;

interface

{$I JANUACORE.INC}

uses
{$IF Defined(MSWINDOWS)}
  Windows, ShellAPI, ShlObj, ActiveX, ReqMulti,
  // ReqMulti is the multipart content parser of delphi XE
{$ENDIF}
{$IF Defined(WEBBROKER)}
  Web.HttpApp,
{$ENDIF}
  // System
  System.JSON, Data.DB,

  // Janua
  Janua.Core.System, System.SysUtils, System.Classes, Janua.Core.Functions,
  Janua.Core.jpublic, Janua.Core.Classes,
  Janua.Core.Mail;


type
  TJanuaCoreAnagraph = class(TJanuaCoreComponent)
  private
  public
  published
    function CheckEmailbyName(aEmail, aName: string): boolean;
    function CheckEmailbyCard(aEmail, aCard: string): boolean;
  end;

implementation

{ TJanuaCoreAnagraph }

function TJanuaCoreAnagraph.CheckEmailbyCard(aEmail, aCard: string): boolean;
begin
   Result := False;
end;

function TJanuaCoreAnagraph.CheckEmailbyName(aEmail, aName: string): boolean;
begin
   Result := False;
end;



end.
