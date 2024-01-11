unit Janua.Core.Anagraph.Cache;

interface

uses Janua.Anagraph.ViewModel.Intf;

type
  TJanuaAnagraphCache = class
  private
    {
      class var FWHReceiptsViewModel: IJanuaWHReceiptsViewModel;
      class var FShipmentViewModel: IJanuaDBShipmentsViewModel;
    }
  public
    class procedure Setup;
    class procedure TearDown;
  public
    {
      class Property WHReceiptsViewModel: IJanuaWHReceiptsViewModel read FWHReceiptsViewModel;
      class Property ShipmentViewModel: IJanuaDBShipmentsViewModel read FShipmentViewModel;
    }
  end;

implementation

uses System.SysUtils, Janua.Core.Classes, Janua.Application.Framework, Janua.Core.AsyncTask,
  Janua.Core.Functions,
  Janua.Orm.Intf;

{ TJanuaAnagraphCache }

class procedure TJanuaAnagraphCache.Setup;
begin
  Async.Run<Integer>(
    function: Integer
    begin
      Result := -1;
      {
        TJanuaApplicationFactory.TryGetInterface(IJanuaWHReceiptsViewModel, FWHReceiptsViewModel);
        try
        FWHReceiptsViewModel.jdsDocHeads.DataSource.Enabled := False;
        FWHReceiptsViewModel.Activate;
        if not FWHReceiptsViewModel.jdsDocHeads.Active then
        FWHReceiptsViewModel.OpenAll(False);
        Result := FWHReceiptsViewModel.jdsDocHeads.RecordCount;
        finally
        FWHReceiptsViewModel.jdsDocHeads.DataSource.Enabled := True;
        end;

        TJanuaApplicationFactory.TryGetInterface(IJanuaDBShipmentsViewModel, FShipmentViewModel);
        try
        FShipmentViewModel.jdsShipments.DataSource.Enabled := False;
        FShipmentViewModel.Activate;
        if not FShipmentViewModel.jdsShipments.Active then
        FShipmentViewModel.OpenAll(False);
        Result := FShipmentViewModel.jdsShipments.RecordCount;
        finally
        FShipmentViewModel.jdsShipments.DataSource.Enabled := True;
        end;
      }
    end,
    procedure(const aResult: Integer)
    begin

    end,
    procedure(const Ex: Exception)
    begin
      JShowError(Ex.Message);
    end);

end;

class procedure TJanuaAnagraphCache.TearDown;
begin
  {
    if Assigned(FWHReceiptsViewModel) and (TInterfacedObject(FWHReceiptsViewModel.GetSelf).RefCount > 2) then
    TJanuaInterfacedObject(FWHReceiptsViewModel.GetSelf).Release;
    FWHReceiptsViewModel := nil;
  }
end;

initialization

finalization

TJanuaAnagraphCache.TearDown;

end.
