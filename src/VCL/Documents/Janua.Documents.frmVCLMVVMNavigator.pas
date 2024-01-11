unit Janua.Documents.frmVCLMVVMNavigator;

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
  // Anagraph View Model
  ufrmVCLViewModelNavigator, Janua.Documents.ViewModel.Intf, Janua.ViewModels.Intf,
  // Interposers
  Janua.Vcl.Interposers, Janua.TMS.Interposers, uJanuaVCLFrame, Janua.VCL.EnhDBGrid, AdvSplitter, vcl.wwdbigrd,
  vcl.wwdbgrid, Vcl.WinXCtrls, Janua.VCL.FormController, Janua.Components.Grids, vcl.wwbutton;

type
  TfrmVCLMVVMDocumentsNavigator  = class(TfrmVCLViewModelNavigator)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVCLMVVMDocumentsNavigator: TfrmVCLMVVMDocumentsNavigator;

implementation

{$R *.dfm}

end.
