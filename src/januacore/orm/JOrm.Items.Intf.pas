unit JOrm.Items.Intf;

interface

uses JOrm.Items.Definitions.Custom.Intf;

type
  IItemDefinition = interface (ICustomItemDefinition )
    ['{5DA0A3EA-B594-4712-9114-67A85AE78ACD}']
  end;

  IItemDefinitions = interface (ICustomItemDefinitions )
    ['{62319B44-FE9E-4724-8C89-3D9F93CAEE8C}']
    function GetItemDefinition: IItemDefinition;
    procedure SetItemDefinition(const Value: IItemDefinition);
    property ItemDefinition: IItemDefinition read GetItemDefinition write SetItemDefinition;
  end;

implementation

end.
