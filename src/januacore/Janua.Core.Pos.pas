unit Janua.Core.Pos;

interface

{$I JANUACORE.INC}

uses System.Classes, System.SysUtils, Janua.Core.Functions,
  Janua.Core.CustomControls;

type
  /// <author>Riccardo Arduino</author>
  TJanuaPromo = class(TComponent)
  private
    FTextMessage: string;
    FValidFrom: TDateTime;
    FPromoID: int64;
    FisValid: boolean;
    FDiscountPurcent: Double;
    FMinimumExpenseRequired: Double;
    FValidTo: TDateTime;
    FDiscountMoney: Double;
    FOutputMessage: string;
    FAmountExpense: Double;
    FDiscountApplied: Double;
    FDiscountEnabled: boolean;
    FPromoMessage: string;
    FPromoOutputMessage: string;
    FPromoIDApplied: int64;
    FPromoItemID: int64;
    FToday: TDateTime;
    procedure SetDiscountMoney(const Value: Double);
    procedure SetDiscountPurcent(const Value: Double);
    procedure SetMinimumExpenseRequired(const Value: Double);
    procedure SetPromoID(const Value: int64);
    procedure SetTextMessage(const Value: string);
    procedure SetValidFrom(const Value: TDateTime);
    procedure SetValidTo(const Value: TDateTime);
    procedure SetAmountExpense(const Value: Double);
    procedure SetPromoMessage(const Value: string);
    procedure SetPromoIDApplied(const Value: int64);
    procedure SetPromoItemID(const Value: int64);
    { Private declarations }
  protected
    { Protected declarations }
    procedure PromoCalculation;
  public
    { Public declarations }
    /// <author>Riccardo Arduino</author>
    procedure ShowMessagePromo;
  published
    { Published declarations }
    property PromoID: int64 read FPromoID write SetPromoID;
    property ValidFrom: TDateTime read FValidFrom write SetValidFrom;
    property ValidTo: TDateTime read FValidTo write SetValidTo;
    property isValid: boolean read FisValid;
    property TextMessage: string read FTextMessage write SetTextMessage;
    /// <author>Riccardo Arduino</author>
    property OutputMessage: string read FOutputMessage;
    Property DiscountMoney: Double read FDiscountMoney write SetDiscountMoney;
    // socnto unitario in euro
    property DiscountPurcent: Double read FDiscountPurcent write SetDiscountPurcent;
    property MinimumExpenseRequired: Double read FMinimumExpenseRequired write SetMinimumExpenseRequired;
    property AmountExpense: Double read FAmountExpense write SetAmountExpense;
    property DiscountApplied: Double read FDiscountApplied;
    property DiscountEnabled: boolean read FDiscountEnabled;
    property PromoMessage: string read FPromoMessage write SetPromoMessage;
    property PromoOutputMessage: string read FPromoOutputMessage;
    property PromoIDApplied: int64 read FPromoIDApplied write SetPromoIDApplied;
    property PromoItemID: int64 read FPromoItemID write SetPromoItemID;
  end;

implementation

{ TPromo }

procedure TJanuaPromo.PromoCalculation;
begin
  FToday := Date();
  FisValid := (FValidFrom <= FToday) and (FValidTo >= FToday) and (FPromoID > FPromoIDApplied);

  FDiscountEnabled := FisValid and (FAmountExpense >= FMinimumExpenseRequired);

  if FDiscountEnabled then
  begin
    if FMinimumExpenseRequired > 0 then
      FDiscountApplied := (FDiscountMoney * trunc(FAmountExpense / FMinimumExpenseRequired)) +
        (FDiscountPurcent * FAmountExpense / 100)
    else
      FDiscountApplied := FDiscountMoney + (FDiscountPurcent * FAmountExpense / 100)
  end
  else
    FDiscountApplied := 0;

  FOutputMessage := StringReplace(FTextMessage, '<DISCOUNT>', FloatToStr(FDiscountMoney), [rfReplaceAll, rfIgnoreCase]);
  FOutputMessage := StringReplace(FOutputMessage, '<MINIMUMEXPENSE>', FloatToStr(FMinimumExpenseRequired),
    [rfReplaceAll, rfIgnoreCase]);
  FOutputMessage := StringReplace(FOutputMessage, '<VALIDFROM>', DateToStr(FValidFrom), [rfReplaceAll, rfIgnoreCase]);
  FOutputMessage := StringReplace(FOutputMessage, '<VALIDTO>', DateToStr(ValidTo), [rfReplaceAll, rfIgnoreCase]);

  FPromoOutputMessage := StringReplace(FPromoMessage, '<DISCOUNT>', FloatToStr(FDiscountApplied),
    [rfReplaceAll, rfIgnoreCase]);
  FPromoOutputMessage := StringReplace(FPromoOutputMessage, '<MINIMUMEXPENSE>', FloatToStr(FMinimumExpenseRequired),
    [rfReplaceAll, rfIgnoreCase]);
  FPromoOutputMessage := StringReplace(FPromoOutputMessage, '<EXPENSE>', FloatToStr(FAmountExpense),
    [rfReplaceAll, rfIgnoreCase]);
end;

procedure TJanuaPromo.SetAmountExpense(const Value: Double);
begin
  FAmountExpense := Value;
  PromoCalculation
end;

procedure TJanuaPromo.SetDiscountMoney(const Value: Double);
begin
  FDiscountMoney := Value;
  PromoCalculation
end;

procedure TJanuaPromo.SetDiscountPurcent(const Value: Double);
begin
  FDiscountPurcent := Value;
  PromoCalculation
end;

procedure TJanuaPromo.SetMinimumExpenseRequired(const Value: Double);
begin
  FMinimumExpenseRequired := Value;
  PromoCalculation
end;

procedure TJanuaPromo.SetPromoID(const Value: int64);
begin
  FPromoID := Value;
end;

procedure TJanuaPromo.SetPromoIDApplied(const Value: int64);
begin
  FPromoIDApplied := Value;
  PromoCalculation
end;

procedure TJanuaPromo.SetPromoItemID(const Value: int64);
begin
  FPromoItemID := Value;
end;

procedure TJanuaPromo.SetPromoMessage(const Value: string);
begin
  FPromoMessage := Value;
  PromoCalculation
end;

procedure TJanuaPromo.SetTextMessage(const Value: string);
begin
  FTextMessage := Value;
  PromoCalculation
end;

procedure TJanuaPromo.SetValidFrom(const Value: TDateTime);
begin
  FValidFrom := Value;
  PromoCalculation
end;

procedure TJanuaPromo.SetValidTo(const Value: TDateTime);
begin
  FValidTo := Value;
  PromoCalculation
end;

procedure TJanuaPromo.ShowMessagePromo;
begin
  if FDiscountEnabled then
    JShowMessage(FPromoOutputMessage, '', '')
  else
    JShowMessage(FOutputMessage, '', '');
end;

end.
