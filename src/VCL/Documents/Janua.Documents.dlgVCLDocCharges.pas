unit Janua.Documents.dlgVCLDocCharges;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  // Vcl
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  // Janua
  Janua.Documents.dlgVCLDocRows, Janua.Documents.frameVCLDocRows,
  Janua.Core.Types, Janua.Core.Classes.Intf, Janua.Orm.Intf, Janua.Forms.Types, Janua.Bindings.Intf,
  Janua.Controls.Intf, Janua.Controls.Forms.Intf, Janua.Documents.ViewModel.Intf;

type
  TdlgVCLDocChargesRow = class(TdlgVCLDocumentRow, IJanuaDocChargesDialog{, IJanuaRecordEditDialog})
  private
    FDocChargesViewModel: IJanuaDocChargesViewModel;
  protected
    function GetDocChargesViewModel: IJanuaDocChargesViewModel;
    procedure SetDocChargesViewModel(const Value: IJanuaDocChargesViewModel);
  public
    property DocChargesViewModel: IJanuaDocChargesViewModel read GetDocChargesViewModel
      write SetDocChargesViewModel;
  end;

var
  dlgVCLDocChargesRow: TdlgVCLDocChargesRow;

implementation

{$R *.dfm}
{ TdlgVCLDocChargesRow }

function TdlgVCLDocChargesRow.GetDocChargesViewModel: IJanuaDocChargesViewModel;
begin
  Result := FDocChargesViewModel
end;

procedure TdlgVCLDocChargesRow.SetDocChargesViewModel(const Value: IJanuaDocChargesViewModel);
var
  lTmp: IJanuaDocRowsViewModel;
begin
  FDocChargesViewModel := Value;
  if Assigned(FDocChargesViewModel) and Supports(FDocChargesViewModel, IJanuaDocChargesViewModel, lTmp) then
    SetDocRowsViewModel(lTmp)
  else
    SetDocRowsViewModel(nil);
end;

end.
