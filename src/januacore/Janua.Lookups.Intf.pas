unit Janua.Lookups.Intf;

interface

uses Janua.Orm.Intf, Janua.Orm.Types;

type
  IJanuaLookupFactory = interface
    ['{24861831-9736-442D-BD9C-87023BD6A4C5}']
    function TryGetJanuaDataset(const aGUID: TGUID; const aGroupID: Variant;
      out aDataset: IJanuaDBDataset): Boolean;
  end;

  // Shipping
  IjlsVessels = interface
    ['{FA93AC8B-8C87-484A-B2E5-B640C222F619}']
  end;

  // Anagraph
  IjlsAnagraphs = interface
    ['{7948FBC2-8DB6-4AB2-98F0-A2063EBEBA26}']
  end;

  // Items
  IjlsItems = interface
    ['{776F5D98-751D-436B-83A7-148C2357FFA0}']
  end;

  IjlsHazmat = interface
    ['{08B88C0F-0419-4C40-BA87-3B1550D5EF05}']
  end;

  // Shipment
  IjlsShipments = interface
    ['{C718AA60-869B-4357-8B78-26F915103660}']
  end;

  // Accounting
  IjlsVatCodes = interface
    ['{CB7009CC-6AE6-45A1-843B-5A635984C689}']
  end;

implementation

uses Janua.Core.Types;

initialization

  Janua.Core.Types.RegisterInterface(TypeInfo(IjlsVessels));
  Janua.Core.Types.RegisterInterface(TypeInfo(IjlsAnagraphs));
  // IjlsItems
  Janua.Core.Types.RegisterInterface(TypeInfo(IjlsItems));
  // IjlsHazmat
  Janua.Core.Types.RegisterInterface(TypeInfo(IjlsHazmat));
  // IjlsShipments
  Janua.Core.Types.RegisterInterface(TypeInfo(IjlsShipments));
  // IjlsVatCodes
  Janua.Core.Types.RegisterInterface(TypeInfo(IjlsVatCodes));
  // IJanuaLookupFactory
  Janua.Core.Types.RegisterInterface(TypeInfo(IJanuaLookupFactory));
end.
