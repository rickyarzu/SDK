unit Janua.Cloud.Server.Impl;

interface

uses
  System.Classes, Janua.Server.Intf, Janua.Cloud.Images.Intf, Janua.Cloud.Server.Intf,
  Janua.System.Server.Intf, Janua.Cloud.Files.Intf, Janua.Server.Impl;

type
  TJanuaServerCloud = class(TJanuaServer, IJanuaServerCloud, IJanuaServer)
  strict private
    FJanuaServerSystem: IJanuaServerSystem;
  protected
    FImageStorage: IJanuaImageStorage;
    FImageFiles: IJanuaImageMemoryStorage;
    FFileStorage: IJanuaFileStorage;
    FFiles: IJanuaFileMemoryStorage;
  private
    procedure SetJanuaServerSystem(val: IJanuaServerSystem);
    function GetJanuaServerSystem(): IJanuaServerSystem;
    procedure SetFileStorage(val: IJanuaFileStorage);
    function GetFileStorage(): IJanuaFileStorage;
    procedure SetFiles(val: IJanuaFileMemoryStorage);
    function GetFiles(): IJanuaFileMemoryStorage;
    function GetImageFiles: IJanuaImageMemoryStorage;
    procedure SetImageFiles(const Value: IJanuaImageMemoryStorage);
    // IJanuaImageStorage
    function GetImageStorage: IJanuaImageStorage;
    procedure SetImageStorage(const Value: IJanuaImageStorage);
  public
    constructor Create(const aServerType: TJanuaServerType = jstDBServer); override;
    property ImageStorage: IJanuaImageStorage read GetImageStorage write SetImageStorage;
    property JanuaServerSystem: IJanuaServerSystem read GetJanuaServerSystem write SetJanuaServerSystem;
    property ImageFiles: IJanuaImageMemoryStorage read GetImageFiles write SetImageFiles;
    property FileStorage: IJanuaFileStorage read GetFileStorage write SetFileStorage;
    property Files: IJanuaFileMemoryStorage read GetFiles write SetFiles;
  end;

Type
  TJanuaCloudServerComponent = class(TComponent)
  private
    FServerCloud: IJanuaServerCloud;
    procedure SetServerCloud(const Value: IJanuaServerCloud);
  public
    property ServerCloud: IJanuaServerCloud read FServerCloud write SetServerCloud;
  published

  end;

implementation

uses
  Janua.Cloud.Images.Impl, Janua.Cloud.Files.Impl;

{ TJanuaServerCloud }

procedure TJanuaServerCloud.SetJanuaServerSystem(val: IJanuaServerSystem);
begin
  FJanuaServerSystem := val
end;

function TJanuaServerCloud.GetJanuaServerSystem: IJanuaServerSystem;
begin
  Result := self.FJanuaServerSystem
end;

procedure TJanuaServerCloud.SetFileStorage(val: IJanuaFileStorage);
begin
  self.FFileStorage := val
end;

function TJanuaServerCloud.GetFileStorage: IJanuaFileStorage;
begin
  Result := self.FFileStorage
end;

procedure TJanuaServerCloud.SetFiles(val: IJanuaFileMemoryStorage);
begin
  self.FFiles := val
end;

constructor TJanuaServerCloud.Create(const aServerType: TJanuaServerType = jstDBServer);
begin
  inherited;
  FImageFiles := TJanuaImageMemoryStorage.Create;
  FFiles := TJanuaFileMemoryStorage.Create;
end;

function TJanuaServerCloud.GetFiles: IJanuaFileMemoryStorage;
begin
  Result := self.FFiles
end;

function TJanuaServerCloud.GetImageFiles: IJanuaImageMemoryStorage;
begin
  Result := self.FImageFiles
end;

procedure TJanuaServerCloud.SetImageFiles(const Value: IJanuaImageMemoryStorage);
begin
  self.FImageFiles := Value;
end;

function TJanuaServerCloud.GetImageStorage: IJanuaImageStorage;
begin
  Result := self.FImageStorage;
end;

procedure TJanuaServerCloud.SetImageStorage(const Value: IJanuaImageStorage);
begin
  self.FImageStorage := Value;
end;

{ TJanuaCloudServerComponent }

procedure TJanuaCloudServerComponent.SetServerCloud(const Value: IJanuaServerCloud);
begin
  FServerCloud := Value;
end;

end.
