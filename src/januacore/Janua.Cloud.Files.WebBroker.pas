unit Janua.Cloud.Files.WebBroker;

{$I JANUACORE.INC}

interface

{$IF Defined(WEBBROKER)}

uses
  Web.HTTPApp;
{$ENDIF WEBBROKER}

type
  TCloudFileManager = class
{$IF Defined(WEBBROKER)}
    class procedure FileManager(Sender: TObject; Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
    class procedure ResourceManager(Sender: TObject; Request: TWebRequest; Response: TWebResponse;
      var Handled: Boolean);
{$ENDIF WEBBROKER}
  end;

implementation

uses
  Spring,
  Janua.Cloud.Files.Intf, System.Classes, System.SysUtils, System.StrUtils, Janua.Core.Functions,
  Janua.Cloud.Files.Cache, Janua.Http.Types;

{$IF Defined(WEBBROKER)}

class procedure TCloudFileManager.FileManager(Sender: TObject; Request: TWebRequest; Response: TWebResponse;
  var Handled: Boolean);
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
    Response.ContentType := TJanuaMimeDef.GetMimeStringFromExtension(LRecord.Ext);
    Response.SendResponse;
    Handled := True;
  end;
end;

class procedure TCloudFileManager.ResourceManager(Sender: TObject; Request: TWebRequest; Response: TWebResponse;
  var Handled: Boolean);
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
    Response.ContentType := TJanuaMimeDef.GetMimeStringFromExtension(LRecord.Ext);
    // LRecord.MIME; // da Verificare poi .... con calma .....
    Response.SendResponse;
    Handled := True;
  end;
end;
{$ENDIF WEBBROKER}

end.
