unit Janua.FMX.MapStandardControls;

interface

uses
  // System
  System.SysUtils, System.Classes, Spring, Spring.Collections,
  // Janua
  Janua.Core.Classes, Janua.Core.Cloud, Janua.Anagraph.Types, Janua.Components.Maps,
  // FMX
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.TabControl,
  FMX.Maps,
  FMX.StdCtrls, FMX.Gestures, FMX.Controls.Presentation, FMX.ListView.Types,
  FMX.ListView.Appearances,
  FMX.ListView.Adapters.Base, FMX.ListView, FMX.ListBox, FMX.Objects, FMX.Edit,
  // DB
  Data.DB;

type
  TJanuaFMXMapControl = class(TJanuaCoreComponent)
  private
    FCoordinates: TJanuaCoordinates;
    FParent: TFMXObject;
    FSearchAddress: String;
    FdsAnagraphs: TDataSet;
    FJanuaAnagraphs: TJanuaAnagraphs;
    procedure SetCoordinates(const Value: TJanuaCoordinates);
    procedure SetdsAnagraphs(const Value: TDataSet);
    procedure SetParent(const Value: TFMXObject);
    procedure SetSearchAddress(const Value: String);
    procedure SetJanuaAnagraphs(const Value: TJanuaAnagraphs);
    { Private declarations }
  strict protected
    { Protected declarations }
    function InternalActivate: boolean; override;
  public
    { Public declarations }
    FMapView: TMapView;
    FMapLocation: TMapMarker;
    FMarkers: IList<TMapMarker>;
    property Coordinates: TJanuaCoordinates read FCoordinates write SetCoordinates;
    property JanuaAnagraphs: TJanuaAnagraphs read FJanuaAnagraphs write SetJanuaAnagraphs;
    procedure ClearMarkers;
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  published
    { Published declarations }
    property dsAnagraphs: TDataSet read FdsAnagraphs write SetdsAnagraphs;
    property SearchAddress: String read FSearchAddress write SetSearchAddress;
    property ParentControl: TFMXObject read FParent write SetParent;
  end;

type
  TJanuaFMXAddressList = class(TJanuaCoreComponent)
  private
    FSearchAddress: String;
    FOldLocationSearch: string;
    FListBox: TListBox;
    FEditControl: TCustomEdit;
    FTrigger: smallint;
    FSelectedAddress: string;
    FJanuaGoogleGeoCoding: TJanuaGoogleGeoCoding;
    procedure SetSearchAddress(const Value: String);
    procedure SetListBox(const Value: TListBox);
    procedure SetEditControl(const Value: TCustomEdit);
    procedure SetTrigger(const Value: smallint);
    procedure SetSelectedAddress(const Value: string);
    procedure SetJanuaGoogleGeoCoding(const Value: TJanuaGoogleGeoCoding);
  protected
    function GetLocationText: String;
  public
    procedure OnTextChange(Sender: TObject);
    procedure ListBoxItemClick(const Sender: TCustomListBox; const Item: TListBoxItem);
    constructor Create(AOwner: TComponent); override;
    property SelectedAddress: string read FSelectedAddress write SetSelectedAddress;
  published
    property SearchAddress: String read FSearchAddress write SetSearchAddress;
    property ListBox: TListBox read FListBox write SetListBox;
    property EditControl: TCustomEdit read FEditControl write SetEditControl;
    property Trigger: smallint read FTrigger write SetTrigger default 4;
    property JanuaGoogleGeoCoding: TJanuaGoogleGeoCoding read FJanuaGoogleGeoCoding
      write SetJanuaGoogleGeoCoding;
  end;

implementation

uses Janua.Core.Functions, Janua.Application.Framework;

{ TJanuaFMXMapControl }

procedure TJanuaFMXMapControl.ClearMarkers;
var
  i: integer;
begin
  if Assigned(self.FMapView) then
    for i := 0 to Pred(FMarkers.Count) do
      FMarkers.Clear;
end;

constructor TJanuaFMXMapControl.Create(AOwner: TComponent);
begin
  inherited;
  FCoordinates:= TJanuaCoordinates.Create(0.0, 0.0);
  FMarkers := Spring.Collections.TCollections.CreateList<TMapMarker>;
end;

destructor TJanuaFMXMapControl.Destroy;
begin
  FCoordinates.Free;
  inherited;
end;

function TJanuaFMXMapControl.InternalActivate: boolean;
var
  a: TJanuaAnagraphRecord;
  mc: TMapCoordinate;
  mmd: TMapMarkerDescriptor;
begin
  Result := Active;
  if not Result then
    try
      Result := inherited;
      if Result then
      begin
        FdsAnagraphs := nil;
        if (FCoordinates.Latitude = 0) and (FCoordinates.Longitude = 0) then
        begin
          FCoordinates.Latitude := 45.4655236;
          FCoordinates.Longitude := 9.2080925;
        end;

        FSearchAddress := 'Via Pasquale Sottocorno, 3, Milano';
        // TMSFMXWebGMaps := TTMSFMXWebGMaps.Create(self);
        FMapView := TMapView.Create(self);
        FMapView.Parent := self.FParent;
        FMapView.Align := TAlignLayout.Client;
        // FMapView.ApiKey := 'AIzaSyDaRjs-9ynGPpQ3Naxn_dwDcZZrg-lyC9c';
        FMapView.Zoom := 12.0;

        mc.Latitude := FCoordinates.Latitude;
        mc.Longitude := FCoordinates.Longitude;
        FMapView.Location := mc;

        FMapView.Visible := True;

        mmd := TMapMarkerDescriptor.Create(mc, FSearchAddress);
        FMapLocation.Remove;
        FMapLocation := FMapView.AddMarker(mmd);

        if (self.JanuaAnagraphs.Count = 0) and Assigned(FdsAnagraphs) and (FdsAnagraphs.RecordCount > 0) then
          JanuaAnagraphs.LoadFromDataset(FdsAnagraphs);

        self.ClearMarkers;
        self.FMarkers.Clear;

        for a in self.JanuaAnagraphs.Items do
        begin
          mc.Latitude := a.Latitude;
          mc.Longitude := a.Longitude;
          mmd := TMapMarkerDescriptor.Create(mc, a.LastName);
          self.FMarkers.Add(FMapView.AddMarker(mmd));
          {
            TMSFMXWebGMaps.Markers.Add(a.Latitude, a.Longitude, a.LastName, '', False,
            True, False, False, True, 0); }
        end;
        Result := True;
      end;
    except
      on e: exception do
        RaiseLocalException('InternalActivate', e);
    end;

end;

procedure TJanuaFMXMapControl.SetCoordinates(const Value: TJanuaCoordinates);
begin
  FCoordinates := Value;
end;

procedure TJanuaFMXMapControl.SetdsAnagraphs(const Value: TDataSet);
begin
  FdsAnagraphs := Value;
end;

procedure TJanuaFMXMapControl.SetJanuaAnagraphs(const Value: TJanuaAnagraphs);
begin
  FJanuaAnagraphs := Value;
end;

procedure TJanuaFMXMapControl.SetParent(const Value: TFMXObject);
begin
  FParent := Value;
end;

procedure TJanuaFMXMapControl.SetSearchAddress(const Value: String);
begin
  FSearchAddress := Value;
end;

{ TJanuaFMXAddressList }

function TJanuaFMXAddressList.GetLocationText: String;
begin
  if (FListBox.ItemIndex <> -1) and (FListBox.Items.Count > 0) then
    Result := (FListBox.Items[FListBox.ItemIndex])
  else
    Result := self.FSelectedAddress;
end;

procedure TJanuaFMXAddressList.ListBoxItemClick(const Sender: TCustomListBox; const Item: TListBoxItem);
begin
  self.FEditControl.Text := Item.Text;
  FJanuaGoogleGeoCoding.Address := Item.Text;
  FListBox.Visible := False;
end;

constructor TJanuaFMXAddressList.Create(AOwner: TComponent);
begin
  inherited;
  self.FTrigger := 4;
end;

procedure TJanuaFMXAddressList.OnTextChange(Sender: TObject);
begin
  if Assigned(FEditControl) then
  begin
    if not Assigned(FListBox) then
    begin
      FListBox.Create(self);
      if Assigned(FEditControl.Parent.Parent) then
        FListBox.Parent := self.FEditControl.Parent.Parent
      else
        FListBox.Parent := self.FEditControl.Parent;

      FListBox.Name := 'ListBox' + FEditControl.Name;
      FListBox.OnItemClick := self.ListBoxItemClick;
      self.FListBox.Visible := False;
    end;

    if (Length(FEditControl.Text) > 4) and (FEditControl.Text <> self.GetLocationText) then
    begin
      if (FJanuaGoogleGeoCoding.Address <> FEditControl.Text) and
        (self.FEditControl.Text <> FOldLocationSearch) then
      begin
        FJanuaGoogleGeoCoding.Address := FEditControl.Text;
        if FJanuaGoogleGeoCoding.GetSuggestions then
        begin
          FListBox.Width := self.FEditControl.Width - 4;

          if Assigned(FEditControl.Parent.Parent) and (FEditControl.Parent is TControl) then
            FListBox.Position.Y := TControl(FEditControl.Parent).Position.Y + self.FEditControl.Position.Y +
              FEditControl.Height + 2
          else
            FListBox.Position.Y := self.FEditControl.Position.Y + FEditControl.Height + 2;

          FListBox.Height := 300;
          FListBox.Items.Assign(FJanuaGoogleGeoCoding.AddressText);
          FListBox.Visible := True;
          FListBox.BringToFront;
        end
        else
        begin
          self.FListBox.Visible := False;
        end;
      end;
    end
    else
    begin
      self.FListBox.Visible := False;
    end;

    FOldLocationSearch := self.FEditControl.Text;
  end;
end;

procedure TJanuaFMXAddressList.SetEditControl(const Value: TCustomEdit);
begin
  FEditControl := Value;
  if Assigned(FEditControl) then
    FEditControl.OnTyping := OnTextChange;
end;

procedure TJanuaFMXAddressList.SetJanuaGoogleGeoCoding(const Value: TJanuaGoogleGeoCoding);
begin
  FJanuaGoogleGeoCoding := Value;
end;

procedure TJanuaFMXAddressList.SetListBox(const Value: TListBox);
begin
  FListBox := Value;
end;

procedure TJanuaFMXAddressList.SetSearchAddress(const Value: String);
begin
  FSearchAddress := Value;
end;

procedure TJanuaFMXAddressList.SetSelectedAddress(const Value: string);
begin
  FSelectedAddress := Value;
end;

procedure TJanuaFMXAddressList.SetTrigger(const Value: smallint);
begin
  FTrigger := Value;
end;

end.
