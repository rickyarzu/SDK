unit JOrm.Cms.Articles.Impl;

interface

uses Spring.Collections,
  Janua.Orm.Intf, Janua.Orm.Impl, JOrm.Cms.Articles.Intf, JOrm.Cms.ArticlesAttachment.Intf;

// ------------------------------------------ Impl object interface ----------------------------------

type
  TArticle = class(TJanuaRecord, IArticle)
  private
    FArticle_id: Integer;
    FTitle: Integer;
    FAbstract: Integer;
    FAuthor_id: Integer;
    FText: Integer;
    FExternal_link: Integer;
    FImage: Integer;
    FShorttext: Integer;
    FMain_argument_id: Integer;
    FArgument_id: Integer;
    FSub_argument_id: Integer;
    FSpecification_id: Integer;
    FArticle_key: Integer;
    FImage_url: Integer;
    FLanguage_id: Integer;
    FFeed_id: Integer;
    FImagetext: Integer;
    FAttachment: Integer;
    FHasimage: Integer;
    FHasattach: Integer;
    FAttachmentUrl: Integer;
    FArticleUrl: Integer;
    FAutor: Integer;
    FAutorText: string;
    // DateText è un campo calcolato e formattato che serve per indicare correttamente la data di un articolo
    // oltre alla data indica anche ora minute e secondi
    FDateTextIndex: Integer;
    FDateText: IJanuaField;
    FDatetime: IJanuaField;
    FDatetimeIndex: Integer;
    FExpiryDate: IJanuaField;
    FState: IJanuaField;
    // Image
    FImageUrl: IJanuaField;
    FImageUrlIndex: Integer;
    FMainImageId: IJanuaField;
    FMainImageIdIndex: Integer;
    FMainAttachId: IJanuaField;
    FMainAttachIdIndex: Integer;
    FThumbImageId: IJanuaField;
    FThumbImageIdIndex: Integer;
    FArticle: IJanuaField;
    FArticleIndex: Integer;
    FAttachments: IArticlesAttachments;
  protected
    FStateList: IList<TJanuaState>;
  private
    function GetArticle_id: IJanuaField;
    procedure SetArticle_id(const Value: IJanuaField);
    function GetTitle: IJanuaField;
    procedure SetTitle(const Value: IJanuaField);
    function GetAbstract: IJanuaField;
    procedure SetAbstract(const Value: IJanuaField);
    function GetAuthor_id: IJanuaField;
    procedure SetAuthor_id(const Value: IJanuaField);
    function GetText: IJanuaField;
    procedure SetText(const Value: IJanuaField);
    function GetDatetime: IJanuaField;
    procedure SetDatetime(const Value: IJanuaField);
    function GetExternal_link: IJanuaField;
    procedure SetExternal_link(const Value: IJanuaField);
    function GetImage: IJanuaField;
    procedure SetImage(const Value: IJanuaField);
    function GetShorttext: IJanuaField;
    procedure SetShorttext(const Value: IJanuaField);
    function GetMain_argument_id: IJanuaField;
    procedure SetMain_argument_id(const Value: IJanuaField);
    function GetArgument_id: IJanuaField;
    procedure SetArgument_id(const Value: IJanuaField);
    function GetSub_argument_id: IJanuaField;
    procedure SetSub_argument_id(const Value: IJanuaField);
    function GetSpecification_id: IJanuaField;
    procedure SetSpecification_id(const Value: IJanuaField);
    function GetArticle_key: IJanuaField;
    procedure SetArticle_key(const Value: IJanuaField);
    function GetImage_url: IJanuaField;
    procedure SetImage_url(const Value: IJanuaField);
    function GetLanguage_id: IJanuaField;
    procedure SetLanguage_id(const Value: IJanuaField);
    function GetFeed_id: IJanuaField;
    procedure SetFeed_id(const Value: IJanuaField);
    function GetImagetext: IJanuaField;
    procedure SetImagetext(const Value: IJanuaField);
    function GetAttachment: IJanuaField;
    procedure SetAttachment(const Value: IJanuaField);
    function GetHasimage: IJanuaField;
    procedure SetHasimage(const Value: IJanuaField);
    function GetHasattach: IJanuaField;
    procedure SetHasattach(const Value: IJanuaField);
    // Cal and Read Only Fields
    function GetImageUrl: IJanuaField;
    procedure SetImageUrl(const Value: IJanuaField);
    function GetAttachmentUrl: IJanuaField;
    procedure SetAttachmentUrl(const Value: IJanuaField);
    function GetArticleUrl: IJanuaField;
    procedure SetArticleUrl(const Value: IJanuaField);
    function GetAuthor: IJanuaField;
    procedure SetAuthor(const Value: IJanuaField);
    function GetDateText: IJanuaField;
    procedure SetDateText(const Value: IJanuaField);
    function GetAuthorText: string;
    procedure SetAuthorText(const Value: string);
    // Image
    function GetMainImageId: IJanuaField;
    procedure SetMainImageId(const Value: IJanuaField);
    function GetMainAttachId: IJanuaField;
    procedure SetMainAttachId(const Value: IJanuaField);
    function GetThumbImageId: IJanuaField;
    procedure SetThumbImageId(const Value: IJanuaField);
    function GetAttachUrl: string;
    function GetMainImageUrl: string;
    function GetThumbImageUrl: string;
    // Artile Blob
    function GetArticle: IJanuaField;
    procedure SetArticle(const Value: IJanuaField);
    // Attachment Table
    procedure SetAttachments(const Value: IArticlesAttachments);
    function GetAttachments: IArticlesAttachments;
    // State from -1 to 9 smallint
    function GetState: IJanuaField;
    procedure SetState(const Value: IJanuaField);
    // Espiry Date
    function GetExpiryDate: IJanuaField;
    procedure SetExpiryDate(const Value: IJanuaField);
    function GetStateList: IList<TJanuaState>;
    procedure SetStateList(const Value: IList<TJanuaState>);
  protected
    procedure CalcFields(Sender: TObject);
    procedure SetDefault; override;
    function GetStatePos: Integer;
    procedure SetStatePos(const Value: Integer);
  public
    constructor Create; override;
    function CalcStatePos(aState: Integer): Integer;
    function GenerateAttachUrl: string;
    property Article_id: IJanuaField read GetArticle_id write SetArticle_id;
    property Title: IJanuaField read GetTitle write SetTitle;
    property Abstract: IJanuaField read GetAbstract write SetAbstract;
    property Author_id: IJanuaField read GetAuthor_id write SetAuthor_id;
    property Text: IJanuaField read GetText write SetText;
    property Datetime: IJanuaField read GetDatetime write SetDatetime;
    property External_link: IJanuaField read GetExternal_link write SetExternal_link;
    property Image: IJanuaField read GetImage write SetImage;
    property Shorttext: IJanuaField read GetShorttext write SetShorttext;
    property Main_argument_id: IJanuaField read GetMain_argument_id write SetMain_argument_id;
    property Argument_id: IJanuaField read GetArgument_id write SetArgument_id;
    property Sub_argument_id: IJanuaField read GetSub_argument_id write SetSub_argument_id;
    property Specification_id: IJanuaField read GetSpecification_id write SetSpecification_id;
    property Article_key: IJanuaField read GetArticle_key write SetArticle_key;
    property Image_url: IJanuaField read GetImage_url write SetImage_url;
    property Language_id: IJanuaField read GetLanguage_id write SetLanguage_id;
    property Feed_id: IJanuaField read GetFeed_id write SetFeed_id;
    property Imagetext: IJanuaField read GetImagetext write SetImagetext;
    property Attachment: IJanuaField read GetAttachment write SetAttachment;
    property Hasimage: IJanuaField read GetHasimage write SetHasimage;
    property Hasattach: IJanuaField read GetHasattach write SetHasattach;
    // Calc Fields
    // Cal and Read Only Fields
    property ImageUrl: IJanuaField read GetImageUrl write SetImageUrl;
    property AttachmentUrl: IJanuaField read GetAttachmentUrl write SetAttachmentUrl;
    property ArticleUrl: IJanuaField read GetArticleUrl write SetArticleUrl;
    property Author: IJanuaField read GetAuthor write SetAuthor;
    property AuthorText: string read GetAuthorText write SetAuthorText;
    // Image and Attachment
    property MainImageId: IJanuaField read GetMainImageId write SetMainImageId;
    property MainAttachId: IJanuaField read GetMainAttachId write SetMainAttachId;
    property ThumbImageId: IJanuaField read GetThumbImageId write SetThumbImageId;
    // Blob
    property Article: IJanuaField read GetArticle write SetArticle;
    // Class Properties
    property MainImageUrl: string read GetMainImageUrl;
    property ThumbImageUrl: string read GetThumbImageUrl;
    property AttachUrl: string read GetAttachUrl;
    property Attachments: IArticlesAttachments read FAttachments write SetAttachments;
    property State: IJanuaField read GetState write SetState;
    // Article as Blob
    property ExpiryDate: IJanuaField read GetExpiryDate write SetExpiryDate;
    property StatePos: Integer read GetStatePos write SetStatePos;
    // StateList State
    property StateList: IList<TJanuaState> read GetStateList write SetStateList;
  end;

  TArticles = class(TJanuaRecordSet, IJanuaRecordSet, IArticles)
  private
    FStateList: IList<TJanuaState>;
    function GetArticle_id: IJanuaField;
    procedure SetArticle_id(const Value: IJanuaField);
    function GetTitle: IJanuaField;
    procedure SetTitle(const Value: IJanuaField);
    function GetAbstract: IJanuaField;
    procedure SetAbstract(const Value: IJanuaField);
    function GetAuthor_id: IJanuaField;
    procedure SetAuthor_id(const Value: IJanuaField);
    function GetText: IJanuaField;
    procedure SetText(const Value: IJanuaField);
    function GetDatetime: IJanuaField;
    procedure SetDatetime(const Value: IJanuaField);
    function GetExternal_link: IJanuaField;
    procedure SetExternal_link(const Value: IJanuaField);
    function GetImage: IJanuaField;
    procedure SetImage(const Value: IJanuaField);
    function GetShorttext: IJanuaField;
    procedure SetShorttext(const Value: IJanuaField);
    function GetMain_argument_id: IJanuaField;
    procedure SetMain_argument_id(const Value: IJanuaField);
    function GetArgument_id: IJanuaField;
    procedure SetArgument_id(const Value: IJanuaField);
    function GetSub_argument_id: IJanuaField;
    procedure SetSub_argument_id(const Value: IJanuaField);
    function GetSpecification_id: IJanuaField;
    procedure SetSpecification_id(const Value: IJanuaField);
    function GetArticle_key: IJanuaField;
    procedure SetArticle_key(const Value: IJanuaField);
    function GetImage_url: IJanuaField;
    procedure SetImage_url(const Value: IJanuaField);
    function GetLanguage_id: IJanuaField;
    procedure SetLanguage_id(const Value: IJanuaField);
    function GetFeed_id: IJanuaField;
    procedure SetFeed_id(const Value: IJanuaField);
    function GetImagetext: IJanuaField;
    procedure SetImagetext(const Value: IJanuaField);
    function GetAttachment: IJanuaField;
    procedure SetAttachment(const Value: IJanuaField);
    function GetHasimage: IJanuaField;
    procedure SetHasimage(const Value: IJanuaField);
    function GetHasattach: IJanuaField;
    procedure SetHasattach(const Value: IJanuaField);
    function GetArticle: IArticle;
    procedure SetArticle(const Value: IArticle);
    function GetImageUrl: IJanuaField;
    procedure SetImageUrl(const Value: IJanuaField);
    function GetAttachmentUrl: IJanuaField;
    procedure SetAttachmentUrl(const Value: IJanuaField);
    function GetArticleUrl: IJanuaField;
    procedure SetArticleUrl(const Value: IJanuaField);
    function GetAuthor: IJanuaField;
    procedure SetAuthor(const Value: IJanuaField);
    function GetAuthorText: string;
    procedure SetAuthorText(const Value: string);
    // Image Management Procedures ................................................................
    function GetMainImageId: IJanuaField;
    procedure SetMainImageId(const Value: IJanuaField);
    function GetMainAttachId: IJanuaField;
    procedure SetMainAttachId(const Value: IJanuaField);
    function GetThumbImageId: IJanuaField;
    procedure SetThumbImageId(const Value: IJanuaField);
    // State from -1 to 9 smallint
    function GetState: IJanuaField;
    procedure SetState(const Value: IJanuaField);
    // Espiry Date
    function GetExpiryDate: IJanuaField;
    procedure SetExpiryDate(const Value: IJanuaField);

  public
    constructor Create; override;
    property Article_id: IJanuaField read GetArticle_id write SetArticle_id;
    property Title: IJanuaField read GetTitle write SetTitle;
    property Abstract: IJanuaField read GetAbstract write SetAbstract;
    property Author_id: IJanuaField read GetAuthor_id write SetAuthor_id;
    property Text: IJanuaField read GetText write SetText;
    property Datetime: IJanuaField read GetDatetime write SetDatetime;
    property External_link: IJanuaField read GetExternal_link write SetExternal_link;
    property Image: IJanuaField read GetImage write SetImage;
    property Shorttext: IJanuaField read GetShorttext write SetShorttext;
    property Main_argument_id: IJanuaField read GetMain_argument_id write SetMain_argument_id;
    property Argument_id: IJanuaField read GetArgument_id write SetArgument_id;
    property Sub_argument_id: IJanuaField read GetSub_argument_id write SetSub_argument_id;
    property Specification_id: IJanuaField read GetSpecification_id write SetSpecification_id;
    property Article_key: IJanuaField read GetArticle_key write SetArticle_key;
    property Image_url: IJanuaField read GetImage_url write SetImage_url;
    property Language_id: IJanuaField read GetLanguage_id write SetLanguage_id;
    property Feed_id: IJanuaField read GetFeed_id write SetFeed_id;
    property Imagetext: IJanuaField read GetImagetext write SetImagetext;
    property Attachment: IJanuaField read GetAttachment write SetAttachment;
    property Hasimage: IJanuaField read GetHasimage write SetHasimage;
    property Hasattach: IJanuaField read GetHasattach write SetHasattach;
    property Article: IArticle read GetArticle write SetArticle;
    // Cal and Read Only Fields
    property ImageUrl: IJanuaField read GetImageUrl write SetImageUrl;
    property AttachmentUrl: IJanuaField read GetAttachmentUrl write SetAttachmentUrl;
    property ArticleUrl: IJanuaField read GetArticleUrl write SetArticleUrl;
    property AuthorText: string read GetAuthorText write SetAuthorText;
    property Author: IJanuaField read GetAuthor write SetAuthor;
    // Image
    property MainImageId: IJanuaField read GetMainImageId write SetMainImageId;
    property MainAttachId: IJanuaField read GetMainAttachId write SetMainAttachId;
    property ThumbImageId: IJanuaField read GetThumbImageId write SetThumbImageId;

  end;

  TArticleFactory = class
    class function CreateRecord(const aKey: string): IArticle; overload;
    // class function CreateRecordset(aName, aTableName: string): IArticles; overload;
    class function CreateRecordset(const aName: string; const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage)
      : IArticles;

  end;

implementation

uses
  Janua.Application.Framework, Janua.Core.Types, System.StrUtils, JOrm.Cms.ArticlesAttachment.Impl,
  Janua.Cloud.Impl, Janua.Orm.Types;

// ------------------------------------------ Impl TArticle -------------------------------

{ TArticle }
procedure TArticle.CalcFields(Sender: TObject);
begin
  if Article_id.AsInteger > 0 then
  begin
    ImageUrl.AsString := self.MainImageUrl;
    self.AttachmentUrl.AsString := self.GenerateAttachUrl;
    self.ArticleUrl.AsString := '/?page=article&id=' + self.Article_id.AsString;
    self.Author.AsString := self.FAutorText;
  end;
end;

function TArticle.CalcStatePos(aState: Integer): Integer;
var
  i: Integer;
begin
  Result := -1;
  for i := 0 to Pred(FStateList.Count) do
    if FStateList[i].State = aState then
    begin
      Result := i;
      Exit;
    end;
end;

constructor TArticle.Create;
begin
  inherited;
  FStateList := Spring.Collections.TCollections.CreateList<TJanuaState>;
  FStateList.Add(TJanuaState.Create(0, 'Bozza'));
  FStateList.Add(TJanuaState.Create(1, 'Pubblicato'));
  FStateList.Add(TJanuaState.Create(9, 'Archiviato'));
  FStateList.Add(TJanuaState.Create(-1, 'Eliminato'));
  SetEntity(TJanuaEntity.CmsArticles);
  Prefix := 'crtc'; // _jguid
  FImage := -1;
  FAttachment := -1;
  // i campi BLOB non sono ancora implementati ma nemmeno i campi 'memo' che per ora sono mappatisu string
  FArticle_id := AddField(TJanuaOrmFactory.CreateLargeIntField('article_id', 'article_id')); // 0
  FTitle := AddField(TJanuaOrmFactory.CreateStringField('title', 'Title')); // 1
  FAbstract := AddField(TJanuaOrmFactory.CreateStringField('abstract', 'Abstract')); // 2
  FAuthor_id := AddField(TJanuaOrmFactory.CreateIntegerField('author_id', 'Author_id', True)); // 3
  FText := AddField(TJanuaOrmFactory.CreateStringField('text', 'text', 2048, True)); // 4
  // Campo non GestitoText Type= ftWideMemo
  // Campo non GestitoDatetime Type= ftTimeStamp
  FExternal_link := AddField(TJanuaOrmFactory.CreateStringField('external_link', 'External_link')); // 5
  // Campo non GestitoImage Type= ftBlob
  self.FDatetime := TJanuaOrmFactory.CreateDateTimeField('datetime', 'datetime', 0.0, True); // 6
  FDatetimeIndex := AddField(FDatetime);
  FShorttext := AddField(TJanuaOrmFactory.CreateStringField('shorttext', 'Shorttext')); // 7
  FMain_argument_id := AddField(TJanuaOrmFactory.CreateSmallintField('main_argument_id', 'Main_argument_id', True));
  // 8
  FArgument_id := AddField(TJanuaOrmFactory.CreateSmallintField('argument_id', 'Argument_id', True)); // 9
  FSub_argument_id := AddField(TJanuaOrmFactory.CreateSmallintField('sub_argument_id', 'Sub_argument_id', True)); // 10
  FSpecification_id := AddField(TJanuaOrmFactory.CreateSmallintField('specification_id', 'Specification_id', True));
  // 11
  FArticle_key := AddField(TJanuaOrmFactory.CreateStringField('article_key', 'Article_key', 2048, True)); // 12
  FImage_url := AddField(TJanuaOrmFactory.CreateStringField('image_url', 'Image_url', 2048, True)); // 13
  FLanguage_id := AddField(TJanuaOrmFactory.CreateSmallintField('language_id', 'Language_id')); // 14
  FFeed_id := AddField(TJanuaOrmFactory.CreateIntegerField('feed_id', 'Feed_id')); // 15
  // Campo non GestitoImagetext Type= ftWideMemo
  // Campo non GestitoAttachment Type= ftBlob
  FImagetext := AddField(TJanuaOrmFactory.CreateStringField('imagetext', 'imagetext', 2048, True)); // 16
  FHasimage := AddField(TJanuaOrmFactory.CreateBoolField('hasimage', 'Hasimage', True)); // 17
  FHasattach := AddField(TJanuaOrmFactory.CreateBoolField('hasattach', 'Hasattach', True)); // 18
  // Campi Calcolati dipendono dai campi monitorati .......................................
  self.FAttachmentUrl := AddField(TJanuaOrmFactory.CreateStringField('attachmenturl', 'attachmenturl')); // 19
  self.AttachmentUrl.Calculated := True;
  FArticleUrl := AddField(TJanuaOrmFactory.CreateStringField('articleurl', 'articleurl')); // 20
  self.ArticleUrl.Calculated := True;
  FAutor := AddField(TJanuaOrmFactory.CreateStringField('author', 'author')); // 21
  self.Author.Calculated := True;

  FOnChangeActive := True;
  // Image Attachment
  FMainImageId := TJanuaOrmFactory.CreateLargeIntField('main_image_id', 'main_image_id'); // 22
  FMainImageIdIndex := AddField(FMainImageId);
  FImageUrl := TJanuaOrmFactory.CreateStringField('imageurl', 'imageurl'); // 23
  self.FImageUrlIndex := AddField(FImageUrl);
  FImageUrl.Calculated := True;
  self.ImageUrl.Calculated := True;
  FMainAttachId := TJanuaOrmFactory.CreateLargeIntField('main_attach_id', 'main_attach_id'); // 24
  FMainAttachIdIndex := AddField(FMainAttachId);
  FThumbImageId := TJanuaOrmFactory.CreateLargeIntField('thumb_image_id', 'thumb_image_id'); // 25
  FThumbImageIdIndex := AddField(FThumbImageId);
  // problema: un Blob Field al momento non è esportabile in formato 'Json' correttamente essendo
  // un campo Blob. Quindi generebbe un Blob 'Vuoto'.
  FArticle := TJanuaOrmFactory.CreateBlobField('article', 'article'); // 26
  FArticleIndex := AddField(FArticle);
  // expiry_date 27
  self.FExpiryDate := TJanuaOrmFactory.CreateDateTimeField('expiry_date', 'expiry_date'); // 28
  FArticleIndex := AddField(FExpiryDate);
  // state 28
  FState := TJanuaOrmFactory.CreateIntegerField('state', 'state'); // 28
  FArticleIndex := AddField(FState);

  OnCalcFields := self.CalcFields;
  FOnChangeActive := True;

  FAttachments := Tarticles_attachmentFactory.CreateRecordset('attachments', nil, nil);
  AddRecordSet(FAttachments);
end;

function TArticle.GetArticle: IJanuaField;
begin
  Result := self.FArticle
end;

function TArticle.GetArticleUrl: IJanuaField;
begin
  Result := self.Fields[self.FArticleUrl]
end;

function TArticle.GetArticle_id: IJanuaField;
begin
  Result := self.Fields[FArticle_id];
end;

procedure TArticle.SetArticle(const Value: IJanuaField);
begin
  self.FArticle := Value
end;

procedure TArticle.SetArticleUrl(const Value: IJanuaField);
begin
  self.Fields[self.FArticleUrl] := Value;
end;

procedure TArticle.SetArticle_id(const Value: IJanuaField);
begin
  self.Fields[FArticle_id] := Value;
end;

function TArticle.GetTitle: IJanuaField;
begin
  Result := self.Fields[FTitle];
end;

procedure TArticle.SetTitle(const Value: IJanuaField);
begin
  self.Fields[FTitle] := Value;
end;

function TArticle.GenerateAttachUrl: string;
begin
  Result := TCloudFactory.GetFileUrl(MainAttachId.AsLargeInt, '.pdf');
  // IfThen(MainAttachId.AsLargeInt > 0, '/?page=attach&file=' + MainAttachId.AsString + '.pdf', '');
end;

function TArticle.GetAbstract: IJanuaField;
begin
  Result := self.Fields[FAbstract];
end;

procedure TArticle.SetAbstract(const Value: IJanuaField);
begin
  self.Fields[FAbstract] := Value;
end;

function TArticle.GetAuthor: IJanuaField;
begin
  Result := self.Fields[self.FAutor]
end;

function TArticle.GetAuthorText: string;
begin
  Result := self.FAutorText
end;

function TArticle.GetAuthor_id: IJanuaField;
begin
  Result := self.Fields[FAuthor_id];
end;

procedure TArticle.SetAuthor(const Value: IJanuaField);
begin
  self.Fields[self.FAutor] := Value
end;

procedure TArticle.SetAuthorText(const Value: string);
begin
  if FAutorText <> Value then
  begin
    self.FAutorText := Value;
    self.DoCalcFields
  end;
end;

procedure TArticle.SetAuthor_id(const Value: IJanuaField);
begin
  self.Fields[FAuthor_id] := Value;
end;

function TArticle.GetText: IJanuaField;
begin
  Result := self.Fields[FText];
end;

function TArticle.GetThumbImageId: IJanuaField;
begin
  Result := self.FThumbImageId
end;

function TArticle.GetThumbImageUrl: string;
begin
  Result := TCloudFactory.GetImageUrl(ThumbImageId.AsLargeInt, '.jpg');
  // IfThen(ThumbImageId.AsLargeInt > 0, '?page=image&file=' + ThumbImageId.AsString + '.jpg', '');
end;

procedure TArticle.SetText(const Value: IJanuaField);
begin
  self.Fields[FText] := Value;
end;

procedure TArticle.SetThumbImageId(const Value: IJanuaField);
begin
  FThumbImageId := Value
end;

function TArticle.GetDateText: IJanuaField;
begin
  Result := self.FDateText
end;

function TArticle.GetDatetime: IJanuaField;
begin
  Result := FDatetime;
end;

procedure TArticle.SetDateText(const Value: IJanuaField);
begin
  self.FDateText := Value
end;

procedure TArticle.SetDatetime(const Value: IJanuaField);
begin
  FDatetime := Value;
end;

procedure TArticle.SetDefault;
begin
  inherited;
  Fields[FLanguage_id].AsInteger := TJanuaApplication.LanguageID;
  // FAuthor_id
  Fields[FAuthor_id].AsInteger := TJanuaApplication.DBUserID;
end;

function TArticle.GetExpiryDate: IJanuaField;
begin
  Result := self.FExpiryDate
end;

function TArticle.GetExternal_link: IJanuaField;
begin
  Result := self.Fields[FExternal_link];
end;

procedure TArticle.SetExpiryDate(const Value: IJanuaField);
begin
  self.FExpiryDate := Value
end;

procedure TArticle.SetExternal_link(const Value: IJanuaField);
begin
  self.Fields[FExternal_link] := Value;
end;

function TArticle.GetImage: IJanuaField;
begin
  Result := self.Fields[FImage];
end;

procedure TArticle.SetImage(const Value: IJanuaField);
begin
  self.Fields[FImage] := Value;
end;

function TArticle.GetShorttext: IJanuaField;
begin
  Result := self.Fields[FShorttext];
end;

procedure TArticle.SetShorttext(const Value: IJanuaField);
begin
  self.Fields[FShorttext] := Value;
end;

function TArticle.GetMainAttachId: IJanuaField;
begin
  Result := FMainAttachId
end;

function TArticle.GetMainImageId: IJanuaField;
begin
  Result := self.FMainImageId
end;

function TArticle.GetMainImageUrl: string;
begin
  // Result := 'http://cdn.ergomercator.com/images/lndimage.jpg';
  // Result := IfThen(MainImageId.AsLargeInt > 0, '?page=image&file=' + MainImageId.AsString + '.jpg', '');
  Result := TCloudFactory.GetImageUrl(MainImageId.AsLargeInt, '.jpg');
end;

function TArticle.GetMain_argument_id: IJanuaField;
begin
  Result := self.Fields[FMain_argument_id];
end;

procedure TArticle.SetMainAttachId(const Value: IJanuaField);
begin
  self.FMainAttachId := Value
end;

procedure TArticle.SetMainImageId(const Value: IJanuaField);
begin
  FMainImageId := Value
end;

procedure TArticle.SetMain_argument_id(const Value: IJanuaField);
begin
  self.Fields[FMain_argument_id] := Value;
end;

function TArticle.GetArgument_id: IJanuaField;
begin
  Result := self.Fields[FArgument_id];
end;

procedure TArticle.SetArgument_id(const Value: IJanuaField);
begin
  self.Fields[FArgument_id] := Value;
end;

function TArticle.GetSub_argument_id: IJanuaField;
begin
  Result := self.Fields[FSub_argument_id];
end;

procedure TArticle.SetSub_argument_id(const Value: IJanuaField);
begin
  self.Fields[FSub_argument_id] := Value;
end;

function TArticle.GetSpecification_id: IJanuaField;
begin
  Result := self.Fields[FSpecification_id];
end;

function TArticle.GetState: IJanuaField;
begin
  Result := self.FState
end;

function TArticle.GetStateList: IList<TJanuaState>;
begin
  Result := self.FStateList
end;

function TArticle.GetStatePos: Integer;
begin
  Result := self.CalcStatePos(self.State.AsInteger)
end;

procedure TArticle.SetSpecification_id(const Value: IJanuaField);
begin
  self.Fields[FSpecification_id] := Value;
end;

procedure TArticle.SetState(const Value: IJanuaField);
begin
  self.FState := Value;
end;

procedure TArticle.SetStateList(const Value: IList<TJanuaState>);
begin
  FStateList := Value
end;

procedure TArticle.SetStatePos(const Value: Integer);
begin
  self.State.AsInteger := self.FStateList[Value].State
end;

function TArticle.GetArticle_key: IJanuaField;
begin
  Result := self.Fields[FArticle_key];
end;

procedure TArticle.SetArticle_key(const Value: IJanuaField);
begin
  self.Fields[FArticle_key] := Value;
end;

function TArticle.GetImage_url: IJanuaField;
begin
  Result := self.Fields[FImage_url];
end;

procedure TArticle.SetImage_url(const Value: IJanuaField);
begin
  self.Fields[FImage_url] := Value;
end;

function TArticle.GetLanguage_id: IJanuaField;
begin
  Result := self.Fields[FLanguage_id];
end;

procedure TArticle.SetLanguage_id(const Value: IJanuaField);
begin
  self.Fields[FLanguage_id] := Value;
end;

function TArticle.GetFeed_id: IJanuaField;
begin
  Result := self.Fields[FFeed_id];
end;

procedure TArticle.SetFeed_id(const Value: IJanuaField);
begin
  self.Fields[FFeed_id] := Value;
end;

function TArticle.GetImagetext: IJanuaField;
begin
  Result := self.Fields[FImagetext];
end;

function TArticle.GetImageUrl: IJanuaField;
begin
  self.FImageUrl.AsString := self.MainImageUrl;
  Result := self.FImageUrl;
end;

procedure TArticle.SetImagetext(const Value: IJanuaField);
begin
  self.Fields[FImagetext] := Value;
end;

procedure TArticle.SetImageUrl(const Value: IJanuaField);
begin
  FImageUrl := Value
end;

function TArticle.GetAttachment: IJanuaField;
begin
  Result := self.Fields[FAttachment];
end;

function TArticle.GetAttachments: IArticlesAttachments;
begin
  Result := FAttachments;
end;

function TArticle.GetAttachmentUrl: IJanuaField;
begin
  Result := self.Fields[self.FAttachmentUrl]
end;

function TArticle.GetAttachUrl: string;
begin
  Result := TCloudFactory.GetFileUrl(FMainAttachId.AsLargeInt, '.pdf');
  // IfThen(self.FMainAttachId.AsLargeInt > 0, '?page=attach&file=' + FMainAttachId.AsString + '.pdf', '');
end;

procedure TArticle.SetAttachment(const Value: IJanuaField);
begin
  self.Fields[FAttachment] := Value;
end;

procedure TArticle.SetAttachments(const Value: IArticlesAttachments);
begin
  FAttachments := Value;
end;

procedure TArticle.SetAttachmentUrl(const Value: IJanuaField);
begin
  self.Fields[self.FAttachmentUrl] := Value
end;

function TArticle.GetHasimage: IJanuaField;
begin
  Result := self.Fields[FHasimage];
end;

procedure TArticle.SetHasimage(const Value: IJanuaField);
begin
  self.Fields[FHasimage] := Value;
end;

function TArticle.GetHasattach: IJanuaField;
begin
  Result := self.Fields[FHasattach];
end;

procedure TArticle.SetHasattach(const Value: IJanuaField);
begin
  self.Fields[FHasattach] := Value;
end;

{ TArticles }
constructor TArticles.Create;
begin
  inherited;
  self.FRecord := TArticleFactory.CreateRecord('Article')
end;

function TArticles.GetArticle_id: IJanuaField;
begin
  Result := self.Article.Article_id;
end;

procedure TArticles.SetArticle_id(const Value: IJanuaField);
begin
  self.Article.Article_id := Value;
end;

function TArticles.GetTitle: IJanuaField;
begin
  Result := self.Article.Title;
end;

procedure TArticles.SetTitle(const Value: IJanuaField);
begin
  self.Article.Title := Value;
end;

function TArticles.GetAbstract: IJanuaField;
begin
  Result := self.Article.Abstract;
end;

procedure TArticles.SetAbstract(const Value: IJanuaField);
begin
  self.Article.Abstract := Value;
end;

function TArticles.GetAuthor: IJanuaField;
begin
  Result := self.Article.Author
end;

function TArticles.GetAuthorText: string;
begin
  Result := self.Article.AuthorText
end;

function TArticles.GetAuthor_id: IJanuaField;
begin
  Result := self.Article.Author_id;
end;

procedure TArticles.SetAuthor(const Value: IJanuaField);
begin
  self.Article.Author := Value
end;

procedure TArticles.SetAuthorText(const Value: string);
begin
  self.Article.AuthorText
end;

procedure TArticles.SetAuthor_id(const Value: IJanuaField);
begin
  self.Article.Author_id := Value;
end;

function TArticles.GetText: IJanuaField;
begin
  Result := self.Article.Text;
end;

procedure TArticles.SetText(const Value: IJanuaField);
begin
  self.Article.Text := Value;
end;

function TArticles.GetDatetime: IJanuaField;
begin
  Result := self.Article.Datetime;
end;

procedure TArticles.SetDatetime(const Value: IJanuaField);
begin
  self.Article.Datetime := Value;
end;

function TArticles.GetExpiryDate: IJanuaField;
begin
  Result := self.Article.ExpiryDate;
end;

function TArticles.GetExternal_link: IJanuaField;
begin
  Result := self.Article.External_link;
end;

procedure TArticles.SetExpiryDate(const Value: IJanuaField);
begin
  self.Article.ExpiryDate := Value
end;

procedure TArticles.SetExternal_link(const Value: IJanuaField);
begin
  self.Article.External_link := Value;
end;

function TArticles.GetImage: IJanuaField;
begin
  Result := self.Article.Image;
end;

procedure TArticles.SetImage(const Value: IJanuaField);
begin
  self.Article.Image := Value;
end;

function TArticles.GetShorttext: IJanuaField;
begin
  Result := self.Article.Shorttext;
end;

procedure TArticles.SetShorttext(const Value: IJanuaField);
begin
  self.Article.Shorttext := Value;
end;

function TArticles.GetMain_argument_id: IJanuaField;
begin
  Result := self.Article.Main_argument_id;
end;

procedure TArticles.SetMain_argument_id(const Value: IJanuaField);
begin
  self.Article.Main_argument_id := Value;
end;

function TArticles.GetArgument_id: IJanuaField;
begin
  Result := self.Article.Argument_id;
end;

procedure TArticles.SetArgument_id(const Value: IJanuaField);
begin
  self.Article.Argument_id := Value;
end;

function TArticles.GetSub_argument_id: IJanuaField;
begin
  Result := self.Article.Sub_argument_id;
end;

procedure TArticles.SetSub_argument_id(const Value: IJanuaField);
begin
  self.Article.Sub_argument_id := Value;
end;

function TArticles.GetSpecification_id: IJanuaField;
begin
  Result := self.Article.Specification_id;
end;

function TArticles.GetState: IJanuaField;
begin
  Result := self.Article.State
end;

procedure TArticles.SetSpecification_id(const Value: IJanuaField);
begin
  self.Article.Specification_id := Value;
end;

procedure TArticles.SetState(const Value: IJanuaField);
begin
  self.Article.State := Value
end;

function TArticles.GetArticle_key: IJanuaField;
begin
  Result := self.Article.Article_key;
end;

procedure TArticles.SetArticle_key(const Value: IJanuaField);
begin
  self.Article.Article_key := Value;
end;

function TArticles.GetImage_url: IJanuaField;
begin
  Result := self.Article.Image_url;
end;

procedure TArticles.SetImage_url(const Value: IJanuaField);
begin
  self.Article.Image_url := Value;
end;

function TArticles.GetLanguage_id: IJanuaField;
begin
  Result := self.Article.Language_id;
end;

procedure TArticles.SetLanguage_id(const Value: IJanuaField);
begin
  self.Article.Language_id := Value;
end;

function TArticles.GetFeed_id: IJanuaField;
begin
  Result := self.Article.Feed_id;
end;

procedure TArticles.SetFeed_id(const Value: IJanuaField);
begin
  self.Article.Feed_id := Value;
end;

function TArticles.GetImagetext: IJanuaField;
begin
  Result := self.Article.Imagetext;
end;

function TArticles.GetImageUrl: IJanuaField;
begin
  Result := self.Article.ImageUrl
end;

procedure TArticles.SetImagetext(const Value: IJanuaField);
begin
  self.Article.Imagetext := Value;
end;

procedure TArticles.SetImageUrl(const Value: IJanuaField);
begin
  self.Article.ImageUrl := Value
end;

function TArticles.GetAttachment: IJanuaField;
begin
  Result := self.Article.Attachment;
end;

function TArticles.GetAttachmentUrl: IJanuaField;
begin
  Result := self.Article.AttachmentUrl
end;

procedure TArticles.SetAttachment(const Value: IJanuaField);
begin
  self.Article.Attachment := Value;
end;

procedure TArticles.SetAttachmentUrl(const Value: IJanuaField);
begin
  self.Article.AttachmentUrl := Value
end;

function TArticles.GetHasimage: IJanuaField;
begin
  Result := self.Article.Hasimage;
end;

procedure TArticles.SetHasimage(const Value: IJanuaField);
begin
  self.Article.Hasimage := Value;
end;

function TArticles.GetHasattach: IJanuaField;
begin
  Result := self.Article.Hasattach;
end;

procedure TArticles.SetHasattach(const Value: IJanuaField);
begin
  self.Article.Hasattach := Value;
end;

function TArticles.GetArticle: IArticle;
begin
  Result := self.FRecord as IArticle;
end;

function TArticles.GetArticleUrl: IJanuaField;
begin
  Result := self.Article.ArticleUrl
end;

procedure TArticles.SetArticle(const Value: IArticle);
begin
  self.FRecord := Value;
end;

procedure TArticles.SetArticleUrl(const Value: IJanuaField);
begin
  self.Article.ArticleUrl := Value
end;

function TArticles.GetMainImageId: IJanuaField;
begin
  Result := self.Article.MainImageId;
end;

procedure TArticles.SetMainImageId(const Value: IJanuaField);
begin
  self.Article.MainImageId := Value;
end;

function TArticles.GetMainAttachId: IJanuaField;
begin
  Result := self.Article.MainAttachId;
end;

procedure TArticles.SetMainAttachId(const Value: IJanuaField);
begin
  self.Article.MainAttachId := Value;
end;

function TArticles.GetThumbImageId: IJanuaField;
begin
  Result := self.Article.ThumbImageId;
end;

procedure TArticles.SetThumbImageId(const Value: IJanuaField);
begin
  self.Article.ThumbImageId := Value;
end;

{ TArticlesFactory }

class function TArticleFactory.CreateRecord(const aKey: string): IArticle;
begin
  Result := TArticle.Create;
end;

class function TArticleFactory.CreateRecordset(const aName: string;
  const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage): IArticles;
begin
  Result := TArticles.Create(aName, aLocalStorage, aRemoteStorage);
end;

end.
