unit unitTestCloud;

interface

uses
  DUnitX.TestFramework;

type

  [TestFixture]
  TCloud = class(TObject)
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    // Test with TestCase Attribute to supply parameters.
    [Test]
    [TestCase('TestA', '1,.doc')]
    procedure TestFile(const FileID: Integer; const FileExt: string);
  end;

implementation

uses Janua.Cloud.Impl, Janua.Cloud.Intf,
  Janua.Cloud.Images.Intf, Janua.Virtual.Cloud, Janua.Core.Classes, Janua.Cloud.Files.Intf,
  Janua.Cloud.Files.Impl, Janua.Cloud.Images.Impl, Janua.Cloud.Files.Cache, Janua.Cloud.Images.Cache;


procedure TCloud.Setup;
var
  FMemStorage: IJanuaCloudFileStorage;
  FMemImageStorage: IJanuaCloudFileStorage;
begin
  // Crea i 'cloud' di appoggio alle procedure Cloud
  // Cloud Files Cache Initialization ..................................................
  FMemStorage := TJanuaVirtualCloudStorage.Create;
  TJanuaCloudFileCache.Initialize(FMemStorage);
  TJanuaCloudFileCache.SetupResources;
  // Cloud Images Cache Initialization ..................................................
  FMemImageStorage := TJanuaVirtualCloudStorage.Create;
  Janua.Cloud.Images.Cache.TJanuaCloudImagesCache.Initialize(FMemImageStorage);
  Janua.Cloud.Images.Cache.TJanuaCloudImagesCache.SetupResources;
  // ..............................................................................
end;

procedure TCloud.TearDown;
begin
  TJanuaCloudFileCache.Finalize
end;

procedure TCloud.TestFile(const FileID: Integer; const FileExt: string);
var
  LTest: string;
begin
  LTest := TCloudFactory.GetFileUrl(FileID, FileExt);
  Assert.AreNotEqual('', lTest);
end;

initialization

TDUnitX.RegisterTestFixture(TCloud);

end.
