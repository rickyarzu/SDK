unit Janua.VCL.Cloud.Files;

interface

uses
  System.Classes, VCL.Dialogs, Janua.Core.Classes, Janua.Cloud.Files.Intf,
  Janua.Cloud.Server.Intf, Janua.Cloud.Server.Impl, Data.DB, System.SysUtils;

type
  TJanuaVCLFilesManager = class(TComponent)
  private
    FFileList: Janua.Cloud.Files.Intf.IJanuaFileMemoryStorage;
    FSelectedFile: Janua.Cloud.Files.Intf.IJanuaFileRecord;
    FFileStorage: IJanuaFileStorage;
    FStorage: IJanuaCloudFileStorage;
  private
    FOpenDialog: TOpenDialog;
    FAfterOpenFile: TNotifyEvent;
    FAutoSave: Boolean;
    FDataSource: TDataSource;
    FFileIDField: TLargeIntField;
    FileID: Int64;
    FFIleName: TFileName;
    FModified: Boolean;
    FIsNewFile: Boolean;
    procedure SetOpenDialog(const Value: TOpenDialog);
    procedure SetAfterOpenFile(const Value: TNotifyEvent);
    procedure SetAutoSave(const Value: Boolean);
    procedure SetDataSource(const Value: TDataSource);
    procedure SetFileIDField(const Value: TLargeIntField);
    procedure SetFileList(const Value: IJanuaFileMemoryStorage);
    procedure SetSelectedFile(const Value: IJanuaFileRecord);
    procedure SetModified(const Value: Boolean);
    procedure SetIsNewFile(const Value: Boolean);
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure Activate;
    function OpenFile(aFileName: TFileName = ''): Boolean; overload;
    // salvo il file su disco e rispondo con il valore dell'ID del file da registrare su Image ID.
    function SaveFileToStorage: Int64;
    procedure dsArticlesDataChange(Sender: TObject; Field: TField);
    procedure FilePreview;
    function SearchFileByID(id: Int64): Boolean;
    function LoadFileFromStorage: Boolean;
  public
    property FileList: IJanuaFileMemoryStorage read FFileList write SetFileList;
    property SelectedFile: IJanuaFileRecord read FSelectedFile write SetSelectedFile;
    property Modified: Boolean read FModified write SetModified;
    property IsNewFile: Boolean read FIsNewFile write SetIsNewFile;
  published
    property OpenDialog: TOpenDialog read FOpenDialog write SetOpenDialog;
    property AfterOpenFile: TNotifyEvent read FAfterOpenFile write SetAfterOpenFile;
    property AutoSave: Boolean read FAutoSave write SetAutoSave default False;
    property DataSource: TDataSource read FDataSource write SetDataSource;
    property FileIDField: TLargeIntField read FFileIDField write SetFileIDField;
  end;

implementation

uses
  VCL.Forms, System.IOUtils, Janua.Application.Framework, Janua.Cloud.Files.Impl, Winapi.ShellAPI,
  Winapi.Windows, Spring;

{ TJanuaVCLFilesManager }

constructor TJanuaVCLFilesManager.Create(AOwner: TComponent);
begin
  inherited;
  FSelectedFile := Janua.Cloud.Files.Impl.TJanuaFileRecord.Create;
  FAutoSave := False;
  FDataSource := TDataSource.Create(self);
  FDataSource.OnDataChange := dsArticlesDataChange;
  FModified := False;
  Activate;
end;


destructor TJanuaVCLFilesManager.Destroy;
begin
  FSelectedFile := nil;
  FDataSource.OnDataChange := nil;

  if Assigned(FDataSource) then
    FreeAndNil(FDataSource);

  FFileList := nil;

  FSelectedFile := nil;

  FFileStorage := nil;
  FStorage := nil;

  FAfterOpenFile := nil;

  inherited;
end;

procedure TJanuaVCLFilesManager.dsArticlesDataChange(Sender: TObject; Field: TField);
begin
  if Assigned(FFileIDField) then
    FileID := FFileIDField.AsInteger;
end;

procedure TJanuaVCLFilesManager.FilePreview;
var
  aFileName: TFileName;
  tmp: string;
begin
  { tmp := FormatDateTime('yyyymmddnnss', Now);
    aFileName := TPath.Combine(TPath.GetHomePath, tmp + '.pdf');
    self.FBlob.SaveToFile(aFileName);
    ShellExecute(Handle, nil, PChar(aFileName), nil, nil, SW_SHOWNORMAL);
  }
  if (FileID > 0) and FFileList.SearchFileByID(FileID) then
  begin
    tmp := FormatDateTime('yyyymmddnnss', Now);
    aFileName := TPath.Combine(TPath.GetHomePath, tmp + '_' + FSelectedFile.FileName);
    FSelectedFile := FFileList.GetFileByID(self.FileID);
    if Assigned(FSelectedFile) then
    begin
      self.FSelectedFile.SaveToFile(aFileName);
      ShellExecute(Application.Handle, nil, PChar(aFileName), nil, nil, SW_SHOWNORMAL);
    end;
  end;

end;

function TJanuaVCLFilesManager.LoadFileFromStorage: Boolean;
begin
  Result := SearchFileByID(FileID)
end;

function TJanuaVCLFilesManager.OpenFile(aFileName: TFileName): Boolean;
begin
  if (aFileName <> '') then
    Result := FileExists(aFileName)
  else
  begin
    Result := (FOpenDialog.Execute) and (FileExists(FOpenDialog.FileName));
    if Result then
      aFileName := FOpenDialog.FileName
  end;

  if Result then
  begin
    FSelectedFile := nil;
    FSelectedFile := TJanuaFileRecord.Create;
    FSelectedFile.SchemaID := 0;
    // Load From File imposta anche il corretto FileName lscio l'immagine dentro a FSelectedFile.
    FSelectedFile.LoadFromFile(aFileName);
    FFileList.AddFile(FSelectedFile, False);
    if self.FAutoSave then
      SaveFileToStorage;
    if Result and Assigned(FAfterOpenFile) then
      FAfterOpenFile(self);
  end;
end;

function TJanuaVCLFilesManager.SaveFileToStorage: Int64;
begin
  Result := FFileList.SaveFileToStorage;
  Guard.CheckTrue(Result = self.FSelectedFile.id);
  // FFileStorage.SaveFileToStorage(self.FSelectedFile);

end;

function TJanuaVCLFilesManager.SearchFileByID(id: Int64): Boolean;
begin
  Result := self.FFileList.SearchFileByID(id);
  if Result then
    self.FSelectedFile := self.FFileList.SelectedItem;

end;

procedure TJanuaVCLFilesManager.SetAfterOpenFile(const Value: TNotifyEvent);
begin
  self.FAfterOpenFile := Value
end;

procedure TJanuaVCLFilesManager.SetAutoSave(const Value: Boolean);
begin
  self.FAutoSave := Value
end;

procedure TJanuaVCLFilesManager.SetDataSource(const Value: TDataSource);
begin
  if self.FDataSource <> Value then
  begin
    if Assigned(self.FDataSource) then
      FDataSource.OnDataChange := nil;
    self.FDataSource := Value;
    if Assigned(self.FDataSource) then
      FDataSource.OnDataChange := dsArticlesDataChange;
  end;

end;

procedure TJanuaVCLFilesManager.SetFileIDField(const Value: TLargeIntField);
begin
  FFileIDField := Value
end;

procedure TJanuaVCLFilesManager.SetFileList(const Value: IJanuaFileMemoryStorage);
begin
  FFileList := Value;
end;

procedure TJanuaVCLFilesManager.SetIsNewFile(const Value: Boolean);
begin
  FIsNewFile := Value;
end;

procedure TJanuaVCLFilesManager.SetModified(const Value: Boolean);
begin
  FModified := Value;
end;

procedure TJanuaVCLFilesManager.SetOpenDialog(const Value: TOpenDialog);
begin
  self.FOpenDialog := Value;
end;

procedure TJanuaVCLFilesManager.SetSelectedFile(const Value: IJanuaFileRecord);
begin
  FSelectedFile := Value;
end;

procedure TJanuaVCLFilesManager.Activate;
begin
  if not TJanuaApplicationFactory.TryGetInterface(IJanuaCloudFileStorage, FStorage) then
    raise Exception.Create('TJanuaVCLImagesManager.Create IJanuaImageRecord not set ');

  FFileStorage := TJanuaFilesStorage.Create(FStorage);
  FFileList := Janua.Cloud.Files.Impl.TJanuaFileMemoryStorage.Create(self.FFileStorage);

end;

end.
