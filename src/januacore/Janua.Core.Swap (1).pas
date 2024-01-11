unit Janua.Core.Swap;

interface

uses

{$IFDEF fpc}
   LResources, Classes, SysUtils, IOUtils, DB
{$ELSE}
     System.SysUtils, System.IOUtils, Datasnap.DBClient, Data.DB,
   System.Variants, System.Classes, System.JSON,
{$ENDIF}
   // ******************* Janua Core Functions *****************************
   Janua.Core.Mail, Janua.Core.Classes, Janua.Core.Http, Janua.Core.Users,
   Janua.Core.System, Janua.Core.Functions;

type
   TJanuaSwapNotificationTypeList = (jsnSwap, jsnSwapAgreement, jsnMessage, jsnFollowing);

type
   TJanuaSwapNotificationType = Record
      NotificationType: TJanuaSwapNotificationTypeList;
   public
      function AsString: string;
   End;

type
   TJanuaSwapItem = record
      id: int64;
      owner_id: integer;
      title: string;
      description: string;
      image_url: string;
      available: boolean;
      swapped: boolean;
      likes: integer;

   public
      function AsSJSONObJect: TJSONObject;
      procedure LoadFromDataset(dsItems: TDataset);
   end;

type
   TJanuaSwapItems = record
      Items: array of TJanuaSwapItem;
      count: integer;
   public
      function AsSJSONObJect: TJSONObject;
      procedure LoadFromDataset(dsItems: TDataset);
      procedure Clear;
   end;

type
   TJanuaFollower = record
      id: int64;
      FirstName: string;
      LastName: string;
      Town: string;
      CountryCode: string;
      Latitude: Double;
      Longitude: Double;
   public
      function AsSJSONObJect: TJSONObject;
      procedure LoadFromDataset(dsFollowers: TDataset);
   end;

type
   TJanuaSwapDiscover = record
      swaps: integer;
      followers: integer;
      notifications: integer;
      DiscoveredItems: array of TJanuaSwapItem;
   public
      function AsSJSONObJect: TJSONObject;
      procedure LoadFromDataset(dsDiscover, dsItems: TDataset);
   end;

type
   // This profile Extends the System Profile with the fields for Swap Functions
   TJanuaSwapProfile = record
      UserProfile: Janua.Core.System.TJanuaRecordUserProfile;
      Items: array of TJanuaSwapItem;
      FollowersCount: smallint;
      FollowingCount: smallint;
      SwapsCount: smallint;
   public
      function AsSJSONObJect: TJSONObject;
      procedure LoadFromDataset(dsSwapProfile, dsItems: TDataset);
   end;

type
   TJanuaSwapEvent = record
      id: integer;
      DateTime: TDateTime;
      Address: string;
      lat: Double;
      lng: Double;
      Participants: integer;
   public
      function AsSJSONObJect: TJSONObject;
      procedure LoadFromDataset(dsSwapEvent: TDataset);
   end;

Type
   TJanuaSwapNotification = record
      id: int64;
      Date: TDateTime;
      NotificationType: TJanuaSwapNotificationType;
      UserID: integer;
      SwapID: integer;
      SwapperItemID: int64;
      UserItemID: int64;
      UserImageUrl: string;
      SwapperImageUrl: string;
   public
      procedure LoadFromDataset(dsNotifications: TDataset);
      function AsJSonObject: TJSONObject;
   end;

type
   TJanuaSwapNotifications = record
      count: integer;
      notifications: array of TJanuaSwapNotification;
   public
      procedure LoadFromDataset(dsNotifications: TDataset);
      function AsJSonObject: TJSONObject;
   end;

type
   TJanuaCustomServerSwap = class(TJanuaCustomServer)
   private
      FJanuaSwapProfile: TJanuaSwapProfile;
      FActualDiscover: TJanuaSwapDiscover;
      FSelectedItems: TJanuaSwapItems;
      FSelectedItem: TJanuaSwapItem;
    FdsItem: TClientDataset;
      procedure SetJanuaSwapProfile(const Value: TJanuaSwapProfile);
      procedure SetActualDiscover(const Value: TJanuaSwapDiscover);
      procedure SetdsSwapProfile(const Value: TClientDataset);
      procedure SetSelectedItem(const Value: TJanuaSwapItem);
      procedure SetSelectedItems(const Value: TJanuaSwapItems);
    procedure SetdsItem(const Value: TClientDataset);
   protected
      FdsUserItems: TClientDataset;
      FdsDiscoverItems: TClientDataset;
      FdsDiscover: TClientDataset;
      FdsSwapProfile: TClientDataset;

      // ************************************ discover *********************************************
      function InternalDiscover: boolean; virtual; abstract;
      function InternalLikes(vItemID: int64): boolean; virtual; abstract;
      function InternalDiscovered(vItemID: int64): boolean; virtual; abstract;

      // **************************** user profile Functions ***************************************
      // Another Swapper Profile
      function InternalSwapperProfile(aUserID: integer): boolean; virtual; abstract;
      // this fills the LastSwapperProfile property

      // This user profile with swapush procedures
      function InternalUserProfile: boolean; virtual; abstract;
      // this fills the LastSwapperProfile property

      // this function will add an Item and Return its ID as server Result;
      function InternalAddItem(aItem: TJanuaSwapItem): int64; virtual; abstract;

      // **************************** Internal Event Functions *************************************
      // Adds an user to the Swap Event
      function InternalEventAddUser(aEventID, aUserID: integer): boolean; virtual; abstract;
      function InternalEventDelUser(aEventID, aUserID: integer): boolean; virtual; abstract;
      function InernalEventInsert(aEvent: TJanuaSwapEvent): integer; virtual; abstract;

      // ***************************** Items Management *********************************************
      function InternalItemInsert(aItem: TJanuaSwapItem): int64; virtual; abstract;
      function InternalItemDelete(aItemID: int64): boolean; virtual; abstract;
      function InternalItemsList(aUserID: integer): integer; virtual; abstract;
      function InternalItemWatch(aItemID: int64): boolean; virtual; abstract;
      function InternalItemUpdate(aItemID: int64): boolean; virtual; abstract;
   public

      // public functions for the Web Service

      // ************************************ discover *********************************************
      function Discover: boolean;
      function Likes(vItemID: int64): boolean;
      function Discovered(vItemID: int64): boolean;

      // **************************** user profile Functions ***************************************
      // Another Swapper Profile
      function SwapperProfile(aUserID: integer): boolean;
      function SwapperProfileJson(aUserID: integer): TJSONObject;
      // This user profile with swapush procedures
      function UserProfile: boolean;

      // Events Management
      procedure EventAddUser(aEventID, aUserID: integer);
      procedure EventDelUser(aEventID, aUserID: integer);
      function EventInsert(aEvent: TJanuaSwapEvent): integer;

      // JSON FUNCTIONS
      function DiscoverJson: TJSONObject;

      function EventAddUserJson(aEventID, aUserID: integer): TJSONObject;
      function EventDelUserJson(aEventID, aUserID: integer): TJSONObject;
      function EventInsertJson(aEvent: TJanuaSwapEvent): TJSONObject;

      // ************************************ items ************************************************
      function ItemInsert(aItem: TJanuaSwapItem): int64;
      function ItemInsertJson(aItem: TJanuaSwapItem): TJSONObject;
      function ItemUpdate(aItem: TJanuaSwapItem): int64;
      function ItemUpdateJson(aItem: TJanuaSwapItem): TJSONObject;
      function ItemDelete(aItemID: int64): boolean;
      function ItemDeleteJson(aItemID: int64): TJSONObject;
      function ItemsList(aUserID: integer): integer;
      function ItemsListJson(aUserID: integer): TJSONObject;
      function ItemWatch(aItemID: int64): boolean;
      function ItemWatchJson(aItemID: int64): TJSONObject;

   published
      // Class Properties


      // Datasets ..............................................
      property dsSwapProfile: TClientDataset read FdsSwapProfile;
      property dsUserItems: TClientDataset read FdsDiscoverItems;
      property dsDiscoverItems: TClientDataset read FdsDiscoverItems;
      property dsItem:  TClientDataset read FdsItem write SetdsItem;

      // Records ................................................
      property JanuaSwapProfile: TJanuaSwapProfile read FJanuaSwapProfile write SetJanuaSwapProfile;
      property ActualDiscover: TJanuaSwapDiscover read FActualDiscover write SetActualDiscover;
      property SelectedItem: TJanuaSwapItem read FSelectedItem write SetSelectedItem;
      property SelectedItems: TJanuaSwapItems read FSelectedItems write SetSelectedItems;
   end;

implementation

{ TJanuaSwapProfile }

function TJanuaSwapProfile.AsSJSONObJect: TJSONObject;
var
   aItem: TJanuaSwapItem;
   aJSONArray: TJSONArray;
begin
   Result := TJSONObject.Create;
   Result.AddPair(TJSONPair.Create('UserProfile', self.UserProfile.AsJSonObject));

   if Length(Items) > 0 then
   begin
      aJSONArray := TJSONArray.Create();
      for aItem in Items do
      begin

      end;

   end;

end;

procedure TJanuaSwapProfile.LoadFromDataset(dsSwapProfile, dsItems: TDataset);
begin
   self.FollowersCount := dsSwapProfile.FieldByName('followers').AsInteger;
end;

{ TJanuaFollower }

function TJanuaFollower.AsSJSONObJect: TJSONObject;
begin

end;

procedure TJanuaFollower.LoadFromDataset(dsFollowers: TDataset);
begin

end;

{ TJanuaSwapItem }

function TJanuaSwapItem.AsSJSONObJect: TJSONObject;
begin

end;

procedure TJanuaSwapItem.LoadFromDataset(dsItems: TDataset);
begin
  {
  insert_date timestamp with time zone,
  description character varying,
  url character varying(2048),
  available boolean,
  swapped boolean,
  likes smallint
  }

   // id bigint NOT NULL DEFAULT 0,
   self.id := dsItems.FieldByName('id').AsLargeInt;
   // owner_id integer NOT NULL,
   self.owner_id := dsItems.FieldByName('owner_id').AsLargeInt;


end;

{ TJanuaCustomServerSwap }

function TJanuaCustomServerSwap.Discover: boolean;
begin
   try
      self.CreateDataModule;
      Result := self.InternalDiscover;
      if Result then
      begin
         self.FActualDiscover.LoadFromDataset(FdsDiscover, FdsDiscoverItems);
      end;
   finally
      self.DestroyDataModule(False);
   end;
end;

function TJanuaCustomServerSwap.Discovered(vItemID: int64): boolean;
begin
   Result := InternalDiscovered(vItemID);
end;

function TJanuaCustomServerSwap.DiscoverJson: TJSONObject;
begin
   try
      self.Discover;
      Result := TJSONObject.Create;
      Result.AddPair(TJSONPair.Create('Discover', self.FActualDiscover.AsSJSONObJect));
   except
      Result := TJSONObject.Create;
      Result.AddPair(TJSONPair.Create('Discover', False.ToString()));
   end;
end;

procedure TJanuaCustomServerSwap.EventAddUser(aEventID, aUserID: integer);
begin
   self.CreateDataModule;
   try
      self.InternalEventAddUser(aEventID, aUserID);
   finally
      self.DestroyDataModule(False);
   end;
end;

function TJanuaCustomServerSwap.EventAddUserJson(aEventID, aUserID: integer): TJSONObject;
begin

end;

procedure TJanuaCustomServerSwap.EventDelUser(aEventID, aUserID: integer);
begin
   self.CreateDataModule;
   try
      self.InternalEventDelUser(aEventID, aUserID);
   finally
      self.DestroyDataModule(False);
   end;
end;

function TJanuaCustomServerSwap.EventDelUserJson(aEventID, aUserID: integer): TJSONObject;
begin

end;

function TJanuaCustomServerSwap.EventInsert(aEvent: TJanuaSwapEvent): integer;
begin

end;

function TJanuaCustomServerSwap.EventInsertJson(aEvent: TJanuaSwapEvent): TJSONObject;
begin

end;

function TJanuaCustomServerSwap.ItemDelete(aItemID: int64): boolean;
begin
   self.CreateDataModule;
   try
      Result := self.InternalItemDelete(aItemID)
   finally
      self.DestroyDataModule(False);
   end;
end;

function TJanuaCustomServerSwap.ItemDeleteJson(aItemID: int64): TJSONObject;
begin
   Result := JsonResult(self.InternalItemDelete(aItemID).ToString);
end;

function TJanuaCustomServerSwap.ItemInsert(aItem: TJanuaSwapItem): int64;
begin
   self.CreateDataModule;
   try
      Result := self.InternalItemInsert(aItem);
   finally
      self.DestroyDataModule;
   end;
end;

function TJanuaCustomServerSwap.ItemInsertJson(aItem: TJanuaSwapItem): TJSONObject;
begin
   Result := JsonResult(self.ItemInsert(aItem).ToString());
end;

function TJanuaCustomServerSwap.ItemsList(aUserID: integer): integer;
begin
   self.CreateDataModule;
   try
      Result := self.ItemsList(aUserID);
      if Result > 0 then
      begin
         if Assigned(self.FdsUserItems) then
         begin
            self.FSelectedItems.Clear;
            self.FdsUserItems.First;
         end;
      end;
   finally
      self.DestroyDataModule;
   end;
end;

function TJanuaCustomServerSwap.ItemsListJson(aUserID: integer): TJSONObject;
begin
   if self.ItemsList(aUserID) > 0 then
      Result := self.FSelectedItems.AsSJSONObJect
   else
      Result := JsonError('No Items to Display');
end;

function TJanuaCustomServerSwap.ItemUpdate(aItem: TJanuaSwapItem): int64;
begin
   Result := JsonResult(self.ItemUpdate(aItem).ToString());
end;

function TJanuaCustomServerSwap.ItemUpdateJson(aItem: TJanuaSwapItem): TJSONObject;
begin
   Result := JsonResult(self.ItemInsert(aItem).ToString());
end;

function TJanuaCustomServerSwap.ItemWatch(aItemID: int64): boolean;
begin
   self.CreateDataModule;
   try
      Result := self.InternalItemWatch(aItemID);

      if Result then
         self.FSelectedItem.LoadFromDataset(FdsItem);

   finally
      self.DestroyDataModule;
   end;
end;

function TJanuaCustomServerSwap.ItemWatchJson(aItemID: int64): TJSONObject;
begin
   Result := JsonResult(self.ItemWatch(aItem).ToString());
end;

function TJanuaCustomServerSwap.Likes(vItemID: int64): boolean;
begin

end;

procedure TJanuaCustomServerSwap.SetActualDiscover(const Value: TJanuaSwapDiscover);
begin
   FActualDiscover := Value;
end;

procedure TJanuaCustomServerSwap.SetdsItem(const Value: TClientDataset);
begin
  FdsItem := Value;
end;

procedure TJanuaCustomServerSwap.SetdsSwapProfile(const Value: TClientDataset);
begin
   FdsSwapProfile := Value;
end;

procedure TJanuaCustomServerSwap.SetJanuaSwapProfile(const Value: TJanuaSwapProfile);
begin
   FJanuaSwapProfile := Value;
end;

procedure TJanuaCustomServerSwap.SetSelectedItem(const Value: TJanuaSwapItem);
begin
   FSelectedItem := Value;
end;

procedure TJanuaCustomServerSwap.SetSelectedItems(const Value: TJanuaSwapItems);
begin
   FSelectedItems := Value;
end;

function TJanuaCustomServerSwap.SwapperProfile(aUserID: integer): boolean;
begin

end;

function TJanuaCustomServerSwap.SwapperProfileJson(aUserID: integer): TJSONObject;
begin

end;

function TJanuaCustomServerSwap.UserProfile: boolean;
begin

end;

{ TJanuaSwapDiscover }

function TJanuaSwapDiscover.AsSJSONObJect: TJSONObject;
begin

end;

procedure TJanuaSwapDiscover.LoadFromDataset(dsDiscover, dsItems: TDataset);
begin

end;

{ TJanuaSwapEvent }

function TJanuaSwapEvent.AsSJSONObJect: TJSONObject;
begin

end;

procedure TJanuaSwapEvent.LoadFromDataset(dsSwapEvent: TDataset);
begin

end;

{ TJanuaSwapNotificationType }

function TJanuaSwapNotificationType.AsString: string;
begin
   case self.NotificationType of
      jsnSwap:
         begin
            Result := 'Swap';
         end;
      jsnSwapAgreement:
         begin
            Result := 'Agreement';
         end;
      jsnMessage:
         begin
            Result := 'Message';
         end;
      jsnFollowing:
         begin
            Result := 'Following';
         end;
   end;
end;

{ TJanuaSwapNotifications }

function TJanuaSwapNotifications.AsJSonObject: TJSONObject;
begin

end;

procedure TJanuaSwapNotifications.LoadFromDataset(dsNotifications: TDataset);
begin

end;

{ TJanuaSwapNotification }

function TJanuaSwapNotification.AsJSonObject: TJSONObject;
begin
   Result := TJSONObject.Create;
   Result.AddPair('id', self.id.ToString());
   Result.AddPair('date', FormatDateTime('yyyy-mm-dd', self.Date));
   Result.AddPair('type', self.NotificationType.AsString);
   Result.AddPair('user_id', self.UserID.ToString());
   Result.AddPair('swap_id', self.SwapID.ToString());
   Result.AddPair('swapper_item_id', self.SwapperItemID.ToString());
   Result.AddPair('user_item_id', self.UserItemID.ToString());
   Result.AddPair('swapperitem_image_url', self.SwapperItemID.ToString());
   Result.AddPair('useritem_image_url', self.UserItemID.ToString());
end;

procedure TJanuaSwapNotification.LoadFromDataset(dsNotifications: TDataset);
begin

end;

{ TJanuaSwapItems }

function TJanuaSwapItems.AsSJSONObJect: TJSONObject;
begin

end;

procedure TJanuaSwapItems.Clear;
begin
   SetLength(self.Items, 0);
end;

procedure TJanuaSwapItems.LoadFromDataset(dsItems: TDataset);
begin

end;

end.
