// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCMapKit.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncmapkitHPP
#define Fmx_TmsfncmapkitHPP

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
#include <FMX.TMSFNCGraphicsTypes.hpp>
#include <FMX.TMSFNCJSONReader.hpp>
#include <FMX.TMSFNCMaps.hpp>
#include <System.SysUtils.hpp>
#include <System.UITypes.hpp>
#include <FMX.TMSFNCCustomControl.hpp>
#include <FMX.Controls.hpp>
#include <FMX.Types.hpp>
#include <System.Generics.Defaults.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncmapkit
{
//-- forward type declarations -----------------------------------------------
struct TTMSFNCMapKitStepRec;
struct TTMSFNCMapKitRouteRec;
struct TTMSFNCMapKitDirectionsData;
class DELPHICLASS TTMSFNCMapKitDirectionsItem;
class DELPHICLASS TTMSFNCMapKitDirections;
class DELPHICLASS TTMSFNCMapKitOptions;
class DELPHICLASS TTMSFNCMapKitPolygon;
class DELPHICLASS TTMSFNCMapKitPolygons;
class DELPHICLASS TTMSFNCCustomMapKit;
class DELPHICLASS TTMSFNCMapKit;
//-- type declarations -------------------------------------------------------
enum DECLSPEC_DENUM TTMSFNCMapKitDirectionsTravelMode : unsigned char { dtmDriving, dtmWalking };

struct DECLSPEC_DRECORD TTMSFNCMapKitStepRec
{
public:
	System::UnicodeString Instructions;
	int Distance;
	Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRecArray Path;
};


struct DECLSPEC_DRECORD TTMSFNCMapKitRouteRec
{
	
private:
	typedef System::DynamicArray<TTMSFNCMapKitStepRec> _TTMSFNCMapKitRouteRec__1;
	
	
public:
	System::UnicodeString Name;
	int Distance;
	int TravelTime;
	TTMSFNCMapKitDirectionsTravelMode TravelMode;
	_TTMSFNCMapKitRouteRec__1 Steps;
};


struct DECLSPEC_DRECORD TTMSFNCMapKitDirectionsData
{
	
private:
	typedef System::DynamicArray<TTMSFNCMapKitRouteRec> _TTMSFNCMapKitDirectionsData__1;
	
	
public:
	_TTMSFNCMapKitDirectionsData__1 Routes;
};


typedef void __fastcall (__closure *TTMSFNCMapKitDirectionsEvent)(System::TObject* Sender, Fmx::Tmsfncmaps::TTMSFNCMapsEventData* AEventData, TTMSFNCMapKitDirectionsData ADirectionsData);

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCMapKitDirectionsItem : public System::Classes::TCollectionItem
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
	TTMSFNCMapKitDirectionsTravelMode FTravelMode;
	bool FShowPolyline;
	System::UnicodeString __fastcall GetID();
	bool __fastcall IsDestinationStored();
	bool __fastcall IsOriginStored();
	bool __fastcall IsShowMarkersStored();
	bool __fastcall IsStrokeOpacityStored();
	bool __fastcall IsStrokeWidthStored();
	bool __fastcall IsTravelModeStored();
	bool __fastcall IsShowPolylineStored();
	
protected:
	virtual void __fastcall UpdateDirectionsItem();
	
public:
	__fastcall virtual TTMSFNCMapKitDirectionsItem(System::Classes::TCollection* Collection);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual ~TTMSFNCMapKitDirectionsItem();
	__property void * DataPointer = {read=FDataPointer, write=FDataPointer};
	__property bool DataBoolean = {read=FDataBoolean, write=FDataBoolean, nodefault};
	__property System::TObject* DataObject = {read=FDataObject, write=FDataObject};
	__property System::UnicodeString DataString = {read=FDataString, write=FDataString};
	__property NativeInt DataInteger = {read=FDataInteger, write=FDataInteger, nodefault};
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
	__property TTMSFNCMapKitDirectionsTravelMode TravelMode = {read=FTravelMode, stored=IsTravelModeStored, default=0};
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCMapKitDirections : public Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCMapKitDirectionsItem*>
{
	typedef Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCMapKitDirectionsItem*> inherited;
	
public:
	TTMSFNCMapKitDirectionsItem* operator[](int Index) { return this->Items[Index]; }
	
private:
	Fmx::Tmsfncmaps::TTMSFNCCustomMaps* FOwner;
	HIDESBASE TTMSFNCMapKitDirectionsItem* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCMapKitDirectionsItem* const Value);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall CreateItemClass();
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	
public:
	__fastcall virtual TTMSFNCMapKitDirections(Fmx::Tmsfncmaps::TTMSFNCCustomMaps* AOwner);
	__property TTMSFNCMapKitDirectionsItem* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	HIDESBASE virtual void __fastcall Clear();
	HIDESBASE TTMSFNCMapKitDirectionsItem* __fastcall Add();
	HIDESBASE TTMSFNCMapKitDirectionsItem* __fastcall Insert(int Index);
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCMapKitDirections() { }
	
};

#pragma pack(pop)

class PASCALIMPLEMENTATION TTMSFNCMapKitOptions : public Fmx::Tmsfncmaps::TTMSFNCMapsOptions
{
	typedef Fmx::Tmsfncmaps::TTMSFNCMapsOptions inherited;
	
private:
	float FMapRotation;
	void __fastcall SetMapRotation(const float Value);
	
public:
	__fastcall virtual TTMSFNCMapKitOptions();
	
__published:
	__property float MapRotation = {read=FMapRotation, write=SetMapRotation};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTMSFNCMapKitOptions() { }
	
};


#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCMapKitPolygon : public Fmx::Tmsfncmaps::TTMSFNCMapsPolygon
{
	typedef Fmx::Tmsfncmaps::TTMSFNCMapsPolygon inherited;
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual TTMSFNCMapKitPolygon(System::Classes::TCollection* Collection);
	__fastcall virtual ~TTMSFNCMapKitPolygon();
	virtual Fmx::Tmsfncmaps::TTMSFNCMapsPolyElementHole* __fastcall AddHole(Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRecArray ACoordinates);
	
__published:
	__property Holes;
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCMapKitPolygons : public Fmx::Tmsfncmaps::TTMSFNCMapsPolygons
{
	typedef Fmx::Tmsfncmaps::TTMSFNCMapsPolygons inherited;
	
public:
	TTMSFNCMapKitPolygon* operator[](int Index) { return this->Items[Index]; }
	
private:
	HIDESBASE TTMSFNCMapKitPolygon* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCMapKitPolygon* const Value);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall CreateItemClass();
	
public:
	__property TTMSFNCMapKitPolygon* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	HIDESBASE TTMSFNCMapKitPolygon* __fastcall Add();
	HIDESBASE TTMSFNCMapKitPolygon* __fastcall Insert(int Index);
public:
	/* TTMSFNCMapsPolyElements.Create */ inline __fastcall virtual TTMSFNCMapKitPolygons(Fmx::Tmsfncmaps::TTMSFNCCustomMaps* AOwner) : Fmx::Tmsfncmaps::TTMSFNCMapsPolygons(AOwner) { }
	
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCMapKitPolygons() { }
	
};

#pragma pack(pop)

class PASCALIMPLEMENTATION TTMSFNCCustomMapKit : public Fmx::Tmsfncmaps::TTMSFNCCustomMaps
{
	typedef Fmx::Tmsfncmaps::TTMSFNCCustomMaps inherited;
	
private:
	TTMSFNCMapKitDirections* FDirections;
	TTMSFNCMapKitDirectionsEvent FOnRetrievedDirectionsData;
	Fmx::Tmsfncmaps::TTMSFNCMapsBaseEvent FOnMapRotationChanged;
	TTMSFNCMapKitOptions* __fastcall GetOptions();
	HIDESBASE void __fastcall SetOptions(TTMSFNCMapKitOptions* const Value);
	void __fastcall SetDirections(TTMSFNCMapKitDirections* const Value);
	TTMSFNCMapKitPolygons* __fastcall GetPolygons();
	HIDESBASE void __fastcall SetPolygons(TTMSFNCMapKitPolygons* const Value);
	
protected:
	virtual System::UnicodeString __fastcall GetDocURL();
	virtual int __fastcall GetVersionNr();
	virtual Fmx::Tmsfncmaps::TTMSFNCMapsOptionsClass __fastcall GetOptionsClass();
	virtual System::UnicodeString __fastcall GetCustomFunctions();
	virtual System::UnicodeString __fastcall GetCustomGlobalVariables();
	virtual System::UnicodeString __fastcall GetCustomOptions();
	virtual System::UnicodeString __fastcall GetAddCustomObjects();
	virtual System::UnicodeString __fastcall GetCustomMap();
	virtual System::UnicodeString __fastcall GetAddOrUpdateDirectionsFunction();
	virtual System::UnicodeString __fastcall GetDeleteDirectionsFunction();
	TTMSFNCMapKitDirectionsItem* __fastcall AddDirectionsInt(System::UnicodeString AOrigin, System::UnicodeString ADestination, const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec &AOriginCoordinate, const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec &ADestinationCoordinate, bool AShowMarkers = true, bool AShowPolyline = true, System::Uitypes::TAlphaColor AStrokeColor = (System::Uitypes::TAlphaColor)(0xff0000ff), int AStrokeWidth = 0x2, float AStrokeOpacity = 1.000000E+00f, TTMSFNCMapKitDirectionsTravelMode ATravelMode = (TTMSFNCMapKitDirectionsTravelMode)(0x0))/* overload */;
	TTMSFNCMapKitDirectionsData __fastcall ParseDirectionsDataInt(System::UnicodeString AID, System::UnicodeString AJSON);
	virtual void __fastcall CallCustomEvent(Fmx::Tmsfncmaps::TTMSFNCMapsEventData* AEventData);
	virtual void __fastcall DoRetrievedDirectionsData(Fmx::Tmsfncmaps::TTMSFNCMapsEventData* AEventData, TTMSFNCMapKitDirectionsData ADirectionsData);
	virtual void __fastcall DoMapRotationChanged(Fmx::Tmsfncmaps::TTMSFNCMapsEventData* AEventData);
	virtual void __fastcall DoAddDirections(const System::UnicodeString AValue);
	virtual void __fastcall UpdateDirections();
	virtual void __fastcall DoUpdateDirections(const System::UnicodeString AValue);
	__property TTMSFNCMapKitPolygons* Polygons = {read=GetPolygons, write=SetPolygons};
	__property TTMSFNCMapKitOptions* Options = {read=GetOptions, write=SetOptions};
	__property TTMSFNCMapKitDirections* Directions = {read=FDirections, write=SetDirections};
	__property TTMSFNCMapKitDirectionsEvent OnRetrievedDirectionsData = {read=FOnRetrievedDirectionsData, write=FOnRetrievedDirectionsData};
	__property Fmx::Tmsfncmaps::TTMSFNCMapsBaseEvent OnMapRotationChanged = {read=FOnMapRotationChanged, write=FOnMapRotationChanged};
	
public:
	__fastcall virtual TTMSFNCCustomMapKit(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCCustomMapKit();
	virtual void __fastcall EndUpdate();
	TTMSFNCMapKitDirectionsItem* __fastcall AddDirections(System::UnicodeString AOrigin, System::UnicodeString ADestination, bool AShowMarkers = true, bool AShowPolyline = true, System::Uitypes::TAlphaColor AStrokeColor = (System::Uitypes::TAlphaColor)(0xff0000ff), int AStrokeWidth = 0x2, float AStrokeOpacity = 1.000000E+00f, TTMSFNCMapKitDirectionsTravelMode ATravelMode = (TTMSFNCMapKitDirectionsTravelMode)(0x0))/* overload */;
	TTMSFNCMapKitDirectionsItem* __fastcall AddDirections(const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec &AOriginCoordinate, const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec &ADestinationCoordinate, bool AShowMarkers = true, bool AShowPolyline = true, System::Uitypes::TAlphaColor AStrokeColor = (System::Uitypes::TAlphaColor)(0xff0000ff), int AStrokeWidth = 0x2, float AStrokeOpacity = 1.000000E+00f, TTMSFNCMapKitDirectionsTravelMode ATravelMode = (TTMSFNCMapKitDirectionsTravelMode)(0x0))/* overload */;
	TTMSFNCMapKitDirectionsItem* __fastcall AddDirections(double AOriginLatitude, double AOriginLongitude, double ADestinationLatitude, double ADestinationLongitude, bool AShowMarkers = true, bool AShowPolyline = true, System::Uitypes::TAlphaColor AStrokeColor = (System::Uitypes::TAlphaColor)(0xff0000ff), int AStrokeWidth = 0x2, float AStrokeOpacity = 1.000000E+00f, TTMSFNCMapKitDirectionsTravelMode ATravelMode = (TTMSFNCMapKitDirectionsTravelMode)(0x0))/* overload */;
	virtual void __fastcall Clear();
	void __fastcall ClearDirections();
	HIDESBASE virtual TTMSFNCMapKitPolygon* __fastcall AddPolygon(Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRecArray ACoordinates, bool AClose = false);
};


class PASCALIMPLEMENTATION TTMSFNCMapKit : public TTMSFNCCustomMapKit
{
	typedef TTMSFNCCustomMapKit inherited;
	
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
	__property OnMarkerClick;
	__property OnMarkerDblClick;
	__property OnMarkerMouseUp;
	__property OnMarkerMouseDown;
	__property OnMarkerMouseEnter;
	__property OnMarkerMouseLeave;
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
	__property OnRetrievedDirectionsData;
	__property OnMapRotationChanged;
	__property APIKey = {default=0};
	__property Polylines;
	__property Polygons;
	__property Circles;
	__property Rectangles;
	__property Markers;
	__property Options;
	__property Directions;
	__property Version = {default=0};
	__property LocalFileAccess = {default=0};
	__property ElementContainers;
	__property HeadLinks;
	__property DesigntimeEnabled = {default=1};
public:
	/* TTMSFNCCustomMapKit.Create */ inline __fastcall virtual TTMSFNCMapKit(System::Classes::TComponent* AOwner) : TTMSFNCCustomMapKit(AOwner) { }
	/* TTMSFNCCustomMapKit.Destroy */ inline __fastcall virtual ~TTMSFNCMapKit() { }
	
};


//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x1);
static constexpr System::Int8 REL_VER = System::Int8(0x0);
static constexpr System::Int8 BLD_VER = System::Int8(0x0);
}	/* namespace Tmsfncmapkit */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCMAPKIT)
using namespace Fmx::Tmsfncmapkit;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncmapkitHPP
