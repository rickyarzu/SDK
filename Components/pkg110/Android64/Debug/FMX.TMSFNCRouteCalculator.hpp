// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCRouteCalculator.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncroutecalculatorHPP
#define Fmx_TmsfncroutecalculatorHPP

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
#include <Xml.XMLIntf.hpp>
#include <Xml.xmldom.hpp>
#include <Xml.XMLDoc.hpp>
#include <System.Variants.hpp>
#include <FMX.TMSFNCCustomComponent.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.TMSFNCMapsCommonTypes.hpp>
#include <FMX.TMSFNCCloudBase.hpp>
#include <FMX.TMSFNCGeocoding.hpp>
#include <FMX.TMSFNCDirections.hpp>
#include <FMX.TMSFNCLocation.hpp>
#include <FMX.TMSFNCUndo.hpp>
#include <FMX.TMSFNCGraphicsTypes.hpp>
#include <System.Sensors.hpp>
#include <System.Sensors.Components.hpp>
#include <System.SysUtils.hpp>
#include <System.UITypes.hpp>
#include <FMX.Controls.hpp>
#include <FMX.Types.hpp>
#include <System.Generics.Collections.hpp>
#include <System.Generics.Defaults.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncroutecalculator
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCRouteCalculatorPolylineOptions;
class DELPHICLASS TTMSFNCRouteCalculatorHistoryManager;
class DELPHICLASS TTMSFNCRouteCalculatorOptions;
class DELPHICLASS TTMSFNCRouteCalculatorDirectionsItems;
class DELPHICLASS TTMSFNCRouteCalculatorInfo;
class DELPHICLASS TTMSFNCRouteCalculatorAlternativeSegment;
class DELPHICLASS TTMSFNCRouteCalculatorAlternativeSegments;
class DELPHICLASS TTMSFNCRouteCalculatorSegment;
class DELPHICLASS TTMSFNCRouteCalculatorSegments;
class DELPHICLASS TTMSFNCRouteCalculatorRoute;
class DELPHICLASS TTMSFNCRouteCalculatorRoutes;
__interface DELPHIINTERFACE TTMSFNCRouteCalculatorCalculateRouteCallback;
typedef System::DelphiInterface<TTMSFNCRouteCalculatorCalculateRouteCallback> _di_TTMSFNCRouteCalculatorCalculateRouteCallback;
class DELPHICLASS TTMSFNCRouteCalculatorRouteCallBackWrapper;
class DELPHICLASS TTMSFNCCustomRouteCalculator;
class DELPHICLASS TTMSFNCRouteCalculator;
//-- type declarations -------------------------------------------------------
enum DECLSPEC_DENUM TTMSFNCRouteCalculatorService : unsigned char { csAzure, csBing, csGoogle, csHere, csMapBox, csOpenRouteService, csGeoApify };

enum DECLSPEC_DENUM TTMSFNCRouteCalculatorLocationMode : unsigned char { lmDevice, lmService };

class PASCALIMPLEMENTATION TTMSFNCRouteCalculatorPolylineOptions : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	System::UnicodeString FWayPointMarker;
	int FStrokeWidth;
	System::Uitypes::TAlphaColor FStrokeColor;
	System::UnicodeString FEndMarker;
	float FStrokeOpacity;
	System::UnicodeString FStartMarker;
	System::UnicodeString FAddWayPointMarker;
	System::Uitypes::TAlphaColor FSelectedStrokeColor;
	System::UnicodeString FSelectedWayPointMarker;
	bool __fastcall IsStrokeOpacityStored();
	void __fastcall SetStrokeOpacity(const float Value);
	
public:
	__fastcall TTMSFNCRouteCalculatorPolylineOptions();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual ~TTMSFNCRouteCalculatorPolylineOptions();
	
__published:
	__property System::UnicodeString StartMarker = {read=FStartMarker, write=FStartMarker};
	__property System::UnicodeString EndMarker = {read=FEndMarker, write=FEndMarker};
	__property System::UnicodeString WayPointMarker = {read=FWayPointMarker, write=FWayPointMarker};
	__property System::UnicodeString AddWayPointMarker = {read=FAddWayPointMarker, write=FAddWayPointMarker};
	__property System::UnicodeString SelectedWayPointMarker = {read=FSelectedWayPointMarker, write=FSelectedWayPointMarker};
	__property System::Uitypes::TAlphaColor StrokeColor = {read=FStrokeColor, write=FStrokeColor, default=-16776961};
	__property int StrokeWidth = {read=FStrokeWidth, write=FStrokeWidth, default=5};
	__property float StrokeOpacity = {read=FStrokeOpacity, write=SetStrokeOpacity, stored=IsStrokeOpacityStored};
	__property System::Uitypes::TAlphaColor SelectedStrokeColor = {read=FSelectedStrokeColor, write=FSelectedStrokeColor, default=-65536};
};


class PASCALIMPLEMENTATION TTMSFNCRouteCalculatorHistoryManager : public Fmx::Tmsfncundo::TTMSFNCUndoManager
{
	typedef Fmx::Tmsfncundo::TTMSFNCUndoManager inherited;
	
public:
	/* TTMSFNCUndoManager.Create */ inline __fastcall TTMSFNCRouteCalculatorHistoryManager(System::TObject* AObject) : Fmx::Tmsfncundo::TTMSFNCUndoManager(AObject) { }
	
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCRouteCalculatorHistoryManager() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCRouteCalculatorOptions : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	bool FIncludeAlternativeRoutes;
	Fmx::Tmsfncdirections::TTMSFNCDirectionsTravelMode FTravelMode;
	bool FAvoidTolls;
	TTMSFNCRouteCalculatorPolylineOptions* FPolyline;
	bool FHistoryEnabled;
	System::UnicodeString FLocale;
	Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode FlocaleMode;
	void __fastcall SetPolyline(TTMSFNCRouteCalculatorPolylineOptions* const Value);
	
public:
	__fastcall TTMSFNCRouteCalculatorOptions();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual ~TTMSFNCRouteCalculatorOptions();
	
__published:
	__property bool AvoidTolls = {read=FAvoidTolls, write=FAvoidTolls, default=0};
	__property bool IncludeAlternativeRoutes = {read=FIncludeAlternativeRoutes, write=FIncludeAlternativeRoutes, default=0};
	__property Fmx::Tmsfncdirections::TTMSFNCDirectionsTravelMode TravelMode = {read=FTravelMode, write=FTravelMode, default=0};
	__property TTMSFNCRouteCalculatorPolylineOptions* Polyline = {read=FPolyline, write=SetPolyline};
	__property bool HistoryEnabled = {read=FHistoryEnabled, write=FHistoryEnabled, default=0};
	__property System::UnicodeString Locale = {read=FLocale, write=FLocale};
	__property Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode LocaleMode = {read=FlocaleMode, write=FlocaleMode, default=0};
};


class PASCALIMPLEMENTATION TTMSFNCRouteCalculatorDirectionsItems : public Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<Fmx::Tmsfncdirections::TTMSFNCDirectionsItem*>
{
	typedef Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<Fmx::Tmsfncdirections::TTMSFNCDirectionsItem*> inherited;
	
public:
	Fmx::Tmsfncdirections::TTMSFNCDirectionsItem* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCRouteCalculatorSegment* FOwner;
	HIDESBASE Fmx::Tmsfncdirections::TTMSFNCDirectionsItem* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, Fmx::Tmsfncdirections::TTMSFNCDirectionsItem* const Value);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall CreateItemClass();
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	
public:
	__fastcall virtual TTMSFNCRouteCalculatorDirectionsItems(TTMSFNCRouteCalculatorSegment* AOwner);
	__property Fmx::Tmsfncdirections::TTMSFNCDirectionsItem* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	HIDESBASE Fmx::Tmsfncdirections::TTMSFNCDirectionsItem* __fastcall Add();
	HIDESBASE Fmx::Tmsfncdirections::TTMSFNCDirectionsItem* __fastcall Insert(int Index);
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCRouteCalculatorDirectionsItems() { }
	
};


enum DECLSPEC_DENUM TTMSFNCRouteCalculatorInfoMode : unsigned char { cimDefault, cimUpdateDirections, cimAddDirections };

class PASCALIMPLEMENTATION TTMSFNCRouteCalculatorInfo : public System::TObject
{
	typedef System::TObject inherited;
	
	
private:
	typedef System::DynamicArray<TTMSFNCRouteCalculatorSegment*> _TTMSFNCRouteCalculatorInfo__1;
	
	
private:
	System::UnicodeString FID;
	System::UnicodeString FStartAddress;
	System::UnicodeString FEndAddress;
	bool FStartFound;
	bool FEndFound;
	bool FStartGeocoded;
	bool FEndGeocoded;
	Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec FStartCoordinate;
	Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec FEndCoordinate;
	void *FCallBack;
	TTMSFNCRouteCalculatorInfoMode FMode;
	Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRecArray FWayPoints;
	TTMSFNCRouteCalculatorRoute* FUpdateRoute;
	_TTMSFNCRouteCalculatorInfo__1 FUpdateSegments;
	
public:
	__fastcall TTMSFNCRouteCalculatorInfo();
	__fastcall virtual ~TTMSFNCRouteCalculatorInfo();
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


class PASCALIMPLEMENTATION TTMSFNCRouteCalculatorAlternativeSegment : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	TTMSFNCRouteCalculatorAlternativeSegments* FOwner;
	void *FDataPointer;
	bool FDataBoolean;
	System::UnicodeString FDataString;
	System::TObject* FDataObject;
	NativeInt FDataInteger;
	Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinate* FStartCoordinate;
	Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinate* FEndCoordinate;
	Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinates* FCoordinates;
	double FDistance;
	int FDuration;
	Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRecArray __fastcall GetPolyline();
	void __fastcall SetCoordinates(Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinates* const Value);
	TTMSFNCRouteCalculatorSegment* __fastcall GetSegment();
	
public:
	__fastcall virtual TTMSFNCRouteCalculatorAlternativeSegment(System::Classes::TCollection* Collection);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual ~TTMSFNCRouteCalculatorAlternativeSegment();
	__property void * DataPointer = {read=FDataPointer, write=FDataPointer};
	__property bool DataBoolean = {read=FDataBoolean, write=FDataBoolean, nodefault};
	__property System::TObject* DataObject = {read=FDataObject, write=FDataObject};
	__property System::UnicodeString DataString = {read=FDataString, write=FDataString};
	__property NativeInt DataInteger = {read=FDataInteger, write=FDataInteger};
	__property Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRecArray Polyline = {read=GetPolyline};
	__property TTMSFNCRouteCalculatorSegment* Segment = {read=GetSegment};
	
__published:
	__property Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinates* Coordinates = {read=FCoordinates, write=SetCoordinates};
	__property double Distance = {read=FDistance, write=FDistance};
	__property int Duration = {read=FDuration, write=FDuration, nodefault};
	__property Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinate* StartCoordinate = {read=FStartCoordinate, write=FStartCoordinate};
	__property Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinate* EndCoordinate = {read=FEndCoordinate, write=FEndCoordinate};
};


class PASCALIMPLEMENTATION TTMSFNCRouteCalculatorAlternativeSegments : public Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCRouteCalculatorAlternativeSegment*>
{
	typedef Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCRouteCalculatorAlternativeSegment*> inherited;
	
public:
	TTMSFNCRouteCalculatorAlternativeSegment* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCRouteCalculatorSegment* FOwner;
	HIDESBASE TTMSFNCRouteCalculatorAlternativeSegment* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCRouteCalculatorAlternativeSegment* const Value);
	TTMSFNCRouteCalculatorSegment* __fastcall GetSegment();
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall CreateItemClass();
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	
public:
	__fastcall virtual TTMSFNCRouteCalculatorAlternativeSegments(TTMSFNCRouteCalculatorSegment* AOwner);
	__property TTMSFNCRouteCalculatorAlternativeSegment* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	HIDESBASE TTMSFNCRouteCalculatorAlternativeSegment* __fastcall Add();
	HIDESBASE TTMSFNCRouteCalculatorAlternativeSegment* __fastcall Insert(int Index);
	__property TTMSFNCRouteCalculatorSegment* Segment = {read=GetSegment};
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCRouteCalculatorAlternativeSegments() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCRouteCalculatorSegment : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	TTMSFNCRouteCalculatorSegments* FOwner;
	void *FDataPointer;
	bool FDataBoolean;
	System::UnicodeString FDataString;
	System::TObject* FDataObject;
	NativeInt FDataInteger;
	System::UnicodeString FID;
	System::UnicodeString FStartAddress;
	System::UnicodeString FEndAddress;
	Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinate* FStartCoordinate;
	Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinate* FEndCoordinate;
	Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinates* FCoordinates;
	double FDistance;
	int FDuration;
	TTMSFNCRouteCalculatorAlternativeSegments* FAlternativeSegments;
	Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRecArray __fastcall GetPolyline();
	TTMSFNCRouteCalculatorSegments* __fastcall GetSegments();
	void __fastcall SetCoordinates(Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinates* const Value);
	TTMSFNCRouteCalculatorSegment* __fastcall GetNextSegment();
	TTMSFNCRouteCalculatorSegment* __fastcall GetPreviousSegment();
	TTMSFNCRouteCalculatorRoute* __fastcall GetRoute();
	void __fastcall SetAlternativeSegments(TTMSFNCRouteCalculatorAlternativeSegments* const Value);
	
public:
	__fastcall virtual TTMSFNCRouteCalculatorSegment(System::Classes::TCollection* Collection);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual ~TTMSFNCRouteCalculatorSegment();
	__property void * DataPointer = {read=FDataPointer, write=FDataPointer};
	__property bool DataBoolean = {read=FDataBoolean, write=FDataBoolean, nodefault};
	__property System::TObject* DataObject = {read=FDataObject, write=FDataObject};
	__property System::UnicodeString DataString = {read=FDataString, write=FDataString};
	__property NativeInt DataInteger = {read=FDataInteger, write=FDataInteger};
	__property TTMSFNCRouteCalculatorSegment* NextSegment = {read=GetNextSegment};
	__property TTMSFNCRouteCalculatorSegment* PreviousSegment = {read=GetPreviousSegment};
	__property TTMSFNCRouteCalculatorSegments* Segments = {read=GetSegments};
	__property Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRecArray Polyline = {read=GetPolyline};
	__property TTMSFNCRouteCalculatorRoute* Route = {read=GetRoute};
	
__published:
	__property System::UnicodeString ID = {read=FID, write=FID};
	__property TTMSFNCRouteCalculatorAlternativeSegments* AlternativeSegments = {read=FAlternativeSegments, write=SetAlternativeSegments};
	__property Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinates* Coordinates = {read=FCoordinates, write=SetCoordinates};
	__property double Distance = {read=FDistance, write=FDistance};
	__property int Duration = {read=FDuration, write=FDuration, nodefault};
	__property System::UnicodeString StartAddress = {read=FStartAddress, write=FStartAddress};
	__property System::UnicodeString EndAddress = {read=FEndAddress, write=FEndAddress};
	__property Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinate* StartCoordinate = {read=FStartCoordinate, write=FStartCoordinate};
	__property Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinate* EndCoordinate = {read=FEndCoordinate, write=FEndCoordinate};
};


class PASCALIMPLEMENTATION TTMSFNCRouteCalculatorSegments : public Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCRouteCalculatorSegment*>
{
	typedef Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCRouteCalculatorSegment*> inherited;
	
public:
	TTMSFNCRouteCalculatorSegment* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCRouteCalculatorRoute* FOwner;
	HIDESBASE TTMSFNCRouteCalculatorSegment* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCRouteCalculatorSegment* const Value);
	TTMSFNCRouteCalculatorRoute* __fastcall GetRoute();
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall CreateItemClass();
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	
public:
	__fastcall virtual TTMSFNCRouteCalculatorSegments(TTMSFNCRouteCalculatorRoute* AOwner);
	__property TTMSFNCRouteCalculatorSegment* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	HIDESBASE TTMSFNCRouteCalculatorSegment* __fastcall Add();
	HIDESBASE TTMSFNCRouteCalculatorSegment* __fastcall Insert(int Index);
	__property TTMSFNCRouteCalculatorRoute* Route = {read=GetRoute};
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCRouteCalculatorSegments() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCRouteCalculatorRoute : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	TTMSFNCCustomRouteCalculator* FOwner;
	void *FDataPointer;
	bool FDataBoolean;
	System::UnicodeString FDataString;
	System::TObject* FDataObject;
	NativeInt FDataInteger;
	TTMSFNCRouteCalculatorSegments* FSegments;
	System::UnicodeString FID;
	System::UnicodeString FStartAddress;
	System::UnicodeString FEndAddress;
	Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinate* FStartCoordinate;
	Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinate* FEndCoordinate;
	System::UnicodeString FRouteName;
	bool FActive;
	Fmx::Tmsfncdirections::TTMSFNCDirectionsSteps* FSteps;
	Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRecArray __fastcall GetPolyline();
	Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRecArray __fastcall GetWayPoints();
	double __fastcall GetDistance();
	double __fastcall GetDuration();
	TTMSFNCCustomRouteCalculator* __fastcall GetRouteCalculator();
	void __fastcall SetSteps(Fmx::Tmsfncdirections::TTMSFNCDirectionsSteps* const Value);
	
public:
	__fastcall virtual TTMSFNCRouteCalculatorRoute(System::Classes::TCollection* Collection);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual ~TTMSFNCRouteCalculatorRoute();
	__property void * DataPointer = {read=FDataPointer, write=FDataPointer};
	__property bool DataBoolean = {read=FDataBoolean, write=FDataBoolean, nodefault};
	__property System::TObject* DataObject = {read=FDataObject, write=FDataObject};
	__property System::UnicodeString DataString = {read=FDataString, write=FDataString};
	__property NativeInt DataInteger = {read=FDataInteger, write=FDataInteger};
	TTMSFNCRouteCalculatorSegment* __fastcall FirstSegment();
	TTMSFNCRouteCalculatorSegment* __fastcall LastSegment();
	__property double Duration = {read=GetDuration};
	__property double Distance = {read=GetDistance};
	__property Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRecArray Polyline = {read=GetPolyline};
	__property Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRecArray WayPoints = {read=GetWayPoints};
	__property TTMSFNCCustomRouteCalculator* RouteCalculator = {read=GetRouteCalculator};
	
__published:
	__property System::UnicodeString ID = {read=FID, write=FID};
	__property System::UnicodeString RouteName = {read=FRouteName, write=FRouteName};
	__property Fmx::Tmsfncdirections::TTMSFNCDirectionsSteps* Steps = {read=FSteps, write=SetSteps};
	__property TTMSFNCRouteCalculatorSegments* Segments = {read=FSegments, write=FSegments};
	__property bool Active = {read=FActive, write=FActive, nodefault};
};


class PASCALIMPLEMENTATION TTMSFNCRouteCalculatorRoutes : public Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCRouteCalculatorRoute*>
{
	typedef Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCRouteCalculatorRoute*> inherited;
	
public:
	TTMSFNCRouteCalculatorRoute* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCCustomRouteCalculator* FOwner;
	HIDESBASE TTMSFNCRouteCalculatorRoute* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCRouteCalculatorRoute* const Value);
	TTMSFNCCustomRouteCalculator* __fastcall GetRouteCalculator();
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall CreateItemClass();
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	
public:
	__fastcall virtual TTMSFNCRouteCalculatorRoutes(TTMSFNCCustomRouteCalculator* AOwner);
	__property TTMSFNCRouteCalculatorRoute* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	HIDESBASE TTMSFNCRouteCalculatorRoute* __fastcall Add();
	HIDESBASE TTMSFNCRouteCalculatorRoute* __fastcall Insert(int Index);
	__property TTMSFNCCustomRouteCalculator* RouteCalculator = {read=GetRouteCalculator};
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCRouteCalculatorRoutes() { }
	
};


__interface TTMSFNCRouteCalculatorCalculateRouteCallback  : public System::IInterface 
{
	virtual void __fastcall Invoke(TTMSFNCRouteCalculatorRoute* const ARoute) = 0 ;
};

typedef void __fastcall (__closure *TTMSFNCRouteCalculatorCalculateRouteEvent)(System::TObject* Sender, TTMSFNCRouteCalculatorRoute* const ARoute);

typedef void __fastcall (__closure *TTMSFNCRouteCalculatorCalculateRoutesCompleteEvent)(System::TObject* Sender);

typedef void __fastcall (__closure *TTMSFNCRouteCalculatorLocationEvent)(System::TObject* Sender, const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec &ACoordinate);

typedef void __fastcall (__closure *TTMSFNCRouteCalculatorGPXEvent)(System::TObject* Sender, TTMSFNCRouteCalculatorRoute* const ARoute);

class PASCALIMPLEMENTATION TTMSFNCRouteCalculatorRouteCallBackWrapper : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	_di_TTMSFNCRouteCalculatorCalculateRouteCallback FCallback;
	
public:
	__fastcall TTMSFNCRouteCalculatorRouteCallBackWrapper(_di_TTMSFNCRouteCalculatorCalculateRouteCallback ACallback);
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
	/* TObject.Destroy */ inline __fastcall virtual ~TTMSFNCRouteCalculatorRouteCallBackWrapper() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCustomRouteCalculator : public Fmx::Tmsfnccustomcomponent::TTMSFNCCustomComponent
{
	typedef Fmx::Tmsfnccustomcomponent::TTMSFNCCustomComponent inherited;
	
private:
	System::UnicodeString FAPIKey;
	Fmx::Tmsfnclocation::TTMSFNCLocation* FLocation;
	System::Sensors::Components::TLocationSensor* FLocationSensor;
	Fmx::Tmsfncgeocoding::TTMSFNCGeocoding* FGeocoding;
	Fmx::Tmsfncdirections::TTMSFNCDirections* FDirections;
	TTMSFNCRouteCalculatorService FService;
	Fmx::Tmsfncgeocoding::TTMSFNCGeocodingGetGeocodingEvent FOnGetGeocoding;
	Fmx::Tmsfncdirections::TTMSFNCDirectionsGetDirectionsEvent FOnGetDirections;
	TTMSFNCRouteCalculatorCalculateRouteEvent FOnCalculateRoute;
	TTMSFNCRouteCalculatorRoutes* FRoutes;
	Fmx::Tmsfncgeocoding::TTMSFNCGeocodingGetGeocodingEvent FOnGetRouteGeocoding;
	Fmx::Tmsfncdirections::TTMSFNCDirectionsGetDirectionsEvent FOnGetRouteDirections;
	TTMSFNCRouteCalculatorLocationEvent FOnGetLocation;
	Fmx::Tmsfncmapscommontypes::TTMSFNCMapsGPXSegmentEvent FOnCreateGPXSegment;
	Fmx::Tmsfncmapscommontypes::TTMSFNCMapsGPXTrackEvent FOnCreateGPXTrack;
	TTMSFNCRouteCalculatorGPXEvent FOnLoadGPXRouteComplete;
	TTMSFNCRouteCalculatorOptions* FOptions;
	bool FActive;
	TTMSFNCRouteCalculatorHistoryManager* FHistoryManager;
	void __fastcall SetService(const TTMSFNCRouteCalculatorService Value);
	void __fastcall SetAPIKey(const System::UnicodeString Value);
	void __fastcall SetRoutes(TTMSFNCRouteCalculatorRoutes* const Value);
	TTMSFNCRouteCalculatorHistoryManager* __fastcall GetHistoryManager();
	
protected:
	void __fastcall DoGetGeocoding(System::TObject* Sender, Fmx::Tmsfncgeocoding::TTMSFNCGeocodingRequest* const ARequest, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	__property Fmx::Tmsfncgeocoding::TTMSFNCGeocodingGetGeocodingEvent OnGetGeocoding = {read=FOnGetGeocoding, write=FOnGetGeocoding};
	__property Fmx::Tmsfncgeocoding::TTMSFNCGeocodingGetGeocodingEvent OnGetRouteGeocoding = {read=FOnGetRouteGeocoding, write=FOnGetRouteGeocoding};
	void __fastcall DoGetDirections(System::TObject* Sender, Fmx::Tmsfncdirections::TTMSFNCDirectionsRequest* const ARequest, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	__property Fmx::Tmsfncdirections::TTMSFNCDirectionsGetDirectionsEvent OnGetDirections = {read=FOnGetDirections, write=FOnGetDirections};
	__property Fmx::Tmsfncdirections::TTMSFNCDirectionsGetDirectionsEvent OnGetRouteDirections = {read=FOnGetRouteDirections, write=FOnGetRouteDirections};
	void __fastcall DoCalculateRoute(TTMSFNCRouteCalculatorRoute* const ARoute, TTMSFNCRouteCalculatorInfo* const ARouteInfo);
	__property TTMSFNCRouteCalculatorCalculateRouteEvent OnCalculateRoute = {read=FOnCalculateRoute, write=FOnCalculateRoute};
	__property TTMSFNCRouteCalculatorCalculateRouteEvent OnCalculateRouteInternal = {read=FOnCalculateRoute, write=FOnCalculateRoute};
	void __fastcall DoGetLocation(System::TObject* Sender, Fmx::Tmsfnclocation::TTMSFNCLocationRequest* const ARequest, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	__property TTMSFNCRouteCalculatorLocationEvent OnGetLocation = {read=FOnGetLocation, write=FOnGetLocation};
	void __fastcall DoLocationChanged(System::TObject* Sender, const System::Sensors::TLocationCoord2D &OldLocation, const System::Sensors::TLocationCoord2D &NewLocation);
	virtual void __fastcall DoCreateGPXTrack(Fmx::Tmsfncmapscommontypes::TTMSFNCMapsGPXTrackEventData* AEventData);
	virtual void __fastcall DoCreateGPXSegment(Fmx::Tmsfncmapscommontypes::TTMSFNCMapsGPXSegmentEventData* AEventData);
	__property Fmx::Tmsfncmapscommontypes::TTMSFNCMapsGPXTrackEvent OnCreateGPXTrack = {read=FOnCreateGPXTrack, write=FOnCreateGPXTrack};
	__property Fmx::Tmsfncmapscommontypes::TTMSFNCMapsGPXSegmentEvent OnCreateGPXSegment = {read=FOnCreateGPXSegment, write=FOnCreateGPXSegment};
	virtual void __fastcall DoLoadGPXRouteComplete(TTMSFNCRouteCalculatorRoute* ARoute);
	__property TTMSFNCRouteCalculatorGPXEvent OnLoadGPXRouteComplete = {read=FOnLoadGPXRouteComplete, write=FOnLoadGPXRouteComplete};
	virtual NativeUInt __fastcall GetInstance();
	bool __fastcall GeocodingReady();
	bool __fastcall DirectionsReady();
	bool __fastcall LocationReady();
	System::UnicodeString __fastcall GetAPIKey();
	int __fastcall GetVersionNr();
	virtual System::UnicodeString __fastcall GetDocURL();
	virtual System::UnicodeString __fastcall GetTipsURL();
	virtual System::UnicodeString __fastcall GetVersion();
	System::UnicodeString __fastcall InternalSaveGPX(TTMSFNCRouteCalculatorRoute* ARoute, const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsGPXMetaData &AMetaData);
	Fmx::Tmsfncmapscommontypes::TTMSFNCMapsGPXRec __fastcall InternalLoadGPX(System::UnicodeString AText, bool ADoGeocoding = false);
	__property TTMSFNCRouteCalculatorService Service = {read=FService, write=SetService, default=2};
	__property System::UnicodeString Version = {read=GetVersion};
	__property System::UnicodeString APIKey = {read=FAPIKey, write=SetAPIKey};
	__property TTMSFNCRouteCalculatorRoutes* Routes = {read=FRoutes, write=SetRoutes};
	__property TTMSFNCRouteCalculatorOptions* Options = {read=FOptions, write=FOptions};
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual TTMSFNCCustomRouteCalculator()/* overload */;
	__fastcall virtual TTMSFNCCustomRouteCalculator(System::Classes::TComponent* AOwner)/* overload */;
	__fastcall virtual ~TTMSFNCCustomRouteCalculator();
	virtual void __fastcall GetGeocoding(System::UnicodeString AAddress, Fmx::Tmsfncgeocoding::_di_TTMSFNCGeocodingGetGeocodingCallBack ACallback = Fmx::Tmsfncgeocoding::_di_TTMSFNCGeocodingGetGeocodingCallBack(), System::UnicodeString AID = System::UnicodeString(), void * ADataPointer = (void *)(0x0));
	virtual void __fastcall GetReverseGeocoding(const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec &ACoordinates, Fmx::Tmsfncgeocoding::_di_TTMSFNCGeocodingGetReverseGeocodingCallBack ACallback = Fmx::Tmsfncgeocoding::_di_TTMSFNCGeocodingGetReverseGeocodingCallBack(), System::UnicodeString AID = System::UnicodeString(), void * ADataPointer = (void *)(0x0));
	virtual void __fastcall GetDirections(const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec &AOrigin, const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec &ADestination, Fmx::Tmsfncdirections::_di_TTMSFNCDirectionsGetDirectionsCallback ACallback = Fmx::Tmsfncdirections::_di_TTMSFNCDirectionsGetDirectionsCallback(), Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRecArray AWayPoints = Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRecArray(), System::UnicodeString AID = System::UnicodeString(), void * ADataPointer = (void *)(0x0));
	virtual void __fastcall CalculateRoute(System::UnicodeString AStartAddress, System::UnicodeString AEndAddress, _di_TTMSFNCRouteCalculatorCalculateRouteCallback ACallback = _di_TTMSFNCRouteCalculatorCalculateRouteCallback(), System::UnicodeString AID = System::UnicodeString(), void * ADataPointer = (void *)(0x0))/* overload */;
	virtual void __fastcall CalculateRoute(const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec &AStartCoordinate, const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec &AEndCoordinate, _di_TTMSFNCRouteCalculatorCalculateRouteCallback ACallback = _di_TTMSFNCRouteCalculatorCalculateRouteCallback(), Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRecArray AWayPoints = Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRecArray(), System::UnicodeString AID = System::UnicodeString(), void * ADataPointer = (void *)(0x0))/* overload */;
	virtual void __fastcall AddRouteSegment(TTMSFNCRouteCalculatorRoute* ARoute, System::UnicodeString AEndAddress, _di_TTMSFNCRouteCalculatorCalculateRouteCallback ACallback = _di_TTMSFNCRouteCalculatorCalculateRouteCallback(), System::UnicodeString AID = System::UnicodeString(), void * ADataPointer = (void *)(0x0))/* overload */;
	virtual void __fastcall AddRouteSegment(TTMSFNCRouteCalculatorRoute* ARoute, const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec &AEndCoordinate, _di_TTMSFNCRouteCalculatorCalculateRouteCallback ACallback = _di_TTMSFNCRouteCalculatorCalculateRouteCallback(), System::UnicodeString AID = System::UnicodeString(), void * ADataPointer = (void *)(0x0))/* overload */;
	virtual void __fastcall AddWayPointsToSegment(TTMSFNCRouteCalculatorSegment* ASegment, Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRecArray AWayPoints, _di_TTMSFNCRouteCalculatorCalculateRouteCallback ACallback = _di_TTMSFNCRouteCalculatorCalculateRouteCallback(), System::UnicodeString AID = System::UnicodeString(), void * ADataPointer = (void *)(0x0));
	virtual void __fastcall UpdateRouteSegment(TTMSFNCRouteCalculatorSegment* ASegment, System::UnicodeString AStartAddress, System::UnicodeString AEndAddress, _di_TTMSFNCRouteCalculatorCalculateRouteCallback ACallback = _di_TTMSFNCRouteCalculatorCalculateRouteCallback(), System::UnicodeString AID = System::UnicodeString(), void * ADataPointer = (void *)(0x0))/* overload */;
	virtual void __fastcall UpdateRouteSegment(TTMSFNCRouteCalculatorSegment* ASegment, const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec &AStartCoordinate, const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec &AEndCoordinate, _di_TTMSFNCRouteCalculatorCalculateRouteCallback ACallback = _di_TTMSFNCRouteCalculatorCalculateRouteCallback(), System::UnicodeString AID = System::UnicodeString(), void * ADataPointer = (void *)(0x0))/* overload */;
	virtual void __fastcall UpdateRouteSegmentStartAddress(TTMSFNCRouteCalculatorSegment* ASegment, System::UnicodeString AStartAddress, _di_TTMSFNCRouteCalculatorCalculateRouteCallback ACallback = _di_TTMSFNCRouteCalculatorCalculateRouteCallback(), System::UnicodeString AID = System::UnicodeString(), void * ADataPointer = (void *)(0x0))/* overload */;
	virtual void __fastcall UpdateRouteSegmentEndAddress(TTMSFNCRouteCalculatorSegment* ASegment, System::UnicodeString AEndAddress, _di_TTMSFNCRouteCalculatorCalculateRouteCallback ACallback = _di_TTMSFNCRouteCalculatorCalculateRouteCallback(), System::UnicodeString AID = System::UnicodeString(), void * ADataPointer = (void *)(0x0))/* overload */;
	virtual void __fastcall UpdateRouteSegmentStartCoordinate(TTMSFNCRouteCalculatorSegment* ASegment, const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec &AStartCoordinate, _di_TTMSFNCRouteCalculatorCalculateRouteCallback ACallback = _di_TTMSFNCRouteCalculatorCalculateRouteCallback(), System::UnicodeString AID = System::UnicodeString(), void * ADataPointer = (void *)(0x0))/* overload */;
	virtual void __fastcall UpdateRouteSegmentEndCoordinate(TTMSFNCRouteCalculatorSegment* ASegment, const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec &AEndCoordinate, _di_TTMSFNCRouteCalculatorCalculateRouteCallback ACallback = _di_TTMSFNCRouteCalculatorCalculateRouteCallback(), System::UnicodeString AID = System::UnicodeString(), void * ADataPointer = (void *)(0x0))/* overload */;
	void __fastcall DeleteRoute(TTMSFNCRouteCalculatorRoute* ARoute);
	void __fastcall DeleteRouteSegment(TTMSFNCRouteCalculatorSegment* ASegment, _di_TTMSFNCRouteCalculatorCalculateRouteCallback ACallback = _di_TTMSFNCRouteCalculatorCalculateRouteCallback());
	void __fastcall GetCurrentLocation(TTMSFNCRouteCalculatorLocationMode AMode = (TTMSFNCRouteCalculatorLocationMode)(0x0));
	Fmx::Tmsfncmapscommontypes::TTMSFNCMapsGPXRec __fastcall LoadGPXFromStream(System::Classes::TStream* const AStream, bool ADoGeocoding = false);
	Fmx::Tmsfncmapscommontypes::TTMSFNCMapsGPXRec __fastcall LoadGPXFromFile(System::UnicodeString AFileName, bool ADoGeocoding = false);
	Fmx::Tmsfncmapscommontypes::TTMSFNCMapsGPXRec __fastcall LoadGPXFromText(System::UnicodeString AText, bool ADoGeocoding = false);
	virtual void __fastcall SaveToGPXStream(TTMSFNCRouteCalculatorRoute* ARoute, System::Classes::TStream* AStream)/* overload */;
	virtual void __fastcall SaveToGPXStream(TTMSFNCRouteCalculatorRoute* ARoute, System::Classes::TStream* AStream, const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsGPXMetaData &AMetaData)/* overload */;
	virtual void __fastcall SaveToGPXFile(TTMSFNCRouteCalculatorRoute* ARoute, System::UnicodeString AFileName)/* overload */;
	virtual void __fastcall SaveToGPXFile(TTMSFNCRouteCalculatorRoute* ARoute, System::UnicodeString AFileName, const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsGPXMetaData &AMetaData)/* overload */;
	virtual System::UnicodeString __fastcall SaveToGPXText(TTMSFNCRouteCalculatorRoute* ARoute)/* overload */;
	virtual System::UnicodeString __fastcall SaveToGPXText(TTMSFNCRouteCalculatorRoute* ARoute, const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsGPXMetaData &AMetaData)/* overload */;
	virtual void __fastcall SaveRoutesToStream(System::Classes::TStream* AStream);
	virtual System::UnicodeString __fastcall SaveRoutesToText();
	virtual void __fastcall SaveRoutesToFile(System::UnicodeString AFileName);
	virtual void __fastcall LoadRoutesFromStream(System::Classes::TStream* AStream);
	virtual void __fastcall LoadRoutesFromText(System::UnicodeString AText);
	virtual void __fastcall LoadRoutesFromFile(System::UnicodeString AFileName);
	int __fastcall RunnningRequestCount();
	virtual void __fastcall Clear();
	virtual void __fastcall ClearRoutes();
	virtual bool __fastcall HasRoutes();
	__property Fmx::Tmsfncgeocoding::TTMSFNCGeocoding* Geocoding = {read=FGeocoding};
	__property Fmx::Tmsfncdirections::TTMSFNCDirections* Directions = {read=FDirections};
	__property bool Active = {read=FActive, write=FActive, default=0};
	__property TTMSFNCRouteCalculatorHistoryManager* HistoryManager = {read=GetHistoryManager};
};


class PASCALIMPLEMENTATION TTMSFNCRouteCalculator : public TTMSFNCCustomRouteCalculator
{
	typedef TTMSFNCCustomRouteCalculator inherited;
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	
__published:
	__property OnGetGeocoding;
	__property OnGetDirections;
	__property OnGetRouteGeocoding;
	__property OnGetRouteDirections;
	__property OnCalculateRoute;
	__property OnCreateGPXTrack;
	__property OnCreateGPXSegment;
	__property OnLoadGPXRouteComplete;
	__property OnGetLocation;
	__property APIKey = {default=0};
	__property Service = {default=2};
	__property Version = {default=0};
	__property Routes;
	__property Options;
public:
	/* TTMSFNCCustomRouteCalculator.Create */ inline __fastcall virtual TTMSFNCRouteCalculator()/* overload */ : TTMSFNCCustomRouteCalculator() { }
	/* TTMSFNCCustomRouteCalculator.Create */ inline __fastcall virtual TTMSFNCRouteCalculator(System::Classes::TComponent* AOwner)/* overload */ : TTMSFNCCustomRouteCalculator(AOwner) { }
	/* TTMSFNCCustomRouteCalculator.Destroy */ inline __fastcall virtual ~TTMSFNCRouteCalculator() { }
	
};


//-- var, const, procedure ---------------------------------------------------
#define TTMSFNCRouteCalculatorDocURL u"https://download.tmssoftware.com/doc/tmsfncmaps/components"\
	u"/ttmsfncmaps/#ttmsfncroutecalculator"
#define TTMSFNCRouteCalculatorTipsURL u"https://www.tmssoftware.com/site/tmsfncmaps.asp?s=faq"
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x3);
static constexpr System::Int8 BLD_VER = System::Int8(0x0);
#define DEFAULTSTARTMARKER u"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYA"\
	u"AABXAvmHAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcw"\
	u"AADdYAAA3WAZBveZwAAAcrSURBVGhDzZldbBRVFMfPndmPlra0paVABdrS"\
	u"0i8aQoIxGgli/IoPSGgi+oJUE21abEx8kvBACQ9GHjQGhRRFhZgQ8YnEFz"\
	u"XRCJgoNKJpgXYF20Ip9osSoLTd3ZnrOXfu7M7uzLT7VeqPTvaeszvnnv+9"\
	u"Z+6dGRhkglOn1PKRdY8CY1vweAyArWXAH+HAculrbN/H9k0A/jd+/zto2i"\
	u"/9JZc6YccOTZyfBmkJWNPRvZrr3hbgfBdGWiHdicHhFmf8uKp7Dl/bvfaG"\
	u"9CZNSgKqO3qKgxrfj803GWNew5sanPMQMOVoVljb19NWPy7dCZO0gIqOnp"\
	u"e5xg9j4sXSFYEpXlA9flAUH7Y9WC0YntMf/tPDoOtB0MIz2A7JM6KgkDEG"\
	u"rLWvtfZb6UqIhAU8te9nz/VlKz7EM9qkS8CYAqo3Fzy+XEw8scnQUUA4eB"\
	u"+00H1MXJdeCdcP9Q0Pvwv7nw5Lz6wkJKDq44Bf8/NvsLdt0iXw+PLA6y8Q"\
	u"IlKBkg/N3EEx96RHwvlpNaS+cvWd6hnpcWXunk9xNezVTlqTp/LIylkOvq"\
	u"wlKSdP0LkUg2JRzAiMbRN9Yt/S48qcvZeP9RzEWt4uTVBUn+hQUf3Skz4U"\
	u"y4jpkx7SwLaXj/d+IE1XZi2hik+vbAWFncam+B114F+0LK1Rnw0qqZkHw6"\
	u"BrwYgH/17qa63/TjpsuApY09GZz/Xcy9gsJZsxFbJyV4jPdPDdGQAlOCna"\
	u"4ZwSPGIXM841mL5/S3waDhhSQ0odXg93DUcsrkOp6znv4YdInvBlFyeVfP"\
	u"bUKFT1nhQHtU2KLh6H0p/axZE7cEZ6o1Af1FcEBqVhn7ZHWjYcZ6D00OUi"\
	u"v8oGMFoO2R5cJn3ZReK7uciZHIKV13+EotGLwLACCI4lN750Awyufg4Wn/"\
	u"8csoe7hf/2+lfhTn2jaMcTnBqHMC6zAs4nZzReNuSw0TnOgM/L3jCTJ43e"\
	u"rAKjOQt5d/uhrvsz2NB5EIpH/ogkTzCsbfLRdyu0UfD5oherG0afcnwxF5"\
	u"GTA84lxNku2cLRz5m1dAomAtDw1yew/uJHsGScRtZIvLKyEpqamsRBbQMO"\
	u"2V4FioqKxLGImxerHeqT+o7A2WuyFYOthFYf7alQNfhHmri8LcPVJ0taJh"\
	u"yTvYSl8gOO/ID0UacMampqYPPmzVBaGrl8BENDQ3DmzBno7e3FiojOzr3F"\
	u"ZVhaz8PtonVoxaaja9MwPTksLbSBVwy01PVLU2ATUHbkSpMC7Etq03KZnb"\
	u"dK+E2KR/+ElQPfi1o3URQFGhoaYNOmTVBSUiK9zoyMjMC5c+egu7sbF4ro"\
	u"bcRkTikMlr0AY3itWJm6dwMFG79DAa+jgK+EIbGVEONso2w6blYFEz2R5F"\
	u"WPBzZu3AhtbW3Q2Ng4Z/IE/YZ+S+fQuRSDoJgUOx5rDtbcTOwCGKyVzZid"\
	u"0eTmqmdAw5IaWrkF1Bf3wNatW6GwsFB+mzh0Dp1LMSiW5smCwVXPym+jxO"\
	u"7O0dxM7Bcx58tlS1xI8UxlL4ULTxyAvsrtEPTnS2/qUAyKdf7xAzBtXf8l"\
	u"MTlYcjOxCcDLSzwGClxuGTSHmUkX3S2mJYeY3CS2i7j8SE8vOqupTZsXbW"\
	u"JuPLk0BO0NcrOxcOLECbh7N3bnz8/Ph507d0orSnt3Lvw66v4cQZsZbWoE"\
	u"Cgj0t9TWCEPiNMTRm3PLcpcMgUAAurq6Yg5aPlMiNoe4BwcHAQx45AGbnp"\
	u"wWGmsO1txM7DPAISBbuJH8DwRYc7DkZmIToDPlN9nEk+mJLrUyyghYPkYO"\
	u"BtbcTGwC/Ao/izlHbsa10JTRXAC0MPUdGcBwKKzZ7r9tAgLNtWP4cdawjF"\
	u"VgoYjr+2zCt9Oo+QvZFKMQfcR7eFCfxgwYYDWJ+7N4bPsAQa9Rwl7tKt5d"\
	u"riSb7kbprjSeQp8O1Xn215tXA70QDMaKpmeAquqYJVwQuKfCRNA+jtOT/0"\
	u"bqH+9eBz0htcrpNYujAKL88JW3UECHNMXrD3oP9DCg90TB6dvSEgKa+1vr"\
	u"jkozBscSIvqLa4/htHVKEwNOxKwI8wX1QX2ZcOAX+ou7jknThqsA2ME0Vd"\
	u"eaMMIDw8Fh5sHIvG5uFJv6oL4EnD/QAXOY5TW8uwDk2tvrLmGsZopEtnhv"\
	u"g09I8yFCJI+xo+9KsU/Omq+3NNCrHVdmFUD07a79Gn+2V5oYVsu4iGjy1o"\
	u"Hme42+Z2dOAURfS837GJD+P0CQSRFOyeMstPe11GOfc+O6CjlRceRKO56y"\
	u"T5riYcNPD/0JvlaPxzl5aO9vrY0M1lwkJYDIlIhMJE8kVEJW+lrqUEB65e"\
	u"RWNskmTyQ9AyapzkSmRt4kZQFEsiIynTyRdAlZSaacMlk2VtKaAZO5ZmI+"\
	u"Rt4kIwIINxHEfCVPZEwA4SSCsJdNfUaSJzIqgIgXYSWTI2+ScQGEk4j5SJ"\
	u"5IaxVyw746pb/aLAg0E+WHexzLKTMA/AdvKV0lo28WnwAAAABJRU5ErkJg"\
	u"gg=="
#define DEFAULTENDMARKER u"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYA"\
	u"AABXAvmHAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcw"\
	u"AADdYAAA3WAZBveZwAAAj/SURBVGhDtZh9bBTHGcbfuTv7zviITbASJzaE"\
	u"ONQfNVVUNSD6JSfFYCREU7Uy/BEUQqQ2qlFRE6F+0D+SqKIOqGmRIltqkI"\
	u"qIIoUIqSJVkRyiJKJppTRYRBEKcYxDofbFBIxl/H2+u52+z+zMefZuzz7b"\
	u"55902pm53ZnnmXnnY1dQAZCtFBwYaXiEhHxUkNwkSHyN01UkKar+FzQupI"\
	u"hJkleECPzHceh8dfln3eI0pVQFS2BJBmLNX18rgqmfO5L2CiHu08V5IaUc"\
	u"5NZPkgx1Vp/7tF8XL5hFGYg11VY4YfEiP/xTFl6kixcFG0lwPa/KlHi++t"\
	u"2e27o4bxZsYHB7XWvKEZ1CUIUuShMMEBUF3St+fI9CSqKU4/4SHDS4ZsL3"\
	u"DFFAtlV3fX5aF+VF3gZkU1MoFvnqT/zAL3SRAiIjPAb4QXQ+wMB0wv3BnI"\
	u"106JUrM/c+99j580ldNCd5Gejdvj4cdUJv8mR8XBcpSoqJVvDP9PRCgfjJ"\
	u"GaIp/tlw+VuTgeTu2q6+uC7Kybx9hhVmhRN8wxYf4KfKVhCVhv3FJ7mH49"\
	u"x/ppeRRlkmeBZ1oC7UaeDyx1Wb3LYuysm8fde/re7lgBDP6SyFuMq7SrjB"\
	u"jCeTHNtTLHaGxWaGhQGCi0M8chxuqMeGVzIanXLrsXi56u2egzrty5wGBr"\
	u"bW7WSlb/FN6r6Q7nm71xHPEzzQEO4hwApL1TbAN4yzQq8yGEHv2/MGxu9M"\
	u"zo4WZ3nroB9Wn+v5h1uSTU4DXzTXlEWCxZc5eT/y6PHyUm/PIzTGp60ev7"\
	u"eKxPe2E31jE1HVg+yYVYIk3xj7L9Glj0j+q4voq5gqRkdEI0RhfRvASIxM"\
	u"uFfAly8jItlQ0dU36pZ4yWlgoKWunXfU3+is6nkskQbENsQroneR2PUM0X"\
	u"dbvMHsB2/DxCbk6Ve5AlcTTGAVM2CpxUgYeBheqn7789/qrAdfAwNb6ldT"\
	u"SF5nA9znbuVoxIBwQbwq1jxE4peHie6+RxdkU1xcTGVlZdzjgmZmZmhiYo"\
	u"ISPAry2O94kn2h7sG8QlgZ0DnoJMAGJigpHvDb6Py7KySfNuLhcAXHqgFD"\
	u"O6Z7Plm5hmaefWlO8QDiQxxOwWCQSkpKqKKigqJra3h8/0xUXaPuQZ0mbA"\
	u"DaNL2rtLAmnfXga0Dw2UYnKcy9b8f9hI55GS6h4SeepaKyVfqf3EB4JitX"\
	u"rqToPZUkDvyel6VSVSfqNqBNtG3xpL56yDIwuLX2QR7rRp31VIIVBxMXjD"\
	u"X/hGRFJYf8PDHPIGxsRkdHaWpqSpkornqAxI+eUuWo2z5m2G3zKGwYbKlb"\
	u"p7NpslpPBUSTTrKP7IkLnGgZTW7akpd4MD7Oy6gGZjo6OujIkSN069Ytik"\
	u"Z5qX1sJ08CdyRNGwBte5Zsokd1Mo2fgm/pq0c8MGv91MPf4VOwd3znwkxc"\
	u"PnnSiRMn6Nq1azQ4OEhnzpxRE5yK+Ld5i3uvbsOQoSGtzZBtQPLLiMbeZD"\
	u"DBzPDG129QVwdLYp4gbE6dOkUXL15U+crKStqzZ48yBcSGR9QVbdiT2XNA"\
	u"tLQZsgzwkFXqpOdhOzax+gAYSKXcHXZycjKd9uPChQvKwPDwMIXDYdq/fz"\
	u"9FIhEaGxtzb8DGp7HbsjXY2gxZBrhH9P7PD+grSO+2XEuK54AhHo/zRptU"\
	u"cX3s2LFZQRZXr16lkyf55Ysrgendu3crszdu3FDGFbwZmhbTbTFeDbPaDN"\
	u"kjoObKHHDtwhpjrCZnz56lvr4+6u3tpfb2durvn31DvH37NnV2dlIikWDv"\
	u"gvbu3Us1Ne7a70GptpT74KfNJ4REugvtWLT3guCdIZ1yR6CpqYkaGhpUHo"\
	u"KPHj1K3d3dND09rUbGjMqOHTto48aNKp3FyGyddlu2BlubIcuAQzLdfbkm"\
	u"U9GX13TKBSF04MABam5uVnmsOsePH6fDhw9TLOYe3CB8505eLnNx/YpOeN"\
	u"uyNdjaDFkGeKb36pTnbI712Jzhwz0fuwmNWSZbW1tp3759VFTkLrE3b95U"\
	u"V4QMQmcu5CcfqivaQFsGz/uBpc2QHUIBcmti8LAdlebYG/m0mwIT3tMtwg"\
	u"QTcvPmzXTw4EFatcrdmFavXk1tbW1pU76MjhB1/1Ml7aM12vZ0oqXNkD0C"\
	u"IecDflI9hgrsjQVbO3pHJOIUfe+MLp1lZGREGVm3bh0dOnSIGhsb1XKJI8"\
	u"NcyL+/xg3FVd328QFtz3agTMoEuS4trMGaZWBb/ftcmdq2ccTFUdeAty/1"\
	u"Es7dMbzv1xR/KH1sSoPexglU7bLz8dlFkn/8FQe4oz4S4C3NgCO71YHv8+"\
	u"vlD3Q6TfYIMFKIv+qkqsAeRnyFUJNMOlT+xisUuvE/9w8LLJlDQ0PqrINz"\
	u"EPJmxwVIo2y67zLJjheVeNSJug1o0x59h8QJnfTgOwL4jFLqhPr432rkcR"\
	u"7BG5kB76x4Y4Imh4/CI7vaKF77sP43N9gHAAyEez+h8jc7KDA9qUKnnOu3"\
	u"Vx/UjzczhaSBiUByvd9nFl8DoH9b/c94Pf6Lzvq+9mGIVceygqlvfp/Gtv"\
	u"yYUuVZH+w8BHm9X/nu36jk4w/UwxCPEM089aZfVxleSp9Zc66H30GzyWlA"\
	u"trYGY6OXPuQb1CkLN2IU7M8hOLPARPrsEgiqgx5GI3HfWnJK3SNHYPwOFX"\
	u"GoodfDfZdUyAD0OMTbPY/QUaOr85y48O+ynm/vyvElO6cBcL2loTEo5Ufc"\
	u"SyqAsEPChN0gGsKkxk+NRh6g1zFh8bMFoCMg3mxeHGqTgUBw4/1dl/F1xJ"\
	u"c5DYD+rbV7RCDwGt+o7vUzASAeb1SYeAivTDMQjTDBqoa1HnmbLPGownGe"\
	u"XPNO7+tuiT8Z1fgTa6nHJ40/uLncJmwgxJiAWPt8k0mmeM0hXjbbdToneR"\
	u"kAsZa6F/j253U2LxP54Ceejb9Qfa6H19f5ydsAKLSJpYoHCzIACmWiEOLB"\
	u"gg2ApZoolHiwKANgsSYKKR4s2gBYqIlCiwdLMgDyNbEc4sGSDYD5TCyXeF"\
	u"AQAyCXCbBc4kHBDAA/E2C5xIOCGgCZJmwKLR4U3ADwM7Ec4sGyGAC2ieUS"\
	u"v+zAxMC2et9wKgxE/wfU9O7YdUzoAgAAAABJRU5ErkJggg=="
#define DEFAULTSELECTEDWAYPOINTMARKER u"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYA"\
	u"AABXAvmHAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcw"\
	u"AADdYAAA3WAZBveZwAAAnTSURBVGhDtVhrjFVXFV77nHPnzn3MgxleA0PH"\
	u"UmBqi0VCFBUT0mAd+vhhfxht6g9j/GPaGIn9ISRCibE+o/FHjbWCGhOjha"\
	u"RFGwPBaMbIo0asUNNSZmhhZoDymAEuc9/nnu369jn7zj5z3zPDl+x7zlnn"\
	u"nL3X41trr3MFzROXntgUdwq3VhSF9SGS9qdI0kYSci3fWiFIJkkKTwqREo"\
	u"Iu8713PSGOS8990yMxPjDVMSFOnSr6M80NczZA7tljXTnxhyc9oqdZufWs"\
	u"3AAJ0RbcrgspZZ7fOc9nJ0lYf1yx+Qt/FXv38lStY04GjH927QZB1k/47c"\
	u"08RZwnmdM8UhIHQmaEpNcLeXvHvcNvfxDcahotLXz+M6u7ohR5iizxHfbg"\
	u"4kCsYFlENs9m89HhgWt+RoEVpRL7F8Pl4WGwzARH5R1L0m67YB9eNvz2dC"\
	u"BuiKYNGNs2+BHbkd9lTg+ZVInYRO0RVpqPSulAXgvaGLdElGX241zDp5b8"\
	u"veW1f6vv6JlrgbgumjLgxuNrV+aL1gFOxk/wC+V3ElFfee3pVoEoZAv+mI"\
	u"F0+Wd/qSP9jXsOTmR9WW00XHric/f3WhnxshTyyUCkvJ5o96lSD5oljRYp"\
	u"cjSmc+FocF7sy8eyz9176OKtQFQVdVWY2HZ/r8h5+03l4fGOWGPlgTxTpA"\
	u"B/NgAc0slztjmBgOEJ+oqTa3/h31ymA1FV1FRjD98TFu3gmbYHImoLPG81"\
	u"QRlwPZMnyjE9cN4ISP4OnhvGALyEsKR4qq+Q3uJfVkdNA7726OCDUtDTOm"\
	u"HhHXi+Cd0Vcuz9csIa1KgH5FKSjYAxvoC6eey89MS63kBSgZoGuCXxDL88"\
	u"gHNUlzgnbLPJiuQEfeB487wZQPk4u6xcgom2egXxdf+qElVVGt++pt+S9j"\
	u"m+zT5n3vOESTagWYD3d7h+FJf1k3CL5Exepe6E4dkmkOL3df540stE3OLq"\
	u"5X97/6ovmUHFlGwxtzDOLq08PAGPtAKURc+JUGroizS95TGSlk1pzodWgF"\
	u"zTUeBkjLtO21f9qzAqDLgwNDgg5EzVibHyzSStBuiCsph7YBMVVn+Y8oMb"\
	u"yF3Sp7zZTEXSwK6OiqfBjn38/a0buoPLMioMaCPxST504hweMCdpBFV5UH"\
	u"XaopTbsIVkJEqlrl7K3/cgr2T5iR082wxQOLTvWJeVtpNbFVyWETIA9JGe"\
	u"xw0aKcajpFVzPhRFcuqWAJ4Fbe4Em5G7bBUVVt3HOltk2TZlPvYweYlOFZ"\
	u"k0P4PSWuR38C6ex1zVSi0ijwKiIGkx19X+4KqMkAEXtg5EhRBreKhqjP5G"\
	u"8xCLYbdEcmHczvDAMbgGx2GIdBxKf3ybUrirq4uSySS5S/s5Fx7lXHBUFK"\
	u"b5Wf2ufl8PzAODAGVAsD7rFJcWrX7l8xTsFD5CDuZ6u1gWrddYiM1D1f1o"\
	u"sDtizmleIG/w2GuPk7t8lVKwiGPfALk9S0nGkhSJxainp4dKpRJNTU2RV8"\
	u"iTlU6Rc+0yj0sUuTpGzuWL5Fy/TKLIIQmAnFMlO7iGUTp3OEo/zFju7nWH"\
	u"R8slIWTAGDdtdtH6M5u7ETdggLm9A4gCEhXKT31pBxUGBstxBmXYU+oIz8"\
	u"fYCO4wKZVKUT6fV+cYHvpphii51DbyFi165UWyCjmVb2gQTWA9RC0AN3nT"\
	u"z5pNXohCDuIvyE9btkDTxwQWiGKjyWWo++AvKDr6P+UaKA3K9Pb2Ks+3t3"\
	u"MdZMCgzs7OsjyRSCgZlE8cO6zmgPKYd7byQFgHGbdzy0KSkAGea3n4hg0u"\
	u"oVcFMKFuo+1bk9T96ssUufSe8momkyGbkxYDSmrgXMuy2ayKQvTsfyg5fI"\
	u"isbFrRpplqx/HjTAwjZIALtwhShKymvAZUQ8+Che07N6n31z+g6LunKZ/N"\
	u"0OTkZJkiJiC7efMmlXJZip05yZ7/Jdn5rOJ7vY3S1ENI607hzo3Q5CEDks"\
	u"JN8yHlX81Ug1rAwvCcxXTqev03FOHkLBQK5LpGpgcoFotqtL/1BnUe2k92"\
	u"0adNXeV5mDpwGZ2YnF4cikLIgN6OjWnJjgouVY2uZwNYUm68oHTgeYdTCd"\
	u"BJC2iZ8EqK/+iL2hrQBq9qA/ggS9Ia23TqVMg7IQPEgQMllpzmNxWNsPHU"\
	u"tYChNiE+Sq5KXqJDcR1Kp9NpunbtGt24cYNyuZziPxLdXdzHq+IZfqfB3M"\
	u"qAgDDc3tziD6sx9lXorZABgGWLYUlC1VlsXo16eX0fZdWLdyjlUfdv375N"\
	u"cjpFJR7gPmSAu2QFSdvxjW5gABxYjoAQVx1LXPCvZlBhwHKv+AYrcSW4nP"\
	u"XBXQlFM3iqs4d7nzaVrEX2eOzNf1Lvz79NPb96gSJjI1TgfQD3vHiSSp2L"\
	u"lGImv6sB+42G9ORoX2L9RHBZRmhbBvaOTpW+uW4J/PoYh0tAwQjTt1Yvj0"\
	u"UQhdz6zbwr91Nk/Dwn9O8oeewvZGemuUrdoth/j6kE9zq6lQGRq+MUuXxB"\
	u"7fK15i2w97Xz2E7pCGt3x5+GedMJA+lXgSuPPJQoicJxpu1DuFafk0Z/rg"\
	u"HPp3inRGOW/einyU5NsQGjZHFrAKNRofAM/v8BHb1YglvsB1ibNoqdPqaq"\
	u"EErxbMBpaCFwVJDyBEdt2z0HT5Z3YI2qBgATjwx+mTXeh9zDQ0mjL9IABb"\
	u"AQlJPYqHhFS0j1MYI/ALTBMAI9FBo1zi/1gYNKpFoHOMZ/rAyzfWA6u5b0"\
	u"tq04OvIPXxJGjQCyApY4wjOfQPh4qH8YoKgJxX3cZDi8SSaikhbxpyMMNa"\
	u"OFcyi7KM5HR/KzfiVUHg7e10DjVm4YJZWERS/1FQr/CiQVqGnAkiNnP+Al"\
	u"npfSU+VDhZU9Y35VwQB8OWFXxv86oMNsmplAz6efBX2UZwwgn+B9Lee27x"\
	u"2HSj8VwxdZWh01DWA95PHOkb+TsHfwfGpK1GTQQJdOJCA6Vni3lQ92PAtj"\
	u"1d80gcFKeZ5bR5SX4A5R7Fp6ePQ9X1Iddfw1g/GhwV38IA/BBPE/dPAvBY"\
	u"4LAUQVntfKcwSuC8vbufLwuX2+pDaa8pvjRX/GBvyYfVLe4GbTaa7QtDGV"\
	u"J0s+cy7b91tfUh9NGdB39Ew6LUrf4/38+4Gogk5zwWzaKAjaO5Jd/urDw8"\
	u"NNuacpCpm4NDT4PB+e41fnRadqtIHy/UfOvuhLmkMLqefD8qI/4sO86FSN"\
	u"NjbTZiS37CVf0jxaNmC+dKpFm7Mt0MZEyxQy0SqdFoo2JlqOgIlW6LSQtD"\
	u"ExLwOapdNC08bEvChkohadoPRC08bEvCJgohad7gZtTCxYBIBz29dEE9Le"\
	u"ydPuCUQhsB3PQvn50sbEghqgMZtOC00bEwtGIRMmne4GbUzclQgAmk78BX"\
	u"Z9oWkzA6L/A+DavxFhPzMaAAAAAElFTkSuQmCC"
#define DEFAULTADDWAYPOINTMARKER u"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYA"\
	u"AABXAvmHAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcw"\
	u"AADdYAAA3WAZBveZwAAAloSURBVGhDvZlrbFxHFcfP3Ltr73rXjl2C28Qm"\
	u"TaGxHbs1DS1SWkoDgjoPoqZQMIJWIEFUvqRSPiAIIGFCRRWExEMKX3iIV9"\
	u"QPKW1p1TYvKkgoNFBKaFq7tZsCSZPYsU3W79317t7hf+bOXc8+7r5s8ZNX"\
	u"d+bevWfOa87MrAWtEJc+2r3OsTPbLSnulCS7SYh1JGWTeijEDNoXBIkhDP"\
	u"gn6VhH234/dEE9WybLMkAOkHX5xY33SHL2Qsm7IKwieZL/pDwlyPrh2ttf"\
	u"f1rsJ0c/qpqaDbjY13kHXj4IxTfpW7Uh5RkYtKf9+PBf9J2qqNoAuWVLYL"\
	u"T+yn64bJ+AC/VthY1eXYAoYKPN4dDSJTTM4JPOEC2m0c7zN57znQNtyWsH"\
	u"xMmT+EblVGXA6N29EcdKHsZrO/QtRT2UDte5ilcCGxJfJErmqyrlc5as71"\
	u"9z4uy8vlOWig24sLk9bDVFjgkhPqhvKY83hipXPB82ZDaRGxFMjlOpRGLr"\
	u"DSfP40l5clLAD0Rf2KuivzGVZ683NxRXnhVKplwvK0+jnZ82DL/LMliWBy"\
	u"rVXcFQ+BCPqW+VpKIvvd3XtdcS9APdpVCQKArPm3Ces7IJKOugXQzIoBBS"\
	u"LYz3vfnhMQd/87tLyL1tx4Z/pDu+lDVgdGvnegf1G80w93mSNqnWEuzhua"\
	u"RrBFkI6o09RO/BUtCyWj2XsUmityDi3CCsgzSMGq2H52GIyUzcneSauIX1"\
	u"ZM2x4f/oflHKGnCpr+swvvUpbrMHWyK53puH4ux5spAPH9pJ4mOfIbqm1X"\
	u"2Yz9Vxks8+SvTHZ5QhPPEjMMSDHRDD9PUiiP5j7cff6Hd7xSlpwMWtnZ0k"\
	u"sXrqctkIz5v5ugDlF6C8jK4i66H9RB29+kkZRs6SPPgtzOApaoARDYYRXJ"\
	u"lmEQmFRPW1qbv9yBsj+k4BJScxPPCgpzxXHFP5FAZi5Z1whOb3PFxW+Ugk"\
	u"Qo2NjRQMIm/wXbHv+7jZqGSwLA8eg8dSCLJlRn5J94riawBvEywhPq27Kt"\
	u"wmnPPM9H0Pkmhb73Z8YKWbmpooGo3S6tWrlTG0dj2JL3xFPfdkeZhjWST6"\
	u"kVG+meJrwPm/dnfh0ub2cr3PYValsuO9lNh4K9l26YUgk0HBN2Bj6uqg5f"\
	u"s+QHTz+11ZRhS4UGQR1H65r6NT9wrwNSDgZDbrpqrX5sTlqsPM37HVbZTB"\
	u"wYSdn89dXFUUgOj7pLp6MhkuFgFDM0Thdt0swNcACNmgmznCmBQcKutClH"\
	u"w3yiVgBcsxOztL8bg3O9kh2iMbsRcMhZVME3OBzAjq0M0CfA3A5muNbiqP"\
	u"eHCJ43KXvrYds80dJZ024u+DxEtTU1M0OTlJ09PTqq2wkS+YQyzTXADNMY"\
	u"UU1+lmAf4RIIFF3sVMHx6IcRqibgMkEhVtWxSpVIoWFhZyo4YyzHiyGXNM"\
	u"4OZbEXwNkIJ4eVIYcpdILyUtT9JkMq+UVEMqO1SWvDF9hfsaABEx3cjxDO"\
	u"8UmMDVK25DMzMzo1s1MH5ZXTzZjDkmnJnVJR9fA5B3b+kmpY1oc2R5UtvY"\
	u"39ixCfcm4NSoyYiJUaLJMSXTzBpzTBjzL90swNcAR8h/6qbat5t4dbrh5Z"\
	u"NuQzM3N1dQLsshXziqrjm1H+SMaeiSj68BVnDmb7Bc5R6H09glqi0x0/Di"\
	u"cbLmpt2OhisMf7jqlGX6KtGJJ5TnPZkMj5V9XVI8nUic1r0CfA1oe2Z0AW"\
	u"8/q7sFCw0v91ZigZof/wkvBPqJC0dhfHxcXf3WCJlJk/z5d7GVnVfKm2XT"\
	u"HAsntCOlTme+Bigk/VK3stsHD95Fct7Wj7yijBB52wWuTByJsbExmpiYoF"\
	u"gspmo/XyevjFH8x98mevUlJYNleeRvK0wdimHOmwLU7z6nu15DcyP3g8jT"\
	u"VcZhhp07hcWVr4vrNtD0x3dTujW7fSpKYPwSrXryp1R34ZyqOs2QZ1afac"\
	u"jL7k6lHFp7fPgmKOmbjyUNYHAmuAfn1Kd0Vx1AzN0ir558klKTDpokum+j"\
	u"+M2bKbXuRso0tqjv2LMxCkLh8KunKTT4d6jjqK0Cn+zM1OGDER+QPJA+u9"\
	u"qPDT+tu0UpawBzsa/rd1gZd+muGji/angH+JzzsLecGhPamz/523OeuOwI"\
	u"D7zyFE5j9+quL6XngEYknd1wx0XdVT+F5G++WKEW7C7YOD70s4dtIdWH23"\
	u"yPn/F38pVnWdlTmEK+TRn6ou6UpKIIMGPbOnrT0jqFF9TGhZ3LCgWNXWMt"\
	u"sPLseSNIU45wtrzrKM6dFVBRBJjrIFAIZyciMct9HpAHzo9ENeQrj+ssWc"\
	u"7OSpVnKo6Ax6VtHXdKKY5gYqvtaK2RUMrzSqP7rLyQzva2EyN/1rcqouII"\
	u"eLQdHXlBCLkdFWKO+7VEIut53a9VeaZqAxjPiFrSqVjaCMvZUYvyTNUpZF"\
	u"JtOq1U2pjUFAGPatJpJdPGZFkGMJWk00qnjcmyUsiE04mk9Ryajdz30olZ"\
	u"6bQxWXYEPDgSsYaWezOWrba+XiTMtEkLOxELXbNrpZRnqo5A92FZZ6VTvU"\
	u"4mdauwrG6otwFiroeSayGs+abxM/Sd5/dQOAW3G8SDDfSNjxyk11o3sUFT"\
	u"+C4OwvI83n1TOs6QZQdfdgLBs0P9ovCEX4KKDOj8mdNoh5P8E9on8PkwXv"\
	u"L9mYPJN2IhGFHKD7beovp+wDCcR+UfoNYTmXj9b4d3W2pelaKkAVsGZGCi"\
	u"I/llbH/3CSHcH28qpOfKP+iR5x/iXxS08tX9NxZH0mlod6AnGP7eY/2iSF"\
	u"1zKWlA96H4rzAZP6e7SyDBHWeRkEbqKp0MbuGIiH2+lBhLl5ve/76urmff"\
	u"oc5DGA0rhrDxsfAJkLACOEIECemDK7aoPPPzgKhfDz0Q/rzuFuBvwMCA1d"\
	u"PxVYRU5Pw3LJOOUyo5BeWrStWyWHYdBeubyQ7o0uUh5dzg/eEmGOfVghzK"\
	u"RGDha0idR3Q3Fy8KTsqNgMMR4EjgfMkf/oquP/C7usLl2vuIArwvLNuNgI"\
	u"/3eRBJ1teH7g8d0DcKKGkA0/1ofBuOWQ/DkNv0rf8LMP0laPfNoc+G3R+O"\
	u"fChrgEf3oblbSNj3IZB3Q/wmeCzvXLVMpEROijOY9CdIZh4feiDq+2OWSc"\
	u"UGmFz/i3+HInWtvcjcHgjYgJRZL4VYA+PeCZEtJGQUHgzjmdrWoZ1BO46S"\
	u"hD2TjEHJCaQV/yB6Hs/exEl6cLEl/Mq5HVaVvxAT/Q+niwvEyza8sQAAAA"\
	u"BJRU5ErkJggg=="
#define DEFAULTWAYPOINTMARKER u"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYA"\
	u"AABXAvmHAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcw"\
	u"AADdUAAA3VAT3WWPEAAAnJSURBVGhDtVhbbBxXGf7PmdmL12s79joXX4Jp"\
	u"SOKWNo2iPLSlVVGVBwo89QFBlAdKhRRBECJSHkgk0lbQcqtIW6klSZWIi6"\
	u"iAPhQED62EhIpKmiJaaEFJiN36njSub7G9673NHL7/zFnvzN48vuSTZmfm"\
	u"nznn/Jfv/88/K2id2P+ricRcxu6WTuGTVoQ+Q4L2KZd24VG3UiIpLHKFUv"\
	u"NE4hqe/U8o90KxqP4lyB1rua9v/J19ouDNtDas2YDHR5T87evXHyHlHsI0"\
	u"d2GmPkwWNY8bQimVw5gPYOhFKel3X364+y9P9gnXPF4V1mTArhfH9kpL/I"\
	u"wU3SMEJUjgd01QLozIkBR/tqL5o5ceve0j8yA0VrXwjlMftEWSsYNC0fcx"\
	u"tNOIPShJJC1c4BA2zrhXZnoMIOXgAocq4szODjocUblMUp60ktZrlw5uXT"\
	u"TiFRHagP6zo3uUYz0FTn8Og8pUEREccVxAaTZixWDAGDaEYIi7ZK49MLWU"\
	u"K16Ot8rvvn+oa9KIGyKUAbtOT/VImXsFyXhvgC6i2Sgf2g8VQBQUjODDQC"\
	u"m2jM6nx5zvjP/gE+UHdbDiyrc/O54SLfIl5ahHjAij4HVi5ZkqDQBtNFaK"\
	u"ikIhUsyacjSQF+eWruWOjZy8bc5IagIxr4/bz42n3Kg4H1QeHhctKyuvgW"\
	u"JDee+yEdghshVnXxFz3Mfim+2n95/6Z8JIaqK+AV97XCIJj0LPh40Eb/MC"\
	u"8Hxjuw04cTM4Z73rFcHJz47h6AKgqrDlwXSy636+84TVqKtJ/73fuJNcdQ"\
	u"gjPbdo7/ACIfmuoHip+ujKEwaYWyRx5moGKNqE4/ju5ydSnqAadQ0QongE"\
	u"g/v0DVcXlHu9QChwiQR9dA74r8MAykvfWkp9VkTdb3s31aip0c7nx3qtmL"\
	u"wKZzd5EvBesmfCArxXC9QbK1ABe8GNPPJFbILceDYMuPtQXv64jpspyMiO"\
	u"ocPbbmiBD9UReFMJO0onysrDRu2RVQBlMQLPf6Vnnr6APcnSVEqbh2HBue"\
	u"b5V1oyEaXi1/VNBaoM6P/3cJ8Swld12I66TKsBpkuB9rdl6Y5knva25qgr"\
	u"ihzQ3gxRkUrAjuntMQZKfXHvy0McxgCqNBPR6H04oabpu+AkKwKedjMUk4"\
	u"ru78xSzFKUijp0Z0vOW4gTO3QuMFA4louG6MkuWtvNzTKCBoA+rlL34Cqm"\
	u"73VJq5UmpeQ0LYHmPO+oC1q2valIn2rKo7WRZOF4qDNDrRHedblzZipxae"\
	u"VrHstz8Fw1DBNQTxcQvqZOtBm93k0ZAQP63h2OofruxGGyjTerkgFMA+yW"\
	u"OrlwuDexNg4+uyyDYqCJDUUObE5rhdva2iiZTFIvDPr8lkWyERkdBRfz6H"\
	u"GlOcyc+mAD2SAG1GMjAOiUIEftoD2/D1SCgHtRbztlTP0Bb/Pmgadc971g"\
	u"eKFnA3h39ZCwXNoeL1Jvoohzgfpw3gK+JyOKmqIR6ujoIMdxaGZmhnJFl+"\
	u"YLkq7lbJrI2jSaidDIkk3XcJ13fWronEPRKFHHV41w8ZPifObk4LHdy0oE"\
	u"DNj17GiPTFh/gnCfnoANqPxG0T1LjhLSpaM7Zqi/BVTxnmjKwFP6zJ5vam"\
	u"qC3Yrm5+cpl8vpaz5c1/NwESX2P/NRemGonbIue5vbFK4+PuioM+U0zi+O"\
	u"Ot/yN3kBCtlNNjPA28vZ4aV+3g9eQMUo4wg6PbyJ/rsQ06+y0kyZVCqlPR"\
	u"+Pe8nPBrW2ti7Lm5ubtYyVf22yWc/hKc/NYYXyGmUdYHti624roFTAABlx"\
	u"XVCuRECMrZFYPKFpo6cLFr0EBT5Mo+rDq5lMhizL0gcrWQJfl2RLS0s6Cu"\
	u"/OxeiP15OUdlh50CZEtcP3m69d9RAwwMkWi3CnIVwt5Q1YOe5ZsPAsjPjx"\
	u"YIrem0dUlnI0PT29TBE/WDY7O0tLBYcuzjXR2dFNtORyrWe+N9ooy3pIWy"\
	u"xMzeUDkwcMKFpJLgHIGgN8sDaEXjxOGVDgFyNtNJGLUD6fpyL8UIlCAW0F"\
	u"jrdn43R+pJWyDpSXHMkGyiNS5YqEW0eMd26ZDkQhYMC+B1Np0GbW3ALcST"\
	u"aIhKYTFACfWWXXvGojlRilpGWUZA6/y7nFlVpVFIhK6BbEGICJpHRG3+nd"\
	u"H/BOwIBX7hAODH4Pwzwa8cZTpnId8ALILuy6Lbaruc5Kp9NpmpycpKmpKc"\
	u"pms5r/nOhdKLteGmKVmjnmBz/3DEB7M4cPq1F6IDgoYAADy7whlos9b17V"\
	u"dAjAPOc9gQ1g5bnu37x5k+bzKKFZR3OfZYxuGGBrz7IeKxigd27PAHyP3x"\
	u"DSHtY3PlQZUGjd9jaUuG5ugZW+q5mSijpiLkWx03KyZvMFenOmib53OUVP"\
	u"D3bQwGKEcsgNfpaEoe0R0z6slGP6k9QDyDh414Nd4+Z2GVUGDB6UOaHEc8"\
	u"vk5V1Qe6IePCV64NmFoqRLC1E6NdRBZ1FeJwsRGspE6amBFL043E5X01HK"\
	u"YdfdkeD5MH0jCvnXZf7b9q81xStQk+F3/+Z6cz7tXMDju7WAPyf1rlz5Oh"\
	u"TgPgaN2QOpJZrJWzSIPSGvGzDsh7q28zscxSI1w/ufxs4dRb78fZprP1ch"\
	u"89kRAPTU83r6Yoa32m3nwMXHqv9mqZui/WfHH8XDc3iF+wNIuO6bvmgZ8L"\
	u"5eCImJZVy8B18ZxbjClKaHCpxWaNTwhv7A8SoRG8jvVqjhax/gfHRR8sDA"\
	u"4e6/aUEFqihUAj7LXsdab2kqMZv0PwyVCc1yj0KO7kOhjGzHYDbUr5RR1m"\
	u"pHNYlD+dJfMvBwhe5ea264L/CCEmfyHV3/8ATVqGvAld2bP3KK9ITrKq98"\
	u"8GIOe9ts1BowgP8P5V1Z/6/DdKjSqAwdndK7MJbHBwDFudU2ctdRlx1lnx"\
	u"r5klju5ipR1wCutwOnL/wVZf2ojgKD/wF3ue8vRYKV55abqYDr0OBxnAP+"\
	u"vCopbyoTPAemnRjcs+VDT1AbDdxVRv/Px06ApyeELLWLoID+l6JEhfUCUf"\
	u"UrT+pjtyiOX/1mD3KwMepHwIdYq/0cDHgG5hpyIgJVdForKjwP5dFzHulq"\
	u"vvpLI2iIUAa8f6gr7Sykf4h8/ZERIXaVdFoLKpUHFD25LTHw6htffSjUxK"\
	u"Eo5Ef/mYkncDqGyrdOOlXThpW/crj3BSMIhVAR8COWlD/FaZ10qkEbZR3Z"\
	u"Gh84YwShsWoD1k+nOrSJXwlNGz9WTSE/Vk+njaGNH6uOgB+ro9PG0caPdR"\
	u"kQnk4bSxs/1kUhP+rTiQ3aWNr4sa4I+FGXTreANn5smAF16XQLaOPHhlHI"\
	u"j2o6bSxt/NiwCPgRpNPG08aPWxIBxs5nrsaslubj+AL7mJXfSNqUQfR/fz"\
	u"ph4tKG32YAAAAASUVORK5CYII="
}	/* namespace Tmsfncroutecalculator */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCROUTECALCULATOR)
using namespace Fmx::Tmsfncroutecalculator;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncroutecalculatorHPP
