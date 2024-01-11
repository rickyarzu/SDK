unit Janua.Virtual.Cloud;

interface

uses
  System.SysUtils, System.Classes, Spring.Collections,
  Janua.Cloud.Server.Intf, Janua.Cloud.Server.Impl, Janua.Cloud.Files.Intf,
  Janua.Core.Classes, Janua.Core.Cloud.Server,
  Janua.Core.Functions,
  // Server and Orm
  Janua.Core.DB.Impl, Janua.Server.Intf, Janua.Orm.Intf, Janua.Orm.Impl, Janua.Server.Impl,
  udmVirtualCloudServer;

type
  TJanuaVirtualCloudStorage = class(TJanuaStorage, IJanuaCloudFileStorage)
  strict private
    FDM: udmVirtualCloudServer.TdmVirtualCloudServer;
  private
    procedure SetDM(const Value: TdmVirtualCloudServer);
  strict protected
    procedure SetAfterDestroyDataset; override;
    procedure SetInternalCreateDBDataSets; override;
    procedure SetInternalCreateDataset; override;
    procedure SetAfterCreateDataset; override;
    procedure SetInternalDestroyDataset; override;
  public
    Constructor Create; override;
    destructor Destroy; override;
  public // DataModule Exposed Interfaces ...................................
    function LoadImage(const aID: Int64; var aImage: IJanuaFileRecord): boolean; overload;
    function LoadImage(const aGuid: TGUID; var aImage: IJanuaFileRecord): boolean; overload;
    function DeleteImage(const aID: Int64): boolean; overload;
    function DeleteImage(const aGuid: TGUID): boolean; overload;
    function SaveImage(const aImage: IJanuaFileRecord; const aSID, aOID: integer): Int64;
    function GetImagesList(const aLimit: integer): TArray<Int64>;
    function LoadFile(const aID: Int64; var aFile: IJanuaFileRecord): boolean; overload;
    function LoadFile(const aGuid: TGUID; var aFile: IJanuaFileRecord): boolean; overload;
    function DeleteFile(const aID: Int64): boolean; overload;
    function DeleteFile(const aGuid: TGUID): boolean; overload;
    function SaveFile(const aFile: IJanuaFileRecord; const aSID, aOID: integer): Int64;
    function GetFilessList(const aLimit: integer): TArray<Int64>;
    function GetResourcesList: IDictionary<string, Int64>;
    function GetResources(var aList: IDictionary<string, Int64>; var aStorage: IJanuaFileMemoryStorage): integer;
  public
    property DM: TdmVirtualCloudServer read FDM write SetDM;
  end;

  TJanuaPgServerCloud = class(TJanuaServerCloud, IJanuaServerCloud, IJanuaServer)
  private
    FStorage: IJanuaCloudFileStorage;
  public
    constructor Create(const aServerType: TJanuaServerType = jstDBServer); override;
    destructor Destroy; override;
  end;

type
  TJanuaVirtualCloud = class(TJanuaCustomServerCloud)
  private
    DM: TdmVirtualCloudServer;
  protected
    procedure DestroyDataModule(Force: boolean = false); override;
    procedure CreateDataModule; override;
    procedure AssignDatasets; override;
  protected
    procedure CreateCloud;
    procedure DestroyCloud(Force: boolean = false);
    function InternalOpenBlob(aID: Int64): boolean; override;
  public
    function StoreDBBlob: Int64; override;
  published
  end;

implementation

uses Janua.Application.Framework, Spring, Janua.Core.Types, Janua.Cloud.Files.Impl;

{ TJanuaVirtualCloudStorage }

constructor TJanuaVirtualCloudStorage.Create;
begin
  inherited;
end;

function TJanuaVirtualCloudStorage.DeleteFile(const aGuid: TGUID): boolean;
begin
  Result := false;
end;

function TJanuaVirtualCloudStorage.DeleteFile(const aID: Int64): boolean;
begin
  Result := false;
end;

function TJanuaVirtualCloudStorage.DeleteImage(const aGuid: TGUID): boolean;
begin
  Result := false;
end;

function TJanuaVirtualCloudStorage.DeleteImage(const aID: Int64): boolean;
begin
  Result := false;
end;

destructor TJanuaVirtualCloudStorage.Destroy;
begin
  if Assigned(FDM) then
    FreeAndNil(FDM);
  inherited;
end;

function TJanuaVirtualCloudStorage.GetFilessList(const aLimit: integer): TArray<Int64>;
begin

end;

function TJanuaVirtualCloudStorage.GetImagesList(const aLimit: integer): TArray<Int64>;
begin

end;

function TJanuaVirtualCloudStorage.GetResources(var aList: IDictionary<string, Int64>;
  var aStorage: IJanuaFileMemoryStorage): integer;
var
  LFile: IJanuaFileRecord;
  i: Int64;
begin
  Result := -1;
  try
    Guard.CheckNotNull(aList, 'aList  is nil');
    Guard.CheckNotNull(aStorage, 'aStorage is nil');
    // FDM.OpenResources;
    // Result := FDM.qryBlobFile.RecordCount;
    // if Result > 0 then
    // begin
    // FDM.qryBlobFile.First;
    // while not FDM.qryBlobFile.Eof do
    // begin
    LFile := TJanuaFileRecord.Create;
    for i := 0 to 10 do
    begin
      // FDM.LoadFileRecord(LFile);
      // if not aList.ContainsKey(LFile.FileName) then
      LFile.NewRecord;
      self.LoadFile(i, LFile);
      case i of
        0:
          LFile.FileName := '1.pdf';
      end;
      aList.Add(LFile.FileName, LFile.ID);
      aStorage.AddFile(LFile);
    end;
    // FDM.qryBlobFile.Next;
    // end;
    // end;
  except
    on e: exception do
      RaiseException('GetResources ', e, self, self.LogString);
  end;
end;

function TJanuaVirtualCloudStorage.GetResourcesList: IDictionary<string, Int64>;
var
  LFile: IJanuaFileRecord;
begin
  Result := TCollections.CreateDictionary<string, Int64>;
  // lista vuota per ora ................................

end;

function TJanuaVirtualCloudStorage.LoadFile(const aID: Int64; var aFile: IJanuaFileRecord): boolean;
var
  aStream: TMemoryStream;
  LGUID: TGUID;
begin
  CreateGUID(LGUID);
  Guard.CheckNotNull(aFile, 'TJanuaVirtualCloudStorage.LoadFile aFile nil');
  aFile.Blob.LoadFromFile({sGitHubHome}sJanuaHome + '\SDK\Testing\res\images\apici.png');
  // := TBitmap.Create;
  aFile.GUID := LGUID;
  aFile.ID := aID;
  aFile.FileName := aID.ToString + '.png';
  aFile.Ext := '.png';
  aFile.DBUserID := TJanuaApplication.DBUserID;
  Result := True;
end;

function TJanuaVirtualCloudStorage.LoadFile(const aGuid: TGUID; var aFile: IJanuaFileRecord): boolean;
var
  aStream: TMemoryStream;
begin
  Guard.CheckNotNull(aFile, 'TJanuaVirtualCloudStorage.LoadFile aFile nil');
  aFile.Blob.LoadFromFile({sGitHubHome}sJanuaHome + '\SDK\Testing\res\images\apici.png');
  // := TBitmap.Create;
  aFile.GUID := aGuid;
  aFile.ID := 1;
  aFile.FileName := 'apici.png';
  aFile.Ext := '.png';
  aFile.DBUserID := TJanuaApplication.DBUserID;
  Result := True;
end;

function TJanuaVirtualCloudStorage.LoadImage(const aGuid: TGUID; var aImage: IJanuaFileRecord): boolean;
var
  aStream: TMemoryStream;
begin
  Guard.CheckNotNull(aImage, 'TJanuaVirtualCloudStorage.LoadImage aFile nil');
  aImage.Blob.LoadFromFile({sGitHubHome}sJanuaHome + '\SDK\Testing\res\images\apici.png');
  // := TBitmap.Create;
  aImage.GUID := aGuid;
  aImage.ID := 1;
  aImage.FileName := 'apici.png';
  aImage.Ext := '.png';
  aImage.DBUserID := TJanuaApplication.DBUserID;
  Result := True;
end;

function TJanuaVirtualCloudStorage.LoadImage(const aID: Int64; var aImage: IJanuaFileRecord): boolean;
var
  aStream: TMemoryStream;
  LGUID: TGUID;
begin
  Result := false;
  try
    CreateGUID(LGUID);
    Guard.CheckNotNull(aImage, 'TJanuaVirtualCloudStorage.LoadImage aFile nil');
    aImage.Blob.LoadFromFile({sGitHubHome}sJanuaHome + '\SDK\Testing\res\images\apici.png');
    // := TBitmap.Create;
    aImage.GUID := LGUID;
    aImage.ID := aID;
    aImage.FileName := 'apici.png';
    aImage.Ext := '.png';
    aImage.DBUserID := TJanuaApplication.DBUserID;
    Result := True;
  except
    on e: exception do
      RaiseException('LoadImage ', e, self, self.LogString);
  end;
end;

function TJanuaVirtualCloudStorage.SaveFile(const aFile: IJanuaFileRecord; const aSID, aOID: integer): Int64;
begin
  Result := -1;
end;

function TJanuaVirtualCloudStorage.SaveImage(const aImage: IJanuaFileRecord; const aSID, aOID: integer): Int64;
begin
  Result := -1;
end;

procedure TJanuaVirtualCloudStorage.SetAfterCreateDataset;
begin
  inherited;

end;

procedure TJanuaVirtualCloudStorage.SetAfterDestroyDataset;
begin
  inherited;

end;

procedure TJanuaVirtualCloudStorage.SetDM(const Value: TdmVirtualCloudServer);
begin

end;

procedure TJanuaVirtualCloudStorage.SetInternalCreateDataset;
begin
  inherited;
  FInternalCreateDataset := procedure
    begin
      if not Assigned(FDM) then
        FDM := TdmVirtualCloudServer.Create(nil);
    end;
end;

procedure TJanuaVirtualCloudStorage.SetInternalCreateDBDataSets;
begin
  inherited;

end;

procedure TJanuaVirtualCloudStorage.SetInternalDestroyDataset;
begin
  inherited;
  FInternalDestroyDataset := procedure
    begin
      if Assigned(FDM) then
      begin
        FDM.Free;
        FDM := nil;
      end;
    end;
end;

{ TJanuaPgServerCloud }

constructor TJanuaPgServerCloud.Create(const aServerType: TJanuaServerType = jstDBServer);
begin
  inherited Create(aServerType);

end;

destructor TJanuaPgServerCloud.Destroy;
begin

  inherited;
end;

{ TJanuaVirtualCloud }

procedure TJanuaVirtualCloud.AssignDatasets;
begin
  inherited;

end;

procedure TJanuaVirtualCloud.CreateCloud;
begin

end;

procedure TJanuaVirtualCloud.CreateDataModule;
begin
  inherited;

end;

procedure TJanuaVirtualCloud.DestroyCloud(Force: boolean);
begin

end;

procedure TJanuaVirtualCloud.DestroyDataModule(Force: boolean);
begin
  inherited;

end;

function TJanuaVirtualCloud.InternalOpenBlob(aID: Int64): boolean;
begin
  Result := false;
end;

function TJanuaVirtualCloud.StoreDBBlob: Int64;
begin
  Result := -1;
end;

end.
