unit Janua.Maps.Intf;

interface

uses Janua.Maps.Types, System.SysUtils, Janua.Core.Types, Janua.Anagraph.Types;

// OSM stands for Open Street Maps Parser

type
  IOSMXmlParser = Interface(IInterface)
    ['{9B6A97A3-F17A-4CE6-B638-807B665116FC}']
    function ParseDocument: integer; overload;
    function ParseDocument(aDocument: string): integer; overload;
    procedure LoadDocumentFromFile(aDocumentFileName: TFileName);
    function GetOSMNodeArray: TOSMNodeArray;
    procedure SetOSMNodeArray(Value: TOSMNodeArray);
    function GetXMLDocument: string;
    procedure SetXMLDocument(Value: string);
    function FindNodes(Group, AddressType: string): TOSMNodeArray; overload;
    function FindNodes(aAddressType: TOSMLocationType): TOSMNodeArray; overload;
    // properties
    property OSMNodeArray: TOSMNodeArray read GetOSMNodeArray write SetOSMNodeArray;
    property XMLDocument: string read GetXMLDocument write SetXMLDocument;
  End;

type
  IOSMMapList = Interface(IInterface)
    ['{77C4C7E1-82C5-49F4-915A-D513973740AD}']
    function GetIsUpdating: boolean;
    function GetHasErrors: boolean;
    function GetLastErrorMessage: string;
    function GetGetAroundAnagraph: TJanuaAnagraphs;
    function GetCoordinates: TJanuaRecordCoordinates;
    function GetNewCoordinates: TJanuaRecordCoordinates;
    function GetAroundAnagraph: TJanuaAnagraphs;
    procedure SetIsUpdating(Value: boolean);
    procedure SetHasErrors(Value: boolean);
    procedure SetCoordinates(Value: TJanuaRecordCoordinates);
    procedure SetNewCoordinates(Value: TJanuaRecordCoordinates);
    procedure SetLastErrorMessage(Value: string);
    procedure SetAroundAnagraph(Value: TJanuaAnagraphs);
    property Coordinates: TJanuaRecordCoordinates read GetCoordinates write SetCoordinates;
    property NewCoordinates: TJanuaRecordCoordinates read GetNewCoordinates write SetNewCoordinates;
    property IsUpdating: boolean read GetIsUpdating write SetIsUpdating;
    property HasErrors: boolean read GetHasErrors write SetHasErrors;
    property LastErrorMessage: string read GetLastErrorMessage write SetLastErrorMessage;
    property AroundAnagraph: TJanuaAnagraphs read GetAroundAnagraph write SetAroundAnagraph;
  End;

implementation

end.
