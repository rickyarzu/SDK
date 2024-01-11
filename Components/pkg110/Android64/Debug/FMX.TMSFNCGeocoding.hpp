// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCGeocoding.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncgeocodingHPP
#define Fmx_TmsfncgeocodingHPP

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
namespace Tmsfncgeocoding
{
//-- forward type declarations -----------------------------------------------
__interface DELPHIINTERFACE ITMSFNCCustomGeocodingProperties;
typedef System::DelphiInterface<ITMSFNCCustomGeocodingProperties> _di_ITMSFNCCustomGeocodingProperties;
__interface DELPHIINTERFACE ITMSFNCCustomGeocodingInstance;
typedef System::DelphiInterface<ITMSFNCCustomGeocodingInstance> _di_ITMSFNCCustomGeocodingInstance;
__interface DELPHIINTERFACE ITMSFNCCustomGeocoding;
typedef System::DelphiInterface<ITMSFNCCustomGeocoding> _di_ITMSFNCCustomGeocoding;
__interface DELPHIINTERFACE ITMSFNCGeocodingService;
typedef System::DelphiInterface<ITMSFNCGeocodingService> _di_ITMSFNCGeocodingService;
__interface DELPHIINTERFACE ITMSFNCGeocodingServiceGoogle;
typedef System::DelphiInterface<ITMSFNCGeocodingServiceGoogle> _di_ITMSFNCGeocodingServiceGoogle;
__interface DELPHIINTERFACE ITMSFNCGeocodingServiceHere;
typedef System::DelphiInterface<ITMSFNCGeocodingServiceHere> _di_ITMSFNCGeocodingServiceHere;
__interface DELPHIINTERFACE ITMSFNCGeocodingServiceBing;
typedef System::DelphiInterface<ITMSFNCGeocodingServiceBing> _di_ITMSFNCGeocodingServiceBing;
__interface DELPHIINTERFACE ITMSFNCGeocodingServiceAzure;
typedef System::DelphiInterface<ITMSFNCGeocodingServiceAzure> _di_ITMSFNCGeocodingServiceAzure;
__interface DELPHIINTERFACE ITMSFNCGeocodingServiceMapBox;
typedef System::DelphiInterface<ITMSFNCGeocodingServiceMapBox> _di_ITMSFNCGeocodingServiceMapBox;
__interface DELPHIINTERFACE ITMSFNCGeocodingServiceTomTom;
typedef System::DelphiInterface<ITMSFNCGeocodingServiceTomTom> _di_ITMSFNCGeocodingServiceTomTom;
__interface DELPHIINTERFACE ITMSFNCGeocodingServiceOpenStreetMap;
typedef System::DelphiInterface<ITMSFNCGeocodingServiceOpenStreetMap> _di_ITMSFNCGeocodingServiceOpenStreetMap;
__interface DELPHIINTERFACE ITMSFNCGeocodingServiceOpenRouteService;
typedef System::DelphiInterface<ITMSFNCGeocodingServiceOpenRouteService> _di_ITMSFNCGeocodingServiceOpenRouteService;
__interface DELPHIINTERFACE ITMSFNCGeocodingServiceGeoApify;
typedef System::DelphiInterface<ITMSFNCGeocodingServiceGeoApify> _di_ITMSFNCGeocodingServiceGeoApify;
class DELPHICLASS TTMSFNCGeocodingItem;
class DELPHICLASS TTMSFNCGeocodingItems;
class DELPHICLASS TTMSFNCGeocodingRequest;
class DELPHICLASS TTMSFNCGeocodingRequests;
__interface DELPHIINTERFACE TTMSFNCGeocodingGetGeocodingCallBack;
typedef System::DelphiInterface<TTMSFNCGeocodingGetGeocodingCallBack> _di_TTMSFNCGeocodingGetGeocodingCallBack;
__interface DELPHIINTERFACE TTMSFNCGeocodingGetGeocodingResultCallBack;
typedef System::DelphiInterface<TTMSFNCGeocodingGetGeocodingResultCallBack> _di_TTMSFNCGeocodingGetGeocodingResultCallBack;
__interface DELPHIINTERFACE TTMSFNCGeocodingGetReverseGeocodingCallBack;
typedef System::DelphiInterface<TTMSFNCGeocodingGetReverseGeocodingCallBack> _di_TTMSFNCGeocodingGetReverseGeocodingCallBack;
__interface DELPHIINTERFACE TTMSFNCGeocodingGetReverseGeocodingResultCallBack;
typedef System::DelphiInterface<TTMSFNCGeocodingGetReverseGeocodingResultCallBack> _di_TTMSFNCGeocodingGetReverseGeocodingResultCallBack;
class DELPHICLASS TTMSFNCGeocodingCallBackWrapper;
class DELPHICLASS TTMSFNCGeocodingResultCallBackWrapper;
class DELPHICLASS TTMSFNCReverseGeocodingCallBackWrapper;
class DELPHICLASS TTMSFNCReverseGeocodingResultCallBackWrapper;
class DELPHICLASS TTMSFNCCustomGeocoding;
class DELPHICLASS TTMSFNCCustomGeocodingInterfacedObject;
class DELPHICLASS TTMSFNCGeocodingList;
class DELPHICLASS TTMSFNCGeocodingFactoryService;
class DELPHICLASS TTMSFNCGeocoding;
class DELPHICLASS TTMSFNCGeocodingPlatformServicesService;
class DELPHICLASS TTMSFNCGeocodingPlatformServicesList;
class DELPHICLASS TTMSFNCGeocodingPlatformServices;
//-- type declarations -------------------------------------------------------
__interface  INTERFACE_UUID("{FE4F141C-69EA-4FBE-B5BF-1262F9EFBA70}") ITMSFNCCustomGeocodingProperties  : public System::IInterface 
{
	virtual System::UnicodeString __fastcall GetAPIKey() = 0 ;
};

__interface  INTERFACE_UUID("{25C43C12-543C-460C-A8EE-9010559E62AD}") ITMSFNCCustomGeocodingInstance  : public System::IInterface 
{
	virtual void __fastcall SetGeocodingProperties(const _di_ITMSFNCCustomGeocodingProperties Value) = 0 ;
};

__interface  INTERFACE_UUID("{FE8B5C56-279A-405B-94ED-ACDFC142CFEF}") ITMSFNCCustomGeocoding  : public System::IInterface 
{
	virtual System::UnicodeString __fastcall GetIdentifier() = 0 ;
	virtual Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestMethod __fastcall GetRequestMethod() = 0 ;
	virtual System::UnicodeString __fastcall GetHost() = 0 ;
	virtual System::UnicodeString __fastcall GetReverseHost() = 0 ;
	virtual System::UnicodeString __fastcall GetPath(System::UnicodeString AAddress = System::UnicodeString()) = 0 ;
	virtual System::UnicodeString __fastcall GetReversePath(const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec &ACoordinate) = 0 ;
	virtual System::UnicodeString __fastcall GetQuery(System::UnicodeString AAddress, System::UnicodeString ALocale) = 0 /* overload */;
	virtual System::UnicodeString __fastcall GetQuery(const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec &ACoordinate, System::UnicodeString ALocale) = 0 /* overload */;
	virtual System::UnicodeString __fastcall GetPostData() = 0 ;
	virtual void __fastcall AddHeaders(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestHeaders* AHeaders) = 0 ;
	virtual void __fastcall Parse(TTMSFNCGeocodingRequest* ARequest, System::UnicodeString ARequestResult) = 0 ;
	virtual bool __fastcall IsValid() = 0 ;
	virtual void __fastcall DestroyGeocoding() = 0 ;
};

__interface  INTERFACE_UUID("{7B450AC9-7EE3-4D61-AFEA-6D0D1FF2B392}") ITMSFNCGeocodingService  : public System::IInterface 
{
	virtual _di_ITMSFNCCustomGeocoding __fastcall CreateGeocoding() = 0 ;
	virtual void __fastcall DestroyGeocoding(_di_ITMSFNCCustomGeocoding AGeocoding) = 0 ;
};

__interface  INTERFACE_UUID("{88D1B5B9-DA7F-44EB-97C7-93C5EBDDEA83}") ITMSFNCGeocodingServiceGoogle  : public ITMSFNCGeocodingService 
{
	
};

__interface  INTERFACE_UUID("{C08CBDEE-6884-4C81-A241-3B8E8EE1D6F2}") ITMSFNCGeocodingServiceHere  : public ITMSFNCGeocodingService 
{
	
};

__interface  INTERFACE_UUID("{E03F86CE-3E36-43D9-AD79-4D9D1BFB5C22}") ITMSFNCGeocodingServiceBing  : public ITMSFNCGeocodingService 
{
	
};

__interface  INTERFACE_UUID("{541F996E-F3A7-4750-8E12-D95B091DB936}") ITMSFNCGeocodingServiceAzure  : public ITMSFNCGeocodingService 
{
	
};

__interface  INTERFACE_UUID("{496E6828-08F0-4E28-AB11-577069815E99}") ITMSFNCGeocodingServiceMapBox  : public ITMSFNCGeocodingService 
{
	
};

__interface  INTERFACE_UUID("{95D7749D-DA80-45D3-B0E5-D21E7654FABA}") ITMSFNCGeocodingServiceTomTom  : public ITMSFNCGeocodingService 
{
	
};

__interface  INTERFACE_UUID("{E2D4A08F-03F2-4A23-83AA-27E599E01C5A}") ITMSFNCGeocodingServiceOpenStreetMap  : public ITMSFNCGeocodingService 
{
	
};

__interface  INTERFACE_UUID("{CE13AC60-6343-4A53-8577-4A11D98F9136}") ITMSFNCGeocodingServiceOpenRouteService  : public ITMSFNCGeocodingService 
{
	
};

__interface  INTERFACE_UUID("{BEAAE65C-C97B-4668-8C94-413F8C7987B8}") ITMSFNCGeocodingServiceGeoApify  : public ITMSFNCGeocodingService 
{
	
};

enum DECLSPEC_DENUM TTMSFNCGeocodingService : unsigned char { gsGoogle, gsHere, gsBing, gsAzure, gsMapBox, gsTomTom, gsOpenStreetMap, gsOpenRouteService, gsGeoApify };

enum DECLSPEC_DENUM TTMSFNCGeocodingPrecision : unsigned char { gpRoofTop, gpRangeInterpolated, gpGeometricCenter, gpApproximate, gpUnknown };

class PASCALIMPLEMENTATION TTMSFNCGeocodingItem : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	TTMSFNCCustomGeocoding* FOwner;
	bool FDataBoolean;
	System::UnicodeString FDataString;
	System::TObject* FDataObject;
	NativeInt FDataInteger;
	void *FDataPointer;
	System::UnicodeString FAddress;
	Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinate* FCoordinate;
	System::UnicodeString FStreet;
	System::UnicodeString FPostalCode;
	System::UnicodeString FCountry;
	System::UnicodeString FCountryCode;
	System::UnicodeString FRegion;
	System::UnicodeString FCity;
	System::UnicodeString FProvince;
	System::UnicodeString FProvinceCode;
	System::UnicodeString FRegionCode;
	System::UnicodeString FDistrict;
	System::UnicodeString FStreetNumber;
	System::UnicodeString FIntersection;
	TTMSFNCGeocodingPrecision FPrecision;
	void __fastcall SetCoordinate(Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinate* const Value);
	
public:
	__fastcall virtual TTMSFNCGeocodingItem(System::Classes::TCollection* Collection);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual ~TTMSFNCGeocodingItem();
	__property void * DataPointer = {read=FDataPointer, write=FDataPointer};
	__property bool DataBoolean = {read=FDataBoolean, write=FDataBoolean, nodefault};
	__property System::TObject* DataObject = {read=FDataObject, write=FDataObject};
	__property System::UnicodeString DataString = {read=FDataString, write=FDataString};
	__property NativeInt DataInteger = {read=FDataInteger, write=FDataInteger};
	
__published:
	__property Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinate* Coordinate = {read=FCoordinate, write=SetCoordinate};
	__property System::UnicodeString Address = {read=FAddress, write=FAddress};
	__property System::UnicodeString City = {read=FCity, write=FCity};
	__property System::UnicodeString District = {read=FDistrict, write=FDistrict};
	__property System::UnicodeString Country = {read=FCountry, write=FCountry};
	__property System::UnicodeString CountryCode = {read=FCountryCode, write=FCountryCode};
	__property System::UnicodeString Province = {read=FProvince, write=FProvince};
	__property System::UnicodeString ProvinceCode = {read=FProvinceCode, write=FProvinceCode};
	__property System::UnicodeString Region = {read=FRegion, write=FRegion};
	__property System::UnicodeString RegionCode = {read=FRegionCode, write=FRegionCode};
	__property System::UnicodeString Street = {read=FStreet, write=FStreet};
	__property System::UnicodeString StreetNumber = {read=FStreetNumber, write=FStreetNumber};
	__property System::UnicodeString PostalCode = {read=FPostalCode, write=FPostalCode};
	__property System::UnicodeString Intersection = {read=FIntersection, write=FIntersection};
	__property TTMSFNCGeocodingPrecision Precision = {read=FPrecision, write=FPrecision, nodefault};
};


class PASCALIMPLEMENTATION TTMSFNCGeocodingItems : public Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCGeocodingItem*>
{
	typedef Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCGeocodingItem*> inherited;
	
public:
	TTMSFNCGeocodingItem* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCCustomGeocoding* FOwner;
	HIDESBASE TTMSFNCGeocodingItem* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCGeocodingItem* const Value);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall CreateItemClass();
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	
public:
	__fastcall virtual TTMSFNCGeocodingItems(TTMSFNCCustomGeocoding* AOwner);
	__property TTMSFNCGeocodingItem* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	HIDESBASE TTMSFNCGeocodingItem* __fastcall Add();
	HIDESBASE TTMSFNCGeocodingItem* __fastcall Insert(int Index);
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCGeocodingItems() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCGeocodingRequest : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	TTMSFNCCustomGeocoding* FOwner;
	void *FDataPointer;
	bool FDataBoolean;
	System::UnicodeString FDataString;
	System::TObject* FDataObject;
	NativeInt FDataInteger;
	TTMSFNCGeocodingItems* FItems;
	System::UnicodeString FID;
	System::UnicodeString FStatus;
	System::UnicodeString FErrorMessage;
	void __fastcall SetItems(TTMSFNCGeocodingItems* const Value);
	void __fastcall SetErrorMessage(const System::UnicodeString Value);
	void __fastcall SetStatus(const System::UnicodeString Value);
	TTMSFNCGeocodingItem* __fastcall GetFirst();
	
public:
	__fastcall virtual TTMSFNCGeocodingRequest(System::Classes::TCollection* Collection);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual ~TTMSFNCGeocodingRequest();
	__property void * DataPointer = {read=FDataPointer, write=FDataPointer};
	__property bool DataBoolean = {read=FDataBoolean, write=FDataBoolean, nodefault};
	__property System::TObject* DataObject = {read=FDataObject, write=FDataObject};
	__property System::UnicodeString DataString = {read=FDataString, write=FDataString};
	__property NativeInt DataInteger = {read=FDataInteger, write=FDataInteger};
	__property TTMSFNCGeocodingItem* First = {read=GetFirst};
	
__published:
	__property System::UnicodeString ID = {read=FID};
	__property TTMSFNCGeocodingItems* Items = {read=FItems, write=SetItems};
	__property System::UnicodeString Status = {read=FStatus, write=SetStatus};
	__property System::UnicodeString ErrorMessage = {read=FErrorMessage, write=SetErrorMessage};
};


class PASCALIMPLEMENTATION TTMSFNCGeocodingRequests : public Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCGeocodingRequest*>
{
	typedef Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCGeocodingRequest*> inherited;
	
public:
	TTMSFNCGeocodingRequest* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCCustomGeocoding* FOwner;
	HIDESBASE TTMSFNCGeocodingRequest* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCGeocodingRequest* const Value);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall CreateItemClass();
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	
public:
	__fastcall virtual TTMSFNCGeocodingRequests(TTMSFNCCustomGeocoding* AOwner);
	__property TTMSFNCGeocodingRequest* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	HIDESBASE TTMSFNCGeocodingRequest* __fastcall Add();
	HIDESBASE TTMSFNCGeocodingRequest* __fastcall Insert(int Index);
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCGeocodingRequests() { }
	
};


__interface TTMSFNCGeocodingGetGeocodingCallBack  : public System::IInterface 
{
	virtual void __fastcall Invoke(TTMSFNCGeocodingRequest* const ARequest, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult) = 0 ;
};

typedef void __fastcall (__closure *TTMSFNCGeocodingGetGeocodingEvent)(System::TObject* Sender, TTMSFNCGeocodingRequest* const ARequest, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

__interface TTMSFNCGeocodingGetGeocodingResultCallBack  : public System::IInterface 
{
	virtual void __fastcall Invoke(TTMSFNCGeocodingRequest* const AResult) = 0 ;
};

typedef void __fastcall (__closure *TTMSFNCGeocodingGetGeocodingResultEvent)(System::TObject* Sender, TTMSFNCGeocodingRequest* const AResult);

__interface TTMSFNCGeocodingGetReverseGeocodingCallBack  : public System::IInterface 
{
	virtual void __fastcall Invoke(TTMSFNCGeocodingRequest* const ARequest, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult) = 0 ;
};

typedef void __fastcall (__closure *TTMSFNCGeocodingGetReverseGeocodingEvent)(System::TObject* Sender, TTMSFNCGeocodingRequest* const ARequest, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

__interface TTMSFNCGeocodingGetReverseGeocodingResultCallBack  : public System::IInterface 
{
	virtual void __fastcall Invoke(TTMSFNCGeocodingRequest* const AResult) = 0 ;
};

typedef void __fastcall (__closure *TTMSFNCGeocodingGetReverseGeocodingResultEvent)(System::TObject* Sender, TTMSFNCGeocodingRequest* const AResult);

class PASCALIMPLEMENTATION TTMSFNCGeocodingCallBackWrapper : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	_di_TTMSFNCGeocodingGetGeocodingCallBack FCallback;
	
public:
	__fastcall TTMSFNCGeocodingCallBackWrapper(_di_TTMSFNCGeocodingGetGeocodingCallBack ACallback);
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
	/* TObject.Destroy */ inline __fastcall virtual ~TTMSFNCGeocodingCallBackWrapper() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCGeocodingResultCallBackWrapper : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	_di_TTMSFNCGeocodingGetGeocodingResultCallBack FCallback;
	
public:
	__fastcall TTMSFNCGeocodingResultCallBackWrapper(_di_TTMSFNCGeocodingGetGeocodingResultCallBack ACallback);
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
	/* TObject.Destroy */ inline __fastcall virtual ~TTMSFNCGeocodingResultCallBackWrapper() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCReverseGeocodingCallBackWrapper : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	_di_TTMSFNCGeocodingGetReverseGeocodingCallBack FCallback;
	
public:
	__fastcall TTMSFNCReverseGeocodingCallBackWrapper(_di_TTMSFNCGeocodingGetReverseGeocodingCallBack ACallback);
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
	/* TObject.Destroy */ inline __fastcall virtual ~TTMSFNCReverseGeocodingCallBackWrapper() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCReverseGeocodingResultCallBackWrapper : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	_di_TTMSFNCGeocodingGetReverseGeocodingResultCallBack FCallback;
	
public:
	__fastcall TTMSFNCReverseGeocodingResultCallBackWrapper(_di_TTMSFNCGeocodingGetReverseGeocodingResultCallBack ACallback);
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
	/* TObject.Destroy */ inline __fastcall virtual ~TTMSFNCReverseGeocodingResultCallBackWrapper() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCustomGeocoding : public Fmx::Tmsfnccloudbase::TTMSFNCCloudBase
{
	typedef Fmx::Tmsfnccloudbase::TTMSFNCCloudBase inherited;
	
private:
	_di_ITMSFNCCustomGeocoding FGeocoding;
	_di_ITMSFNCCustomGeocodingInstance FGeocodingInstance;
	_di_ITMSFNCCustomGeocodingProperties FGeocodingProperties;
	TTMSFNCGeocodingService FService;
	System::UnicodeString FAPIKey;
	TTMSFNCGeocodingRequests* FGeocodingRequests;
	TTMSFNCGeocodingGetGeocodingEvent FOnGetGeocoding;
	TTMSFNCGeocodingGetGeocodingEvent FOnGetGeocodingInternal;
	TTMSFNCGeocodingGetReverseGeocodingEvent FOnGetReverseGeocodingInternal;
	TTMSFNCGeocodingGetReverseGeocodingEvent FOnGetReverseGeocoding;
	TTMSFNCGeocodingGetGeocodingResultEvent FOnGetGeocodingResult;
	TTMSFNCGeocodingGetReverseGeocodingResultEvent FOnGetReverseGeocodingResultInternal;
	TTMSFNCGeocodingGetReverseGeocodingResultEvent FOnGetReverseGeocodingResult;
	TTMSFNCGeocodingGetGeocodingResultEvent FOnGetGeocodingResultInternal;
	HIDESBASE void __fastcall SetService(const TTMSFNCGeocodingService Value);
	void __fastcall SetAPIKey(const System::UnicodeString Value);
	void __fastcall SetGeocodingRequests(TTMSFNCGeocodingRequests* const Value);
	
protected:
	virtual void __fastcall InternalGetGeocoding(System::UnicodeString AAddress, _di_TTMSFNCGeocodingGetGeocodingCallBack ACallback = _di_TTMSFNCGeocodingGetGeocodingCallBack(), _di_TTMSFNCGeocodingGetGeocodingResultCallBack ACallback2 = _di_TTMSFNCGeocodingGetGeocodingResultCallBack(), System::UnicodeString AID = System::UnicodeString(), void * ADataPointer = (void *)(0x0), System::UnicodeString ALocale = System::UnicodeString(), Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode AMode = (Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode)(0x0))/* overload */;
	virtual void __fastcall InternalGetReverseGeocoding(const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec &ACoordinate, _di_TTMSFNCGeocodingGetReverseGeocodingCallBack ACallback = _di_TTMSFNCGeocodingGetReverseGeocodingCallBack(), _di_TTMSFNCGeocodingGetReverseGeocodingResultCallBack ACallback2 = _di_TTMSFNCGeocodingGetReverseGeocodingResultCallBack(), System::UnicodeString AID = System::UnicodeString(), void * ADataPointer = (void *)(0x0), System::UnicodeString ALocale = System::UnicodeString(), Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode AMode = (Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode)(0x0))/* overload */;
	virtual Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec __fastcall InternalGetGeocodingSync(System::UnicodeString AAddress, System::UnicodeString ALocale = System::UnicodeString(), Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode AMode = (Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode)(0x0));
	virtual System::UnicodeString __fastcall InternalGetReverseGeocodingSync(const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec &ACoordinate, System::UnicodeString ALocale = System::UnicodeString(), Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode AMode = (Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode)(0x0));
	void __fastcall DoRequestGetGeocoding(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoGetGeocoding(TTMSFNCGeocodingRequest* const ARequest, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoGetReverseGeocoding(TTMSFNCGeocodingRequest* const ARequest, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	__property TTMSFNCGeocodingGetGeocodingEvent OnGetGeocoding = {read=FOnGetGeocoding, write=FOnGetGeocoding};
	__property TTMSFNCGeocodingGetGeocodingEvent OnGetGeocodingInternal = {read=FOnGetGeocodingInternal, write=FOnGetGeocodingInternal};
	__property TTMSFNCGeocodingGetReverseGeocodingEvent OnGetReverseGeocoding = {read=FOnGetReverseGeocoding, write=FOnGetReverseGeocoding};
	__property TTMSFNCGeocodingGetReverseGeocodingEvent OnGetReverseGeocodingInternal = {read=FOnGetReverseGeocodingInternal, write=FOnGetReverseGeocodingInternal};
	__property TTMSFNCGeocodingGetGeocodingResultEvent OnGetGeocodingResult = {read=FOnGetGeocodingResult, write=FOnGetGeocodingResult};
	__property TTMSFNCGeocodingGetGeocodingResultEvent OnGetGeocodingResultInternal = {read=FOnGetGeocodingResultInternal, write=FOnGetGeocodingResultInternal};
	__property TTMSFNCGeocodingGetReverseGeocodingResultEvent OnGetReverseGeocodingResult = {read=FOnGetReverseGeocodingResult, write=FOnGetReverseGeocodingResult};
	__property TTMSFNCGeocodingGetReverseGeocodingResultEvent OnGetReverseGeocodingResultInternal = {read=FOnGetReverseGeocodingResultInternal, write=FOnGetReverseGeocodingResultInternal};
	virtual void __fastcall InitializeGeocoding();
	virtual NativeUInt __fastcall GetInstance();
	TTMSFNCGeocodingRequests* __fastcall GetGeocodingRequests();
	bool __fastcall GeocodingReady();
	System::UnicodeString __fastcall GetAPIKey();
	int __fastcall GetVersionNr();
	virtual System::UnicodeString __fastcall GetDocURL();
	virtual System::UnicodeString __fastcall GetTipsURL();
	_di_ITMSFNCCustomGeocoding __fastcall Geocoding();
	virtual System::UnicodeString __fastcall GetVersion();
	__property TTMSFNCGeocodingService Service = {read=FService, write=SetService, default=0};
	__property System::UnicodeString APIKey = {read=FAPIKey, write=SetAPIKey};
	__property TTMSFNCGeocodingRequests* GeocodingRequests = {read=FGeocodingRequests, write=SetGeocodingRequests};
	__property _di_ITMSFNCCustomGeocoding GeocodingInstance = {read=FGeocoding};
	__property _di_ITMSFNCCustomGeocodingProperties GeocodingProperties = {read=FGeocodingProperties};
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual TTMSFNCCustomGeocoding(System::Classes::TComponent* AOwner)/* overload */;
	__fastcall virtual ~TTMSFNCCustomGeocoding();
	virtual void __fastcall GetGeocoding(System::UnicodeString AAddress, _di_TTMSFNCGeocodingGetGeocodingCallBack ACallback = _di_TTMSFNCGeocodingGetGeocodingCallBack(), System::UnicodeString AID = System::UnicodeString(), void * ADataPointer = (void *)(0x0), System::UnicodeString ALocale = System::UnicodeString(), Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode AMode = (Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode)(0x0))/* overload */;
	virtual void __fastcall GetReverseGeocoding(const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec &ACoordinate, _di_TTMSFNCGeocodingGetReverseGeocodingCallBack ACallback = _di_TTMSFNCGeocodingGetReverseGeocodingCallBack(), System::UnicodeString AID = System::UnicodeString(), void * ADataPointer = (void *)(0x0), System::UnicodeString ALocale = System::UnicodeString(), Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode AMode = (Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode)(0x0))/* overload */;
	virtual void __fastcall GetGeocodingResult(System::UnicodeString AAddress, _di_TTMSFNCGeocodingGetGeocodingResultCallBack ACallback = _di_TTMSFNCGeocodingGetGeocodingResultCallBack(), System::UnicodeString AID = System::UnicodeString(), void * ADataPointer = (void *)(0x0), System::UnicodeString ALocale = System::UnicodeString(), Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode AMode = (Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode)(0x0))/* overload */;
	virtual void __fastcall GetReverseGeocodingResult(const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec &ACoordinate, _di_TTMSFNCGeocodingGetReverseGeocodingResultCallBack ACallback = _di_TTMSFNCGeocodingGetReverseGeocodingResultCallBack(), System::UnicodeString AID = System::UnicodeString(), void * ADataPointer = (void *)(0x0), System::UnicodeString ALocale = System::UnicodeString(), Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode AMode = (Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode)(0x0))/* overload */;
	virtual Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec __fastcall GetGeocodingSync(System::UnicodeString AAddress, System::UnicodeString ALocale = System::UnicodeString(), Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode AMode = (Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode)(0x0));
	virtual System::UnicodeString __fastcall GetReverseGeocodingSync(const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec &ACoordinate, System::UnicodeString ALocale = System::UnicodeString(), Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode AMode = (Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode)(0x0));
public:
	/* TTMSFNCCustomCloudBase.Create */ inline __fastcall virtual TTMSFNCCustomGeocoding()/* overload */ : Fmx::Tmsfnccloudbase::TTMSFNCCloudBase() { }
	
private:
	void *__ITMSFNCCustomGeocodingProperties;	// ITMSFNCCustomGeocodingProperties 
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {FE4F141C-69EA-4FBE-B5BF-1262F9EFBA70}
	operator _di_ITMSFNCCustomGeocodingProperties()
	{
		_di_ITMSFNCCustomGeocodingProperties intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator ITMSFNCCustomGeocodingProperties*(void) { return (ITMSFNCCustomGeocodingProperties*)&__ITMSFNCCustomGeocodingProperties; }
	#endif
	
};


class PASCALIMPLEMENTATION TTMSFNCCustomGeocodingInterfacedObject : public System::TInterfacedObject
{
	typedef System::TInterfacedObject inherited;
	
private:
	_di_ITMSFNCCustomGeocodingProperties FGeocodingProperties;
	_di_ITMSFNCCustomGeocodingProperties __fastcall GetGeocodingProperties();
	
protected:
	void __fastcall SetGeocodingProperties(const _di_ITMSFNCCustomGeocodingProperties Value);
	
public:
	__property _di_ITMSFNCCustomGeocodingProperties GeocodingProperties = {read=GetGeocodingProperties};
	__fastcall virtual ~TTMSFNCCustomGeocodingInterfacedObject();
public:
	/* TObject.Create */ inline __fastcall TTMSFNCCustomGeocodingInterfacedObject() : System::TInterfacedObject() { }
	
private:
	void *__ITMSFNCCustomGeocodingInstance;	// ITMSFNCCustomGeocodingInstance 
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {25C43C12-543C-460C-A8EE-9010559E62AD}
	operator _di_ITMSFNCCustomGeocodingInstance()
	{
		_di_ITMSFNCCustomGeocodingInstance intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator ITMSFNCCustomGeocodingInstance*(void) { return (ITMSFNCCustomGeocodingInstance*)&__ITMSFNCCustomGeocodingInstance; }
	#endif
	
};


class PASCALIMPLEMENTATION TTMSFNCGeocodingList : public System::Generics::Collections::TList__1<_di_ITMSFNCCustomGeocoding>
{
	typedef System::Generics::Collections::TList__1<_di_ITMSFNCCustomGeocoding> inherited;
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCGeocoding_ITMSFNCCustomGeocoding>.Create */ inline __fastcall TTMSFNCGeocodingList()/* overload */ : System::Generics::Collections::TList__1<_di_ITMSFNCCustomGeocoding>() { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCGeocoding_ITMSFNCCustomGeocoding>.Create */ inline __fastcall TTMSFNCGeocodingList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<_di_ITMSFNCCustomGeocoding> > AComparer)/* overload */ : System::Generics::Collections::TList__1<_di_ITMSFNCCustomGeocoding>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCGeocoding_ITMSFNCCustomGeocoding>.Create */ inline __fastcall TTMSFNCGeocodingList(System::Generics::Collections::TEnumerable__1<_di_ITMSFNCCustomGeocoding>* const Collection)/* overload */ : System::Generics::Collections::TList__1<_di_ITMSFNCCustomGeocoding>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCGeocoding_ITMSFNCCustomGeocoding>.Create */ inline __fastcall TTMSFNCGeocodingList(const _di_ITMSFNCCustomGeocoding *Values, const int Values_High)/* overload */ : System::Generics::Collections::TList__1<_di_ITMSFNCCustomGeocoding>(Values, Values_High) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCGeocoding_ITMSFNCCustomGeocoding>.Destroy */ inline __fastcall virtual ~TTMSFNCGeocodingList() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCGeocodingFactoryService : public System::TInterfacedObject
{
	typedef System::TInterfacedObject inherited;
	
private:
	TTMSFNCGeocodingList* FGeocoding;
	
protected:
	virtual _di_ITMSFNCCustomGeocoding __fastcall DoCreateGeocoding() = 0 ;
	_di_ITMSFNCCustomGeocoding __fastcall CreateGeocoding();
	void __fastcall DestroyGeocoding(_di_ITMSFNCCustomGeocoding AGeocoding);
	
public:
	__fastcall TTMSFNCGeocodingFactoryService();
	__fastcall virtual ~TTMSFNCGeocodingFactoryService();
private:
	void *__ITMSFNCGeocodingService;	// ITMSFNCGeocodingService 
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {7B450AC9-7EE3-4D61-AFEA-6D0D1FF2B392}
	operator _di_ITMSFNCGeocodingService()
	{
		_di_ITMSFNCGeocodingService intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator ITMSFNCGeocodingService*(void) { return (ITMSFNCGeocodingService*)&__ITMSFNCGeocodingService; }
	#endif
	
};


class PASCALIMPLEMENTATION TTMSFNCGeocoding : public TTMSFNCCustomGeocoding
{
	typedef TTMSFNCCustomGeocoding inherited;
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	
public:
	__property GeocodingInstance;
	__property GeocodingProperties;
	
__published:
	__property OnGetReverseGeocoding;
	__property OnGetGeocoding;
	__property OnGetReverseGeocodingResult;
	__property OnGetGeocodingResult;
	__property APIKey = {default=0};
	__property GeocodingRequests;
	__property Service = {default=0};
	__property Version = {default=0};
public:
	/* TTMSFNCCustomGeocoding.Create */ inline __fastcall virtual TTMSFNCGeocoding(System::Classes::TComponent* AOwner)/* overload */ : TTMSFNCCustomGeocoding(AOwner) { }
	/* TTMSFNCCustomGeocoding.Destroy */ inline __fastcall virtual ~TTMSFNCGeocoding() { }
	
public:
	/* TTMSFNCCustomCloudBase.Create */ inline __fastcall virtual TTMSFNCGeocoding()/* overload */ : TTMSFNCCustomGeocoding() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCGeocodingPlatformServicesService : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	System::_di_IInterface FInterface;
	System::UnicodeString FGUID;
	
public:
	__fastcall TTMSFNCGeocodingPlatformServicesService(System::UnicodeString AGUID, System::_di_IInterface AInterface);
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
	/* TObject.Destroy */ inline __fastcall virtual ~TTMSFNCGeocodingPlatformServicesService() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCGeocodingPlatformServicesList : public System::Generics::Collections::TObjectList__1<TTMSFNCGeocodingPlatformServicesService*>
{
	typedef System::Generics::Collections::TObjectList__1<TTMSFNCGeocodingPlatformServicesService*> inherited;
	
private:
	System::_di_IInterface __fastcall GetValue(System::UnicodeString AGUID);
	
public:
	bool __fastcall ContainsKey(System::UnicodeString AGUID);
	void __fastcall RemoveByGUID(System::UnicodeString AGUID);
	__property System::_di_IInterface Interfaces[System::UnicodeString AGUID] = {read=GetValue};
public:
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCGeocoding_TTMSFNCGeocodingPlatformServicesService>.Create */ inline __fastcall TTMSFNCGeocodingPlatformServicesList()/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCGeocodingPlatformServicesService*>() { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCGeocoding_TTMSFNCGeocodingPlatformServicesService>.Create */ inline __fastcall TTMSFNCGeocodingPlatformServicesList(bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCGeocodingPlatformServicesService*>(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCGeocoding_TTMSFNCGeocodingPlatformServicesService>.Create */ inline __fastcall TTMSFNCGeocodingPlatformServicesList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCGeocodingPlatformServicesService*> > AComparer, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCGeocodingPlatformServicesService*>(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCGeocoding_TTMSFNCGeocodingPlatformServicesService>.Create */ inline __fastcall TTMSFNCGeocodingPlatformServicesList(System::Generics::Collections::TEnumerable__1<TTMSFNCGeocodingPlatformServicesService*>* const Collection, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCGeocodingPlatformServicesService*>(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCGeocoding_TTMSFNCGeocodingPlatformServicesService>.Destroy */ inline __fastcall virtual ~TTMSFNCGeocodingPlatformServicesList() { }
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCGeocoding_TTMSFNCGeocodingPlatformServicesService>.Create */ inline __fastcall TTMSFNCGeocodingPlatformServicesList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCGeocodingPlatformServicesService*> > AComparer)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCGeocodingPlatformServicesService*>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCGeocoding_TTMSFNCGeocodingPlatformServicesService>.Create */ inline __fastcall TTMSFNCGeocodingPlatformServicesList(System::Generics::Collections::TEnumerable__1<TTMSFNCGeocodingPlatformServicesService*>* const Collection)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCGeocodingPlatformServicesService*>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCGeocoding_TTMSFNCGeocodingPlatformServicesService>.Create */ inline __fastcall TTMSFNCGeocodingPlatformServicesList(TTMSFNCGeocodingPlatformServicesService* const *Values, const int Values_High)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCGeocodingPlatformServicesService*>(Values, Values_High) { }
	
};


class PASCALIMPLEMENTATION TTMSFNCGeocodingPlatformServices : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	TTMSFNCGeocodingPlatformServicesList* FServicesList;
	static TTMSFNCGeocodingPlatformServices* FCurrent;
	static bool FCurrentReleased;
	__classmethod void __fastcall ReleaseCurrent();
	
public:
	__fastcall TTMSFNCGeocodingPlatformServices();
	__fastcall virtual ~TTMSFNCGeocodingPlatformServices();
	void __fastcall AddPlatformService(const GUID &AServiceGUID, const System::_di_IInterface AService);
	void __fastcall RemovePlatformService(const GUID &AServiceGUID);
	System::_di_IInterface __fastcall GetPlatformService(const GUID &AServiceGUID);
	bool __fastcall SupportsPlatformService(const GUID &AServiceGUID)/* overload */;
	bool __fastcall SupportsPlatformService(const GUID &AServiceGUID, System::_di_IInterface &AService)/* overload */;
	__classmethod TTMSFNCGeocodingPlatformServices* __fastcall Current();
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
#define TTMSFNCGeocodingDocURL u"https://download.tmssoftware.com/doc/tmsfncmaps/components"\
	u"/ttmsfncmaps/#ttmsfncgeocoding"
#define TTMSFNCGeocodingTipsURL u"https://www.tmssoftware.com/site/tmsfncmaps.asp?s=faq"
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x5);
static constexpr System::Int8 REL_VER = System::Int8(0x2);
static constexpr System::Int8 BLD_VER = System::Int8(0x3);
}	/* namespace Tmsfncgeocoding */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCGEOCODING)
using namespace Fmx::Tmsfncgeocoding;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncgeocodingHPP
