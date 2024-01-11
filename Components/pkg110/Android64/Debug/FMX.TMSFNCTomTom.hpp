// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCTomTom.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfnctomtomHPP
#define Fmx_TmsfnctomtomHPP

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
#include <FMX.TMSFNCMaps.hpp>
#include <FMX.TMSFNCCustomControl.hpp>
#include <FMX.Controls.hpp>
#include <FMX.Types.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>
#include <FMX.TMSFNCRouteCalculator.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfnctomtom
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCTomTomOptions;
class DELPHICLASS TTMSFNCTomTomMarker;
class DELPHICLASS TTMSFNCTomTomMarkers;
class DELPHICLASS TTMSFNCCustomTomTom;
class DELPHICLASS TTMSFNCTomTom;
//-- type declarations -------------------------------------------------------
enum DECLSPEC_DENUM TTMSFNCTomTomMapStyle : unsigned char { tmsDefault, tmsNight, tmsHybrid, tmsHybridNight, tmsLabels, tmsLabelsNight, tmsLight };

class PASCALIMPLEMENTATION TTMSFNCTomTomOptions : public Fmx::Tmsfncmaps::TTMSFNCMapsOptions
{
	typedef Fmx::Tmsfncmaps::TTMSFNCMapsOptions inherited;
	
private:
	TTMSFNCTomTomMapStyle FMapStyle;
	void __fastcall SetMapStyle(const TTMSFNCTomTomMapStyle Value);
	
public:
	__fastcall virtual TTMSFNCTomTomOptions();
	
__published:
	__property TTMSFNCTomTomMapStyle MapStyle = {read=FMapStyle, write=SetMapStyle, default=0};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTMSFNCTomTomOptions() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCTomTomMarker : public Fmx::Tmsfncmaps::TTMSFNCMapsMarker
{
	typedef Fmx::Tmsfncmaps::TTMSFNCMapsMarker inherited;
	
private:
	bool FDraggable;
	void __fastcall SetDraggable(const bool Value);
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual TTMSFNCTomTomMarker(System::Classes::TCollection* Collection);
	__fastcall virtual ~TTMSFNCTomTomMarker();
	
__published:
	__property bool Draggable = {read=FDraggable, write=SetDraggable, default=0};
};


class PASCALIMPLEMENTATION TTMSFNCTomTomMarkers : public Fmx::Tmsfncmaps::TTMSFNCMapsMarkers
{
	typedef Fmx::Tmsfncmaps::TTMSFNCMapsMarkers inherited;
	
public:
	TTMSFNCTomTomMarker* operator[](int Index) { return this->Items[Index]; }
	
private:
	HIDESBASE TTMSFNCTomTomMarker* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCTomTomMarker* const Value);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall CreateItemClass();
	
public:
	__property TTMSFNCTomTomMarker* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	HIDESBASE TTMSFNCTomTomMarker* __fastcall Add();
	HIDESBASE TTMSFNCTomTomMarker* __fastcall Insert(int Index);
public:
	/* TTMSFNCMapsMarkers.Create */ inline __fastcall virtual TTMSFNCTomTomMarkers(Fmx::Tmsfncmaps::TTMSFNCCustomMaps* AOwner) : Fmx::Tmsfncmaps::TTMSFNCMapsMarkers(AOwner) { }
	
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCTomTomMarkers() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCustomTomTom : public Fmx::Tmsfncmaps::TTMSFNCCustomMaps
{
	typedef Fmx::Tmsfncmaps::TTMSFNCCustomMaps inherited;
	
private:
	Fmx::Tmsfncmaps::TTMSFNCMapsBaseEvent FOnMarkerDragEnd;
	TTMSFNCTomTomOptions* __fastcall GetOptions();
	HIDESBASE void __fastcall SetOptions(TTMSFNCTomTomOptions* const Value);
	TTMSFNCTomTomMarkers* __fastcall GetMarkers();
	HIDESBASE void __fastcall SetMarkers(TTMSFNCTomTomMarkers* const Value);
	
protected:
	virtual System::UnicodeString __fastcall GetDocURL();
	virtual int __fastcall GetVersionNr();
	virtual Fmx::Tmsfncmaps::TTMSFNCMapsOptionsClass __fastcall GetOptionsClass();
	virtual Fmx::Tmsfncmaps::TTMSFNCMapsMarkersClass __fastcall GetMarkersClass();
	virtual System::UnicodeString __fastcall GetCustomFunctions();
	virtual System::UnicodeString __fastcall GetCustomGlobalVariables();
	virtual System::UnicodeString __fastcall GetCustomOptions();
	virtual System::UnicodeString __fastcall GetAddCustomObjects();
	virtual System::UnicodeString __fastcall GetCustomMap();
	virtual void __fastcall CallCustomEvent(Fmx::Tmsfncmaps::TTMSFNCMapsEventData* AEventData);
	virtual void __fastcall DoMarkerDragEnd(Fmx::Tmsfncmaps::TTMSFNCMapsEventData* AEventData);
	__property TTMSFNCTomTomOptions* Options = {read=GetOptions, write=SetOptions};
	__property Fmx::Tmsfncmaps::TTMSFNCMapsBaseEvent OnMarkerDragEnd = {read=FOnMarkerDragEnd, write=FOnMarkerDragEnd};
	
public:
	__fastcall virtual TTMSFNCCustomTomTom(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCCustomTomTom();
	virtual void __fastcall EndUpdate();
	virtual void __fastcall Clear();
	HIDESBASE virtual TTMSFNCTomTomMarker* __fastcall AddMarker(const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec &ACoordinate, System::UnicodeString ATitle = System::UnicodeString(), System::UnicodeString AIconURL = System::UnicodeString())/* overload */;
	HIDESBASE virtual TTMSFNCTomTomMarker* __fastcall AddMarker(double ALatitude, double ALongitude, System::UnicodeString ATitle = System::UnicodeString(), System::UnicodeString AIconURL = System::UnicodeString())/* overload */;
	__property TTMSFNCTomTomMarkers* Markers = {read=GetMarkers, write=SetMarkers};
};


class PASCALIMPLEMENTATION TTMSFNCTomTom : public TTMSFNCCustomTomTom
{
	typedef TTMSFNCCustomTomTom inherited;
	
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
	__property OnMarkerDragEnd;
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
	__property RouteCalculator;
	__property DesigntimeEnabled = {default=1};
public:
	/* TTMSFNCCustomTomTom.Create */ inline __fastcall virtual TTMSFNCTomTom(System::Classes::TComponent* AOwner) : TTMSFNCCustomTomTom(AOwner) { }
	/* TTMSFNCCustomTomTom.Destroy */ inline __fastcall virtual ~TTMSFNCTomTom() { }
	
};


//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x0);
static constexpr System::Int8 BLD_VER = System::Int8(0x0);
}	/* namespace Tmsfnctomtom */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCTOMTOM)
using namespace Fmx::Tmsfnctomtom;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfnctomtomHPP
