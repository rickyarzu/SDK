unit uframeFMXMobileHealthMeetings;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, Janua.Core.Health,
  Janua.Core.Functions,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls, FMX.TabControl, FMX.Objects,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base, FMX.ListView,
  Janua.Core.RESTClient.Health, FMX.TMSWebGMapsWebBrowser, FMX.TMSWebGMaps;

type
  TframeFMXMobileHealthMeetings = class(TFrame)
    TabControlMeetings: TTabControl;
    txtMeetings: TText;
    TabItem1Meetings: TTabItem;
    TabItem2BookingRow: TTabItem;
    ListViewMeetings: TListView;
    TMSFMXWebGMaps1: TTMSFMXWebGMaps;
    TextInstitute: TText;
    procedure ListViewMeetingsItemClick(const Sender: TObject; const AItem: TListViewItem);
  public
    { Private declarations }
    procedure First;
    function IsFirst: boolean;
    procedure Back;
    procedure Default;
    procedure Refresh;
    procedure ClearMeetings;
  private
    FJanuaRESTHealthClient: TJanuaRESTHealthClient;
    FLog: TStrings;
    FSelectedMeeting: TJanuaHealthBookingRow;
    procedure SetJanuaRESTHealthClient(const Value: TJanuaRESTHealthClient);
    procedure SetLog(const Value: TStrings);
    procedure SetSelectedMeeting(const Value: TJanuaHealthBookingRow);
  public
    property SelectedMeeting: TJanuaHealthBookingRow read FSelectedMeeting write SetSelectedMeeting;
    property Log: TStrings read FLog write SetLog;
    property JanuaRESTHealthClient: TJanuaRESTHealthClient read FJanuaRESTHealthClient write SetJanuaRESTHealthClient;
  end;

implementation

{$R *.fmx}
{ TframeFMXMobileHealthMeetings }

procedure TframeFMXMobileHealthMeetings.Back;
begin

end;

procedure TframeFMXMobileHealthMeetings.ClearMeetings;
begin
  self.TabControlMeetings.ActiveTab := self.TabControlMeetings.Tabs[0];
  self.ListViewMeetings.Items.Clear;
  self.txtMeetings.Visible := True;
end;

procedure TframeFMXMobileHealthMeetings.Default;
begin
  self.First;
  self.ClearMeetings;
  // non esegue il refresh su Default perchò non ancora connesso
  // self.Refresh;
end;

procedure TframeFMXMobileHealthMeetings.First;
begin
  TabControlMeetings.First(TTAbTransition.Slide)
end;

function TframeFMXMobileHealthMeetings.IsFirst: boolean;
begin
  Result := TabControlMeetings.TabIndex = 0;
end;

procedure TframeFMXMobileHealthMeetings.ListViewMeetingsItemClick(const Sender: TObject; const AItem: TListViewItem);
begin
  if not Assigned(FJanuaRESTHealthClient) then
    raise Exception.Create('TframeFMXMobileHealthNotifications JanuaRESTHealthClient not set');
  // procedura di Azione a ricezione delle comunicazioni dal Call-Center dopo avere effettuato la prenotazione
  if (self.ListViewMeetings.Items.count > 0) and (ListViewMeetings.ItemIndex > -1) then
  begin
    // imposto la riga da Analizzare
    SelectedMeeting := FJanuaRESTHealthClient.Meetings.Items[ListViewMeetings.Items[ListViewMeetings.ItemIndex].Tag];
    self.TabControlMeetings.Next(TTAbTransition.Slide);
    self.TMSFMXWebGMaps1.Visible := True;

  end;
end;

procedure TframeFMXMobileHealthMeetings.Refresh;
var
  aMeeting: Janua.Core.Health.TJanuaHealthBookingRow;
  // c: TAlphaColorRec;
  i: integer;
begin
  if not Assigned(FJanuaRESTHealthClient) then
    raise Exception.Create('frameFMXMobileHealthNotifications.Refresh error FJanuaRESTHealthClient not set');

  ListViewMeetings.Items.Clear;
  if FJanuaRESTHealthClient.Meetings.count > 0 then
    for i := 0 to pred(FJanuaRESTHealthClient.Meetings.count) do
    begin
      aMeeting := FJanuaRESTHealthClient.Meetings.Items[i];
      with ListViewMeetings.Items.Add do
      begin
        Text := FormatDateTime('dd/mm/yyyy', aMeeting.booking_date) + ' ' + Lpad(aMeeting.booking_hour.ToString, 2, '0')
          + ':' + Lpad(aMeeting.booking_mins.ToString, 2, '0');
        Purpose := TListItemPurpose.Header;
      end;
      with ListViewMeetings.Items.Add do
      begin
        Text := (aMeeting.Institute.LastName);
        Tag := i;
      end;
    end;

  if self.FJanuaRESTHealthClient.Meetings.count = 0 then
  begin
    txtMeetings.Text := 'Non ci sono notifiche';
    txtMeetings.TextSettings.FontColor := TAlphaColorRec.Black;
  end
  else
  begin
    txtMeetings.Text := 'Ci sono ' + FJanuaRESTHealthClient.Meetings.count.ToString + ' appuntamenti';
    txtMeetings.TextSettings.FontColor := TAlphaColorRec.Black;
  end
end;

procedure TframeFMXMobileHealthMeetings.SetJanuaRESTHealthClient(const Value: TJanuaRESTHealthClient);
begin
  FJanuaRESTHealthClient := Value;
end;

procedure TframeFMXMobileHealthMeetings.SetLog(const Value: TStrings);
begin
  FLog := Value;
end;

procedure TframeFMXMobileHealthMeetings.SetSelectedMeeting(const Value: TJanuaHealthBookingRow);
begin
  FSelectedMeeting := Value;
end;

end.
