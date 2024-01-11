unit udmPgCloud;

interface

uses
  System.SysUtils, System.Classes, Data.DB, MemDS, DBAccess, Uni, Janua.Core.Types,
  Janua.Core.Classes, Janua.Cloud.Files.Intf,
  Janua.Core.Functions, Janua.Core.Cloud,
  System.DateUtils, MemData, Janua.Cloud.Images.Intf,
  System.ConvUtils, Janua.Core.System, DASQLMonitor,
  udmJanuaPostgresModel, Janua.Core.Exceptions, DAScript, UniProvider, PostgreSQLUniProvider;

type
  TdmPostgresCloud = class(TdmJanuaPostgresModel)
    qryBlobFile: TUniQuery;
    qryBlobFileblob_id: TLargeintField;
    qryBlobFileblob_file: TBlobField;
    qryBlobFileblob_size: TLargeintField;
    qryBlobFiledb_schema_id: TIntegerField;
    qryBlobFileblob_key: TWideStringField;
    qryTextFile: TUniQuery;
    qryTextFiletext_file_id: TLargeintField;
    qryTextFiletext_file_name: TWideStringField;
    qryTextFiletext_file_des: TWideStringField;
    qryTextFiletext_file: TWideMemoField;
    qryTextFiledb_schema_id: TIntegerField;
    qryTextFiledb_owner_id: TIntegerField;
    qryTextFilesystem_file: TBooleanField;
    qryTextFiletext_file_key: TWideStringField;
    qryBlobFiledb_user_id: TIntegerField;
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
    qryImageList: TUniQuery;
    qryImageListexternal_file_id: TLargeintField;
    spSaveFile: TUniStoredProc;
    qryBlobFileispublic: TBooleanField;
    qryBlobFilecblb_jguid: TWideStringField;
    qryBlobFilecblb_deleted: TBooleanField;
    qryBlobFilefile_name: TWideStringField;
    qryBlobFilefile_ext: TWideStringField;
    qryFilesList: TUniQuery;
    qryFilesListblob_id: TLargeintField;
    qryFilesListcblb_jguid: TWideStringField;
    qryImageListcimg_jguid: TWideStringField;
    scDeleteBlobFile: TUniSQL;
    scDeleteImage: TUniSQL;
    qryImagecimg_jguid: TWideStringField;
    qryImagecimg_deleted: TBooleanField;
    procedure qryBlobFileBeforeOpen(DataSet: TDataSet);
    procedure qryBlobFileNewRecord(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject); override;
  private
    FBlob: TJanuaBlob;
    FTextBlob: TJanuaBlob;
    procedure SetBlob(const Value: TJanuaBlob);
    procedure SetTextBlob(const Value: TJanuaBlob);
    procedure AppendBlob;
    procedure LoadImageRecord(var aImage: IJanuaFileRecord);
    procedure LoadFileRecord(var aFile: IJanuaFileRecord);
    { Private declarations }
  public
    { Public declarations }
    function UploadBlob(filename: TFileName): Int64;
    function UploadBlobFromFile(filename: TFileName): Int64;
    function StoreBlob(aBlob: TJanuaBlob): Int64;
    function getBlob(aBlob: Int64): boolean;
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
  public
    property Blob: TJanuaBlob read FBlob write SetBlob;
    property TextBlob: TJanuaBlob read FTextBlob write SetTextBlob;

  end;

var
  dmPostgresCloud: TdmPostgresCloud;

implementation

{$R *.dfm}
{ TdmCloud }

procedure TdmPostgresCloud.DataModuleCreate(Sender: TObject);
begin
  inherited;
  self.FBlob := TJanuaBlob.Create(False);
  self.FTextBlob := TJanuaBlob.Create(True);
end;

function TdmPostgresCloud.getBlob(aBlob: Int64): boolean;
begin
  self.qryBlobFile.ParamByName('p_blob_id').AsLargeInt := aBlob;
  self.ServerFunctions.OpenDataset(qryBlobFile);
  Result := self.qryBlobFile.RecordCount = 1;
  if Result then
    StoreFieldToBlob(self.qryBlobFileblob_file, self.FBlob);
end;

function TdmPostgresCloud.GetImagesList(aLimit: integer): TArray<Int64>;
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

function TdmPostgresCloud.LoadImage(aID: Int64; var aImage: IJanuaFileRecord): boolean;
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

procedure TdmPostgresCloud.AppendBlob;
begin
  self.ServerFunctions.OpenDataset(qryBlobSequence);
  self.qryBlobFile.ParamByName('p_blob_id').AsLargeInt := qryBlobSequencenextval.AsLargeInt;
  self.ServerFunctions.OpenDataset(qryBlobFile);
  self.qryBlobFile.Append;
  self.qryBlobFileblob_id.AsLargeInt := qryBlobSequencenextval.AsLargeInt;
  self.qryBlobSequence.Close;
end;

procedure TdmPostgresCloud.qryBlobFileBeforeOpen(DataSet: TDataSet);
begin
  self.qryBlobFile.ParamByName('p_session_key').AsWideString := self.ServerSession.Key;
end;

procedure TdmPostgresCloud.qryBlobFileNewRecord(DataSet: TDataSet);
begin
  qryBlobFiledb_schema_id.Value := self.ServerSession.Schema_id;
  qryBlobFiledb_user_id.Value := self.ServerSession.User_id;
end;

function TdmPostgresCloud.SaveImage(var aImage: IJanuaFileRecord; aSID, aOID: integer): Int64;
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
    self.spSaveImage.ParamByName('p_image_file').LoadFromStream(aStream, ftBlob);
  finally
    aStream.Free;
  end;
  spSaveImage.Execute;
  Result := spSaveImage.ParamByName('Result').AsInteger;
end;

procedure TdmPostgresCloud.SetBlob(const Value: TJanuaBlob);
begin
  FBlob := Value;
end;

procedure TdmPostgresCloud.SetTextBlob(const Value: TJanuaBlob);
begin
  FTextBlob := Value;
end;

function TdmPostgresCloud.StoreBlob(aBlob: TJanuaBlob): Int64;
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

function TdmPostgresCloud.UploadBlob(filename: TFileName): Int64;
begin
  Result := UploadBlobFromFile(filename);
end;

function TdmPostgresCloud.UploadBlobFromFile(filename: TFileName): Int64;
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

function TdmPostgresCloud.LoadFile(aID: Int64; var aFile: IJanuaFileRecord): boolean;
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

function TdmPostgresCloud.SaveFile(var aFile: IJanuaFileRecord; aSID, aOID: integer): Int64;
var
  aStream: TMemoryStream;
begin
  // :p_filename, :p_file_ext, :p_filename_noext, :p_image_file, :p_db_schema, :p_db_owner_id
  self.spSaveImage.ParamByName('p_guid').AsString := aFile.GUID.ToString;
  self.spSaveImage.ParamByName('p_filename').AsString := aFile.filename;
  self.spSaveImage.ParamByName('p_file_ext').AsString := aFile.Ext;
  self.spSaveImage.ParamByName('p_db_schema').AsInteger := aSID;
  self.spSaveImage.ParamByName('p_db_owner_id').AsInteger := aOID;
  aStream := TMemoryStream.Create;
  try
    aFile.SaveToStream(aStream);
    self.spSaveImage.ParamByName('p_blob_file').LoadFromStream(aStream, ftBlob);
  finally
    aStream.Free;
  end;
  spSaveImage.Execute;
  Result := spSaveImage.ParamByName('Result').AsInteger;

end;

function TdmPostgresCloud.GetFilessList(aLimit: integer): TArray<Int64>;
begin

end;

procedure TdmPostgresCloud.LoadImageRecord(var aImage: IJanuaFileRecord);
var
  aStream: TStream;
begin
  aImage.filename := qryImagefilename.AsWideString;
  aStream := TMemoryStream.Create;
  try
    self.qryImageimage_file.SaveToStream(aStream);
    aImage.LoadFromStream(aStream);
  finally
    aStream.Free;
  end;
end;

function TdmPostgresCloud.LoadImage(aGuid: TGUID; var aImage: IJanuaFileRecord): boolean;
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

function TdmPostgresCloud.LoadFile(aGuid: TGUID; var aFile: IJanuaFileRecord): boolean;
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

procedure TdmPostgresCloud.LoadFileRecord(var aFile: IJanuaFileRecord);
var
  aStream: TStream;
begin
  aFile.filename := self.qryBlobFilefile_name.AsWideString;
  aStream := TMemoryStream.Create;
  try
    self.qryBlobFileblob_file.SaveToStream(aStream);
    aFile.LoadFromStream(aStream);
  finally
    aStream.Free;
  end;

end;

function TdmPostgresCloud.DeleteImage(aGuid: TGUID): boolean;
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

function TdmPostgresCloud.DeleteImage(aID: Int64): boolean;
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

function TdmPostgresCloud.DeleteFile(aGuid: TGUID): boolean;
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

function TdmPostgresCloud.DeleteFile(aID: Int64): boolean;
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

end.
