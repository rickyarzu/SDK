unit Janua.Logistic.AWB.Model.Impl;

interface

uses Janua.ViewModels.Intf, Janua.Models.Templates, Janua.Logistic.AWB.ViewModel.Intf, Janua.Orm.Intf,
  JOrm.Logistic.AWBs.Intf, Data.DB, Janua.Core.Classes, JOrm.Anagraph.Intf,
  JOrm.Items.Intf, JOrm.Logistic.Locations.Intf;

type
  TJanuaCustomLogisticAWBDataModule = class(TJanuaDataModuleTemplate, IJanuaLogisticAWBsDataModule)
  private
    FjdsAWBs: IJanuaDBDataset;
    FjdsAWBRows: IJanuaDBDataset;
    FjdsAWBCodes: IJanuaDBDataset;
    FjdsAWBSurcharges: IJanuaDBDataset;
  protected
    function GetjdsAWBSurcharges: IJanuaDBDataset;
    procedure SetjdsAWBSurcharges(Value: IJanuaDBDataset);
    function GetjdsAWBCodes: IJanuaDBDataset;
    procedure SetjdsAWBCodes(Value: IJanuaDBDataset);
    function GetjdsAWBs: IJanuaDBDataset;
    procedure SetjdsAWBs(Value: IJanuaDBDataset);
    function GetjdsAWBRows: IJanuaDBDataset;
    procedure SetjdsAWBRows(Value: IJanuaDBDataset);
  public
    property jdsAWBs: IJanuaDBDataset read GetjdsAWBs write SetjdsAWBs;
    property jdsAWBCodes: IJanuaDBDataset read GetjdsAWBCodes write SetjdsAWBCodes;
    property jdsAWBRows: IJanuaDBDataset read GetjdsAWBRows write SetjdsAWBRows;
    property jdsAWBSurcharges: IJanuaDBDataset read GetjdsAWBSurcharges write SetjdsAWBSurcharges;

  public
    constructor Create; override;
  end;

  TJanuaLogisticAWBDBModel = class(TJanuaModelDBTemplate, IJanuaLogisticAWBDBModel, IJanuaDBModel,
    IJanuaModel)
  strict private
    FLogisticAWBRecord: ILogisticAWB;
    FLogisticAWBDataModule: IJanuaLogisticAWBsDataModule;
    FWorkID: Integer;
  private
    function GetLogisticAWBRecord: ILogisticAWB;
    function GetAWBRecord: ILogisticAWB;
    procedure SetAWBRecord(const Value: ILogisticAWB);
    function GetjdsAWBs: IJanuaDBDataset;
    procedure SetjdsAWBs(Value: IJanuaDBDataset);
    function GetWorkID: Integer;
    procedure SetWorkID(const Value: Integer);
    function GetjdsAWBRows: IJanuaDBDataset;
    procedure SetjdsAWBRows(Value: IJanuaDBDataset);
    procedure DefaultParams;
    function GetjdsAWBCodes: IJanuaDBDataset;
    procedure SetjdsAWBCodes(Value: IJanuaDBDataset);
  strict protected
    procedure SetMainSearchText(const Value: string); override;
    procedure InternalSetParams; override;
    function InternalActivate: boolean; override;
  public
    property jdsAWBs: IJanuaDBDataset read GetjdsAWBs write SetjdsAWBs;
    property jdsAWBCodes: IJanuaDBDataset read GetjdsAWBCodes write SetjdsAWBCodes;
    property AWBRecord: ILogisticAWB read GetAWBRecord write SetAWBRecord;
    property WorkID: Integer read GetWorkID write SetWorkID;
    property jdsAWBRows: IJanuaDBDataset read GetjdsAWBRows write SetjdsAWBRows;
    property LogisticAWBRecord: ILogisticAWB read GetLogisticAWBRecord;
  protected
    procedure vtAWBsAfterScroll(DataSet: TDataSet);
  public
    procedure StartSearch; override;
    procedure CallBackShipper(const aAnagraph: IAnagraph); // shipper
    procedure CallBackCarrier(const aAnagraph: IAnagraph); // Carrier (Airplane Company).
    procedure CAllBackAirportDeparture(const aLocation: ILogisticLocation); // Departure Airport
    procedure CAllBackAirportArrival(const aLocation: ILogisticLocation); // Arrival Airport
    procedure CallBackConsignee(const aAnagraph: IAnagraph); // Consignee
    procedure CAllBackIATAAgent(const aAnagraph: IAnagraph); // Row Item
  public
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
    constructor Create; override;
    destructor Destroy; override;
  end;

implementation

uses System.Classes, System.SysUtils, Spring, Janua.Core.Functions, Janua.Application.Framework,
  Janua.Orm.Impl, Janua.Orm.Types;

{ TJanuaCustomLogisticAWBDataModule }

constructor TJanuaCustomLogisticAWBDataModule.Create;
begin
  inherited;
  FjdsAWBCodes.Params.Activate;
  FjdsAWBRows.Params.Activate;
  FjdsAWBs.Params.Activate;
end;

function TJanuaCustomLogisticAWBDataModule.GetjdsAWBCodes: IJanuaDBDataset;
begin
  Result := FjdsAWBCodes
end;

function TJanuaCustomLogisticAWBDataModule.GetjdsAWBRows: IJanuaDBDataset;
begin
  Result := FjdsAWBRows
end;

function TJanuaCustomLogisticAWBDataModule.GetjdsAWBs: IJanuaDBDataset;
begin
  Result := FjdsAWBs
end;

function TJanuaCustomLogisticAWBDataModule.GetjdsAWBSurcharges: IJanuaDBDataset;
begin
  Result := FjdsAWBSurcharges;
end;

procedure TJanuaCustomLogisticAWBDataModule.SetjdsAWBCodes(Value: IJanuaDBDataset);
begin
  FjdsAWBCodes := Value
end;

procedure TJanuaCustomLogisticAWBDataModule.SetjdsAWBRows(Value: IJanuaDBDataset);
begin
  FjdsAWBRows := Value
end;

procedure TJanuaCustomLogisticAWBDataModule.SetjdsAWBs(Value: IJanuaDBDataset);
begin
  FjdsAWBs := Value;
  SetMainDataset(FjdsAWBs);
end;

procedure TJanuaCustomLogisticAWBDataModule.SetjdsAWBSurcharges(Value: IJanuaDBDataset);
begin
  FjdsAWBSurcharges := Value;
end;

{ TJanuaLogisticAWBDBModel }

procedure TJanuaLogisticAWBDBModel.AfterConstruction;
begin
  inherited;
  jdsMaster.AddGridColumn('year', 6, 'Year');
  jdsMaster.AddGridColumn('id', 8, 'ID');
  jdsMaster.AddGridColumn('field1c', 13, 'AWB Number');
  jdsMaster.AddGridColumn('field2', 40, 'Shipper');
  // jdsMaster.AddGridColumn('field21', 40, 'Shipper Address');
  jdsMaster.AddGridColumn('field23', 30, 'Shipper Town');
  jdsMaster.AddGridColumn('Field3', 50, 'Consignee');
  jdsMaster.AddGridColumn('Field33', 30, 'Consignee Town');
  jdsMaster.AddGridColumn('field4c2', 30, 'Vessel');
  jdsMaster.AddGridColumn('field8', 8, 'Departure');
  jdsMaster.AddGridColumn('field8a', 8, 'Arrival');
  jdsMaster.AddGridColumn('field8b', 8, 'Carrier');
  jdsMaster.AddGridColumn('field8f', 10, 'Flight');

end;

procedure TJanuaLogisticAWBDBModel.BeforeDestruction;
begin
  inherited;

end;

procedure TJanuaLogisticAWBDBModel.CAllBackAirportArrival(const aLocation: ILogisticLocation);
begin

end;

procedure TJanuaLogisticAWBDBModel.CAllBackAirportDeparture(const aLocation: ILogisticLocation);
begin

end;

procedure TJanuaLogisticAWBDBModel.CallBackCarrier(const aAnagraph: IAnagraph);
begin
  FLogisticAWBRecord.CarrierName.AsString := aAnagraph.AnLastName.AsString;
  FLogisticAWBRecord.CarrierCode.AsString := aAnagraph.AnCode.AsString;
  FLogisticAWBRecord.CarrierId.AsInteger := aAnagraph.AnagraphId.AsInteger;
end;

procedure TJanuaLogisticAWBDBModel.CallBackConsignee(const aAnagraph: IAnagraph);
begin
  FLogisticAWBRecord.ConsigneeName.AsString := aAnagraph.AnLastName.AsString;
  FLogisticAWBRecord.ConsigneeCode.AsString := aAnagraph.AnCode.AsString;
  FLogisticAWBRecord.ConsigneeId.AsInteger := aAnagraph.AnagraphId.AsInteger;
end;

procedure TJanuaLogisticAWBDBModel.CAllBackIATAAgent(const aAnagraph: IAnagraph);
begin
  FLogisticAWBRecord.IATAAgentName.AsString := aAnagraph.AnLastName.AsString;
  FLogisticAWBRecord.IATAAgentCode.AsString := aAnagraph.AnCode.AsString;
  FLogisticAWBRecord.IATAAgentId.AsInteger := aAnagraph.AnagraphId.AsInteger;
end;

procedure TJanuaLogisticAWBDBModel.CallBackShipper(const aAnagraph: IAnagraph);
begin
  FLogisticAWBRecord.ShipperName.AsString := aAnagraph.AnLastName.AsString;
  FLogisticAWBRecord.ShipperCode.AsString := aAnagraph.AnCode.AsString;
  FLogisticAWBRecord.ShipperId.AsInteger := aAnagraph.AnagraphId.AsInteger;
end;

constructor TJanuaLogisticAWBDBModel.Create;
begin
  inherited;
  try
    if not TJanuaApplicationFactory.TryGetInterface(IJanuaLogisticAWBsDataModule, FLogisticAWBDataModule) then
      raise Exception.Create('TJanuaLogisticAWBDBModel.Create IJanuaLogisticAWBsDataModule not set');
    FLogisticAWBDataModule.Activate;

    Guard.CheckNotNull(FLogisticAWBDataModule.jdsAWBs, 'jdsAWBs');

    if not TJanuaOrmFactory.TryGetRecordIntf(ILogisticAWB, FLogisticAWBRecord, 'LogisticAWB',
      TJanuaEntity.LogAWBs) then
      raise Exception.Create('TryGetRecordIntf(ILogisticAWB) not set');
    Guard.CheckNotNull(FLogisticAWBRecord, 'FDocHeadRecord');
    FLogisticAWBRecord.StoreDataset := FLogisticAWBDataModule.jdsAWBs;
    FLogisticAWBRecord.LogisticAWBRows.StoreDataset := FLogisticAWBDataModule.jdsAWBRows;
    SetInternalRecord(FLogisticAWBRecord);

    jdsMaster := FLogisticAWBDataModule.jdsAWBs;
    jdsAWBCodes := FLogisticAWBDataModule.jdsAWBCodes;
    jdsDetail := FLogisticAWBDataModule.jdsAWBRows;

    Guard.CheckNotNull(FLogisticAWBDataModule.jdsAWBCodes, 'jdsAWBCodes');

    {
      Guard.CheckNotNull(FLogisticAWBDataModule.jdsDocHeads.ParamByName('p_db_schema_id'), 'DocHeads.schema');
      Guard.CheckNotNull(FLogisticAWBDataModule.jdsDocTypes.ParamByName('p_db_schema_id'), 'DocTypes.schema');
      jdsDocHeads.ParamByName('p_db_schema_id').AsInteger := TJanuaApplication.DBSchemaID;
      jdsDocTypes.ParamByName('p_db_schema_id').AsInteger := TJanuaApplication.DBSchemaID;
    }

    // check that index field name is correct
    OrderByFields.AddField('ID', TOrderbyEnum.jobDESC);
  except
    on e: Exception do
      RaiseException('Create', e, Self);
  end;

end;

procedure TJanuaLogisticAWBDBModel.DefaultParams;
begin

end;

destructor TJanuaLogisticAWBDBModel.Destroy;
{$IFDEF DEBUG}
var
  vTest: Integer;
{$ENDIF}
begin
{$IFDEF DEBUG} vTest := TInterfacedObject(FLogisticAWBDataModule.GetSelf).RefCount; {$ENDIF}
  FLogisticAWBDataModule := nil;
  inherited;
end;

function TJanuaLogisticAWBDBModel.GetAWBRecord: ILogisticAWB;
begin
  Result := FLogisticAWBRecord
end;

function TJanuaLogisticAWBDBModel.GetLogisticAWBRecord: ILogisticAWB;
begin
  Result := FLogisticAWBRecord
end;

function TJanuaLogisticAWBDBModel.GetjdsAWBCodes: IJanuaDBDataset;
begin
  Result := FLogisticAWBDataModule.jdsAWBCodes
end;

function TJanuaLogisticAWBDBModel.GetjdsAWBRows: IJanuaDBDataset;
begin
  Result := FLogisticAWBDataModule.jdsAWBRows
end;

function TJanuaLogisticAWBDBModel.GetjdsAWBs: IJanuaDBDataset;
begin
  Result := FLogisticAWBDataModule.jdsAWBs
end;

function TJanuaLogisticAWBDBModel.GetWorkID: Integer;
begin
  Result := Self.FWorkID
end;

function TJanuaLogisticAWBDBModel.InternalActivate: boolean;
begin
  Result := inherited;
end;

procedure TJanuaLogisticAWBDBModel.InternalSetParams;
begin
  inherited;

end;

procedure TJanuaLogisticAWBDBModel.SetAWBRecord(const Value: ILogisticAWB);
begin
  FLogisticAWBRecord := Value
end;

procedure TJanuaLogisticAWBDBModel.SetjdsAWBCodes(Value: IJanuaDBDataset);
begin

end;

procedure TJanuaLogisticAWBDBModel.SetjdsAWBRows(Value: IJanuaDBDataset);
begin

end;

procedure TJanuaLogisticAWBDBModel.SetjdsAWBs(Value: IJanuaDBDataset);
begin

end;

procedure TJanuaLogisticAWBDBModel.SetMainSearchText(const Value: string);
begin
  inherited;

end;

procedure TJanuaLogisticAWBDBModel.SetWorkID(const Value: Integer);
begin
  { TODO : Manage Work ID to retrieve the correct AWBs }
end;

procedure TJanuaLogisticAWBDBModel.StartSearch;
begin
  inherited;
  FLogisticAWBRecord.LoadRecord
end;

procedure TJanuaLogisticAWBDBModel.vtAWBsAfterScroll(DataSet: TDataSet);
begin

end;

end.
