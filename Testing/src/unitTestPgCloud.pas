unit unitTestPgCloud;

interface

uses
  System.Classes, System.IOUtils, System.SysUtils, DUnitX.TestFramework, Janua.Core.Types;

type

  [TestFixture]
  Cloud = class(TObject)
  public const
    CFilenameShort: TFileName = 'test.jpg';
    CFileNameExt: TFileName = '.jpg';
  public
    CFilename: TFileName;
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    // Sample Methods
    // Simple single Test
    [Test]
    procedure PgStorage;
    [Test]
    procedure PgImageStorage;
    [Test]
    procedure PgFileStorage;
    [Test]
    procedure FileRecord;
    [Test]
    procedure ImageRecord;
    [Test]
    [TestCase('TestA', '7')]
    [TestCase('TestB', '8')]
    procedure TestImagesCache(aID: Int64);
    [Test]
    [TestCase('TestA', '261')]
    procedure TestFilesCache(aID: Int64);
    [Test]
    [TestCase('TestA', '7')]
    [TestCase('TestB', '8')]
    procedure TestImagesStreamCache(aID: Int64);
    [Test]
    procedure TestFilesStreamCache;
  end;

implementation

uses
  Janua.Application.Framework,
  Janua.Cloud.Images.Intf, Janua.Postgres.Cloud, Janua.Core.Classes, Janua.Cloud.Files.Intf,
  Janua.Cloud.Files.Impl, Janua.Cloud.Images.Impl, Janua.Cloud.Files.Cache, Janua.Cloud.Images.Cache;

procedure Cloud.Setup;
var
  FServerConf: TJanuaServerRecordConf;
  FStorage: IJanuaCloudFileStorage;
  FImageStorage: IJanuaCloudFileStorage;
begin
  FServerConf.Port := 5432;
  FServerConf.DatabaseName := 'test';
  FServerConf.Password := '3rg0m3rc4t0r';
  FServerConf.Username := 'ergo';
  FServerConf.Address := 'local.januaservers.com';
  // FServerConf.Address := 'pg.januaservers.com';
  FServerConf.Schema := 'public';
  FServerConf.DBEngine := TJanuaDBEngine.jdbPostgres;
  TJanuaApplication.JanuaServerConf := FServerConf;
  // dmCmsLNDConf.JanuaConf1.JanuaServerConf.SetRecordConf(FServerConf);
  TJanuaApplication.DBSchemaID := 32;
  TJanuaApplication.DBUserID := 13;

  // Cloud Files Cache Initialization ..................................................
  FStorage := TJanuaPgCloudStorage.Create;
  TJanuaCloudFileCache.Initialize(FStorage);
  TJanuaCloudFileCache.SetupResources;
  // Cloud Images Cache Initialization ..................................................
  FImageStorage := TJanuaPgCloudStorage.Create;
  Janua.Cloud.Images.Cache.TJanuaCloudImagesCache.Initialize(FImageStorage);
  Janua.Cloud.Images.Cache.TJanuaCloudImagesCache.SetupResources;
  // ..............................................................................
  CFilename:= sGitHubHome + '\SDK\Testing\res\Images\test.jpg';
end;

procedure Cloud.TearDown;
begin
end;

procedure Cloud.TestFilesCache(aID: Int64);
var
  aTest: IJanuaFileRecord;
  aResult: boolean;
begin
  aResult := False;
  // function GetFileRecord(aFileID: Int64; var aResult: boolean): IJanuaFileRecord;
  aTest := TJanuaCloudFileCache.GetFileRecord(aID, aResult);
  Assert.AreEqual(aID, aTest.ID, 'aID, aTest.ID Differ' );
  Assert.IsTrue(aResult, 'aResult is False');
end;

procedure Cloud.TestFilesStreamCache;
begin

end;

procedure Cloud.TestImagesCache(aID: Int64);
var
  aTest: IJanuaFileRecord;
  aResult: boolean;
begin
  aResult := False;
  aTest := nil;
  // function GetFileRecord(aFileID: Int64; var aResult: boolean): IJanuaFileRecord;
  aTest := TJanuaCloudImagesCache.GetImageRecord(aID, aResult);
  Assert.IsTrue(aResult, 'aResult is False');
  Assert.IsNotNull(aTest, 'Atest is nil');
end;

procedure Cloud.TestImagesStreamCache(aID: Int64);
var
  aStream: TStream;
  aResult: boolean;
  aTest: IJanuaFileRecord;
begin
  aResult := False;
  aTest := nil;

  aStream := TMemoryStream.Create;
  try
    aTest := TJanuaCloudImagesCache.GetImageToStream(aID, aResult, aStream);
    Assert.IsTrue(aResult, 'aResult is True');
    Assert.IsNotNull(aTest, 'Atest is not nil');
    Assert.IsTrue(aStream.Size > 0, 'aStream.Size =  0');
  finally
    aStream.Free;
  end;
end;

procedure Cloud.FileRecord;
var
  aTest: IJanuaFileRecord;
begin
  aTest := TJanuaFileRecord.Create;
  aTest.LoadFromFile(Cfilename);
  Assert.AreEqual(self.CFileNameExt, aTest.Ext);
  Assert.AreEqual(CFilenameShort, aTest.filename);
end;

procedure Cloud.ImageRecord;
var
  aTest: IJanuaImageRecord;
begin
  aTest := TJanuaImageRecord.Create;
  aTest.LoadFromFile(Cfilename);
  Assert.AreEqual(self.CFileNameExt, aTest.Ext);
  Assert.AreEqual(CFilenameShort, aTest.filename);
end;

procedure Cloud.PgFileStorage;
var
  aStorage: IJanuaCloudFileStorage;
  // TJanuaFilesPgStorage = class(TJanuaPgStorage, IJanuaFileStorage, IJanuaImageStorage)
  aTest: Janua.Cloud.Files.Intf.IJanuaFileStorage;
begin
  aStorage := TJanuaPgCloudStorage.Create;
  aStorage.KeepAlive := True;
  Assert.IsTrue(aStorage.KeepAlive);
  aTest := Janua.Cloud.Files.Impl.TJanuaFilesStorage.Create(aStorage);

end;

procedure Cloud.PgImageStorage;
var
  aStorage: IJanuaCloudFileStorage;
  // TJanuaImagePgStorage = class(TJanuaPgStorage, IJanuaFileStorage, IJanuaImageStorage)
  aTest: IJanuaImageStorage;
  aFile: IJanuaImageRecord;
  i: Int64;
begin
  aFile := TJanuaImageRecord.Create;
  aFile.LoadFromFile(Cfilename);
  aStorage := TJanuaPgCloudStorage.Create;
  aStorage.KeepAlive := True;
  Assert.IsTrue(aStorage.KeepAlive);
  aTest := TJanuaImageStorage.Create(aStorage);
  i := -1;
  i := aTest.SaveFileToStorage(aFile);
  Assert.IsTrue(i > 0);
end;

procedure Cloud.PgStorage;
var
  aStorage: TJanuaPgCloudStorage;
begin
  aStorage := TJanuaPgCloudStorage.Create;
  try
    aStorage.KeepAlive := True;
    aStorage.InternalCreateDataset;
    Assert.IsTrue(aStorage.KeepAlive);
    aStorage.InternalDestroyDataset;
  finally
    aStorage.Free;
  end;
end;

initialization

TDUnitX.RegisterTestFixture(Cloud);

end.
