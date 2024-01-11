unit Janua.Cloud.Files.Impl;

interface

uses Janua.Core.Classes, System.Classes, System.SysUtils, Spring, Janua.Cloud.Files.Intf, Janua.Core.Types,
  Spring.Collections, Janua.Http.Types;

type
  TJanuaFileRecord = class(TJanuaInterfacedObject, IJanuaFileRecord)
  strict private
    FBlob: TJanuaBlob;
    FID: Int64;
    FFileName: TFileName;
    FSchemaID: integer;
    FDBUserID: integer;
    // FMIME: string;
    FMimeType: TJanuaMimeType;
    FExt: string;
    FItemIndex: integer;
    FSaved: boolean;
    FModified: boolean;
    FGUID: TGUID;
  private
    function GeTJanuaBlob: TJanuaBlob;
    procedure SeTJanuaBlob(Value: TJanuaBlob);
    function GetFileName: TFileName;
    procedure SetFileName(const Value: TFileName);
    function getSchemaID: integer;
    procedure SetSchemaID(const Value: integer);
    function GetMime: string;
    procedure SetMime(Value: string);
    function GetMimeType: TJanuaMimeType;
    procedure SetMimeType(const Value: TJanuaMimeType);
    function GetExt: string;
    procedure SetExt(const Value: string);
    function GetID: Int64;
    procedure SetID(Value: Int64);
    function GetItemIndex: integer;
    procedure SetItemIndex(const Value: integer);
    function getSaved: boolean;
    procedure SetSaved(const Value: boolean);
    function getModified: boolean;
    function GetGUID: TGUID;
    procedure SetGUID(const Value: TGUID);
    procedure SetDBUserID(const Value: integer);
    function GetDBUserID: integer;
  strict private
    procedure SetModified(const Value: boolean);
  public
    function LoadFromFile(aFileName: TFileName): boolean;
    function SaveToFile(aFileName: TFileName): boolean;
    function SaveToFileDir(aFileDir: TFileName): boolean;
    procedure LoadFromStream(aStrem: TStream);
    procedure SaveToStream(aStream: TStream);
    function FileNameGUID: TFileName;
  public
    constructor Create; override;
    destructor Destroy; override;
    procedure NewRecord;
    constructor Create(aStream: TStream; aFileName: string); overload;
  public
    property Blob: TJanuaBlob read GeTJanuaBlob write SeTJanuaBlob;
    property ID: Int64 read GetID write SetID;
    property FileName: TFileName read GetFileName write SetFileName;
    property SchemaID: integer read getSchemaID write SetSchemaID;
    property DBUserID: integer read FDBUserID write SetDBUserID;
    property Mime: string read GetMime write SetMime;
    property MimeType: TJanuaMimeType read GetMimeType write SetMimeType;
    property Ext: string read GetExt write SetExt;
    property ItemIndex: integer read GetItemIndex write SetItemIndex;
    property Modified: boolean read getModified;
    property Saved: boolean read getSaved write SetSaved;
    property GUID: TGUID read GetGUID write SetGUID;
  end;

type
  TJanuaFileMemoryStorage = class(TJanuaInterfacedObject, IJanuaFileMemoryStorage)
  strict Private
    FList: IList<IJanuaFileRecord>;
    FIdNDX: IDictionary<Int64, IJanuaFileRecord>;
    FGUIDNDX: IDictionary<TGUID, IJanuaFileRecord>;
    FFileNameNDX: IDictionary<string, IJanuaFileRecord>;
    FStorage: IJanuaFileStorage;
    FSelectedItem: IJanuaFileRecord;
    FItemIndex: integer;
  private
    // private or protected Methods
    function GetCount: Int64;
    function GetItemIndex: integer;
  strict protected
    function GetSelectedItem: IJanuaFileRecord;
    procedure SetSelectedItem(const Value: IJanuaFileRecord);
    // Public or Published Methods
  public
    function AddFileFromStream(aStream: TStream): integer;
    function GetFileAsBlob(const aID: Int64): TJanuaBlob;
    function GetFileAsStream(const aID: Int64): TStream;
    procedure SaveFileToStream(const aID: Int64; aStream: TStream);
    function GetFileByIndex(const aIndex: integer): IJanuaFileRecord;
    function GetFileByID(const aID: Int64): IJanuaFileRecord;
    function GetFileByFileName(const aFileName: string): IJanuaFileRecord;
    function AddFile(Value: IJanuaFileRecord; aSaveToStorage: boolean = False): integer;
    function SaveFileToStorage: Int64;
    procedure DeleteFile(const aID: Int64; aDelFromStorage: boolean = False);
    function SearchFileByID(aID: Int64): boolean;
    procedure LoadFilesList(aLimit: integer);
    function AddFromFile(aFileName: TFileName): integer;
    procedure SaveToFile(aFileName: TFileName);
    procedure SaveToFileDir(aDirName: TFileName);
    function SearchFileByGUID(aID: TGUID): boolean;
    function GetFileByGUID(const aGUID: TGUID): IJanuaFileRecord;
  public
    constructor Create; override;
    constructor Create(aStorage: IJanuaFileStorage); overload;
  public
    // properties
    property Count: Int64 read GetCount;
    property ItemIndex: integer read GetItemIndex;
    property SelectedItem: IJanuaFileRecord read GetSelectedItem write SetSelectedItem;
  end;

type
  TJanuaFilesStorage = class(TInterfacedObject, IJanuaFileStorage)
  private
    // l'istanza viene creata in Postgres, Virtual, Oracle, Cloud, GDrive, JanuaCloudFileSys ecc ecc ......
    FStorage: IJanuaCloudFileStorage;
  public
    function SaveFileToStorage(const aFile: IJanuaFileRecord): Int64;
    function LoadFileFromStorage(const aID: Int64): IJanuaFileRecord; overload;
    function LoadFileFromStorage(const aGUID: TGUID): IJanuaFileRecord; overload;
    procedure DeleteFileFromStorage(const aFile: IJanuaFileRecord); overload;
    procedure DeleteFileFromStorage(const aID: Int64); overload;
    procedure AsyncSaveFileToStorage(const aFile: IJanuaFileRecord; aResultProc: TOutputProc);
    procedure AsyncDeleteFileFromStorage(const aID: Int64; aResultProc: TOutputProc); overload;
    procedure AsyncLoadFileFromStorage(const aID: Int64; aResultProc: TOutputProc); overload;
    procedure AsyncDeleteFileFromStorage(const aGUID: TGUID; aResultProc: TOutputProc); overload;
    procedure AsyncLoadFileFromStorage(const aGUID: TGUID; aResultProc: TOutputProc); overload;
    function FilesList(const aLimit: integer): TArray<Int64>;
    function SearchFileByID(const aID: Int64; var aFile: IJanuaFileRecord): boolean;
    function SearchFileByGUID(const aGUID: TGUID; var aFile: IJanuaFileRecord): boolean;
    constructor Create(const aStorage: IJanuaCloudFileStorage); overload;
    destructor Destroy; override;
    function GetReourcesList: IDictionary<string, Int64>;
  end;

implementation

uses
  Janua.Application.Framework, System.IOUtils;

constructor TJanuaFileRecord.Create;
begin
  inherited;
  FBlob := TJanuaBlob.Create(False);
  NewRecord;
end;

constructor TJanuaFileRecord.Create(aStream: TStream; aFileName: string);
begin
  self.FBlob.LoadFromStream(aStream);
end;

destructor TJanuaFileRecord.Destroy;
begin
  inherited;
end;

function TJanuaFileRecord.GeTJanuaBlob: TJanuaBlob;
begin
  Result := self.FBlob;

end;

function TJanuaFileRecord.GetDBUserID: integer;
begin
  Result := self.DBUserID
end;

function TJanuaFileRecord.GetExt: string;
begin
  Result := self.FExt
end;

function TJanuaFileRecord.GetFileName: TFileName;
begin
  Result := self.FFileName
end;

function TJanuaFileRecord.FileNameGUID: TFileName;
begin
  Result := stringreplace(stringreplace(FGUID.ToString, '}', '', []), '{', '', []) + self.Ext;
end;

function TJanuaFileRecord.GetID: Int64;
begin
  Result := self.FID
end;

function TJanuaFileRecord.GetItemIndex: integer;
begin
  Result := self.FItemIndex
end;

function TJanuaFileRecord.GetMime: string;
begin
  Result := JanuaMimeString[self.FMimeType]
end;

function TJanuaFileRecord.GetMimeType: TJanuaMimeType;
begin
  Result := self.FMimeType
end;

function TJanuaFileRecord.getModified: boolean;
begin
  Result := self.FModified
end;

function TJanuaFileRecord.getSaved: boolean;
begin
  Result := self.FSaved
end;

function TJanuaFileRecord.getSchemaID: integer;
begin
  Result := self.FSchemaID
end;

function TJanuaFileRecord.LoadFromFile(aFileName: TFileName): boolean;
begin
  Result := FileExists(aFileName);
  if Result then
  begin
    FBlob.LoadFromFile(aFileName);
    CreateGUID(FGUID);
    self.FExt := ExtractFileExt(aFileName);
    self.FFileName := ExtractFileName(aFileName);
  end;
end;

procedure TJanuaFileRecord.LoadFromStream(aStrem: TStream);
begin
  if Assigned(aStrem) then
  begin
    aStrem.Position := 0;
    self.FBlob.LoadFromStream(aStrem);
    SetModified(True);
  end;
end;

procedure TJanuaFileRecord.NewRecord;
begin
  self.FBlob.Clear;
  self.FID := -1;
  CreateGUID(FGUID);
  self.FModified := False;
  self.FSaved := False;
  self.FID := -1;
  self.FSchemaID := TJanuaApplication.DBSchemaID;
  self.FDBUserID := TJanuaApplication.DBUserID;
  self.FItemIndex := -1;
end;

function TJanuaFileRecord.SaveToFile(aFileName: TFileName): boolean;
begin
  Result := False;
  Result := DirectoryExists(ExtractFileDir(aFileName));
  if Result then
    self.FBlob.SaveToFile(aFileName);
end;

function TJanuaFileRecord.SaveToFileDir(aFileDir: TFileName): boolean;
begin
  Result := False;
  if DirectoryExists(aFileDir) then
    Result := SaveToFile(TPath.Combine(aFileDir, self.FileName));
end;

procedure TJanuaFileRecord.SaveToStream(aStream: TStream);
begin
  if Assigned(aStream) then
  begin
    aStream.Position := 0;
    self.FBlob.SaveToStream(aStream);
  end;
end;

procedure TJanuaFileRecord.SeTJanuaBlob(Value: TJanuaBlob);
begin
  FBlob := Value;
  SetModified(True);
end;

procedure TJanuaFileRecord.SetDBUserID(const Value: integer);
begin
  FDBUserID := Value;
end;

procedure TJanuaFileRecord.SetExt(const Value: string);
begin
  FExt := Value
end;

procedure TJanuaFileRecord.SetFileName(const Value: TFileName);
begin
  if self.FFileName <> Value then
  begin
    FFileName := Value;
    FExt := ExtractFileExt(FFileName);
    SetModified(True);
  end;
end;

procedure TJanuaFileRecord.SetID(Value: Int64);
begin
  if Value <> self.FID then
  begin
    FID := Value;
    SetModified(True);
  end;
end;

procedure TJanuaFileRecord.SetItemIndex(const Value: integer);
begin
  self.FItemIndex := Value
end;

procedure TJanuaFileRecord.SetMime(Value: string);
begin

end;

procedure TJanuaFileRecord.SetMimeType(const Value: TJanuaMimeType);
begin
  if self.FMimeType <> Value then
  begin
    self.FMimeType := Value;
    self.SetModified(True);
  end;
end;

procedure TJanuaFileRecord.SetModified(const Value: boolean);
begin
  if Value then
    self.FSaved := False
end;

procedure TJanuaFileRecord.SetSaved(const Value: boolean);
begin
  self.FModified := not Value

end;

procedure TJanuaFileRecord.SetSchemaID(const Value: integer);
begin
  self.FSchemaID := Value;
end;

function TJanuaFileMemoryStorage.AddFile(Value: IJanuaFileRecord; aSaveToStorage: boolean): integer;
var
  i: Int64;
begin
  Result := -1;
  if Assigned(Value) then
  begin
    i := Value.ID;
    Result := FList.IndexOf(Value);
    if Result < 0 then
    begin
      self.FList.Add(Value);
      self.FItemIndex := Pred(FList.Count);
      // FileNameNDX lo cambio usando Estensione e GUID
      if not FFileNameNDX.ContainsKey(Value.FileNameGUID) then
        self.FFileNameNDX.Add(Value.FileNameGUID, Value);
      if not FGUIDNDX.ContainsKey(Value.GUID) then
        FGUIDNDX.Add(Value.GUID, Value);
      self.FSelectedItem := Value;
      self.SelectedItem.ItemIndex := self.FItemIndex;
      Result := self.FItemIndex;
      if (i > 0) and not FIdNDX.ContainsKey(i) then
        self.FIdNDX.Add(i, Value);
    end
    else
    begin
      self.FItemIndex := Result;
    end;
    if i <= 0 then
      if aSaveToStorage and Assigned(self.FStorage) then
      begin
        i := self.FStorage.SaveFileToStorage(Value);
        self.SelectedItem.ID := i;
        if (i > 0) and not FIdNDX.ContainsKey(i) then
          FIdNDX[i] := Value;
      end;
  end;
end;

function TJanuaFileMemoryStorage.AddFileFromStream(aStream: TStream): integer;
var
  tmp: IJanuaFileRecord;
begin
  tmp := TJanuaFileRecord.Create;
  tmp.LoadFromStream(aStream);
  Result := self.AddFile(tmp);
end;

function TJanuaFileMemoryStorage.AddFromFile(aFileName: TFileName): integer;
var
  aNewFile: Janua.Cloud.Files.Intf.IJanuaFileRecord;
begin
  Result := -1;
  aNewFile := TJanuaFileRecord.Create;
  try
    if aNewFile.LoadFromFile(aFileName) then
      Result := self.AddFile(aNewFile);
  except
    on e: exception do
    begin
      aNewFile := nil;
    end;

  end;
end;

constructor TJanuaFileMemoryStorage.Create(aStorage: IJanuaFileStorage);
begin
  self.Create;
  self.FStorage := aStorage;
end;

constructor TJanuaFileMemoryStorage.Create;
begin
  inherited;
  FGUIDNDX := TCollections.CreateDictionary<TGUID, IJanuaFileRecord>;
  self.FList := TCollections.CreateList<IJanuaFileRecord>;
  self.FIdNDX := TCollections.CreateDictionary<Int64, IJanuaFileRecord>;
  self.FFileNameNDX := TCollections.CreateDictionary<string, IJanuaFileRecord>;
end;

procedure TJanuaFileMemoryStorage.DeleteFile(const aID: Int64; aDelFromStorage: boolean);
var
  i: IJanuaFileRecord;
begin
  if self.FIdNDX.TryGetValue(aID, i) then
    FList.Remove(i)
end;

function TJanuaFileMemoryStorage.GetCount: Int64;
begin
  Result := FList.Count
end;

function TJanuaFileMemoryStorage.GetFileAsBlob(const aID: Int64): TJanuaBlob;
var
  tmp: IJanuaFileRecord;
begin
  if FIdNDX.TryGetValue(aID, tmp) then
    Result := tmp.Blob
  else
    Result := TJanuaBlob.Create(False);
end;

function TJanuaFileMemoryStorage.GetFileAsStream(const aID: Int64): TStream;
begin
  Result := TMemoryStream.Create;
  self.GetFileByID(aID).SaveToStream(Result);
end;

function TJanuaFileMemoryStorage.GetFileByFileName(const aFileName: string): IJanuaFileRecord;
begin
  self.FFileNameNDX.TryGetValue(aFileName, Result)
end;

function TJanuaFileMemoryStorage.GetFileByID(const aID: Int64): IJanuaFileRecord;
begin
  FIdNDX.TryGetValue(aID, Result)
end;

function TJanuaFileMemoryStorage.GetFileByIndex(const aIndex: integer): IJanuaFileRecord;
begin
  Guard.CheckTrue(aIndex < self.FList.Count, 'TJanuaFileMemoryStorage.GetFileByIndex Index out of Range');
  FItemIndex := aIndex;
  Result := self.FList[aIndex]
end;

function TJanuaFileMemoryStorage.GetItemIndex: integer;
begin
  Result := self.FItemIndex
end;

function TJanuaFileMemoryStorage.GetSelectedItem: IJanuaFileRecord;
begin
  Result := self.FSelectedItem
end;

procedure TJanuaFileMemoryStorage.LoadFilesList(aLimit: integer);
var
  i: integer;
  aArray: TArray<Int64>;
begin
  self.FList.Clear;
  if Assigned(self.FStorage) then
  begin
    aArray := FStorage.FilesList(aLimit);
    for i := Low(aArray) to High(aArray) do
      self.FList.Add(self.FStorage.LoadFileFromStorage(aArray[i]));
  end;
end;

function TJanuaFileMemoryStorage.SaveFileToStorage: Int64;
begin
  Guard.CheckNotNull(FStorage, self.ClassName + '.SaveFileToStorage FStorage is nil');
  try
    Result := FStorage.SaveFileToStorage(self.SelectedItem);
    self.SelectedItem.ID := Result;
  except
    on e: exception do
      raise exception.Create(ClassName + '.SaveFileToStorage ' + sLineBreak + e.ClassName + ' ' + e.Message);
  end;
end;

procedure TJanuaFileMemoryStorage.SaveFileToStream(const aID: Int64; aStream: TStream);
begin
  if self.FIdNDX.TryGetValue(aID, self.FSelectedItem) = True then
    self.FSelectedItem.SaveToStream(aStream);
end;

procedure TJanuaFileMemoryStorage.SaveToFile(aFileName: TFileName);
begin
  if DirectoryExists(ExtractFileDir(aFileName)) then
    self.SelectedItem.SaveToFile(aFileName);
end;

procedure TJanuaFileMemoryStorage.SaveToFileDir(aDirName: TFileName);
begin
  if DirectoryExists(aDirName) then
    self.SelectedItem.SaveToFileDir(aDirName);
end;

function TJanuaFileMemoryStorage.SearchFileByGUID(aID: TGUID): boolean;
begin
  Result := FGUIDNDX.TryGetValue(aID, FSelectedItem)
end;

function TJanuaFileMemoryStorage.SearchFileByID(aID: Int64): boolean;
var
  // 2020-04-28 Added LFile to the procedure.
  LFile: IJanuaFileRecord;
begin
  Result := Assigned(FSelectedItem) and (FSelectedItem.ID = aID);

  if Result then
  begin
    if not FIdNDX.ContainsKey(aID) then
      FIdNDX[aID] := FSelectedItem;
  end
  else
  begin
    Result := self.FIdNDX.TryGetValue(aID, self.FSelectedItem);
    if Result then
      self.FItemIndex := self.FSelectedItem.ItemIndex
    else
    begin
      Result := FStorage.SearchFileByID(aID, LFile);
      if Result then
        self.AddFile(LFile { FStorage.LoadFileFromStorage(aID) } );
    end;
  end;

  if not Result then
    FItemIndex := -1
end;

procedure TJanuaFileMemoryStorage.SetSelectedItem(const Value: IJanuaFileRecord);
begin
  self.FSelectedItem := Value
end;

function TJanuaFileMemoryStorage.GetFileByGUID(const aGUID: TGUID): IJanuaFileRecord;
begin
  if self.SearchFileByGUID(aGUID) then
    Result := FSelectedItem
  else
    Result := nil;
end;

function TJanuaFileRecord.GetGUID: TGUID;
begin
  Result := self.FGUID
end;

procedure TJanuaFileRecord.SetGUID(const Value: TGUID);
begin
  self.FGUID := Value
end;

{ TJanuaFilesStorage }

constructor TJanuaFilesStorage.Create(const aStorage: IJanuaCloudFileStorage);
begin
  Guard.CheckNotNull(aStorage, 'TJanuaPgStorage.Create aStorage is null');
  FStorage := aStorage;
end;

function TJanuaFilesStorage.SaveFileToStorage(const aFile: IJanuaFileRecord): Int64;
begin
  Guard.CheckNotNull(FStorage, 'TJanuaPgStorage.SaveFileToStorage FStorage is null');
  FStorage.CreateDataset;
  Result := FStorage.SaveFile(aFile, aFile.SchemaID, aFile.DBUserID);
  aFile.ID := Result;
end;

function TJanuaFilesStorage.SearchFileByGUID(const aGUID: TGUID; var aFile: IJanuaFileRecord): boolean;
begin
  { TODO : Implementare ricerca e caricamento del file per GUID }
  Result := False;
end;

function TJanuaFilesStorage.SearchFileByID(const aID: Int64; var aFile: IJanuaFileRecord): boolean;
var
  tmp: IJanuaFileRecord;
begin
  tmp := LoadFileFromStorage(aID);
  Result := tmp.ID > -1;
end;

function TJanuaFilesStorage.LoadFileFromStorage(const aID: Int64): IJanuaFileRecord;
begin
  FStorage.CreateDataset;
  Result := TJanuaFileRecord.Create;
  if not FStorage.LoadFile(aID, Result) then
    Result.ID := -1;
  // la gestione delle Sessioni non ? ancora implementata ........................
  // FStorage.DestroyDataset;
end;

procedure TJanuaFilesStorage.DeleteFileFromStorage(const aID: Int64);
begin
  FStorage.CreateDataset;
  FStorage.DeleteFile(aID);
  // FStorage.DestroyDataset;
  // la gestione delle Sessioni non ? ancora implementata ........................
end;

destructor TJanuaFilesStorage.Destroy;
begin
  FStorage.DestroyDataset;
  inherited;
end;

procedure TJanuaFilesStorage.DeleteFileFromStorage(const aFile: IJanuaFileRecord);
begin
  self.DeleteFileFromStorage(aFile.ID);
end;

procedure TJanuaFilesStorage.AsyncLoadFileFromStorage(const aGUID: TGUID; aResultProc: TOutputProc);
begin

end;

procedure TJanuaFilesStorage.AsyncSaveFileToStorage(const aFile: IJanuaFileRecord; aResultProc: TOutputProc);
begin

end;

procedure TJanuaFilesStorage.AsyncDeleteFileFromStorage(const aID: Int64; aResultProc: TOutputProc);
begin

end;

procedure TJanuaFilesStorage.AsyncLoadFileFromStorage(const aID: Int64; aResultProc: TOutputProc);
begin

end;

function TJanuaFilesStorage.FilesList(const aLimit: integer): TArray<Int64>;
begin
  FStorage.CreateDataset;
  Result := FStorage.GetFilessList(aLimit);
  // la gestione delle Sessioni non ? ancora implementata ........................
  // FStorage.DestroyDataset;
end;

function TJanuaFilesStorage.GetReourcesList: IDictionary<string, Int64>;
begin
  FStorage.CreateDataset;
  Result := FStorage.GetResourcesList;
  // FStorage.DestroyDataset;
end;

function TJanuaFilesStorage.LoadFileFromStorage(const aGUID: TGUID): IJanuaFileRecord;
begin

end;

procedure TJanuaFilesStorage.AsyncDeleteFileFromStorage(const aGUID: TGUID; aResultProc: TOutputProc);
begin

end;

end.
