unit JOrm.Workflow.AttachmentsView.Custom.Intf;

interface

uses
  Janua.Orm.Intf;

type
  ICustomWorkAttachmentView = interface(IJanuaRecord)
    ['{840E5611-3411-41DF-9AC5-20845332E16A}']
    function GetWorkId: IJanuaField;
    procedure SetWorkId(const Value: IJanuaField);
    property WorkId: IJanuaField read GetWorkId write SetWorkId;
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
    function GetDbUserId: IJanuaField;
    procedure SetDbUserId(const Value: IJanuaField);
    property DbUserId: IJanuaField read GetDbUserId write SetDbUserId;
    function GetDirectoryPath: IJanuaField;
    procedure SetDirectoryPath(const Value: IJanuaField);
    property DirectoryPath: IJanuaField read GetDirectoryPath write SetDirectoryPath;
  end;

  ICustomWorkAttachmentsView = interface(IJanuaRecordSet)
    ['{C9D76024-6218-4C1B-B905-BBFC798F21E4}']
    function GetWorkId: IJanuaField;
    procedure SetWorkId(const Value: IJanuaField);
    property WorkId: IJanuaField read GetWorkId write SetWorkId;
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
    function GetDbUserId: IJanuaField;
    procedure SetDbUserId(const Value: IJanuaField);
    property DbUserId: IJanuaField read GetDbUserId write SetDbUserId;
    function GetDirectoryPath: IJanuaField;
    procedure SetDirectoryPath(const Value: IJanuaField);
    property DirectoryPath: IJanuaField read GetDirectoryPath write SetDirectoryPath;
  end;

implementation

end.

