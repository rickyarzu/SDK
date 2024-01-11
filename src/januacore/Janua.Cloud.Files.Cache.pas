unit Janua.Cloud.Files.Cache;

interface

uses System.Classes, Janua.Cloud.Files.Intf;

type
  TJanuaCloudFileCache = class
  strict private
  class var
    FInitialized: boolean;
    FilesList: Janua.Cloud.Files.Intf.IJanuaFileMemoryStorage;
    SelectedFile: Janua.Cloud.Files.Intf.IJanuaFileRecord;
    FilesStorage: IJanuaFileStorage;
    Resources: Janua.Cloud.Files.Intf.IJanuaFileMemoryStorage;
    SelectedResource: Janua.Cloud.Files.Intf.IJanuaFileRecord;
    FCacheStorage: IJanuaCloudFileStorage;
  public
    class property Initialized: boolean read FInitialized;
  public
    class function GetFileRecord(aFileID: Int64; var aResult: boolean): IJanuaFileRecord;
    class procedure AddRecordToCache(aRecordFile: IJanuaFileRecord);
    class procedure SetupResources;
    class function GetResourceRecord(aResource: string; var aResult: boolean): IJanuaFileRecord;
    class procedure Initialize(aStorage: IJanuaCloudFileStorage);
    class procedure LoadResources; static;
    class procedure Finalize;
  end;

implementation

uses
  Spring, Janua.Cloud.Files.Impl, System.SyncObjs, Spring.Collections, System.SysUtils;

var
  FLock: TCriticalSection;
  FStorageLock: TCriticalSection;
  FDictLock: TCriticalSection;
  FResourceLock: TCriticalSection;
  FResourcesDict: IDictionary<string, Int64>;
  FCount: Integer;
  // FInitialized: boolean;

class procedure TJanuaCloudFileCache.SetupResources;
begin
  Guard.CheckNotNull(Resources, 'TJanuaCloudFileCache.SetupResources Resources nil');
  Guard.CheckNotNull(FCacheStorage, 'TJanuaCloudFileCache.SetupResources FCacheStorage nil');
  FStorageLock.Acquire;
  try
    FCacheStorage.CreateDataset;
    FCount := FCacheStorage.GetResources(FResourcesDict, Resources);
    FCacheStorage.DestroyDataset;
  finally
    FStorageLock.Release;
  end;
end;

class function TJanuaCloudFileCache.GetResourceRecord(aResource: string; var aResult: boolean): IJanuaFileRecord;
var
  aFileID: Int64;
begin
  Result := nil;
  try
    FDictLock.Acquire;
    if Resources.Count = 0 then
      SetupResources;
    aResult := FResourcesDict.TryGetValue(aResource, aFileID);
    // aFileID := FResourcesDict.Extract(aResource);
  finally
    FDictLock.Release;
  end;

  if aResult then
    try
      FResourceLock.Acquire;
      aResult := Resources.SearchFileByID(aFileID);
      if aResult then
        Result := Resources.SelectedItem
    finally
      FResourceLock.Release
    end;
end;

class procedure TJanuaCloudFileCache.Initialize(aStorage: IJanuaCloudFileStorage);
begin
  Guard.CheckNotNull(aStorage, 'TJanuaCloudFileCache.Initialize aStorage nil');
  FCacheStorage := aStorage;
  // E' legato ad un engine di Database o uno storage file ecc ecc ........
  FilesStorage := TJanuaFilesStorage.Create(FCacheStorage);
  // Questa è la lista dei file che vengono acceduti dalla Cache Memory
  FilesList := Janua.Cloud.Files.Impl.TJanuaFileMemoryStorage.Create(FilesStorage);
  // qui viene memorizzato di volta in volta il file selezionato
  SelectedFile := Janua.Cloud.Files.Impl.TJanuaFileRecord.Create;
  // le risorse sono il file Storage che puo venire caricato per intero all'avvio del programma
  Resources := Janua.Cloud.Files.Impl.TJanuaFileMemoryStorage.Create(FilesStorage);
  // Questa è la risorsa selezionata.
  SelectedResource := Janua.Cloud.Files.Impl.TJanuaFileRecord.Create;
  FInitialized := True;
end;

class procedure TJanuaCloudFileCache.LoadResources;
begin

end;

class procedure TJanuaCloudFileCache.Finalize;
begin
  // Questa è la risorsa selezionata.
  SelectedResource := nil;
  // le risorse sono il file Storage che puo venire caricato per intero all'avvio del programma
  Resources := nil;
  // qui viene memorizzato di volta in volta il file selezionato
  SelectedFile := nil;
  // Questa è la lista dei file che vengono acceduti dalla Cache Memory
  FilesList := nil;
  FilesStorage := nil;
  FCacheStorage := nil;
  // E' legato ad un engine di Database o uno storage file ecc ecc ........
  FInitialized := False;
end;

class function TJanuaCloudFileCache.GetFileRecord(aFileID: Int64; var aResult: boolean): IJanuaFileRecord;
begin
  Guard.CheckTrue(FInitialized, 'GetFileRecord Cache not initialized');
  Guard.CheckNotNull(FilesStorage, 'TJanuaCloudFileCache.GetFileRecord FilesStorage not initialized');
  Guard.CheckNotNull(FilesList, 'TJanuaCloudFileCache.GetFileRecord FilesStorage not initialized');
  aResult := False;
  try
    FLock.Acquire;
    aResult := FilesList.SearchFileByID(aFileID);
    if aResult then
      Result := FilesList.SelectedItem
  finally
    FLock.Release
  end;
  if not aResult then
    try
      FStorageLock.Acquire;
      Result := FilesStorage.LoadFileFromStorage(aFileID);
    finally
      FStorageLock.Release;
    end;
end;

class procedure TJanuaCloudFileCache.AddRecordToCache(aRecordFile: IJanuaFileRecord);
begin
  FLock.Acquire;
  try
    FilesList.AddFile(aRecordFile);
  finally
    FLock.Release;
  end;

end;

initialization

try
  { Insert Procedures ............................... }
  FLock := TCriticalSection.Create;
  FStorageLock := TCriticalSection.Create;
  FDictLock := TCriticalSection.Create;
  FResourceLock := TCriticalSection.Create;
  FResourcesDict := TCollections.CreateDictionary<string, Int64>;
  // FInitialized := False;
except
  on e: Exception do
    raise Exception.Create('Janua.Football.Web.initialization ' + e.Message);
end;

finalization

try
  { Insert Procedures ............................... }
  { Insert Procedures ............................... }
  FLock.Free;
  FStorageLock.Free;
  FDictLock.Free;
  FResourceLock.Free;
  // FInitialized := False;
except
  on e: Exception do
    raise Exception.Create('Janua.Football.Web.initialization ' + e.Message);
end;

end.
