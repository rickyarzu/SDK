unit udmCMSViewModel;

interface

uses
  System.Zip, System.SysUtils, System.Classes, Spring.Collections,
  // DB
  Data.DB, Datasnap.DBClient, Datasnap.Provider, MemDS, DBAccess, Uni, Janua.Postgres.Cloud,
  // VCL
  // AdvGlowButton,
  JvRadioGroup, VCL.Menus, VCL.ExtDlgs, VCL.Dialogs, VCL.StdCtrls, VCL.ExtCtrls,
  AdvDateTimePicker,
  // Jedi
  JvBaseDlg, JvSelectDirectory, JvDBLookup, Janua.Controls.Editors.Intf, Janua.Components.Dialogs,
  // Janua
  JOrm.Cms.Articles.Intf, Janua.VCL.Cloud.Files, Janua.VCL.Cloud.Images, Janua.Core.Classes, Janua.VCL.OS,
  Janua.Core.Customcontrols, Janua.VCL.Dialogs, Janua.Cloud.Images.Intf, VirtualTable, Janua.Core.Mail,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.StorageBin, FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.Actions,
  VCL.ActnList,
  Janua.Core.Legacy, Janua.Core.Commons,  Janua.Components.Mail;

type
  TBannerProc = procedure(const aRecordCount: integer; const aModified: boolean) of object;
  TDatasetProc = procedure(const aDataset: TDataset) of object;

  TCmsTabPages = (Articles, Anagraphs, Mails, Ads, Attachments, Images, Others);

  TdmCMSViewModel = class(TDataModule)
    dsProvider: TDataSetProvider;
    cdsMainArguments: TClientDataSet;
    dsMainArguments: TDataSource;
    cdsArguments: TClientDataSet;
    dsArguments: TDataSource;
    cdsArgumentsArticles: TClientDataSet;
    dsArgumentsArticles: TDataSource;
    qryMainArgumentsSeq: TUniQuery;
    qryMainArgumentsSeqnextval: TLargeintField;
    qryMainArgumentsSeqsysdate: TSQLTimeStampField;
    qryMainArgumentsSeqget_key: TWideMemoField;
    qryArgumentsSeq: TUniQuery;
    qryArgumentsSeqnextval: TLargeintField;
    qryArgumentsSeqsysdate: TSQLTimeStampField;
    qryArgumentsSeqget_key: TWideMemoField;
    dsArticles: TDataSource;
    dsArgumentsArticlesFiles: TDataSource;
    dsBlobs: TDataSource;
    OpenDialogPDF: TOpenDialog;
    OpenPictureDialog1: TOpenPictureDialog;
    OpenDialogResources: TOpenDialog;
    dspBlob: TDataSetProvider;
    cdsSearchBlobFiles: TClientDataSet;
    dsImages: TDataSource;
    dspImages: TDataSetProvider;
    cdsImages: TClientDataSet;
    SavePictureDialog1: TSavePictureDialog;
    dspArticlesAttachment: TDataSetProvider;
    cdsMainArgumentsmain_argument_id: TSmallintField;
    cdsMainArgumentsmain_argument_des: TWideStringField;
    cdsMainArgumentscmar_jguid: TWideStringField;
    cdsMainArgumentscmar_deleted: TBooleanField;
    cdsMainArgumentspos: TSmallintField;
    cdsMainArgumentsdb_schema_id: TIntegerField;
    cdsMainArgumentsma_image_id: TLargeintField;
    cdsMainArgumentsarguments: TDataSetField;
    cdsArgumentsmain_argument_id: TSmallintField;
    cdsArgumentsargument_id: TSmallintField;
    cdsArgumentsargument_des: TWideStringField;
    cdsArgumentscode: TWideStringField;
    cdsArgumentspos: TSmallintField;
    cdsArgumentsdb_schema_id: TIntegerField;
    cdsArgumentscarg_jguid: TWideStringField;
    cdsArgumentscarg_deleted: TBooleanField;
    cdsArgumentsleague_id: TSmallintField;
    cdsArgumentslkpLeague: TStringField;
    cdsArgumentsqryArgumentsArticles: TDataSetField;
    cdsArgumentssub_arguments: TDataSetField;
    cdsArgumentsArticlesarticle_id: TLargeintField;
    cdsArgumentsArticlestitle: TWideStringField;
    cdsArgumentsArticlesabstract: TWideStringField;
    cdsArgumentsArticlesauthor_id: TIntegerField;
    cdsArgumentsArticlesexternal_link: TWideStringField;
    cdsArgumentsArticlesmain_argument_id: TSmallintField;
    cdsArgumentsArticlesargument_id: TSmallintField;
    cdsArgumentsArticlessub_argument_id: TSmallintField;
    cdsArgumentsArticlesspecification_id: TSmallintField;
    cdsArgumentsArticlesimage_url: TWideStringField;
    cdsArgumentsArticleslanguage_id: TSmallintField;
    cdsArgumentsArticlesfeed_id: TIntegerField;
    cdsArgumentsArticlescrtc_jguid: TWideStringField;
    cdsArgumentsArticlescrtc_deleted: TBooleanField;
    cdsArgumentsArticlesmain_image_id: TLargeintField;
    cdsArgumentsArticlesmain_attach_id: TLargeintField;
    cdsArgumentsArticlesthumb_image_id: TLargeintField;
    cdsArgumentsArticlesdb_schema_id: TIntegerField;
    cdsArgumentsArticlesarticle: TBlobField;
    cdsArgumentsArticlesdatetime: TSQLTimeStampField;
    cdsArgumentsArticlesAttachmentsOld: TClientDataSet;
    dsArgumentsArticlesChange: TDataSource;
    dsAttach: TDataSource;
    vtFilesList: TVirtualTable;
    vtFilesListFileName: TStringField;
    vtFilesListExt: TStringField;
    vtFilesListProgress: TSmallintField;
    vtFilesListFullFileName: TStringField;
    dspMainArgumentsMails: TDataSetProvider;
    cdsMainArgumentsMails: TClientDataSet;
    cdsMainArgumentsMailsmain_argument_id: TSmallintField;
    cdsMainArgumentsMailsmail_id: TIntegerField;
    cdsMainArgumentsMailsdb_schema_id: TIntegerField;
    cdsMainArgumentsMailsemail: TWideStringField;
    cdsMainArgumentsMailscmls_jguid: TWideStringField;
    JanuaMailSender1: TJanuaMailSender;
    JanuaCoreLogger1: TJanuaCoreLogger;
    qryMailsSeq: TUniQuery;
    qryMailsSeqnextval: TLargeintField;
    qryMailsSeqsysdate: TSQLTimeStampField;
    qryMailsSeqget_key: TWideMemoField;
    fdArticleState: TFDMemTable;
    fdArticleStatestate: TSmallintField;
    fdArticleStatedescription: TStringField;
    ActionListArticle: TActionList;
    ActArticlePublish: TAction;
    ActArticleDelete: TAction;
    ActArticleMainAttachUpload: TAction;
    ActArticleMultiAttachUpload: TAction;
    ActShowMainAttach: TAction;
    ActiArticleArchive: TAction;
    ActArticleDraft: TAction;
    dspAdsBanners: TDataSetProvider;
    cdsAdsBanners: TClientDataSet;
    cdsAdsBannersimage_url: TWideStringField;
    cdsAdsBannerstarget_url: TWideStringField;
    cdsAdsBannersvisions: TLargeintField;
    cdsAdsBannersclicks: TLargeintField;
    cdsAdsBannerscustomer_id: TIntegerField;
    cdsAdsBannersdb_schema_id: TIntegerField;
    cdsAdsBannersabnn_jguid: TWideStringField;
    cdsAdsBannersabnn_deleted: TBooleanField;
    cdsAdsBannersimage_id: TLargeintField;
    cdsAdsBannersanagraph_id: TIntegerField;
    cdsAdsBannerstitle: TWideStringField;
    dsAdsBanners: TDataSource;
    ActArticleInsertImage: TAction;
    ActArticleNew: TAction;
    ActArticleSendMail: TAction;
    AdsNewRecord: TAction;
    AdsDeleteRecord: TAction;
    AdsSaveRecord: TAction;
    qryBannersSeq: TUniQuery;
    qryBannersSeqnextval: TLargeintField;
    qryBannersSeqsysdate: TSQLTimeStampField;
    cdsAdsBannersnumber: TLargeintField;
    cdsArgumentsArticlesimage: TBlobField;
    cdsArgumentsArticlesshorttext: TWideStringField;
    cdsArgumentsArticlesarticle_key: TWideStringField;
    cdsArgumentsArticlesimagetext: TWideMemoField;
    cdsArgumentsArticlesattachment: TBlobField;
    cdsArgumentsArticleshasimage: TBooleanField;
    cdsArgumentsArticleshasattach: TBooleanField;
    cdsArgumentsArticlesmain_attach_zip_id: TLargeintField;
    cdsArgumentsArticlesexpiry_date: TDateField;
    cdsArgumentsArticlesstate: TSmallintField;
    cdsArgumentsArticlesAttachmentsOldarticle_id: TLargeintField;
    cdsArgumentsArticlesAttachmentsOldfile_id: TLargeintField;
    cdsArgumentsArticlesAttachmentsOlddescription: TWideStringField;
    cdsArgumentsArticlesAttachmentsOldextension: TWideStringField;
    cdsArgumentsArticlesAttachmentsOldmime: TWideStringField;
    cdsArgumentsArticlesAttachmentsOlddb_schema_id: TLargeintField;
    cdsArgumentsArticlesAttachmentsOldcmaa_deleted: TBooleanField;
    cdsArgumentsArticlesAttachmentsOldcmaa_jguid: TWideStringField;
    PgDataSource1: TUniDataSource;
    cdsArgumentsArticlesAttachments: TUniQuery;
    cdsArgumentsArticlesAttachmentsarticle_id: TLargeintField;
    cdsArgumentsArticlesAttachmentsfile_id: TLargeintField;
    cdsArgumentsArticlesAttachmentsdescription: TWideStringField;
    cdsArgumentsArticlesAttachmentsextension: TWideStringField;
    cdsArgumentsArticlesAttachmentsmime: TWideStringField;
    cdsArgumentsArticlesAttachmentsdb_schema_id: TLargeintField;
    cdsArgumentsArticlesAttachmentscmaa_deleted: TBooleanField;
    cdsArgumentsArticlesAttachmentscmaa_jguid: TWideStringField;
    ActMenuEdit: TAction;
    ActMenuDefaultImage: TAction;
    cdsImagesexternal_file_id: TLargeintField;
    cdsImagescimg_jguid: TWideStringField;
    cdsImagesdb_schema_id: TIntegerField;
    cdsImagesdb_owner_id: TIntegerField;
    cdsImagesfilename: TWideStringField;
    cdsImagesfile_ext: TWideStringField;
    cdsImagesfilename_noext: TWideStringField;
    cdsImagesext_file_key: TWideStringField;
    cdsImagescover_image_id: TLargeintField;
    cdsImagescimg_deleted: TBooleanField;
    cdsImagesimage_file: TBlobField;
    ActAttachUpload: TAction;
    ActAttachFolderUpload: TAction;
    ActAttachSaveUpdates: TAction;
    ActAttachFilePreview: TAction;
    ActEmailSaveUpdates: TAction;
    cdsSearchBlobFilesblob_id: TLargeintField;
    cdsSearchBlobFilesblob_size: TLargeintField;
    cdsSearchBlobFilesdb_schema_id: TIntegerField;
    cdsSearchBlobFilesblob_key: TWideStringField;
    cdsSearchBlobFilesdb_user_id: TIntegerField;
    cdsSearchBlobFilesispublic: TBooleanField;
    cdsSearchBlobFilescblb_jguid: TWideStringField;
    cdsSearchBlobFilescblb_deleted: TBooleanField;
    cdsSearchBlobFilesfile_ext: TWideStringField;
    cdsSearchBlobFilesfilename: TWideStringField;
    cdsSearchBlobFilesisresource: TBooleanField;
    cdsSearchBlobFilesfile_name: TWideStringField;
    ActListArticlesShow: TAction;
    ActListArticlesDraft: TAction;
    ActListArticlesDeleted: TAction;
    ActImageUpload: TAction;
    ActImageNew: TAction;
    cdsAdsBannerswidth: TIntegerField;
    cdsAdsBannersheight: TIntegerField;
    cdsAdsBannerssince: TDateField;
    cdsAdsBannersuntil: TDateField;
    OpenDialogTxt: TOpenDialog;
    ActEmailInsertListFile: TAction;
    ActArticleMainAttachDelete: TAction;
    h: TWideMemoField;
    procedure cdsArgumentsAfterPost(DataSet: TDataset);
    procedure cdsArgumentsBeforePost(DataSet: TDataset);
    procedure cdsMainArgumentsAfterPost(DataSet: TDataset);
    procedure cdsMainArgumentsNewRecord(DataSet: TDataset);
    procedure cdsMainArgumentsBeforePost(DataSet: TDataset);
    procedure DataModuleCreate(Sender: TObject);
    procedure cdsArticlesAttachmentsBeforeOpen(DataSet: TDataset);
    procedure cdsArgumentsArticlesBeforePost(DataSet: TDataset);
    procedure cdsArgumentsArticlesAfterScroll(DataSet: TDataset);
    procedure DataModuleDestroy(Sender: TObject);
    procedure cdsMainArgumentsReconcileError(DataSet: TCustomClientDataSet; E: EReconcileError;
      UpdateKind: TUpdateKind; var Action: TReconcileAction);
    procedure cdsArgumentsArticlesAttachmentsOldReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
    procedure cdsMainArgumentsMailsBeforePost(DataSet: TDataset);
    procedure cdsMainArgumentsMailsBeforeOpen(DataSet: TDataset);
    procedure ActArticleMainAttachUploadExecute(Sender: TObject);
    procedure ActArticlePublishExecute(Sender: TObject);
    procedure ActArticleMultiAttachUploadExecute(Sender: TObject);
    procedure ActShowMainAttachExecute(Sender: TObject);
    procedure ActArticleDeleteExecute(Sender: TObject);
    procedure ActiArticleArchiveExecute(Sender: TObject);
    procedure ActArticleDraftExecute(Sender: TObject);
    procedure cdsAdsBannersAfterScroll(DataSet: TDataset);
    procedure ActArticleInsertImageExecute(Sender: TObject);
    procedure ActArticleNewExecute(Sender: TObject);
    procedure ActDeleteArticleExecute(Sender: TObject);
    procedure ActArticleSendMailExecute(Sender: TObject);
    procedure dsMainArgumentsDataChange(Sender: TObject; Field: TField);
    procedure AdsNewRecordExecute(Sender: TObject);
    procedure AdsDeleteRecordExecute(Sender: TObject);
    procedure AdsSaveRecordExecute(Sender: TObject);
    procedure cdsAdsBannersBeforePost(DataSet: TDataset);
    procedure dsAdsBannersDataChange(Sender: TObject; Field: TField);
    procedure dsArgumentsArticlesChangeDataChange(Sender: TObject; Field: TField);
    procedure cdsArgumentsArticlesAttachmentsBeforePost(DataSet: TDataset);
    procedure cdsArgumentsArticlesAttachmentsNewRecord(DataSet: TDataset);
    procedure ActMenuEditExecute(Sender: TObject);
    procedure ActMenuDefaultImageExecute(Sender: TObject);
    procedure ActAttachUploadExecute(Sender: TObject);
    procedure ActAttachFolderUploadExecute(Sender: TObject);
    procedure ActAttachSaveUpdatesExecute(Sender: TObject);
    procedure ActAttachFilePreviewExecute(Sender: TObject);
    procedure ActEmailSaveUpdatesExecute(Sender: TObject);
    procedure ActListArticlesShowExecute(Sender: TObject);
    procedure ActListArticlesDraftExecute(Sender: TObject);
    procedure ActListArticlesDeletedExecute(Sender: TObject);
    procedure ActImageUploadExecute(Sender: TObject);
    procedure ActEmailInsertListFileExecute(Sender: TObject);
    procedure ActArticleMainAttachDeleteExecute(Sender: TObject);
    procedure cdsAdsBannersAfterOpen(DataSet: TDataset);
    procedure cdsAdsBannersAfterDelete(DataSet: TDataset);
    procedure cdsAdsBannersAfterApplyUpdates(Sender: TObject; var OwnerData: OleVariant);
    procedure cdsAdsBannersAfterCancel(DataSet: TDataset);
    procedure cdsAdsBannersAfterClose(DataSet: TDataset);
  private
    FActiveFilter: TArticleFilter;
    FOldTitle, FOldAbstract, FOldText, FOLdVideoUrl: string;
    FOldDateTime: TDateTime;
    FOldState: integer;
    // FIMageList: Janua.Cloud.Images.Intf.IJanuaImageMemoryStorage;
    FArticle: IArticle;
    FModified: boolean;
    FEditing: boolean;
    FedVideoUrl: TEdit;
    FedTitle: TEdit;
    FAdvRichEditor: IJanuaRTFEditor;
    FlbGUID: TLabel;
    FlbArticle: TLabel;
    FedAbstract: TEdit;
    FAltriAllegati: TMenuItem;
    FImageTest: TImage;
    FImageArticle: TImage;
    FDBErrors: TStrings;
    FJanuaVCLFilesManagerResources: TJanuaVCLFilesManager;
    FJanuaVCLImagesManagerArticle: TJanuaVCLImagesManager;
    FJanuaDialog1: TJanuaDialog;
    FJanuaVCLFilesManagerArticle: TJanuaVCLFilesManager;
    FmnuAttachPreview: TMenu;
    FmnuAttachDelete: TMenu;
    FJanuaVCLAttachManagerArticle: TJanuaVCLFilesManager;
    FJanuaVCLImagesManagerResources: TJanuaVCLImagesManager;
    FJanuaVCLBannersManagerResources: TJanuaVCLImagesManager;
    FedExpiryDate: TAdvDateTimePicker;
    FlkpPublishArticle: TJvRadioGroup;
    FedArticleDate: TAdvDateTimePicker;
    FArticleClearPRC: TProc;
    FMainArgumentID: integer;
    FMainArgumentsChangePrc: TDatasetProc;
    FBannerImage: TImage;
    FBannerChangeProc: TBannerProc;
    FMailError: TArray<string>;
    FSelectedPage: TCmsTabPages;
    FSearchArticleText: string;
    FSearchArticleQuery: string;
    FMailSettings: TJanuaMailSettings;
    procedure UpdateMenuArticles;
    procedure SetArticle(const Value: IArticle);
    procedure SetModified(const Value: boolean);
    procedure SetEditing(const Value: boolean);
    procedure SetedVideoUrl(const Value: TEdit);
    procedure SetedTitle(const Value: TEdit);
    procedure SetAdvRichEditor(const Value: IJanuaRTFEditor);
    procedure SetlbArticle(const Value: TLabel);
    procedure SetlbGUID(const Value: TLabel);
    procedure SetedAbstract(const Value: TEdit);
    procedure SetAltriAllegati(const Value: TMenuItem);
    procedure SetImageTest(const Value: TImage);
    function FileName(var vFile: TFileName): boolean;
    procedure SetImageArticle(const Value: TImage);
    procedure SyncFormArticle(aShowMessage: boolean = True);
    procedure CheckActive;
    procedure SetDBErrors(const Value: TStrings);
    procedure SetJanuaDialog1(const Value: TJanuaDialog);
    procedure SetJanuaVCLFilesManagerArticle(const Value: TJanuaVCLFilesManager);
    procedure SetJanuaVCLFilesManagerResources(const Value: TJanuaVCLFilesManager);
    procedure SetJanuaVCLImagesManagerArticle(const Value: TJanuaVCLImagesManager);
    procedure SetmnuAttachDelete(const Value: TMenu);
    procedure SetmnuAttachPreview(const Value: TMenu);
    procedure SetJanuaVCLAttachManagerArticle(const Value: TJanuaVCLFilesManager);
    procedure SetJanuaVCLImagesManagerResources(const Value: TJanuaVCLImagesManager);
    procedure SetedArticleDate(const Value: TAdvDateTimePicker);
    procedure SetedExpiryDate(const Value: TAdvDateTimePicker);
    procedure SetlkpPublishArticle(const Value: TJvRadioGroup);
    procedure ArticleDraft(aShowMessage: boolean = True);
    procedure SetJanuaVCLBannersManagerResources(const Value: TJanuaVCLImagesManager);
    procedure SetArticleClearPRC(const Value: TProc);
    procedure SetMainArgumentID(const Value: integer);
    procedure SetMainArgumentsChangePrc(const Value: TDatasetProc);
    procedure SetBannerImage(const Value: TImage);
    procedure SetBannerChangeProc(const Value: TBannerProc);
    procedure SetSelectedPage(const Value: TCmsTabPages);
    procedure SetActiveFilter(const Value: TArticleFilter);
    procedure RefreshArticlesFilter;
    procedure SetSearchArticleText(const Value: string);
    procedure UpdateAdsActions;
    { Private declarations }
  protected
    JanuaInputText1: TJanuaInputText;
  public
    property JanuaVCLFilesManagerArticle: TJanuaVCLFilesManager read FJanuaVCLFilesManagerArticle
      write SetJanuaVCLFilesManagerArticle;
    property JanuaVCLAttachManagerArticle: TJanuaVCLFilesManager read FJanuaVCLAttachManagerArticle
      write SetJanuaVCLAttachManagerArticle;
    property JanuaVCLImagesManagerArticle: TJanuaVCLImagesManager read FJanuaVCLImagesManagerArticle
      write SetJanuaVCLImagesManagerArticle;
    property JanuaDialog1: TJanuaDialog read FJanuaDialog1 write SetJanuaDialog1;
    property JanuaVCLImagesManagerResources: TJanuaVCLImagesManager read FJanuaVCLImagesManagerResources
      write SetJanuaVCLImagesManagerResources;
    property JanuaVCLBannersManagerResources: TJanuaVCLImagesManager read FJanuaVCLBannersManagerResources
      write SetJanuaVCLBannersManagerResources;
    property JanuaVCLFilesManagerResources: TJanuaVCLFilesManager read FJanuaVCLFilesManagerResources
      write SetJanuaVCLFilesManagerResources;
  public
    { Public declarations }
    // Imagae Management:
    /// <summary>
    /// Upload an image calls the 'image' manager to upload a file.
    /// then stores the file ID in the Article Field
    /// <summary>
    /// <param name="aAttach">
    /// Attachment if set procedure tries to check if file exists then loads it directly
    /// </param>
    /// <param na
    procedure InsertImage(aFile: TFileName = '');
    // File Management
    procedure OnDeleteAttach(Sender: TObject);
    procedure DeleteAttach(aID: Int64; aCheck: boolean);
    procedure MainAttachDelete(aCheck: boolean = True);
    procedure FilePreview;
    procedure ShowMainAttach;
    /// <summary>
    /// Attach Upload calls the 'cloud' manager to upload a file. It converts Doc and Xls to PDF.
    /// then stores the file ID in the Article Field
    /// <summary>
    /// <param name="aAttach">
    /// Attachment if set procedure tries to check if file exists then loads it directly
    /// </param>
    /// <param name="aTest">
    /// if aTest all Messages are disablec.
    /// </param>
    procedure MainAttachUpload(aAttach: string = ''; aTest: boolean = False);
    /// <summary>
    /// Attach Upload calls the 'cloud' manager to upload all files in the path. It converts Doc and Xls to PDF.
    /// then stores the file IDs and a brief description plus mime type in the ArticleAttachments Table
    /// <summary>
    function MultiAttachUpload(aProc: TProc<integer>; aPath: string = ''): integer;
    procedure OnZipProgressEvent(Sender: TObject; FileName: string; Header: TZipHeader; Position: Int64);
    // Article
    procedure SaveArticle(aArticle: IArticle); overload;
    procedure SaveArticle; overload;
    procedure ApplyUpdates;
    procedure UpdateArticles;
    procedure ClearArticle;
    /// <summary>
    /// Publish Articles Synchronize and store Client Dataset to Database Table.
    /// <summary>
    procedure Publish(aShowMessage: boolean = True);
    procedure ArticleArchive(aShowMessage: boolean = True);
    procedure NewArticle;
    procedure UpdateScreen;
    procedure DeleteArticle(aCheck: boolean = True);
    procedure ArticlesAsyncSearch(aSearch: string);
    procedure SendMailArticle(const aMainArgumentID: integer; Proc: TProc<integer, integer, boolean, string>);

    // Arguments
    procedure UpdateArguments;
    procedure AttachUpdateView;
    procedure MainAttachClick(Sender: TObject);
    procedure AttachPreviewClick(Sender: TObject);
    procedure AttachDeleteClick(Sender: TObject);
    procedure OpenArgumentArticles;
    function LocateArticleID(aID: Int64): boolean;
    procedure RefreshArticlesAttachments;
    procedure DataChange(Sender: TObject; aField: TField);
    procedure DeleteMainAttach(aCheck: boolean);
    procedure btnDeleteAttachClick(Sender: TObject);
    procedure StoreArgumentsArticle;
    procedure ArticleImageDefaultSetup(aFile: TFileName = '');
    // Attachment ........................................................................................

    // Blob Files & Resources Files Management------------------------------------------------------------
    /// <summary>
    /// File Upload calls the 'cloud' manager to upload a file then searches the file in the resources
    /// <summary>
    function AttachSaveUpdates(aCheck: boolean = True): boolean;
    function FileUpload(aFile: TFileName = ''): boolean;
    function ImageUpload(aFile: TFileName = ''): boolean;
    procedure FolderUpload(aFolder: string = '');
    // Test BLob ed Immagine
    procedure TestLoad;
    procedure TestClear;
    procedure TestBlobStream(aFile: TFileName = '');
    procedure TestMemory(aFile: TFileName = '');
    procedure UpdateImageDB(aFile: TFileName = '');
    procedure SearchBlob(aBlob: string);
    procedure SearchImage(aImage: string);
    procedure ImageAsyncSearch(aSearch: string);
    procedure AddImage;
    // procedure ConvertToPDF(aFileName: TFileName);

    // Banners
    procedure OpenThreadedBanners;
    procedure OpenThreadSearchBanners(aSearch: string);
    /// <summary>
    /// This procedure Creates a New Banner using some parameters to do it silently
    /// <summary>
    procedure BannerNew(aFile: string = ''; aTitle: string = ''; aCheck: boolean = True);
    procedure BannerDelete(aCheck: boolean = True);
    procedure BannerSaveUpdate(aCheck: boolean = True);
    procedure BannerAsyncSearch(aSearch: string);
  public
    // Rich Editor
    procedure AdvRichEditorEnter(Sender: TObject);
    procedure AdvRichEditorChange(Sender: TObject);
    procedure AdvRichEditorExit(Sender: TObject);
    // Video URL
    procedure edVideoUrlChange(Sender: TObject);
    procedure edVideoUrlEnter(Sender: TObject);
    procedure edVideoUrlExit(Sender: TObject);
    // Title
    procedure edTitleChange(Sender: TObject);
    procedure edTitleEnter(Sender: TObject);
    procedure edTitleExit(Sender: TObject);
    // Abstract
    procedure edAbstractEnter(Sender: TObject);
    procedure edAbstractChange(Sender: TObject);
    procedure edAbstractExit(Sender: TObject);
    // Article Date & Time
    // DateTime
    procedure edArticleDateEnter(Sender: TObject);
    procedure edArticleDateChange(Sender: TObject);
    procedure edArticleDateExit(Sender: TObject);
    // State
    procedure lkpPublishArticleEnter(Sender: TObject);
    procedure lkpPublishArticleChange(Sender: TObject);
    procedure lkpPublishArticleExit(Sender: TObject);
    // State
    procedure edExpiryDateEnter(Sender: TObject);
    procedure edExpiryDateChange(Sender: TObject);
    procedure edExpiryDateExit(Sender: TObject);
    // Email
    function EmailSaveUpdates(aCheck: boolean = True): boolean;
    procedure UploadEmails(aFile: TFileName);
    procedure ChangeEmailSettings;
    // Search Articles
    procedure SearchArticles(aSearch: string);
  public
    property edVideoUrl: TEdit read FedVideoUrl write SetedVideoUrl;
    property edTitle: TEdit read FedTitle write SetedTitle;
    property edAbstract: TEdit read FedAbstract write SetedAbstract;
    property lbArticle: TLabel read FlbArticle write SetlbArticle;
    property lbGUID: TLabel read FlbGUID write SetlbGUID;
    property edArticleDate: TAdvDateTimePicker read FedArticleDate write SetedArticleDate;
    property edExpiryDate: TAdvDateTimePicker read FedExpiryDate write SetedExpiryDate;
    property lkpPublishArticle: TJvRadioGroup read FlkpPublishArticle write SetlkpPublishArticle;
  public
    property Article: IArticle read FArticle write SetArticle;
    property Editing: boolean read FEditing write SetEditing;
    property Modified: boolean read FModified write SetModified;
    property AdvRichEditor: IJanuaRTFEditor read FAdvRichEditor write SetAdvRichEditor;
    property AltriAllegati: TMenuItem read FAltriAllegati write SetAltriAllegati;
    property mnuAttachPreview: TMenu read FmnuAttachPreview write SetmnuAttachPreview;
    property mnuAttachDelete: TMenu read FmnuAttachDelete write SetmnuAttachDelete;
    property ImageTest: TImage read FImageTest write SetImageTest;
    property ImageArticle: TImage read FImageArticle write SetImageArticle;
    property DBErrors: TStrings read FDBErrors write SetDBErrors;
    property ArticleClearPRC: TProc read FArticleClearPRC write SetArticleClearPRC;
    property MainArgumentsChangePrc: TDatasetProc read FMainArgumentsChangePrc
      write SetMainArgumentsChangePrc;
    property MainArgumentID: integer read FMainArgumentID write SetMainArgumentID;
    property BannerImage: TImage read FBannerImage write SetBannerImage;
  public // Change Events
    property BannerChangeProc: TBannerProc read FBannerChangeProc write SetBannerChangeProc;
    property SelectedPage: TCmsTabPages read FSelectedPage write SetSelectedPage;
    property ActiveFilter: TArticleFilter read FActiveFilter write SetActiveFilter;
    property SearchArticleText: string read FSearchArticleText write SetSearchArticleText;
  end;

  TSaveArticleThread = class(TThread)
  private
    FDataset: TClientDataSet;
    FDatasource: TDataSource;
    FArticle: IArticle;
    FArticleClearPRC: TProc;
    procedure DoHandleException;
    procedure SetArticle(const Value: IArticle);
    procedure SetDataset(const Value: TClientDataSet);
    procedure SetDatasource(const Value: TDataSource);
    procedure SetArticleClearPRC(const Value: TProc);
  protected
    procedure Execute; override;
    procedure HandleException; virtual;
  public
    constructor Create(Suspended: boolean; vDataset: TDataset; vDatasource: TDataSource); overload;
    property DataSet: TClientDataSet read FDataset write SetDataset;
    property Datasource: TDataSource read FDatasource write SetDatasource;
    property Article: IArticle read FArticle write SetArticle;
    property ArticleClearPRC: TProc read FArticleClearPRC write SetArticleClearPRC;
  end;

var
  dmCMSViewModel: TdmCMSViewModel;

implementation

uses
  System.Strutils, Controls, MemData, Spring,
  Janua.Core.Types, Janua.Core.AsyncTask, JOrm.Cms.Articles.Impl, udmPgCmsStorage, Janua.Orm.Impl,
  udmPgCloudStorage, Janua.Core.DB, VCL.Forms, Janua.Legacy.System,
  Janua.Core.Functions, System.IOUtils, System.Types, Janua.Application.Framework,
  Janua.Cloud.Files.Intf, Janua.Cloud.Images.Impl, Janua.Html.Impl, Janua.Html.Intf, Janua.Html.Builder.Intf,
  Janua.Html.Builder.Impl, Janua.Cloud.Impl, udlgCmsCategorie, udmPgAdsStorage, udlgInputMemo;

{$R *.dfm}

procedure TdmCMSViewModel.ActArticleDeleteExecute(Sender: TObject);
begin
  self.DeleteArticle(True);
end;

procedure TdmCMSViewModel.ActArticleDraftExecute(Sender: TObject);
begin
  ArticleDraft;
end;

procedure TdmCMSViewModel.ActArticleInsertImageExecute(Sender: TObject);
begin
  InsertImage
end;

procedure TdmCMSViewModel.ActArticlePublishExecute(Sender: TObject);
begin
  Publish
end;

procedure TdmCMSViewModel.ActArticleSendMailExecute(Sender: TObject);
begin
  SendMailArticle(FMainArgumentID, nil);
end;

procedure TdmCMSViewModel.ActAttachUploadExecute(Sender: TObject);
begin
  // Glow Button 8
  FileUpload;
end;

procedure TdmCMSViewModel.ActiArticleArchiveExecute(Sender: TObject);
begin
  ArticleArchive;
end;

procedure TdmCMSViewModel.ActImageUploadExecute(Sender: TObject);
begin
  UpdateImageDB
end;

procedure TdmCMSViewModel.ActListArticlesDeletedExecute(Sender: TObject);
begin
  ActiveFilter := TArticleFilter.Deleteds;
  if Sender is TAction then
    (Sender As TAction).Checked := True;
end;

procedure TdmCMSViewModel.ActListArticlesDraftExecute(Sender: TObject);
begin
  ActiveFilter := TArticleFilter.Drafts;
  if Sender is TAction then
    (Sender As TAction).Checked := True;
end;

procedure TdmCMSViewModel.ActListArticlesShowExecute(Sender: TObject);
begin
  ActiveFilter := TArticleFilter.Articles;
  if Sender is TAction then
    (Sender As TAction).Checked := True;
end;

procedure TdmCMSViewModel.ActAttachFilePreviewExecute(Sender: TObject);
begin
  FilePreview;
end;

procedure TdmCMSViewModel.ActAttachFolderUploadExecute(Sender: TObject);
begin
  // Glow Button 7
  FolderUpload;
end;

procedure TdmCMSViewModel.ActAttachSaveUpdatesExecute(Sender: TObject);
begin
  AttachSaveUpdates
end;

procedure TdmCMSViewModel.ActMenuDefaultImageExecute(Sender: TObject);
begin
  ArticleImageDefaultSetup
end;

procedure TdmCMSViewModel.ActMenuEditExecute(Sender: TObject);
begin
  if not Assigned(dlgCmsCategorie) then
    Application.CreateForm(TdlgCmsCategorie, dlgCmsCategorie);
  try
    dlgCmsCategorie.ShowModal;
    UpdateArguments;
  finally
    FreeAndNil(dlgCmsCategorie);
  end;
end;

procedure TdmCMSViewModel.ActDeleteArticleExecute(Sender: TObject);
begin
  DeleteArticle
end;

procedure TdmCMSViewModel.ActEmailInsertListFileExecute(Sender: TObject);
begin
  self.UploadEmails('');
  EmailSaveUpdates(True);
end;

procedure TdmCMSViewModel.ActEmailSaveUpdatesExecute(Sender: TObject);
begin
  EmailSaveUpdates
end;

procedure TdmCMSViewModel.ActArticleMainAttachDeleteExecute(Sender: TObject);
begin
  self.MainAttachDelete(True);
end;

procedure TdmCMSViewModel.ActArticleMainAttachUploadExecute(Sender: TObject);
begin
  MainAttachUpload
end;

procedure TdmCMSViewModel.ActArticleMultiAttachUploadExecute(Sender: TObject);
begin
  self.MultiAttachUpload(nil);
  // inserirequi una procedura che gestisca la barra grafica di trasferimento dei file
end;

procedure TdmCMSViewModel.ActArticleNewExecute(Sender: TObject);
begin
  ClearArticle;
  self.NewArticle
end;

procedure TdmCMSViewModel.ActShowMainAttachExecute(Sender: TObject);
begin
  ShowMainAttach
end;

procedure TdmCMSViewModel.AddImage;
begin
  if OpenPictureDialog1.Execute then
  begin
    UpdateImageDB(OpenPictureDialog1.FileName);
  end;
end;

procedure TdmCMSViewModel.AdsDeleteRecordExecute(Sender: TObject);
begin
  self.BannerDelete(True)
end;

procedure TdmCMSViewModel.AdsNewRecordExecute(Sender: TObject);
begin
  try
    BannerNew('', '', True);
  except
    on E: Exception do
      raise Exception.Create(ClassName + '.InsertImage ' + E.Message);
  end;
end;

procedure TdmCMSViewModel.AdsSaveRecordExecute(Sender: TObject);
begin
  self.BannerSaveUpdate(True);
end;

procedure TdmCMSViewModel.AdvRichEditorChange(Sender: TObject);
begin
  Modified := Modified or (FAdvRichEditor.AsHtmlEmbedImages <> self.FOldText)
  // (FAdvRichEditor.AsHtml(False, '', True) <> self.FOldText);
  // (AdvRichEditorAsHtml(AdvRichEditor, False, '', True) <> self.FOldText);
end;

procedure TdmCMSViewModel.AdvRichEditorEnter(Sender: TObject);
begin
  self.FOldText := FAdvRichEditor.AsHtmlEmbedImages
  // FAdvRichEditor.AsHtml(False, '', True);
end;

procedure TdmCMSViewModel.AdvRichEditorExit(Sender: TObject);
begin
  AdvRichEditorChange(Sender);
end;

procedure TdmCMSViewModel.ApplyUpdates;
var
  main: integer;
  arg: integer;
  art: Int64;
begin
  try
    {
      if self.cdsArgumentsArticlesAttachments.UpdatesPending then
      begin
      self.cdsArgumentsArticlesAttachments.ApplyUpdates(0);
      if FDBErrors.Count > 0 then
      raise Exception.Create('ApplyUpdates Error: ' + sLineBreak + FDBErrors.Text);
      end;
    }
    if cdsMainArguments.UpdatesPending then
    begin
      FDBErrors.Clear;
      main := FArticle.Main_argument_id.AsInteger;
      arg := FArticle.Argument_id.AsInteger;
      art := FArticle.Article_id.AsLargeInt;
      // applico gli updates partendo dal 'parent'.
      self.cdsMainArguments.ApplyUpdates(0);
      self.cdsMainArguments.Locate('main_argument_id', main, []);
      self.cdsArguments.Locate('argument_id', arg, []);
      self.cdsArgumentsArticles.Locate('article_id', art, []);
      if FDBErrors.Count > 0 then
        raise Exception.Create('ApplyUpdates Error: ' + sLineBreak + FDBErrors.Text);
    end;
  except
    on E: Exception do
      raise Exception.Create('cdsArgumentsArticles.ApplyUpdates ' + E.Message);
  end;
end;

procedure TdmCMSViewModel.ArticleImageDefaultSetup(aFile: TFileName);
begin
  ExecProc(
    procedure
    begin
      if self.FJanuaVCLImagesManagerArticle.OpenFile(aFile) then
      begin
        self.cdsMainArguments.Edit;
        cdsMainArgumentsma_image_id.AsLargeInt := JanuaVCLImagesManagerArticle.SaveImageToStorage;
        cdsMainArguments.Post;
      end;
    end, 'ArticleImageDefaultSetup' + IfThen(aFile = '', '', ' ' + aFile), self);
end;

procedure TdmCMSViewModel.ArticlesAsyncSearch(aSearch: string);
begin

end;

procedure TdmCMSViewModel.AttachDeleteClick(Sender: TObject);
begin

end;

procedure TdmCMSViewModel.AttachPreviewClick(Sender: TObject);
begin
  if (Sender is TMenuItem) and cdsArgumentsArticlesAttachments.Locate('file_id', (Sender as TMenuItem).Tag, [])
  then
  begin
    self.FJanuaVCLAttachManagerArticle.FilePreview
  end;
end;

function TdmCMSViewModel.AttachSaveUpdates(aCheck: boolean): boolean;
begin
  if dmCMSViewModel.cdsSearchBlobFiles.UpdatesPending then
    dmCMSViewModel.cdsSearchBlobFiles.ApplyUpdates(-1);
  if aCheck then
    JShowMessage('Aggiornamenti salvati correttamente');

end;

procedure TdmCMSViewModel.AttachUpdateView;
var
  aItem: TMenuItem;
begin
  // Preview
  if Assigned(self.FmnuAttachPreview) then
  begin
    FmnuAttachPreview.Items.Clear;

    aItem := FmnuAttachPreview.CreateMenuItem;
    // aItem.OnClick := self.MainAttachClick;
    // Imposto una 'Action al posto di un Evento'.
    aItem.Action := ActShowMainAttach;
    aItem.Caption := 'Allegato Principale';
    FmnuAttachPreview.Items.Add(aItem);

    aItem := FmnuAttachPreview.CreateMenuItem;
    aItem.OnClick := nil;
    aItem.Caption := '-';
    FmnuAttachPreview.Items.Add(aItem);

    if self.FArticle.Attachments.RecordCount > 0 then
    begin
      FArticle.Attachments.First;
      while not FArticle.Attachments.Eof do
      begin
        aItem := FmnuAttachPreview.CreateMenuItem;
        aItem.Tag := FArticle.Attachments.FileId.AsInteger;
        aItem.Caption := FArticle.Attachments.Description.AsString;
        aItem.OnClick := AttachPreviewClick;
        FmnuAttachPreview.Items.Add(aItem);
        FArticle.Attachments.Next;
      end;
    end;
  end;
  // Delete
  if Assigned(self.FmnuAttachDelete) then
  begin
    FmnuAttachDelete.Items.Clear;

    aItem := FmnuAttachDelete.CreateMenuItem;
    aItem.OnClick := self.MainAttachClick;
    aItem.Caption := 'Allegato Principale';
    FmnuAttachDelete.Items.Add(aItem);

    aItem := FmnuAttachDelete.CreateMenuItem;
    aItem.OnClick := nil;
    aItem.Caption := '-';
    FmnuAttachDelete.Items.Add(aItem);

    if self.FArticle.Attachments.RecordCount > 0 then
    begin
      FArticle.Attachments.First;
      while not FArticle.Attachments.Eof do
      begin
        aItem := FmnuAttachDelete.CreateMenuItem;
        aItem.Tag := FArticle.Attachments.FileId.AsInteger;
        aItem.Caption := FArticle.Attachments.Description.AsString;
        aItem.OnClick := self.OnDeleteAttach;
        FmnuAttachDelete.Items.Add(aItem);
        FArticle.Attachments.Next;
      end;
    end;
  end
end;

procedure TdmCMSViewModel.BannerAsyncSearch(aSearch: string);
begin
  if not(cdsAdsBanners.Active) or (cdsAdsBanners.Params[1].AsString <> LowerCase(aSearch)) then
    aSync.Run<integer>(
      function: integer
      begin
        if System.TMonitor.TryEnter(cdsAdsBanners) then
          try
            JanuaVCLBannersManagerResources.IsUpdating := True;
            dsAdsBanners.Enabled := False;
            cdsAdsBanners.Close;
            cdsAdsBanners.Params[1].AsString := LowerCase(aSearch);
            cdsAdsBanners.Open;
          finally
            JanuaVCLBannersManagerResources.IsUpdating := False;
          end;
      end,
      procedure(const aRecordCount: integer)
      begin
        dsAdsBanners.Enabled := True;
      end,
      procedure(const Ex: Exception)
      begin
        ShowMessage('TdmCMSViewModel.BannerAsyncSearch:' + sLineBreak + Ex.Message);
      end);
end;

procedure TdmCMSViewModel.BannerDelete(aCheck: boolean = True);
begin
  if cdsAdsBanners.Active and (cdsAdsBanners.RecordCount > 0) and
    JanuaDialog1.JMessageDlg('Attenzione elimino ' + cdsAdsBannerstitle.AsWideString) then
  begin
    cdsAdsBanners.Delete;
    self.BannerSaveUpdate(False);
  end;
end;

procedure TdmCMSViewModel.BannerNew(aFile: string = ''; aTitle: string = ''; aCheck: boolean = True);
begin
  if cdsAdsBanners.Active and self.OpenPictureDialog1.Execute then
  begin
    self.cdsAdsBanners.Append;
    with FJanuaVCLBannersManagerResources do
    begin
      FJanuaVCLBannersManagerResources.IsUpdating := True;
      FJanuaVCLBannersManagerResources.OpenFile(OpenPictureDialog1.FileName);
      cdsAdsBannerstitle.AsWideString := IfThen(aTitle = '', JanuaInputText1.InputText('Titolo del Banner',
        'Scrivere un titolo per il banner', 'titolo'), aTitle);
      cdsAdsBannersimage_url.AsWideString := ExtractFileName(SelectedImage.FileName);
      cdsAdsBannerswidth.AsInteger := FJanuaVCLBannersManagerResources.SelectedImage.Width;
      cdsAdsBannersheight.AsInteger := FJanuaVCLBannersManagerResources.SelectedImage.Heigth;
      cdsAdsBannerssince.AsDateTime := Date();
      cdsAdsBannersuntil.AsDateTime := Date() + 180;
      self.cdsAdsBannersimage_id.AsLargeInt := FJanuaVCLBannersManagerResources.SaveImageToStorage;
      FJanuaVCLBannersManagerResources.IsUpdating := False;
      FJanuaVCLBannersManagerResources.UpdateSelectedImage;
    end;
    cdsAdsBanners.Post;
    if aCheck then
      self.BannerSaveUpdate(False);

  end;
end;

procedure TdmCMSViewModel.BannerSaveUpdate(aCheck: boolean = True);
begin
  if (cdsAdsBanners.State = TDataSetState.dsEdit) or (cdsAdsBanners.State = TDataSetState.dsInsert) then
    cdsAdsBanners.Post;

  if cdsAdsBanners.UpdatesPending and
    (aCheck or self.JanuaDialog1.JMessageDlg('Attenzione Registro il Record?')) then
  begin
    aSync.Run<boolean>(
      function: boolean
      begin
        if self.cdsAdsBanners.ChangeCount > 0 then
          cdsAdsBanners.ApplyUpdates(-1);
        Result := True; // cdsAdsBanners.UpdateStatus <> TUpdateStatus.
      end,
      procedure(const aValue: boolean)
      begin
        if aValue and aCheck then
          self.JanuaDialog1.JShowMessage('Banner registrati correttamente');
      end,
      procedure(const Ex: Exception)
      begin
        ShowMessage(Ex.Message);
      end);
  end;

  self.UpdateAdsActions;
end;

procedure TdmCMSViewModel.btnDeleteAttachClick(Sender: TObject);
begin
  DeleteMainAttach(False);
end;

procedure TdmCMSViewModel.cdsAdsBannersAfterApplyUpdates(Sender: TObject; var OwnerData: OleVariant);
begin
  UpdateAdsActions;
end;

procedure TdmCMSViewModel.cdsAdsBannersAfterCancel(DataSet: TDataset);
begin
  UpdateAdsActions;
end;

procedure TdmCMSViewModel.cdsAdsBannersAfterClose(DataSet: TDataset);
begin
  UpdateAdsActions;
end;

procedure TdmCMSViewModel.cdsAdsBannersAfterDelete(DataSet: TDataset);
begin
  UpdateAdsActions;
end;

procedure TdmCMSViewModel.cdsAdsBannersAfterOpen(DataSet: TDataset);
begin
  UpdateAdsActions;
end;

procedure TdmCMSViewModel.cdsAdsBannersAfterScroll(DataSet: TDataset);
begin
  UpdateAdsActions;
end;

procedure TdmCMSViewModel.cdsAdsBannersBeforePost(DataSet: TDataset);
begin
  try
    if self.cdsAdsBannersabnn_jguid.AsString = '' then
    begin
      cdsAdsBannersabnn_jguid.AsString := Janua.Core.Functions.GenerateGUIDString;
    end;
    if cdsAdsBannersdb_schema_id.AsInteger = 0 then
      cdsAdsBannersdb_schema_id.AsInteger := TJanuaApplication.DBSchemaID;
    if cdsAdsBannersabnn_deleted.IsNull then
      cdsAdsBannersabnn_deleted.AsBoolean := False;
    if self.cdsAdsBannersnumber.AsInteger = 0 then
    begin
      self.qryBannersSeq.Close;
      qryBannersSeq.Open;
      self.cdsAdsBannersnumber.AsInteger := self.qryBannersSeqnextval.AsInteger;
      qryBannersSeq.Close;
    end;
  except
    on E: Exception do
      raise Exception.Create('TdmCMSViewModel.cdsAdsBannersBeforePost ' + E.ClassName + ' ' + E.Message);
  end;
end;

procedure TdmCMSViewModel.cdsArgumentsAfterPost(DataSet: TDataset);
begin
  if cdsArguments.UpdatesPending then
    self.cdsArguments.ApplyUpdates(-1);

end;

procedure TdmCMSViewModel.cdsArgumentsArticlesAfterScroll(DataSet: TDataset);
var
  tmp: integer;
  test: Int64;
begin
  self.cdsArgumentsArticlesAttachments.Close;
  test := cdsArgumentsArticlesarticle_id.AsLargeInt;
  self.cdsArgumentsArticlesAttachments.Params[0].AsLargeInt := test;
  self.cdsArgumentsArticlesAttachments.Params[1].AsInteger := TJanuaApplication.DBSchemaID;
  cdsArgumentsArticlesAttachments.Open;
  if (test = cdsArgumentsArticlesarticle_id.AsLargeInt) and (cdsArgumentsArticlesAttachments.RecordCount > 0)
  then
    self.DataChange(self, cdsArgumentsArticlesarticle_id);
  {
    // Janua.Postgres.Functions.
    Janua.Postgres.Functions.OpenPgThreadedDataset(
    // Janua.Core.DB.OpenDBThreadedDataset(
    cdsArgumentsArticlesAttachments, nil, True,
    procedure
    begin
    if (test = cdsArgumentsArticlesarticle_id.AsLargeInt) and (cdsArgumentsArticlesAttachments.RecordCount > 0) then
    self.DataChange(self, cdsArgumentsArticlesarticle_id);
    end);
  }
end;

procedure TdmCMSViewModel.cdsArgumentsArticlesAttachmentsOldReconcileError(DataSet: TCustomClientDataSet;
E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  Action := TReconcileAction.raSkip;
  self.FDBErrors.Add('MainArguments The record with ID = ' + DataSet.FieldByName('article_id').AsString +
    ' couldn''t be updated!' + sLineBreak + E.Context + sLineBreak +
    FArticle.Attachments.articles_attachment.AsJsonObject.ToString);
end;

procedure TdmCMSViewModel.cdsArgumentsArticlesBeforePost(DataSet: TDataset);
var
  aGuid: TGUID;
begin
  if self.cdsArgumentsArticlescrtc_jguid.AsString = '' then
  begin
    CreateGUID(aGuid);
    cdsArgumentsArticlescrtc_jguid.AsString := aGuid.ToString;
  end;
  if cdsArgumentsArticleslanguage_id.AsInteger = 0 then
    cdsArgumentsArticleslanguage_id.AsInteger := TJanuaApplication.LanguageID;
  // Fields[FAuthor_id].AsInteger := JanuaApplicationGlobalProfile.DBUserID;
  if cdsArgumentsArticlesauthor_id.AsInteger = 0 then
    cdsArgumentsArticlesauthor_id.AsInteger := TJanuaApplication.DBUserID;
  if cdsArgumentsArticlesdb_schema_id.AsInteger = 0 then
    cdsArgumentsArticlesdb_schema_id.AsInteger := TJanuaApplication.DBSchemaID;

  if cdsArgumentsArticlesarticle_id.AsLargeInt = 0 then
  begin
    dmPgCmsStorage.qryArticlesSeq.Open;
    cdsArgumentsArticlesarticle_id.AsLargeInt := dmPgCmsStorage.qryArticlesSeqnextval.AsLargeInt;
    cdsArgumentsArticlesdatetime.AsDateTime := dmPgCmsStorage.qryArticlesSeqsysdate.AsDateTime;
    dmPgCmsStorage.qryArticlesSeq.Close;
  end;
end;

procedure TdmCMSViewModel.cdsArgumentsBeforePost(DataSet: TDataset);
var
  aGuid: TGUID;
begin
  if self.cdsArgumentscarg_jguid.AsString = '' then
  begin
    CreateGUID(aGuid);
    cdsArgumentscarg_jguid.AsString := aGuid.ToString;
  end;
  if cdsArgumentsdb_schema_id.AsInteger = 0 then
    cdsArgumentsdb_schema_id.AsInteger := TJanuaApplication.DBSchemaID;
  if cdsArgumentscarg_deleted.IsNull then
    cdsArgumentscarg_deleted.AsBoolean := False;
  if self.cdsArgumentsargument_id.AsInteger = 0 then
  begin
    self.qryArgumentsSeq.Close;
    qryArgumentsSeq.Open;
    self.cdsArgumentsargument_id.AsInteger := self.qryArgumentsSeqnextval.AsInteger;
    qryArgumentsSeq.Close;
  end;

  if cdsArgumentsdb_schema_id.AsInteger = 0 then
    cdsArgumentsdb_schema_id.AsInteger := TJanuaApplication.DBSchemaID;
  if cdsArgumentscarg_deleted.IsNull then
    cdsArgumentscarg_deleted.AsBoolean := False;
  if cdsArgumentspos.IsNull then
    cdsArgumentspos.AsInteger := 0;
end;

procedure TdmCMSViewModel.cdsArticlesAttachmentsBeforeOpen(DataSet: TDataset);
begin
  try
    self.cdsArgumentsArticlesAttachments.Params[0].AsLargeInt := cdsArgumentsArticlesarticle_id.AsLargeInt;
  except
    on E: Exception do
      raise Exception.Create('TdmCMSViewModel.cdsArticlesAttachmentsBeforeOpen ' + E.ClassName + ' ' +
        E.Message);

  end;
end;

procedure TdmCMSViewModel.cdsMainArgumentsAfterPost(DataSet: TDataset);
begin
  try
    if cdsMainArguments.UpdatesPending then
      self.cdsMainArguments.ApplyUpdates(-1);
  except
    on E: Exception do
      raise Exception.Create('TdmCMSViewModel.cdsMainArgumentsAfterPost ' + E.ClassName + ' ' + E.Message);

  end;
end;

procedure TdmCMSViewModel.cdsMainArgumentsBeforePost(DataSet: TDataset);
begin
  try
    if self.cdsMainArgumentscmar_jguid.AsString = '' then
    begin
      cdsMainArgumentscmar_jguid.AsString := Janua.Core.Functions.GenerateGUIDString;
    end;
    if cdsMainArgumentsdb_schema_id.AsInteger = 0 then
      cdsMainArgumentsdb_schema_id.AsInteger := TJanuaApplication.DBSchemaID;
    if cdsMainArgumentscmar_deleted.IsNull then
      cdsMainArgumentscmar_deleted.AsBoolean := False;
    if self.cdsMainArgumentsmain_argument_id.AsInteger = 0 then
    begin
      self.qryMainArgumentsSeq.Close;
      qryMainArgumentsSeq.Open;
      self.cdsMainArgumentsmain_argument_id.AsInteger := self.qryMainArgumentsSeqnextval.AsInteger;
      qryMainArgumentsSeq.Close;
    end;
  except
    on E: Exception do
      raise Exception.Create('TdmCMSViewModel.cdsMainArgumentsBeforePost ' + E.ClassName + ' ' + E.Message);

  end;
end;

procedure TdmCMSViewModel.cdsMainArgumentsMailsBeforeOpen(DataSet: TDataset);
begin
  try
    cdsMainArguments.Params[0].AsInteger := cdsMainArgumentsmain_argument_id.AsInteger;
    cdsMainArguments.Params[1].AsInteger := TJanuaApplication.DBSchemaID;
  except
    on E: Exception do
      raise Exception.Create('TdmCMSViewModel.cdsMainArgumentsMailsBeforeOpen ' + E.ClassName + ' ' +
        E.Message);

  end;
end;

procedure TdmCMSViewModel.cdsMainArgumentsMailsBeforePost(DataSet: TDataset);
var
  aGuid: TGUID;
begin
  try
    if self.cdsMainArgumentsMailscmls_jguid.AsString = '' then
    begin
      CreateGUID(aGuid);
      cdsMainArgumentsMailscmls_jguid.AsString := aGuid.ToString;
    end;
    if cdsMainArgumentsMailsdb_schema_id.AsInteger = 0 then
      cdsMainArgumentsMailsdb_schema_id.AsInteger := TJanuaApplication.DBSchemaID;
    cdsMainArgumentsMailsmain_argument_id.AsInteger := cdsMainArgumentsmain_argument_id.AsInteger;

    if self.cdsMainArgumentsMailsmail_id.AsInteger = 0 then
    begin
      self.qryMailsSeq.Close;
      qryMailsSeq.Open;
      self.cdsMainArgumentsMailsmail_id.AsInteger := self.qryMailsSeqnextval.AsInteger;
      qryMailsSeq.Close;
    end;
  except
    on E: Exception do
      raise Exception.Create('TdmCMSViewModel.cdsMainArgumentsMailsBeforePost ' + E.ClassName + ' ' +
        E.Message);

  end;
end;

procedure TdmCMSViewModel.cdsMainArgumentsNewRecord(DataSet: TDataset);
begin
  cdsMainArgumentscmar_deleted.AsBoolean := False
end;

procedure TdmCMSViewModel.cdsMainArgumentsReconcileError(DataSet: TCustomClientDataSet; E: EReconcileError;
UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  Action := TReconcileAction.raSkip;
  self.FDBErrors.Add('MainArguments The record with ID = ' + DataSet.FieldByName('main_argument_id').AsString
    + ' couldn''t be updated!' + sLineBreak + E.Context + sLineBreak + self.FArticle.AsJsonObject.ToString);
end;

procedure TdmCMSViewModel.ClearArticle;
begin
  self.edTitle.Text := '';
  self.edAbstract.Text := '';
  self.FImageArticle.Picture.Assign(nil);
  self.edArticleDate.DateTime := Now();
  self.FlkpPublishArticle.ItemIndex := self.Article.StatePos;
  self.edExpiryDate.Date := Date + 30;
  self.FArticle.NewRecord;
  FArticle.Article_id.AsLargeInt := 0;
  Modified := False;

  if Assigned(FArticleClearPRC) then
    FArticleClearPRC;
end;

procedure TdmCMSViewModel.DataChange(Sender: TObject; aField: TField);
begin
  try
    if not self.Editing then
    begin
      if (FArticle.Article_id.AsLargeInt <> cdsArgumentsArticlesarticle_id.AsLargeInt) and Modified and
        JanuaDialog1.JMessageDlg('Attenzione volete salvare le ultime modifiche all''articolo?') then
        Publish;
      if cdsArgumentsArticlesarticle_id.AsLargeInt = 0 then
        ClearArticle
      else if (FArticle.Article_id.AsLargeInt <> cdsArgumentsArticlesarticle_id.AsLargeInt) then
      begin
        if (not cdsArgumentsArticlesAttachments.Active) or
          (cdsArgumentsArticlesAttachments.Params[0].AsLargeInt <> cdsArgumentsArticlesarticle_id.AsLargeInt)
        then
          RefreshArticlesAttachments;
        FArticle.LoadFromDataset;
      end;
      // self.FArticle.DirectLoadFromDataset([cdsArgumentsArticles, cdsArgumentsArticlesAttachments]);
      UpdateScreen;
      Modified := False;
    end;
  except
    on E: Exception do
      raise Exception.Create('TdmCMSViewModel.DataChange ' + E.Message);
  end;
end;

procedure TdmCMSViewModel.DataModuleCreate(Sender: TObject);
var
  i: integer;
  E: TJanuaMailEncription;
begin
  FMainArgumentID := 0;
  // -----------------------------------------------------------------------------------------------------
  // Imposto i Mail Settings per fare una prova di invio Mail
  // -----------------------------------------------------------------------------------------------------
  {
    FMailSettings.MailUsername := 'smtp@studiochiaranzbeltramini.it';
    FMailSettings.MailPassword := 'Belzebu1953';
    FMailSettings.Port := 25;
    FMailSettings.MailEncoding := TJanuaMailEncoding.jmeHTML;
    FMailSettings.MailServer := 'smtpdom.interhost.it';
    FMailSettings.MailEncryption := TJanuaMailEncription.jmsNone;
    FMailSettings.Encryption := False;
    FMailSettings.From := 'LND Liguria';
    FMailSettings.FromMail := 'f.pozzoli@lnd.it';
  }

  JanuaInputText1 := TJanuaInputText.Create(self);

  Application.CreateForm(TdmPgCmsStorage, dmPgCmsStorage);
  Application.CreateForm(TdmPgAdsStorage, dmPgAdsStorage);
  self.dsArticles.Enabled := False;
  self.dsArgumentsArticles.Enabled := False;
  self.dsBlobs.Enabled := False;
  self.dsArguments.Enabled := False;
  self.dsMainArguments.Enabled := False;
  self.dsArgumentsArticlesFiles.Enabled := False;
  self.dsImages.Enabled := False;
  self.qryMainArgumentsSeq.Connection := dmPgCmsStorage.PgErgoConnection;
  self.qryArgumentsSeq.Connection := dmPgCmsStorage.PgErgoConnection;
  dmPgCloudStorage := TdmPgCloudStorage.Create(self);
  self.FDBErrors := TStringList.Create;
  FArticle := TArticle.Create('football.article');
  FArticle.DBDataset := self.cdsArgumentsArticles;
  FArticle.Attachments.articles_attachment.DBDataset := self.cdsArgumentsArticlesAttachments;
  // Creazione degli Oggetti VCL
  FJanuaVCLFilesManagerResources := TJanuaVCLFilesManager.Create(self);
  FJanuaVCLImagesManagerResources := TJanuaVCLImagesManager.Create(self);
  FJanuaVCLBannersManagerResources := TJanuaVCLImagesManager.Create(self);
  FJanuaVCLImagesManagerArticle := TJanuaVCLImagesManager.Create(self);
  FJanuaDialog1 := TJanuaDialog.Create(self);
  FJanuaVCLFilesManagerArticle := TJanuaVCLFilesManager.Create(self);
  // impostazione del file Manager
  JanuaVCLFilesManagerArticle.OpenDialog := self.OpenDialogPDF;
  JanuaVCLFilesManagerArticle.Datasource := self.dsArticles;
  JanuaVCLFilesManagerArticle.FileIDField := cdsArgumentsArticlesmain_attach_id;
  // Attach Manager
  FJanuaVCLAttachManagerArticle := TJanuaVCLFilesManager.Create(self);
  FJanuaVCLAttachManagerArticle.Datasource := self.dsAttach;
  FJanuaVCLAttachManagerArticle.FileIDField := self.cdsArgumentsArticlesAttachmentsfile_id;
  // Image Manager
  JanuaVCLImagesManagerArticle.OpenDialog := self.OpenPictureDialog1;
  JanuaVCLImagesManagerArticle.Datasource := self.dsArgumentsArticlesFiles;
  JanuaVCLImagesManagerArticle.ImageIDField := cdsArgumentsArticlesmain_image_id;
  // Image Manager Images
  FJanuaVCLImagesManagerResources.Datasource := self.dsImages; // dmPgCloudStorage.qrySearchBlobFiles
  FJanuaVCLImagesManagerResources.ImageIDField := cdsSearchBlobFilesblob_id;
  FJanuaVCLImagesManagerResources.OpenDialog := self.OpenDialogResources;
  // Banner Manager
  FJanuaVCLBannersManagerResources.OpenDialog := self.OpenPictureDialog1;
  FJanuaVCLBannersManagerResources.Datasource := self.dsAdsBanners;
  FJanuaVCLBannersManagerResources.ImageIDField := self.cdsAdsBannersimage_id;
  // JanuaVCLImagesManagerArticle.AfterUpdate := self.DataChange;
  // File Manager Resources
  JanuaVCLFilesManagerResources.Datasource := self.dsBlobs; // dmPgCloudStorage.qrySearchBlobFiles
  JanuaVCLFilesManagerResources.FileIDField := self.cdsImagesexternal_file_id;
  JanuaVCLFilesManagerResources.OpenDialog := self.OpenPictureDialog1;
  // Gestore degli eventi
  self.dsArgumentsArticlesChange.OnDataChange := DataChange;
  dsArgumentsArticles.Enabled := False;

  // impostazioni della Mail
  JanuaMailSender1.MailEncryption := TJanuaMailEncription.jmsUseExplicitTLS;
  {
    i := Ord(TJanuaMailEncription.jmsUseExplicitTLS);
    i := TJanuaWinRegistry.ReadIntegerRegistry('mail', 'encription', False, i);
    if TEnumConvertor<TJanuaMailEncription>.TryFromInteger(i, E) then
    JanuaMailSender1.MailEncryption := E;
  }
end;

procedure TdmCMSViewModel.DataModuleDestroy(Sender: TObject);
begin
  FreeAndNil(self.FDBErrors);
end;

procedure TdmCMSViewModel.DeleteArticle(aCheck: boolean);
begin
  ExecProc(
    procedure
    begin
      if (not aCheck) or JanuaDialog1.JMessageDlg('Sei sicuro di voler cancellare l''articolo?') then
      begin
        if FArticle.Article_id.AsInteger > 0 then
        begin
          if cdsArgumentsArticles.Locate('article_id', FArticle.Article_id.AsLargeInt, []) then
          begin
            self.Article.Deleted := True;
            self.Article.State.AsInteger := -1;
            if Assigned(lkpPublishArticle) then
              self.FlkpPublishArticle.ItemIndex := self.Article.StatePos;
            UpdateScreen;
            JanuaVCLImagesManagerArticle.IsUpdating := True;
            StoreArgumentsArticle;
            JanuaVCLImagesManagerArticle.IsUpdating := False;
          end;
          // cdsArgumentsArticles.Delete;
        end
        else
        begin
          self.ClearArticle;
          if cdsArgumentsArticles.RecordCount > 0 then
            self.FArticle.DirectSaveToDataset([cdsArgumentsArticles, cdsArgumentsArticlesAttachments]);
        end;
        self.ApplyUpdates;
      end;
    end, 'DeleteArticle: ' + IfThen(aCheck, 'true', 'false'), self);
end;

procedure TdmCMSViewModel.DeleteAttach(aID: Int64; aCheck: boolean);
var
  vTest: boolean;
begin
  if not(FArticle.Attachments.FileId.AsLargeInt = aID) then
    FArticle.Attachments.First;

  while not(FArticle.Attachments.Eof or vTest) do
  begin
    vTest := (FArticle.Attachments.FileId.AsLargeInt = aID);
    if not vTest then
      FArticle.Attachments.Next
    else
    begin
      if (not aCheck) or JanuaDialog1.JMessageDlg('Attenzione volete cancellare l''allegato?') then
      begin
        self.FArticle.Attachments.Delete;
        if cdsArgumentsArticlesAttachments.Locate('file_id', aID, []) then
        begin
          cdsArgumentsArticlesAttachments.Delete;
          // cdsArgumentsArticlesAttachments.ApplyUpdates(-1);
        end;
        if aCheck then
          JanuaDialog1.JShowWarning('Allegato Cancellato');
      end;
    end;
  end;
  AttachUpdateView;
end;

procedure TdmCMSViewModel.OnDeleteAttach(Sender: TObject);
var
  LID: Int64;
  vTest: boolean;
begin
  if (Sender is TMenuItem) then
  begin
    LID := (Sender as TMenuItem).Tag;
    FArticle.Attachments.First;
    while not(FArticle.Attachments.Eof or vTest) do
    begin
      vTest := (FArticle.Attachments.FileId.AsLargeInt = LID);
      if not vTest then
        FArticle.Attachments.Next;
    end;
  end;
  if vTest then
    DeleteAttach(LID, True);

end;

procedure TdmCMSViewModel.OnZipProgressEvent(Sender: TObject; FileName: string; Header: TZipHeader;
Position: Int64);
begin

end;

procedure TdmCMSViewModel.DeleteMainAttach(aCheck: boolean);
begin
  if (not aCheck) or JanuaDialog1.JMessageDlg('Attenzione volete cancellare l''allegato?') then
  begin
    FArticle.MainAttachId.AsLargeInt := 0;
    JanuaDialog1.JShowWarning('Allegato Cancellato');
    // ora usiamo i menu...........................................................
    (*
      self.btnDeleteAttach.Enabled := False;
      self.btnShowAttach.Enabled := False;
    *)
  end;
end;

procedure TdmCMSViewModel.dsAdsBannersDataChange(Sender: TObject; Field: TField);
begin
  if Assigned(self.BannerChangeProc) then
    BannerChangeProc(cdsAdsBanners.RecordCount, (cdsAdsBanners.ChangeCount > 0));
  UpdateAdsActions;
end;

procedure TdmCMSViewModel.dsArgumentsArticlesChangeDataChange(Sender: TObject; Field: TField);
begin
  try
    UpdateMenuArticles;
  except
    on E: Exception do
      raise Exception.Create('TdmCMSViewModel.dsArgumentsArticlesChangeDataChange ' + E.Message);
  end;
end;

procedure TdmCMSViewModel.dsMainArgumentsDataChange(Sender: TObject; Field: TField);
begin
  ExecProc(
    procedure
    begin
      if FMainArgumentID <> self.cdsMainArgumentsmain_argument_id.AsInteger then
      begin
        FMainArgumentID := self.cdsMainArgumentsmain_argument_id.AsInteger;
        {
          if Assigned(FMainArgumentsChangePrc) then
          FMainArgumentsChangePrc(cdsMainArgumentsMails);
        }
        if self.FSelectedPage = TCmsTabPages.Mails then
        begin
          cdsMainArgumentsMails.Close;
          cdsMainArgumentsMails.Open;
          if Assigned(FMainArgumentsChangePrc) then
            FMainArgumentsChangePrc(cdsMainArgumentsMails);
        end;
      end;
    end, 'dsMainArgumentsDataChange', self);
end;

procedure TdmCMSViewModel.edAbstractChange(Sender: TObject);
begin
  Modified := Modified or (self.edAbstract.Text <> self.FOldAbstract)
end;

procedure TdmCMSViewModel.edAbstractEnter(Sender: TObject);
begin
  self.FOldAbstract := edAbstract.Text

end;

procedure TdmCMSViewModel.edAbstractExit(Sender: TObject);
begin
  Modified := Modified or (self.edAbstract.Text <> self.FOldAbstract)
end;

procedure TdmCMSViewModel.edArticleDateChange(Sender: TObject);
begin

end;

procedure TdmCMSViewModel.edArticleDateEnter(Sender: TObject);
begin

end;

procedure TdmCMSViewModel.edArticleDateExit(Sender: TObject);
begin

end;

procedure TdmCMSViewModel.edExpiryDateChange(Sender: TObject);
begin

end;

procedure TdmCMSViewModel.edExpiryDateEnter(Sender: TObject);
begin

end;

procedure TdmCMSViewModel.edExpiryDateExit(Sender: TObject);
begin

end;

procedure TdmCMSViewModel.ArticleDraft(aShowMessage: boolean = True);
begin
  try
    self.Article.Deleted := False;
    self.Article.State.AsInteger := 0;
    self.FlkpPublishArticle.ItemIndex := self.Article.StatePos;
    self.SyncFormArticle;
    if aShowMessage then
      JanuaDialog1.JShowMessage('Articolo Salvato');
  except
    on E: Exception do
    begin
      if aShowMessage then
        JanuaDialog1.JShowError('Articolo non salvato errore', 'TdmCMSViewModel.ArticleDraft' + sLineBreak +
          E.ClassName + sLineBreak + E.Message)
      else
        raise Exception.Create('Articolo non salvato errore' + sLineBreak + 'TdmCMSViewModel.ArticleDraft' +
          sLineBreak + E.ClassName + sLineBreak + E.Message);
    end;
  end;
end;

procedure TdmCMSViewModel.ArticleArchive(aShowMessage: boolean = True);
begin
  self.Article.Deleted := False;
  self.Article.State.AsInteger := 9;
  self.FlkpPublishArticle.ItemIndex := self.Article.StatePos;
  self.SyncFormArticle;
  if aShowMessage then
    JanuaDialog1.JShowMessage('Articolo Archiviato');
end;

procedure TdmCMSViewModel.ChangeEmailSettings;
begin

end;

procedure TdmCMSViewModel.CheckActive;
begin
  Guard.CheckTrue(self.cdsMainArguments.Active, 'CheckActive cdsMainArguments not Active');
  Guard.CheckTrue(self.cdsArguments.Active, 'CheckActive cdsArguments Active');
  Guard.CheckTrue(self.cdsArgumentsArticles.Active, 'CheckActive cdsArgumentsArticles Active');
end;

procedure TdmCMSViewModel.SyncFormArticle(aShowMessage: boolean = True);
var
  aStream: TMemoryStream;
  // s: string; // for debuggin purposes only
begin
  try
    if Assigned(edTitle) then
      FArticle.Title.AsString := self.edTitle.Text;
    if Assigned(edVideoUrl) then
      FArticle.External_link.AsString := self.edVideoUrl.Text;
    if Assigned(edArticleDate) then
      self.Article.DateTime.AsDateTime := self.edArticleDate.DateTime;
    if Assigned(edExpiryDate) then
      self.Article.ExpiryDate.AsDateTime := self.edExpiryDate.Date;
    // lo Stato dell'articolo non ? deciso dal LookUp ma dal Menu che 'comanda sempre'.
    if Assigned(lkpPublishArticle) then
      self.Article.StatePos := FlkpPublishArticle.ItemIndex;

    if Assigned(FAdvRichEditor) then
    begin
      aStream := TMemoryStream.Create;
      try
        self.FAdvRichEditor.SaveToStream(aStream);
        aStream.Position := 0;
        FArticle.Article.LoadFromStream(aStream);
      finally
        aStream.Free;
      end;
      // *************** Importante ***** Impostando la variabile Image Path verrebbero salvate temporanemente
      // le immagini presenti nell'editor che potrebbero essere poi caricate come allegati e rinominate
      FArticle.Text.AsString := FAdvRichEditor.AsHtmlEmbedImages;
      // FAdvRichEditor.AsHtml( False, '', True);
      // self.frameRichEditorRibbon1.AsHtml(False, '', True);
      // s := FAdvRichEditor.AsHtml(False, '', True);
      // FArticle.Text.AsString := s;
    end;

    if Assigned(edAbstract) then
      FArticle.Abstract.AsString := self.edAbstract.Text;
    // s := self.frameRichEditorRibbon1.AsHtml(False, '', True);

    // FArticle.DateTime.AsDateTime := Now;
    JanuaVCLImagesManagerArticle.IsUpdating := True;
    StoreArgumentsArticle;
  except
    on E: Exception do
      raise Exception.Create('TdmCMSViewModel.SyncFormArticle: ' + sLineBreak + E.Message);
  end
end;

procedure TdmCMSViewModel.edTitleChange(Sender: TObject);
begin
  Modified := Modified or (self.edTitle.Text <> self.FOldTitle)
end;

procedure TdmCMSViewModel.edTitleEnter(Sender: TObject);
begin
  self.FOldTitle := edTitle.Text
end;

procedure TdmCMSViewModel.edTitleExit(Sender: TObject);
begin
  Modified := Modified or (self.edTitle.Text <> self.FOldTitle)
end;

procedure TdmCMSViewModel.edVideoUrlChange(Sender: TObject);
begin
  Modified := Modified or (self.edVideoUrl.Text <> self.FOLdVideoUrl)
end;

procedure TdmCMSViewModel.edVideoUrlEnter(Sender: TObject);
begin
  self.FOLdVideoUrl := edVideoUrl.Text
end;

procedure TdmCMSViewModel.edVideoUrlExit(Sender: TObject);
begin
  Modified := Modified or (self.edVideoUrl.Text <> self.FOLdVideoUrl)
end;

function TdmCMSViewModel.EmailSaveUpdates(aCheck: boolean): boolean;
begin
  if cdsMainArgumentsMails.State in [TDataSetState.dsInsert, TDataSetState.dsEdit] then
    try
      cdsMainArgumentsMails.Post;
    except
      on E: Exception do
      begin
        dmCMSViewModel.cdsMainArgumentsMails.Cancel;
        raise E
      end;
    end;
  if dmCMSViewModel.cdsMainArgumentsMails.UpdatesPending and
    (not aCheck or JMessageDlg('Attenzione salvo le modifiche alla lista Mail?')) then
    Result := (dmCMSViewModel.cdsMainArgumentsMails.ApplyUpdates(-1) > 0);
end;

procedure TdmCMSViewModel.RefreshArticlesFilter;
begin
  self.cdsArgumentsArticles.Filter := IfThen(FSearchArticleQuery = '', '', FSearchArticleQuery + ' and ') +
    SArticleFilters[FActiveFilter];
  cdsArgumentsArticles.Filtered := True;
end;

function TdmCMSViewModel.FileName(var vFile: TFileName): boolean;
begin
  Result := vFile <> '';
  if not Result then
  begin
    Result := OpenPictureDialog1.Execute and FileExists(OpenPictureDialog1.FileName);
    if Result then
      vFile := OpenPictureDialog1.FileName;
  end;
end;

procedure TdmCMSViewModel.FilePreview;
begin
  JanuaVCLFilesManagerResources.FilePreview;
end;

function TdmCMSViewModel.FileUpload(aFile: TFileName): boolean;
var
  vID: Int64;
  function OpenFile: boolean;
  begin
    Result := ((aFile <> '') and FileExists(aFile) and JanuaVCLFilesManagerResources.OpenFile(aFile)) or
      JanuaVCLFilesManagerResources.OpenFile;
  end;

begin
  Result := False;
  if OpenFile then
  begin
    vID := self.JanuaVCLFilesManagerResources.SaveFileToStorage;
    if vID > 0 then
    begin
      cdsSearchBlobFiles.Close;
      cdsSearchBlobFiles.Params[0].AsString := '%';
      cdsSearchBlobFiles.Params[1].AsLargeInt := vID;
      cdsSearchBlobFiles.Open;
      Result := cdsSearchBlobFiles.RecordCount = 1;
    end;
  end;
end;

procedure TdmCMSViewModel.FolderUpload(aFolder: string);
var
  aFile: TFileName;
  function CheckFolder: boolean;
  begin
    Result := ((aFolder <> '') and DirectoryExists(aFolder)) or
      TJanuaCoreOs.SelectFolder(aFolder, 'Seleziona Cartella', 'Ok');
  end;

begin
  try
    JanuaVCLFilesManagerResources.AutoSave := False;
    if CheckFolder then
    begin
      for aFile in TDirectory.GetFiles(aFolder) do
      begin
        if JanuaVCLFilesManagerResources.OpenFile(TPath.Combine(aFolder, aFile)) then
          JanuaVCLFilesManagerResources.SaveFileToStorage;
      end;
    end;
  except
    on E: Exception do
      raise Exception.Create(self.ClassName + 'FolderUpload ' + aFolder + sLineBreak + E.Message);
  end;
end;

procedure TdmCMSViewModel.ImageAsyncSearch(aSearch: string);
begin
  if cdsAdsBanners.Params[1].AsString <> LowerCase(aSearch) then
    aSync.Run<integer>(
      function: integer
      begin
        self.dsImages.Enabled := False;
        self.SearchImage(aSearch.ToLower);
      end,
      procedure(const aRecordCount: integer)
      begin
        dsImages.Enabled := True;
      end,
      procedure(const Ex: Exception)
      begin
        ShowMessage('TdmCMSViewModel.ImageAsyncSearch:' + sLineBreak + Ex.Message);
      end);
end;

function TdmCMSViewModel.ImageUpload(aFile: TFileName): boolean;
begin

end;

procedure TdmCMSViewModel.InsertImage(aFile: TFileName);
begin
  try
    if JanuaVCLImagesManagerArticle.OpenFile(aFile) then
    begin
      self.FArticle.MainImageId.AsLargeInt := JanuaVCLImagesManagerArticle.SaveImageToStorage;
      self.Modified := True;
    end;
  except
    on E: Exception do
      raise Exception.Create(self.ClassName + 'InsertImage ' + E.Message);
  end;
end;

procedure TdmCMSViewModel.lkpPublishArticleChange(Sender: TObject);
begin
  self.FArticle.StatePos := self.lkpPublishArticle.ItemIndex
end;

procedure TdmCMSViewModel.lkpPublishArticleEnter(Sender: TObject);
begin

end;

procedure TdmCMSViewModel.lkpPublishArticleExit(Sender: TObject);
begin

end;

function TdmCMSViewModel.LocateArticleID(aID: Int64): boolean;
  function FindArticle: boolean;
  begin
    Result := False;
    self.cdsArgumentsArticles.First;
    while not cdsArgumentsArticles.Eof do
    begin
      if self.cdsArgumentsArticlesarticle_id.AsLargeInt = aID then
        Exit(True);
      cdsArgumentsArticles.Next;
    end;
  end;

begin
  self.dsArticles.Enabled := False;
  self.dsArgumentsArticles.Enabled := False;
  Result := FindArticle;
  self.dsArticles.Enabled := True;
  self.dsArgumentsArticles.Enabled := True;
end;

procedure TdmCMSViewModel.MainAttachClick(Sender: TObject);
begin

end;

procedure TdmCMSViewModel.MainAttachDelete(aCheck: boolean);
begin
  if (not aCheck) or (JMessageDlg('Attenzione elimino Comunicato?')) then
  begin
    self.FArticle.MainAttachId.AsInteger := 0;
    self.Modified := True;
  end;
end;

procedure TdmCMSViewModel.MainAttachUpload(aAttach: string = ''; aTest: boolean = False);
begin
  if JanuaVCLFilesManagerArticle.OpenFile(aAttach) then
  begin
    self.FArticle.MainAttachId.AsLargeInt := self.JanuaVCLFilesManagerArticle.SaveFileToStorage;
    self.Modified := True;
    if not aTest then
      JanuaDialog1.JShowMessage('Allegato Caricato, Ricordatevi di Pubblicare');
    self.ActAttachFilePreview.Enabled := self.FArticle.MainAttachId.AsLargeInt > 0;
    self.ActArticleMainAttachDelete.Enabled := self.FArticle.MainAttachId.AsLargeInt > 0;
    if Assigned(AltriAllegati) then
      AltriAllegati.Enabled := self.FArticle.MainAttachId.AsLargeInt > 0;
  end;
end;

function TdmCMSViewModel.MultiAttachUpload(aProc: TProc<integer>; aPath: string): integer;
var
  tmp: string;
  LFile, tmpFile: TFileName;
  LFiles: TStringDynArray;
  LCompleted: integer;

  function CheckPath: boolean;
  begin
    Result := ((aPath <> '') and DirectoryExists(aPath)) or
      TJanuaCoreOs.SelectFolder(aPath, 'Seleziona Cartella', 'Ok');;
  end;

begin
  Result := 0;
  if CheckPath then
  begin
    LFiles := TDirectory.GetFiles(aPath);
    vtFilesList.Open;
    if vtFilesList.RecordCount > 0 then
      vtFilesList.Clear;

    for LFile in LFiles do
    begin
      tmp := ExtractFileName(LFile);
      // verifico che tmp non sia una 'tilde' allora in questo caso potr? procedere con le modifiche senza
      // Grandi problemi.
      if tmp[1] <> '~' then
      begin
        vtFilesList.Append;
        vtFilesListFullFileName.AsWideString := LFile;
        self.vtFilesListExt.AsWideString := ExtractFileExt(LFile);
        self.vtFilesListFileName.AsWideString := ExtractFileName(LFile);
        self.vtFilesListProgress.AsInteger := 0;
        vtFilesList.Post;
      end;
    end;

    // class function GetTempPath: string; static;
    tmpFile := TPath.Combine(TPath.GetTempPath, self.Article.Article_id.AsString + '.zip');

    TZipFile.ZipDirectoryContents(tmpFile, aPath, zcDeflate, OnZipProgressEvent);

    // ExtractFileExt verifica l'estensione del File xls, doc, pdf ecc ecc ecc ..............
    FArticle.Attachments.Append;
    // prima di registrare il file lo carico sul file manager
    JanuaVCLFilesManagerArticle.OpenFile(tmpFile);
    // ed imposto il suo salvataggio
    FArticle.Attachments.ArticleId.AsLargeInt := FArticle.Article_id.AsLargeInt;
    FArticle.Attachments.Extension.AsString := '.zip';
    FArticle.Attachments.Description.AsString := 'Allegati';
    FArticle.Attachments.FileId.AsLargeInt := self.JanuaVCLFilesManagerArticle.SaveFileToStorage;
    FArticle.Attachments.Post;
    Inc(Result);

    vtFilesList.First;
    /// for LFile in LFiles do
    while not vtFilesList.Eof do
    begin
      LFile := vtFilesListFullFileName.AsWideString;
      tmp := vtFilesListExt.AsWideString;
      if tmp.ToLower = '.doc' then
        tmpFile := ConvertDocToPDF(LFile)
      else
        tmpFile := LFile;
      // ExtractFileExt verifica l'estensione del File xls, doc, pdf ecc ecc ecc ..............
      FArticle.Attachments.Append;
      // prima di registrare il file lo carico sul file manager
      JanuaVCLFilesManagerArticle.OpenFile(tmpFile);
      // ed imposto il suo salvataggio
      FArticle.Attachments.ArticleId.AsLargeInt := FArticle.Article_id.AsLargeInt;
      FArticle.Attachments.Extension.AsString := ExtractFileExt(tmpFile);
      FArticle.Attachments.Description.AsString := TPath.GetFileNameWithoutExtension(tmpFile);
      FArticle.Attachments.FileId.AsLargeInt := self.JanuaVCLFilesManagerArticle.SaveFileToStorage;
      FArticle.Attachments.Post;
      Inc(Result);
      vtFilesList.Next;
    end;
    Publish({$IFDEF  TESTINSIGHT}False {$ELSE}True {$ENDIF} );
    AttachUpdateView
  end;
end;

procedure TdmCMSViewModel.NewArticle;
begin
  try
    CheckActive;
    // prima di tutto 'svuoto' l'articolo.
    Article.Clear;
    // poi faccio un 'append'.
    Article.Append;
    // una parte di queste funzioni andrebbe inserita nel codice del Dataset usando una globa conf.
    Article.Main_argument_id.AsInteger := self.cdsMainArgumentsmain_argument_id.AsInteger;
    Article.Argument_id.AsInteger := self.cdsArgumentsmain_argument_id.AsInteger;
    Article.Language_id.AsInteger := TJanuaApplication.LanguageID;
    Article.Author_id.AsInteger := TJanuaApplication.DBUserID;
    Article.DateTime.AsDateTime := Now;
    // Di default metto la data di oggi e l'ora attuale
    Article.ExpiryDate.AsDateTime := Date + 30; // porto 30 giorni avanti la data di validit?
    Article.State.AsInteger := 1; // Articolo in stato 'Bozza in attesa di Revisione'
    // Gestire Arguments Articles DBSchemaID
    // Article.DBSchemaID.AsInteger := JanuaApplicationGlobalProfile.DBSchemaID;
    // dopo dovrei aggiornare lo schermo qui potrei usare un evento 'afterclear'.  Per ora mi limito a 'sincronizzare'
    UpdateScreen;
    if cdsMainArgumentsmain_argument_id.AsLargeInt > 0 then
    begin
      JanuaVCLImagesManagerArticle.LoadImageByID(cdsMainArgumentsma_image_id.AsLargeInt,
      // in caso di 'successo' nel caricamento dell'immagine di Default allora importo ID in article.
        procedure
        begin
          FArticle.MainImageId.AsInteger := cdsMainArgumentsma_image_id.AsLargeInt;
        end);
    end;
  except
    on E: Exception do
      raise Exception.Create('TdmCMSViewModel.NewArticle ' + E.Message);
  end;
end;

procedure TdmCMSViewModel.OpenArgumentArticles;
begin
  try
    self.cdsMainArguments.Open;
    if not cdsArguments.Active then
      self.cdsArguments.Open;
    if not self.cdsArgumentsArticles.Active then
      self.cdsArgumentsArticles.Open;
    // Questo lo apre in base ai parametri .........
    if not self.cdsArgumentsArticlesAttachments.Active then
      self.cdsArgumentsArticlesAttachments.Open;
    // Gestore degli eventi
    self.dsArgumentsArticles.OnDataChange := DataChange;
    dsArgumentsArticles.Enabled := True;
    self.DataChange(dsArgumentsArticles, nil);
  except
    on E: Exception do
      raise Exception.Create('TdmCMSViewModel.OpenArgumentArticles ' + E.Message);
  end;
end;

procedure TdmCMSViewModel.OpenThreadedBanners;
begin
  self.BannerAsyncSearch('');
end;

procedure TdmCMSViewModel.OpenThreadSearchBanners(aSearch: string);
begin
  OpenThreadedBanners;
end;

procedure TdmCMSViewModel.Publish(aShowMessage: boolean = True);
begin
  try
    CheckActive;
    Editing := True;
    FArticle.State.AsInteger := 1;
    JanuaVCLImagesManagerArticle.IsUpdating := True;
    SyncFormArticle;
    // dmPgCmsStorage.StoreArgumentArticle(self.FArticle);
    self.JanuaVCLImagesManagerArticle.IsUpdating := False;
    self.Editing := False;
    self.Modified := False;
    if aShowMessage then
      JanuaDialog1.JShowMessage('Articolo Pubblicato');
  except
    on E: Exception do
    begin
      raise Exception.Create('Articolo non salvato errore' + sLineBreak + 'TdmCMSViewModel.Publish' +
        sLineBreak + E.ClassName + sLineBreak + E.Message);
    end;
  end;
end;

procedure TdmCMSViewModel.cdsArgumentsArticlesAttachmentsBeforePost(DataSet: TDataset);
begin
  cdsArgumentsArticlesAttachmentsarticle_id.AsLargeInt := self.cdsArgumentsArticlesarticle_id.AsLargeInt;
  if cdsArgumentsArticlesAttachmentsdb_schema_id.AsInteger = 0 then
    cdsArgumentsArticlesAttachmentsdb_schema_id.AsInteger := TJanuaApplication.DBSchemaID;
end;

procedure TdmCMSViewModel.cdsArgumentsArticlesAttachmentsNewRecord(DataSet: TDataset);
begin
  cdsArgumentsArticlesAttachmentscmaa_deleted.AsBoolean := False;
end;

procedure TdmCMSViewModel.RefreshArticlesAttachments;
var
  tmp: integer;
begin
  try
    self.cdsArgumentsArticlesAttachments.Close;
    self.cdsArgumentsArticlesAttachments.Params[0].AsLargeInt := cdsArgumentsArticlesarticle_id.AsLargeInt;
    self.cdsArgumentsArticlesAttachments.Params[1].AsInteger := TJanuaApplication.DBSchemaID;
    cdsArgumentsArticlesAttachments.Open;
    tmp := cdsArgumentsArticlesAttachments.RecordCount;
  except
    on E: Exception do
      raise Exception.Create('TdmCMSViewModel.RefreshArticlesAttachments ' + E.Message);
  end;
end;

procedure TdmCMSViewModel.SaveArticle(aArticle: IArticle);
begin
  try
    if aArticle.Article_id.AsInteger > 0 then
    begin
      if cdsArgumentsArticles.Locate('article_id', aArticle.Article_id.AsLargeInt, []) then
        cdsArgumentsArticles.Delete;
    end
    else
    begin
      ClearArticle;
      if cdsArguments.RecordCount > 0 then
        aArticle.DirectSaveToDataset([cdsArgumentsArticles, self.cdsArgumentsArticlesAttachments]);
    end;
    self.ApplyUpdates;
  except
    on E: Exception do
    begin
      raise Exception.Create('Articolo non salvato errore' + sLineBreak + 'TdmCMSViewModel.ArticleDraft' +
        sLineBreak + E.ClassName + sLineBreak + E.Message);
    end;
  end;
end;

procedure TdmCMSViewModel.SaveArticle;
begin
  self.SaveArticle(self.FArticle);
end;

procedure TdmCMSViewModel.SearchArticles(aSearch: string);
begin

end;

procedure TdmCMSViewModel.UpdateAdsActions;
begin
  self.AdsDeleteRecord.Enabled := self.cdsAdsBanners.RecordCount > 0;
  self.AdsSaveRecord.Enabled := self.cdsAdsBanners.ChangeCount > 0;
end;

procedure TdmCMSViewModel.SearchBlob(aBlob: string);
begin
  try
    cdsSearchBlobFiles.Close;
    cdsSearchBlobFiles.Params[0].AsString := '%' + LowerCase(aBlob) + '%';
    cdsSearchBlobFiles.Params[1].AsLargeInt := 0;
    cdsSearchBlobFiles.Open;
  except
    on E: Exception do
      raise Exception.Create('TdmCMSViewModel.SearchBlob ' + E.Message);
  end;
end;

procedure TdmCMSViewModel.SearchImage(aImage: string);
begin
  aSync.Run<integer>(
    function: integer
    begin
      cdsImages.Close;
      if (aImage = '%') or (aImage = '') then
        cdsImages.Params[0].AsString := '%'
      else
        cdsImages.Params[0].AsString := '%' + LowerCase(aImage) + '%';
      // limit parameter
      cdsImages.Params[1].AsLargeInt := 60;
      cdsImages.Open;
    end,
    procedure(const aValue: integer)
    begin
      // This is the "success" callback. Runs in the UI thread and
      // gets the result of the "background" anonymous method.

    end,
    procedure(const Ex: Exception)
    begin

    end

    );
end;

procedure TdmCMSViewModel.SendMailArticle(const aMainArgumentID: integer;
Proc: TProc<integer, integer, boolean, string>);
var
  LMail: IJanuaHtmlPage;
  LBuilder: IHtmlTableBuilder;
  LLink: IJanuaHtmlObject;
  LColumn: THtmlTableTableColumn;
  LCount: integer;
  LMailText: string;
  LTest: string;
begin
  Janua.Cloud.Impl.HtmlServerUrl := 'http://liguria.lnd.it';
  JanuaMailSender1.Settings := self.FMailSettings;

  if JanuaDialog1.JMessageDlg
    ('Attenzione Inizio Invio Mail?. Attenzione non chiudete il programma fino al messaggio di termine invio')
  then
  begin
    // self.btnSendMail.Enabled := False;

    cdsMainArgumentsMails.Close;
    cdsMainArgumentsMails.Params[0].AsInteger := aMainArgumentID;
    cdsMainArgumentsMails.Params[1].AsInteger := TJanuaApplication.DBSchemaID;
    cdsMainArgumentsMails.Open;

    LMail := Janua.Html.Impl.TJanuaHtmlFactory.CreatePage;

    LMail.Body.AddSimpleTag('h1', self.Article.Title.AsString);
    LMail.Body.AddSimpleTag('p', '   ');
    if self.Article.Abstract.Size > 0 then
      LMail.Body.AddSimpleTag('h2', self.Article.Abstract.AsString);

    if self.Article.MainAttachId.AsLargeInt > 0 then
    begin
      LLink := TCloudFactory.CreateFileLinkObject(Article.MainAttachId.AsLargeInt,
        'Clicca qui per scaricare il comunicato', '.pdf');
      LTest := LLink.AsHtml;
      LMail.Body.Add(LLink);
    end;

    LMailText := LMail.AsHtml;

    if self.Article.Attachments.RecordCount > 0 then
    begin
      LMail.Body.AddSimpleTag('div', self.FAdvRichEditor.AsHtmlEmbedImages);
      LMail.Body.AddSimpleTag('div');
      With LMail.Body.SelectedItem do
      begin
        AddSimpleTag('p', '   ');
        AddSimpleTag('p', '   ');
        AddSimpleTag('h3', 'Elenco Documenti Allegati');
        AddSimpleTag('p', '   ');
        AddSimpleTag('table');
        Article.Attachments.First;
        while not Article.Attachments.Eof do
        begin
          SelectedItem.AddSimpleTag('tr');
          SelectedItem.SelectedItem.AddSimpleTag('td');
          LLink := TCloudFactory.CreateFileLinkObject(Article.Attachments.FileId.AsLargeInt,
            Article.Attachments.Description.AsString, Article.Attachments.Extension.AsString);
          SelectedItem.SelectedItem.SelectedItem.Add(LLink);
          Article.Attachments.Next;
        end;
      end;
    end;

    LMailText := LMail.AsHtml;

    aSync.Run<integer>(
      function: integer
      begin
        if cdsMainArgumentsMails.RecordCount > 0 then
        begin
          Result := 0;
          if System.TMonitor.TryEnter(cdsMainArgumentsMails) then
            try
              cdsMainArgumentsMails.First;
              while not cdsMainArgumentsMails.Eof do
              begin
                self.JanuaMailSender1.sTo := self.cdsMainArgumentsMailsemail.AsWideString;
                self.JanuaMailSender1.sSubject := self.Article.Title.AsString;
                JanuaMailSender1.sText := LMailText;
                sleep(500);
                if not JanuaMailSender1.SendMail then
                begin
                  Inc(Result);
                  SetLength(self.FMailError, Result);
                  FMailError[Result - 1] := JanuaMailSender1.sTo + sLineBreak +
                    JanuaMailSender1.LastErrorMessage;
                end;
                cdsMainArgumentsMails.Next;
              end;
              sleep(500);
            finally
              System.TMonitor.Exit(cdsMainArgumentsMails);
              // self.btnSendMail.Enabled := True;
            end;
        end;
      end,
      procedure(const aResult: integer)
      var
        ErrorMail: string;
        i: integer;
      begin
        if aResult = 0 then
          JanuaDialog1.JShowMessage('Invio Mail Completato correttamente, tutte le mail sono state inviate')
        else
        begin
          for i := 0 to Length(self.FMailError) - 1 do
            ErrorMail := ErrorMail + FMailError[i] + sLineBreak;
          SetLength(FMailError, 0);
          JanuaDialog1.JShowError('Attenzione Errore invio ' + i.ToString + ' Mail', ErrorMail);
        end;
      end,
      procedure(const Ex: Exception)
      begin
        JanuaDialog1.JShowError('Errore Invio Mail: ' + Ex.Message);
      end);

  end;

end;

procedure TdmCMSViewModel.SetActiveFilter(const Value: TArticleFilter);
begin
  if FActiveFilter <> Value then
  begin
    FActiveFilter := Value;
    RefreshArticlesFilter;
  end;
end;

procedure TdmCMSViewModel.SetAdvRichEditor(const Value: IJanuaRTFEditor);
begin
  FAdvRichEditor := Value;
  if Assigned(FAdvRichEditor) then
  begin
    FAdvRichEditor.OnChange := self.AdvRichEditorChange;
    FAdvRichEditor.OnExit := self.AdvRichEditorExit;
    FAdvRichEditor.OnEnter := self.AdvRichEditorEnter;
  end;
end;

procedure TdmCMSViewModel.SetAltriAllegati(const Value: TMenuItem);
begin
  FAltriAllegati := Value;
  if Assigned(self.FAltriAllegati) then
    FAltriAllegati.Enabled := self.FArticle.MainAttachId.AsLargeInt > 0
end;

procedure TdmCMSViewModel.SetArticle(const Value: IArticle);
begin
  FArticle := Value;
end;

procedure TdmCMSViewModel.SetArticleClearPRC(const Value: TProc);
begin
  FArticleClearPRC := Value;
end;

procedure TdmCMSViewModel.SetBannerChangeProc(const Value: TBannerProc);
begin
  FBannerChangeProc := Value;
end;

procedure TdmCMSViewModel.SetBannerImage(const Value: TImage);
begin
  FBannerImage := Value;
  self.JanuaVCLBannersManagerResources.Image := FBannerImage;
  // self.JanuaVCLBannersManagerResources.dsArticlesDataChange(self.dsImages, self.cdsimages);
end;

procedure TdmCMSViewModel.SetDBErrors(const Value: TStrings);
begin
  FDBErrors := Value;
end;

procedure TdmCMSViewModel.SetedAbstract(const Value: TEdit);
begin
  FedAbstract := Value;
  if Assigned(FedAbstract) then
  begin
    FedAbstract.OnChange := self.edAbstractChange;
    FedAbstract.OnExit := self.edAbstractExit;
    FedAbstract.OnEnter := self.edAbstractEnter;
  end;
end;

procedure TdmCMSViewModel.SetedArticleDate(const Value: TAdvDateTimePicker);
begin
  FedArticleDate := Value;
end;

procedure TdmCMSViewModel.SetedExpiryDate(const Value: TAdvDateTimePicker);
begin
  FedExpiryDate := Value;
end;

procedure TdmCMSViewModel.SetEditing(const Value: boolean);
begin
  FEditing := Value;
end;

procedure TdmCMSViewModel.SetedTitle(const Value: TEdit);
begin
  FedTitle := Value;
  if Assigned(FedVideoUrl) then
  begin
    FedTitle.OnChange := self.edTitleChange;
    FedTitle.OnExit := self.edTitleExit;
    FedTitle.OnEnter := self.edTitleEnter;
  end;
end;

procedure TdmCMSViewModel.SetedVideoUrl(const Value: TEdit);
begin
  FedVideoUrl := Value;
  if Assigned(FedVideoUrl) then
  begin
    FedVideoUrl.OnChange := self.edVideoUrlChange;
    FedVideoUrl.OnExit := self.edVideoUrlExit;
    FedVideoUrl.OnEnter := self.edVideoUrlEnter;
  end;
end;

procedure TdmCMSViewModel.SetImageArticle(const Value: TImage);
begin
  FImageArticle := Value;
  self.JanuaVCLImagesManagerArticle.Image := FImageArticle;
  // self.JanuaVCLImagesManagerArticle.dsArticlesDataChange(self.dsImages, self.cdsImagesblob_id);
end;

procedure TdmCMSViewModel.SetImageTest(const Value: TImage);
begin
  FImageTest := Value;
end;

procedure TdmCMSViewModel.SetJanuaDialog1(const Value: TJanuaDialog);
begin
  FJanuaDialog1 := Value;
end;

procedure TdmCMSViewModel.SetJanuaVCLAttachManagerArticle(const Value: TJanuaVCLFilesManager);
begin
  FJanuaVCLAttachManagerArticle := Value;
end;

procedure TdmCMSViewModel.SetJanuaVCLBannersManagerResources(const Value: TJanuaVCLImagesManager);
begin
  FJanuaVCLBannersManagerResources := Value;
end;

procedure TdmCMSViewModel.SetJanuaVCLFilesManagerArticle(const Value: TJanuaVCLFilesManager);
begin
  FJanuaVCLFilesManagerArticle := Value;
end;

procedure TdmCMSViewModel.SetJanuaVCLFilesManagerResources(const Value: TJanuaVCLFilesManager);
begin
  FJanuaVCLFilesManagerResources := Value;
end;

procedure TdmCMSViewModel.SetJanuaVCLImagesManagerArticle(const Value: TJanuaVCLImagesManager);
begin
  FJanuaVCLImagesManagerArticle := Value;
end;

procedure TdmCMSViewModel.SetJanuaVCLImagesManagerResources(const Value: TJanuaVCLImagesManager);
begin
  FJanuaVCLImagesManagerResources := Value;
end;

procedure TdmCMSViewModel.SetlbArticle(const Value: TLabel);
begin
  FlbArticle := Value;
end;

procedure TdmCMSViewModel.SetlbGUID(const Value: TLabel);
begin
  FlbGUID := Value;
end;

procedure TdmCMSViewModel.SetlkpPublishArticle(const Value: TJvRadioGroup);
var
  i: integer;
begin
  FlkpPublishArticle := Value;
  if Assigned(FlkpPublishArticle) and (FlkpPublishArticle.Items.Count = 0) then
    for i := 0 to Pred(FArticle.StateList.Count) do
      FlkpPublishArticle.Items.Add(FArticle.StateList[i].Description);
end;

procedure TdmCMSViewModel.SetMainArgumentID(const Value: integer);
begin
  FMainArgumentID := Value;
end;

procedure TdmCMSViewModel.SetMainArgumentsChangePrc(const Value: TDatasetProc);
begin
  FMainArgumentsChangePrc := Value;
end;

procedure TdmCMSViewModel.SetmnuAttachDelete(const Value: TMenu);
begin
  FmnuAttachDelete := Value;
end;

procedure TdmCMSViewModel.SetmnuAttachPreview(const Value: TMenu);
begin
  FmnuAttachPreview := Value;
end;

procedure TdmCMSViewModel.SetModified(const Value: boolean);
begin
  FModified := Value;
  self.UpdateMenuArticles;
end;

procedure TdmCMSViewModel.SetSearchArticleText(const Value: string);
begin
  if FSearchArticleText <> Value then
  begin
    FSearchArticleText := Value;
    if FSearchArticleText = '' then
      FSearchArticleQuery := ''
    else
      FSearchArticleQuery := '(LOWER(title) LIKE ''%' + FSearchArticleText.ToLower.Trim + '%''' +
        ' or LOWER(abstract) LIKE ''%' + FSearchArticleText.ToLower.Trim + '%'') ';
    RefreshArticlesFilter;
  end;
end;

procedure TdmCMSViewModel.SetSelectedPage(const Value: TCmsTabPages);
begin
  if FSelectedPage <> Value then
  begin
    if self.FSelectedPage = TCmsTabPages.Mails then // Mail Exit
      ExecProc(
        procedure
        begin
          if cdsMainArgumentsMails.UpdatesPending then
            cdsMainArgumentsMails.ApplyUpdates(-1);

          if cdsMainArgumentsMails.Active then
            cdsMainArgumentsMails.Close;
        end, 'SetSelectedPage.MailExit: ', self)
    else if Value = TCmsTabPages.Mails then // Mail Enter
      ExecProc(
        procedure
        begin
          if not cdsMainArgumentsMails.Active then
            cdsMainArgumentsMails.Open;
        end, 'SetSelectedPage.MailEnter: ', self)
  end;

  FSelectedPage := Value;
end;

procedure TdmCMSViewModel.ShowMainAttach;
begin
  JanuaVCLFilesManagerArticle.FilePreview;
end;

procedure TdmCMSViewModel.StoreArgumentsArticle;
begin
  self.Editing := True;

  try
    try
      Guard.CheckNotNull(FArticle, 'TdmCMSViewModel.TestBlobStream FImageTest nil');
      if FArticle.Article_id.AsLargeInt <= 0 then
      begin
        FArticle.Main_argument_id.AsInteger := self.cdsMainArgumentsmain_argument_id.AsInteger;
        FArticle.Argument_id.AsInteger := self.cdsArgumentsargument_id.AsInteger;
        self.cdsArgumentsArticles.Append;
        FArticle.DirectSaveToDataset(self.cdsArgumentsArticles, False);
        // cdsArgumentsArticles.Post;
        FArticle.Article_id.AsLargeInt := self.cdsArgumentsArticlesarticle_id.AsLargeInt;
      end
      else
      begin
        self.cdsMainArguments.Locate('main_argument_id', FArticle.Main_argument_id.AsInteger, []);
        self.cdsArguments.Locate('argument_id', FArticle.Argument_id.AsInteger, []);
        if self.cdsArgumentsArticles.Locate('article_id', FArticle.Article_id.AsLargeInt, []) then
        begin
          if self.FArticle.Attachments.RecordCount > 0 then
            self.cdsArgumentsArticlesAttachments.Open;
          cdsArgumentsArticles.Edit;
          FArticle.DirectSaveToDataset([cdsArgumentsArticles, cdsArgumentsArticlesAttachments], True);
          PostDataset(cdsArgumentsArticles);
          if (FArticle.Attachments.RecordCount > 0) then
          begin
            if (cdsArgumentsArticlesAttachments.RecordCount > 0) then
              PostDataset(self.cdsArgumentsArticlesAttachments)
            else
            begin
              FArticle.Attachments.First;
              while not FArticle.Attachments.Eof do
              begin
                cdsArgumentsArticlesAttachments.Edit;
                FArticle.Attachments.articles_attachment.DirectSaveToDataset(cdsArgumentsArticlesAttachments);
                cdsArgumentsArticlesAttachments.Post;
                FArticle.Attachments.Next
              end;
            end;
            Guard.CheckTrue(cdsArgumentsArticlesAttachments.RecordCount >= FArticle.Attachments.RecordCount,
              'Attachments.RecordCount <> CDS: ' + cdsArgumentsArticlesAttachments.RecordCount.ToString +
              ' - ' + FArticle.Attachments.RecordCount.ToString);
          end
        end
        else
          raise Exception.Create('TfrmVCLCmsEditor.StoreArgumentArticle Article to Update not Found ....');
      end;
      ApplyUpdates;
      self.UpdateScreen;
    except
      on E: Exception do
        raise Exception.Create('TdmCMSViewModel.StoreArgumentsArticle ' + E.Message);
    end;
  finally
    self.Editing := False;
  end;
end;

procedure TdmCMSViewModel.TestBlobStream(aFile: TFileName);
var
  Blob: TBlob;
  aStream: TMemoryStream;
begin
  Guard.CheckNotNull(FImageTest, 'TdmCMSViewModel.TestBlobStream FImageTest nil');
  if FileName(aFile) then
  begin
    Blob := TBlob.Create(False);
    try
      Blob.LoadFromFile(OpenPictureDialog1.FileName);
      aStream := TMemoryStream.Create;
      try
        Blob.SaveToStream(aStream);
        aStream.Position := 0;
        self.FImageTest.Picture.Bitmap.Assign(nil);
        self.FImageTest.Picture.LoadFromStream(aStream);
      finally
        aStream.Free;
      end;
    finally
      Blob.Free;
    end;
  end;

end;

procedure TdmCMSViewModel.TestClear;
begin
  Guard.CheckNotNull(FImageTest, 'TdmCMSViewModel.TestBlobStream TestClear nil');
  self.FImageTest.Picture.Bitmap.Assign(nil);

end;

procedure TdmCMSViewModel.TestLoad;
begin
  Guard.CheckNotNull(FImageTest, 'TdmCMSViewModel.TestLoad FImageTest nil');
  if self.OpenPictureDialog1.Execute then
    self.FImageTest.Picture.LoadFromFile(self.OpenPictureDialog1.FileName);

end;

procedure TdmCMSViewModel.TestMemory(aFile: TFileName);
var
  LImage: Janua.Cloud.Images.Intf.IJanuaImageRecord;
  // LFile: Janua.Cloud.Files.Intf.IJanuaFileRecord;
  LStream: TMemoryStream;
begin
  if self.FileName(aFile) then
  begin
    LImage := TJanuaImageRecord.Create();
    LImage.LoadFromFile(OpenPictureDialog1.FileName);
    LStream := TMemoryStream.Create;
    try
      LImage.SaveToStream(LStream);
      LStream.Position := 0;
      self.FImageTest.Picture.Bitmap.Assign(nil);
      self.FImageTest.Picture.LoadFromStream(LStream);
    finally
      LStream.Free;
    end;
  end;

end;

procedure TdmCMSViewModel.UpdateImageDB(aFile: TFileName);
begin
  if FileName(aFile) then
  begin
    dmPgCloudStorage.dsImages.DataSet.Edit;
    dmPgCloudStorage.dsImages.DataSet.FieldByName('FileName').AsString :=
      ExtractFileName(OpenPictureDialog1.FileName);
    // cdsImagesblob_file.LoadFromFile(aFile);
    dmPgCloudStorage.dsImages.DataSet.Post;
  end;

end;

procedure TdmCMSViewModel.UpdateMenuArticles;
begin
  ExecProc(
    procedure
    begin
      ActArticleDelete.Enabled := cdsArgumentsArticles.RecordCount > 0;
      ActArticlePublish.Enabled := FModified or (self.FArticle.State.AsInteger <> 8);
      ActiArticleArchive.Enabled := cdsArgumentsArticles.RecordCount > 0;
      ActArticleDraft.Enabled := cdsArgumentsArticles.RecordCount > 0;
    end, 'UpdateMenuArticles ', self);

end;

procedure TdmCMSViewModel.UpdateArguments;
begin
  if cdsArguments.State in [dsEdit, dsInsert] then
    cdsArguments.Post;

  if cdsArguments.UpdatesPending then
    self.cdsArguments.ApplyUpdates(-1);

  if self.cdsMainArguments.State in [dsEdit, dsInsert] then
    cdsMainArguments.Post;

  if cdsMainArguments.UpdatesPending then
    self.cdsMainArguments.ApplyUpdates(-1);
end;

procedure TdmCMSViewModel.UpdateArticles;
begin
  if cdsArgumentsArticles.RecordCount > 0 then
  begin
    JanuaVCLImagesManagerArticle.LoadImageByID(cdsArgumentsArticlesarticle_id.AsLargeInt,
      procedure
      begin
        self.dsArticles.Enabled := True;
        self.dsArgumentsArticles.Enabled := True;
        self.dsBlobs.Enabled := True;
        self.dsArguments.Enabled := True;
        self.dsMainArguments.Enabled := True;
        self.dsArgumentsArticlesFiles.Enabled := True;
        self.DataChange(self, nil);
      end);
  end;
end;

procedure TdmCMSViewModel.UpdateScreen;
var
  // s: string;
  aStream: TMemoryStream;
begin
  try
    self.dsArticles.Enabled := True;
    self.dsArgumentsArticles.Enabled := True;
    self.dsBlobs.Enabled := True;
    self.dsArguments.Enabled := True;
    self.dsMainArguments.Enabled := True;
    self.dsArgumentsArticlesFiles.Enabled := True;
    self.dsImages.Enabled := True;

    if Assigned(edTitle) then
      self.edTitle.Text := FArticle.Title.AsString;
    self.FOldTitle := FArticle.Title.AsString;
    // cdsArgumentsArticlestitle.AsWideString;
    if Assigned(edArticleDate) then
      self.edArticleDate.DateTime := self.Article.DateTime.AsDateTime;
    if Assigned(edExpiryDate) then
      self.edExpiryDate.Date := self.Article.ExpiryDate.AsDateTime;
    // lo Stato dell'articolo non ? deciso dal LookUp ma dal Menu che 'comanda sempre'.
    if Assigned(FlkpPublishArticle) then
      self.FlkpPublishArticle.ItemIndex := self.Article.StatePos;

    if Assigned(FlbArticle) then
      self.FlbArticle.Caption := FArticle.Article_id.AsString;
    self.lbGUID.Caption := FArticle.GUID.ToString;
    if Assigned(FedAbstract) then
      self.FedAbstract.Text := FArticle.Abstract.AsString;
    self.FOldAbstract := FArticle.Abstract.AsString;
    // cdsArgumentsArticlesabstract.AsWideString;

    // s := cdsArgumentsArticlestext.AsWideString;
    self.FOldText := self.FArticle.Text.AsString;
    // self.frameRichEditorRibbon1.LoadHtml(self.FArticle.Text.AsString);
    self.FOLdVideoUrl := self.FArticle.External_link.AsString;

    if Assigned(FedVideoUrl) then
      self.FedVideoUrl.Text := self.FArticle.External_link.AsString;
    ActShowMainAttach.Enabled := self.FArticle.MainAttachId.AsLargeInt > 0;
    self.ActArticleMainAttachDelete.Enabled := self.FArticle.MainAttachId.AsLargeInt > 0;

    if Assigned(AdvRichEditor) and (self.FArticle.Article_id.AsInteger > 0) then
    begin
      AdvRichEditor.Clear;
      aStream := TMemoryStream.Create;
      try
        FArticle.Article.SaveToStream(aStream);
        aStream.Position := 0;
        AdvRichEditor.LoadFromStream(aStream);
      finally
        aStream.Free;
      end;
    end;

    AttachUpdateView;

  except
    on E: Exception do
      raise Exception.Create('TfrmVCLCmsEditor.UpdateScreen ' + E.Message);
  end;

end;

procedure TdmCMSViewModel.UploadEmails(aFile: TFileName);
var
  i: integer;
begin
  try
    Application.CreateForm(TdlgInputMemo, dlgInputMemo);
    if OpenDialogTxt.Execute then
      dlgInputMemo.Memo1.Lines.LoadFromFile(OpenDialogTxt.FileName);

    dlgInputMemo.ShowModal;
    if dlgInputMemo.ModalResult = mrOk then
    begin
      if not cdsMainArgumentsMails.Active then
        cdsMainArgumentsMails.Open;

      if dlgInputMemo.Memo1.Lines.Count > 0 then
        for i := 0 to Pred(dlgInputMemo.Memo1.Lines.Count) do
          if (dlgInputMemo.Memo1.Lines[i].Trim <> '') and not cdsMainArgumentsMails.Locate('email',
            dlgInputMemo.Memo1.Lines[i].Trim.ToLower, []) then
          begin
            cdsMainArgumentsMails.Append;
            cdsMainArgumentsMailsemail.AsWideString := dlgInputMemo.Memo1.Lines[i].Trim.ToLower;
            cdsMainArgumentsMails.Post;
          end;
    end;
  finally
    FreeAndNil(dlgInputMemo);
  end;
end;

{ TSaveArticleThread }

constructor TSaveArticleThread.Create(Suspended: boolean; vDataset: TDataset; vDatasource: TDataSource);
begin

end;

procedure TSaveArticleThread.DoHandleException;
begin

end;

procedure TSaveArticleThread.Execute;
begin
  inherited;

end;

procedure TSaveArticleThread.HandleException;
begin

end;

procedure TSaveArticleThread.SetArticle(const Value: IArticle);
begin
  FArticle := Value;
end;

procedure TSaveArticleThread.SetArticleClearPRC(const Value: TProc);
begin
  FArticleClearPRC := Value;
end;

procedure TSaveArticleThread.SetDataset(const Value: TClientDataSet);
begin
  FDataset := Value;
end;

procedure TSaveArticleThread.SetDatasource(const Value: TDataSource);
begin
  FDatasource := Value;
end;

end.
