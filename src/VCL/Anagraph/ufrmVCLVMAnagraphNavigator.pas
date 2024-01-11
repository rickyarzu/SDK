unit ufrmVCLVMAnagraphNavigator;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Actions, Vcl.ActnList,
  System.ImageList, Vcl.ImgList, SVGIconImageListBase, SVGIconImageList,
  Vcl.StdCtrls, Vcl.ComCtrls, Lucombo, Vcl.ToolWin, Vcl.DBCtrls, Vcl.ExtCtrls, AdvSplitter,
  // DB
  Data.DB, Vcl.Grids, Vcl.DBGrids, CRGrid, Janua.Vcl.EnhCRDBGrid,
  // Januaproject
  Janua.Core.Types, Janua.Core.Classes.Intf, Janua.Orm.Intf, Janua.Core.Classes, Janua.Bindings.Intf,
  Janua.Forms.Types, Janua.Controls.Intf, Janua.Controls.Forms.Intf,
  // Janua MVVM Framework
  Janua.Vcl.ViewModel, Janua.Vcl.Actions, Janua.ViewModels.Intf,
  // Anagraph View Model
  uFrameVCLAnagraphPanel, ufrmVCLViewModelNavigator, Janua.Anagraph.ViewModel.Intf,
  // Interposers
  Janua.Vcl.Interposers, Janua.TMS.Interposers, uJanuaVCLForm, Janua.Vcl.EnhDBGrid,
  uJanuaVCLFrame, uframeVCLDBReceiptRows, Vcl.wwdbigrd, Vcl.wwdbgrid, Vcl.WinXCtrls, Vcl.WinXPickers,
  Janua.Components.Grids, Janua.Vcl.FormController, Vcl.wwbutton;

type
  TfrmVCLVMAnagraphNavigator = class(TfrmVCLViewModelNavigator, IJanuaForm, IJanuaContainer, IJanuaBindable)
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FAnagraphViewModel: IJanuaDBAnagraphViewModel;
    procedure SetAnagraphViewModel(const Value: IJanuaDBAnagraphViewModel);
    function InternalActivate: Boolean; override;
    { Private declarations }
  public
    procedure ActivateModel; override;
  public
    { Public declarations }
    property AnagraphViewModel: IJanuaDBAnagraphViewModel read FAnagraphViewModel write SetAnagraphViewModel;
  end;

var
  frmVCLVMAnagraphNavigator: TfrmVCLVMAnagraphNavigator;

implementation

uses Janua.Anagraph.ViewModel.Impl, Janua.Vcl.Framework, Janua.Application.Framework, Janua.ViewModels.Application;

{$R *.dfm}

procedure TfrmVCLVMAnagraphNavigator.ActivateModel;
begin
  inherited;
  if not Assigned(FAnagraphViewModel) then
    try
      var
        lGroupID: integer := 0;
      if (Length(params) > 0) then
        lGroupID := params[0];
      if not TJanuaViewModelApplication.TryGetCachedViewModel(IJanuaDBAnagraphViewModel, lGroupID, FAnagraphViewModel)
      then
        raise Exception.Create('IJanuaDBAnagraphViewModel not registered');
      ViewModel := FAnagraphViewModel as IJanuaDBViewModel;
      FAnagraphViewModel.Activate;
      { TODO: FrameVCLAnagraphPanel1.AnagraphRecord := FAnagraphViewModel.AnagraphRecord; }
    except
      on e: Exception do
        RaiseException('ActivateModel', e, self);
    end;
end;

procedure TfrmVCLVMAnagraphNavigator.FormDestroy(Sender: TObject);
begin
  if Assigned(FViewModel) and (TInterfacedObject(FViewModel.GetSelf).RefCount > 2) then
    TJanuaInterfacedObject(FViewModel.GetSelf).Release;
  inherited;
end;

{ TfrmVCLVMAnagraphNavigator }

procedure TfrmVCLVMAnagraphNavigator.FormShow(Sender: TObject);
begin
  inherited;
  grdMaster.Invalidate;
  REpaint;
  Application.ProcessMessages;
end;

function TfrmVCLVMAnagraphNavigator.InternalActivate: Boolean;
begin
  Result := Initialized;
  try
    if not Result then
    begin
      Result := inherited;
      if Result then
      begin
        // Custom Code goes here
      end;
    end;
  except
    on e: Exception do
      RaiseException('Activate', e, self);
  end;
end;

procedure TfrmVCLVMAnagraphNavigator.SetAnagraphViewModel(const Value: IJanuaDBAnagraphViewModel);
begin
  FAnagraphViewModel := Value;
end;

end.
