unit Janua.Cloud.Images.Cache;

interface

uses System.Classes, Janua.Cloud.Images.Intf, Janua.Cloud.Files.Intf;

type
  TJanuaCloudImagesCache = class
  strict private
  class var
    FCloudStorage: IJanuaCloudFileStorage;
    FImageStorage: IJanuaImageStorage;
    FIMageList: IJanuaImageMemoryStorage;
    FSelectedImage: IJanuaImageRecord;
    FInitialized: boolean;
  public
    class property ImageStorage: IJanuaImageStorage read FImageStorage write FImageStorage;
    class property IMageList: IJanuaImageMemoryStorage read FIMageList write FIMageList;
    class property SelectedImage: IJanuaImageRecord read FSelectedImage write FSelectedImage;
    class property Initialized: boolean read FInitialized;
  private
    procedure SetImageStorage(const Value: IJanuaImageStorage);
    class procedure GuardCheck;

  public
    class function GetImageRecord(aImageID: Int64; var aResult: boolean): IJanuaImageRecord; overload;
    class function GetImageToStream(aImageID: Int64; var aResult: boolean; var aStream: TStream)
      : IJanuaImageRecord; overload;
    class function GetImageRecord(aImageID: TGUID; var aResult: boolean): IJanuaImageRecord; overload;
    class function GetImageToStream(aImageID: TGUID; var aResult: boolean; var aStream: TStream)
      : IJanuaImageRecord; overload;
    /// <summary> Initialization and Setup of the Required Cache Resources (Setup is not mandatory)
    /// This procedure loads into memory all the image resources or, at least, the latest images
    /// from database storage and preprare them ready for cache fast resource access in memory
    /// </summary>
    class procedure Initialize(aStorage: IJanuaCloudFileStorage);
    class procedure SetupResources;
    class procedure TearDownResources;
  public
    class Destructor Destroy;
  end;

implementation

uses
  Janua.Cloud.Images.Impl, System.SyncObjs, Spring, System.SysUtils, Janua.Core.Functions;

var
  FLock: TCriticalSection;

function GetImageRecord(aImageID: TGUID; var aResult: boolean): IJanuaImageRecord;
begin

end;

function GetImageToStream(aImageID: TGUID; var aResult: boolean; var aStream: TStream): IJanuaImageRecord;
begin

end;

{ TJanuaCloudFileCache }

class destructor TJanuaCloudImagesCache.Destroy;
begin
  // A.R. 2020-04-14 Class descrutor calls Tear Down, acting on interfaces it just helps to clean memory
  TearDownResources;
end;

class procedure TJanuaCloudImagesCache.GuardCheck;
begin
  Guard.CheckTrue(FInitialized, 'TJanuaCloudImagesCache.GetImageRecord not FInitialized');
  Guard.CheckNotNull(FCloudStorage, 'TJanuaCloudImagesCache.GetImageRecord aStorage is nil');
  Guard.CheckNotNull(self.ImageStorage, 'TJanuaCloudImagesCache.GetImageRecord aStorage is nil');
  Guard.CheckNotNull(FLock, 'TJanuaCloudImagesCache.GetImageRecord FLock is nil');
  Guard.CheckNotNull(IMageList, 'TJanuaCloudImagesCache.GetImageRecord IMageList is nil');
end;

class function TJanuaCloudImagesCache.GetImageRecord(aImageID: TGUID; var aResult: boolean): IJanuaImageRecord;
var
  LFile: IJanuaFileRecord;
begin
  GuardCheck;
  Result := nil;
  FLock.Acquire;
  aResult := IMageList.SearchFileByGUID(aImageID);
  if aResult then
    Result := IMageList.SelectedImage
    // 2020-04-28 Refactoring with new SearchFileByGUID with var IJanuaImageRecord.
  else
  begin
    aResult := ImageStorage.SearchFileByGUID(aImageID, LFile);
    if aResult then
      Result := LFile as IJanuaImageRecord;
  end;

  (* then Result := ImageStorage.LoadFileFromStorage(aImageID) as IJanuaImageRecord; *)
  FLock.Release;
end;

class function TJanuaCloudImagesCache.GetImageRecord(aImageID: Int64; var aResult: boolean): IJanuaImageRecord;
var
  LFile: IJanuaFileRecord;
begin
  GuardCheck;
  Result := nil;
  FLock.Acquire;
  aResult := IMageList.SearchFileByID(aImageID);
  if aResult then
    Result := IMageList.SelectedImage
  else
  begin
    aResult := ImageStorage.SearchFileByID(aImageID, LFile)
    // 2020-04-28 Refactoring with new SearchFileByGUID with var IJanuaImageRecord.
    { Result := ImageStorage.LoadFileFromStorage(aImageID) as IJanuaImageRecord };
    if aResult then
      Result := LFile as IJanuaImageRecord;
  end;
  FLock.Release;
end;

class function TJanuaCloudImagesCache.GetImageToStream(aImageID: TGUID; var aResult: boolean; var aStream: TStream)
  : IJanuaImageRecord;
begin

end;

class procedure TJanuaCloudImagesCache.Initialize(aStorage: IJanuaCloudFileStorage);
begin
  Guard.CheckNotNull(aStorage, 'TJanuaCloudImagesCache.Initialize aStorage is nil');
  FCloudStorage := aStorage;
  ImageStorage := TJanuaImageStorage.Create(FCloudStorage);
  Guard.CheckNotNull(ImageStorage, 'TJanuaCloudImagesCache.Initialize ImageStorage is nil');
  IMageList := Janua.Cloud.Images.Impl.TJanuaImageMemoryStorage.Create(ImageStorage);
  // self.FFileList := self.FIMageList;
  SelectedImage := Janua.Cloud.Images.Impl.TJanuaImageRecord.Create;
  FInitialized := True;
end;

procedure TJanuaCloudImagesCache.SetImageStorage(const Value: IJanuaImageStorage);
begin
  self.FImageStorage := Value
end;

class procedure TJanuaCloudImagesCache.SetupResources;
begin

end;

class procedure TJanuaCloudImagesCache.TearDownResources;
begin
  // A.R. 2020-04-14 Procedure to 'clean' the cache structure.
  ImageStorage := nil;
  FCloudStorage := nil;
  SelectedImage := nil;
  FInitialized := False;
end;

class function TJanuaCloudImagesCache.GetImageToStream(aImageID: Int64; var aResult: boolean; var aStream: TStream)
  : IJanuaImageRecord;
begin
  Guard.CheckNotNull(aStream, 'GetImageToStream Stream is nil');
  Result := GetImageRecord(aImageID, aResult);
  aStream.Position := 0;
  Result.SaveToStream(aStream);
end;

initialization

Janua.Core.Functions.ExecProc(
  procedure
  begin
    { Insert Procedures ............................... }
    FLock := TCriticalSection.Create;
  end, 'Janua.Core.Football.initialization');

finalization

FLock.Release;
FreeAndNil(FLock);

end.
