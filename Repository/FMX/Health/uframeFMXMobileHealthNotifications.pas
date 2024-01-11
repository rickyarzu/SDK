unit uframeFMXMobileHealthNotifications;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  // Janua
  Janua.Core.Health, Janua.Core.Functions, Janua.Core.Anagraph, Janua.Core.Classes,
  Janua.Core.RESTClient.Health,

  // FMX
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls, FMX.TabControl,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base, FMX.Objects, FMX.ListView,
  uframeFMXMobileSummary, uframeFMXMobileChoice;

type
  TframeFMXMobileHealthNotifications = class(TFrame)
    TabControlNotifications: TTabControl;
    TabItem31Notifications: TTabItem;
    TabItem32Booking: TTabItem;
    TabItem33Choice: TTabItem;
    ListViewNotifications: TListView;
    txtNotifications: TText;
    frameFMXMobileSummary1: TframeFMXMobileSummary;
    frameFMXMobileChoice1: TframeFMXMobileChoice;
    procedure ListViewNotificationsItemClick(const Sender: TObject; const AItem: TListViewItem);
    procedure frameFMXMobileChoice1Button1Click(Sender: TObject);
  private
    FLog: TStrings;
    FJanuaRESTHealthClient: TJanuaRESTHealthClient;
    procedure SetLog(const Value: TStrings);
    procedure SetJanuaRESTHealthClient(const Value: TJanuaRESTHealthClient);
    { Private declarations }
  public
    { Public declarations }
    procedure First;
    function IsFirst: boolean;
    procedure Back;
    procedure Default;
    procedure Refresh;
    procedure ClearNotifications;
  public
    property Log: TStrings read FLog write SetLog;
    property JanuaRESTHealthClient: TJanuaRESTHealthClient read FJanuaRESTHealthClient write SetJanuaRESTHealthClient;
  end;

implementation

{$R *.fmx}
{ TframeFMXMobileHealthNotifications }

procedure TframeFMXMobileHealthNotifications.Back;
begin
  self.TabControlNotifications.First(TTAbTransition.Slide)
end;

procedure TframeFMXMobileHealthNotifications.ClearNotifications;
begin
  self.TabControlNotifications.ActiveTab := self.TabControlNotifications.Tabs[0];
  self.ListViewNotifications.Items.Clear;
  self.txtNotifications.Visible := True;
end;

procedure TframeFMXMobileHealthNotifications.Default;
begin
  self.TabControlNotifications.ActiveTab := self.TabControlNotifications.Tabs[0];
  Refresh;
end;

procedure TframeFMXMobileHealthNotifications.First;
begin
  TabControlNotifications.First(TTAbTransition.Slide)
end;

procedure TframeFMXMobileHealthNotifications.frameFMXMobileChoice1Button1Click(Sender: TObject);
begin
  frameFMXMobileChoice1.Button1Click(Sender);
  self.First;
end;

function TframeFMXMobileHealthNotifications.IsFirst: boolean;
begin
  Result := TabControlNotifications.TabIndex = 0;
end;

procedure TframeFMXMobileHealthNotifications.ListViewNotificationsItemClick(const Sender: TObject;
  const AItem: TListViewItem);
begin
  if not Assigned(FJanuaRESTHealthClient) then
    raise Exception.Create('TframeFMXMobileHealthNotifications JanuaRESTHealthClient not set');

  // procedura di Azione a ricezione delle comunicazioni dal Call-Center dopo avere effettuato la prenotazione
  if (self.ListViewNotifications.Items.count > 0) and (ListViewNotifications.ItemIndex > -1) then
  begin
    if FJanuaRESTHealthClient.Notifications.FindItemByID
      (ListViewNotifications.Items[ListViewNotifications.ItemIndex].Tag) then
    begin
      FJanuaRESTHealthClient.NotificationRead(ListViewNotifications.Items[ListViewNotifications.ItemIndex].Tag);
      case FJanuaRESTHealthClient.Notifications.SelectedItem.Type_ID of
        0:
          begin

          end;

        1:
          begin
            if (FJanuaRESTHealthClient.Booking.id = 0) or
              (FJanuaRESTHealthClient.Booking.id <> FJanuaRESTHealthClient.Notifications.SelectedItem.bookingID) then
              self.FJanuaRESTHealthClient.GetBooking(FJanuaRESTHealthClient.Notifications.SelectedItem.bookingID);

            frameFMXMobileSummary1.RefreshBooking;
            self.TabControlNotifications.Next(TTAbTransition.Slide);
          end;
        2:
          begin

          end;
        3:
          begin
            if (FJanuaRESTHealthClient.Booking.id = 0) or
              (FJanuaRESTHealthClient.Booking.id <> FJanuaRESTHealthClient.Notifications.SelectedItem.bookingID) then
              self.FJanuaRESTHealthClient.GetBooking(FJanuaRESTHealthClient.Notifications.SelectedItem.bookingID);

            self.frameFMXMobileChoice1.Prepare;
            self.TabControlNotifications.ActiveTab := self.TabItem33Choice;
          end;
        6:
          begin

          end;

      end;
    end;
  end;

end;

procedure TframeFMXMobileHealthNotifications.Refresh;
var
  aNotification: Janua.Core.Health.TJanuaHealthNotification;
  // c: TAlphaColorRec;
  // i : integer;
begin
  if not Assigned(FJanuaRESTHealthClient) then
    raise Exception.Create('frameFMXMobileHealthNotifications.Refresh error FJanuaRESTHealthClient not set');

  ListViewNotifications.Items.Clear;
  if FJanuaRESTHealthClient.Notifications.count > 0 then
    for aNotification in FJanuaRESTHealthClient.Notifications.Items do
    begin
      // aNotification := FJanuaRESTHealthClient.Notifications.Items[i];
      with ListViewNotifications.Items.Add do
      begin
        Text := aNotification.bookingID.ToString + ' ' + aNotification.title;
        Purpose := TListItemPurpose.Header;
      end;
      with ListViewNotifications.Items.Add do
      begin
        Text := (aNotification.notification);
        Tag := aNotification.id;
      end;
    end;

  if self.FJanuaRESTHealthClient.Notifications.count = 0 then
  begin
    txtNotifications.Text := 'Non ci sono notifiche';
    txtNotifications.TextSettings.FontColor := TAlphaColorRec.Black;
  end
  else if self.FJanuaRESTHealthClient.Notifications.Unread > 0 then
  begin
    if self.FJanuaRESTHealthClient.Notifications.Unread = 1 then
      txtNotifications.Text := 'C''è una notifica non letta'
    else
      txtNotifications.Text := 'Ci sono ' + FJanuaRESTHealthClient.Notifications.Unread.ToString +
        ' notifiche non lette';
    txtNotifications.TextSettings.FontColor := TAlphaColorRec.Red;
  end
  else
  begin
    txtNotifications.Text := 'Ci sono ' + FJanuaRESTHealthClient.Notifications.count.ToString + ' notifiche';
    txtNotifications.TextSettings.FontColor := TAlphaColorRec.Black;
  end
end;

procedure TframeFMXMobileHealthNotifications.SetJanuaRESTHealthClient(const Value: TJanuaRESTHealthClient);
begin
  FJanuaRESTHealthClient := Value;
  self.frameFMXMobileSummary1.JanuaRESTHealthClient := FJanuaRESTHealthClient;
  frameFMXMobileChoice1.JanuaRESTHealthClient := FJanuaRESTHealthClient;
end;

procedure TframeFMXMobileHealthNotifications.SetLog(const Value: TStrings);
begin
  FLog := Value;
end;

end.
