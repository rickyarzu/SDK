unit Janua.Uni.Register;

interface

procedure Register;

implementation

uses System.Classes, Janua.Shipping.RefundAgentStatement, Janua.Shipping.Refund;

procedure Register;
begin
{
  RegisterComponents('Janua Shipping', [TJanuaShippingRefundAgentStatement]);
  RegisterComponents('Janua Shipping', [TJanuaShippingRefundAgent]);
  RegisterComponents('Janua Shipping', [TJanuaShippingRefundCustomer]);
  }
end;

end.
