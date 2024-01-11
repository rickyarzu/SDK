unit ufrmVCLLogisticInventoryNavigator;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  // DB
  Data.DB, Vcl.Grids, Vcl.DBGrids, CRGrid, Janua.Vcl.EnhDBGrid,
  // Janua MVVM Framework
  Janua.Vcl.ViewModel, Janua.Core.Classes, Janua.Vcl.Actions, uframeVCLTest,
  // Anagraph View Model
  ufrmVCLViewModelNavigator, Janua.Items.ViewModel.Intf, Janua.ViewModels.Intf,
  // Interposers
  Janua.Vcl.Interposers, Janua.TMS.Interposers, uJanuaVCLFrame, System.Actions, Vcl.ActnList,
  System.ImageList, Vcl.ImgList, SVGIconImageListBase, SVGIconImageList, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.ToolWin, Vcl.DBCtrls, Vcl.ExtCtrls, AdvSplitter, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.WinXCtrls,
  Janua.Components.Grids, Janua.VCL.FormController, Janua.Core.Commons,  vcl.wwbutton;

type
  TfrmVCLLogisticInventoryNavigator =  class(TfrmVCLViewModelNavigator)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVCLLogisticInventoryNavigator: TfrmVCLLogisticInventoryNavigator;

implementation

{$R *.dfm}

end.
