unit Janua.Shipping.RefundAgentStatement;
interface
uses
  SysUtils, Classes, Janua.Oracle.StoredProcedure;
type
  TJanuaShippingRefundAgentStatement = class(TJanuaOraStoredProcedure)  { TODO : Spostare la procedure di 'Refund' su Janua Core o Janua Unidac Components }
  private
    FDocumentID: int64;    FRefundDate: TDAteTime;
    procedure Setdocument_id(const Value: int64);
    procedure SetRefundDate(const Value: TDAteTime);

    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    function InputRefundDate: TDAteTime;
  published
    { Published declarations }
    property DocumentID: int64 read FDocumentID write Setdocument_id default -1;
    property RefundDate: TDAteTime read FRefundDate write SetRefundDate;
  end;

implementation

uses Janua.Application.Framework, Janua.Core.Functions;

{ JanuaShippingRefundStatement }

constructor TJanuaShippingRefundAgentStatement.Create(AOwner: TComponent);
begin
  inherited;
  self.ProcedureName := 'DOC_REFUND_PKG.full_refund_customer';
end;

function TJanuaShippingRefundAgentStatement.InputRefundDate: TDAteTime;
begin
  Result := Now;
  // a.DisplayText := ;
  // a.Caption := 'Inserimento Data';
  // a.Date := FRefundDate;
  Result := FRefundDate;
  if JanuaInputDate('Data della Richiesta di Rimborso', 'Inserimento Data', Result) then
    SetRefundDate(Result)
end;

procedure TJanuaShippingRefundAgentStatement.Setdocument_id(const Value: int64);begin  FDocumentID := Value;
  self.SetParams('p_document_id', FDocumentID);end;

procedure TJanuaShippingRefundAgentStatement.SetRefundDate(const Value: TDAteTime);begin  FRefundDate := Value;  self.SetParams('p_refund_date', FRefundDate);end;

end.
