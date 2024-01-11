unit Janua.Postgres.Swap;

interface

uses
{$IFDEF fpc}
  LResources, Classes, SysUtils, IOUtils, DB,
{$ELSE}
  System.SysUtils, System.IOUtils, Datasnap.DBClient, Data.DB,
  System.Variants, System.Classes, System.JSON, System.Threading,
{$IFDEF MSWINDOWS}
  Winapi.ShlObj,
{$ENDIF MSWINDOWS}
{$ENDIF}
  // ******************* Janua Core Functions *****************************
  Janua.Core.Mail, Janua.Core.Classes, Janua.Core.Http, Janua.Core.Users,
  Janua.Core.System, Janua.Core.Swap, Janua.Core.Functions,
  // ^^^^^^^^^^^^^  Data Module Swap ****************************************
  udmPgSwap;

type
  TJanuaPgServerSwap = class(TJanuaCustomServerSwap)
  private
    dmPgSwap: TdmPgSwap;
  protected
    procedure CreateDataModule; override;
    procedure DestroyDataModule(Force: Boolean = false); override;

    // ************************************ settings *********************************************
    function InternalGetSettings: Boolean; override;
    function InternalUpdateSettings: Boolean; override;

    // ************************************ Radar *********************************************
    function InternalRadar(const aRange: Integer): Integer; override;

    // ************************************ discover *********************************************
    function InternalDiscover: Boolean; override;
    function InternalLikes(vItemID: int64): Boolean; override;
    /// <summary> internal Likes founds the internal Swaps likes are just swap proposals like 'dating' </summary>
    function InternalDiscovered(vItemID: int64): Boolean; override;
    /// <summary>  this procedure keeps track of Items seen or discovered by the user</summary>
    function InternalNotifications: Boolean; override;
    function InernalFeeds: Boolean; override;
    /// <summary>  when a notification is seen (read) then it will be marked as Read  </summary>
    function InternalNotificationRead(aNotificationID: int64): Boolean; override;
    /// <summary>  the user can simply update the list of Items Discovered without updating all the discover </summary>
    function InternalItemsDiscover: Boolean; override;

    // ***************************** Events Management *******************************************
    function InternalEventAddUser(aEventID, aUserID: Integer): Boolean; override;
    function InternalEventDelUser(aEventID, aUserID: Integer): Boolean; override;
    function InternalEventInsert(aEvent: TJanuaSwapEvent): Integer; override;
    function InternalEventDelete(aEventID: Integer): Boolean; override;
    function InternalEventUsersList(aEventID: Integer): Boolean; override;
    function InternalEventsList(aUserID: int64): Boolean; override;
    function InternalEventWatch(aEventID: Integer): Boolean; override;
    function InternalEventUpdate(aEvent: TJanuaSwapEvent): Boolean; override;

    // ***************************** Swap Messages ***********************************************
    function InternalMessageInsert(vMessage: TJanuaSwapMessage): int64; override;
    function InternalMessageDelete(aSwapID, aMessageID: int64): Boolean; override;
    function InternalMessagesList(aSwapID, aLastID: int64): int64; override;
    function InternalMessageWatch(aSwapID, aMessageID: int64): Integer; override;

    // ***************************** Items Management ********************************************
    function InternalItemInsert(aItem: TJanuaSwapItem): int64; override;
    function InternalItemDelete(aItemID: int64): Boolean; override;
    function InternalItemSeen(aItemID: int64): Boolean; override;
    function InternalItemsList(aUserID: Integer): Integer; override;
    function InternalItemWatch(aItemID: int64): Boolean; override;
    function InternalItemUpdate(aItem: TJanuaSwapItem): Boolean; override;
    function InternalItemLike(aItemID: int64; aState: Boolean): Boolean; override;
    function InternalItemDisLike(aItemID: int64; aState: Boolean): Boolean; override;
    function InternalItemImageInsert(aImage: TJanuaSwapImage): int64; override;
    function InternalItemImageDelete(aItemID: int64): Boolean; override;
    function InternalItemImageList(aItemID: int64): Integer; override;
    function InternalItemLikesList(aItemID: int64): Boolean; override;

    // ******************************** Swapper Profile ******************************************
    function InternalUpdateUserProfile: Boolean; override;
    function InternalSwapperProfile(aUserID: Integer): Boolean; override;
    function InternalUserLikes(aUserID: Integer): Boolean; override;
    function InternalUserFollow(aUserID: Integer; aFollow: Boolean = True): Boolean; override;
    function InternalUserFollowers(aUserID: Integer): Boolean; override;
    function InternalUserFollowings(aUserID: Integer): Boolean; override;

    // ******************************** Swap *****************************************************
    function InternalSwapWatch(vItemID: int64; vUserID: Integer): Boolean; override;
    function InternalSwapStart(vItemID, vOtherItemID: int64; vState: Boolean = True): Boolean; override;
    function InternalUserSwapsList(aUserID: Integer): Boolean; override;
    function InternalUserSwap(aSwapID: int64; aUserID: Integer): Boolean; override;
    function InternalSwapAgree(vUserID: Integer; vSwapID: int64; vAction: TJanuaSwapActionType)
      : Boolean; override;

  public
  published

  end;

implementation

{ TJanuaPgServerSwap }

procedure TJanuaPgServerSwap.CreateDataModule;
begin
  if not Assigned(dmPgSwap) then
  begin
    dmPgSwap := TdmPgSwap.Create(self);
    if not supports(dmPgSwap, IJanuaServerDataModule, FIDM) then
      raise exception.Create('dmPgSwap do not supports IJanuaServerDataModule');

  end;
  if Assigned(self.FJanuaLogger) and (self.JanuaLogger is TJanuaCoreLogger) then
    dmPgSwap.JanuaCoreLogger := TJanuaCoreLogger(self.FJanuaLogger);
  dmPgSwap.TestConnect
end;

procedure TJanuaPgServerSwap.DestroyDataModule(Force: Boolean);
begin
  if (not self.KeepAlive) or Force then
  begin
    FreeAndNil(dmPgSwap);
    self.IDM := nil;
  end;

  inherited;
end;

function TJanuaPgServerSwap.InernalFeeds: Boolean;
begin
  // *********************************************************************************
  try
    if Assigned(self.dmPgSwap) then
    begin
      dmPgSwap.SessionKey := self.SessionKey;

      if self.Offset <> 0 then
        dmPgSwap.Offset := self.Offset;

      if self.Limit <> 0 then
        dmPgSwap.Limit := self.Limit;

      if dmPgSwap.CheckSessionKey(SessionKey) and dmPgSwap.Feeds then
      begin
        self.FActualFeeds.LoadFromDataset(dmPgSwap.qryFeeds, dmPgSwap.qrySwapProfile);
        Result := True;
      end
      else
      begin
        self.LastErrorMessage := self.dmPgSwap.LastErrorMessage;
        Result := false;
        self.HasErrors := True;
      end;
    end
    else
    begin
      self.HasErrors := True;
      Result := false;
      self.LastErrorMessage := 'TJanuaPgServerSwap.InernalFeeds = ' + 'dmPgSwap not Assigned';
    end;
  except
    on e: exception do
    begin
      Result := false;
      self.WriteError('TdmPgSwap.InernalFeeds', e);
      self.LastErrorMessage := 'TdmPgSwap.InernalFeeds = ' + e.ToString;
    end;
  end;




  // *******************************************************************************

end;

function TJanuaPgServerSwap.InternalDiscover: Boolean;
begin
  Result := false;

  if Assigned(dmPgSwap) then
  begin
    // at first set the session Key ....................................
    dmPgSwap.SessionKey := self.SessionKey;
    if dmPgSwap.CheckSessionKey(SessionKey) then
    begin
      // then Execute the Discover Function 'Server-Side'
      // if self.InternalNotifications then
      // self.FActualDiscover.Notifications := self.FActualNotifications;
      Result := self.dmPgSwap.InternalItemsDiscover;
      // if InternalSwapperProfile(0) then
      // self.FActualDiscover.UserProfile := FJanuaSwapProfile;
      // self.FActualDiscover.NotificationCount := self.FActualNotifications.count;
      if Result then
      begin
        Result := dmPgSwap.OpenSwapperProfile(0);
        if Result then
          self.FActualDiscover.LoadFromDataset(dmPgSwap.qrySwapProfile, dmPgSwap.qryDiscoverItems);
      end;
      if not Result then
        self.LastErrorMessage := self.dmPgSwap.LastErrorMessage;
    end;
  end;
end;

function TJanuaPgServerSwap.InternalDiscovered(vItemID: int64): Boolean;
begin
  self.dmPgSwap.SessionKey := self.SessionKey;
  { TODO : Implement dmPgSwap Internal Discovered }
  Result := false;
end;

function TJanuaPgServerSwap.InternalEventAddUser(aEventID, aUserID: Integer): Boolean;
begin
  Result := false;
  try
    if Assigned(self.dmPgSwap) then
    begin
      if self.dmPgSwap.CheckSessionKey(self.SessionKey) then
      begin
        Result := dmPgSwap.EventAddUser(aUserID, aEventID);
        if not Result then
          self.LastErrorMessage := dmPgSwap.LastErrorMessage
        else
          self.FLastMessage := dmPgSwap.LastErrorMessage
      end
      else
      begin
        self.LastErrorMessage := dmPgSwap.LastErrorMessage;
        Result := false;
      end;
    end
    else
    begin
      self.LastErrorMessage := ' TJanuaPgServerSwap.InternalEventAddUser: Not Assigned dmPgSwap';
      Result := false;
    end;
  except
    on e: exception do
    begin
      self.WriteError('TJanuaPgServerSwap.InternalEventAddUser', e);
      if self.CanRaise then
        raise;
      Result := Result;
    end;

  end;

end;

function TJanuaPgServerSwap.InternalEventDelete(aEventID: Integer): Boolean;
begin
  try
    if Assigned(self.dmPgSwap) then
    begin
      if self.dmPgSwap.CheckSessionKey(self.SessionKey) then
      begin
        Result := dmPgSwap.EventDelete(aEventID);
        if not Result then
          self.LastErrorMessage := dmPgSwap.LastErrorMessage;
      end
      else
      begin
        self.LastErrorMessage := dmPgSwap.LastErrorMessage;
        Result := false;
      end;
    end
    else
    begin
      self.LastErrorMessage := ' TJanuaPgServerSwap.InternalEventDelete: Not Assigned dmPgSwap';
      Result := false;
    end;
  except
    on e: exception do
    begin
      self.WriteError('TJanuaPgServerSwap.InternalEventDelete', e);
      Result := false;
    end;

  end;
end;

function TJanuaPgServerSwap.InternalEventDelUser(aEventID, aUserID: Integer): Boolean;
begin
  try
    if Assigned(self.dmPgSwap) then
    begin
      if self.dmPgSwap.CheckSessionKey(self.SessionKey) then
      begin
        Result := dmPgSwap.EventDelUser(aUserID, aEventID);
        if not Result then
          self.LastErrorMessage := dmPgSwap.LastErrorMessage;
      end
      else
      begin
        self.LastErrorMessage := dmPgSwap.LastErrorMessage;
        Result := false;
      end;
    end
    else
    begin
      self.LastErrorMessage := ' TJanuaPgServerSwap.InternalEventAddUser: Not Assigned dmPgSwap';
      Result := false;
    end;
  except
    on e: exception do
    begin
      self.WriteError('TJanuaPgServerSwap.InternalEventAddUser', e);
      if self.CanRaise then
        raise;
      Result := false;
    end;

  end;
end;

function TJanuaPgServerSwap.InternalEventInsert(aEvent: TJanuaSwapEvent): Integer;
begin
  try
    if Assigned(self.dmPgSwap) then
    begin
      if self.dmPgSwap.CheckSessionKey(self.SessionKey) then
      begin
        Result := dmPgSwap.EventInsert(aEvent);
        if Result <= 0 then
          self.LastErrorMessage := dmPgSwap.LastErrorMessage;
      end
      else
      begin
        self.LastErrorMessage := dmPgSwap.LastErrorMessage;
        Result := -1;
      end;
    end
    else
    begin
      self.LastErrorMessage := ' TJanuaPgServerSwap.InternalEventAddUser: Not Assigned dmPgSwap';
      Result := -1;
    end;
  except
    on e: exception do
    begin
      self.WriteError('TJanuaPgServerSwap.InternalEventAddUser', e);
      if self.CanRaise then
        raise;
      Result := -1;
    end;

  end;
end;

function TJanuaPgServerSwap.InternalEventsList(aUserID: int64): Boolean;
begin
  try
    if Assigned(self.dmPgSwap) then
    begin
      if self.dmPgSwap.CheckSessionKey(self.SessionKey) then
      begin
        Result := dmPgSwap.EventsList(aUserID);
        if not Result then
          self.LastErrorMessage := dmPgSwap.LastErrorMessage
        else
          SelectedEventsList.LoadFromDataset(dmPgSwap.qryEventsList, dmPgSwap.qrySwapProfile);
      end
      else
      begin
        self.LastErrorMessage := dmPgSwap.LastErrorMessage;
        Result := false;
      end;
    end
    else
    begin
      self.LastErrorMessage := ' TJanuaPgServerSwap.InternalEventAddUser: Not Assigned dmPgSwap';
      Result := false;
    end;
  except
    on e: exception do
    begin
      self.WriteError('TJanuaPgServerSwap.InternalEventAddUser', e);
      if self.CanRaise then
        raise;
      Result := false;
    end;

  end;
end;

function TJanuaPgServerSwap.InternalEventUpdate(aEvent: TJanuaSwapEvent): Boolean;
begin
  try
    if Assigned(self.dmPgSwap) then
    begin
      if self.dmPgSwap.CheckSessionKey(self.SessionKey) then
      begin
        Result := dmPgSwap.EventUpdate(aEvent);
        if not Result then
          self.LastErrorMessage := dmPgSwap.LastErrorMessage;
      end
      else
      begin
        self.LastErrorMessage := dmPgSwap.LastErrorMessage;
        Result := false;
      end;
    end
    else
    begin
      self.LastErrorMessage := ' TJanuaPgServerSwap.InternalEventAddUser: Not Assigned dmPgSwap';
      Result := false;
    end;
  except
    on e: exception do
    begin
      self.WriteError('TJanuaPgServerSwap.InternalEventAddUser', e);
      if self.CanRaise then
        raise;
      Result := false;
    end;

  end;
end;

function TJanuaPgServerSwap.InternalEventUsersList(aEventID: Integer): Boolean;
begin
  try
    if Assigned(self.dmPgSwap) then
    begin
      if self.dmPgSwap.CheckSessionKey(self.SessionKey) then
      begin
        Result := dmPgSwap.EventUsersList(aEventID);
        if not Result then
          self.LastErrorMessage := dmPgSwap.LastErrorMessage
        else
          self.FSelectedEvent.Participants.LoadFromDataset(dmPgSwap.qryEventUsers);
      end
      else
      begin
        self.LastErrorMessage := dmPgSwap.LastErrorMessage;
        Result := false;
      end;
    end
    else
    begin
      self.LastErrorMessage := ' TJanuaPgServerSwap.InternalEventAddUser: Not Assigned dmPgSwap';
      Result := false;
    end;
  except
    on e: exception do
    begin
      self.WriteError('TJanuaPgServerSwap.InternalEventAddUser', e);
      if self.CanRaise then
        raise;
      Result := false;
    end;

  end;
end;

function TJanuaPgServerSwap.InternalEventWatch(aEventID: Integer): Boolean;
begin
  try
    if Assigned(self.dmPgSwap) then
    begin
      if self.dmPgSwap.CheckSessionKey(self.SessionKey) then
      begin
        Result := dmPgSwap.EventWatch(aEventID);
        if not Result then
          self.LastErrorMessage := dmPgSwap.LastErrorMessage
        else
          with dmPgSwap do
          begin
            SelectedEvent.LoadFromDataset(qryEvent, qrySmallProfile, qryEventUsers);
          end;
      end
      else
      begin
        self.LastErrorMessage := dmPgSwap.LastErrorMessage;
        Result := false;
      end;
    end
    else
    begin
      self.LastErrorMessage := ' TJanuaPgServerSwap.InternalEventAddUser: Not Assigned dmPgSwap';
      Result := false;
    end;
  except
    on e: exception do
    begin
      self.WriteError('TJanuaPgServerSwap.InternalEventAddUser', e);
      if self.CanRaise then
        raise;
      Result := false;
    end;

  end;
end;

function TJanuaPgServerSwap.InternalGetSettings: Boolean;
begin
  Result := dmPgSwap.CheckSessionKey(self.SessionKey) and self.dmPgSwap.OpenSwapperProfile(0);
  // ricerca e riempilento Settings
  if Result then
    self.Settings.LoadFromDataset(self.dmPgSwap.qrySwapProfile);
end;

function TJanuaPgServerSwap.InternalItemDelete(aItemID: int64): Boolean;
begin
  Result := false;

  if Assigned(self.dmPgSwap) then
  begin
    if self.dmPgSwap.CheckSessionKey(self.SessionKey) then
    begin
      Result := dmPgSwap.ItemDelete(aItemID);
      if not Result then
        self.LastErrorMessage := dmPgSwap.LastErrorMessage;
    end
    else
    begin
      self.LastErrorMessage := dmPgSwap.LastErrorMessage;
      Result := false;
    end;

  end;
end;

function TJanuaPgServerSwap.InternalItemDisLike(aItemID: int64; aState: Boolean): Boolean;
begin
  Result := false;
  try
    self.dmPgSwap.SessionKey := self.SessionKey;
    if self.dmPgSwap.UserID > 0 then
    begin
      Result := dmPgSwap.ItemDisLike(aItemID, aState);
      if not Result then
        self.LastErrorMessage := dmPgSwap.LastErrorMessage;

    end
    else
    begin
      Result := false;
    end;

  except
    on e: exception do
    begin
      self.WriteError('TJanuaPgServerSwap.InternalItemLike', e);
      Result := false;
    end;

  end;
end;

function TJanuaPgServerSwap.InternalItemImageDelete(aItemID: int64): Boolean;
begin
  Result := false;
  try
    if Assigned(self.dmPgSwap) then
    begin
      Result := self.dmPgSwap.CheckSessionKey(self.SessionKey);
      if Result then
      begin
        Result := self.dmPgSwap.ItemImageDelete(aItemID);
        if not Result then
        begin
          self.LastErrorMessage := self.dmPgSwap.LastErrorMessage;
        end;
      end
      else
      begin
        self.LastErrorMessage := self.dmPgSwap.LastErrorMessage;
      end;
    end;
  except
    on e: exception do
    begin
      self.WriteError('TJanuaPgServerSwap.InternalItemImageDelete', e);
      Result := false;
    end;

  end;
end;

function TJanuaPgServerSwap.InternalItemImageInsert(aImage: TJanuaSwapImage): int64;
begin
  Result := 0;
  try
    if self.dmPgSwap.CheckSessionKey(self.SessionKey) then
    begin
      Result := dmPgSwap.ItemImageInsert(aImage);
      if Result <= 0 then
      begin
        self.HasErrors := True;
        self.LastErrorMessage := dmPgSwap.LastErrorMessage;
      end;
    end
    else
    begin
      Result := -1;
      self.HasErrors := True;
      self.LastErrorMessage := dmPgSwap.LastErrorMessage;
    end;

  except
    on e: exception do
    begin
      self.WriteError('TJanuaPgServerSwap.InternalItemInsert', e);
      Result := -1;
    end;

  end;
end;

function TJanuaPgServerSwap.InternalItemImageList(aItemID: int64): Integer;
begin
  Result := 0;
  try
    if self.dmPgSwap.CheckSessionKey(self.SessionKey) then
    begin
      Result := dmPgSwap.ImageList(aItemID);
      if Result > 0 then
      begin
        Janua.Core.Functions.CloneDataset(dmPgSwap.qryWatchItemImages, FdsUserItemsImages);
      end;
    end
    else
    begin
      Result := -1;
      self.HasErrors := True;
      self.LastErrorMessage := dmPgSwap.LastErrorMessage;
    end;

  except
    on e: exception do
    begin
      self.WriteError('TJanuaPgServerSwap.InternalItemInsert', e);
      Result := -1;
    end;

  end;

end;

function TJanuaPgServerSwap.InternalItemInsert(aItem: TJanuaSwapItem): int64;
begin
  Result := 0;
  try
    if self.dmPgSwap.CheckSessionKey(self.SessionKey) then
    begin
      Result := dmPgSwap.ItemInsert(aItem)
    end
    else
    begin
      Result := -1;
      self.HasErrors := True;
      self.LastErrorMessage := dmPgSwap.LastErrorMessage;
    end;

  except
    on e: exception do
    begin
      self.WriteError('TJanuaPgServerSwap.InternalItemInsert', e);
      Result := -1;
    end;

  end;

end;

function TJanuaPgServerSwap.InternalItemLike(aItemID: int64; aState: Boolean): Boolean;
begin
  Result := false;
  try
    self.dmPgSwap.SessionKey := self.SessionKey;
    if self.dmPgSwap.UserID > 0 then
    begin
      Result := dmPgSwap.ItemLike(aItemID, aState)
    end
    else
    begin
      Result := false;
    end;

  except
    on e: exception do
    begin
      self.WriteError('TJanuaPgServerSwap.InternalItemLike', e);
      Result := Result;
    end;
  end;
end;

function TJanuaPgServerSwap.InternalItemLikesList(aItemID: int64): Boolean;
begin
  Result := false;
  // Default to False
  if Assigned(self.dmPgSwap) then
  begin
    if self.dmPgSwap.CheckSessionKey(self.SessionKey) then
    begin
      Result := self.dmPgSwap.ItemLikesList(aItemID) and dmPgSwap.ItemSearch(aItemID);
      if not Result then
        self.LastErrorMessage := self.dmPgSwap.LastErrorMessage
      else
      begin
        self.dsItemsLikes := dmPgSwap.qryItemsLikes;
        self.dsSelectedItem := dmPgSwap.qryEditItem;
      end;
    end
    else
    begin
      self.LastErrorMessage := dmPgSwap.LastErrorMessage;
      Result := false;
    end;
  end;
end;

function TJanuaPgServerSwap.InternalItemsDiscover: Boolean;
begin
  Result := false;
  // Default to False
  if Assigned(self.dmPgSwap) then
  begin
    if self.dmPgSwap.CheckSessionKey(self.SessionKey) then
    begin
      Result := self.dmPgSwap.InternalItemsDiscover;
      if not Result then
        self.LastErrorMessage := self.dmPgSwap.LastErrorMessage
      else
        self.ItemsDiscovered.LoadFromDataset(self.dmPgSwap.qryDiscoverItems);
    end
    else
    begin
      self.LastErrorMessage := dmPgSwap.LastErrorMessage;
      Result := false;
    end;

  end;

end;

function TJanuaPgServerSwap.InternalItemSeen(aItemID: int64): Boolean;
begin
  /// the internal item seen procedure check the items that were seen or swiped out in discovery
  ///
  /// Default to False
  Result := false;

  if Assigned(self.dmPgSwap) then
  begin
    if self.dmPgSwap.CheckSessionKey(self.SessionKey) then
    begin
      Result := dmPgSwap.ItemSeen(aItemID);
      if not Result then
        self.LastErrorMessage := dmPgSwap.LastErrorMessage;
    end
    else
    begin
      self.LastErrorMessage := dmPgSwap.LastErrorMessage;
      Result := false;
    end;

  end;
end;

function TJanuaPgServerSwap.InternalItemsList(aUserID: Integer): Integer;
begin
  if Assigned(dmPgSwap) and dmPgSwap.CheckSessionKey(SessionKey) then
  begin
    Result := self.dmPgSwap.InternalItemsList(aUserID);

    if self.dmPgSwap.qryUserItems.Active then
    begin
      self.SelectedItems.LoadFromDataset(dmPgSwap.qryUserItems);
    end;

    if (Result > 0) and Assigned(self.FdsUserItems) and dmPgSwap.qryUserItems.Active then
      Janua.Core.Functions.CloneDataset(dmPgSwap.qryUserItems, self.FdsUserItems)
    else
      self.LastErrorMessage := dmPgSwap.LastErrorMessage;

    // if Assigned FdsUserItems and target Dataset is Active.....................................
  end
  else
  begin
    Result := -1;
    self.LastErrorMessage := 'Invalid or expired Session';
  end;

end;

function TJanuaPgServerSwap.InternalItemUpdate(aItem: TJanuaSwapItem): Boolean;
begin
  // Aggiorna un Item nello Swap. Default to False,
  Result := false;
  try
    if Assigned(self.dmPgSwap) then
    begin
      Result := dmPgSwap.CheckSessionKey(SessionKey);
      if Result then
      begin
        Result := self.dmPgSwap.InternalItemUpdate(aItem);
        if not Result then
        begin
          self.LastErrorMessage := dmPgSwap.LastErrorMessage;
          self.HasErrors := True;
        end;
      end
      else
        self.LastErrorMessage := 'Invalid or expired Session';

    end
    else
    begin
      self.HasErrors := True;
      self.LastErrorMessage := 'Error in Server Connection';
    end;
  except
    on e: exception do
    begin
      self.WriteError(' TJanuaPgServerSwap.InternalItemUpdate', e);
      Result := false;
    end;
  end;
end;

function TJanuaPgServerSwap.InternalItemWatch(aItemID: int64): Boolean;
begin
  // Default to False
  Result := false;
  try
    if Assigned(dmPgSwap) then
    begin
      Result := dmPgSwap.CheckSessionKey(SessionKey);
      // Verifico la chiave di sessione

      if Result then
        Result := self.dmPgSwap.ItemWatch(aItemID)
      else
        self.LastErrorMessage := 'Invalid or expired Session';

      if Result then
      begin
        SelectedItem.LoadFromDataset(dmPgSwap.qryWatchItem, dmPgSwap.qryWatchItemImages);
      end;
    end;
  except
    on e: exception do
    begin
      self.LastErrorMessage := 'TJanuaPgServerSwap.InternalItemWatch = ' + e.Message;

    end;

  end;
end;

function TJanuaPgServerSwap.InternalLikes(vItemID: int64): Boolean;
begin
  self.dmPgSwap.SessionKey := self.SessionKey;
  Result := false;
  { TODO : Implement TJanuaPgServerSwap Internal Likes }
end;

function TJanuaPgServerSwap.InternalMessageDelete(aSwapID, aMessageID: int64): Boolean;
begin
  Result := false;
  try
    if Assigned(self.dmPgSwap) then
    begin
      dmPgSwap.SessionKey := self.SessionKey;
      if dmPgSwap.CheckSessionKey(SessionKey) then
      begin
        Result := dmPgSwap.MessageDelete(aSwapID, aMessageID);
        if not Result then
        begin
          self.HasErrors := True;
          self.LastErrorMessage := dmPgSwap.LastErrorMessage;
        end;
      end
      else
      begin
        self.LastErrorMessage := self.dmPgSwap.LastErrorMessage;
        Result := false;
        self.HasErrors := True;
      end;
    end
    else
    begin
      self.HasErrors := True;
      Result := false;
      self.LastErrorMessage := 'TJanuaPgServerSwap.InternalNotificationRead = ' + 'dmPgSwap not Assigned';
    end;
  except
    on e: exception do
    begin
      Result := false;
      self.WriteError('TJanuaPgServerSwap.InternalNotificationRead', e);
      self.LastErrorMessage := 'TJanuaPgServerSwap.InternalNotificationRead = ' + e.ToString;
    end;
  end;
end;

function TJanuaPgServerSwap.InternalMessageInsert(vMessage: TJanuaSwapMessage): int64;
begin
  + Result := 0;
  try
    if Assigned(self.dmPgSwap) then
    begin
      dmPgSwap.SessionKey := self.SessionKey;
      if dmPgSwap.CheckSessionKey(SessionKey) then
      begin
        Result := dmPgSwap.MessageInsert(vMessage);

        if Result = -1 then
        begin
          self.HasErrors := True;
          self.LastErrorMessage := dmPgSwap.LastErrorMessage;
        end
        else if Result > 0 then
        begin
          if self.lastMessageID = 0 then
            InternalMessageWatch(vMessage.swap_id, Result)
          else
            InternalMessagesList(vMessage.swap_id, lastMessageID);
        end;
      end
      else
      begin
        self.LastErrorMessage := self.dmPgSwap.LastErrorMessage;
        Result := -1;
        self.HasErrors := True;
      end;
    end
    else
    begin
      self.HasErrors := True;
      Result := -1;
      self.LastErrorMessage := 'TJanuaPgServerSwap.InternalMessageInsert = ' + 'dmPgSwap not Assigned';
    end;
  except
    on e: exception do
    begin
      Result := -1;
      self.WriteError('TJanuaPgServerSwap.InternalMessageInsert', e);
      self.LastErrorMessage := 'TJanuaPgServerSwap.InternalMessageInsert = ' + e.ToString;
    end;
  end;
end;

function TJanuaPgServerSwap.InternalMessagesList(aSwapID, aLastID: int64): int64;
begin
  Result := 0;
  try
    if Assigned(self.dmPgSwap) then
    begin
      dmPgSwap.SessionKey := self.SessionKey;
      if dmPgSwap.CheckSessionKey(SessionKey) then
      begin
        Result := dmPgSwap.MessagesList(aSwapID, aLastID);
        if Result = -1 then
        begin
          self.HasErrors := True;
          self.LastErrorMessage := dmPgSwap.LastErrorMessage;
        end
        else
        begin
          self.Messages.LoadFromDataset(dmPgSwap.qrySwapMessages);
        end;
      end
      else
      begin
        self.LastErrorMessage := self.dmPgSwap.LastErrorMessage;
        Result := -1;
        self.HasErrors := True;
      end;
    end
    else
    begin
      self.HasErrors := True;
      Result := -1;
      self.LastErrorMessage := 'TJanuaPgServerSwap.InternalNotificationRead = ' + 'dmPgSwap not Assigned';
    end;
  except
    on e: exception do
    begin
      Result := -1;
      self.WriteError('TJanuaPgServerSwap.InternalNotificationRead', e);
      self.LastErrorMessage := 'TJanuaPgServerSwap.InternalNotificationRead = ' + e.ToString;
    end;
  end;
end;

function TJanuaPgServerSwap.InternalMessageWatch(aSwapID, aMessageID: int64): Integer;
begin
  Result := 0;
  try
    if Assigned(self.dmPgSwap) then
    begin
      dmPgSwap.SessionKey := self.SessionKey;
      if dmPgSwap.CheckSessionKey(SessionKey) then
      begin
        Result := dmPgSwap.MessageWatch(aSwapID, aMessageID);
        if Result < 0 then
        begin
          self.HasErrors := True;
          self.LastErrorMessage := dmPgSwap.LastErrorMessage;
        end
        else if Result = 0 then
        begin
          self.ClearErrors;
          self.HasErrors := True;
          self.LastErrorMessage := 'No record found';
        end
        else
        begin
          self.LastSwapMessage.LoadFromDataset(dmPgSwap.qrySwapMessage);
        end;
      end
      else
      begin
        self.LastErrorMessage := self.dmPgSwap.LastErrorMessage;
        Result := -1;
        self.HasErrors := True;
      end;
    end
    else
    begin
      self.HasErrors := True;
      Result := -1;
      self.LastErrorMessage := 'TJanuaPgServerSwap.InternalNotificationRead = ' + 'dmPgSwap not Assigned';
    end;
  except
    on e: exception do
    begin
      Result := -1;
      self.WriteError('TJanuaPgServerSwap.InternalNotificationRead', e);
      self.LastErrorMessage := 'TJanuaPgServerSwap.InternalNotificationRead = ' + e.ToString;
    end;
  end;
end;

function TJanuaPgServerSwap.InternalNotificationRead(aNotificationID: int64): Boolean;
begin
  Result := false;
  try
    if Assigned(self.dmPgSwap) then
    begin
      dmPgSwap.SessionKey := self.SessionKey;
      if dmPgSwap.CheckSessionKey(SessionKey) then
      begin
        Result := dmPgSwap.NotificationRead(aNotificationID);
        if not Result then
        begin
          self.HasErrors := True;
          self.LastErrorMessage := dmPgSwap.LastErrorMessage;
        end;
      end
      else
      begin
        self.LastErrorMessage := self.dmPgSwap.LastErrorMessage;
        Result := false;
        self.HasErrors := True;
      end;
    end
    else
    begin
      self.HasErrors := True;
      Result := false;
      self.LastErrorMessage := 'TJanuaPgServerSwap.InternalNotificationRead = ' + 'dmPgSwap not Assigned';
    end;
  except
    on e: exception do
    begin
      Result := false;
      self.WriteError('TJanuaPgServerSwap.InternalNotificationRead', e);
      self.LastErrorMessage := 'TJanuaPgServerSwap.InternalNotificationRead = ' + e.ToString;
    end;
  end;
end;

function TJanuaPgServerSwap.InternalNotifications: Boolean;
begin
  Result := false;
  try
    if Assigned(self.dmPgSwap) then
    begin
      dmPgSwap.SessionKey := self.SessionKey;

      if self.Offset <> 0 then
        dmPgSwap.Offset := self.Offset;

      if self.Limit <> 0 then
        dmPgSwap.Limit := self.Limit;

      if dmPgSwap.CheckSessionKey(SessionKey) and dmPgSwap.Notifications then
      begin
        self.FActualNotifications.LoadFromDataset(dmPgSwap.qryNotifications, dmPgSwap.qrySwapProfile);
        Result := True;
      end
      else
      begin
        self.LastErrorMessage := self.dmPgSwap.LastErrorMessage;
        Result := false;
        self.HasErrors := True;
      end;
    end
    else
    begin
      self.HasErrors := True;
      Result := false;
      self.LastErrorMessage := 'TJanuaPgServerSwap.InternalNotifications = ' + 'dmPgSwap not Assigned';
    end;
  except
    on e: exception do
    begin
      Result := false;
      self.WriteError('TdmPgSwap.InternalNotifications', e);
      self.LastErrorMessage := 'TdmPgSwap.InternalNotifications = ' + e.ToString;
    end;
  end;
end;

function TJanuaPgServerSwap.InternalRadar(const aRange: Integer): Integer;
begin
  Result := 0;
  try
    if Assigned(self.dmPgSwap) then
    begin
      dmPgSwap.SessionKey := self.SessionKey;
      if dmPgSwap.CheckSessionKey(SessionKey) then
      begin
        Result := dmPgSwap.Radar(aRange);
        if not Result >= 0 then
          self.LastErrorMessage := self.dmPgSwap.LastErrorMessage
        else
          RadarUsers.LoadFromDataset(dmPgSwap.qrySmallProfile, dmPgSwap.qryRadar);

      end
      else
        self.LastErrorMessage := self.dmPgSwap.LastErrorMessage;
    end
    else
    begin
      self.HasErrors := True;
      Result := -1;
      self.LastErrorMessage := 'TJanuaPgServerSwap.InternalRadar: dmPgSwap not Assigned';
    end;
  except
    on e: exception do
    begin
      Result := -1;
      self.WriteError('TdmPgSwap.InternalRadar', e);
      self.LastErrorMessage := 'TdmPgSwap.InternalRadar = ' + e.ToString;
    end;
  end;
end;

function TJanuaPgServerSwap.InternalSwapAgree(vUserID: Integer; vSwapID: int64;
  vAction: TJanuaSwapActionType): Boolean;
begin
  Result := false;
  try
    if Assigned(self.dmPgSwap) then
    begin
      dmPgSwap.SessionKey := self.SessionKey;
      if dmPgSwap.CheckSessionKey(SessionKey) then
      begin
        Result := dmPgSwap.SwapAgree(vUserID, vSwapID, vAction);
        if not Result then
          self.LastErrorMessage := self.dmPgSwap.LastErrorMessage

      end
      else
        self.LastErrorMessage := self.dmPgSwap.LastErrorMessage;
    end
    else
    begin
      self.HasErrors := True;
      Result := false;
      self.LastErrorMessage := 'TJanuaPgServerSwap.InternalSwapAgree: Swap= ' + vSwapID.ToString +
        'dmPgSwap not Assigned';
    end;
  except
    on e: exception do
    begin
      Result := false;
      self.WriteError('TdmPgSwap.InternalSwapAgree', e);
      self.LastErrorMessage := 'TdmPgSwap.InternalSwapAgree = ' + e.ToString;
    end;
  end;
end;

function TJanuaPgServerSwap.InternalSwapperProfile(aUserID: Integer): Boolean;
begin
  Result := false;
  try
    if Assigned(self.dmPgSwap) then
    begin
      dmPgSwap.SessionKey := self.SessionKey;
      if dmPgSwap.CheckSessionKey(SessionKey) and dmPgSwap.SwapperProfile(aUserID) then
      begin
        self.FJanuaSwapProfile.UserProfile := dmPgSwap.UserProfile;
        self.dmPgSwap.InternalItemsList(aUserID);
        // self.dmPgSwap.UserFollowers(aUserID);
        self.dmPgSwap.UserLikes(aUserID);
        // LoadFromDataset(dsSwapProfile, dsItems, dsLikes, dsFollowers: TDataset)
        self.FJanuaSwapProfile.LoadFromDataset(dmPgSwap.qrySwapProfile, dmPgSwap.qryUserItems,
          dmPgSwap.qryUserLikes, dmPgSwap.qryUserFollowers);
        Result := True;
      end
      else
        self.LastErrorMessage := self.dmPgSwap.LastErrorMessage;
    end
    else
    begin
      self.HasErrors := True;
      Result := false;
      self.LastErrorMessage := 'TJanuaPgServerSwap.InternalSwapperProfile = ' + 'dmPgSwap not Assigned';
    end;
  except
    on e: exception do
    begin
      Result := false;
      self.WriteError('TdmPgSwap.InternalSwapperProfile', e);
      self.LastErrorMessage := 'TdmPgSwap.InternalSwapperProfile = ' + e.ToString;
    end;
  end;
end;

function TJanuaPgServerSwap.InternalSwapStart(vItemID, vOtherItemID: int64; vState: Boolean): Boolean;
begin
  try
    if Assigned(self.dmPgSwap) then
    begin
      dmPgSwap.SessionKey := self.SessionKey;
      Result := dmPgSwap.CheckSessionKey(SessionKey) and dmPgSwap.SwapStart(vItemID, vOtherItemID, vState);
      if not Result then
      begin
        self.HasErrors := True;
        self.LastErrorMessage := self.dmPgSwap.LastErrorMessage;
      end;
    end
    else
    begin
      self.HasErrors := True;
      Result := false;
      self.LastErrorMessage := 'TJanuaPgServerSwap.InternalSwapStart = ' + 'dmPgSwap not Assigned';
    end;
  except
    on e: exception do
    begin
      Result := false;
      self.WriteError('TdmPgSwap.InternalSwapStart', e);
      self.LastErrorMessage := 'TdmPgSwap.InternalSwapStart = ' + e.ToString;
    end;
  end;
end;

function TJanuaPgServerSwap.InternalSwapWatch(vItemID: int64; vUserID: Integer): Boolean;
var
  // tasks: array of ITask;
  value: Integer;
  R1, R2, R3: Boolean;
begin
  try
    Result := false;
    if Assigned(self.dmPgSwap) then
    begin
      if self.dmPgSwap.CheckSessionKey(self.SessionKey) then
      begin
        // Setlength(tasks, 3);
        // tasks[0] := TTask.Create(
        // procedure()
        // begin
        R1 := self.dmPgSwap.OpenSmallProfile(vUserID);
        // end);
        // tasks[0].Start;

        // tasks[1] := TTask.Create(
        // procedure()
        // begin
        R2 := self.InternalItemWatch(vItemID);
        // end);
        // tasks[1].Start;

        // tasks[2] := TTask.Create(
        // procedure()
        // begin
        R3 := (self.InternalItemsList(vUserID) > 0);
        // end);
        // tasks[2].Start;

        // TTask.WaitForAll(tasks);

        // Result := R1 and R2 and R3;

        // 2015-01-15 considero true solo r1 ed r2 profilo ed item
        Result := R1 and R2 and R3;

        if Result then
        begin
          /// set up the FSwapForm ...........................................................
          self.FSwapForm.UserItem := self.SelectedItem;
          self.FSwapForm.OtherItems := self.SelectedItems;
          self.FSwapForm.OtherUser.LoadFromDataset(dmPgSwap.qrySmallProfile);
        end
        else
        begin
          self.LastErrorMessage := dmPgSwap.LastErrorMessage;
          self.HasErrors := True;
        end;
      end;
    end;
  except
    on e: exception do
    begin
      Result := false;
      self.WriteError('TdmPgSwap.InternalSwapWatch', e);
      self.LastErrorMessage := 'TdmPgSwap.InternalSwapWatch = ' + e.ToString;
    end;

  end;
end;

function TJanuaPgServerSwap.InternalUpdateSettings: Boolean;
begin
  Result := false;
  if self.dmPgSwap.CheckSessionKey(self.SessionKey) then
  begin
    if self.dmPgSwap.OpenSwapperProfile(0) then
    begin
      self.Settings.SaveToDataset(self.dmPgSwap.qrySwapProfile);
      self.dmPgSwap.ServerFunctions.PostDataset(dmPgSwap.qrySwapProfile);
      self.dmPgSwap.OpenSwapperProfile(0);
      self.Settings.LoadFromDataset(self.dmPgSwap.qrySwapProfile);
      Result := True;
    end;
  end
  else
  begin
    Result := false;
    self.LastErrorMessage := dmPgSwap.LastErrorMessage;
  end;
end;

function TJanuaPgServerSwap.InternalUpdateUserProfile: Boolean;
begin
  try
    Result := false;
    if Assigned(self.dmPgSwap) then
    begin
      if self.dmPgSwap.CheckSessionKey(self.SessionKey) then
      begin
        self.dmPgSwap.UserProfile := self.JanuaSwapProfile.UserProfile;
        if self.dmPgSwap.OpenProfile(0) then
        begin
          JanuaSwapProfile.UserProfile.SaveToDataset(dmPgSwap.qryUserSession, dmPgSwap.qryUserProfile);
          Result := True;
        end
        else
        begin
          Result := false;
          self.LastErrorMessage := dmPgSwap.LastErrorMessage;
        end;
      end;
    end;
  except
    on e: exception do
    begin
      Result := false;
      self.HasErrors := True;
      self.WriteError('TJanuaPgServerSwap.InternalUpdateUserProfile', e);
      self.LastErrorMessage := 'TJanuaPgServerSwap.InternalUpdateUserProfile = ' + e.ToString;
    end;

  end;
end;

function TJanuaPgServerSwap.InternalUserFollow(aUserID: Integer; aFollow: Boolean = True): Boolean;
begin
  try
    if Assigned(self.dmPgSwap) then
    begin
      if self.dmPgSwap.CheckSessionKey(self.SessionKey) then
        Result := self.dmPgSwap.UserFollow(aUserID, aFollow)
      else
        Result := false;

      if not Result then
      begin
        self.HasErrors := True;
        self.LastErrorMessage := self.dmPgSwap.LastErrorMessage;
      end;
    end
    else
    begin
      Result := false;
      self.LastErrorMessage := 'TJanuaPgServerSwap.InternalUserFollow: Internal Server Error';
    end;

  except
    on e: exception do
    begin
      Result := false;
      self.WriteError('TdmPgSwap.InternalUserFollow', e);
      self.LastErrorMessage := 'TdmPgSwap.InternalUserFollow = ' + e.ToString;
    end;
  end;
end;

function TJanuaPgServerSwap.InternalUserFollowers(aUserID: Integer): Boolean;
begin
  if Assigned(dmPgSwap) and dmPgSwap.CheckSessionKey(SessionKey) then
  begin
    Result := self.dmPgSwap.UserFollowers(aUserID) > 0;

    if Result and dmPgSwap.qryUserFollowers.Active then
      self.FSelectedFollowers.LoadFromDataset(dmPgSwap.qryUserFollowers)
    else
      self.LastErrorMessage := dmPgSwap.LastErrorMessage;

    // if Assigned FdsUserItems and target Dataset is Active.....................................
  end
  else
  begin
    Result := false;
    self.LastErrorMessage := 'Invalid or expired Session';
  end;
end;

function TJanuaPgServerSwap.InternalUserFollowings(aUserID: Integer): Boolean;
begin
  if Assigned(dmPgSwap) and dmPgSwap.CheckSessionKey(SessionKey) then
  begin
    Result := self.dmPgSwap.UserFollowings(aUserID) > 0;

    if Result and dmPgSwap.qryUserFollowings.Active then
      self.FSelectedFollowings.LoadFromDataset(dmPgSwap.qryUserFollowings)
    else
      self.LastErrorMessage := dmPgSwap.LastErrorMessage;

    // if Assigned FdsUserItems and target Dataset is Active.....................................
  end
  else
  begin
    Result := false;
    self.LastErrorMessage := 'Invalid or expired Session';
  end;
end;

function TJanuaPgServerSwap.InternalUserLikes(aUserID: Integer): Boolean;
begin
  Result := false;
  try
    if Assigned(self.dmPgSwap) then
    begin
      dmPgSwap.SessionKey := self.SessionKey;
      if dmPgSwap.CheckSessionKey(SessionKey) and (dmPgSwap.UserLikes(aUserID) <> -1) then
      begin
        self.SelectedItems.LoadFromDataset(dmPgSwap.qryUserLikes, dmPgSwap.qrySwapProfile);
        Result := True;
      end
      else
        self.LastErrorMessage := self.dmPgSwap.LastErrorMessage;
    end
    else
    begin
      self.HasErrors := True;
      Result := false;
      self.LastErrorMessage := 'TJanuaPgServerSwap.InternalUserLikes = ' + 'dmPgSwap not Assigned';
    end;
  except
    on e: exception do
    begin
      Result := false;
      self.WriteError('TJanuaPgServerSwap.InternalUserLikes', e);
      self.LastErrorMessage := 'TJanuaPgServerSwap.InternalUserLikes = ' + e.ToString;
    end;
  end;
end;

function TJanuaPgServerSwap.InternalUserSwap(aSwapID: int64; aUserID: Integer): Boolean;
begin

  if Assigned(self.dmPgSwap) and dmPgSwap.CheckSessionKey(SessionKey) then
  begin
    Result := self.dmPgSwap.UserSwap(aSwapID, aUserID);
    if Result then
      self.selectedSwap.LoadFromDataset(dmPgSwap.qrySwap)
    else
    begin
      self.UserSwaps.Clear;
      self.LastErrorMessage := self.dmPgSwap.LastErrorMessage;
      self.HasErrors := True;
    end;
  end
  else
  begin
    Result := false;
    self.HasErrors := True;
    self.LastErrorMessage := 'dmPgSwap not Set or SessionKey not set: ' + SessionKey;
  end;

end;

function TJanuaPgServerSwap.InternalUserSwapsList(aUserID: Integer): Boolean;
begin

  if Assigned(self.dmPgSwap) and dmPgSwap.CheckSessionKey(SessionKey) then
  begin
    Result := self.dmPgSwap.SwapList(aUserID);
    if Result then
      self.UserSwaps.LoadFromDataset(self.dmPgSwap.qryUserSwaps, self.dmPgSwap.qrySwapProfile)
    else
    begin
      self.UserSwaps.Clear;
      self.LastErrorMessage := self.dmPgSwap.LastErrorMessage;
      self.HasErrors := True;
    end;
  end
  else
  begin
    Result := false;
    self.HasErrors := True;
    self.LastErrorMessage := 'dmPgSwap not Set or SessionKey not set: ' + SessionKey;
  end;
end;

end.
