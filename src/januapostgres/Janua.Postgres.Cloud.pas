unit Janua.Postgres.Cloud;

interface

uses
  System.SysUtils, System.Classes, Spring.Collections,
  Janua.Cloud.Server.Intf, Janua.Cloud.Server.Impl, Janua.Cloud.Files.Intf,
  Janua.Core.Classes, Janua.Core.Cloud.Server, Janua.Orm.Impl, udmPgCloudStorage, udmPgCloud,
  Janua.Core.Functions, Janua.Server.Intf, Janua.Orm.Intf;

type
  TJanuaPgCloudStorage = class(TJanuaStorage, IJanuaCloudFileStorage)
  strict private
    FDM: udmPgCloudStorage.TdmPgCloudStorage;
  private
    procedure SetDM(const Value: TdmPgCloudStorage);
  public
    constructor Create; override;
    destructor Destroy; override;
  public // DataModule Exposed Interfaces ...................................
    function LoadImage(aID: Int64; var aImage: IJanuaFileRecord): boolean; overload;
    function LoadImage(aGuid: TGUID; var aImage: IJanuaFileRecord): boolean; overload;
    function DeleteImage(aID: Int64): boolean; overload;
    function DeleteImage(aGuid: TGUID): boolean; overload;
    function SaveImage(var aImage: IJanuaFileRecord; aSID, aOID: integer): Int64;
    function GetImagesList(aLimit: integer): TArray<Int64>;
    function LoadFile(aID: Int64; var aFile: IJanuaFileRecord): boolean; overload;
    function LoadFile(aGuid: TGUID; var aFile: IJanuaFileRecord): boolean; overload;
    function DeleteFile(aID: Int64): boolean; overload;
    function DeleteFile(aGuid: TGUID): boolean; overload;
    function SaveFile(var aFile: IJanuaFileRecord; aSID, aOID: integer): Int64;
    function GetFilessList(aLimit: integer): TArray<Int64>;
    function GetResourcesList: IDictionary<string, Int64>;
    function GetResources(var aList: IDictionary<string, Int64>; var aStorage: IJanuaFileMemoryStorage): integer;
  public
    procedure InternalCreateDataset;
    procedure InternalDestroyDataset;
    property DM: TdmPgCloudStorage read FDM write SetDM;
  end;

  TJanuaPgServerCloud = class(TJanuaServerCloud, IJanuaServerCloud, IJanuaServer)
  private
    FStorage: IJanuaCloudFileStorage;
  public
    constructor Create(aServerType: TJanuaServerType = jstDBServer); override;
    destructor Destroy; override;
  end;

type
  TJanuaPostgresCloud = class(TJanuaCustomServerCloud)
  private
  protected
  protected
    procedure DestroyDataModule(Force: boolean = false); override;
    procedure CreateDataModule; override;
    procedure AssignDatasets; override;
  protected
    DM: udmPgCloud.TdmPostgresCloud;
    procedure CreateCloud;
    procedure DestroyCloud(Force: boolean = false);
    function InternalOpenBlob(aID: Int64): boolean; override;
  public
    function Activate: boolean; override;
    function StoreDBBlob: Int64; override;
  published
  end;

  TJanuaPgCloudFactory = class
    class function CreateServerCloud(aServerType: TJanuaServerType = jstDBServer): IJanuaServerCloud;
  end;

implementation

uses Spring, Janua.Cloud.Images.Impl, Janua.Cloud.Files.Impl;

{ TJanuaPostgresCloud }

function TJanuaPostgresCloud.Activate: boolean;
begin
  Result := false;
  try
    if not Assigned(FServerSystem) or not self.FServerSystem.Active then
      Exit(false);
    self.FJanuaServerSession := self.FServerSystem.JanuaServerSession;
    self.FActive := True;
    Result := True;
  except
    on e: exception do
      self.WriteError('TJanuaPostgresCloud.Activate', e);
  end;

end;

procedure TJanuaPostgresCloud.AssignDatasets;
begin
  inherited;

end;

procedure TJanuaPostgresCloud.CreateCloud;
begin
  try
    if not Assigned(DM) then
    begin
      DM := udmPgCloud.TdmPostgresCloud.Create(nil);
      self.IDM := DM;
      self.DM.ServerSession := self.FJanuaServerSession;
      DM.PgErgoConnection.Connect
    end;

  except
    on e: exception do
      self.WriteError('TJanuaPostgresCloud.CreateCloud', e);
  end;
end;

procedure TJanuaPostgresCloud.CreateDataModule;
begin
  inherited;
  self.CreateCloud;
end;

procedure TJanuaPostgresCloud.DestroyCloud(Force: boolean = false);
begin
  if ((not self.KeepAlive) or Force) and Assigned(DM) then
  begin
    DM.DisposeOf;
    DM := nil;
    IDM := nil;
  end;

end;

procedure TJanuaPostgresCloud.DestroyDataModule(Force: boolean);
begin
  DestroyCloud;
  inherited;
end;

function TJanuaPostgresCloud.InternalOpenBlob(aID: Int64): boolean;
begin
  try
    self.AssignServerSession;
    self.CreateCloud;
    Result := self.DM.getBlob(aID);
    if Result then
      Janua.Core.Functions.StoreBlobToBlob(DM.Blob, FBlob)
  finally
    self.DestroyCloud
  end;
end;

function TJanuaPostgresCloud.StoreDBBlob: Int64;
begin
  try
    self.AssignServerSession;
    self.CreateCloud;
    Result := self.DM.StoreBlob(self.FBlob);
  finally
    self.DestroyCloud
  end;

end;

{ TJanuaPgCloudStorage }

function TJanuaPgCloudStorage.SaveFile(var aFile: IJanuaFileRecord; aSID, aOID: integer): Int64;
begin
  Result := FDM.SaveFile(aFile, aSID, aOID)
end;

function TJanuaPgCloudStorage.SaveImage(var aImage: IJanuaFileRecord; aSID, aOID: integer): Int64;
begin
  Result := FDM.SaveImage(aImage, aSID, aOID)
end;

procedure TJanuaPgCloudStorage.SetDM(const Value: TdmPgCloudStorage);
begin
  self.FDM := Value
end;

function TJanuaPgCloudStorage.DeleteFile(aID: Int64): boolean;
begin
  Result := FDM.DeleteFile(aID);
end;

constructor TJanuaPgCloudStorage.Create;
begin
  inherited;
  SetInternalCreateDataset(InternalCreateDataset);
  SetInternalDestroyDataset(InternalDestroyDataset);
end;

function TJanuaPgCloudStorage.DeleteFile(aGuid: TGUID): boolean;
begin
  Result := FDM.DeleteFile(aGuid);
end;

function TJanuaPgCloudStorage.DeleteImage(aID: Int64): boolean;
begin
  Result := FDM.DeleteImage(aID);
end;

function TJanuaPgCloudStorage.DeleteImage(aGuid: TGUID): boolean;
begin
  Result := FDM.DeleteImage(aGuid);
end;

destructor TJanuaPgCloudStorage.Destroy;
begin
  if Assigned(FDM) then
    FreeAndNil(FDM);
  inherited;
end;

function TJanuaPgCloudStorage.GetFilessList(aLimit: integer): TArray<Int64>;
begin
  Result := DM.GetFilessList(aLimit);
end;

function TJanuaPgCloudStorage.GetImagesList(aLimit: integer): TArray<Int64>;
begin
  Result := FDM.GetImagesList(aLimit)
end;

function TJanuaPgCloudStorage.GetResources(var aList: IDictionary<string, Int64>;
  var aStorage: IJanuaFileMemoryStorage): integer;
var
  LFile: IJanuaFileRecord;
begin
  Result := 0;
  Guard.CheckNotNull(FDM, 'TJanuaPgCloudStorage.GetResources FDM nil');
  Guard.CheckNotNull(aList, 'TJanuaPgCloudStorage.GetResources aList nil');
  Guard.CheckNotNull(aStorage, 'TJanuaPgCloudStorage.GetResources aStorage nil');
  try
    FDM.OpenResources;
    Result := FDM.qryBlobFile.RecordCount;
    if Result > 0 then
    begin
      FDM.qryBlobFile.First;
      while not FDM.qryBlobFile.Eof do
      begin
        LFile := TJanuaFileRecord.Create;
        FDM.LoadFileRecord(LFile);
        if not aList.ContainsKey(LFile.FileName) then
          aList.Add(LFile.FileName, LFile.ID);
        aStorage.AddFile(LFile);
        FDM.qryBlobFile.Next;
      end;
    end;
  except
    on e: exception do
      raise exception.Create('TJanuaPgCloudStorage.GetResources ' + e.Message);
  end;
end;

function TJanuaPgCloudStorage.GetResourcesList: IDictionary<string, Int64>;
begin
  Result := TCollections.CreateDictionary<string, Int64>;

end;

procedure TJanuaPgCloudStorage.InternalCreateDataset;
begin
  inherited;
  if not Assigned(FDM) then
  begin
    FDM := TdmPgCloudStorage.Create(nil);
    FDM.PgErgoConnection.Open;
  end;
end;

procedure TJanuaPgCloudStorage.InternalDestroyDataset;
begin
  inherited;
  if Assigned(DM) and not self.KeepAlive then
    FreeAndNil(FDM);
end;

function TJanuaPgCloudStorage.LoadFile(aGuid: TGUID; var aFile: IJanuaFileRecord): boolean;
begin
  Result := DM.LoadFile(aGuid, aFile)
end;

function TJanuaPgCloudStorage.LoadFile(aID: Int64; var aFile: IJanuaFileRecord): boolean;
begin
  Result := DM.LoadFile(aID, aFile)
end;

function TJanuaPgCloudStorage.LoadImage(aGuid: TGUID; var aImage: IJanuaFileRecord): boolean;
begin
  Result := DM.LoadImage(aGuid, aImage)
end;

function TJanuaPgCloudStorage.LoadImage(aID: Int64; var aImage: IJanuaFileRecord): boolean;
begin
  Result := DM.LoadImage(aID, aImage)
end;

{ TJanuaPgServerCloud }

constructor TJanuaPgServerCloud.Create(aServerType: TJanuaServerType = jstDBServer);
begin
  inherited Create(aServerType);
  self.FStorage := TJanuaPgCloudStorage.Create;
  // mantengo sempre lo 'storage' attivo.
  FStorage.KeepAlive := True;
  FImageStorage := TJanuaImageStorage.Create(FStorage);
  FFileStorage := TJanuaFilesStorage.Create(FStorage);
end;

destructor TJanuaPgServerCloud.Destroy;
begin
  inherited;
end;

{ TJanuaPgCloudFactory }

class function TJanuaPgCloudFactory.CreateServerCloud(aServerType: TJanuaServerType = jstDBServer): IJanuaServerCloud;
begin
  Result := TJanuaServerCloud.Create(TJanuaPgCloudStorage.Create, aServerType);
end;

end.
