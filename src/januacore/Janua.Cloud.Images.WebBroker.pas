unit Janua.Cloud.Images.WebBroker;

{$I JANUACORE.INC}

interface

{$IF Defined(WEBBROKER)}

uses
  Web.HTTPApp;
{$ENDIF WEBBROKER}

type
  TCloudImageManager = class
{$IF Defined(WEBBROKER)}
    class procedure ImageManager(Sender: TObject; Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
{$ENDIF WEBBROKER}
  end;

implementation

uses
  Janua.Cloud.Files.Intf, System.Classes, System.SysUtils, System.StrUtils, Janua.Core.Functions,
  Janua.Cloud.Images.Cache, Janua.Http.Types;

{$IF Defined(WEBBROKER)}

class procedure TCloudImageManager.ImageManager(Sender: TObject; Request: TWebRequest; Response: TWebResponse;
  var Handled: Boolean);
var
  // DM: TdmCmsLND;
  // tmp: TBlob;
  aRecord: IJanuaFileRecord;
  FileStream: TMemoryStream;
  aTest: Boolean;
  aImage: string;
  function GetImageID: Int64;
  var
    aPos: integer;
  begin
    aPos := Pos('.', aImage);
    Result := StrToInt64(IfThen(aPos > 0, Copy(aImage, 1, aPos - 1), aImage))
  end;

begin
  /// Qui andiamo a Gestire la default Action del nostro sistema la gestione avverrà tramite parametri

  aImage := Janua.Core.Functions.HttpGetParamValue(Request, 'file');
  aRecord := Janua.Cloud.Images.Cache.TJanuaCloudImagesCache.GetImageRecord(GetImageID, aTest);
  if aTest then
  begin
    FileStream := TMemoryStream.Create;
    FileStream.Position := 0;
    aRecord.SaveToStream(FileStream);
    FileStream.Position := 0;
    Response.ContentStream := FileStream;
    Response.ContentType := TJanuaMimeDef.GetMimeStringFromExtension(aRecord.Ext);

    // aRecord.MIME; // da Verificare poi .... con calma .....
    Response.SendResponse;
    Handled := True;
  end;
end;

{$ENDIF WEBBROKER}

end.
