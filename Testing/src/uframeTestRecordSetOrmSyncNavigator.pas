unit uframeTestRecordSetOrmSyncNavigator;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Janua.Vcl.MVVM.frameNavigator,
  System.ImageList, SVGIconImageListBase, SVGIconImageList, Vcl.StdCtrls, Vcl.ToolWin,
  Vcl.ComCtrls, Vcl.ExtCtrls,
  // TMS
  Lucombo, AdvSplitter,
  // DB Controls
  Data.DB, Vcl.Grids, Vcl.DBGrids, CRGrid,
  // VCL
  Vcl.wwbutton, Vcl.wwdbigrd, Vcl.wwdbgrid, Vcl.WinXPickers, Vcl.WinXCtrls,
  // Januaproject
  Janua.ViewModels.Intf, uJanuaVCLFrame, Janua.Core.Types, Janua.Core.Classes.Intf, Janua.Orm.Intf,
  Janua.Forms.Types, Janua.Controls.Intf, Janua.Controls.Forms.Intf, Janua.Bindings.Intf,
  Janua.Test.ViewModel.Intf,
  // Interposers
  Janua.Vcl.EnhCRDBGrid, Janua.Vcl.EnhDBGrid, Janua.Vcl.Interposers, Janua.TMS.Interposers,
  Janua.Vcl.FormController, Janua.Components.Grids, Janua.Vcl.ViewModel, Janua.Core.Classes,
  Janua.Vcl.Actions, Janua.Core.Commons;

type
  TframeTestRecordSetOrmSyncNavigator = class(TframeVCLMVVMNavigator, IJanuaContainer, IJanuaBindable)
  private
    FTestRSDetailViewModel: IJanuaTestDetailViewModel;
    procedure SetTestRSDetailViewModel(const Value: IJanuaTestDetailViewModel);
    { Private declarations }
  public
    { Public declarations }
    property TestRSDetailViewModel: IJanuaTestDetailViewModel read FTestRSDetailViewModel
      write SetTestRSDetailViewModel;
  end;

implementation

{$R *.dfm}
{ TframeTestRecordSetOrmSyncNavigator }

procedure TframeTestRecordSetOrmSyncNavigator.SetTestRSDetailViewModel
  (const Value: IJanuaTestDetailViewModel);
begin
  FTestRSDetailViewModel := Value;
  if Assigned(FTestRSDetailViewModel) then
    SetViewModel(FTestRSDetailViewModel as IJanuaDBViewModel)
  else
    SetViewModel(nil);
end;

end.
