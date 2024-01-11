unit Janua.Controls.Grids.Intf;

interface

uses
  Data.DB,
  // Janua
  Janua.Core.Types, Janua.Core.Classes.Intf, Janua.Bindings.Intf, Janua.Orm.Types, Janua.Orm.Intf;

type
  TJanuaGridType = (jgtDBGrid, jgtTMS, jgtWoll2Woll, jgtDEXQuantum);

  IJanuaGrid = interface(IJanuaBindableComponent)
    procedure AddColumn(const aField: TJanuaGridFieldDef);
  end;

  IJanuaDBGrid = interface(IJanuaGrid)
    ['{3FBFFC03-21DC-4BA1-AED7-2E05042679C3}']
  end;

  IJanuaTMSGrid = interface(IJanuaGrid)
    ['{F237E877-FCA0-4036-A1C0-88046F79C02C}']
  end;

  IJanuaWoll2WollGrid = interface(IJanuaGrid)
    ['{EBFF757B-9F11-45E6-92EA-561A13D1A4FD}']
  end;

  IJanuaDEXQuantumGrid = interface(IJanuaGrid)
    ['{7FAAE437-A7AB-4F93-AFA0-E54D58FA5442}']
  end;

implementation

end.
