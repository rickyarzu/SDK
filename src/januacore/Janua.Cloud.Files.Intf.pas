unit Janua.Cloud.Files.Intf;

interface

uses
  System.Classes, Spring, Janua.Core.Types, System.SysUtils, Janua.Orm.Intf, Janua.Http.Types,
  Janua.Server.Intf, Janua.Core.DB.Intf, Spring.Collections;

type
  /// <summary>This Interface defines the behaviour of a 'Record' containing a File
  /// The 'record' can be serialized and deserializied in order to be sent and
  /// received through a REST or simply http connection.
  /// </summary>
  IJanuaFileRecord = interface(IInterface)
    ['{5E2D72CC-B92A-4F4B-B40E-9F0BCF89B3AB}']
    // blob field
    function GeTJanuaBlob: TJanuaBlob;
    procedure SeTJanuaBlob(Value: TJanuaBlob);
    function GetFileName: TFileName;
    procedure SetFileName(const Value: TFileName);
    function getDBUserID: integer;
    procedure SetDBUserID(const Value: integer);
    function getSchemaID: integer;
    procedure SetSchemaID(const Value: integer);
    function getSaved: boolean;
    procedure SetSaved(const Value: boolean);
    function getModified: boolean;
    function GetMime: string;
    procedure SetMime(Value: string);
    function GetMimeType: TJanuaMimeType;
    procedure SetMimeType(const Value: TJanuaMimeType);
    function GetExt: string;
    procedure SetExt(const Value: string);
    function GetItemIndex: integer;
    procedure SetItemIndex(const Value: integer);
    function GetGUID: TGUID;
    procedure SetGUID(const Value: TGUID);
    /// <summary>
    /// Field ID Getter
    /// </summary>
    function GetID: Int64;
    /// <summary>
    /// Field ID Setter
    /// </summary>
    /// <param name="Value">
    /// Int64 Unique ID
    /// </param>
    procedure SetID(Value: Int64);
    // <summary>Saves current Blob File to a Stream</summary>
    // <param name="aStrem"> (TStream) stream to save to </param>
    procedure LoadFromStream(aStrem: TStream);
    procedure SaveToStream(aStream: TStream);
    /// <summary>
    /// Open the selected File and stores it in the current record.
    /// This operation generates a new GUID if GUID is null
    /// </summary>
    /// </summary>
    /// <param name="aFileName">
    /// TFileName The name of the file to UpLoad. Mandatory
    /// </param>
    function LoadFromFile(aFileName: TFileName): boolean;
    /// <summary>
    /// Saves the current blob to the selected File.
    /// Extension and file type of destination must match the blob source ones.
    /// </summary>
    /// </summary>
    /// <param name="aFileName">
    /// TFileName The name of the file to Save to. Mandatory. File must not Exist.
    /// </param>
    function SaveToFile(aFileName: TFileName): boolean;
    /// <summary>
    /// This procedure Adds a New Record and ask it to load a File. If File
    /// Exists. I then checks if upload is 'True' and then stores it to the
    /// list. If AutoSave is on and Storage is Set it can also try to store
    /// then new record and Retrieve the new 'ID' from the Storage.
    /// </summary>
    /// <param name="aFileDir">
    /// Target Directory
    /// </param>
    /// <returns>
    /// Return True if file is saved successfully
    /// </returns>
    function SaveToFileDir(aFileDir: TFileName): boolean;
    // properties ************************************************************************************
    /// <summary>
    /// Blob è il container in Byte dell'immagine registrata in memoria
    /// </summary>
    property Blob: TJanuaBlob read GeTJanuaBlob write SeTJanuaBlob;
    /// <summary>
    /// ID è un campo a 64bit con l'identificativo unico dell'immagine
    /// stessa.
    /// </summary>
    property ID: Int64 read GetID write SetID;
    /// <summary>
    /// E' il filename completo di Estensione ma senza il 'percorso' del file system
    /// </summary>
    property FileName: TFileName read GetFileName write SetFileName;
    /// <summary> E' il filename identificato da un GUID + Ext quindi unico da usare in indice di ricerca </summary>
    function FileNameGUID: TFileName;
    /// <summary> Inizializza tutti i valori del record al loro default e prepara l'input di un nuovo record </summary>
    procedure NewRecord;
    /// <summary> Schema del DB dove è memorizzata l'immagine </summary>
    property SchemaID: integer read getSchemaID write SetSchemaID;
    property DBUserID: integer read getDBUserID write SetDBUserID;
    // <summary> Mime Type name using standard RFC 1521. Example: image/gif </summary>
    property Mime: string read GetMime write SetMime;
    // <summary> MMaps MIME types managed by Janua Framework to TJanuaMimeType Enumerator</summary>
    property MimeType: TJanuaMimeType read GetMimeType write SetMimeType;
    /// <summary> Extension is the file extension and can be connected to MIME Type </summary>
    property Ext: string read GetExt write SetExt;
    /// <summary> File Index Stores the Index in the container's IList</summary>
    property ItemIndex: integer read GetItemIndex write SetItemIndex;
    /// <summary> wHEN FILE is created/updated/loaded/deleted The Modified State changes </summary>
    property Modified: boolean read getModified;

    property Saved: boolean read getSaved write SetSaved;
    property GUID: TGUID read GetGUID write SetGUID;
  end;

type
  TOutputProc = reference to procedure(const aResult: boolean; aID: Int64; aFile: IJanuaFileRecord);

type

  IJanuaFileMemoryStorage = interface;

  IJanuaCloudFileStorage = interface(IJanuaStorage)
    ['{5AD15E1E-6E8B-454D-BA6A-3C24939F5132}']
    function LoadImage(const aID: Int64; var aImage: IJanuaFileRecord): boolean; overload;
    function LoadImage(const aGuid: TGUID; var aImage: IJanuaFileRecord): boolean; overload;
    function DeleteImage(const aID: Int64): boolean; overload;
    function DeleteImage(const aGuid: TGUID): boolean; overload;
    function SaveImage(const aImage: IJanuaFileRecord; const aSID, aOID: integer): Int64;
    function GetImagesList(const aLimit: integer): TArray<Int64>;
    function LoadFile(const aID: Int64; var aFile: IJanuaFileRecord): boolean; overload;
    function LoadFile(const aGuid: TGUID; var aFile: IJanuaFileRecord): boolean; overload;
    function DeleteFile(const aID: Int64): boolean; overload;
    function DeleteFile(const aGuid: TGUID): boolean; overload;
    function SaveFile(const aFile: IJanuaFileRecord; const aSID, aOID: integer): Int64;
    function GetFilessList(const aLimit: integer): TArray<Int64>;
    function GetResourcesList: IDictionary<string, Int64>;
    function GetResources(var aList: IDictionary<string, Int64>; var aStorage: IJanuaFileMemoryStorage): integer;
  end;

  IJanuaFileStorage = interface(IInterface)
    ['{FB65B5EB-E6AC-4161-A69C-FFC7BCABB456}']
    function SaveFileToStorage(const aFile: IJanuaFileRecord): Int64;
    function LoadFileFromStorage(const aID: Int64): IJanuaFileRecord; overload;
    function LoadFileFromStorage(const aGuid: TGUID): IJanuaFileRecord; overload;
    procedure DeleteFileFromStorage(const aFile: IJanuaFileRecord); overload;
    procedure DeleteFileFromStorage(const aID: Int64); overload;
    procedure AsyncSaveFileToStorage(const aFile: IJanuaFileRecord; aResultProc: TOutputProc);
    procedure AsyncDeleteFileFromStorage(const aID: Int64; aResultProc: TOutputProc); overload;
    procedure AsyncLoadFileFromStorage(const aID: Int64; aResultProc: TOutputProc); overload;
    procedure AsyncDeleteFileFromStorage(const aGuid: TGUID; aResultProc: TOutputProc); overload;
    procedure AsyncLoadFileFromStorage(const aGuid: TGUID; aResultProc: TOutputProc); overload;
    function FilesList(const aLimit: integer): TArray<Int64>;
    function SearchFileByID(const aID: Int64; var aFile: IJanuaFileRecord): boolean;
    function SearchFileByGUID(const aGuid: TGUID; var aFile: IJanuaFileRecord): boolean;
  end;

  IJanuaFileMemoryStorage = interface(IInterface)
    ['{3F3226A8-E6C7-4B9B-861E-0F02B42B3B0E}']
    // private or protected Methods
    function GetCount: Int64;
    function GetItemIndex: integer;
    function GetSelectedItem: IJanuaFileRecord;
    procedure SetSelectedItem(const Value: IJanuaFileRecord);
    // Public or Published Methods
    function AddFileFromStream(aStream: TStream): integer;
    function GetFileAsBlob(const aID: Int64): TJanuaBlob;
    function SearchFileByID(aID: Int64): boolean;
    function SearchFileByGUID(aID: TGUID): boolean;
    function GetFileAsStream(const aID: Int64): TStream;
    procedure SaveFileToStream(const aID: Int64; aStream: TStream);
    function GetFileByIndex(const aIndex: integer): IJanuaFileRecord;
    function GetFileByID(const aID: Int64): IJanuaFileRecord;
    function GetFileByFileName(const aFileName: string): IJanuaFileRecord;
    function AddFile(Value: IJanuaFileRecord; aSaveToStorage: boolean = False): integer;
    function SaveFileToStorage: Int64;
    procedure DeleteFile(const aID: Int64; aDelFromStorage: boolean = False);
    // properties
    property Count: Int64 read GetCount;
    property ItemIndex: integer read GetItemIndex;
    property SelectedItem: IJanuaFileRecord read GetSelectedItem write SetSelectedItem;
    procedure LoadFilesList(aLimit: integer);
    /// <summary>
    /// This procedure Adds a New Record and ask it to load a File. If File
    /// Exists. I then checks if upload is 'True' and then stores it to the
    /// list. If AutoSave is on and Storage is Set it can also try to store
    /// then new record and Retrieve the new 'ID' from the Storage.
    /// </summary>
    function AddFromFile(aFileName: TFileName): integer;
    procedure SaveToFile(aFileName: TFileName);
    procedure SaveToFileDir(aDirName: TFileName);
    function GetFileByGUID(const aGuid: TGUID): IJanuaFileRecord;
  end;

implementation

end.
