inherited dmPgSwap: TdmPgSwap
  Height = 644
  Width = 754
  inherited PgErgoConnection: TJanuaUniConnection
    PoolingOptions.MaxPoolSize = 2048
    Left = 48
    EncryptedPassword = 'CCFF8DFF98FFCFFF92FFCCFF8DFF9CFFCBFF8BFFCFFF8DFF'
  end
  inherited tbUserSessionRoles: TUniTable
    Left = 48
  end
  inherited dsUserSession: TDataSource
    Left = 48
  end
  inherited qryUserSession: TUniQuery
    Left = 48
  end
  inherited qryUserProfile: TUniQuery
    Left = 48
  end
  inherited qryUser: TUniQuery
    Left = 48
  end
  inherited qryTowns: TUniQuery
    Left = 48
    Top = 360
  end
  inherited testTable: TUniTable
    Left = 48
  end
  object qrySwapProfile: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT  f.*, p.*,'
      '       swap.isfollowed(:session_user_id, user_id ) isfollowed,'
      '       swap.isfollowing(:session_user_id, user_id ) isfollowing,'
      '       0 as distance,'
      '       0 as range'
      '  FROM swap.profiles p, swap.f_profile(:db_user_id) f'
      '  where user_id = :db_user_id')
    Left = 144
    Top = 8
    ParamData = <
      item
        DataType = ftInteger
        Name = 'session_user_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'db_user_id'
        ParamType = ptInput
        Value = nil
      end>
    object qrySwapProfilenotifications: TIntegerField
      FieldName = 'notifications'
      ReadOnly = True
    end
    object qrySwapProfilenotificationsunread: TIntegerField
      FieldName = 'notificationsunread'
      ReadOnly = True
    end
    object qrySwapProfilefeeds: TIntegerField
      FieldName = 'feeds'
      ReadOnly = True
    end
    object qrySwapProfilefeedsunread: TIntegerField
      FieldName = 'feedsunread'
      ReadOnly = True
    end
    object qrySwapProfilefollowings: TIntegerField
      FieldName = 'followings'
      ReadOnly = True
    end
    object qrySwapProfilefollowers: TIntegerField
      FieldName = 'followers'
      ReadOnly = True
    end
    object qrySwapProfilelikes: TIntegerField
      FieldName = 'likes'
      ReadOnly = True
    end
    object qrySwapProfileswaps: TIntegerField
      FieldName = 'swaps'
      ReadOnly = True
    end
    object qrySwapProfileswapsactive: TIntegerField
      FieldName = 'swapsactive'
      ReadOnly = True
    end
    object qrySwapProfileuser_id: TIntegerField
      FieldName = 'user_id'
      Required = True
    end
    object qrySwapProfilefollowing: TSmallintField
      FieldName = 'following'
      Required = True
    end
    object qrySwapProfilefollowers_1: TSmallintField
      FieldName = 'followers_1'
      Required = True
    end
    object qrySwapProfileswaps_1: TSmallintField
      FieldName = 'swaps_1'
      Required = True
    end
    object qrySwapProfilenotifications_1: TIntegerField
      FieldName = 'notifications_1'
      Required = True
    end
    object qrySwapProfileunread: TIntegerField
      FieldName = 'unread'
      Required = True
    end
    object qrySwapProfilelikes_1: TIntegerField
      FieldName = 'likes_1'
      Required = True
    end
    object qrySwapProfilefollowingyou: TBooleanField
      FieldName = 'followingyou'
      Required = True
    end
    object qrySwapProfilelikewantobject: TBooleanField
      FieldName = 'likewantobject'
      Required = True
    end
    object qrySwapProfileeventupdates: TBooleanField
      FieldName = 'eventupdates'
      Required = True
    end
    object qrySwapProfilefollowaddeditem: TBooleanField
      FieldName = 'followaddeditem'
      Required = True
    end
    object qrySwapProfileprivateaccount: TBooleanField
      FieldName = 'privateaccount'
      Required = True
    end
    object qrySwapProfilesubcriptionvalid: TDateField
      FieldName = 'subcriptionvalid'
    end
    object qrySwapProfileprivacypolicy: TBooleanField
      FieldName = 'privacypolicy'
      Required = True
    end
    object qrySwapProfiletermsofservice: TBooleanField
      FieldName = 'termsofservice'
      Required = True
    end
    object qrySwapProfileisfollowed: TBooleanField
      FieldName = 'isfollowed'
      ReadOnly = True
    end
    object qrySwapProfileisfollowing: TBooleanField
      FieldName = 'isfollowing'
      ReadOnly = True
    end
    object qrySwapProfiledistance: TIntegerField
      FieldName = 'distance'
      ReadOnly = True
    end
    object qrySwapProfilerange: TIntegerField
      FieldName = 'range'
      ReadOnly = True
    end
  end
  object spEventsAddUser: TUniStoredProc
    StoredProcName = 'swap.event_add_user'
    SQL.Strings = (
      
        'SELECT * FROM swap.event_add_user(:p_event_id, :p_user_id, :isad' +
        'min)')
    Connection = PgErgoConnection
    Left = 240
    Top = 88
    ParamData = <
      item
        DataType = ftInteger
        Name = 'p_event_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'p_user_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftBoolean
        Name = 'isadmin'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftBoolean
        Name = 'result'
        ParamType = ptOutput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'errormessage'
        ParamType = ptOutput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'errorcode'
        ParamType = ptOutput
        Value = nil
      end>
    CommandStoredProcName = 'swap.event_add_user:0'
  end
  object spEventsDelUser: TUniStoredProc
    StoredProcName = 'swap.events_del_user'
    SQL.Strings = (
      'SELECT swap.events_del_user(:p_event_id, :p_user_id)')
    Connection = PgErgoConnection
    Left = 240
    Top = 144
    ParamData = <
      item
        DataType = ftBoolean
        Name = 'result'
        ParamType = ptResult
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'p_event_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'p_user_id'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'swap.events_del_user:0'
  end
  object spItemInsert: TUniStoredProc
    StoredProcName = 'swap.items_insert'
    SQL.Strings = (
      'SELECT swap.items_insert(:p_user_id, :p_des, :p_url)')
    Connection = PgErgoConnection
    Left = 328
    Top = 64
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'result'
        ParamType = ptResult
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'p_user_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'p_des'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'p_url'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'swap.items_insert:0'
  end
  object qryDiscoverItems: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT i.*,'
      '       f_likes(i.id) as item_likes, '
      '       swap.user_item_likes(:user_id, i.id ) user_likes'
      '  FROM swap.items i '
      '  where '
      '    i.owner_id <> :user_id'
      '    and '
      
        '     ( i.id not in (select item_id from swap.items_discovered d ' +
        'where d.user_id = :user_id)'
      '       or '
      '       :check = false'
      '     )'
      '  order by '
      '    i.id desc'
      '  limit 10')
    BeforeOpen = qryDiscoverItemsBeforeOpen
    Left = 144
    Top = 168
    ParamData = <
      item
        DataType = ftInteger
        Name = 'user_id'
        ParamType = ptInput
        Value = 226
      end
      item
        DataType = ftBoolean
        Name = 'check'
        ParamType = ptInput
        Value = True
      end>
    object qryDiscoverItemsid: TLargeintField
      FieldName = 'id'
      Required = True
    end
    object qryDiscoverItemsowner_id: TIntegerField
      FieldName = 'owner_id'
      Required = True
    end
    object qryDiscoverItemsinsert_date: TDateTimeField
      FieldName = 'insert_date'
    end
    object qryDiscoverItemsdescription: TWideMemoField
      FieldName = 'description'
      BlobType = ftWideMemo
    end
    object qryDiscoverItemsurl: TWideStringField
      FieldName = 'url'
      Size = 2048
    end
    object qryDiscoverItemsavailable: TBooleanField
      FieldName = 'available'
    end
    object qryDiscoverItemsswapped: TBooleanField
      FieldName = 'swapped'
    end
    object qryDiscoverItemslikes: TSmallintField
      FieldName = 'likes'
    end
    object qryDiscoverItemsitem_likes: TIntegerField
      FieldName = 'item_likes'
      ReadOnly = True
    end
    object qryDiscoverItemsuser_likes: TBooleanField
      FieldName = 'user_likes'
      ReadOnly = True
    end
  end
  object spItemLike: TUniStoredProc
    StoredProcName = 'swap.items_likes'
    SQL.Strings = (
      'SELECT swap.items_likes(:p_user_id, :p_item_id, :p_state)')
    Connection = PgErgoConnection
    Left = 328
    Top = 120
    ParamData = <
      item
        DataType = ftBoolean
        Name = 'result'
        ParamType = ptResult
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'p_user_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftLargeint
        Name = 'p_item_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftBoolean
        Name = 'p_state'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'swap.items_likes:2'
  end
  object spItemDiscovered: TUniStoredProc
    StoredProcName = 'swap.items_discovered'
    SQL.Strings = (
      'SELECT swap.items_discovered(:p_user_id, :p_item_id)')
    Connection = PgErgoConnection
    Left = 328
    Top = 176
    ParamData = <
      item
        DataType = ftBoolean
        Name = 'result'
        ParamType = ptResult
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'p_user_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftLargeint
        Name = 'p_item_id'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'swap.items_discovered:0'
  end
  object qryEditItem: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO swap.items'
      
        '  (id, owner_id, insert_date, description, url, available, swapp' +
        'ed, likes)'
      'VALUES'
      
        '  (:id, :owner_id, :insert_date, :description, :url, :available,' +
        ' :swapped, :likes)')
    SQLDelete.Strings = (
      'DELETE FROM swap.items'
      'WHERE'
      '  id = :Old_id')
    SQLUpdate.Strings = (
      'UPDATE swap.items'
      'SET'
      
        '  id = :id, owner_id = :owner_id, insert_date = :insert_date, de' +
        'scription = :description, url = :url, available = :available, sw' +
        'apped = :swapped, likes = :likes'
      'WHERE'
      '  id = :Old_id')
    SQLLock.Strings = (
      'SELECT * FROM swap.items'
      'WHERE'
      '  id = :Old_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT id, owner_id, insert_date, description, url, available, s' +
        'wapped, likes FROM swap.items'
      'WHERE'
      '  id = :id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM swap.items'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT s.*, s.likes as item_likes, '
      '  swap.user_item_likes(:session_user_id, s.id ) user_likes'
      '  FROM swap.items s'
      '  where id = :item_id')
    BeforeOpen = qryEditItemBeforeOpen
    Left = 144
    Top = 224
    ParamData = <
      item
        DataType = ftInteger
        Name = 'session_user_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftLargeint
        Name = 'item_id'
        ParamType = ptInput
        Value = 205
      end>
    object qryEditItemid: TLargeintField
      FieldName = 'id'
      Required = True
    end
    object qryEditItemowner_id: TIntegerField
      FieldName = 'owner_id'
      Required = True
    end
    object qryEditIteminsert_date: TDateTimeField
      FieldName = 'insert_date'
    end
    object qryEditItemdescription: TWideMemoField
      FieldName = 'description'
      BlobType = ftWideMemo
    end
    object qryEditItemurl: TWideStringField
      FieldName = 'url'
      Size = 2048
    end
    object qryEditItemavailable: TBooleanField
      FieldName = 'available'
    end
    object qryEditItemswapped: TBooleanField
      FieldName = 'swapped'
    end
    object qryEditItemlikes: TSmallintField
      FieldName = 'likes'
    end
    object qryEditItemitem_likes: TSmallintField
      FieldName = 'item_likes'
    end
    object qryEditItemuser_likes: TBooleanField
      FieldName = 'user_likes'
      ReadOnly = True
    end
  end
  object qryUserItems: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT i.*, f_likes(i.id) as item_likes, '
      '       swap.user_item_likes(:session_user_id, i.id ) user_likes'
      '  FROM swap.items i '
      '  where owner_id = :owner_id'
      '  and (available = :available or :available = false)')
    BeforeOpen = qryUserItemsBeforeOpen
    Left = 144
    Top = 336
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'session_user_id'
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'owner_id'
        ParamType = ptInput
        Value = 224
      end
      item
        DataType = ftBoolean
        Name = 'available'
        ParamType = ptInput
        Value = True
      end>
    object qryUserItemsid: TLargeintField
      FieldName = 'id'
      Required = True
    end
    object qryUserItemsowner_id: TIntegerField
      FieldName = 'owner_id'
      Required = True
    end
    object qryUserItemsinsert_date: TDateTimeField
      FieldName = 'insert_date'
    end
    object qryUserItemsdescription: TWideMemoField
      FieldName = 'description'
      BlobType = ftWideMemo
    end
    object qryUserItemsurl: TWideStringField
      FieldName = 'url'
      Size = 2048
    end
    object qryUserItemsavailable: TBooleanField
      FieldName = 'available'
    end
    object qryUserItemsswapped: TBooleanField
      FieldName = 'swapped'
    end
    object qryUserItemslikes: TSmallintField
      FieldName = 'likes'
    end
    object qryUserItemsitem_likes: TIntegerField
      FieldName = 'item_likes'
      ReadOnly = True
    end
    object qryUserItemsuser_likes: TBooleanField
      FieldName = 'user_likes'
      ReadOnly = True
    end
  end
  object qryWatchItem: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT i.*,'
      '       i.likes as item_likes, '
      '       swap.user_item_likes(:session_user_id, i.id ) user_likes'
      '  FROM swap.items i'
      '  where id = :item_id')
    BeforeOpen = qryWatchItemBeforeOpen
    AfterOpen = qryWatchItemAfterOpen
    AfterScroll = qryWatchItemAfterScroll
    Left = 144
    Top = 56
    ParamData = <
      item
        DataType = ftInteger
        Name = 'session_user_id'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftLargeint
        Name = 'item_id'
        ParamType = ptInput
        Value = nil
      end>
    object qryWatchItemid: TLargeintField
      FieldName = 'id'
      Required = True
    end
    object qryWatchItemowner_id: TIntegerField
      FieldName = 'owner_id'
      Required = True
    end
    object qryWatchIteminsert_date: TDateTimeField
      FieldName = 'insert_date'
    end
    object qryWatchItemdescription: TWideMemoField
      FieldName = 'description'
      BlobType = ftWideMemo
    end
    object qryWatchItemurl: TWideStringField
      FieldName = 'url'
      Size = 2048
    end
    object qryWatchItemavailable: TBooleanField
      FieldName = 'available'
    end
    object qryWatchItemswapped: TBooleanField
      FieldName = 'swapped'
    end
    object qryWatchItemlikes: TSmallintField
      FieldName = 'likes'
    end
    object qryWatchItemitem_likes: TIntegerField
      FieldName = 'item_likes'
      ReadOnly = True
    end
    object qryWatchItemuser_likes: TBooleanField
      FieldName = 'user_likes'
      ReadOnly = True
    end
  end
  object qryWatchItemImages: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT *'
      '  FROM swap.items_images '
      '  where item_id = :item_id')
    Left = 144
    Top = 112
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'item_id'
        ParamType = ptInput
        Value = nil
      end>
    object qryWatchItemImagesid: TLargeintField
      FieldName = 'id'
      Required = True
    end
    object qryWatchItemImagesurl: TWideStringField
      FieldName = 'url'
      Size = 1024
    end
    object qryWatchItemImagestitle: TWideStringField
      FieldName = 'title'
      Size = 128
    end
    object qryWatchItemImagesitem_id: TLargeintField
      FieldName = 'item_id'
    end
    object qryWatchItemImagesinsert_date: TDateTimeField
      FieldName = 'insert_date'
    end
  end
  object spImageInsert: TUniStoredProc
    StoredProcName = 'swap.item_images_insert'
    SQL.Strings = (
      'SELECT swap.item_images_insert(:p_item_id, :p_url, :p_title)')
    Connection = PgErgoConnection
    Left = 240
    Top = 200
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'result'
        ParamType = ptResult
        Value = nil
      end
      item
        DataType = ftLargeint
        Name = 'p_item_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'p_url'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'p_title'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'swap.item_images_insert:0'
  end
  object qryImage: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT i.owner_id, m.*'
      '  FROM swap.items_images m, swap.items i '
      '  where m.id = :image_id'
      '  and i.id = m.item_id')
    Left = 328
    Top = 232
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'image_id'
        ParamType = ptInput
        Value = nil
      end>
    object qryImageowner_id: TIntegerField
      FieldName = 'owner_id'
      ReadOnly = True
      Required = True
    end
    object qryImageid: TLargeintField
      FieldName = 'id'
      Required = True
    end
    object qryImageurl: TWideStringField
      FieldName = 'url'
      Size = 1024
    end
    object qryImagetitle: TWideStringField
      FieldName = 'title'
      Size = 128
    end
    object qryImageitem_id: TLargeintField
      FieldName = 'item_id'
    end
    object qryImageinsert_date: TDateTimeField
      FieldName = 'insert_date'
    end
  end
  object spItemsDisLike: TUniStoredProc
    StoredProcName = 'swap.items_dislikes'
    SQL.Strings = (
      'SELECT swap.items_dislikes(:p_user_id, :p_item_id, :p_state)')
    Connection = PgErgoConnection
    Left = 328
    Top = 8
    ParamData = <
      item
        DataType = ftBoolean
        Name = 'result'
        ParamType = ptResult
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'p_user_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftLargeint
        Name = 'p_item_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftBoolean
        Name = 'p_state'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'swap.items_dislikes:0'
  end
  object spUserFollow: TUniStoredProc
    StoredProcName = 'swap.follow'
    SQL.Strings = (
      'SELECT swap.follow(:p_user_id, :p_follower_id, :p_status)')
    Connection = PgErgoConnection
    Left = 240
    Top = 256
    ParamData = <
      item
        DataType = ftBoolean
        Name = 'result'
        ParamType = ptResult
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'p_user_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'p_follower_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftBoolean
        Name = 'p_status'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'swap.follow:0'
  end
  object qryUserFollowers: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT f.*,  p.first_name, p.last_name,   '
      '       p.address_full,  p.latitude,'
      '       p.longitude, u.image_url, p.db_user_id,'
      
        '       swap.isfollowed(:session_user_id, f.follower_id) isfollow' +
        'ed,'
      
        '       swap.isfollowing(:session_user_id, f.follower_id) isfollo' +
        'wing,'
      '       0 as distance,'
      '       0 as range'
      '  FROM system.db_users_profiles p, '
      '       swap.followers f,'
      '       system.db_users u'
      '  where '
      '       f.follower_id = p.db_user_id '
      '       and'
      '       f.user_id = :user_id'
      '       and'
      '       u.db_user_id = p.db_user_id')
    Left = 144
    Top = 448
    ParamData = <
      item
        DataType = ftInteger
        Name = 'session_user_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'user_id'
        ParamType = ptInput
        Value = nil
      end>
    object qryUserFollowersfirst_name: TWideStringField
      FieldName = 'first_name'
      Size = 128
    end
    object qryUserFollowerslast_name: TWideStringField
      FieldName = 'last_name'
      Size = 128
    end
    object qryUserFollowersaddress_full: TWideStringField
      FieldName = 'address_full'
      Size = 2048
    end
    object qryUserFollowerslatitude: TFloatField
      FieldName = 'latitude'
    end
    object qryUserFollowerslongitude: TFloatField
      FieldName = 'longitude'
    end
    object qryUserFollowersimage_url: TWideStringField
      FieldName = 'image_url'
      ReadOnly = True
      Size = 2048
    end
    object qryUserFollowersdb_user_id: TIntegerField
      FieldName = 'db_user_id'
      Required = True
    end
    object qryUserFollowersuser_id: TIntegerField
      FieldName = 'user_id'
      ReadOnly = True
      Required = True
    end
    object qryUserFollowersfollower_id: TIntegerField
      FieldName = 'follower_id'
      ReadOnly = True
      Required = True
    end
    object qryUserFollowersinsert_date: TDateTimeField
      FieldName = 'insert_date'
      ReadOnly = True
      Required = True
    end
    object qryUserFollowersisfollowed: TBooleanField
      FieldName = 'isfollowed'
      ReadOnly = True
    end
    object qryUserFollowersisfollowing: TBooleanField
      FieldName = 'isfollowing'
      ReadOnly = True
    end
    object qryUserFollowersdistance: TIntegerField
      FieldName = 'distance'
      ReadOnly = True
    end
    object qryUserFollowersrange: TIntegerField
      FieldName = 'range'
      ReadOnly = True
    end
  end
  object qryUserLikes: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT i.*,'
      ' u.user_first_name || '#39' '#39' || u.user_family_name as full_name, '
      ' u.image_url as avatar_img, f_likes(i.id) as item_likes,'
      ' swap.user_item_likes(:session_user_id, i.id ) user_likes'
      ''
      '  FROM swap.items i, swap.items_likes l, system.db_users u'
      '  where i.id = l.item_id'
      '        and'
      '        l.user_id = :user_id'
      '        and '
      '        u.db_user_id = i.owner_id'
      'order by insert_date desc'
      '  ')
    BeforeOpen = qryUserLikesBeforeOpen
    Left = 144
    Top = 392
    ParamData = <
      item
        DataType = ftInteger
        Name = 'session_user_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'user_id'
        ParamType = ptInput
        Value = nil
      end>
    object qryUserLikesid: TLargeintField
      FieldName = 'id'
      Required = True
    end
    object qryUserLikesowner_id: TIntegerField
      FieldName = 'owner_id'
      Required = True
    end
    object qryUserLikesinsert_date: TDateTimeField
      FieldName = 'insert_date'
    end
    object qryUserLikesdescription: TWideMemoField
      FieldName = 'description'
      BlobType = ftWideMemo
    end
    object qryUserLikesurl: TWideStringField
      FieldName = 'url'
      Size = 2048
    end
    object qryUserLikesavailable: TBooleanField
      FieldName = 'available'
    end
    object qryUserLikesswapped: TBooleanField
      FieldName = 'swapped'
    end
    object qryUserLikeslikes: TSmallintField
      FieldName = 'likes'
    end
    object qryUserLikesfull_name: TWideMemoField
      FieldName = 'full_name'
      ReadOnly = True
      BlobType = ftWideMemo
    end
    object qryUserLikesavatar_img: TWideStringField
      FieldName = 'avatar_img'
      ReadOnly = True
      Size = 2048
    end
    object qryUserLikesitem_likes: TIntegerField
      FieldName = 'item_likes'
      ReadOnly = True
    end
    object qryUserLikesuser_likes: TBooleanField
      FieldName = 'user_likes'
      ReadOnly = True
    end
  end
  object qryUserFollowings: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT p.first_name, p.last_name,   '
      '       p.address_full,  p.latitude,'
      '       p.longitude, u.image_url, p.db_user_id,'
      '       swap.isfollowed(:session_user_id, f.user_id) isfollowed,'
      
        '       swap.isfollowing(:session_user_id, f.user_id) isfollowing' +
        ','
      '       0 as distance,'
      '       0 as range'
      ''
      '  FROM system.db_users_profiles p, '
      '       swap.followers f,'
      '       system.db_users u'
      '  where '
      '       f.user_id = p.db_user_id '
      '       and'
      '       f.follower_id = :user_id'
      '       and'
      '       u.db_user_id = p.db_user_id')
    Left = 144
    Top = 504
    ParamData = <
      item
        DataType = ftInteger
        Name = 'session_user_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'user_id'
        ParamType = ptInput
        Value = nil
      end>
    object qryUserFollowingsfirst_name: TWideStringField
      FieldName = 'first_name'
      Size = 128
    end
    object qryUserFollowingslast_name: TWideStringField
      FieldName = 'last_name'
      Size = 128
    end
    object qryUserFollowingsaddress_full: TWideStringField
      FieldName = 'address_full'
      Size = 2048
    end
    object qryUserFollowingslatitude: TFloatField
      FieldName = 'latitude'
    end
    object qryUserFollowingslongitude: TFloatField
      FieldName = 'longitude'
    end
    object qryUserFollowingsimage_url: TWideStringField
      FieldName = 'image_url'
      ReadOnly = True
      Size = 2048
    end
    object qryUserFollowingsdb_user_id: TIntegerField
      FieldName = 'db_user_id'
      Required = True
    end
    object qryUserFollowingsisfollowed: TBooleanField
      FieldName = 'isfollowed'
      ReadOnly = True
    end
    object qryUserFollowingsisfollowing: TBooleanField
      FieldName = 'isfollowing'
      ReadOnly = True
    end
    object qryUserFollowingsdistance: TIntegerField
      FieldName = 'distance'
      ReadOnly = True
    end
    object qryUserFollowingsrange: TIntegerField
      FieldName = 'range'
      ReadOnly = True
    end
  end
  object qryNotifications: TUniQuery
    DataTypeMap = <
      item
        DBType = 517
        FieldType = ftWideString
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      'select  '
      
        '     e.address as event_address, e.main_picture_url as event_pic' +
        'ture_url,  '
      
        '     e.event_date, e.title as event_name, e.hour as event_hour, ' +
        'e.mins as event_mins, '
      '     e.price as event_price,'
      '     n.*, '
      '       swap.isfollowed(:user_id, n.other_user_id) isfollowed,'
      '       swap.isfollowing(:user_id,n.other_user_id ) isfollowing'
      ' from '
      '   swap.notifications n, swap.notifications_types t,'
      '   swap.f_event(n.event_id) e'
      'where '
      '    n.user_id = :user_id and n.type_id = t.id and t.feed = false'
      'order by '
      '    n.id desc, n.nread desc'
      'limit :LIMIT offset :OFFSET')
    Left = 424
    Top = 32
    ParamData = <
      item
        DataType = ftInteger
        Name = 'user_id'
        ParamType = ptInput
        Value = 213
      end
      item
        DataType = ftInteger
        Name = 'LIMIT'
        ParamType = ptInput
        Value = 20
      end
      item
        DataType = ftInteger
        Name = 'OFFSET'
        ParamType = ptInput
        Value = 0
      end>
    object qryNotificationsevent_address: TWideStringField
      FieldName = 'event_address'
      ReadOnly = True
      Size = 512
    end
    object qryNotificationsevent_picture_url: TWideStringField
      FieldName = 'event_picture_url'
      ReadOnly = True
      Size = 2048
    end
    object qryNotificationsevent_date: TDateTimeField
      FieldName = 'event_date'
      ReadOnly = True
    end
    object qryNotificationsevent_name: TWideMemoField
      FieldName = 'event_name'
      ReadOnly = True
      BlobType = ftWideMemo
    end
    object qryNotificationsevent_hour: TSmallintField
      FieldName = 'event_hour'
      ReadOnly = True
    end
    object qryNotificationsevent_mins: TSmallintField
      FieldName = 'event_mins'
      ReadOnly = True
    end
    object qryNotificationsevent_price: TFloatField
      FieldName = 'event_price'
      ReadOnly = True
    end
    object qryNotificationsuser_id: TIntegerField
      FieldName = 'user_id'
      Required = True
    end
    object qryNotificationsid: TLargeintField
      FieldName = 'id'
      Required = True
    end
    object qryNotificationsdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
      Required = True
    end
    object qryNotificationstitle: TWideStringField
      FieldName = 'title'
      Required = True
      Size = 128
    end
    object qryNotificationsother_user_id: TIntegerField
      FieldName = 'other_user_id'
      Required = True
    end
    object qryNotificationsuser_item_id: TLargeintField
      FieldName = 'user_item_id'
    end
    object qryNotificationsswap_item_id: TLargeintField
      FieldName = 'swap_item_id'
    end
    object qryNotificationsinsert_date: TDateTimeField
      FieldName = 'insert_date'
    end
    object qryNotificationstype_id: TSmallintField
      FieldName = 'type_id'
    end
    object qryNotificationsuser_name: TWideMemoField
      FieldName = 'user_name'
      BlobType = ftWideMemo
    end
    object qryNotificationsuser_avatar_img: TWideStringField
      FieldName = 'user_avatar_img'
      Size = 1024
    end
    object qryNotificationsswap_item_image: TWideStringField
      FieldName = 'swap_item_image'
      Size = 1024
    end
    object qryNotificationsuser_item_image: TWideMemoField
      FieldName = 'user_item_image'
      BlobType = ftWideMemo
    end
    object qryNotificationsswap_id: TLargeintField
      FieldName = 'swap_id'
    end
    object qryNotificationsnread: TBooleanField
      FieldName = 'nread'
      Required = True
    end
    object qryNotificationsevent_id: TIntegerField
      FieldName = 'event_id'
    end
    object qryNotificationsevent_name_1: TWideStringField
      FieldName = 'event_name_1'
      Size = 128
    end
    object qryNotificationsevent_date_1: TDateField
      FieldName = 'event_date_1'
    end
    object qryNotificationsevent_address_1: TWideStringField
      FieldName = 'event_address_1'
      Size = 128
    end
    object qryNotificationsitem_description: TWideStringField
      FieldName = 'item_description'
      Size = 256
    end
    object qryNotificationsisfollowed: TBooleanField
      FieldName = 'isfollowed'
      ReadOnly = True
    end
    object qryNotificationsisfollowing: TBooleanField
      FieldName = 'isfollowing'
      ReadOnly = True
    end
  end
  object spNotificationRead: TUniStoredProc
    StoredProcName = 'swap.notification_read'
    SQL.Strings = (
      'SELECT swap.notification_read(:p_user_id, :p_notification_id)')
    Connection = PgErgoConnection
    Left = 240
    Top = 320
    ParamData = <
      item
        DataType = ftBoolean
        Name = 'result'
        ParamType = ptResult
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'p_user_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftLargeint
        Name = 'p_notification_id'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'swap.notification_read:0'
  end
  object qrySmallProfile: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT p.first_name, p.last_name,   '
      '       p.address_full,  p.latitude,'
      '       p.longitude, u.image_url, p.db_user_id,'
      '       swap.isfollowed(:session_user_id, :user_id) isfollowed,'
      '       swap.isfollowing(:session_user_id, :user_id) isfollowing,'
      '       0 as distance,'
      '       0 as range'
      '  FROM system.db_users_profiles p, '
      '       system.db_users u'
      '  where '
      '       :user_id = p.db_user_id '
      '       and'
      '       u.db_user_id = p.db_user_id')
    Left = 144
    Top = 280
    ParamData = <
      item
        DataType = ftInteger
        Name = 'session_user_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'user_id'
        ParamType = ptInput
        Value = nil
      end>
    object qrySmallProfilefirst_name: TWideStringField
      FieldName = 'first_name'
      Size = 128
    end
    object qrySmallProfilelast_name: TWideStringField
      FieldName = 'last_name'
      Size = 128
    end
    object qrySmallProfileaddress_full: TWideStringField
      FieldName = 'address_full'
      Size = 2048
    end
    object qrySmallProfilelatitude: TFloatField
      FieldName = 'latitude'
    end
    object qrySmallProfilelongitude: TFloatField
      FieldName = 'longitude'
    end
    object qrySmallProfileimage_url: TWideStringField
      FieldName = 'image_url'
      ReadOnly = True
      Size = 2048
    end
    object qrySmallProfiledb_user_id: TIntegerField
      FieldName = 'db_user_id'
      Required = True
    end
    object qrySmallProfileisfollowed: TBooleanField
      FieldName = 'isfollowed'
      ReadOnly = True
    end
    object qrySmallProfileisfollowing: TBooleanField
      FieldName = 'isfollowing'
      ReadOnly = True
    end
    object qrySmallProfiledistance: TIntegerField
      FieldName = 'distance'
      ReadOnly = True
    end
    object qrySmallProfilerange: TIntegerField
      FieldName = 'range'
      ReadOnly = True
    end
  end
  object spSwapStart: TUniStoredProc
    StoredProcName = 'swap.swap_start'
    SQL.Strings = (
      
        'SELECT swap.swap_start(:p_user_id, :p_user_item_id, :p_other_ite' +
        'm_id, :p_onoff)')
    Connection = PgErgoConnection
    Left = 240
    Top = 376
    ParamData = <
      item
        DataType = ftBoolean
        Name = 'result'
        ParamType = ptResult
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'p_user_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftLargeint
        Name = 'p_user_item_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftLargeint
        Name = 'p_other_item_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftBoolean
        Name = 'p_onoff'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'swap.swap_start:0'
  end
  object qryUserSwaps: TUniQuery
    DataTypeMap = <
      item
        FieldName = 'other_user'
        FieldType = ftWideString
        FieldLength = 2048
        IgnoreErrors = True
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      'select * from swap.swaps_view where user_id = :user_id'
      'order by swap_id desc')
    Left = 328
    Top = 344
    ParamData = <
      item
        DataType = ftInteger
        Name = 'user_id'
        ParamType = ptInput
        Value = nil
      end>
    object qryUserSwapsswap_id: TLargeintField
      FieldName = 'swap_id'
    end
    object qryUserSwapsuser_id: TIntegerField
      FieldName = 'user_id'
    end
    object qryUserSwapsother_user_id: TIntegerField
      FieldName = 'other_user_id'
    end
    object qryUserSwapsother_user: TWideStringField
      FieldName = 'other_user'
      Size = 2048
    end
    object qryUserSwapsitem_id: TLargeintField
      FieldName = 'item_id'
    end
    object qryUserSwapsother_item_id: TLargeintField
      FieldName = 'other_item_id'
    end
    object qryUserSwapsitem_image_url: TWideStringField
      FieldName = 'item_image_url'
      Size = 2048
    end
    object qryUserSwapsother_image_url: TWideStringField
      FieldName = 'other_image_url'
      Size = 2048
    end
    object qryUserSwapsinsert_date: TDateTimeField
      FieldName = 'insert_date'
    end
    object qryUserSwapscanclose: TBooleanField
      FieldName = 'canclose'
    end
    object qryUserSwapsisfollowed: TBooleanField
      FieldName = 'isfollowed'
    end
    object qryUserSwapsisfollowing: TBooleanField
      FieldName = 'isfollowing'
    end
    object qryUserSwapsstatus: TSmallintField
      FieldName = 'status'
    end
    object qryUserSwapsother_user_img: TWideStringField
      FieldName = 'other_user_img'
      Size = 2048
    end
    object qryUserSwapsfrom_user_id: TIntegerField
      FieldName = 'from_user_id'
    end
  end
  object qrySwap: TUniQuery
    DataTypeMap = <
      item
        FieldName = 'other_user'
        FieldType = ftWideString
        FieldLength = 2048
        IgnoreErrors = True
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      
        'select * from swap.swaps_view where user_id = :user_id and swap_' +
        'id = :swap_id')
    Left = 328
    Top = 400
    ParamData = <
      item
        DataType = ftInteger
        Name = 'user_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'swap_id'
        Value = nil
      end>
    object LargeintField1: TLargeintField
      FieldName = 'swap_id'
    end
    object IntegerField1: TIntegerField
      FieldName = 'user_id'
    end
    object IntegerField2: TIntegerField
      FieldName = 'other_user_id'
    end
    object WideStringField1: TWideStringField
      FieldName = 'other_user'
      Size = 2048
    end
    object LargeintField2: TLargeintField
      FieldName = 'item_id'
    end
    object LargeintField3: TLargeintField
      FieldName = 'other_item_id'
    end
    object WideStringField2: TWideStringField
      FieldName = 'item_image_url'
      Size = 2048
    end
    object WideStringField3: TWideStringField
      FieldName = 'other_image_url'
      Size = 2048
    end
    object SQLTimeStampField1: TDateTimeField
      FieldName = 'insert_date'
    end
    object qrySwapcanclose: TBooleanField
      FieldName = 'canclose'
    end
    object qrySwapisfollowed: TBooleanField
      FieldName = 'isfollowed'
    end
    object qrySwapisfollowing: TBooleanField
      FieldName = 'isfollowing'
    end
    object qrySwapstatus: TSmallintField
      FieldName = 'status'
    end
    object qrySwapother_user_img: TWideStringField
      FieldName = 'other_user_img'
      Size = 2048
    end
    object qrySwapfrom_user_id: TIntegerField
      FieldName = 'from_user_id'
    end
  end
  object qryItemsLikes: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT l.*,  p.first_name, p.last_name,   '
      '       p.address_full,  p.latitude,'
      '       p.longitude, u.image_url, p.db_user_id, '
      '       swap.isfollowed(:session_user_id, l.user_id) isfollowed,'
      
        '       swap.isfollowing(:session_user_id, l.user_id) isfollowing' +
        ','
      '       0 as distance,'
      '       0 as range'
      ' '
      '  FROM system.db_users_profiles p, '
      '        swap.items_likes l,'
      '       system.db_users u'
      '  where '
      '       l.user_id  = p.db_user_id '
      '       and'
      '       l.item_id = :item_id'
      '       and'
      '       u.db_user_id = p.db_user_id')
    Left = 240
    Top = 32
    ParamData = <
      item
        DataType = ftInteger
        Name = 'session_user_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftLargeint
        Name = 'item_id'
        ParamType = ptInput
        Value = nil
      end>
    object qryItemsLikesitem_id: TLargeintField
      FieldName = 'item_id'
      ReadOnly = True
      Required = True
    end
    object qryItemsLikesuser_id: TIntegerField
      FieldName = 'user_id'
      ReadOnly = True
      Required = True
    end
    object qryItemsLikesinsert_date: TDateTimeField
      FieldName = 'insert_date'
      ReadOnly = True
    end
    object qryItemsLikesfirst_name: TWideStringField
      FieldName = 'first_name'
      Size = 128
    end
    object qryItemsLikeslast_name: TWideStringField
      FieldName = 'last_name'
      Size = 128
    end
    object qryItemsLikesaddress_full: TWideStringField
      FieldName = 'address_full'
      Size = 2048
    end
    object qryItemsLikeslatitude: TFloatField
      FieldName = 'latitude'
    end
    object qryItemsLikeslongitude: TFloatField
      FieldName = 'longitude'
    end
    object qryItemsLikesimage_url: TWideStringField
      FieldName = 'image_url'
      ReadOnly = True
      Size = 2048
    end
    object qryItemsLikesdb_user_id: TIntegerField
      FieldName = 'db_user_id'
      Required = True
    end
    object qryItemsLikesisfollowed: TBooleanField
      FieldName = 'isfollowed'
      ReadOnly = True
    end
    object qryItemsLikesisfollowing: TBooleanField
      FieldName = 'isfollowing'
      ReadOnly = True
    end
    object qryItemsLikesdistance: TIntegerField
      FieldName = 'distance'
      ReadOnly = True
    end
    object qryItemsLikesrange: TIntegerField
      FieldName = 'range'
      ReadOnly = True
    end
  end
  object spSwapAction: TUniStoredProc
    StoredProcName = 'swap.swap_action'
    SQL.Strings = (
      
        'SELECT * FROM swap.swap_action(:p_user_id, :p_swap_id, :p_action' +
        '_id)')
    Connection = PgErgoConnection
    Left = 240
    Top = 432
    ParamData = <
      item
        DataType = ftInteger
        Name = 'p_user_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftLargeint
        Name = 'p_swap_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'p_action_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'p_error'
        ParamType = ptOutput
        Value = nil
      end
      item
        DataType = ftBoolean
        Name = 'result'
        ParamType = ptOutput
        Value = nil
      end>
    CommandStoredProcName = 'swap.swap_action:0'
  end
  object qryEvent: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO swap.events'
      
        '  (id, creator_id, title, address, main_picture_url, insert_date' +
        ', event_date, latitude, longitude, description, hour, mins, pric' +
        'e, currency_id, active)'
      'VALUES'
      
        '  (:id, :creator_id, :title, :address, :main_picture_url, :inser' +
        't_date, :event_date, :latitude, :longitude, :description, :hour,' +
        ' :mins, :price, :currency_id, :active)')
    SQLDelete.Strings = (
      'DELETE FROM swap.events'
      'WHERE'
      '  id = :Old_id')
    SQLUpdate.Strings = (
      'UPDATE swap.events'
      'SET'
      
        '  id = :id, creator_id = :creator_id, title = :title, address = ' +
        ':address, main_picture_url = :main_picture_url, insert_date = :i' +
        'nsert_date, event_date = :event_date, latitude = :latitude, long' +
        'itude = :longitude, description = :description, hour = :hour, mi' +
        'ns = :mins, price = :price, currency_id = :currency_id, active =' +
        ' :active'
      'WHERE'
      '  id = :Old_id')
    SQLLock.Strings = (
      'SELECT * FROM swap.events'
      'WHERE'
      '  id = :Old_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT id, creator_id, title, address, main_picture_url, insert_' +
        'date, event_date, latitude, longitude, description, hour, mins, ' +
        'price, currency_id, active FROM swap.events'
      'WHERE'
      '  id = :id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM swap.events'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT e.*, participate (:event_id, :user_id) participate'
      '  FROM swap.events e '
      '      where '
      '      e.id = :event_id'
      '      and'
      '      e.active = true')
    BeforeOpen = qryEventBeforeOpen
    AfterOpen = qryEventAfterOpen
    AfterClose = qryEventAfterClose
    Left = 424
    Top = 144
    ParamData = <
      item
        DataType = ftInteger
        Name = 'event_id'
        ParamType = ptInput
        Value = 1
      end
      item
        DataType = ftInteger
        Name = 'user_id'
        ParamType = ptInput
        Value = 173
      end>
    object qryEventid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object qryEventcreator_id: TIntegerField
      FieldName = 'creator_id'
    end
    object qryEventtitle: TWideMemoField
      FieldName = 'title'
      BlobType = ftWideMemo
    end
    object qryEventaddress: TWideStringField
      FieldName = 'address'
      Size = 512
    end
    object qryEventmain_picture_url: TWideStringField
      FieldName = 'main_picture_url'
      Size = 2048
    end
    object qryEventinsert_date: TDateTimeField
      FieldName = 'insert_date'
    end
    object qryEventevent_date: TDateTimeField
      FieldName = 'event_date'
    end
    object qryEventlatitude: TFloatField
      FieldName = 'latitude'
    end
    object qryEventlongitude: TFloatField
      FieldName = 'longitude'
    end
    object qryEventhour: TSmallintField
      FieldName = 'hour'
    end
    object qryEventmins: TSmallintField
      FieldName = 'mins'
    end
    object qryEventdescription: TWideStringField
      FieldName = 'description'
      Size = 2048
    end
    object qryEventprice: TFloatField
      FieldName = 'price'
    end
    object qryEventcurrency_id: TSmallintField
      FieldName = 'currency_id'
      Required = True
    end
    object qryEventactive: TBooleanField
      FieldName = 'active'
      Required = True
    end
    object qryEventparticipants: TIntegerField
      FieldName = 'participants'
    end
    object qryEventparticipate: TBooleanField
      FieldName = 'participate'
      ReadOnly = True
    end
  end
  object qryEventUsers: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT e.event_id, '
      '       p.first_name, p.last_name,   '
      '       p.address_full,  p.latitude,'
      '       p.longitude, u.image_url, p.db_user_id,'
      
        '       swap.isfollowed(:session_user_id, p.db_user_id) isfollowe' +
        'd,'
      
        '       swap.isfollowing(:session_user_id, p.db_user_id) isfollow' +
        'ing,'
      '       0 as distance,'
      '       0 as range'
      '  FROM system.db_users_profiles p, '
      '       system.db_users u, '
      '       swap.events_users e'
      '  where '
      '       e.event_id = :event_id'
      '       and  '
      '       e.user_id = p.db_user_id '
      '       and'
      '       u.db_user_id = p.db_user_id')
    MasterFields = 'id'
    DetailFields = 'event_id'
    BeforeOpen = qryEventUsersBeforeOpen
    Left = 424
    Top = 272
    ParamData = <
      item
        DataType = ftInteger
        Name = 'session_user_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'event_id'
        Value = nil
      end>
    object qryEventUsersfirst_name: TWideStringField
      FieldName = 'first_name'
      Size = 128
    end
    object qryEventUserslast_name: TWideStringField
      FieldName = 'last_name'
      Size = 128
    end
    object qryEventUsersaddress_full: TWideStringField
      FieldName = 'address_full'
      Size = 2048
    end
    object qryEventUserslatitude: TFloatField
      FieldName = 'latitude'
    end
    object qryEventUserslongitude: TFloatField
      FieldName = 'longitude'
    end
    object qryEventUsersimage_url: TWideStringField
      FieldName = 'image_url'
      ReadOnly = True
      Size = 2048
    end
    object qryEventUsersdb_user_id: TIntegerField
      FieldName = 'db_user_id'
      Required = True
    end
    object qryEventUsersisfollowed: TBooleanField
      FieldName = 'isfollowed'
      ReadOnly = True
    end
    object qryEventUsersisfollowing: TBooleanField
      FieldName = 'isfollowing'
      ReadOnly = True
    end
    object qryEventUsersdistance: TIntegerField
      FieldName = 'distance'
      ReadOnly = True
    end
    object qryEventUsersrange: TIntegerField
      FieldName = 'range'
      ReadOnly = True
    end
    object qryEventUsersevent_id: TIntegerField
      FieldName = 'event_id'
      ReadOnly = True
      Required = True
    end
  end
  object spEventInsert: TUniStoredProc
    StoredProcName = 'swap.event_insert'
    SQL.Strings = (
      
        'SELECT * FROM swap.event_insert(:p_creator_id, :p_title, :p_desc' +
        'ription, :p_location, :p_main_picture_url, :p_latitude, :p_longi' +
        'tude, :p_hour, :p_mins, :p_date, :p_currency_code, :p_price)')
    Connection = PgErgoConnection
    Left = 424
    Top = 328
    ParamData = <
      item
        DataType = ftInteger
        Name = 'p_creator_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'p_title'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'p_description'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'p_location'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'p_main_picture_url'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'p_latitude'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'p_longitude'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'p_hour'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'p_mins'
        ParamType = ptInput
        Value = nil
      end
      item
        Name = 'p_date'
        ParamType = ptInput
        Value = nil
        ExtDataType = 104
      end
      item
        DataType = ftWideString
        Name = 'p_currency_code'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'p_price'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'p_error'
        ParamType = ptOutput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'p_id'
        ParamType = ptOutput
        Value = nil
      end>
    CommandStoredProcName = 'swap.event_insert:0'
  end
  object qryEventsList: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT e.*, p.db_user_id,'
      '  participate(e.id, :db_user_id) as participate'
      '  FROM swap.events e, system.db_users_profiles p'
      '  where p.db_user_id = :db_user_id'
      '  and e.active = True'
      '  ORDER BY event_date desc')
    Left = 424
    Top = 384
    ParamData = <
      item
        DataType = ftInteger
        Name = 'db_user_id'
        ParamType = ptInput
        Value = 173
      end>
    object qryEventsListid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object qryEventsListcreator_id: TIntegerField
      FieldName = 'creator_id'
    end
    object qryEventsListtitle: TWideMemoField
      FieldName = 'title'
      BlobType = ftWideMemo
    end
    object qryEventsListaddress: TWideStringField
      FieldName = 'address'
      Size = 512
    end
    object qryEventsListmain_picture_url: TWideStringField
      FieldName = 'main_picture_url'
      Size = 2048
    end
    object qryEventsListinsert_date: TDateTimeField
      FieldName = 'insert_date'
    end
    object qryEventsListevent_date: TDateTimeField
      FieldName = 'event_date'
    end
    object qryEventsListlatitude: TFloatField
      FieldName = 'latitude'
    end
    object qryEventsListlongitude: TFloatField
      FieldName = 'longitude'
    end
    object qryEventsListdescription: TWideStringField
      FieldName = 'description'
      Size = 2048
    end
    object qryEventsListhour: TSmallintField
      FieldName = 'hour'
    end
    object qryEventsListmins: TSmallintField
      FieldName = 'mins'
    end
    object qryEventsListprice: TFloatField
      FieldName = 'price'
    end
    object qryEventsListcurrency_id: TSmallintField
      FieldName = 'currency_id'
      Required = True
    end
    object qryEventsListactive: TBooleanField
      FieldName = 'active'
      Required = True
    end
    object qryEventsListdb_user_id: TIntegerField
      FieldName = 'db_user_id'
      ReadOnly = True
      Required = True
    end
    object qryEventsListparticipants: TIntegerField
      FieldName = 'participants'
    end
    object qryEventsListparticipate: TBooleanField
      FieldName = 'participate'
      ReadOnly = True
    end
  end
  object spEventDelete: TUniStoredProc
    StoredProcName = 'swap.events_delete'
    SQL.Strings = (
      'SELECT * FROM swap.events_delete(:p_id, :p_user_id)')
    Connection = PgErgoConnection
    Left = 424
    Top = 440
    ParamData = <
      item
        DataType = ftInteger
        Name = 'p_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'p_user_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftBoolean
        Name = 'result'
        ParamType = ptOutput
        Value = False
      end
      item
        DataType = ftWideString
        Name = 'errormessage'
        ParamType = ptOutput
        Value = 'Event does not Exist'
      end
      item
        DataType = ftWideString
        Name = 'errorcode'
        ParamType = ptOutput
        Value = 'SW-EW-001'
      end>
    CommandStoredProcName = 'swap.events_delete:0'
  end
  object spEventAddUser: TUniStoredProc
    StoredProcName = 'swap.event_add_user'
    SQL.Strings = (
      
        'SELECT * FROM swap.event_add_user(:p_event_id, :p_user_id, :isad' +
        'min)')
    Connection = PgErgoConnection
    Left = 424
    Top = 496
    ParamData = <
      item
        DataType = ftInteger
        Name = 'p_event_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'p_user_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftBoolean
        Name = 'isadmin'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftBoolean
        Name = 'result'
        ParamType = ptOutput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'errormessage'
        ParamType = ptOutput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'errorcode'
        ParamType = ptOutput
        Value = nil
      end>
    CommandStoredProcName = 'swap.event_add_user:0'
  end
  object spEventDelUser: TUniStoredProc
    StoredProcName = 'swap.events_del_user'
    SQL.Strings = (
      'SELECT swap.events_del_user(:p_event_id, :p_user_id)')
    Connection = PgErgoConnection
    Left = 424
    Top = 544
    ParamData = <
      item
        DataType = ftBoolean
        Name = 'result'
        ParamType = ptResult
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'p_event_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'p_user_id'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'swap.events_del_user:0'
  end
  object qrySwapMessages: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT m.*, u.image_url as user_image_url'
      '  FROM swap.swaps_messages m, system.db_users u'
      '  WHERE'
      '      m.message_id > :last_message_id'
      '      AND'
      '      m.swap_id = :swap_id'
      '      AND'
      '      (to_user_id = :user_id or :user_id = 0)'
      '      AND'
      '      from_user_id = u.db_user_id'
      '   ORDER BY message_id')
    Left = 328
    Top = 456
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'last_message_id'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftLargeint
        Name = 'swap_id'
        ParamType = ptInput
        Value = 237
      end
      item
        DataType = ftInteger
        Name = 'user_id'
        ParamType = ptInput
        Value = 0
      end>
    object qrySwapMessagesswap_id: TLargeintField
      FieldName = 'swap_id'
      Required = True
    end
    object qrySwapMessagesmessage_id: TLargeintField
      FieldName = 'message_id'
      Required = True
    end
    object qrySwapMessagesmessage: TWideStringField
      FieldName = 'message'
      Size = 2048
    end
    object qrySwapMessagesimage_url: TWideStringField
      FieldName = 'image_url'
      Size = 1024
    end
    object qrySwapMessagesfrom_user_id: TIntegerField
      FieldName = 'from_user_id'
    end
    object qrySwapMessagesto_user_id: TIntegerField
      FieldName = 'to_user_id'
    end
    object qrySwapMessagesinsert_date: TDateTimeField
      FieldName = 'insert_date'
    end
    object qrySwapMessagesuser_image_url: TWideStringField
      FieldName = 'user_image_url'
      ReadOnly = True
      Size = 2048
    end
  end
  object spMessageInsert: TUniStoredProc
    StoredProcName = 'swap.message_insert'
    SQL.Strings = (
      
        'SELECT * FROM swap.message_insert(:p_swap_id, :p_text, :p_image_' +
        'url, :p_from_user_id)')
    Connection = PgErgoConnection
    Left = 240
    Top = 488
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'p_swap_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'p_text'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'p_image_url'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'p_from_user_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftLargeint
        Name = 'message_id'
        ParamType = ptOutput
        Value = nil
      end
      item
        DataType = ftBoolean
        Name = 'result'
        ParamType = ptOutput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'errormessage'
        ParamType = ptOutput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'errorcode'
        ParamType = ptOutput
        Value = nil
      end>
    CommandStoredProcName = 'swap.message_insert:0'
  end
  object spMessageDelete: TUniStoredProc
    StoredProcName = 'swap.message_delete'
    SQL.Strings = (
      'SELECT swap.message_delete(:p_message_id, :p_user_id)')
    Connection = PgErgoConnection
    Left = 240
    Top = 544
    ParamData = <
      item
        DataType = ftBoolean
        Name = 'result'
        ParamType = ptResult
        Value = nil
      end
      item
        DataType = ftLargeint
        Name = 'p_message_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'p_user_id'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'swap.message_delete:0'
  end
  object qrySwapMessage: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT m.*, u.image_url as user_image_url'
      '  FROM swap.swaps_messages m, system.db_users u'
      '  WHERE'
      '      m.message_id = :message_id'
      '      AND'
      '      m.swap_id = :swap_id'
      '      AND'
      '      from_user_id = u.db_user_id')
    Left = 328
    Top = 512
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'message_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftLargeint
        Name = 'swap_id'
        ParamType = ptInput
        Value = 237
      end>
    object qrySwapMessageswap_id: TLargeintField
      FieldName = 'swap_id'
      Required = True
    end
    object qrySwapMessagemessage_id: TLargeintField
      FieldName = 'message_id'
      Required = True
    end
    object qrySwapMessagemessage: TWideStringField
      FieldName = 'message'
      Size = 2048
    end
    object qrySwapMessageimage_url: TWideStringField
      FieldName = 'image_url'
      Size = 1024
    end
    object qrySwapMessagefrom_user_id: TIntegerField
      FieldName = 'from_user_id'
    end
    object qrySwapMessageto_user_id: TIntegerField
      FieldName = 'to_user_id'
    end
    object qrySwapMessageinsert_date: TDateTimeField
      FieldName = 'insert_date'
    end
    object qrySwapMessageuser_image_url: TWideStringField
      FieldName = 'user_image_url'
      ReadOnly = True
      Size = 2048
    end
  end
  object qryFeeds: TUniQuery
    DataTypeMap = <
      item
        DBType = 517
        FieldType = ftWideString
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      
        'select     e.address as event_address, e.main_picture_url as eve' +
        'nt_picture_url,  '
      
        '     e.event_date, e.title as event_name, e.hour as event_hour, ' +
        'e.mins as event_mins, '
      '     e.price as event_price,'
      '     n.*, '
      '       swap.isfollowed(:user_id, n.other_user_id) isfollowed,'
      '       swap.isfollowing(:user_id,n.other_user_id ) isfollowing'
      ''
      
        ' from swap.notifications n, swap.notifications_types t,    swap.' +
        'f_event(n.event_id) e'
      
        'where n.user_id = :user_id and n.type_id = t.id and t.feed = tru' +
        'e'
      'order by n.id desc, n.nread desc'
      'limit :LIMIT offset :OFFSET')
    Left = 424
    Top = 80
    ParamData = <
      item
        DataType = ftInteger
        Name = 'user_id'
        ParamType = ptInput
        Value = 226
      end
      item
        DataType = ftInteger
        Name = 'LIMIT'
        ParamType = ptInput
        Value = 20
      end
      item
        DataType = ftInteger
        Name = 'OFFSET'
        ParamType = ptInput
        Value = 0
      end>
    object qryFeedsuser_id: TIntegerField
      FieldName = 'user_id'
      Required = True
    end
    object qryFeedsevent_address: TWideStringField
      FieldName = 'event_address'
      ReadOnly = True
      Size = 512
    end
    object qryFeedsevent_picture_url: TWideStringField
      FieldName = 'event_picture_url'
      ReadOnly = True
      Size = 2048
    end
    object qryFeedsevent_date: TDateTimeField
      FieldName = 'event_date'
      ReadOnly = True
    end
    object qryFeedsevent_name: TWideMemoField
      FieldName = 'event_name'
      ReadOnly = True
      BlobType = ftWideMemo
    end
    object qryFeedsevent_hour: TSmallintField
      FieldName = 'event_hour'
      ReadOnly = True
    end
    object qryFeedsevent_mins: TSmallintField
      FieldName = 'event_mins'
      ReadOnly = True
    end
    object qryFeedsevent_price: TFloatField
      FieldName = 'event_price'
      ReadOnly = True
    end
    object qryFeedsid: TLargeintField
      FieldName = 'id'
      Required = True
    end
    object qryFeedsdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
      Required = True
    end
    object qryFeedstitle: TWideStringField
      FieldName = 'title'
      Required = True
      Size = 128
    end
    object qryFeedsother_user_id: TIntegerField
      FieldName = 'other_user_id'
      Required = True
    end
    object qryFeedsuser_item_id: TLargeintField
      FieldName = 'user_item_id'
    end
    object qryFeedsswap_item_id: TLargeintField
      FieldName = 'swap_item_id'
    end
    object qryFeedsinsert_date: TDateTimeField
      FieldName = 'insert_date'
    end
    object qryFeedstype_id: TSmallintField
      FieldName = 'type_id'
    end
    object qryFeedsuser_name: TWideMemoField
      FieldName = 'user_name'
      BlobType = ftWideMemo
    end
    object qryFeedsuser_avatar_img: TWideStringField
      FieldName = 'user_avatar_img'
      Size = 1024
    end
    object qryFeedsswap_item_image: TWideStringField
      FieldName = 'swap_item_image'
      Size = 1024
    end
    object qryFeedsuser_item_image: TWideMemoField
      FieldName = 'user_item_image'
      BlobType = ftWideMemo
    end
    object qryFeedsswap_id: TLargeintField
      FieldName = 'swap_id'
    end
    object qryFeedsnread: TBooleanField
      FieldName = 'nread'
      Required = True
    end
    object qryFeedsevent_id: TIntegerField
      FieldName = 'event_id'
    end
    object qryFeedsitem_description: TWideStringField
      FieldName = 'item_description'
      Size = 256
    end
    object qryFeedsisfollowed: TBooleanField
      FieldName = 'isfollowed'
      ReadOnly = True
    end
    object qryFeedsisfollowing: TBooleanField
      FieldName = 'isfollowing'
      ReadOnly = True
    end
  end
  object qryRadar: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT p.first_name, p.last_name,   '
      '       p.address_full,  p.latitude,'
      '       p.longitude, u.image_url, p.db_user_id,'
      
        '       swap.isfollowed(:session_user_id, p.db_user_id) isfollowe' +
        'd,'
      
        '       swap.isfollowing(:session_user_id, p.db_user_id) isfollow' +
        'ing,'
      '       1*(3/5::FLOAT) as operator, '
      
        '       jpublic.distance(p.latitude, p.longitude, s.latitude, s.l' +
        'ongitude) as exactdistance, '
      '       Round('
      
        '             jpublic.distance(p.latitude, p.longitude, s.latitud' +
        'e, s.longitude)::NUMERIC'
      '            )::INTEGER as distance,'
      '       Trunc'
      
        '            (jpublic.distance(p.latitude, p.longitude, s.latitud' +
        'e, s.longitude) / (:distance/5::float)'
      '            )::INTEGER as range       '
      ''
      '  FROM system.db_users_profiles p,     '
      '       system.db_users_profiles s,'
      '       system.db_users u'
      '  where '
      '       u.db_user_id = p.db_user_id '
      '       and s.db_user_id = :session_user_id'
      '       and p.longitude > 0 and p.longitude is not null'
      '       and s.longitude > 0 and s.longitude is not null'
      '       and p.db_user_id <> :session_user_id'
      
        '       and jpublic.distance(p.latitude, p.longitude, s.latitude,' +
        ' s.longitude) < :distance'
      '  order by distance '
      '  limit 40'
      '       '
      '    ')
    Left = 328
    Top = 288
    ParamData = <
      item
        DataType = ftInteger
        Name = 'session_user_id'
        ParamType = ptInput
        Value = 213
      end
      item
        DataType = ftSmallint
        Name = 'distance'
        ParamType = ptInput
        Value = 3
      end>
    object qryRadarfirst_name: TWideStringField
      FieldName = 'first_name'
      Size = 128
    end
    object qryRadarlast_name: TWideStringField
      FieldName = 'last_name'
      Size = 128
    end
    object qryRadaraddress_full: TWideStringField
      FieldName = 'address_full'
      Size = 2048
    end
    object qryRadarlatitude: TFloatField
      FieldName = 'latitude'
    end
    object qryRadarlongitude: TFloatField
      FieldName = 'longitude'
    end
    object qryRadarimage_url: TWideStringField
      FieldName = 'image_url'
      ReadOnly = True
      Size = 2048
    end
    object qryRadardb_user_id: TIntegerField
      FieldName = 'db_user_id'
      Required = True
    end
    object qryRadarisfollowed: TBooleanField
      FieldName = 'isfollowed'
      ReadOnly = True
    end
    object qryRadarisfollowing: TBooleanField
      FieldName = 'isfollowing'
      ReadOnly = True
    end
    object qryRadardistance: TIntegerField
      FieldName = 'distance'
      ReadOnly = True
    end
    object qryRadarrange: TIntegerField
      FieldName = 'range'
      ReadOnly = True
    end
  end
end
