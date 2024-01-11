unit unitTestCloudPostgres;

interface

uses
  DUnitX.TestFramework;

type

  [TestFixture]
  CloudTest = class(TObject)
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    // Sample Methods
    // Simple single Test
    [Test]
    procedure TestPgFile;
    [Test]
    procedure TestPgImageFile;
    [Test]
    procedure TestDataModule;
    // Test with TestCase Attribute to supply parameters.
  end;

implementation

uses
  System.SysUtils, Janua.Core.Classes, Janua.Core.Types, Janua.VCL.Cloud.Files, Janua.VCL.Cloud.Images,
  udmPgCloudStorage;

procedure CloudTest.Setup;
begin
  JanuaApplicationGlobalProfile.JanuaServerConf.Port := 5432;
  JanuaApplicationGlobalProfile.JanuaServerConf.DatabaseName := 'lnd';
  JanuaApplicationGlobalProfile.JanuaServerConf.Password := '3rg0m3rc4t0r';
  JanuaApplicationGlobalProfile.JanuaServerConf.Direct := True;
  JanuaApplicationGlobalProfile.JanuaServerConf.Address := 'pg.januaservers.com';
  JanuaApplicationGlobalProfile.JanuaServerConf.Username := 'ergo';
  JanuaApplicationGlobalProfile.JanuaServerConf.Schema := 'public';
  JanuaApplicationGlobalProfile.JanuaServerConf.DBEngine := TJanuaDBEngine.jdbPostgres;
  JanuaApplicationGlobalProfile.DBUserID := 13;
  JanuaApplicationGlobalProfile.DBSchemaID := 0;
end;

procedure CloudTest.TearDown;
begin
end;

procedure CloudTest.TestDataModule;
var
  aTest: udmPgCloudStorage.TdmPgCloudStorage;
  id: Int64;
begin
  aTest := udmPgCloudStorage.TdmPgCloudStorage.Create(nil);
  try
    Assert.IsNotNull(aTest, 'aTest is null');

  finally
    aTest.Free;
  end;
end;

procedure CloudTest.TestPgFile;
var
  aTestFile: TJanuaVCLFilesManager;
  id: Int64;
begin
  aTestFile := TJanuaVCLFilesManager.Create(nil);
  try
    Assert.IsNotNull(aTestFile.SelectedFile, 'aTestFile.SelectedFile is nil');
    aTestFile.OpenFile('c:\januaproject\bin\iconafarma.jpg');
    Assert.AreEqual('iconafarma.jpg', aTestFile.SelectedFile.FileName);
    id := aTestFile.SaveFileToStorage;
    Assert.AreEqual(id, aTestFile.SelectedFile.id);
  finally
    aTestFile.Free;
  end;

  aTestFile := TJanuaVCLFilesManager.Create(nil);
  try
    Assert.IsNotNull(aTestFile.SelectedFile, 'aTestFile.SelectedFile is nil');
    Assert.IsTrue(aTestFile.SearchFileByID(id), 'aTestFile.FileList.SearchFileByID : ' +
      IntToStr(id));
    Assert.AreEqual(id, aTestFile.SelectedFile.id);
  finally
    aTestFile.Free;
  end;

end;

procedure CloudTest.TestPgImageFile;
var
  aTestFile: TJanuaVCLImagesManager;
  id: Int64;
begin
  aTestFile := TJanuaVCLImagesManager.Create(nil);
  try
    Assert.IsNotNull(aTestFile.SelectedImage, 'aTestFile.SelectedImage is nil');
    aTestFile.OpenFile('c:\januaproject\bin\iconafarma.jpg');
    Assert.AreEqual('iconafarma.jpg', aTestFile.SelectedImage.FileName);
    id := aTestFile.SaveImageToStorage;
    Assert.AreEqual(id, aTestFile.SelectedImage.id);
    Assert.IsTrue(aTestFile.LoadImageByID(id), 'Errore LoadImageByID = ' + id.ToString );
  finally
    aTestFile.Free;
  end;


end;

initialization

TDUnitX.RegisterTestFixture(CloudTest);

end.
