unit Janua.FMX.StandardMaps;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, System.Sensors,
  System.Sensors.Components, System.Generics.Collections,
  // PLATFORM SPECIFIC LIBRARIES
{$IFDEF MACOS}
  MacApi.CoreFoundation, MacApi.ObjectiveC,
{$ENDIF MACOS}
  // Janua
  Janua.Core.Classes, Janua.Core.Functions, Janua.Core.Health, Janua.Core.Cloud,
  Janua.Anagraph.Types, Janua.Core.Types,
  // Repository disattivato ed assegnato a proprietà esterna al Frame ..................................
  // uClientModuleHealthREST,
  // FGX    // libreria componenti Firemonkey di
  FMX.Maps,
  // FMX
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls, FMX.Objects, FMX.Edit,
  FMX.Controls.Presentation, FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FMX.ListView, FMX.Layouts, FMX.ListBox, FMX.TabControl,
  FMX.DateTimeCtrls, FMX.ScrollBox, FMX.Memo;

type
  TJanuaListType = (jltPlain, jltDynamic);

type
  TJanuaFMXMapDetail = class(TJanuaPersistent)
  private
    FFacebookButton: TCustomButton;
    FTitleText: TPresentedTextControl;
    FLinkedInButton: TCustomButton;
    FMapParent: TStyledControl;
    FAddressText: TPresentedTextControl;
    FWebButton: TCustomButton;
    procedure SetAddressText(const Value: TPresentedTextControl);
    procedure SetFacebookButton(const Value: TCustomButton);
    procedure SetLinkedInButton(const Value: TCustomButton);
    procedure SetMapParent(const Value: TStyledControl);
    procedure SetSelectedAnagraph(const Value: TJanuaAnagraphRecord);
    procedure SetTitleText(const Value: TPresentedTextControl);
    procedure SetWebButton(const Value: TCustomButton);
  strict protected
    FSelectedAnagraph: TJanuaAnagraphRecord;
  public
    procedure CreateMap; overload; virtual; abstract;
    procedure ClearMap; virtual; abstract;
    procedure SetMap(aParent: TPanel); virtual; abstract;
    procedure MapPanTo(aCoordinates: TJanuaRecordCoordinates); overload; virtual; abstract;
    procedure SetMapAnagraph(aAnagraphs: TJanuaAnagraphs; boolList: boolean = false); overload;
      virtual; abstract;
    procedure SetMapAnagraph(aParent: TPanel; aAnagraphs: TJanuaAnagraphRecord); overload; virtual; abstract;
    property SelectedAnagraph: TJanuaAnagraphRecord read FSelectedAnagraph write SetSelectedAnagraph;
  published
    property MapParent: TStyledControl read FMapParent write SetMapParent;
    property TitleText: TPresentedTextControl read FTitleText write SetTitleText;
    property AddressText: TPresentedTextControl read FAddressText write SetAddressText;
    property FacebookButton: TCustomButton read FFacebookButton write SetFacebookButton;
    property WebButton: TCustomButton read FWebButton write SetWebButton;
    property LinkedInButton: TCustomButton read FLinkedInButton write SetLinkedInButton;
  end;

type
  TJanuaFMXMapList = class(TJanuaCoreComponent)
  private
    FListView: TListView;
    FCoordinates: TJanuaRecordCoordinates;
    FMapParent: TStyledControl;
    FPagination: boolean;
    FPageSize: smallint;
    FPage: smallint;
    FTextImage: string;
    FTextTitle: string;
    FTextDescription: string;
    FLocationSensor1: TLocationSensor;
    FZoom: Single;
    FListViewType: TJanuaListType;
    FSelectedItem: TJanuaAnagraphRecord;
    FItemIndex: Integer;
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
    procedure SetSelectedItem(const Value: TJanuaAnagraphRecord);
    procedure SetOnItemClick(const Value: TNotifyEvent);
    procedure SetMapDetail(const Value: TJanuaFMXMapDetail);
    procedure SetItemIndex(const Value: Integer);
  strict protected
    FOnItemClick: TNotifyEvent;
    FMapDetail: TJanuaFMXMapDetail;
    FAnagraphs: TJanuaAnagraphs;
    procedure InternalSetMapParent; virtual; abstract;
    procedure UpdateZoom; virtual; abstract;
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
    property ItemIndex: Integer read FItemIndex write SetItemIndex;
    property Coordinates: TJanuaRecordCoordinates read FCoordinates write SetCoordinates;
    property Anagraphs: TJanuaAnagraphs read FAnagraphs write SetAnagraphs;
  public
    constructor Create(AOwner: TComponent); override;
    // Evento List View Item Click
  published
    property TextTitle: string read FTextTitle write SetTextTitle;
    property TextDescription: string read FTextDescription write SetTextDescription;
    property TextImage: string read FTextImage write SetTextImage;
    property Zoom: Single read FZoom write SetZoom;
    property MapDetail: TJanuaFMXMapDetail read FMapDetail write SetMapDetail;
    property ListView: TListView read FListView write SetListView;
    property ListViewType: TJanuaListType read FListViewType write SetListViewType;
    property MapParent: TStyledControl read FMapParent write SetMapParent;
    property Pagination: boolean read FPagination write SetPagination default false;
    property Page: smallint read FPage write SetPage default 1;
    property PageSize: smallint read FPageSize write SetPageSize default 10;
    property LocationSensor1: TLocationSensor read FLocationSensor1 write SetLocationSensor1;
    property SelectedItem: TJanuaAnagraphRecord read FSelectedItem write SetSelectedItem;
  public
    // location sensor management if connected to the map
    procedure LocationSensor1LocationChanged(Sender: TObject;
      const OldLocation, NewLocation: TLocationCoord2D);
    // Map View Click Manager ...........................
    procedure OnListViewItemClick(const Sender: TObject; const AItem: TListViewItem);
  published
    property OnItemClick: TNotifyEvent read FOnItemClick write SetOnItemClick;
  end;

type
  TJanuaFMXStandardMapDetail = class(TJanuaFMXMapDetail)
  private
    FMapView: TMapView;
    // FMarker: TMapMarker;
  public
    Constructor Create; override;
    Destructor Destroy; override;
  public
    procedure SetMapAnagraph(aParent: TPanel; aAnagraphs: TJanuaAnagraphRecord); overload; override;
    procedure CreateMap; overload; override;
    procedure ClearMap; override;
    procedure SetMap(aParent: TPanel); override;
    procedure MapPanTo(aCoordinates: TJanuaRecordCoordinates); overload; override;
    procedure SetMapAnagraph(aAnagraphs: TJanuaAnagraphs; boolList: boolean = false); overload; override;
    procedure AddMarker(aCoordinates: TJanuaRecordCoordinates; aTitle: string = '');
  end;

type
  TJanuaFMXStandardMapList = class(TJanuaFMXMapList)
  private
    FMapView: TMapView;
    FMarkers: TList<TMapMarker>;
    procedure SetMapView(const Value: TMapView);
  strict protected
    procedure UpdateZoom; override;
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
  published
    property MapView: TMapView read FMapView write SetMapView;
  end;

implementation

uses System.StrUtils, Janua.FMX.Functions, System.Math;


// ---------------------------------------------------------------------------------------------------------------------

procedure TJanuaFMXMapList.ClearList;
begin
  self.FListView.Items.Clear;
end;

constructor TJanuaFMXMapList.Create(AOwner: TComponent);
begin
  inherited;
  ListViewType := TJanuaListType.jltPlain;
  FItemIndex := -1;
end;

procedure TJanuaFMXMapList.CreateMap(aParent: TStyledControl; aCoordinates: TJanuaRecordCoordinates);
begin
  self.FMapParent := aParent;
  self.FCoordinates := aCoordinates;
  self.CreateMap;
end;

procedure TJanuaFMXMapList.OnListViewItemClick(const Sender: TObject; const AItem: TListViewItem);
begin
  if Assigned(AItem) and (AItem.Tag > -1) and (AItem.Tag < Length(Anagraphs.Items)) then
  begin
    FItemIndex := AItem.Tag;
    self.MapPanTo(self.Anagraphs.Items[AItem.Tag]);
    self.SelectedItem := self.FAnagraphs.Items[AItem.Tag];
    if Assigned(self.FOnItemClick) then
      FOnItemClick(self);
  end
  else
    self.FItemIndex := -1;
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
  if (FCoordinates.Latitude > 0) and (FCoordinates.Longitude > 0) then
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

procedure TJanuaFMXMapList.SetItemIndex(const Value: Integer);
begin
  FItemIndex := Value;
end;

procedure TJanuaFMXMapList.SetListView(const Value: TListView);
begin
  FListView := Value;
  if Assigned(FListView) then
    FListView.OnItemClick := self.OnListViewItemClick;

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

procedure TJanuaFMXMapList.SetSelectedItem(const Value: TJanuaAnagraphRecord);
begin
  FSelectedItem := Value;
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

procedure TJanuaFMXMapList.SetViewListAnagraph(aAnagraphs: TJanuaAnagraphs);
var
  a: TJanuaAnagraphRecord;
  i: Integer;
begin
  FAnagraphs := aAnagraphs;
  if Assigned(FListView) then
  begin
    FListView.Items.Clear;
    i := -1;
    for a in aAnagraphs.Items do
      with FListView.Items.Add do
      begin
        Inc(i);
        Tag := i;
        case self.FListViewType of
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
                Data[self.FTextTitle] := a.LastName;
              if FTextDescription <> '' then
                Data[self.FTextDescription] :=
                  IfThen(a.distance < 1, FormatFloat('#,##0.m ', 1000 * a.distance),
                  FormatFloat('#,##0.00km ', a.distance)) + a.FullAddress;
              if (a.MainCategory.ImageID <> -1) and (FTextImage <> '') then
                Data[self.FTextImage] := a.MainCategory.ImageID;
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
  self.UpdateZoom;
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

procedure TJanuaFMXMapList.SetOnItemClick(const Value: TNotifyEvent);
begin
  FOnItemClick := Value;
end;

{ TJanuaFMXStandardMapList }

procedure TJanuaFMXStandardMapList.AddMarker(aCoordinates: TJanuaRecordCoordinates; aTitle: string);
var
  mc: TMapCoordinate;
  mmd: TMapMarkerDescriptor;
begin
  Assert(Assigned(FMapView), 'TJanuaFMXStandardMapList.AddMarker FMapView not set');
  mc.Latitude := aCoordinates.Latitude;
  mc.Longitude := aCoordinates.Longitude;
  mmd := TMapMarkerDescriptor.Create(mc, aTitle);
  self.FMarkers.Add(self.FMapView.AddMarker(mmd))
end;

procedure TJanuaFMXStandardMapList.UpdateZoom;
begin
  if Assigned(FMapView) then
  begin
    if (self.FZoom > 1.0) then
      FMapView.Zoom := self.FZoom
    else if FMapView.Zoom > 1.0 then
      self.FZoom := FMapView.Zoom;
  end;
end;

procedure TJanuaFMXStandardMapList.ClearMap;
var
  i: Integer;
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
  self.FZoom := 16.0;
  self.FMapDetail := TJanuaFMXStandardMapDetail.Create;
  FMarkers := TList<TMapMarker>.Create;
end;

procedure TJanuaFMXStandardMapList.CreateMap;
begin
  Assert(Assigned(FMapParent), 'TJanuaFMXMapList.CreateMap Cannot Create Map, Parent not assigned');
  if not Assigned(self.FMapView) then
  begin
    FMapView := TMapView.Create(self);
    FMapView.Size.PlatformDefault := false;
    FMapView.Parent := self.FMapParent;
    FMapView.Align := TAlignLayout.Client;
    FMapView.Visible := True;
    FMapView.Enabled := True;
    FMapView.Zoom := self.FZoom;
    // self.txtMap.Visible := False;
    // self.MapSet1 := true;
  end;
  FMapView.Zoom := self.FZoom;
  FMapView.MapType := FMX.Maps.TMapType.Terrain;
  if (FCoordinates.Latitude <> 0) and (FCoordinates.Longitude <> 0) then
    self.MapPanTo(FCoordinates);
  // FTMSFMXWebGMaps.MapOptions.DefaultLatitude := FCoordinates.Latitude;
  // FTMSFMXWebGMaps.MapOptions.DefaultLatitude := FCoordinates.Longitude;
  // disabilito i controlli di Default
  // MapOptions.DisablePOI := True;

end;

destructor TJanuaFMXStandardMapList.Destroy;
begin
  FMarkers.Free;
  FMapDetail.Free;
  inherited;
end;

procedure TJanuaFMXStandardMapList.MapPanTo(aCoordinates: TJanuaRecordCoordinates);
var
  mapCenter: TMapCoordinate;
begin
  if FMapView.Zoom = 0.0 then
    FMapView.Zoom := self.FZoom;
  Janua.FMX.Functions.MapMapPanTo(self.FMapView, aCoordinates, IfThen(self.FZoom = 0, FMapView.Zoom, FZoom));
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

procedure TJanuaFMXStandardMapList.SetMapView(const Value: TMapView);
begin
  FMapView := Value;
  UpdateZoom;
end;

procedure TJanuaFMXStandardMapList.InternalSetMapParent;
begin

  if (self.FMapParent <> nil) and (self.FMapView <> nil) then
  begin
    self.FMapView.Parent := self.FMapParent;
    FMapView.Align := TAlignLayout.Client;
  end;

end;

{ TJanuaFMXMapDetail }

procedure TJanuaFMXMapDetail.SetAddressText(const Value: TPresentedTextControl);
begin
  FAddressText := Value;
end;

procedure TJanuaFMXMapDetail.SetFacebookButton(const Value: TCustomButton);
begin
  FFacebookButton := Value;
end;

procedure TJanuaFMXMapDetail.SetLinkedInButton(const Value: TCustomButton);
begin
  FLinkedInButton := Value;
end;

procedure TJanuaFMXMapDetail.SetMapParent(const Value: TStyledControl);
begin
  FMapParent := Value;
end;

procedure TJanuaFMXMapDetail.SetSelectedAnagraph(const Value: TJanuaAnagraphRecord);
begin
  FSelectedAnagraph := Value;
end;

procedure TJanuaFMXMapDetail.SetTitleText(const Value: TPresentedTextControl);
begin
  FTitleText := Value;
end;

procedure TJanuaFMXMapDetail.SetWebButton(const Value: TCustomButton);
begin
  FWebButton := Value;
end;

{ TJanuaFMXStandardMapDetail }

procedure TJanuaFMXStandardMapDetail.SetMapAnagraph(aParent: TPanel; aAnagraphs: TJanuaAnagraphRecord);
begin
  self.FMapParent := aParent;

end;

procedure TJanuaFMXStandardMapDetail.AddMarker(aCoordinates: TJanuaRecordCoordinates; aTitle: string);
begin

end;

procedure TJanuaFMXStandardMapDetail.ClearMap;
begin
  inherited;
  if Assigned(self.FMapView) then
    self.FMapView.Free;
end;

constructor TJanuaFMXStandardMapDetail.Create;
begin
  // make an overload Version ................
  inherited;
end;

procedure TJanuaFMXStandardMapDetail.CreateMap;
begin
  inherited;

end;

destructor TJanuaFMXStandardMapDetail.Destroy;
begin

end;

procedure TJanuaFMXStandardMapDetail.MapPanTo(aCoordinates: TJanuaRecordCoordinates);
begin

end;

procedure TJanuaFMXStandardMapDetail.SetMap(aParent: TPanel);
begin
  inherited;

end;

procedure TJanuaFMXStandardMapDetail.SetMapAnagraph(aAnagraphs: TJanuaAnagraphs; boolList: boolean);
begin

end;

procedure TJanuaFMXMapList.SetMapDetail(const Value: TJanuaFMXMapDetail);
begin
  FMapDetail := Value;
end;

end.
