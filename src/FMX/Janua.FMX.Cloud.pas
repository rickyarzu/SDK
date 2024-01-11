unit Janua.FMX.Cloud;

interface

uses System.Classes, FMX.Graphics, FMX.Objects;

function LoadBitmapFromUrl(const AURL: string; aFileName: string): TBitmap;
procedure CloudImageDownload(const aUrl, aShortFileName: string; aImage: TImage); overload;
procedure CloudImageDownload(const aUrl: string; aImage: TImage); overload;

implementation

uses System.IOUtils, Janua.FMX.Functions, System.Net.HttpClient, System.Net.URLClient, System.Threading,
  System.Diagnostics, System.SyncObjs, Janua.Core.Functions, System.Generics.Collections,
  System.Net.HttpClientComponent, Janua.Cloud.Http.Impl, Janua.Cloud.Http.Intf, System.SysUtils;

procedure CloudImageDownload(const aUrl: string; aImage: TImage); overload;
var
  aCloudDownloader: ICloudDownloader;
  vFileName, vFileNamePath: string;
  aStream: TMemoryStream;
begin
  // **************************************************************************************************
  // Questo test collauda il funzionamento della libreria Blob-File-Downloader.
  // al momento richiede un file da url (senza curarsi particolarmente del tipo di file)
  // e lo salva su Blob. Il file Viene salvato come TEST da un Blob.
  // Se indicato un percorso custom lo salva su quel percorso altrimenti
  // usa come destinazione la DocumentPath Directory + AppName (da Global Configuration)
  // **************************************************************************************************
  Janua.Core.Functions.ExecProc(
    procedure
    begin
      aCloudDownloader := TCloudDownloader.Create;
      aCloudDownloader.URL := aUrl;
      // aCloudDownloader.CustomPath := TPath.GetDocumentsPath;
      // vFileName := FormatDateTime('yymmddhhnnss', Now());
      if aCloudDownloader.DownloadBlob then
      begin
        aStream := TMemoryStream.Create;
        try
          aCloudDownloader.Blob.SaveToStream(aStream);
          aStream.Position := 0;
          aImage.Bitmap.LoadFromStream(aStream);
        finally
          aStream.Free;
        end;

      end;

    end, 'CloudImageDownload Stream', nil);
end;

procedure CloudImageDownload(const aUrl, aShortFileName: string; aImage: TImage);
var
  aCloudDownloader: ICloudDownloader;
  vFileName, vFileNamePath: string;
  aStream: TMemoryStream;
begin
  // **************************************************************************************************
  // Questo test collauda il funzionamento della libreria Blob-File-Downloader.
  // al momento richiede un file da url (senza curarsi particolarmente del tipo di file)
  // e lo salva su Blob. Il file Viene salvato come TEST da un Blob.
  // Se indicato un percorso custom lo salva su quel percorso altrimenti
  // usa come destinazione la DocumentPath Directory + AppName (da Global Configuration)
  // **************************************************************************************************
  vFileNamePath := System.IOUtils.TPath.Combine(System.IOUtils.TPath.GetDocumentsPath, aShortFileName);
  if FileExists(vFileNamePath) then
    try
      aImage.Bitmap.LoadFromFile(vFileNamePath)
    except
      on e: exception do
      begin
        CloudImageDownload(aUrl, aImage);
        aImage.Bitmap.SaveToFile(vFileNamePath);
      end;
    end
  else
  begin
    aCloudDownloader := TCloudDownloader.Create;
    aCloudDownloader.URL := aUrl;
    // aCloudDownloader.CustomPath := TPath.GetDocumentsPath;
    // vFileName := FormatDateTime('yymmddhhnnss', Now());
    aCloudDownloader.CustomPath := System.IOUtils.TPath.GetDocumentsPath;
    aCloudDownloader.DownloadFile(aShortFileName);
    if FileExists(vFileNamePath) then
      aImage.Bitmap.LoadFromFile(vFileNamePath)
  end;

end;

function LoadBitmapFromUrl(const AURL: string; aFileName: string): TBitmap;
var
  aStream: TMemoryStream;
  LNetHttpRequest: TNetHTTPRequest;
  LNetHttpClient: TNetHttpClient;
begin
  Result := TBitmap.Create;
  // Assert(Assigned(NetHttpRequest), 'TJanuaFMXListNews.LoadImageFromStream NetHttpRequest not set');
  LNetHttpClient := TNetHttpClient.Create(nil);
  try
    LNetHttpRequest := TNetHTTPRequest.Create(nil);
    LNetHttpRequest.Client := LNetHttpClient;
    try
      aStream := TMemoryStream.Create;
      try
        LNetHttpRequest.Get(aUrl + '/' + aFileName, aStream);
        aStream.Position := 0;
        Result.LoadFromStream(aStream);
      finally
        aStream.Free;
      end;
    finally
      LNetHttpRequest.Free;
    end;
  finally
    LNetHttpClient.Free;
  end;
end;

end.
