unit Janua.Cloud.Server.Intf;

interface

uses
  Janua.system.Server.Intf, Janua.Server.Intf, Janua.Cloud.Images.Intf, Janua.Cloud.Files.Intf;

type
  IJanuaServerCloud = interface(IJanuaServer)
    ['{DBA0939E-DBE3-41BF-A515-60205F584521}']
    procedure SetJanuaServerSystem(val: IJanuaServerSystem);
    function GetJanuaServerSystem(): IJanuaServerSystem;
    property JanuaServerSystem: IJanuaServerSystem read GetJanuaServerSystem write SetJanuaServerSystem;
    procedure SetFileStorage(val: IJanuaFileStorage);
    function GetFileStorage(): IJanuaFileStorage;
    property FileStorage: IJanuaFileStorage read GetFileStorage write SetFileStorage;
    procedure SetFiles(val: IJanuaFileMemoryStorage);
    function GetFiles(): IJanuaFileMemoryStorage;
    property Files: IJanuaFileMemoryStorage read GetFiles write SetFiles;
    function GetImageFiles: IJanuaImageMemoryStorage;
    procedure SetImageFiles(const Value: IJanuaImageMemoryStorage);
    property ImageFiles: IJanuaImageMemoryStorage read GetImageFiles write SetImageFiles;
    // IJanuaImageStorage
    function GetImageStorage: IJanuaImageStorage;
    procedure SetImageStorage(const Value: IJanuaImageStorage);
    property ImageStorage: IJanuaImageStorage read GetImageStorage write SetImageStorage;
  end;

implementation

end.
