unit udmPgCloudStorage;

interface

uses
  System.SysUtils, System.Classes, Data.DB, DBAccess, Uni, MemDS, MemData, Janua.Cloud.Files.Intf,
  Janua.Core.Classes, udmPgStorage, Janua.Core.Types, UniProvider, PostgreSQLUniProvider,
  Janua.Unidac.Connection;

type
  TdmPgCloudStorage = class(TdmPgStorage)
    qryBlobFile: TUniQuery;
    qryBlobFileblob_id: TLargeintField;
    qryBlobFileblob_file: TBlobField;
    qryBlobFileblob_size: TLargeintField;
    qryBlobFiledb_schema_id: TIntegerField;
    qryBlobFileblob_key: TWideStringField;
    qryBlobFiledb_user_id: TIntegerField;
    qryBlobFileispublic: TBooleanField;
    qryBlobFilecblb_jguid: TWideStringField;
    qryBlobFilecblb_deleted: TBooleanField;
    qryBlobFilefile_ext: TWideStringField;
    qryTextFile: TUniQuery;
    qryTextFiletext_file_id: TLargeintField;
    qryTextFiletext_file_name: TWideStringField;
    qryTextFiletext_file_des: TWideStringField;
    qryTextFiletext_file: TWideMemoField;
    qryTextFiledb_schema_id: TIntegerField;
    qryTextFiledb_owner_id: TIntegerField;
    qryTextFilesystem_file: TBooleanField;
    qryTextFiletext_file_key: TWideStringField;
    qryBlobSequence: TUniQuery;
    qryBlobSequencenextval: TLargeintField;
    spSaveImage: TUniStoredProc;
    qryImage: TUniQuery;
    qryImagedb_schema_id: TIntegerField;
    qryImagedb_owner_id: TIntegerField;
    qryImagefilename: TWideStringField;
    qryImagefile_ext: TWideStringField;
    qryImagefilename_noext: TWideStringField;
    qryImageexternal_file_id: TLargeintField;
    qryImageext_file_key: TWideStringField;
    qryImagecover_image_id: TLargeintField;
    qryImageimage_file: TBlobField;
    qryImagecimg_jguid: TWideStringField;
    qryImagecimg_deleted: TBooleanField;
    qryImageList: TUniQuery;
    qryImageListexternal_file_id: TLargeintField;
    qryImageListcimg_jguid: TWideStringField;
    spSaveFile: TUniStoredProc;
    qryFilesList: TUniQuery;
    qryFilesListblob_id: TLargeintField;
    qryFilesListcblb_jguid: TWideStringField;
    scDeleteBlobFile: TUniSQL;
    scDeleteImage: TUniSQL;
    qryBlobFilefilename: TWideStringField;
    qryImages: TUniQuery;
    LargeintField1: TLargeintField;
    WideStringField1: TWideStringField;
    qryImagesdb_schema_id: TIntegerField;
    qryImagesdb_owner_id: TIntegerField;
    qryImagesfilename: TWideStringField;
    qryImagesfile_ext: TWideStringField;
    qryImagesfilename_noext: TWideStringField;
    qryImagesext_file_key: TWideStringField;
    qryImagescover_image_id: TLargeintField;
    qryImagescimg_deleted: TBooleanField;
    qryImagesimage_file: TBlobField;
    qrySearchBlobFiles: TUniQuery;
    dsImages: TDataSource;
    qrySearchBlobFilesblob_id: TLargeintField;
    qrySearchBlobFilesblob_size: TLargeintField;
    qrySearchBlobFilesdb_schema_id: TIntegerField;
    qrySearchBlobFilesblob_key: TWideStringField;
    qrySearchBlobFilesdb_user_id: TIntegerField;
    qrySearchBlobFilesispublic: TBooleanField;
    qrySearchBlobFilescblb_jguid: TWideStringField;
    qrySearchBlobFilescblb_deleted: TBooleanField;
    qrySearchBlobFilesfile_ext: TWideStringField;
    qrySearchBlobFilesfilename: TWideStringField;
    qrySearchBlobFilesisresource: TBooleanField;
    qrySearchBlobFilesfile_name: TWideStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure qryBlobFileBeforeOpen(DataSet: TDataSet);
    procedure qryImagesBeforePost(DataSet: TDataSet);
  private
    FBlob: TJanuaBlob;
    FTextBlob: TJanuaBlob;
    FServerSession: TJanuaServerSession;
    procedure SetBlob(const Value: TJanuaBlob);
    procedure SetTextBlob(const Value: TJanuaBlob);
    procedure AppendBlob;
    procedure LoadImageRecord(var aImage: IJanuaFileRecord);
    procedure qryBlobFileNewRecord(DataSet: TDataSet);
    procedure SetServerSession(const Value: TJanuaServerSession);
    { Private declarations }
  public
    { Public declarations }
    function UploadBlob(const filename: TFileName): Int64;
    function UploadBlobFromFile(const filename: TFileName): Int64;
    function StoreBlob(const aBlob: TJanuaBlob): Int64;
    function getBlob(const aBlob: Int64): boolean;
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
    procedure LoadFileRecord(var aFile: IJanuaFileRecord);
    procedure OpenResources;
    procedure RefreshDetails; override;
  public
    property Blob: TJanuaBlob read FBlob write SetBlob;
    property TextBlob: TJanuaBlob read FTextBlob write SetTextBlob;
    property ServerSession: TJanuaServerSession read FServerSession write SetServerSession;
  end;

var
  dmPgCloudStorage: TdmPgCloudStorage;

implementation

uses
  Janua.Application.Framework, Janua.Core.Functions, Spring, Janua.Uni.Framework;

{$R *.dfm}

procedure TdmPgCloudStorage.DataModuleCreate(Sender: TObject);
begin
  self.FBlob := TJanuaBlob.Create(False);
  self.FTextBlob := TJanuaBlob.Create(True);
  TUniFramework.PgDatasetFunctions.OpenThreadedDataset(qryImages, dsImages);
end;

function TdmPgCloudStorage.getBlob(const aBlob: Int64): boolean;
begin
  self.qryBlobFile.ParamByName('p_blob_id').AsLargeInt := aBlob;
  self.qryBlobFile.Open;
  Result := self.qryBlobFile.RecordCount = 1;
  if Result then
    StoreFieldToBlob(self.qryBlobFileblob_file, self.FBlob);
end;

function TdmPgCloudStorage.GetImagesList(const aLimit: integer): TArray<Int64>;
var
  i: integer;
begin
  self.qryImageList.Params[0].AsInteger := aLimit;
  self.qryImageList.Open;
  SetLength(Result, self.qryImageList.RecordCount);
  self.qryImageList.First;
  i := 0;
  while not self.qryImageList.Eof do
  begin
    Result[i] := self.qryImageListexternal_file_id.AsLargeInt;
    self.qryImageList.Next;
    Inc(i);
  end;
end;

function TdmPgCloudStorage.LoadImage(const aID: Int64; var aImage: IJanuaFileRecord): boolean;
begin
  {
    where
    (external_file_id = :id or :id = 0)
    and
    (imgs_jguid = :guid or :guid = '');
  }
  self.qryImage.Close;
  self.qryImage.ParamByName('id').AsLargeInt := aID;
  self.qryImage.ParamByName('guid').AsString := '';
  self.qryImage.Open;
  Result := self.qryImage.RecordCount = 1;
  if Result then
  begin
    LoadImageRecord(aImage);
  end;
end;

procedure TdmPgCloudStorage.AppendBlob;
begin
  self.ServerFunctions.OpenDataset(qryBlobSequence);
  self.qryBlobFile.ParamByName('p_blob_id').AsLargeInt := qryBlobSequencenextval.AsLargeInt;
  self.ServerFunctions.OpenDataset(qryBlobFile);
  self.qryBlobFile.Append;
  self.qryBlobFileblob_id.AsLargeInt := qryBlobSequencenextval.AsLargeInt;
  self.qryBlobSequence.Close;
end;

procedure TdmPgCloudStorage.qryBlobFileNewRecord(DataSet: TDataSet);
begin
  qryBlobFiledb_schema_id.Value := self.ServerSession.Schema_id;
  qryBlobFiledb_user_id.Value := self.ServerSession.User_id;
end;

procedure TdmPgCloudStorage.qryImagesBeforePost(DataSet: TDataSet);
var
  aGuid: TGUID;
begin
  if WideStringField1.AsString = '' then
  begin
    CreateGuid(aGuid);
    WideStringField1.AsString := aGuid.ToString;
  end;
  if qryImagescimg_deleted.IsNull then
    qryImagescimg_deleted.AsBoolean := False;

  qryImagesdb_schema_id.AsInteger := TJanuaApplication.DBSchemaID;
  qryImagesdb_owner_id.AsInteger := TJanuaApplication.DBUserID;

end;

procedure TdmPgCloudStorage.RefreshDetails;
begin
  inherited;

end;

function TdmPgCloudStorage.SaveImage(const aImage: IJanuaFileRecord; const aSID, aOID: integer): Int64;
var
  aStream: TMemoryStream;
begin
  // :p_filename, :p_file_ext, :p_filename_noext, :p_image_file, :p_db_schema, :p_db_owner_id
  self.spSaveImage.ParamByName('p_guid').AsString := aImage.GUID.ToString;
  self.spSaveImage.ParamByName('p_filename').AsString := aImage.filename;
  self.spSaveImage.ParamByName('p_file_ext').AsString := aImage.Ext;
  self.spSaveImage.ParamByName('p_filename_noext').AsString := aImage.filename;
  self.spSaveImage.ParamByName('p_db_schema').AsInteger := aSID;
  self.spSaveImage.ParamByName('p_db_owner_id').AsInteger := aOID;
  aStream := TMemoryStream.Create;
  try
    aImage.SaveToStream(aStream);
    aStream.Position := 0;
    self.spSaveImage.ParamByName('p_image_file').LoadFromStream(aStream, ftBlob);
  finally
    aStream.Free;
  end;
  spSaveImage.Execute;
  Result := spSaveImage.ParamByName('Result').AsInteger;
  aImage.ID := Result;
end;

procedure TdmPgCloudStorage.SetBlob(const Value: TJanuaBlob);
begin
  FBlob := Value;
end;

procedure TdmPgCloudStorage.SetServerSession(const Value: TJanuaServerSession);
begin
  FServerSession := Value;
end;

procedure TdmPgCloudStorage.SetTextBlob(const Value: TJanuaBlob);
begin
  FTextBlob := Value;
end;

function TdmPgCloudStorage.StoreBlob(const aBlob: TJanuaBlob): Int64;
begin
  try
    AppendBlob;
    StoreBlobToField(qryBlobFileblob_file, aBlob);
    qryBlobFileblob_size.AsInteger := aBlob.Size;
    self.qryBlobFile.Post;
    Result := self.qryBlobFileblob_id.AsLargeInt;
  except
    on e: exception do
    begin
      Result := -1;
    end;
  end;
end;

function TdmPgCloudStorage.UploadBlob(const filename: TFileName): Int64;
begin
  Result := UploadBlobFromFile(filename);
end;

function TdmPgCloudStorage.UploadBlobFromFile(const filename: TFileName): Int64;
begin
  if FileExists(filename) then
  begin
    AppendBlob;
    qryBlobFileblob_file.LoadFromFile(filename);
    qryBlobFileblob_size.AsInteger := qryBlobFileblob_file.Size;
    self.qryBlobFile.Post;
    Result := self.qryBlobFileblob_id.AsLargeInt;
  end
  else
  begin
    Result := -1;
  end;
end;

function TdmPgCloudStorage.LoadFile(const aID: Int64; var aFile: IJanuaFileRecord): boolean;
begin
  {
    where
    (external_file_id = :id or :id = 0)
    and
    (imgs_jguid = :guid or :guid = '');
  }
  self.qryBlobFile.Close;
  self.qryBlobFile.ParamByName('id').AsLargeInt := aID;
  self.qryBlobFile.ParamByName('guid').AsString := '';
  self.qryBlobFile.Open;
  Result := self.qryBlobFile.RecordCount = 1;
  if Result then
  begin
    LoadFileRecord(aFile);
  end;

end;

function TdmPgCloudStorage.SaveFile(const aFile: IJanuaFileRecord; const aSID, aOID: integer): Int64;
var
  aStream: TMemoryStream;
begin
  // SELECT cloud.insert_file
  // (:p_guid, :p_filename, :p_file_ext, :p_blob_file, :p_db_schema, :p_db_owner_id)

  self.spSaveFile.ParamByName('p_guid').AsString := aFile.GUID.ToString;
  self.spSaveFile.ParamByName('p_filename').AsString := aFile.filename;
  self.spSaveFile.ParamByName('p_file_ext').AsString := aFile.Ext;
  self.spSaveFile.ParamByName('p_db_schema').AsInteger := TJanuaApplication.DBSchemaID;
  self.spSaveFile.ParamByName('p_db_owner_id').AsInteger := aOID;
  aStream := TMemoryStream.Create;
  try
    aFile.SaveToStream(aStream);
    aStream.Position := 0;
    self.spSaveFile.ParamByName('p_blob_file').LoadFromStream(aStream, ftBlob);
  finally
    aStream.Free;
  end;
  spSaveFile.Execute;
  Result := spSaveFile.ParamByName('Result').AsLargeInt;
end;

function TdmPgCloudStorage.GetFilessList(const aLimit: integer): TArray<Int64>;
begin

end;

procedure TdmPgCloudStorage.LoadImageRecord(var aImage: IJanuaFileRecord);
var
  aStream: TStream;
begin
  aImage.filename := qryImagefilename.AsWideString;
  aStream := TMemoryStream.Create;
  try
    self.qryImageimage_file.SaveToStream(aStream);
    aStream.Position := 0;
    aImage.LoadFromStream(aStream);
    aImage.GUID := StringToGuid(qryImagecimg_jguid.AsString);
    aImage.ID := qryImageexternal_file_id.AsLargeInt;
    aImage.filename := qryImagefilename.AsString;
    aImage.Ext := qryImagefile_ext.AsString;
    aImage.DBUserID := qryImagedb_owner_id.AsInteger;
  finally
    aStream.Free;
  end;
end;

procedure TdmPgCloudStorage.OpenResources;
begin
  try
    self.qryBlobFile.Close;
    self.qryBlobFile.ParamByName('isresource').AsBoolean := True;
    self.qryBlobFile.ParamByName('id').AsLargeInt := 0;
    self.qryBlobFile.ParamByName('guid').AsString := '';
    ServerFunctions.OpenDataset(qryBlobFile);
    Guard.CheckTrue(self.qryBlobFile.Active, 'qryBlobFile.Active  not Active');

  except
    on e: exception do
      raise exception.Create('TdmPgCloudStorage.OpenResources: ' + ReportConf + sLineBreak + e.Message);
  end;
end;

procedure TdmPgCloudStorage.qryBlobFileBeforeOpen(DataSet: TDataSet);
begin
  // self.qryBlobFile.ParamByName('p_session_key').AsWideString := self.ServerSession.Key;
end;

function TdmPgCloudStorage.LoadImage(const aGuid: TGUID; var aImage: IJanuaFileRecord): boolean;
begin
  {
    where
    (external_file_id = :id or :id = 0)
    and
    (imgs_jguid = :guid or :guid = '');
  }
  self.qryImage.Close;
  self.qryImage.ParamByName('id').AsLargeInt := 0;
  self.qryImage.ParamByName('guid').AsString := aGuid.ToString;
  self.qryImage.Open;
  Result := self.qryImage.RecordCount = 1;
  if Result then
  begin
    LoadImageRecord(aImage);
  end;
end;

function TdmPgCloudStorage.LoadFile(const aGuid: TGUID; var aFile: IJanuaFileRecord): boolean;
begin
  {
    where
    (external_file_id = :id or :id = 0)
    and
    (imgs_jguid = :guid or :guid = '');
  }
  self.qryBlobFile.Close;
  self.qryBlobFile.ParamByName('id').AsLargeInt := 0;
  self.qryBlobFile.ParamByName('guid').AsString := aGuid.ToString;
  self.qryBlobFile.Open;
  Result := self.qryBlobFile.RecordCount = 1;
  if Result then
  begin
    LoadFileRecord(aFile);
  end;
end;

procedure TdmPgCloudStorage.LoadFileRecord(var aFile: IJanuaFileRecord);
var
  aStream: TStream;
begin
  aFile.filename := self.qryBlobFilefilename.AsWideString;
  aStream := TMemoryStream.Create;
  try
    self.qryBlobFileblob_file.SaveToStream(aStream);
    aStream.Position := 0;
    aFile.LoadFromStream(aStream);
    aFile.GUID := StringToGuid(qryBlobFilecblb_jguid.AsString);
    aFile.ID := qryBlobFileblob_id.AsLargeInt;
    aFile.filename := qryBlobFilefilename.AsString;
    aFile.Ext := qryBlobFilefile_ext.AsString;
    aFile.DBUserID := qryBlobFiledb_user_id.AsInteger;
  finally
    aStream.Free;
  end;

end;

function TdmPgCloudStorage.DeleteImage(const aGuid: TGUID): boolean;
begin
  try
    self.scDeleteImage.ParamByName('id').AsLargeInt := 0;
    self.scDeleteImage.ParamByName('guid').AsString := aGuid.ToString;
    self.scDeleteImage.Execute;
    Result := True;
  except
    on e: exception do
      Result := False;
  end;
end;

function TdmPgCloudStorage.DeleteImage(const aID: Int64): boolean;
begin
  try
    self.scDeleteImage.ParamByName('id').AsLargeInt := aID;
    self.scDeleteImage.ParamByName('guid').AsString := '';
    self.scDeleteImage.Execute;
    Result := True;
  except
    on e: exception do
      Result := False;
  end;
end;

function TdmPgCloudStorage.DeleteFile(const aGuid: TGUID): boolean;
begin
  try
    self.scDeleteBlobFile.ParamByName('id').AsLargeInt := 0;
    self.scDeleteBlobFile.ParamByName('guid').AsString := aGuid.ToString;
    self.scDeleteBlobFile.Execute;
    Result := True;
  except
    on e: exception do
      Result := False;
  end;
end;

function TdmPgCloudStorage.DeleteFile(const aID: Int64): boolean;
begin
  try
    self.scDeleteBlobFile.ParamByName('id').AsLargeInt := aID;
    self.scDeleteBlobFile.ParamByName('guid').AsString := '';
    self.scDeleteBlobFile.Execute;
    Result := True;
  except
    on e: exception do
      Result := False;
  end;
end;

{ TOpenThread }

end.
