unit Janua.Core.Swap;

interface

{$I JANUACORE.INC}

uses

{$IFDEF fpc}
  LResources, Classes, SysUtils, IOUtils, DB
{$ELSE}
    System.SysUtils, System.IOUtils, Data.DB, Web.HTTPApp,
  System.Variants, System.Classes, System.JSON, FireDAC.Comp.Client,
{$ENDIF}
  // ******************* Janua Core Functions *****************************
  Janua.Core.Entities, Janua.Core.Classes, Janua.Core.Http, Janua.Core.Users,
  Janua.Core.Servers,
  Janua.Core.System;

{ 1;"startfollow"
  2;"likes"
  3;"swap"
  4;"swapagree"
  5;"message"
  6;"swapclosed"
  7;"swaprevoked"
  8;"newevent"
  9;"eventreminder"
  10;"itemremoved"
  11;"itemadded"
  12;"eventparticipate"
  13; "eventcancelleded"
  14; "eventdelayed" }

type
  TJanuaSwapNotificationTypeList = (jsnSwap, jsnLike, jsnSwapAgreement, jsnMessage, jsnFollowing, jsnSwapClosed,
    jsnSwapRevoked, jsnNewEvent, jsnEventReminder, jsnItemRemoved, jsnItemAdded, jsnEventParticipate, jsnEventCancelled,
    jsnEventDelayed);

type
  TJanuaSwapStatusList = (jssStarted, jssDeleted, jssClosed, jssAgreed);

  /// This is the List of the swap possible Actions these actions are enabled only for
  /// active Swaps. They are
  /// Delete to cancel a swap
  /// Undo to cancel the last action
  /// Close to end the swap (can be issued only by who started the proposal)
  /// Agree to agree another's user proposal
type
  TJanuaSwapActionList = (jsaNotSet, jsaDelete, jsaUndo, jsaClose, jsaAgree);

  // action = (undo, agree, close, delete)
  // action =(0, 1, 9, -1)

const
  JanuaSwapActionString: array [jsaNotSet .. jsaAgree] of string = ('', 'delete', 'undo', 'close', 'agree');

const
  JanuaSwapActionInteger: array [jsaNotSet .. jsaAgree] of integer = (-2, -1, 0, 9, 1);

type
  TJanuaSwapEventOptions = (jseParticipantList, jseOwnerInfo);

type
  TJanuaSwapNotificationsType = (jsnNotification, jsnFeed);

type
  TJanuaSwapUserTypes = (jutFollowers, jutFollowings, jutUsers, jutRadar);

type
  TJanuaSwapActionType = Record
    StatusType: TJanuaSwapActionList;
  public
    function AsString: string;
    function AsInteger: Int64;
    procedure SetFromString(aString: string);
  End;

type
  TJanuaSwapStatusType = Record
    StatusType: TJanuaSwapStatusList;
  public
    function AsString: string;
    function AsInteger: Int64;
    procedure SetFromString(aString: string);
    procedure LoadFromDataset(dsSwap: TDataset);
  End;

type
  TJanuaSwapNotificationType = Record
    NotificationType: TJanuaSwapNotificationTypeList;
  public
    function AsString: string;
    procedure SetFromString(aString: string);
    procedure LoadFromDataset(dsNotification: TDataset);
  End;

type
  TJanuaDiscoverHeader = record
    // count of total Swaps ......................................
    swaps: integer;
    swapsactive: integer;

    Followers: integer;
    Following: integer;

    likes: integer;

    NotificationCount: integer;
    NotificationUnread: integer;

    FeedsCount: integer;
    FeedsUnread: integer;

  public
    procedure LoadFromDataset(dsProfile: TDataset);
    function AsJsonObject: TJSONObject;

  end;

type
  TJanuaSwapSettings = record
    followingyou: boolean;
    likewantobject: boolean;
    eventupdates: boolean;
    followaddeditem: boolean;
    privateaccount: boolean;
    subcripionvalid: TDateTime;
    privacypolici: boolean;
    privacypolicytext: string;
    termsofservice: boolean;
    termsofservicetext: string;
    abouttext: string;
  public
    function AsSJSONObJect: TJSONObject;
    function LoadFromHttpParam(aRequest: TWebRequest): boolean;
    procedure LoadFromDataset(dsImages: TDataset);
    function SaveToDataset(dsImages: TDataset): boolean;
  end;

type
  TJanuaSwapImage = record
    id: Int64;
    item_id: Int64;
    title: string;
    description: string;
    image_url: string;
    insert_date: TDateTime;
  public
    function AsSJSONObJect: TJSONObject;
    procedure LoadFromDataset(dsImages: TDataset);
  end;

type
  TJanuaSwapImages = record
    count: integer;
    Images: array of TJanuaSwapImage;
  public
    procedure Clear;
    function AsSJSONObJect: TJSONObject;
    procedure LoadFromDataset(dsImages: TDataset);
    procedure ArrayLength(aLength: integer);
  end;

type
  TJanuaSwapItem = record
    id: Int64;
    owner_id: integer;
    title: string;
    description: string;
    image_url: string;
    insert_date: TDateTime;
    available: boolean;
    swapped: boolean;
    likes: integer;
    Images: array of TJanuaSwapImage;
    OwnerName: string;
    OwnerAvatar: string;
    UserLikes: boolean;
  public
    function AsSJSONObJect: TJSONObject;
    procedure LoadFromDataset(dsItems: TDataset); overload;
    procedure LoadFromDataset(dsItems, dsImages: TDataset); overload;
    procedure Clear;
  end;

type
  TJanuaSwapItems = record
    count: integer;
    Header: TJanuaDiscoverHeader;
    Items: array of TJanuaSwapItem;

  public
    function AsSJSONObJect: TJSONObject;
    procedure LoadFromDataset(dsItems: TDataset); overload;
    procedure LoadFromDataset(dsItems, dsProfile: TDataset); overload;
    procedure LoadFromDataset(dsItems, dsProfile, dsImages: TDataset); overload;
    procedure Clear;
  end;

type
  TJanuaFollower = record
    id: Int64;
    FirstName: string;
    LastName: string;
    Town: string;
    CountryCode: string;
    Latitude: Double;
    Longitude: Double;
    IsFollowed: boolean;
    IsFollowing: boolean;
    AvatarImage: string;
    Distance: integer;
    Range: integer;
  public
    function AsSJSONObJect: TJSONObject;
    procedure LoadFromDataset(dsFollowers: TDataset);
  end;

type
  TJanuaSwapRadar = record
    count: Int64;
    ranges: integer;
    User: TJanuaFollower;
    Followers: array of TJanuaFollower;
  public
    function AsSJSONObJect: TJSONObject;
    procedure LoadFromDataset(dsUser, dsFollowers: TDataset);
  end;

type
  TJanuaFollowers = record
    count: Int64;
    User: TJanuaFollower;
    Followers: array of TJanuaFollower;
    RecordType: TJanuaSwapUserTypes;
  public
    Constructor Create(aRecordType: TJanuaSwapUserTypes);
    function AsSJSONObJect: TJSONObject;
    procedure LoadFromDataset(dsFollowers: TDataset); overload;
    procedure LoadFromDataset(dsUser, dsFollowers: TDataset); overload;
  end;

type
  TJanuaSwapItemLikes = record
    Item: TJanuaSwapItem;
    likes: TJanuaFollowers;
  public
    procedure LoadFromDataset(dsFollowers, dsItem: TDataset);
    function AsSJSONObJect: TJSONObject;
  end;

  // the idea behind the Swap Form is to provide the rigth informations to make a Swap ...............
type
  TJanuaSwapForm = record
    UserItem: TJanuaSwapItem;
    OtherUser: TJanuaFollower;
    OtherItems: TJanuaSwapItems;
  public
    function AsSJSONObJect: TJSONObject;
    procedure LoadFromDataset(dsItem, dsSmallUser, dsItems: TDataset);
  end;

type
  TJanuaSwapMessage = record
    id: Int64;
    swap_id: Int64;
    Read: boolean;
    Created: TDateTime;
    Text: string;
    ImageURL: string;
    FromUserID: integer;
    ToUserID: integer;
    LastErrorMessage: string;
    FromUserImageURL: string;
  public
    function AsSJSONObJect: TJSONObject;
    function AsSJSONString: TJSONObject;
    function LoadFromHttpParam(aRequest: TWebRequest): boolean;
    procedure LoadFromDataset(dsMessages: TDataset);
  end;

type
  TJanuaSwapMessages = record
    count: integer;
    unread: integer;
    Messages: array of TJanuaSwapMessage;
  public
    function AsSJSONObJect: TJSONObject;
    procedure LoadFromDataset(dsMessages: TDataset);
  end;

type
  TJanuaSwap = record
    swap_id: Int64;
    UserID: integer;
    FromUserID: integer;
    fromItemID: Int64;
    fromItemImage: string;
    toItemID: Int64;
    toItemImage: string;
    ToUserID: integer;
    toUserName: string;
    completed: boolean;
    datestarted: TDateTime;
    dateended: TDateTime;
    canagree: boolean;
    Status: TJanuaSwapStatusType;
    toUserImage: string;
  public
    function AsSJSONObJect: TJSONObject;
    procedure LoadFromDataset(dsSwaps: TDataset);
  end;

type
  TJanuaSwaps = record
    count: integer;
    Header: TJanuaDiscoverHeader;
    swaps: array of TJanuaSwap;
  public
    function AsSJSONObJect: TJSONObject;
    procedure LoadFromDataset(dsSwaps: TDataset); overload;
    procedure LoadFromDataset(dsSwaps, dsProfile: TDataset); overload;
    procedure Clear;
  end;

type
  // This profile Extends the System Profile with the fields for Swap Functions
  TJanuaSwapProfile = record
    UserProfile: TJanuaRecordUserProfile;
    Header: TJanuaDiscoverHeader;
    Items: TJanuaSwapItems;
    FollowersCount: integer;
    FollowingCount: integer;
    SwapsCount: integer;
    NotificationsCount: smallint;
    UnreadNotifications: smallint;
    likes: TJanuaSwapItems;
    Followers: TJanuaFollowers;
    IsFollowed: boolean;
    IsFollowing: boolean;
  public
    function AsSJSONObJect: TJSONObject;
    procedure LoadFromDataset(dsSwapProfile, dsItems: TDataset); overload;
    procedure LoadFromDataset(dsSwapProfile, dsItems, dsLikes: TDataset); overload;
    procedure LoadFromDataset(dsSwapProfile, dsItems, dsLikes, dsFollowers: TDataset); overload;
    procedure SaveToDataset(dsSwapProfile: TDataset);
  end;

type
  TJanuaSwapEvent = record
    id: integer;
    Owner: TJanuaFollower;
    OwnerID: integer;
    title: string;
    description: string;
    ImageURL: string;
    DateTime: TDateTime;
    Hour: smallint;
    Mins: smallint;
    Address: string;
    currency_code: string;
    price: real;
    lat: Double;
    lng: Double;
    ParticipantsCount: integer;
    Participants: TJanuaFollowers;
    LastErrorMessage: string;
    participates: boolean;
    // Options: set of TJanuaSwapEventOptions;
  public
    constructor Create(aCurrency: string);
    function AsSJSONObJect: TJSONObject;
    function AsJSONString: TJSONObject;
    procedure LoadFromDataset(dsSwapEvent: TDataset); overload;
    procedure LoadFromDataset(dsSwapEvent, dsOwner: TDataset); overload;
    procedure LoadFromDataset(dsSwapEvent, dsOwner, dsParticipants: TDataset); overload;
    procedure SaveToDataset(dsSwapEvent: TDataset);
    function LoadFromHttpParams(aRequest: TWebRequest): boolean;
  end;

type
  TJanuaSwapEvents = record
    Header: TJanuaDiscoverHeader;
    Events: array of TJanuaSwapEvent;
    count: integer;
    // Options: set of TJanuaSwapEventOptions;
  public
    function AsSJSONObJect: TJSONObject;
    procedure LoadFromDataset(dsSwapEvent: TDataset); overload;
    procedure LoadFromDataset(dsSwapEvent, dsProfile: TDataset); overload;
  end;

Type
  TJanuaSwapNotification = record
    id: Int64;
    UserID: integer;
    Date: TDateTime;
    NotificationType: TJanuaSwapNotificationType;
    IsRead: boolean;

    title: string;
    // the short description of notification
    UserName: string;
    // the other user full name (first + family)
    OtherUserID: integer;
    // other user ID
    OtherUserImageUrl: string;
    // Avatar
    IsFollowing: boolean;
    IsFollowed: boolean;

    SwapID: integer;
    SwapItemID: Int64;
    SwapItemImageUrl: string;
    UserItemID: Int64;
    UserItemImageUrl: string;
    UserItemDescription: string;

    // events management
    Event: TJanuaSwapEvent;

    EventID: integer;
    EventName: string;
    EventDate: TDateTime;
    EventAddress: string;
    EventHours: integer;
    EventMins: integer;
    EventUrl: string;
    EventPrice: Double;

  public
    procedure LoadFromDataset(dsNotifications: TDataset);
    function AsJsonObject: TJSONObject;
  end;

type
  TJanuaSwapNotifications = record
    Header: TJanuaDiscoverHeader;
    total: integer;
    total_unread: integer;
    pages: integer;
    count: integer;
    unread: integer;
    ntype: TJanuaSwapNotificationsType;
    Notifications: array of TJanuaSwapNotification;
  public
    constructor Create(aNtype: TJanuaSwapNotificationsType);
    procedure LoadFromDataset(dsNotifications: TDataset); overload;
    procedure LoadFromDataset(dsNotifications, dsTotals: TDataset); overload;
    function AsJsonObject: TJSONObject;
  end;

type
  TJanuaSwapDiscover = record
    Header: TJanuaDiscoverHeader;
    DiscoveredItems: TJanuaSwapItems;
    // LikedItems: TJanuaSwapItems;
    // UserProfile: TJanuaSwapProfile;
    // Notifications: TJanuaSwapNotifications;
    // Feeds: TJanuaSwapNotifications;
  public
    function AsSJSONObJect: TJSONObject;
    procedure LoadFromDataset(dsDiscover, dsItems: TDataset);
  end;

type
  TJanuaCustomServerSwap = class(TJanuaCustomServer)
  private
    FSelectedItems: TJanuaSwapItems;
    FSelectedItem: TJanuaSwapItem;
    FdsItem: {$IFDEF delphixe}TFDMemTable{$ELSE}TVirtualTable{$ENDIF};
    FSelectedImages: TJanuaSwapImages;
    FJanuaServerSystem: TJanuaCustomServerSystem;
    FItemsDiscovered: TJanuaSwapItems;
    FUserSwaps: TJanuaSwaps;
    FItemsLikesList: TJanuaSwapItemLikes;
    FdsItemsLikes: {$IFDEF delphixe}TFDMemTable{$ELSE}TVirtualTable{$ENDIF};
    FdsSelectedItem: {$IFDEF delphixe}TFDMemTable{$ELSE}TVirtualTable{$ENDIF};
    FdsUserLikes: {$IFDEF delphixe}TFDMemTable{$ELSE}TVirtualTable{$ENDIF};
    FUserItemsLikes: TJanuaSwapItems;
    FSelectedSwap: TJanuaSwap;
    FEventsList: TJanuaSwapEvents;
    FMessages: TJanuaSwapMessages;
    FLastMessageID: Int64;
    FLimit: integer;
    FOffset: integer;
    FSettings: TJanuaSwapSettings;
    FRadarUsers: TJanuaFollowers;

    procedure SetJanuaSwapProfile(const Value: TJanuaSwapProfile);
    procedure SetActualDiscover(const Value: TJanuaSwapDiscover);
    procedure SetSelectedItem(const Value: TJanuaSwapItem);
    procedure SetSelectedItems(const Value: TJanuaSwapItems);
    procedure SetdsItem(const Value: {$IFDEF delphixe}TFDMemTable{$ELSE}TVirtualTable{$ENDIF} );
    procedure SetSelectedImages(const Value: TJanuaSwapImages);
    procedure SetJanuaServerSystem(const Value: TJanuaCustomServerSystem);
    procedure SetSelectedFollowers(const Value: TJanuaFollowers);
    procedure SetSelectedFollowings(const Value: TJanuaFollowers);
    procedure SetActualNotifications(const Value: TJanuaSwapNotifications);
    procedure SetItemsDiscovered(const Value: TJanuaSwapItems);
    procedure SetSwapForm(const Value: TJanuaSwapForm);
    procedure SetUserSwaps(const Value: TJanuaSwaps);
    procedure SetItemsLikesList(const Value: TJanuaSwapItemLikes);
    procedure SetdsItemsLikes(const Value: {$IFDEF delphixe}TFDMemTable{$ELSE}TVirtualTable{$ENDIF} );
    procedure SetdsSelectedItem(const Value: {$IFDEF delphixe}TFDMemTable{$ELSE}TVirtualTable{$ENDIF} );
    procedure SetdsUserLikes(const Value: {$IFDEF delphixe}TFDMemTable{$ELSE}TVirtualTable{$ENDIF} );
    procedure SetUserItemsLikes(const Value: TJanuaSwapItems);
    procedure SetSelectedSwap(const Value: TJanuaSwap);
    procedure SetSelectedEvent(const Value: TJanuaSwapEvent);
    procedure SetEventsList(const Value: TJanuaSwapEvents);
    procedure SetMessages(const Value: TJanuaSwapMessages);
    procedure SetLastMessage(const Value: TJanuaSwapMessage);
    procedure SetLastMessageID(const Value: Int64);
    procedure SetLimit(const Value: integer);
    procedure SetOffset(const Value: integer);
    procedure SetActualFeeds(const Value: TJanuaSwapNotifications);
    procedure SetSettings(const Value: TJanuaSwapSettings);
    procedure SetRadarUsers(const Value: TJanuaFollowers);
  protected
    FActualFeeds: TJanuaSwapNotifications;
    FSwapForm: TJanuaSwapForm;
    FActualDiscover: TJanuaSwapDiscover;
    FActualNotifications: TJanuaSwapNotifications;
    FSelectedFollowings: TJanuaFollowers;
    FSelectedFollowers: TJanuaFollowers;
    FJanuaSwapProfile: TJanuaSwapProfile;
    FdsUserItems: {$IFDEF delphixe}TFDMemTable{$ELSE}TVirtualTable{$ENDIF};
    FdsUserItemsImages: {$IFDEF delphixe}TFDMemTable{$ELSE}TVirtualTable{$ENDIF};
    FdsDiscoverItems: {$IFDEF delphixe}TFDMemTable{$ELSE}TVirtualTable{$ENDIF};
    FdsDiscover: {$IFDEF delphixe}TFDMemTable{$ELSE}TVirtualTable{$ENDIF};
    FdsSwapProfile: {$IFDEF delphixe}TFDMemTable{$ELSE}TVirtualTable{$ENDIF};
    FSelectedEvent: TJanuaSwapEvent;
    FLastSwapMessage: TJanuaSwapMessage;

    // ************************************ settings *********************************************
    function InternalGetSettings: boolean; virtual; abstract;
    function InternalUpdateSettings: boolean; virtual; abstract;
    // ************************************ discover *********************************************
    function InternalDiscover: boolean; virtual; abstract;
    function InternalLikes(vItemID: Int64): boolean; virtual; abstract;
    function InternalDiscovered(vItemID: Int64): boolean; virtual; abstract;
    function InternalItemsDiscover: boolean; virtual; abstract;
    function InternalNotifications: boolean; virtual; abstract;
    function InternalNotificationRead(aNotificationID: Int64): boolean; virtual; abstract;
    function InernalFeeds: boolean; virtual; abstract;
    // **************************** user profile Functions ***************************************
    // Another Swapper Profile
    function InternalSwapperProfile(aUserID: integer): boolean; virtual; abstract;
    // this fills the LastSwapperProfile property
    // This user profile with swapush procedures
    function InternalUserProfile: boolean; virtual; abstract;
    // this fills the LastSwapperProfile property
    function InternalUpdateUserProfile: boolean; virtual; abstract;
    function InternalUserFollow(aUserID: integer; aFollow: boolean = True): boolean; virtual; abstract;
    function InternalUserFollowers(aUserID: integer): boolean; virtual; abstract;
    function InternalUserFollowings(aUserID: integer): boolean; virtual; abstract;
    function InternalUserLikes(aUserID: integer): boolean; virtual; abstract;

    // **************************** Internal Event Functions *************************************
    // Adds an user to the Swap Event
    function InternalEventAddUser(aEventID, aUserID: integer): boolean; virtual; abstract;
    function InternalEventDelUser(aEventID, aUserID: integer): boolean; virtual; abstract;
    function InternalEventInsert(aEvent: TJanuaSwapEvent): integer; virtual; abstract;
    function InternalEventDelete(aEventID: integer): boolean; virtual; abstract;
    function InternalEventUsersList(aEventID: integer): boolean; virtual; abstract;
    function InternalEventsList(aUserID: Int64): boolean; virtual; abstract;
    function InternalEventWatch(aEventID: integer): boolean; virtual; abstract;
    function InternalEventUpdate(aEvent: TJanuaSwapEvent): boolean; virtual; abstract;

    // ***************************** Radar *******************************************************
    function InternalRadar(const aRange: integer): integer; virtual; abstract;

    // **************************** Swap Procedures          *************************************
    function InternalSwapStart(vItemID, vOtherItemID: Int64; vState: boolean = True): boolean; virtual; abstract;
    function InternalSwapWatch(vItemID: Int64; vUserID: integer): boolean; virtual; abstract;
    function InternalUserSwapsList(aUserID: integer): boolean; virtual; abstract;
    function InternalSwapAgree(vUserID: integer; vSwapID: Int64; vAction: TJanuaSwapActionType): boolean;
      virtual; abstract;

    // ***************************** Swap Messages ***********************************************

    function InternalMessageInsert(vMessage: TJanuaSwapMessage): Int64; virtual; abstract;
    function InternalMessageDelete(aSwapID, aMessageID: Int64): boolean; virtual; abstract;
    function InternalMessagesList(aSwapID, aLastID: Int64): Int64; virtual; abstract;
    function InternalMessageWatch(aSwapID, aMessageID: Int64): integer; virtual; abstract;

    // ***************************** Items Management ********************************************
    // this function will add an Item and Return its ID as server Result;
    function InternalAddItem(aItem: TJanuaSwapItem): Int64; virtual; abstract;
    function InternalItemInsert(aItem: TJanuaSwapItem): Int64; virtual; abstract;
    function InternalItemSeen(aItemID: Int64): boolean; virtual; abstract;
    function InternalItemDelete(aItemID: Int64): boolean; virtual; abstract;
    function InternalItemsList(aUserID: integer): integer; virtual; abstract;
    function InternalItemWatch(aItemID: Int64): boolean; virtual; abstract;
    function InternalItemUpdate(aItem: TJanuaSwapItem): boolean; virtual; abstract;
    function InternalItemLike(aItemID: Int64; aState: boolean): boolean; virtual; abstract;
    function InternalItemDisLike(aItemID: Int64; aState: boolean): boolean; virtual; abstract;
    function InternalItemImageInsert(aImage: TJanuaSwapImage): Int64; virtual; abstract;
    function InternalItemImageList(aItemID: Int64): integer; virtual; abstract;
    function InternalItemImageDelete(aItemID: Int64): boolean; virtual; abstract;
    function InternalItemLikesList(aItemID: Int64): boolean; virtual; abstract;
    function InternalUserSwap(aSwapID: Int64; aUserID: integer): boolean; virtual; abstract;

  public

    // constructor

    constructor Create(AOwner: TComponent); override;

    // public functions for the Web Service

    // ************************************ settings *********************************************
    function GetSettings: boolean;
    function GetSettingsJson: TJSONObject;
    function UpdateSettings: boolean;
    function UpdateSettingsJson: TJSONObject;

    // ************************************ discover *********************************************
    function Discover: boolean;
    function DiscoverJson: TJSONObject;
    function likes(vItemID: Int64): boolean;
    function Discovered(vItemID: Int64): boolean;
    function DiscoveredJson(vItemID: Int64): TJSONObject;
    function Notifications: boolean;
    function NotificationsJson: TJSONObject;
    function NotificationRead(aNotificationID: Int64): boolean;
    function NotificationReadJson(aNotificationID: Int64): TJSONObject;
    function Feeds: boolean;
    function FeedsJson: TJSONObject;
    function FeedRead(aFeedID: Int64): boolean;
    function FeedReadJson(aFeedID: Int64): TJSONObject;
    function ItemsDiscover: boolean;
    function ItemsDiscoverJSON: TJSONObject;

    // ************************************ Swaps *********************************************
    function Radar(const aRange: integer): integer;
    function RadarJson(const aRadar: integer): TJSONObject;

    // ************************************ Swaps *********************************************
    function SwapStart(vItemID, vOtherItemID: Int64; vState: boolean = True): boolean;
    function SwapStartJson(vItemID, vOtherItemID: Int64; vState: boolean = True): TJSONObject;
    function SwapAgree(vUserID: integer; vSwapID: Int64; vAction: TJanuaSwapActionType): boolean;
    function SwapAgreeJson(vUserID: integer; vSwapID: Int64; vAction: TJanuaSwapActionType): TJSONObject;
    function SwapWatchJson(vItemID: Int64; vUserID: integer): TJSONObject;
    function SwapWatch(vItemID: Int64; vUserID: integer): boolean;
    function UserSwapsList(aUserID: integer): boolean;
    function UserSwapsListJson(aUserID: integer): TJSONObject;
    function UserSwap(aSwapID: Int64; aUserID: integer): boolean;
    function UserSwapJson(aSwapID: Int64; aUserID: integer): TJSONObject;

    // ********************************** Swap Messages ******************************************

    // Swap Messages Functions
    function MessageInsert(vMessage: TJanuaSwapMessage): Int64;
    function MessageDelete(aSwapID, aMessageID: Int64): boolean;
    function MessagesList(aSwapID, aLastID: Int64): Int64;
    function MessageInsertJson(vMessage: TJanuaSwapMessage): TJSONObject;
    function MessageDeleteJson(aSwapID, aMessageID: Int64): TJSONObject;
    function MessagesListJson(aSwapID, aLastID: Int64): TJSONObject;

    // **************************** user profile Functions ***************************************
    // Another Swapper Profile
    function SwapperProfile(aUserID: integer): boolean;
    function SwapperProfileJson(aUserID: integer): TJSONObject;
    // This user profile with swapush procedures
    function UserProfile: boolean;
    // Function to Update Swapper Profile
    function UpdateUserProfile: boolean;
    function UpdateUserProfileJson: TJSONObject;

    // likes and Items Functions
    function UserLikesList(aUserID: integer): boolean;
    function UserLikesListJson(aUserID: integer): TJSONObject;

    // Follow Function
    function UserFollow(aUserID: integer; aFollow: boolean = True): boolean;
    function UserFollowJSON(aUserID: integer; aFollow: boolean = True): TJSONObject;
    function UserFollowers(aUserID: integer): boolean;
    function UserFollowersJSON(aUserID: integer): TJSONObject;
    function UserFollowings(aUserID: integer): boolean;
    function UserFollowingsJSON(aUserID: integer): TJSONObject;

    // ************************************ events ***********************************************
    function EventAddUser(aEventID, aUserID: integer): boolean;
    function EventAddUserJson(aEventID, aUserID: integer): TJSONObject;
    function EventDelUser(aEventID, aUserID: integer): boolean;
    function EventDelUserJson(aEventID, aUserID: integer): TJSONObject;
    function EventInsert(aEvent: TJanuaSwapEvent): integer;
    function EventInsertJson(aEvent: TJanuaSwapEvent): TJSONObject;
    function EventDelete(aEventID: integer): boolean;
    function EventDeleteJson(aEventID: integer): TJSONObject;
    function EventUsersList(aEventID: integer): boolean;
    function EventUsersListJson(aEventID: integer): TJSONObject;
    function EventsList(aUserID: Int64): boolean;
    function EventsListJson(aUserID: Int64): TJSONObject;
    function EventWatch(aEventID: integer): boolean;
    function EventWatchJson(aEventID: integer): TJSONObject;
    function EventUpdate(aEvent: TJanuaSwapEvent): boolean;
    function EventUpdateJson(aEvent: TJanuaSwapEvent): TJSONObject;

    // ************************************ items ************************************************
    function ItemInsert(aItem: TJanuaSwapItem): Int64;
    function ItemInsertJson(aItem: TJanuaSwapItem): TJSONObject;
    function ItemUpdate(aItem: TJanuaSwapItem): boolean;
    function ItemUpdateJson(aItem: TJanuaSwapItem): TJSONObject;
    function ItemDelete(aItemID: Int64): boolean;
    function ItemDeleteJson(aItemID: Int64): TJSONObject;
    function ItemSeen(aItemID: Int64): boolean;
    function ItemSeenJson(aItemID: Int64): TJSONObject;
    function ItemsList(aUserID: integer): integer;
    function ItemsListJson(aUserID: integer): TJSONObject;
    function ItemWatch(aItemID: Int64): boolean;
    function ItemWatchJson(aItemID: Int64): TJSONObject;
    function ItemLike(aItemID: Int64; aState: boolean): boolean;
    function ItemLikeJson(aItemID: Int64; aState: boolean): TJSONObject;
    function ItemDisLike(aItemID: Int64; aState: boolean): boolean;
    function ItemDisLikeJson(aItemID: Int64; aState: boolean): TJSONObject;
    function ItemImageInsert(aImage: TJanuaSwapImage): Int64;
    function ItemImageInsertJson(aImage: TJanuaSwapImage): TJSONObject;
    function ItemImageDelete(aImageID: Int64): boolean;
    function ItemImageDeleteJson(aImageD: Int64): TJSONObject;
    function ItemImageList(aItemID: Int64): integer;
    function ItemImageListJson(aItemID: Int64): TJSONObject;
    function ItemLikesList(aItemID: Int64): boolean;
    function ItemLikesListJson(aItemID: Int64): TJSONObject;

    // Records ................................................
    property JanuaSwapProfile: TJanuaSwapProfile read FJanuaSwapProfile write SetJanuaSwapProfile;
    property ActualDiscover: TJanuaSwapDiscover read FActualDiscover write SetActualDiscover;
    property SelectedItem: TJanuaSwapItem read FSelectedItem write SetSelectedItem;
    property SelectedItems: TJanuaSwapItems read FSelectedItems write SetSelectedItems;
    property SelectedImages: TJanuaSwapImages read FSelectedImages write SetSelectedImages;
    property SelectedFollowers: TJanuaFollowers read FSelectedFollowers write SetSelectedFollowers;
    property SelectedFollowings: TJanuaFollowers read FSelectedFollowings write SetSelectedFollowings;
    property ActualFeeds: TJanuaSwapNotifications read FActualFeeds write SetActualFeeds;
    property ActualNotifications: TJanuaSwapNotifications read FActualNotifications write SetActualNotifications;
    property ItemsDiscovered: TJanuaSwapItems read FItemsDiscovered write SetItemsDiscovered;
    property SwapForm: TJanuaSwapForm read FSwapForm write SetSwapForm;
    property UserSwaps: TJanuaSwaps read FUserSwaps write SetUserSwaps;
    property ItemsLikesList: TJanuaSwapItemLikes read FItemsLikesList write SetItemsLikesList;
    property UserItemsLikes: TJanuaSwapItems read FUserItemsLikes write SetUserItemsLikes;
    property SelectedSwap: TJanuaSwap read FSelectedSwap write SetSelectedSwap;
    property SelectedEvent: TJanuaSwapEvent read FSelectedEvent write SetSelectedEvent;
    property SelectedEventsList: TJanuaSwapEvents read FEventsList write SetEventsList;
    property Messages: TJanuaSwapMessages read FMessages write SetMessages;
    property LastSwapMessage: TJanuaSwapMessage read FLastSwapMessage write SetLastMessage;
    property Settings: TJanuaSwapSettings read FSettings write SetSettings;
    property RadarUsers: TJanuaFollowers read FRadarUsers write SetRadarUsers;

  published
    // Class Properties

    // Janua Helper Classes
    property JanuaServerSystem: TJanuaCustomServerSystem read FJanuaServerSystem write SetJanuaServerSystem;

    // Datasets ..............................................
    property dsSwapProfile: {$IFDEF delphixe}TFDMemTable{$ELSE}TVirtualTable{$ENDIF} read FdsSwapProfile;
    property dsUserItems: {$IFDEF delphixe}TFDMemTable{$ELSE}TVirtualTable{$ENDIF} read FdsDiscoverItems;
    property dsDiscoverItems: {$IFDEF delphixe}TFDMemTable{$ELSE}TVirtualTable{$ENDIF} read FdsDiscoverItems;
    property dsItem: {$IFDEF delphixe}TFDMemTable{$ELSE}TVirtualTable{$ENDIF} read FdsItem write SetdsItem;
    property dsItemsLikes:
    {$IFDEF delphixe}TFDMemTable{$ELSE}TVirtualTable{$ENDIF} read FdsItemsLikes write SetdsItemsLikes;
    property dsSelectedItem:
    {$IFDEF delphixe}TFDMemTable{$ELSE}TVirtualTable{$ENDIF} read FdsSelectedItem write SetdsSelectedItem;
    property dsUserLikes:
    {$IFDEF delphixe}TFDMemTable{$ELSE}TVirtualTable{$ENDIF} read FdsUserLikes write SetdsUserLikes;
    property LastMessageID: Int64 read FLastMessageID write SetLastMessageID;
    property Offset: integer read FOffset write SetOffset;
    property Limit: integer read FLimit write SetLimit;

    //

  end;

implementation

uses Janua.Core.Functions, Janua.Core.JSON;

{ TJanuaSwapProfile }

function TJanuaSwapProfile.AsSJSONObJect: TJSONObject;
begin
  Result := TJSONObject.Create;
  Result.AddPair('Result', 'True');
  Result.AddPair('Following', self.FollowingCount.ToString());
  Result.AddPair('Followers', self.FollowersCount.ToString());
  Result.AddPair('Swaps', self.SwapsCount.ToString());
  Result.AddPair(TJSONPair.Create('isfollowed', JanuaJsonBool(IsFollowed)));
  Result.AddPair(TJSONPair.Create('isfollowing', JanuaJsonBool(IsFollowing)));
  Result.AddPair('Notifications', self.NotificationsCount.ToString());
  Result.AddPair('Unread', self.UnreadNotifications.ToString());
  Result.AddPair('Header', self.Header.AsJsonObject);
  Result.AddPair(TJSONPair.Create('UserProfile', self.UserProfile.AsJsonObject));
  Result.AddPair(TJSONPair.Create('Items', self.Items.AsSJSONObJect));
  Result.AddPair(TJSONPair.Create('Likes', self.likes.AsSJSONObJect));
  // Result.AddPair(TJSONPair.Create('Followers', self.Followers.AsSJSONObJect));
end;

procedure TJanuaSwapProfile.LoadFromDataset(dsSwapProfile, dsItems: TDataset);
begin
  {
    user_id integer NOT NULL,
    following smallint,
    followers smallint,
    swaps smallint,
    notifications integer
  }
  self.Header.LoadFromDataset(dsSwapProfile);
  self.FollowersCount := self.Header.Followers;
  self.FollowingCount := self.Header.Following;
  self.SwapsCount := self.Header.swaps;
  self.NotificationsCount := self.Header.NotificationCount;
  self.UnreadNotifications := self.Header.NotificationUnread;
  self.IsFollowed := dsSwapProfile.FieldByName('isfollowed').AsBoolean;
  self.IsFollowing := dsSwapProfile.FieldByName('isfollowing').AsBoolean;
  self.Items.LoadFromDataset(dsItems);
end;

procedure TJanuaSwapProfile.LoadFromDataset(dsSwapProfile, dsItems, dsLikes: TDataset);
begin
  self.LoadFromDataset(dsSwapProfile, dsItems);
  self.likes.LoadFromDataset(dsLikes);
end;

procedure TJanuaSwapProfile.LoadFromDataset(dsSwapProfile, dsItems, dsLikes, dsFollowers: TDataset);
begin
  self.LoadFromDataset(dsSwapProfile, dsItems, dsLikes);
  self.Followers.LoadFromDataset(dsFollowers);
end;

procedure TJanuaSwapProfile.SaveToDataset(dsSwapProfile: TDataset);
begin
  dsSwapProfile.Edit;
  dsSwapProfile.FieldByName('user_id').AsInteger := self.UserProfile.User.id;
  dsSwapProfile.Post;
end;

{ TJanuaFollower }

function TJanuaFollower.AsSJSONObJect: TJSONObject;
begin
  { id: int64;
    FirstName: string;
    LastName: string;
    Town: string;
    CountryCode: string;
    Latitude: Double;
    Longitude: Double; }
  Result := TJSONObject.Create;
  Result.AddPair('id', self.id.ToString);
  Result.AddPair('distance', self.Distance.ToString);
  Result.AddPair('range', self.Range.ToString);
  Result.AddPair('first_name', self.FirstName);
  Result.AddPair('last_name', self.LastName);
  Result.AddPair('town', self.Town);
  Result.AddPair('iso_country_code', self.CountryCode);
  Result.AddPair('lat', JsonFloatToStr(self.Latitude, 7));
  // Result.AddPair('lat', self.Latitude.ToString);
  Result.AddPair('lng', JsonFloatToStr(self.Longitude, 7));
  // Result.AddPair('lng', self.Longitude.ToString);
  Result.AddPair('isfollowed', Janua.Core.JSON.JanuaJsonBool(self.IsFollowed));
  Result.AddPair('isfollowing', Janua.Core.JSON.JanuaJsonBool(self.IsFollowing));
  Result.AddPair('image_url', self.AvatarImage);
end;

procedure TJanuaFollower.LoadFromDataset(dsFollowers: TDataset);
begin
  { SELECT p.first_name, p.last_name,
    p.address_full,  p.latitude,
    p.longitude, u.image_url, p.db_user_id }
  self.id := dsFollowers.FieldByName('db_user_id').AsInteger;
  self.FirstName := dsFollowers.FieldByName('first_name').AsWideString;
  self.LastName := dsFollowers.FieldByName('last_name').AsWideString;
  self.Town := dsFollowers.FieldByName('address_full').AsWideString;
  self.Latitude := dsFollowers.FieldByName('latitude').AsFloat;
  self.Longitude := dsFollowers.FieldByName('longitude').AsFloat;
  self.IsFollowed := dsFollowers.FieldByName('isfollowed').AsBoolean;
  self.IsFollowing := dsFollowers.FieldByName('isfollowing').AsBoolean;
  self.AvatarImage := dsFollowers.FieldByName('image_url').AsWideString;
  self.Distance := dsFollowers.FieldByName('distance').AsInteger;
  self.Range := dsFollowers.FieldByName('range').AsInteger;
  self.CountryCode := '';

end;

{ TJanuaSwapItem }

function TJanuaSwapItem.AsSJSONObJect: TJSONObject;
var
  i: integer;
  a: TJsonArray;
begin
  Result := TJSONObject.Create;
  Result.AddPair('Result', 'True');
  Result.AddPair('item_id', self.id.ToString());
  Result.AddPair('owner_id', self.owner_id.ToString());
  Result.AddPair('insert_date', Janua.Core.JSON.JsonEncodeDateTime(self.insert_date));
  Result.AddPair('description', self.description);
  Result.AddPair('image_url', self.image_url);
  Result.AddPair('available', JanuaJsonBool(self.available));
  Result.AddPair('swapped', JanuaJsonBool(swapped));
  Result.AddPair('likes', self.likes.ToString());
  Result.AddPair('user_likes', JanuaJsonBool(self.UserLikes));

  if self.OwnerName <> '' then
    Result.AddPair('ownername', self.OwnerName);

  if self.OwnerAvatar <> '' then
    Result.AddPair('ownerimage', self.OwnerAvatar);

  if Length(self.Images) > 0 then
  begin
    a := TJsonArray.Create;
    for i := 0 to Length(self.Images) - 1 do
      a.AddElement(self.Images[i].AsSJSONObJect);
    Result.AddPair('images', a);
  end;
end;

procedure TJanuaSwapItem.LoadFromDataset(dsItems: TDataset);
begin
  // id bigint NOT NULL DEFAULT 0,
  self.id := dsItems.FieldByName('id').AsLargeInt;
  // owner_id integer NOT NULL,
  self.owner_id := dsItems.FieldByName('owner_id').AsInteger;
  // insert_date timestamp with time zone,
  self.insert_date := dsItems.FieldByName('insert_date').AsDateTime;
  // description character varying
  self.description := dsItems.FieldByName('description').AsWideString;
  // url character varying(2048),
  self.image_url := dsItems.FieldByName('url').AsWideString;
  // available boolean,
  self.available := dsItems.FieldByName('available').AsBoolean;
  // swapped boolean,
  self.swapped := dsItems.FieldByName('swapped').AsBoolean;
  // likes smallint
  self.likes := dsItems.FieldByName('item_likes').AsInteger;
  // ownere Avatar
  if Janua.Core.Functions.ExistFieldByName(dsItems, 'avatar_img') then
    self.OwnerAvatar := dsItems.FieldByName('avatar_img').AsWideString;
  // owner Name
  if Janua.Core.Functions.ExistFieldByName(dsItems, 'full_name') then
    self.OwnerName := dsItems.FieldByName('full_name').AsWideString;

  self.UserLikes := dsItems.FieldByName('user_likes').AsBoolean;
end;

procedure TJanuaSwapItem.Clear;
begin
  SetLength(self.Images, 0);
end;

procedure TJanuaSwapItem.LoadFromDataset(dsItems, dsImages: TDataset);
begin
  self.LoadFromDataset(dsItems);
  SetLength(self.Images, 0);
  if Assigned(dsImages) and dsImages.Active and (dsImages.RecordCount > 0) then
  begin
    dsImages.First;
    while not dsImages.Eof do
    begin
      SetLength(self.Images, Length(self.Images) + 1);
      self.Images[Length(self.Images) - 1].LoadFromDataset(dsImages);
      dsImages.Next;
    end
  end;
end;

{ TJanuaCustomServerSwap }

constructor TJanuaCustomServerSwap.Create(AOwner: TComponent);
begin
  inherited;
  self.FActualFeeds.Create(TJanuaSwapNotificationsType.jsnFeed);
  self.FActualNotifications.Create(TJanuaSwapNotificationsType.jsnNotification);
  self.FRadarUsers.Create(jutUsers);
end;

function TJanuaCustomServerSwap.Discover: boolean;
begin
  try
    self.CreateDataModule;
    Result := self.InternalDiscover;
  finally
    self.DestroyDataModule(False);
  end;
end;

function TJanuaCustomServerSwap.Discovered(vItemID: Int64): boolean;
begin
  try
    self.CreateDataModule;
    Result := InternalDiscovered(vItemID);
  finally
    self.DestroyDataModule(False);
  end;
end;

function TJanuaCustomServerSwap.DiscoveredJson(vItemID: Int64): TJSONObject;
begin
  if Discovered(vItemID) then
    Result := self.GenerateJsonResult('Item marked as Discovered')
  else
    Result := self.GenerateJsonError(self.LastErrorMessage)
end;

function TJanuaCustomServerSwap.DiscoverJson: TJSONObject;
begin
  try
    self.Discover;
    Result := TJSONObject.Create;
    Result.AddPair('Result', 'True');
    Result.AddPair(TJSONPair.Create('Discover', self.FActualDiscover.AsSJSONObJect));
  except
    Result := TJSONObject.Create;
    Result.AddPair(TJSONPair.Create('Discover', False.ToString()));
  end;
end;

function TJanuaCustomServerSwap.EventAddUser(aEventID, aUserID: integer): boolean;
begin
  self.CreateDataModule;
  try
    Result := self.InternalEventAddUser(aEventID, aUserID);
  finally
    self.DestroyDataModule(False);
  end;
end;

function TJanuaCustomServerSwap.EventAddUserJson(aEventID, aUserID: integer): TJSONObject;
begin
  try
    if self.EventAddUser(aEventID, aUserID) then
      Result := self.GenerateJsonResult('User Added to Event')
    else
      Result := self.GenerateJsonError(self.LastErrorMessage)

  except
    on e: exception do
    begin
      Result := self.GenerateJsonError('TJanuaCustomServerSwap.EventAddUserJson ' + sLineBreak + e.Message)
    end;

  end;
end;

function TJanuaCustomServerSwap.EventDelete(aEventID: integer): boolean;
begin
  self.CreateDataModule;
  try
    Result := self.InternalEventDelete(aEventID);
  finally
    self.DestroyDataModule(False);
  end;
end;

function TJanuaCustomServerSwap.EventDeleteJson(aEventID: integer): TJSONObject;
begin
  try
    if self.EventDelete(aEventID) then
      Result := self.GenerateJsonResult('Event Cancelled')
    else
      Result := self.GenerateJsonError(self.LastErrorMessage)
  except
    on e: exception do
    begin
      Result := self.GenerateJsonError('TJanuaCustomServerSwap.EventDeleteJson ' + sLineBreak + e.Message)
    end;

  end;
end;

function TJanuaCustomServerSwap.EventDelUser(aEventID, aUserID: integer): boolean;
begin
  self.CreateDataModule;
  try
    Result := self.InternalEventDelUser(aEventID, aUserID);
  finally
    self.DestroyDataModule(False);
  end;
end;

function TJanuaCustomServerSwap.EventDelUserJson(aEventID, aUserID: integer): TJSONObject;
begin
  try
    if self.EventDelUser(aEventID, aUserID) then
      Result := self.GenerateJsonResult('User Cancelled')
    else
      Result := self.GenerateJsonError(self.LastErrorMessage)
  except
    on e: exception do
    begin
      Result := self.GenerateJsonError('TJanuaCustomServerSwap.EventDelUserJson ' + sLineBreak + e.Message)
    end;

  end;
end;

function TJanuaCustomServerSwap.EventInsert(aEvent: TJanuaSwapEvent): integer;
begin
  try
    self.CreateDataModule;
    try
      Result := self.InternalEventInsert(aEvent)
    finally
      self.DestroyDataModule(False);
    end;
  except
    on e: exception do
    begin
      self.WriteError('TJanuaCustomServerSwap.EventDelUserJson ', e, False);
      Result := -1;
    end;

  end;
end;

function TJanuaCustomServerSwap.EventInsertJson(aEvent: TJanuaSwapEvent): TJSONObject;
begin
  try
    self.FSelectedEvent := aEvent;
    FSelectedEvent.id := self.EventInsert(aEvent);
    if FSelectedEvent.id > 0 then
    begin
      Result := TJSONObject.Create;
      Result.AddPair('Result', 'True');
      Result.AddPair('event_id', FSelectedEvent.id.ToString());
      Result.AddPair('Message', 'Event inserted successfully');
      // GenerateJsonResult(FSelectedEvent.id.ToString())
    end
    else
      Result := self.GenerateJsonError(self.LastErrorMessage)
  except
    on e: exception do
    begin
      Result := self.GenerateJsonError('TJanuaCustomServerSwap.EventDelUserJson ' + sLineBreak + e.Message)
    end;

  end;
end;

function TJanuaCustomServerSwap.EventsList(aUserID: Int64): boolean;
begin
  try
    self.CreateDataModule;
    try
      Result := self.InternalEventsList(aUserID);
    finally
      self.DestroyDataModule(False);
    end;
  except
    on e: exception do
    begin
      self.WriteError('TJanuaCustomServerSwap.EventsList ', e, False);
      Result := False;
    end;
  end;
end;

function TJanuaCustomServerSwap.EventsListJson(aUserID: Int64): TJSONObject;
begin
  // FEventsList
  try
    if EventsList(aUserID) then
    begin
      Result := self.FEventsList.AsSJSONObJect;
    end
    else
      Result := self.GenerateJsonError(self.LastErrorMessage)
  except
    on e: exception do
    begin
      Result := self.GenerateJsonError('TJanuaCustomServerSwap.EventsListJson ' + sLineBreak + e.Message)
    end;

  end;
end;

function TJanuaCustomServerSwap.EventUpdate(aEvent: TJanuaSwapEvent): boolean;
begin
  try
    self.CreateDataModule;
    try
      Result := self.InternalEventUpdate(aEvent);
    finally
      self.DestroyDataModule(False);
    end;
  except
    on e: exception do
    begin
      self.WriteError('TJanuaCustomServerSwap.EventsList ', e, False);
      Result := False;
    end;
  end;
end;

function TJanuaCustomServerSwap.EventUpdateJson(aEvent: TJanuaSwapEvent): TJSONObject;
begin
  try
    if EventUpdate(aEvent) then
    begin
      Result := self.GenerateJsonResult('Event updated')
    end
    else
      Result := self.GenerateJsonError(self.LastErrorMessage)
  except
    on e: exception do
    begin
      Result := self.GenerateJsonError('TJanuaCustomServerSwap.EventsListJson ' + sLineBreak + e.Message)
    end;

  end;
end;

function TJanuaCustomServerSwap.EventUsersList(aEventID: integer): boolean;
begin
  try
    self.CreateDataModule;
    try
      Result := self.InternalEventUsersList(aEventID);
    finally
      self.DestroyDataModule(False);
    end;
  except
    on e: exception do
    begin
      self.WriteError('TJanuaCustomServerSwap.EventsList ', e, False);
      Result := False;
    end;
  end;
end;

function TJanuaCustomServerSwap.EventUsersListJson(aEventID: integer): TJSONObject;
begin
  try
    if self.EventUsersList(aEventID) then
    begin
      Result := self.FSelectedEvent.Participants.AsSJSONObJect;
    end
    else
      Result := self.GenerateJsonError(self.LastErrorMessage)

  except
    on e: exception do
    begin
      Result := self.GenerateJsonError('TJanuaCustomServerSwap.EventUsersListJson ' + sLineBreak + e.Message)
    end;

  end;
end;

function TJanuaCustomServerSwap.EventWatch(aEventID: integer): boolean;
begin

  try
    self.CreateDataModule;
    try
      Result := self.InternalEventWatch(aEventID);
    finally
      self.DestroyDataModule(False);
    end;
  except
    on e: exception do
    begin
      self.WriteError('TJanuaCustomServerSwap.EventsList ', e, False);
      Result := False;
    end;

  end;

end;

function TJanuaCustomServerSwap.EventWatchJson(aEventID: integer): TJSONObject;
begin
  try
    if self.EventWatch(aEventID) then
    begin
      Result := TJSONObject.Create;
      Result.AddPair('Result', 'True');
      Result.AddPair('Event', self.FSelectedEvent.AsSJSONObJect);
    end
    else
      Result := self.GenerateJsonError(self.LastErrorMessage)
  except
    on e: exception do
    begin
      Result := self.GenerateJsonError('TJanuaCustomServerSwap.EventsListJson ' + sLineBreak + e.Message)
    end;

  end;
end;

function TJanuaCustomServerSwap.FeedRead(aFeedID: Int64): boolean;
begin
  Result := False;
  { TODO -oRiccardo -cswapush : Implementare metodo Feed Read }
end;

function TJanuaCustomServerSwap.FeedReadJson(aFeedID: Int64): TJSONObject;
begin
  Result := Janua.Core.JSON.JsonResult(Janua.Core.JSON.JanuaJsonBool(FeedRead(aFeedID)))
end;

function TJanuaCustomServerSwap.Feeds: boolean;
begin
  self.CreateDataModule;
  try
    Result := self.InernalFeeds;
    // Internal Item Watch populates the Dataset FdsItem but Also FdsItemImages and FdsItemLikes
  finally
    self.DestroyDataModule;
  end;
end;

function TJanuaCustomServerSwap.FeedsJson: TJSONObject;
begin
  if Feeds then
    Result := self.FActualFeeds.AsJsonObject
  else
    Result := self.GenerateJsonError(self.LastErrorMessage)
end;

function TJanuaCustomServerSwap.GetSettings: boolean;
begin
  self.CreateDataModule;
  try
    Result := self.InternalGetSettings
  finally
    self.DestroyDataModule(False);
  end;
end;

function TJanuaCustomServerSwap.GetSettingsJson: TJSONObject;
begin
  if GetSettings then
    Result := self.FSettings.AsSJSONObJect
  else
    Result := self.GenerateJsonError(self.LastErrorMessage)
end;

function TJanuaCustomServerSwap.ItemDelete(aItemID: Int64): boolean;
begin
  self.CreateDataModule;
  try
    Result := self.InternalItemDelete(aItemID)
  finally
    self.DestroyDataModule(False);
  end;
end;

function TJanuaCustomServerSwap.ItemDeleteJson(aItemID: Int64): TJSONObject;
begin
  if ItemDelete(aItemID) then
    Result := JsonResult('True')
  else
    Result := GenerateJsonError(self.LastErrorMessage);
end;

function TJanuaCustomServerSwap.ItemDisLike(aItemID: Int64; aState: boolean): boolean;
begin
  self.CreateDataModule;
  try
    Result := self.InternalItemDisLike(aItemID, aState)
  finally
    self.DestroyDataModule;
  end;
end;

function TJanuaCustomServerSwap.ItemDisLikeJson(aItemID: Int64; aState: boolean): TJSONObject;
begin
  if self.ItemDisLike(aItemID, aState) then
    Result := JsonResult('True')
  else
    Result := GenerateJsonError(self.LastErrorMessage);
end;

function TJanuaCustomServerSwap.ItemImageDelete(aImageID: Int64): boolean;
begin
  self.CreateDataModule;
  try
    Result := self.InternalItemImageDelete(aImageID)
  finally
    self.DestroyDataModule(False);
  end;
end;

function TJanuaCustomServerSwap.ItemImageDeleteJson(aImageD: Int64): TJSONObject;
begin
  if self.ItemImageDelete(aImageD) then
    Result := JsonResult('True')
  else
    Result := GenerateJsonError(self.LastErrorMessage);
end;

function TJanuaCustomServerSwap.ItemImageInsert(aImage: TJanuaSwapImage): Int64;
begin
  self.CreateDataModule;
  try
    Result := self.InternalItemImageInsert(aImage);
  finally
    self.DestroyDataModule;
  end;

end;

function TJanuaCustomServerSwap.ItemImageInsertJson(aImage: TJanuaSwapImage): TJSONObject;
var
  aResult: Int64;
begin
  aResult := self.ItemImageInsert(aImage);

  if aResult > 0 then
    Result := JsonResult(aResult.ToString())
  else
    Result := self.GenerateJsonError(self.LastErrorMessage)

end;

function TJanuaCustomServerSwap.ItemImageList(aItemID: Int64): integer;
begin
  self.CreateDataModule;
  try
    if not Assigned(self.FdsUserItemsImages) then
      FdsUserItemsImages := {$IFDEF delphixe}TFDMemTable{$ELSE}TVirtualTable{$ENDIF}.Create(self);

    Result := self.InternalItemImageList(aItemID);
    if Result > 0 then
    begin
      self.FSelectedImages.ArrayLength(Result);
      self.FSelectedImages.LoadFromDataset(self.FdsUserItemsImages);
    end
    else
    begin
      self.HasErrors := True;
    end;
  finally
    self.DestroyDataModule;
  end;
end;

function TJanuaCustomServerSwap.ItemImageListJson(aItemID: Int64): TJSONObject;
begin
  if self.ItemImageList(aItemID) > 0 then
  begin
    Result := self.FSelectedImages.AsSJSONObJect;
  end
  else
  begin
    Result := self.GenerateJsonError(self.LastErrorMessage);
  end;
end;

function TJanuaCustomServerSwap.ItemInsert(aItem: TJanuaSwapItem): Int64;
begin
  self.CreateDataModule;
  try
    Result := self.InternalItemInsert(aItem);
  finally
    self.DestroyDataModule;
  end;
end;

function TJanuaCustomServerSwap.ItemInsertJson(aItem: TJanuaSwapItem): TJSONObject;
var
  aResult: Int64;
begin
  aResult := self.ItemInsert(aItem);
  if aResult > 0 then
    Result := JsonResult(aResult.ToString())
  else
    Result := self.GenerateJsonError(self.LastErrorMessage)
end;

function TJanuaCustomServerSwap.ItemLike(aItemID: Int64; aState: boolean): boolean;
begin
  self.CreateDataModule;
  try
    Result := self.InternalItemLike(aItemID, aState)
  finally
    self.DestroyDataModule;
  end;
end;

function TJanuaCustomServerSwap.ItemLikeJson(aItemID: Int64; aState: boolean): TJSONObject;
begin
  if self.ItemLike(aItemID, aState) then
    Result := JsonResult('True')
  else
    Result := self.GenerateJsonError(self.LastErrorMessage)
end;

function TJanuaCustomServerSwap.ItemLikesList(aItemID: Int64): boolean;
begin
  self.CreateDataModule;
  try
    Result := self.InternalItemLikesList(aItemID);
    // then Internal procedure Populates the Items Likes list
    if Result then
      self.FItemsLikesList.LoadFromDataset(self.FdsItemsLikes, self.FdsSelectedItem);
  finally
    self.DestroyDataModule;
  end;
end;

function TJanuaCustomServerSwap.ItemLikesListJson(aItemID: Int64): TJSONObject;
begin
  try
    if self.ItemLikesList(aItemID) then
    begin
      Result := self.FItemsLikesList.AsSJSONObJect
    end
    else
    begin
      Result := self.GenerateJsonError(self.LastErrorMessage);
    end;
  except
    on e: exception do
    begin
      Result := self.GenerateJsonError(self.LastErrorMessage);
    end;
  end;
end;

function TJanuaCustomServerSwap.ItemsDiscover: boolean;
begin
  self.CreateDataModule;
  try
    Result := self.InternalItemsDiscover;
  finally
    self.DestroyDataModule(False);
  end;
end;

function TJanuaCustomServerSwap.ItemsDiscoverJSON: TJSONObject;
begin
  if self.ItemsDiscover then
    Result := self.FItemsDiscovered.AsSJSONObJect
  else
    Result := self.GenerateJsonError(self.LastErrorMessage)
end;

function TJanuaCustomServerSwap.ItemSeen(aItemID: Int64): boolean;
begin
  self.CreateDataModule;
  try
    Result := self.InternalItemSeen(aItemID)
  finally
    self.DestroyDataModule(False);
  end;
end;

function TJanuaCustomServerSwap.ItemSeenJson(aItemID: Int64): TJSONObject;
begin
  if self.ItemSeen(aItemID) then
    Result := JsonResult('True')
  else
    Result := GenerateJsonError(self.LastErrorMessage);
end;

function TJanuaCustomServerSwap.ItemsList(aUserID: integer): integer;
begin
  self.CreateDataModule;
  if not Assigned(FdsUserItems) then
    FdsUserItems := {$IFDEF delphixe}TFDMemTable{$ELSE}TVirtualTable{$ENDIF}.Create(self);
  try
    Result := self.InternalItemsList(aUserID);
    if Result > 0 then
    begin
      if Assigned(self.FdsUserItems) and (FdsUserItems.RecordCount > 0) then
      begin
        self.FSelectedItems.LoadFromDataset(self.FdsUserItems);
        // the class already has all the controls and procedures to load arraz of data
      end;
    end;
  finally
    self.DestroyDataModule;
  end;
end;

function TJanuaCustomServerSwap.ItemsListJson(aUserID: integer): TJSONObject;
begin
  try
    if self.ItemsList(aUserID) > 0 then
      Result := self.FSelectedItems.AsSJSONObJect
    else
    begin
      Result := TJSONObject.Create;
      Result.AddPair('Result', 'False');
      Result.AddPair('Message', 'No Items to Display');
    end;
  except
    on e: exception do
    begin
      Result := TJSONObject.Create;
      Result.AddPair('Result', 'False');
      Result.AddPair('Message', 'Internal Server Error');
      Result.AddPair('Error', e.Message);
    end;

  end;
end;

function TJanuaCustomServerSwap.ItemUpdate(aItem: TJanuaSwapItem): boolean;
begin
  self.CreateDataModule;
  try
    Result := self.InternalItemUpdate(aItem);
  finally
    self.DestroyDataModule();
  end;

end;

function TJanuaCustomServerSwap.ItemUpdateJson(aItem: TJanuaSwapItem): TJSONObject;
begin
  if self.ItemUpdate(aItem) then
  begin
    Result := JsonResult('True')
  end
  else
  begin
    Result := self.GenerateJsonError(LastErrorMessage)
  end;
end;

function TJanuaCustomServerSwap.ItemWatch(aItemID: Int64): boolean;
begin
  self.CreateDataModule;
  try
    self.FSelectedItem.Clear;
    // at first the Selected Item is Emptied.
    if not Assigned(FdsUserItems) then
      FdsUserItems := {$IFDEF delphixe}TFDMemTable{$ELSE}TVirtualTable{$ENDIF}.Create(self);
    if not Assigned(FdsUserItemsImages) then
      FdsUserItemsImages := {$IFDEF delphixe}TFDMemTable{$ELSE}TVirtualTable{$ENDIF}.Create(self);
    Result := self.InternalItemWatch(aItemID);
    // Internal Item Watch populates the Dataset FdsItem but Also FdsItemImages and FdsItemLikes
  finally
    self.DestroyDataModule;
  end;
end;

function TJanuaCustomServerSwap.ItemWatchJson(aItemID: Int64): TJSONObject;
begin
  if ItemWatch(aItemID) then
  begin
    Result := self.FSelectedItem.AsSJSONObJect;
  end
  else
  begin
    Result := TJSONObject.Create;
    Result.AddPair('Result', 'False');
    Result.AddPair('Error', 'Item not found Error = ' + self.LastErrorMessage);
  end;
end;

function TJanuaCustomServerSwap.likes(vItemID: Int64): boolean;
begin
  Result := False;
  { TODO : Implement Method TJanuaCustomServerSwap.likes }
end;

function TJanuaCustomServerSwap.MessageDelete(aSwapID, aMessageID: Int64): boolean;
begin
  self.CreateDataModule;
  try
    Result := self.InternalMessageDelete(aSwapID, aMessageID);
  finally
    self.DestroyDataModule;
  end;
end;

function TJanuaCustomServerSwap.MessageDeleteJson(aSwapID, aMessageID: Int64): TJSONObject;
begin
  if self.MessageDelete(aSwapID, aMessageID) then
  begin
    Result := self.GenerateJsonResult('Object Deleted');
  end
  else
  begin
    Result := self.GenerateJsonError(self.LastErrorMessage)
  end;
end;

function TJanuaCustomServerSwap.MessageInsert(vMessage: TJanuaSwapMessage): Int64;
begin
  self.CreateDataModule;
  try
    Result := self.InternalMessageInsert(vMessage)
  finally
    self.DestroyDataModule;
  end;
end;

function TJanuaCustomServerSwap.MessageInsertJson(vMessage: TJanuaSwapMessage): TJSONObject;
var
  aID: Int64;
begin
  aID := self.MessageInsert(vMessage);
  if aID > 0 then
  begin
    Result := TJSONObject.Create;
    Result.AddPair('Result', 'True');

    if self.FLastMessageID = 0 then
      Result.AddPair('Messages', self.FLastSwapMessage.AsSJSONObJect)
    else
      Result.AddPair('Messages', self.FMessages.AsSJSONObJect)
  end
  else
  begin
    Result := self.GenerateJsonError(self.LastErrorMessage)
  end;
end;

function TJanuaCustomServerSwap.MessagesList(aSwapID, aLastID: Int64): Int64;
begin
  self.CreateDataModule;
  try
    Result := self.InternalMessagesList(aSwapID, aLastID);
  finally
    self.DestroyDataModule;
  end;
end;

function TJanuaCustomServerSwap.MessagesListJson(aSwapID, aLastID: Int64): TJSONObject;
begin

  if self.MessagesList(aSwapID, aLastID) >= 0 then
  begin
    Result := self.FMessages.AsSJSONObJect;
  end
  else
  begin
    Result := self.GenerateJsonError(self.LastErrorMessage)
  end;

end;

function TJanuaCustomServerSwap.NotificationRead(aNotificationID: Int64): boolean;
begin
  self.CreateDataModule;
  try
    Result := self.InternalNotificationRead(aNotificationID);
    // Internal Item Watch populates the Dataset FdsItem but Also FdsItemImages and FdsItemLikes
  finally
    self.DestroyDataModule;
  end;

end;

function TJanuaCustomServerSwap.NotificationReadJson(aNotificationID: Int64): TJSONObject;
begin
  if self.NotificationRead(aNotificationID) then
    Result := self.GenerateJsonResult('Notification Read')
  else
    Result := self.GenerateJsonError(self.LastErrorMessage);
end;

function TJanuaCustomServerSwap.Notifications: boolean;
begin
  self.CreateDataModule;
  try
    Result := self.InternalNotifications;
    // Internal Item Watch populates the Dataset FdsItem but Also FdsItemImages and FdsItemLikes
  finally
    self.DestroyDataModule;
  end;
end;

function TJanuaCustomServerSwap.NotificationsJson: TJSONObject;
begin
  if Notifications then
    Result := self.FActualNotifications.AsJsonObject
  else
    Result := self.GenerateJsonError(self.LastErrorMessage)
end;

function TJanuaCustomServerSwap.Radar(const aRange: integer): integer;
begin
  self.CreateDataModule;
  try
    Result := self.InternalRadar(aRange);
    // Internal Item Watch populates the Dataset FdsItem but Also FdsItemImages and FdsItemLikes
  finally
    self.DestroyDataModule;
  end;
end;

function TJanuaCustomServerSwap.RadarJson(const aRadar: integer): TJSONObject;
begin
  try
    if self.Radar(aRadar) > -1 then
    begin
      Result := self.FRadarUsers.AsSJSONObJect;
    end
    else
    begin
      Result := self.GenerateJsonError(self.LastErrorMessage)
    end;
  except
    on e: exception do
    begin
      Result := self.GenerateJsonError('TJanuaCustomServerSwap.RadarJson ' + e.Message);

    end;

  end;
end;

procedure TJanuaCustomServerSwap.SetActualDiscover(const Value: TJanuaSwapDiscover);
begin
  FActualDiscover := Value;
end;

procedure TJanuaCustomServerSwap.SetActualFeeds(const Value: TJanuaSwapNotifications);
begin
  FActualFeeds := Value;
end;

procedure TJanuaCustomServerSwap.SetActualNotifications(const Value: TJanuaSwapNotifications);
begin
  FActualNotifications := Value;
end;

procedure TJanuaCustomServerSwap.SetdsItem(const Value: {$IFDEF delphixe}TFDMemTable{$ELSE}TVirtualTable{$ENDIF} );
begin
  FdsItem := Value;
end;

procedure TJanuaCustomServerSwap.SetdsItemsLikes(const Value:
  {$IFDEF delphixe}TFDMemTable{$ELSE}TVirtualTable{$ENDIF} );
begin
  FdsItemsLikes := Value;
end;

procedure TJanuaCustomServerSwap.SetdsSelectedItem(const Value:
  {$IFDEF delphixe}TFDMemTable{$ELSE}TVirtualTable{$ENDIF} );
begin
  FdsSelectedItem := Value;
end;

procedure TJanuaCustomServerSwap.SetdsUserLikes(const Value: {$IFDEF delphixe}TFDMemTable{$ELSE}TVirtualTable{$ENDIF} );
begin
  FdsUserLikes := Value;
end;

procedure TJanuaCustomServerSwap.SetEventsList(const Value: TJanuaSwapEvents);
begin
  FEventsList := Value;
end;

procedure TJanuaCustomServerSwap.SetItemsDiscovered(const Value: TJanuaSwapItems);
begin
  FItemsDiscovered := Value;
end;

procedure TJanuaCustomServerSwap.SetItemsLikesList(const Value: TJanuaSwapItemLikes);
begin
  FItemsLikesList := Value;
end;

procedure TJanuaCustomServerSwap.SetJanuaServerSystem(const Value: TJanuaCustomServerSystem);
begin
  FJanuaServerSystem := Value;
end;

procedure TJanuaCustomServerSwap.SetJanuaSwapProfile(const Value: TJanuaSwapProfile);
begin
  FJanuaSwapProfile := Value;
end;

procedure TJanuaCustomServerSwap.SetLastMessage(const Value: TJanuaSwapMessage);
begin
  FLastSwapMessage := Value;
end;

procedure TJanuaCustomServerSwap.SetLastMessageID(const Value: Int64);
begin
  FLastMessageID := Value;
end;

procedure TJanuaCustomServerSwap.SetLimit(const Value: integer);
begin
  FLimit := Value;
end;

procedure TJanuaCustomServerSwap.SetMessages(const Value: TJanuaSwapMessages);
begin
  FMessages := Value;
end;

procedure TJanuaCustomServerSwap.SetOffset(const Value: integer);
begin
  FOffset := Value;
end;

procedure TJanuaCustomServerSwap.SetRadarUsers(const Value: TJanuaFollowers);
begin
  FRadarUsers := Value;
end;

procedure TJanuaCustomServerSwap.SetSelectedEvent(const Value: TJanuaSwapEvent);
begin
  FSelectedEvent := Value;
end;

procedure TJanuaCustomServerSwap.SetSelectedFollowers(const Value: TJanuaFollowers);
begin
  FSelectedFollowers := Value;
end;

procedure TJanuaCustomServerSwap.SetSelectedFollowings(const Value: TJanuaFollowers);
begin
  FSelectedFollowings := Value;
end;

procedure TJanuaCustomServerSwap.SetSelectedImages(const Value: TJanuaSwapImages);
begin
  FSelectedImages := Value;
end;

procedure TJanuaCustomServerSwap.SetSelectedItem(const Value: TJanuaSwapItem);
begin
  FSelectedItem := Value;
end;

procedure TJanuaCustomServerSwap.SetSelectedItems(const Value: TJanuaSwapItems);
begin
  FSelectedItems := Value;
end;

procedure TJanuaCustomServerSwap.SetSelectedSwap(const Value: TJanuaSwap);
begin
  FSelectedSwap := Value;
end;

procedure TJanuaCustomServerSwap.SetSettings(const Value: TJanuaSwapSettings);
begin
  FSettings := Value;
end;

procedure TJanuaCustomServerSwap.SetSwapForm(const Value: TJanuaSwapForm);
begin
  FSwapForm := Value;
end;

procedure TJanuaCustomServerSwap.SetUserItemsLikes(const Value: TJanuaSwapItems);
begin
  FUserItemsLikes := Value;
end;

procedure TJanuaCustomServerSwap.SetUserSwaps(const Value: TJanuaSwaps);
begin
  FUserSwaps := Value;
end;

function TJanuaCustomServerSwap.SwapAgree(vUserID: integer; vSwapID: Int64; vAction: TJanuaSwapActionType): boolean;
begin
  try
    try
      self.CreateDataModule;
      Result := InternalSwapAgree(vUserID, vSwapID, vAction);
    finally
      self.DestroyDataModule(False);
    end;
  except
    on e: exception do
    begin
      self.WriteError('TJanuaCustomServerSwap.SwapperProfile', e);
      self.LastErrorMessage := e.Message;
      Result := False;
    end;
  end;
end;

function TJanuaCustomServerSwap.SwapAgreeJson(vUserID: integer; vSwapID: Int64; vAction: TJanuaSwapActionType)
  : TJSONObject;
begin
  try
    if self.SwapAgree(vUserID, vSwapID, vAction) then
    begin
      Result := self.GenerateJsonResult('True');
    end
    else
    begin
      Result := self.GenerateJsonError(self.LastErrorMessage);
    end;
  except
    on e: exception do
    begin
      Result := self.GenerateJsonError('TJanuaCustomServerSwap.SwapperProfileJson = ' + e.ToString)
    end;

  end;
end;

function TJanuaCustomServerSwap.SwapperProfile(aUserID: integer): boolean;
begin
  try
    try
      self.CreateDataModule;
      Result := InternalSwapperProfile(aUserID);
    finally
      self.DestroyDataModule(False);
    end;
  except
    on e: exception do
    begin
      self.WriteError('TJanuaCustomServerSwap.SwapperProfile', e);
      if self.LastErrorMessage = '' then
        self.LastErrorMessage := e.ToString;
      Result := False;
    end;
  end;
end;

function TJanuaCustomServerSwap.SwapperProfileJson(aUserID: integer): TJSONObject;
begin
  try
    if self.SwapperProfile(aUserID) then
    begin
      Result := self.FJanuaSwapProfile.AsSJSONObJect;
    end
    else
    begin
      Result := self.GenerateJsonError(self.LastErrorMessage);
    end;
  except
    on e: exception do
    begin
      Result := self.GenerateJsonError('TJanuaCustomServerSwap.SwapperProfileJson = ' + e.ToString)
    end;

  end;
end;

function TJanuaCustomServerSwap.SwapStart(vItemID, vOtherItemID: Int64; vState: boolean = True): boolean;
begin
  try
    try
      self.CreateDataModule;
      Result := self.InternalSwapStart(vItemID, vOtherItemID, vState);
    finally
      self.DestroyDataModule(False);
    end;
  except
    on e: exception do
    begin
      self.WriteError('TJanuaCustomServerSwap.SwapWatch', e);
      if self.LastErrorMessage = '' then
        self.LastErrorMessage := e.ToString;
      Result := False;
    end;
  end;

end;

function TJanuaCustomServerSwap.SwapStartJson(vItemID, vOtherItemID: Int64; vState: boolean = True): TJSONObject;
begin
  if self.SwapStart(vItemID, vOtherItemID, vState) then
    Result := JsonResult('True')
  else
    Result := self.GenerateJsonError(self.LastErrorMessage)

end;

function TJanuaCustomServerSwap.SwapWatch(vItemID: Int64; vUserID: integer): boolean;
begin
  try
    try
      self.CreateDataModule;
      Result := InternalSwapWatch(vItemID, vUserID);
    finally
      self.DestroyDataModule(False);
    end;
  except
    on e: exception do
    begin
      self.WriteError('TJanuaCustomServerSwap.SwapWatch', e);
      if self.LastErrorMessage = '' then
        self.LastErrorMessage := e.ToString;
      Result := False;
    end;
  end;
end;

function TJanuaCustomServerSwap.SwapWatchJson(vItemID: Int64; vUserID: integer): TJSONObject;
begin
  if self.SwapWatch(vItemID, vUserID) then
    Result := self.FSwapForm.AsSJSONObJect
  else
    Result := self.GenerateJsonError(self.LastErrorMessage)
end;

function TJanuaCustomServerSwap.UpdateSettings: boolean;
begin
  self.CreateDataModule;
  try
    Result := self.InternalUpdateSettings;
  finally
    self.DestroyDataModule(False);
  end;
end;

function TJanuaCustomServerSwap.UpdateSettingsJson: TJSONObject;
begin
  if UpdateSettings then
    Result := self.FSettings.AsSJSONObJect
  else
    Result := self.GenerateJsonError(self.LastErrorMessage)
end;

function TJanuaCustomServerSwap.UpdateUserProfile: boolean;
begin
  self.CreateDataModule;
  try
    Result := self.InternalUpdateUserProfile;
  finally
    self.DestroyDataModule(False);
  end;

end;

function TJanuaCustomServerSwap.UpdateUserProfileJson: TJSONObject;
begin
  if UpdateUserProfile then
    Result := JsonResult('True')
  else
    Result := self.GenerateJsonError(self.LastErrorMessage)
end;

function TJanuaCustomServerSwap.UserFollow(aUserID: integer; aFollow: boolean = True): boolean;
begin
  self.CreateDataModule;
  try
    Result := self.InternalUserFollow(aUserID, aFollow)
  finally
    self.DestroyDataModule(False);
  end;
end;

function TJanuaCustomServerSwap.UserFollowers(aUserID: integer): boolean;
begin
  self.CreateDataModule;
  try
    Result := self.InternalUserFollowers(aUserID);
  finally
    self.DestroyDataModule;
  end;
end;

function TJanuaCustomServerSwap.UserFollowersJSON(aUserID: integer): TJSONObject;
begin
  if self.UserFollowers(aUserID) then
    Result := self.FSelectedFollowers.AsSJSONObJect
  else
    Result := self.GenerateJsonError('No followers Found');
end;

function TJanuaCustomServerSwap.UserFollowings(aUserID: integer): boolean;
begin
  self.CreateDataModule;
  try
    Result := self.InternalUserFollowings(aUserID);
  finally
    self.DestroyDataModule;
  end;
end;

function TJanuaCustomServerSwap.UserFollowingsJSON(aUserID: integer): TJSONObject;
begin
  if self.UserFollowings(aUserID) then
    Result := self.FSelectedFollowings.AsSJSONObJect
  else
    Result := self.GenerateJsonError('No followers Found');
end;

function TJanuaCustomServerSwap.UserFollowJSON(aUserID: integer; aFollow: boolean = True): TJSONObject;
begin
  if self.UserFollow(aUserID, aFollow) then
    Result := JsonResult('True')
  else
    Result := self.GenerateJsonError(self.LastErrorMessage)

end;

function TJanuaCustomServerSwap.UserLikesList(aUserID: integer): boolean;
begin
  try
    self.CreateDataModule;
    try
      Result := self.InternalUserLikes(aUserID);
    finally
      self.DestroyDataModule(False);
    end;
  except
    on e: exception do
    begin
      Result := False;
      self.WriteError('TJanuaCustomServerSwap.UserSwapsList: ' + aUserID.ToString, e);
    end;
  end;
end;

function TJanuaCustomServerSwap.UserLikesListJson(aUserID: integer): TJSONObject;
begin
  try
    if self.UserLikesList(aUserID) then
    begin
      if self.UserLikesList(aUserID) then
        Result := self.FSelectedItems.AsSJSONObJect
      else
        Result := self.GenerateJsonError(self.LastErrorMessage)
    end
    else
    begin
      Result := self.GenerateJsonError(self.LastErrorMessage)
    end;
  except
    on e: exception do
    begin
      self.WriteError('TJanuaCustomServerSwap.UserLikesListJson: ' + aUserID.ToString, e);
      Result := Janua.Core.JSON.JsonObjectError(self.LastMessage);
    end;

  end;
end;

function TJanuaCustomServerSwap.UserProfile: boolean;
begin
  { TODO : Implement Method TJanuaCustomServerSwap.UserProfile }
  Result := False;
  self.LastErrorMessage := 'Method not yet implemented';
end;

function TJanuaCustomServerSwap.UserSwap(aSwapID: Int64; aUserID: integer): boolean;
begin
  self.CreateDataModule;
  try
    Result := self.InternalUserSwap(aSwapID, aUserID)
  finally
    self.DestroyDataModule(False);
  end;
end;

function TJanuaCustomServerSwap.UserSwapJson(aSwapID: Int64; aUserID: integer): TJSONObject;
begin
  if self.UserSwap(aSwapID, aUserID) then
  begin
    Result := self.FSelectedSwap.AsSJSONObJect;
  end
  else
  begin
    Result := self.GenerateJsonError(self.LastErrorMessage);
  end;
end;

function TJanuaCustomServerSwap.UserSwapsList(aUserID: integer): boolean;
begin
  try
    self.CreateDataModule;
    try
      Result := self.InternalUserSwapsList(aUserID);
    finally
      self.DestroyDataModule(False);
    end;
  except
    on e: exception do
    begin
      Result := False;
      self.WriteError('TJanuaCustomServerSwap.UserSwapsList: ' + aUserID.ToString, e);
    end;

  end;
end;

function TJanuaCustomServerSwap.UserSwapsListJson(aUserID: integer): TJSONObject;
begin
  if UserSwapsList(aUserID) then
    Result := self.UserSwaps.AsSJSONObJect
  else
    Result := self.GenerateJsonError(self.LastErrorMessage)

end;

{ TJanuaSwapDiscover }

function TJanuaSwapDiscover.AsSJSONObJect: TJSONObject;
begin
  Result := TJSONObject.Create;
  Result.AddPair('followers', Header.Followers.ToString());
  Result.AddPair('swaps', Header.swaps.ToString());
  Result.AddPair('following', Header.Following.ToString());
  Result.AddPair('likes', Header.likes.ToString());
  Result.AddPair('header', self.Header.AsJsonObject);
  // Result.AddPair('Profile', self.UserProfile.AsSJSONObJect);
  // Result.AddPair('NotificationList', self.Notifications.AsJSonObject);
  Result.AddPair('DiscoveredItems', self.DiscoveredItems.AsSJSONObJect);
end;

procedure TJanuaSwapDiscover.LoadFromDataset(dsDiscover, dsItems: TDataset);
begin
  // the objects are coming from External Procedures if needed it can be implemented...............
  self.Header.LoadFromDataset(dsDiscover);
  self.DiscoveredItems.LoadFromDataset(dsItems);
end;

{ TJanuaSwapEvent }

function TJanuaSwapEvent.AsJSONString: TJSONObject;
begin
  { id: Int64;
    Title: string;
    Description: string;
    DateTime: TDateTime;
    Address: string;
    lat: Double;
    lng: Double;
    Participants: integer;
  }

  Result := TJSONObject.Create;
  Result.AddPair('id', self.id.ToString());
  Result.AddPair('owner_id', self.OwnerID.ToString());
  Result.AddPair('image_url', self.ImageURL);
  Result.AddPair('title', self.title);
  Result.AddPair('description', self.description);
  Result.AddPair('date', Janua.Core.JSON.JsonEncodeDate(self.DateTime));
  Result.AddPair('hours', Lpad(self.Hour.ToString(), 2, '0'));
  Result.AddPair('mins', Lpad(self.Mins.ToString(), 2, '0'));
  Result.AddPair('address', self.Address);
  Result.AddPair('lat', JsonFloatToStr(self.lat, 7));
  Result.AddPair('lng', JsonFloatToStr(self.lng, 7));
  Result.AddPair('price', JsonFloatToStr(self.price, 2));
  Result.AddPair('currency', (self.currency_code));
  Result.AddPair('participants_count', self.ParticipantsCount.ToString());
  if Length(self.Participants.Followers) > 0 then
    Result.AddPair('participants', self.Participants.AsSJSONObJect);
  if self.Owner.id > 0 then
    Result.AddPair('owner', self.Owner.AsSJSONObJect);
end;

function TJanuaSwapEvent.AsSJSONObJect: TJSONObject;
begin
  Result := TJSONObject.Create;

  Result.AddPair('id', self.id.ToString());
  Result.AddPair('owner_id', self.OwnerID.ToString());
  Result.AddPair('image_url', self.ImageURL);
  Result.AddPair('title', self.title);
  Result.AddPair('description', self.description);
  Result.AddPair('date', Janua.Core.JSON.JsonEncodeDate(self.DateTime));
  Result.AddPair('hours', Lpad(self.Hour.ToString(), 2, '0'));
  Result.AddPair('mins', Lpad(self.Mins.ToString(), 2, '0'));
  Result.AddPair('address', self.Address);
  Result.AddPair('lat', JsonFloatToStr(self.lat, 7));
  Result.AddPair('lng', JsonFloatToStr(self.lng, 7));
  Result.AddPair('price', JsonFloatToStr(self.price, 2));
  Result.AddPair('currency', (self.currency_code));
  Result.AddPair('participates', Janua.Core.JSON.JanuaJsonBool(self.participates));
  Result.AddPair('participants_count', self.ParticipantsCount.ToString());

  if self.Owner.id > 0 then
    Result.AddPair('owner', self.Owner.AsSJSONObJect);

  // if Length(self.Participants.Followers) > 0 then
  Result.AddPair('participants', self.Participants.AsSJSONObJect);

end;

constructor TJanuaSwapEvent.Create(aCurrency: string);
begin
  self.lat := 0;
  self.lng := 0;
  if aCurrency <> '' then
    self.currency_code := aCurrency
  else
    self.currency_code := 'EUR';
  self.price := 0;
end;

procedure TJanuaSwapEvent.LoadFromDataset(dsSwapEvent, dsOwner: TDataset);
begin
  self.Owner.LoadFromDataset(dsOwner);
  self.LoadFromDataset(dsSwapEvent);
end;

procedure TJanuaSwapEvent.LoadFromDataset(dsSwapEvent, dsOwner, dsParticipants: TDataset);
begin
  self.Participants.LoadFromDataset(dsParticipants);
  self.ParticipantsCount := dsParticipants.RecordCount;
  self.LoadFromDataset(dsSwapEvent, dsOwner);
end;

function TJanuaSwapEvent.LoadFromHttpParams(aRequest: TWebRequest): boolean;
begin
  Result := True;
{$IFDEF WEBBROKER}
  if (HttpGetParamValue(aRequest, 'event_id') <> '') and IsNumeric(HttpGetParamValue(aRequest, 'event_id')) then
  begin
    self.id := HttpGetParamValue(aRequest, 'event_id').ToInteger();
  end;

  if HttpGetParamValue(aRequest, 'title') <> '' then
    self.title := HttpGetParamValue(aRequest, 'title')
  else
  begin
    Result := False;
    self.LastErrorMessage := 'Title is null';
  end;

  if HttpGetParamValue(aRequest, 'description') <> '' then
    self.description := HttpGetParamValue(aRequest, 'description')
  else
  begin
    Result := False;
    self.LastErrorMessage := 'description is null';
  end;

  if HttpGetParamValue(aRequest, 'image_url') <> '' then
    self.ImageURL := HttpGetParamValue(aRequest, 'image_url')
  else
  begin
    Result := False;
    self.LastErrorMessage := 'image_url is null';
  end;

  if HttpGetParamValue(aRequest, 'date') <> '' then
    self.DateTime := Janua.Core.JSON.JsonDecodeDate(HttpGetParamValue(aRequest, 'date'))
  else
  begin
    Result := False;
    self.LastErrorMessage := 'date is null';
  end;

  if HttpGetParamValue(aRequest, 'hours') <> '' then
    self.Hour := HttpGetParamValue(aRequest, 'hours').ToInteger
  else
  begin
    Result := False;
    self.LastErrorMessage := 'hours is null';
  end;

  if HttpGetParamValue(aRequest, 'mins') <> '' then
    self.Mins := HttpGetParamValue(aRequest, 'mins').ToInteger
  else
  begin
    Result := False;
    self.LastErrorMessage := 'mins is null';
  end;

  if HttpGetParamValue(aRequest, 'address') <> '' then
    self.Address := HttpGetParamValue(aRequest, 'address')
  else
  begin
    Result := False;
    self.LastErrorMessage := 'address is null';
  end;

  if HttpGetParamValue(aRequest, 'lat') <> '' then
    self.lat := HttpParseNumber(HttpGetParamValue(aRequest, 'lat'));

  if HttpGetParamValue(aRequest, 'lng') <> '' then
    self.lng := HttpParseNumber(HttpGetParamValue(aRequest, 'lng'));

  if HttpGetParamValue(aRequest, 'currency_code') <> '' then
    self.currency_code := (HttpGetParamValue(aRequest, 'currency_code'))
  else if self.currency_code = '' then
    self.currency_code := 'EUR';

  if HttpGetParamValue(aRequest, 'price') <> '' then
    self.price := HttpParseNumber(HttpGetParamValue(aRequest, 'price'));

{$ENDIF WEBBROKER}
end;

procedure TJanuaSwapEvent.LoadFromDataset(dsSwapEvent: TDataset);
begin
  self.OwnerID := dsSwapEvent.FieldByName('creator_id').AsInteger;
  self.id := dsSwapEvent.FieldByName('id').AsInteger;
  self.title := dsSwapEvent.FieldByName('title').AsWideString;
  self.description := dsSwapEvent.FieldByName('description').AsWideString;
  self.Address := dsSwapEvent.FieldByName('address').AsWideString;
  self.ImageURL := dsSwapEvent.FieldByName('main_picture_url').AsWideString;
  self.lat := dsSwapEvent.FieldByName('latitude').AsFloat;
  self.lng := dsSwapEvent.FieldByName('longitude').AsFloat;
  self.Hour := dsSwapEvent.FieldByName('hour').AsInteger;
  self.Mins := dsSwapEvent.FieldByName('mins').AsInteger;
  self.DateTime := dsSwapEvent.FieldByName('event_date').AsDateTime;
  self.price := dsSwapEvent.FieldByName('price').AsFloat;
  if self.ParticipantsCount = 0 then
    self.ParticipantsCount := dsSwapEvent.FieldByName('participants').AsInteger;
  self.participates := dsSwapEvent.FieldByName('participate').AsBoolean;
  self.currency_code := 'EUR';
end;

procedure TJanuaSwapEvent.SaveToDataset(dsSwapEvent: TDataset);
begin
  // SELECT id, , , , , ,
  // , ,
  // FROM swap.events where id = :event_id
  if (self.id = 0) or (self.id = dsSwapEvent.FieldByName('id').AsInteger) then
  begin
    dsSwapEvent.Edit;
    dsSwapEvent.FieldByName('creator_id').AsInteger := self.OwnerID;
    dsSwapEvent.FieldByName('title').AsWideString := self.title;
    dsSwapEvent.FieldByName('description').AsWideString := self.description;
    dsSwapEvent.FieldByName('address').AsWideString := self.Address;
    dsSwapEvent.FieldByName('main_picture_url').AsWideString := self.ImageURL;
    dsSwapEvent.FieldByName('latitude').AsFloat := self.lat;
    dsSwapEvent.FieldByName('longitude').AsFloat := self.lng;
    dsSwapEvent.FieldByName('hour').AsInteger := self.Hour;
    dsSwapEvent.FieldByName('mins').AsInteger := self.Mins;
    dsSwapEvent.FieldByName('event_date').AsDateTime := self.DateTime;
    dsSwapEvent.FieldByName('price').AsFloat := self.price;
    dsSwapEvent.Post;
  end;
end;

{ TJanuaSwapNotificationType }

function TJanuaSwapNotificationType.AsString: string;
begin
  { 1;"startfollow"
    2;"likes"
    3;"swap"
    4;"swapagree"
    5;"message"
    6;"swapclosed"
    7;"swaprevoked"
    8;"newevent"
    9;"eventreminder"
    10;"itemremoved"
    11;"itemadded"
    12;"eventparticipate"
  }
  case self.NotificationType of
    jsnSwap:
      Result := 'Swap';

    jsnSwapAgreement:
      Result := 'Swapagree';

    jsnMessage:
      Result := 'Message';

    jsnFollowing:
      Result := 'Following';

    jsnLike:
      Result := 'Like';

    jsnSwapClosed:
      Result := 'Swapclosed';

    jsnSwapRevoked:
      Result := 'Swaprevoked';

    jsnNewEvent:
      Result := 'Newevent';

    jsnEventReminder:
      Result := 'Eventreminder';

    jsnItemRemoved:
      Result := 'Itemremoved';

    jsnItemAdded:
      Result := 'Itemadded';

    jsnEventParticipate:
      Result := 'Eventparticipate';

    jsnEventCancelled:
      Result := 'Eventcancelled';

  end;
end;

procedure TJanuaSwapNotificationType.LoadFromDataset(dsNotification: TDataset);
begin
  { 1;"startfollow"
    2;"likes"
    3;"swap"
    4;"swapagree"
    5;"message"
    6;"swapclosed"
    7;"swaprevoked"
    8;"newevent"
    9;"eventreminder"
    10;"itemremoved"
    11;"itemadded"
    12;"eventparticipate"
    13;"eventcancelled"

    TJanuaSwapNotificationTypeList = (jsnSwap, jsnLike, jsnSwapAgreement, jsnMessage, jsnFollowing,
    jsnSwapClosed, jsnSwapRevoked, jsnNewEvent, jsnEventReminder, jsnItemRemoved, jsnItemAdded,
    jsnEventParticipate);
  }

  case dsNotification.FieldByName('type_id').AsInteger of
    1:
      self.NotificationType := jsnFollowing;
    2:
      self.NotificationType := jsnLike;
    3:
      self.NotificationType := jsnSwap;
    4:
      self.NotificationType := jsnSwapAgreement;
    5:
      self.NotificationType := jsnMessage;
    6:
      self.NotificationType := jsnSwapClosed;
    7:
      self.NotificationType := jsnSwapRevoked;
    8: // newevent
      self.NotificationType := jsnNewEvent;
    9: // eventreminder
      self.NotificationType := jsnEventReminder;
    10: // itemremoved
      self.NotificationType := jsnItemRemoved;
    11: // jsnItemAdded
      self.NotificationType := jsnItemAdded;
    12: // eventparticipate
      self.NotificationType := jsnEventParticipate;
    13:
      self.NotificationType := jsnEventCancelled;
  end;
end;

procedure TJanuaSwapNotificationType.SetFromString(aString: string);
begin

end;

{ TJanuaSwapNotifications }

function TJanuaSwapNotifications.AsJsonObject: TJSONObject;
var
  aJSONArray: TJsonArray;
  aNotification: TJanuaSwapNotification;
begin
  Result := TJSONObject.Create;
  aJSONArray := TJsonArray.Create();
  if Length(self.Notifications) > 0 then
  begin
    for aNotification in self.Notifications do
    begin
      aJSONArray.AddElement(aNotification.AsJsonObject);
    end;
  end;
  Result.AddPair('Result', 'True');
  Result.AddPair('total', self.total.ToString());
  Result.AddPair('total_unread', self.total_unread.ToString());
  Result.AddPair('pages', self.pages.ToString());
  Result.AddPair('count', self.count.ToString());
  Result.AddPair('unread', self.unread.ToString());

  Result.AddPair('header', self.Header.AsJsonObject);

  case ntype of
    jsnNotification:
      Result.AddPair('notifications', aJSONArray);
    jsnFeed:
      Result.AddPair('feeds', aJSONArray);
  end;

end;

procedure TJanuaSwapNotifications.LoadFromDataset(dsNotifications: TDataset);
begin
  self.count := 0;
  self.unread := 0;

  SetLength(self.Notifications, 0);
  if dsNotifications.RecordCount > 0 then
  begin
    dsNotifications.First;
    while not dsNotifications.Eof do
    begin
      SetLength(self.Notifications, Length(self.Notifications) + 1);
      self.Notifications[Length(self.Notifications) - 1].LoadFromDataset(dsNotifications);
      Inc(self.count);
      if not self.Notifications[Length(self.Notifications) - 1].IsRead then
        Inc(self.unread);
      dsNotifications.Next;
    end;
  end;
end;

constructor TJanuaSwapNotifications.Create(aNtype: TJanuaSwapNotificationsType);
begin
  self.ntype := aNtype;
end;

procedure TJanuaSwapNotifications.LoadFromDataset(dsNotifications, dsTotals: TDataset);
begin
  self.Header.LoadFromDataset(dsTotals);

  if self.ntype = jsnFeed then
  begin
    self.total := self.Header.FeedsCount;
    self.total_unread := self.Header.FeedsUnread;
  end
  else
  begin
    self.total := self.Header.NotificationCount;
    self.total_unread := self.Header.NotificationUnread;
  end;

  self.pages := Trunc(self.total / 20);
  if Trunc(self.total / 20) <> (self.total / 20) then
    self.pages := self.pages + 1;

  self.LoadFromDataset(dsNotifications);
end;

{ TJanuaSwapNotification }

function TJanuaSwapNotification.AsJsonObject: TJSONObject;
begin
  Result := TJSONObject.Create;
  Result.AddPair('id', self.id.ToString());
  Result.AddPair('user_id', self.UserID.ToString());
  Result.AddPair('date', Janua.Core.JSON.JsonEncodeDate(self.Date));
  Result.AddPair('Read', JanuaJsonBool(self.IsRead));
  Result.AddPair('title', self.title);
  Result.AddPair('username', self.UserName);

  Result.AddPair('type', self.NotificationType.AsString);

  Result.AddPair('other_user_id', self.OtherUserID.ToString());
  Result.AddPair('other_user_url', self.OtherUserImageUrl);
  Result.AddPair('isfollowed', JanuaJsonBool(self.IsFollowed));
  Result.AddPair('isfollowing', JanuaJsonBool(self.IsFollowing));

  Result.AddPair('swap_id', self.SwapID.ToString());
  Result.AddPair('swap_item_id', self.SwapItemID.ToString());
  Result.AddPair('user_item_id', self.UserItemID.ToString());
  Result.AddPair('user_item_des', self.UserItemDescription);
  Result.AddPair('swap_image_url', self.SwapItemImageUrl);
  Result.AddPair('useritem_image_url', self.UserItemImageUrl);

  Result.AddPair('event_id', self.EventID.ToString());
  Result.AddPair('event_name', self.EventName);
  Result.AddPair('event_date', JsonEncodeDate(EventDate));
  Result.AddPair('event_hour', self.EventHours.ToString());
  Result.AddPair('event_mins', self.EventMins.ToString());
  Result.AddPair('event_address', self.EventAddress);

end;

procedure TJanuaSwapNotification.LoadFromDataset(dsNotifications: TDataset);
begin
  self.id := dsNotifications.FieldByName('id').AsLargeInt;
  self.UserID := dsNotifications.FieldByName('user_id').AsInteger;
  self.Date := dsNotifications.FieldByName('insert_date').AsDateTime;
  self.title := dsNotifications.FieldByName('title').AsString;
  self.OtherUserID := dsNotifications.FieldByName('other_user_id').AsInteger;
  self.OtherUserImageUrl := dsNotifications.FieldByName('user_avatar_img').AsString;
  self.UserItemID := dsNotifications.FieldByName('user_item_id').AsLargeInt;
  self.UserItemImageUrl := dsNotifications.FieldByName('user_item_image').AsString;
  self.SwapItemID := dsNotifications.FieldByName('swap_item_id').AsLargeInt;
  self.SwapItemImageUrl := dsNotifications.FieldByName('swap_item_image').AsString;
  self.UserName := dsNotifications.FieldByName('user_name').AsString;
  self.SwapID := dsNotifications.FieldByName('swap_id').AsLargeInt;
  self.IsRead := dsNotifications.FieldByName('nread').AsBoolean;
  self.IsFollowing := dsNotifications.FieldByName('isfollowing').AsBoolean;
  self.IsFollowed := dsNotifications.FieldByName('isfollowed').AsBoolean;
  self.NotificationType.LoadFromDataset(dsNotifications);

  self.EventID := dsNotifications.FieldByName('event_id').AsInteger;
  self.EventName := dsNotifications.FieldByName('event_name').AsWideString;
  self.EventDate := dsNotifications.FieldByName('event_date').AsDateTime;
  self.EventAddress := dsNotifications.FieldByName('event_address').AsWideString;
  self.EventUrl := dsNotifications.FieldByName('event_picture_url').AsWideString;
  self.EventHours := dsNotifications.FieldByName('event_hour').AsInteger;
  self.EventMins := dsNotifications.FieldByName('event_mins').AsInteger;

  self.UserItemDescription := dsNotifications.FieldByName('item_description').AsWideString;

end;

{ TJanuaSwapItems }

function TJanuaSwapItems.AsSJSONObJect: TJSONObject;
var
  aJSONArray: TJsonArray;
  aItem: TJanuaSwapItem;
begin
  Result := TJSONObject.Create;
  aJSONArray := TJsonArray.Create();
  if Length(self.Items) > 0 then
  begin
    for aItem in Items do
    begin
      aJSONArray.AddElement(aItem.AsSJSONObJect);
    end;
  end;
  Result.AddPair('Result', 'True');
  // Result.AddPair('header', self.Header.AsJsonObject);
  Result.AddPair('Items', aJSONArray);

end;

procedure TJanuaSwapItems.Clear;
begin
  SetLength(self.Items, 0);
end;

procedure TJanuaSwapItems.LoadFromDataset(dsItems, dsProfile: TDataset);
begin
  self.LoadFromDataset(dsItems);
  self.Header.LoadFromDataset(dsProfile);
end;

procedure TJanuaSwapItems.LoadFromDataset(dsItems, dsProfile, dsImages: TDataset);
begin
  SetLength(self.Items, 0);
  self.Header.LoadFromDataset(dsProfile);
  self.Header.LoadFromDataset(dsProfile);
  if dsItems.RecordCount > 0 then
  begin
    dsItems.First;
    while not dsItems.Eof do
    begin
      SetLength(self.Items, Length(self.Items) + 1);
      self.Items[Length(self.Items) - 1].LoadFromDataset(dsItems, dsImages);
      dsItems.Next;
    end;
  end;
end;

procedure TJanuaSwapItems.LoadFromDataset(dsItems: TDataset);
begin
  SetLength(self.Items, 0);
  if dsItems.RecordCount > 0 then
  begin
    dsItems.First;
    while not dsItems.Eof do
    begin
      SetLength(self.Items, Length(self.Items) + 1);
      self.Items[Length(self.Items) - 1].LoadFromDataset(dsItems);
      dsItems.Next;
    end;
  end;
end;

{ TJanuaSwapImage }

function TJanuaSwapImage.AsSJSONObJect: TJSONObject;
begin
  { id: int64;
    item_id: int64;
    title: string;
    description: string;
    image_url: string;
    insert_date: TDateTime; }
  Result := TJSONObject.Create;
  Result.AddPair('id', self.id.ToString());
  Result.AddPair('insert_date', JsonEncodeDate(self.insert_date));
  Result.AddPair('image_url', self.image_url);
  Result.AddPair('item_id', self.item_id.ToString());
end;

procedure TJanuaSwapImage.LoadFromDataset(dsImages: TDataset);
begin
  {
    id bigint NOT NULL,
    url character varying(1024),
    title character varying(128),
    item_id bigint,
    insert_date timestamp with time zone
  }
  self.id := dsImages.FieldByName('id').AsLargeInt;
  self.image_url := dsImages.FieldByName('url').AsString;
  self.title := dsImages.FieldByName('title').AsString;
  self.item_id := dsImages.FieldByName('item_id').AsLargeInt;
  self.insert_date := dsImages.FieldByName('insert_date').AsDateTime;
end;

{ TJanuaSwapImages }

function TJanuaSwapImages.AsSJSONObJect: TJSONObject;
var
  a: TJsonArray;
  i: integer;
begin
  Result := TJSONObject.Create;
  Result.AddPair('Result', 'True');
  Result.AddPair('count', self.count.ToString());
  if Length(self.Images) > 0 then
  begin
    a := TJsonArray.Create;
    for i := 0 to Length(self.Images) - 1 do
      a.AddElement(self.Images[i].AsSJSONObJect);
    Result.AddPair('images', a);
  end;
end;

procedure TJanuaSwapImages.Clear;
begin
  SetLength(self.Images, 0);
end;

procedure TJanuaSwapImages.LoadFromDataset(dsImages: TDataset);
begin
  SetLength(self.Images, 0);
  if Assigned(dsImages) and dsImages.Active and (dsImages.RecordCount > 0) then
  begin
    dsImages.First;
    while not dsImages.Eof do
    begin
      SetLength(self.Images, Length(self.Images) + 1);
      self.Images[Length(self.Images) - 1].LoadFromDataset(dsImages);
      dsImages.Next;
    end
  end;
end;

procedure TJanuaSwapImages.ArrayLength(aLength: integer);
begin
  SetLength(self.Images, aLength);
  self.count := aLength;
end;

{ TJanuaFollowers }

function TJanuaFollowers.AsSJSONObJect: TJSONObject;
var
  a: TJsonArray;
  i: integer;
begin
  Result := TJSONObject.Create;
  a := TJsonArray.Create;
  Result.AddPair('Result', 'True');
  if self.User.id > 0 then
    Result.AddPair('user', self.User.AsSJSONObJect);
  Result.AddPair('count', self.count.ToString());
  if Length(self.Followers) > 0 then
  begin
    for i := 0 to Length(self.Followers) - 1 do
      a.AddElement(self.Followers[i].AsSJSONObJect);
  end;

  case self.RecordType of
    jutFollowers:
      Result.AddPair('followers', a);
    jutFollowings:
      Result.AddPair('followers', a);
    jutUsers:
      Result.AddPair('users', a);
  else
    Result.AddPair('followers', a);
  end;

end;

constructor TJanuaFollowers.Create(aRecordType: TJanuaSwapUserTypes);
begin
  self.RecordType := aRecordType;
end;

procedure TJanuaFollowers.LoadFromDataset(dsUser, dsFollowers: TDataset);
begin
  self.User.LoadFromDataset(dsUser);
  self.LoadFromDataset(dsFollowers);
end;

procedure TJanuaFollowers.LoadFromDataset(dsFollowers: TDataset);
begin
  SetLength(self.Followers, 0);
  if Assigned(dsFollowers) and dsFollowers.Active and (dsFollowers.RecordCount > 0) then
  begin
    dsFollowers.First;
    while not dsFollowers.Eof do
    begin
      SetLength(self.Followers, Length(self.Followers) + 1);
      self.Followers[Length(self.Followers) - 1].LoadFromDataset(dsFollowers);
      dsFollowers.Next;
    end
  end;

  self.count := Length(self.Followers);
end;

{ TJanuaSwaps }

function TJanuaSwaps.AsSJSONObJect: TJSONObject;
var
  aItem: TJanuaSwap;
  aArray: TJsonArray;
begin
  Result := TJSONObject.Create;
  Result.AddPair('Result', 'True');
  Result.AddPair('header', self.Header.AsJsonObject);
  aArray := TJsonArray.Create;
  for aItem in self.swaps do
    aArray.AddElement(aItem.AsSJSONObJect);
  // Result.AddPair('count', TJsonNumber.Create(self.count));
  Result.AddPair('count', self.count.ToString());
  Result.AddPair('swaps', aArray);
end;

procedure TJanuaSwaps.Clear;
begin
  SetLength(self.swaps, 0);
  self.count := 0;
end;

procedure TJanuaSwaps.LoadFromDataset(dsSwaps, dsProfile: TDataset);
begin
  self.Header.LoadFromDataset(dsProfile);
  self.LoadFromDataset(dsSwaps);
end;

procedure TJanuaSwaps.LoadFromDataset(dsSwaps: TDataset);
begin
  SetLength(self.swaps, 0);
  if Assigned(dsSwaps) and dsSwaps.Active and (dsSwaps.RecordCount > 0) then
  begin
    dsSwaps.First;
    while not dsSwaps.Eof do
    begin
      SetLength(self.swaps, Length(self.swaps) + 1);
      self.swaps[Length(self.swaps) - 1].LoadFromDataset(dsSwaps);
      dsSwaps.Next;
    end
  end;

  self.count := Length(self.swaps);
end;

{ TJanuaSwap }

function TJanuaSwap.AsSJSONObJect: TJSONObject;
begin
  { swap_id: int64;
    fromItemID: int64;
    fromItemImage: string;
    toItemID: int64;
    toItemImage: string;
    toUserID: integer;
    completed: boolean;
    datestarted: TDateTime;
    dateended: TDateTime; }
  Result := TJSONObject.Create;
  // Result.AddPair('swap_id', TJsonNumber.Create(swap_id));
  Result.AddPair('Result', 'True');
  Result.AddPair('swap_id', swap_id.ToString());
  Result.AddPair('user_id', self.UserID.ToString());
  Result.AddPair('from_user_id', self.FromUserID.ToString());
  Result.AddPair('from_item_id', fromItemID.ToString());
  Result.AddPair('from_item_url', fromItemImage);
  Result.AddPair('to_item_id', toItemID.ToString());
  Result.AddPair('to_item_url', toItemImage);
  // Result.AddPair('to_user_id', TJsonNumber.Create(self.toUserID));
  Result.AddPair('to_user_id', self.ToUserID.ToString());
  Result.AddPair('to_user_name', self.toUserName);
  Result.AddPair('to_user_image', self.toUserImage);
  Result.AddPair('completed', Janua.Core.JSON.JanuaJsonBool(completed));
  Result.AddPair('date_started', Janua.Core.JSON.JsonEncodeDateTime(self.datestarted));
  Result.AddPair('canclose', Janua.Core.JSON.JanuaJsonBool(canagree));
  Result.AddPair('status', self.Status.AsString);
end;

procedure TJanuaSwap.LoadFromDataset(dsSwaps: TDataset);
begin
  self.swap_id := dsSwaps.FieldByName('swap_id').AsLargeInt;
  self.ToUserID := dsSwaps.FieldByName('other_user_id').AsInteger;
  self.toUserName := dsSwaps.FieldByName('other_user').AsWideString;
  self.fromItemID := dsSwaps.FieldByName('item_id').AsLargeInt;
  self.toItemID := dsSwaps.FieldByName('other_item_id').AsLargeInt;
  self.toUserName := dsSwaps.FieldByName('other_user').AsWideString;
  self.fromItemImage := dsSwaps.FieldByName('item_image_url').AsWideString;
  self.toItemImage := dsSwaps.FieldByName('other_image_url').AsWideString;
  self.datestarted := dsSwaps.FieldByName('insert_date').AsDateTime;
  self.UserID := dsSwaps.FieldByName('user_id').AsInteger;
  self.FromUserID := dsSwaps.FieldByName('from_user_id').AsInteger;
  self.Status.LoadFromDataset(dsSwaps);
  self.canagree := dsSwaps.FieldByName('canclose').AsBoolean;
  self.toUserImage := dsSwaps.FieldByName('other_user_img').AsWideString;
end;

{ TJanuaSwapForm }

function TJanuaSwapForm.AsSJSONObJect: TJSONObject;
begin
  Result := TJSONObject.Create;
  Result.AddPair('Result', 'True');
  Result.AddPair('UserItem', self.UserItem.AsSJSONObJect);
  Result.AddPair('OtherUser', self.OtherUser.AsSJSONObJect);
  Result.AddPair('OtherItems', self.OtherItems.AsSJSONObJect);
end;

procedure TJanuaSwapForm.LoadFromDataset(dsItem, dsSmallUser, dsItems: TDataset);
begin
  self.UserItem.LoadFromDataset(dsItem);
  self.OtherUser.LoadFromDataset(dsSmallUser);
  self.OtherItems.LoadFromDataset(dsItems);
end;

{ TJanuaSwapItemLikes }

function TJanuaSwapItemLikes.AsSJSONObJect: TJSONObject;
begin
  Result := TJSONObject.Create;
  Result.AddPair('Result', 'True');
  Result.AddPair('Item', self.Item.AsSJSONObJect);
  Result.AddPair('Likes', self.likes.AsSJSONObJect);
end;

procedure TJanuaSwapItemLikes.LoadFromDataset(dsFollowers, dsItem: TDataset);
begin
  self.Item.LoadFromDataset(dsItem);
  self.likes.LoadFromDataset(dsFollowers);
end;

{ TJanuaSwapStatusType }

function TJanuaSwapStatusType.AsInteger: Int64;
begin
  Result := -1;
  // -1 means undefined status or just an error.............

  case self.StatusType of
    jssStarted:
      Result := 1;

    jssDeleted:
      Result := 0;

    jssClosed:
      Result := 9;

    jssAgreed:
      Result := 3;
  end;
end;

function TJanuaSwapStatusType.AsString: string;
begin
  // , , ,

  case self.StatusType of
    jssStarted:
      Result := 'started';

    jssDeleted:
      Result := 'deleted';

    jssClosed:
      Result := 'closed';

    jssAgreed:
      Result := 'agreed';
  end;
end;

procedure TJanuaSwapStatusType.LoadFromDataset(dsSwap: TDataset);
begin
  { 1 = started
    0 = deleted
    9 = closed
    3 = agreed }
  case dsSwap.FieldByName('status').AsInteger of
    0:
      self.StatusType := jssDeleted;
    9:
      self.StatusType := jssClosed;
    1:
      self.StatusType := jssStarted;
    3:
      self.StatusType := jssAgreed;
  end;
end;

procedure TJanuaSwapStatusType.SetFromString(aString: string);
begin
  if LowerCase(aString) = 'deleted' then
    self.StatusType := jssDeleted
  else if LowerCase(aString) = 'started' then
    self.StatusType := jssStarted
  else if LowerCase(aString) = 'closed' then
    self.StatusType := jssClosed
  else if LowerCase(aString) = 'agreed' then
    self.StatusType := jssAgreed
  else
    raise exception.Create('Swap Status type not recognized');

end;

{ TJanuaSwapActionType }

function TJanuaSwapActionType.AsInteger: Int64;
begin
  // action = (undo, agree, close, delete)
  // action =(0, 1, 9, -1)

  Result := JanuaSwapActionInteger[StatusType];
end;

function TJanuaSwapActionType.AsString: string;
begin
  Result := JanuaSwapActionString[self.StatusType];
end;

procedure TJanuaSwapActionType.SetFromString(aString: string);
begin
  if LowerCase(aString) = 'delete' then
    self.StatusType := jsaDelete
  else if LowerCase(aString) = 'undo' then
    self.StatusType := jsaUndo
  else if LowerCase(aString) = 'close' then
    self.StatusType := jsaClose
  else if LowerCase(aString) = 'agree' then
    self.StatusType := jsaAgree
  else
    self.StatusType := jsaNotSet;

end;

{ TJanuaSwapEvents }

function TJanuaSwapEvents.AsSJSONObJect: TJSONObject;
var
  vEvent: Janua.Core.Swap.TJanuaSwapEvent;
  vArray: TJsonArray;
begin
  Result := TJSONObject.Create;
  Result.AddPair('Result', 'True');
  Result.AddPair('count', Length(self.Events).ToString());
  Result.AddPair('notifications', self.Header.AsJsonObject);
  vArray := TJsonArray.Create;

  for vEvent in self.Events do
  begin
    vArray.AddElement(vEvent.AsSJSONObJect);
  end;

  Result.AddPair('events', vArray);
end;

procedure TJanuaSwapEvents.LoadFromDataset(dsSwapEvent: TDataset);
begin
  self.count := 0;
  SetLength(Events, 0);
  if Assigned(dsSwapEvent) and (dsSwapEvent.RecordCount > 0) then
  begin
    dsSwapEvent.First;
    while not dsSwapEvent.Eof do
    begin
      SetLength(Events, Length(Events) + 1);
      Events[Length(Events) - 1].LoadFromDataset(dsSwapEvent);
      dsSwapEvent.Next;
    end;
  end;

end;

procedure TJanuaSwapEvents.LoadFromDataset(dsSwapEvent, dsProfile: TDataset);
begin
  self.LoadFromDataset(dsSwapEvent);
  self.Header.LoadFromDataset(dsProfile);
end;

{ TJanuaSwapMessage }

function TJanuaSwapMessage.AsSJSONObJect: TJSONObject;
begin
  Result := TJSONObject.Create;
  Result.AddPair('id', self.id.ToString());
  Result.AddPair('text', self.Text);
  Result.AddPair('image_url', self.ImageURL);
  Result.AddPair('sent', Janua.Core.JSON.JsonEncodeDateTime(self.Created));
  Result.AddPair('from_user_id', self.FromUserID.ToString());
  Result.AddPair('from_user_image_url', self.FromUserImageURL);
  Result.AddPair('to_user_id', self.ToUserID.ToString());
end;

function TJanuaSwapMessage.AsSJSONString: TJSONObject;
begin
  Result := TJSONObject.Create;
  Result.AddPair('id', self.id.ToString());
  Result.AddPair('text', self.Text);
  Result.AddPair('image_url', self.ImageURL);
  Result.AddPair('sent', Janua.Core.JSON.JsonEncodeDateTime(self.Created));
  Result.AddPair('from_user_id', self.FromUserID.ToString());
  Result.AddPair('to_user_id', self.ToUserID.ToString());
end;

procedure TJanuaSwapMessage.LoadFromDataset(dsMessages: TDataset);
begin
  self.id := dsMessages.FieldByName('message_id').AsLargeInt;
  self.Created := dsMessages.FieldByName('insert_date').AsDateTime;
  self.Text := dsMessages.FieldByName('message').AsWideString;
  self.ImageURL := dsMessages.FieldByName('image_url').AsWideString;
  self.FromUserID := dsMessages.FieldByName('from_user_id').AsInteger;
  self.ToUserID := dsMessages.FieldByName('to_user_id').AsInteger;
  self.FromUserImageURL := dsMessages.FieldByName('user_image_url').AsWideString;

end;

function TJanuaSwapMessage.LoadFromHttpParam(aRequest: TWebRequest): boolean;
begin
  Result := True;
{$IFDEF MSWINDOWS}
  if (HttpGetParamValue(aRequest, 'swap_id') <> '') and IsNumeric(HttpGetParamValue(aRequest, 'swap_id')) then
  begin
    self.swap_id := HttpGetParamValue(aRequest, 'swap_id').ToInteger();
  end
  else
  begin
    Result := False;
    self.LastErrorMessage := 'Swap id not set or Swap ID is not a number';
  end;

  self.Text := HttpGetParamValue(aRequest, 'text');

  self.ImageURL := HttpGetParamValue(aRequest, 'image_url');

  if (self.ImageURL = '') and (self.Text = '') then
  begin
    Result := False;
    self.LastErrorMessage := 'image_url and text not set, message is empty';
  end;

{$ENDIF MSWINDOWS}
end;

{ TJanuaSwapMessages }

function TJanuaSwapMessages.AsSJSONObJect: TJSONObject;
var
  vMessage: Janua.Core.Swap.TJanuaSwapMessage;
  vArray: TJsonArray;
begin
  Result := TJSONObject.Create;
  Result.AddPair('Result', 'True');
  Result.AddPair('count', Length(self.Messages).ToString());
  vArray := TJsonArray.Create;

  for vMessage in self.Messages do
  begin
    vArray.AddElement(vMessage.AsSJSONObJect);
  end;

  Result.AddPair('messages', vArray);
end;

procedure TJanuaSwapMessages.LoadFromDataset(dsMessages: TDataset);
begin
  self.count := 0;
  SetLength(self.Messages, 0);
  if Assigned(dsMessages) and (dsMessages.RecordCount > 0) then
  begin
    dsMessages.First;
    while not dsMessages.Eof do
    begin
      SetLength(Messages, Length(Messages) + 1);
      Messages[Length(Messages) - 1].LoadFromDataset(dsMessages);
      dsMessages.Next;
    end;
  end;
end;

{ TJanuaSwapSettings }

function TJanuaSwapSettings.AsSJSONObJect: TJSONObject;
begin
  Result := TJSONObject.Create;
  Result.AddPair('Result', 'True');
  Result.AddPair('followingyou', Janua.Core.JSON.JanuaJsonBool(self.followingyou));
  Result.AddPair('likewantobject', Janua.Core.JSON.JanuaJsonBool(self.likewantobject));
  Result.AddPair('eventupdates', Janua.Core.JSON.JanuaJsonBool(self.eventupdates));
  Result.AddPair('followaddeditem', Janua.Core.JSON.JanuaJsonBool(self.followaddeditem));
  Result.AddPair('privateaccount', Janua.Core.JSON.JanuaJsonBool(self.privateaccount));
  Result.AddPair('subcriptionvalid', Janua.Core.JSON.JsonEncodeDate(self.subcripionvalid));
  Result.AddPair('privacypolicy', Janua.Core.JSON.JanuaJsonBool(self.privacypolici));
  Result.AddPair('termsofservice', Janua.Core.JSON.JanuaJsonBool(self.termsofservice));
end;

procedure TJanuaSwapSettings.LoadFromDataset(dsImages: TDataset);
begin
  self.followingyou := (dsImages.FieldByName('followingyou').AsBoolean);
  self.likewantobject := (dsImages.FieldByName('likewantobject').AsBoolean);
  self.eventupdates := (dsImages.FieldByName('eventupdates').AsBoolean);
  self.followaddeditem := (dsImages.FieldByName('followaddeditem').AsBoolean);
  self.privateaccount := (dsImages.FieldByName('privateaccount').AsBoolean);
  self.subcripionvalid := (dsImages.FieldByName('subcriptionvalid').AsDateTime);
  self.privacypolici := (dsImages.FieldByName('privacypolicy').AsBoolean);
  self.termsofservice := (dsImages.FieldByName('termsofservice').AsBoolean);
end;

function TJanuaSwapSettings.LoadFromHttpParam(aRequest: TWebRequest): boolean;
begin
{$IFDEF MSWINDOWS}
  if (HttpGetParamValue(aRequest, 'followingyou')) <> '' then
    self.followingyou := JanuaBoolJson(HttpGetParamValue(aRequest, 'followingyou'));
  if (HttpGetParamValue(aRequest, 'likewantobject')) <> '' then
    self.likewantobject := JanuaBoolJson(HttpGetParamValue(aRequest, 'likewantobject'));
  if (HttpGetParamValue(aRequest, 'eventupdates')) <> '' then
    self.eventupdates := JanuaBoolJson(HttpGetParamValue(aRequest, 'eventupdates'));
  if (HttpGetParamValue(aRequest, 'followaddeditem')) <> '' then
    self.followaddeditem := JanuaBoolJson(HttpGetParamValue(aRequest, 'followaddeditem'));
  if (HttpGetParamValue(aRequest, 'privateaccount')) <> '' then
    self.privateaccount := JanuaBoolJson(HttpGetParamValue(aRequest, 'privateaccount'));
  if (HttpGetParamValue(aRequest, 'subcriptionvalid')) <> '' then
    self.subcripionvalid := JsonDecodeDate(HttpGetParamValue(aRequest, 'subcriptionvalid'));
  self.privacypolici := JanuaBoolJson(HttpGetParamValue(aRequest, 'privacypolicy'));
  self.termsofservice := JanuaBoolJson(HttpGetParamValue(aRequest, 'termsofservice'));
{$ENDIF MSWINDOWS}
  Result := True;
end;

function TJanuaSwapSettings.SaveToDataset(dsImages: TDataset): boolean;
begin
  Result := True;
  Try
    dsImages.Edit;
    dsImages.FieldByName('followingyou').AsBoolean := self.followingyou;
    dsImages.FieldByName('likewantobject').AsBoolean := likewantobject;
    dsImages.FieldByName('eventupdates').AsBoolean := self.eventupdates;
    dsImages.FieldByName('followaddeditem').AsBoolean := self.followaddeditem;
    dsImages.FieldByName('privateaccount').AsBoolean := privateaccount;
    dsImages.FieldByName('subcriptionvalid').AsDateTime := subcripionvalid;
    dsImages.FieldByName('privacypolicy').AsBoolean := privacypolici;
    dsImages.FieldByName('termsofservice').AsBoolean := self.termsofservice;
  except
    on e: exception do
    begin
      Result := False;
    end;

  End;
end;

{ TJanuaSwapRadar }

function TJanuaSwapRadar.AsSJSONObJect: TJSONObject;
var
  a: array of TJsonArray;
  i, j: integer;
begin
  Result := TJSONObject.Create;
  Result.AddPair('Result', 'True');
  Result.AddPair('count', self.count.ToString());
  Result.AddPair('user', self.User.AsSJSONObJect);

  for j := 0 to 4 do
  begin
    a[j] := TJsonArray.Create;
    if Length(self.Followers) > 0 then
    begin
      for i := 0 to Length(self.Followers) - 1 do
        if self.Followers[i].Range = j then
          a[j].AddElement(self.Followers[i].AsSJSONObJect);
    end;
    Result.AddPair('range' + j.ToString(), a[j]);
  end;

end;

procedure TJanuaSwapRadar.LoadFromDataset(dsUser, dsFollowers: TDataset);
begin
  SetLength(self.Followers, 0);
  if Assigned(dsFollowers) and dsFollowers.Active and (dsFollowers.RecordCount > 0) then
  begin
    dsFollowers.First;
    while not dsFollowers.Eof do
    begin
      SetLength(self.Followers, Length(self.Followers) + 1);
      self.Followers[Length(self.Followers) - 1].LoadFromDataset(dsFollowers);
      dsFollowers.Next;
    end
  end;

  self.count := Length(self.Followers);
end;

{ TJanuaDiscoverHeader }

function TJanuaDiscoverHeader.AsJsonObject: TJSONObject;
begin

  Result := TJSONObject.Create;
  Result.AddPair('followers', self.Followers.ToString());
  Result.AddPair('following', self.Following.ToString());

  Result.AddPair('swaps', self.swaps.ToString());
  Result.AddPair('swaps_active', self.swapsactive.ToString());

  Result.AddPair('likes', self.likes.ToString());

  Result.AddPair('notifications', self.NotificationCount.ToString());
  Result.AddPair('unread', self.NotificationUnread.ToString());

  Result.AddPair('feeds', self.FeedsCount.ToString());
  Result.AddPair('feeds_unread', self.FeedsUnread.ToString());

end;

procedure TJanuaDiscoverHeader.LoadFromDataset(dsProfile: TDataset);
begin

  self.swaps := dsProfile.FieldByName('swaps').AsInteger;
  self.swapsactive := dsProfile.FieldByName('swapsactive').AsInteger;

  self.Followers := dsProfile.FieldByName('followers').AsInteger;
  self.Following := dsProfile.FieldByName('followings').AsInteger;

  self.likes := dsProfile.FieldByName('likes').AsInteger;

  self.FeedsCount := dsProfile.FieldByName('feeds').AsInteger;
  self.FeedsUnread := dsProfile.FieldByName('feedsunread').AsInteger;

  self.NotificationCount := dsProfile.FieldByName('notifications').AsInteger;
  self.NotificationUnread := dsProfile.FieldByName('notificationsunread').AsInteger;

end;

end.
