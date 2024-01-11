unit Janua.Cms.Intf;

interface

uses Spring.Collections;

type
  ICmsSettings = interface(IInterface)
    ['{2187DC98-DC03-4E4A-858B-A0D70BCE6DBF}']
    function GetExtensionsList: IDictionary<string, Int64>;
    procedure SetExtensionsList(const Value: IDictionary<string, Int64>);
    procedure AddExtension(aExtension: string; aID: Int64);
    property ExtensionsList: IDictionary<string, Int64> read GetExtensionsList write SetExtensionsList;
  end;

implementation

end.
