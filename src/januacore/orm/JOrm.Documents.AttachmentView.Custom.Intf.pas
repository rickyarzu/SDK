unit JOrm.Documents.AttachmentView.Custom.Intf;

interface

uses Janua.Orm.Intf;

type

  ICustomAttachmentView = interface(IJanuaRecord)
    ['{8810C9A1-C00D-46D5-BF30-7A9EB0DEDAD0}']
    function GetDocId: IJanuaField;
    procedure SetDocId(const Value: IJanuaField);
    property DocId: IJanuaField read GetDocId write SetDocId;
    function GetBlobId: IJanuaField;
    procedure SetBlobId(const Value: IJanuaField);
    property BlobId: IJanuaField read GetBlobId write SetBlobId;
    function GetBlobJguid: IJanuaField;
    procedure SetBlobJguid(const Value: IJanuaField);
    property BlobJguid: IJanuaField read GetBlobJguid write SetBlobJguid;
    function GetLocation: IJanuaField;
    procedure SetLocation(const Value: IJanuaField);
    property Location: IJanuaField read GetLocation write SetLocation;
    function GetFilename: IJanuaField;
    procedure SetFilename(const Value: IJanuaField);
    property Filename: IJanuaField read GetFilename write SetFilename;
    function GetDescription: IJanuaField;
    procedure SetDescription(const Value: IJanuaField);
    property Description: IJanuaField read GetDescription write SetDescription;
    function GetContext: IJanuaField;
    procedure SetContext(const Value: IJanuaField);
    property Context: IJanuaField read GetContext write SetContext;
    function GetExtension: IJanuaField;
    procedure SetExtension(const Value: IJanuaField);
    property Extension: IJanuaField read GetExtension write SetExtension;
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
    function GetFlgInternet: IJanuaField;
    procedure SetFlgInternet(const Value: IJanuaField);
    property FlgInternet: IJanuaField read GetFlgInternet write SetFlgInternet;
    function GetJguid: IJanuaField;
    procedure SetJguid(const Value: IJanuaField);
    property Jguid: IJanuaField read GetJguid write SetJguid;
    function GetBlobFile: IJanuaField;
    procedure SetBlobFile(const Value: IJanuaField);
    property BlobFile: IJanuaField read GetBlobFile write SetBlobFile;
    function GetBlobSize: IJanuaField;
    procedure SetBlobSize(const Value: IJanuaField);
    property BlobSize: IJanuaField read GetBlobSize write SetBlobSize;
    function GetBlobKey: IJanuaField;
    procedure SetBlobKey(const Value: IJanuaField);
    property BlobKey: IJanuaField read GetBlobKey write SetBlobKey;
    function GetBlobFilename: IJanuaField;
    procedure SetBlobFilename(const Value: IJanuaField);
    property BlobFilename: IJanuaField read GetBlobFilename write SetBlobFilename;
    function GetIsExternal: IJanuaField;
    procedure SetIsExternal(const Value: IJanuaField);
    property IsExternal: IJanuaField read GetIsExternal write SetIsExternal;
    function GetInsertDate: IJanuaField;
    procedure SetInsertDate(const Value: IJanuaField);
    property InsertDate: IJanuaField read GetInsertDate write SetInsertDate;
    function GetIsresource: IJanuaField;
    procedure SetIsresource(const Value: IJanuaField);
    property Isresource: IJanuaField read GetIsresource write SetIsresource;
    function GetDirectoryId: IJanuaField;
    procedure SetDirectoryId(const Value: IJanuaField);
    property DirectoryId: IJanuaField read GetDirectoryId write SetDirectoryId;
    function GetDirectoryPath: IJanuaField;
    procedure SetDirectoryPath(const Value: IJanuaField);
    property DirectoryPath: IJanuaField read GetDirectoryPath write SetDirectoryPath;
    function GetDeleted: IJanuaField;
    procedure SetDeleted(const Value: IJanuaField);
    property Deleted: IJanuaField read GetDeleted write SetDeleted;
  end;

  ICustomAttachmentsView = interface(IJanuaRecordSet)
    ['{531F5406-0426-4C13-96E8-B19890774FDA}']
    function GetDocId: IJanuaField;
    procedure SetDocId(const Value: IJanuaField);
    property DocId: IJanuaField read GetDocId write SetDocId;
    function GetBlobId: IJanuaField;
    procedure SetBlobId(const Value: IJanuaField);
    property BlobId: IJanuaField read GetBlobId write SetBlobId;
    function GetBlobJguid: IJanuaField;
    procedure SetBlobJguid(const Value: IJanuaField);
    property BlobJguid: IJanuaField read GetBlobJguid write SetBlobJguid;
    function GetLocation: IJanuaField;
    procedure SetLocation(const Value: IJanuaField);
    property Location: IJanuaField read GetLocation write SetLocation;
    function GetFilename: IJanuaField;
    procedure SetFilename(const Value: IJanuaField);
    property Filename: IJanuaField read GetFilename write SetFilename;
    function GetDescription: IJanuaField;
    procedure SetDescription(const Value: IJanuaField);
    property Description: IJanuaField read GetDescription write SetDescription;
    function GetContext: IJanuaField;
    procedure SetContext(const Value: IJanuaField);
    property Context: IJanuaField read GetContext write SetContext;
    function GetExtension: IJanuaField;
    procedure SetExtension(const Value: IJanuaField);
    property Extension: IJanuaField read GetExtension write SetExtension;
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
    function GetFlgInternet: IJanuaField;
    procedure SetFlgInternet(const Value: IJanuaField);
    property FlgInternet: IJanuaField read GetFlgInternet write SetFlgInternet;
    function GetJguid: IJanuaField;
    procedure SetJguid(const Value: IJanuaField);
    property Jguid: IJanuaField read GetJguid write SetJguid;
    function GetBlobFile: IJanuaField;
    procedure SetBlobFile(const Value: IJanuaField);
    property BlobFile: IJanuaField read GetBlobFile write SetBlobFile;
    function GetBlobSize: IJanuaField;
    procedure SetBlobSize(const Value: IJanuaField);
    property BlobSize: IJanuaField read GetBlobSize write SetBlobSize;
    function GetBlobKey: IJanuaField;
    procedure SetBlobKey(const Value: IJanuaField);
    property BlobKey: IJanuaField read GetBlobKey write SetBlobKey;
    function GetBlobFilename: IJanuaField;
    procedure SetBlobFilename(const Value: IJanuaField);
    property BlobFilename: IJanuaField read GetBlobFilename write SetBlobFilename;
    function GetIsExternal: IJanuaField;
    procedure SetIsExternal(const Value: IJanuaField);
    property IsExternal: IJanuaField read GetIsExternal write SetIsExternal;
    function GetInsertDate: IJanuaField;
    procedure SetInsertDate(const Value: IJanuaField);
    property InsertDate: IJanuaField read GetInsertDate write SetInsertDate;
    function GetIsresource: IJanuaField;
    procedure SetIsresource(const Value: IJanuaField);
    property Isresource: IJanuaField read GetIsresource write SetIsresource;
    function GetDirectoryId: IJanuaField;
    procedure SetDirectoryId(const Value: IJanuaField);
    property DirectoryId: IJanuaField read GetDirectoryId write SetDirectoryId;
    function GetDirectoryPath: IJanuaField;
    procedure SetDirectoryPath(const Value: IJanuaField);
    property DirectoryPath: IJanuaField read GetDirectoryPath write SetDirectoryPath;
    function GetCustomAttachmentView: ICustomAttachmentView;
    procedure SetCustomAttachmentView(const Value: ICustomAttachmentView);
    property CustomAttachmentView: ICustomAttachmentView read GetCustomAttachmentView write SetCustomAttachmentView;
    function GetDeleted: IJanuaField;
    procedure SetDeleted(const Value: IJanuaField);
    property Deleted: IJanuaField read GetDeleted write SetDeleted;
  end;

implementation

end.
