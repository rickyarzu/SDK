unit unitTestWebBrokerHttp;

interface

uses
   DUnitX.TestFramework;

type

  [TestFixture]
  DataSnapHttp = class(TObject)
  private
    procedure Test1;
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    // Sample Methods
    // Simple single Test
    [Test]
    [TestCase('GetPFile', 'http://localhost:8099/?page=files&file=1.jpg,C:\Januaproject\resources\Images\,test.bmp')]
    [TestCase('GetPRes', 'http://localhost:8099/?page=resources&file=1.pdf,C:\Januaproject\resources\Images\,test.bmp')]
    [TestCase('GetPImg', 'http://localhost:8099/?page=image&file=1.pdf,C:\Januaproject\resources\Images\,test.bmp')]
    [TestCase('GetDirFile', 'http://localhost:8099/files?file=1.pdf,C:\Januaproject\resources\Images\,test.bmp')]
    [TestCase('GetDirImg', 'http://localhost:8099/images?file=1.pdf,C:\Januaproject\resources\Images\,test.bmp')]
    [TestCase('GetRes', 'http://localhost:8099/resources?file=1.pdf,C:\Januaproject\resources\Images\,test.bmp')]
    procedure TestBlob(const AValue1, AValue2, AValue3: string);
    [Test]
    [TestCase('GetPFile', 'http://localhost:8099/?page=files&file=1.pdf,C:\Januaproject\resources\Images\,test.bmp')]
    [TestCase('GetPRes', 'http://localhost:8099/?page=resources&file=1.pdf,C:\Januaproject\resources\Images\,test.bmp')]
    [TestCase('GetPImg', 'http://localhost:8099/?page=image&file=1.pdf,C:\Januaproject\resources\Images\,test.bmp')]
    [TestCase('GetDirFile', 'http://localhost:8099/files?file=1.pdf,C:\Januaproject\resources\Images\,test.bmp')]
    [TestCase('GetDirImg', 'http://localhost:8099/images?file=1.pdf,C:\Januaproject\resources\Images\,test.bmp')]
    [TestCase('GetDirRes', 'http://localhost:8099/resources?file=1.pdf,C:\Januaproject\resources\Images\,test.bmp')]
    procedure TestUrl(const AValue1, AValue2, AValue3: string);
    [Test]
    [TestCase('GetPPage', 'http://localhost:8099/,C:\Januaproject\resources\Text\,test.html')]
    procedure TestPage(const AValue1, AValue2, AValue3: string);
  end;

implementation

uses System.SysUtils, System.IOUtils, System.Classes, Web.HTTPApp,  Janua.Cloud.Http.Impl,
  Janua.Cloud.Http.Intf, uWebBrokerTest;

procedure DataSnapHttp.Setup;
begin
   uWebBrokerTest.Setup
end;

procedure DataSnapHttp.TearDown;
begin
  uWebBrokerTest.TearDown
end;

procedure DataSnapHttp.Test1;
begin
end;

procedure DataSnapHttp.TestBlob(const AValue1, AValue2, AValue3: string);
var
  aCloudDownloader: ICloudDownloader;
  vFileName, vFileNamePath: string;
  vTest: boolean;
begin
  // **************************************************************************************************
  // Questo test collauda il funzionamento della libreria Blob-File-Downloader.
  // al momento richiede un file da url (senza curarsi particolarmente del tipo di file)
  // e lo salva su Blob. Il file Viene salvato come TEST da un Blob.
  // Se indicato un percorso custom lo salva su quel percorso altrimenti
  // usa come destinazione la DocumentPath Directory + AppName (da Global Configuration)
  // **************************************************************************************************
  aCloudDownloader := TCloudDownloader.Create;
  aCloudDownloader.URL := AValue1;
  aCloudDownloader.CustomPath := AValue2;
  vFileName := FormatDateTime('yymmddhhnnss', Now()) + AValue3;
  vFileNamePath := TPath.Combine(AValue2, vFileName);
  vTest := aCloudDownloader.DownloadBlob;
  Assert.IsTrue(vTest, 'aCloudDownloader.DownloadBlob Error');
  Sleep(100);
  aCloudDownloader.Blob.SaveToFile(vFileNamePath);
  //
  Assert.IsTrue(FileExists(vFileNamePath), 'file non creato: ' + vFileNamePath);
end;

procedure DataSnapHttp.TestPage(const AValue1, AValue2, AValue3: string);
var
  aCloudDownloader: ICloudDownloader;
  vFileName, vFileNamePath: string;
  vTest: boolean;
begin
  // **************************************************************************************************
  // Questo test collauda il funzionamento della libreria Text-Html-Downloader.
  // al momento richiede un Testo(html-json-xxx) da url (senza curarsi particolarmente del tipo di Testo Mime)
  // e lo salva su disco. Se indicato un percorso custom lo salva su quel percorso altrimenti
  // usa come destinazione la DocumentPath Directory + AppName (da Global Configuration)
  // **************************************************************************************************
  aCloudDownloader := TCloudDownloader.Create;
  aCloudDownloader.URL := AValue1;
  aCloudDownloader.CustomPath := AValue2;
  vFileName := FormatDateTime('yymmddhhnnss', Now()) + AValue3;
  vFileNamePath := TPath.Combine(AValue2, vFileName);
  vTest := aCloudDownloader.GetAnyTextResponse; // richiede qualunque cosa dall'url occorre risultato True
  // Sleep(1000);
  Assert.IsTrue(vTest, 'Errore di apertura Url');
  vTest :=  aCloudDownloader.SaveTextToFile(vFileNamePath);
  Assert.IsTrue(vTest, 'Errore salvataggio file: ' + vFileNamePath );
  Assert.IsTrue(FileExists(vFileNamePath), 'file non creato: ' + vFileNamePath);
  Assert.AreNotEqual('', aCloudDownloader.ResponseText.Text, 'response is nil');
end;


procedure DataSnapHttp.TestUrl(const AValue1, AValue2, AValue3: string);
var
  aCloudDownloader: ICloudDownloader;
  vFileName, vFileNamePath: string;
  vTest: boolean;
begin
  // **************************************************************************************************
  // Questo test collauda il funzionamento della libreria File-Downloader.
  // al momento richiede un file da url (senza curarsi particolarmente del tipo di file)
  // e lo salva su disco. Se indicato un percorso custom lo salva su quel percorso altrimenti
  // usa come destinazione la DocumentPath Directory + AppName (da Global Configuration)
  // **************************************************************************************************
  aCloudDownloader := TCloudDownloader.Create;
  aCloudDownloader.URL := AValue1;
  aCloudDownloader.CustomPath := AValue2;
  vFileName := FormatDateTime('yymmddhhnnss', Now()) + AValue3;
  vFileNamePath := TPath.Combine(AValue2, vFileName);
  vTest := aCloudDownloader.DownloadFile(vFileName);
  // Sleep(1000);
  Assert.IsTrue(FileExists(vFileNamePath), 'file non creato: ' + vFileNamePath);
end;

initialization

TDUnitX.RegisterTestFixture(DataSnapHttp);

end.
