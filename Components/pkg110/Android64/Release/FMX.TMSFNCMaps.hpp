// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCMaps.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncmapsHPP
#define Fmx_TmsfncmapsHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <System.Types.hpp>
#include <System.DateUtils.hpp>
#include <FMX.Forms.hpp>
#include <System.Generics.Collections.hpp>
#include <Xml.XMLIntf.hpp>
#include <Xml.xmldom.hpp>
#include <Xml.XMLDoc.hpp>
#include <System.Variants.hpp>
#include <System.JSON.hpp>
#include <FMX.TMSFNCRouteCalculator.hpp>
#include <FMX.TMSFNCMapsCommonTypes.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.TMSFNCJSONReader.hpp>
#include <FMX.TMSFNCGraphicsTypes.hpp>
#include <FMX.TMSFNCWebBrowser.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>
#include <System.UITypes.hpp>
#include <FMX.TMSFNCCustomControl.hpp>
#include <FMX.Controls.hpp>
#include <FMX.Types.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncmaps
{
//-- forward type declarations -----------------------------------------------
__interface DELPHIINTERFACE ITMSFNCCustomMapsProperties;
typedef System::DelphiInterface<ITMSFNCCustomMapsProperties> _di_ITMSFNCCustomMapsProperties;
__interface DELPHIINTERFACE ITMSFNCCustomMapsInstance;
typedef System::DelphiInterface<ITMSFNCCustomMapsInstance> _di_ITMSFNCCustomMapsInstance;
class DELPHICLASS TTMSFNCMapsLink;
class DELPHICLASS TTMSFNCMapsLinksList;
__interface DELPHIINTERFACE ITMSFNCCustomMaps;
typedef System::DelphiInterface<ITMSFNCCustomMaps> _di_ITMSFNCCustomMaps;
__interface DELPHIINTERFACE ITMSFNCMapsService;
typedef System::DelphiInterface<ITMSFNCMapsService> _di_ITMSFNCMapsService;
__interface DELPHIINTERFACE ITMSFNCMapsServiceGoogleMaps;
typedef System::DelphiInterface<ITMSFNCMapsServiceGoogleMaps> _di_ITMSFNCMapsServiceGoogleMaps;
__interface DELPHIINTERFACE ITMSFNCMapsServiceHere;
typedef System::DelphiInterface<ITMSFNCMapsServiceHere> _di_ITMSFNCMapsServiceHere;
__interface DELPHIINTERFACE ITMSFNCMapsServiceAzureMaps;
typedef System::DelphiInterface<ITMSFNCMapsServiceAzureMaps> _di_ITMSFNCMapsServiceAzureMaps;
__interface DELPHIINTERFACE ITMSFNCMapsServiceBingMaps;
typedef System::DelphiInterface<ITMSFNCMapsServiceBingMaps> _di_ITMSFNCMapsServiceBingMaps;
__interface DELPHIINTERFACE ITMSFNCMapsServiceTomTom;
typedef System::DelphiInterface<ITMSFNCMapsServiceTomTom> _di_ITMSFNCMapsServiceTomTom;
__interface DELPHIINTERFACE ITMSFNCMapsServiceMapBox;
typedef System::DelphiInterface<ITMSFNCMapsServiceMapBox> _di_ITMSFNCMapsServiceMapBox;
__interface DELPHIINTERFACE ITMSFNCMapsServiceMapKit;
typedef System::DelphiInterface<ITMSFNCMapsServiceMapKit> _di_ITMSFNCMapsServiceMapKit;
__interface DELPHIINTERFACE ITMSFNCMapsServiceOpenLayers;
typedef System::DelphiInterface<ITMSFNCMapsServiceOpenLayers> _di_ITMSFNCMapsServiceOpenLayers;
struct TTMSFNCMapsGPXColorRec;
struct TTMSFNCMapsPointRec;
struct TTMSFNCMapsPolyElementRec;
struct TTMSFNCMapsGeoJSONRec;
class DELPHICLASS TTMSFNCMapsPopup;
class DELPHICLASS TTMSFNCMapsMarker;
class DELPHICLASS TTMSFNCMapsMarkers;
class DELPHICLASS TTMSFNCMapsPolyElementHole;
class DELPHICLASS TTMSFNCMapsPolyElementHoles;
class DELPHICLASS TTMSFNCMapsPolyElement;
class DELPHICLASS TTMSFNCMapsPolyElements;
class DELPHICLASS TTMSFNCMapsPolyline;
class DELPHICLASS TTMSFNCMapsPolylines;
class DELPHICLASS TTMSFNCMapsCustomPolygon;
class DELPHICLASS TTMSFNCMapsCustomPolygons;
class DELPHICLASS TTMSFNCMapsPolygon;
class DELPHICLASS TTMSFNCMapsPolygons;
class DELPHICLASS TTMSFNCMapsRectangle;
class DELPHICLASS TTMSFNCMapsRectangles;
class DELPHICLASS TTMSFNCMapsCircle;
class DELPHICLASS TTMSFNCMapsCircles;
class DELPHICLASS TTMSFNCMapsHeadLink;
class DELPHICLASS TTMSFNCMapsHeadLinks;
class DELPHICLASS TTMSFNCMapsOptions;
class DELPHICLASS TTMSFNCMapsEventData;
class DELPHICLASS TTMSFNCMapsGeoJSONEventData;
class DELPHICLASS TTMSFNCMapsElementAction;
class DELPHICLASS TTMSFNCMapsElementActions;
class DELPHICLASS TTMSFNCMapsElementContainer;
class DELPHICLASS TTMSFNCMapsElementContainers;
class DELPHICLASS TTMSFNCCustomMaps;
class DELPHICLASS TTMSFNCCustomMapsInterfacedObject;
class DELPHICLASS TTMSFNCMapsList;
class DELPHICLASS TTMSFNCMapsFactoryService;
class DELPHICLASS TTMSFNCMaps;
class DELPHICLASS TTMSFNCMapsPlatformServicesService;
class DELPHICLASS TTMSFNCMapsPlatformServicesList;
class DELPHICLASS TTMSFNCMapsPlatformServices;
//-- type declarations -------------------------------------------------------
__interface  INTERFACE_UUID("{A081EF51-171D-4C04-9F2C-28A4EBE9E1DE}") ITMSFNCCustomMapsProperties  : public System::IInterface 
{
	virtual System::UnicodeString __fastcall GetDefaultLatitude() = 0 ;
	virtual System::UnicodeString __fastcall GetDefaultLongitude() = 0 ;
	virtual System::UnicodeString __fastcall GetDefaultZoomLevel() = 0 ;
	virtual System::UnicodeString __fastcall GetAPIKey() = 0 ;
	virtual System::UnicodeString __fastcall GetLocale(Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode AMode = (Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode)(0x0)) = 0 ;
	virtual bool __fastcall GetShowZoomControl() = 0 ;
	virtual bool __fastcall GetZoomOnDblClick() = 0 ;
	virtual bool __fastcall GetPanning() = 0 ;
	virtual System::UnicodeString __fastcall GetMapID() = 0 ;
	virtual System::UnicodeString __fastcall GetAPIVersion() = 0 ;
	virtual double __fastcall GetHeading() = 0 ;
	virtual double __fastcall GetTilt() = 0 ;
	virtual bool __fastcall GetZoomOnWheelScroll() = 0 ;
	virtual bool __fastcall GetShowMapTypeControl() = 0 ;
	virtual System::Uitypes::TAlphaColor __fastcall GetBackgroundColor() = 0 ;
};

__interface  INTERFACE_UUID("{419FAD22-8164-47EB-8CFE-C60BBFF57751}") ITMSFNCCustomMapsInstance  : public System::IInterface 
{
	virtual void __fastcall SetMapsProperties(const _di_ITMSFNCCustomMapsProperties Value) = 0 ;
};

enum DECLSPEC_DENUM TTMSFNCMapsLinkKind : unsigned char { mlkLink, mlkScript, mlkStyle };

class PASCALIMPLEMENTATION TTMSFNCMapsLink : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	System::UnicodeString FCharSet;
	System::UnicodeString FType;
	System::UnicodeString FURL;
	System::UnicodeString FContent;
	bool FDefer;
	bool FAsync;
	System::UnicodeString FRel;
	TTMSFNCMapsLinkKind FKind;
	
public:
	__fastcall virtual TTMSFNCMapsLink(System::UnicodeString AURL, System::UnicodeString AType, System::UnicodeString ACharSet, System::UnicodeString AContent, bool ADefer, bool AAsync);
	__fastcall virtual TTMSFNCMapsLink(System::UnicodeString AURL, System::UnicodeString AType, System::UnicodeString ARel);
	__fastcall virtual TTMSFNCMapsLink(TTMSFNCMapsLinkKind AKind, System::UnicodeString AURL, System::UnicodeString AType, System::UnicodeString ACharSet, System::UnicodeString ARel, System::UnicodeString AContent, bool ADefer, bool AAsync);
	__property System::UnicodeString URL = {read=FURL, write=FURL};
	__property System::UnicodeString Type = {read=FType, write=FType};
	__property System::UnicodeString CharSet = {read=FCharSet, write=FCharSet};
	__property System::UnicodeString Content = {read=FContent, write=FContent};
	__property System::UnicodeString Rel = {read=FRel, write=FRel};
	__property bool Defer = {read=FDefer, write=FDefer, nodefault};
	__property bool Async = {read=FAsync, write=FAsync, nodefault};
	__property TTMSFNCMapsLinkKind Kind = {read=FKind, write=FKind, nodefault};
	System::UnicodeString __fastcall ToJSON()/* overload */;
	void __fastcall FromJSON(const System::UnicodeString Value);
	__property System::UnicodeString JSON = {read=ToJSON, write=FromJSON};
	System::UnicodeString __fastcall ToJSON(Fmx::Tmsfnctypes::TTMSFNCObjectExcludePropertyListArray AExcludedProperties)/* overload */;
	void __fastcall Log();
	void __fastcall SaveToJSONFile(const System::UnicodeString AFileName);
	void __fastcall LoadFromJSONFile(const System::UnicodeString AFileName);
	void __fastcall SaveToJSONStream(System::Classes::TStream* const AStream);
	void __fastcall LoadFromJSONStream(System::Classes::TStream* const AStream);
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TTMSFNCMapsLink() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCMapsLinksList : public System::Generics::Collections::TObjectList__1<TTMSFNCMapsLink*>
{
	typedef System::Generics::Collections::TObjectList__1<TTMSFNCMapsLink*> inherited;
	
public:
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCMaps_TTMSFNCMapsLink>.Create */ inline __fastcall TTMSFNCMapsLinksList()/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCMapsLink*>() { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCMaps_TTMSFNCMapsLink>.Create */ inline __fastcall TTMSFNCMapsLinksList(bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCMapsLink*>(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCMaps_TTMSFNCMapsLink>.Create */ inline __fastcall TTMSFNCMapsLinksList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCMapsLink*> > AComparer, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCMapsLink*>(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCMaps_TTMSFNCMapsLink>.Create */ inline __fastcall TTMSFNCMapsLinksList(System::Generics::Collections::TEnumerable__1<TTMSFNCMapsLink*>* const Collection, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCMapsLink*>(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCMaps_TTMSFNCMapsLink>.Destroy */ inline __fastcall virtual ~TTMSFNCMapsLinksList() { }
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCMaps_TTMSFNCMapsLink>.Create */ inline __fastcall TTMSFNCMapsLinksList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCMapsLink*> > AComparer)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCMapsLink*>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCMaps_TTMSFNCMapsLink>.Create */ inline __fastcall TTMSFNCMapsLinksList(System::Generics::Collections::TEnumerable__1<TTMSFNCMapsLink*>* const Collection)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCMapsLink*>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCMaps_TTMSFNCMapsLink>.Create */ inline __fastcall TTMSFNCMapsLinksList(TTMSFNCMapsLink* const *Values, const int Values_High)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCMapsLink*>(Values, Values_High) { }
	
};


enum DECLSPEC_DENUM TTMSFNCMapsService : unsigned char { msGoogleMaps, msHere, msAzureMaps, msBingMaps, msTomTom, msMapBox, msOpenLayers, msMapKit };

__interface  INTERFACE_UUID("{B305522A-852B-4A51-B9C0-C9D91B9A8C8B}") ITMSFNCCustomMaps  : public System::IInterface 
{
	virtual void __fastcall GetHeadLinks(TTMSFNCMapsLinksList* const AList) = 0 ;
	virtual void __fastcall RemoveScripts() = 0 ;
	virtual System::UnicodeString __fastcall GetResetMap() = 0 ;
	virtual System::UnicodeString __fastcall GetHeadStyle() = 0 ;
	virtual System::UnicodeString __fastcall GetDelayLoadEvent() = 0 ;
	virtual System::UnicodeString __fastcall GetIdentifier() = 0 ;
	virtual System::UnicodeString __fastcall GetMapsServiceCheck() = 0 ;
	virtual System::UnicodeString __fastcall GetInitializeMap() = 0 ;
	virtual System::UnicodeString __fastcall GetInitializeEvents() = 0 ;
	virtual System::UnicodeString __fastcall GetAddOrUpdateMarker() = 0 ;
	virtual System::UnicodeString __fastcall GetShowPopup() = 0 ;
	virtual System::UnicodeString __fastcall GetClosePopup() = 0 ;
	virtual System::UnicodeString __fastcall GetDeleteMarker() = 0 ;
	virtual System::UnicodeString __fastcall GetAddOrUpdatePolyElement() = 0 ;
	virtual System::UnicodeString __fastcall GetDeletePolyElement() = 0 ;
	virtual System::UnicodeString __fastcall GetZoomToBounds() = 0 ;
	virtual System::UnicodeString __fastcall GetSetCenterCoordinate() = 0 ;
	virtual System::UnicodeString __fastcall GetGetCenterCoordinate() = 0 ;
	virtual System::UnicodeString __fastcall GetLatLonToXY() = 0 ;
	virtual System::UnicodeString __fastcall GetXYToLatLon() = 0 ;
	virtual System::UnicodeString __fastcall GetGetBounds() = 0 ;
	virtual System::UnicodeString __fastcall GetGetZoomLevel() = 0 ;
	virtual System::UnicodeString __fastcall GetSetZoomLevel() = 0 ;
	virtual System::UnicodeString __fastcall GetUpdateOptions() = 0 ;
	virtual System::UnicodeString __fastcall GetGlobalVariables() = 0 ;
	virtual System::UnicodeString __fastcall GetAddCoordinateToArray() = 0 ;
	virtual System::UnicodeString __fastcall GetAddHoleToArray() = 0 ;
	virtual System::UnicodeString __fastcall GetInitializeCoordinateArray() = 0 ;
	virtual System::UnicodeString __fastcall GetInitializeHolesArray() = 0 ;
	virtual bool __fastcall IsValid() = 0 ;
	virtual void __fastcall DestroyMaps() = 0 ;
};

__interface  INTERFACE_UUID("{6E91727E-EFA6-4A74-B523-97DAF6605F09}") ITMSFNCMapsService  : public System::IInterface 
{
	virtual _di_ITMSFNCCustomMaps __fastcall CreateMaps() = 0 ;
	virtual void __fastcall DestroyMaps(_di_ITMSFNCCustomMaps AMaps) = 0 ;
};

__interface  INTERFACE_UUID("{71E5D88A-366B-4573-B54D-DE0B3848CB15}") ITMSFNCMapsServiceGoogleMaps  : public ITMSFNCMapsService 
{
	
};

__interface  INTERFACE_UUID("{646B2E30-657D-4D64-BDE7-13357E46255B}") ITMSFNCMapsServiceHere  : public ITMSFNCMapsService 
{
	
};

__interface  INTERFACE_UUID("{CB46E849-C6D7-4B6C-AE8E-39A404FDE4BE}") ITMSFNCMapsServiceAzureMaps  : public ITMSFNCMapsService 
{
	
};

__interface  INTERFACE_UUID("{382BB281-E709-4028-9E10-3D3790C04C7B}") ITMSFNCMapsServiceBingMaps  : public ITMSFNCMapsService 
{
	
};

__interface  INTERFACE_UUID("{AFDD0113-F2BB-44FE-8DD3-4EAEC70BA851}") ITMSFNCMapsServiceTomTom  : public ITMSFNCMapsService 
{
	
};

__interface  INTERFACE_UUID("{B141412A-AD1C-4C5F-9729-952BD04B9D6D}") ITMSFNCMapsServiceMapBox  : public ITMSFNCMapsService 
{
	
};

__interface  INTERFACE_UUID("{3EAC77BF-DBDA-4328-910F-B2C23C5E9229}") ITMSFNCMapsServiceMapKit  : public ITMSFNCMapsService 
{
	
};

__interface  INTERFACE_UUID("{424129BB-9C0E-44C5-BD30-E6399A5BC5CE}") ITMSFNCMapsServiceOpenLayers  : public ITMSFNCMapsService 
{
	
};

struct DECLSPEC_DRECORD TTMSFNCMapsGPXColorRec
{
public:
	System::Uitypes::TAlphaColor Color;
};


typedef System::DynamicArray<TTMSFNCMapsGPXColorRec> TTMSFNCMapsGPXColorRecArray;

struct DECLSPEC_DRECORD TTMSFNCMapsPointRec
{
public:
	Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec Coordinate;
	System::UnicodeString Name;
};


struct DECLSPEC_DRECORD TTMSFNCMapsPolyElementRec
{
public:
	Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRecArray Coordinates;
	Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRecArrayArray Holes;
	System::UnicodeString Name;
};


struct DECLSPEC_DRECORD TTMSFNCMapsGeoJSONRec
{
	
private:
	typedef System::DynamicArray<TTMSFNCMapsPointRec> _TTMSFNCMapsGeoJSONRec__1;
	
	typedef System::DynamicArray<TTMSFNCMapsPolyElementRec> _TTMSFNCMapsGeoJSONRec__2;
	
	typedef System::DynamicArray<TTMSFNCMapsPolyElementRec> _TTMSFNCMapsGeoJSONRec__3;
	
	
public:
	_TTMSFNCMapsGeoJSONRec__1 Points;
	_TTMSFNCMapsGeoJSONRec__2 Polylines;
	_TTMSFNCMapsGeoJSONRec__3 Polygons;
};


class PASCALIMPLEMENTATION TTMSFNCMapsPopup : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	System::UnicodeString FID;
	System::UnicodeString FText;
	double FOffsetX;
	double FOffsetY;
	Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinate* FCoordinate;
	System::UnicodeString __fastcall GetID();
	double __fastcall GetLatitude();
	double __fastcall GetLongitude();
	void __fastcall SetLatitude(const double Value);
	void __fastcall SetLongitude(const double Value);
	
public:
	__fastcall virtual TTMSFNCMapsPopup();
	__fastcall virtual ~TTMSFNCMapsPopup();
	
__published:
	__property System::UnicodeString ID = {read=GetID};
	__property System::UnicodeString Text = {read=FText, write=FText};
	__property Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinate* Coordinate = {read=FCoordinate};
	__property double Longitude = {read=GetLongitude, write=SetLongitude};
	__property double Latitude = {read=GetLatitude, write=SetLatitude};
	__property double OffsetX = {read=FOffsetX, write=FOffsetX};
	__property double OffsetY = {read=FOffsetY, write=FOffsetY};
};


class PASCALIMPLEMENTATION TTMSFNCMapsMarker : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	bool FReload;
	System::UnicodeString FID;
	bool FDataBoolean;
	System::UnicodeString FDataString;
	System::TObject* FDataObject;
	NativeInt FDataInteger;
	void *FDataPointer;
	System::UnicodeString FTitle;
	Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinate* FCoordinate;
	System::UnicodeString FIconURL;
	bool FRecreate;
	bool FVisible;
	void __fastcall SetTitle(const System::UnicodeString Value);
	System::UnicodeString __fastcall GetID();
	bool __fastcall IsTitleStored();
	void __fastcall SetCoordinate(Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinate* const Value);
	double __fastcall GetLatitude();
	double __fastcall GetLongitude();
	void __fastcall SetLatitude(const double Value);
	void __fastcall SetLongitude(const double Value);
	bool __fastcall IsLatitudeStored();
	bool __fastcall IsLongitudeStored();
	bool __fastcall IsIconURLStored();
	void __fastcall SetIconURL(const System::UnicodeString Value);
	void __fastcall SetVisible(const bool Value);
	
protected:
	TTMSFNCCustomMaps* FOwner;
	virtual void __fastcall UpdateMarker();
	void __fastcall CoordinateChanged(System::TObject* Sender);
	
public:
	__fastcall virtual TTMSFNCMapsMarker(System::Classes::TCollection* Collection);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual ~TTMSFNCMapsMarker();
	__property void * DataPointer = {read=FDataPointer, write=FDataPointer};
	__property bool DataBoolean = {read=FDataBoolean, write=FDataBoolean, nodefault};
	__property System::TObject* DataObject = {read=FDataObject, write=FDataObject};
	__property System::UnicodeString DataString = {read=FDataString, write=FDataString};
	__property NativeInt DataInteger = {read=FDataInteger, write=FDataInteger};
	__property Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinate* Coordinate = {read=FCoordinate, write=SetCoordinate};
	__property bool Recreate = {read=FRecreate, write=FRecreate, default=0};
	
__published:
	__property System::UnicodeString ID = {read=GetID};
	__property double Longitude = {read=GetLongitude, write=SetLongitude, stored=IsLongitudeStored};
	__property double Latitude = {read=GetLatitude, write=SetLatitude, stored=IsLatitudeStored};
	__property System::UnicodeString Title = {read=FTitle, write=SetTitle, stored=IsTitleStored};
	__property System::UnicodeString IconURL = {read=FIconURL, write=SetIconURL, stored=IsIconURLStored};
	__property bool Visible = {read=FVisible, write=SetVisible, default=1};
};


class PASCALIMPLEMENTATION TTMSFNCMapsMarkers : public Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCMapsMarker*>
{
	typedef Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCMapsMarker*> inherited;
	
public:
	TTMSFNCMapsMarker* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCCustomMaps* FOwner;
	HIDESBASE TTMSFNCMapsMarker* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCMapsMarker* const Value);
	TTMSFNCMapsMarker* __fastcall GetItemByID(System::UnicodeString ID);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall CreateItemClass();
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	
public:
	__fastcall virtual TTMSFNCMapsMarkers(TTMSFNCCustomMaps* AOwner);
	__property TTMSFNCMapsMarker* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	HIDESBASE virtual void __fastcall Clear();
	virtual void __fastcall Recreate();
	HIDESBASE TTMSFNCMapsMarker* __fastcall Add();
	HIDESBASE TTMSFNCMapsMarker* __fastcall Insert(int Index);
	virtual Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRecArrayArray __fastcall ToCoordinateArray();
	__property TTMSFNCMapsMarker* ItemByID[System::UnicodeString ID] = {read=GetItemByID};
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCMapsMarkers() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCMapsPolyElementHole : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	System::UnicodeString FID;
	TTMSFNCMapsPolyElement* FOwner;
	Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinates* FCoordinates;
	System::UnicodeString __fastcall GetID();
	void __fastcall SetCoordinates(Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinates* const Value);
	
protected:
	void __fastcall UpdatePolyElement();
	void __fastcall DoBeginUpdate(System::TObject* Sender);
	void __fastcall DoEndUpdate(System::TObject* Sender);
	void __fastcall DoUpdateCoordinates(System::TObject* Sender);
	
public:
	__fastcall virtual TTMSFNCMapsPolyElementHole(System::Classes::TCollection* Collection);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual ~TTMSFNCMapsPolyElementHole();
	
__published:
	__property Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinates* Coordinates = {read=FCoordinates, write=SetCoordinates};
	__property System::UnicodeString ID = {read=GetID};
};


class PASCALIMPLEMENTATION TTMSFNCMapsPolyElementHoles : public Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCMapsPolyElementHole*>
{
	typedef Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCMapsPolyElementHole*> inherited;
	
public:
	TTMSFNCMapsPolyElementHole* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCMapsPolyElement* FOwner;
	HIDESBASE TTMSFNCMapsPolyElementHole* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCMapsPolyElementHole* const Value);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall CreateItemClass();
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	
public:
	__fastcall virtual TTMSFNCMapsPolyElementHoles(TTMSFNCMapsPolyElement* AOwner);
	__property TTMSFNCMapsPolyElementHole* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	HIDESBASE virtual void __fastcall Clear();
	HIDESBASE TTMSFNCMapsPolyElementHole* __fastcall Add();
	HIDESBASE TTMSFNCMapsPolyElementHole* __fastcall Insert(int Index);
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCMapsPolyElementHoles() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCMapsPolyElement : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	bool FReload;
	System::UnicodeString FID;
	TTMSFNCCustomMaps* FOwner;
	bool FDataBoolean;
	System::UnicodeString FDataString;
	System::TObject* FDataObject;
	NativeInt FDataInteger;
	void *FDataPointer;
	System::Uitypes::TAlphaColor FStrokeColor;
	Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinates* FCoordinates;
	float FStrokeOpacity;
	int FStrokeWidth;
	bool FRecreate;
	bool FVisible;
	TTMSFNCMapsPolyElementHoles* FHoles;
	System::UnicodeString __fastcall GetID();
	void __fastcall SetStrokeColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetCoordinates(Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinates* const Value);
	void __fastcall SetHoles(TTMSFNCMapsPolyElementHoles* const Value);
	bool __fastcall IsStrokeOpacityStored();
	void __fastcall SetStrokeOpacity(const float Value);
	void __fastcall SetStrokeWidth(const int Value);
	void __fastcall SetVisible(const bool Value);
	
protected:
	void __fastcall BeginUpdate();
	void __fastcall EndUpdate();
	virtual void __fastcall UpdatePolyElement();
	virtual void __fastcall DoUpdateCoordinates(System::TObject* Sender);
	virtual void __fastcall DoBeginUpdate(System::TObject* Sender);
	virtual void __fastcall DoEndUpdate(System::TObject* Sender);
	__property Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinates* Coordinates = {read=FCoordinates, write=SetCoordinates};
	__property TTMSFNCMapsPolyElementHoles* Holes = {read=FHoles, write=SetHoles};
	virtual TTMSFNCMapsPolyElementHole* __fastcall AddHole(Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRecArray ACoordinates);
	
public:
	__fastcall virtual TTMSFNCMapsPolyElement(System::Classes::TCollection* Collection);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual ~TTMSFNCMapsPolyElement();
	virtual double __fastcall Area();
	virtual bool __fastcall ContainsPoint(const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec &ACoordinate);
	__property void * DataPointer = {read=FDataPointer, write=FDataPointer};
	__property bool DataBoolean = {read=FDataBoolean, write=FDataBoolean, nodefault};
	__property System::TObject* DataObject = {read=FDataObject, write=FDataObject};
	__property System::UnicodeString DataString = {read=FDataString, write=FDataString};
	__property NativeInt DataInteger = {read=FDataInteger, write=FDataInteger};
	__property bool Recreate = {read=FRecreate, write=FRecreate, default=0};
	
__published:
	__property System::UnicodeString ID = {read=GetID};
	__property System::Uitypes::TAlphaColor StrokeColor = {read=FStrokeColor, write=SetStrokeColor, default=-16777216};
	__property float StrokeOpacity = {read=FStrokeOpacity, write=SetStrokeOpacity, stored=IsStrokeOpacityStored};
	__property int StrokeWidth = {read=FStrokeWidth, write=SetStrokeWidth, default=2};
	__property bool Visible = {read=FVisible, write=SetVisible, default=1};
};


class PASCALIMPLEMENTATION TTMSFNCMapsPolyElements : public Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCMapsPolyElement*>
{
	typedef Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCMapsPolyElement*> inherited;
	
public:
	TTMSFNCMapsPolyElement* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCCustomMaps* FOwner;
	HIDESBASE TTMSFNCMapsPolyElement* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCMapsPolyElement* const Value);
	TTMSFNCMapsPolyElement* __fastcall GetItemByID(System::UnicodeString ID);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall CreateItemClass();
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	
public:
	__fastcall virtual TTMSFNCMapsPolyElements(TTMSFNCCustomMaps* AOwner);
	__property TTMSFNCMapsPolyElement* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	HIDESBASE virtual void __fastcall Clear();
	virtual void __fastcall Recreate();
	HIDESBASE TTMSFNCMapsPolyElement* __fastcall Add();
	HIDESBASE TTMSFNCMapsPolyElement* __fastcall Insert(int Index);
	virtual Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRecArrayArray __fastcall ToCoordinateArray();
	__property TTMSFNCMapsPolyElement* ItemByID[System::UnicodeString ID] = {read=GetItemByID};
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCMapsPolyElements() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCMapsPolyline : public TTMSFNCMapsPolyElement
{
	typedef TTMSFNCMapsPolyElement inherited;
	
public:
	virtual double __fastcall Distance();
	
__published:
	__property Coordinates;
public:
	/* TTMSFNCMapsPolyElement.Create */ inline __fastcall virtual TTMSFNCMapsPolyline(System::Classes::TCollection* Collection) : TTMSFNCMapsPolyElement(Collection) { }
	/* TTMSFNCMapsPolyElement.Destroy */ inline __fastcall virtual ~TTMSFNCMapsPolyline() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCMapsPolylines : public TTMSFNCMapsPolyElements
{
	typedef TTMSFNCMapsPolyElements inherited;
	
public:
	TTMSFNCMapsPolyline* operator[](int Index) { return this->Items[Index]; }
	
private:
	HIDESBASE TTMSFNCMapsPolyline* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCMapsPolyline* const Value);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall CreateItemClass();
	
public:
	__property TTMSFNCMapsPolyline* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	HIDESBASE TTMSFNCMapsPolyline* __fastcall Add();
	HIDESBASE TTMSFNCMapsPolyline* __fastcall Insert(int Index);
public:
	/* TTMSFNCMapsPolyElements.Create */ inline __fastcall virtual TTMSFNCMapsPolylines(TTMSFNCCustomMaps* AOwner) : TTMSFNCMapsPolyElements(AOwner) { }
	
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCMapsPolylines() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCMapsCustomPolygon : public TTMSFNCMapsPolyElement
{
	typedef TTMSFNCMapsPolyElement inherited;
	
private:
	System::Uitypes::TAlphaColor FFillColor;
	float FFillOpacity;
	void __fastcall SetFillColor(const System::Uitypes::TAlphaColor Value);
	bool __fastcall IsFillOpacityStored();
	void __fastcall SetFillOpacity(const float Value);
	
public:
	__fastcall virtual TTMSFNCMapsCustomPolygon(System::Classes::TCollection* Collection);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property System::Uitypes::TAlphaColor FillColor = {read=FFillColor, write=SetFillColor, default=-1};
	__property float FillOpacity = {read=FFillOpacity, write=SetFillOpacity, stored=IsFillOpacityStored};
public:
	/* TTMSFNCMapsPolyElement.Destroy */ inline __fastcall virtual ~TTMSFNCMapsCustomPolygon() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCMapsCustomPolygons : public TTMSFNCMapsPolyElements
{
	typedef TTMSFNCMapsPolyElements inherited;
	
public:
	TTMSFNCMapsCustomPolygon* operator[](int Index) { return this->Items[Index]; }
	
private:
	HIDESBASE TTMSFNCMapsCustomPolygon* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCMapsCustomPolygon* const Value);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall CreateItemClass();
	
public:
	__property TTMSFNCMapsCustomPolygon* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	HIDESBASE TTMSFNCMapsCustomPolygon* __fastcall Add();
	HIDESBASE TTMSFNCMapsCustomPolygon* __fastcall Insert(int Index);
public:
	/* TTMSFNCMapsPolyElements.Create */ inline __fastcall virtual TTMSFNCMapsCustomPolygons(TTMSFNCCustomMaps* AOwner) : TTMSFNCMapsPolyElements(AOwner) { }
	
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCMapsCustomPolygons() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCMapsPolygon : public TTMSFNCMapsCustomPolygon
{
	typedef TTMSFNCMapsCustomPolygon inherited;
	
protected:
	virtual TTMSFNCMapsPolyElementHole* __fastcall AddHole(Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRecArray ACoordinates);
	__property Holes;
	
__published:
	__property Coordinates;
public:
	/* TTMSFNCMapsCustomPolygon.Create */ inline __fastcall virtual TTMSFNCMapsPolygon(System::Classes::TCollection* Collection) : TTMSFNCMapsCustomPolygon(Collection) { }
	
public:
	/* TTMSFNCMapsPolyElement.Destroy */ inline __fastcall virtual ~TTMSFNCMapsPolygon() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCMapsPolygons : public TTMSFNCMapsPolyElements
{
	typedef TTMSFNCMapsPolyElements inherited;
	
public:
	TTMSFNCMapsPolygon* operator[](int Index) { return this->Items[Index]; }
	
private:
	HIDESBASE TTMSFNCMapsPolygon* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCMapsPolygon* const Value);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall CreateItemClass();
	
public:
	__property TTMSFNCMapsPolygon* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	HIDESBASE TTMSFNCMapsPolygon* __fastcall Add();
	HIDESBASE TTMSFNCMapsPolygon* __fastcall Insert(int Index);
public:
	/* TTMSFNCMapsPolyElements.Create */ inline __fastcall virtual TTMSFNCMapsPolygons(TTMSFNCCustomMaps* AOwner) : TTMSFNCMapsPolyElements(AOwner) { }
	
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCMapsPolygons() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCMapsRectangle : public TTMSFNCMapsCustomPolygon
{
	typedef TTMSFNCMapsCustomPolygon inherited;
	
private:
	Fmx::Tmsfncmapscommontypes::TTMSFNCMapsBounds* FBounds;
	void __fastcall SetBounds(Fmx::Tmsfncmapscommontypes::TTMSFNCMapsBounds* const Value);
	
protected:
	void __fastcall DoBoundsChanged(System::TObject* Sender);
	
public:
	__fastcall virtual TTMSFNCMapsRectangle(System::Classes::TCollection* Collection);
	__fastcall virtual ~TTMSFNCMapsRectangle();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	virtual double __fastcall Area();
	virtual bool __fastcall ContainsPoint(const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec &ACoordinate);
	
__published:
	__property Fmx::Tmsfncmapscommontypes::TTMSFNCMapsBounds* Bounds = {read=FBounds, write=SetBounds};
};


class PASCALIMPLEMENTATION TTMSFNCMapsRectangles : public TTMSFNCMapsCustomPolygons
{
	typedef TTMSFNCMapsCustomPolygons inherited;
	
public:
	TTMSFNCMapsRectangle* operator[](int Index) { return this->Items[Index]; }
	
private:
	HIDESBASE TTMSFNCMapsRectangle* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCMapsRectangle* const Value);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall CreateItemClass();
	
public:
	__property TTMSFNCMapsRectangle* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	HIDESBASE TTMSFNCMapsRectangle* __fastcall Add();
	HIDESBASE TTMSFNCMapsRectangle* __fastcall Insert(int Index);
	virtual Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRecArrayArray __fastcall ToCoordinateArray();
public:
	/* TTMSFNCMapsPolyElements.Create */ inline __fastcall virtual TTMSFNCMapsRectangles(TTMSFNCCustomMaps* AOwner) : TTMSFNCMapsCustomPolygons(AOwner) { }
	
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCMapsRectangles() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCMapsCircle : public TTMSFNCMapsCustomPolygon
{
	typedef TTMSFNCMapsCustomPolygon inherited;
	
private:
	double FRadius;
	Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinate* FCenter;
	void __fastcall SetRadius(const double Value);
	void __fastcall SetCenter(Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinate* const Value);
	bool __fastcall IsRadiusStored();
	
protected:
	void __fastcall DoCenterChanged(System::TObject* Sender);
	
public:
	__fastcall virtual TTMSFNCMapsCircle(System::Classes::TCollection* Collection);
	__fastcall virtual ~TTMSFNCMapsCircle();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	virtual double __fastcall Area();
	virtual bool __fastcall ContainsPoint(const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec &ACoordinate);
	
__published:
	__property Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinate* Center = {read=FCenter, write=SetCenter};
	__property double Radius = {read=FRadius, write=SetRadius, stored=IsRadiusStored};
};


class PASCALIMPLEMENTATION TTMSFNCMapsCircles : public TTMSFNCMapsCustomPolygons
{
	typedef TTMSFNCMapsCustomPolygons inherited;
	
public:
	TTMSFNCMapsCircle* operator[](int Index) { return this->Items[Index]; }
	
private:
	HIDESBASE TTMSFNCMapsCircle* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCMapsCircle* const Value);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall CreateItemClass();
	
public:
	__property TTMSFNCMapsCircle* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	HIDESBASE TTMSFNCMapsCircle* __fastcall Add();
	HIDESBASE TTMSFNCMapsCircle* __fastcall Insert(int Index);
	virtual Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRecArrayArray __fastcall ToCoordinateArray();
public:
	/* TTMSFNCMapsPolyElements.Create */ inline __fastcall virtual TTMSFNCMapsCircles(TTMSFNCCustomMaps* AOwner) : TTMSFNCMapsCustomPolygons(AOwner) { }
	
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCMapsCircles() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCMapsHeadLink : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	TTMSFNCCustomMaps* FOwner;
	System::UnicodeString FURL;
	bool FEnabled;
	System::UnicodeString FRel;
	bool FDefer;
	System::UnicodeString FCharSet;
	TTMSFNCMapsLinkKind FKind;
	System::UnicodeString FType;
	System::Classes::TStringList* FContent;
	bool FAsync;
	void __fastcall SetURL(const System::UnicodeString Value);
	bool __fastcall IsURLStored();
	void __fastcall SetEnabled(const bool Value);
	void __fastcall SetContent(System::Classes::TStringList* const Value);
	void __fastcall SetAsync(const bool Value);
	void __fastcall SetCharSet(const System::UnicodeString Value);
	void __fastcall SetDefer(const bool Value);
	void __fastcall SetRel(const System::UnicodeString Value);
	void __fastcall SetType(const System::UnicodeString Value);
	void __fastcall SetKind(const TTMSFNCMapsLinkKind Value);
	
public:
	__fastcall virtual TTMSFNCMapsHeadLink(System::Classes::TCollection* Collection);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual ~TTMSFNCMapsHeadLink();
	void __fastcall HeadLinkChanged(System::TObject* Sender);
	virtual void __fastcall UpdateHeadLink();
	
__published:
	__property System::UnicodeString URL = {read=FURL, write=SetURL, stored=IsURLStored};
	__property bool Enabled = {read=FEnabled, write=SetEnabled, default=1};
	__property System::UnicodeString Type = {read=FType, write=SetType};
	__property System::UnicodeString CharSet = {read=FCharSet, write=SetCharSet};
	__property System::Classes::TStringList* Content = {read=FContent, write=SetContent};
	__property System::UnicodeString Rel = {read=FRel, write=SetRel};
	__property bool Defer = {read=FDefer, write=SetDefer, nodefault};
	__property bool Async = {read=FAsync, write=SetAsync, nodefault};
	__property TTMSFNCMapsLinkKind Kind = {read=FKind, write=SetKind, nodefault};
};


class PASCALIMPLEMENTATION TTMSFNCMapsHeadLinks : public Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCMapsHeadLink*>
{
	typedef Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCMapsHeadLink*> inherited;
	
public:
	TTMSFNCMapsHeadLink* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCCustomMaps* FOwner;
	HIDESBASE TTMSFNCMapsHeadLink* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCMapsHeadLink* const Value);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall CreateItemClass();
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	
public:
	__fastcall virtual TTMSFNCMapsHeadLinks(TTMSFNCCustomMaps* AOwner);
	__property TTMSFNCMapsHeadLink* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	HIDESBASE virtual void __fastcall Clear();
	HIDESBASE TTMSFNCMapsHeadLink* __fastcall Add();
	TTMSFNCMapsHeadLink* __fastcall AddScript(System::UnicodeString AURL);
	TTMSFNCMapsHeadLink* __fastcall AddLink(System::UnicodeString AURL);
	TTMSFNCMapsHeadLink* __fastcall AddStyleSheetLink(System::UnicodeString AURL);
	TTMSFNCMapsHeadLink* __fastcall AddStyle(System::Classes::TStrings* AStyle);
	HIDESBASE TTMSFNCMapsHeadLink* __fastcall Insert(int Index);
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCMapsHeadLinks() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCMapsOptions : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	double FDefaultLongitude;
	double FDefaultLatitude;
	System::Classes::TNotifyEvent FOnChange;
	bool FConsole;
	double FDefaultZoomLevel;
	bool FShowZoomControl;
	bool FShowMapTypeControl;
	System::UnicodeString FLocale;
	bool FZoomOnDblClick;
	bool FZoomOnWheelScroll;
	bool FPanning;
	System::Uitypes::TAlphaColor FBackgroundColor;
	bool __fastcall IsDefaultLatitudeStored();
	bool __fastcall IsDefaultLongitudeStored();
	void __fastcall SetDefaultLatitude(const double Value);
	void __fastcall SetDefaultLongitude(const double Value);
	void __fastcall SetConsole(const bool Value);
	void __fastcall SetDefaultZoomLevel(const double Value);
	void __fastcall SetShowMapTypeControl(const bool Value);
	void __fastcall SetShowZoomControl(const bool Value);
	bool __fastcall IsLocaleStored();
	void __fastcall SetLocale(const System::UnicodeString Value);
	void __fastcall SetZoomOnDblClick(const bool Value);
	void __fastcall SetPanning(const bool Value);
	void __fastcall SetZoomOnWheelScroll(const bool Value);
	void __fastcall SetBackgroundColor(const System::Uitypes::TAlphaColor Value);
	
protected:
	void __fastcall Changed();
	__property System::Uitypes::TAlphaColor BackgroundColor = {read=FBackgroundColor, write=SetBackgroundColor, default=-4144960};
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual TTMSFNCMapsOptions();
	__property System::Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
	
__published:
	__property bool Console = {read=FConsole, write=SetConsole, default=0};
	__property System::UnicodeString Locale = {read=FLocale, write=SetLocale, stored=IsLocaleStored};
	__property double DefaultLatitude = {read=FDefaultLatitude, write=SetDefaultLatitude, stored=IsDefaultLatitudeStored};
	__property double DefaultLongitude = {read=FDefaultLongitude, write=SetDefaultLongitude, stored=IsDefaultLongitudeStored};
	__property double DefaultZoomLevel = {read=FDefaultZoomLevel, write=SetDefaultZoomLevel};
	__property bool ShowZoomControl = {read=FShowZoomControl, write=SetShowZoomControl, default=1};
	__property bool ShowMapTypeControl = {read=FShowMapTypeControl, write=SetShowMapTypeControl, default=1};
	__property bool ZoomOnDblClick = {read=FZoomOnDblClick, write=SetZoomOnDblClick, default=1};
	__property bool ZoomOnWheelScroll = {read=FZoomOnWheelScroll, write=SetZoomOnWheelScroll, default=1};
	__property bool Panning = {read=FPanning, write=SetPanning, default=1};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTMSFNCMapsOptions() { }
	
};


typedef void __fastcall (__closure *TTMSFNCMapsGetDefaultHTMLMessageEvent)(System::TObject* Sender, System::UnicodeString &ADefaultHTMLMessage);

typedef void __fastcall (__closure *TTMSFNCMapsCustomizePolyElementEvent)(System::TObject* Sender, System::UnicodeString &ACustomizePolyElement);

typedef void __fastcall (__closure *TTMSFNCMapsCustomizeMarkerEvent)(System::TObject* Sender, System::UnicodeString &ACustomizeMarker);

typedef void __fastcall (__closure *TTMSFNCMapsCustomizePopupEvent)(System::TObject* Sender, System::UnicodeString &ACustomizePopup);

typedef void __fastcall (__closure *TTMSFNCMapsCustomizeOptionsEvent)(System::TObject* Sender, System::UnicodeString &ACustomizeOptions);

typedef void __fastcall (__closure *TTMSFNCMapsCustomizeMapEvent)(System::TObject* Sender, System::UnicodeString &ACustomizeMap);

typedef void __fastcall (__closure *TTMSFNCMapsCustomizeGlobalVariablesEvent)(System::TObject* Sender, System::UnicodeString &ACustomizeGlobalVariables);

typedef void __fastcall (__closure *TTMSFNCMapsCustomizeJavaScriptEvent)(System::TObject* Sender, System::UnicodeString &ACustomizeJavaScript);

typedef void __fastcall (__closure *TTMSFNCMapsCustomizeCSSEvent)(System::TObject* Sender, System::UnicodeString &ACustomizeCSS);

typedef void __fastcall (__closure *TTMSFNCMapsCustomizeHeadLinksEvent)(System::TObject* Sender, TTMSFNCMapsLinksList* AList);

typedef void __fastcall (__closure *TTMSFNCMapsCustomizeLocalAccessFileNameEvent)(System::TObject* Sender, System::UnicodeString &AFileName);

typedef System::DynamicArray<TTMSFNCMapsMarker*> TTMSFNCMapsMarkersArray;

class PASCALIMPLEMENTATION TTMSFNCMapsEventData : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	System::UnicodeString FEvent;
	Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinate* FCoordinate;
	System::UnicodeString FEventName;
	double FX;
	double FY;
	System::UnicodeString FID;
	TTMSFNCMapsPolyElement* FPolyElement;
	TTMSFNCMapsMarker* FMarker;
	System::UnicodeString FCustomData;
	
public:
	__fastcall virtual TTMSFNCMapsEventData();
	__fastcall virtual ~TTMSFNCMapsEventData();
	__property TTMSFNCMapsMarker* Marker = {read=FMarker};
	__property TTMSFNCMapsPolyElement* PolyElement = {read=FPolyElement};
	__property System::UnicodeString CustomData = {read=FCustomData, write=FCustomData};
	
__published:
	__property System::UnicodeString ID = {read=FID, write=FID};
	__property System::UnicodeString EventName = {read=FEventName, write=FEventName};
	__property Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinate* Coordinate = {read=FCoordinate};
	__property double X = {read=FX, write=FX};
	__property double Y = {read=FY, write=FY};
};


class PASCALIMPLEMENTATION TTMSFNCMapsGeoJSONEventData : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	System::Json::TJSONValue* FJSONValue;
	Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRecArray FPolygon;
	Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRecArray FPolyline;
	Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec FPoint;
	
public:
	__fastcall virtual TTMSFNCMapsGeoJSONEventData();
	__fastcall virtual ~TTMSFNCMapsGeoJSONEventData();
	__property Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRecArray Polygon = {read=FPolygon, write=FPolygon};
	__property Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRecArray Polyline = {read=FPolyline, write=FPolyline};
	__property Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec Point = {read=FPoint, write=FPoint};
	__property System::Json::TJSONValue* JSONValue = {read=FJSONValue, write=FJSONValue};
};


typedef void __fastcall (__closure *TTMSFNCMapsGeoJSONObjectEvent)(System::TObject* Sender, TTMSFNCMapsGeoJSONEventData* AEventData);

typedef void __fastcall (__closure *TTMSFNCMapsBaseEvent)(System::TObject* Sender, TTMSFNCMapsEventData* AEventData);

typedef void __fastcall (__closure *TTMSFNCMapsGetCenterCoordinateEvent)(System::TObject* Sender, const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec &ACoordinate);

typedef void __fastcall (__closure *TTMSFNCMapsGetBoundsEvent)(System::TObject* Sender, const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsBoundsRec &ABounds);

typedef void __fastcall (__closure *TTMSFNCMapsGetZoomLevelEvent)(System::TObject* Sender, double AZoomLevel);

typedef void __fastcall (__closure *TTMSFNCMapsRouteCalculatorWayPointEvent)(System::TObject* Sender, TTMSFNCMapsMarker* AMarker, Fmx::Tmsfncroutecalculator::TTMSFNCRouteCalculatorSegment* ASegment);

typedef void __fastcall (__closure *TTMSFNCMapsRouteCalculatorPolylineEvent)(System::TObject* Sender, TTMSFNCMapsPolyline* APolyline, Fmx::Tmsfncroutecalculator::TTMSFNCRouteCalculatorSegment* ASegment);

typedef void __fastcall (__closure *TTMSFNCMapsRouteCalculatorDeletePolylineEvent)(System::TObject* Sender, bool &ACanDelete, TTMSFNCMapsPolyline* APolyline, Fmx::Tmsfncroutecalculator::TTMSFNCRouteCalculatorSegment* ASegment);

typedef void __fastcall (__closure *TTMSFNCMapsRouteCalculatorDeleteMarkerEvent)(System::TObject* Sender, bool &ACanDelete, TTMSFNCMapsMarker* AMarker, Fmx::Tmsfncroutecalculator::TTMSFNCRouteCalculatorSegment* ASegment);

_DECLARE_METACLASS(System::TMetaClass, TTMSFNCMapsOptionsClass);

_DECLARE_METACLASS(System::TMetaClass, TTMSFNCMapsMarkersClass);

_DECLARE_METACLASS(System::TMetaClass, TTMSFNCMapsElementContainersClass);

_DECLARE_METACLASS(System::TMetaClass, TTMSFNCMapsHeadLinksClass);

_DECLARE_METACLASS(System::TMetaClass, TTMSFNCMapsRectanglesClass);

_DECLARE_METACLASS(System::TMetaClass, TTMSFNCMapsCirclesClass);

_DECLARE_METACLASS(System::TMetaClass, TTMSFNCMapsPolylinesClass);

_DECLARE_METACLASS(System::TMetaClass, TTMSFNCMapsPolygonsClass);

enum DECLSPEC_DENUM TTMSFNCMapsHTMLEvent : unsigned char { heClick, heDblClick, heKeyPress, heKeyDown, heKeyUp, heMouseDown, heMouseMove, heMouseUp, heMouseEnter, heMouseLeave, heBlur, heFocus, heChange, heSelect, heCustom, heNone };

enum DECLSPEC_DENUM TTMSFNCMapsPosition : unsigned char { poCustom, poTopLeft, poTopCenter, poTopRight, poCenterLeft, poCenterCenter, poBottomLeft, poBottomCenter, poBottomRight };

enum DECLSPEC_DENUM TTMSFNCMapsReturnValue : unsigned char { rvNone, rvValue, rvChecked, rvInnerHTML, rvInnerText, rvSelectedIndex };

class PASCALIMPLEMENTATION TTMSFNCMapsElementAction : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	System::UnicodeString FHTMLElementID;
	TTMSFNCMapsHTMLEvent FElementEvent;
	int FTag;
	bool FEnabled;
	System::UnicodeString FName;
	TTMSFNCMapsBaseEvent FOnExecute;
	System::UnicodeString FCustomEvent;
	TTMSFNCMapsReturnValue FEventReturnValue;
	void __fastcall SetHTMLElementID(const System::UnicodeString Value);
	void __fastcall SetName(const System::UnicodeString Value);
	void __fastcall SetElementEvent(const TTMSFNCMapsHTMLEvent Value);
	void __fastcall SetEnabled(const bool Value);
	void __fastcall SetCustomEvent(const System::UnicodeString Value);
	void __fastcall SetEventReturnValue(const TTMSFNCMapsReturnValue Value);
	
protected:
	TTMSFNCMapsElementContainer* FOwner;
	virtual void __fastcall UpdateAction();
	
public:
	__fastcall virtual TTMSFNCMapsElementAction(System::Classes::TCollection* Collection);
	__fastcall virtual ~TTMSFNCMapsElementAction();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__property TTMSFNCMapsElementContainer* ElementContainer = {read=FOwner};
	
__published:
	__property bool Enabled = {read=FEnabled, write=SetEnabled, default=1};
	__property TTMSFNCMapsHTMLEvent Event = {read=FElementEvent, write=SetElementEvent, default=0};
	__property System::UnicodeString CustomEvent = {read=FCustomEvent, write=SetCustomEvent};
	__property TTMSFNCMapsReturnValue EventReturnValue = {read=FEventReturnValue, write=SetEventReturnValue, default=0};
	__property System::UnicodeString HTMLElementID = {read=FHTMLElementID, write=SetHTMLElementID};
	__property System::UnicodeString Name = {read=FName, write=SetName};
	__property int Tag = {read=FTag, write=FTag, default=0};
	__property TTMSFNCMapsBaseEvent OnExecute = {read=FOnExecute, write=FOnExecute};
};


class PASCALIMPLEMENTATION TTMSFNCMapsElementActions : public System::Classes::TOwnedCollection
{
	typedef System::Classes::TOwnedCollection inherited;
	
public:
	TTMSFNCMapsElementAction* operator[](int AIndex) { return this->Items[AIndex]; }
	
private:
	TTMSFNCMapsElementContainer* FOwner;
	TTMSFNCMapsElementAction* __fastcall GetItems(int AIndex);
	void __fastcall SetItems(int AIndex, TTMSFNCMapsElementAction* const Value);
	TTMSFNCMapsElementAction* __fastcall GetAction(System::UnicodeString AName);
	
public:
	__fastcall TTMSFNCMapsElementActions(TTMSFNCMapsElementContainer* AOwner);
	HIDESBASE TTMSFNCMapsElementAction* __fastcall Add();
	HIDESBASE TTMSFNCMapsElementAction* __fastcall Insert(int AIndex);
	__property TTMSFNCMapsElementAction* Items[int AIndex] = {read=GetItems, write=SetItems/*, default*/};
	__property TTMSFNCMapsElementAction* Action[System::UnicodeString AName] = {read=GetAction};
	TTMSFNCMapsElementAction* __fastcall GetActionByName(System::UnicodeString AName);
	TTMSFNCMapsElementAction* __fastcall GetByName(System::UnicodeString AName);
	TTMSFNCMapsElementAction* __fastcall FindByName(System::UnicodeString AName);
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCMapsElementActions() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCMapsElementContainer : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	bool FReload;
	System::UnicodeString FID;
	bool FDataBoolean;
	System::UnicodeString FDataString;
	System::TObject* FDataObject;
	NativeInt FDataInteger;
	void *FDataPointer;
	System::Classes::TStringList* FHTML;
	bool FRecreate;
	bool FVisible;
	TTMSFNCMapsElementActions* FActions;
	TTMSFNCMapsPosition FPosition;
	System::UnicodeString FHTMLElementID;
	System::UnicodeString FHTMLElementClassName;
	bool FUseDefaultStyle;
	System::Classes::TStringList* FScript;
	System::Classes::TStringList* FStyle;
	Fmx::Tmsfnctypes::TTMSFNCMargins* FMargins;
	void __fastcall SetHTML(System::Classes::TStringList* const Value);
	System::UnicodeString __fastcall GetID();
	void __fastcall SetVisible(const bool Value);
	void __fastcall SetActions(TTMSFNCMapsElementActions* const Value);
	void __fastcall SetPosition(const TTMSFNCMapsPosition Value);
	void __fastcall SetHTMLElementClassName(const System::UnicodeString Value);
	void __fastcall SetHTMLElementID(const System::UnicodeString Value);
	void __fastcall SetUseDefaultStyle(const bool Value);
	System::UnicodeString __fastcall GetHTMLAsBase64();
	void __fastcall SetStyle(System::Classes::TStringList* const Value);
	void __fastcall SetScript(System::Classes::TStringList* const Value);
	System::UnicodeString __fastcall GetScriptAsBase64();
	System::UnicodeString __fastcall GetStyleAsBase64();
	void __fastcall SetMargins(Fmx::Tmsfnctypes::TTMSFNCMargins* const Value);
	
protected:
	TTMSFNCCustomMaps* FOwner;
	virtual void __fastcall UpdateElementContainer();
	void __fastcall ElementContainerChanged(System::TObject* Sender);
	
public:
	__fastcall virtual TTMSFNCMapsElementContainer(System::Classes::TCollection* Collection);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual ~TTMSFNCMapsElementContainer();
	virtual TTMSFNCMapsElementAction* __fastcall AddAction(System::UnicodeString AHTMLElementID, TTMSFNCMapsHTMLEvent AEvent = (TTMSFNCMapsHTMLEvent)(0x0));
	__property TTMSFNCCustomMaps* Maps = {read=FOwner};
	__property void * DataPointer = {read=FDataPointer, write=FDataPointer};
	__property bool DataBoolean = {read=FDataBoolean, write=FDataBoolean, nodefault};
	__property System::TObject* DataObject = {read=FDataObject, write=FDataObject};
	__property System::UnicodeString DataString = {read=FDataString, write=FDataString};
	__property NativeInt DataInteger = {read=FDataInteger, write=FDataInteger};
	__property bool Recreate = {read=FRecreate, write=FRecreate, default=0};
	
__published:
	__property System::UnicodeString ID = {read=GetID};
	__property System::Classes::TStringList* HTML = {read=FHTML, write=SetHTML};
	__property System::UnicodeString HTMLAsBase64 = {read=GetHTMLAsBase64};
	__property bool Visible = {read=FVisible, write=SetVisible, default=1};
	__property TTMSFNCMapsElementActions* Actions = {read=FActions, write=SetActions};
	__property TTMSFNCMapsPosition Position = {read=FPosition, write=SetPosition, default=1};
	__property System::UnicodeString HTMLElementID = {read=FHTMLElementID, write=SetHTMLElementID};
	__property System::UnicodeString HTMLElementClassName = {read=FHTMLElementClassName, write=SetHTMLElementClassName};
	__property bool UseDefaultStyle = {read=FUseDefaultStyle, write=SetUseDefaultStyle, default=1};
	__property System::Classes::TStringList* Style = {read=FStyle, write=SetStyle};
	__property System::UnicodeString StyleAsBase64 = {read=GetStyleAsBase64};
	__property System::Classes::TStringList* Script = {read=FScript, write=SetScript};
	__property System::UnicodeString ScriptAsBase64 = {read=GetScriptAsBase64};
	__property Fmx::Tmsfnctypes::TTMSFNCMargins* Margins = {read=FMargins, write=SetMargins};
};


class PASCALIMPLEMENTATION TTMSFNCMapsElementContainers : public Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCMapsElementContainer*>
{
	typedef Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCMapsElementContainer*> inherited;
	
public:
	TTMSFNCMapsElementContainer* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCCustomMaps* FOwner;
	HIDESBASE TTMSFNCMapsElementContainer* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCMapsElementContainer* const Value);
	TTMSFNCMapsElementContainer* __fastcall GetItemByID(System::UnicodeString ID);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall CreateItemClass();
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	
public:
	__fastcall virtual TTMSFNCMapsElementContainers(TTMSFNCCustomMaps* AOwner);
	__property TTMSFNCMapsElementContainer* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	HIDESBASE virtual void __fastcall Clear();
	virtual void __fastcall Recreate();
	HIDESBASE TTMSFNCMapsElementContainer* __fastcall Add();
	HIDESBASE TTMSFNCMapsElementContainer* __fastcall Insert(int Index);
	__property TTMSFNCMapsElementContainer* ItemByID[System::UnicodeString ID] = {read=GetItemByID};
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCMapsElementContainers() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCustomMaps : public Fmx::Tmsfncwebbrowser::TTMSFNCCustomWebBrowser
{
	typedef Fmx::Tmsfncwebbrowser::TTMSFNCCustomWebBrowser inherited;
	
private:
	Fmx::Tmsfncroutecalculator::TTMSFNCRouteCalculator* FRouteCalculator;
	TTMSFNCMapsMarker* FRouteCalculatorMarker;
	TTMSFNCMapsMarker* FRouteCalculatorDragMarker;
	bool FRouteCalculatorDragStarted;
	TTMSFNCMapsPolyElement* FRouteCalculatorPolyline;
	TTMSFNCMapsPolyline* FRouteCalculatorSelectedPolyline;
	double FRouteCalculatorDragX;
	double FRouteCalculatorDragY;
	double FRouteCalculatorDragLat;
	double FRouteCalculatorDragLon;
	bool FMapInitialized;
	int FUpdateCount;
	_di_ITMSFNCCustomMaps FMaps;
	_di_ITMSFNCCustomMapsInstance FMapsInstance;
	_di_ITMSFNCCustomMapsProperties FMapsProperties;
	TTMSFNCMapsService FService;
	System::UnicodeString FAPIKey;
	TTMSFNCMapsOptions* FOptions;
	TTMSFNCMapsCustomizeJavaScriptEvent FOnCustomizeJavaScript;
	TTMSFNCMapsCustomizeMapEvent FOnCustomizeMap;
	TTMSFNCMapsCustomizeGlobalVariablesEvent FOnCustomizeGlobalVariables;
	TTMSFNCMapsCustomizeMarkerEvent FOnCustomizeMarker;
	TTMSFNCMapsCustomizePopupEvent FOnCustomizePopup;
	TTMSFNCMapsCustomizeOptionsEvent FOnCustomizeOptions;
	TTMSFNCMapsCustomizePolyElementEvent FOnCustomizePolyElement;
	TTMSFNCMapsBaseEvent FOnMapTypeChanged;
	TTMSFNCMapsBaseEvent FOnZoomChanged;
	TTMSFNCMapsBaseEvent FOnMapClick;
	TTMSFNCMapsBaseEvent FOnMapDblClick;
	TTMSFNCMapsBaseEvent FOnMapMouseUp;
	TTMSFNCMapsBaseEvent FOnMapMouseDown;
	TTMSFNCMapsBaseEvent FOnMapMouseMove;
	TTMSFNCMapsBaseEvent FOnMapMouseEnter;
	TTMSFNCMapsBaseEvent FOnMapMouseLeave;
	TTMSFNCMapsBaseEvent FOnMarkerClick;
	TTMSFNCMapsBaseEvent FOnMarkerRightClick;
	TTMSFNCMapsBaseEvent FOnMarkerDblClick;
	TTMSFNCMapsBaseEvent FOnMarkerMouseUp;
	TTMSFNCMapsBaseEvent FOnMarkerMouseDown;
	TTMSFNCMapsBaseEvent FOnMarkerMouseEnter;
	TTMSFNCMapsBaseEvent FOnMarkerMouseLeave;
	TTMSFNCMapsBaseEvent FOnPolyElementClick;
	TTMSFNCMapsBaseEvent FOnPolyElementRightClick;
	TTMSFNCMapsBaseEvent FOnPolyElementDblClick;
	TTMSFNCMapsBaseEvent FOnPolyElementMouseUp;
	TTMSFNCMapsBaseEvent FOnPolyElementMouseDown;
	TTMSFNCMapsBaseEvent FOnPolyElementMouseEnter;
	TTMSFNCMapsBaseEvent FOnPolyElementMouseLeave;
	TTMSFNCMapsBaseEvent FOnCustomEvent;
	System::Classes::TNotifyEvent FOnMapInitialized;
	TTMSFNCMapsMarkers* FMarkers;
	TTMSFNCMapsPolygons* FPolygons;
	TTMSFNCMapsPolylines* FPolylines;
	TTMSFNCMapsCircles* FCircles;
	TTMSFNCMapsRectangles* FRectangles;
	TTMSFNCMapsCustomizeCSSEvent FOnCustomizeCSS;
	TTMSFNCMapsGetDefaultHTMLMessageEvent FOnGetDefaultHTMLMessage;
	bool FLocalFileAccess;
	TTMSFNCMapsGetCenterCoordinateEvent FOnGetCenterCoordinate;
	TTMSFNCMapsGetBoundsEvent FOnGetBoundsCoordinate;
	TTMSFNCMapsGetZoomLevelEvent FOnGetZoomLevel;
	Fmx::Tmsfncmapscommontypes::TTMSFNCMapsGPXTrackEvent FOnCreateGPXTrack;
	Fmx::Tmsfncmapscommontypes::TTMSFNCMapsGPXSegmentEvent FOnCreateGPXSegment;
	TTMSFNCMapsGeoJSONObjectEvent FOnCreateGeoJSONObject;
	TTMSFNCMapsRouteCalculatorWayPointEvent FOnRouteCalculatorWayPointAdded;
	TTMSFNCMapsRouteCalculatorWayPointEvent FOnRouteCalculatorWayPointUpdated;
	TTMSFNCMapsRouteCalculatorPolylineEvent FOnRouteCalculatorPolylineAdded;
	TTMSFNCMapsRouteCalculatorPolylineEvent FOnRouteCalculatorPolylineUpdated;
	TTMSFNCMapsMarker* FRouteCalculatorSelectedMarker;
	TTMSFNCMapsRouteCalculatorDeletePolylineEvent FOnRouteCalculatorDeletePolylineEvent;
	System::Classes::TNotifyEvent FOnRouteCalculatorAfterDeletePolylineEvent;
	System::Classes::TNotifyEvent FOnRouteCalculatorAfterDeleteMarkerEvent;
	TTMSFNCMapsRouteCalculatorDeleteMarkerEvent FOnRouteCalculatorDeleteMarkerEvent;
	TTMSFNCMapsBaseEvent FOnMapMoveEnd;
	TTMSFNCMapsBaseEvent FOnMapMoveStart;
	TTMSFNCMapsCustomizeHeadLinksEvent FOnCustomizeHeadLinks;
	TTMSFNCMapsBaseEvent FOnMapRightClick;
	TTMSFNCMapsElementContainers* FElementContainers;
	TTMSFNCMapsHeadLinks* FHeadLinks;
	TTMSFNCMapsCustomizeLocalAccessFileNameEvent FOnCustomizeLocalAccessFileName;
	void __fastcall SetService(const TTMSFNCMapsService Value);
	void __fastcall SetAPIKey(const System::UnicodeString Value);
	void __fastcall SetOptions(TTMSFNCMapsOptions* const Value);
	void __fastcall SetMarkers(TTMSFNCMapsMarkers* const Value);
	void __fastcall SetPolylines(TTMSFNCMapsPolylines* const Value);
	void __fastcall SetPolygons(TTMSFNCMapsPolygons* const Value);
	void __fastcall SetRectangles(TTMSFNCMapsRectangles* const Value);
	void __fastcall SetCircles(TTMSFNCMapsCircles* const Value);
	void __fastcall SetMapInitialized(const bool Value);
	void __fastcall SetLocalFileAccess(const bool Value);
	void __fastcall SetRouteCalculator(Fmx::Tmsfncroutecalculator::TTMSFNCRouteCalculator* const Value);
	void __fastcall SetElementContainers(TTMSFNCMapsElementContainers* const Value);
	void __fastcall SetHeadLinks(TTMSFNCMapsHeadLinks* const Value);
	
protected:
	virtual TTMSFNCMapsMarkersClass __fastcall GetMarkersClass();
	virtual TTMSFNCMapsElementContainersClass __fastcall GetElementContainersClass();
	virtual TTMSFNCMapsHeadLinksClass __fastcall GetHeadLinksClass();
	virtual TTMSFNCMapsRectanglesClass __fastcall GetRectanglesClass();
	virtual TTMSFNCMapsCirclesClass __fastcall GetCirclesClass();
	virtual TTMSFNCMapsPolygonsClass __fastcall GetPolygonsClass();
	virtual TTMSFNCMapsPolylinesClass __fastcall GetPolylinesClass();
	virtual TTMSFNCMapsOptionsClass __fastcall GetOptionsClass();
	bool __fastcall ParseEvent(System::UnicodeString AValue);
	System::UnicodeString __fastcall ParseScript(System::UnicodeString AValue);
	System::UnicodeString __fastcall InternalSaveGPX(Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRecArray ACoordinates, const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsGPXMetaData &AMetaData);
	virtual Fmx::Tmsfncmapscommontypes::TTMSFNCMapsGPXRec __fastcall InternalLoadGPX(System::UnicodeString AText, bool AAutoDisplay = true, bool AZoomToBounds = true, int AStrokeWidth = 0x3, System::Uitypes::TAlphaColor AStrokeColor = (System::Uitypes::TAlphaColor)(0xff000000), bool ADisplayElevation = false, bool ADisplayTimeStamps = false, int AMinSecondsBetweenTimeStamps = 0x258)/* overload */;
	virtual Fmx::Tmsfncmapscommontypes::TTMSFNCMapsGPXRec __fastcall InternalLoadGPX(System::UnicodeString AText, bool AAutoDisplay = true, bool AZoomToBounds = true, int AStrokeWidth = 0x3, TTMSFNCMapsGPXColorRecArray AElevationColors = TTMSFNCMapsGPXColorRecArray(), bool ADisplayElevation = false, bool ADisplayTimeStamps = false, int AMinSecondsBetweenTimeStamps = 0x258)/* overload */;
	virtual TTMSFNCMapsGeoJSONRec __fastcall InternalLoadGeoJSON(System::UnicodeString AText, bool AAutoDisplay = true, bool AZoomToBounds = true);
	virtual System::UnicodeString __fastcall GetCustomGlobalVariables();
	virtual System::UnicodeString __fastcall GetLocalAccessFileName();
	virtual System::UnicodeString __fastcall GetCustomFunctions();
	virtual System::UnicodeString __fastcall GetCustomOptions();
	virtual System::UnicodeString __fastcall GetCustomMap();
	virtual System::UnicodeString __fastcall GetAddCustomObjects();
	bool __fastcall RouteCalculatorCheck();
	System::UnicodeString __fastcall GetRouteCalculatorStartMarker();
	System::UnicodeString __fastcall GetRouteCalculatorEndMarker();
	System::UnicodeString __fastcall GetRouteCalculatorWayPointMarker();
	System::UnicodeString __fastcall GetRouteCalculatorAddWayPointMarker();
	System::UnicodeString __fastcall GetRouteCalculatorSelectedWayPointMarker();
	void __fastcall RouteCalculatorClearSelected();
	virtual void __fastcall Notification(System::Classes::TComponent* AComponent, System::Classes::TOperation Operation);
	virtual void __fastcall Loaded();
	void __fastcall DestroyMap();
	virtual void __fastcall DoMapInitialized();
	virtual void __fastcall DoCustomizeLocalAccessFileName(System::UnicodeString &AFileName);
	virtual void __fastcall DoGetZoomLevel(const System::UnicodeString AValue);
	virtual void __fastcall DoGetCenterCoordinate(const System::UnicodeString AValue);
	virtual void __fastcall DoGetBounds(const System::UnicodeString AValue);
	virtual void __fastcall DoZoomChanged(TTMSFNCMapsEventData* AEventData);
	virtual void __fastcall DoMapTypeChanged(TTMSFNCMapsEventData* AEventData);
	virtual void __fastcall DoMapMoveStart(TTMSFNCMapsEventData* AEventData);
	virtual void __fastcall DoMapMoveEnd(TTMSFNCMapsEventData* AEventData);
	virtual void __fastcall DoMapClick(TTMSFNCMapsEventData* AEventData);
	virtual void __fastcall DoMapRightClick(TTMSFNCMapsEventData* AEventData);
	virtual void __fastcall DoMapKeyDown(TTMSFNCMapsEventData* AEventData);
	virtual void __fastcall DoMapDblClick(TTMSFNCMapsEventData* AEventData);
	virtual void __fastcall DoMapMouseUp(TTMSFNCMapsEventData* AEventData);
	virtual void __fastcall DoMapMouseDown(TTMSFNCMapsEventData* AEventData);
	virtual void __fastcall DoMapMouseMove(TTMSFNCMapsEventData* AEventData);
	virtual void __fastcall DoMapMouseEnter(TTMSFNCMapsEventData* AEventData);
	virtual void __fastcall DoMapMouseLeave(TTMSFNCMapsEventData* AEventData);
	virtual void __fastcall DoMarkerClick(TTMSFNCMapsEventData* AEventData);
	virtual void __fastcall DoMarkerRightClick(TTMSFNCMapsEventData* AEventData);
	virtual void __fastcall DoMarkerDblClick(TTMSFNCMapsEventData* AEventData);
	virtual void __fastcall DoMarkerMouseUp(TTMSFNCMapsEventData* AEventData);
	virtual void __fastcall DoMarkerMouseDown(TTMSFNCMapsEventData* AEventData);
	virtual void __fastcall DoMarkerMouseEnter(TTMSFNCMapsEventData* AEventData);
	virtual void __fastcall DoMarkerMouseLeave(TTMSFNCMapsEventData* AEventData);
	virtual void __fastcall DoPolyElementClick(TTMSFNCMapsEventData* AEventData);
	virtual void __fastcall DoPolyElementRightClick(TTMSFNCMapsEventData* AEventData);
	virtual void __fastcall DoPolyElementDblClick(TTMSFNCMapsEventData* AEventData);
	virtual void __fastcall DoPolyElementMouseUp(TTMSFNCMapsEventData* AEventData);
	virtual void __fastcall DoPolyElementMouseDown(TTMSFNCMapsEventData* AEventData);
	virtual void __fastcall DoPolyElementMouseEnter(TTMSFNCMapsEventData* AEventData);
	virtual void __fastcall DoPolyElementMouseLeave(TTMSFNCMapsEventData* AEventData);
	virtual void __fastcall DoCreateGPXTrack(Fmx::Tmsfncmapscommontypes::TTMSFNCMapsGPXTrackEventData* AEventData);
	virtual void __fastcall DoCreateGPXSegment(Fmx::Tmsfncmapscommontypes::TTMSFNCMapsGPXSegmentEventData* AEventData);
	virtual void __fastcall DoCreateGeoJSONObject(TTMSFNCMapsGeoJSONEventData* AEventData);
	virtual void __fastcall DoCustomEvent(TTMSFNCMapsEventData* AEventData);
	virtual void __fastcall DoCustomizeMap(System::UnicodeString &ACustomizeMap);
	virtual void __fastcall DoCustomizeGlobalVariables(System::UnicodeString &ACustomizeGlobalVariables);
	virtual void __fastcall DoCustomizeMarker(System::UnicodeString &ACustomizeMarker);
	virtual void __fastcall DoCustomizePopup(System::UnicodeString &ACustomizePopup);
	virtual void __fastcall DoCustomizeOptions(System::UnicodeString &ACustomizeOptions);
	virtual void __fastcall DoCustomizePolyElement(System::UnicodeString &ACustomizePolyElement);
	virtual void __fastcall DoCustomizeJavaScript(System::UnicodeString &ACustomizeJavaScript);
	virtual void __fastcall DoCustomizeHeadLinks(TTMSFNCMapsLinksList* AList);
	virtual void __fastcall DoCustomizeCSS(System::UnicodeString &ACustomizeCSS);
	virtual void __fastcall DoGetDefaultHTMLMessage(System::UnicodeString &AMessage);
	void __fastcall DoRouteCalculatorWayPointAdded(TTMSFNCMapsMarker* AMarker, Fmx::Tmsfncroutecalculator::TTMSFNCRouteCalculatorSegment* ASegment);
	void __fastcall DoRouteCalculatorWayPointUpdated(TTMSFNCMapsMarker* AMarker, Fmx::Tmsfncroutecalculator::TTMSFNCRouteCalculatorSegment* ASegment);
	void __fastcall DoRouteCalculatorPolylineAdded(TTMSFNCMapsPolyline* APolyline, Fmx::Tmsfncroutecalculator::TTMSFNCRouteCalculatorSegment* ASegment);
	void __fastcall DoRouteCalculatorPolylineUpdated(TTMSFNCMapsPolyline* APolyline, Fmx::Tmsfncroutecalculator::TTMSFNCRouteCalculatorSegment* ASegment);
	void __fastcall DoRouteCalculatorBeforeDeletePolyline(bool &ACanDelete, TTMSFNCMapsPolyline* APolyline, Fmx::Tmsfncroutecalculator::TTMSFNCRouteCalculatorSegment* ASegment);
	void __fastcall DoRouteCalculatorAfterDeletePolyline();
	void __fastcall DoRouteCalculatorBeforeDeleteMarker(bool &ACanDelete, TTMSFNCMapsMarker* AMarker, Fmx::Tmsfncroutecalculator::TTMSFNCRouteCalculatorSegment* ASegment);
	void __fastcall DoRouteCalculatorAfterDeleteMarker();
	virtual void __fastcall CallCustomEvent(TTMSFNCMapsEventData* AEventData);
	virtual void __fastcall BeforeNavigate(Fmx::Tmsfncwebbrowser::TTMSFNCCustomWebBrowserBeforeNavigateParams &Params);
	void __fastcall OptionsChanged(System::TObject* Sender);
	virtual void __fastcall Initialized();
	virtual void __fastcall InitializeMap();
	virtual void __fastcall InitializeHTML();
	virtual void __fastcall CreateClasses();
	virtual void __fastcall GetLinks(TTMSFNCMapsLinksList* AList, bool AIncludeContent = true, bool ACheckReady = true);
	virtual void __fastcall GetBodyLinks(TTMSFNCMapsLinksList* AList, bool AIncludeContent = true, bool ACheckReady = true);
	virtual void __fastcall GetHeadLinks(TTMSFNCMapsLinksList* AList, bool ACheckReady = true);
	virtual void __fastcall UpdateElementContainers();
	virtual void __fastcall DoUpdateElementContainers(const System::UnicodeString AValue);
	virtual void __fastcall UpdateMarkers();
	virtual void __fastcall DoUpdateMarkers(const System::UnicodeString AValue);
	virtual void __fastcall UpdatePolyElements();
	virtual void __fastcall DoUpdatePolyElements(const System::UnicodeString AValue);
	virtual void __fastcall DoCloseAllPopups(const System::UnicodeString AValue);
	virtual void __fastcall UpdateOptions();
	virtual void __fastcall DoKeyPressed(System::Word &Key);
	virtual void __fastcall RouteCalculatorMarkerMoved(const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec &ACoordinate);
	virtual void __fastcall RouteCalculatorPolylineMoved(const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec &ACoordinate);
	virtual void __fastcall RouteCalculatorDoCalculateRoute(System::TObject* Sender, Fmx::Tmsfncroutecalculator::TTMSFNCRouteCalculatorRoute* const ARoute);
	void __fastcall CheckInstances();
	virtual bool __fastcall CanLoadDefaultHTML();
	System::UnicodeString __fastcall GetDefaultLatitude();
	System::UnicodeString __fastcall GetDefaultLongitude();
	System::UnicodeString __fastcall GetDefaultZoomLevel();
	System::UnicodeString __fastcall GetAPIKey();
	System::Uitypes::TAlphaColor __fastcall GetBackgroundColor();
	System::UnicodeString __fastcall GetLocale(Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode AMode = (Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode)(0x0));
	bool __fastcall GetShowZoomControl();
	bool __fastcall GetShowMapTypeControl();
	bool __fastcall GetZoomOnDblClick();
	bool __fastcall GetPanning();
	virtual System::UnicodeString __fastcall GetMapID();
	virtual double __fastcall GetTilt();
	virtual double __fastcall GetHeading();
	bool __fastcall GetZoomOnWheelScroll();
	virtual TTMSFNCMapsPolyElement* __fastcall GetPolyElementByID(System::UnicodeString AID);
	virtual TTMSFNCMapsMarker* __fastcall GetMarkerByID(System::UnicodeString AID);
	virtual TTMSFNCMapsElementContainer* __fastcall GetElementContainerByID(System::UnicodeString AID);
	virtual System::UnicodeString __fastcall GetCommunicationLayer();
	virtual System::UnicodeString __fastcall GetZoomToBoundsFunction();
	virtual System::UnicodeString __fastcall GetSetCenterCoordinateFunction();
	virtual System::UnicodeString __fastcall GetGetCenterCoordinateFunction();
	virtual System::UnicodeString __fastcall GetGetLatLonToXYFunction();
	virtual System::UnicodeString __fastcall GetGetXYToLatLonFunction();
	virtual System::UnicodeString __fastcall GetGetBoundsFunction();
	virtual System::UnicodeString __fastcall GetSetZoomLevelFunction();
	virtual System::UnicodeString __fastcall GetGetZoomLevelFunction();
	virtual System::UnicodeString __fastcall GetUpdateOptions();
	virtual System::UnicodeString __fastcall GetAddOrUpdateMarkerFunction();
	virtual System::UnicodeString __fastcall GetAddOrUpdateElementContainerFunction();
	virtual System::UnicodeString __fastcall GetShowPopupFunction();
	virtual System::UnicodeString __fastcall GetClosePopupFunction();
	virtual System::UnicodeString __fastcall GetDeleteMarkerFunction();
	virtual System::UnicodeString __fastcall GetAddMarkers();
	virtual System::UnicodeString __fastcall GetDeleteElementContainerFunction();
	virtual System::UnicodeString __fastcall GetAddElementContainers();
	virtual System::UnicodeString __fastcall GetAddOrUpdatePolyElementFunction();
	virtual System::UnicodeString __fastcall GetDeletePolyElementFunction();
	virtual System::UnicodeString __fastcall InternalGetAddPolyElements(TTMSFNCMapsPolyElements* AElements);
	virtual System::UnicodeString __fastcall GetAddPolyElements();
	virtual System::UnicodeString __fastcall GetGlobalVariables();
	virtual System::UnicodeString __fastcall GetCallInitialize();
	virtual System::UnicodeString __fastcall GetWaitForMapInitialized();
	virtual System::UnicodeString __fastcall GetDefaultHTML();
	bool __fastcall MapReady();
	virtual int __fastcall GetVersionNr();
	virtual System::UnicodeString __fastcall GetDocURL();
	virtual System::UnicodeString __fastcall GetTipsURL();
	_di_ITMSFNCCustomMaps __fastcall Maps();
	virtual System::UnicodeString __fastcall ParseLinks(TTMSFNCMapsLinksList* AList);
	virtual System::UnicodeString __fastcall GetVersion();
	virtual System::UnicodeString __fastcall GetAPIVersion();
	virtual System::UnicodeString __fastcall GetHeadStyle();
	virtual System::UnicodeString __fastcall GetBody();
	__property bool MapInitialized = {read=FMapInitialized, write=SetMapInitialized, nodefault};
	__property int UpdateCount = {read=FUpdateCount, nodefault};
	__property TTMSFNCMapsService Service = {read=FService, write=SetService, default=0};
	__property System::UnicodeString APIKey = {read=FAPIKey, write=SetAPIKey};
	__property bool LocalFileAccess = {read=FLocalFileAccess, write=SetLocalFileAccess, default=0};
	__property TTMSFNCMapsOptions* Options = {read=FOptions, write=SetOptions};
	__property TTMSFNCMapsMarkers* Markers = {read=FMarkers, write=SetMarkers};
	__property TTMSFNCMapsElementContainers* ElementContainers = {read=FElementContainers, write=SetElementContainers};
	__property TTMSFNCMapsHeadLinks* HeadLinks = {read=FHeadLinks, write=SetHeadLinks};
	__property TTMSFNCMapsPolylines* Polylines = {read=FPolylines, write=SetPolylines};
	__property TTMSFNCMapsPolygons* Polygons = {read=FPolygons, write=SetPolygons};
	__property TTMSFNCMapsCircles* Circles = {read=FCircles, write=SetCircles};
	__property TTMSFNCMapsRectangles* Rectangles = {read=FRectangles, write=SetRectangles};
	__property TTMSFNCMapsCustomizeLocalAccessFileNameEvent OnCustomizeLocalAccessFileName = {read=FOnCustomizeLocalAccessFileName, write=FOnCustomizeLocalAccessFileName};
	__property TTMSFNCMapsCustomizeCSSEvent OnCustomizeCSS = {read=FOnCustomizeCSS, write=FOnCustomizeCSS};
	__property TTMSFNCMapsCustomizeJavaScriptEvent OnCustomizeJavaScript = {read=FOnCustomizeJavaScript, write=FOnCustomizeJavaScript};
	__property TTMSFNCMapsCustomizeHeadLinksEvent OnCustomizeHeadLinks = {read=FOnCustomizeHeadLinks, write=FOnCustomizeHeadLinks};
	__property TTMSFNCMapsCustomizeMapEvent OnCustomizeMap = {read=FOnCustomizeMap, write=FOnCustomizeMap};
	__property TTMSFNCMapsCustomizeGlobalVariablesEvent OnCustomizeGlobalVariables = {read=FOnCustomizeGlobalVariables, write=FOnCustomizeGlobalVariables};
	__property TTMSFNCMapsCustomizeMarkerEvent OnCustomizeMarker = {read=FOnCustomizeMarker, write=FOnCustomizeMarker};
	__property TTMSFNCMapsCustomizePopupEvent OnCustomizePopup = {read=FOnCustomizePopup, write=FOnCustomizePopup};
	__property TTMSFNCMapsGetDefaultHTMLMessageEvent OnGetDefaultHTMLMessage = {read=FOnGetDefaultHTMLMessage, write=FOnGetDefaultHTMLMessage};
	__property TTMSFNCMapsCustomizeOptionsEvent OnCustomizeOptions = {read=FOnCustomizeOptions, write=FOnCustomizeOptions};
	__property TTMSFNCMapsCustomizePolyElementEvent OnCustomizePolyElement = {read=FOnCustomizePolyElement, write=FOnCustomizePolyElement};
	__property TTMSFNCMapsBaseEvent OnZoomChanged = {read=FOnZoomChanged, write=FOnZoomChanged};
	__property TTMSFNCMapsBaseEvent OnMapTypeChanged = {read=FOnMapTypeChanged, write=FOnMapTypeChanged};
	__property TTMSFNCMapsBaseEvent OnMapMoveStart = {read=FOnMapMoveStart, write=FOnMapMoveStart};
	__property TTMSFNCMapsBaseEvent OnMapMoveEnd = {read=FOnMapMoveEnd, write=FOnMapMoveEnd};
	__property TTMSFNCMapsBaseEvent OnMapClick = {read=FOnMapClick, write=FOnMapClick};
	__property TTMSFNCMapsBaseEvent OnMapRightClick = {read=FOnMapRightClick, write=FOnMapRightClick};
	__property TTMSFNCMapsBaseEvent OnMapDblClick = {read=FOnMapDblClick, write=FOnMapDblClick};
	__property TTMSFNCMapsBaseEvent OnMapMouseUp = {read=FOnMapMouseUp, write=FOnMapMouseUp};
	__property TTMSFNCMapsBaseEvent OnMapMouseDown = {read=FOnMapMouseDown, write=FOnMapMouseDown};
	__property TTMSFNCMapsBaseEvent OnMapMouseMove = {read=FOnMapMouseMove, write=FOnMapMouseMove};
	__property TTMSFNCMapsBaseEvent OnMapMouseEnter = {read=FOnMapMouseEnter, write=FOnMapMouseEnter};
	__property TTMSFNCMapsBaseEvent OnMapMouseLeave = {read=FOnMapMouseLeave, write=FOnMapMouseLeave};
	__property TTMSFNCMapsBaseEvent OnMarkerClick = {read=FOnMarkerClick, write=FOnMarkerClick};
	__property TTMSFNCMapsBaseEvent OnMarkerRightClick = {read=FOnMarkerRightClick, write=FOnMarkerRightClick};
	__property TTMSFNCMapsBaseEvent OnMarkerDblClick = {read=FOnMarkerDblClick, write=FOnMarkerDblClick};
	__property TTMSFNCMapsBaseEvent OnMarkerMouseUp = {read=FOnMarkerMouseUp, write=FOnMarkerMouseUp};
	__property TTMSFNCMapsBaseEvent OnMarkerMouseDown = {read=FOnMarkerMouseDown, write=FOnMarkerMouseDown};
	__property TTMSFNCMapsBaseEvent OnMarkerMouseEnter = {read=FOnMarkerMouseEnter, write=FOnMarkerMouseEnter};
	__property TTMSFNCMapsBaseEvent OnMarkerMouseLeave = {read=FOnMarkerMouseLeave, write=FOnMarkerMouseLeave};
	__property TTMSFNCMapsBaseEvent OnPolyElementClick = {read=FOnPolyElementClick, write=FOnPolyElementClick};
	__property TTMSFNCMapsBaseEvent OnPolyElementRightClick = {read=FOnPolyElementRightClick, write=FOnPolyElementRightClick};
	__property TTMSFNCMapsBaseEvent OnPolyElementDblClick = {read=FOnPolyElementDblClick, write=FOnPolyElementDblClick};
	__property TTMSFNCMapsBaseEvent OnPolyElementMouseUp = {read=FOnPolyElementMouseUp, write=FOnPolyElementMouseUp};
	__property TTMSFNCMapsBaseEvent OnPolyElementMouseDown = {read=FOnPolyElementMouseDown, write=FOnPolyElementMouseDown};
	__property TTMSFNCMapsBaseEvent OnPolyElementMouseEnter = {read=FOnPolyElementMouseEnter, write=FOnPolyElementMouseEnter};
	__property TTMSFNCMapsBaseEvent OnPolyElementMouseLeave = {read=FOnPolyElementMouseLeave, write=FOnPolyElementMouseLeave};
	__property TTMSFNCMapsGetCenterCoordinateEvent OnGetCenterCoordinate = {read=FOnGetCenterCoordinate, write=FOnGetCenterCoordinate};
	__property TTMSFNCMapsGetBoundsEvent OnGetBounds = {read=FOnGetBoundsCoordinate, write=FOnGetBoundsCoordinate};
	__property TTMSFNCMapsGetZoomLevelEvent OnGetZoomLevel = {read=FOnGetZoomLevel, write=FOnGetZoomLevel};
	__property Fmx::Tmsfncmapscommontypes::TTMSFNCMapsGPXTrackEvent OnCreateGPXTrack = {read=FOnCreateGPXTrack, write=FOnCreateGPXTrack};
	__property Fmx::Tmsfncmapscommontypes::TTMSFNCMapsGPXSegmentEvent OnCreateGPXSegment = {read=FOnCreateGPXSegment, write=FOnCreateGPXSegment};
	__property TTMSFNCMapsGeoJSONObjectEvent OnCreateGeoJSONObject = {read=FOnCreateGeoJSONObject, write=FOnCreateGeoJSONObject};
	__property TTMSFNCMapsBaseEvent OnCustomEvent = {read=FOnCustomEvent, write=FOnCustomEvent};
	__property System::Classes::TNotifyEvent OnMapInitialized = {read=FOnMapInitialized, write=FOnMapInitialized};
	__property TTMSFNCMapsRouteCalculatorWayPointEvent OnRouteCalculatorWayPointAdded = {read=FOnRouteCalculatorWayPointAdded, write=FOnRouteCalculatorWayPointAdded};
	__property TTMSFNCMapsRouteCalculatorWayPointEvent OnRouteCalculatorWayPointUpdated = {read=FOnRouteCalculatorWayPointUpdated, write=FOnRouteCalculatorWayPointUpdated};
	__property TTMSFNCMapsRouteCalculatorPolylineEvent OnRouteCalculatorPolylineAdded = {read=FOnRouteCalculatorPolylineAdded, write=FOnRouteCalculatorPolylineAdded};
	__property TTMSFNCMapsRouteCalculatorPolylineEvent OnRouteCalculatorPolylineUpdated = {read=FOnRouteCalculatorPolylineUpdated, write=FOnRouteCalculatorPolylineUpdated};
	__property TTMSFNCMapsRouteCalculatorDeletePolylineEvent OnRouteCalculatorBeforeDeletePolyline = {read=FOnRouteCalculatorDeletePolylineEvent, write=FOnRouteCalculatorDeletePolylineEvent};
	__property System::Classes::TNotifyEvent OnRouteCalculatorAfterDeletePolyline = {read=FOnRouteCalculatorAfterDeletePolylineEvent, write=FOnRouteCalculatorAfterDeletePolylineEvent};
	__property TTMSFNCMapsRouteCalculatorDeleteMarkerEvent OnRouteCalculatorBeforeDeleteMarker = {read=FOnRouteCalculatorDeleteMarkerEvent, write=FOnRouteCalculatorDeleteMarkerEvent};
	__property System::Classes::TNotifyEvent OnRouteCalculatorAfterDeleteMarker = {read=FOnRouteCalculatorAfterDeleteMarkerEvent, write=FOnRouteCalculatorAfterDeleteMarkerEvent};
	__property _di_ITMSFNCCustomMaps MapsInstance = {read=FMaps};
	__property _di_ITMSFNCCustomMapsProperties MapsProperties = {read=FMapsProperties};
	__property Fmx::Tmsfncroutecalculator::TTMSFNCRouteCalculator* RouteCalculator = {read=FRouteCalculator, write=SetRouteCalculator};
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual TTMSFNCCustomMaps(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCCustomMaps();
	virtual void __fastcall BeginUpdate();
	virtual void __fastcall EndUpdate();
	virtual void __fastcall ReInitialize();
	void __fastcall ConnectMarkers(TTMSFNCMapsMarkersArray AMarkersArray);
	virtual void __fastcall ClearMarkers();
	virtual void __fastcall ClearElementContainers();
	virtual void __fastcall ClearHeadLinks();
	virtual void __fastcall Clear();
	virtual void __fastcall ClearPolylines();
	virtual void __fastcall ClearPolygons();
	virtual void __fastcall ClearCircles();
	virtual void __fastcall ClearRectangles();
	virtual void __fastcall UpdateControlAfterResize();
	virtual void __fastcall ZoomToBounds(Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRecArray ACoordinates)/* overload */;
	virtual void __fastcall ZoomToBounds(Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRecArrayArray ACoordinates)/* overload */;
	virtual void __fastcall ZoomToBounds(Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRecArrayArrayArray ACoordinates)/* overload */;
	virtual void __fastcall ZoomToBounds(const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsBoundsRec &ABounds)/* overload */;
	virtual void __fastcall ZoomToBounds(const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec &ANorthEast, const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec &ASouthWest)/* overload */;
	virtual void __fastcall GetZoomLevel();
	virtual void __fastcall GetCenterCoordinate();
	virtual void __fastcall GetBounds();
	virtual void __fastcall SetCenterCoordinate(const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec &ACoordinate)/* overload */;
	virtual void __fastcall SetCenterCoordinate(double ALatitude, double ALongitude)/* overload */;
	virtual void __fastcall SetZoomLevel(double AZoomLevel);
	virtual Fmx::Tmsfncmapscommontypes::TTMSFNCMapsAnchorPointRec __fastcall LatLonToXY(const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec &ACoordinate)/* overload */;
	virtual Fmx::Tmsfncmapscommontypes::TTMSFNCMapsAnchorPointRec __fastcall LatLonToXY(double ALatitude, double ALongitude)/* overload */;
	virtual Fmx::Tmsfncmapscommontypes::TTMSFNCMapsAnchorPointRec __fastcall CoordinateToXY(const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec &ACoordinate);
	virtual Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec __fastcall XYToLatLon(float AX, float AY);
	virtual Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec __fastcall XYToCoordinate(float AX, float AY);
	virtual System::UnicodeString __fastcall GetHTML();
	virtual Fmx::Tmsfncmapscommontypes::TTMSFNCMapsGPXRec __fastcall LoadGPXFromStream(System::Classes::TStream* const AStream, bool AAutoDisplay = true, bool AZoomToBounds = true, int AStrokeWidth = 0x3, System::Uitypes::TAlphaColor AStrokeColor = (System::Uitypes::TAlphaColor)(0xff000000), bool ADisplayElevation = false, bool ADisplayTimeStamps = false, int AMinSecondsBetweenTimeStamps = 0x258)/* overload */;
	virtual Fmx::Tmsfncmapscommontypes::TTMSFNCMapsGPXRec __fastcall LoadGPXFromStream(System::Classes::TStream* const AStream, bool AAutoDisplay, bool AZoomToBounds, int AStrokeWidth, TTMSFNCMapsGPXColorRecArray AElevationColors, bool ADisplayElevation, bool ADisplayTimeStamps = false, int AMinSecondsBetweenTimeStamps = 0x258)/* overload */;
	virtual Fmx::Tmsfncmapscommontypes::TTMSFNCMapsGPXRec __fastcall LoadGPXFromFile(System::UnicodeString AFileName, bool AAutoDisplay = true, bool AZoomToBounds = true, int AStrokeWidth = 0x3, System::Uitypes::TAlphaColor AStrokeColor = (System::Uitypes::TAlphaColor)(0xff000000), bool ADisplayElevation = false, bool ADisplayTimeStamps = false, int AMinSecondsBetweenTimeStamps = 0x258)/* overload */;
	virtual Fmx::Tmsfncmapscommontypes::TTMSFNCMapsGPXRec __fastcall LoadGPXFromFile(System::UnicodeString AFileName, bool AAutoDisplay, bool AZoomToBounds, int AStrokeWidth, TTMSFNCMapsGPXColorRecArray AElevationColors, bool ADisplayElevation, bool ADisplayTimeStamps = false, int AMinSecondsBetweenTimeStamps = 0x258)/* overload */;
	virtual Fmx::Tmsfncmapscommontypes::TTMSFNCMapsGPXRec __fastcall LoadGPXFromText(System::UnicodeString AText, bool AAutoDisplay = true, bool AZoomToBounds = true, int AStrokeWidth = 0x3, System::Uitypes::TAlphaColor AStrokeColor = (System::Uitypes::TAlphaColor)(0xff000000), bool ADisplayElevation = false, bool ADisplayTimeStamps = false, int AMinSecondsBetweenTimeStamps = 0x258)/* overload */;
	virtual Fmx::Tmsfncmapscommontypes::TTMSFNCMapsGPXRec __fastcall LoadGPXFromText(System::UnicodeString AText, bool AAutoDisplay, bool AZoomToBounds, int AStrokeWidth, TTMSFNCMapsGPXColorRecArray AElevationColors, bool ADisplayElevation, bool ADisplayTimeStamps = false, int AMinSecondsBetweenTimeStamps = 0x258)/* overload */;
	virtual void __fastcall SaveToGPXStream(Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRecArray ACoordinates, System::Classes::TStream* AStream)/* overload */;
	virtual void __fastcall SaveToGPXStream(Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRecArray ACoordinates, System::Classes::TStream* AStream, const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsGPXMetaData &AMetaData)/* overload */;
	virtual void __fastcall SaveToGPXFile(Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRecArray ACoordinates, System::UnicodeString AFileName)/* overload */;
	virtual void __fastcall SaveToGPXFile(Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRecArray ACoordinates, System::UnicodeString AFileName, const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsGPXMetaData &AMetaData)/* overload */;
	virtual System::UnicodeString __fastcall SaveToGPXText(Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRecArray ACoordinates)/* overload */;
	virtual System::UnicodeString __fastcall SaveToGPXText(Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRecArray ACoordinates, const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsGPXMetaData &AMetaData)/* overload */;
	virtual TTMSFNCMapsGeoJSONRec __fastcall LoadGeoJSONFromStream(System::Classes::TStream* const AStream, bool AAutoDisplay = true, bool AZoomToBounds = true);
	virtual TTMSFNCMapsGeoJSONRec __fastcall LoadGeoJSONFromFile(System::UnicodeString AFileName, bool AAutoDisplay = true, bool AZoomToBounds = true);
	virtual TTMSFNCMapsGeoJSONRec __fastcall LoadGeoJSONFromText(System::UnicodeString AText, bool AAutoDisplay = true, bool AZoomToBounds = true);
	virtual TTMSFNCMapsMarker* __fastcall AddMarker(const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec &ACoordinate, System::UnicodeString ATitle = System::UnicodeString(), System::UnicodeString AIconURL = System::UnicodeString())/* overload */;
	virtual TTMSFNCMapsMarker* __fastcall AddMarker(double ALatitude, double ALongitude, System::UnicodeString ATitle = System::UnicodeString(), System::UnicodeString AIconURL = System::UnicodeString())/* overload */;
	virtual TTMSFNCMapsPolyline* __fastcall AddPolyline(Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRecArray ACoordinates, bool AClose = false);
	virtual TTMSFNCMapsPolygon* __fastcall AddPolygon(Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRecArray ACoordinates, bool AClose = false);
	virtual TTMSFNCMapsCircle* __fastcall AddCircle(const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec &ACenter, double ARadius = 1.000000E+04);
	virtual TTMSFNCMapsRectangle* __fastcall AddRectangle(const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsBoundsRec &ABounds);
	virtual System::UnicodeString __fastcall ShowPopup(const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec &ACoordinate, System::UnicodeString AText, double AOffsetX = 0.000000E+00, double AOffsetY = 0.000000E+00)/* overload */;
	virtual System::UnicodeString __fastcall ShowPopup(double ALatitude, double ALongitude, System::UnicodeString AText, double AOffsetX = 0.000000E+00, double AOffsetY = 0.000000E+00)/* overload */;
	virtual TTMSFNCMapsElementContainer* __fastcall AddElementContainer(System::Classes::TStrings* AHTML, System::Classes::TStrings* AStyle = (System::Classes::TStrings*)(0x0), System::Classes::TStrings* AScript = (System::Classes::TStrings*)(0x0), TTMSFNCMapsPosition APosition = (TTMSFNCMapsPosition)(0x1), System::UnicodeString AHTMLElementID = System::UnicodeString());
	virtual TTMSFNCMapsHeadLink* __fastcall AddHeadLink(System::UnicodeString AURL, TTMSFNCMapsLinkKind AKind = (TTMSFNCMapsLinkKind)(0x1), System::UnicodeString ARel = System::UnicodeString());
	virtual void __fastcall ClosePopup(System::UnicodeString AID);
	virtual void __fastcall CloseAllPopups();
	virtual void __fastcall RouteCalculatorPlotRoute(Fmx::Tmsfncroutecalculator::TTMSFNCRouteCalculatorRoute* ARoute);
	virtual void __fastcall RouteCalculatorPlotRoutes();
	virtual void __fastcall RouteCalculatorClearRoutes();
	void __fastcall RouteCalculatorDeletePolyline(TTMSFNCMapsPolyline* APolyline, bool AUpdateRoute = true);
	void __fastcall RouteCalculatorDeleteMarker(TTMSFNCMapsMarker* AMarker, bool AUpdateRoute = true);
	void __fastcall RouteCalculatorDeleteSelectedPolyline(bool AUpdateRoute = true);
	void __fastcall RouteCalculatorDeleteSelectedMarker(bool AUpdateRoute = true);
	__property TTMSFNCMapsPolyline* RouteCalculatorSelectedPolyline = {read=FRouteCalculatorSelectedPolyline, write=FRouteCalculatorSelectedPolyline};
	__property TTMSFNCMapsMarker* RouteCalculatorSelectedMarker = {read=FRouteCalculatorSelectedMarker, write=FRouteCalculatorSelectedMarker};
private:
	void *__ITMSFNCCustomMapsProperties;	// ITMSFNCCustomMapsProperties 
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {A081EF51-171D-4C04-9F2C-28A4EBE9E1DE}
	operator _di_ITMSFNCCustomMapsProperties()
	{
		_di_ITMSFNCCustomMapsProperties intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator ITMSFNCCustomMapsProperties*(void) { return (ITMSFNCCustomMapsProperties*)&__ITMSFNCCustomMapsProperties; }
	#endif
	
};


class PASCALIMPLEMENTATION TTMSFNCCustomMapsInterfacedObject : public System::TInterfacedObject
{
	typedef System::TInterfacedObject inherited;
	
private:
	_di_ITMSFNCCustomMapsProperties FMapsProperties;
	_di_ITMSFNCCustomMapsProperties __fastcall GetMapsProperties();
	
protected:
	void __fastcall SetMapsProperties(const _di_ITMSFNCCustomMapsProperties Value);
	
public:
	__property _di_ITMSFNCCustomMapsProperties MapsProperties = {read=GetMapsProperties};
	__fastcall virtual ~TTMSFNCCustomMapsInterfacedObject();
public:
	/* TObject.Create */ inline __fastcall TTMSFNCCustomMapsInterfacedObject() : System::TInterfacedObject() { }
	
private:
	void *__ITMSFNCCustomMapsInstance;	// ITMSFNCCustomMapsInstance 
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {419FAD22-8164-47EB-8CFE-C60BBFF57751}
	operator _di_ITMSFNCCustomMapsInstance()
	{
		_di_ITMSFNCCustomMapsInstance intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator ITMSFNCCustomMapsInstance*(void) { return (ITMSFNCCustomMapsInstance*)&__ITMSFNCCustomMapsInstance; }
	#endif
	
};


class PASCALIMPLEMENTATION TTMSFNCMapsList : public System::Generics::Collections::TList__1<_di_ITMSFNCCustomMaps>
{
	typedef System::Generics::Collections::TList__1<_di_ITMSFNCCustomMaps> inherited;
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCMaps_ITMSFNCCustomMaps>.Create */ inline __fastcall TTMSFNCMapsList()/* overload */ : System::Generics::Collections::TList__1<_di_ITMSFNCCustomMaps>() { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCMaps_ITMSFNCCustomMaps>.Create */ inline __fastcall TTMSFNCMapsList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<_di_ITMSFNCCustomMaps> > AComparer)/* overload */ : System::Generics::Collections::TList__1<_di_ITMSFNCCustomMaps>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCMaps_ITMSFNCCustomMaps>.Create */ inline __fastcall TTMSFNCMapsList(System::Generics::Collections::TEnumerable__1<_di_ITMSFNCCustomMaps>* const Collection)/* overload */ : System::Generics::Collections::TList__1<_di_ITMSFNCCustomMaps>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCMaps_ITMSFNCCustomMaps>.Create */ inline __fastcall TTMSFNCMapsList(const _di_ITMSFNCCustomMaps *Values, const int Values_High)/* overload */ : System::Generics::Collections::TList__1<_di_ITMSFNCCustomMaps>(Values, Values_High) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCMaps_ITMSFNCCustomMaps>.Destroy */ inline __fastcall virtual ~TTMSFNCMapsList() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCMapsFactoryService : public System::TInterfacedObject
{
	typedef System::TInterfacedObject inherited;
	
private:
	TTMSFNCMapsList* FMaps;
	
protected:
	virtual _di_ITMSFNCCustomMaps __fastcall DoCreateMaps() = 0 ;
	_di_ITMSFNCCustomMaps __fastcall CreateMaps();
	void __fastcall DestroyMaps(_di_ITMSFNCCustomMaps AMaps);
	
public:
	__fastcall TTMSFNCMapsFactoryService();
	__fastcall virtual ~TTMSFNCMapsFactoryService();
private:
	void *__ITMSFNCMapsService;	// ITMSFNCMapsService 
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {6E91727E-EFA6-4A74-B523-97DAF6605F09}
	operator _di_ITMSFNCMapsService()
	{
		_di_ITMSFNCMapsService intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator ITMSFNCMapsService*(void) { return (ITMSFNCMapsService*)&__ITMSFNCMapsService; }
	#endif
	
};


class PASCALIMPLEMENTATION TTMSFNCMaps : public TTMSFNCCustomMaps
{
	typedef TTMSFNCCustomMaps inherited;
	
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
	__property RouteCalculator;
	__property OnCaptureScreenShot;
	__property OnCustomizeCSS;
	__property OnCustomizeJavaScript;
	__property OnCustomizeMap;
	__property OnCustomizeGlobalVariables;
	__property OnCustomizeMarker;
	__property OnCustomizePopup;
	__property OnCustomizeHeadLinks;
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
	__property OnMarkerRightClick;
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
	__property OnGetBounds;
	__property OnGetZoomLevel;
	__property OnCreateGPXTrack;
	__property OnCreateGPXSegment;
	__property OnCreateGeoJSONObject;
	__property OnRouteCalculatorWayPointAdded;
	__property OnRouteCalculatorWayPointUpdated;
	__property OnRouteCalculatorPolylineAdded;
	__property OnRouteCalculatorPolylineUpdated;
	__property OnRouteCalculatorBeforeDeletePolyline;
	__property OnRouteCalculatorAfterDeletePolyline;
	__property OnRouteCalculatorBeforeDeleteMarker;
	__property OnRouteCalculatorAfterDeleteMarker;
	__property APIKey = {default=0};
	__property Polylines;
	__property Polygons;
	__property Circles;
	__property Rectangles;
	__property Markers;
	__property ElementContainers;
	__property HeadLinks;
	__property Options;
	__property Service = {default=0};
	__property Version = {default=0};
	__property LocalFileAccess = {default=0};
	__property DesigntimeEnabled = {default=1};
public:
	/* TTMSFNCCustomMaps.Create */ inline __fastcall virtual TTMSFNCMaps(System::Classes::TComponent* AOwner) : TTMSFNCCustomMaps(AOwner) { }
	/* TTMSFNCCustomMaps.Destroy */ inline __fastcall virtual ~TTMSFNCMaps() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCMapsPlatformServicesService : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	System::_di_IInterface FInterface;
	System::UnicodeString FGUID;
	
public:
	__fastcall TTMSFNCMapsPlatformServicesService(System::UnicodeString AGUID, System::_di_IInterface AInterface);
	__property System::UnicodeString GUID = {read=FGUID};
	__property System::_di_IInterface Interface = {read=FInterface};
	System::UnicodeString __fastcall ToJSON()/* overload */;
	void __fastcall FromJSON(const System::UnicodeString Value);
	__property System::UnicodeString JSON = {read=ToJSON, write=FromJSON};
	System::UnicodeString __fastcall ToJSON(Fmx::Tmsfnctypes::TTMSFNCObjectExcludePropertyListArray AExcludedProperties)/* overload */;
	void __fastcall Log();
	void __fastcall SaveToJSONFile(const System::UnicodeString AFileName);
	void __fastcall LoadFromJSONFile(const System::UnicodeString AFileName);
	void __fastcall SaveToJSONStream(System::Classes::TStream* const AStream);
	void __fastcall LoadFromJSONStream(System::Classes::TStream* const AStream);
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TTMSFNCMapsPlatformServicesService() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCMapsPlatformServicesList : public System::Generics::Collections::TObjectList__1<TTMSFNCMapsPlatformServicesService*>
{
	typedef System::Generics::Collections::TObjectList__1<TTMSFNCMapsPlatformServicesService*> inherited;
	
private:
	System::_di_IInterface __fastcall GetValue(System::UnicodeString AGUID);
	
public:
	bool __fastcall ContainsKey(System::UnicodeString AGUID);
	void __fastcall RemoveByGUID(System::UnicodeString AGUID);
	__property System::_di_IInterface Interfaces[System::UnicodeString AGUID] = {read=GetValue};
public:
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCMaps_TTMSFNCMapsPlatformServicesService>.Create */ inline __fastcall TTMSFNCMapsPlatformServicesList()/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCMapsPlatformServicesService*>() { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCMaps_TTMSFNCMapsPlatformServicesService>.Create */ inline __fastcall TTMSFNCMapsPlatformServicesList(bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCMapsPlatformServicesService*>(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCMaps_TTMSFNCMapsPlatformServicesService>.Create */ inline __fastcall TTMSFNCMapsPlatformServicesList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCMapsPlatformServicesService*> > AComparer, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCMapsPlatformServicesService*>(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCMaps_TTMSFNCMapsPlatformServicesService>.Create */ inline __fastcall TTMSFNCMapsPlatformServicesList(System::Generics::Collections::TEnumerable__1<TTMSFNCMapsPlatformServicesService*>* const Collection, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCMapsPlatformServicesService*>(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCMaps_TTMSFNCMapsPlatformServicesService>.Destroy */ inline __fastcall virtual ~TTMSFNCMapsPlatformServicesList() { }
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCMaps_TTMSFNCMapsPlatformServicesService>.Create */ inline __fastcall TTMSFNCMapsPlatformServicesList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCMapsPlatformServicesService*> > AComparer)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCMapsPlatformServicesService*>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCMaps_TTMSFNCMapsPlatformServicesService>.Create */ inline __fastcall TTMSFNCMapsPlatformServicesList(System::Generics::Collections::TEnumerable__1<TTMSFNCMapsPlatformServicesService*>* const Collection)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCMapsPlatformServicesService*>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCMaps_TTMSFNCMapsPlatformServicesService>.Create */ inline __fastcall TTMSFNCMapsPlatformServicesList(TTMSFNCMapsPlatformServicesService* const *Values, const int Values_High)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCMapsPlatformServicesService*>(Values, Values_High) { }
	
};


class PASCALIMPLEMENTATION TTMSFNCMapsPlatformServices : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	TTMSFNCMapsPlatformServicesList* FServicesList;
	static TTMSFNCMapsPlatformServices* FCurrent;
	static bool FCurrentReleased;
	__classmethod void __fastcall ReleaseCurrent();
	
public:
	__fastcall TTMSFNCMapsPlatformServices();
	__fastcall virtual ~TTMSFNCMapsPlatformServices();
	void __fastcall AddPlatformService(const GUID &AServiceGUID, const System::_di_IInterface AService);
	void __fastcall RemovePlatformService(const GUID &AServiceGUID);
	System::_di_IInterface __fastcall GetPlatformService(const GUID &AServiceGUID);
	bool __fastcall SupportsPlatformService(const GUID &AServiceGUID)/* overload */;
	bool __fastcall SupportsPlatformService(const GUID &AServiceGUID, System::_di_IInterface &AService)/* overload */;
	__classmethod TTMSFNCMapsPlatformServices* __fastcall Current();
	System::UnicodeString __fastcall ToJSON()/* overload */;
	void __fastcall FromJSON(const System::UnicodeString Value);
	__property System::UnicodeString JSON = {read=ToJSON, write=FromJSON};
	System::UnicodeString __fastcall ToJSON(Fmx::Tmsfnctypes::TTMSFNCObjectExcludePropertyListArray AExcludedProperties)/* overload */;
	void __fastcall Log();
	void __fastcall SaveToJSONFile(const System::UnicodeString AFileName);
	void __fastcall LoadFromJSONFile(const System::UnicodeString AFileName);
	void __fastcall SaveToJSONStream(System::Classes::TStream* const AStream);
	void __fastcall LoadFromJSONStream(System::Classes::TStream* const AStream);
};


//-- var, const, procedure ---------------------------------------------------
#define TTMSFNCMapsDocURL u"https://download.tmssoftware.com/doc/tmsfncmaps/"
#define TTMSFNCMapsTipsURL u"https://www.tmssoftware.com/site/tmsfncmaps.asp?s=faq"
static constexpr System::Int8 MAJ_VER = System::Int8(0x2);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x5);
static constexpr System::Int8 BLD_VER = System::Int8(0x0);
static constexpr System::WideChar LB = (System::WideChar)(0xd);
#define STARTHTMLTAG u"<html>"
#define STARTHEADTAG u"<head>"
#define STARTBODYTAG u"<body>"
#define STARTTITLETAG u"<title>"
#define STARTSCRIPTTAG u"<script>"
#define STARTSTYLETAG u"<style>"
#define ENDHTMLTAG u"</html>"
#define ENDHEADTAG u"</head>"
#define ENDBODYTAG u"</body>"
#define ENDTITLETAG u"</title>"
#define ENDSCRIPTTAG u"</script>"
#define ENDSTYLETAG u"</style>"
#define MAPID u"mapContainer"
#define MARKERVAR u"marker"
#define ELEMENTCONTAINERVAR u"elementContainer"
#define POPUPVAR u"popup"
#define POLYELEMENTVAR u"polyelement"
#define MAPVAR u"map"
#define MAPOPTIONS u"mapoptions"
#define MAPCOMPONENT u"mapcomponent"
#define PARAMSNAME u"params"
#define MARKERARRAYVAR u"markerarray"
#define ELEMENTCONTAINERARRAYVAR u"elementContainerArray"
#define POPUPARRAYVAR u"popuparray"
#define GETMARKERARRAYVAR u"getmarkerarray()"
#define GETELEMENTCONTAINERARRAYVAR u"getelementContainerArray()"
#define GETSENDEVENT u"sendEvent"
#define GETFOCUSMAP u"focusMap"
#define POLYELEMENTARRAYVAR u"polyelementarray"
#define COORDINATEARRAYVAR u"coordinatearray"
#define HOLEARRAYVAR u"holearray"
#define GETPOLYELEMENTARRAYVAR u"getpolyelementarray()"
#define GETPOPUPARRAYVAR u"getpopuparray()"
static constexpr System::Int8 DEFAULT_ZOOMLEVEL = System::Int8(0xc);
#define DEFAULT_MARKERTEXT u"Sample Marker"
#define SHOWPOPUPFUNCTION u"showPopup"
#define CLOSEPOPUPFUNCTION u"closePopup"
#define ADDORUPDATEMARKERFUNCTION u"addOrUpdateMarker"
#define DELETEMARKERFUNCTION u"deleteMarker"
#define ADDORUPDATEELEMENTCONTAINERFUNCTION u"addOrUpdateElementContainer"
#define DELETEELEMENTCONTAINERFUNCTION u"deleteElementContainer"
#define ADDORUPDATEPOLYELEMENTFUNCTION u"addOrUpdatePolyElement"
#define INITIALIZECOORDINATEARRAY u"initializeCoordinateArray"
#define INITIALIZEHOLESARRAY u"initializeHolesArray"
#define ADDCOORDINATETOARRAY u"addCoordinateToArray"
#define ADDHOLETOARRAY u"addHoleToArray"
#define ADDCOORDINATESTOARRAY u"addCoordinatesToArray"
#define ADDHOLESTOARRAY u"addHolesToArray"
#define DELETEPOLYELEMENTFUNCTION u"deletePolyElement"
#define ZOOMTOBOUNDSFUNCTION u"zoomToBounds"
#define SETCENTERCOORDINATEFUNCTION u"setCenterCoordinate"
#define GETCENTERCOORDINATEFUNCTION u"getCenterCoordinate"
#define GETLATLONTOXYFUNCTION u"getLatLonToXY"
#define GETXYTOLATLONFUNCTION u"getXYToLatLon"
#define GETBOUNDSFUNCTION u"getBounds"
#define SETZOOMLEVELFUNCTION u"setZoomLevel"
#define GETZOOMLEVELFUNCTION u"getZoomLevel"
#define UPDATEOPTIONSFUNCTION u"updateOptions"
#define DEBUGCONSOLELINK u"https://download.tmssoftware.com/webgmaps/firebug/firebug-"\
	u"lite.js#startOpened"
#define ROUTECALCULATORROUTE u"#TTMSFNCMapsRouteCalculatorRoute"
#define ROUTECALCULATORSEGMENT u"#TTMSFNCMapsRouteCalculatorSegment"
#define ROUTECALCULATORMARKER u"#TTMSFNCRouteCalculatorMarker"
#define ROUTECALCULATORSTARTMARKER u"#TTMSFNCRouteCalculatorStartMarker"
#define ROUTECALCULATORENDMARKER u"#TTMSFNCRouteCalculatorEndMarker"
#define ROUTECALCULATORDRAGMARKER u"#TMSFNCRouteCalculatorDragMarker"
#define ACTIONCLICKEVENT u"ActionClick"
#define ACTIONDBLCLICKEVENT u"ActionDblClick"
#define ACTIONKEYPRESSEVENT u"ActionKeyPress"
#define ACTIONKEYDOWNEVENT u"ActionKeyDown"
#define ACTIONKEYUPEVENT u"ActionKeyUp"
#define ACTIONMOUSEDOWNEVENT u"ActionMouseDown"
#define ACTIONMOUSEMOVEEVENT u"ActionMouseMove"
#define ACTIONMOUSEUPEVENT u"ActionMouseUp"
#define ACTIONMOUSEENTEREVENT u"ActionMouseEnter"
#define ACTIONMOUSELEAVEEVENT u"ActionMouseLeave"
#define ACTIONBLUREVENT u"ActionBlur"
#define ACTIONFOCUSEVENT u"ActionFocus"
#define ACTIONCHANGEEVENT u"ActionChange"
#define ACTIONSELECTEVENT u"ActionSelect"
#define ACTIONCUSTOMEVENT u"ActionCustomEvent"
}	/* namespace Tmsfncmaps */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCMAPS)
using namespace Fmx::Tmsfncmaps;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncmapsHPP
