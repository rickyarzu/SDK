unit JanuaItem;

interface

uses
  Classes, SysUtils, januavat;

type


  TJanuaItemType = (jitWarehouse, jitIdentified, jitKit, jitService, jitHealthService);
  //*** Item Type means the kind of item that can be acquired or sold by the company.

  { TJanuaItem }

  TJanuaItem = class(TComponent)
  private
    FItemCode: string;
    FItemDescription: string;
    FItemID: int64;
    FItemLongDescription: string;
    FItemName: string;
    FItemType: TJanuaItemType;
    FVAT: TJanuaVat;
    FItemPrice: Single;
    FItemDiscount: Single;

    FRowDiscount: Single;

    FDocumentDiscount: Single;
    procedure SetItemCode(const AValue: string);
    procedure SetItemDescription(const AValue: string);
    procedure SetItemID(const AValue: int64);
    procedure SetItemLongDescription(const AValue: string);
    procedure SetItemName(const AValue: string);
    procedure SetItemType(const AValue: TJanuaItemType);

    procedure SetItemPrice(const Value: Single);
    procedure SetDocumentDiscount(const Value: Single);
    procedure SetItemDiscount(const Value: Single);
    procedure SetRowDiscount(const Value: Single);
  protected
    { Protected declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
  published
    { Published declarations }
    property ItemID: int64 read FItemID write SetItemID;
    property ItemCode: string read FItemCode write SetItemCode;
    property ItemName: string read FItemName write SetItemName;
    property ItemDescription: string read FItemDescription write SetItemDescription;
    property ItemLongDescription: string read FItemLongDescription write SetItemLongDescription;
    property ItemType: TJanuaItemType read FItemType write SetItemType;
    property VAT: TJanuaVat read FVAT;
    property ItemPrice: Single  read FItemPrice write SetItemPrice;
    property ItemDiscount: Single read FItemDiscount write SetItemDiscount;
    property DocumentDiscount: Single read FDocumentDiscount write SetDocumentDiscount;
    property RowDiscount: Single read FRowDiscount write SetRowDiscount;

end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Januaproject', [TJanuaItem]);
end;



{ TJanuaItem }

procedure TJanuaItem.SetDocumentDiscount(const Value: Single);
begin
  FDocumentDiscount := Value;
end;

procedure TJanuaItem.SetItemCode(const AValue: string);
begin
  if FItemCode=AValue then exit;
  FItemCode:=AValue;
end;

procedure TJanuaItem.SetItemDescription(const AValue: string);
begin
  if FItemDescription=AValue then exit;
  FItemDescription:=AValue;
end;

procedure TJanuaItem.SetItemDiscount(const Value: Single);
begin
  FItemDiscount := Value;
end;

procedure TJanuaItem.SetItemID(const AValue: int64);
begin
  if FItemID=AValue then exit;
  FItemID:=AValue;
end;

procedure TJanuaItem.SetItemLongDescription(const AValue: string);
begin
  if FItemLongDescription=AValue then exit;
  FItemLongDescription:=AValue;
end;

procedure TJanuaItem.SetItemName(const AValue: string);
begin
  if FItemName=AValue then exit;
  FItemName:=AValue;
end;


procedure TJanuaItem.SetItemPrice(const Value: Single);
begin
  FItemPrice := Value;
end;

procedure TJanuaItem.SetItemType(const AValue: TJanuaItemType);
begin
  if FItemType=AValue then exit;
  FItemType:=AValue;
end;


procedure TJanuaItem.SetRowDiscount(const Value: Single);
begin
  FRowDiscount := Value;
end;

constructor TJanuaItem.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FVat := TJanuaVat.Create(self);
end;




end.
