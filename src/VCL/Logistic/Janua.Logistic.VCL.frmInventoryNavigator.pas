unit Janua.Logistic.VCL.frmInventoryNavigator;

interface

uses
  // System
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, System.ImageList,
  System.Actions,
  // VCL
  VCL.Controls, VCL.Forms, VCL.Dialogs, VCL.wwbutton, AdvSplitter, VCL.wwdbigrd, VCL.wwdbgrid, VCL.Graphics,
  VCL.WinXCtrls, VCL.ToolWin, VCL.DBCtrls, VCL.ExtCtrls, VCL.ImgList, SVGIconImageListBase, SVGIconImageList,
  VCL.StdCtrls, VCL.ComCtrls, VCL.ActnList, VCL.Grids,
  // DB
  Data.DB, VCL.DBGrids, CRGrid, Janua.VCL.EnhDBGrid,
  // Janua MVVM Framework
  Janua.VCL.ViewModel, Janua.Core.Classes, Janua.VCL.Actions, uJanuaVCLFrame,
  // Items View Model
  uframeVCLItem, ufrmVCLViewModelNavigator, Janua.Items.ViewModel.Intf, Janua.ViewModels.Intf,
  // Janua Forms Framework
  Janua.Forms.Types, Janua.Controls.Intf, Janua.Controls.Forms.Intf, Janua.Bindings.Intf,
  // Interposers & Janua VCL
  Janua.VCL.Interposers, Janua.TMS.Interposers, Janua.VCL.FormController, Janua.Components.Grids;

type
  TfrmVCLInventoryNavigator = class(TfrmVCLViewModelNavigator, IJanuaForm, IJanuaContainer, IJanuaBindable)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVCLInventoryNavigator: TfrmVCLInventoryNavigator;

implementation

{$R *.dfm}

end.
