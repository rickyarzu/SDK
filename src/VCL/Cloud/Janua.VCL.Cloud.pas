unit Janua.VCL.Cloud;

interface

uses Janua.Core.Classes, Janua.Core.Types, Janua.Core.Cloud, Janua.Core.Cloud.Server, VCL.Controls,
  System.SysUtils, Janua.Http.Types, System.Classes, VCL.ExtCtrls;

type
  TJanuaVCLImageController = class(TJanuaCustomImageController)
  private
    FImage: TGraphicControl;
  protected
    function isSupportedImage(const Value: TGraphicControl): Boolean;
    procedure SetImage(const Value: TGraphicControl); virtual;
    procedure AssignImageToPicture; override;
  public
    constructor Create(AOnwer: TComponent); override;
  published
    property Image: TGraphicControl read FImage write SetImage;
  end;

Type
  TJanuaVCLCloudOAuthForm = class(TJanuaCustomCloudOAuthForm)
  public
    procedure Execute; override;
  end;

procedure CloudImageDownload(const aUrl, aShortFileName: string; aImage: TImage); overload;
procedure CloudImageDownload(const aUrl: string; aImage: TImage); overload;
function CloudImageUpload(const aUrl: string; aImage: TImage; aAuth: TJanuaHttpAuth; aType: TJanuaMimeType;
  out aResponseText: string): Boolean;

implementation

uses System.IOUtils, System.Net.HttpClient, System.Net.URLClient, System.Threading,
  System.Diagnostics, System.SyncObjs, Janua.Core.Functions, System.Generics.Collections,
  System.Net.HttpClientComponent, Janua.Cloud.Http.Impl, Janua.Cloud.Http.Intf,
  Janua.VCL.RESTAuthenticatorOAuth, Janua.Application.Framework;

function CloudImageUpload(const aUrl: string; aImage: TImage; aAuth: TJanuaHttpAuth; aType: TJanuaMimeType;
  out aResponseText: string): Boolean;
var
  aCloudUploader: ICloudUploader;
  aStream: TMemoryStream;
begin
  // **************************************************************************************************
  // Questo test collauda il funzionamento della libreria Blob-File-Downloader.
  // al momento richiede un file da url (senza curarsi particolarmente del tipo di file)
  // e lo salva su Blob. Il file Viene salvato come TEST da un Blob.
  // Se indicato un percorso custom lo salva su quel percorso altrimenti
  // usa come destinazione la DocumentPath Directory + AppName (da Global Configuration)
  // **************************************************************************************************
  try

    aCloudUploader := TCloudUploader.Create;
    aCloudUploader.URL := aUrl;
    // aCloudUploader.CustomPath := TPath.GetDocumentsPath;
    // vFileName := FormatDateTime('yymmddhhnnss', Now());
    begin
      aStream := TMemoryStream.Create;
      try
        aImage.Picture.SaveToStream(aStream);
        aStream.Position := 0;
        Result := aCloudUploader.UploadStream(aStream);
      finally
        aStream.Free;
      end;
      aResponseText := aCloudUploader.ResponseText.Text;
    end;

  except
    on e: exception do
      raise exception.Create('CloudImageUpload aImage Upload ');
  end;
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
      aImage.Picture.LoadFromFile(vFileNamePath)
    except
      on e: exception do
      begin
        CloudImageDownload(aUrl, aImage);
        aImage.Picture.SaveToFile(vFileNamePath);
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
      aImage.Picture.LoadFromFile(vFileNamePath)
  end;

end;

procedure CloudImageDownload(const aUrl: string; aImage: TImage);
var
  aCloudDownloader: ICloudDownloader;
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
          aImage.Picture.LoadFromStream(aStream);
        finally
          aStream.Free;
        end;

      end;

    end, 'CloudImageDownload Stream', nil);

end;

{ TJanuaVCLImageController }

procedure TJanuaVCLImageController.AssignImageToPicture;
begin
  inherited;
end;

constructor TJanuaVCLImageController.Create(AOnwer: TComponent);
begin
  inherited;
  // self.FLoadButton := TJanuaVCLButtonProperties.Create(self);
end;

function TJanuaVCLImageController.isSupportedImage(const Value: TGraphicControl): Boolean;
begin
  Result := Value is TImage
end;

procedure TJanuaVCLImageController.SetImage(const Value: TGraphicControl);
begin
  if Assigned(Value) then
  begin
    if isSupportedImage(Value) then
    begin
      FImage := Value;
      AssignImageToPicture;
    end
    else
      CreateException('isSupportedImage', 'Unknown Image Control type', self,
        self.LogText);
  end
end;

{ TJanuaVCLCloudOAuthForm }

procedure TJanuaVCLCloudOAuthForm.Execute;
var
  aLgWindow: Janua.VCL.RESTAuthenticatorOAuth.TfrmJanuaOAuthWebForm;
  LURL: string;
begin
  aLgWindow := Janua.VCL.RESTAuthenticatorOAuth.TfrmJanuaOAuthWebForm.Create(nil);
  try
    LURL := self.FacebookOAuth.FacebookURL;
    {
      LURL := 'https://www.facebook.com/dialog/oauth';
      LURL := LURL + '?client_id=' + URIEncode(edt_Facebook_AppID.Text);
      LURL := LURL + '&response_type=token';
      LURL := LURL + '&scope=' + URIEncode('user_about_me,user_birthday');
      LURL := LURL + '&redirect_uri=' + URIEncode('http://www.almanaccocalcioligure.com');
    }
    aLgWindow.OnAfterRedirect := FacebookOAuth.OAuth2_Facebook_AccessTokenRedirect;
    aLgWindow.ShowModalWithURL(LURL);
  finally
    aLgWindow.Release;
    // aLgWindow := nil;
  end;

end;

end.
