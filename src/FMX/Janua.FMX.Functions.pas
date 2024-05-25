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
  Janua.Core.Classes, Janua.Core.Functions, Janua.Core.Health, Janua.Core.Cloud,
  Janua.Anagraph.Types, Janua.Core.Types,
  // Repository disattivato ed assegnato a proprietà esterna al Frame ..................................
  // uClientModuleHealthREST,
  // FGX    // libreria componenti Firemonkey di
  // FGX.ProgressDialog,
  // FGX    // libreria componenti Firemonkey di
  FMX.Maps, FMX.Surfaces,
  // FMX
  FMX.ImgList, FMX.ListView.Types, FMX.ListView.Appearances,
  FMX.ListView.Adapters.Base, FMX.ListView,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls, FMX.Objects, FMX.Edit,
  FMX.Controls.Presentation, FMX.Layouts, FMX.ListBox, FMX.TabControl,
  FMX.DateTimeCtrls, FMX.ScrollBox, FMX.Memo;

procedure AddImageToImageList(ImageList1: TImageList; bm: TBitmap; aName: string); overload;
procedure AddImageToImageList(ImageList1: TImageList; aField, aName: string); overload;
procedure AddBlobToImageList(ImageList1: TImageList; aBlob: TJanuaBlob; aName: string);
Function AddMarker(FMapView: TMapView; aCoordinates: TJanuaRecordCoordinates; aTitle: string): TMapMarker;
Function Encode64Bitmap(aBitmap: TBitmap): string;
Procedure Decode64Bitmap(var aBitmap: TBitmap; const S: string);
procedure BlobToBitmap(var aBitmap: TBitmap; aBlob: TJanuaBlob);
procedure MapMapPanTo(FMapView: TMapView; aCoordinates: TJanuaRecordCoordinates; aZoom: single = 15.0);

implementation

uses
{$IFDEF ANDROID}
  Androidapi.JNI.GraphicsContentViewText,
  Androidapi.Helpers,
  Androidapi.JNI.JavaTypes,
  Androidapi.JNI.Net,
{$ENDIF}
  IdCoderMIME, FMX.MultiResBitmap, Data.DB, Spring;

procedure OpenPDFFile(const aFileName: string);
{$IFDEF ANDROID}
var
  Intent: JIntent;
  URI: Jnet_Uri;
{$ENDIF}
begin
{$IFDEF ANDROID}
  URI := TJnet_Uri.JavaClass.parse(StringToJString('file:///' + aFileName));
  Intent := TJIntent.Create;
  Intent.setAction(TJIntent.JavaClass.ACTION_VIEW);
  Intent.setDataAndType(URI, StringToJString('application/pdf'));
  TAndroidHelper.Activity.startActivity(Intent);
{$ENDIF}
end;

procedure PrintPDF(const PDFFilePath: string);
{$IFDEF ANDROID}
var
  Intent: JIntent;
  PDFFile: JFile;
  PDFUri: Jnet_Uri;
{$ENDIF}
begin
{$IFDEF ANDROID}
  PDFFile := TJFile.JavaClass.init(StringToJString(PDFFilePath));
  PDFUri := TJnet_Uri.JavaClass.fromFile(PDFFile);

  Intent := TJIntent.JavaClass.init(TJIntent.JavaClass.ACTION_VIEW);
  Intent.setDataAndType(PDFUri, StringToJString('application/pdf'));
  Intent.setFlags(TJIntent.JavaClass.FLAG_GRANT_READ_URI_PERMISSION);
  SharedActivity.startActivity(Intent);
{$ENDIF ANDROID}
end;

procedure BlobToBitmap(var aBitmap: TBitmap; aBlob: TJanuaBlob);
var
  Strm: TMemoryStream;
begin
  Strm := TMemoryStream.Create;
  try
    aBlob.SaveToStream(Strm);
    Strm.Position := 0;
    aBitmap.LoadFromStream(Strm);
  finally
    Strm.Free;
  end
end;

Function Encode64Bitmap(aBitmap: TBitmap): string;
var
  Strm: TMemoryStream;
begin
  Strm := TMemoryStream.Create;
  try
    aBitmap.SaveToStream(Strm);
    Strm.Position := 0;
    Result := TIdEncoderMIME.EncodeStream(Strm);
  finally
    Strm.Free;
  end;
end;

Procedure Decode64Bitmap(var aBitmap: TBitmap; const S: string);
var
  Strm: TMemoryStream;
begin
  Strm := TMemoryStream.Create;
  try
    TIdDecoderMIME.DecodeStream(S, Strm);
    Strm.Position := 0;
    aBitmap.LoadFromStream(Strm);
  finally
    Strm.Free;
  end;
end;

procedure MapMapPanTo(FMapView: TMapView; aCoordinates: TJanuaRecordCoordinates; aZoom: single = 15.0);
var
  mapCenter, mc: TMapCoordinate;
begin
  if FMapView.Zoom = 0 then
    FMapView.Zoom := aZoom;

  mapCenter := TMapCoordinate.Create(aCoordinates.Latitude, aCoordinates.Longitude);
  FMapView.Location := mapCenter;
end;

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

procedure AddImageToImageList(ImageList1: TImageList; bm: TBitmap; aName: string);
var
  Asource: TCustomSourceItem;
  cd, dItem: TCustomDestinationItem;
  item: TCustombitmapItem;
  Layer: TLayer;
  sizew, sizeh: integer;
begin
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

  cd := ImageList1.Destination.Add;

  Layer := cd.Layers.Add;
  Layer.Name := Asource.Name;
  if sizew <> 16 then
  begin
    Layer.SourceRect.Right := sizew;
    Layer.SourceRect.Bottom := sizeh;
  end;
end;

procedure AddImageToImageList(ImageList1: TImageList; aField, aName: string);
// aDataset: TJanuaJsonDacDataset; );
var
  bm: TBitmap;
begin
  bm := TBitmap.Create;
  try
    // S := aDataset.FieldByName(aField).AsString;
    if aField <> '' then
      Decode64Bitmap(bm, aField);
    AddImageToImageList(ImageList1, bm, aName);
  finally
    bm.Free;
  end;
end;

procedure AddBlobToImageList(ImageList1: TImageList; aBlob: TJanuaBlob; aName: string);
var
  bm: TBitmap;
begin
  Spring.Guard.CheckNotNull(aBlob, 'AddBlobToImageList Blob is Null');
  Spring.Guard.CheckNotNull(ImageList1, 'AddBlobToImageList ImageList1 is Null');
  bm := TBitmap.Create;
  try
    // S := aDataset.FieldByName(aField).AsString;
    BlobToBitmap(bm, aBlob);
    AddImageToImageList(ImageList1, bm, aName);
  finally
    bm.Free;
  end;
end;

end.
