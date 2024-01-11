unit Janua.VCL.Logistic.frmShipmentNavigator;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, VCL.Graphics,
  VCL.Controls, VCL.Forms, VCL.Dialogs, System.Actions, VCL.ActnList,
  System.ImageList, VCL.ImgList, SVGIconImageListBase, SVGIconImageList,
  VCL.StdCtrls, VCL.ComCtrls, VCL.ToolWin, VCL.DBCtrls, VCL.ExtCtrls,
  // DB
  Data.DB, VCL.Grids, VCL.DBGrids, CRGrid, Janua.VCL.EnhCRDBGrid,
  // Januaproject
  Janua.Forms.Types, Janua.Controls.Intf, Janua.Controls.Forms.Intf, Janua.Bindings.Intf, Janua.Core.Classes,
  // Janua MVVM Framework
  Janua.VCL.ViewModel, Janua.VCL.Actions, uframeVCLTest,
  // Anagraph View Model
  ufrmVCLViewModelNavigator, Janua.ViewModels.Intf, Janua.Logistic.Shipments.ViewModel.Intf,
  // Interposers
  Janua.VCL.Interposers, Janua.TMS.Interposers, uJanuaVCLFrame, Janua.VCL.EnhDBGrid, AdvSplitter, VCL.wwdbigrd,
  VCL.wwdbgrid, VCL.WinXCtrls, Janua.VCL.FormController, Janua.Components.Grids, VCL.wwbutton, Janua.Core.Commons;

type
  TfrmVCLLogisticShipmentNavigator = class(TfrmVCLViewModelNavigator, IJanuaForm, IJanuaContainer, IJanuaBindable)
  private
    FShipmentViewModel: IJanuaDBShipmentsViewModel;
    procedure SetShipmentViewModel(const Value: IJanuaDBShipmentsViewModel);
    { Private declarations }
    procedure ActivateModel; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  public
    { Public declarations }
    property ShipmentViewModel: IJanuaDBShipmentsViewModel read FShipmentViewModel write SetShipmentViewModel;
  end;

var
  frmVCLLogisticShipmentNavigator: TfrmVCLLogisticShipmentNavigator;

implementation

uses Spring, Janua.VCL.Framework, Janua.Application.Framework, Janua.Core.TMLogistic.Cache;

{$R *.dfm}
{ TfrmVCLLogisticShipmentNavigator }

procedure TfrmVCLLogisticShipmentNavigator.ActivateModel;
var
  lViewModel: IJanuaDBViewModel;
begin
  try
    inherited;
{$IFDEF DEBUG}
    Guard.CheckNotNull(TJanuaLogisticCache.ShipmentViewModel, 'TJanuaLogisticCache.WHReceiptsViewModel');
{$ENDIF}
    MonitorEnter(TJanuaLogisticCache.ShipmentViewModel.AsObject);
    try
      FShipmentViewModel := TJanuaLogisticCache.ShipmentViewModel;

      if not Supports(FShipmentViewModel, IJanuaDBViewModel, lViewModel) then
        raise Exception.Create('FormCreate FWHReceiptsViewModel no support IJanuaDBViewModel');
      ViewModel := lViewModel;
      lViewModel := nil;
    finally
      MonitorExit(TJanuaLogisticCache.ShipmentViewModel.AsObject);
    end;
  except
    on e: Exception do
      RaiseException('FormCreate', e, Self);
  end
end;

constructor TfrmVCLLogisticShipmentNavigator.Create(AOwner: TComponent);
begin
  inherited;
end;

destructor TfrmVCLLogisticShipmentNavigator.Destroy;
begin
  FShipmentViewModel := nil;
  inherited;
end;

procedure TfrmVCLLogisticShipmentNavigator.SetShipmentViewModel(const Value: IJanuaDBShipmentsViewModel);
begin
  FShipmentViewModel := Value;
end;

end.
