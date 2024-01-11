unit Janua.FMX.TMSMapControls;

interface

uses
  // System
  System.SysUtils, System.Classes,
  // Janua
  Janua.Core.Classes, Janua.Core.Cloud, Janua.Core.Functions, Janua.Anagraph.Types,
  // FMX
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.TabControl,
  FMX.StdCtrls, FMX.Gestures, FMX.Controls.Presentation, FMX.ListView.Types, FMX.ListView.Appearances,
  FMX.ListView.Adapters.Base, FMX.ListView, FMX.ListBox, FMX.Objects, FMX.Edit,
  // DB
  Data.DB,
  // tms software
  FMX.TMSWebGMapsWebBrowser, FMX.TMSWebGMaps;

type
  TJanuaFMXMapList = class(Janua.Core.Classes.TJanuaCoreComponent)
  private
    FTMSFMXWebGMaps: TTMSFMXWebGMaps;
    procedure SetTMSFMXWebGMaps(const Value: TTMSFMXWebGMaps);
  public
    procedure SetMap(aParent: TPanel);
    procedure SetMapAnagraph(aParent: TPanel; aAnagraphs: TJanuaAnagraphs);
    procedure SetViewListAnagraph(aList: TListView; aAnagraphs: TJanuaAnagraphs);
  published
    property TMSFMXWebGMaps: TTMSFMXWebGMaps read FTMSFMXWebGMaps write SetTMSFMXWebGMaps;
  end;

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
    TMSFMXWebGMaps: TTMSFMXWebGMaps;
    property Coordinates: TJanuaCoordinates read FCoordinates write SetCoordinates;
    property JanuaAnagraphs: TJanuaAnagraphs read FJanuaAnagraphs write SetJanuaAnagraphs;
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

procedure TJanuaFMXMapList.SetMap(aParent: TPanel);
begin

end;

procedure TJanuaFMXMapList.SetMapAnagraph(aParent: TPanel; aAnagraphs: TJanuaAnagraphs);
var
  aAnagraph: TJanuaAnagraphRecord;
begin
  SetMap(aParent);
  for aAnagraph in aAnagraphs.Items do
    FTMSFMXWebGMaps.Markers.Add(aAnagraph.Latitude, aAnagraph.Longitude, aAnagraph.LastName, '', False,
      true, False, False, true, 0);
end;

procedure TJanuaFMXMapList.SetTMSFMXWebGMaps(const Value: TTMSFMXWebGMaps);
begin
  FTMSFMXWebGMaps := Value;
end;

procedure TJanuaFMXMapList.SetViewListAnagraph(aList: TListView; aAnagraphs: TJanuaAnagraphs);
begin

end;

{ TJanuaFMXMapControl }

function TJanuaFMXMapControl.InternalActivate: boolean;
var
  a: TJanuaAnagraphRecord;
begin
  inherited;
  FdsAnagraphs := nil;
  if (FCoordinates.Latitude = 0) and (FCoordinates.Longitude = 0) then
  begin
    FCoordinates.Latitude := 45.4655236;
    FCoordinates.Longitude := 9.2080925;
  end;

  FSearchAddress := 'Via Pasquale Sottocorno, 3, Milano';
  TMSFMXWebGMaps := TTMSFMXWebGMaps.Create(self);
  TMSFMXWebGMaps.Parent := self.FParent;
  TMSFMXWebGMaps.Align := TAlignLayout.Client;
  TMSFMXWebGMaps.ApiKey := 'AIzaSyDaRjs-9ynGPpQ3Naxn_dwDcZZrg-lyC9c';
  TMSFMXWebGMaps.MapOptions.ZoomMap := 12;
  TMSFMXWebGMaps.MapOptions.DefaultLatitude := FCoordinates.Latitude;
  // self.DM.JanuaServerHealthBooking1.Coordinates.Latitude;
  TMSFMXWebGMaps.MapOptions.DefaultLongitude := FCoordinates.Longitude;
  // DM.JanuaServerHealthBooking1.Coordinates.Longitude;
  TMSFMXWebGMaps.MapPanTo(FCoordinates.Latitude, FCoordinates.Longitude);
  TMSFMXWebGMaps.Visible := true;

  TMSFMXWebGMaps.Markers.Clear;
  TMSFMXWebGMaps.Markers.Add(FCoordinates.Latitude, FCoordinates.Longitude, FSearchAddress, '', False,
    true, False, False, true, 0);

  if (self.JanuaAnagraphs.count = 0) and Assigned(FdsAnagraphs) and (FdsAnagraphs.RecordCount > 0) then
    JanuaAnagraphs.LoadFromDataset(FdsAnagraphs);

  for a in self.JanuaAnagraphs.Items do
  begin
    TMSFMXWebGMaps.Markers.Add(a.Latitude, a.Longitude, a.LastName, '', False, true, False,
      False, true, 0);
  end;

  begin
    if Assigned(FdsAnagraphs) and (FdsAnagraphs.RecordCount > 0) then
    begin
      FdsAnagraphs.First;
      while not FdsAnagraphs.Eof do
      begin
        TMSFMXWebGMaps.Markers.Add(FdsAnagraphs.FieldByName('latitude').AsFloat,
          FdsAnagraphs.FieldByName('longitude').AsFloat, FdsAnagraphs.FieldByName('an_last_name')
          .AsWideString, '', False, true, False, False, true, 0);
        FdsAnagraphs.Next;
      end;
      FdsAnagraphs.First;
    end;
  end;

  self.FActive := true;
  Result := self.FActive;

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
  if (FListBox.ItemIndex <> -1) and (FListBox.Items.count > 0) then
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
            FListBox.Position.Y := TControl(FEditControl.Parent).Position.Y +
              self.FEditControl.Position.Y + FEditControl.Height + 2
          else
            FListBox.Position.Y := self.FEditControl.Position.Y + FEditControl.Height + 2;

          FListBox.Height := 300;
          FListBox.Items.Assign(FJanuaGoogleGeoCoding.AddressText);
          FListBox.Visible := true;
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
