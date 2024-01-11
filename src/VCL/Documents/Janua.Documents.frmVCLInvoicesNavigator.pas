unit Janua.Documents.frmVCLInvoicesNavigator;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Actions, Vcl.ActnList,
  System.ImageList, Vcl.ImgList, SVGIconImageListBase, SVGIconImageList,
  Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ToolWin, Vcl.DBCtrls, Vcl.ExtCtrls, AdvSplitter,
  Vcl.wwdbigrd, Vcl.wwdbgrid, Vcl.WinXCtrls, Vcl.WinXPickers, Vcl.wwbutton,
  // DB
  Data.DB, Vcl.Grids, Vcl.DBGrids, CRGrid, Janua.Vcl.EnhCRDBGrid,
  // Janua MVVM Framework
  Janua.Vcl.ViewModel, Janua.Core.Classes, Janua.Vcl.Actions, uframeVCLTest,
  // Documents View Model
  Janua.Documents.Invoices.ViewModel.intf,
  ufrmVCLViewModelNavigator, {Janua.Documents.ViewModel.intf,} Janua.ViewModels.intf,
  // Interposers
  Janua.Vcl.Interposers, Janua.TMS.Interposers,
  // Interfaces
  Janua.Forms.Types, Janua.Controls.intf, Janua.Controls.Forms.intf, Janua.Bindings.intf,
  // Frames
  uJanuaVCLFrame, Janua.Vcl.EnhDBGrid, Janua.Vcl.FormController, Janua.Components.Grids;

type
  TfrmVCLInvoicesNavigator = class(TfrmVCLViewModelNavigator, IJanuaForm, IJanuaContainer, IJanuaBindable)
  private
    FInvoicesViewModel: IJanuaInvoicesViewModel;
    procedure SetInvoicesViewModel(const Value: IJanuaInvoicesViewModel);
  protected
    function InternalActivate: Boolean; override;
    procedure ActivateModel; override;
  public
    destructor Destroy; override;

  public
    { Public declarations }
    property InvoicesViewModel: IJanuaInvoicesViewModel read FInvoicesViewModel write SetInvoicesViewModel;
  end;

var
  frmVCLInvoicesNavigator: TfrmVCLInvoicesNavigator;

implementation

uses Janua.Vcl.Framework, Janua.Application.Framework;

{$R *.dfm}
{ TfrmVCLInvoicesNavigator }

procedure TfrmVCLInvoicesNavigator.ActivateModel;
var
  lViewModel: IJanuaDBViewModel;
begin
  try
    inherited;
    // FInvoicesViewModel: IJanuaInvoicesViewModel;
    if not TJanuaApplicationFactory.TryGetInterface(IJanuaInvoicesViewModel, FInvoicesViewModel) then
      raise Exception.Create('FormCreate IJanuaWHReceiptsViewModel not set');
    if not Supports(FInvoicesViewModel, IJanuaDBViewModel, lViewModel) then
      raise Exception.Create('FormCreate FWHReceiptsViewModel no support IJanuaDBViewModel');
    ViewModel := lViewModel;
    lViewModel := nil;
  except
    on e: Exception do
      RaiseException('ActivateModel', e, Self);
  end

end;

destructor TfrmVCLInvoicesNavigator.Destroy;
begin
  if Assigned(FInvoicesViewModel) and (TInterfacedObject(FInvoicesViewModel.GetSelf).RefCount > 2) then
    TJanuaInterfacedObject(FInvoicesViewModel.GetSelf).Release;
  FInvoicesViewModel := nil;
  inherited;
end;

function TfrmVCLInvoicesNavigator.InternalActivate: Boolean;
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

procedure TfrmVCLInvoicesNavigator.SetInvoicesViewModel(const Value: IJanuaInvoicesViewModel);
begin
  FInvoicesViewModel := Value;
end;

end.
