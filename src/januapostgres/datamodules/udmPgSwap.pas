unit udmPgSwap;

interface

uses
  // System units ................................
  System.SysUtils, System.Variants, System.Classes,

  // DB Units
  Data.DB, PgAccess, MemDS, DBAccess,

  // Janua Core Functions
  Janua.Core.Functions, Janua.Core.Classes, Janua.Core.Swap,

  // Janua Postgres DataModules
  udmJanuaPostgresModel, Datasnap.Provider, Datasnap.DBClient, Janua.Core.Exceptions;

type
  TdmPgSwap = class(TdmJanuaPostgresModel)
    qrySwapProfile: TPgQuery;
    spEventsAddUser: TPgStoredProc;
    spEventsDelUser: TPgStoredProc;
    spItemInsert: TPgStoredProc;
    qryDiscoverItems: TPgQuery;
    qryDiscoverItemsid: TLargeintField;
    qryDiscoverItemsowner_id: TIntegerField;
    qryDiscoverItemsinsert_date: TSQLTimeStampField;
    qryDiscoverItemsdescription: TWideMemoField;
    qryDiscoverItemsurl: TWideStringField;
    qryDiscoverItemsavailable: TBooleanField;
    qryDiscoverItemsswapped: TBooleanField;
    qryDiscoverItemslikes: TSmallintField;
    spItemLike: TPgStoredProc;
    spItemDiscovered: TPgStoredProc;
    qryEditItem: TPgQuery;
    qryUserItems: TPgQuery;
    qryUserItemsid: TLargeintField;
    qryUserItemsowner_id: TIntegerField;
    qryUserItemsinsert_date: TSQLTimeStampField;
    qryUserItemsdescription: TWideMemoField;
    qryUserItemsurl: TWideStringField;
    qryUserItemsavailable: TBooleanField;
    qryUserItemsswapped: TBooleanField;
    qryUserItemslikes: TSmallintField;
    qryWatchItem: TPgQuery;
    qryWatchItemid: TLargeintField;
    qryWatchItemowner_id: TIntegerField;
    qryWatchIteminsert_date: TSQLTimeStampField;
    qryWatchItemdescription: TWideMemoField;
    qryWatchItemurl: TWideStringField;
    qryWatchItemavailable: TBooleanField;
    qryWatchItemswapped: TBooleanField;
    qryWatchItemlikes: TSmallintField;
    qryWatchItemImages: TPgQuery;
    qryWatchItemImagesid: TLargeintField;
    qryWatchItemImagesurl: TWideStringField;
    qryWatchItemImagestitle: TWideStringField;
    qryWatchItemImagesitem_id: TLargeintField;
    qryWatchItemImagesinsert_date: TSQLTimeStampField;
    spImageInsert: TPgStoredProc;
    qryImage: TPgQuery;
    qryImageowner_id: TIntegerField;
    qryImageid: TLargeintField;
    qryImageurl: TWideStringField;
    qryImagetitle: TWideStringField;
    qryImageitem_id: TLargeintField;
    qryImageinsert_date: TSQLTimeStampField;
    spItemsDisLike: TPgStoredProc;
    spUserFollow: TPgStoredProc;
    qryUserFollowers: TPgQuery;
    qryUserLikes: TPgQuery;
    qryUserLikesid: TLargeintField;
    qryUserLikesowner_id: TIntegerField;
    qryUserLikesinsert_date: TSQLTimeStampField;
    qryUserLikesdescription: TWideMemoField;
    qryUserLikesurl: TWideStringField;
    qryUserLikesavailable: TBooleanField;
    qryUserLikesswapped: TBooleanField;
    qryUserLikeslikes: TSmallintField;
    qryUserFollowersfirst_name: TWideStringField;
    qryUserFollowerslast_name: TWideStringField;
    qryUserFollowersaddress_full: TWideStringField;
    qryUserFollowerslatitude: TFloatField;
    qryUserFollowerslongitude: TFloatField;
    qryUserFollowersimage_url: TWideStringField;
    qryUserFollowersdb_user_id: TIntegerField;
    qryUserFollowings: TPgQuery;
    qryUserFollowingsfirst_name: TWideStringField;
    qryUserFollowingslast_name: TWideStringField;
    qryUserFollowingsaddress_full: TWideStringField;
    qryUserFollowingslatitude: TFloatField;
    qryUserFollowingslongitude: TFloatField;
    qryUserFollowingsimage_url: TWideStringField;
    qryUserFollowingsdb_user_id: TIntegerField;
    qryNotifications: TPgQuery;
    spNotificationRead: TPgStoredProc;
    qrySmallProfile: TPgQuery;
    qrySmallProfilefirst_name: TWideStringField;
    qrySmallProfilelast_name: TWideStringField;
    qrySmallProfileaddress_full: TWideStringField;
    qrySmallProfilelatitude: TFloatField;
    qrySmallProfilelongitude: TFloatField;
    qrySmallProfileimage_url: TWideStringField;
    qrySmallProfiledb_user_id: TIntegerField;
    spSwapStart: TPgStoredProc;
    qryUserSwaps: TPgQuery;
    qryUserSwapsuser_id: TIntegerField;
    qryUserSwapsother_user_id: TIntegerField;
    qryUserSwapsother_user: TWideStringField;
    qryUserSwapsitem_id: TLargeintField;
    qryUserSwapsother_item_id: TLargeintField;
    qryUserSwapsitem_image_url: TWideStringField;
    qryUserSwapsother_image_url: TWideStringField;
    qryUserSwapsswap_id: TLargeintField;
    qryUserSwapsinsert_date: TSQLTimeStampField;
    qrySwap: TPgQuery;
    LargeintField1: TLargeintField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    WideStringField1: TWideStringField;
    LargeintField2: TLargeintField;
    LargeintField3: TLargeintField;
    WideStringField2: TWideStringField;
    WideStringField3: TWideStringField;
    SQLTimeStampField1: TSQLTimeStampField;
    qryItemsLikes: TPgQuery;
    qryItemsLikesitem_id: TLargeintField;
    qryItemsLikesuser_id: TIntegerField;
    qryItemsLikesinsert_date: TSQLTimeStampField;
    qryItemsLikesfirst_name: TWideStringField;
    qryItemsLikeslast_name: TWideStringField;
    qryItemsLikesaddress_full: TWideStringField;
    qryItemsLikeslatitude: TFloatField;
    qryItemsLikeslongitude: TFloatField;
    qryItemsLikesimage_url: TWideStringField;
    qryItemsLikesdb_user_id: TIntegerField;
    qrySmallProfileisfollowed: TBooleanField;
    qrySmallProfileisfollowing: TBooleanField;
    qryUserFollowersuser_id: TIntegerField;
    qryUserFollowersfollower_id: TIntegerField;
    qryUserFollowersinsert_date: TSQLTimeStampField;
    qryUserFollowersisfollowed: TBooleanField;
    qryUserFollowersisfollowing: TBooleanField;
    qryUserFollowingsisfollowed: TBooleanField;
    qryUserFollowingsisfollowing: TBooleanField;
    qryUserSwapscanclose: TBooleanField;
    qryUserSwapsisfollowed: TBooleanField;
    qryUserSwapsisfollowing: TBooleanField;
    qrySwapcanclose: TBooleanField;
    qrySwapisfollowed: TBooleanField;
    qrySwapisfollowing: TBooleanField;
    qrySwapstatus: TSmallintField;
    spSwapAction: TPgStoredProc;
    qryUserSwapsstatus: TSmallintField;
    qryUserLikesfull_name: TWideMemoField;
    qryUserLikesavatar_img: TWideStringField;
    qryUserSwapsother_user_img: TWideStringField;
    qryEvent: TPgQuery;
    qryEventid: TIntegerField;
    qryEventcreator_id: TIntegerField;
    qryEventtitle: TWideMemoField;
    qryEventaddress: TWideStringField;
    qryEventmain_picture_url: TWideStringField;
    qryEventinsert_date: TSQLTimeStampField;
    qryEventevent_date: TSQLTimeStampField;
    qryEventlatitude: TFloatField;
    qryEventlongitude: TFloatField;
    qryEventUsers: TPgQuery;
    qryEventUsersfirst_name: TWideStringField;
    qryEventUserslast_name: TWideStringField;
    qryEventUsersaddress_full: TWideStringField;
    qryEventUserslatitude: TFloatField;
    qryEventUserslongitude: TFloatField;
    qryEventUsersimage_url: TWideStringField;
    qryEventUsersdb_user_id: TIntegerField;
    qryEventUsersisfollowed: TBooleanField;
    qryEventUsersisfollowing: TBooleanField;
    spEventInsert: TPgStoredProc;
    qryEventsList: TPgQuery;
    qryEventsListid: TIntegerField;
    qryEventsListcreator_id: TIntegerField;
    qryEventsListtitle: TWideMemoField;
    qryEventsListaddress: TWideStringField;
    qryEventsListmain_picture_url: TWideStringField;
    qryEventsListinsert_date: TSQLTimeStampField;
    qryEventsListevent_date: TSQLTimeStampField;
    qryEventsListlatitude: TFloatField;
    qryEventsListlongitude: TFloatField;
    spEventDelete: TPgStoredProc;
    spEventAddUser: TPgStoredProc;
    spEventDelUser: TPgStoredProc;
    qryEventhour: TSmallintField;
    qryEventmins: TSmallintField;
    qrySwapother_user_img: TWideStringField;
    qrySwapfrom_user_id: TIntegerField;
    qryUserSwapsfrom_user_id: TIntegerField;
    qryEventsListdescription: TWideStringField;
    qryEventsListhour: TSmallintField;
    qryEventsListmins: TSmallintField;
    qryEventsListprice: TFloatField;
    qryEventsListcurrency_id: TSmallintField;
    qryEventsListactive: TBooleanField;
    qryEventsListdb_user_id: TIntegerField;
    qryEventdescription: TWideStringField;
    qryEventprice: TFloatField;
    qryEventcurrency_id: TSmallintField;
    qryEventactive: TBooleanField;
    qryEventparticipants: TIntegerField;
    qryEventsListparticipants: TIntegerField;
    qryEventsListparticipate: TBooleanField;
    qryEventparticipate: TBooleanField;
    qrySwapMessages: TPgQuery;
    qrySwapMessagesswap_id: TLargeintField;
    qrySwapMessagesmessage_id: TLargeintField;
    qrySwapMessagesmessage: TWideStringField;
    qrySwapMessagesimage_url: TWideStringField;
    qrySwapMessagesfrom_user_id: TIntegerField;
    qrySwapMessagesto_user_id: TIntegerField;
    spMessageInsert: TPgStoredProc;
    spMessageDelete: TPgStoredProc;
    qrySwapMessagesinsert_date: TSQLTimeStampField;
    qrySwapMessagesuser_image_url: TWideStringField;
    qrySwapMessage: TPgQuery;
    qrySwapMessageswap_id: TLargeintField;
    qrySwapMessagemessage_id: TLargeintField;
    qrySwapMessagemessage: TWideStringField;
    qrySwapMessageimage_url: TWideStringField;
    qrySwapMessagefrom_user_id: TIntegerField;
    qrySwapMessageto_user_id: TIntegerField;
    qrySwapMessageinsert_date: TSQLTimeStampField;
    qrySwapMessageuser_image_url: TWideStringField;
    qryItemsLikesisfollowed: TBooleanField;
    qryItemsLikesisfollowing: TBooleanField;
    qryFeeds: TPgQuery;
    qryFeedsuser_id: TIntegerField;
    qryRadar: TPgQuery;
    qrySmallProfiledistance: TIntegerField;
    qrySmallProfilerange: TIntegerField;
    qryRadarfirst_name: TWideStringField;
    qryRadarlast_name: TWideStringField;
    qryRadaraddress_full: TWideStringField;
    qryRadarlatitude: TFloatField;
    qryRadarlongitude: TFloatField;
    qryRadarimage_url: TWideStringField;
    qryRadardb_user_id: TIntegerField;
    qryRadarisfollowed: TBooleanField;
    qryRadarisfollowing: TBooleanField;
    qryRadardistance: TIntegerField;
    qryRadarrange: TIntegerField;
    qryUserFollowersdistance: TIntegerField;
    qryUserFollowersrange: TIntegerField;
    qryUserFollowingsdistance: TIntegerField;
    qryUserFollowingsrange: TIntegerField;
    qryEventUsersdistance: TIntegerField;
    qryEventUsersrange: TIntegerField;
    qryUserLikesitem_likes: TIntegerField;
    qryUserItemsitem_likes: TIntegerField;
    qryWatchItemitem_likes: TIntegerField;
    qryWatchItemuser_likes: TBooleanField;
    qryUserItemsuser_likes: TBooleanField;
    qryUserLikesuser_likes: TBooleanField;
    qryDiscoverItemsitem_likes: TIntegerField;
    qryDiscoverItemsuser_likes: TBooleanField;
    qryItemsLikesdistance: TIntegerField;
    qryItemsLikesrange: TIntegerField;
    qryEventUsersevent_id: TIntegerField;
    qryFeedsevent_address: TWideStringField;
    qryFeedsevent_picture_url: TWideStringField;
    qryFeedsevent_date: TSQLTimeStampField;
    qryFeedsevent_name: TWideMemoField;
    qryFeedsevent_hour: TSmallintField;
    qryFeedsevent_mins: TSmallintField;
    qryFeedsevent_price: TFloatField;
    qryFeedsid: TLargeintField;
    qryFeedsdb_schema_id: TIntegerField;
    qryFeedstitle: TWideStringField;
    qryFeedsother_user_id: TIntegerField;
    qryFeedsuser_item_id: TLargeintField;
    qryFeedsswap_item_id: TLargeintField;
    qryFeedsinsert_date: TSQLTimeStampField;
    qryFeedstype_id: TSmallintField;
    qryFeedsuser_name: TWideMemoField;
    qryFeedsuser_avatar_img: TWideStringField;
    qryFeedsswap_item_image: TWideStringField;
    qryFeedsuser_item_image: TWideMemoField;
    qryFeedsswap_id: TLargeintField;
    qryFeedsnread: TBooleanField;
    qryFeedsevent_id: TIntegerField;
    qryFeedsitem_description: TWideStringField;
    qryFeedsisfollowed: TBooleanField;
    qryFeedsisfollowing: TBooleanField;
    qryEditItemid: TLargeintField;
    qryEditItemowner_id: TIntegerField;
    qryEditIteminsert_date: TSQLTimeStampField;
    qryEditItemdescription: TWideMemoField;
    qryEditItemurl: TWideStringField;
    qryEditItemavailable: TBooleanField;
    qryEditItemswapped: TBooleanField;
    qryEditItemlikes: TSmallintField;
    qryEditItemitem_likes: TSmallintField;
    qryEditItemuser_likes: TBooleanField;
    qrySwapProfilenotifications: TIntegerField;
    qrySwapProfilenotificationsunread: TIntegerField;
    qrySwapProfilefeeds: TIntegerField;
    qrySwapProfilefeedsunread: TIntegerField;
    qrySwapProfilefollowings: TIntegerField;
    qrySwapProfilefollowers: TIntegerField;
    qrySwapProfilelikes: TIntegerField;
    qrySwapProfileswaps: TIntegerField;
    qrySwapProfileswapsactive: TIntegerField;
    qrySwapProfileuser_id: TIntegerField;
    qrySwapProfilefollowing: TSmallintField;
    qrySwapProfilefollowers_1: TSmallintField;
    qrySwapProfileswaps_1: TSmallintField;
    qrySwapProfilenotifications_1: TIntegerField;
    qrySwapProfileunread: TIntegerField;
    qrySwapProfilelikes_1: TIntegerField;
    qrySwapProfilefollowingyou: TBooleanField;
    qrySwapProfilelikewantobject: TBooleanField;
    qrySwapProfileeventupdates: TBooleanField;
    qrySwapProfilefollowaddeditem: TBooleanField;
    qrySwapProfileprivateaccount: TBooleanField;
    qrySwapProfilesubcriptionvalid: TDateField;
    qrySwapProfileprivacypolicy: TBooleanField;
    qrySwapProfiletermsofservice: TBooleanField;
    qrySwapProfileisfollowed: TBooleanField;
    qrySwapProfileisfollowing: TBooleanField;
    qrySwapProfiledistance: TIntegerField;
    qrySwapProfilerange: TIntegerField;
    qryNotificationsevent_address: TWideStringField;
    qryNotificationsevent_picture_url: TWideStringField;
    qryNotificationsevent_date: TSQLTimeStampField;
    qryNotificationsevent_name: TWideMemoField;
    qryNotificationsevent_hour: TSmallintField;
    qryNotificationsevent_mins: TSmallintField;
    qryNotificationsevent_price: TFloatField;
    qryNotificationsuser_id: TIntegerField;
    qryNotificationsid: TLargeintField;
    qryNotificationsdb_schema_id: TIntegerField;
    qryNotificationstitle: TWideStringField;
    qryNotificationsother_user_id: TIntegerField;
    qryNotificationsuser_item_id: TLargeintField;
    qryNotificationsswap_item_id: TLargeintField;
    qryNotificationsinsert_date: TSQLTimeStampField;
    qryNotificationstype_id: TSmallintField;
    qryNotificationsuser_name: TWideMemoField;
    qryNotificationsuser_avatar_img: TWideStringField;
    qryNotificationsswap_item_image: TWideStringField;
    qryNotificationsuser_item_image: TWideMemoField;
    qryNotificationsswap_id: TLargeintField;
    qryNotificationsnread: TBooleanField;
    qryNotificationsevent_id: TIntegerField;
    qryNotificationsevent_name_1: TWideStringField;
    qryNotificationsevent_date_1: TDateField;
    qryNotificationsevent_address_1: TWideStringField;
    qryNotificationsitem_description: TWideStringField;
    qryNotificationsisfollowed: TBooleanField;
    qryNotificationsisfollowing: TBooleanField;
    procedure qryWatchItemAfterOpen(DataSet: TDataSet);
    procedure qryWatchItemAfterScroll(DataSet: TDataSet);
    procedure qryEventBeforeOpen(DataSet: TDataSet);
    procedure qryWatchItemBeforeOpen(DataSet: TDataSet);
    procedure qryDiscoverItemsBeforeOpen(DataSet: TDataSet);
    procedure qryEditItemBeforeOpen(DataSet: TDataSet);
    procedure qryUserItemsBeforeOpen(DataSet: TDataSet);
    procedure qryUserLikesBeforeOpen(DataSet: TDataSet);
    procedure qryEventAfterOpen(DataSet: TDataSet);
    procedure qryEventAfterClose(DataSet: TDataSet);
    procedure qryEventUsersBeforeOpen(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject); override;
  private
    FItemID: int64;
    FItemsList: TJanuaSwapItems;
    FSelectedItem: TJanuaSwapItem;
    procedure SetItemID(const Value: int64);
    procedure SetItemsList(const Value: TJanuaSwapItems);
    procedure SetSelectedItem(const Value: TJanuaSwapItem);
    { Private declarations }
  public
    { Public declarations }

    // Discover Functions .......................................................
    function Discover: boolean;
    function DiscoverUser: boolean;
    function Notifications: boolean;
    function Feeds: boolean;
    function NotificationRead(aNotificationID: int64): boolean;
    function InternalItemsDiscover: boolean;

    // Swap Functions ............................................................
    function SwapStart(vItemID, vOtherItemID: int64; vState: boolean = true): boolean;
    function SwapList(aUserID: integer): boolean;
    function UserSwap(aSwapID: int64; aUserID: integer): boolean;
    function SwapAgree(vUserID: integer; vSwapID: int64; vAction: TJanuaSwapActionType): boolean;

    // Swap Messages Functions
    function MessageInsert(var vMessage: TJanuaSwapMessage): int64;
    function MessageDelete(aSwapID, aMessageID: int64): boolean;
    function MessagesList(aSwapID, aLastID: int64): int64;
    function MessageWatch(aSwapID, aMessageID: int64): integer;

    // Item Functions and procedures ............................................
    function ItemInsert(aItem: Janua.Core.Swap.TJanuaSwapItem): integer;
    function ItemLike(aItemID: int64; aState: boolean): boolean;
    function ItemDisLike(aItemID: int64; aState: boolean): boolean;
    function ItemDiscovered: boolean;
    function ItemDelete(aItemID: int64): boolean;
    function ItemSeen(aItemID: int64): boolean;
    function ItemSearch(aItemID: int64): boolean;
    function InternalItemUpdate(aItem: TJanuaSwapItem): boolean;
    function InternalItemsList(aUserID: integer): integer;
    function ItemWatch(aItemID: int64): boolean;
    function ImageList(aItemID: int64): integer;
    function ItemImageInsert(aImage: TJanuaSwapImage): int64;
    function ItemImageDelete(aItemID: int64): boolean;
    function ItemImageList(aItemID: int64): integer;
    function ItemLikesList(aItemID: int64): boolean;
    // Radar ......................................................................
    function Radar(const aRange: integer): integer;

    // Profile Functions ..........................................................
    function ProfileInsert(aProfile: Janua.Core.Swap.TJanuaSwapProfile): boolean;
    function ProfileUpdate(aProfile: Janua.Core.Swap.TJanuaSwapProfile): boolean;
    function SwapperProfile(aUserID: integer): boolean;
    function OpenSwapperProfile(aUserID: integer): boolean;
    function OpenSmallProfile(aUserID: integer): boolean;
    // to see an User Profile

    // Follow UnFollow Followers Procedures ......................................
    function UserFollow(aUserID: integer; aFollow: boolean = true): boolean;
    // To Start to Follow an User
    function UserLikes(aUserID: integer): integer;
    // the list of the User's Likes
    function UserFollowers(aUserID: integer): integer;
    // the list of the user's Followers
    function UserFollowings(aUserID: integer): integer;

    // Events Management ..........................................................
    function EventInsert(aEvent: TJanuaSwapEvent): integer;
    function EventDelete(aEventID: integer): boolean;
    function EventUsersList(aEventID: integer): boolean;
    function EventsList(aUserID: int64): boolean;
    function EventWatch(aEventID: integer): boolean;
    function EventUpdate(aEvent: TJanuaSwapEvent): boolean;
    function EventAddUser(aUserID: int64; aEventID: integer): boolean;
    function EventDelUser(aUserID: int64; aEventID: integer): boolean;

    // Items .......................................................................
    property SelectedItem: TJanuaSwapItem read FSelectedItem write SetSelectedItem;
    property ItemsList: TJanuaSwapItems read FItemsList write SetItemsList;
    property ItemID: int64 read FItemID write SetItemID;

    // Properties

  end;

var
  dmPgSwap: TdmPgSwap;

implementation

{$R *.dfm}
{ TdmPgSwap }

procedure TdmPgSwap.DataModuleCreate(Sender: TObject);
begin
  inherited;
  self.WriteLog('Creato TdmPgSwap');
end;

function TdmPgSwap.Discover: boolean;
begin
  { TODO : Implement dmPgSwap.Discover }
  try

  finally

  end;

  Result := False;
end;

function TdmPgSwap.DiscoverUser: boolean;
begin
  { TODO : Implement dmPgSwap.DiscoverUser }
  try

  finally

  end;

  Result := False;
end;

function TdmPgSwap.EventAddUser(aUserID: int64; aEventID: integer): boolean;
begin
  try
    // SELECT swap.events_add_user(:p_event_id, :p_user_id, :p_isadmin)
    self.spEventsAddUser.ParamByName('p_event_id').AsInteger := aEventID;
    if aUserID > 0 then
      self.spEventsAddUser.ParamByName('p_user_id').AsInteger := aUserID
    else
      self.spEventsAddUser.ParamByName('p_user_id').AsInteger := self.UserID;
    self.spEventsAddUser.Execute;
    Result := self.spEventsAddUser.ParamByName('result').AsBoolean;
    if not Result then
    begin
      self.Haserrors := true;
      self.LastErrorMessage := self.spEventsAddUser.ParamByName('errorcode').AsWideString + ' ' +
        self.spEventsAddUser.ParamByName('errormessage').AsWideString + '. User=' + self.UserID.ToString() +
        ', Event=' + aEventID.ToString;
    end;
  except
    on e: exception do
    begin
      self.WriteError('TdmPgSwap.EventAddUser User=' + self.UserID.ToString() + ', Event=' +
        aEventID.ToString(), e);
      Result := False;
    end;
  end;

end;

function TdmPgSwap.EventDelete(aEventID: integer): boolean;
begin
  try
    // SELECT swap.events_delete(:p_id)
    self.spEventDelete.ParamByName('p_id').AsInteger := aEventID;
    self.spEventDelete.ParamByName('p_user_id').AsInteger := self.UserID;
    self.spEventDelete.Execute;
    Result := self.spEventDelete.ParamByName('result').AsBoolean;

    self.LastErrorMessage := self.spEventDelete.ParamByName('errorcode').AsWideString + ' ' +
      self.spEventDelete.ParamByName('errormessage').AsWideString;

    if not Result then
    begin
      self.Haserrors := true;
    end;
  except
    on e: exception do
    begin
      self.WriteError('TdmPgSwap.EventDelete  Event=' + aEventID.ToString(), e);
      Result := False;
    end;
  end;
end;

function TdmPgSwap.EventDelUser(aUserID: int64; aEventID: integer): boolean;
begin
  try
    // SELECT swap.events_del_user(:p_event_id, :p_user_id)
    self.spEventDelUser.ParamByName('p_event_id').AsInteger := aEventID;
    if aUserID > 0 then
      self.spEventDelUser.ParamByName('p_user_id').AsInteger := aUserID
    else
      self.spEventDelUser.ParamByName('p_user_id').AsInteger := self.UserID;
    self.spEventDelUser.Execute;
    Result := true;
  except
    on e: exception do
    begin
      self.WriteError('TdmPgSwap.EventAddUser User=' + aUserID.ToString() + ', Event=' +
        aEventID.ToString(), e);
      Result := False;
    end;
  end;
end;

function TdmPgSwap.EventInsert(aEvent: TJanuaSwapEvent): integer;
begin
  // SELECT * FROM swap.event_insert(:p_creator_id, :p_title, :p_description,
  // :p_location, :p_main_picture_url, :p_latitude, :p_longitude,
  // :p_hour, :p_mins, :p_date, :p_currency_code, :p_price)

  self.spEventInsert.ParamByName('p_creator_id').AsInteger := self.UserID;
  self.spEventInsert.ParamByName('p_title').AsWideString := aEvent.title;
  self.spEventInsert.ParamByName('p_description').AsWideString := aEvent.description;
  self.spEventInsert.ParamByName('p_location').AsWideString := aEvent.Address;
  self.spEventInsert.ParamByName('p_main_picture_url').AsWideString := aEvent.ImageUrl;
  self.spEventInsert.ParamByName('p_latitude').AsFloat := aEvent.lat;
  self.spEventInsert.ParamByName('p_longitude').AsFloat := aEvent.lng;
  self.spEventInsert.ParamByName('p_hour').AsSmallInt := aEvent.Hour;
  self.spEventInsert.ParamByName('p_mins').AsSmallInt := aEvent.Mins;
  self.spEventInsert.ParamByName('p_date').AsDate := aEvent.DateTime;
  self.spEventInsert.ParamByName('p_currency_code').AsString := aEvent.currency_code;
  self.spEventInsert.ParamByName('p_price').AsFloat := aEvent.Price;
  spEventInsert.ExecProc;
  Result := spEventInsert.ParamByName('p_id').AsInteger;
  if Result = -1 then
  begin
    self.LastErrorMessage := spEventInsert.ParamByName('p_error').AsWideString;
  end;
end;

function TdmPgSwap.EventsList(aUserID: int64): boolean;
begin
  try
    Result := self.SwapperProfile(0);
    if Result then
    begin
      if aUserID = 0 then
        qryEventsList.ParamByName('db_user_id').AsInteger := self.UserID
      else
        qryEventsList.ParamByName('db_user_id').AsInteger := aUserID;

      ServerFunctions.OpenDataset(qryEventsList);
    end;

  except
    on e: exception do
    begin
      self.LastErrorMessage := 'TdmPgSwap.EventsList ' + e.Message;
      Result := False;
    end;
  end;
end;

function TdmPgSwap.EventUpdate(aEvent: TJanuaSwapEvent): boolean;
begin
  try
    Result := self.EventWatch(aEvent.id);
    if Result then
    begin
      Result := self.UserID = self.qryEventcreator_id.AsInteger;
      aEvent.OwnerID := self.UserID;
    end;

    if Result then
    begin
      qryEvent.Edit;
      if aEvent.OwnerID = 0 then
        aEvent.id := self.qryEventcreator_id.AsInteger;

      aEvent.SaveToDataset(qryEvent);
      if qryEvent.Modified then
        qryEvent.Post;
    end
  except
    on e: exception do
    begin
      self.LastErrorMessage := 'TdmPgSwap.EventUpdate ' + e.Message;
      Result := False;
    end;
  end;

end;

function TdmPgSwap.EventUsersList(aEventID: integer): boolean;
begin
  try
    self.qryEventUsers.Close;
    self.qryEventUsers.ParamByName('event_id').AsInteger := aEventID;
    ServerFunctions.OpenDataset(qryEventUsers);
    Result := self.qryEventUsers.RecordCount > 0;
    if not Result then
      self.LastErrorMessage := 'No Data Found';
  except
    on e: exception do
    begin
      self.LastErrorMessage := 'TdmPgSwap.EventUsersList ' + e.Message;
      Result := False;
    end;
  end;
end;

function TdmPgSwap.EventWatch(aEventID: integer): boolean;
begin
  try
    self.qryEvent.Close;
    self.qryEvent.ParamByName('event_id').AsInteger := aEventID;
    ServerFunctions.OpenDataset(qryEvent);
    OpenSwapperProfile(0);
    Result := self.qryEvent.RecordCount > 0;
    if not Result then
      self.LastErrorMessage := 'No Data Found'
    else
    begin
      EventUsersList(aEventID);
      if (self.qryEventcreator_id.AsInteger > 0) then
        OpenSmallProfile(self.qryEventcreator_id.AsInteger);
    end;
  except
    on e: exception do
    begin
      self.LastErrorMessage := e.Message;
      Result := False;
    end;
  end;
end;

function TdmPgSwap.Feeds: boolean;
begin
  try
    if self.UserID > 0 then
    begin
      self.qryFeeds.Close;
      self.qryFeeds.ParamByName('user_id').AsInteger := self.UserID;
      self.qryFeeds.ParamByName('offset').AsInteger := self.Offset;
      self.qryFeeds.ParamByName('limit').AsInteger := self.Limit;
      self.ServerFunctions.OpenDataset(self.qryFeeds);

      Result := self.OpenSwapperProfile(0);

    end
    else
    begin
      self.Haserrors := true;
      Result := False;
      self.FLastErrorMessage := 'user id not set or session expired';
    end;
  Except
    on e: exception do
    begin
      self.Haserrors := true;
      self.FLastErrorMessage := 'TdmPgSwap.Notifications Error: ' + e.Message;
      Result := False;

    end;

  end;

end;

function TdmPgSwap.ImageList(aItemID: int64): integer;
begin
  if self.qryWatchItemImages.Active then
    qryWatchItemImages.Close;
  self.qryWatchItemImages.ParamByName('item_id').AsInteger := aItemID;
  ServerFunctions.OpenDataset(qryWatchItemImages);
  Result := qryWatchItemImages.RecordCount;
end;

function TdmPgSwap.InternalItemsDiscover: boolean;
begin
  Result := qryDiscoverItems.Active and (qryDiscoverItems.RecordCount > 0) and
    (qryDiscoverItems.ParamByName('user_id').AsInteger = self.UserID);
  if not Result then
    try
      if self.UserID <> 0 then
      begin
        self.qryDiscoverItems.ParamByName('user_id').AsInteger := self.UserID;
        self.qryDiscoverItems.ParamByName('check').AsBoolean := true;
        self.ServerFunctions.ReOpenDataset(qryDiscoverItems);
        if self.qryDiscoverItems.RecordCount = 0 then
        begin
          qryDiscoverItems.Close;
          self.qryDiscoverItems.ParamByName('check').AsBoolean := False;
          self.ServerFunctions.OpenDataset(qryDiscoverItems);
        end;
        Result := true;
      end
      else
      begin
        Result := False;
        self.FLastErrorMessage := 'User ID in session not correctly set';
      end;
    except
      on e: exception do
      begin
        self.LastErrorMessage := e.Message;
      end;

    end;
end;

function TdmPgSwap.InternalItemsList(aUserID: integer): integer;
begin
  // this function search items List from a give user id, if id = 0 uses the session user id.
  if aUserID = 0 then
    self.qryUserItems.ParamByName('owner_id').AsInteger := self.UserID
  else
    self.qryUserItems.ParamByName('owner_id').AsInteger := aUserID;

  ServerFunctions.OpenDataset(qryUserItems);

  Result := self.qryUserItems.RecordCount;

end;

function TdmPgSwap.InternalItemUpdate(aItem: TJanuaSwapItem): boolean;
begin
  if self.ItemSearch(aItem.id) then
  begin
    if self.qryEditItemowner_id.AsInteger <> self.UserID then
    begin
      Result := False;
      self.FLastErrorMessage := 'Session User is not the Item Owner';
    end
    else
    begin
      self.qryEditItem.Edit;
      self.qryEditItemdescription.AsWideString := aItem.description;
      self.qryEditItemurl.AsWideString := aItem.image_url;
      qryEditItem.Post;
      Result := true;
      qryEditItem.Close;
    end
  end
  else
  begin
    Result := False;
    self.FLastErrorMessage := 'Item not Found';
  end;
end;

function TdmPgSwap.ItemDelete(aItemID: int64): boolean;
begin
  Result := ItemSearch(aItemID);
  if Result then
  begin
    if self.qryEditItemowner_id.AsInteger <> self.UserID then
    begin
      self.Haserrors := true;
      Result := False;
      self.FLastErrorMessage := 'Item is not owned by Session User';
    end
    else
    begin
      if self.qryEditItem.Active and (self.qryEditItem.RecordCount = 1) then
      begin
        qryEditItem.Edit;
        self.qryEditItemavailable.AsBoolean := False;
        qryEditItem.Post;
      end;
      self.qryEditItem.Close;
      Result := true;
    end;
  end;
end;

function TdmPgSwap.ItemDiscovered: boolean;
begin
  { TODO : Implement dmPgSwap Item Discovered }
  Result := False;
end;

function TdmPgSwap.ItemDisLike(aItemID: int64; aState: boolean): boolean;
begin
  { SELECT swap.items_likes(:p_user_id, :p_item_id) }
  try
    if self.UserID > 0 then
    begin
      self.spItemsDisLike.ParamByName('p_user_id').AsInteger := self.UserID;
      self.spItemsDisLike.ParamByName('p_item_id').AsLargeInt := aItemID;
      self.spItemsDisLike.ParamByName('p_state').AsBoolean := aState;
      self.spItemsDisLike.ExecProc;
      Result := self.spItemsDisLike.ParamByName('result').AsBoolean;
    end
    else
      Result := False;
  except
    on e: exception do
    begin
      Result := False;
      self.WriteError('TdmPgSwap.ItemLike', e);
      self.FLastErrorMessage := 'TdmPgSwap.ItemLike = ' + e.Message + sLineBreak + e.ToString;
    end;
  end;
end;

function TdmPgSwap.ItemImageInsert(aImage: TJanuaSwapImage): int64;
begin
  try
    // SELECT swap.item_images_insert(:p_item_id, :p_url, :p_title)
    self.spImageInsert.ParamByName('p_item_id').AsLargeInt := aImage.item_id;
    self.spImageInsert.ParamByName('p_url').AsWideString := aImage.image_url;
    self.spImageInsert.ParamByName('p_title').AsWideString := aImage.title;
    spImageInsert.Execute;
    Result := self.spImageInsert.ParamByName('result').AsLargeInt;
  except
    on e: exception do
    begin
      self.WriteError('TdmPgSwap.ItemInsert', e);
      self.FLastErrorMessage := 'TdmPgSwap.ItemInsert= ' + e.Message;
      Result := -1;
    end;

  end;
end;

function TdmPgSwap.ItemImageList(aItemID: int64): integer;
begin
  { TODO : Implement dmPgSwap Item Image List }
  Result := -1;
end;

function TdmPgSwap.ItemInsert(aItem: Janua.Core.Swap.TJanuaSwapItem): integer;
begin
  // SELECT swap.items_insert(:p_user_id, :p_des, :p_url)
  try
    self.spItemInsert.ParamByName('p_user_id').AsInteger := self.UserID;
    self.spItemInsert.ParamByName('p_des').AsWideString := aItem.description;
    self.spItemInsert.ParamByName('p_url').AsWideString := aItem.image_url;

    self.spItemInsert.Execute;

    Result := self.spItemInsert.ParamByName('Result').AsLargeInt;
  except
    on e: exception do
    begin
      self.WriteError('TdmPgSwap.ItemInsert', e);
      Result := -1;
    end;

  end;
end;

function TdmPgSwap.ItemLike(aItemID: int64; aState: boolean): boolean;
begin
  { SELECT swap.items_likes(:p_user_id, :p_item_id) }
  try
    if self.UserID > 0 then
    begin
      self.spItemLike.ParamByName('p_user_id').AsInteger := self.UserID;
      self.spItemLike.ParamByName('p_item_id').AsLargeInt := aItemID;
      self.spItemLike.ParamByName('p_state').AsBoolean := aState;
      self.spItemLike.ExecProc;
      Result := self.spItemLike.ParamByName('result').AsBoolean;
    end
    else
      Result := False;
  except
    on e: exception do
    begin
      Result := False;
      self.WriteError('TdmPgSwap.ItemLike', e);
    end;
  end;
end;

function TdmPgSwap.ItemLikesList(aItemID: int64): boolean;
begin
  try
    self.qryItemsLikes.Close;
    self.qryItemsLikes.ParamByName('item_id').AsLargeInt := aItemID;
    self.qryItemsLikes.ParamByName('session_user_id').AsLargeInt := self.UserID;
    self.ServerFunctions.OpenDataset(self.qryItemsLikes);
    Result := true;
  except
    on e: exception do
    begin
      Result := False;
      self.FLastErrorMessage := 'TdmPgSwap.ItemLikesList ItemID=' + aItemID.ToString + e.Message;
      self.WriteError('TdmPgSwap.ItemSearch', e);
    end;

  end;

end;

function TdmPgSwap.ItemSearch(aItemID: int64): boolean;
begin
  try
    self.qryEditItem.ParamByName('item_id').AsLargeInt := aItemID;
    ServerFunctions.OpenDataset(qryEditItem);
    Result := (qryEditItem.RecordCount > 0);
    if not Result then
    begin
      if qryEditItem.RecordCount = 0 then
        self.FLastErrorMessage := 'No Item with ID: ' + aItemID.ToString() + ' Found';
    end;
  except
    on e: exception do
    begin
      Result := False;
      self.FLastErrorMessage := 'TdmPgSwap.ItemSearch' + e.Message;
      self.WriteError('TdmPgSwap.ItemSearch', e);
    end;

  end;
end;

function TdmPgSwap.ItemSeen(aItemID: int64): boolean;
begin
  { SELECT swap.items_discovered(:p_user_id, :p_item_id) }
  try
    if self.UserID > 0 then
    begin
      self.spItemDiscovered.ParamByName('p_user_id').AsInteger := self.UserID;
      self.spItemDiscovered.ParamByName('p_item_id').AsLargeInt := aItemID;
      self.spItemDiscovered.ExecProc;
      Result := self.spItemDiscovered.ParamByName('result').AsBoolean;
    end
    else
      Result := False;
  except
    on e: exception do
    begin
      Result := False;
      self.WriteError('TdmPgSwap.ItemLike', e);
    end;
  end;
end;

function TdmPgSwap.ItemWatch(aItemID: int64): boolean;
begin
  if aItemID = 0 then
    Result := False
  else
  begin
    if self.qryWatchItem.Active then
      self.qryWatchItem.Close;
    // check if querz is active then close it to start the search
    self.qryWatchItem.ParamByName('item_id').AsInteger := aItemID;
    ServerFunctions.OpenDataset(qryWatchItem);
    Result := self.qryWatchItem.RecordCount = 1;
    if Result then
      ImageList(aItemID);
  end;
end;

function TdmPgSwap.MessageDelete(aSwapID, aMessageID: int64): boolean;
begin
  // SELECT swap.message_delete(:p_message_id, :p_user_id)
  self.spMessageInsert.ParamByName('p_message_id').AsLargeInt := aMessageID;
  self.spMessageInsert.ParamByName('p_user_id').AsInteger := self.UserID;

  self.spMessageInsert.ExecProc;

  Result := self.spMessageInsert.ParamByName('Result').AsBoolean;

end;

function TdmPgSwap.MessageInsert(var vMessage: TJanuaSwapMessage): int64;
begin
  // SELECT swap.message_insert(:p_swap_id, :p_text, :p_image_url, :p_from_user_id)
  try
    self.spMessageInsert.ParamByName('p_swap_id').AsLargeInt := vMessage.swap_id;
    self.spMessageInsert.ParamByName('p_text').AsWideString := vMessage.Text;
    self.spMessageInsert.ParamByName('p_image_url').AsWideString := vMessage.ImageUrl;
    self.spMessageInsert.ParamByName('p_from_user_id').AsInteger := self.UserID;
    self.spMessageInsert.ExecProc;

    if self.spMessageInsert.ParamByName('result').AsBoolean then
    begin
      Result := self.spMessageInsert.ParamByName('message_id').AsLargeInt;
    end
    else
    begin
      Result := -1;
      self.LastErrorMessage := spMessageInsert.ParamByName('errorcode').AsWideString + ' ' +
        spMessageInsert.ParamByName('errormessage').AsWideString;
    end;

  except
    on e: exception do
    begin
      self.FLastErrorMessage := 'TdmPgSwap.MessageInsert user_id= ' + self.UserID.ToString + ', swap_id = ' +
        vMessage.swap_id.ToString() + e.ToString;
      Result := -1;
    end;

  end;
end;

function TdmPgSwap.MessagesList(aSwapID, aLastID: int64): int64;
begin
  { SELECT swap_id, message_id, message, image_url, from_user_id, to_user_id
    FROM swap.swaps_messages m
    WHERE
    m.message_id > :last_message_id
    AND
    m.swap_id = :swap_id }
  try
    self.qrySwapMessages.Close;
    self.qrySwapMessages.ParamByName('last_message_id').AsLargeInt := aLastID;
    self.qrySwapMessages.ParamByName('swap_id').AsLargeInt := aSwapID;
    ServerFunctions.OpenDataset(qrySwapMessages);
    Result := self.qrySwapMessages.RecordCount;
  except
    on e: exception do
    begin
      self.FLastErrorMessage := 'TdmPgSwap.MessagesList user_id= ' + self.UserID.ToString + ', swap_id = ' +
        aSwapID.ToString() + e.ToString;
      Result := -1;
    end;

  end;
end;

function TdmPgSwap.MessageWatch(aSwapID, aMessageID: int64): integer;
begin
  { SELECT swap_id, message_id, message, image_url, from_user_id, to_user_id
    FROM swap.swaps_messages m
    WHERE
    m.message_id > :last_message_id
    AND
    m.swap_id = :swap_id }
  try
    self.qrySwapMessage.Close;
    self.qrySwapMessage.ParamByName('message_id').AsLargeInt := aMessageID;
    self.qrySwapMessage.ParamByName('swap_id').AsLargeInt := aSwapID;
    ServerFunctions.OpenDataset(qrySwapMessage);
    Result := self.qrySwapMessage.RecordCount;
  except
    on e: exception do
    begin
      self.FLastErrorMessage := 'TdmPgSwap.MessageWatch aMessageID= ' + aMessageID.ToString + ', swap_id = ' +
        aSwapID.ToString() + e.ToString;
      Result := -1;
    end;

  end;
end;

function TdmPgSwap.NotificationRead(aNotificationID: int64): boolean;
begin
  try
    self.spNotificationRead.ParamByName('p_user_id').AsInteger := self.UserID;
    self.spNotificationRead.ParamByName('p_notification_id').AsLargeInt := aNotificationID;
    spNotificationRead.Execute;
    Result := self.spNotificationRead.ParamByName('result').AsBoolean;
  except
    on e: exception do
    begin
      self.FLastErrorMessage := 'TdmPgSwap.NotificationRead user_idid= ' + self.UserID.ToString +
        ', notification_id = ' + aNotificationID.ToString() + e.ToString;
      Result := False;
    end;

  end;
end;

function TdmPgSwap.Notifications: boolean;
begin
  try
    if self.UserID > 0 then
    begin
      self.qryNotifications.Close;
      self.qryNotifications.ParamByName('user_id').AsInteger := self.UserID;
      self.qryNotifications.ParamByName('offset').AsInteger := self.Offset;
      self.qryNotifications.ParamByName('limit').AsInteger := self.Limit;
      self.ServerFunctions.OpenDataset(self.qryNotifications);
      Result := self.OpenSwapperProfile(0);
    end
    else
    begin
      self.Haserrors := true;
      Result := False;
      self.FLastErrorMessage := 'user id not set or session expired';
    end;
  Except
    on e: exception do
    begin
      self.Haserrors := true;
      self.FLastErrorMessage := 'TdmPgSwap.Notifications Error: ' + e.Message;
      Result := False;

    end;

  end;
end;

function TdmPgSwap.OpenSmallProfile(aUserID: integer): boolean;
var
  aID: integer;
begin

  { SELECT p.first_name, p.last_name,
    p.address_full,  p.latitude,
    p.longitude, u.image_url, p.db_user_id,
    swap.isfollowed(:session_user_id, :user_id) isfollowed,
    swap.isfollowing(:session_user_id, :user_id) isfollowing
    FROM system.db_users_profiles p,
    system.db_users u
    where
    :user_id = p.db_user_id
    and
    u.db_user_id = p.db_user_id
  }

  try

    if aUserID = 0 then
      aID := self.UserID
    else
      aID := aUserID;

    qrySmallProfile.Close;
    if (not self.qrySmallProfile.Active) or (self.qrySmallProfile.ParamByName('user_id').AsInteger <> aID)
    then
      self.qrySmallProfile.ParamByName('user_id').AsInteger := aID;

    self.qrySmallProfile.ParamByName('session_user_id').AsInteger := self.UserID;

    self.ServerFunctions.OpenDataset(qrySmallProfile);

    Result := self.qrySmallProfile.Active and (self.qrySmallProfile.RecordCount > 0);

    if not Result then
    begin
      self.FLastErrorMessage := 'No profile found';
      self.Haserrors := true;
    end;

  except
    on e: exception do
    begin
      Result := False;
      self.WriteError('TdmPgSwap.OpenSmallProfile', e);
      self.FLastErrorMessage := 'TdmPgSwap.OpenSmallProfile=' + e.Message;
    end;
  end;
end;

function TdmPgSwap.OpenSwapperProfile(aUserID: integer): boolean;
var
  aProfile: TJanuaSwapProfile;
  aID: integer;
begin
  try
    // this functions searches the Swapper Profile with an user ID

    if aUserID = 0 then
      aID := self.UserID
    else
      aID := aUserID;

    qrySwapProfile.Close;
    if (not self.qrySwapProfile.Active) or (self.qrySwapProfile.ParamByName('db_user_id').AsInteger <> aID)
    then
    begin
      self.qrySwapProfile.Close;
      self.qrySwapProfile.ParamByName('db_user_id').AsInteger := aID;
      self.qrySwapProfile.ParamByName('session_user_id').AsInteger := self.UserID;
      self.ServerFunctions.OpenDataset(qrySwapProfile);
    end;

    if self.qrySwapProfile.Active and (self.qrySwapProfile.RecordCount > 0) then
    begin
      Result := true;
    end
    else
    begin
      Result := self.ProfileInsert(aProfile);
    end;

  except
    on e: exception do
    begin
      Result := False;
      self.WriteError('TdmPgSwap.SwapperProfile', e);
      self.FLastErrorMessage := 'TdmPgSwap.SwapperProfile=' + e.ToString;
    end;
  end;

end;

function TdmPgSwap.ProfileInsert(aProfile: Janua.Core.Swap.TJanuaSwapProfile): boolean;
begin
  try
    if (self.qrySwapProfile.RecordCount = 0) then
    begin
      aProfile.SaveToDataset(qrySwapProfile);
      Result := true;
    end
    else
    begin
      Result := False;
      self.FLastErrorMessage := 'TdmPgSwap.ProfileInsert: ' + 'User already inserted';
    end;
  except
    on e: exception do
    begin
      self.FLastErrorMessage := 'TdmPgSwap.ProfileInsert id= ' + self.UserID.ToString + e.ToString;
      Result := False;
    end;

  end;

end;

function TdmPgSwap.ProfileUpdate(aProfile: Janua.Core.Swap.TJanuaSwapProfile): boolean;
begin
  Result := False;

  if not self.SwapperProfile(aProfile.UserProfile.User.id) then
  begin
    Result := self.ProfileInsert(aProfile)
  end
  else
  begin
    aProfile.SaveToDataset(self.qrySwapProfile);
    Result := True;
  end;
end;

procedure TdmPgSwap.qryDiscoverItemsBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  self.qryDiscoverItems.ParamByName('user_id').AsInteger := self.UserID;
end;

procedure TdmPgSwap.qryEditItemBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  self.qryEditItem.ParamByName('session_user_id').AsInteger := self.UserID;
end;

procedure TdmPgSwap.qryEventAfterClose(DataSet: TDataSet);
begin
  inherited;
  self.qryEventUsers.Close;
end;

procedure TdmPgSwap.qryEventAfterOpen(DataSet: TDataSet);
var
  test: integer;
begin
  inherited;
  self.qryEventUsers.Close;
  self.qryEventUsers.ParamByName('event_id').AsInteger := self.qryEventid.AsInteger;
  self.ServerFunctions.OpenDataset(qryEventUsers);
  test := self.qryEventUsers.RecordCount;
end;

procedure TdmPgSwap.qryEventBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  self.qryEvent.ParamByName('user_id').AsInteger := self.UserID;
end;

procedure TdmPgSwap.qryEventUsersBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  self.qryEventUsers.ParamByName('session_user_id').AsInteger := self.UserID;
end;

procedure TdmPgSwap.qryUserItemsBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  self.qryUserItems.ParamByName('session_user_id').AsInteger := self.UserID;
end;

procedure TdmPgSwap.qryUserLikesBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  self.qryUserLikes.ParamByName('session_user_id').AsInteger := self.UserID;
end;

procedure TdmPgSwap.qryWatchItemAfterOpen(DataSet: TDataSet);
begin
  inherited;
  self.qryWatchItemImages.ParamByName('item_id').AsLargeInt := self.qryWatchItemid.AsLargeInt;
end;

procedure TdmPgSwap.qryWatchItemAfterScroll(DataSet: TDataSet);
begin
  inherited;
  self.qryWatchItemImages.ParamByName('item_id').AsLargeInt := self.qryWatchItemid.AsLargeInt;
end;

procedure TdmPgSwap.qryWatchItemBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  self.qryWatchItem.ParamByName('session_user_id').AsInteger := self.UserID;
end;

function TdmPgSwap.Radar(const aRange: integer): integer;
begin
  try
    self.qryRadar.Close;
    self.qryRadar.ParamByName('session_user_id').AsInteger := self.UserID;
    self.qryRadar.ParamByName('distance').AsInteger := aRange;
    self.ServerFunctions.OpenDataset(qryRadar);

    self.qrySmallProfile.Close;
    self.qrySmallProfile.ParamByName('session_user_id').AsInteger := self.UserID;
    self.qrySmallProfile.ParamByName('user_id').AsInteger := self.UserID;
    self.ServerFunctions.OpenDataset(qrySmallProfile);

    Result := self.qryRadar.RecordCount;
  except
    on e: exception do
    begin
      Result := -1;
      self.WriteError('TdmPgSwap.Radar ', e);
      self.LastErrorMessage := 'TdmPgSwap.Radar ' + e.Message;
    end;

  end;
end;

procedure TdmPgSwap.SetItemID(const Value: int64);
begin
  FItemID := Value;
end;

procedure TdmPgSwap.SetItemsList(const Value: TJanuaSwapItems);
begin
  FItemsList := Value;
end;

procedure TdmPgSwap.SetSelectedItem(const Value: TJanuaSwapItem);
begin
  FSelectedItem := Value;
end;

function TdmPgSwap.SwapAgree(vUserID: integer; vSwapID: int64; vAction: TJanuaSwapActionType): boolean;
begin
  Result := true;
  try
    // SELECT * FROM swap.swap_action(:p_user_id, :p_swap_id, :p_action_id)
    if vUserID = 0 then
      self.spSwapAction.ParamByName('p_user_id').AsInteger := self.UserID
    else
      self.spSwapAction.ParamByName('p_user_id').AsInteger := vUserID;

    self.spSwapAction.ParamByName('p_swap_id').AsLargeInt := vSwapID;

    self.spSwapAction.ParamByName('p_action_id').AsInteger := vAction.AsInteger;

    self.spSwapAction.Execute;

    Result := self.spSwapAction.ParamByName('Result').AsBoolean;

    if not Result then
      self.LastErrorMessage := spSwapAction.ParamByName('p_error').AsWideString;

    if not Result then
      self.LastErrorMessage := 'TdmPgSwap.SwapAgree Error = ' + self.spSwapAction.ParamByName('p_error')
        .AsWideString;

  except
    on e: exception do
    begin
      Result := False;
      self.FLastErrorMessage := 'TdmPgSwap.SwapAgree, user_id=' + self.UserID.ToString() + ', swap_id = ' +
        vSwapID.ToString + ',action = ' + vAction.AsString + sLineBreak + e.Message
    end;

  end;
end;

function TdmPgSwap.SwapList(aUserID: integer): boolean;
begin
  Result := true;
  try
    // select * from swap.swaps_view where user_id = :user_id
    if aUserID = 0 then
      self.qryUserSwaps.ParamByName('user_id').AsInteger := self.UserID
    else
      self.qryUserSwaps.ParamByName('user_id').AsInteger := aUserID;
    ServerFunctions.OpenDataset(qryUserSwaps);

    self.OpenSwapperProfile(aUserID);
  except
    on e: exception do
    begin
      Result := False;
      self.FLastErrorMessage := 'TdmPgSwap.SwapLis, user_id=' + self.UserID.ToString() + sLineBreak +
        e.Message
    end;

  end;
end;

function TdmPgSwap.SwapperProfile(aUserID: integer): boolean;
var
  aProfile: TJanuaSwapProfile;
  aID: integer;
begin
  try
    // this functions searches the Swapper Profile with an user ID
    if aUserID > 0 then
      Result := self.OpenProfile(aUserID)
    else
      Result := self.OpenProfile(self.UserID);

    aProfile.UserProfile := self.FUserProfile;

    if aUserID = 0 then
      aID := FUserProfile.User.id
    else
      aID := aUserID;

    qrySwapProfile.Close;
    if (not self.qrySwapProfile.Active) or (self.qrySwapProfile.ParamByName('db_user_id').AsInteger <> aID)
    then
    begin
      self.qrySwapProfile.Close;
      self.qrySwapProfile.ParamByName('db_user_id').AsInteger := aID;
      self.qrySwapProfile.ParamByName('session_user_id').AsInteger := self.UserID;
      self.ServerFunctions.OpenDataset(qrySwapProfile);
    end;

    if self.qrySwapProfile.Active and (self.qrySwapProfile.RecordCount > 0) then
    begin
      Result := true;
    end
    else
    begin
      Result := self.ProfileInsert(aProfile);
    end;
  except
    on e: exception do
    begin
      Result := False;
      self.WriteError('TdmPgSwap.SwapperProfile', e);
      self.FLastErrorMessage := 'TdmPgSwap.SwapperProfile=' + e.ToString;
    end;
  end;

end;

function TdmPgSwap.SwapStart(vItemID, vOtherItemID: int64; vState: boolean): boolean;
begin
  // Swap Start Function. Just calls the internal DB Swap Start function ..........................
  // SELECT swap.swap_start(:p_user_id, :p_user_item_id, :p_other_item_id, :p_onoff)
  try
    self.spSwapStart.ParamByName('p_user_id').AsInteger := self.UserID;
    self.spSwapStart.ParamByName('p_user_item_id').AsLargeInt := vItemID;
    self.spSwapStart.ParamByName('p_other_item_id').AsLargeInt := vOtherItemID;
    self.spSwapStart.ParamByName('p_onoff').AsBoolean := vState;
    spSwapStart.Execute;
    Result := spSwapStart.ParamByName('Result').AsBoolean;
  except
    on e: exception do
    begin
      Result := False;
      self.WriteError('TdmPgSwap.SwapStart p_user_id=' + UserID.ToString + ', p_user_item_id=' +
        vItemID.ToString + '. ', e);
    end;

  end;

end;

function TdmPgSwap.UserFollow(aUserID: integer; aFollow: boolean = true): boolean;
begin
  // Funzione
  // SELECT swap.user_add_followers(:p_user_id, :p_follower_id)
  try
    self.spUserFollow.ParamByName('p_user_id').AsInteger := aUserID;
    self.spUserFollow.ParamByName('p_follower_id').AsInteger := self.UserID;
    self.spUserFollow.ParamByName('p_status').AsBoolean := aFollow;
    spUserFollow.Execute;
    Result := spUserFollow.ParamByName('Result').AsBoolean;
  except
    on e: exception do
    begin
      Result := False;
      self.WriteError('TdmPgSwap.UserFollow user_id=' + aUserID.ToString + ', p_follower_id=' +
        UserID.ToString + '. ', e);
    end;

  end;
end;

function TdmPgSwap.UserFollowers(aUserID: integer): integer;
begin
  try
    self.qryUserFollowers.Close;
    if aUserID <> 0 then
      self.qryUserFollowers.ParamByName('user_id').AsInteger := aUserID
    else
      self.qryUserFollowers.ParamByName('user_id').AsInteger := self.UserID;

    self.qryUserFollowers.ParamByName('session_user_id').AsInteger := self.UserID;

    self.ServerFunctions.OpenDataset(qryUserFollowers);

    OpenSwapperProfile(0);

    Result := self.qryUserFollowers.RecordCount;
    if Result = 0 then
      self.FLastErrorMessage := 'No Followers Found';
  except
    on e: exception do
    begin
      Result := -1;
      self.WriteError('TdmPgSwap.UserFollowers user_id=' + aUserID.ToString + ', sesssion_user_id=' +
        UserID.ToString, e, 'TdmPgSwap.UserFollowers');
    end;

  end;
end;

function TdmPgSwap.UserFollowings(aUserID: integer): integer;
begin
  self.qryUserFollowings.Close;

  if aUserID <> 0 then
    self.qryUserFollowings.ParamByName('user_id').AsInteger := aUserID
  else
    self.qryUserFollowings.ParamByName('user_id').AsInteger := self.UserID;

  self.qryUserFollowings.ParamByName('session_user_id').AsInteger := self.UserID;

  self.ServerFunctions.OpenDataset(qryUserFollowings);

  Result := self.qryUserFollowings.RecordCount;

  if Result = 0 then
    self.FLastErrorMessage := 'No Followers Found';
end;

function TdmPgSwap.UserLikes(aUserID: integer): integer;
begin
  try
    self.qryUserLikes.Close;
    if aUserID <> 0 then
      self.qryUserLikes.ParamByName('user_id').AsInteger := aUserID
    else
      self.qryUserLikes.ParamByName('user_id').AsInteger := self.UserID;
    self.ServerFunctions.OpenDataset(qryUserLikes);

    self.OpenProfile(aUserID);

    Result := self.qryUserLikes.RecordCount;
  except
    on e: exception do
    begin
      Result := -1;
      self.FLastErrorMessage := 'TdmPgSwap.UserLikes, user_id=' + self.UserID.ToString() + sLineBreak +
        e.Message
    end;

  end;
end;

function TdmPgSwap.UserSwap(aSwapID: int64; aUserID: integer): boolean;
begin
  Result := true;
  try
    // select * from swap.swaps_view where user_id = :user_id and swap_id = :swap_id
    if aUserID = 0 then
      self.qrySwap.ParamByName('user_id').AsInteger := self.UserID
    else
      self.qrySwap.ParamByName('user_id').AsInteger := aUserID;

    self.qrySwap.ParamByName('swap_id').AsLargeInt := aSwapID;

    self.ServerFunctions.OpenDataset(qrySwap)
  except
    on e: exception do
    begin
      Result := False;
      self.FLastErrorMessage := 'TdmPgSwap.SwapLis, user_id=' + self.UserID.ToString() + sLineBreak +
        e.Message
    end;

  end;
end;

function TdmPgSwap.ItemImageDelete(aItemID: int64): boolean;
begin
  self.qryImage.ParamByName('image_id').AsLargeInt := aItemID;
  self.ServerFunctions.OpenDataset(qryImage);
  if self.qryImage.RecordCount = 0 then
  begin
    Result := False;
    self.FLastErrorMessage := 'Image not found';
  end
  else if self.qryImageowner_id.AsInteger <> self.UserID then
  begin
    Result := False;
    self.FLastErrorMessage := 'User not allowed to delete image'
  end
  else
  begin
    self.qryImage.Delete;
    self.qryImage.Close;
    Result := true;
  end;
end;

end.
