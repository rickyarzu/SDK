unit ufrmVCLVMTestNavigator;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmVCLViewModelNavigator, Data.DB, Vcl.Menus, System.Actions,
  Vcl.ActnList, System.ImageList, Vcl.ImgList, SVGIconImageListBase, SVGIconImageList,
  Janua.Vcl.ViewModel, Janua.Core.Classes, Janua.Vcl.Actions, uframeVCLTest, Vcl.Grids, Vcl.DBGrids,
  CRGrid, Janua.Vcl.EnhCRDBGrid, Vcl.StdCtrls, Vcl.ComCtrls, Lucombo, Vcl.ToolWin, Vcl.DBCtrls,
  Vcl.ExtCtrls,
  // Janua MVVM Framework
  // Test View Model
  Janua.Test.ViewModel.Intf, Janua.ViewModels.Intf,
  // Interposers
  Janua.Vcl.Interposers, Janua.TMS.Interposers, AdvSplitter;

type
  TfrmVCLVMTestNavigator = class(TfrmVCLViewModelNavigator)
    frameTestRecord1: TframeVCLTest;
    procedure FormShow(Sender: TObject);
  private
    FTestViewModel: IJanuaTestViewModel;
    procedure SetTestViewModel(const Value: IJanuaTestViewModel);
    { Private declarations }
  public
    { Public declarations }
     property TestViewModel: IJanuaTestViewModel read FTestViewModel write SetTestViewModel;
  end;

var
  frmVCLVMTestNavigator: TfrmVCLVMTestNavigator;

implementation

uses  Janua.Vcl.Framework, Janua.Application.Framework;

{$R *.dfm}

procedure TfrmVCLVMTestNavigator.FormShow(Sender: TObject);
var
  lViewModel: IJanuaDBViewModel;
begin
  if not TJanuaApplicationFactory.TryGetInterface(IJanuaTestViewModel, FTestViewModel) then
    raise Exception.Create('TfrmVCLTestViewModel.FormCreate IJanuaTestViewModel not set');
  // function Supports(const Instance: IInterface; const IID: TGUID; out Intf): Boolean;
  if not Supports(FTestViewModel, IJanuaDBViewModel, lViewModel) then
    raise Exception.Create('TfrmVCLTestViewModel.FormCreate lTestViewModel no support IJanuaDBViewModel');
  ViewModel := lViewModel;
  frameTestRecord1.TestRecord := Self.FTestViewModel.TestNestedRecord;
end;

procedure TfrmVCLVMTestNavigator.SetTestViewModel(const Value: IJanuaTestViewModel);
begin
  FTestViewModel := Value;
end;

end.
