unit ufrmVCLLogisticReceipt;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, System.Actions, Vcl.ActnList,
  Vcl.ImgList, Vcl.Buttons, Vcl.StdCtrls, Janua.Core.Classes, Janua.Vcl.Actions, Vcl.DBCtrls, Vcl.Menus,
  Vcl.ToolWin, Vcl.ComCtrls, Janua.Vcl.ViewModel, Vcl.Mask, JvExMask, JvToolEdit, Vcl.Themes,

  System.ImageList, SVGIconImageListBase, SVGIconImageList,
  // TMS
  Lucombo,
  // DB Controls
  Data.DB, Vcl.Grids, Vcl.DBGrids, CRGrid, Janua.Vcl.EnhCRDBGrid,
  // Januaproject
  Janua.ViewModels.Intf, uJanuaVCLForm, Janua.Core.Types, Janua.Core.Classes.Intf, Janua.Orm.Intf,
  Janua.Forms.Types, Janua.Controls.Intf, Janua.Controls.Forms.Intf,
  // Documents View Model
  Janua.Documents.WarehouseReceipts.ViewModel.Intf,
  // Frames
  uJanuaVCLFrame, uframeVCLLogisticReceiptSingleRow, uframeVCLLogisticReceipt,
  // Interposers
  Janua.Vcl.Interposers, Janua.TMS.Interposers;

type
  TfrmVCLLogisticReceipt = class(TJanuaVCLFormModel, IJanuaWHReceiptForm, IJanuaRecordEditDialog, IJanuaForm)
    pnlForm: TPanel;
    frameVCLLogisticReceipt1: TframeVCLLogisticReceipt;
    frameVCLLogisticReceiptSingleRow1: TframeVCLLogisticReceiptSingleRow;
    JanuaActionViewController1: TJanuaActionViewController;
    Panel1: TPanel;
    edButtonSave: TButton;
    btnUndo: TButton;
    tbDocument: TToolBar;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormResize(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FWHRViewModel: IJanuaWHReceiptsViewModel;
    procedure RemoveModel;
    { Private declarations }
  protected
    function GetWHRViewModel: IJanuaWHReceiptsViewModel;
    procedure SetWHRViewModel(const Value: IJanuaWHReceiptsViewModel);
    function GetViewModel: IJanuaViewModel;
    procedure SetViewModel(const Value: IJanuaViewModel);
  public
    property WHRViewModel: IJanuaWHReceiptsViewModel read GetWHRViewModel write SetWHRViewModel;
    property ViewModel: IJanuaViewModel read GetViewModel write SetViewModel;
    { Public declarations }
  end;

var
  frmVCLLogisticReceipt: TfrmVCLLogisticReceipt;

implementation

uses System.Math, Janua.Application.Framework, Janua.Core.Functions;

{$R *.dfm}

procedure TfrmVCLLogisticReceipt.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  RemoveModel;
  inherited;
end;

procedure TfrmVCLLogisticReceipt.FormResize(Sender: TObject);
begin
  inherited;
  pnlForm.Top := IfThen(ClientHeight > pnlForm.Height, Trunc((ClientHeight - pnlForm.Height) / 2), 0);
  pnlForm.Left := IfThen(ClientWidth > pnlForm.Width, Trunc((ClientWidth - pnlForm.Width) / 2), 0);
end;

procedure TfrmVCLLogisticReceipt.FormShow(Sender: TObject);
begin
  inherited;
  frameVCLLogisticReceipt1.ActivateSearch;
end;

function TfrmVCLLogisticReceipt.GetViewModel: IJanuaViewModel;
begin
  Result := FWHRViewModel as IJanuaViewModel;
end;

function TfrmVCLLogisticReceipt.GetWHRViewModel: IJanuaWHReceiptsViewModel;
begin
  Result := FWHRViewModel;
end;

procedure TfrmVCLLogisticReceipt.SetViewModel(const Value: IJanuaViewModel);
begin
  try
    if Assigned(Value) then
    begin
      if not Supports(Value, IJanuaWHReceiptsViewModel, FWHRViewModel) then
        raise Exception.Create('IJanuaWHReceiptsViewModel interface not supported');
    end
    else
    begin
      RemoveModel;
    end;
  except
    on e: Exception do
      RaiseException('SetViewModel', e, Self, LogText);
  end;
end;

procedure TfrmVCLLogisticReceipt.RemoveModel;
begin
  FWHRViewModel := nil;
  JanuaActionViewController1.JanuaActionList := nil;
  frameVCLLogisticReceipt1.DocHead := nil;
  frameVCLLogisticReceipt1.WHReceiptsViewModel := nil;
  frameVCLLogisticReceiptSingleRow1.WHReceiptsViewModel := nil;
end;

procedure TfrmVCLLogisticReceipt.SetWHRViewModel(const Value: IJanuaWHReceiptsViewModel);
begin
  if FWHRViewModel <> Value then
  begin
    if (FWHRViewModel = nil) then
    begin
      FWHRViewModel := Value;
      JanuaActionViewController1.JanuaActionList := FWHRViewModel.FormActionList;
      JanuaActionViewController1.Activate;
      frameVCLLogisticReceipt1.DocHead := FWHRViewModel.DocHeadRecord;
      frameVCLLogisticReceipt1.WHReceiptsViewModel := FWHRViewModel;
      frameVCLLogisticReceiptSingleRow1.WHReceiptsViewModel := FWHRViewModel;
      frameVCLLogisticReceiptSingleRow1.Initialize;
    end
    else
      FWHRViewModel := Value
  end;
end;

end.
