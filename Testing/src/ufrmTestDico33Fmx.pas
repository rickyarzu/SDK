unit ufrmTestDico33Fmx;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.TabControl, FMX.StdCtrls,
  FMX.Controls.Presentation,
  FMX.Gestures, System.Actions, FMX.ActnList, FMX.Objects, System.Sensors,
  System.Sensors.Components,
  FMX.Edit, FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base, FMX.ListView,
  Data.DB, DBAccess, Uni, MemDS, System.Rtti, System.Bindings.Outputs, FMX.Bind.Editors,
  Data.Bind.EngExt, FMX.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope, VirtualTable,
  FMX.Layouts, FMX.ListBox, Data.Bind.Controls, FMX.Bind.Navigator, Janua.Core.Classes, Janua.Core.Cloud,
  System.Generics.Collections, System.Net.URLClient, System.Net.HttpClient, System.Net.HttpClientComponent,
  Janua.Core.Commons,  Janua.Components.Maps;

type
  TTabbedwithNavigationForm = class(TForm)
    TabControl1: TTabControl;
    tabSearch: TTabItem;
    TabControlSearch: TTabControl;
    TabPrestazioni: TTabItem;
    ToolBar1: TToolBar;
    lblTitle1: TLabel;
    btnNext: TSpeedButton;
    TabIstituti: TTabItem;
    ToolBar2: TToolBar;
    lblTitle2: TLabel;
    btnBack: TSpeedButton;
    TabItem2: TTabItem;
    TabItem4: TTabItem;
    GestureManager1: TGestureManager;
    ActionList1: TActionList;
    NextTabAction1: TNextTabAction;
    PreviousTabAction1: TPreviousTabAction;
    TabItem1: TTabItem;
    LocationSensor1: TLocationSensor;
    ListViewPrestazioni: TListView;
    Image2: TImage;
    Image1: TImage;
    TabIstituto: TTabItem;
    ToolBar6: TToolBar;
    Label1: TLabel;
    btnSingleInstituteBack: TSpeedButton;
    Image3: TImage;
    PgConnection1: TUniConnection;
    qrySearchInstitutes: TUniQuery;
    qryPrestazioni: TUniQuery;
    BindingsList1: TBindingsList;
    qrySearchInstitutesdistance: TFloatField;
    qrySearchInstitutesanagraph_id: TIntegerField;
    qrySearchInstitutesan_title: TWideStringField;
    qrySearchInstitutesan_address: TWideStringField;
    qrySearchInstitutesfull_address: TWideMemoField;
    ListView2: TListView;
    BindSourceDB2: TBindSourceDB;
    LinkFillControlToField2: TLinkFillControlToField;
    qrySearchInstitutesan_last_name: TWideStringField;
    qrySearchInstitutesan_phone: TWideStringField;
    qrySearchInstitutesan_fax: TWideStringField;
    qrySearchInstitutesan_email: TWideStringField;
    qrySearchInstitutesan_postal_code: TWideStringField;
    qrySearchInstitutesan_town: TWideStringField;
    qrySearchInstitutesan_state_province: TWideStringField;
    lbName: TLabel;
    lbAddress: TLabel;
    lbPostalCode: TLabel;
    lbTown: TLabel;
    lbTelefono: TLabel;
    lbPhone: TLabel;
    Button1: TButton;
    vtBookingsBasket: TVirtualTable;
    vtBookingsBasketanagraph_id: TIntegerField;
    vtBookingsBasketan_title: TWideStringField;
    vtBookingsBasketan_address: TWideStringField;
    vtBookingsBasketfull_address: TWideMemoField;
    vtBookingsBasketan_last_name: TWideStringField;
    vtBookingsBasketan_phone: TWideStringField;
    vtBookingsBasketan_fax: TWideStringField;
    vtBookingsBasketan_email: TWideStringField;
    vtBookingsBasketan_postal_code: TWideStringField;
    vtBookingsBasketan_town: TWideStringField;
    vtBookingsBasketan_state_province: TWideStringField;
    Text2: TText;
    ToolBar7: TToolBar;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    Image5: TImage;
    ToolBar8: TToolBar;
    Label3: TLabel;
    SpeedButton2: TSpeedButton;
    Image6: TImage;
    ListView3: TListView;
    ToolBar3: TToolBar;
    Label4: TLabel;
    SpeedButton3: TSpeedButton;
    Image7: TImage;
    TabControl2: TTabControl;
    TabItem3: TTabItem;
    TabItem5: TTabItem;
    Text3: TText;
    ListViewBookingBasket: TListView;
    vtSearchServices: TVirtualTable;
    BindSourceDB1: TBindSourceDB;
    LinkFillControlToField1: TLinkFillControlToField;
    qrySearchInstitutesan_postal_code_1: TWideStringField;
    qrySearchInstituteslatitude: TFloatField;
    qrySearchInstituteslongitude: TFloatField;
    qryPrestazioniservice_id: TLargeintField;
    qryPrestazionistype: TWideStringField;
    qryPrestazionidiscipline_id: TIntegerField;
    qryPrestazionidiscipline: TWideStringField;
    qryPrestazionidescription: TWideStringField;
    ListBox1: TListBox;
    JanuaGoogleGeoCoding1: TJanuaGoogleGeoCoding;
    Panel1: TPanel;
    edSearch: TEdit;
    edLocation: TEdit;
    Text1: TText;
    NetHTTPClient1: TNetHTTPClient;
    NetHTTPRequest1: TNetHTTPRequest;
    ClearEditButton1: TClearEditButton;
    ClearEditButton2: TClearEditButton;
    procedure GestureDone(Sender: TObject; const EventInfo: TGestureEventInfo; var Handled: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char; Shift: TShiftState);
    procedure edSearchChange(Sender: TObject);
    procedure edSearchTyping(Sender: TObject);
    procedure ListViewPrestazioniTap(Sender: TObject; const Point: TPointF);
    procedure ListViewPrestazioniClick(Sender: TObject);
    procedure ListView2Click(Sender: TObject);
    procedure ListView2Tap(Sender: TObject; const Point: TPointF);
    procedure qrySearchInstitutesAfterScroll(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure edLocationChange(Sender: TObject);
    procedure edLocationEnter(Sender: TObject);
    procedure edLocationMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Single);
    procedure edLocationExit(Sender: TObject);
    procedure edSearchKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char; Shift: TShiftState);
    procedure ListViewPrestazioniItemClick(const Sender: TObject; const AItem: TListViewItem);
    procedure LocationSensor1LocationChanged(Sender: TObject;
      const OldLocation, NewLocation: TLocationCoord2D);
    procedure edLocationKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char; Shift: TShiftState);
    procedure ListBox1ItemClick(const Sender: TCustomListBox; const Item: TListBoxItem);
    procedure edLocationTyping(Sender: TObject);
  private
    FSelectedLocation: String;
    FOldLocationSearch: String;
    procedure SearchPrestazioni;
    procedure ListPrestazioniTap;
    procedure SetShowFormIstituti;
    procedure LocationUpdate;
    function GetLocationText: String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TabbedwithNavigationForm: TTabbedwithNavigationForm;

implementation

{$R *.fmx}
{$R *.iPhone4in.fmx IOS}

uses Janua.Health.dmDico33Client;
// {$R *.iPhone4in.fmx IOS}

procedure TTabbedwithNavigationForm.Button1Click(Sender: TObject);
var
  aListViewItem: TListViewItem;
begin
  if not self.vtBookingsBasket.Locate('anagraph_id', self.qrySearchInstitutesanagraph_id.Value, []) then
  begin
    self.vtBookingsBasket.Append;
    self.vtBookingsBasketanagraph_id.AsInteger := self.qrySearchInstitutesanagraph_id.AsInteger;
    self.vtBookingsBasketfull_address.AsWideString := self.qrySearchInstitutesfull_address.AsWideString;
    self.vtBookingsBasketan_last_name.AsWideString := self.qrySearchInstitutesan_last_name.AsWideString;
    self.vtBookingsBasket.Post;

    ListViewBookingBasket.Items.Clear;
    self.vtBookingsBasket.First;
    while not self.vtBookingsBasket.Eof do
    begin
      aListViewItem := ListViewBookingBasket.Items.Add;
      aListViewItem.Text := self.vtBookingsBasketan_last_name.AsWideString;
      aListViewItem.Detail := self.vtBookingsBasketfull_address.AsWideString;

      vtBookingsBasket.Next;
    end;

    ShowMessage('Istituto ' + self.vtBookingsBasketan_last_name.AsWideString +
      ' in lista prenotazioni per visita: ' + self.qryPrestazionidescription.AsWideString);
    TabControlSearch.Previous(TTAbTransition.Slide);
  end
  else
  begin
    // correggere la chiave di ricerca su visita per includere la divisione per prestazione.
    ShowMessage('Istituto ' + self.vtBookingsBasketan_last_name.AsWideString +
      ' è già presente in lista per visita: ' + self.qryPrestazionidescription.AsWideString);
  end;

end;

procedure TTabbedwithNavigationForm.edLocationChange(Sender: TObject);
begin
  LocationUpdate;
end;

procedure TTabbedwithNavigationForm.edLocationEnter(Sender: TObject);
begin
  {
    if (edLocation.Text = '') or edLocation.HasSelection then
    edLocation.TextSettings.HorzAlign := TTextAlign.Center
    else
    edLocation.TextSettings.HorzAlign := TTextAlign.Trailing;
  }
end;

procedure TTabbedwithNavigationForm.edLocationExit(Sender: TObject);
begin
  {
    if (edLocation.Text = '') then
    edLocation.TextSettings.HorzAlign := TTextAlign.Center
    else
    edLocation.TextSettings.HorzAlign := TTextAlign.Trailing;
  }
end;

procedure TTabbedwithNavigationForm.edLocationKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
  Shift: TShiftState);
begin
  LocationUpdate;
end;

procedure TTabbedwithNavigationForm.edLocationMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
  { edLocation.TextSettings.HorzAlign := TTextAlign.Trailing; }
end;

procedure TTabbedwithNavigationForm.edLocationTyping(Sender: TObject);
begin
  SearchPrestazioni
end;

procedure TTabbedwithNavigationForm.edSearchChange(Sender: TObject);
begin
  // SearchPrestazioni;
end;

procedure TTabbedwithNavigationForm.edSearchKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
  Shift: TShiftState);
begin
  SearchPrestazioni;
end;

procedure TTabbedwithNavigationForm.edSearchTyping(Sender: TObject);
begin
  // SearchPrestazioni;
end;

procedure TTabbedwithNavigationForm.SearchPrestazioni;
begin
  {
    if Length(self.edSearch.Text) < 3 then
    sSearch := 'prestazione like ''%' + UpperCase(edSearch.Text) + '%'''
    else
    sSearch := 'prestazione like ''%' + UpperCase(edSearch.Text) + '%''';

    // ShowMessage(sSearch);
    qryPrestazioni.Filter := sSearch;
    qryPrestazioni.Filtered := True;
  }
  if Length(self.edSearch.Text) < 4 then
  begin
    self.qryPrestazioni.ParamByName('prestazione').AsWideString := '';
    if self.qryPrestazioni.RecordCount > 0 then
    begin
      self.qryPrestazioni.Close;
    end;
  end
  else
  begin
    try
      if self.qryPrestazioni.ParamByName('prestazione').AsWideString <> UpperCase(Trim(edSearch.Text)) then
      begin
        self.PgConnection1.Connect;
        qryPrestazioni.Close;
        self.qryPrestazioni.ParamByName('prestazione').AsWideString := UpperCase(Trim(edSearch.Text));
        qryPrestazioni.Open;
      end;
    except
      on e: exception do
      begin
        ShowMessage('Connessione Assente');
      end;

    end;

  end;
end;

procedure TTabbedwithNavigationForm.ListBox1ItemClick(const Sender: TCustomListBox; const Item: TListBoxItem);
begin
  self.edLocation.Text := Item.Text;
  FSelectedLocation := Item.Text;
  self.ListBox1.Visible := False;
end;

procedure TTabbedwithNavigationForm.ListPrestazioniTap;
{

  :item_id::integer,
  0::smallint,
  :latitude::double precision,
  :longitude::double precision,
  10::smallint,
  :user_id::integer,
  :session_id::bigint

}
begin
  if (self.ListViewPrestazioni.Items.Count > 0) and (ListViewPrestazioni.ItemIndex > -1) then
  begin
    ShowMessage('ItemIndex: ' + ListViewPrestazioni.Items[ListViewPrestazioni.ItemIndex].Text);

    if self.qryPrestazioni.Locate('description',
      ListViewPrestazioni.Items[ListViewPrestazioni.ItemIndex].Text, [])
    // if (self.qrySearchInstitutes.ParamByName('search').Value <> ListViewPrestazioni.Items
    // [ListViewPrestazioni.ItemIndex].Text)
    then
    begin
      qrySearchInstitutes.Close;
      self.qrySearchInstitutes.ParamByName('item_id').AsLargeInt := self.qryPrestazioniservice_id.Value;
      qrySearchInstitutes.Open;
      TabControlSearch.Next(TTAbTransition.Slide);
    end;
  end;
end;

procedure TTabbedwithNavigationForm.SetShowFormIstituti;
begin
  self.lbName.Text := self.qrySearchInstitutesan_last_name.AsWideString;
  self.lbAddress.Text := self.qrySearchInstitutesan_address.AsWideString;
  self.lbPostalCode.Text := self.qrySearchInstitutesan_postal_code.AsWideString;
  self.lbTown.Text := self.qrySearchInstitutesan_town.AsWideString;
  lbPhone.Text := self.qrySearchInstitutesan_phone.AsWideString;
end;

procedure TTabbedwithNavigationForm.LocationUpdate;

begin
  if (Length(edLocation.Text) > 4) and (edLocation.Text <> self.GetLocationText) then
  begin
    if (JanuaGoogleGeoCoding1.Address <> edLocation.Text) and (self.edLocation.Text <> self.FOldLocationSearch)
    then
    begin
      JanuaGoogleGeoCoding1.Address := edLocation.Text;
      if JanuaGoogleGeoCoding1.GetSuggestions then
      begin
        ListBox1.Width := self.edLocation.Width;
        ListBox1.Height := 100;
        ListBox1.Items.Assign(JanuaGoogleGeoCoding1.AddressText);
        ListBox1.Visible := True;
      end
      else
      begin
        self.ListBox1.Visible := False;
      end;
    end;
  end
  else
  begin
    self.ListBox1.Visible := False;
  end;

  FOldLocationSearch := self.edLocation.Text;
end;

procedure TTabbedwithNavigationForm.SpeedButton1Click(Sender: TObject);
begin
  self.ListViewBookingBasket.EditMode := not ListViewBookingBasket.EditMode;
end;

procedure TTabbedwithNavigationForm.FormCreate(Sender: TObject);
begin
  self.ListBox1.Visible := False;
  { This defines the default active tab at runtime }
  TabControl1.ActiveTab := tabSearch;
  // TabControlSearch.ActiveTab := TabPrestazioni;
  self.vtBookingsBasket.Open;

  FSelectedLocation := '';
  FOldLocationSearch := '';
end;

procedure TTabbedwithNavigationForm.FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
  Shift: TShiftState);
begin
  if Key = vkHardwareBack then
  begin
    if (TabControl1.ActiveTab = TabItem1) and (TabControlSearch.ActiveTab = self.TabIstituti) then
    begin
      TabControlSearch.Previous;
      Key := 0;
    end;
  end;
end;

procedure TTabbedwithNavigationForm.GestureDone(Sender: TObject; const EventInfo: TGestureEventInfo;
  var Handled: Boolean);
begin
  case EventInfo.GestureID of
    sgiLeft:
      begin
        if TabControl1.ActiveTab <> TabControl1.Tabs[TabControl1.TabCount - 1] then
          TabControl1.ActiveTab := TabControl1.Tabs[TabControl1.TabIndex + 1];
        Handled := True;
      end;

    sgiRight:
      begin
        if TabControl1.ActiveTab <> TabControl1.Tabs[0] then
          TabControl1.ActiveTab := TabControl1.Tabs[TabControl1.TabIndex - 1];
        Handled := True;
      end;
  end;
end;

function TTabbedwithNavigationForm.GetLocationText: String;
begin
  if (ListBox1.ItemIndex <> -1) and (ListBox1.Items.Count > 0) then
    Result := (ListBox1.Items[ListBox1.ItemIndex])
  else
    Result := self.FSelectedLocation
end;

procedure TTabbedwithNavigationForm.ListView2Click(Sender: TObject);
begin
  TabControlSearch.Next(TTAbTransition.Slide);
  {
    self.TMSFMXWebOSMaps1.Enabled := True;
    self.TMSFMXWebOSMaps1.MapOptions.DefaultLatitude := self.qrySearchInstituteslatitude.AsFloat;
    self.TMSFMXWebOSMaps1.MapOptions.DefaultLatitude := self.qrySearchInstituteslongitude.AsFloat;
    self.TMSFMXWebOSMaps1.MapOptions.ZoomMap := 14;
  }
end;

procedure TTabbedwithNavigationForm.ListView2Tap(Sender: TObject; const Point: TPointF);
begin
  TabControlSearch.Next(TTAbTransition.Slide);
end;

procedure TTabbedwithNavigationForm.ListViewPrestazioniClick(Sender: TObject);
begin
  ListPrestazioniTap;
  // self.TabControlSearch.ActiveTab := self.TabIstituti;
end;

procedure TTabbedwithNavigationForm.ListViewPrestazioniItemClick(const Sender: TObject;
  const AItem: TListViewItem);
begin
  ListPrestazioniTap;
  {
    if (self.ListViewPrestazioni.Items.Count > 0) and (ListViewPrestazioni.ItemIndex > -1) then
    begin
    ShowMessage('ItemIndex: ' + AItem.Text);

    if self.qryPrestazioni.Locate('description',
    ListViewPrestazioni.Items[ListViewPrestazioni.ItemIndex].Text, [])
    // if (self.qrySearchInstitutes.ParamByName('search').Value <> ListViewPrestazioni.Items
    // [ListViewPrestazioni.ItemIndex].Text)
    then
    begin
    qrySearchInstitutes.Close;
    self.qrySearchInstitutes.ParamByName('search').Value := ListViewPrestazioni.Items
    [ListViewPrestazioni.ItemIndex].Text;
    qrySearchInstitutes.Open;
    TabControlSearch.Next(TTAbTransition.Slide);
    end;
    end;
  }
end;

procedure TTabbedwithNavigationForm.ListViewPrestazioniTap(Sender: TObject; const Point: TPointF);
begin
  ListPrestazioniTap;
end;

procedure TTabbedwithNavigationForm.LocationSensor1LocationChanged(Sender: TObject;
  const OldLocation, NewLocation: TLocationCoord2D);
begin
  if NewLocation.Latitude <> OldLocation.Latitude then
  begin
    self.edLocation.TextPrompt := 'Posizione Attuale' + NewLocation.Latitude.ToString + ' : ' +
      NewLocation.Longitude.ToString;
  end;
end;

procedure TTabbedwithNavigationForm.qrySearchInstitutesAfterScroll(DataSet: TDataSet);
begin
  SetShowFormIstituti;
end;

end.
