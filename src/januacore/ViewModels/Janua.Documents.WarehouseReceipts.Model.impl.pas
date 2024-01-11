unit Janua.Documents.WarehouseReceipts.Model.impl;

interface

uses Data.DB,
  Janua.Documents.WarehouseReceipts.ViewModel.intf, Janua.Documents.Model.impl, Janua.ViewModels.intf,
  Janua.Models.Templates, Janua.Documents.ViewModel.intf, Janua.Orm.intf, Jorm.Logistic.Shipments.intf,
  Jorm.Documents.intf, Janua.Core.Classes, JOrm.Anagraph.Intf, Jorm.Items.intf;

type
  TJanuaDBWHRModel = class(TJanuaDBDocumentsModel, IJanuaWHReceiptsModel, IJanuaDBDocumentsModel, IJanuaModel)
  private
    FJanuaWHReceiptsDataModule: IJanuaWHReceiptsDataModule;
  strict protected
    function FactoryCreateDataModule: IJanuaDocumentsDataModule; override;
    function InternalActivate: boolean; override;
  public
    procedure AfterConstruction; override;
    procedure CallBackShipment(aShipment: IShipmentView);
    procedure ClearShipment;
    procedure AddNewRecord; override;
  end;

implementation

uses System.Classes, System.SysUtils, Spring, Janua.Core.Functions, Janua.Application.Framework,
  Jorm.Documents.impl, Janua.Orm.Types;

// IJanuaWHReceiptsDataModule

{ TJanuaDBWHRModel }

procedure TJanuaDBWHRModel.AddNewRecord;
begin
  inherited;
  DocHeadRecord.Reason.AsInteger := 1;
  DocHeadRecord.InOut.AsInteger := 1;
end;

procedure TJanuaDBWHRModel.AfterConstruction;
begin
  inherited;
  if Assigned(DocumentRows) then
    DocumentRows.Rows.DefaultItemID := 3;
end;

procedure TJanuaDBWHRModel.CallBackShipment(aShipment: IShipmentView);
begin
  if aShipment.Id.AsLargeInt > 0 then
  begin
    DocHeadRecord.FolderId.AsLargeInt := aShipment.Id.AsLargeInt;
    DocHeadRecord.ShipmentDes.AsString := aShipment.WorkCode.AsString + ' ' + aShipment.VesselName.AsString + ': '
      + aShipment.PodCode.AsString + ' - ' + aShipment.PolCode.AsString + ' - ' +
      aShipment.DepartureDate.AsString;
  end;
end;

procedure TJanuaDBWHRModel.ClearShipment;
begin
  DocHeadRecord.FolderId.AsLargeInt := 0;
  DocHeadRecord.ShipmentDes.AsString := '';
end;

function TJanuaDBWHRModel.FactoryCreateDataModule: IJanuaDocumentsDataModule;
begin
  { Does not replicate inherited behaviour but replaces it with a new Factory constructor }
  try
    if not TJanuaApplicationFactory.TryGetInterface(IJanuaWHReceiptsDataModule, FJanuaWHReceiptsDataModule)
    then
      raise Exception.Create('IJanuaWHReceiptsDataModule not set');
    if not Supports(FJanuaWHReceiptsDataModule, IJanuaDocumentsDataModule, Result) then
      raise Exception.Create('IJanuaDocumentsDataModule not supported');
  except
    on e: Exception do
      RaiseException('FactoryCreateDataModule', e, Self);
  end;
end;

function TJanuaDBWHRModel.InternalActivate: boolean;
begin
  Result := Active;
  if not Result then
    try
      Result := inherited;
      if Result then
      begin
        jdsMaster.AddGridColumn('id', 6, 'ID');
        jdsMaster.AddGridColumn('doc_date', 12, 'Date');
        jdsMaster.AddGridColumn('doc_number', 8, 'Doc. N°');
        jdsMaster.AddGridColumn('purchase_order_number', 30, 'P.O. Number');
        jdsMaster.AddGridColumn('holder_name', 40, 'Doc. Holder');
        jdsMaster.AddGridColumn('holder_town', 35, 'Holder Town');
        jdsMaster.AddGridColumn('location_name', 35, 'Vessel/Location');
        jdsMaster.AddGridColumn('dest_name', 35, 'Warehouse');
        jdsMaster.AddGridColumn('carrier_name', 35, 'Carrier');
      end;
      if Assigned(DocumentRows) then
        DocumentRows.Rows.DefaultItemID := 3;
    except
      on e: Exception do
        RaiseException('InternalActivate', e, Self);
    end;
end;

end.
