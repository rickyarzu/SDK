unit Janua.Cloud.Images.Impl;

interface

uses Janua.Core.Classes, System.Classes, System.SysUtils, Janua.Core.Types, Janua.Cloud.Images.Intf,
  Janua.Cloud.Files.Impl,
  Janua.Cloud.Files.Intf;

type
  TJanuaImageRecord = class(TJanuaFileRecord, IJanuaFileRecord, IJanuaImageRecord)
  private
    FWidth: integer;
    FHeigth: integer;
    function GetWidth: integer;
    function GetHeigth: integer;
    procedure SetHeigth(const Value: integer);
    procedure SetWidth(const Value: integer);
  end;

type
  TJanuaImageMemoryStorage = class(TJanuaFileMemoryStorage, IJanuaImageMemoryStorage)
  private
    procedure SetSelectedImage(const aValue: IJanuaImageRecord);
    function GetSelectedImage(): IJanuaImageRecord;
  public
    property SelectedImage: IJanuaImageRecord read GetSelectedImage write SetSelectedImage;
  end;

type
  TJanuaImageStorage = class(TJanuaInterfacedObject, IJanuaFileStorage, IJanuaImageStorage)
  private
    FStorage: IJanuaCloudFileStorage;
  public
    function SaveFileToStorage(const aFile: IJanuaFileRecord): Int64;
    function LoadFileFromStorage(const aID: Int64): IJanuaFileRecord; overload;
    function LoadFileFromStorage(const aGuid: TGUID): IJanuaFileRecord; overload;
    procedure DeleteFileFromStorage(const aFile: IJanuaFileRecord); overload;
    procedure DeleteFileFromStorage(const aID: Int64); overload;
    procedure AsyncSaveFileToStorage(const aFile: IJanuaFileRecord; aResultProc: TOutputProc);
    procedure AsyncDeleteFileFromStorage(const aID: Int64; aResultProc: TOutputProc); overload;
    procedure AsyncLoadFileFromStorage(const aID: Int64; aResultProc: TOutputProc); overload;
    procedure AsyncDeleteFileFromStorage(const aGuid: TGUID; aResultProc: TOutputProc); overload;
    procedure AsyncLoadFileFromStorage(const aGuid: TGUID; aResultProc: TOutputProc); overload;
    function FilesList(const aLimit: integer): TArray<Int64>;
    function SearchFileByID(const aID: Int64; var aFile: IJanuaFileRecord): boolean;
    function SearchFileByGUID(const aGuid: TGUID; var aFile: IJanuaFileRecord): boolean;
    constructor Create(const aStorage: IJanuaCloudFileStorage); overload;
    Destructor Destroy; override;
  end;

implementation

uses
  Janua.Application.Framework, Spring;

{ TJanuaImageRecord }
{ TJanuaImageMemoryStorage }

{ function GetSelectedItem: IJanuaFileRecord;
  procedure SetSelectedItem(const Value: IJanuaFileRecord); }

procedure TJanuaImageMemoryStorage.SetSelectedImage(const aValue: IJanuaImageRecord);
begin
  SetSelectedItem(aValue);
end;

function TJanuaImageMemoryStorage.GetSelectedImage: IJanuaImageRecord;
begin
  Result := GetSelectedItem as IJanuaImageRecord
end;

{ TJanuaImageStorage }

procedure TJanuaImageStorage.DeleteFileFromStorage(const aFile: IJanuaFileRecord);
begin
  self.DeleteFileFromStorage(aFile.ID);
end;

function TJanuaImageStorage.FilesList(const aLimit: integer): TArray<Int64>;
begin
  FStorage.CreateDataset;
  Result := FStorage.GetImagesList(aLimit);
  // la gestione delle Sessioni non è ancora implementata ........................
  // FStorage.DestroyDataset;
end;

function TJanuaImageStorage.LoadFileFromStorage(const aGuid: TGUID): IJanuaFileRecord;
begin

end;

function TJanuaImageStorage.LoadFileFromStorage(const aID: Int64): IJanuaFileRecord;
begin
  FStorage.CreateDataset;
  Result := TJanuaImageRecord.Create;
  if not FStorage.LoadImage(aID, Result) then
    Result.ID := -1;
  // la gestione delle Sessioni non è ancora implementata ........................
  // FStorage.DestroyDataset;
end;

function TJanuaImageStorage.SaveFileToStorage(const aFile: IJanuaFileRecord): Int64;
begin
  Guard.CheckNotNull(FStorage, self.ClassName + '.SaveFileToStorage FStorage is nil');
  Guard.CheckNotNull(aFile, self.ClassName + '.SaveFileToStorage aFile is nil');
  try
    FStorage.CreateDataset;
    Result := FStorage.SaveImage(aFile, TJanuaApplication.DBSchemaID, TJanuaApplication.DBUserID);
  except
    on e: Exception do
      raise Exception.Create(ClassName + '.SaveFileToStorage ' + sLineBreak + e.ClassName + ' ' + e.Message);
  end;
  // la gestione delle Sessioni non è ancora implementata ........................
  // FStorage.DestroyDataset;
end;

function TJanuaImageStorage.SearchFileByGUID(const aGuid: TGUID; var aFile: IJanuaFileRecord): boolean;
begin
  FStorage.CreateDataset;
  aFile := TJanuaImageRecord.Create;
  Result := FStorage.LoadImage(aGuid, aFile);
end;

function TJanuaImageStorage.SearchFileByID(const aID: Int64; var aFile: IJanuaFileRecord): boolean;
begin
  FStorage.CreateDataset;
  aFile := TJanuaImageRecord.Create;
  Result := FStorage.LoadImage(aID, aFile);
  // Result.ID := -1;
  // la gestione delle Sessioni non è ancora implementata ........................
  // FStorage.DestroyDataset;
end;

procedure TJanuaImageStorage.DeleteFileFromStorage(const aID: Int64);
begin
  FStorage.CreateDataset;
  FStorage.DeleteImage(aID);
  // la gestione delle Sessioni non è ancora implementata ........................
  // FStorage.DestroyDataset;
end;

destructor TJanuaImageStorage.Destroy;
begin
  FStorage.DestroyDataset;
  inherited;
end;

procedure TJanuaImageStorage.AsyncDeleteFileFromStorage(const aGuid: TGUID; aResultProc: TOutputProc);
begin
  { TODO : Implementare AsyncDeleteFileFromStorage aGUID }
end;

procedure TJanuaImageStorage.AsyncLoadFileFromStorage(const aGuid: TGUID; aResultProc: TOutputProc);
begin
  { TODO : Implementare AsyncLoadFileFromStorage aGUID }
end;

procedure TJanuaImageStorage.AsyncSaveFileToStorage(const aFile: IJanuaFileRecord; aResultProc: TOutputProc);
begin
  { TODO : Implementare AsyncSaveFileToStorage aFile: IJanuaFileRecord }
end;

procedure TJanuaImageStorage.AsyncDeleteFileFromStorage(const aID: Int64; aResultProc: TOutputProc);
begin
  { TODO : Implementare AsyncDeleteFileFromStorage  aID: Int64 }
end;

procedure TJanuaImageStorage.AsyncLoadFileFromStorage(const aID: Int64; aResultProc: TOutputProc);
begin
  { TODO : Implementare syncLoadFileFromStorage(const aID: Int64) }
end;

constructor TJanuaImageStorage.Create(const aStorage: IJanuaCloudFileStorage);
begin
  Guard.CheckNotNull(aStorage, 'TJanuaPgStorage.Create aStorage is null');
  self.FStorage := aStorage;
end;

{ TJanuaImageRecord }

function TJanuaImageRecord.GetHeigth: integer;
begin
  Result := self.FHeigth
end;

function TJanuaImageRecord.GetWidth: integer;
begin
  Result := self.FWidth
end;

procedure TJanuaImageRecord.SetHeigth(const Value: integer);
begin
  FHeigth := Value;
end;

procedure TJanuaImageRecord.SetWidth(const Value: integer);
begin
  FWidth := Value;
end;

initialization

try
  // TJanuaImageStorage = class(TInterfacedObject, IJanuaFileStorage, IJanuaImageStorage)
  TJanuaApplicationFactory.RegisterClass(IJanuaImageStorage, TJanuaImageStorage);
  // TJanuaImageMemoryStorage = class(TJanuaFileMemoryStorage, IJanuaImageMemoryStorage)
  TJanuaApplicationFactory.RegisterClass(IJanuaImageMemoryStorage, TJanuaImageMemoryStorage);
except
  on e: Exception do
    raise Exception.Create('Cloud.Images.Initialization ' + e.Message);
end;

end.
