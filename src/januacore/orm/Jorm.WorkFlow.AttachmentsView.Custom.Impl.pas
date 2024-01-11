unit Jorm.WorkFlow.AttachmentsView.Custom.Impl;

interface

uses
  Janua.Orm.Intf, Janua.Orm.Impl, Janua.Core.Types, JOrm.Workflow.AttachmentsView.Custom.Intf;

//------------------------------------------ Impl object interface ----------------------------------

type
  TCustomWorkAttachmentView = class(TJanuaRecord, ICustomWorkAttachmentView)
  private
    FWorkId: IJanuaField;
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
    FDbUserId: IJanuaField;
    FDirectoryPath: IJanuaField;
  private
    function GetWorkId: IJanuaField;
    procedure SetWorkId(const Value: IJanuaField);
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
    function GetDbUserId: IJanuaField;
    procedure SetDbUserId(const Value: IJanuaField);
    function GetDirectoryPath: IJanuaField;
    procedure SetDirectoryPath(const Value: IJanuaField);
  public
    constructor Create; override;
    property WorkId: IJanuaField read GetWorkId write SetWorkId;
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
    property DbUserId: IJanuaField read GetDbUserId write SetDbUserId;
    property DirectoryPath: IJanuaField read GetDirectoryPath write SetDirectoryPath;

  end;

  TCustomWorkAttachmentsView = class(TJanuaRecordSet, IJanuaRecordSet, ICustomWorkAttachmentsView)
  private
    function FCustomWorkAttachmentView: ICustomWorkAttachmentView;
  private
    function GetWorkId: IJanuaField;
    procedure SetWorkId(const Value: IJanuaField);
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
    function GetDbUserId: IJanuaField;
    procedure SetDbUserId(const Value: IJanuaField);
    function GetDirectoryPath: IJanuaField;
    procedure SetDirectoryPath(const Value: IJanuaField);
  public
    constructor Create; override;
    property WorkId: IJanuaField read GetWorkId write SetWorkId;
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
    property DbUserId: IJanuaField read GetDbUserId write SetDbUserId;
    property DirectoryPath: IJanuaField read GetDirectoryPath write SetDirectoryPath;
  end;

implementation

//------------------------------------------ Impl TWorkAttachmentView -------------------------------

{TCustomWorkAttachmentView}

constructor TCustomWorkAttachmentView.Create;
begin
  inherited;
  FPrefix := 'watv';
  FWorkId := AddCreateField(TJanuaFieldType.jptLargeint, 'work_id', 'work_id');
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
  FDbUserId := AddCreateField(TJanuaFieldType.jptInteger, 'db_user_id', 'db_user_id');
  FDirectoryPath := AddCreateField(TJanuaFieldType.jptString, 'directory_path', 'directory_path');
end;

function TCustomWorkAttachmentView.GetWorkId: IJanuaField;
begin
  Result := FWorkId;
end;

procedure TCustomWorkAttachmentView.SetWorkId(const Value: IJanuaField);
begin
  FWorkId := Value;
end;

function TCustomWorkAttachmentView.GetBlobId: IJanuaField;
begin
  Result := FBlobId;
end;

procedure TCustomWorkAttachmentView.SetBlobId(const Value: IJanuaField);
begin
  FBlobId := Value;
end;

function TCustomWorkAttachmentView.GetBlobJguid: IJanuaField;
begin
  Result := FBlobJguid;
end;

procedure TCustomWorkAttachmentView.SetBlobJguid(const Value: IJanuaField);
begin
  FBlobJguid := Value;
end;

function TCustomWorkAttachmentView.GetLocation: IJanuaField;
begin
  Result := FLocation;
end;

procedure TCustomWorkAttachmentView.SetLocation(const Value: IJanuaField);
begin
  FLocation := Value;
end;

function TCustomWorkAttachmentView.GetFilename: IJanuaField;
begin
  Result := FFilename;
end;

procedure TCustomWorkAttachmentView.SetFilename(const Value: IJanuaField);
begin
  FFilename := Value;
end;

function TCustomWorkAttachmentView.GetDescription: IJanuaField;
begin
  Result := FDescription;
end;

procedure TCustomWorkAttachmentView.SetDescription(const Value: IJanuaField);
begin
  FDescription := Value;
end;

function TCustomWorkAttachmentView.GetContext: IJanuaField;
begin
  Result := FContext;
end;

procedure TCustomWorkAttachmentView.SetContext(const Value: IJanuaField);
begin
  FContext := Value;
end;

function TCustomWorkAttachmentView.GetExtension: IJanuaField;
begin
  Result := FExtension;
end;

procedure TCustomWorkAttachmentView.SetExtension(const Value: IJanuaField);
begin
  FExtension := Value;
end;

function TCustomWorkAttachmentView.GetDbSchemaId: IJanuaField;
begin
  Result := FDbSchemaId;
end;

procedure TCustomWorkAttachmentView.SetDbSchemaId(const Value: IJanuaField);
begin
  FDbSchemaId := Value;
end;

function TCustomWorkAttachmentView.GetFlgInternet: IJanuaField;
begin
  Result := FFlgInternet;
end;

procedure TCustomWorkAttachmentView.SetFlgInternet(const Value: IJanuaField);
begin
  FFlgInternet := Value;
end;

function TCustomWorkAttachmentView.GetJguid: IJanuaField;
begin
  Result := FJguid;
end;

procedure TCustomWorkAttachmentView.SetJguid(const Value: IJanuaField);
begin
  FJguid := Value;
end;

function TCustomWorkAttachmentView.GetBlobFile: IJanuaField;
begin
  Result := FBlobFile;
end;

procedure TCustomWorkAttachmentView.SetBlobFile(const Value: IJanuaField);
begin
  FBlobFile := Value;
end;

function TCustomWorkAttachmentView.GetBlobSize: IJanuaField;
begin
  Result := FBlobSize;
end;

procedure TCustomWorkAttachmentView.SetBlobSize(const Value: IJanuaField);
begin
  FBlobSize := Value;
end;

function TCustomWorkAttachmentView.GetBlobKey: IJanuaField;
begin
  Result := FBlobKey;
end;

procedure TCustomWorkAttachmentView.SetBlobKey(const Value: IJanuaField);
begin
  FBlobKey := Value;
end;

function TCustomWorkAttachmentView.GetBlobFilename: IJanuaField;
begin
  Result := FBlobFilename;
end;

procedure TCustomWorkAttachmentView.SetBlobFilename(const Value: IJanuaField);
begin
  FBlobFilename := Value;
end;

function TCustomWorkAttachmentView.GetIsExternal: IJanuaField;
begin
  Result := FIsExternal;
end;

procedure TCustomWorkAttachmentView.SetIsExternal(const Value: IJanuaField);
begin
  FIsExternal := Value;
end;

function TCustomWorkAttachmentView.GetInsertDate: IJanuaField;
begin
  Result := FInsertDate;
end;

procedure TCustomWorkAttachmentView.SetInsertDate(const Value: IJanuaField);
begin
  FInsertDate := Value;
end;

function TCustomWorkAttachmentView.GetIsresource: IJanuaField;
begin
  Result := FIsresource;
end;

procedure TCustomWorkAttachmentView.SetIsresource(const Value: IJanuaField);
begin
  FIsresource := Value;
end;

function TCustomWorkAttachmentView.GetDirectoryId: IJanuaField;
begin
  Result := FDirectoryId;
end;

procedure TCustomWorkAttachmentView.SetDirectoryId(const Value: IJanuaField);
begin
  FDirectoryId := Value;
end;

function TCustomWorkAttachmentView.GetDbUserId: IJanuaField;
begin
  Result := FDbUserId;
end;

procedure TCustomWorkAttachmentView.SetDbUserId(const Value: IJanuaField);
begin
  FDbUserId := Value;
end;

function TCustomWorkAttachmentView.GetDirectoryPath: IJanuaField;
begin
  Result := FDirectoryPath;
end;

procedure TCustomWorkAttachmentView.SetDirectoryPath(const Value: IJanuaField);
begin
  FDirectoryPath := Value;
end;

  { TCustomWorkAttachmentsView }
constructor TCustomWorkAttachmentsView.Create;
begin
  inherited;
  FRecord := TCustomWorkAttachmentView.Create('attachmentview');
end;

function TCustomWorkAttachmentsView.GetWorkId: IJanuaField;
begin
  Result := self.FCustomWorkAttachmentView.WorkId;
end;

procedure TCustomWorkAttachmentsView.SetWorkId(const Value: IJanuaField);
begin
  self.FCustomWorkAttachmentView.WorkId := Value;
end;

function TCustomWorkAttachmentsView.GetBlobId: IJanuaField;
begin
  Result := self.FCustomWorkAttachmentView.BlobId;
end;

procedure TCustomWorkAttachmentsView.SetBlobId(const Value: IJanuaField);
begin
  self.FCustomWorkAttachmentView.BlobId := Value;
end;

function TCustomWorkAttachmentsView.GetBlobJguid: IJanuaField;
begin
  Result := self.FCustomWorkAttachmentView.BlobJguid;
end;

procedure TCustomWorkAttachmentsView.SetBlobJguid(const Value: IJanuaField);
begin
  self.FCustomWorkAttachmentView.BlobJguid := Value;
end;

function TCustomWorkAttachmentsView.GetLocation: IJanuaField;
begin
  Result := self.FCustomWorkAttachmentView.Location;
end;

procedure TCustomWorkAttachmentsView.SetLocation(const Value: IJanuaField);
begin
  self.FCustomWorkAttachmentView.Location := Value;
end;

function TCustomWorkAttachmentsView.GetFilename: IJanuaField;
begin
  Result := self.FCustomWorkAttachmentView.Filename;
end;

procedure TCustomWorkAttachmentsView.SetFilename(const Value: IJanuaField);
begin
  self.FCustomWorkAttachmentView.Filename := Value;
end;

function TCustomWorkAttachmentsView.GetDescription: IJanuaField;
begin
  Result := self.FCustomWorkAttachmentView.Description;
end;

procedure TCustomWorkAttachmentsView.SetDescription(const Value: IJanuaField);
begin
  self.FCustomWorkAttachmentView.Description := Value;
end;

function TCustomWorkAttachmentsView.GetContext: IJanuaField;
begin
  Result := self.FCustomWorkAttachmentView.Context;
end;

procedure TCustomWorkAttachmentsView.SetContext(const Value: IJanuaField);
begin
  self.FCustomWorkAttachmentView.Context := Value;
end;

function TCustomWorkAttachmentsView.GetExtension: IJanuaField;
begin
  Result := self.FCustomWorkAttachmentView.Extension;
end;

procedure TCustomWorkAttachmentsView.SetExtension(const Value: IJanuaField);
begin
  self.FCustomWorkAttachmentView.Extension := Value;
end;

function TCustomWorkAttachmentsView.GetDbSchemaId: IJanuaField;
begin
  Result := self.FCustomWorkAttachmentView.DbSchemaId;
end;

procedure TCustomWorkAttachmentsView.SetDbSchemaId(const Value: IJanuaField);
begin
  self.FCustomWorkAttachmentView.DbSchemaId := Value;
end;

function TCustomWorkAttachmentsView.GetFlgInternet: IJanuaField;
begin
  Result := self.FCustomWorkAttachmentView.FlgInternet;
end;

procedure TCustomWorkAttachmentsView.SetFlgInternet(const Value: IJanuaField);
begin
  self.FCustomWorkAttachmentView.FlgInternet := Value;
end;

function TCustomWorkAttachmentsView.GetJguid: IJanuaField;
begin
  Result := self.FCustomWorkAttachmentView.Jguid;
end;

procedure TCustomWorkAttachmentsView.SetJguid(const Value: IJanuaField);
begin
  self.FCustomWorkAttachmentView.Jguid := Value;
end;

function TCustomWorkAttachmentsView.FCustomWorkAttachmentView: ICustomWorkAttachmentView;
begin
  Result := FRecord as  ICustomWorkAttachmentView
end;

function TCustomWorkAttachmentsView.GetBlobFile: IJanuaField;
begin
  Result := self.FCustomWorkAttachmentView.BlobFile;
end;

procedure TCustomWorkAttachmentsView.SetBlobFile(const Value: IJanuaField);
begin
  self.FCustomWorkAttachmentView.BlobFile := Value;
end;

function TCustomWorkAttachmentsView.GetBlobSize: IJanuaField;
begin
  Result := self.FCustomWorkAttachmentView.BlobSize;
end;

procedure TCustomWorkAttachmentsView.SetBlobSize(const Value: IJanuaField);
begin
  self.FCustomWorkAttachmentView.BlobSize := Value;
end;

function TCustomWorkAttachmentsView.GetBlobKey: IJanuaField;
begin
  Result := self.FCustomWorkAttachmentView.BlobKey;
end;

procedure TCustomWorkAttachmentsView.SetBlobKey(const Value: IJanuaField);
begin
  self.FCustomWorkAttachmentView.BlobKey := Value;
end;

function TCustomWorkAttachmentsView.GetBlobFilename: IJanuaField;
begin
  Result := self.FCustomWorkAttachmentView.BlobFilename;
end;

procedure TCustomWorkAttachmentsView.SetBlobFilename(const Value: IJanuaField);
begin
  self.FCustomWorkAttachmentView.BlobFilename := Value;
end;

function TCustomWorkAttachmentsView.GetIsExternal: IJanuaField;
begin
  Result := self.FCustomWorkAttachmentView.IsExternal;
end;

procedure TCustomWorkAttachmentsView.SetIsExternal(const Value: IJanuaField);
begin
  self.FCustomWorkAttachmentView.IsExternal := Value;
end;

function TCustomWorkAttachmentsView.GetInsertDate: IJanuaField;
begin
  Result := self.FCustomWorkAttachmentView.InsertDate;
end;

procedure TCustomWorkAttachmentsView.SetInsertDate(const Value: IJanuaField);
begin
  self.FCustomWorkAttachmentView.InsertDate := Value;
end;

function TCustomWorkAttachmentsView.GetIsresource: IJanuaField;
begin
  Result := self.FCustomWorkAttachmentView.Isresource;
end;

procedure TCustomWorkAttachmentsView.SetIsresource(const Value: IJanuaField);
begin
  self.FCustomWorkAttachmentView.Isresource := Value;
end;

function TCustomWorkAttachmentsView.GetDirectoryId: IJanuaField;
begin
  Result := self.FCustomWorkAttachmentView.DirectoryId;
end;

procedure TCustomWorkAttachmentsView.SetDirectoryId(const Value: IJanuaField);
begin
  self.FCustomWorkAttachmentView.DirectoryId := Value;
end;

function TCustomWorkAttachmentsView.GetDbUserId: IJanuaField;
begin
  Result := self.FCustomWorkAttachmentView.DbUserId;
end;

procedure TCustomWorkAttachmentsView.SetDbUserId(const Value: IJanuaField);
begin
  self.FCustomWorkAttachmentView.DbUserId := Value;
end;

function TCustomWorkAttachmentsView.GetDirectoryPath: IJanuaField;
begin
  Result := self.FCustomWorkAttachmentView.DirectoryPath;
end;

procedure TCustomWorkAttachmentsView.SetDirectoryPath(const Value: IJanuaField);
begin
  self.FCustomWorkAttachmentView.DirectoryPath := Value;
end;



end.

