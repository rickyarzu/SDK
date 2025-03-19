unit uframeJanuaVCLViewModelDetail;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ToolWin, Vcl.ComCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids,  System.Actions,  Vcl.ActnList,
  // Janua
  Janua.Core.Classes, Janua.Vcl.Actions,
  // Januaproject
  Janua.ViewModels.Intf, uJanuaVCLForm, Janua.Core.Types, Janua.Core.Classes.Intf, Janua.Orm.Intf,
  Janua.Forms.Types, Janua.Controls.Intf, Janua.Controls.Forms.Intf,
  // Interposers
  Janua.Vcl.Interposers, Janua.TMS.Interposers, Janua.Vcl.EnhCRDBGrid, Janua.Vcl.EnhDBGrid, Janua.Core.Commons;

type
  TframeJanuaVCLViewModelDetail = class(TFrame)
    pnlCommands: TPanel;
    tlbMaster: TToolBar;
    grdMaster: TEnhDBGrid;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    DataSource1: TDataSource;
    JanuaDetailActionViewController: TJanuaActionViewController;
  private
    { Private declarations }
    FViewModel: IJanuaViewModel;
  protected
    function GetViewModel: IJanuaViewModel;
    procedure SetViewModel(const Value: IJanuaViewModel);
  public
    { Public declarations }
    property ViewModel: IJanuaViewModel read GetViewModel write SetViewModel;
  end;

implementation

uses Spring, Janua.Vcl.Framework, Janua.Application.Framework, Janua.Core.Functions;

{$R *.dfm}
{ TframeJanuaVCLViewModelDetail }

function TframeJanuaVCLViewModelDetail.GetViewModel: IJanuaViewModel;
begin
   Result := FViewModel
end;

procedure TframeJanuaVCLViewModelDetail.SetViewModel(const Value: IJanuaViewModel);
begin
  try
    FViewModel := Value;
    if Assigned(FViewModel) then
    begin
      FViewModel.Activate;
      grdMaster.DataSource := FViewModel.jdsDataset.DataSource;
      JanuaDetailActionViewController.JanuaActionList := FViewModel.MainActionList;
      JanuaDetailActionViewController.Activate;
    end;
  except
    On e: exception do
      RaiseException('SetViewModel', e, self);
  end;

end;

end.
