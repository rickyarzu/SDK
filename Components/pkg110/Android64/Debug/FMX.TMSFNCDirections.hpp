// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCDirections.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncdirectionsHPP
#define Fmx_TmsfncdirectionsHPP

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
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.TMSFNCMapsCommonTypes.hpp>
#include <FMX.TMSFNCCloudBase.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>
#include <FMX.TMSFNCCustomComponent.hpp>
#include <FMX.Controls.hpp>
#include <FMX.Types.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncdirections
{
//-- forward type declarations -----------------------------------------------
__interface DELPHIINTERFACE ITMSFNCCustomDirectionsProperties;
typedef System::DelphiInterface<ITMSFNCCustomDirectionsProperties> _di_ITMSFNCCustomDirectionsProperties;
__interface DELPHIINTERFACE ITMSFNCCustomDirectionsInstance;
typedef System::DelphiInterface<ITMSFNCCustomDirectionsInstance> _di_ITMSFNCCustomDirectionsInstance;
__interface DELPHIINTERFACE ITMSFNCCustomDirections;
typedef System::DelphiInterface<ITMSFNCCustomDirections> _di_ITMSFNCCustomDirections;
__interface DELPHIINTERFACE ITMSFNCDirectionsService;
typedef System::DelphiInterface<ITMSFNCDirectionsService> _di_ITMSFNCDirectionsService;
__interface DELPHIINTERFACE ITMSFNCDirectionsServiceGoogle;
typedef System::DelphiInterface<ITMSFNCDirectionsServiceGoogle> _di_ITMSFNCDirectionsServiceGoogle;
__interface DELPHIINTERFACE ITMSFNCDirectionsServiceHere;
typedef System::DelphiInterface<ITMSFNCDirectionsServiceHere> _di_ITMSFNCDirectionsServiceHere;
__interface DELPHIINTERFACE ITMSFNCDirectionsServiceBing;
typedef System::DelphiInterface<ITMSFNCDirectionsServiceBing> _di_ITMSFNCDirectionsServiceBing;
__interface DELPHIINTERFACE ITMSFNCDirectionsServiceAzure;
typedef System::DelphiInterface<ITMSFNCDirectionsServiceAzure> _di_ITMSFNCDirectionsServiceAzure;
__interface DELPHIINTERFACE ITMSFNCDirectionsServiceMapBox;
typedef System::DelphiInterface<ITMSFNCDirectionsServiceMapBox> _di_ITMSFNCDirectionsServiceMapBox;
__interface DELPHIINTERFACE ITMSFNCDirectionsServiceTomTom;
typedef System::DelphiInterface<ITMSFNCDirectionsServiceTomTom> _di_ITMSFNCDirectionsServiceTomTom;
__interface DELPHIINTERFACE ITMSFNCDirectionsServiceOpenRouteService;
typedef System::DelphiInterface<ITMSFNCDirectionsServiceOpenRouteService> _di_ITMSFNCDirectionsServiceOpenRouteService;
__interface DELPHIINTERFACE ITMSFNCDirectionsServiceGeoApify;
typedef System::DelphiInterface<ITMSFNCDirectionsServiceGeoApify> _di_ITMSFNCDirectionsServiceGeoApify;
class DELPHICLASS TTMSFNCDirectionsStep;
class DELPHICLASS TTMSFNCDirectionsSteps;
class DELPHICLASS TTMSFNCDirectionsLeg;
class DELPHICLASS TTMSFNCDirectionsLegs;
class DELPHICLASS TTMSFNCDirectionsWayPoint;
class DELPHICLASS TTMSFNCDirectionsWayPoints;
class DELPHICLASS TTMSFNCDirectionsItem;
class DELPHICLASS TTMSFNCDirectionsItems;
class DELPHICLASS TTMSFNCDirectionsRequest;
class DELPHICLASS TTMSFNCDirectionsRequests;
__interface DELPHIINTERFACE TTMSFNCDirectionsGetDirectionsCallback;
typedef System::DelphiInterface<TTMSFNCDirectionsGetDirectionsCallback> _di_TTMSFNCDirectionsGetDirectionsCallback;
__interface DELPHIINTERFACE TTMSFNCDirectionsGetDirectionsResultCallback;
typedef System::DelphiInterface<TTMSFNCDirectionsGetDirectionsResultCallback> _di_TTMSFNCDirectionsGetDirectionsResultCallback;
class DELPHICLASS TTMSFNCDirectionsCallBackWrapper;
class DELPHICLASS TTMSFNCDirectionsResultCallBackWrapper;
class DELPHICLASS TTMSFNCCustomDirections;
class DELPHICLASS TTMSFNCCustomDirectionsInterfacedObject;
class DELPHICLASS TTMSFNCDirectionsList;
class DELPHICLASS TTMSFNCDirectionsFactoryService;
class DELPHICLASS TTMSFNCDirections;
class DELPHICLASS TTMSFNCDirectionsPlatformServicesService;
class DELPHICLASS TTMSFNCDirectionsPlatformServicesList;
class DELPHICLASS TTMSFNCDirectionsPlatformServices;
//-- type declarations -------------------------------------------------------
enum DECLSPEC_DENUM TTMSFNCDirectionsTravelMode : unsigned char { tmDriving, tmWalking, tmBicycling, tmPublicTransport, tmTruck };

__interface  INTERFACE_UUID("{7E76D35C-397F-4D05-AAAB-3CE44C082FE7}") ITMSFNCCustomDirectionsProperties  : public System::IInterface 
{
	virtual System::UnicodeString __fastcall GetAPIKey() = 0 ;
	virtual System::UnicodeString __fastcall GetTruckOptions(System::UnicodeString &AOptions, bool AAvoidTolls) = 0 ;
};

__interface  INTERFACE_UUID("{BB0799B8-FE15-4E10-AC1D-7490C887DB7C}") ITMSFNCCustomDirectionsInstance  : public System::IInterface 
{
	virtual void __fastcall SetDirectionsProperties(const _di_ITMSFNCCustomDirectionsProperties Value) = 0 ;
};

__interface  INTERFACE_UUID("{EDE79341-AAA4-4E89-B471-47365BDC999D}") ITMSFNCCustomDirections  : public System::IInterface 
{
	virtual System::UnicodeString __fastcall GetIdentifier() = 0 ;
	virtual Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestMethod __fastcall GetRequestMethod() = 0 ;
	virtual System::UnicodeString __fastcall GetHost() = 0 ;
	virtual System::UnicodeString __fastcall GetPath(System::UnicodeString AOrigin, System::UnicodeString ADestination, double AOriginLatitude, double AOriginLongitude, double ADestinationLatitude, double ADestinationLongitude, TTMSFNCDirectionsTravelMode ATravelMode, Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRecArray AWayPoints = Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRecArray()) = 0 ;
	virtual System::UnicodeString __fastcall GetQuery(System::UnicodeString AOrigin, System::UnicodeString ADestination, double AOriginLatitude, double AOriginLongitude, double ADestinationLatitude, double ADestinationLongitude, bool AAlternatives = false, TTMSFNCDirectionsTravelMode ATravelMode = (TTMSFNCDirectionsTravelMode)(0x0), System::Classes::TStringList* AWayPointList = (System::Classes::TStringList*)(0x0), Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRecArray AWayPoints = Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRecArray(), bool AOptimizeWayPoints = false, System::UnicodeString ALocale = System::UnicodeString(), bool AAvoidTolls = false) = 0 ;
	virtual System::UnicodeString __fastcall GetPostData(double AOriginLatitude, double AOriginLongitude, double ADestinationLatitude, double ADestinationLongitude, bool AAlternatives = false, TTMSFNCDirectionsTravelMode ATravelMode = (TTMSFNCDirectionsTravelMode)(0x0), Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRecArray AWayPoints = Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRecArray(), System::UnicodeString ALocale = System::UnicodeString(), bool AAvoidTolls = false) = 0 ;
	virtual void __fastcall AddHeaders(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestHeaders* AHeaders) = 0 ;
	virtual void __fastcall Parse(TTMSFNCDirectionsRequest* ARequest, System::UnicodeString ARequestResult) = 0 ;
	virtual bool __fastcall IsValid() = 0 ;
	virtual void __fastcall DestroyDirections() = 0 ;
};

__interface  INTERFACE_UUID("{74DDA282-D3BD-4883-8A49-CE2F67BF32AB}") ITMSFNCDirectionsService  : public System::IInterface 
{
	virtual _di_ITMSFNCCustomDirections __fastcall CreateDirections() = 0 ;
	virtual void __fastcall DestroyDirections(_di_ITMSFNCCustomDirections ADirections) = 0 ;
};

__interface  INTERFACE_UUID("{6A97B0E0-8F24-4E04-9110-E1472169FF20}") ITMSFNCDirectionsServiceGoogle  : public ITMSFNCDirectionsService 
{
	
};

__interface  INTERFACE_UUID("{0CD111D1-2C73-47A0-86B2-04CFFD819AAF}") ITMSFNCDirectionsServiceHere  : public ITMSFNCDirectionsService 
{
	
};

__interface  INTERFACE_UUID("{6A0EED0A-BBE0-4092-956F-37A0055A64B2}") ITMSFNCDirectionsServiceBing  : public ITMSFNCDirectionsService 
{
	
};

__interface  INTERFACE_UUID("{A8DBA06B-C950-4B88-B124-58A67600E0F5}") ITMSFNCDirectionsServiceAzure  : public ITMSFNCDirectionsService 
{
	
};

__interface  INTERFACE_UUID("{8695A289-6B14-472C-AA32-617B913173FD}") ITMSFNCDirectionsServiceMapBox  : public ITMSFNCDirectionsService 
{
	
};

__interface  INTERFACE_UUID("{111375A8-5C34-4AA9-A612-E3FB70944928}") ITMSFNCDirectionsServiceTomTom  : public ITMSFNCDirectionsService 
{
	
};

__interface  INTERFACE_UUID("{ABDB1BFD-AEBF-421A-B744-98E7040803F9}") ITMSFNCDirectionsServiceOpenRouteService  : public ITMSFNCDirectionsService 
{
	
};

__interface  INTERFACE_UUID("{BFB8236B-9D74-4F67-BCFB-1641107C4DEA}") ITMSFNCDirectionsServiceGeoApify  : public ITMSFNCDirectionsService 
{
	
};

enum DECLSPEC_DENUM TTMSFNCDirectionsService : unsigned char { dsGoogle, dsHere, dsBing, dsAzure, dsMapBox, dsTomTom, dsOpenRouteService, dsGeoApify };

class PASCALIMPLEMENTATION TTMSFNCDirectionsStep : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	System::Classes::TCollectionItem* FOwner;
	bool FDataBoolean;
	System::UnicodeString FDataString;
	System::TObject* FDataObject;
	NativeInt FDataInteger;
	void *FDataPointer;
	int FDistance;
	int FDuration;
	Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinate* FStartLocation;
	System::UnicodeString FInstructions;
	Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinate* FEndLocation;
	Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinates* FCoordinates;
	void __fastcall SetCoordinates(Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinates* const Value);
	
public:
	__fastcall virtual TTMSFNCDirectionsStep(System::Classes::TCollection* Collection);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual ~TTMSFNCDirectionsStep();
	__property void * DataPointer = {read=FDataPointer, write=FDataPointer};
	__property bool DataBoolean = {read=FDataBoolean, write=FDataBoolean, nodefault};
	__property System::TObject* DataObject = {read=FDataObject, write=FDataObject};
	__property System::UnicodeString DataString = {read=FDataString, write=FDataString};
	__property NativeInt DataInteger = {read=FDataInteger, write=FDataInteger};
	
__published:
	__property Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinates* Coordinates = {read=FCoordinates, write=SetCoordinates};
	__property Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinate* StartLocation = {read=FStartLocation, write=FStartLocation};
	__property Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinate* EndLocation = {read=FEndLocation, write=FEndLocation};
	__property int Distance = {read=FDistance, write=FDistance, nodefault};
	__property int Duration = {read=FDuration, write=FDuration, nodefault};
	__property System::UnicodeString Instructions = {read=FInstructions, write=FInstructions};
};


class PASCALIMPLEMENTATION TTMSFNCDirectionsSteps : public Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCDirectionsStep*>
{
	typedef Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCDirectionsStep*> inherited;
	
public:
	TTMSFNCDirectionsStep* operator[](int Index) { return this->Items[Index]; }
	
private:
	System::Classes::TCollectionItem* FOwner;
	HIDESBASE TTMSFNCDirectionsStep* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCDirectionsStep* const Value);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall CreateItemClass();
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	
public:
	__fastcall virtual TTMSFNCDirectionsSteps(System::Classes::TCollectionItem* AOwner);
	__property TTMSFNCDirectionsStep* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	HIDESBASE TTMSFNCDirectionsStep* __fastcall Add();
	HIDESBASE TTMSFNCDirectionsStep* __fastcall Insert(int Index);
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCDirectionsSteps() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCDirectionsLeg : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	System::Classes::TCollectionItem* FOwner;
	bool FDataBoolean;
	System::UnicodeString FDataString;
	System::TObject* FDataObject;
	NativeInt FDataInteger;
	void *FDataPointer;
	int FDistance;
	int FDuration;
	Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinate* FStartLocation;
	Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinate* FEndLocation;
	Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinates* FCoordinates;
	TTMSFNCDirectionsSteps* FSteps;
	void __fastcall SetCoordinates(Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinates* const Value);
	void __fastcall SetSteps(TTMSFNCDirectionsSteps* const Value);
	
public:
	__fastcall virtual TTMSFNCDirectionsLeg(System::Classes::TCollection* Collection);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual ~TTMSFNCDirectionsLeg();
	__property void * DataPointer = {read=FDataPointer, write=FDataPointer};
	__property bool DataBoolean = {read=FDataBoolean, write=FDataBoolean, nodefault};
	__property System::TObject* DataObject = {read=FDataObject, write=FDataObject};
	__property System::UnicodeString DataString = {read=FDataString, write=FDataString};
	__property NativeInt DataInteger = {read=FDataInteger, write=FDataInteger};
	
__published:
	__property Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinates* Coordinates = {read=FCoordinates, write=SetCoordinates};
	__property Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinate* StartLocation = {read=FStartLocation, write=FStartLocation};
	__property Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinate* EndLocation = {read=FEndLocation, write=FEndLocation};
	__property int Distance = {read=FDistance, write=FDistance, nodefault};
	__property int Duration = {read=FDuration, write=FDuration, nodefault};
	__property TTMSFNCDirectionsSteps* Steps = {read=FSteps, write=SetSteps};
};


class PASCALIMPLEMENTATION TTMSFNCDirectionsLegs : public Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCDirectionsLeg*>
{
	typedef Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCDirectionsLeg*> inherited;
	
public:
	TTMSFNCDirectionsLeg* operator[](int Index) { return this->Items[Index]; }
	
private:
	System::Classes::TCollectionItem* FOwner;
	HIDESBASE TTMSFNCDirectionsLeg* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCDirectionsLeg* const Value);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall CreateItemClass();
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	
public:
	__fastcall virtual TTMSFNCDirectionsLegs(System::Classes::TCollectionItem* AOwner);
	__property TTMSFNCDirectionsLeg* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	HIDESBASE TTMSFNCDirectionsLeg* __fastcall Add();
	HIDESBASE TTMSFNCDirectionsLeg* __fastcall Insert(int Index);
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCDirectionsLegs() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCDirectionsWayPoint : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	System::Classes::TCollectionItem* FOwner;
	bool FDataBoolean;
	System::UnicodeString FDataString;
	System::TObject* FDataObject;
	NativeInt FDataInteger;
	void *FDataPointer;
	int FDistance;
	int FDuration;
	int FOptimizedIndex;
	
public:
	__fastcall virtual TTMSFNCDirectionsWayPoint(System::Classes::TCollection* Collection);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual ~TTMSFNCDirectionsWayPoint();
	__property void * DataPointer = {read=FDataPointer, write=FDataPointer};
	__property bool DataBoolean = {read=FDataBoolean, write=FDataBoolean, nodefault};
	__property System::TObject* DataObject = {read=FDataObject, write=FDataObject};
	__property System::UnicodeString DataString = {read=FDataString, write=FDataString};
	__property NativeInt DataInteger = {read=FDataInteger, write=FDataInteger};
	
__published:
	__property int Distance = {read=FDistance, write=FDistance, nodefault};
	__property int Duration = {read=FDuration, write=FDuration, nodefault};
	__property int OptimizedIndex = {read=FOptimizedIndex, write=FOptimizedIndex, nodefault};
};


class PASCALIMPLEMENTATION TTMSFNCDirectionsWayPoints : public Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCDirectionsWayPoint*>
{
	typedef Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCDirectionsWayPoint*> inherited;
	
public:
	TTMSFNCDirectionsWayPoint* operator[](int Index) { return this->Items[Index]; }
	
private:
	System::Classes::TCollectionItem* FOwner;
	HIDESBASE TTMSFNCDirectionsWayPoint* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCDirectionsWayPoint* const Value);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall CreateItemClass();
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	
public:
	__fastcall virtual TTMSFNCDirectionsWayPoints(System::Classes::TCollectionItem* AOwner);
	__property TTMSFNCDirectionsWayPoint* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	HIDESBASE TTMSFNCDirectionsWayPoint* __fastcall Add();
	HIDESBASE TTMSFNCDirectionsWayPoint* __fastcall Insert(int Index);
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCDirectionsWayPoints() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCDirectionsItem : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	TTMSFNCCustomDirections* FOwner;
	bool FDataBoolean;
	System::UnicodeString FDataString;
	System::TObject* FDataObject;
	NativeInt FDataInteger;
	void *FDataPointer;
	Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinates* FCoordinates;
	System::UnicodeString FSummary;
	double FDistance;
	int FDuration;
	TTMSFNCDirectionsSteps* FSteps;
	TTMSFNCDirectionsLegs* FLegs;
	TTMSFNCDirectionsWayPoints* FWayPoints;
	void __fastcall SetCoordinates(Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinates* const Value);
	Fmx::Tmsfncmapscommontypes::TTMSFNCMapsBounds* __fastcall GetBounds();
	void __fastcall SetSteps(TTMSFNCDirectionsSteps* const Value);
	void __fastcall SetLegs(TTMSFNCDirectionsLegs* const Value);
	void __fastcall SetWayPoints(TTMSFNCDirectionsWayPoints* const Value);
	
public:
	__fastcall virtual TTMSFNCDirectionsItem(System::Classes::TCollection* Collection);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual ~TTMSFNCDirectionsItem();
	__property void * DataPointer = {read=FDataPointer, write=FDataPointer};
	__property bool DataBoolean = {read=FDataBoolean, write=FDataBoolean, nodefault};
	__property System::TObject* DataObject = {read=FDataObject, write=FDataObject};
	__property System::UnicodeString DataString = {read=FDataString, write=FDataString};
	__property NativeInt DataInteger = {read=FDataInteger, write=FDataInteger};
	__property Fmx::Tmsfncmapscommontypes::TTMSFNCMapsBounds* Bounds = {read=GetBounds};
	__property TTMSFNCDirectionsLegs* Legs = {read=FLegs, write=SetLegs};
	
__published:
	__property Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinates* Coordinates = {read=FCoordinates, write=SetCoordinates};
	__property double Distance = {read=FDistance, write=FDistance};
	__property int Duration = {read=FDuration, write=FDuration, nodefault};
	__property System::UnicodeString Summary = {read=FSummary, write=FSummary};
	__property TTMSFNCDirectionsWayPoints* WayPoints = {read=FWayPoints, write=SetWayPoints};
	__property TTMSFNCDirectionsSteps* Steps = {read=FSteps, write=SetSteps};
};


class PASCALIMPLEMENTATION TTMSFNCDirectionsItems : public Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCDirectionsItem*>
{
	typedef Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCDirectionsItem*> inherited;
	
public:
	TTMSFNCDirectionsItem* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCCustomDirections* FOwner;
	HIDESBASE TTMSFNCDirectionsItem* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCDirectionsItem* const Value);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall CreateItemClass();
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	
public:
	__fastcall virtual TTMSFNCDirectionsItems(TTMSFNCCustomDirections* AOwner);
	__property TTMSFNCDirectionsItem* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	HIDESBASE TTMSFNCDirectionsItem* __fastcall Add();
	HIDESBASE TTMSFNCDirectionsItem* __fastcall Insert(int Index);
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCDirectionsItems() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCDirectionsRequest : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	TTMSFNCCustomDirections* FOwner;
	void *FDataPointer;
	bool FDataBoolean;
	System::UnicodeString FDataString;
	System::TObject* FDataObject;
	NativeInt FDataInteger;
	TTMSFNCDirectionsItems* FItems;
	System::UnicodeString FID;
	TTMSFNCDirectionsTravelMode FTraveLmode;
	System::UnicodeString FStatus;
	System::UnicodeString FErrorMessage;
	void __fastcall SetItems(TTMSFNCDirectionsItems* const Value);
	void __fastcall SetTravelMode(const TTMSFNCDirectionsTravelMode Value);
	void __fastcall SetErrorMessage(const System::UnicodeString Value);
	void __fastcall SetStatus(const System::UnicodeString Value);
	
public:
	__fastcall virtual TTMSFNCDirectionsRequest(System::Classes::TCollection* Collection);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual ~TTMSFNCDirectionsRequest();
	__property void * DataPointer = {read=FDataPointer, write=FDataPointer};
	__property bool DataBoolean = {read=FDataBoolean, write=FDataBoolean, nodefault};
	__property System::TObject* DataObject = {read=FDataObject, write=FDataObject};
	__property System::UnicodeString DataString = {read=FDataString, write=FDataString};
	__property NativeInt DataInteger = {read=FDataInteger, write=FDataInteger};
	
__published:
	__property System::UnicodeString ID = {read=FID};
	__property TTMSFNCDirectionsItems* Items = {read=FItems, write=SetItems};
	__property TTMSFNCDirectionsTravelMode TravelMode = {read=FTraveLmode, write=SetTravelMode, nodefault};
	__property System::UnicodeString Status = {read=FStatus, write=SetStatus};
	__property System::UnicodeString ErrorMessage = {read=FErrorMessage, write=SetErrorMessage};
};


class PASCALIMPLEMENTATION TTMSFNCDirectionsRequests : public Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCDirectionsRequest*>
{
	typedef Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCDirectionsRequest*> inherited;
	
public:
	TTMSFNCDirectionsRequest* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCCustomDirections* FOwner;
	HIDESBASE TTMSFNCDirectionsRequest* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCDirectionsRequest* const Value);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall CreateItemClass();
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	
public:
	__fastcall virtual TTMSFNCDirectionsRequests(TTMSFNCCustomDirections* AOwner);
	__property TTMSFNCDirectionsRequest* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	HIDESBASE TTMSFNCDirectionsRequest* __fastcall Add();
	HIDESBASE TTMSFNCDirectionsRequest* __fastcall Insert(int Index);
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCDirectionsRequests() { }
	
};


__interface TTMSFNCDirectionsGetDirectionsCallback  : public System::IInterface 
{
	virtual void __fastcall Invoke(TTMSFNCDirectionsRequest* const ARequest, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult) = 0 ;
};

typedef void __fastcall (__closure *TTMSFNCDirectionsGetDirectionsEvent)(System::TObject* Sender, TTMSFNCDirectionsRequest* const ARequest, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

__interface TTMSFNCDirectionsGetDirectionsResultCallback  : public System::IInterface 
{
	virtual void __fastcall Invoke(TTMSFNCDirectionsRequest* const AResult) = 0 ;
};

typedef void __fastcall (__closure *TTMSFNCDirectionsGetDirectionsResultEvent)(System::TObject* Sender, TTMSFNCDirectionsRequest* const AResult);

class PASCALIMPLEMENTATION TTMSFNCDirectionsCallBackWrapper : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	_di_TTMSFNCDirectionsGetDirectionsCallback FCallback;
	
public:
	__fastcall TTMSFNCDirectionsCallBackWrapper(_di_TTMSFNCDirectionsGetDirectionsCallback ACallback);
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
	/* TObject.Destroy */ inline __fastcall virtual ~TTMSFNCDirectionsCallBackWrapper() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCDirectionsResultCallBackWrapper : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	_di_TTMSFNCDirectionsGetDirectionsResultCallback FCallback;
	
public:
	__fastcall TTMSFNCDirectionsResultCallBackWrapper(_di_TTMSFNCDirectionsGetDirectionsResultCallback ACallback);
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
	/* TObject.Destroy */ inline __fastcall virtual ~TTMSFNCDirectionsResultCallBackWrapper() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCustomDirections : public Fmx::Tmsfnccloudbase::TTMSFNCCloudBase
{
	typedef Fmx::Tmsfnccloudbase::TTMSFNCCloudBase inherited;
	
private:
	_di_ITMSFNCCustomDirections FDirections;
	_di_ITMSFNCCustomDirectionsInstance FDirectionsInstance;
	_di_ITMSFNCCustomDirectionsProperties FDirectionsProperties;
	TTMSFNCDirectionsService FService;
	System::UnicodeString FAPIKey;
	TTMSFNCDirectionsRequests* FDirectionsRequests;
	TTMSFNCDirectionsGetDirectionsEvent FOnGetDirections;
	TTMSFNCDirectionsGetDirectionsEvent FOnGetDirectionsInternal;
	TTMSFNCDirectionsGetDirectionsResultEvent FOnGetDirectionsResultInternal;
	TTMSFNCDirectionsGetDirectionsResultEvent FOnGetDirectionsResult;
	HIDESBASE void __fastcall SetService(const TTMSFNCDirectionsService Value);
	void __fastcall SetAPIKey(const System::UnicodeString Value);
	void __fastcall SetDirectionsRequests(TTMSFNCDirectionsRequests* const Value);
	
protected:
	void __fastcall DoRequestGetDirections(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoGetDirections(TTMSFNCDirectionsRequest* const ARequest, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	__property TTMSFNCDirectionsGetDirectionsEvent OnGetDirections = {read=FOnGetDirections, write=FOnGetDirections};
	__property TTMSFNCDirectionsGetDirectionsEvent OnGetDirectionsInternal = {read=FOnGetDirectionsInternal, write=FOnGetDirectionsInternal};
	__property TTMSFNCDirectionsGetDirectionsResultEvent OnGetDirectionsResult = {read=FOnGetDirectionsResult, write=FOnGetDirectionsResult};
	__property TTMSFNCDirectionsGetDirectionsResultEvent OnGetDirectionsResultInternal = {read=FOnGetDirectionsResultInternal, write=FOnGetDirectionsResultInternal};
	virtual void __fastcall InitializeDirections();
	virtual System::UnicodeString __fastcall GetTruckOptions(System::UnicodeString &AOptions, bool AAVoidTolls);
	virtual NativeUInt __fastcall GetInstance();
	TTMSFNCDirectionsRequests* __fastcall GetDirectionsRequests();
	bool __fastcall DirectionsReady();
	System::UnicodeString __fastcall GetAPIKey();
	int __fastcall GetVersionNr();
	virtual System::UnicodeString __fastcall GetDocURL();
	virtual System::UnicodeString __fastcall GetTipsURL();
	_di_ITMSFNCCustomDirections __fastcall Directions();
	virtual System::UnicodeString __fastcall GetVersion();
	__property TTMSFNCDirectionsService Service = {read=FService, write=SetService, default=0};
	__property System::UnicodeString APIKey = {read=FAPIKey, write=SetAPIKey};
	__property TTMSFNCDirectionsRequests* DirectionsRequests = {read=FDirectionsRequests, write=SetDirectionsRequests};
	__property _di_ITMSFNCCustomDirections DirectionsInstance = {read=FDirections};
	__property _di_ITMSFNCCustomDirectionsProperties DirectionsProperties = {read=FDirectionsProperties};
	virtual void __fastcall GetDirectionsInt(System::UnicodeString AOrigin, System::UnicodeString ADestination, double AOriginLatitude, double AOriginLongitude, double ADestinationLatitude, double ADestinationLongitude, bool AAlternatives = false, TTMSFNCDirectionsTravelMode ATravelMode = (TTMSFNCDirectionsTravelMode)(0x0), System::Classes::TStringList* AWayPointList = (System::Classes::TStringList*)(0x0), Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRecArray AWayPoints = Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRecArray(), bool AOptimizeWayPoints = false, System::UnicodeString ALocale = System::UnicodeString(), Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode AMode = (Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode)(0x0), System::UnicodeString AID = System::UnicodeString(), void * ADataPointer = (void *)(0x0),
		_di_TTMSFNCDirectionsGetDirectionsCallback ACallback = _di_TTMSFNCDirectionsGetDirectionsCallback(), _di_TTMSFNCDirectionsGetDirectionsResultCallback ACallback2 = _di_TTMSFNCDirectionsGetDirectionsResultCallback(), bool AAVoidTolls = false)/* overload */;
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual TTMSFNCCustomDirections(System::Classes::TComponent* AOwner)/* overload */;
	__fastcall virtual ~TTMSFNCCustomDirections();
	virtual void __fastcall GetDirections(const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec &AOrigin, const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec &ADestination, _di_TTMSFNCDirectionsGetDirectionsCallback ACallback = _di_TTMSFNCDirectionsGetDirectionsCallback(), System::UnicodeString AID = System::UnicodeString(), void * ADataPointer = (void *)(0x0), bool AAlternatives = false, TTMSFNCDirectionsTravelMode ATravelMode = (TTMSFNCDirectionsTravelMode)(0x0), Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRecArray AWayPoints = Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRecArray(), bool AOptimizeWayPoints = false, System::UnicodeString ALocale = System::UnicodeString(), Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode AMode = (Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode)(0x0),
		bool AAvoidTolls = false)/* overload */;
	virtual void __fastcall GetDirections(System::UnicodeString AOrigin, System::UnicodeString ADestination, _di_TTMSFNCDirectionsGetDirectionsCallback ACallback = _di_TTMSFNCDirectionsGetDirectionsCallback(), System::UnicodeString AID = System::UnicodeString(), void * ADataPointer = (void *)(0x0), bool AAlternatives = false, TTMSFNCDirectionsTravelMode ATravelMode = (TTMSFNCDirectionsTravelMode)(0x0), System::Classes::TStringList* AWayPoints = (System::Classes::TStringList*)(0x0), bool AOptimizeWayPoints = false, System::UnicodeString ALocale = System::UnicodeString(), Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode AMode = (Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode)(0x0), bool AAvoidTolls = false)/* overload */;
	virtual void __fastcall GetDirectionsResult(const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec &AOrigin, const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec &ADestination, _di_TTMSFNCDirectionsGetDirectionsResultCallback ACallback = _di_TTMSFNCDirectionsGetDirectionsResultCallback(), System::UnicodeString AID = System::UnicodeString(), void * ADataPointer = (void *)(0x0), bool AAlternatives = false, TTMSFNCDirectionsTravelMode ATravelMode = (TTMSFNCDirectionsTravelMode)(0x0), Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRecArray AWayPoints = Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRecArray(), bool AOptimizeWayPoints = false, System::UnicodeString ALocale = System::UnicodeString(), Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode AMode = (Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode)(0x0),
		bool AAvoidTolls = false)/* overload */;
	virtual void __fastcall GetDirectionsResult(System::UnicodeString AOrigin, System::UnicodeString ADestination, _di_TTMSFNCDirectionsGetDirectionsResultCallback ACallback = _di_TTMSFNCDirectionsGetDirectionsResultCallback(), System::UnicodeString AID = System::UnicodeString(), void * ADataPointer = (void *)(0x0), bool AAlternatives = false, TTMSFNCDirectionsTravelMode ATravelMode = (TTMSFNCDirectionsTravelMode)(0x0), System::Classes::TStringList* AWayPoints = (System::Classes::TStringList*)(0x0), bool AOptimizeWayPoints = false, System::UnicodeString ALocale = System::UnicodeString(), Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode AMode = (Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode)(0x0), bool AAvoidTolls = false)/* overload */;
public:
	/* TTMSFNCCustomCloudBase.Create */ inline __fastcall virtual TTMSFNCCustomDirections()/* overload */ : Fmx::Tmsfnccloudbase::TTMSFNCCloudBase() { }
	
private:
	void *__ITMSFNCCustomDirectionsProperties;	// ITMSFNCCustomDirectionsProperties 
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {7E76D35C-397F-4D05-AAAB-3CE44C082FE7}
	operator _di_ITMSFNCCustomDirectionsProperties()
	{
		_di_ITMSFNCCustomDirectionsProperties intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator ITMSFNCCustomDirectionsProperties*(void) { return (ITMSFNCCustomDirectionsProperties*)&__ITMSFNCCustomDirectionsProperties; }
	#endif
	
};


class PASCALIMPLEMENTATION TTMSFNCCustomDirectionsInterfacedObject : public System::TInterfacedObject
{
	typedef System::TInterfacedObject inherited;
	
private:
	_di_ITMSFNCCustomDirectionsProperties FDirectionsProperties;
	_di_ITMSFNCCustomDirectionsProperties __fastcall GetDirectionsProperties();
	
protected:
	void __fastcall SetDirectionsProperties(const _di_ITMSFNCCustomDirectionsProperties Value);
	
public:
	__property _di_ITMSFNCCustomDirectionsProperties DirectionsProperties = {read=GetDirectionsProperties};
	__fastcall virtual ~TTMSFNCCustomDirectionsInterfacedObject();
public:
	/* TObject.Create */ inline __fastcall TTMSFNCCustomDirectionsInterfacedObject() : System::TInterfacedObject() { }
	
private:
	void *__ITMSFNCCustomDirectionsInstance;	// ITMSFNCCustomDirectionsInstance 
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {BB0799B8-FE15-4E10-AC1D-7490C887DB7C}
	operator _di_ITMSFNCCustomDirectionsInstance()
	{
		_di_ITMSFNCCustomDirectionsInstance intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator ITMSFNCCustomDirectionsInstance*(void) { return (ITMSFNCCustomDirectionsInstance*)&__ITMSFNCCustomDirectionsInstance; }
	#endif
	
};


class PASCALIMPLEMENTATION TTMSFNCDirectionsList : public System::Generics::Collections::TList__1<_di_ITMSFNCCustomDirections>
{
	typedef System::Generics::Collections::TList__1<_di_ITMSFNCCustomDirections> inherited;
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCDirections_ITMSFNCCustomDirections>.Create */ inline __fastcall TTMSFNCDirectionsList()/* overload */ : System::Generics::Collections::TList__1<_di_ITMSFNCCustomDirections>() { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCDirections_ITMSFNCCustomDirections>.Create */ inline __fastcall TTMSFNCDirectionsList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<_di_ITMSFNCCustomDirections> > AComparer)/* overload */ : System::Generics::Collections::TList__1<_di_ITMSFNCCustomDirections>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCDirections_ITMSFNCCustomDirections>.Create */ inline __fastcall TTMSFNCDirectionsList(System::Generics::Collections::TEnumerable__1<_di_ITMSFNCCustomDirections>* const Collection)/* overload */ : System::Generics::Collections::TList__1<_di_ITMSFNCCustomDirections>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCDirections_ITMSFNCCustomDirections>.Create */ inline __fastcall TTMSFNCDirectionsList(const _di_ITMSFNCCustomDirections *Values, const int Values_High)/* overload */ : System::Generics::Collections::TList__1<_di_ITMSFNCCustomDirections>(Values, Values_High) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCDirections_ITMSFNCCustomDirections>.Destroy */ inline __fastcall virtual ~TTMSFNCDirectionsList() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCDirectionsFactoryService : public System::TInterfacedObject
{
	typedef System::TInterfacedObject inherited;
	
private:
	TTMSFNCDirectionsList* FDirections;
	
protected:
	virtual _di_ITMSFNCCustomDirections __fastcall DoCreateDirections() = 0 ;
	_di_ITMSFNCCustomDirections __fastcall CreateDirections();
	void __fastcall DestroyDirections(_di_ITMSFNCCustomDirections ADirections);
	
public:
	__fastcall TTMSFNCDirectionsFactoryService();
	__fastcall virtual ~TTMSFNCDirectionsFactoryService();
private:
	void *__ITMSFNCDirectionsService;	// ITMSFNCDirectionsService 
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {74DDA282-D3BD-4883-8A49-CE2F67BF32AB}
	operator _di_ITMSFNCDirectionsService()
	{
		_di_ITMSFNCDirectionsService intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator ITMSFNCDirectionsService*(void) { return (ITMSFNCDirectionsService*)&__ITMSFNCDirectionsService; }
	#endif
	
};


class PASCALIMPLEMENTATION TTMSFNCDirections : public TTMSFNCCustomDirections
{
	typedef TTMSFNCCustomDirections inherited;
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	
public:
	__property DirectionsInstance;
	__property DirectionsProperties;
	
__published:
	__property OnGetDirections;
	__property OnGetDirectionsResult;
	__property APIKey = {default=0};
	__property DirectionsRequests;
	__property Service = {default=0};
	__property Version = {default=0};
public:
	/* TTMSFNCCustomDirections.Create */ inline __fastcall virtual TTMSFNCDirections(System::Classes::TComponent* AOwner)/* overload */ : TTMSFNCCustomDirections(AOwner) { }
	/* TTMSFNCCustomDirections.Destroy */ inline __fastcall virtual ~TTMSFNCDirections() { }
	
public:
	/* TTMSFNCCustomCloudBase.Create */ inline __fastcall virtual TTMSFNCDirections()/* overload */ : TTMSFNCCustomDirections() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCDirectionsPlatformServicesService : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	System::_di_IInterface FInterface;
	System::UnicodeString FGUID;
	
public:
	__fastcall TTMSFNCDirectionsPlatformServicesService(System::UnicodeString AGUID, System::_di_IInterface AInterface);
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
	/* TObject.Destroy */ inline __fastcall virtual ~TTMSFNCDirectionsPlatformServicesService() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCDirectionsPlatformServicesList : public System::Generics::Collections::TObjectList__1<TTMSFNCDirectionsPlatformServicesService*>
{
	typedef System::Generics::Collections::TObjectList__1<TTMSFNCDirectionsPlatformServicesService*> inherited;
	
private:
	System::_di_IInterface __fastcall GetValue(System::UnicodeString AGUID);
	
public:
	bool __fastcall ContainsKey(System::UnicodeString AGUID);
	void __fastcall RemoveByGUID(System::UnicodeString AGUID);
	__property System::_di_IInterface Interfaces[System::UnicodeString AGUID] = {read=GetValue};
public:
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCDirections_TTMSFNCDirectionsPlatformServicesService>.Create */ inline __fastcall TTMSFNCDirectionsPlatformServicesList()/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCDirectionsPlatformServicesService*>() { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCDirections_TTMSFNCDirectionsPlatformServicesService>.Create */ inline __fastcall TTMSFNCDirectionsPlatformServicesList(bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCDirectionsPlatformServicesService*>(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCDirections_TTMSFNCDirectionsPlatformServicesService>.Create */ inline __fastcall TTMSFNCDirectionsPlatformServicesList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCDirectionsPlatformServicesService*> > AComparer, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCDirectionsPlatformServicesService*>(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCDirections_TTMSFNCDirectionsPlatformServicesService>.Create */ inline __fastcall TTMSFNCDirectionsPlatformServicesList(System::Generics::Collections::TEnumerable__1<TTMSFNCDirectionsPlatformServicesService*>* const Collection, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCDirectionsPlatformServicesService*>(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCDirections_TTMSFNCDirectionsPlatformServicesService>.Destroy */ inline __fastcall virtual ~TTMSFNCDirectionsPlatformServicesList() { }
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCDirections_TTMSFNCDirectionsPlatformServicesService>.Create */ inline __fastcall TTMSFNCDirectionsPlatformServicesList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCDirectionsPlatformServicesService*> > AComparer)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCDirectionsPlatformServicesService*>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCDirections_TTMSFNCDirectionsPlatformServicesService>.Create */ inline __fastcall TTMSFNCDirectionsPlatformServicesList(System::Generics::Collections::TEnumerable__1<TTMSFNCDirectionsPlatformServicesService*>* const Collection)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCDirectionsPlatformServicesService*>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCDirections_TTMSFNCDirectionsPlatformServicesService>.Create */ inline __fastcall TTMSFNCDirectionsPlatformServicesList(TTMSFNCDirectionsPlatformServicesService* const *Values, const int Values_High)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCDirectionsPlatformServicesService*>(Values, Values_High) { }
	
};


class PASCALIMPLEMENTATION TTMSFNCDirectionsPlatformServices : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	TTMSFNCDirectionsPlatformServicesList* FServicesList;
	static TTMSFNCDirectionsPlatformServices* FCurrent;
	static bool FCurrentReleased;
	__classmethod void __fastcall ReleaseCurrent();
	
public:
	__fastcall TTMSFNCDirectionsPlatformServices();
	__fastcall virtual ~TTMSFNCDirectionsPlatformServices();
	void __fastcall AddPlatformService(const GUID &AServiceGUID, const System::_di_IInterface AService);
	void __fastcall RemovePlatformService(const GUID &AServiceGUID);
	System::_di_IInterface __fastcall GetPlatformService(const GUID &AServiceGUID);
	bool __fastcall SupportsPlatformService(const GUID &AServiceGUID)/* overload */;
	bool __fastcall SupportsPlatformService(const GUID &AServiceGUID, System::_di_IInterface &AService)/* overload */;
	__classmethod TTMSFNCDirectionsPlatformServices* __fastcall Current();
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
#define TTMSFNCDirectionsDocURL u"https://download.tmssoftware.com/doc/tmsfncmaps/components"\
	u"/ttmsfncmaps/#ttmsfncdirections"
#define TTMSFNCDirectionsTipsURL u"https://www.tmssoftware.com/site/tmsfncmaps.asp?s=faq"
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x4);
static constexpr System::Int8 REL_VER = System::Int8(0x0);
static constexpr System::Int8 BLD_VER = System::Int8(0x0);
extern DELPHI_PACKAGE void __fastcall DecodeValues(System::UnicodeString AValues, Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinates* ACoordinates);
}	/* namespace Tmsfncdirections */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCDIRECTIONS)
using namespace Fmx::Tmsfncdirections;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncdirectionsHPP
