// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCBingMaps.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncbingmapsHPP
#define Fmx_TmsfncbingmapsHPP

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
#include <FMX.TMSFNCMaps.hpp>
#include <FMX.TMSFNCCustomControl.hpp>
#include <FMX.Controls.hpp>
#include <FMX.Types.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncbingmaps
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCBingMapsPolygon;
class DELPHICLASS TTMSFNCBingMapsPolygons;
class DELPHICLASS TTMSFNCCustomBingMaps;
class DELPHICLASS TTMSFNCBingMaps;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TTMSFNCBingMapsPolygon : public Fmx::Tmsfncmaps::TTMSFNCMapsPolygon
{
	typedef Fmx::Tmsfncmaps::TTMSFNCMapsPolygon inherited;
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual TTMSFNCBingMapsPolygon(System::Classes::TCollection* Collection);
	__fastcall virtual ~TTMSFNCBingMapsPolygon();
	virtual Fmx::Tmsfncmaps::TTMSFNCMapsPolyElementHole* __fastcall AddHole(Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRecArray ACoordinates);
	
__published:
	__property Holes;
};


class PASCALIMPLEMENTATION TTMSFNCBingMapsPolygons : public Fmx::Tmsfncmaps::TTMSFNCMapsPolygons
{
	typedef Fmx::Tmsfncmaps::TTMSFNCMapsPolygons inherited;
	
public:
	TTMSFNCBingMapsPolygon* operator[](int Index) { return this->Items[Index]; }
	
private:
	HIDESBASE TTMSFNCBingMapsPolygon* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCBingMapsPolygon* const Value);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall CreateItemClass();
	
public:
	__property TTMSFNCBingMapsPolygon* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	HIDESBASE TTMSFNCBingMapsPolygon* __fastcall Add();
	HIDESBASE TTMSFNCBingMapsPolygon* __fastcall Insert(int Index);
public:
	/* TTMSFNCMapsPolyElements.Create */ inline __fastcall virtual TTMSFNCBingMapsPolygons(Fmx::Tmsfncmaps::TTMSFNCCustomMaps* AOwner) : Fmx::Tmsfncmaps::TTMSFNCMapsPolygons(AOwner) { }
	
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCBingMapsPolygons() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCustomBingMaps : public Fmx::Tmsfncmaps::TTMSFNCCustomMaps
{
	typedef Fmx::Tmsfncmaps::TTMSFNCCustomMaps inherited;
	
private:
	TTMSFNCBingMapsPolygons* __fastcall GetPolygons();
	HIDESBASE void __fastcall SetPolygons(TTMSFNCBingMapsPolygons* const Value);
	
protected:
	virtual System::UnicodeString __fastcall GetDocURL();
	virtual Fmx::Tmsfncmaps::TTMSFNCMapsPolygonsClass __fastcall GetPolygonsClass();
	virtual int __fastcall GetVersionNr();
	__property TTMSFNCBingMapsPolygons* Polygons = {read=GetPolygons, write=SetPolygons};
	
public:
	__fastcall virtual TTMSFNCCustomBingMaps(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCCustomBingMaps();
	HIDESBASE virtual TTMSFNCBingMapsPolygon* __fastcall AddPolygon(Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRecArray ACoordinates, bool AClose = false);
};


class PASCALIMPLEMENTATION TTMSFNCBingMaps : public TTMSFNCCustomBingMaps
{
	typedef TTMSFNCCustomBingMaps inherited;
	
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
	__property DesigntimeEnabled = {default=1};
public:
	/* TTMSFNCCustomBingMaps.Create */ inline __fastcall virtual TTMSFNCBingMaps(System::Classes::TComponent* AOwner) : TTMSFNCCustomBingMaps(AOwner) { }
	/* TTMSFNCCustomBingMaps.Destroy */ inline __fastcall virtual ~TTMSFNCBingMaps() { }
	
};


//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x0);
static constexpr System::Int8 BLD_VER = System::Int8(0x0);
}	/* namespace Tmsfncbingmaps */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCBINGMAPS)
using namespace Fmx::Tmsfncbingmaps;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncbingmapsHPP
