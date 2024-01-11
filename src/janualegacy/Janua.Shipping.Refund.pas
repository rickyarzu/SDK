unit Janua.Shipping.Refund;

interface

uses
  SysUtils, Classes, Janua.Oracle.StoredProcedure, Janua.Oracle.Dataset;

type
  TJanuaShippingRefundAgent = class(TJanuaOraStoredProcedure)
  private
    FDocumentID: int64;
    FRefundDate: TDAteTime;
    FAutoPrepare: boolean;
    procedure Setdocument_id(const Value: int64);
    procedure SetRefundDate(const Value: TDAteTime);
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    function Execute: boolean; override;
    function InputRefundDate: TDAteTime;
    procedure Prepare; override;
  published
    { Published declarations }
    property DocumentID: int64 read FDocumentID write Setdocument_id default -1;
    property RefundDate: TDAteTime read FRefundDate write SetRefundDate;
  end;

type
  TJanuaShippingRefundCustomer = class(TJanuaOraStoredProcedure)
  private
    FDocumentID: int64;
    FRefundDate: TDAteTime;
    FAutoPrepare: boolean;
    procedure Setdocument_id(const Value: int64);
    procedure SetRefundDate(const Value: TDAteTime);
    { Private declarations }
  protected
    { Protected declarations }

  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    function InputRefundDate: TDAteTime;
    function Execute: boolean; override;
    procedure Prepare; override;
  published
    { Published declarations }
    property DocumentID: int64 read FDocumentID write Setdocument_id default -1;
    property RefundDate: TDAteTime read FRefundDate write SetRefundDate;
  end;

implementation

uses Janua.Core.Functions, Janua.Application.Framework;

{ JanuaShippingRefundStatement }

constructor TJanuaShippingRefundAgent.Create(AOwner: TComponent);
begin
  inherited;
end;

function TJanuaShippingRefundAgent.Execute: boolean;
begin
  Result := inherited Execute;
  self.StoredProcedure.Open;
  if self.StoredProcedure.Active then
  begin
    self.SetInternalDataset;
    Result := True;
  end;
end;

function TJanuaShippingRefundAgent.InputRefundDate: TDAteTime;
begin
  Result := Now;
  // a.DisplayText := ;
  // a.Caption := 'Inserimento Data';
  // a.Date := FRefundDate;
  Result := FRefundDate;
  if JanuaInputDate('Data della Richiesta di Rimborso', 'Inserimento Data', Result) then
    SetRefundDate(Result)
end;

procedure TJanuaShippingRefundAgent.Prepare;
begin
  // ****************************************************************************
  // **** mi collego alla procedura di rimborso totale del cliente **************
  self.StoredProcedure.Name := 'spRefundAgent';
  self.ProcedureName := 'doc_refund_pkg.full_refund_agent';
  SetSQL('(:p_document_id, :p_refund_date)');
  SetParams('p_document_id', -1);
  SetParams('p_refund_date', Date());

end;

procedure TJanuaShippingRefundAgent.Setdocument_id(const Value: int64);
begin
  FDocumentID := Value;
  self.SetParams('p_document_id', FDocumentID);
end;

procedure TJanuaShippingRefundAgent.SetRefundDate(const Value: TDAteTime);
begin
  FRefundDate := Value;
  self.SetParams('p_refund_date', FRefundDate);
end;

{ JanuaShippingRefundStatement }

constructor TJanuaShippingRefundCustomer.Create(AOwner: TComponent);
begin
  inherited;
end;

procedure TJanuaShippingRefundCustomer.Setdocument_id(const Value: int64);
begin
  FDocumentID := Value;
  self.SetParams('p_document_id', FDocumentID);
end;

procedure TJanuaShippingRefundCustomer.SetRefundDate(const Value: TDAteTime);
begin
  FRefundDate := Value;
  self.SetParams('p_refund_date', FRefundDate);
end;

function TJanuaShippingRefundCustomer.Execute: boolean;
begin
  Result := inherited Execute;
  self.StoredProcedure.Open;
  if self.StoredProcedure.Active then
  begin
    self.SetInternalDataset;
    Result := True;
  end;
end;

function TJanuaShippingRefundCustomer.InputRefundDate: TDAteTime;
begin
  if JanuaInputDate('Data della Richiesta di Rimborso', 'Inserimento Data', Result) then
    SetRefundDate(Result)
end;
{
  var
  a: TJanuaDialogDate;
  begin
  a := TJanuaDialogDate.Create(self);
  try
  a.DisplayText := 'Data della Richiesta di Rimborso';
  a.Caption := 'Inserimento Data';
  a.Date := FRefundDate;
  if a.Execute then
  SetRefundDate(a.Date);
  finally
  FreeAndNil(a);
  end;
  Result := self.FRefundDate
  end;
}

procedure TJanuaShippingRefundCustomer.Prepare;
begin
  // inherited;
  // ****************************************************************************
  // **** mi collego alla procedura di rimborso totale del cliente **************
  self.ProcedureName := 'doc_refund_pkg.full_refund_customer';
  SetSQL('(:p_document_id, :p_refund_date)');
  SetParamType('p_document_id', jptInteger);
  SetParamType('p_refund_date', jptDate);
  SetParamType('Result', jptCursor);
  SetParams('p_document_id', -1);
  SetParams('p_refund_date', Date());
end;

end.
