unit Janua.Core.Export.Intf;

interface

uses System.Classes, Data.DB, Janua.Core.Types;

type
  IJanuaDatasetExportEngine = interface
    ['{46D3EF31-9D95-4FC1-9A3C-EAD8029DEA33}']
    function GetDelimiter: Char;
    function GetFieldList: TRecFieldDefList;
    function GetDataset: TDataset;
    procedure SetDelimiter(const Value: Char);
    procedure SetFieldList(const Value: TRecFieldDefList);
    procedure SetDataset(const Value: TDataset);
    // properties
    property Delimiter: Char read GetDelimiter write SetDelimiter;
    property FieldList: TRecFieldDefList read GetFieldList write SetFieldList;
    property Dataset: TDataset read GetDataset write SetDataset;

    function AsString: string;
    procedure SaveToStream(aStream: TStream);

  end;

implementation

end.
