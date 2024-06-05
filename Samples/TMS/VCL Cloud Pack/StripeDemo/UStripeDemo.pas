unit UStripeDemo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, CloudBase, CloudBaseWin,
  CloudCustomStripe, CloudStripe, StdCtrls, ExtCtrls;

type
  TForm9 = class(TForm)
    AdvStripe1: TAdvStripe;
    Panel1: TPanel;
    btnConnect: TButton;
    btnAddOrder: TButton;
    btnGetProducts: TButton;
    Panel2: TPanel;
    lstProducts: TListBox;
    procedure btnConnectClick(Sender: TObject);
    procedure AdvStripe1ReceivedAccessToken(Sender: TObject);
    procedure btnAddOrderClick(Sender: TObject);
    procedure btnGetProductsClick(Sender: TObject);
    procedure lstProductsClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

{$R *.dfm}

// PLEASE USE A VALID INCLUDE FILE THAT CONTAINS THE APPLICATION KEY & SECRET
// FOR THE CLOUD STORAGE SERVICES YOU WANT TO USE
// STRUCTURE OF THIS .INC FILE SHOULD BE
//
// const
//  TestSecretkey = '';
//  TestPublishableKey = '';
//
//  DevelopmentClientID = '';
//  ProductionClientID = '';
//
//  LiveSecretKey = '';
//  LivePublishableKey = '';

{$I APPIDS.INC}

procedure TForm9.AdvStripe1ReceivedAccessToken(Sender: TObject);
begin
  AdvStripe1.SaveTokens;
end;

procedure TForm9.btnConnectClick(Sender: TObject);
var
  Acc: Boolean;
begin
  AdvStripe1.App.Key := TestPublishableKey;
  AdvStripe1.App.Secret := TestSecretkey;
  AdvStripe1.App.ClientID := DevelopmentClientID;
  AdvStripe1.App.CallBackURL := 'localhost';

  if AdvStripe1.App.Secret <> '' then
  begin
    AdvStripe1.PersistTokens.Location := plIniFile;
    AdvStripe1.PersistTokens.Key := '.\stripe.ini';
    AdvStripe1.PersistTokens.Section := 'tokens';
    AdvStripe1.LoadTokens;

    Acc := AdvStripe1.TestTokens;

    if not Acc then
    begin
      AdvStripe1.DoAuth;
    end
    else
    begin
      //
    end;
  end
  else
    ShowMessage('Please provide a valid application ID for the client component');
end;

procedure TForm9.btnGetProductsClick(Sender: TObject);
var
  Error, ListCaption: string;
  I: Integer;
  Product: TStripeProductItem;
  SKU: TStripeProductSKUItem;
  Price: Single;
  J: Integer;
begin
  Error := AdvStripe1.GetProducts;

  if Error <> '' then
  begin
    ShowMessage(Error)
  end
  else
  begin
    lstProducts.Clear;
    for I := 0 to AdvStripe1.Products.Count - 1 do
    begin
      Product := AdvStripe1.Products.Items[I];
      ListCaption := Product.ProductName;

      for J := 0 to Product.SKUs.Count - 1 do
      begin
        SKU := Product.SKUs.Items[J];
        Price := SKU.Price / 100; // Cents / 100 = units
        ListCaption := ListCaption + ' - ' + FloatToStr(Price) + ' ' + SKU.Currency.ToUpper;

        lstProducts.AddItem(ListCaption, SKU);
      end;
    end;
  end;
end;

procedure TForm9.btnAddOrderClick(Sender: TObject);
var
  Order: TStripeOrderItem;
  OrderItem: TStripeOrderItemItem;
  Shipping: TStripeShipping;
  Address: TStripeShippingAddress;
  SKU: TStripeProductSKUItem;
  Error: string;
begin
  if lstProducts.ItemIndex >= 0 then
  begin
    Address.Line1 := '1234 Main Street';
    Address.City := 'AnyTown';
    Address.PostalCode := '123456';
    Address.Country := 'US';

    Shipping.Address := Address;
    Shipping.Name := 'TMS Software';

    SKU := TStripeProductSKUItem(lstProducts.Items.Objects[lstProducts.ItemIndex]);

    Order := AdvStripe1.Orders.Add;
    Order.Currency := SKU.Currency;
    Order.Email := 'info@tmssoftware.com';
    Order.Shipping := Shipping;

    OrderItem := Order.Items.Add;
    OrderItem.ItemType := 'sku';
    OrderItem.ParentID := SKU.SKUID;

    Error := AdvStripe1.CreateOrder(order);

    if Error <> '' then
      ShowMessage(Error);
  end;
end;

procedure TForm9.FormCreate(Sender: TObject);
begin
  btnAddOrder.Enabled := False;
end;

procedure TForm9.lstProductsClick(Sender: TObject);
begin
  if lstProducts.ItemIndex >= 0 then
  begin
    btnAddOrder.Enabled := True;
  end;
end;

end.
