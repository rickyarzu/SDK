// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCGoogleMaps.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncgooglemapsHPP
#define Fmx_TmsfncgooglemapsHPP

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
#include <FMX.TMSFNCMapsCommonTypes.hpp>
#include <FMX.TMSFNCWebBrowser.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.TMSFNCGraphics.hpp>
#include <FMX.TMSFNCGraphicsTypes.hpp>
#include <FMX.TMSFNCJSONReader.hpp>
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
namespace Tmsfncgooglemaps
{
//-- forward type declarations -----------------------------------------------
struct TTMSFNCGoogleMapsStepRec;
struct TTMSFNCGoogleMapsLegRec;
struct TTMSFNCGoogleMapsRouteRec;
struct TTMSFNCGoogleMapsDirectionsData;
class DELPHICLASS TTMSFNCGoogleMapsCircle;
class DELPHICLASS TTMSFNCGoogleMapsCircles;
class DELPHICLASS TTMSFNCGoogleMapsRectangle;
class DELPHICLASS TTMSFNCGoogleMapsRectangles;
class DELPHICLASS TTMSFNCGoogleMapsPolylineSymbol;
class DELPHICLASS TTMSFNCGoogleMapsPolylineSymbols;
class DELPHICLASS TTMSFNCGoogleMapsPolygon;
class DELPHICLASS TTMSFNCGoogleMapsPolygons;
class DELPHICLASS TTMSFNCGoogleMapsPolyline;
class DELPHICLASS TTMSFNCGoogleMapsPolylines;
class DELPHICLASS TTMSFNCGoogleMapsMarker;
class DELPHICLASS TTMSFNCGoogleMapsMarkers;
class DELPHICLASS TTMSFNCGoogleMapsMarkersList;
class DELPHICLASS TTMSFNCGoogleMapsCluster;
class DELPHICLASS TTMSFNCGoogleMapsClusters;
class DELPHICLASS TTMSFNCGoogleMapsDirectionsItem;
class DELPHICLASS TTMSFNCGoogleMapsDirections;
class DELPHICLASS TTMSFNCGoogleMapsKMLLayer;
class DELPHICLASS TTMSFNCGoogleMapsKMLLayers;
class DELPHICLASS TTMSFNCGoogleMapsOverlayView;
class DELPHICLASS TTMSFNCGoogleMapsOverlayViews;
class DELPHICLASS TTMSFNCGoogleMapsStreetView;
class DELPHICLASS TTMSFNCGoogleMapsOptions;
class DELPHICLASS TTMSFNCCustomGoogleMaps;
class DELPHICLASS TTMSFNCGoogleMaps;
//-- type declarations -------------------------------------------------------
enum DECLSPEC_DENUM TTMSFNCGoogleMapsMapTypeID : unsigned char { gmtDefault, gmtSatellite, gmtHybrid, gmtTerrain };

enum DECLSPEC_DENUM TTMSFNCGoogleMapsDirectionsTravelMode : unsigned char { dtmDriving, dtmWalking, dtmBicycling, dtmPublicTransport };

enum DECLSPEC_DENUM TTMSFNCGoogleMapsCoordinatePosition : unsigned char { cpTopLeft, cpTopCenter, cpTopRight, cpBottomLeft, cpBottomCenter, cpBottomRight, cpCenterLeft, cpCenterCenter, cpCenterRight, cpCustom };

enum DECLSPEC_DENUM TTMSFNCGoogleMapsOverlayViewMode : unsigned char { omBounds, omCoordinate };

enum DECLSPEC_DENUM TTMSFNCGoogleMapsPolylineSymbolPath : unsigned char { spBackwardClosedArrow, spBackwardOpenArrow, spCircle, spForwardClosedArrow, spForwardOpenArrow, spCustom };

enum DECLSPEC_DENUM TTMSFNCGoogleMapsPolylineSymbolUnits : unsigned char { unPercentage, unPixels };

_DECLARE_METACLASS(System::TMetaClass, TTMSFNCGoogleMapsStreetViewClass);

struct DECLSPEC_DRECORD TTMSFNCGoogleMapsStepRec
{
public:
	System::UnicodeString Instructions;
	int Distance;
	int Duration;
	TTMSFNCGoogleMapsDirectionsTravelMode TravelMode;
	Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRecArray Path;
};


struct DECLSPEC_DRECORD TTMSFNCGoogleMapsLegRec
{
	
private:
	typedef System::DynamicArray<TTMSFNCGoogleMapsStepRec> _TTMSFNCGoogleMapsLegRec__1;
	
	
public:
	int Distance;
	int Duration;
	System::UnicodeString Origin;
	System::UnicodeString Destination;
	Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec OriginCoordinate;
	Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec DestinationCoordinate;
	_TTMSFNCGoogleMapsLegRec__1 Steps;
};


struct DECLSPEC_DRECORD TTMSFNCGoogleMapsRouteRec
{
	
private:
	typedef System::DynamicArray<TTMSFNCGoogleMapsLegRec> _TTMSFNCGoogleMapsRouteRec__1;
	
	
public:
	System::UnicodeString Name;
	_TTMSFNCGoogleMapsRouteRec__1 Legs;
	Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRecArray Path;
};


struct DECLSPEC_DRECORD TTMSFNCGoogleMapsDirectionsData
{
	
private:
	typedef System::DynamicArray<TTMSFNCGoogleMapsRouteRec> _TTMSFNCGoogleMapsDirectionsData__1;
	
	
public:
	_TTMSFNCGoogleMapsDirectionsData__1 Routes;
};


typedef void __fastcall (__closure *TTMSFNCGoogleMapsDirectionsEvent)(System::TObject* Sender, Fmx::Tmsfncmaps::TTMSFNCMapsEventData* AEventData, const TTMSFNCGoogleMapsDirectionsData &ADirectionsData);

class PASCALIMPLEMENTATION TTMSFNCGoogleMapsCircle : public Fmx::Tmsfncmaps::TTMSFNCMapsCircle
{
	typedef Fmx::Tmsfncmaps::TTMSFNCMapsCircle inherited;
	
private:
	bool FDraggable;
	int FZIndex;
	void __fastcall SetDraggable(const bool Value);
	void __fastcall SetZIndex(const int Value);
	
protected:
	bool FClickable;
	bool FEditable;
	void __fastcall SetClickable(const bool Value);
	void __fastcall SetEditable(const bool Value);
	
public:
	__fastcall virtual TTMSFNCGoogleMapsCircle(System::Classes::TCollection* Collection);
	__fastcall virtual ~TTMSFNCGoogleMapsCircle();
	
__published:
	__property int ZIndex = {read=FZIndex, write=SetZIndex, default=0};
	__property bool Clickable = {read=FClickable, write=SetClickable, default=1};
	__property bool Draggable = {read=FDraggable, write=SetDraggable, default=0};
	__property bool Editable = {read=FEditable, write=SetEditable, default=0};
};


class PASCALIMPLEMENTATION TTMSFNCGoogleMapsCircles : public Fmx::Tmsfncmaps::TTMSFNCMapsCircles
{
	typedef Fmx::Tmsfncmaps::TTMSFNCMapsCircles inherited;
	
public:
	TTMSFNCGoogleMapsCircle* operator[](int Index) { return this->Items[Index]; }
	
private:
	HIDESBASE TTMSFNCGoogleMapsCircle* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCGoogleMapsCircle* const Value);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall CreateItemClass();
	
public:
	__property TTMSFNCGoogleMapsCircle* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	HIDESBASE TTMSFNCGoogleMapsCircle* __fastcall Add();
	HIDESBASE TTMSFNCGoogleMapsCircle* __fastcall Insert(int Index);
public:
	/* TTMSFNCMapsPolyElements.Create */ inline __fastcall virtual TTMSFNCGoogleMapsCircles(Fmx::Tmsfncmaps::TTMSFNCCustomMaps* AOwner) : Fmx::Tmsfncmaps::TTMSFNCMapsCircles(AOwner) { }
	
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCGoogleMapsCircles() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCGoogleMapsRectangle : public Fmx::Tmsfncmaps::TTMSFNCMapsRectangle
{
	typedef Fmx::Tmsfncmaps::TTMSFNCMapsRectangle inherited;
	
private:
	bool FClickable;
	bool FEditable;
	bool FDraggable;
	int FZIndex;
	void __fastcall SetClickable(const bool Value);
	void __fastcall SetEditable(const bool Value);
	void __fastcall SetDraggable(const bool Value);
	void __fastcall SetZIndex(const int Value);
	
public:
	__fastcall virtual TTMSFNCGoogleMapsRectangle(System::Classes::TCollection* Collection);
	__fastcall virtual ~TTMSFNCGoogleMapsRectangle();
	
__published:
	__property int ZIndex = {read=FZIndex, write=SetZIndex, default=0};
	__property bool Clickable = {read=FClickable, write=SetClickable, default=1};
	__property bool Draggable = {read=FDraggable, write=SetDraggable, default=0};
	__property bool Editable = {read=FEditable, write=SetEditable, default=0};
};


class PASCALIMPLEMENTATION TTMSFNCGoogleMapsRectangles : public Fmx::Tmsfncmaps::TTMSFNCMapsRectangles
{
	typedef Fmx::Tmsfncmaps::TTMSFNCMapsRectangles inherited;
	
public:
	TTMSFNCGoogleMapsRectangle* operator[](int Index) { return this->Items[Index]; }
	
private:
	HIDESBASE TTMSFNCGoogleMapsRectangle* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCGoogleMapsRectangle* const Value);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall CreateItemClass();
	
public:
	__property TTMSFNCGoogleMapsRectangle* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	HIDESBASE TTMSFNCGoogleMapsRectangle* __fastcall Add();
	HIDESBASE TTMSFNCGoogleMapsRectangle* __fastcall Insert(int Index);
public:
	/* TTMSFNCMapsPolyElements.Create */ inline __fastcall virtual TTMSFNCGoogleMapsRectangles(Fmx::Tmsfncmaps::TTMSFNCCustomMaps* AOwner) : Fmx::Tmsfncmaps::TTMSFNCMapsRectangles(AOwner) { }
	
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCGoogleMapsRectangles() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCGoogleMapsPolylineSymbol : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	TTMSFNCGoogleMapsPolyline* FOwner;
	TTMSFNCGoogleMapsPolylineSymbolPath FPath;
	System::UnicodeString FCustomPath;
	TTMSFNCGoogleMapsPolylineSymbolUnits FRepeatSymbolUnits;
	int FRepeatSymbol;
	TTMSFNCGoogleMapsPolylineSymbolUnits FOffsetUnits;
	int FOffset;
	float FScale;
	int FRotation;
	System::Uitypes::TAlphaColor FStrokeColor;
	float FStrokeOpacity;
	int FStrokeWidth;
	System::Uitypes::TAlphaColor FFillColor;
	float FFillOpacity;
	bool __fastcall IsPathStored();
	bool __fastcall IsCustomPathStored();
	bool __fastcall IsOffsetStored();
	bool __fastcall IsRepeatOffsetUnitsStored();
	bool __fastcall IsRepeatSymbolStored();
	bool __fastcall IsRepeatSymbolUnitsStored();
	bool __fastcall IsScaleStored();
	bool __fastcall IsRotationStored();
	bool __fastcall IsStrokeOpacityStored();
	bool __fastcall IsFillOpacityStored();
	void __fastcall SetScale(const float Value);
	void __fastcall SetCustomPath(const System::UnicodeString Value);
	void __fastcall SetFillColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetFillOpacity(const float Value);
	void __fastcall SetOffset(const int Value);
	void __fastcall SetOffsetUnits(const TTMSFNCGoogleMapsPolylineSymbolUnits Value);
	void __fastcall SetPath(const TTMSFNCGoogleMapsPolylineSymbolPath Value);
	void __fastcall SetRepeatSymbol(const int Value);
	void __fastcall SetRepeatSymbolUnits(const TTMSFNCGoogleMapsPolylineSymbolUnits Value);
	void __fastcall SetRotation(const int Value);
	void __fastcall SetStrokeColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetStrokeOpacity(const float Value);
	void __fastcall SetStrokeWidth(const int Value);
	
protected:
	void __fastcall UpdateSymbol();
	
public:
	__fastcall virtual TTMSFNCGoogleMapsPolylineSymbol(System::Classes::TCollection* Collection);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual ~TTMSFNCGoogleMapsPolylineSymbol();
	
__published:
	__property System::Uitypes::TAlphaColor StrokeColor = {read=FStrokeColor, write=SetStrokeColor, default=0};
	__property float StrokeOpacity = {read=FStrokeOpacity, write=SetStrokeOpacity, stored=IsStrokeOpacityStored};
	__property int StrokeWidth = {read=FStrokeWidth, write=SetStrokeWidth, default=0};
	__property System::Uitypes::TAlphaColor FillColor = {read=FFillColor, write=SetFillColor, default=0};
	__property float FillOpacity = {read=FFillOpacity, write=SetFillOpacity, stored=IsFillOpacityStored};
	__property TTMSFNCGoogleMapsPolylineSymbolPath Path = {read=FPath, write=SetPath, stored=IsPathStored, default=4};
	__property System::UnicodeString CustomPath = {read=FCustomPath, write=SetCustomPath, stored=IsCustomPathStored};
	__property int RepeatSymbol = {read=FRepeatSymbol, write=SetRepeatSymbol, stored=IsRepeatSymbolStored, default=0};
	__property TTMSFNCGoogleMapsPolylineSymbolUnits RepeatSymbolUnits = {read=FRepeatSymbolUnits, write=SetRepeatSymbolUnits, stored=IsRepeatSymbolUnitsStored, default=1};
	__property int Offset = {read=FOffset, write=SetOffset, stored=IsOffsetStored, default=100};
	__property TTMSFNCGoogleMapsPolylineSymbolUnits OffsetUnits = {read=FOffsetUnits, write=SetOffsetUnits, stored=IsRepeatOffsetUnitsStored, default=0};
	__property float Scale = {read=FScale, write=SetScale, stored=IsScaleStored};
	__property int Rotation = {read=FRotation, write=SetRotation, stored=IsRotationStored, default=0};
};


class PASCALIMPLEMENTATION TTMSFNCGoogleMapsPolylineSymbols : public Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCGoogleMapsPolylineSymbol*>
{
	typedef Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCGoogleMapsPolylineSymbol*> inherited;
	
public:
	TTMSFNCGoogleMapsPolylineSymbol* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCGoogleMapsPolyline* FOwner;
	HIDESBASE TTMSFNCGoogleMapsPolylineSymbol* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCGoogleMapsPolylineSymbol* const Value);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall CreateItemClass();
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	
public:
	__fastcall virtual TTMSFNCGoogleMapsPolylineSymbols(TTMSFNCGoogleMapsPolyline* AOwner);
	__property TTMSFNCGoogleMapsPolylineSymbol* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	HIDESBASE TTMSFNCGoogleMapsPolylineSymbol* __fastcall Add();
	HIDESBASE TTMSFNCGoogleMapsPolylineSymbol* __fastcall Insert(int Index);
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCGoogleMapsPolylineSymbols() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCGoogleMapsPolygon : public Fmx::Tmsfncmaps::TTMSFNCMapsPolygon
{
	typedef Fmx::Tmsfncmaps::TTMSFNCMapsPolygon inherited;
	
private:
	bool FClickable;
	bool FEditable;
	bool FDraggable;
	int FZIndex;
	void __fastcall SetClickable(const bool Value);
	void __fastcall SetEditable(const bool Value);
	void __fastcall SetDraggable(const bool Value);
	void __fastcall SetZIndex(const int Value);
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual TTMSFNCGoogleMapsPolygon(System::Classes::TCollection* Collection);
	__fastcall virtual ~TTMSFNCGoogleMapsPolygon();
	virtual Fmx::Tmsfncmaps::TTMSFNCMapsPolyElementHole* __fastcall AddHole(Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRecArray ACoordinates);
	
__published:
	__property int ZIndex = {read=FZIndex, write=SetZIndex, default=0};
	__property bool Clickable = {read=FClickable, write=SetClickable, default=1};
	__property bool Draggable = {read=FDraggable, write=SetDraggable, default=0};
	__property bool Editable = {read=FEditable, write=SetEditable, default=0};
	__property Holes;
};


class PASCALIMPLEMENTATION TTMSFNCGoogleMapsPolygons : public Fmx::Tmsfncmaps::TTMSFNCMapsPolygons
{
	typedef Fmx::Tmsfncmaps::TTMSFNCMapsPolygons inherited;
	
public:
	TTMSFNCGoogleMapsPolygon* operator[](int Index) { return this->Items[Index]; }
	
private:
	HIDESBASE TTMSFNCGoogleMapsPolygon* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCGoogleMapsPolygon* const Value);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall CreateItemClass();
	
public:
	__property TTMSFNCGoogleMapsPolygon* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	HIDESBASE TTMSFNCGoogleMapsPolygon* __fastcall Add();
	HIDESBASE TTMSFNCGoogleMapsPolygon* __fastcall Insert(int Index);
public:
	/* TTMSFNCMapsPolyElements.Create */ inline __fastcall virtual TTMSFNCGoogleMapsPolygons(Fmx::Tmsfncmaps::TTMSFNCCustomMaps* AOwner) : Fmx::Tmsfncmaps::TTMSFNCMapsPolygons(AOwner) { }
	
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCGoogleMapsPolygons() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCGoogleMapsPolyline : public Fmx::Tmsfncmaps::TTMSFNCMapsPolyline
{
	typedef Fmx::Tmsfncmaps::TTMSFNCMapsPolyline inherited;
	
private:
	bool FClickable;
	bool FEditable;
	bool FDraggable;
	int FZIndex;
	bool FGeodesic;
	TTMSFNCGoogleMapsPolylineSymbols* FSymbols;
	void __fastcall SetClickable(const bool Value);
	void __fastcall SetEditable(const bool Value);
	void __fastcall SetDraggable(const bool Value);
	void __fastcall SetZIndex(const int Value);
	void __fastcall SetGeodesic(const bool Value);
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual TTMSFNCGoogleMapsPolyline(System::Classes::TCollection* Collection);
	__fastcall virtual ~TTMSFNCGoogleMapsPolyline();
	
__published:
	__property int ZIndex = {read=FZIndex, write=SetZIndex, default=0};
	__property bool Clickable = {read=FClickable, write=SetClickable, default=1};
	__property bool Draggable = {read=FDraggable, write=SetDraggable, default=0};
	__property bool Editable = {read=FEditable, write=SetEditable, default=0};
	__property bool Geodesic = {read=FGeodesic, write=SetGeodesic, default=0};
	__property TTMSFNCGoogleMapsPolylineSymbols* Symbols = {read=FSymbols, write=FSymbols};
};


class PASCALIMPLEMENTATION TTMSFNCGoogleMapsPolylines : public Fmx::Tmsfncmaps::TTMSFNCMapsPolylines
{
	typedef Fmx::Tmsfncmaps::TTMSFNCMapsPolylines inherited;
	
public:
	TTMSFNCGoogleMapsPolyline* operator[](int Index) { return this->Items[Index]; }
	
private:
	HIDESBASE TTMSFNCGoogleMapsPolyline* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCGoogleMapsPolyline* const Value);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall CreateItemClass();
	
public:
	__property TTMSFNCGoogleMapsPolyline* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	HIDESBASE TTMSFNCGoogleMapsPolyline* __fastcall Add();
	HIDESBASE TTMSFNCGoogleMapsPolyline* __fastcall Insert(int Index);
public:
	/* TTMSFNCMapsPolyElements.Create */ inline __fastcall virtual TTMSFNCGoogleMapsPolylines(Fmx::Tmsfncmaps::TTMSFNCCustomMaps* AOwner) : Fmx::Tmsfncmaps::TTMSFNCMapsPolylines(AOwner) { }
	
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCGoogleMapsPolylines() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCGoogleMapsMarker : public Fmx::Tmsfncmaps::TTMSFNCMapsMarker
{
	typedef Fmx::Tmsfncmaps::TTMSFNCMapsMarker inherited;
	
private:
	TTMSFNCGoogleMapsCluster* FCluster;
	bool FAnimation;
	bool FClickable;
	bool FDraggable;
	int FZIndex;
	Fmx::Tmsfncmapscommontypes::TTMSFNCMapsAnchorPoint* FAnchor;
	bool FDefaultAnchor;
	TTMSFNCGoogleMapsOverlayView* FOverlayView;
	float FIconHeight;
	bool FDefaultIconSize;
	float FIconWidth;
	void __fastcall SetAnimation(const bool Value);
	void __fastcall SetClickable(const bool Value);
	void __fastcall SetDraggable(const bool Value);
	void __fastcall SetZIndex(const int Value);
	void __fastcall SetAnchor(Fmx::Tmsfncmapscommontypes::TTMSFNCMapsAnchorPoint* const Value);
	void __fastcall SetDefaultAnchor(const bool Value);
	bool __fastcall IsIconHeightStored();
	bool __fastcall IsIconWidthStored();
	void __fastcall SetDefaultIconSize(const bool Value);
	void __fastcall SetIconHeight(const float Value);
	void __fastcall SetIconWidth(const float Value);
	
protected:
	void __fastcall DoAnchorChanged(System::TObject* Sender);
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual TTMSFNCGoogleMapsMarker(System::Classes::TCollection* Collection);
	__fastcall virtual ~TTMSFNCGoogleMapsMarker();
	__property TTMSFNCGoogleMapsCluster* Cluster = {read=FCluster, write=FCluster};
	__property TTMSFNCGoogleMapsOverlayView* OverlayView = {read=FOverlayView, write=FOverlayView};
	void __fastcall AddOverlayView(System::UnicodeString AText);
	
__published:
	__property int ZIndex = {read=FZIndex, write=SetZIndex, default=0};
	__property bool Animation = {read=FAnimation, write=SetAnimation, default=0};
	__property bool Clickable = {read=FClickable, write=SetClickable, default=1};
	__property bool Draggable = {read=FDraggable, write=SetDraggable, default=0};
	__property Fmx::Tmsfncmapscommontypes::TTMSFNCMapsAnchorPoint* Anchor = {read=FAnchor, write=SetAnchor};
	__property bool DefaultIconSize = {read=FDefaultIconSize, write=SetDefaultIconSize, default=1};
	__property float IconWidth = {read=FIconWidth, write=SetIconWidth, stored=IsIconWidthStored};
	__property float IconHeight = {read=FIconHeight, write=SetIconHeight, stored=IsIconHeightStored};
	__property bool DefaultAnchor = {read=FDefaultAnchor, write=SetDefaultAnchor, default=1};
};


class PASCALIMPLEMENTATION TTMSFNCGoogleMapsMarkers : public Fmx::Tmsfncmaps::TTMSFNCMapsMarkers
{
	typedef Fmx::Tmsfncmaps::TTMSFNCMapsMarkers inherited;
	
public:
	TTMSFNCGoogleMapsMarker* operator[](int Index) { return this->Items[Index]; }
	
private:
	HIDESBASE TTMSFNCGoogleMapsMarker* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCGoogleMapsMarker* const Value);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall CreateItemClass();
	
public:
	__property TTMSFNCGoogleMapsMarker* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	HIDESBASE TTMSFNCGoogleMapsMarker* __fastcall Add();
	HIDESBASE TTMSFNCGoogleMapsMarker* __fastcall Insert(int Index);
public:
	/* TTMSFNCMapsMarkers.Create */ inline __fastcall virtual TTMSFNCGoogleMapsMarkers(Fmx::Tmsfncmaps::TTMSFNCCustomMaps* AOwner) : Fmx::Tmsfncmaps::TTMSFNCMapsMarkers(AOwner) { }
	
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCGoogleMapsMarkers() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCGoogleMapsMarkersList : public System::Generics::Collections::TList__1<TTMSFNCGoogleMapsMarker*>
{
	typedef System::Generics::Collections::TList__1<TTMSFNCGoogleMapsMarker*> inherited;
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCGoogleMaps_TTMSFNCGoogleMapsMarker>.Create */ inline __fastcall TTMSFNCGoogleMapsMarkersList()/* overload */ : System::Generics::Collections::TList__1<TTMSFNCGoogleMapsMarker*>() { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCGoogleMaps_TTMSFNCGoogleMapsMarker>.Create */ inline __fastcall TTMSFNCGoogleMapsMarkersList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCGoogleMapsMarker*> > AComparer)/* overload */ : System::Generics::Collections::TList__1<TTMSFNCGoogleMapsMarker*>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCGoogleMaps_TTMSFNCGoogleMapsMarker>.Create */ inline __fastcall TTMSFNCGoogleMapsMarkersList(System::Generics::Collections::TEnumerable__1<TTMSFNCGoogleMapsMarker*>* const Collection)/* overload */ : System::Generics::Collections::TList__1<TTMSFNCGoogleMapsMarker*>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCGoogleMaps_TTMSFNCGoogleMapsMarker>.Create */ inline __fastcall TTMSFNCGoogleMapsMarkersList(TTMSFNCGoogleMapsMarker* const *Values, const int Values_High)/* overload */ : System::Generics::Collections::TList__1<TTMSFNCGoogleMapsMarker*>(Values, Values_High) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCGoogleMaps_TTMSFNCGoogleMapsMarker>.Destroy */ inline __fastcall virtual ~TTMSFNCGoogleMapsMarkersList() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCGoogleMapsCluster : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	bool FReload;
	TTMSFNCGoogleMapsMarkersList* FMarkers;
	System::UnicodeString FID;
	Fmx::Tmsfncmaps::TTMSFNCCustomMaps* FOwner;
	bool FDataBoolean;
	System::UnicodeString FDataString;
	System::TObject* FDataObject;
	NativeInt FDataInteger;
	void *FDataPointer;
	System::UnicodeString FTitle;
	bool FAverageCenter;
	bool FIgnoreHiddenMarkers;
	bool FZoomOnClick;
	int FMinimumNumberOfMarkers;
	int FMaxZoom;
	bool FRecreate;
	System::UnicodeString FImagePath;
	System::UnicodeString FText;
	System::UnicodeString __fastcall GetID();
	bool __fastcall IsTitleStored();
	TTMSFNCGoogleMapsMarkersList* __fastcall GetMarkers();
	bool __fastcall IsAverageCenterStored();
	bool __fastcall IsIgnoreHiddenMarkers();
	bool __fastcall IsMaxZoomStored();
	bool __fastcall IsMinimumNumberOfMarkers();
	bool __fastcall IsZoomOnClickStored();
	void __fastcall SetAverageCenter(const bool Value);
	void __fastcall SetIgnoreHiddenMarkers(const bool Value);
	void __fastcall SetMaxZoom(const int Value);
	void __fastcall SetMinimumNumberOfMarkers(const int Value);
	void __fastcall SetTitle(const System::UnicodeString Value);
	void __fastcall SetZoomOnClick(const bool Value);
	bool __fastcall IsImagePathStored();
	void __fastcall SetImagePath(const System::UnicodeString Value);
	void __fastcall SetText(const System::UnicodeString Value);
	
protected:
	virtual void __fastcall UpdateCluster();
	
public:
	__fastcall virtual TTMSFNCGoogleMapsCluster(System::Classes::TCollection* Collection);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual ~TTMSFNCGoogleMapsCluster();
	__property void * DataPointer = {read=FDataPointer, write=FDataPointer};
	__property bool DataBoolean = {read=FDataBoolean, write=FDataBoolean, nodefault};
	__property System::TObject* DataObject = {read=FDataObject, write=FDataObject};
	__property System::UnicodeString DataString = {read=FDataString, write=FDataString};
	__property NativeInt DataInteger = {read=FDataInteger, write=FDataInteger};
	__property TTMSFNCGoogleMapsMarkersList* Markers = {read=GetMarkers};
	__property bool IgnoreHiddenMarkers = {read=FIgnoreHiddenMarkers, write=SetIgnoreHiddenMarkers, stored=IsIgnoreHiddenMarkers, nodefault};
	__property bool Recreate = {read=FRecreate, write=FRecreate, nodefault};
	
__published:
	__property System::UnicodeString ID = {read=GetID};
	__property System::UnicodeString Title = {read=FTitle, write=SetTitle, stored=IsTitleStored};
	__property bool ZoomOnClick = {read=FZoomOnClick, write=SetZoomOnClick, stored=IsZoomOnClickStored, nodefault};
	__property bool Averagecenter = {read=FAverageCenter, write=SetAverageCenter, stored=IsAverageCenterStored, nodefault};
	__property int MaxZoom = {read=FMaxZoom, write=SetMaxZoom, stored=IsMaxZoomStored, nodefault};
	__property int MinimumNumberOfMarkers = {read=FMinimumNumberOfMarkers, write=SetMinimumNumberOfMarkers, stored=IsMinimumNumberOfMarkers, nodefault};
	__property System::UnicodeString ImagePath = {read=FImagePath, write=SetImagePath, stored=IsImagePathStored};
	__property System::UnicodeString Text = {read=FText, write=SetText};
};


class PASCALIMPLEMENTATION TTMSFNCGoogleMapsClusters : public Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCGoogleMapsCluster*>
{
	typedef Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCGoogleMapsCluster*> inherited;
	
public:
	TTMSFNCGoogleMapsCluster* operator[](int Index) { return this->Items[Index]; }
	
private:
	Fmx::Tmsfncmaps::TTMSFNCCustomMaps* FOwner;
	HIDESBASE TTMSFNCGoogleMapsCluster* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCGoogleMapsCluster* const Value);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall CreateItemClass();
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	
public:
	__fastcall virtual TTMSFNCGoogleMapsClusters(Fmx::Tmsfncmaps::TTMSFNCCustomMaps* AOwner);
	__property TTMSFNCGoogleMapsCluster* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	HIDESBASE virtual void __fastcall Clear();
	virtual void __fastcall Recreate();
	HIDESBASE TTMSFNCGoogleMapsCluster* __fastcall Add();
	HIDESBASE TTMSFNCGoogleMapsCluster* __fastcall Insert(int Index);
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCGoogleMapsClusters() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCGoogleMapsDirectionsItem : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	System::UnicodeString FID;
	Fmx::Tmsfncmaps::TTMSFNCCustomMaps* FOwner;
	bool FDataBoolean;
	System::UnicodeString FDataString;
	System::TObject* FDataObject;
	NativeInt FDataInteger;
	void *FDataPointer;
	bool FRecreate;
	System::UnicodeString FDestination;
	System::UnicodeString FOrigin;
	int FStrokeWidth;
	System::Uitypes::TAlphaColor FStrokeColor;
	bool FShowMarkers;
	float FStrokeOpacity;
	Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinate* FDestinationCoordinate;
	Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinate* FOriginCoordinate;
	TTMSFNCGoogleMapsDirectionsTravelMode FTravelMode;
	System::Classes::TStringList* FWayPoints;
	bool FAvoidTolls;
	bool FShowPolyline;
	bool FOptimizeWayPoints;
	System::UnicodeString __fastcall GetID();
	bool __fastcall IsDestinationStored();
	bool __fastcall IsOriginStored();
	bool __fastcall IsShowMarkersStored();
	bool __fastcall IsStrokeOpacityStored();
	bool __fastcall IsStrokeWidthStored();
	bool __fastcall IsTravelModeStored();
	bool __fastcall IsAvoidTolls();
	bool __fastcall IsShowPolylineStored();
	bool __fastcall IsOptimizeWayPointsStored();
	
protected:
	virtual void __fastcall UpdateDirectionsItem();
	
public:
	__fastcall virtual TTMSFNCGoogleMapsDirectionsItem(System::Classes::TCollection* Collection);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual ~TTMSFNCGoogleMapsDirectionsItem();
	__property void * DataPointer = {read=FDataPointer, write=FDataPointer};
	__property bool DataBoolean = {read=FDataBoolean, write=FDataBoolean, nodefault};
	__property System::TObject* DataObject = {read=FDataObject, write=FDataObject};
	__property System::UnicodeString DataString = {read=FDataString, write=FDataString};
	__property NativeInt DataInteger = {read=FDataInteger, write=FDataInteger};
	__property bool Recreate = {read=FRecreate, write=FRecreate, nodefault};
	
__published:
	__property System::UnicodeString ID = {read=GetID};
	__property System::UnicodeString Origin = {read=FOrigin, stored=IsOriginStored};
	__property System::UnicodeString Destination = {read=FDestination, stored=IsDestinationStored};
	__property Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinate* OriginCoordinate = {read=FOriginCoordinate};
	__property Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinate* DestinationCoordinate = {read=FDestinationCoordinate};
	__property bool ShowMarkers = {read=FShowMarkers, stored=IsShowMarkersStored, default=1};
	__property bool ShowPolyline = {read=FShowPolyline, stored=IsShowPolylineStored, default=1};
	__property System::Uitypes::TAlphaColor StrokeColor = {read=FStrokeColor, default=-16776961};
	__property float StrokeOpacity = {read=FStrokeOpacity, stored=IsStrokeOpacityStored};
	__property int StrokeWidth = {read=FStrokeWidth, stored=IsStrokeWidthStored, default=2};
	__property TTMSFNCGoogleMapsDirectionsTravelMode TravelMode = {read=FTravelMode, stored=IsTravelModeStored, default=0};
	__property System::Classes::TStringList* WayPoints = {read=FWayPoints};
	__property bool OptimizeWayPoints = {read=FOptimizeWayPoints, stored=IsOptimizeWayPointsStored, default=0};
	__property bool AvoidTolls = {read=FAvoidTolls, stored=IsAvoidTolls, default=0};
};


class PASCALIMPLEMENTATION TTMSFNCGoogleMapsDirections : public Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCGoogleMapsDirectionsItem*>
{
	typedef Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCGoogleMapsDirectionsItem*> inherited;
	
public:
	TTMSFNCGoogleMapsDirectionsItem* operator[](int Index) { return this->Items[Index]; }
	
private:
	Fmx::Tmsfncmaps::TTMSFNCCustomMaps* FOwner;
	HIDESBASE TTMSFNCGoogleMapsDirectionsItem* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCGoogleMapsDirectionsItem* const Value);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall CreateItemClass();
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	
public:
	__fastcall virtual TTMSFNCGoogleMapsDirections(Fmx::Tmsfncmaps::TTMSFNCCustomMaps* AOwner);
	__property TTMSFNCGoogleMapsDirectionsItem* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	HIDESBASE virtual void __fastcall Clear();
	HIDESBASE TTMSFNCGoogleMapsDirectionsItem* __fastcall Add();
	HIDESBASE TTMSFNCGoogleMapsDirectionsItem* __fastcall Insert(int Index);
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCGoogleMapsDirections() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCGoogleMapsKMLLayer : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	System::UnicodeString FID;
	Fmx::Tmsfncmaps::TTMSFNCCustomMaps* FOwner;
	bool FDataBoolean;
	System::UnicodeString FDataString;
	System::TObject* FDataObject;
	NativeInt FDataInteger;
	void *FDataPointer;
	System::UnicodeString FURL;
	bool FZoomToBounds;
	bool FRecreate;
	System::UnicodeString __fastcall GetID();
	bool __fastcall IsURLStored();
	bool __fastcall IsZoomToBoundsStored();
	
protected:
	virtual void __fastcall UpdateKMLLayer();
	
public:
	__fastcall virtual TTMSFNCGoogleMapsKMLLayer(System::Classes::TCollection* Collection);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual ~TTMSFNCGoogleMapsKMLLayer();
	__property void * DataPointer = {read=FDataPointer, write=FDataPointer};
	__property bool DataBoolean = {read=FDataBoolean, write=FDataBoolean, nodefault};
	__property System::TObject* DataObject = {read=FDataObject, write=FDataObject};
	__property System::UnicodeString DataString = {read=FDataString, write=FDataString};
	__property NativeInt DataInteger = {read=FDataInteger, write=FDataInteger};
	__property bool Recreate = {read=FRecreate, write=FRecreate, nodefault};
	
__published:
	__property System::UnicodeString ID = {read=GetID};
	__property System::UnicodeString URL = {read=FURL, stored=IsURLStored};
	__property bool ZoomToBounds = {read=FZoomToBounds, stored=IsZoomToBoundsStored, nodefault};
};


class PASCALIMPLEMENTATION TTMSFNCGoogleMapsKMLLayers : public Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCGoogleMapsKMLLayer*>
{
	typedef Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCGoogleMapsKMLLayer*> inherited;
	
public:
	TTMSFNCGoogleMapsKMLLayer* operator[](int Index) { return this->Items[Index]; }
	
private:
	Fmx::Tmsfncmaps::TTMSFNCCustomMaps* FOwner;
	HIDESBASE TTMSFNCGoogleMapsKMLLayer* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCGoogleMapsKMLLayer* const Value);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall CreateItemClass();
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	
public:
	__fastcall virtual TTMSFNCGoogleMapsKMLLayers(Fmx::Tmsfncmaps::TTMSFNCCustomMaps* AOwner);
	__property TTMSFNCGoogleMapsKMLLayer* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	HIDESBASE virtual void __fastcall Clear();
	HIDESBASE TTMSFNCGoogleMapsKMLLayer* __fastcall Add();
	HIDESBASE TTMSFNCGoogleMapsKMLLayer* __fastcall Insert(int Index);
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCGoogleMapsKMLLayers() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCGoogleMapsOverlayView : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	System::UnicodeString FID;
	Fmx::Tmsfncmaps::TTMSFNCCustomMaps* FOwner;
	TTMSFNCGoogleMapsMarkersList* FMarkers;
	bool FDataBoolean;
	System::UnicodeString FDataString;
	System::TObject* FDataObject;
	NativeInt FDataInteger;
	void *FDataPointer;
	bool FRecreate;
	System::UnicodeString FText;
	Fmx::Tmsfncmapscommontypes::TTMSFNCMapsBounds* FBounds;
	System::Uitypes::TAlphaColor FBackgroundColor;
	System::Uitypes::TAlphaColor FBorderColor;
	TTMSFNCGoogleMapsOverlayViewMode FMode;
	int FCoordinateOffsetTop;
	int FCoordinateOffsetLeft;
	TTMSFNCGoogleMapsCoordinatePosition FCoordinatePosition;
	int FPadding;
	Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinate* FCoordinate;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FFont;
	bool FVisible;
	bool FClickable;
	int FWidth;
	int FHeight;
	System::UnicodeString __fastcall GetID();
	void __fastcall SetText(const System::UnicodeString Value);
	void __fastcall SetBounds(Fmx::Tmsfncmapscommontypes::TTMSFNCMapsBounds* const Value);
	TTMSFNCGoogleMapsMarkersList* __fastcall GetMarkers();
	void __fastcall SetBackgroundColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetBorderColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetCoordinate(Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinate* const Value);
	void __fastcall SetCoordinatePosition(const TTMSFNCGoogleMapsCoordinatePosition Value);
	void __fastcall SetFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetMode(const TTMSFNCGoogleMapsOverlayViewMode Value);
	void __fastcall SetoordinatePositionOffsetLeft(const int Value);
	void __fastcall SetoordinatePositionOffsetTop(const int Value);
	void __fastcall SetPadding(const int Value);
	void __fastcall SetVisible(const bool Value);
	void __fastcall SetClickable(const bool Value);
	void __fastcall SetHeight(const int Value);
	void __fastcall SetWidth(const int Value);
	
protected:
	virtual void __fastcall UpdateOverlayView();
	HIDESBASE void __fastcall Changed(System::TObject* Sender);
	
public:
	__fastcall virtual TTMSFNCGoogleMapsOverlayView(System::Classes::TCollection* Collection);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual ~TTMSFNCGoogleMapsOverlayView();
	__property void * DataPointer = {read=FDataPointer, write=FDataPointer};
	__property bool DataBoolean = {read=FDataBoolean, write=FDataBoolean, nodefault};
	__property System::TObject* DataObject = {read=FDataObject, write=FDataObject};
	__property System::UnicodeString DataString = {read=FDataString, write=FDataString};
	__property NativeInt DataInteger = {read=FDataInteger, write=FDataInteger};
	__property bool Recreate = {read=FRecreate, write=FRecreate, nodefault};
	__property TTMSFNCGoogleMapsMarkersList* Markers = {read=GetMarkers};
	
__published:
	__property System::UnicodeString ID = {read=GetID};
	__property System::UnicodeString Text = {read=FText, write=SetText};
	__property Fmx::Tmsfncmapscommontypes::TTMSFNCMapsBounds* Bounds = {read=FBounds, write=SetBounds};
	__property System::Uitypes::TAlphaColor BorderColor = {read=FBorderColor, write=SetBorderColor, default=-16777216};
	__property System::Uitypes::TAlphaColor BackgroundColor = {read=FBackgroundColor, write=SetBackgroundColor, default=-1};
	__property bool Clickable = {read=FClickable, write=SetClickable, default=1};
	__property Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinate* Coordinate = {read=FCoordinate, write=SetCoordinate};
	__property TTMSFNCGoogleMapsCoordinatePosition CoordinatePosition = {read=FCoordinatePosition, write=SetCoordinatePosition, default=1};
	__property int CoordinateOffsetTop = {read=FCoordinateOffsetTop, write=SetoordinatePositionOffsetTop, default=0};
	__property int CoordinateOffsetLeft = {read=FCoordinateOffsetLeft, write=SetoordinatePositionOffsetLeft, default=0};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* Font = {read=FFont, write=SetFont};
	__property int Height = {read=FHeight, write=SetHeight, default=-1};
	__property TTMSFNCGoogleMapsOverlayViewMode Mode = {read=FMode, write=SetMode, default=1};
	__property int Padding = {read=FPadding, write=SetPadding, default=3};
	__property bool Visible = {read=FVisible, write=SetVisible, default=1};
	__property int Width = {read=FWidth, write=SetWidth, default=-1};
};


class PASCALIMPLEMENTATION TTMSFNCGoogleMapsOverlayViews : public Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCGoogleMapsOverlayView*>
{
	typedef Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCGoogleMapsOverlayView*> inherited;
	
public:
	TTMSFNCGoogleMapsOverlayView* operator[](int Index) { return this->Items[Index]; }
	
private:
	Fmx::Tmsfncmaps::TTMSFNCCustomMaps* FOwner;
	HIDESBASE TTMSFNCGoogleMapsOverlayView* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCGoogleMapsOverlayView* const Value);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall CreateItemClass();
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	
public:
	__fastcall virtual TTMSFNCGoogleMapsOverlayViews(Fmx::Tmsfncmaps::TTMSFNCCustomMaps* AOwner);
	__property TTMSFNCGoogleMapsOverlayView* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	HIDESBASE virtual void __fastcall Clear();
	HIDESBASE TTMSFNCGoogleMapsOverlayView* __fastcall Add();
	HIDESBASE TTMSFNCGoogleMapsOverlayView* __fastcall Insert(int Index);
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCGoogleMapsOverlayViews() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCGoogleMapsStreetView : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	System::Classes::TNotifyEvent FOnChange;
	bool FEnabled;
	int FPitch;
	int FHeading;
	int FZoom;
	void __fastcall SetEnabled(const bool Value);
	void __fastcall SetHeading(const int Value);
	void __fastcall SetPitch(const int Value);
	void __fastcall SetZoom(const int Value);
	
protected:
	void __fastcall Changed();
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual TTMSFNCGoogleMapsStreetView();
	__property System::Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
	
__published:
	__property bool Enabled = {read=FEnabled, write=SetEnabled, default=0};
	__property int Heading = {read=FHeading, write=SetHeading, default=0};
	__property int Pitch = {read=FPitch, write=SetPitch, default=0};
	__property int Zoom = {read=FZoom, write=SetZoom, default=0};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTMSFNCGoogleMapsStreetView() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCGoogleMapsOptions : public Fmx::Tmsfncmaps::TTMSFNCMapsOptions
{
	typedef Fmx::Tmsfncmaps::TTMSFNCMapsOptions inherited;
	
private:
	TTMSFNCGoogleMapsMapTypeID FMapTypeID;
	bool FShowTraffic;
	System::UnicodeString FMapStyle;
	bool FShowBicycling;
	bool FShowStreetViewControl;
	TTMSFNCGoogleMapsStreetView* FStreetView;
	System::UnicodeString FMapID;
	double FTilt;
	double FHeading;
	bool FShowScaleControl;
	bool FShowKeyboardShortcuts;
	bool FDisablePOI;
	System::UnicodeString FVersion;
	bool FShowRotateControl;
	void __fastcall SetMapTypeID(const TTMSFNCGoogleMapsMapTypeID Value);
	void __fastcall SetShowTraffic(const bool Value);
	void __fastcall SetMapStyle(const System::UnicodeString Value);
	void __fastcall SetShowBicycling(const bool Value);
	void __fastcall SetSetShowStreetViewControl(const bool Value);
	void __fastcall SetStreetView(TTMSFNCGoogleMapsStreetView* const Value);
	void __fastcall SetMapID(const System::UnicodeString Value);
	void __fastcall SetHeading(const double Value);
	void __fastcall SetTilt(const double Value);
	void __fastcall SetShowScaleControl(const bool Value);
	void __fastcall SetDisabelPOI(const bool Value);
	void __fastcall SetVersion(const System::UnicodeString Value);
	void __fastcall SetShowRotateControl(const bool Value);
	void __fastcall SetShowKeyboardShortcuts(const bool Value);
	
public:
	__fastcall virtual TTMSFNCGoogleMapsOptions();
	__fastcall virtual ~TTMSFNCGoogleMapsOptions();
	
__published:
	__property System::UnicodeString MapID = {read=FMapID, write=SetMapID};
	__property TTMSFNCGoogleMapsMapTypeID MapTypeID = {read=FMapTypeID, write=SetMapTypeID, default=0};
	__property bool ShowTraffic = {read=FShowTraffic, write=SetShowTraffic, default=0};
	__property bool ShowBicycling = {read=FShowBicycling, write=SetShowBicycling, default=0};
	__property bool ShowStreetViewControl = {read=FShowStreetViewControl, write=SetSetShowStreetViewControl, default=1};
	__property bool ShowScaleControl = {read=FShowScaleControl, write=SetShowScaleControl, default=0};
	__property bool ShowKeyboardShortcuts = {read=FShowKeyboardShortcuts, write=SetShowKeyboardShortcuts, default=1};
	__property bool ShowRotateControl = {read=FShowRotateControl, write=SetShowRotateControl, default=1};
	__property System::UnicodeString MapStyle = {read=FMapStyle, write=SetMapStyle};
	__property BackgroundColor = {default=-4144960};
	__property TTMSFNCGoogleMapsStreetView* StreetView = {read=FStreetView, write=SetStreetView};
	__property double Tilt = {read=FTilt, write=SetTilt};
	__property double Heading = {read=FHeading, write=SetHeading};
	__property bool DisablePOI = {read=FDisablePOI, write=SetDisabelPOI, nodefault};
	__property System::UnicodeString Version = {read=FVersion, write=SetVersion};
};


class PASCALIMPLEMENTATION TTMSFNCCustomGoogleMaps : public Fmx::Tmsfncmaps::TTMSFNCCustomMaps
{
	typedef Fmx::Tmsfncmaps::TTMSFNCCustomMaps inherited;
	
private:
	TTMSFNCGoogleMapsKMLLayers* FKMLLayers;
	TTMSFNCGoogleMapsOverlayViews* FOverlayViews;
	TTMSFNCGoogleMapsDirections* FDirections;
	TTMSFNCGoogleMapsClusters* FClusters;
	Fmx::Tmsfncmaps::TTMSFNCMapsBaseEvent FOnMarkerDragEnd;
	Fmx::Tmsfncmaps::TTMSFNCMapsBaseEvent FOnPolyElementDragEnd;
	Fmx::Tmsfncmaps::TTMSFNCMapsBaseEvent FOnPolyElementEditEnd;
	Fmx::Tmsfncmaps::TTMSFNCMapsBaseEvent FOnClusterClick;
	Fmx::Tmsfncmaps::TTMSFNCMapsBaseEvent FOnOverlayViewClick;
	Fmx::Tmsfncmaps::TTMSFNCMapsBaseEvent FOnClusterMouseLeave;
	Fmx::Tmsfncmaps::TTMSFNCMapsBaseEvent FOnClusterMouseEnter;
	Fmx::Tmsfncmaps::TTMSFNCMapsBaseEvent FOnStreetViewChange;
	TTMSFNCGoogleMapsDirectionsEvent FOnRetrievedDirectionsData;
	TTMSFNCGoogleMapsOptions* __fastcall GetOptions();
	void __fastcall SetKMLLayers(TTMSFNCGoogleMapsKMLLayers* const Value);
	void __fastcall SetOverlayViews(TTMSFNCGoogleMapsOverlayViews* const Value);
	void __fastcall SetDirections(TTMSFNCGoogleMapsDirections* const Value);
	TTMSFNCGoogleMapsMarkers* __fastcall GetMarkers();
	TTMSFNCGoogleMapsPolylines* __fastcall GetPolylines();
	void __fastcall SetClusters(TTMSFNCGoogleMapsClusters* const Value);
	TTMSFNCGoogleMapsPolygons* __fastcall GetPolygons();
	TTMSFNCGoogleMapsRectangles* __fastcall GetRectangles();
	TTMSFNCGoogleMapsCircles* __fastcall GetCircles();
	HIDESBASE void __fastcall SetCircles(TTMSFNCGoogleMapsCircles* const Value);
	HIDESBASE void __fastcall SetMarkers(TTMSFNCGoogleMapsMarkers* const Value);
	HIDESBASE void __fastcall SetOptions(TTMSFNCGoogleMapsOptions* const Value);
	HIDESBASE void __fastcall SetPolygons(TTMSFNCGoogleMapsPolygons* const Value);
	HIDESBASE void __fastcall SetPolylines(TTMSFNCGoogleMapsPolylines* const Value);
	HIDESBASE void __fastcall SetRectangles(TTMSFNCGoogleMapsRectangles* const Value);
	
protected:
	virtual System::UnicodeString __fastcall GetDocURL();
	virtual System::UnicodeString __fastcall GetMapID();
	virtual System::UnicodeString __fastcall GetAPIVersion();
	virtual double __fastcall GetHeading();
	virtual double __fastcall GetTilt();
	virtual int __fastcall GetVersionNr();
	virtual System::UnicodeString __fastcall GetAddOrUpdateKMLLayerFunction();
	virtual System::UnicodeString __fastcall GetDeleteKMLLayerFunction();
	virtual System::UnicodeString __fastcall GetAddOrUpdateDirectionsFunction();
	virtual System::UnicodeString __fastcall GetDeleteDirectionsFunction();
	virtual System::UnicodeString __fastcall GetAddOrUpdateClusterFunction();
	virtual System::UnicodeString __fastcall GetDeleteClusterFunction();
	virtual Fmx::Tmsfncmaps::TTMSFNCMapsMarkersClass __fastcall GetMarkersClass();
	virtual Fmx::Tmsfncmaps::TTMSFNCMapsPolylinesClass __fastcall GetPolylinesClass();
	virtual Fmx::Tmsfncmaps::TTMSFNCMapsPolygonsClass __fastcall GetPolygonsClass();
	virtual Fmx::Tmsfncmaps::TTMSFNCMapsRectanglesClass __fastcall GetRectanglesClass();
	virtual Fmx::Tmsfncmaps::TTMSFNCMapsCirclesClass __fastcall GetCirclesClass();
	virtual Fmx::Tmsfncmaps::TTMSFNCMapsOptionsClass __fastcall GetOptionsClass();
	virtual System::UnicodeString __fastcall GetCustomFunctions();
	virtual System::UnicodeString __fastcall GetCustomGlobalVariables();
	virtual System::UnicodeString __fastcall GetCustomOptions();
	virtual System::UnicodeString __fastcall GetAddCustomObjects();
	virtual System::UnicodeString __fastcall GetCustomMap();
	virtual TTMSFNCGoogleMapsStreetViewClass __fastcall GetStreetViewClass();
	TTMSFNCGoogleMapsDirectionsItem* __fastcall AddDirectionsInt(System::UnicodeString AOrigin, System::UnicodeString ADestination, const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec &AOriginCoordinate, const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec &ADestinationCoordinate, bool AShowMarkers = true, bool AShowPolyline = true, System::Uitypes::TAlphaColor AStrokeColor = (System::Uitypes::TAlphaColor)(0xff0000ff), int AStrokeWidth = 0x2, float AStrokeOpacity = 1.000000E+00f, TTMSFNCGoogleMapsDirectionsTravelMode ATravelMode = (TTMSFNCGoogleMapsDirectionsTravelMode)(0x0), bool AAVoidTolls = false, System::Classes::TStringList* AWayPoints = (System::Classes::TStringList*)(0x0), bool AOptimizeWayPoints = false)/* overload */;
	TTMSFNCGoogleMapsDirectionsData __fastcall ParseDirectionsDataInt(System::UnicodeString AID, System::UnicodeString AJSON);
	virtual void __fastcall CallCustomEvent(Fmx::Tmsfncmaps::TTMSFNCMapsEventData* AEventData);
	virtual void __fastcall DoMarkerDragEnd(Fmx::Tmsfncmaps::TTMSFNCMapsEventData* AEventData);
	virtual void __fastcall DoClusterClick(Fmx::Tmsfncmaps::TTMSFNCMapsEventData* AEventData);
	virtual void __fastcall DoOverlayViewClick(Fmx::Tmsfncmaps::TTMSFNCMapsEventData* AEventData);
	virtual void __fastcall DoClusterMouseEnter(Fmx::Tmsfncmaps::TTMSFNCMapsEventData* AEventData);
	virtual void __fastcall DoClusterMouseLeave(Fmx::Tmsfncmaps::TTMSFNCMapsEventData* AEventData);
	virtual void __fastcall DoPolyElementDragEnd(Fmx::Tmsfncmaps::TTMSFNCMapsEventData* AEventData);
	virtual void __fastcall DoPolyElementEditEnd(Fmx::Tmsfncmaps::TTMSFNCMapsEventData* AEventData);
	virtual void __fastcall DoStreetViewChange(Fmx::Tmsfncmaps::TTMSFNCMapsEventData* AEventData);
	virtual void __fastcall DoRetrievedDirectionsData(Fmx::Tmsfncmaps::TTMSFNCMapsEventData* AEventData, const TTMSFNCGoogleMapsDirectionsData &ADirectionsData);
	virtual void __fastcall DoAddDirections(const System::UnicodeString AValue);
	virtual void __fastcall GetLinks(Fmx::Tmsfncmaps::TTMSFNCMapsLinksList* AList, bool AIncludeContent = true, bool ACheckReady = true);
	virtual void __fastcall UpdateKMLLayers();
	virtual void __fastcall UpdateOverlayViews();
	virtual void __fastcall DoUpdateKMLLayers(const System::UnicodeString AValue);
	virtual void __fastcall DoUpdateOverlayViews(const System::UnicodeString AValue);
	virtual void __fastcall UpdateDirections();
	virtual void __fastcall DoUpdateDirections(const System::UnicodeString AValue);
	virtual void __fastcall UpdateClusters();
	virtual void __fastcall DoUpdateClusters(const System::UnicodeString AValue);
	virtual void __fastcall CreateClasses();
	void __fastcall StreetViewChanged(System::TObject* Sender);
	__property TTMSFNCGoogleMapsOptions* Options = {read=GetOptions, write=SetOptions};
	__property TTMSFNCGoogleMapsClusters* Clusters = {read=FClusters, write=SetClusters};
	__property TTMSFNCGoogleMapsKMLLayers* KMLLayers = {read=FKMLLayers, write=SetKMLLayers};
	__property TTMSFNCGoogleMapsDirections* Directions = {read=FDirections, write=SetDirections};
	__property TTMSFNCGoogleMapsMarkers* Markers = {read=GetMarkers, write=SetMarkers};
	__property TTMSFNCGoogleMapsPolylines* Polylines = {read=GetPolylines, write=SetPolylines};
	__property TTMSFNCGoogleMapsPolygons* Polygons = {read=GetPolygons, write=SetPolygons};
	__property TTMSFNCGoogleMapsRectangles* Rectangles = {read=GetRectangles, write=SetRectangles};
	__property TTMSFNCGoogleMapsCircles* Circles = {read=GetCircles, write=SetCircles};
	__property Fmx::Tmsfncmaps::TTMSFNCMapsBaseEvent OnMarkerDragEnd = {read=FOnMarkerDragEnd, write=FOnMarkerDragEnd};
	__property Fmx::Tmsfncmaps::TTMSFNCMapsBaseEvent OnClusterClick = {read=FOnClusterClick, write=FOnClusterClick};
	__property Fmx::Tmsfncmaps::TTMSFNCMapsBaseEvent OnClusterMouseEnter = {read=FOnClusterMouseEnter, write=FOnClusterMouseEnter};
	__property Fmx::Tmsfncmaps::TTMSFNCMapsBaseEvent OnClusterMouseLeave = {read=FOnClusterMouseLeave, write=FOnClusterMouseLeave};
	__property Fmx::Tmsfncmaps::TTMSFNCMapsBaseEvent OnOverlayViewClick = {read=FOnOverlayViewClick, write=FOnOverlayViewClick};
	__property Fmx::Tmsfncmaps::TTMSFNCMapsBaseEvent OnPolyElementDragEnd = {read=FOnPolyElementDragEnd, write=FOnPolyElementDragEnd};
	__property Fmx::Tmsfncmaps::TTMSFNCMapsBaseEvent OnPolyElementEditEnd = {read=FOnPolyElementEditEnd, write=FOnPolyElementEditEnd};
	__property Fmx::Tmsfncmaps::TTMSFNCMapsBaseEvent OnStreetViewChange = {read=FOnStreetViewChange, write=FOnStreetViewChange};
	__property TTMSFNCGoogleMapsDirectionsEvent OnRetrievedDirectionsData = {read=FOnRetrievedDirectionsData, write=FOnRetrievedDirectionsData};
	
public:
	__fastcall virtual TTMSFNCCustomGoogleMaps(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCCustomGoogleMaps();
	virtual void __fastcall EndUpdate();
	HIDESBASE virtual TTMSFNCGoogleMapsMarker* __fastcall AddMarker(const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec &ACoordinate, System::UnicodeString ATitle = System::UnicodeString(), System::UnicodeString AIconURL = System::UnicodeString())/* overload */;
	HIDESBASE virtual TTMSFNCGoogleMapsMarker* __fastcall AddMarker(double ALatitude, double ALongitude, System::UnicodeString ATitle = System::UnicodeString(), System::UnicodeString AIconURL = System::UnicodeString())/* overload */;
	HIDESBASE virtual TTMSFNCGoogleMapsPolyline* __fastcall AddPolyline(Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRecArray ACoordinates, bool AClose = false);
	HIDESBASE virtual TTMSFNCGoogleMapsPolygon* __fastcall AddPolygon(Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRecArray ACoordinates, bool AClose = false);
	HIDESBASE virtual TTMSFNCGoogleMapsCircle* __fastcall AddCircle(const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec &ACenter, double ARadius = 1.000000E+04);
	HIDESBASE virtual TTMSFNCGoogleMapsRectangle* __fastcall AddRectangle(const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsBoundsRec &ABounds);
	TTMSFNCGoogleMapsKMLLayer* __fastcall AddKMLLayer(System::UnicodeString AURL, bool AZoomToBounds = true);
	TTMSFNCGoogleMapsDirectionsItem* __fastcall AddDirections(System::UnicodeString AOrigin, System::UnicodeString ADestination, bool AShowMarkers = true, bool AShowPolyline = true, System::Uitypes::TAlphaColor AStrokeColor = (System::Uitypes::TAlphaColor)(0xff0000ff), int AStrokeWidth = 0x2, float AStrokeOpacity = 1.000000E+00f, TTMSFNCGoogleMapsDirectionsTravelMode ATravelMode = (TTMSFNCGoogleMapsDirectionsTravelMode)(0x0), bool AAvoidTolls = false, System::Classes::TStringList* AWayPoints = (System::Classes::TStringList*)(0x0), bool AOptimizeWayPoints = false)/* overload */;
	TTMSFNCGoogleMapsDirectionsItem* __fastcall AddDirections(const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec &AOriginCoordinate, const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec &ADestinationCoordinate, bool AShowMarkers = true, bool AShowPolyline = true, System::Uitypes::TAlphaColor AStrokeColor = (System::Uitypes::TAlphaColor)(0xff0000ff), int AStrokeWidth = 0x2, float AStrokeOpacity = 1.000000E+00f, TTMSFNCGoogleMapsDirectionsTravelMode ATravelMode = (TTMSFNCGoogleMapsDirectionsTravelMode)(0x0))/* overload */;
	TTMSFNCGoogleMapsDirectionsItem* __fastcall AddDirections(double AOriginLatitude, double AOriginLongitude, double ADestinationLatitude, double ADestinationLongitude, bool AShowMarkers = true, bool AShowPolyline = true, System::Uitypes::TAlphaColor AStrokeColor = (System::Uitypes::TAlphaColor)(0xff0000ff), int AStrokeWidth = 0x2, float AStrokeOpacity = 1.000000E+00f, TTMSFNCGoogleMapsDirectionsTravelMode ATravelMode = (TTMSFNCGoogleMapsDirectionsTravelMode)(0x0))/* overload */;
	__property TTMSFNCGoogleMapsOverlayViews* OverlayViews = {read=FOverlayViews, write=SetOverlayViews};
	TTMSFNCGoogleMapsOverlayView* __fastcall AddOverlayView();
	virtual System::UnicodeString __fastcall GetAddOrUpdateOverlayViewFunction();
	virtual System::UnicodeString __fastcall GetDeleteOverlayViewFunction();
	virtual void __fastcall Clear();
	void __fastcall ClearKMLLayers();
	void __fastcall ClearDirections();
	void __fastcall ClearClusters();
	void __fastcall ClearOverlayViews();
};


class PASCALIMPLEMENTATION TTMSFNCGoogleMaps : public TTMSFNCCustomGoogleMaps
{
	typedef TTMSFNCCustomGoogleMaps inherited;
	
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
	__property OnMapRightClick;
	__property OnMapDblClick;
	__property OnMapMouseUp;
	__property OnMapMouseDown;
	__property OnMapMouseMove;
	__property OnMapMouseEnter;
	__property OnMapMouseLeave;
	__property OnMarkerClick;
	__property OnMarkerRightClick;
	__property OnMarkerDblClick;
	__property OnMarkerMouseUp;
	__property OnMarkerMouseDown;
	__property OnMarkerMouseEnter;
	__property OnMarkerMouseLeave;
	__property OnPolyElementClick;
	__property OnPolyElementRightClick;
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
	__property APIKey = {default=0};
	__property Polylines;
	__property Polygons;
	__property Circles;
	__property Rectangles;
	__property Markers;
	__property Options;
	__property Version = {default=0};
	__property LocalFileAccess = {default=0};
	__property ElementContainers;
	__property HeadLinks;
	__property OnMarkerDragEnd;
	__property OnClusterClick;
	__property OnClusterMouseEnter;
	__property OnClusterMouseLeave;
	__property OnOverlayViewClick;
	__property OnPolyElementDragEnd;
	__property OnPolyElementEditEnd;
	__property OnStreetViewChange;
	__property OnRetrievedDirectionsData;
	__property KMLLayers;
	__property Directions;
	__property Clusters;
	__property RouteCalculator;
	__property OverlayViews;
	__property DesigntimeEnabled = {default=1};
public:
	/* TTMSFNCCustomGoogleMaps.Create */ inline __fastcall virtual TTMSFNCGoogleMaps(System::Classes::TComponent* AOwner) : TTMSFNCCustomGoogleMaps(AOwner) { }
	/* TTMSFNCCustomGoogleMaps.Destroy */ inline __fastcall virtual ~TTMSFNCGoogleMaps() { }
	
};


//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x7);
static constexpr System::Int8 REL_VER = System::Int8(0x0);
static constexpr System::Int8 BLD_VER = System::Int8(0x0);
#define MAPSTYLEDEFAULT u"[]"
#define MAPSTYLEDISABLEPOI u" [\r     {\r         featureType: \"poi\",\r         eleme"\
	u"ntType: \"labels\",\r         stylers: [\r               {"\
	u" visibility: \"off\" }\r         ]\r     }\r ]"
#define MAPSTYLENIGHT u"[\r{\r  \"elementType\": \"geometry\",\r  \"stylers\": [\r"\
	u"    {\r      \"color\": \"#242f3e\"\r    }\r  ]\r},\r{\r  "\
	u"\"elementType\": \"labels.text.fill\",\r  \"stylers\": [\r"\
	u"    {\r      \"color\": \"#746855\"\r    }\r  ]\r},\r{\r  "\
	u"\"elementType\": \"labels.text.stroke\",\r  \"stylers\": ["\
	u"\r    {\r      \"color\": \"#242f3e\"\r    }\r  ]\r},\r{\r"\
	u"  \"featureType\": \"administrative.locality\",\r  \"eleme"\
	u"ntType\": \"labels.text.fill\",\r  \"stylers\": [\r    {\r"\
	u"      \"color\": \"#d59563\"\r    }\r  ]\r},\r{\r  \"featu"\
	u"reType\": \"poi\",\r  \"elementType\": \"labels.text.fill\""\
	u",\r  \"stylers\": [\r    {\r      \"color\": \"#d59563\"\r"\
	u"    }\r  ]\r},\r{\r  \"featureType\": \"poi.park\",\r  \"e"\
	u"lementType\": \"geometry\",\r  \"stylers\": [\r    {\r    "\
	u"  \"color\": \"#263c3f\"\r    }\r  ]\r},\r{\r  \"featureTy"\
	u"pe\": \"poi.park\",\r  \"elementType\": \"labels.text.fill"\
	u"\",\r  \"stylers\": [\r    {\r      \"color\": \"#6b9a76\""\
	u"\r    }\r  ]\r},\r{\r  \"featureType\": \"road\",\r  \"ele"\
	u"mentType\": \"geometry\",\r  \"stylers\": [\r    {\r      "\
	u"\"color\": \"#38414e\"\r    }\r  ]\r},\r{\r  \"featureType"\
	u"\": \"road\",\r  \"elementType\": \"geometry.stroke\",\r  "\
	u"\"stylers\": [\r    {\r      \"color\": \"#212a37\"\r    }"\
	u"\r  ]\r},\r{\r  \"featureType\": \"road\",\r  \"elementTyp"\
	u"e\": \"labels.text.fill\",\r  \"stylers\": [\r    {\r     "\
	u" \"color\": \"#9ca5b3\"\r    }\r  ]\r},\r{\r  \"featureTyp"\
	u"e\": \"road.highway\",\r  \"elementType\": \"geometry\",\r"\
	u"  \"stylers\": [\r    {\r      \"color\": \"#746855\"\r   "\
	u" }\r  ]\r},\r{\r  \"featureType\": \"road.highway\",\r  \""\
	u"elementType\": \"geometry.stroke\",\r  \"stylers\": [\r   "\
	u" {\r      \"color\": \"#1f2835\"\r    }\r  ]\r},\r{\r  \"f"\
	u"eatureType\": \"road.highway\",\r  \"elementType\": \"labe"\
	u"ls.text.fill\",\r  \"stylers\": [\r    {\r      \"color\":"\
	u" \"#f3d19c\"\r    }\r  ]\r},\r{\r  \"featureType\": \"tran"\
	u"sit\",\r  \"elementType\": \"geometry\",\r  \"stylers\": ["\
	u"\r    {\r      \"color\": \"#2f3948\"\r    }\r  ]\r},\r{\r"\
	u"  \"featureType\": \"transit.station\",\r  \"elementType\""\
	u": \"labels.text.fill\",\r  \"stylers\": [\r    {\r      \""\
	u"color\": \"#d59563\"\r    }\r  ]\r},\r{\r  \"featureType\""\
	u": \"water\",\r  \"elementType\": \"geometry\",\r  \"styler"\
	u"s\": [\r    {\r      \"color\": \"#17263c\"\r    }\r  ]\r}"\
	u",\r{\r  \"featureType\": \"water\",\r  \"elementType\": \""\
	u"labels.text.fill\",\r  \"stylers\": [\r    {\r      \"colo"\
	u"r\": \"#515c6d\"\r    }\r  ]\r},\r{\r  \"featureType\": \""\
	u"water\",\r  \"elementType\": \"labels.text.stroke\",\r  \""\
	u"stylers\": [\r    {\r      \"color\": \"#17263c\"\r    }\r"\
	u"  ]\r}\r]"
}	/* namespace Tmsfncgooglemaps */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCGOOGLEMAPS)
using namespace Fmx::Tmsfncgooglemaps;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncgooglemapsHPP
