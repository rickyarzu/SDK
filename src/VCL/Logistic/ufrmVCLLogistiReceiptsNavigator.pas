unit ufrmVCLLogistiReceiptsNavigator;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Actions, Vcl.ActnList,
  System.ImageList, Vcl.ImgList, SVGIconImageListBase, SVGIconImageList,
  Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ToolWin, Vcl.DBCtrls, Vcl.ExtCtrls,
  // DB
  Data.DB, Vcl.Grids, Vcl.DBGrids, CRGrid, Janua.Vcl.EnhCRDBGrid,
  // Janua MVVM Framework
  Janua.Vcl.ViewModel, Janua.Core.Classes, Janua.Vcl.Actions, uframeVCLTest,
  // Documents View Model
  Janua.Documents.WarehouseReceipts.ViewModel.intf,
  ufrmVCLViewModelNavigator, {Janua.Documents.ViewModel.intf,} Janua.ViewModels.intf,
  // Interposers
  Janua.Vcl.Interposers, Janua.TMS.Interposers,
  // Frames
  uJanuaVCLFrame, uframeVCLLogisticReceipt, Janua.Vcl.EnhDBGrid, uframeVCLDBReceiptRows, AdvSplitter,
  Vcl.wwdbigrd, Vcl.wwdbgrid, Vcl.WinXCtrls, Vcl.WinXPickers, Janua.Vcl.FormController, Janua.Components.Grids,
  Vcl.wwbutton, Janua.Core.Commons;

type
  TfrmVCLLogistiReceiptsNavigator = class(TfrmVCLViewModelNavigator)
    frameVCLLogisticReceipt1: TframeVCLLogisticReceipt;
    procedure FormDestroy(Sender: TObject);
  private
    FWHReceiptsViewModel: IJanuaWHReceiptsViewModel;
    procedure SetWHReceiptsViewModel(const Value: IJanuaWHReceiptsViewModel);
    { Private declarations }
    procedure ActivateModel; override;
  strict protected
    function InternalActivate: Boolean; override;
  public
    destructor Destroy; override;

  public
    { Public declarations }
    property WHReceiptsViewModel: IJanuaWHReceiptsViewModel read FWHReceiptsViewModel write SetWHReceiptsViewModel;
  end;

var
  frmVCLLogistiReceiptsNavigator: TfrmVCLLogistiReceiptsNavigator;

implementation

uses Spring, Janua.Vcl.Framework, Janua.Application.Framework, Janua.Core.TMLogistic.Cache;

{$R *.dfm}

procedure TfrmVCLLogistiReceiptsNavigator.ActivateModel;
var
  lViewModel: IJanuaDBViewModel;
begin
  try
    inherited;
{$IFDEF DEBUG}
    Guard.CheckNotNull(TJanuaLogisticCache.WHReceiptsViewModel, 'TJanuaLogisticCache.WHReceiptsViewModel');
{$ENDIF}
    FWHReceiptsViewModel := TJanuaLogisticCache.WHReceiptsViewModel;
    if not Supports(FWHReceiptsViewModel, IJanuaDBViewModel, lViewModel) then
      raise Exception.Create('FormCreate FWHReceiptsViewModel no support IJanuaDBViewModel');
    ViewModel := lViewModel;
    lViewModel := nil;
  except
    on e: Exception do
      RaiseException('ActivateModel', e, Self);
  end
end;

destructor TfrmVCLLogistiReceiptsNavigator.Destroy;
begin
  inherited;
end;

procedure TfrmVCLLogistiReceiptsNavigator.FormDestroy(Sender: TObject);
begin
  if Assigned(FWHReceiptsViewModel) and (TInterfacedObject(FWHReceiptsViewModel.GetSelf).RefCount > 2) then
    TJanuaInterfacedObject(FWHReceiptsViewModel.GetSelf).Release;
  FWHReceiptsViewModel := nil;
  inherited;
end;

function TfrmVCLLogistiReceiptsNavigator.InternalActivate: Boolean;
begin
  Result := Initialized;
  try
    if not Result then
    begin
      Result := inherited;
    end;
  except
    on e: Exception do
      RaiseException('Activate', e, Self);
  end;
end;

{ TfrmVCLLogistiReceiptsNavigator }

procedure TfrmVCLLogistiReceiptsNavigator.SetWHReceiptsViewModel(const Value: IJanuaWHReceiptsViewModel);
begin
  FWHReceiptsViewModel := Value;
end;

end.
