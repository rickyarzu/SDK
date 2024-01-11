unit ufrmVCLVMTestNavigator;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, System.Actions,
  Vcl.ActnList, System.ImageList, Vcl.ImgList, SVGIconImageListBase, SVGIconImageList,
  Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls,
  // TMS
  Lucombo, Vcl.wwdbgrid, Vcl.WinXCtrls, AdvSplitter, Vcl.wwdbigrd, Vcl.wwbutton,
  // DB
  Data.DB, Vcl.Grids, Vcl.DBGrids, CRGrid, Janua.Vcl.EnhCRDBGrid, Vcl.ToolWin, Vcl.DBCtrls,
  // Janua MVVM Framework
  Janua.Vcl.ViewModel, Janua.Core.Classes, Janua.Vcl.Actions, uframeVCLTest,
  // Test View Model
  ufrmVCLViewModelNavigator, Janua.Test.ViewModel.Intf, Janua.ViewModels.Intf,
  // Interposers
  Janua.Vcl.Interposers, Janua.TMS.Interposers, Janua.Vcl.EnhDBGrid,
  Janua.Components.Grids, Janua.Vcl.FormController, Janua.Core.Commons;

type
  TfrmVCLVMTestNavigator = class(TfrmVCLViewModelNavigator)
    frameVCLTest1: TframeVCLTest;
  private
    FTestViewModel: IJanuaTestViewModel;
    procedure SetTestViewModel(const Value: IJanuaTestViewModel);
    { Private declarations }
  protected
    procedure ActivateModel; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    property TestViewModel: IJanuaTestViewModel read FTestViewModel write SetTestViewModel;
  end;

var
  frmVCLVMTestNavigator: TfrmVCLVMTestNavigator;

implementation

uses Janua.Vcl.Framework, Janua.Application.Framework;

{$R *.dfm}

procedure TfrmVCLVMTestNavigator.ActivateModel;
var
  lViewModel: IJanuaDBViewModel;
begin
  if not TJanuaApplicationFactory.TryGetInterface(IJanuaTestViewModel, FTestViewModel) then
    raise Exception.Create('TfrmVCLTestViewModel.FormCreate IJanuaTestViewModel not set');
  // function Supports(const Instance: IInterface; const IID: TGUID; out Intf): Boolean;
  if not Supports(FTestViewModel, IJanuaDBViewModel, lViewModel) then
    raise Exception.Create('TfrmVCLTestViewModel.FormCreate lTestViewModel no support IJanuaDBViewModel');
  ViewModel := lViewModel;
  frameVCLTest1.TestRecord := FTestViewModel.TestNestedRecord;
end;

constructor TfrmVCLVMTestNavigator.Create(AOwner: TComponent);
begin
  inherited;

end;

destructor TfrmVCLVMTestNavigator.Destroy;
{$IFDEF DEBUG}
var
  vTest: Integer;
{$ENDIF}
begin
{$IFDEF DEBUG} vTest := TInterfacedObject(FTestViewModel.GetSelf).RefCount; {$ENDIF}
  FTestViewModel := nil;
  inherited;
end;

procedure TfrmVCLVMTestNavigator.SetTestViewModel(const Value: IJanuaTestViewModel);
begin
  FTestViewModel := Value;
end;

end.
