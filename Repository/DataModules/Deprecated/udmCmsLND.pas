unit udmCmsLND;

interface

uses
  System.SysUtils, System.Classes, udmPgCms, Janua.Core.Classes, Janua.Core.Exceptions, Data.DB, Uni, Janua.Unidac.Connection, ,
  MemDS, DBAccess, udmJanuaPostgresModel, Datasnap.Provider, Datasnap.DBClient, VirtualTable, MemData,
  /// Januaproject
  JOrm.Cms.Articles.Intf;

type
  TdmCmsLND = class(TdmPgCms)
    qryArgumentsArticles: TUniQuery;
    qryArgumentsArticlesarticle_id: TLargeintField;
    qryArgumentsArticlestitle: TWideStringField;
    qryArgumentsArticlesabstract: TWideStringField;
    qryArgumentsArticlesauthor_id: TIntegerField;
    qryArgumentsArticlestext: TWideMemoField;
    qryArgumentsArticlesdatetime: TSQLTimeStampField;
    qryArgumentsArticlesexternal_link: TWideStringField;
    qryArgumentsArticlesimage: TBlobField;
    qryArgumentsArticlesshorttext: TWideStringField;
    qryArgumentsArticlesmain_argument_id: TSmallintField;
    qryArgumentsArticlesargument_id: TSmallintField;
    qryArgumentsArticlessub_argument_id: TSmallintField;
    qryArgumentsArticlesspecification_id: TSmallintField;
    qryArgumentsArticlesarticle_key: TWideStringField;
    qryArgumentsArticlesimage_url: TWideStringField;
    qryArgumentsArticleslanguage_id: TSmallintField;
    qryArgumentsArticlesfeed_id: TIntegerField;
    qryArgumentsArticlesimagetext: TWideMemoField;
    qryArgumentsArticlesattachment: TBlobField;
    qryArgumentsArticleshasimage: TBooleanField;
    qryArgumentsArticleshasattach: TBooleanField;
    qryArticlesList: TUniQuery;
    qryArticlesListarticle_id: TLargeintField;
    qryArticlesListtitle: TWideStringField;
    qryArticlesListabstract: TWideStringField;
    qryArticlesListauthor_id: TIntegerField;
    qryArticlesListtext: TWideMemoField;
    qryArticlesListdatetime: TSQLTimeStampField;
    qryArticlesListexternal_link: TWideStringField;
    qryArticlesListshorttext: TWideStringField;
    qryArticlesListmain_argument_id: TSmallintField;
    qryArticlesListargument_id: TSmallintField;
    qryArticlesListsub_argument_id: TSmallintField;
    qryArticlesListspecification_id: TSmallintField;
    qryArticlesListarticle_key: TWideStringField;
    qryArticlesListimage_url: TWideStringField;
    qryArticlesListlanguage_id: TSmallintField;
    qryArticlesListfeed_id: TIntegerField;
    qryArticlesListimagetext: TWideMemoField;
    qryArticlesListhasimage: TBooleanField;
    qryArticlesListhasattach: TBooleanField;
    qryArticlesImages: TUniQuery;
    qryArticlesImagesarticle_id: TLargeintField;
    qryArticlesImagesimage: TBlobField;
    main_argumentscmar_jguid: TWideStringField;
    main_argumentscmar_deleted: TBooleanField;
    qryArgumentsArticlescrtc_jguid: TWideStringField;
    qryArgumentsArticlescrtc_deleted: TBooleanField;
    qryArticlesListimage: TBlobField;
    qryArticlesListattachment: TBlobField;
    qryArticlesListcrtc_jguid: TWideStringField;
    qryArticlesListcrtc_deleted: TBooleanField;
    qryArgumentsArticlesmain_image_id: TLargeintField;
    qryArgumentsArticlesmain_attach_id: TLargeintField;
    qryArgumentsArticlesthumb_image_id: TLargeintField;
    qryArgumentsArticlesdb_schema_id: TLargeintField;
    main_argumentsdb_schema_id: TIntegerField;
    main_argumentsma_image_id: TLargeintField;
    procedure DataModuleCreate(Sender: TObject);
    procedure qryArgumentsArticlesNewRecord(DataSet: TDataSet);
    procedure main_argumentsNewRecord(DataSet: TDataSet);
    procedure main_argumentsBeforeOpen(DataSet: TDataSet);
    procedure argumentsBeforeOpen(DataSet: TDataSet);
    procedure qryArgumentsArticlesBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure OpenArticlesList;
    function GetArticleImage(aArticleID: Integer): TBlob;
  end;

var
  dmCmsLND: TdmCmsLND;

implementation

uses JOrm.Cms.Articles.Impl, Janua.Core.Functions;

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

procedure TdmCmsLND.argumentsBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  arguments.ParamByName('db_schema_id').AsInteger :=
    Janua.Core.Classes.JanuaApplicationGlobalProfile.DBSchemaID;
end;

procedure TdmCmsLND.DataModuleCreate(Sender: TObject);
begin
  inherited;
  self.main_arguments.Open;
  self.arguments.Open;
  self.qryArgumentsArticles.Open;
end;

function TdmCmsLND.GetArticleImage(aArticleID: Integer): TBlob;
begin
  self.qryArticlesImages.Close;
  self.qryArticlesImages.ParamByName('article_id').AsLargeInt := aArticleID;
  self.qryArticlesImages.Open;
  Result := MemData.TBlob.Create(False);
  if qryArticlesImages.RecordCount > 0 then
  begin
    Janua.Core.Functions.StoreFieldToBlob(self.qryArticlesImagesimage, Result);
  end;

end;

procedure TdmCmsLND.OpenArticlesList;
begin
  qryArticlesList.Close;
  qryArticlesList.Open;
 // Result := TArticleFactory.CreateRecordset('Articles', nil, nil);
 // Result.LoadFromDataset(self.qryArticlesList, []);
end;

procedure TdmCmsLND.main_argumentsBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  main_arguments.ParamByName('db_schema_id').AsInteger :=
    Janua.Core.Classes.JanuaApplicationGlobalProfile.DBSchemaID;
end;

procedure TdmCmsLND.main_argumentsNewRecord(DataSet: TDataSet);
begin
  inherited;
  main_argumentsdb_schema_id.AsInteger := Janua.Core.Classes.JanuaApplicationGlobalProfile.DBSchemaID;
end;

procedure TdmCmsLND.qryArgumentsArticlesBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  qryArgumentsArticles.ParamByName('db_schema_id').AsInteger :=
    Janua.Core.Classes.JanuaApplicationGlobalProfile.DBSchemaID;
end;

procedure TdmCmsLND.qryArgumentsArticlesNewRecord(DataSet: TDataSet);
begin
  inherited;
  ServerFunctions.OpenDataset(self.qryArticlesSeq);
  self.qryArgumentsArticlesarticle_id.AsLargeInt := qryArticlesSeqnextval.AsLargeInt;
  self.qryArgumentsArticlesdatetime.AsDateTime := qryArticlesSeqsysdate.AsDateTime;
  WriteLog('Inserimento nuovo Articolo: ' + qryArticlesSeqnextval.AsString + ' -- ' +
    qryArticlesSeqsysdate.AsString);
  qryArticlesSeq.Close;
  qryArgumentsArticles.FieldByName('db_schema_id').AsInteger :=
    Janua.Core.Classes.JanuaApplicationGlobalProfile.DBSchemaID;
end;

end.
