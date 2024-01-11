unit JOrm.Logistic.Shipments.Intf;

interface

uses
  Janua.Orm.Intf, JOrm.Logistic.Shipments.Custom.Intf, JOrm.Logistic.ShipmentRows.Custom.Intf,
  JOrm.Logistic.ShipmentsView.Custom.Intf, JOrm.Documents.Rows.Custom.Intf;

type
  IShipmentRow = interface(ICustomShipmentRow)
    ['{24708866-6994-4AD5-BB48-FD73D72976A8}']
  end;

  IShipmentRows = interface(ICustomShipmentRows)
    ['{D871434D-39CF-4126-B1F7-B91D91A478D3}']
    function GetShipmentRow: IShipmentRow;
    procedure SetShipmentRow(const Value: IShipmentRow);
    property ShipmentRow: IShipmentRow read GetShipmentRow write SetShipmentRow;
  end;

  IWorkDocRow = interface(ICustomDocRow)
    ['{E4C6F770-1E77-4E87-BA9B-9E4B5FF9EFDD}']
    function GetWorkID: IJanuaField;
    procedure SetWorkID(const Value: IJanuaField);
    property WorkID: IJanuaField read GetWorkID write SetWorkID;
  end;

  IWorkDocRows = interface(ICustomDocRows)
    ['{21DF725B-DECB-40C9-876E-3D51308DC4AC}']
    function GetWorkID: IJanuaField;
    procedure SetWorkID(const Value: IJanuaField);
    property WorkID: IJanuaField read GetWorkID write SetWorkID;

    function GetWorkDocRow: IWorkDocRow;
    procedure SetWorkDocRow(const Value: IWorkDocRow);
    property WorkDocRow: IWorkDocRow read GetWorkDocRow write SetWorkDocRow;
  end;

  IShipment = interface(ICustomShipment)
    ['{2B13C046-6488-442D-A337-B6AE9BC63EB6}']
  end;

  IShipmentView = interface(ICustomShipmentView)
    ['{044F5748-E597-4B5A-A2A5-49DE1F6D3D98}']
    function GetShipmentRows: IShipmentRows;
    procedure SetShipmentRows(const Value: IShipmentRows);
    property ShipmentRows: IShipmentRows read GetShipmentRows write SetShipmentRows;
  end;

  IShipments = interface(ICustomShipments)
    ['{BA408A92-C7E8-4D7E-8D00-3837FAC23404}']
    function GetShipment: IShipment;
    procedure SetShipment(const Value: IShipment);
    property Shipment: IShipment read GetShipment write SetShipment;
  end;

  IShipmentsView = interface(ICustomShipmentsView)
    ['{C31876BC-C035-4998-AF2B-E22451B47BAE}']
    function GetShipment: IShipmentView;
    procedure SetShipment(const Value: IShipmentView);
    property Shipment: IShipmentView read GetShipment write SetShipment;
  end;

implementation

end.
