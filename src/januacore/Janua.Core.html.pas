unit Janua.Core.html;

interface

uses System.SysUtils, System.Classes, System.StrUtils, System.SysConst, System.JSON,
  System.JSONConsts,
  // Janua Core Librarie
  Janua.Core.Params, Janua.Core.Classes, Janua.Core.Functions,

  /// Devart Components .........................................
  DB;

type
  TJanuaNotificationBadgeType = (jbtNotification, jbtCalendar, jbtMessages, jbtToDoList, jbtShoppingCart, jbtNone);

  TJanuaNotificationType = (jntNotificationSuccess, jntNotificationDanger, jntNotificationWarning,
    jntNotificationInfo, jntNone);

  TJanuaNotificationConst = record
    Icon: string;
    Font: string;
    slug: string;
    id: smallint;
  end;

const
  NotificationClasses: array [jntNotificationSuccess .. jntNone] of string = ('label label-sm label-icon label-success',
    'label label-sm label-icon label-danger', 'label label-sm label-icon label-warning',
    'label label-sm label-icon label-info', '');

  NotificationSlugs: array [jntNotificationSuccess .. jntNone] of string = ('fa fa-plus', 'fa fa-bolt', 'fa fa-bell-o',
    'fa fa-bullhorn', 'none');

  NotificationIcons: array [jntNotificationSuccess .. jntNone] of string = ('notifications', 'notifications',
    'notifications', 'notifications', 'none');

  NotificationBadgeID: array [1 .. 5] of TJanuaNotificationBadgeType = (jbtNotification, jbtCalendar, jbtMessages,
    jbtToDoList, jbtShoppingCart);

  NotificationBadgeConsts: array [jbtNotification .. jbtNone] of TJanuaNotificationConst = ((Icon: 'icon-bell';
    Font: 'icon-bell'; slug: 'notification'; id: 1), (Icon: 'icon-calendar'; Font: 'fa fa-calendar-check-o';
    slug: 'calendar'; id: 2), (Icon: 'icon-envelope'; Font: 'icon-envelope'; slug: 'inbox'; id: 3),
    (Icon: 'fa fa-list-alt'; Font: 'fa fa-list-alt'; slug: 'todolist'; id: 4), (Icon: 'fa fa-shopping-cart';
    Font: 'fa fa-shopping-cart'; slug: 'shoppingcart'; id: 5), (Icon: ''; Font: ''; slug: 'none'; id: - 1));

  NotificationBadgeIcons: array [jbtNotification .. jbtNone] of string = ('icon-bell', 'icon-calendar', 'icon-envelope',
    'fa fa-list-alt', 'fa fa-shopping-cart', '');

  NotificationBadgeFonts: array [jbtNotification .. jbtNone] of string = ('icon-bell', 'fa fa-calendar-check-o',
    'icon-envelope', 'fa fa-list-alt', 'fa fa-shopping-cart', '');

  NotificationBadgeSlugs: array [jbtNotification .. jbtNone] of string = ('notification', 'tasks', 'inbox', 'todolist',
    'shoppingcart', 'none');

type
  TJanuaNotification = record
    url: string;
    id: integer;
    time: TDateTime;
    aMessage: string;
    NotificationType: TJanuaNotificationType;
  public
    function asHtml: string;
    procedure LoadFromDataset(aDataset: TDataset);
    function AsJsonObject: TJsonObject;
    function AsJson: string;
  end;

type
  TJanuaNotificationBadge = record
    count: integer;
    hint: string;
    NotificationType: TJanuaNotificationBadgeType;
    visible: boolean;
    slug: string;
    id: string;
    url: string;
    Notifications: array of TJanuaNotification;

  public
    constructor Create(sSlug, sID, sUrl: string);
    function asHtml: string;
    procedure LoadFromDataset(aDataset: TDataset);
    procedure LoadNotifications(aDataset: TDataset);

  end;

type
  TJanuaNotifications = record
    count: integer;
    url: string;
    Badges: array of TJanuaNotificationBadge;
  public
    function asHtml: string;
    procedure LoadFromDataset(aDataset: TDataset);
    procedure AddBadge(const sSlug, sID, sUrl: string);
  end;

implementation

uses Janua.Core.JSON;

{ TJanuaNotification }

function TJanuaNotificationBadge.asHtml: string;
var
  sIcon, sVisible, sSlug, sFont: string;
  aList: TStrings;
  aNotification: TJanuaNotification;
begin
  sIcon := NotificationBadgeIcons[NotificationType];
  sSlug := NotificationBadgeSlugs[NotificationType];
  sFont := NotificationBadgeFonts[NotificationType];

  if (self.NotificationType = jbtMessages) and self.visible then
    sIcon := 'icon-envelope-open';

  sVisible := '';
  if self.visible then
    sVisible := 'style="visibility:hidden"';

  Result := '';

  aList := TStringList.Create;
  try
    aList.Add('<li class="dropdown dropdown-extended dropdown-' + sSlug + '" id="header_' + sSlug + '_bar">');
    aList.Add('<a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown"' +
      ' data-close-others="true">');
    aList.Add('<i class="' + sIcon + '"></i>');
    aList.Add('<span id="' + sSlug + '_badge" class="badge badge-default" ' + sVisible + ' > 0 </span>');
    aList.Add('</a>');

    if self.count > 0 then
    begin
      aList.Add('<ul class="dropdown-menu">'); // ul lista del dropdown menu   **

      // -------------------------------------------------------------------------------------------------
      aList.Add('<li class="external">'); // li  elemento header
      aList.Add('<h3>');
      aList.Add('<span class="bold">' + self.count.ToString + ' nuove</span> notifiche');
      aList.Add('</h3>');
      aList.Add('<a href="https://app.ergomercator.com/dico33/inbox">vedi tutto</a>');
      aList.Add('</li>'); // Chiusura li  elemento header
      // -------------------------------------------------------------------------------------------------

      aList.Add('<li>'); // inizio container notifiche annidato ***
      aList.Add('<div class="slimScrollDiv" ' + // inizio div container annidato ****
        ' style="position: relative; overflow: hidden; width: auto; height: 250px;">');

      // ################################################################################################
      aList.Add('<ul class="dropdown-menu-list scroller"' + // inizio lista in container annidato
        ' style="height: 250px; overflow: hidden; width: auto;" data-handle-color="#637283" data-initialized="1">');

      for aNotification in self.Notifications do
        aList.Add(aNotification.asHtml);

      aList.Add('</ul>'); // fine lista elemnti in container annidato
      // ################################################################################################

      // ---------------------------- footer ------------------------------------------------------------
      aList.Add('<div class="slimScrollBar" style="background-color: rgb(99, 114, 131); width: 7px;' +
        ' position: absolute; top: 0px; opacity: 0.4; display: block; border-top-left-radius: 7px; ' +
        'border-top-right-radius: 7px; border-bottom-right-radius: 7px; border-bottom-left-radius: 7px; ' +
        'z-index: 99; right: 1px; background-position: initial initial; background-repeat: initial initial;">');
      aList.Add('</div>');

      aList.Add('<div class="slimScrollRail" style="width: 7px; height: 100%; position: absolute; top: 0px;' +
        'display: none; border-top-left-radius: 7px; border-top-right-radius: 7px; border-bottom-right-radius: 7px;' +
        ' border-bottom-left-radius: 7px; background-color: rgb(234, 234, 234); opacity: 0.2; z-index: 90;' +
        ' right: 1px; background-position: initial initial; background-repeat: initial initial;">');
      aList.Add('</div>');
      // ---------------------------- fine footer -------------------------------------------------------

      aList.Add('</div>'); // fine div container notifiche annidato ****
      aList.Add('</li>'); // fine container notifiche annidato ***
      aList.Add('</ul>'); // ul lista del dropdown menu   **
    end;

    aList.Add('</li>'); // ul lista del dropdown menu **

  finally

  end;

end;

constructor TJanuaNotificationBadge.Create(sSlug, sID, sUrl: string);
begin
  self.slug := sSlug;
  self.id := sID;
  self.url := sUrl;
end;

procedure TJanuaNotificationBadge.LoadFromDataset(aDataset: TDataset);
begin
  case NotificationType of
    jbtNotification:
      begin
        if aDataset.Locate('group_name', 'notifications', []) then

          self.count := aDataset.FieldByName('count').AsInteger;
        self.visible := not(self.count = 0);
      end;

    jbtMessages:
      begin
        self.count := aDataset.FieldByName('messages').AsInteger;
        self.visible := not(self.count = 0);
      end;

    jbtCalendar:
      begin
        self.count := aDataset.FieldByName('calendar').AsInteger;
        self.visible := not(self.count = 0);
      end;

    jbtShoppingCart:
      begin
        self.count := aDataset.FieldByName('shoppingcart').AsInteger;
        self.visible := not(self.count = 0);
      end;
  end;

end;

procedure TJanuaNotificationBadge.LoadNotifications(aDataset: TDataset);
begin

end;

{ TJanuaNotification }

function TJanuaNotification.asHtml: string;
var
  aList: TStrings;
begin

  aList := TStringList.Create;
  try
    aList.Add('<li>');
    aList.Add('<a href="https://app.ergomercator.com/inbox?id="' + self.id.ToString + '>');
    aList.Add('<span class="time">' + FormatDateTime('c', self.time) + '</span>');
    aList.Add('<span class="details">');
    aList.Add('<span class="' + NotificationClasses[self.NotificationType] + '">');
    aList.Add('<i class="' + NotificationIcons[self.NotificationType] + '"></i>');
    aList.Add('</span>');
    aList.Add('" ' + self.aMessage + ' "');
    // label label-sm label-icon label-success
    aList.Add('</span>');
    aList.Add('</a>');
    aList.Add('</li>');
  finally
    aList.Free;
  end;

end;

function TJanuaNotification.AsJson: string;
begin
  Result := ToJsonFree(AsJsonObject);
end;

function TJanuaNotification.AsJsonObject: TJsonObject;
begin
  Result := TJsonObject.Create;
end;

procedure TJanuaNotification.LoadFromDataset(aDataset: TDataset);
begin

end;

{ TJanuaNotifications }

procedure TJanuaNotifications.AddBadge(const sSlug, sID, sUrl: string);
begin
  SetLength(self.Badges, Length(self.Badges) + 1);
  self.Badges[Length(self.Badges) - 1].Create(sSlug, sID, sUrl);
end;

function TJanuaNotifications.asHtml: string;
begin

end;

procedure TJanuaNotifications.LoadFromDataset(aDataset: TDataset);
begin

end;

end.
