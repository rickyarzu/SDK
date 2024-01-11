unit Janua.VCL.Logistic.frameWHReceiptRowsNavigator;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  VCL.Graphics, VCL.Controls, VCL.Forms, VCL.Dialogs, Janua.VCL.MVVM.frameNavigator,
  System.ImageList, SVGIconImageListBase, SVGIconImageList, VCL.StdCtrls, VCL.ToolWin,
  VCL.ComCtrls, VCL.ExtCtrls,
  // TMS
  Lucombo, AdvSplitter,
  // DB Controls
  Data.DB, VCL.Grids, VCL.DBGrids, CRGrid,
  // VCL
  VCL.wwbutton, VCL.wwdbigrd, VCL.wwdbgrid, VCL.WinXPickers, VCL.WinXCtrls,
  // Januaproject
  Janua.ViewModels.Intf, uJanuaVCLFrame, Janua.Core.Types, Janua.Core.Classes.Intf, Janua.Orm.Intf,
  Janua.Forms.Types, Janua.Controls.Intf, Janua.Controls.Forms.Intf, Janua.Bindings.Intf,
  // Interposers
  Janua.VCL.EnhCRDBGrid, Janua.VCL.EnhDBGrid, Janua.VCL.Interposers, Janua.TMS.Interposers,
  Janua.VCL.FormController,
  Janua.Components.Grids, Janua.VCL.ViewModel, Janua.Core.Classes, Janua.VCL.Actions,
  // Inherites from Documents View Model ................................................................
  Janua.Documents.ViewModel.Intf, Janua.Documents.ViewModel.impl, Janua.Reporting.impl,
  Janua.Documents.WarehouseReceipts.ViewModel.Intf, Janua.Core.Commons;

type
  TframeVCLWHReceiptRowsNavigator = class(TframeVCLMVVMNavigator, IJanuaContainer, IJanuaBindable)
  private
    FWHRRowsViewModel: IJanuaWHRRowsViewModel;
    procedure SetWHRRowsViewModel(const Value: IJanuaWHRRowsViewModel);
    { Private declarations }
  public
    { Public declarations }
    property WHRRowsViewModel: IJanuaWHRRowsViewModel read FWHRRowsViewModel write SetWHRRowsViewModel;
  end;

implementation

uses Janua.Core.Functions, Janua.Application.Framework;

{$R *.dfm}
{ TframeVCLWHReceiptRowsNavigator }

procedure TframeVCLWHReceiptRowsNavigator.SetWHRRowsViewModel(const Value: IJanuaWHRRowsViewModel);
begin
  try
    FWHRRowsViewModel := Value;
    if Assigned(FWHRRowsViewModel) then
      SetViewModel(FWHRRowsViewModel as IJanuaDBViewModel)
    else
      SetViewModel(nil);
  except
    on e: exception do
      RaiseException('SetWHReceiptsViewModel', e, self);
  end;
end;

end.
