unit JOrm.Logistic.Shipments.Impl;

interface

uses Janua.Orm.Intf, Janua.Orm.Impl, Janua.Core.Types, JOrm.Logistic.Shipments.Intf,
  JOrm.Logistic.Shipments.Custom.Impl, JOrm.Logistic.ShipmentsView.Custom.Impl, JOrm.Logistic.ShipmentsRows.Custom.Impl,
  JOrm.Documents.Rows.Custom.Intf, JOrm.Documents.Rows.Custom.Impl;

// ------------------------------------------ Impl object interface ----------------------------------

type
  TShipmentRow = class(TCustomShipmentRow, IShipmentRow)
  public
    constructor Create; override;
  end;

  TShipmentRows = class(TCustomShipmentRows, IShipmentRows)
  protected
    function GetShipmentRow: IShipmentRow;
    procedure SetShipmentRow(const Value: IShipmentRow);
  public
    constructor Create; override;
    property ShipmentRow: IShipmentRow read GetShipmentRow write SetShipmentRow;
  end;

  TShipmentRowFactory = class
    class function CreateRecord(const aKey: string): IShipmentRow; overload;
    class function CreateRecordset(const aName: string; const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage)
      : IShipmentRows; overload;
  end;

  TWorkDocRow = class(TCustomDocRow, IWorkDocRow) { IWorkDocRow = interface(ICustomDocRow) }
  private
    FWorkID: IJanuaField;
  protected
    function GetWorkID: IJanuaField;
    procedure SetWorkID(const Value: IJanuaField);
  public
    constructor Create; override;
    class function New: IWorkDocRow;
    property WorkID: IJanuaField read GetWorkID write SetWorkID;
  end;

  TWorkDocRows = class(TCustomDocRows, IWorkDocRows) { = interface(ICustomDocRows) }
  protected
    function GetWorkID: IJanuaField;
    procedure SetWorkID(const Value: IJanuaField);
    function GetWorkDocRow: IWorkDocRow;
    procedure SetWorkDocRow(const Value: IWorkDocRow);
  public
    constructor Create; override;
    class function New: IWorkDocRows;
    property WorkID: IJanuaField read GetWorkID write SetWorkID;
    property WorkDocRow: IWorkDocRow read GetWorkDocRow write SetWorkDocRow;
  end;

type
  TShipment = class(TCustomShipment, IShipment)
  private
    FShipmentRows: IShipmentRows;
  protected
    function GetShipmentRows: IShipmentRows;
    procedure SetShipmentRows(const Value: IShipmentRows);
  public
    constructor Create; override;
    property ShipmentRows: IShipmentRows read GetShipmentRows write SetShipmentRows;
  end;

  TShipments = class(TCustomShipments, IJanuaRecordSet, IShipments)
  private
    FShipmentRows: IShipmentRows;
  protected
    function GetShipmentRows: IShipmentRows;
    procedure SetShipmentRows(const Value: IShipmentRows);
  public
    constructor Create; override;
    property ShipmentRows: IShipmentRows read GetShipmentRows write SetShipmentRows;
  end;

  TShipmentView = class(TCustomShipmentView, IShipmentView)
  private
    FShipmentRows: IShipmentRows;
  protected
    function GetShipmentRows: IShipmentRows;
    procedure SetShipmentRows(const Value: IShipmentRows);
  public
    constructor Create; override;
    property ShipmentRows: IShipmentRows read GetShipmentRows write SetShipmentRows;
  end;

  TShipmentsView = class(TCustomShipmentsView, IJanuaRecordSet, IShipmentsView)
  protected
    function GetShipment: IShipmentView;
    procedure SetShipment(const Value: IShipmentView);
  public
    constructor Create; override;
  public
    property Shipment: IShipmentView read GetShipment write SetShipment;
  end;

  TShipmentsFactory = class
    class function CreateRecord(const aKey: string): IShipment; overload;
    class function CreateRecordset(const aName: string; const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage)
      : IShipments; overload;
  end;

  TShipmentsViewFactory = class
    class function CreateRecord(const aKey: string): IShipmentView; overload;
    class function CreateRecordset(const aName: string; const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage)
      : IShipmentsView; overload;
  end;

implementation

uses Janua.Orm.Types;

{ TShipmentRowFactory }

class function TShipmentRowFactory.CreateRecord(const aKey: string): IShipmentRow;
begin
  Result := TShipmentRow.Create;
end;

class function TShipmentRowFactory.CreateRecordset(const aName: string;
  const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage): IShipmentRows;
begin
  Result := TShipmentRows.Create(aName, aLocalStorage, aRemoteStorage);
end;

{ TShipmentRows }

constructor TShipmentRows.Create;
begin
  inherited;
  self.FRecord := TShipmentRowFactory.CreateRecord('ShipmentRow');
end;

function TShipmentRows.GetShipmentRow: IShipmentRow;
begin
  Result := FRecord as IShipmentRow
end;

procedure TShipmentRows.SetShipmentRow(const Value: IShipmentRow);
begin
  FRecord := Value as IJanuaRecord
end;


// ------------------------------------------ Impl TGroup -------------------------------

{ TGroup }

constructor TShipment.Create;
begin
  inherited;
  SetEntity(TJanuaEntity.LogShipments);
  FPrefix := 'pkor';
  FShipmentRows := TShipmentRows.Create;
end;

{ TShipments }
constructor TShipments.Create;
begin
  inherited;
  FRecord := TShipmentsFactory.CreateRecord('Shipment');
end;

function TShipments.GetShipmentRows: IShipmentRows;
begin
  Result := FShipmentRows
end;

procedure TShipments.SetShipmentRows(const Value: IShipmentRows);
begin
  FShipmentRows := Value
end;

{ TShipmentsFactory }

class function TShipmentsFactory.CreateRecord(const aKey: string): IShipment;
begin
  Result := TShipment.Create;
end;

class function TShipmentsFactory.CreateRecordset(const aName: string;
  const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage): IShipments;
begin
  Result := TShipments.Create(aName, aLocalStorage, aRemoteStorage);
end;

{ TShipmentsViewFactory }

class function TShipmentsViewFactory.CreateRecord(const aKey: string): IShipmentView;
begin
  Result := TShipmentView.Create;
  Result.Name := aKey;
end;

class function TShipmentsViewFactory.CreateRecordset(const aName: string;
  const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage): IShipmentsView;
begin
  Result := TShipmentsView.Create(aName, aLocalStorage, aRemoteStorage);
end;

{ TShipmentView }

constructor TShipmentView.Create;
begin
  inherited;
  SetEntity(TJanuaEntity.LogShipments);
  FPrefix := 'lshp';
end;

function TShipmentView.GetShipmentRows: IShipmentRows;
begin

end;

procedure TShipmentView.SetShipmentRows(const Value: IShipmentRows);
begin

end;

{ TShipmentsView }

constructor TShipmentsView.Create;
begin
  inherited;
  FRecord := TShipmentsViewFactory.CreateRecord('Shipment');
end;

function TShipmentsView.GetShipment: IShipmentView;
begin
  Result := FRecord as IShipmentView
end;

procedure TShipmentsView.SetShipment(const Value: IShipmentView);
begin
  FRecord := Value
end;

{ TShipmentRow }

constructor TShipmentRow.Create;
begin
  inherited;
  SetEntity(TJanuaEntity.LogShipmentRows);
  FPrefix := 'pkor';
end;

function TShipment.GetShipmentRows: IShipmentRows;
begin
  Result := FShipmentRows;
end;

procedure TShipment.SetShipmentRows(const Value: IShipmentRows);
begin
  FShipmentRows := Value;
end;

{ TWorkDocRow }

constructor TWorkDocRow.Create;
begin
  inherited;
  FWorkID := AddCreateField(TJanuaFieldType.jptLargeint, 'work_id', 'work_id');
  FPrefix := 'wkdr';
end;

function TWorkDocRow.GetWorkID: IJanuaField;
begin
  Result := FWorkID;
end;

class function TWorkDocRow.New: IWorkDocRow;
begin
  Result := TWorkDocRow.Create;
end;

procedure TWorkDocRow.SetWorkID(const Value: IJanuaField);
begin
  FWorkID := Value
end;

{ TWorkDocRows }

constructor TWorkDocRows.Create;
begin
  inherited;
  FRecord := TWorkDocRow.New
end;

function TWorkDocRows.GetWorkDocRow: IWorkDocRow;
begin
  Result := FRecord as IWorkDocRow
end;

function TWorkDocRows.GetWorkID: IJanuaField;
begin
  Result := GetWorkDocRow.WorkID
end;

class function TWorkDocRows.New: IWorkDocRows;
begin
  Result := TWorkDocRows.Create
end;

procedure TWorkDocRows.SetWorkDocRow(const Value: IWorkDocRow);
begin
  if Assigned(Value) then
    FRecord := Value
  else
    FRecord := nil;
end;

procedure TWorkDocRows.SetWorkID(const Value: IJanuaField);
begin
  GetWorkDocRow.WorkID := Value
end;

end.
