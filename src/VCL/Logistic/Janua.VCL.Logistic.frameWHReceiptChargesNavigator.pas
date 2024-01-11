unit Janua.VCL.Logistic.frameWHReceiptChargesNavigator;

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
  Janua.Documents.ViewModel.Intf, {Janua.Documents.ViewModel.impl,} {Janua.Reporting.impl,}
  Janua.Documents.WarehouseReceipts.ViewModel.Intf, Janua.Core.Commons;

type
  TframeVCLWHReceiptChargesNavigator = class(TframeVCLMVVMNavigator, IJanuaContainer, IJanuaBindable)
  private
    FDocChargesViewModel: IJanuaDocChargesViewModel;
    procedure SetDocChargesViewModel(const Value: IJanuaDocChargesViewModel);
    { Private declarations }
  public
    { Public declarations }
    property DocChargesViewModel: IJanuaDocChargesViewModel read FDocChargesViewModel
      write SetDocChargesViewModel;
  end;

implementation

uses Janua.Application.Framework, Janua.Core.Functions;
{$R *.dfm}
{ TframeVCLWHReceiptChargesNavigator }

procedure TframeVCLWHReceiptChargesNavigator.SetDocChargesViewModel(const Value: IJanuaDocChargesViewModel);
begin
  try
    FDocChargesViewModel := Value;
    if Assigned(FDocChargesViewModel) then
      SetViewModel(FDocChargesViewModel as IJanuaDBViewModel)
    else
      SetViewModel(nil);
  except
    on e: exception do
      RaiseException('SetDocChargesViewModel', e, self);

  end;
end;

end.
