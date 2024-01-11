unit JOrm.Documents.AttachmentView.Custom.Impl;

interface

uses Janua.Orm.Intf, Janua.Orm.Impl, Janua.Core.Types, JOrm.Documents.AttachmentView.Custom.Intf;

// ------------------------------------------ Impl object interface ----------------------------------

type
  TCustomAttachmentView = class(TJanuaRecord, ICustomAttachmentView)
  private
    FDocId: IJanuaField;
    FBlobId: IJanuaField;
    FBlobJguid: IJanuaField;
    FLocation: IJanuaField;
    FFilename: IJanuaField;
    FDescription: IJanuaField;
    FContext: IJanuaField;
    FExtension: IJanuaField;
    FDbSchemaId: IJanuaField;
    FFlgInternet: IJanuaField;
    FJguid: IJanuaField;
    FBlobFile: IJanuaField;
    FBlobSize: IJanuaField;
    FBlobKey: IJanuaField;
    FBlobFilename: IJanuaField;
    FIsExternal: IJanuaField;
    FInsertDate: IJanuaField;
    FIsresource: IJanuaField;
    FDirectoryId: IJanuaField;
    FDirectoryPath: IJanuaField;
    FDeleted: IJanuaField;
  private
    function GetDeleted: IJanuaField;
    procedure SetDeleted(const Value: IJanuaField);
    function GetDocId: IJanuaField;
    procedure SetDocId(const Value: IJanuaField);
    function GetBlobId: IJanuaField;
    procedure SetBlobId(const Value: IJanuaField);
    function GetBlobJguid: IJanuaField;
    procedure SetBlobJguid(const Value: IJanuaField);
    function GetLocation: IJanuaField;
    procedure SetLocation(const Value: IJanuaField);
    function GetFilename: IJanuaField;
    procedure SetFilename(const Value: IJanuaField);
    function GetDescription: IJanuaField;
    procedure SetDescription(const Value: IJanuaField);
    function GetContext: IJanuaField;
    procedure SetContext(const Value: IJanuaField);
    function GetExtension: IJanuaField;
    procedure SetExtension(const Value: IJanuaField);
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    function GetFlgInternet: IJanuaField;
    procedure SetFlgInternet(const Value: IJanuaField);
    function GetJguid: IJanuaField;
    procedure SetJguid(const Value: IJanuaField);
    function GetBlobFile: IJanuaField;
    procedure SetBlobFile(const Value: IJanuaField);
    function GetBlobSize: IJanuaField;
    procedure SetBlobSize(const Value: IJanuaField);
    function GetBlobKey: IJanuaField;
    procedure SetBlobKey(const Value: IJanuaField);
    function GetBlobFilename: IJanuaField;
    procedure SetBlobFilename(const Value: IJanuaField);
    function GetIsExternal: IJanuaField;
    procedure SetIsExternal(const Value: IJanuaField);
    function GetInsertDate: IJanuaField;
    procedure SetInsertDate(const Value: IJanuaField);
    function GetIsresource: IJanuaField;
    procedure SetIsresource(const Value: IJanuaField);
    function GetDirectoryId: IJanuaField;
    procedure SetDirectoryId(const Value: IJanuaField);
    function GetDirectoryPath: IJanuaField;
    procedure SetDirectoryPath(const Value: IJanuaField);
  public
    constructor Create; override;
    property Deleted: IJanuaField read GetDeleted write SetDeleted;
    property DocId: IJanuaField read GetDocId write SetDocId;
    property BlobId: IJanuaField read GetBlobId write SetBlobId;
    property BlobJguid: IJanuaField read GetBlobJguid write SetBlobJguid;
    property Location: IJanuaField read GetLocation write SetLocation;
    property Filename: IJanuaField read GetFilename write SetFilename;
    property Description: IJanuaField read GetDescription write SetDescription;
    property Context: IJanuaField read GetContext write SetContext;
    property Extension: IJanuaField read GetExtension write SetExtension;
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
    property FlgInternet: IJanuaField read GetFlgInternet write SetFlgInternet;
    property Jguid: IJanuaField read GetJguid write SetJguid;
    property BlobFile: IJanuaField read GetBlobFile write SetBlobFile;
    property BlobSize: IJanuaField read GetBlobSize write SetBlobSize;
    property BlobKey: IJanuaField read GetBlobKey write SetBlobKey;
    property BlobFilename: IJanuaField read GetBlobFilename write SetBlobFilename;
    property IsExternal: IJanuaField read GetIsExternal write SetIsExternal;
    property InsertDate: IJanuaField read GetInsertDate write SetInsertDate;
    property Isresource: IJanuaField read GetIsresource write SetIsresource;
    property DirectoryId: IJanuaField read GetDirectoryId write SetDirectoryId;
    property DirectoryPath: IJanuaField read GetDirectoryPath write SetDirectoryPath;

  end;

  TCustomAttachmentsView = class(TJanuaRecordSet, IJanuaRecordSet, ICustomAttachmentsView)
  private
    function GetDocId: IJanuaField;
    procedure SetDocId(const Value: IJanuaField);
    function GetBlobId: IJanuaField;
    procedure SetBlobId(const Value: IJanuaField);
    function GetBlobJguid: IJanuaField;
    procedure SetBlobJguid(const Value: IJanuaField);
    function GetLocation: IJanuaField;
    procedure SetLocation(const Value: IJanuaField);
    function GetFilename: IJanuaField;
    procedure SetFilename(const Value: IJanuaField);
    function GetDescription: IJanuaField;
    procedure SetDescription(const Value: IJanuaField);
    function GetContext: IJanuaField;
    procedure SetContext(const Value: IJanuaField);
    function GetExtension: IJanuaField;
    procedure SetExtension(const Value: IJanuaField);
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    function GetFlgInternet: IJanuaField;
    procedure SetFlgInternet(const Value: IJanuaField);
    function GetJguid: IJanuaField;
    procedure SetJguid(const Value: IJanuaField);
    function GetBlobFile: IJanuaField;
    procedure SetBlobFile(const Value: IJanuaField);
    function GetBlobSize: IJanuaField;
    procedure SetBlobSize(const Value: IJanuaField);
    function GetBlobKey: IJanuaField;
    procedure SetBlobKey(const Value: IJanuaField);
    function GetBlobFilename: IJanuaField;
    procedure SetBlobFilename(const Value: IJanuaField);
    function GetIsExternal: IJanuaField;
    procedure SetIsExternal(const Value: IJanuaField);
    function GetInsertDate: IJanuaField;
    procedure SetInsertDate(const Value: IJanuaField);
    function GetIsresource: IJanuaField;
    procedure SetIsresource(const Value: IJanuaField);
    function GetDirectoryId: IJanuaField;
    procedure SetDirectoryId(const Value: IJanuaField);
    function GetDirectoryPath: IJanuaField;
    procedure SetDirectoryPath(const Value: IJanuaField);
    function GetCustomAttachmentView: ICustomAttachmentView;
    procedure SetCustomAttachmentView(const Value: ICustomAttachmentView);
    function GetDeleted: IJanuaField;
    procedure SetDeleted(const Value: IJanuaField);
  public
    constructor Create; override;
    property Deleted: IJanuaField read GetDeleted write SetDeleted;
    property DocId: IJanuaField read GetDocId write SetDocId;
    property BlobId: IJanuaField read GetBlobId write SetBlobId;
    property BlobJguid: IJanuaField read GetBlobJguid write SetBlobJguid;
    property Location: IJanuaField read GetLocation write SetLocation;
    property Filename: IJanuaField read GetFilename write SetFilename;
    property Description: IJanuaField read GetDescription write SetDescription;
    property Context: IJanuaField read GetContext write SetContext;
    property Extension: IJanuaField read GetExtension write SetExtension;
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
    property FlgInternet: IJanuaField read GetFlgInternet write SetFlgInternet;
    property Jguid: IJanuaField read GetJguid write SetJguid;
    property BlobFile: IJanuaField read GetBlobFile write SetBlobFile;
    property BlobSize: IJanuaField read GetBlobSize write SetBlobSize;
    property BlobKey: IJanuaField read GetBlobKey write SetBlobKey;
    property BlobFilename: IJanuaField read GetBlobFilename write SetBlobFilename;
    property IsExternal: IJanuaField read GetIsExternal write SetIsExternal;
    property InsertDate: IJanuaField read GetInsertDate write SetInsertDate;
    property Isresource: IJanuaField read GetIsresource write SetIsresource;
    property DirectoryId: IJanuaField read GetDirectoryId write SetDirectoryId;
    property DirectoryPath: IJanuaField read GetDirectoryPath write SetDirectoryPath;
    property CustomAttachmentView: ICustomAttachmentView read GetCustomAttachmentView
      write SetCustomAttachmentView;
  end;

implementation

// ------------------------------------------ Impl TCustomAttachmentView -------------------------------

{ TCustomAttachmentView }

constructor TCustomAttachmentView.Create;
begin
  inherited;
  FPrefix := 'ttc';
  FDeleted := AddCreateField(TJanuaFieldType.jptBoolean, 'deleted', 'deleted');
  FDocId := AddCreateField(TJanuaFieldType.jptLargeint, 'doc_id', 'doc_id');
  FBlobId := AddCreateField(TJanuaFieldType.jptLargeint, 'blob_id', 'blob_id');
  FBlobJguid := AddCreateField(TJanuaFieldType.jptGUID, 'blob_jguid', 'blob_jguid');
  FLocation := AddCreateField(TJanuaFieldType.jptString, 'location', 'location');
  FFilename := AddCreateField(TJanuaFieldType.jptString, 'filename', 'filename');
  FDescription := AddCreateField(TJanuaFieldType.jptText, 'description', 'description');
  FContext := AddCreateField(TJanuaFieldType.jptText, 'context', 'context');
  FExtension := AddCreateField(TJanuaFieldType.jptString, 'extension', 'extension');
  FDbSchemaId := AddCreateField(TJanuaFieldType.jptInteger, 'db_schema_id', 'db_schema_id');
  FFlgInternet := AddCreateField(TJanuaFieldType.jptBoolean, 'flg_internet', 'flg_internet');
  FBlobFile := AddCreateField(TJanuaFieldType.jptBlob, 'blob_file', 'blob_file');
  FBlobSize := AddCreateField(TJanuaFieldType.jptLargeint, 'blob_size', 'blob_size');
  FBlobKey := AddCreateField(TJanuaFieldType.jptString, 'blob_key', 'blob_key');
  FBlobFilename := AddCreateField(TJanuaFieldType.jptString, 'blob_filename', 'blob_filename');
  FIsExternal := AddCreateField(TJanuaFieldType.jptBoolean, 'is_external', 'is_external');
  FInsertDate := AddCreateField(TJanuaFieldType.jptDateTime, 'insert_date', 'insert_date');
  FIsresource := AddCreateField(TJanuaFieldType.jptBoolean, 'isresource', 'isresource');
  FDirectoryId := AddCreateField(TJanuaFieldType.jptLargeint, 'directory_id', 'directory_id');
  FDirectoryPath := AddCreateField(TJanuaFieldType.jptString, 'directory_path', 'directory_path');
end;

function TCustomAttachmentView.GetDocId: IJanuaField;
begin
  Result := FDocId;
end;

procedure TCustomAttachmentView.SetDocId(const Value: IJanuaField);
begin
  FDocId := Value;
end;

function TCustomAttachmentView.GetBlobId: IJanuaField;
begin
  Result := FBlobId;
end;

procedure TCustomAttachmentView.SetBlobId(const Value: IJanuaField);
begin
  FBlobId := Value;
end;

function TCustomAttachmentView.GetBlobJguid: IJanuaField;
begin
  Result := FBlobJguid;
end;

procedure TCustomAttachmentView.SetBlobJguid(const Value: IJanuaField);
begin
  FBlobJguid := Value;
end;

function TCustomAttachmentView.GetLocation: IJanuaField;
begin
  Result := FLocation;
end;

procedure TCustomAttachmentView.SetLocation(const Value: IJanuaField);
begin
  FLocation := Value;
end;

function TCustomAttachmentView.GetFilename: IJanuaField;
begin
  Result := FFilename;
end;

procedure TCustomAttachmentView.SetFilename(const Value: IJanuaField);
begin
  FFilename := Value;
end;

function TCustomAttachmentView.GetDeleted: IJanuaField;
begin
  Result := FDeleted
end;

function TCustomAttachmentView.GetDescription: IJanuaField;
begin
  Result := FDescription;
end;

procedure TCustomAttachmentView.SetDeleted(const Value: IJanuaField);
begin
  FDeleted := Value
end;

procedure TCustomAttachmentView.SetDescription(const Value: IJanuaField);
begin
  FDescription := Value;
end;

function TCustomAttachmentView.GetContext: IJanuaField;
begin
  Result := FContext;
end;

procedure TCustomAttachmentView.SetContext(const Value: IJanuaField);
begin
  FContext := Value;
end;

function TCustomAttachmentView.GetExtension: IJanuaField;
begin
  Result := FExtension;
end;

procedure TCustomAttachmentView.SetExtension(const Value: IJanuaField);
begin
  FExtension := Value;
end;

function TCustomAttachmentView.GetDbSchemaId: IJanuaField;
begin
  Result := FDbSchemaId;
end;

procedure TCustomAttachmentView.SetDbSchemaId(const Value: IJanuaField);
begin
  FDbSchemaId := Value;
end;

function TCustomAttachmentView.GetFlgInternet: IJanuaField;
begin
  Result := FFlgInternet;
end;

procedure TCustomAttachmentView.SetFlgInternet(const Value: IJanuaField);
begin
  FFlgInternet := Value;
end;

function TCustomAttachmentView.GetJguid: IJanuaField;
begin
  Result := FJguid;
end;

procedure TCustomAttachmentView.SetJguid(const Value: IJanuaField);
begin
  FJguid := Value;
end;

function TCustomAttachmentView.GetBlobFile: IJanuaField;
begin
  Result := FBlobFile;
end;

procedure TCustomAttachmentView.SetBlobFile(const Value: IJanuaField);
begin
  FBlobFile := Value;
end;

function TCustomAttachmentView.GetBlobSize: IJanuaField;
begin
  Result := FBlobSize;
end;

procedure TCustomAttachmentView.SetBlobSize(const Value: IJanuaField);
begin
  FBlobSize := Value;
end;

function TCustomAttachmentView.GetBlobKey: IJanuaField;
begin
  Result := FBlobKey;
end;

procedure TCustomAttachmentView.SetBlobKey(const Value: IJanuaField);
begin
  FBlobKey := Value;
end;

function TCustomAttachmentView.GetBlobFilename: IJanuaField;
begin
  Result := FBlobFilename;
end;

procedure TCustomAttachmentView.SetBlobFilename(const Value: IJanuaField);
begin
  FBlobFilename := Value;
end;

function TCustomAttachmentView.GetIsExternal: IJanuaField;
begin
  Result := FIsExternal;
end;

procedure TCustomAttachmentView.SetIsExternal(const Value: IJanuaField);
begin
  FIsExternal := Value;
end;

function TCustomAttachmentView.GetInsertDate: IJanuaField;
begin
  Result := FInsertDate;
end;

procedure TCustomAttachmentView.SetInsertDate(const Value: IJanuaField);
begin
  FInsertDate := Value;
end;

function TCustomAttachmentView.GetIsresource: IJanuaField;
begin
  Result := FIsresource;
end;

procedure TCustomAttachmentView.SetIsresource(const Value: IJanuaField);
begin
  FIsresource := Value;
end;

function TCustomAttachmentView.GetDirectoryId: IJanuaField;
begin
  Result := FDirectoryId;
end;

procedure TCustomAttachmentView.SetDirectoryId(const Value: IJanuaField);
begin
  FDirectoryId := Value;
end;

function TCustomAttachmentView.GetDirectoryPath: IJanuaField;
begin
  Result := FDirectoryPath;
end;

procedure TCustomAttachmentView.SetDirectoryPath(const Value: IJanuaField);
begin
  FDirectoryPath := Value;
end;

{ TCustomAttachmentsView }
constructor TCustomAttachmentsView.Create;
begin
  inherited;

end;

function TCustomAttachmentsView.GetDocId: IJanuaField;
begin
  Result := CustomAttachmentView.DocId;
end;

procedure TCustomAttachmentsView.SetDocId(const Value: IJanuaField);
begin
  CustomAttachmentView.DocId := Value;
end;

function TCustomAttachmentsView.GetBlobId: IJanuaField;
begin
  Result := CustomAttachmentView.BlobId;
end;

procedure TCustomAttachmentsView.SetBlobId(const Value: IJanuaField);
begin
  CustomAttachmentView.BlobId := Value;
end;

function TCustomAttachmentsView.GetBlobJguid: IJanuaField;
begin
  Result := CustomAttachmentView.BlobJguid;
end;

procedure TCustomAttachmentsView.SetBlobJguid(const Value: IJanuaField);
begin
  CustomAttachmentView.BlobJguid := Value;
end;

function TCustomAttachmentsView.GetLocation: IJanuaField;
begin
  Result := CustomAttachmentView.Location;
end;

procedure TCustomAttachmentsView.SetLocation(const Value: IJanuaField);
begin
  CustomAttachmentView.Location := Value;
end;

function TCustomAttachmentsView.GetFilename: IJanuaField;
begin
  Result := CustomAttachmentView.Filename;
end;

procedure TCustomAttachmentsView.SetFilename(const Value: IJanuaField);
begin
  CustomAttachmentView.Filename := Value;
end;

function TCustomAttachmentsView.GetDeleted: IJanuaField;
begin
  Result := CustomAttachmentView.Deleted;
end;

function TCustomAttachmentsView.GetDescription: IJanuaField;
begin
  Result := CustomAttachmentView.Description;
end;

procedure TCustomAttachmentsView.SetDeleted(const Value: IJanuaField);
begin
  CustomAttachmentView.Deleted := Value
end;

procedure TCustomAttachmentsView.SetDescription(const Value: IJanuaField);
begin
  CustomAttachmentView.Description := Value;
end;

function TCustomAttachmentsView.GetContext: IJanuaField;
begin
  Result := CustomAttachmentView.Context;
end;

procedure TCustomAttachmentsView.SetContext(const Value: IJanuaField);
begin
  CustomAttachmentView.Context := Value;
end;

function TCustomAttachmentsView.GetExtension: IJanuaField;
begin
  Result := CustomAttachmentView.Extension;
end;

procedure TCustomAttachmentsView.SetExtension(const Value: IJanuaField);
begin
  CustomAttachmentView.Extension := Value;
end;

function TCustomAttachmentsView.GetDbSchemaId: IJanuaField;
begin
  Result := CustomAttachmentView.DbSchemaId;
end;

procedure TCustomAttachmentsView.SetDbSchemaId(const Value: IJanuaField);
begin
  CustomAttachmentView.DbSchemaId := Value;
end;

function TCustomAttachmentsView.GetFlgInternet: IJanuaField;
begin
  Result := CustomAttachmentView.FlgInternet;
end;

procedure TCustomAttachmentsView.SetFlgInternet(const Value: IJanuaField);
begin
  CustomAttachmentView.FlgInternet := Value;
end;

function TCustomAttachmentsView.GetJguid: IJanuaField;
begin
  Result := CustomAttachmentView.Jguid;
end;

procedure TCustomAttachmentsView.SetJguid(const Value: IJanuaField);
begin
  CustomAttachmentView.Jguid := Value;
end;

function TCustomAttachmentsView.GetBlobFile: IJanuaField;
begin
  Result := CustomAttachmentView.BlobFile;
end;

procedure TCustomAttachmentsView.SetBlobFile(const Value: IJanuaField);
begin
  CustomAttachmentView.BlobFile := Value;
end;

function TCustomAttachmentsView.GetBlobSize: IJanuaField;
begin
  Result := CustomAttachmentView.BlobSize;
end;

procedure TCustomAttachmentsView.SetBlobSize(const Value: IJanuaField);
begin
  CustomAttachmentView.BlobSize := Value;
end;

function TCustomAttachmentsView.GetBlobKey: IJanuaField;
begin
  Result := CustomAttachmentView.BlobKey;
end;

procedure TCustomAttachmentsView.SetBlobKey(const Value: IJanuaField);
begin
  CustomAttachmentView.BlobKey := Value;
end;

function TCustomAttachmentsView.GetBlobFilename: IJanuaField;
begin
  Result := CustomAttachmentView.BlobFilename;
end;

procedure TCustomAttachmentsView.SetBlobFilename(const Value: IJanuaField);
begin
  CustomAttachmentView.BlobFilename := Value;
end;

function TCustomAttachmentsView.GetIsExternal: IJanuaField;
begin
  Result := CustomAttachmentView.IsExternal;
end;

procedure TCustomAttachmentsView.SetIsExternal(const Value: IJanuaField);
begin
  CustomAttachmentView.IsExternal := Value;
end;

function TCustomAttachmentsView.GetInsertDate: IJanuaField;
begin
  Result := CustomAttachmentView.InsertDate;
end;

procedure TCustomAttachmentsView.SetInsertDate(const Value: IJanuaField);
begin
  CustomAttachmentView.InsertDate := Value;
end;

function TCustomAttachmentsView.GetIsresource: IJanuaField;
begin
  Result := CustomAttachmentView.Isresource;
end;

procedure TCustomAttachmentsView.SetIsresource(const Value: IJanuaField);
begin
  CustomAttachmentView.Isresource := Value;
end;

function TCustomAttachmentsView.GetDirectoryId: IJanuaField;
begin
  Result := CustomAttachmentView.DirectoryId;
end;

procedure TCustomAttachmentsView.SetDirectoryId(const Value: IJanuaField);
begin
  CustomAttachmentView.DirectoryId := Value;
end;

function TCustomAttachmentsView.GetDirectoryPath: IJanuaField;
begin
  Result := CustomAttachmentView.DirectoryPath;
end;

procedure TCustomAttachmentsView.SetDirectoryPath(const Value: IJanuaField);
begin
  CustomAttachmentView.DirectoryPath := Value;
end;

function TCustomAttachmentsView.GetCustomAttachmentView: ICustomAttachmentView;
begin
  Result := FRecord as ICustomAttachmentView;
end;

procedure TCustomAttachmentsView.SetCustomAttachmentView(const Value: ICustomAttachmentView);
begin
  FRecord := Value;
end;

end.
