unit Janua.FMX.Maps;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, System.Sensors,
  System.Sensors.Components, System.Generics.Collections,
  // PLATFORM SPECIFIC LIBRARIES
{$IFDEF MACOS}
  MacApi.CoreFoundation, MacApi.ObjectiveC,
{$ENDIF MACOS}
  // Janua
  Janua.Core.Types, Janua.Core.Classes, Janua.Core.Functions, Janua.Core.Health, Janua.Core.Cloud,
  Janua.Anagraph.Types, Janua.Cms.Types,
  // Repository disattivato ed assegnato a proprietà esterna al Frame ..................................
  // uClientModuleHealthREST,
  // FGX    // libreria componenti Firemonkey di
  FMX.Maps, FMX.TMSWebGMapsCommon,
  // Tms
  FMX.TMSWebGMapsWebBrowser, FMX.TMSWebGMaps, FMX.TMSButton,
  // FMX
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls, FMX.Objects, FMX.Edit,
  FMX.Controls.Presentation, FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FMX.ListView, FMX.Layouts, FMX.ListBox, FMX.TabControl,
  FMX.DateTimeCtrls, FMX.ScrollBox, FMX.Memo;

type
  TJanuaListType = (jltPlain, jltDynamic);

type
  TJanuaFMXMapList = class(Janua.Core.Classes.TJanuaCoreComponent)
  private
    FListView: TListView;
    FCoordinates: TJanuaRecordCoordinates;
    FMapParent: TStyledControl;
    FAnagraphs: TJanuaAnagraphs;
    FPagination: boolean;
    FPageSize: smallint;
    FPage: smallint;
    FTextImage: string;
    FTextTitle: string;
    FTextDescription: string;
    FLocationSensor1: TLocationSensor;
    FZoom: Single;
    FListViewType: TJanuaListType;
    procedure SetTMSFMXWebGMaps(const Value: TTMSFMXWebGMaps);
    procedure SetListView(const Value: TListView);
    procedure SetCoordinates(const Value: TJanuaRecordCoordinates);
    procedure SetMapParent(const Value: TStyledControl);
    procedure SetAnagraphs(const Value: TJanuaAnagraphs);
    procedure SetPage(const Value: smallint);
    procedure SetPageSize(const Value: smallint);
    procedure SetPagination(const Value: boolean);
    procedure SetTextDescription(const Value: string);
    procedure SetTextImage(const Value: string);
    procedure SetTextTitle(const Value: string);
    procedure SetLocationSensor1(const Value: TLocationSensor);
    procedure SetZoom(const Value: Single);
    procedure SetListViewType(const Value: TJanuaListType);
  protected
    procedure InternalSetMapParent; virtual; abstract;
  public
    procedure SetMap(aParent: TPanel); virtual; abstract;
    procedure SetMapAnagraph(aParent: TPanel; aAnagraphs: TJanuaAnagraphs); overload;
    procedure SetMapAnagraph(aParent: TPanel; aAnagraphs: TJanuaAnagraphRecord); overload; virtual; abstract;
    procedure SetMapAnagraph(aParent: TPanel; aAnagraphs: TJanuaAnagraphs;
      aCoordinates: TJanuaRecordCoordinates); overload;
    procedure SetMapAnagraph(aAnagraphs: TJanuaAnagraphs; boolList: boolean = false); overload;
      virtual; abstract;
    procedure SetViewListAnagraph(aList: TListView; aAnagraphs: TJanuaAnagraphs); overload;
    procedure SetViewListAnagraph(aAnagraphs: TJanuaAnagraphs); overload;
    procedure CreateMap; overload; virtual; abstract;
    procedure CreateMap(aParent: TStyledControl; aCoordinates: TJanuaRecordCoordinates); overload;
    procedure ClearMap; virtual; abstract;
    procedure ClearList;
    procedure MapPanTo(aCoordinates: TJanuaRecordCoordinates); overload; virtual; abstract;
    procedure MapPanTo(aAnagraph: TJanuaAnagraphRecord); overload;
  public
    property Coordinates: TJanuaRecordCoordinates read FCoordinates write SetCoordinates;
    property Anagraphs: TJanuaAnagraphs read FAnagraphs write SetAnagraphs;
  public
    constructor Create(AOwner: TComponent); override;
    // Evento List View Item Click
    procedure ListViewPlaccesItemClick(const Sender: TObject; const AItem: TListViewItem);
  public
    property TextTitle: string read FTextTitle write SetTextTitle;
    property TextDescription: string read FTextDescription write SetTextDescription;
    property TextImage: string read FTextImage write SetTextImage;
    property Zoom: Single read FZoom write SetZoom;
  public
    property ListView: TListView read FListView write SetListView;
    property ListViewType: TJanuaListType read FListViewType write SetListViewType;
    property MapParent: TStyledControl read FMapParent write SetMapParent;
    property Pagination: boolean read FPagination write SetPagination default false;
    property Page: smallint read FPage write SetPage default 1;
    property PageSize: smallint read FPageSize write SetPageSize default 10;
    property LocationSensor1: TLocationSensor read FLocationSensor1 write SetLocationSensor1;
  public
    // location sensor management if connected to the map
    procedure LocationSensor1LocationChanged(Sender: TObject;
      const OldLocation, NewLocation: TLocationCoord2D);

  end;

type
  TJanuaFMXStandardMapList = class(TJanuaFMXMapList)
  private
    FMapView: TMapView;
    FMarkers: TList<TMapMarker>;
  protected
    procedure InternalSetMapParent; override;
  public
    Constructor Create(AOwner: TComponent); override;
    Destructor Destroy; override;
  public
    procedure CreateMap; overload; override;
    procedure ClearMap; override;
    procedure SetMap(aParent: TPanel); override;
    procedure MapPanTo(aCoordinates: TJanuaRecordCoordinates); overload; override;
    procedure SetMapAnagraph(aAnagraphs: TJanuaAnagraphs; boolList: boolean = false); overload; override;
    procedure SetMapAnagraph(aParent: TPanel; aAnagraphs: TJanuaAnagraphRecord); overload; override;
    procedure AddMarker(aCoordinates: TJanuaRecordCoordinates; aTitle: string = '');
  end;

type
  TJanuaFMXTMSMapList = class(TJanuaFMXMapList)
  private
    FTMSFMXWebGMaps: TTMSFMXWebGMaps;
  protected
    procedure InternalSetMapParent; override;
  public
    procedure CreateMap; overload; override;
    procedure ClearMap; override;
    procedure SetMap(aParent: TPanel); override;
    procedure MapPanTo(aCoordinates: TJanuaRecordCoordinates); overload; override;
    procedure SetMapAnagraph(aAnagraphs: TJanuaAnagraphs; boolList: boolean = false); overload; override;
    procedure SetMapAnagraph(aParent: TPanel; aAnagraphs: TJanuaAnagraphRecord); overload; override;
  end;

implementation

uses System.StrUtils;

{ TJanuaFMXTMSMapList }

procedure TJanuaFMXTMSMapList.InternalSetMapParent;
begin
  if (FMapParent <> nil) and (FTMSFMXWebGMaps <> nil) then
  begin
    FTMSFMXWebGMaps.Parent := FMapParent;
    FTMSFMXWebGMaps.Align := TAlignLayout.Client;
  end;
end;

procedure TJanuaFMXTMSMapList.SetMapAnagraph(aParent: TPanel; aAnagraphs: TJanuaAnagraphRecord);
begin
  self.SetMapParent(aParent);
  FTMSFMXWebGMaps.Markers.Clear;
  FTMSFMXWebGMaps.MapPanTo(aAnagraphs.Latitude, aAnagraphs.Longitude);
  FTMSFMXWebGMaps.Markers.Add(aAnagraphs.Latitude, aAnagraphs.Longitude, aAnagraphs.LastName, '', false, True,
    false, false, True, 0);
end;

procedure TJanuaFMXTMSMapList.SetMapAnagraph(aAnagraphs: TJanuaAnagraphs; boolList: boolean = false);
var
  aAnagraph: TJanuaAnagraphRecord;
begin
  FTMSFMXWebGMaps.Enabled := True;
  self.FTMSFMXWebGMaps.Visible := True;
  FTMSFMXWebGMaps.Markers.Clear;
  self.FAnagraphs := aAnagraphs;
  for aAnagraph in FAnagraphs.Items do
    FTMSFMXWebGMaps.Markers.Add(aAnagraph.Latitude, aAnagraph.Longitude, aAnagraph.LastName, '', false, True,
      false, false, True, 0);
  if self.FAnagraphs.count > 0 then
    self.MapPanTo(FAnagraphs.Items[0]);

  if boolList and Assigned(self.FListView) then
    self.SetViewListAnagraph(aAnagraphs);

  // FTMSFMXWebGMaps.MapPanTo();
  Active := True;
end;

procedure TJanuaFMXTMSMapList.MapPanTo(aCoordinates: TJanuaRecordCoordinates);
begin
  self.FTMSFMXWebGMaps.MapPanTo(aCoordinates.Latitude, aCoordinates.Longitude)
end;

procedure TJanuaFMXTMSMapList.CreateMap;
begin
  Assert(Assigned(FMapParent), 'TJanuaFMXMapList.CreateMap Cannot Create Map, Parent not assigned');
  if not Assigned(FTMSFMXWebGMaps) then
  begin
    FTMSFMXWebGMaps := TTMSFMXWebGMaps.Create(self);
    FTMSFMXWebGMaps.Visible := false;
    FTMSFMXWebGMaps.Enabled := false;
    // self.txtMap.Visible := False;
    // self.MapSet1 := true;
  end;
  with FTMSFMXWebGMaps do
  begin
    FTMSFMXWebGMaps.Parent := self.FMapParent;
    FTMSFMXWebGMaps.Size.PlatformDefault := false;
    FTMSFMXWebGMaps.Align := TAlignLayout.Client;
    FTMSFMXWebGMaps.MapOptions.ZoomMap := 13;
    FTMSFMXWebGMaps.MapOptions.MapType := TMapType.mtTerrain;
    FTMSFMXWebGMaps.MapOptions.DefaultToCurrentLocation := True;
    FTMSFMXWebGMaps.MapOptions.DefaultLatitude := FCoordinates.Latitude;
    FTMSFMXWebGMaps.MapOptions.DefaultLatitude := FCoordinates.Longitude;
    // disabilito i controlli di Default
    MapOptions.DisablePOI := True;
    ControlsOptions.PanControl.Visible := false;
    ControlsOptions.MapTypeControl.Visible := false;
    ControlsOptions.StreetViewControl.Visible := false;
    ControlsOptions.OverviewMapControl.Visible := false;
    ControlsOptions.MapTypeControl.Visible := false;
    Routing.MarkerColor := TMarkerIconColor.icBlue;
    ApiKey := 'AIzaSyDaRjs-9ynGPpQ3Naxn_dwDcZZrg-lyC9c';
  end;

  FTMSFMXWebGMaps.Enabled := True;
  self.FTMSFMXWebGMaps.Visible := True;
  FTMSFMXWebGMaps.MapPanTo(FCoordinates.Latitude, FCoordinates.Longitude);
  {
    /// questa procedura crea ed imposta le ocordinate base della mappa va chiamata prima di popolarla con i vari
    /// markers. in questo test visualizzo immediatamente la mappa appena dopo averla creata, con il comando
    /// successivo invece imposto i vari markers. Questo comando vale per ogni mappa in quanto si setta su Panel.
  }

end;

procedure TJanuaFMXTMSMapList.ClearMap;
begin
  self.FTMSFMXWebGMaps.Markers.Clear;
end;

procedure TJanuaFMXTMSMapList.SetMap(aParent: TPanel);
begin
  self.MapParent := aParent;
  self.CreateMap;
end;

// ---------------------------------------------------------------------------------------------------------------------

procedure TJanuaFMXMapList.ClearList;
begin
  self.FListView.Items.Clear;
end;

constructor TJanuaFMXMapList.Create(AOwner: TComponent);
begin
  inherited;
  ListViewType := TJanuaListType.jltPlain;
end;

procedure TJanuaFMXMapList.CreateMap(aParent: TStyledControl; aCoordinates: TJanuaRecordCoordinates);
begin
  self.FMapParent := aParent;
  self.FCoordinates := aCoordinates;
  self.CreateMap;
end;

procedure TJanuaFMXMapList.ListViewPlaccesItemClick(const Sender: TObject; const AItem: TListViewItem);
begin
  self.MapPanTo(self.Anagraphs.Items[AItem.Index])
end;

procedure TJanuaFMXMapList.LocationSensor1LocationChanged(Sender: TObject;
  const OldLocation, NewLocation: TLocationCoord2D);
var
  aCoordinates: TJanuaRecordCoordinates;
begin
  aCoordinates.Latitude := NewLocation.Latitude;
  aCoordinates.Longitude := NewLocation.Longitude;
  self.MapPanTo(aCoordinates);
end;

procedure TJanuaFMXMapList.MapPanTo(aAnagraph: TJanuaAnagraphRecord);
begin
  self.FCoordinates.Latitude := aAnagraph.Latitude;
  self.FCoordinates.Longitude := aAnagraph.Longitude;
  self.MapPanTo(self.FCoordinates);
end;

procedure TJanuaFMXMapList.SetAnagraphs(const Value: TJanuaAnagraphs);
begin
  FAnagraphs := Value;
end;

procedure TJanuaFMXMapList.SetCoordinates(const Value: TJanuaRecordCoordinates);
begin
  FCoordinates := Value;
end;

procedure TJanuaFMXMapList.SetListView(const Value: TListView);
begin
  FListView := Value;
end;

procedure TJanuaFMXMapList.SetListViewType(const Value: TJanuaListType);
begin
  FListViewType := Value;
end;

procedure TJanuaFMXMapList.SetLocationSensor1(const Value: TLocationSensor);
begin
  FLocationSensor1 := Value;
  if Assigned(FLocationSensor1) then
    self.FLocationSensor1.OnLocationChanged := self.LocationSensor1LocationChanged;
end;

procedure TJanuaFMXMapList.SetMapAnagraph(aParent: TPanel; aAnagraphs: TJanuaAnagraphs;
  aCoordinates: TJanuaRecordCoordinates);
begin
  self.FCoordinates := aCoordinates;
  self.SetMapAnagraph(aParent, aAnagraphs);
end;

procedure TJanuaFMXMapList.SetMapAnagraph(aParent: TPanel; aAnagraphs: TJanuaAnagraphs);
begin
  SetMap(aParent);
  SetMapAnagraph(aAnagraphs);
end;

procedure TJanuaFMXMapList.SetPage(const Value: smallint);
begin
  FPage := Value;
end;

procedure TJanuaFMXMapList.SetPageSize(const Value: smallint);
begin
  FPageSize := Value;
end;

procedure TJanuaFMXMapList.SetPagination(const Value: boolean);
begin
  FPagination := Value;
end;

procedure TJanuaFMXMapList.SetTextDescription(const Value: string);
begin
  FTextDescription := Value;
end;

procedure TJanuaFMXMapList.SetTextImage(const Value: string);
begin
  FTextImage := Value;
end;

procedure TJanuaFMXMapList.SetTextTitle(const Value: string);
begin
  FTextTitle := Value;
end;

procedure TJanuaFMXMapList.SetTMSFMXWebGMaps(const Value: TTMSFMXWebGMaps);
begin

end;

procedure TJanuaFMXMapList.SetViewListAnagraph(aAnagraphs: TJanuaAnagraphs);
var
  a: TJanuaAnagraphRecord;
begin
  if Assigned(FListView) then
  begin
    FListView.Items.Clear;
    for a in aAnagraphs.Items do
      with FListView.Items.Add do
      begin
        case FListViewType of
          jltPlain:
            begin
              Text := a.LastName;
              // Detail := Format('%d kg of paper', [1000 + Random(1234)]);
              // ImageIndex := Ord(self.FIconType);
              ImageIndex := a.MainCategory.ImageID;
            end;
          jltDynamic:
            begin
              if FTextTitle <> '' then
                Data[FTextTitle] := a.LastName;
              if FTextDescription <> '' then
                Data[FTextDescription] := IfThen(a.distance < 1, FormatFloat('#,##0.m ', 1000 * a.distance),
                  FormatFloat('#,##0.00km ', a.distance)) + a.Address.AddressFull;
              if (a.MainCategory.ImageID <> -1) and (FTextImage <> '') then
                Data[FTextImage] := a.MainCategory.ImageID;
            end;
        end;
      end;
  end
  else
    raise Exception.Create('JanuaFMXMapList.SetViewListAnagraph List View not set.');
end;

procedure TJanuaFMXMapList.SetZoom(const Value: Single);
begin
  FZoom := Value;
end;

procedure TJanuaFMXMapList.SetViewListAnagraph(aList: TListView; aAnagraphs: TJanuaAnagraphs);

begin
  // cancello la lista e sistemo tutto ................................................................
  self.FListView := aList;
  SetViewListAnagraph(aAnagraphs);
end;

procedure TJanuaFMXMapList.SetMapParent(const Value: TStyledControl);
begin
  self.FMapParent := Value;
  if Assigned(FMapParent) then
  begin
    self.InternalSetMapParent;
  end;
end;

{ TJanuaFMXStandardMapList }

procedure TJanuaFMXStandardMapList.AddMarker(aCoordinates: TJanuaRecordCoordinates; aTitle: string);
var
  mc: TMapCoordinate;
  mmd: TMapMarkerDescriptor;
begin
  mc.Latitude := aCoordinates.Latitude;
  mc.Longitude := aCoordinates.Longitude;
  mmd := TMapMarkerDescriptor.Create(mc, aTitle);
  self.FMarkers.Add(self.FMapView.AddMarker(mmd))
end;

procedure TJanuaFMXStandardMapList.ClearMap;
var
  i: integer;
begin
  for i := FMarkers.count - 1 downto 0 do
  begin
    FMarkers[i].Remove;
    FMarkers.Delete(i);
  end;
end;

constructor TJanuaFMXStandardMapList.Create(AOwner: TComponent);
begin
  inherited;
  self.FZoom := 16;
  FMarkers := TList<TMapMarker>.Create;
end;

procedure TJanuaFMXStandardMapList.CreateMap;
begin
  Assert(Assigned(FMapParent), 'TJanuaFMXMapList.CreateMap Cannot Create Map, Parent not assigned');
  if not Assigned(self.FMapView) then
  begin
    FMapView := TMapView.Create(self);
    FMapView.Visible := false;
    FMapView.Enabled := false;

    // self.txtMap.Visible := False;
    // self.MapSet1 := true;
  end;
  with FMapView do
  begin
    FMapView.Parent := self.FMapParent;
    FMapView.Size.PlatformDefault := false;
    FMapView.Align := TAlignLayout.Client;
    FMapView.Zoom := self.FZoom;
    FMapView.MapType := FMX.Maps.TMapType.Terrain;
    FMapView.Enabled := True;
    FMapView.Visible := True;
    if (FCoordinates.Latitude <> 0) and (FCoordinates.Longitude <> 0) then
      self.MapPanTo(FCoordinates);
    // FTMSFMXWebGMaps.MapOptions.DefaultLatitude := FCoordinates.Latitude;
    // FTMSFMXWebGMaps.MapOptions.DefaultLatitude := FCoordinates.Longitude;
    // disabilito i controlli di Default
    // MapOptions.DisablePOI := True;
  end;

end;

destructor TJanuaFMXStandardMapList.Destroy;
begin
  FMarkers.Free;
  inherited;
end;

procedure TJanuaFMXStandardMapList.MapPanTo(aCoordinates: TJanuaRecordCoordinates);
var
  mapCenter, mc: TMapCoordinate;
begin
  mapCenter := TMapCoordinate.Create(aCoordinates.Latitude, aCoordinates.Longitude);
  FMapView.Location := mapCenter;
end;

procedure TJanuaFMXStandardMapList.SetMap(aParent: TPanel);
begin

end;

procedure TJanuaFMXStandardMapList.SetMapAnagraph(aAnagraphs: TJanuaAnagraphs; boolList: boolean);
var
  aAnagraph: TJanuaAnagraphRecord;
begin
  self.ClearMap;

  for aAnagraph in aAnagraphs.Items do
    self.AddMarker(TJanuaRecordCoordinates.Create(aAnagraph.Latitude, aAnagraph.Longitude),
      aAnagraph.LastName);

  if boolList then
    SetViewListAnagraph(aAnagraphs);
end;

procedure TJanuaFMXStandardMapList.SetMapAnagraph(aParent: TPanel; aAnagraphs: TJanuaAnagraphRecord);
begin

end;

procedure TJanuaFMXStandardMapList.InternalSetMapParent;
begin

  if (self.FMapParent <> nil) and (self.FMapView <> nil) then
  begin
    self.FMapView.Parent := self.FMapParent;
    FMapView.Align := TAlignLayout.Client;
  end;

end;

end.
