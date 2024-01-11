unit Janua.FMX.ListViewMenu;

interface

uses
  System.SysUtils, System.Classes, System.UITypes, System.Generics.Collections,
  // Janua Components
  Janua.Core.Classes, Janua.Core.Types, Janua.Core.Functions,
  FMX.ImgList, FMX.ListView, FMX.ListView.Appearances;

type

  TJanuaIconType = (notselected = -1, calendar = 0, airport = 1, car = 2, museum = 3, globe = 4, localmap = 5,
    gps = 6, compass = 7, map = 8, tourism = 9, port = 10, swimmingpool = 11, seatbeach = 12, hotel = 13,
    lighthouse = 14, railway = 15, camera = 16, bus = 17, boat = 18, ball = 19, swimmer = 20, tennis = 21,
    ferry = 22, park = 23, journal = 24, news = 25, food = 27, toilet = 40, bank = 44, market = 51, shop = 60,
    police = 62, health = 65, theatre = 68);

type
  TFMXMenuCollection = class; // fw
  TJanuaFMXMenuItem = class; // fw
  TJanuaFMXListViewMenuController = class; // fw

  TFMXMenuCollection = class(TOwnedCollection)
  private
    FMyComponent: TJanuaFMXListViewMenuController;
    FImageList: TCustomImageList;
    function GetImageList: TCustomImageList;
    procedure SetImageList(const Value: TCustomImageList);
  protected
    function GetItem(Index: Integer): TJanuaFMXMenuItem;
    procedure SetItem(Index: Integer; Value: TJanuaFMXMenuItem);
  public
    constructor Create(AOwner: TComponent); reintroduce;
    destructor Destroy; override;
    function Add: TJanuaFMXMenuItem; reintroduce;
    procedure Assign(Source: TPersistent); override;
    procedure Clear; reintroduce;
    procedure Delete(Index: Integer); reintroduce;
    property Items[Index: Integer]: TJanuaFMXMenuItem read GetItem write SetItem; default;
    property Images: TCustomImageList read GetImageList write SetImageList;
  end;

  TJanuaFMXMenuItem = class(TCollectionItem)
  private
    FImageIndex: TImageIndex;
    [weak]
    FImages: TCustomImageList;
    FTitle: string;
    FOnClick: TNotifyEvent;
    procedure SetImageIndex(const Value: TImageIndex);
    function GetImageIndex: TImageIndex;
    function GetImageList: TCustomImageList;
    procedure SetImageList(const Value: TCustomImageList);
    procedure SetTitle(const Value: string);
    procedure SetOnClick(const Value: TNotifyEvent);
  protected
    procedure SetCollection(Value: TCollection); override;
    procedure AssignTo(Dest: TPersistent); override;
    function GetDisplayName: String; override;
    function GetMenu: TFMXMenuCollection;
    // function GetOwner: TComponent; override;
  public
    procedure Assign(Source: TPersistent); override;
    constructor Create(AOwner: TCollection); override;
    destructor Destroy; override;
  public
    procedure DoClick;
    procedure DrawListView(aListView: TListView; ItemIndex: Integer = -1);
  published
    property Images: TCustomImageList read GetImageList write SetImageList;
    property Title: string read FTitle write SetTitle;
    property OnClick: TNotifyEvent read FOnClick write SetOnClick;
    property ImageIndex: TImageIndex read GetImageIndex write SetImageIndex default -1;
  end;

  TJanuaFMXListViewMenuController = class(TJanuaCoreComponent)
  private
    FMenuCollection: TFMXMenuCollection;
    FImages: TCustomImageList;
    FListView: TListView;
    FImageIndex: TImageIndex;
    function GetImageList: TCustomImageList;
    procedure SetImageList(const Value: TCustomImageList);
    procedure SetMenuItems(const Value: TFMXMenuCollection);
    procedure SetListView(const Value: TListView);
    procedure SetImageIndex(const Value: TImageIndex);
  strict protected
    // virtual abstract Methods to be implemented by descendant classes .....................................
    function InternalActivate: boolean; override;
    procedure InternalDeactivate; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure AfterConstruction; override;
  public
    procedure DrawListView;
    procedure DoChange(Sender: TObject);
    procedure ListViewFairItemClick(const Sender: TObject; const AItem: TListViewItem);
  published
    property Images: TCustomImageList read GetImageList write SetImageList;
    property MenuItems: TFMXMenuCollection read FMenuCollection write SetMenuItems;
    property ListView: TListView read FListView write SetListView;
    property ImageIndex: TImageIndex read FImageIndex write SetImageIndex default -1;
  end;

  TJanuaFMXListElement = class(TPersistent)
  private
    FListElements: TList<TJanuaFMXListElement>;
    FOnClick: TNotifyEvent;
    FIconType: TJanuaIconType;
    FEnabled: boolean;
    FText: string;
    FOnChange: TNotifyEvent;
    FPosition: Integer;
    FItemIndex: Integer;
    FOnSelect: TNotifyEvent;
    FCategoryTag: Integer;
    procedure RecalculateList;
    procedure SetOnClick(const Value: TNotifyEvent);
    procedure SetIconType(const Value: TJanuaIconType);
    procedure SetEnabled(const Value: boolean);
    procedure SetText(const Value: string);
    procedure SetOnChange(const Value: TNotifyEvent);
    procedure SetPosition(const Value: Integer);
    procedure SetItemIndex(const Value: Integer);
    procedure RePosition;
    procedure SetOnSelect(const Value: TNotifyEvent);
    procedure DoChange;
    procedure SetCategoryTag(const Value: Integer);
  public
    procedure DoClick;
    procedure DrawListView(aListView: TListView; ItemIndex: Integer = -1);
  public
    property IconType: TJanuaIconType read FIconType write SetIconType;
    property OnChange: TNotifyEvent read FOnChange write SetOnChange;
    constructor Create(aList: TList<TJanuaFMXListElement>; aIconType: TJanuaIconType;
      aEvent: TNotifyEvent = nil); overload;
  published
    property OnClick: TNotifyEvent read FOnClick write SetOnClick;
    property Enabled: boolean read FEnabled write SetEnabled stored False;
    property Text: string read FText write SetText;
    property Position: Integer read FPosition write SetPosition stored False;
    property ItemIndex: Integer read FItemIndex write SetItemIndex stored False;
    property OnSelect: TNotifyEvent read FOnSelect write SetOnSelect;
    property CategoryTag: Integer read FCategoryTag write SetCategoryTag;
  end;

type
  TJanuaFMXListViewMenu = class(TJanuaCoreComponent)
  private
    { Private declarations }
    FListElements: TList<TJanuaFMXListElement>;
    FCalendarMenu: TJanuaFMXListElement;
    FListView: TListView;
    FMuseumItem: TJanuaFMXListElement;
    FPortItem: TJanuaFMXListElement;
    FBoatItem: TJanuaFMXListElement;
    FAirportItem: TJanuaFMXListElement;
    FHotelItem: TJanuaFMXListElement;
    FSeatBeachItem: TJanuaFMXListElement;
    FTourismItem: TJanuaFMXListElement;
    FFerryItem: TJanuaFMXListElement;
    FSwimmingPoolItem: TJanuaFMXListElement;
    FParkItem: TJanuaFMXListElement;
    FLightHouseItem: TJanuaFMXListElement;
    FBallItem: TJanuaFMXListElement;
    FBusItem: TJanuaFMXListElement;
    FGPSItem: TJanuaFMXListElement;
    FRailWayItem: TJanuaFMXListElement;
    FNewsItem: TJanuaFMXListElement;
    FCompassItem: TJanuaFMXListElement;
    FSwimmerItem: TJanuaFMXListElement;
    FCameraItem: TJanuaFMXListElement;
    FMapItem: TJanuaFMXListElement;
    FLocalMapItem: TJanuaFMXListElement;
    FCarItem: TJanuaFMXListElement;
    FJournalItem: TJanuaFMXListElement;
    FGlobeItem: TJanuaFMXListElement;
    FTennisItem: TJanuaFMXListElement;
    FAfterItemClick: TNotifyEvent;
    FBeforeItemClick: TNotifyEvent;
    FHealthItem: TJanuaFMXListElement;
    FMarketItem: TJanuaFMXListElement;
    FBankItem: TJanuaFMXListElement;
    FShopItem: TJanuaFMXListElement;
    FTheatreItem: TJanuaFMXListElement;
    FPoliceItem: TJanuaFMXListElement;
    FFoodItem: TJanuaFMXListElement;
    FToiltItem: TJanuaFMXListElement;
    FOnItemMenuClick: TNotifyEvent;
    procedure SetCalendarMenu(const Value: TJanuaFMXListElement);
    procedure SetListView(const Value: TListView);
    procedure SetAirportItem(const Value: TJanuaFMXListElement);
    procedure SetBallItem(const Value: TJanuaFMXListElement);
    procedure SetBoatItem(const Value: TJanuaFMXListElement);
    procedure SetBusItem(const Value: TJanuaFMXListElement);
    procedure SetCameraItem(const Value: TJanuaFMXListElement);
    procedure SetCarItem(const Value: TJanuaFMXListElement);
    procedure SetCompassItem(const Value: TJanuaFMXListElement);
    procedure SetFerryItem(const Value: TJanuaFMXListElement);
    procedure SetGlobeItem(const Value: TJanuaFMXListElement);
    procedure SetGPSItem(const Value: TJanuaFMXListElement);
    procedure SetHotelItem(const Value: TJanuaFMXListElement);
    procedure SetJournalItem(const Value: TJanuaFMXListElement);
    procedure SetLightHouseItem(const Value: TJanuaFMXListElement);
    procedure SetLocalMapItem(const Value: TJanuaFMXListElement);
    procedure SetMapItem(const Value: TJanuaFMXListElement);
    procedure SetMuseumItem(const Value: TJanuaFMXListElement);
    procedure SetNewsItem(const Value: TJanuaFMXListElement);
    procedure SetParkItem(const Value: TJanuaFMXListElement);
    procedure SetPortItem(const Value: TJanuaFMXListElement);
    procedure SetRailWayItem(const Value: TJanuaFMXListElement);
    procedure SetSeatBeachItem(const Value: TJanuaFMXListElement);
    procedure SetSwimmerItem(const Value: TJanuaFMXListElement);
    procedure SetSwimmingPoolItem(const Value: TJanuaFMXListElement);
    procedure SetTennisItem(const Value: TJanuaFMXListElement);
    procedure SetTourismItem(const Value: TJanuaFMXListElement);
    procedure SetAfterItemClick(const Value: TNotifyEvent);
    procedure SetBeforeItemClick(const Value: TNotifyEvent);
    procedure SetHealthItem(const Value: TJanuaFMXListElement);
    procedure SetBankItem(const Value: TJanuaFMXListElement);
    procedure SetFoodItem(const Value: TJanuaFMXListElement);
    procedure SetMarketItem(const Value: TJanuaFMXListElement);
    procedure SetPoliceItem(const Value: TJanuaFMXListElement);
    procedure SetShopItem(const Value: TJanuaFMXListElement);
    procedure SetTheatreItem(const Value: TJanuaFMXListElement);
    procedure SetToiltItem(const Value: TJanuaFMXListElement);
    procedure SetOnItemMenuClick(const Value: TNotifyEvent);
  strict protected
    // virtual abstract Methods to be implemented by descendant classes .....................................
    function InternalActivate: boolean; override;
    procedure InternalDeactivate; override;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure DrawListView;
    procedure DoChange(Sender: TObject);
    procedure ListViewFairItemClick(const Sender: TObject; const AItem: TListViewItem);
  published
    { Published declarations }
    property CalendarItem: TJanuaFMXListElement read FCalendarMenu write SetCalendarMenu;
    property AirportItem: TJanuaFMXListElement read FAirportItem write SetAirportItem;
    property CarItem: TJanuaFMXListElement read FCarItem write SetCarItem;
    property MuseumItem: TJanuaFMXListElement read FMuseumItem write SetMuseumItem;
    property GlobeItem: TJanuaFMXListElement read FGlobeItem write SetGlobeItem;
    property LocalMapItem: TJanuaFMXListElement read FLocalMapItem write SetLocalMapItem;
    property GPSItem: TJanuaFMXListElement read FGPSItem write SetGPSItem;
    property CompassItem: TJanuaFMXListElement read FCompassItem write SetCompassItem;
    property MapItem: TJanuaFMXListElement read FMapItem write SetMapItem;
    property TourismItem: TJanuaFMXListElement read FTourismItem write SetTourismItem;
    property PortItem: TJanuaFMXListElement read FPortItem write SetPortItem;
    property SwimmingPoolItem: TJanuaFMXListElement read FSwimmingPoolItem write SetSwimmingPoolItem;
    property SeatBeachItem: TJanuaFMXListElement read FSeatBeachItem write SetSeatBeachItem;
    property HotelItem: TJanuaFMXListElement read FHotelItem write SetHotelItem;
    property LightHouseItem: TJanuaFMXListElement read FLightHouseItem write SetLightHouseItem;
    property RailWayItem: TJanuaFMXListElement read FRailWayItem write SetRailWayItem;
    property CameraItem: TJanuaFMXListElement read FCameraItem write SetCameraItem;
    property BusItem: TJanuaFMXListElement read FBusItem write SetBusItem;
    property BoatItem: TJanuaFMXListElement read FBoatItem write SetBoatItem;
    property BallItem: TJanuaFMXListElement read FBallItem write SetBallItem;
    property SwimmerItem: TJanuaFMXListElement read FSwimmerItem write SetSwimmerItem;
    property TennisItem: TJanuaFMXListElement read FTennisItem write SetTennisItem;
    property FerryItem: TJanuaFMXListElement read FFerryItem write SetFerryItem;
    property ParkItem: TJanuaFMXListElement read FParkItem write SetParkItem;
    property JournalItem: TJanuaFMXListElement read FJournalItem write SetJournalItem;
    property NewsItem: TJanuaFMXListElement read FNewsItem write SetNewsItem;
    property HealthItem: TJanuaFMXListElement read FHealthItem write SetHealthItem;
    property FoodItem: TJanuaFMXListElement read FFoodItem write SetFoodItem;
    property ToiltItem: TJanuaFMXListElement read FToiltItem write SetToiltItem;
    property BankItem: TJanuaFMXListElement read FBankItem write SetBankItem;
    property MarketItem: TJanuaFMXListElement read FMarketItem write SetMarketItem;
    property PoliceItem: TJanuaFMXListElement read FPoliceItem write SetPoliceItem;
    property TheatreItem: TJanuaFMXListElement read FTheatreItem write SetTheatreItem;
    property ShopItem: TJanuaFMXListElement read FShopItem write SetShopItem;
  published
    {
      calendar = 0, airport = 1, car = 2, museum = 3, globe = 4, localmap = 5, gps = 6, compass = 7,
      map = 8, tourism = 9, port = 10, swimmingpool = 11, seatbeach = 12, hotel = 13, lighthouse = 14, railway = 15,
      camera = 16, bus = 17, boat = 18, ball = 19, swimmer = 20, tennis = 21, ferry = 22, park = 23, journal = 24,
      news = 25 food = 27, toilet = 40, bank = 44, market = 51, police = 62, health = 65, theatre = 68
    }
    property ListView: TListView read FListView write SetListView;
    property BeforeItemClick: TNotifyEvent read FBeforeItemClick write SetBeforeItemClick;
    property OnItemMenuClick: TNotifyEvent read FOnItemMenuClick write SetOnItemMenuClick;
    property AfterItemClick: TNotifyEvent read FAfterItemClick write SetAfterItemClick;
  end;

implementation

uses System.Math;

{ TJanuaFMXListElement }

constructor TJanuaFMXListElement.Create(aList: TList<TJanuaFMXListElement>; aIconType: TJanuaIconType;
  aEvent: TNotifyEvent = nil);
begin
  self.FListElements := aList;
  self.FIconType := aIconType;
  self.FOnChange := aEvent;
  self.FPosition := -1;
  self.FItemIndex := -1;
end;

procedure TJanuaFMXListElement.DoChange;
begin
  if Assigned(self.FOnChange) then
    self.FOnChange(self);
end;

procedure TJanuaFMXListElement.RePosition;
begin
  if (FPosition <= self.FListElements.Count - 1) then
  begin
    FListElements.Delete(self.FPosition);
    FListElements.Insert(self.FPosition, self);
    self.RecalculateList;
  end;
end;

procedure TJanuaFMXListElement.DoClick;
begin
  if Assigned(FOnClick) then
    FOnClick(self);

end;

procedure TJanuaFMXListElement.DrawListView(aListView: TListView; ItemIndex: Integer = -1);
begin
  if Assigned(aListView) then
  begin
    with aListView.Items.Add do
    begin
      Tag := IfThen(ItemIndex = -1, Ord(self.FIconType), ItemIndex);
      Text := self.FText;
      // Detail := Format('%d kg of paper', [1000 + Random(1234)]);
      ImageIndex := Ord(self.FIconType);
    end;
  end;
end;

procedure TJanuaFMXListElement.RecalculateList;
var
  i: Integer;
begin
  if self.FListElements.Count > 0 then
    for i := 0 to self.FListElements.Count - 1 do
    begin
      FListElements[i].Position := i;
      FListElements[i].ItemIndex := i;
    end;
  DoChange;
end;

procedure TJanuaFMXListElement.SetCategoryTag(const Value: Integer);
begin
  FCategoryTag := Value;
end;

procedure TJanuaFMXListElement.SetEnabled(const Value: boolean);
begin
  if self.FEnabled <> Value then
  begin
    if Value then
    begin
      if self.Position > -1 then
      begin
        self.RePosition;
      end
      else
      begin
        self.FListElements.Add(self);
        self.ItemIndex := self.FListElements.Count - 1;
        self.Position := self.FListElements.Count - 1;
        DoChange;
      end;
    end
    else
    begin
      self.Position := -1;
      self.FListElements.Delete(self.ItemIndex);
      self.ItemIndex := -1;
      RecalculateList;
    end;
    FEnabled := Value;
  end;
end;

procedure TJanuaFMXListElement.SetIconType(const Value: TJanuaIconType);
begin
  FIconType := Value;
end;

procedure TJanuaFMXListElement.SetItemIndex(const Value: Integer);
begin
  FItemIndex := Value;
end;

procedure TJanuaFMXListElement.SetOnChange(const Value: TNotifyEvent);
begin
  FOnChange := Value;
end;

procedure TJanuaFMXListElement.SetOnClick(const Value: TNotifyEvent);
begin
  FOnClick := Value;
end;

procedure TJanuaFMXListElement.SetOnSelect(const Value: TNotifyEvent);
begin
  FOnSelect := Value;
end;

procedure TJanuaFMXListElement.SetPosition(const Value: Integer);
begin
  if FPosition <> Value then
  begin
    if self.FEnabled and Assigned(self.FListElements) then
      RePosition;
    FPosition := Value;
  end;
end;

procedure TJanuaFMXListElement.SetText(const Value: string);
begin
  FText := Value;
end;

{ TJanuaFMXListViewMenu }

constructor TJanuaFMXListViewMenu.Create(AOwner: TComponent);
begin
  inherited;
  self.FListElements := TList<TJanuaFMXListElement>.Create;
  FCalendarMenu := TJanuaFMXListElement.Create(self.FListElements, TJanuaIconType.calendar, DoChange);
  AirportItem := TJanuaFMXListElement.Create(self.FListElements, TJanuaIconType.airport, DoChange);
  CarItem := TJanuaFMXListElement.Create(self.FListElements, TJanuaIconType.car, DoChange);
  MuseumItem := TJanuaFMXListElement.Create(self.FListElements, TJanuaIconType.museum, DoChange);
  GlobeItem := TJanuaFMXListElement.Create(self.FListElements, TJanuaIconType.globe, DoChange);
  LocalMapItem := TJanuaFMXListElement.Create(self.FListElements, TJanuaIconType.localmap, DoChange);
  GPSItem := TJanuaFMXListElement.Create(self.FListElements, TJanuaIconType.gps, DoChange);
  CompassItem := TJanuaFMXListElement.Create(self.FListElements, TJanuaIconType.compass, DoChange);
  MapItem := TJanuaFMXListElement.Create(self.FListElements, TJanuaIconType.map, DoChange);
  TourismItem := TJanuaFMXListElement.Create(self.FListElements, TJanuaIconType.tourism, DoChange);
  PortItem := TJanuaFMXListElement.Create(self.FListElements, TJanuaIconType.port, DoChange);
  SwimmingPoolItem := TJanuaFMXListElement.Create(self.FListElements, TJanuaIconType.swimmingpool, DoChange);
  SeatBeachItem := TJanuaFMXListElement.Create(self.FListElements, TJanuaIconType.seatbeach, DoChange);
  HotelItem := TJanuaFMXListElement.Create(self.FListElements, TJanuaIconType.hotel, DoChange);
  LightHouseItem := TJanuaFMXListElement.Create(self.FListElements, TJanuaIconType.lighthouse, DoChange);
  RailWayItem := TJanuaFMXListElement.Create(self.FListElements, TJanuaIconType.railway, DoChange);
  CameraItem := TJanuaFMXListElement.Create(self.FListElements, TJanuaIconType.camera, DoChange);
  BusItem := TJanuaFMXListElement.Create(self.FListElements, TJanuaIconType.bus, DoChange);
  BoatItem := TJanuaFMXListElement.Create(self.FListElements, TJanuaIconType.boat, DoChange);
  BallItem := TJanuaFMXListElement.Create(self.FListElements, TJanuaIconType.ball, DoChange);
  SwimmerItem := TJanuaFMXListElement.Create(self.FListElements, TJanuaIconType.swimmer, DoChange);
  TennisItem := TJanuaFMXListElement.Create(self.FListElements, TJanuaIconType.tennis, DoChange);
  FerryItem := TJanuaFMXListElement.Create(self.FListElements, TJanuaIconType.ferry, DoChange);
  ParkItem := TJanuaFMXListElement.Create(self.FListElements, TJanuaIconType.park, DoChange);
  JournalItem := TJanuaFMXListElement.Create(self.FListElements, TJanuaIconType.journal, DoChange);
  NewsItem := TJanuaFMXListElement.Create(self.FListElements, TJanuaIconType.news, DoChange);
  FHealthItem := TJanuaFMXListElement.Create(self.FListElements, TJanuaIconType.health, DoChange);
  FMarketItem := TJanuaFMXListElement.Create(self.FListElements, TJanuaIconType.market, DoChange);
  FBankItem := TJanuaFMXListElement.Create(self.FListElements, TJanuaIconType.bank, DoChange);
  FShopItem := TJanuaFMXListElement.Create(self.FListElements, TJanuaIconType.shop, DoChange);
  FTheatreItem := TJanuaFMXListElement.Create(self.FListElements, TJanuaIconType.theatre, DoChange);
  FPoliceItem := TJanuaFMXListElement.Create(self.FListElements, TJanuaIconType.police, DoChange);
  FFoodItem := TJanuaFMXListElement.Create(self.FListElements, TJanuaIconType.food, DoChange);
  FToiltItem := TJanuaFMXListElement.Create(self.FListElements, TJanuaIconType.toilet, DoChange);
end;

procedure TJanuaFMXListViewMenu.InternalDeactivate;
begin
  if Assigned(self.FListView) then
    self.FListView.Items.Clear;
  inherited;

end;

destructor TJanuaFMXListViewMenu.Destroy;
begin
  FListElements.Free;
  FCalendarMenu.Free;
  inherited;
end;

procedure TJanuaFMXListViewMenu.DoChange(Sender: TObject);
begin
  if self.Active then
    self.DrawListView;
end;

procedure TJanuaFMXListViewMenu.DrawListView;
var
  i: Integer;
begin
  if Assigned(FListView) then
  begin
    self.FListView.Items.Clear;
    if self.FListElements.Count > 0 then
      for i := 0 to self.FListElements.Count - 1 do
        FListElements[i].DrawListView(FListView, i);
  end;
end;

function TJanuaFMXListViewMenu.InternalActivate: boolean;
begin
  Result := Active;
  if not Result then
    try
      Result := inherited;
      if Result then
      begin
        Result := False;
        DrawListView;
        Result := True;
      end;
    except
      on e: exception do
        RaiseLocalException('InternalActivate', e);
    end;

end;

procedure TJanuaFMXListViewMenu.ListViewFairItemClick(const Sender: TObject; const AItem: TListViewItem);
begin
  if Assigned(self.FBeforeItemClick) then
    FBeforeItemClick(Sender);

  if (AItem.Tag > -1) and (AItem.Tag < self.FListElements.Count) then
    self.FListElements[AItem.Tag].DoClick;

  if Assigned(self.FAfterItemClick) then
    FAfterItemClick(Sender);
end;

procedure TJanuaFMXListViewMenu.SetAfterItemClick(const Value: TNotifyEvent);
begin
  FAfterItemClick := Value;
end;

procedure TJanuaFMXListViewMenu.SetAirportItem(const Value: TJanuaFMXListElement);
begin
  FAirportItem := Value;
end;

procedure TJanuaFMXListViewMenu.SetBallItem(const Value: TJanuaFMXListElement);
begin
  FBallItem := Value;
end;

procedure TJanuaFMXListViewMenu.SetBankItem(const Value: TJanuaFMXListElement);
begin
  FBankItem := Value;
end;

procedure TJanuaFMXListViewMenu.SetBeforeItemClick(const Value: TNotifyEvent);
begin
  FBeforeItemClick := Value;
end;

procedure TJanuaFMXListViewMenu.SetBoatItem(const Value: TJanuaFMXListElement);
begin
  FBoatItem := Value;
end;

procedure TJanuaFMXListViewMenu.SetBusItem(const Value: TJanuaFMXListElement);
begin
  FBusItem := Value;
end;

procedure TJanuaFMXListViewMenu.SetCalendarMenu(const Value: TJanuaFMXListElement);
begin
  FCalendarMenu := Value;
end;

procedure TJanuaFMXListViewMenu.SetCameraItem(const Value: TJanuaFMXListElement);
begin
  FCameraItem := Value;
end;

procedure TJanuaFMXListViewMenu.SetCarItem(const Value: TJanuaFMXListElement);
begin
  FCarItem := Value;
end;

procedure TJanuaFMXListViewMenu.SetCompassItem(const Value: TJanuaFMXListElement);
begin
  FCompassItem := Value;
end;

procedure TJanuaFMXListViewMenu.SetFerryItem(const Value: TJanuaFMXListElement);
begin
  FFerryItem := Value;
end;

procedure TJanuaFMXListViewMenu.SetFoodItem(const Value: TJanuaFMXListElement);
begin
  FFoodItem := Value;
end;

procedure TJanuaFMXListViewMenu.SetGlobeItem(const Value: TJanuaFMXListElement);
begin
  FGlobeItem := Value;
end;

procedure TJanuaFMXListViewMenu.SetGPSItem(const Value: TJanuaFMXListElement);
begin
  FGPSItem := Value;
end;

procedure TJanuaFMXListViewMenu.SetHealthItem(const Value: TJanuaFMXListElement);
begin
  FHealthItem := Value;
end;

procedure TJanuaFMXListViewMenu.SetHotelItem(const Value: TJanuaFMXListElement);
begin
  FHotelItem := Value;
end;

procedure TJanuaFMXListViewMenu.SetJournalItem(const Value: TJanuaFMXListElement);
begin
  FJournalItem := Value;
end;

procedure TJanuaFMXListViewMenu.SetLightHouseItem(const Value: TJanuaFMXListElement);
begin
  FLightHouseItem := Value;
end;

procedure TJanuaFMXListViewMenu.SetListView(const Value: TListView);
begin
  FListView := Value;
  if Assigned(self.FListView) then
    self.FListView.OnItemClick := self.ListViewFairItemClick;
end;

procedure TJanuaFMXListViewMenu.SetLocalMapItem(const Value: TJanuaFMXListElement);
begin
  FLocalMapItem := Value;
end;

procedure TJanuaFMXListViewMenu.SetMapItem(const Value: TJanuaFMXListElement);
begin
  FMapItem := Value;
end;

procedure TJanuaFMXListViewMenu.SetMarketItem(const Value: TJanuaFMXListElement);
begin
  FMarketItem := Value;
end;

procedure TJanuaFMXListViewMenu.SetMuseumItem(const Value: TJanuaFMXListElement);
begin
  FMuseumItem := Value;
end;

procedure TJanuaFMXListViewMenu.SetNewsItem(const Value: TJanuaFMXListElement);
begin
  FNewsItem := Value;
end;

procedure TJanuaFMXListViewMenu.SetOnItemMenuClick(const Value: TNotifyEvent);
begin
  FOnItemMenuClick := Value;
end;

procedure TJanuaFMXListViewMenu.SetParkItem(const Value: TJanuaFMXListElement);
begin
  FParkItem := Value;
end;

procedure TJanuaFMXListViewMenu.SetPoliceItem(const Value: TJanuaFMXListElement);
begin
  FPoliceItem := Value;
end;

procedure TJanuaFMXListViewMenu.SetPortItem(const Value: TJanuaFMXListElement);
begin
  FPortItem := Value;
end;

procedure TJanuaFMXListViewMenu.SetRailWayItem(const Value: TJanuaFMXListElement);
begin
  FRailWayItem := Value;
end;

procedure TJanuaFMXListViewMenu.SetSeatBeachItem(const Value: TJanuaFMXListElement);
begin
  FSeatBeachItem := Value;
end;

procedure TJanuaFMXListViewMenu.SetShopItem(const Value: TJanuaFMXListElement);
begin
  FShopItem := Value;
end;

procedure TJanuaFMXListViewMenu.SetSwimmerItem(const Value: TJanuaFMXListElement);
begin
  FSwimmerItem := Value;
end;

procedure TJanuaFMXListViewMenu.SetSwimmingPoolItem(const Value: TJanuaFMXListElement);
begin
  FSwimmingPoolItem := Value;
end;

procedure TJanuaFMXListViewMenu.SetTennisItem(const Value: TJanuaFMXListElement);
begin
  FTennisItem := Value;
end;

procedure TJanuaFMXListViewMenu.SetTheatreItem(const Value: TJanuaFMXListElement);
begin
  FTheatreItem := Value;
end;

procedure TJanuaFMXListViewMenu.SetToiltItem(const Value: TJanuaFMXListElement);
begin
  FToiltItem := Value;
end;

procedure TJanuaFMXListViewMenu.SetTourismItem(const Value: TJanuaFMXListElement);
begin
  FTourismItem := Value;
end;

{ TFMXMenuCollection }

function TFMXMenuCollection.Add: TJanuaFMXMenuItem;
begin
  Result := TJanuaFMXMenuItem(inherited Add);
  Result.Images := Images;
  Result.Title := 'Menu ' + Count.ToString;
end;

procedure TFMXMenuCollection.Assign(Source: TPersistent);
begin
  inherited Assign(Source);
end;

procedure TFMXMenuCollection.Clear;
begin
  inherited Clear;
end;

constructor TFMXMenuCollection.Create(AOwner: TComponent);
begin
  inherited Create(AOwner, TJanuaFMXMenuItem);

end;

procedure TFMXMenuCollection.Delete(Index: Integer);
begin
  inherited Delete(Index);
end;

destructor TFMXMenuCollection.Destroy;
begin

  inherited Destroy;
end;

function TFMXMenuCollection.GetImageList: TCustomImageList;
begin
  Result := FImageList
end;

function TFMXMenuCollection.GetItem(Index: Integer): TJanuaFMXMenuItem;
begin
  Result := TJanuaFMXMenuItem(inherited Items[Index]);
end;

procedure TFMXMenuCollection.SetImageList(const Value: TCustomImageList);
var
  i: Integer;
begin
  FImageList := Value;
  for i := 0 to Pred(Count) do
    Items[i].Images := FImageList;
end;

procedure TFMXMenuCollection.SetItem(Index: Integer; Value: TJanuaFMXMenuItem);
begin
  inherited SetItem(Index, Value);
end;

{ TJanuaFMXMenuItem }

procedure TJanuaFMXMenuItem.Assign(Source: TPersistent);
begin
  if Source is TJanuaFMXMenuItem then
  begin
    // code custom...................................
    SetImageList((Source as TJanuaFMXMenuItem).Images);
    SetImageIndex((Source as TJanuaFMXMenuItem).ImageIndex);
  end
  else
    inherited Assign(Source);

end;

procedure TJanuaFMXMenuItem.AssignTo(Dest: TPersistent);
begin
  if Dest is TJanuaFMXMenuItem then
  begin
    TJanuaFMXMenuItem(Dest).Images := GetImageList;
    TJanuaFMXMenuItem(Dest).ImageIndex := GetImageIndex;
  end
  else
    inherited AssignTo(Dest);
end;

constructor TJanuaFMXMenuItem.Create(AOwner: TCollection);
begin
  inherited;
  ImageIndex := -1;

end;

destructor TJanuaFMXMenuItem.Destroy;
begin

  inherited;
end;

procedure TJanuaFMXMenuItem.DoClick;
begin
  if Assigned(FOnClick) then
    FOnClick(self);
end;

procedure TJanuaFMXMenuItem.DrawListView(aListView: TListView; ItemIndex: Integer);
begin
  if Assigned(aListView) then
  begin
    with aListView.Items.Add do
    begin
      Tag := ItemIndex;
      Text := self.FTitle;
      // Detail := Format('%d kg of paper', [1000 + Random(1234)]);
      ImageIndex := self.ImageIndex;
    end;
  end;
end;

function TJanuaFMXMenuItem.GetDisplayName: String;
begin
  Result := FTitle;
  if Result = '' then
    Result := inherited GetDisplayName();
end;

function TJanuaFMXMenuItem.GetImageIndex: TImageIndex;
begin
  Result := FImageIndex
end;

function TJanuaFMXMenuItem.GetImageList: TCustomImageList;
begin
  Result := FImages;
end;

function TJanuaFMXMenuItem.GetMenu: TFMXMenuCollection;
begin
  Result := Collection as TFMXMenuCollection;
end;

procedure TJanuaFMXMenuItem.SetCollection(Value: TCollection);
begin
  inherited;
  if Assigned(Collection) and (Collection is TFMXMenuCollection) then
    FImages := (Collection as TFMXMenuCollection).Images
end;

procedure TJanuaFMXMenuItem.SetImageIndex(const Value: TImageIndex);
begin
  FImageIndex := Value;
end;

procedure TJanuaFMXMenuItem.SetImageList(const Value: TCustomImageList);
begin
  FImages := Value;
end;

procedure TJanuaFMXMenuItem.SetOnClick(const Value: TNotifyEvent);
begin
  FOnClick := Value;
end;

procedure TJanuaFMXMenuItem.SetTitle(const Value: string);
begin
  FTitle := Value;
end;

{ TJanuaFMXListViewMenuController }

procedure TJanuaFMXListViewMenuController.AfterConstruction;
begin
  inherited;

end;

constructor TJanuaFMXListViewMenuController.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FMenuCollection := TFMXMenuCollection.Create(self);
end;

destructor TJanuaFMXListViewMenuController.Destroy;
begin

  inherited;
end;

procedure TJanuaFMXListViewMenuController.DoChange(Sender: TObject);
begin

end;

procedure TJanuaFMXListViewMenuController.DrawListView;
var
  i: Integer;
begin
  if Assigned(FListView) then
  begin
    FListView.Items.Clear;
    if FMenuCollection.Count > 0 then
      for i := 0 to FMenuCollection.Count - 1 do
        FMenuCollection.Items[i].DrawListView(FListView, i);
  end;
end;

function TJanuaFMXListViewMenuController.GetImageList: TCustomImageList;
begin
  Result := FImages;
end;

function TJanuaFMXListViewMenuController.InternalActivate: boolean;
begin
  Result := Active;
  if not Result then
    try
      Result := inherited;
      if Result then
      begin
        Result := False;
        DrawListView;
        Result := True;
      end;
    except
      on e: exception do
        RaiseLocalException('InternalActivate', e);
    end;
end;

procedure TJanuaFMXListViewMenuController.InternalDeactivate;
begin
  inherited;
  if Assigned(self.FListView) then
    self.FListView.Items.Clear;
end;

procedure TJanuaFMXListViewMenuController.ListViewFairItemClick(const Sender: TObject;
  const AItem: TListViewItem);
begin

end;

procedure TJanuaFMXListViewMenuController.SetImageIndex(const Value: TImageIndex);
begin
  FImageIndex := Value;
end;

procedure TJanuaFMXListViewMenuController.SetImageList(const Value: TCustomImageList);
begin
  FImages := Value;
  FMenuCollection.Images := FImages;
end;

procedure TJanuaFMXListViewMenuController.SetListView(const Value: TListView);
begin
  FListView := Value;
end;

procedure TJanuaFMXListViewMenuController.SetMenuItems(const Value: TFMXMenuCollection);
begin
  FMenuCollection := Value;
end;

end.
