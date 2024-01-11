// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCOpenLayers.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncopenlayersHPP
#define Fmx_TmsfncopenlayersHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <System.Types.hpp>
#include <FMX.Forms.hpp>
#include <System.Generics.Collections.hpp>
#include <FMX.TMSFNCWebBrowser.hpp>
#include <FMX.TMSFNCMapsCommonTypes.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.TMSFNCGraphicsTypes.hpp>
#include <FMX.TMSFNCMaps.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>
#include <System.UITypes.hpp>
#include <FMX.TMSFNCCustomControl.hpp>
#include <FMX.Controls.hpp>
#include <FMX.Types.hpp>
#include <FMX.TMSFNCRouteCalculator.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncopenlayers
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCOpenLayersLabel;
class DELPHICLASS TTMSFNCOpenLayersPolygon;
class DELPHICLASS TTMSFNCOpenLayersPolygons;
class DELPHICLASS TTMSFNCOpenLayersPolyline;
class DELPHICLASS TTMSFNCOpenLayersPolylines;
class DELPHICLASS TTMSFNCOpenLayersCircle;
class DELPHICLASS TTMSFNCOpenLayersCircles;
class DELPHICLASS TTMSFNCOpenLayersRectangle;
class DELPHICLASS TTMSFNCOpenLayersRectangles;
class DELPHICLASS TTMSFNCOpenLayersMarker;
class DELPHICLASS TTMSFNCOpenLayersMarkers;
class DELPHICLASS TTMSFNCOpenLayersMarkersList;
class DELPHICLASS TTMSFNCOpenLayersCluster;
class DELPHICLASS TTMSFNCOpenLayersClusters;
class DELPHICLASS TTMSFNCOpenLayersTileLayerParams;
class DELPHICLASS TTMSFNCOpenLayersTileLayer;
class DELPHICLASS TTMSFNCOpenLayersTileLayers;
class DELPHICLASS TTMSFNCOpenLayersOptions;
class DELPHICLASS TTMSFNCCustomOpenLayers;
class DELPHICLASS TTMSFNCOpenLayers;
//-- type declarations -------------------------------------------------------
_DECLARE_METACLASS(System::TMetaClass, TTMSFNCOpenLayersLabelClass);

class PASCALIMPLEMENTATION TTMSFNCOpenLayersLabel : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	System::Classes::TNotifyEvent FOnChange;
	System::UnicodeString FText;
	double FOffsetX;
	double FOffsetY;
	int FFontSize;
	System::Uitypes::TAlphaColor FFontColor;
	System::Uitypes::TAlphaColor FBorderColor;
	int FPadding;
	System::Uitypes::TAlphaColor FBackgroundColor;
	void __fastcall SetBackgroundColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetBorderColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetFontColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetFontSize(const int Value);
	void __fastcall SetOffsetX(const double Value);
	void __fastcall SetOffsetY(const double Value);
	void __fastcall SetPadding(const int Value);
	void __fastcall SetText(const System::UnicodeString Value);
	
protected:
	void __fastcall Changed();
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual TTMSFNCOpenLayersLabel();
	__property System::Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
	
__published:
	__property System::UnicodeString Text = {read=FText, write=SetText};
	__property double OffsetX = {read=FOffsetX, write=SetOffsetX};
	__property double OffsetY = {read=FOffsetY, write=SetOffsetY};
	__property System::Uitypes::TAlphaColor FontColor = {read=FFontColor, write=SetFontColor, default=12};
	__property int FontSize = {read=FFontSize, write=SetFontSize, nodefault};
	__property System::Uitypes::TAlphaColor BackgroundColor = {read=FBackgroundColor, write=SetBackgroundColor, nodefault};
	__property System::Uitypes::TAlphaColor BorderColor = {read=FBorderColor, write=SetBorderColor, nodefault};
	__property int Padding = {read=FPadding, write=SetPadding, default=3};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTMSFNCOpenLayersLabel() { }
	
};


#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCOpenLayersPolygon : public Fmx::Tmsfncmaps::TTMSFNCMapsPolygon
{
	typedef Fmx::Tmsfncmaps::TTMSFNCMapsPolygon inherited;
	
private:
	TTMSFNCOpenLayersLabel* FLabel;
	bool FDraggable;
	void __fastcall SetLabel(TTMSFNCOpenLayersLabel* const Value);
	void __fastcall SetDraggable(const bool Value);
	
public:
	__fastcall virtual TTMSFNCOpenLayersPolygon(System::Classes::TCollection* Collection);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual ~TTMSFNCOpenLayersPolygon();
	void __fastcall LabelChanged(System::TObject* Sender);
	virtual Fmx::Tmsfncmaps::TTMSFNCMapsPolyElementHole* __fastcall AddHole(Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRecArray ACoordinates);
	
__published:
	__property bool Draggable = {read=FDraggable, write=SetDraggable, default=0};
	__property TTMSFNCOpenLayersLabel* Label = {read=FLabel, write=SetLabel};
	__property Holes;
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCOpenLayersPolygons : public Fmx::Tmsfncmaps::TTMSFNCMapsPolygons
{
	typedef Fmx::Tmsfncmaps::TTMSFNCMapsPolygons inherited;
	
public:
	TTMSFNCOpenLayersPolygon* operator[](int Index) { return this->Items[Index]; }
	
private:
	HIDESBASE TTMSFNCOpenLayersPolygon* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCOpenLayersPolygon* const Value);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall CreateItemClass();
	
public:
	__property TTMSFNCOpenLayersPolygon* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	HIDESBASE TTMSFNCOpenLayersPolygon* __fastcall Add();
	HIDESBASE TTMSFNCOpenLayersPolygon* __fastcall Insert(int Index);
public:
	/* TTMSFNCMapsPolyElements.Create */ inline __fastcall virtual TTMSFNCOpenLayersPolygons(Fmx::Tmsfncmaps::TTMSFNCCustomMaps* AOwner) : Fmx::Tmsfncmaps::TTMSFNCMapsPolygons(AOwner) { }
	
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCOpenLayersPolygons() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCOpenLayersPolyline : public Fmx::Tmsfncmaps::TTMSFNCMapsPolyline
{
	typedef Fmx::Tmsfncmaps::TTMSFNCMapsPolyline inherited;
	
private:
	TTMSFNCOpenLayersLabel* FLabel;
	bool FDraggable;
	void __fastcall SetLabel(TTMSFNCOpenLayersLabel* const Value);
	void __fastcall SetDraggable(const bool Value);
	
public:
	__fastcall virtual TTMSFNCOpenLayersPolyline(System::Classes::TCollection* Collection);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual ~TTMSFNCOpenLayersPolyline();
	void __fastcall LabelChanged(System::TObject* Sender);
	
__published:
	__property TTMSFNCOpenLayersLabel* Label = {read=FLabel, write=SetLabel};
	__property bool Draggable = {read=FDraggable, write=SetDraggable, default=0};
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCOpenLayersPolylines : public Fmx::Tmsfncmaps::TTMSFNCMapsPolylines
{
	typedef Fmx::Tmsfncmaps::TTMSFNCMapsPolylines inherited;
	
public:
	TTMSFNCOpenLayersPolyline* operator[](int Index) { return this->Items[Index]; }
	
private:
	HIDESBASE TTMSFNCOpenLayersPolyline* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCOpenLayersPolyline* const Value);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall CreateItemClass();
	
public:
	__property TTMSFNCOpenLayersPolyline* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	HIDESBASE TTMSFNCOpenLayersPolyline* __fastcall Add();
	HIDESBASE TTMSFNCOpenLayersPolyline* __fastcall Insert(int Index);
public:
	/* TTMSFNCMapsPolyElements.Create */ inline __fastcall virtual TTMSFNCOpenLayersPolylines(Fmx::Tmsfncmaps::TTMSFNCCustomMaps* AOwner) : Fmx::Tmsfncmaps::TTMSFNCMapsPolylines(AOwner) { }
	
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCOpenLayersPolylines() { }
	
};

#pragma pack(pop)

class PASCALIMPLEMENTATION TTMSFNCOpenLayersCircle : public Fmx::Tmsfncmaps::TTMSFNCMapsCircle
{
	typedef Fmx::Tmsfncmaps::TTMSFNCMapsCircle inherited;
	
private:
	bool FDraggable;
	void __fastcall SetDraggable(const bool Value);
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual TTMSFNCOpenLayersCircle(System::Classes::TCollection* Collection);
	__fastcall virtual ~TTMSFNCOpenLayersCircle();
	
__published:
	__property bool Draggable = {read=FDraggable, write=SetDraggable, default=0};
};


#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCOpenLayersCircles : public Fmx::Tmsfncmaps::TTMSFNCMapsCircles
{
	typedef Fmx::Tmsfncmaps::TTMSFNCMapsCircles inherited;
	
public:
	TTMSFNCOpenLayersCircle* operator[](int Index) { return this->Items[Index]; }
	
private:
	HIDESBASE TTMSFNCOpenLayersCircle* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCOpenLayersCircle* const Value);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall CreateItemClass();
	
public:
	__property TTMSFNCOpenLayersCircle* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	HIDESBASE TTMSFNCOpenLayersCircle* __fastcall Add();
	HIDESBASE TTMSFNCOpenLayersCircle* __fastcall Insert(int Index);
public:
	/* TTMSFNCMapsPolyElements.Create */ inline __fastcall virtual TTMSFNCOpenLayersCircles(Fmx::Tmsfncmaps::TTMSFNCCustomMaps* AOwner) : Fmx::Tmsfncmaps::TTMSFNCMapsCircles(AOwner) { }
	
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCOpenLayersCircles() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCOpenLayersRectangle : public Fmx::Tmsfncmaps::TTMSFNCMapsRectangle
{
	typedef Fmx::Tmsfncmaps::TTMSFNCMapsRectangle inherited;
	
private:
	bool FDraggable;
	void __fastcall SetDraggable(const bool Value);
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual TTMSFNCOpenLayersRectangle(System::Classes::TCollection* Collection);
	__fastcall virtual ~TTMSFNCOpenLayersRectangle();
	
__published:
	__property bool Draggable = {read=FDraggable, write=SetDraggable, default=0};
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCOpenLayersRectangles : public Fmx::Tmsfncmaps::TTMSFNCMapsRectangles
{
	typedef Fmx::Tmsfncmaps::TTMSFNCMapsRectangles inherited;
	
public:
	TTMSFNCOpenLayersRectangle* operator[](int Index) { return this->Items[Index]; }
	
private:
	HIDESBASE TTMSFNCOpenLayersRectangle* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCOpenLayersRectangle* const Value);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall CreateItemClass();
	
public:
	__property TTMSFNCOpenLayersRectangle* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	HIDESBASE TTMSFNCOpenLayersRectangle* __fastcall Add();
	HIDESBASE TTMSFNCOpenLayersRectangle* __fastcall Insert(int Index);
public:
	/* TTMSFNCMapsPolyElements.Create */ inline __fastcall virtual TTMSFNCOpenLayersRectangles(Fmx::Tmsfncmaps::TTMSFNCCustomMaps* AOwner) : Fmx::Tmsfncmaps::TTMSFNCMapsRectangles(AOwner) { }
	
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCOpenLayersRectangles() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCOpenLayersMarker : public Fmx::Tmsfncmaps::TTMSFNCMapsMarker
{
	typedef Fmx::Tmsfncmaps::TTMSFNCMapsMarker inherited;
	
private:
	bool FDraggable;
	TTMSFNCOpenLayersCluster* FCluster;
	void __fastcall SetDraggable(const bool Value);
	
public:
	__fastcall virtual TTMSFNCOpenLayersMarker(System::Classes::TCollection* Collection);
	__fastcall virtual ~TTMSFNCOpenLayersMarker();
	__property TTMSFNCOpenLayersCluster* Cluster = {read=FCluster, write=FCluster};
	
__published:
	__property bool Draggable = {read=FDraggable, write=SetDraggable, default=0};
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCOpenLayersMarkers : public Fmx::Tmsfncmaps::TTMSFNCMapsMarkers
{
	typedef Fmx::Tmsfncmaps::TTMSFNCMapsMarkers inherited;
	
public:
	TTMSFNCOpenLayersMarker* operator[](int Index) { return this->Items[Index]; }
	
private:
	HIDESBASE TTMSFNCOpenLayersMarker* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCOpenLayersMarker* const Value);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall CreateItemClass();
	
public:
	__property TTMSFNCOpenLayersMarker* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	HIDESBASE TTMSFNCOpenLayersMarker* __fastcall Add();
	HIDESBASE TTMSFNCOpenLayersMarker* __fastcall Insert(int Index);
public:
	/* TTMSFNCMapsMarkers.Create */ inline __fastcall virtual TTMSFNCOpenLayersMarkers(Fmx::Tmsfncmaps::TTMSFNCCustomMaps* AOwner) : Fmx::Tmsfncmaps::TTMSFNCMapsMarkers(AOwner) { }
	
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCOpenLayersMarkers() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCOpenLayersMarkersList : public System::Generics::Collections::TList__1<TTMSFNCOpenLayersMarker*>
{
	typedef System::Generics::Collections::TList__1<TTMSFNCOpenLayersMarker*> inherited;
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCOpenLayers_TTMSFNCOpenLayersMarker>.Create */ inline __fastcall TTMSFNCOpenLayersMarkersList()/* overload */ : System::Generics::Collections::TList__1<TTMSFNCOpenLayersMarker*>() { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCOpenLayers_TTMSFNCOpenLayersMarker>.Create */ inline __fastcall TTMSFNCOpenLayersMarkersList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCOpenLayersMarker*> > AComparer)/* overload */ : System::Generics::Collections::TList__1<TTMSFNCOpenLayersMarker*>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCOpenLayers_TTMSFNCOpenLayersMarker>.Create */ inline __fastcall TTMSFNCOpenLayersMarkersList(System::Generics::Collections::TEnumerable__1<TTMSFNCOpenLayersMarker*>* const Collection)/* overload */ : System::Generics::Collections::TList__1<TTMSFNCOpenLayersMarker*>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCOpenLayers_TTMSFNCOpenLayersMarker>.Create */ inline __fastcall TTMSFNCOpenLayersMarkersList(TTMSFNCOpenLayersMarker* const *Values, const int Values_High)/* overload */ : System::Generics::Collections::TList__1<TTMSFNCOpenLayersMarker*>(Values, Values_High) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCOpenLayers_TTMSFNCOpenLayersMarker>.Destroy */ inline __fastcall virtual ~TTMSFNCOpenLayersMarkersList() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCOpenLayersCluster : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	bool FReload;
	TTMSFNCOpenLayersMarkersList* FMarkers;
	System::UnicodeString FID;
	Fmx::Tmsfncmaps::TTMSFNCCustomMaps* FOwner;
	bool FDataBoolean;
	System::UnicodeString FDataString;
	System::TObject* FDataObject;
	NativeInt FDataInteger;
	void *FDataPointer;
	bool FRecreate;
	System::UnicodeString __fastcall GetID();
	TTMSFNCOpenLayersMarkersList* __fastcall GetMarkers();
	
protected:
	virtual void __fastcall UpdateCluster();
	
public:
	__fastcall virtual TTMSFNCOpenLayersCluster(System::Classes::TCollection* Collection);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual ~TTMSFNCOpenLayersCluster();
	__property void * DataPointer = {read=FDataPointer, write=FDataPointer};
	__property bool DataBoolean = {read=FDataBoolean, write=FDataBoolean, nodefault};
	__property System::TObject* DataObject = {read=FDataObject, write=FDataObject};
	__property System::UnicodeString DataString = {read=FDataString, write=FDataString};
	__property NativeInt DataInteger = {read=FDataInteger, write=FDataInteger, nodefault};
	__property TTMSFNCOpenLayersMarkersList* Markers = {read=GetMarkers};
	__property bool Recreate = {read=FRecreate, write=FRecreate, nodefault};
	
__published:
	__property System::UnicodeString ID = {read=GetID};
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCOpenLayersClusters : public Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCOpenLayersCluster*>
{
	typedef Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCOpenLayersCluster*> inherited;
	
public:
	TTMSFNCOpenLayersCluster* operator[](int Index) { return this->Items[Index]; }
	
private:
	Fmx::Tmsfncmaps::TTMSFNCCustomMaps* FOwner;
	HIDESBASE TTMSFNCOpenLayersCluster* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCOpenLayersCluster* const Value);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall CreateItemClass();
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	
public:
	__fastcall virtual TTMSFNCOpenLayersClusters(Fmx::Tmsfncmaps::TTMSFNCCustomMaps* AOwner);
	__property TTMSFNCOpenLayersCluster* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	HIDESBASE virtual void __fastcall Clear();
	virtual void __fastcall Recreate();
	HIDESBASE TTMSFNCOpenLayersCluster* __fastcall Add();
	HIDESBASE TTMSFNCOpenLayersCluster* __fastcall Insert(int Index);
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCOpenLayersClusters() { }
	
};

#pragma pack(pop)

enum DECLSPEC_DENUM TTMSFNCOpenLayersTileLayerSource : unsigned char { tlsXYZ, tlsWMS };

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCOpenLayersTileLayerParams : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	System::Classes::TNotifyEvent FOnChange;
	System::UnicodeString FLayers;
	void __fastcall SetLayers(const System::UnicodeString Value);
	
protected:
	void __fastcall Changed();
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual TTMSFNCOpenLayersTileLayerParams();
	__property System::Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
	
__published:
	__property System::UnicodeString Layers = {read=FLayers, write=SetLayers};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTMSFNCOpenLayersTileLayerParams() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCOpenLayersTileLayer : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	bool FReload;
	System::UnicodeString FID;
	Fmx::Tmsfncmaps::TTMSFNCCustomMaps* FOwner;
	bool FDataBoolean;
	System::UnicodeString FDataString;
	System::TObject* FDataObject;
	NativeInt FDataInteger;
	void *FDataPointer;
	bool FRecreate;
	System::UnicodeString FURL;
	float FOpacity;
	TTMSFNCOpenLayersTileLayerSource FSource;
	TTMSFNCOpenLayersTileLayerParams* FParams;
	System::UnicodeString __fastcall GetID();
	bool __fastcall IsURLStored();
	bool __fastcall IsOpacityStored();
	void __fastcall SetOpacity(const float Value);
	void __fastcall SetURL(const System::UnicodeString Value);
	void __fastcall SetSource(const TTMSFNCOpenLayersTileLayerSource Value);
	void __fastcall SetParams(TTMSFNCOpenLayersTileLayerParams* const Value);
	
protected:
	void __fastcall DoParamsChanged(System::TObject* Sender);
	virtual void __fastcall UpdateTileLayer();
	
public:
	__fastcall virtual TTMSFNCOpenLayersTileLayer(System::Classes::TCollection* Collection);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual ~TTMSFNCOpenLayersTileLayer();
	__property void * DataPointer = {read=FDataPointer, write=FDataPointer};
	__property bool DataBoolean = {read=FDataBoolean, write=FDataBoolean, nodefault};
	__property System::TObject* DataObject = {read=FDataObject, write=FDataObject};
	__property System::UnicodeString DataString = {read=FDataString, write=FDataString};
	__property NativeInt DataInteger = {read=FDataInteger, write=FDataInteger, nodefault};
	__property bool Recreate = {read=FRecreate, write=FRecreate, nodefault};
	
__published:
	__property System::UnicodeString ID = {read=GetID};
	__property System::UnicodeString URL = {read=FURL, write=SetURL, stored=IsURLStored};
	__property float Opacity = {read=FOpacity, write=SetOpacity, stored=IsOpacityStored};
	__property TTMSFNCOpenLayersTileLayerSource Source = {read=FSource, write=SetSource, default=0};
	__property TTMSFNCOpenLayersTileLayerParams* Params = {read=FParams, write=SetParams};
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCOpenLayersTileLayers : public Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCOpenLayersTileLayer*>
{
	typedef Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCOpenLayersTileLayer*> inherited;
	
public:
	TTMSFNCOpenLayersTileLayer* operator[](int Index) { return this->Items[Index]; }
	
private:
	Fmx::Tmsfncmaps::TTMSFNCCustomMaps* FOwner;
	HIDESBASE TTMSFNCOpenLayersTileLayer* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCOpenLayersTileLayer* const Value);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall CreateItemClass();
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	
public:
	__fastcall virtual TTMSFNCOpenLayersTileLayers(Fmx::Tmsfncmaps::TTMSFNCCustomMaps* AOwner);
	__property TTMSFNCOpenLayersTileLayer* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	HIDESBASE virtual void __fastcall Clear();
	virtual void __fastcall Recreate();
	HIDESBASE TTMSFNCOpenLayersTileLayer* __fastcall Add();
	HIDESBASE TTMSFNCOpenLayersTileLayer* __fastcall Insert(int Index);
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCOpenLayersTileLayers() { }
	
};

#pragma pack(pop)

class PASCALIMPLEMENTATION TTMSFNCOpenLayersOptions : public Fmx::Tmsfncmaps::TTMSFNCMapsOptions
{
	typedef Fmx::Tmsfncmaps::TTMSFNCMapsOptions inherited;
	
private:
	System::UnicodeString FTileServer;
	void __fastcall SetTileServer(const System::UnicodeString Value);
	
public:
	__fastcall virtual TTMSFNCOpenLayersOptions();
	
__published:
	__property System::UnicodeString TileServer = {read=FTileServer, write=SetTileServer};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTMSFNCOpenLayersOptions() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCustomOpenLayers : public Fmx::Tmsfncmaps::TTMSFNCCustomMaps
{
	typedef Fmx::Tmsfncmaps::TTMSFNCCustomMaps inherited;
	
private:
	TTMSFNCOpenLayersTileLayers* FTileLayers;
	Fmx::Tmsfncmaps::TTMSFNCMapsBaseEvent FOnPolyElementDragEnd;
	Fmx::Tmsfncmaps::TTMSFNCMapsBaseEvent FOnMarkerDragEnd;
	System::Classes::TNotifyEvent FOnMapRenderComplete;
	TTMSFNCOpenLayersClusters* FClusters;
	Fmx::Tmsfncmaps::TTMSFNCMapsBaseEvent FOnClusterClick;
	TTMSFNCOpenLayersOptions* __fastcall GetOptions();
	HIDESBASE void __fastcall SetOptions(TTMSFNCOpenLayersOptions* const Value);
	void __fastcall SetTileLayers(TTMSFNCOpenLayersTileLayers* const Value);
	HIDESBASE void __fastcall SetPolygons(TTMSFNCOpenLayersPolygons* const Value);
	TTMSFNCOpenLayersPolygons* __fastcall GetPolygons();
	TTMSFNCOpenLayersPolylines* __fastcall GetPolylines();
	HIDESBASE void __fastcall SetPolylines(TTMSFNCOpenLayersPolylines* const Value);
	TTMSFNCOpenLayersMarkers* __fastcall GetMarkers();
	HIDESBASE void __fastcall SetMarkers(TTMSFNCOpenLayersMarkers* const Value);
	void __fastcall SetClusters(TTMSFNCOpenLayersClusters* const Value);
	
protected:
	virtual System::UnicodeString __fastcall GetDocURL();
	virtual int __fastcall GetVersionNr();
	virtual System::UnicodeString __fastcall GetAddOrUpdateTileLayerFunction();
	virtual System::UnicodeString __fastcall GetDeleteTileLayerFunction();
	virtual Fmx::Tmsfncmaps::TTMSFNCMapsOptionsClass __fastcall GetOptionsClass();
	virtual System::UnicodeString __fastcall GetCustomFunctions();
	virtual System::UnicodeString __fastcall GetCustomGlobalVariables();
	virtual System::UnicodeString __fastcall GetCustomOptions();
	virtual System::UnicodeString __fastcall GetAddCustomObjects();
	virtual System::UnicodeString __fastcall GetCustomMap();
	virtual Fmx::Tmsfncmaps::TTMSFNCMapsMarkersClass __fastcall GetMarkersClass();
	virtual Fmx::Tmsfncmaps::TTMSFNCMapsPolylinesClass __fastcall GetPolylinesClass();
	virtual Fmx::Tmsfncmaps::TTMSFNCMapsPolygonsClass __fastcall GetPolygonsClass();
	virtual Fmx::Tmsfncmaps::TTMSFNCMapsRectanglesClass __fastcall GetRectanglesClass();
	virtual Fmx::Tmsfncmaps::TTMSFNCMapsCirclesClass __fastcall GetCirclesClass();
	virtual System::UnicodeString __fastcall GetAddOrUpdateClusterFunction();
	virtual System::UnicodeString __fastcall GetDeleteClusterFunction();
	virtual void __fastcall DoPolyElementDragEnd(Fmx::Tmsfncmaps::TTMSFNCMapsEventData* AEventData);
	virtual void __fastcall DoMarkerDragEnd(Fmx::Tmsfncmaps::TTMSFNCMapsEventData* AEventData);
	virtual void __fastcall DoMapRenderComplete();
	virtual void __fastcall DoClusterClick(Fmx::Tmsfncmaps::TTMSFNCMapsEventData* AEventData);
	virtual void __fastcall CallCustomEvent(Fmx::Tmsfncmaps::TTMSFNCMapsEventData* AEventData);
	virtual void __fastcall UpdateTileLayers();
	virtual void __fastcall DoUpdateTileLayers(const System::UnicodeString AValue);
	virtual void __fastcall UpdateClusters();
	virtual void __fastcall DoUpdateClusters(const System::UnicodeString AValue);
	__property TTMSFNCOpenLayersOptions* Options = {read=GetOptions, write=SetOptions};
	__property TTMSFNCOpenLayersClusters* Clusters = {read=FClusters, write=SetClusters};
	__property TTMSFNCOpenLayersTileLayers* TileLayers = {read=FTileLayers, write=SetTileLayers};
	__property TTMSFNCOpenLayersMarkers* Markers = {read=GetMarkers, write=SetMarkers};
	__property TTMSFNCOpenLayersPolylines* Polylines = {read=GetPolylines, write=SetPolylines};
	__property TTMSFNCOpenLayersPolygons* Polygons = {read=GetPolygons, write=SetPolygons};
	__property Fmx::Tmsfncmaps::TTMSFNCMapsBaseEvent OnPolyElementDragEnd = {read=FOnPolyElementDragEnd, write=FOnPolyElementDragEnd};
	__property Fmx::Tmsfncmaps::TTMSFNCMapsBaseEvent OnMarkerDragEnd = {read=FOnMarkerDragEnd, write=FOnMarkerDragEnd};
	__property System::Classes::TNotifyEvent OnMapRenderComplete = {read=FOnMapRenderComplete, write=FOnMapRenderComplete};
	__property Fmx::Tmsfncmaps::TTMSFNCMapsBaseEvent OnClusterClick = {read=FOnClusterClick, write=FOnClusterClick};
	
public:
	__fastcall virtual TTMSFNCCustomOpenLayers(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCCustomOpenLayers();
	virtual void __fastcall EndUpdate();
	HIDESBASE virtual TTMSFNCOpenLayersMarker* __fastcall AddMarker(const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec &ACoordinate, System::UnicodeString ATitle = System::UnicodeString(), System::UnicodeString AIconURL = System::UnicodeString())/* overload */;
	HIDESBASE virtual TTMSFNCOpenLayersMarker* __fastcall AddMarker(double ALatitude, double ALongitude, System::UnicodeString ATitle = System::UnicodeString(), System::UnicodeString AIconURL = System::UnicodeString())/* overload */;
	HIDESBASE virtual TTMSFNCOpenLayersPolyline* __fastcall AddPolyline(Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRecArray ACoordinates, bool AClose = false);
	HIDESBASE virtual TTMSFNCOpenLayersPolygon* __fastcall AddPolygon(Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRecArray ACoordinates, bool AClose = false);
	HIDESBASE virtual TTMSFNCOpenLayersCircle* __fastcall AddCircle(const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec &ACenter, double ARadius = 1.000000E+04);
	HIDESBASE virtual TTMSFNCOpenLayersRectangle* __fastcall AddRectangle(const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsBoundsRec &ABounds);
	TTMSFNCOpenLayersTileLayer* __fastcall AddTileLayer(System::UnicodeString AURL, float AOpacity = 1.000000E+00f);
	virtual void __fastcall Clear();
	void __fastcall ClearTileLayers();
	void __fastcall ClearClusters();
};


class PASCALIMPLEMENTATION TTMSFNCOpenLayers : public TTMSFNCCustomOpenLayers
{
	typedef TTMSFNCCustomOpenLayers inherited;
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	
public:
	virtual void __fastcall Navigate()/* overload */;
	virtual void __fastcall Navigate(const System::UnicodeString AURL)/* overload */;
	virtual void __fastcall ExecuteJavaScript(System::UnicodeString AScript, Fmx::Tmsfncwebbrowser::_di_TTMSFNCWebBrowserJavaScriptCompleteEvent ACompleteEvent = Fmx::Tmsfncwebbrowser::_di_TTMSFNCWebBrowserJavaScriptCompleteEvent(), bool AImmediate = false);
	virtual System::UnicodeString __fastcall ExecuteJavaScriptSync(System::UnicodeString AScript);
	virtual void __fastcall LoadHTML(System::UnicodeString AHTML);
	virtual void __fastcall LoadFile(System::UnicodeString AFile);
	virtual void __fastcall Initialize();
	virtual void __fastcall DeInitialize();
	virtual void __fastcall GoForward();
	virtual void __fastcall GoBack();
	virtual void __fastcall Reload();
	virtual void __fastcall StopLoading();
	virtual void __fastcall AddBridge(System::UnicodeString ABridgeName, System::TObject* ABridgeObject);
	virtual void __fastcall RemoveBridge(System::UnicodeString ABridgeName);
	virtual void __fastcall CaptureScreenShot();
	virtual System::UnicodeString __fastcall GetBridgeCommunicationLayer(System::UnicodeString ABridgeName);
	virtual void * __fastcall NativeEnvironment();
	virtual void * __fastcall NativeBrowser();
	virtual bool __fastcall IsFMXBrowser();
	virtual bool __fastcall CanGoBack();
	virtual bool __fastcall CanGoForward();
	virtual void * __fastcall NativeDialog();
	__property OnCloseForm;
	__property EnableContextMenu = {default=1};
	__property EnableShowDebugConsole = {default=1};
	__property EnableAcceleratorKeys = {default=1};
	__property CacheFolder = {default=0};
	__property CacheFolderName = {default=0};
	__property AutoClearCache;
	virtual void __fastcall ClearCache();
	virtual void __fastcall ShowDebugConsole();
	__property MapsInstance;
	__property MapsProperties;
	
__published:
	__property OnCustomizeLocalAccessFileName;
	__property OnCaptureScreenShot;
	__property OnCustomizeCSS;
	__property OnCustomizeHeadLinks;
	__property OnCustomizeJavaScript;
	__property OnCustomizeMap;
	__property OnCustomizeGlobalVariables;
	__property OnCustomizeMarker;
	__property OnCustomizePopup;
	__property OnCustomizeOptions;
	__property OnCustomizePolyElement;
	__property OnGetDefaultHTMLMessage;
	__property OnZoomChanged;
	__property OnMapTypeChanged;
	__property OnMapMoveStart;
	__property OnMapMoveEnd;
	__property OnMapClick;
	__property OnMapDblClick;
	__property OnMapMouseUp;
	__property OnMapMouseDown;
	__property OnMapMouseMove;
	__property OnMapMouseEnter;
	__property OnMapMouseLeave;
	__property OnMapRenderComplete;
	__property OnMarkerDragEnd;
	__property OnMarkerClick;
	__property OnMarkerDblClick;
	__property OnMarkerMouseUp;
	__property OnMarkerMouseDown;
	__property OnMarkerMouseEnter;
	__property OnMarkerMouseLeave;
	__property OnPolyElementDragEnd;
	__property OnPolyElementClick;
	__property OnPolyElementDblClick;
	__property OnPolyElementMouseUp;
	__property OnPolyElementMouseDown;
	__property OnPolyElementMouseEnter;
	__property OnPolyElementMouseLeave;
	__property OnCustomEvent;
	__property OnMapInitialized;
	__property OnGetCenterCoordinate;
	__property OnGetZoomLevel;
	__property OnGetBounds;
	__property OnCreateGPXTrack;
	__property OnCreateGPXSegment;
	__property OnCreateGeoJSONObject;
	__property OnClusterClick;
	__property Polylines;
	__property Polygons;
	__property Circles;
	__property Rectangles;
	__property Markers;
	__property Options;
	__property Version = {default=0};
	__property LocalFileAccess = {default=0};
	__property TileLayers;
	__property RouteCalculator;
	__property ElementContainers;
	__property HeadLinks;
	__property DesigntimeEnabled = {default=1};
	__property Clusters;
public:
	/* TTMSFNCCustomOpenLayers.Create */ inline __fastcall virtual TTMSFNCOpenLayers(System::Classes::TComponent* AOwner) : TTMSFNCCustomOpenLayers(AOwner) { }
	/* TTMSFNCCustomOpenLayers.Destroy */ inline __fastcall virtual ~TTMSFNCOpenLayers() { }
	
};


//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x5);
static constexpr System::Int8 REL_VER = System::Int8(0x0);
static constexpr System::Int8 BLD_VER = System::Int8(0x0);
}	/* namespace Tmsfncopenlayers */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCOPENLAYERS)
using namespace Fmx::Tmsfncopenlayers;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncopenlayersHPP
