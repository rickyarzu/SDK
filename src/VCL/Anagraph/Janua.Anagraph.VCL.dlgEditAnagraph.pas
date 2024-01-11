unit Janua.Anagraph.VCL.dlgEditAnagraph;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, VCL.Graphics,
  VCL.Controls, VCL.Forms, VCL.Dialogs, VCL.ExtCtrls, System.Actions, VCL.ActnList,
  VCL.ImgList, VCL.Buttons, VCL.StdCtrls, Janua.Core.Classes, Janua.VCL.Actions, VCL.DBCtrls, VCL.Menus,
  VCL.ToolWin, VCL.ComCtrls, Janua.VCL.ViewModel, VCL.Mask, JvExMask, JvToolEdit, VCL.Themes,

  System.ImageList, SVGIconImageListBase, SVGIconImageList,
  // TMS
  Lucombo,
  // DB Controls
  Data.DB, VCL.Grids, VCL.DBGrids, CRGrid, Janua.VCL.EnhCRDBGrid,
  // Januaproject
  Janua.ViewModels.Intf, uJanuaVCLForm, Janua.Core.Types, Janua.Core.Classes.Intf, Janua.Orm.Intf,
  Janua.Forms.Types, Janua.Controls.Intf, Janua.Controls.Forms.Intf,
  // Anagraph View Model
  Janua.Anagraph.ViewModel.Intf,
  // Frames
  uJanuaVCLFrame, Janua.Anagraph.VCL.frameCompanyInformations,
  // Interposers
  Janua.Bindings.Intf, Janua.VCL.Interposers, Janua.TMS.Interposers, Janua.Core.Commons;

type
  TdlgVCLEditAnagraph = class(TJanuaVCLFormModel, IJanuaAnagraphForm, IJanuaRecordEditDialog, IJanuaBindable)
    tlbMaster: TToolBar;
    btnUndo: TButton;
    edButtonSave: TButton;
    JanuaActionViewController1: TJanuaActionViewController;
    FrameVCLCompanyAnagraph: TFrameVCLCompanyAnagraph;
    procedure FormShow(Sender: TObject);
    procedure FrameVCLCompanyAnagraphedCompanyNameExit(Sender: TObject);
  private
    { Private declarations }
    [weak]
    FJanuaDBAnagraphViewModel: IJanuaDBAnagraphViewModel;
  protected
    function GetAnagraphViewModel: IJanuaDBAnagraphViewModel;
    procedure SetAnagraphViewModel(const Value: IJanuaDBAnagraphViewModel);
    function GetViewModel: IJanuaViewModel;
    procedure SetViewModel(const Value: IJanuaViewModel);
  public
    property AnagraphViewModel: IJanuaDBAnagraphViewModel read GetAnagraphViewModel write SetAnagraphViewModel;
    property ViewModel: IJanuaViewModel read GetViewModel write SetViewModel;
  end;

var
  dlgVCLEditAnagraph: TdlgVCLEditAnagraph;

implementation

uses Janua.core.Functions;

{$R *.dfm}

procedure TdlgVCLEditAnagraph.FormShow(Sender: TObject);
begin
  inherited;
  FrameVCLCompanyAnagraph.pgCompanyInformations.ActivePageIndex := 0;
end;

procedure TdlgVCLEditAnagraph.FrameVCLCompanyAnagraphedCompanyNameExit(Sender:
    TObject);
begin
  inherited;
  FrameVCLCompanyAnagraph.frameHeadOffice.SetFocus;
end;

{ TdlgVCLEditAnagraph }

function TdlgVCLEditAnagraph.GetAnagraphViewModel: IJanuaDBAnagraphViewModel;
begin
  Result := FJanuaDBAnagraphViewModel;
end;

function TdlgVCLEditAnagraph.GetViewModel: IJanuaViewModel;
begin
  Result := FJanuaDBAnagraphViewModel as IJanuaViewModel;
end;

procedure TdlgVCLEditAnagraph.SetAnagraphViewModel(const Value: IJanuaDBAnagraphViewModel);
begin
  if FJanuaDBAnagraphViewModel <> Value then
  begin
    if (FJanuaDBAnagraphViewModel = nil) then
    begin
      FJanuaDBAnagraphViewModel := Value;
      JanuaActionViewController1.JanuaActionList := FJanuaDBAnagraphViewModel.FormActionList;
      JanuaActionViewController1.Activate;
      FrameVCLCompanyAnagraph.JanuaAnagraph := FJanuaDBAnagraphViewModel.AnagraphRecord;
      FrameVCLCompanyAnagraph.ViewModel := FJanuaDBAnagraphViewModel;
      (*
        frameVCLLogisticReceiptSingleRow1.WHReceiptsViewModel := FJanuaDBAnagraphViewModel;
        frameVCLLogisticReceiptSingleRow1.Initialize;
      *)
    end
    else
      FJanuaDBAnagraphViewModel := Value
  end;
end;

procedure TdlgVCLEditAnagraph.SetViewModel(const Value: IJanuaViewModel);
var
  lTemp: IJanuaDBAnagraphViewModel;
begin
  if Assigned(Value) then
  begin
    if not Supports(Value, IJanuaDBAnagraphViewModel, lTemp) then
      raise Exception.Create('SetAnagraphViewModel interface not supported')
    else
      Self.SetAnagraphViewModel(lTemp);
  end
  else
    SetAnagraphViewModel(nil);
end;

end.
