// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCMapBox.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncmapboxHPP
#define Fmx_TmsfncmapboxHPP

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
#include <FMX.TMSFNCCustomControl.hpp>
#include <FMX.Controls.hpp>
#include <FMX.Types.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>
#include <FMX.TMSFNCRouteCalculator.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncmapbox
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCMapBoxOptions;
class DELPHICLASS TTMSFNCMapBoxMarker;
class DELPHICLASS TTMSFNCMapBoxMarkers;
class DELPHICLASS TTMSFNCCustomMapBox;
class DELPHICLASS TTMSFNCMapBox;
//-- type declarations -------------------------------------------------------
enum DECLSPEC_DENUM TTMSFNCMapBoxMapStyle : unsigned char { mbsStreets, mbsOutdoors, mbsLight, mbsDark, mbsSatellite, mbsSatelliteStreets, mbsCustom };

class PASCALIMPLEMENTATION TTMSFNCMapBoxOptions : public Fmx::Tmsfncmaps::TTMSFNCMapsOptions
{
	typedef Fmx::Tmsfncmaps::TTMSFNCMapsOptions inherited;
	
private:
	TTMSFNCMapBoxMapStyle FMapStyle;
	System::UnicodeString FMapStyleURL;
	System::UnicodeString FVersion;
	void __fastcall SetMapStyle(const TTMSFNCMapBoxMapStyle Value);
	void __fastcall SetMapStyleURL(const System::UnicodeString Value);
	void __fastcall SetVersion(const System::UnicodeString Value);
	
public:
	__fastcall virtual TTMSFNCMapBoxOptions();
	
__published:
	__property TTMSFNCMapBoxMapStyle MapStyle = {read=FMapStyle, write=SetMapStyle, default=0};
	__property System::UnicodeString MapStyleURL = {read=FMapStyleURL, write=SetMapStyleURL};
	__property System::UnicodeString Version = {read=FVersion, write=SetVersion};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTMSFNCMapBoxOptions() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCMapBoxMarker : public Fmx::Tmsfncmaps::TTMSFNCMapsMarker
{
	typedef Fmx::Tmsfncmaps::TTMSFNCMapsMarker inherited;
	
private:
	bool FDraggable;
	int FZIndex;
	void __fastcall SetDraggable(const bool Value);
	void __fastcall SetZIndex(const int Value);
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual TTMSFNCMapBoxMarker(System::Classes::TCollection* Collection);
	__fastcall virtual ~TTMSFNCMapBoxMarker();
	
__published:
	__property bool Draggable = {read=FDraggable, write=SetDraggable, default=0};
	__property int ZIndex = {read=FZIndex, write=SetZIndex, default=0};
};


class PASCALIMPLEMENTATION TTMSFNCMapBoxMarkers : public Fmx::Tmsfncmaps::TTMSFNCMapsMarkers
{
	typedef Fmx::Tmsfncmaps::TTMSFNCMapsMarkers inherited;
	
public:
	TTMSFNCMapBoxMarker* operator[](int Index) { return this->Items[Index]; }
	
private:
	HIDESBASE TTMSFNCMapBoxMarker* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCMapBoxMarker* const Value);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall CreateItemClass();
	
public:
	__property TTMSFNCMapBoxMarker* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	HIDESBASE TTMSFNCMapBoxMarker* __fastcall Add();
	HIDESBASE TTMSFNCMapBoxMarker* __fastcall Insert(int Index);
public:
	/* TTMSFNCMapsMarkers.Create */ inline __fastcall virtual TTMSFNCMapBoxMarkers(Fmx::Tmsfncmaps::TTMSFNCCustomMaps* AOwner) : Fmx::Tmsfncmaps::TTMSFNCMapsMarkers(AOwner) { }
	
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCMapBoxMarkers() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCustomMapBox : public Fmx::Tmsfncmaps::TTMSFNCCustomMaps
{
	typedef Fmx::Tmsfncmaps::TTMSFNCCustomMaps inherited;
	
private:
	Fmx::Tmsfncmaps::TTMSFNCMapsBaseEvent FOnMarkerDragEnd;
	TTMSFNCMapBoxOptions* __fastcall GetOptions();
	HIDESBASE void __fastcall SetOptions(TTMSFNCMapBoxOptions* const Value);
	TTMSFNCMapBoxMarkers* __fastcall GetMarkers();
	HIDESBASE void __fastcall SetMarkers(TTMSFNCMapBoxMarkers* const Value);
	
protected:
	virtual System::UnicodeString __fastcall GetAPIVersion();
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
	__property TTMSFNCMapBoxOptions* Options = {read=GetOptions, write=SetOptions};
	__property Fmx::Tmsfncmaps::TTMSFNCMapsBaseEvent OnMarkerDragEnd = {read=FOnMarkerDragEnd, write=FOnMarkerDragEnd};
	
public:
	__fastcall virtual TTMSFNCCustomMapBox(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCCustomMapBox();
	virtual void __fastcall EndUpdate();
	virtual void __fastcall Clear();
	HIDESBASE virtual TTMSFNCMapBoxMarker* __fastcall AddMarker(const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec &ACoordinate, System::UnicodeString ATitle = System::UnicodeString(), System::UnicodeString AIconURL = System::UnicodeString())/* overload */;
	HIDESBASE virtual TTMSFNCMapBoxMarker* __fastcall AddMarker(double ALatitude, double ALongitude, System::UnicodeString ATitle = System::UnicodeString(), System::UnicodeString AIconURL = System::UnicodeString())/* overload */;
	__property TTMSFNCMapBoxMarkers* Markers = {read=GetMarkers, write=SetMarkers};
};


class PASCALIMPLEMENTATION TTMSFNCMapBox : public TTMSFNCCustomMapBox
{
	typedef TTMSFNCCustomMapBox inherited;
	
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
	/* TTMSFNCCustomMapBox.Create */ inline __fastcall virtual TTMSFNCMapBox(System::Classes::TComponent* AOwner) : TTMSFNCCustomMapBox(AOwner) { }
	/* TTMSFNCCustomMapBox.Destroy */ inline __fastcall virtual ~TTMSFNCMapBox() { }
	
};


//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x1);
static constexpr System::Int8 REL_VER = System::Int8(0x1);
static constexpr System::Int8 BLD_VER = System::Int8(0x0);
}	/* namespace Tmsfncmapbox */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCMAPBOX)
using namespace Fmx::Tmsfncmapbox;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncmapboxHPP
