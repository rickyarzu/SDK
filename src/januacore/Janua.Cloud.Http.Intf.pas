unit Janua.Cloud.Http.Intf;

interface

uses System.Classes, Janua.Core.Types, Janua.Http.Types, System.Json;

type
  ICloudObject = interface(IInterface)
    ['{2F0F790F-337C-4D83-9AA7-3588CDEC580C}']
    function GetFileName: string;
    function GetURL: string;
    procedure SetFileName(const Value: string);
    procedure SetUrl(const Value: string);
    property GetileName: string read GetFileName write SetFileName;
    property URL: string read GetURL write SetUrl;
    function GetCustomPath: string;
    procedure SetCustomPath(const Value: string);
    property CustomPath: string read GetCustomPath write SetCustomPath;
    function GeTJanuaBlob: TJanuaBlob;
    procedure SeTJanuaBlob(const Value: TJanuaBlob);
    property Blob: TJanuaBlob read GeTJanuaBlob write SeTJanuaBlob;
{$IFDEF MSWINDOWS}
    function GetResponseString: UTF8String;
{$ELSE}
    function GetResponseString: string;
{$ENDIF}
{$IFDEF MSWINDOWS}
    procedure SetResponseString(const Value: UTF8String);
{$ELSE}
    procedure SetResponseString(const Value: string);
{$ENDIF}
{$IFDEF MSWINDOWS}
    property ResponseString: UTF8String read GetResponseString write SetResponseString;
{$ELSE}
    property ResponseString: string read GetResponseString write SetResponseString;
{$ENDIF}
    function GetResponseText: TStrings;
    procedure SetResponseText(const Value: TStrings);
    property ResponseText: TStrings read GetResponseText write SetResponseText;
    // MimeType
    function GetMimeType: TJanuaMimeType;
    procedure SetMimeType(const Value: TJanuaMimeType);
    property MimeType: TJanuaMimeType read GetMimeType write SetMimeType;
    // Authorization
    function GetAuthorization: TJanuaHttpAuth;
    procedure SetAuthorization(const Value: TJanuaHttpAuth);
    property Authorization: TJanuaHttpAuth read GetAuthorization write SetAuthorization;
    // Status
    function GetStatus: integer;
    procedure SetStatus(const Value: integer);
    property Status: integer read GetStatus write SetStatus;
  end;

type
  ICloudDownloader = interface(ICloudObject)
    ['{96EEB192-4E66-433F-9AF5-9FB9322EEE9C}']
    function DownloadFile(aFileName: string): Boolean; overload;
    function DownloadFile: Boolean; overload;
    function DownloadBlob: Boolean;
    function SaveTextToFile(aFileName: string): Boolean;
    function SaveTextToStream(aStream: TStream): Boolean;
    function GetUrlTextResponse: Boolean;
    function GetAnyTextResponse: Boolean;
  end;

type
  ICloudUploader = interface(ICloudObject)
    ['{A4C84C54-0BF7-47BA-8987-9F6575D22626}']
    function UploadFile(aFileName: string): Boolean; overload;
    function UploadStream(aStream: TStream): Boolean; overload;
    function UpLoadBlob: Boolean;
    function UpLoadText(aText: string): Boolean;
    function UploadTextFile(aFileName: string): Boolean;
    function UploadStrings(aStrings: TStrings): Boolean;
    function UpLoadJsonObject(aObject: TJsonObject): Boolean;
  end;

implementation

end.
