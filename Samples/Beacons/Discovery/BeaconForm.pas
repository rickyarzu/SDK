unit BeaconForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, System.Beacon,
  System.Beacon.Components, FMX.StdCtrls, FMX.Controls.Presentation,
  FMX.ListBox, FMX.Layouts, System.Bluetooth, FMX.TabControl, Data.DB, MemDS,
  VirtualTable, FMX.ListView.Types, FMX.ListView.Appearances,
  FMX.ListView.Adapters.Base, FMX.ListView, Data.Bind.EngExt, FMX.Bind.DBEngExt,
  System.Rtti, System.Bindings.Outputs, FMX.Bind.Editors, Data.Bind.Components,
  Data.Bind.DBScope, FMX.ScrollBox, FMX.Memo, FMX.Edit, FMX.Grid.Style, FMX.Grid, Fmx.Bind.Grid,
  Data.Bind.Grid;

type
  TBeaconDiscoverForm = class(TForm)
    Beacon1: TBeacon;
    Beacon2: TBeacon;
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    TabItem3: TTabItem;
    BeaconDiscoveryList: TListBox;
    ListBoxGroupHeader1: TListBoxGroupHeader;
    ListBoxItem1: TListBoxItem;
    Label1: TLabel;
    ListBoxItem2: TListBoxItem;
    BeaconDistance: TLabel;
    ListBoxItem3: TListBoxItem;
    Label2: TLabel;
    Timer1: TTimer;
    ToolBar1: TToolBar;
    Label5: TLabel;
    ToolBar2: TToolBar;
    StartDiscoveryBtn: TButton;
    CancelDiscoveryBtn: TButton;
    ToolBar3: TToolBar;
    Button1: TButton;
    Button2: TButton;
    tbDiscovery: TVirtualTable;
    VirtualTable1local_id: TSmallintField;
    VirtualTable1macaddress: TStringField;
    VirtualTable1UUID: TStringField;
    VirtualTable1message: TStringField;
    Panel1: TPanel;
    VirtualTable1active: TBooleanField;
    VirtualTable1remote_id: TIntegerField;
    lbMacAddress: TLabel;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkPropertyToFieldText: TLinkPropertyToField;
    LinkFillControlToField1: TLinkFillControlToField;
    tbDiscoveryDistance: TFloatField;
    Memo1: TMemo;
    tbDiscoveryDistanceTrigger: TFloatField;
    Edit1: TEdit;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    ListBox1: TListBox;
    LinkListControlToField1: TLinkListControlToField;
    procedure StartDiscoveryBtnClick(Sender: TObject);
    procedure CancelDiscoveryBtnClick(Sender: TObject);
    procedure Beacon1BeaconProximity(const Sender: TObject;
      const ABeacon: IBeacon; Proximity: TBeaconProximity);
    procedure Timer1Timer(Sender: TObject);
    procedure Beacon1BeaconEnter(const Sender: TObject; const ABeacon: IBeacon;
      const CurrentBeaconList: TBeaconList);
    procedure Beacon2BeaconEnter(const Sender: TObject; const ABeacon: IBeacon;
      const CurrentBeaconList: TBeaconList);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    FBeacon: IBeacon;
    FBeaconList: Array of IBeacon;
  public
    { Public declarations }
  end;

var
  BeaconDiscoverForm: TBeaconDiscoverForm;

implementation

{$R *.fmx}
{$R *.LgXhdpiPh.fmx ANDROID}
{$R *.iPhone47in.fmx IOS}
{$R *.Macintosh.fmx MACOS}
{$R *.Windows.fmx MSWINDOWS}
{$R *.NmXhdpiPh.fmx ANDROID}

procedure TBeaconDiscoverForm.Beacon1BeaconEnter(const Sender: TObject;
  const ABeacon: IBeacon; const CurrentBeaconList: TBeaconList);
begin
  if ABeacon <> nil then
  begin
    FBeacon := ABeacon;
    Label1.Text := 'Beacon: ' + FBeacon.DeviceIdentifier + '   Major:' +
      FBeacon.Major.ToString + ' Minor:' + FBeacon.Minor.ToString;
  end;

end;

procedure TBeaconDiscoverForm.Beacon1BeaconProximity(const Sender: TObject;
  const ABeacon: IBeacon; Proximity: TBeaconProximity);
begin
  if Proximity = TBeaconProximity.Near then
  begin
    FBeacon := ABeacon;

    Label1.Text := 'Beacon: ' + FBeacon.GUID.ToString + '   Major:' +
      FBeacon.Major.ToString + ' Minor:' + FBeacon.Minor.ToString;

  end;
end;

procedure TBeaconDiscoverForm.Beacon2BeaconEnter(const Sender: TObject;
  const ABeacon: IBeacon; const CurrentBeaconList: TBeaconList);
var
  i: integer;
  f: boolean;
begin
  if ABeacon <> nil then
  begin
    f := False;

    if (Length(self.FBeaconList) > 0) then
      for i := 0 to Length(self.FBeaconList) - 1 do
        if not f then
          f := self.FBeaconList[i].DeviceIdentifier = ABeacon.DeviceIdentifier;

    if not f then
    begin
      if not tbDiscovery.Active then tbDiscovery.Open;

      SetLength(self.FBeaconList, Length(self.FBeaconList) + 1);
      self.FBeaconList[Length(self.FBeaconList) - 1] := ABeacon;

      tbDiscovery.Append;
      tbDiscovery.FieldByName('local_id').Value := Length(self.FBeaconList);

      VirtualTable1macaddress.AsString := FBeaconList[Length(self.FBeaconList) - 1].DeviceIdentifier;
      tbDiscoveryDistance.AsFloat := FBeaconList[Length(self.FBeaconList) - 1].Distance;
      tbDiscovery.Post;

    end;
  end;
end;

procedure TBeaconDiscoverForm.Button1Click(Sender: TObject);
begin
  if not Beacon2.Enabled then
    Beacon2.Enabled := True;

  Beacon2.StartScan;
end;

procedure TBeaconDiscoverForm.StartDiscoveryBtnClick(Sender: TObject);
begin
  if not Beacon1.Enabled then
    Beacon1.Enabled := True;

  Beacon1.StartScan;
  Timer1.Enabled := True;
end;

procedure TBeaconDiscoverForm.CancelDiscoveryBtnClick(Sender: TObject);
begin
  Beacon1.StopScan;
  Timer1.Enabled := False;
end;

procedure TBeaconDiscoverForm.Timer1Timer(Sender: TObject);
begin
  if FBeacon <> nil then
  begin
    BeaconDistance.Text := FBeacon.Distance.ToString + 'm';
    if FBeacon.Distance <= 2 then
      self.Label2.Text := 'Near'
    else
      self.Label2.Text := 'Far';
  end;
end;

end.
