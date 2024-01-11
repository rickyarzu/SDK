unit Janua.Core.Docs;

interface

{$I JANUACORE.INC}

uses Janua.Core.Classes, Janua.Core.Functions;

type
  TJanuaDocumentRow = class(TJanuaCoreComponent)
  private
    FFuel: Double;
    FPort_Dues: Double;
    FPrice_Forfait: Double;
    FQty_Forfait: Double;
    FFuel_Forfait: Double;
    FBoarding_Fees: Double;
    FDues_Forfait: Double;
    FQty_Discount: Double;
    FNetAmount: Double;
    FVatPurcent: Single;
    FVatExtractionPurcent: Single;
    FNetAmountTaxable: Double;
    FDocDiscount: Single;
    FExtraDiscount: Single;
    FPriceDiscount: Single;
    FNetAmountTaxed: Double;
    FFuel_Amount: Double;
    FDues_Amount_Taxable: Double;
    FFuel_Amount_Taxable: Double;
    FDues_Amount: Double;
    FFuel_Amount_Taxed: Double;
    FDues_Amount_Taxed: Double;
    FAmount_Taxable: Double;
    FAmount_Taxed: Double;
    FVatAmount: Double;
    procedure SetBoarding_Fees(const Value: Double);
    procedure SetDues_Forfait(const Value: Double);
    procedure SetFuel(const Value: Double);
    procedure SetFuel_Forfait(const Value: Double);
    procedure SetPort_Dues(const Value: Double);
    procedure SetPrice_Forfait(const Value: Double);
    procedure SetQty_Forfait(const Value: Double);
    procedure SetQty_Discount(const Value: Double);
    procedure SetVatExtractionPurcent(const Value: Single);
    procedure SetVatPurcent(const Value: Single);
    procedure SetDocDiscount(const Value: Single);
    procedure SetExtraDiscount(const Value: Single);
    procedure SetPriceDiscount(const Value: Single);

  strict private
  var
    FPrice: Double;
    FQuantity: Double;
    FAmount: Double;
    FAutoCalc: boolean;
    procedure CalcAmount;
    function GetPrice: Double;
    procedure SetPrice(val: Double);
    function GetQuantity: Double;
    procedure SetQuantity(val: Double);
    function GetAutoCalc: boolean;
    procedure SetAutoCalc(val: boolean);
  public

  published
    /// ******* input ***********************************************************
    property AutoCalc: boolean read GetAutoCalc write SetAutoCalc;
    property Quantity: Double read GetQuantity write SetQuantity;
    property Qty_Forfait: Double read FQty_Forfait write SetQty_Forfait;
    property Price_Forfait: Double read FPrice_Forfait write SetPrice_Forfait;
    property Port_Dues: Double read FPort_Dues write SetPort_Dues;
    property Dues_Forfait: Double read FDues_Forfait write SetDues_Forfait;
    property Boarding_Fees: Double read FBoarding_Fees write SetBoarding_Fees;
    property Fuel: Double read FFuel write SetFuel;
    property Fuel_Forfait: Double read FFuel_Forfait write SetFuel_Forfait;
    property Qty_Discount: Double read FQty_Discount write SetQty_Discount;
    property Price: Double read GetPrice write SetPrice;

    property VatPurcent: Single read FVatPurcent write SetVatPurcent;
    property VatExtractionPurcent: Single read FVatExtractionPurcent write SetVatExtractionPurcent;
    property PriceDiscount: Single read FPriceDiscount write SetPriceDiscount;
    property ExtraDiscount: Single read FExtraDiscount write SetExtraDiscount;
    property DocDiscount: Single read FDocDiscount write SetDocDiscount;
    /// ******* output **********************************************************
    property NetAmountTaxed: Double read FNetAmountTaxed;
    property NetAmount: Double read FNetAmount;
    property NetAmountTaxable: Double read FNetAmountTaxable;
    property Amount: Double read FAmount;
    property Amount_Taxable: Double read FAmount_Taxable;
    property Amount_Taxed: Double read FAmount_Taxed;
    property Dues_Amount: Double read FDues_Amount;
    property Fuel_Amount: Double read FFuel_Amount;
    property Dues_Amount_Taxable: Double read FDues_Amount_Taxable;
    property Fuel_Amount_Taxable: Double read FFuel_Amount_Taxable;
    property Dues_Amount_Taxed: Double read FDues_Amount_Taxed;
    property Fuel_Amount_Taxed: Double read FFuel_Amount_Taxed;
    property VatAmount: Double read FVatAmount;
    { Published declarations }
  end;

implementation

procedure TJanuaDocumentRow.CalcAmount;
var
  qtyPrice, qtyFees, qtyFuel: Double;
begin
  qtyPrice := (FQuantity - FQty_Discount) * (1 - FPrice_Forfait) + FQty_Forfait * FPrice_Forfait;
  qtyFees := (FQuantity - FQty_Discount) * (1 - FDues_Forfait) + FQty_Forfait * FDues_Forfait;
  qtyFuel := (FQuantity - FQty_Discount) * (1 - FFuel_Forfait) + FQty_Forfait * FFuel_Forfait;

  FNetAmount := FPrice * qtyPrice * ((100 - FPriceDiscount) / 100) * ((100 - FDocDiscount) / 100) *
    ((100 - FExtraDiscount) / 100);
  FNetAmountTaxable := FNetAmount / ((100 + VatExtractionPurcent) / 100);
  FNetAmountTaxed := FNetAmount * ((100 + VatPurcent) / 100);

  FDues_Amount := (FPort_Dues + FBoarding_Fees) * qtyFees;
  FDues_Amount_Taxable := FDues_Amount / ((100 + VatExtractionPurcent) / 100);
  FDues_Amount_Taxed := FDues_Amount * ((100 + VatPurcent) / 100);

  FFuel_Amount := FFuel * qtyFuel;
  FFuel_Amount_Taxable := FFuel_Amount / ((100 + VatExtractionPurcent) / 100);
  FFuel_Amount_Taxed := FFuel_Amount * ((100 + VatPurcent) / 100);

  FAmount := FNetAmount + FDues_Amount + FFuel_Amount;
  FAmount_Taxable := FRound(FNetAmountTaxable + FDues_Amount_Taxable + FFuel_Amount_Taxable, 2);
  FAmount_Taxed := FRound(FNetAmountTaxed + FDues_Amount_Taxed + FFuel_Amount_Taxed, 2);

  FVatAmount := FRound(Amount * FVatPurcent / 100, 2);

  FAmount := FRound(FAmount, 2);

  FNetAmount := FRound(FNetAmount, 2);
  FNetAmountTaxable := FRound(FNetAmountTaxable, 2);
  FNetAmountTaxed := FRound(FNetAmountTaxed, 2);

  FDues_Amount := FRound(FDues_Amount, 2);
  FDues_Amount_Taxable := FRound(FDues_Amount_Taxable, 2);
  FDues_Amount_Taxed := FRound(FDues_Amount_Taxed, 2);

  FFuel_Amount := FRound(FFuel_Amount, 2);
  FFuel_Amount_Taxable := FRound(FFuel_Amount_Taxable, 2);
  FFuel_Amount_Taxed := FRound(FFuel_Amount_Taxed, 2);

end;

function TJanuaDocumentRow.GetPrice: Double;
begin
  Result := FPrice;
end;

procedure TJanuaDocumentRow.SetPort_Dues(const Value: Double);
begin
  FPort_Dues := Value;
end;

procedure TJanuaDocumentRow.SetPrice(val: Double);
begin
  if (FPrice <> val) then
  begin
    FPrice := val;

  end;
end;

procedure TJanuaDocumentRow.SetPriceDiscount(const Value: Single);
begin
  FPriceDiscount := Value;
end;

procedure TJanuaDocumentRow.SetPrice_Forfait(const Value: Double);
begin
  FPrice_Forfait := Value;
end;

function TJanuaDocumentRow.GetQuantity: Double;
begin
  Result := FQuantity;
end;

procedure TJanuaDocumentRow.SetQty_Discount(const Value: Double);
begin
  FQty_Discount := Value;
end;

procedure TJanuaDocumentRow.SetQty_Forfait(const Value: Double);
begin
  FQty_Forfait := Value;
end;

procedure TJanuaDocumentRow.SetQuantity(val: Double);
begin
  FQuantity := val;
end;

procedure TJanuaDocumentRow.SetVatExtractionPurcent(const Value: Single);
begin
  FVatExtractionPurcent := Value;
end;

procedure TJanuaDocumentRow.SetVatPurcent(const Value: Single);
begin
  FVatPurcent := Value;
end;

function TJanuaDocumentRow.GetAutoCalc: boolean;
begin
  Result := self.FAutoCalc
end;

procedure TJanuaDocumentRow.SetAutoCalc(val: boolean);
begin
  if val and not self.FAutoCalc then
  begin
    self.CalcAmount;
    self.FAutoCalc := val;
  end;
end;

procedure TJanuaDocumentRow.SetBoarding_Fees(const Value: Double);
begin
  if FBoarding_Fees <> Value then
  begin
    FBoarding_Fees := Value;
    self.CalcAmount;
  end;
end;

procedure TJanuaDocumentRow.SetDocDiscount(const Value: Single);
begin
  if FDocDiscount <> Value then
  begin
    FDocDiscount := Value;
    self.CalcAmount;
  end;

end;

procedure TJanuaDocumentRow.SetDues_Forfait(const Value: Double);
begin
  if FDues_Forfait <> Value then
  begin
    FDues_Forfait := Value;
    self.CalcAmount;
  end;

end;

procedure TJanuaDocumentRow.SetExtraDiscount(const Value: Single);
begin
  if FExtraDiscount <> Value then
  begin
    FExtraDiscount := Value;
    self.CalcAmount;
  end;

end;

procedure TJanuaDocumentRow.SetFuel(const Value: Double);
begin
  FFuel := Value;
end;

procedure TJanuaDocumentRow.SetFuel_Forfait(const Value: Double);
begin
  FFuel_Forfait := Value;
end;

end.
