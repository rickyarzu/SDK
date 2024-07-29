unit Janua.Documents.dlgVCLDocRows;

interface

// IJanuaDocRowsViewModel

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  // Janua
  Janua.Core.Types, Janua.Core.Classes.Intf, Janua.Orm.Intf, Janua.Forms.Types,
  Janua.Bindings.Intf, Janua.Controls.Intf, Janua.Controls.Forms.Intf, Janua.Core.Classes, Janua.Vcl.Actions,
  uJanuaVCLForm,
  // Janua.Interposers
  Janua.Vcl.Interposers, Janua.TMS.Interposers,
  // Warehouse Receipts View Model
  Janua.ViewModels.Intf, Janua.Documents.ViewModel.Intf, Janua.Documents.frameVCLDocRows, Vcl.ComCtrls;

type
  TdlgVCLDocumentRow = class(TJanuaVCLFormModel, IJanuaRecordEditDialog, IJanuaBindable, IJanuaDocRowsDialog)
    btnUndo: TButton;
    btnButtonSave: TButton;
    lbGUID: TLabel;
    frameVCLDocRow1: TframeVCLDocRow;
  private
    FDocRowsViewModel: IJanuaDocRowsViewModel;
  protected
    function GetViewModel: IJanuaViewModel;
    procedure SetViewModel(const Value: IJanuaViewModel);
    function GetDocRowsViewModel: IJanuaDocRowsViewModel;
    procedure SetDocRowsViewModel(const Value: IJanuaDocRowsViewModel);
  public
    property ViewModel: IJanuaViewModel read GetViewModel write SetViewModel;
    property DocRowsViewModel: IJanuaDocRowsViewModel read GetDocRowsViewModel write SetDocRowsViewModel;
  end;

var
  dlgVCLDocumentRow: TdlgVCLDocumentRow;

implementation

uses Spring, Janua.Core.Functions, Janua.Application.Framework;

{$R *.dfm}
{ TdlgVCLDocumentRow }

function TdlgVCLDocumentRow.GetDocRowsViewModel: IJanuaDocRowsViewModel;
begin
  Result := FDocRowsViewModel;
end;

function TdlgVCLDocumentRow.GetViewModel: IJanuaViewModel;
begin
  Result := FDocRowsViewModel as IJanuaViewModel
end;

procedure TdlgVCLDocumentRow.SetDocRowsViewModel(const Value: IJanuaDocRowsViewModel);
begin
  try
    FDocRowsViewModel := Value;
    if Assigned(FDocRowsViewModel) then
    begin
{$IFDEF DEBUG}
      Guard.CheckNotNull(FDocRowsViewModel.RsDocRows, 'FDocRowsViewModel.RsDocRows');
      Guard.CheckNotNull(FDocRowsViewModel.RsDocRows.Row, 'FDocRowsViewModel.RsDocRows.Row');
{$ENDIF}
      lbGUID.Caption := FDocRowsViewModel.RsDocRows.Row.GUID.ToString;
      frameVCLDocRow1.DocRow := FDocRowsViewModel.RsDocRows.Row;
    end;
  except
    on e: Exception do
      RaiseException('SetWHRRowsViewModel', e, self);
  end;
end;

procedure TdlgVCLDocumentRow.SetViewModel(const Value: IJanuaViewModel);
var
  lTemp: IJanuaDocRowsViewModel;
begin
  try
    if Assigned(Value) then
    begin
      if not Supports(Value, IJanuaDocRowsViewModel, lTemp) then
        raise Exception.Create('IJanuaWHReceiptsViewModel interface not supported')
      else
        SetDocRowsViewModel(lTemp);
    end
    else
      SetDocRowsViewModel(nil);
  except
    on e: Exception do
      RaiseException('SetViewModel', e, self);
  end;

end;

end.
