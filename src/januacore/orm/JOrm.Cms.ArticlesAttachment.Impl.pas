unit JOrm.Cms.ArticlesAttachment.Impl;

interface

uses Janua.Orm.Intf, Janua.Orm.Impl, JOrm.Cms.ArticlesAttachment.Intf;

// ------------------------------------------ Impl object interface ----------------------------------

type
  TArticlesAttachment = class(TJanuaRecord, IArticlesAttachment)
  private
    FArticleId: IJanuaField;
    FArticleIdIndex: Integer;
    FFileId: IJanuaField;
    FFileIdIndex: Integer;
    FDescription: IJanuaField;
    FDescriptionIndex: Integer;
    FExtension: IJanuaField;
    FExtensionIndex: Integer;
    FMime: IJanuaField;
    FMimeIndex: Integer;
    FDbSchemaId: IJanuaField;
    FDbSchemaIdIndex: Integer;
  private
    function GetArticleId: IJanuaField;
    procedure SetArticleId(const Value: IJanuaField);
    function GetFileId: IJanuaField;
    procedure SetFileId(const Value: IJanuaField);
    function GetDescription: IJanuaField;
    procedure SetDescription(const Value: IJanuaField);
    function GetExtension: IJanuaField;
    procedure SetExtension(const Value: IJanuaField);
    function GetMime: IJanuaField;
    procedure SetMime(const Value: IJanuaField);
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    function GetUrl: IJanuaField;
    procedure SetUrl(const Value: IJanuaField);
  public
    constructor Create; override;
    property ArticleId: IJanuaField read GetArticleId write SetArticleId;
    property FileId: IJanuaField read GetFileId write SetFileId;
    property Description: IJanuaField read GetDescription write SetDescription;
    property Extension: IJanuaField read GetExtension write SetExtension;
    property Mime: IJanuaField read GetMime write SetMime;
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
    property Url: IJanuaField read GetUrl write SetUrl;
  end;

  TArticlesAttachments = class(TJanuaRecordSet, IJanuaRecordSet, IArticlesAttachments)
  private
    function GetArticleId: IJanuaField;
    procedure SetArticleId(const Value: IJanuaField);
    function GetFileId: IJanuaField;
    procedure SetFileId(const Value: IJanuaField);
    function GetDescription: IJanuaField;
    procedure SetDescription(const Value: IJanuaField);
    function GetExtension: IJanuaField;
    procedure SetExtension(const Value: IJanuaField);
    function GetMime: IJanuaField;
    procedure SetMime(const Value: IJanuaField);
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    function Getarticles_attachment: IArticlesAttachment;
    procedure Setarticles_attachment(const Value: IArticlesAttachment);
  public
    constructor Create; override;
    property articles_attachment: IArticlesAttachment read Getarticles_attachment write Setarticles_attachment;
  end;

  Tarticles_attachmentFactory = class
    class function CreateRecord(const aKey: string): IArticlesAttachment; overload;
    class function CreateRecordset(const aName: string; const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage)
      : IArticlesAttachments; overload;
  end;

implementation

uses Janua.Orm.Types;

// ------------------------------------------ Impl Tarticles_attachment -------------------------------

{ Tarticles_attachment }

constructor TArticlesAttachment.Create;
begin
  inherited;
  FPrefix := 'cmaa';
  SetEntity(TJanuaEntity.CmsArticlesAttachments);
  FArticleId := TJanuaOrmFactory.CreateLargeIntField('article_id', 'article_id');
  FArticleIdIndex := AddField(FArticleId);
  FFileId := TJanuaOrmFactory.CreateLargeIntField('file_id', 'file_id');
  FFileIdIndex := AddField(FFileId);
  FDescription := TJanuaOrmFactory.CreateStringField('description', 'description');
  FDescriptionIndex := AddField(FDescription);
  FExtension := TJanuaOrmFactory.CreateStringField('extension', 'extension');
  FExtensionIndex := AddField(FExtension);
  FMime := TJanuaOrmFactory.CreateStringField('mime', 'mime');
  FMimeIndex := AddField(FMime);
  FDbSchemaId := TJanuaOrmFactory.CreateLargeIntField('db_schema_id', 'db_schema_id');
  FDbSchemaIdIndex := AddField(FDbSchemaId);
end;

function TArticlesAttachment.GetArticleId: IJanuaField;
begin
  Result := FArticleId;
end;

procedure TArticlesAttachment.SetArticleId(const Value: IJanuaField);
begin
  FArticleId := Value;
end;

function TArticlesAttachment.GetFileId: IJanuaField;
begin
  Result := FFileId;
end;

procedure TArticlesAttachment.SetFileId(const Value: IJanuaField);
begin
  FFileId := Value;
end;

function TArticlesAttachment.GetDescription: IJanuaField;
begin
  Result := FDescription;
end;

procedure TArticlesAttachment.SetDescription(const Value: IJanuaField);
begin
  FDescription := Value;
end;

function TArticlesAttachment.GetExtension: IJanuaField;
begin
  Result := FExtension;
end;

procedure TArticlesAttachment.SetExtension(const Value: IJanuaField);
begin
  FExtension := Value;
end;

function TArticlesAttachment.GetMime: IJanuaField;
begin
  Result := FMime;
end;

function TArticlesAttachment.GetUrl: IJanuaField;
begin

end;

procedure TArticlesAttachment.SetMime(const Value: IJanuaField);
begin
  FMime := Value;
end;

procedure TArticlesAttachment.SetUrl(const Value: IJanuaField);
begin

end;

function TArticlesAttachment.GetDbSchemaId: IJanuaField;
begin
  Result := FDbSchemaId;
end;

procedure TArticlesAttachment.SetDbSchemaId(const Value: IJanuaField);
begin
  FDbSchemaId := Value;
end;

{ Tarticles_attachments }
constructor TArticlesAttachments.Create;
begin
  inherited;
  self.FRecord := Tarticles_attachmentFactory.CreateRecord('articles_attachment');
end;

function TArticlesAttachments.GetArticleId: IJanuaField;
begin
  Result := self.articles_attachment.ArticleId;
end;

procedure TArticlesAttachments.SetArticleId(const Value: IJanuaField);
begin
  self.articles_attachment.ArticleId := Value;
end;

function TArticlesAttachments.GetFileId: IJanuaField;
begin
  Result := self.articles_attachment.FileId;
end;

procedure TArticlesAttachments.SetFileId(const Value: IJanuaField);
begin
  self.articles_attachment.FileId := Value;
end;

function TArticlesAttachments.GetDescription: IJanuaField;
begin
  Result := self.articles_attachment.Description;
end;

procedure TArticlesAttachments.SetDescription(const Value: IJanuaField);
begin
  self.articles_attachment.Description := Value;
end;

function TArticlesAttachments.GetExtension: IJanuaField;
begin
  Result := self.articles_attachment.Extension;
end;

procedure TArticlesAttachments.SetExtension(const Value: IJanuaField);
begin
  self.articles_attachment.Extension := Value;
end;

function TArticlesAttachments.GetMime: IJanuaField;
begin
  Result := self.articles_attachment.Mime;
end;

procedure TArticlesAttachments.SetMime(const Value: IJanuaField);
begin
  self.articles_attachment.Mime := Value;
end;

function TArticlesAttachments.GetDbSchemaId: IJanuaField;
begin
  Result := self.articles_attachment.DbSchemaId;
end;

procedure TArticlesAttachments.SetDbSchemaId(const Value: IJanuaField);
begin
  self.articles_attachment.DbSchemaId := Value;
end;

function TArticlesAttachments.Getarticles_attachment: IArticlesAttachment;
begin
  Result := self.FRecord as IArticlesAttachment;
end;

procedure TArticlesAttachments.Setarticles_attachment(const Value: IArticlesAttachment);
begin
  self.FRecord := Value;
end;

{ Tarticles_attachmentFactory }

class function Tarticles_attachmentFactory.CreateRecord(const aKey: string): IArticlesAttachment;
begin
  Result := TArticlesAttachment.Create;
end;

class function Tarticles_attachmentFactory.CreateRecordset(const aName: string;
  const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage): IArticlesAttachments;
begin
  Result := TArticlesAttachments.Create(aName, aLocalStorage, aRemoteStorage);
end;

end.
