unit Janua.Cloud.Files.WebBroker;

{$I JANUACORE.INC}

interface

uses
{$IF Defined(WEBBROKER)}
  Web.HTTPApp;
{$ENDIF WEBBROKER}

type
  TCloudFileManager = class
{$IF Defined(WEBBROKER)}
    procedure FileManager(Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
    procedure ResourceManager(Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
{$ENDIF WEBBROKER}
  end;

implementation

uses
  Janua.Cloud.Files.Intf, System.Classes, System.SysUtils, System.StrUtils, Janua.Core.Functions,
  Janua.Cloud.Files.Cache, Janua.Mime.Types;

{$IF Defined(WEBBROKER)}

procedure FileManager(Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
var
  // DM: TdmCmsLND;
  // tmp: TBlob;
  LRecord: IJanuaFileRecord;
  LFileStream: TMemoryStream;
  LTest: Boolean;
  LFile: string;
  function LGetImageID: Int64;
  var
    LPos: integer;
  begin
    LPos := Pos('.', LFile);
    Result := StrToInt64(IfThen(LPos > 0, Copy(LFile, 1, LPos - 1), LFile))
  end;

begin
  LFile := Janua.Core.Functions.HttpGetParamValue(Request, 'file');
  LRecord := TJanuaCloudFileCache.GetFileRecord(LGetImageID, LTest);
  if LTest then
  begin
    LFileStream := TMemoryStream.Create;
    LFileStream.Position := 0;
    LRecord.SaveToStream(LFileStream);
    LFileStream.Position := 0;
    Response.ContentStream := LFileStream;
    Response.ContentType := TJanuaMimeDef.GetMimeFromExtension(LRecord.Ext);
    Response.SendResponse;
    Handled := True;
  end;
end;

procedure ResourceManager(Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
var
  // DM: TdmCmsLND;
  // tmp: TBlob;
  LRecord: IJanuaFileRecord;
  LFileStream: TMemoryStream;
  LTest: Boolean;
  LFile: string;

begin
  LFile := Janua.Core.Functions.HttpGetParamValue(Request, 'file');
  LRecord := TJanuaCloudFileCache.GetResourceRecord(LowerCase(LFile), LTest);
  if LTest then
  begin
    LFileStream := TMemoryStream.Create;
    LFileStream.Position := 0;
    LRecord.SaveToStream(LFileStream);
    LFileStream.Position := 0;
    Response.ContentStream := LFileStream;
    Response.ContentType := TJanuaMimeDef.GetMimeFromExtension(LRecord.Ext);
    // LRecord.MIME; // da Verificare poi .... con calma .....
    (*
      if (LRecord.Ext = '.jpg') then
      Response.ContentType := 'image/jpeg'
      else if (LRecord.Ext = '.png') then
      Response.ContentType := 'image/png'
      else if (LRecord.Ext = '.gif') then
      Response.ContentType := 'image/gif'
      else if (LRecord.Ext = '.pdf') then
      Response.ContentType := 'application/pdf'
      else if (LRecord.Ext = '.js') then
      Response.ContentType := 'application/javascript'
      else if (LRecord.Ext = '.css') then
      Response.ContentType := 'text/css'
      else if (LRecord.Ext = '.json') then
      Response.ContentType := 'application/json'
      ;
    *)

    Response.SendResponse;
    Handled := True;
  end;
end;
{$ENDIF WEBBROKER}

end.
