unit Janua.Logistic.frmVCLAWBNavigator;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Actions, Vcl.ActnList,
  System.ImageList, Vcl.ImgList, SVGIconImageListBase, SVGIconImageList, AdvSplitter, Vcl.wwdbigrd,
  Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ToolWin, Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.wwbutton, Vcl.wwdbgrid, Vcl.WinXCtrls,
  // DB
  Data.DB, Vcl.Grids, Vcl.DBGrids, CRGrid, Janua.Vcl.EnhCRDBGrid,
  // Januaproject
  Janua.Forms.Types, Janua.Controls.Intf, Janua.Controls.Forms.Intf, Janua.Bindings.Intf, Janua.Core.Classes,
  // Janua MVVM Framework
  Janua.Vcl.ViewModel, Janua.Vcl.Actions, Janua.ViewModels.Intf,
  // Logistic View Model
  ufrmVCLViewModelNavigator, Janua.Logistic.AWB.ViewModel.Intf,
  // Interposers
  Janua.Vcl.Interposers, Janua.TMS.Interposers, uJanuaVCLFrame, Janua.Vcl.EnhDBGrid, Janua.Vcl.FormController,
  Janua.Components.Grids;

type
  TfrmVCLAWBNavigator = class(TfrmVCLViewModelNavigator, IJanuaForm, IJanuaContainer, IJanuaBindable)
  private
    FAWBViewModel: IJanuaLogisticAWBDBViewModel;
    procedure SetAWBViewModel(const Value: IJanuaLogisticAWBDBViewModel);
  protected
    procedure ActivateModel; override;
  public
    destructor Destroy; override;
  public
    { Public declarations }
    property AWBViewModel: IJanuaLogisticAWBDBViewModel read FAWBViewModel write SetAWBViewModel;
  end;

var
  frmVCLAWBNavigator: TfrmVCLAWBNavigator;

implementation

uses Janua.Vcl.Framework, Janua.Application.Framework, Janua.Core.AsyncTask;

{$R *.dfm}
{ TfrmVCLAWBNavigator }

procedure TfrmVCLAWBNavigator.ActivateModel;
var
  lViewModel: IJanuaDBViewModel;
begin
  try
    inherited;
    if not TJanuaApplicationFactory.TryGetInterface(IJanuaLogisticAWBDBViewModel, FAWBViewModel) then
      raise Exception.Create('FormCreate IJanuaWHReceiptsViewModel not set');
    if not Supports(FAWBViewModel, IJanuaDBViewModel, lViewModel) then
      raise Exception.Create('FormCreate FWHReceiptsViewModel no support IJanuaDBViewModel');
    ViewModel := lViewModel;
    lViewModel := nil;
  except
    on e: Exception do
      RaiseException('FormCreate', e, self);
  end
end;

destructor TfrmVCLAWBNavigator.Destroy;
{$IFDEF DEBUG}
var
  vTest: Integer;
{$ENDIF}
begin
{$IFDEF DEBUG} vTest := TInterfacedObject(FAWBViewModel.GetSelf).RefCount; {$ENDIF}
  FAWBViewModel := nil;
  inherited;
end;

procedure TfrmVCLAWBNavigator.SetAWBViewModel(const Value: IJanuaLogisticAWBDBViewModel);
begin
  FAWBViewModel := Value;
  ViewModel := FAWBViewModel;
end;

end.
