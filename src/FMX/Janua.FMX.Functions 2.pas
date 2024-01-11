unit Janua.FMX.Functions;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, System.ImageList,
  System.Sensors, System.Sensors.Components,
  // PLATFORM SPECIFIC LIBRARIES
{$IFDEF MACOS}
  MacApi.CoreFoundation, MacApi.ObjectiveC,
{$ENDIF MACOS}
  // Janua
  Janua.Core.Classes, Janua.Core.Functions, Janua.Core.Health, Janua.Core.Cloud, Janua.Core.Anagraph,
  Janua.Anagraph.Types, Janua.Core.Types,
  // Repository disattivato ed assegnato a proprietà esterna al Frame ..................................
  // uClientModuleHealthREST,
  // FGX    // libreria componenti Firemonkey di
  // FGX.ProgressDialog,
  // FGX    // libreria componenti Firemonkey di
  FMX.Maps, FMX.TMSWebGMapsCommon,
  // Tms
  FMX.TMSWebGMapsWebBrowser, FMX.TMSWebGMaps, FMX.TMSWebOSMapsWebBrowser, FMX.TMSWebOSMaps, FMX.TMSButton,
  // FMX
  FMX.ImgList, FMX.ListView.Types, FMX.ListView.Appearances,
  FMX.ListView.Adapters.Base, FMX.ListView,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls, FMX.Objects, FMX.Edit,
  FMX.Controls.Presentation, FMX.Layouts, FMX.ListBox, FMX.TabControl,
  FMX.DateTimeCtrls, FMX.ScrollBox, FMX.Memo;

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

procedure AddImageToImageList(ImageList1: TImageList; aDataset: TJanuaJsonDacDataset; aField, aName: string);
Function AddMarker(FMapView: TMapView; aCoordinates: TJanuaRecordCoordinates; aTitle: string): TMapMarker;

implementation

uses
  FMX.MultiResBitmap, Data.DB;

Function AddMarker(FMapView: TMapView; aCoordinates: TJanuaRecordCoordinates; aTitle: string): TMapMarker;
var
  mc: TMapCoordinate;
  mmd: TMapMarkerDescriptor;
begin
  Assert(Assigned(FMapView), 'TJanuaFMXStandardMapList.AddMarker FMapView not set');
  mc.Latitude := aCoordinates.Latitude;
  mc.Longitude := aCoordinates.Longitude;
  mmd := TMapMarkerDescriptor.Create(mc, aTitle);
  Result := FMapView.AddMarker(mmd);
  FMapView.Location := mc;
end;

procedure AddImageToImageList(ImageList1: TImageList; aDataset: TJanuaJsonDacDataset; aField, aName: string);
var
  bm: TBitmap;
  Asource: TCustomSourceItem;
  cd, dItem: TCustomDestinationItem;
  item: TCustombitmapItem;
  Layer: TLayer;
  sizew, sizeh: integer;
  aStream: TBytesStream;
begin
  ImageList1.BeginUpdate;
  bm := TBitmap.Create;
  try
    aStream := TBytesStream.Create;
    try
      aStream.Position := 0;
      TBlobField(aDataset.FieldByName(aField)).SaveToStream(aStream);
      aStream.Position := 0;
      bm.LoadFromStream(aStream);
    finally
      aStream.Free;
    end;
    sizew := bm.Width;
    sizeh := bm.Height;
    Asource := ImageList1.Source.Add;
    Asource.Name := aName;
    item := Asource.MultiResBitmap.Add;

    if sizew <> 16 then
    begin
      item.MultiResBitmap.Width := sizew;
      item.MultiResBitmap.Height := sizeh;
    end;
    item.Bitmap.Assign(bm);
  finally
    bm.Free;
  end;

  cd := ImageList1.Destination.Add;

  Layer := cd.Layers.Add;
  Layer.Name := Asource.Name;
  if sizew <> 16 then
  begin
    Layer.SourceRect.Right := sizew;
    Layer.SourceRect.Bottom := sizeh;
  end;
  ImageList1.EndUpdate;

end;

procedure TJanuaFMXMapList.SetMap(aParent: TPanel);
begin

end;

procedure TJanuaFMXMapList.SetMapAnagraph(aParent: TPanel; aAnagraphs: TJanuaAnagraphs);
var
  aAnagraph: TJanuaAnagraphRecord;
begin
  SetMap(aParent);
  for aAnagraph in aAnagraphs.Items do
    FTMSFMXWebGMaps.Markers.Add(aAnagraph.Latitude, aAnagraph.Longitude, aAnagraph.LastName, '', False, true, False,
      False, true, 0);
end;

procedure TJanuaFMXMapList.SetTMSFMXWebGMaps(const Value: TTMSFMXWebGMaps);
begin
  FTMSFMXWebGMaps := Value;
end;

procedure TJanuaFMXMapList.SetViewListAnagraph(aList: TListView; aAnagraphs: TJanuaAnagraphs);
begin

end;

end.
