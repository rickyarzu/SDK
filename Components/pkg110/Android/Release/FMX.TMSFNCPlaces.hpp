// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCPlaces.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncplacesHPP
#define Fmx_TmsfncplacesHPP

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
namespace Tmsfncplaces
{
//-- forward type declarations -----------------------------------------------
__interface DELPHIINTERFACE ITMSFNCCustomPlacesProperties;
typedef System::DelphiInterface<ITMSFNCCustomPlacesProperties> _di_ITMSFNCCustomPlacesProperties;
__interface DELPHIINTERFACE ITMSFNCCustomPlacesInstance;
typedef System::DelphiInterface<ITMSFNCCustomPlacesInstance> _di_ITMSFNCCustomPlacesInstance;
__interface DELPHIINTERFACE ITMSFNCCustomPlaces;
typedef System::DelphiInterface<ITMSFNCCustomPlaces> _di_ITMSFNCCustomPlaces;
__interface DELPHIINTERFACE ITMSFNCPlacesService;
typedef System::DelphiInterface<ITMSFNCPlacesService> _di_ITMSFNCPlacesService;
__interface DELPHIINTERFACE ITMSFNCPlacesServiceGoogle;
typedef System::DelphiInterface<ITMSFNCPlacesServiceGoogle> _di_ITMSFNCPlacesServiceGoogle;
__interface DELPHIINTERFACE ITMSFNCPlacesServiceHere;
typedef System::DelphiInterface<ITMSFNCPlacesServiceHere> _di_ITMSFNCPlacesServiceHere;
__interface DELPHIINTERFACE ITMSFNCPlacesServiceGeoApify;
typedef System::DelphiInterface<ITMSFNCPlacesServiceGeoApify> _di_ITMSFNCPlacesServiceGeoApify;
__interface DELPHIINTERFACE ITMSFNCPlacesServiceAzure;
typedef System::DelphiInterface<ITMSFNCPlacesServiceAzure> _di_ITMSFNCPlacesServiceAzure;
__interface DELPHIINTERFACE ITMSFNCPlacesServiceBing;
typedef System::DelphiInterface<ITMSFNCPlacesServiceBing> _di_ITMSFNCPlacesServiceBing;
class DELPHICLASS TTMSFNCPlacesPhotoItem;
class DELPHICLASS TTMSFNCPlacesPhotoItems;
class DELPHICLASS TTMSFNCPlacesItem;
class DELPHICLASS TTMSFNCPlacesItems;
class DELPHICLASS TTMSFNCPlacesRequest;
class DELPHICLASS TTMSFNCPlacesRequests;
__interface DELPHIINTERFACE TTMSFNCPlacesCallback;
typedef System::DelphiInterface<TTMSFNCPlacesCallback> _di_TTMSFNCPlacesCallback;
__interface DELPHIINTERFACE TTMSFNCPlacesResultCallback;
typedef System::DelphiInterface<TTMSFNCPlacesResultCallback> _di_TTMSFNCPlacesResultCallback;
class DELPHICLASS TTMSFNCPlacesCallBackWrapper;
class DELPHICLASS TTMSFNCPlacesResultCallBackWrapper;
class DELPHICLASS TTMSFNCCustomPlaces;
class DELPHICLASS TTMSFNCCustomPlacesInterfacedObject;
class DELPHICLASS TTMSFNCPlacesList;
class DELPHICLASS TTMSFNCPlacesFactoryService;
class DELPHICLASS TTMSFNCPlaces;
class DELPHICLASS TTMSFNCPlacesPlatformServicesService;
class DELPHICLASS TTMSFNCPlacesPlatformServicesList;
class DELPHICLASS TTMSFNCPlacesPlatformServices;
//-- type declarations -------------------------------------------------------
__interface  INTERFACE_UUID("{FE4F141C-69EA-4FBE-B5BF-1262F9EFBA70}") ITMSFNCCustomPlacesProperties  : public System::IInterface 
{
	virtual System::UnicodeString __fastcall GetAPIKey() = 0 ;
};

__interface  INTERFACE_UUID("{25C43C12-543C-460C-A8EE-9010559E62AD}") ITMSFNCCustomPlacesInstance  : public System::IInterface 
{
	virtual void __fastcall SetPlacesProperties(const _di_ITMSFNCCustomPlacesProperties Value) = 0 ;
};

__interface  INTERFACE_UUID("{FE8B5C56-279A-405B-94ED-ACDFC142CFEF}") ITMSFNCCustomPlaces  : public System::IInterface 
{
	virtual System::UnicodeString __fastcall GetIdentifier() = 0 ;
	virtual System::UnicodeString __fastcall GetNextPageToken() = 0 ;
	virtual Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestMethod __fastcall GetRequestMethod() = 0 ;
	virtual System::UnicodeString __fastcall GetHost() = 0 ;
	virtual System::UnicodeString __fastcall GetPathAutoComplete() = 0 ;
	virtual System::UnicodeString __fastcall GetPathSearchByText(System::UnicodeString ASearch) = 0 ;
	virtual System::UnicodeString __fastcall GetQueryAutoComplete(System::UnicodeString ASearch, const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec &ALocation, bool AUseLocation, System::UnicodeString ALocale) = 0 /* overload */;
	virtual System::UnicodeString __fastcall GetQuerySearchByText(System::UnicodeString ASearch, const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec &ACoordinate, System::UnicodeString ALocale) = 0 /* overload */;
	virtual System::UnicodeString __fastcall GetPostData() = 0 ;
	virtual void __fastcall AddHeaders(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestHeaders* AHeaders) = 0 ;
	virtual void __fastcall ParseAutoComplete(TTMSFNCPlacesRequest* ARequest, System::UnicodeString ARequestResult) = 0 ;
	virtual void __fastcall ParseSearch(TTMSFNCPlacesRequest* ARequest, System::UnicodeString ARequestResult) = 0 ;
	virtual System::UnicodeString __fastcall GetPathSearchNearby() = 0 ;
	virtual System::UnicodeString __fastcall GetQuerySearchNearby(const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec &ACoordinate, System::UnicodeString AType, System::UnicodeString ALocale) = 0 /* overload */;
	virtual System::UnicodeString __fastcall GetQuerySearchNearbyNextPage(System::UnicodeString ALocale) = 0 /* overload */;
	virtual System::UnicodeString __fastcall GetPathGetPlaceDetail() = 0 ;
	virtual System::UnicodeString __fastcall GetQueryGetPlaceDetail(TTMSFNCPlacesItem* APlace, System::UnicodeString APlaceID) = 0 /* overload */;
	virtual void __fastcall ParseGetPlaceDetail(TTMSFNCPlacesRequest* ARequest, System::UnicodeString ARequestResult) = 0 ;
	virtual bool __fastcall IsValid() = 0 ;
	virtual void __fastcall DestroyPlaces() = 0 ;
};

__interface  INTERFACE_UUID("{5514151B-9B06-464A-B25B-0F200FCBA42C}") ITMSFNCPlacesService  : public System::IInterface 
{
	virtual _di_ITMSFNCCustomPlaces __fastcall CreatePlaces() = 0 ;
	virtual void __fastcall DestroyPlaces(_di_ITMSFNCCustomPlaces APlaces) = 0 ;
};

__interface  INTERFACE_UUID("{1E2544EF-147A-4252-8691-11719882EEAE}") ITMSFNCPlacesServiceGoogle  : public ITMSFNCPlacesService 
{
	
};

__interface  INTERFACE_UUID("{7B07FBEF-29FC-4BE9-9202-1070E1EBDFBA}") ITMSFNCPlacesServiceHere  : public ITMSFNCPlacesService 
{
	
};

__interface  INTERFACE_UUID("{92F7538D-93DB-45AD-B8CC-7443C6B883E0}") ITMSFNCPlacesServiceGeoApify  : public ITMSFNCPlacesService 
{
	
};

__interface  INTERFACE_UUID("{39B838E4-FA78-4B49-BDDF-87ABC37094A0}") ITMSFNCPlacesServiceAzure  : public ITMSFNCPlacesService 
{
	
};

__interface  INTERFACE_UUID("{69A5C733-DB48-4FAA-A2AB-D206AF062D08}") ITMSFNCPlacesServiceBing  : public ITMSFNCPlacesService 
{
	
};

enum DECLSPEC_DENUM TTMSFNCPlacesService : unsigned char { psGoogle, psHere, psGeoApify, psAzure, psBing };

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCPlacesPhotoItem : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	System::UnicodeString FReference;
	System::UnicodeString __fastcall GetURL();
	
public:
	__fastcall virtual TTMSFNCPlacesPhotoItem(System::Classes::TCollection* Collection);
	__fastcall virtual ~TTMSFNCPlacesPhotoItem();
	System::UnicodeString __fastcall GetImageURL(int AMaxWidth, int AMaxHeight);
	TTMSFNCCustomPlaces* __fastcall Places();
	
__published:
	__property System::UnicodeString Reference = {read=FReference, write=FReference};
	__property System::UnicodeString URL = {read=GetURL};
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCPlacesPhotoItems : public System::Classes::TOwnedCollection
{
	typedef System::Classes::TOwnedCollection inherited;
	
public:
	TTMSFNCPlacesPhotoItem* operator[](int Index) { return this->Items[Index]; }
	
private:
	HIDESBASE TTMSFNCPlacesPhotoItem* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCPlacesPhotoItem* const Value);
	
protected:
	virtual void __fastcall Update(System::Classes::TCollectionItem* Item);
	
public:
	__fastcall TTMSFNCPlacesPhotoItems(TTMSFNCPlacesItem* AOwner);
	__fastcall virtual ~TTMSFNCPlacesPhotoItems();
	__property TTMSFNCPlacesPhotoItem* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	HIDESBASE TTMSFNCPlacesPhotoItem* __fastcall Add();
	HIDESBASE TTMSFNCPlacesPhotoItem* __fastcall Insert(int Index);
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCPlacesItem : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	TTMSFNCCustomPlaces* FOwner;
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
	System::UnicodeString FID;
	System::UnicodeString FDescription;
	System::Classes::TStringList* FCategories;
	System::UnicodeString FPlaceType;
	TTMSFNCPlacesPhotoItems* FPhotos;
	bool FOpen;
	System::UnicodeString FRating;
	System::UnicodeString FIcon;
	System::UnicodeString FVicinity;
	System::UnicodeString FPhone;
	System::UnicodeString FWebsite;
	void __fastcall SetCoordinate(Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinate* const Value);
	void __fastcall SetPhotos(TTMSFNCPlacesPhotoItems* const Value);
	
public:
	__fastcall virtual TTMSFNCPlacesItem(System::Classes::TCollection* Collection);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual ~TTMSFNCPlacesItem();
	__property void * DataPointer = {read=FDataPointer, write=FDataPointer};
	__property bool DataBoolean = {read=FDataBoolean, write=FDataBoolean, nodefault};
	__property System::TObject* DataObject = {read=FDataObject, write=FDataObject};
	__property System::UnicodeString DataString = {read=FDataString, write=FDataString};
	__property NativeInt DataInteger = {read=FDataInteger, write=FDataInteger, nodefault};
	__property TTMSFNCPlacesPhotoItems* Photos = {read=FPhotos, write=SetPhotos};
	__property bool Open = {read=FOpen, write=FOpen, nodefault};
	__property System::UnicodeString Icon = {read=FIcon, write=FIcon};
	__property System::UnicodeString Vicinity = {read=FVicinity, write=FVicinity};
	__property System::UnicodeString Rating = {read=FRating, write=FRating};
	__property System::UnicodeString Phone = {read=FPhone, write=FPhone};
	__property System::UnicodeString Website = {read=FWebsite, write=FWebsite};
	
__published:
	__property Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinate* Coordinate = {read=FCoordinate, write=SetCoordinate};
	__property System::UnicodeString Description = {read=FDescription, write=FDescription};
	__property System::UnicodeString ID = {read=FID, write=FID};
	__property System::UnicodeString Address = {read=FAddress, write=FAddress};
	__property System::UnicodeString City = {read=FCity, write=FCity};
	__property System::UnicodeString Country = {read=FCountry, write=FCountry};
	__property System::UnicodeString CountryCode = {read=FCountryCode, write=FCountryCode};
	__property System::UnicodeString Province = {read=FProvince, write=FProvince};
	__property System::UnicodeString ProvinceCode = {read=FProvinceCode, write=FProvinceCode};
	__property System::UnicodeString Region = {read=FRegion, write=FRegion};
	__property System::UnicodeString RegionCode = {read=FRegionCode, write=FRegionCode};
	__property System::UnicodeString Street = {read=FStreet, write=FStreet};
	__property System::UnicodeString PostalCode = {read=FPostalCode, write=FPostalCode};
	__property System::UnicodeString PlaceType = {read=FPlaceType, write=FPlaceType};
	__property System::Classes::TStringList* Categories = {read=FCategories, write=FCategories};
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCPlacesItems : public Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCPlacesItem*>
{
	typedef Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCPlacesItem*> inherited;
	
public:
	TTMSFNCPlacesItem* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCCustomPlaces* FOwner;
	HIDESBASE TTMSFNCPlacesItem* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCPlacesItem* const Value);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall CreateItemClass();
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	
public:
	__fastcall virtual TTMSFNCPlacesItems(TTMSFNCCustomPlaces* AOwner);
	__property TTMSFNCPlacesItem* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	HIDESBASE TTMSFNCPlacesItem* __fastcall Add();
	HIDESBASE TTMSFNCPlacesItem* __fastcall Insert(int Index);
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCPlacesItems() { }
	
};

#pragma pack(pop)

_DECLARE_METACLASS(System::TMetaClass, TTMSFNCPlacesItemsClass);

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCPlacesRequest : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	TTMSFNCCustomPlaces* FOwner;
	void *FDataPointer;
	bool FDataBoolean;
	System::UnicodeString FDataString;
	System::TObject* FDataObject;
	NativeInt FDataInteger;
	TTMSFNCPlacesItems* FItems;
	System::UnicodeString FID;
	System::UnicodeString FStatus;
	System::UnicodeString FErrorMessage;
	void __fastcall SetItems(TTMSFNCPlacesItems* const Value);
	void __fastcall SetErrorMessage(const System::UnicodeString Value);
	void __fastcall SetStatus(const System::UnicodeString Value);
	TTMSFNCPlacesItem* __fastcall GetFirst();
	
protected:
	virtual TTMSFNCPlacesItemsClass __fastcall GetPlacesItemsClass();
	
public:
	__fastcall virtual TTMSFNCPlacesRequest(System::Classes::TCollection* Collection);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual ~TTMSFNCPlacesRequest();
	__property void * DataPointer = {read=FDataPointer, write=FDataPointer};
	__property bool DataBoolean = {read=FDataBoolean, write=FDataBoolean, nodefault};
	__property System::TObject* DataObject = {read=FDataObject, write=FDataObject};
	__property System::UnicodeString DataString = {read=FDataString, write=FDataString};
	__property NativeInt DataInteger = {read=FDataInteger, write=FDataInteger, nodefault};
	__property TTMSFNCPlacesItem* First = {read=GetFirst};
	
__published:
	__property System::UnicodeString ID = {read=FID};
	__property TTMSFNCPlacesItems* Items = {read=FItems, write=SetItems};
	__property System::UnicodeString Status = {read=FStatus, write=SetStatus};
	__property System::UnicodeString ErrorMessage = {read=FErrorMessage, write=SetErrorMessage};
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCPlacesRequests : public Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCPlacesRequest*>
{
	typedef Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCPlacesRequest*> inherited;
	
public:
	TTMSFNCPlacesRequest* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCCustomPlaces* FOwner;
	HIDESBASE TTMSFNCPlacesRequest* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCPlacesRequest* const Value);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall CreateItemClass();
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	
public:
	__fastcall virtual TTMSFNCPlacesRequests(TTMSFNCCustomPlaces* AOwner);
	__property TTMSFNCPlacesRequest* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	HIDESBASE TTMSFNCPlacesRequest* __fastcall Add();
	HIDESBASE TTMSFNCPlacesRequest* __fastcall Insert(int Index);
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCPlacesRequests() { }
	
};

#pragma pack(pop)

_DECLARE_METACLASS(System::TMetaClass, TTMSFNCPlacesRequestsClass);

__interface TTMSFNCPlacesCallback  : public System::IInterface 
{
	virtual void __fastcall Invoke(TTMSFNCPlacesRequest* const ARequest, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult) = 0 ;
};

typedef void __fastcall (__closure *TTMSFNCPlacesEvent)(System::TObject* Sender, TTMSFNCPlacesRequest* const ARequest, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

__interface TTMSFNCPlacesResultCallback  : public System::IInterface 
{
	virtual void __fastcall Invoke(TTMSFNCPlacesRequest* const AResult) = 0 ;
};

typedef void __fastcall (__closure *TTMSFNCPlacesResultEvent)(System::TObject* Sender, TTMSFNCPlacesRequest* const AResult);

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCPlacesCallBackWrapper : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	_di_TTMSFNCPlacesCallback FCallback;
	
public:
	__fastcall TTMSFNCPlacesCallBackWrapper(_di_TTMSFNCPlacesCallback ACallback);
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
	/* TObject.Destroy */ inline __fastcall virtual ~TTMSFNCPlacesCallBackWrapper() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCPlacesResultCallBackWrapper : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	_di_TTMSFNCPlacesResultCallback FCallback;
	
public:
	__fastcall TTMSFNCPlacesResultCallBackWrapper(_di_TTMSFNCPlacesResultCallback ACallback);
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
	/* TObject.Destroy */ inline __fastcall virtual ~TTMSFNCPlacesResultCallBackWrapper() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCustomPlaces : public Fmx::Tmsfnccloudbase::TTMSFNCCloudBase
{
	typedef Fmx::Tmsfnccloudbase::TTMSFNCCloudBase inherited;
	
private:
	System::Classes::TStringList* FResults;
	_di_ITMSFNCCustomPlaces FPlaces;
	_di_ITMSFNCCustomPlacesInstance FPlacesInstance;
	_di_ITMSFNCCustomPlacesProperties FPlacesProperties;
	TTMSFNCPlacesService FService;
	System::UnicodeString FAPIKey;
	TTMSFNCPlacesRequests* FPlacesRequests;
	TTMSFNCPlacesEvent FOnGetAutoComplete;
	TTMSFNCPlacesEvent FOnGetAutoCompleteInternal;
	TTMSFNCPlacesResultEvent FOnGetAutoCompleteResult;
	TTMSFNCPlacesResultEvent FOnGetAutoCompleteResultInternal;
	TTMSFNCPlacesResultEvent FOnSearchByTextResultInternal;
	TTMSFNCPlacesEvent FOnSearchByTextInternal;
	TTMSFNCPlacesResultEvent FOnSearchByTextResult;
	TTMSFNCPlacesEvent FOnSearchByText;
	TTMSFNCPlacesEvent FOnSearchNearby;
	TTMSFNCPlacesEvent FOnSearchNearbyInternal;
	TTMSFNCPlacesResultEvent FOnGetPlaceDetailResult;
	TTMSFNCPlacesEvent FOnGetPlaceDetail;
	TTMSFNCPlacesResultEvent FOnGetPlaceDetailResultInternal;
	TTMSFNCPlacesEvent FOnGetPlaceDetailInternal;
	HIDESBASE void __fastcall SetService(const TTMSFNCPlacesService Value);
	void __fastcall SetAPIKey(const System::UnicodeString Value);
	void __fastcall SetPlacesRequests(TTMSFNCPlacesRequests* const Value);
	
protected:
	virtual TTMSFNCPlacesRequestsClass __fastcall GetPlacesRequestsClass();
	virtual void __fastcall InternalGetAutoComplete(System::UnicodeString ASearch, const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec &ALocation, bool AUseLocation, _di_TTMSFNCPlacesCallback ACallback = _di_TTMSFNCPlacesCallback(), _di_TTMSFNCPlacesResultCallback ACallback2 = _di_TTMSFNCPlacesResultCallback(), System::UnicodeString AID = System::UnicodeString(), void * ADataPointer = (void *)(0x0), System::UnicodeString ALocale = System::UnicodeString(), Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode AMode = (Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode)(0x0))/* overload */;
	virtual System::Classes::TStringList* __fastcall InternalGetAutoCompleteSync(System::UnicodeString ASearch, const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec &ALocation, bool AUseLocation, System::UnicodeString ALocale = System::UnicodeString(), Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode AMode = (Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode)(0x0));
	void __fastcall DoRequestGetAutoComplete(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoGetAutoComplete(TTMSFNCPlacesRequest* const ARequest, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	__property TTMSFNCPlacesEvent OnGetAutoComplete = {read=FOnGetAutoComplete, write=FOnGetAutoComplete};
	__property TTMSFNCPlacesEvent OnGetAutoCompleteInternal = {read=FOnGetAutoCompleteInternal, write=FOnGetAutoCompleteInternal};
	__property TTMSFNCPlacesResultEvent OnGetAutoCompleteResult = {read=FOnGetAutoCompleteResult, write=FOnGetAutoCompleteResult};
	__property TTMSFNCPlacesResultEvent OnGetAutoCompleteResultInternal = {read=FOnGetAutoCompleteResultInternal, write=FOnGetAutoCompleteResultInternal};
	virtual void __fastcall InternalSearchByText(System::UnicodeString ASearch, const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec &ALocation, _di_TTMSFNCPlacesCallback ACallback = _di_TTMSFNCPlacesCallback(), _di_TTMSFNCPlacesResultCallback ACallback2 = _di_TTMSFNCPlacesResultCallback(), System::UnicodeString AID = System::UnicodeString(), void * ADataPointer = (void *)(0x0), System::UnicodeString ALocale = System::UnicodeString(), Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode AMode = (Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode)(0x0))/* overload */;
	virtual TTMSFNCPlacesRequest* __fastcall InternalSearchByTextSync(System::UnicodeString ASearch, const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec &ALocation, System::UnicodeString ALocale = System::UnicodeString(), Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode AMode = (Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode)(0x0));
	void __fastcall DoRequestSearchByText(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoSearchByText(TTMSFNCPlacesRequest* const ARequest, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	__property TTMSFNCPlacesEvent OnSearchByText = {read=FOnSearchByText, write=FOnSearchByText};
	__property TTMSFNCPlacesEvent OnSearchByTextInternal = {read=FOnSearchByTextInternal, write=FOnSearchByTextInternal};
	__property TTMSFNCPlacesResultEvent OnSearchByTextResult = {read=FOnSearchByTextResult, write=FOnSearchByTextResult};
	__property TTMSFNCPlacesResultEvent OnSearchByTextResultInternal = {read=FOnSearchByTextResultInternal, write=FOnSearchByTextResultInternal};
	virtual void __fastcall InternalSearchNearby(const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec &ALocation, System::UnicodeString AType = System::UnicodeString(), _di_TTMSFNCPlacesCallback ACallback = _di_TTMSFNCPlacesCallback(), _di_TTMSFNCPlacesResultCallback ACallback2 = _di_TTMSFNCPlacesResultCallback(), System::UnicodeString AID = System::UnicodeString(), void * ADataPointer = (void *)(0x0), System::UnicodeString ALocale = System::UnicodeString(), Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode AMode = (Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode)(0x0))/* overload */;
	virtual TTMSFNCPlacesRequest* __fastcall InternalSearchNearBySync(const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec &ALocation, System::UnicodeString AType = System::UnicodeString(), System::UnicodeString ALocale = System::UnicodeString(), Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode AMode = (Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode)(0x0));
	void __fastcall DoRequestSearchNearby(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoSearchNearby(TTMSFNCPlacesRequest* const ARequest, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	__property TTMSFNCPlacesEvent OnSearchNearby = {read=FOnSearchNearby, write=FOnSearchNearby};
	__property TTMSFNCPlacesEvent OnSearchNearbyInternal = {read=FOnSearchNearbyInternal, write=FOnSearchNearbyInternal};
	__property TTMSFNCPlacesResultEvent OnSearchNearbyResult = {read=FOnSearchByTextResult, write=FOnSearchByTextResult};
	__property TTMSFNCPlacesResultEvent OnSearchNearbyResultInternal = {read=FOnSearchByTextResultInternal, write=FOnSearchByTextResultInternal};
	virtual void __fastcall InternalSearchNearbyNextPage(_di_TTMSFNCPlacesCallback ACallback = _di_TTMSFNCPlacesCallback(), _di_TTMSFNCPlacesResultCallback ACallback2 = _di_TTMSFNCPlacesResultCallback(), System::UnicodeString AID = System::UnicodeString(), void * ADataPointer = (void *)(0x0), System::UnicodeString ALocale = System::UnicodeString(), Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode AMode = (Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode)(0x0))/* overload */;
	virtual TTMSFNCPlacesRequest* __fastcall InternalSearchNearByNextPageSync(System::UnicodeString ALocale = System::UnicodeString(), Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode AMode = (Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode)(0x0));
	virtual void __fastcall InternalGetPlaceDetail(TTMSFNCPlacesItem* APlace, System::UnicodeString APlaceID, System::UnicodeString AType = System::UnicodeString(), _di_TTMSFNCPlacesCallback ACallback = _di_TTMSFNCPlacesCallback(), _di_TTMSFNCPlacesResultCallback ACallback2 = _di_TTMSFNCPlacesResultCallback(), System::UnicodeString AID = System::UnicodeString(), void * ADataPointer = (void *)(0x0))/* overload */;
	void __fastcall DoRequestGetPlaceDetail(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoGetPlaceDetail(TTMSFNCPlacesRequest* const ARequest, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	__property TTMSFNCPlacesEvent OnGetPlaceDetail = {read=FOnGetPlaceDetail, write=FOnGetPlaceDetail};
	__property TTMSFNCPlacesEvent OnGetPlaceDetailInternal = {read=FOnGetPlaceDetailInternal, write=FOnGetPlaceDetailInternal};
	__property TTMSFNCPlacesResultEvent OnGetPlaceDetailResult = {read=FOnGetPlaceDetailResult, write=FOnGetPlaceDetailResult};
	__property TTMSFNCPlacesResultEvent OnGetPlaceDetailResultInternal = {read=FOnGetPlaceDetailResultInternal, write=FOnGetPlaceDetailResultInternal};
	virtual void __fastcall SearchByText(System::UnicodeString ASearch, const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec &ALocation, _di_TTMSFNCPlacesCallback ACallback = _di_TTMSFNCPlacesCallback(), System::UnicodeString AID = System::UnicodeString(), void * ADataPointer = (void *)(0x0), System::UnicodeString ALocale = System::UnicodeString(), Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode AMode = (Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode)(0x0))/* overload */;
	virtual void __fastcall SearchByTextResult(System::UnicodeString ASearch, const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec &ALocation, _di_TTMSFNCPlacesResultCallback ACallback = _di_TTMSFNCPlacesResultCallback(), System::UnicodeString AID = System::UnicodeString(), void * ADataPointer = (void *)(0x0), System::UnicodeString ALocale = System::UnicodeString(), Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode AMode = (Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode)(0x0))/* overload */;
	virtual TTMSFNCPlacesRequest* __fastcall SearchByTextSync(System::UnicodeString ASearch, const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec &ALocation, System::UnicodeString ALocale = System::UnicodeString(), Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode AMode = (Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode)(0x0))/* overload */;
	virtual void __fastcall SearchNearby(const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec &ALocation, System::UnicodeString AType = System::UnicodeString(), _di_TTMSFNCPlacesCallback ACallback = _di_TTMSFNCPlacesCallback(), System::UnicodeString AID = System::UnicodeString(), void * ADataPointer = (void *)(0x0), System::UnicodeString ALocale = System::UnicodeString(), Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode AMode = (Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode)(0x0))/* overload */;
	virtual void __fastcall SearchNearbyResult(const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec &ALocation, System::UnicodeString AType = System::UnicodeString(), _di_TTMSFNCPlacesResultCallback ACallback = _di_TTMSFNCPlacesResultCallback(), System::UnicodeString AID = System::UnicodeString(), void * ADataPointer = (void *)(0x0), System::UnicodeString ALocale = System::UnicodeString(), Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode AMode = (Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode)(0x0))/* overload */;
	virtual TTMSFNCPlacesRequest* __fastcall SearchNearbySync(const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec &ALocation, System::UnicodeString AType = System::UnicodeString(), System::UnicodeString ALocale = System::UnicodeString(), Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode AMode = (Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode)(0x0))/* overload */;
	virtual void __fastcall SearchNearbyNextPage(_di_TTMSFNCPlacesCallback ACallback, System::UnicodeString AID = System::UnicodeString(), void * ADataPointer = (void *)(0x0), System::UnicodeString ALocale = System::UnicodeString(), Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode AMode = (Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode)(0x0))/* overload */;
	virtual void __fastcall SearchNearbyNextPageResult(_di_TTMSFNCPlacesResultCallback ACallback, System::UnicodeString AID = System::UnicodeString(), void * ADataPointer = (void *)(0x0), System::UnicodeString ALocale = System::UnicodeString(), Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode AMode = (Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode)(0x0))/* overload */;
	virtual TTMSFNCPlacesRequest* __fastcall SearchNearbyNextPageSync(System::UnicodeString ALocale = System::UnicodeString(), Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode AMode = (Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode)(0x0))/* overload */;
	virtual void __fastcall GetPlaceDetail(TTMSFNCPlacesItem* APlace, System::UnicodeString AType = System::UnicodeString(), _di_TTMSFNCPlacesCallback ACallback = _di_TTMSFNCPlacesCallback(), System::UnicodeString AID = System::UnicodeString(), void * ADataPointer = (void *)(0x0))/* overload */;
	virtual void __fastcall GetPlaceDetailResult(TTMSFNCPlacesItem* APlace, System::UnicodeString AType = System::UnicodeString(), _di_TTMSFNCPlacesResultCallback ACallback = _di_TTMSFNCPlacesResultCallback(), System::UnicodeString AID = System::UnicodeString(), void * ADataPointer = (void *)(0x0))/* overload */;
	virtual void __fastcall GetPlaceDetail(System::UnicodeString APlaceID, System::UnicodeString AType = System::UnicodeString(), _di_TTMSFNCPlacesCallback ACallback = _di_TTMSFNCPlacesCallback(), System::UnicodeString AID = System::UnicodeString(), void * ADataPointer = (void *)(0x0))/* overload */;
	virtual void __fastcall GetPlaceDetailResult(System::UnicodeString APlaceID, System::UnicodeString AType = System::UnicodeString(), _di_TTMSFNCPlacesResultCallback ACallback = _di_TTMSFNCPlacesResultCallback(), System::UnicodeString AID = System::UnicodeString(), void * ADataPointer = (void *)(0x0))/* overload */;
	virtual void __fastcall InitializePlaces();
	virtual NativeUInt __fastcall GetInstance();
	TTMSFNCPlacesRequests* __fastcall GetAutoCompleteRequests();
	bool __fastcall PlacesReady();
	System::UnicodeString __fastcall GetAPIKey();
	int __fastcall GetVersionNr();
	virtual System::UnicodeString __fastcall GetDocURL();
	virtual System::UnicodeString __fastcall GetTipsURL();
	_di_ITMSFNCCustomPlaces __fastcall Places();
	virtual System::UnicodeString __fastcall GetVersion();
	__property TTMSFNCPlacesService Service = {read=FService, write=SetService, default=0};
	__property System::UnicodeString APIKey = {read=FAPIKey, write=SetAPIKey};
	__property TTMSFNCPlacesRequests* PlacesRequests = {read=FPlacesRequests, write=SetPlacesRequests};
	__property _di_ITMSFNCCustomPlaces PlacesInstance = {read=FPlaces};
	__property _di_ITMSFNCCustomPlacesProperties PlacesProperties = {read=FPlacesProperties};
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual TTMSFNCCustomPlaces(System::Classes::TComponent* AOwner)/* overload */;
	__fastcall virtual ~TTMSFNCCustomPlaces();
	virtual void __fastcall GetAutoComplete(System::UnicodeString ASearch, _di_TTMSFNCPlacesCallback ACallback = _di_TTMSFNCPlacesCallback(), System::UnicodeString AID = System::UnicodeString(), void * ADataPointer = (void *)(0x0), System::UnicodeString ALocale = System::UnicodeString(), Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode AMode = (Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode)(0x0))/* overload */;
	virtual void __fastcall GetAutoComplete(System::UnicodeString ASearch, const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec &ALocation, _di_TTMSFNCPlacesCallback ACallback = _di_TTMSFNCPlacesCallback(), System::UnicodeString AID = System::UnicodeString(), void * ADataPointer = (void *)(0x0), System::UnicodeString ALocale = System::UnicodeString(), Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode AMode = (Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode)(0x0))/* overload */;
	virtual void __fastcall GetAutoCompleteResult(System::UnicodeString ASearch, _di_TTMSFNCPlacesResultCallback ACallback = _di_TTMSFNCPlacesResultCallback(), System::UnicodeString AID = System::UnicodeString(), void * ADataPointer = (void *)(0x0), System::UnicodeString ALocale = System::UnicodeString(), Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode AMode = (Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode)(0x0))/* overload */;
	virtual void __fastcall GetAutoCompleteResult(System::UnicodeString ASearch, const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec &ALocation, _di_TTMSFNCPlacesResultCallback ACallback = _di_TTMSFNCPlacesResultCallback(), System::UnicodeString AID = System::UnicodeString(), void * ADataPointer = (void *)(0x0), System::UnicodeString ALocale = System::UnicodeString(), Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode AMode = (Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode)(0x0))/* overload */;
	virtual System::Classes::TStringList* __fastcall GetAutoCompleteSync(System::UnicodeString ASearch, System::UnicodeString ALocale = System::UnicodeString(), Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode AMode = (Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode)(0x0))/* overload */;
	virtual System::Classes::TStringList* __fastcall GetAutoCompleteSync(System::UnicodeString ASearch, const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec &ALocation, System::UnicodeString ALocale = System::UnicodeString(), Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode AMode = (Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode)(0x0))/* overload */;
public:
	/* TTMSFNCCustomCloudBase.Create */ inline __fastcall virtual TTMSFNCCustomPlaces()/* overload */ : Fmx::Tmsfnccloudbase::TTMSFNCCloudBase() { }
	
private:
	void *__ITMSFNCCustomPlacesProperties;	// ITMSFNCCustomPlacesProperties 
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {FE4F141C-69EA-4FBE-B5BF-1262F9EFBA70}
	operator _di_ITMSFNCCustomPlacesProperties()
	{
		_di_ITMSFNCCustomPlacesProperties intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator ITMSFNCCustomPlacesProperties*(void) { return (ITMSFNCCustomPlacesProperties*)&__ITMSFNCCustomPlacesProperties; }
	#endif
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCustomPlacesInterfacedObject : public System::TInterfacedObject
{
	typedef System::TInterfacedObject inherited;
	
private:
	_di_ITMSFNCCustomPlacesProperties FPlacesProperties;
	_di_ITMSFNCCustomPlacesProperties __fastcall GetAutoCompleteProperties();
	
protected:
	void __fastcall SetPlacesProperties(const _di_ITMSFNCCustomPlacesProperties Value);
	
public:
	__property _di_ITMSFNCCustomPlacesProperties PlacesProperties = {read=GetAutoCompleteProperties};
	__fastcall virtual ~TTMSFNCCustomPlacesInterfacedObject();
public:
	/* TObject.Create */ inline __fastcall TTMSFNCCustomPlacesInterfacedObject() : System::TInterfacedObject() { }
	
private:
	void *__ITMSFNCCustomPlacesInstance;	// ITMSFNCCustomPlacesInstance 
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {25C43C12-543C-460C-A8EE-9010559E62AD}
	operator _di_ITMSFNCCustomPlacesInstance()
	{
		_di_ITMSFNCCustomPlacesInstance intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator ITMSFNCCustomPlacesInstance*(void) { return (ITMSFNCCustomPlacesInstance*)&__ITMSFNCCustomPlacesInstance; }
	#endif
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCPlacesList : public System::Generics::Collections::TList__1<_di_ITMSFNCCustomPlaces>
{
	typedef System::Generics::Collections::TList__1<_di_ITMSFNCCustomPlaces> inherited;
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlaces_ITMSFNCCustomPlaces>.Create */ inline __fastcall TTMSFNCPlacesList()/* overload */ : System::Generics::Collections::TList__1<_di_ITMSFNCCustomPlaces>() { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlaces_ITMSFNCCustomPlaces>.Create */ inline __fastcall TTMSFNCPlacesList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<_di_ITMSFNCCustomPlaces> > AComparer)/* overload */ : System::Generics::Collections::TList__1<_di_ITMSFNCCustomPlaces>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlaces_ITMSFNCCustomPlaces>.Create */ inline __fastcall TTMSFNCPlacesList(System::Generics::Collections::TEnumerable__1<_di_ITMSFNCCustomPlaces>* const Collection)/* overload */ : System::Generics::Collections::TList__1<_di_ITMSFNCCustomPlaces>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlaces_ITMSFNCCustomPlaces>.Create */ inline __fastcall TTMSFNCPlacesList(const _di_ITMSFNCCustomPlaces *Values, const int Values_High)/* overload */ : System::Generics::Collections::TList__1<_di_ITMSFNCCustomPlaces>(Values, Values_High) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlaces_ITMSFNCCustomPlaces>.Destroy */ inline __fastcall virtual ~TTMSFNCPlacesList() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCPlacesFactoryService : public System::TInterfacedObject
{
	typedef System::TInterfacedObject inherited;
	
private:
	TTMSFNCPlacesList* FPlaces;
	
protected:
	virtual _di_ITMSFNCCustomPlaces __fastcall DoCreatePlaces() = 0 ;
	_di_ITMSFNCCustomPlaces __fastcall CreatePlaces();
	void __fastcall DestroyPlaces(_di_ITMSFNCCustomPlaces APlaces);
	
public:
	__fastcall TTMSFNCPlacesFactoryService();
	__fastcall virtual ~TTMSFNCPlacesFactoryService();
private:
	void *__ITMSFNCPlacesService;	// ITMSFNCPlacesService 
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {5514151B-9B06-464A-B25B-0F200FCBA42C}
	operator _di_ITMSFNCPlacesService()
	{
		_di_ITMSFNCPlacesService intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator ITMSFNCPlacesService*(void) { return (ITMSFNCPlacesService*)&__ITMSFNCPlacesService; }
	#endif
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCPlaces : public TTMSFNCCustomPlaces
{
	typedef TTMSFNCCustomPlaces inherited;
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	
public:
	__property PlacesInstance;
	__property PlacesProperties;
	
__published:
	__property OnGetAutoComplete;
	__property OnGetAutoCompleteResult;
	__property APIKey = {default=0};
	__property PlacesRequests;
	__property Service = {default=0};
	__property Version = {default=0};
public:
	/* TTMSFNCCustomPlaces.Create */ inline __fastcall virtual TTMSFNCPlaces(System::Classes::TComponent* AOwner)/* overload */ : TTMSFNCCustomPlaces(AOwner) { }
	/* TTMSFNCCustomPlaces.Destroy */ inline __fastcall virtual ~TTMSFNCPlaces() { }
	
public:
	/* TTMSFNCCustomCloudBase.Create */ inline __fastcall virtual TTMSFNCPlaces()/* overload */ : TTMSFNCCustomPlaces() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCPlacesPlatformServicesService : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	System::_di_IInterface FInterface;
	System::UnicodeString FGUID;
	
public:
	__fastcall TTMSFNCPlacesPlatformServicesService(System::UnicodeString AGUID, System::_di_IInterface AInterface);
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
	/* TObject.Destroy */ inline __fastcall virtual ~TTMSFNCPlacesPlatformServicesService() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCPlacesPlatformServicesList : public System::Generics::Collections::TObjectList__1<TTMSFNCPlacesPlatformServicesService*>
{
	typedef System::Generics::Collections::TObjectList__1<TTMSFNCPlacesPlatformServicesService*> inherited;
	
private:
	System::_di_IInterface __fastcall GetValue(System::UnicodeString AGUID);
	
public:
	bool __fastcall ContainsKey(System::UnicodeString AGUID);
	void __fastcall RemoveByGUID(System::UnicodeString AGUID);
	__property System::_di_IInterface Interfaces[System::UnicodeString AGUID] = {read=GetValue};
public:
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlaces_TTMSFNCPlacesPlatformServicesService>.Create */ inline __fastcall TTMSFNCPlacesPlatformServicesList()/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCPlacesPlatformServicesService*>() { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlaces_TTMSFNCPlacesPlatformServicesService>.Create */ inline __fastcall TTMSFNCPlacesPlatformServicesList(bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCPlacesPlatformServicesService*>(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlaces_TTMSFNCPlacesPlatformServicesService>.Create */ inline __fastcall TTMSFNCPlacesPlatformServicesList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCPlacesPlatformServicesService*> > AComparer, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCPlacesPlatformServicesService*>(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlaces_TTMSFNCPlacesPlatformServicesService>.Create */ inline __fastcall TTMSFNCPlacesPlatformServicesList(System::Generics::Collections::TEnumerable__1<TTMSFNCPlacesPlatformServicesService*>* const Collection, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCPlacesPlatformServicesService*>(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlaces_TTMSFNCPlacesPlatformServicesService>.Destroy */ inline __fastcall virtual ~TTMSFNCPlacesPlatformServicesList() { }
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlaces_TTMSFNCPlacesPlatformServicesService>.Create */ inline __fastcall TTMSFNCPlacesPlatformServicesList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCPlacesPlatformServicesService*> > AComparer)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCPlacesPlatformServicesService*>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlaces_TTMSFNCPlacesPlatformServicesService>.Create */ inline __fastcall TTMSFNCPlacesPlatformServicesList(System::Generics::Collections::TEnumerable__1<TTMSFNCPlacesPlatformServicesService*>* const Collection)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCPlacesPlatformServicesService*>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlaces_TTMSFNCPlacesPlatformServicesService>.Create */ inline __fastcall TTMSFNCPlacesPlatformServicesList(TTMSFNCPlacesPlatformServicesService* const *Values, const int Values_High)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCPlacesPlatformServicesService*>(Values, Values_High) { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCPlacesPlatformServices : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	TTMSFNCPlacesPlatformServicesList* FServicesList;
	static TTMSFNCPlacesPlatformServices* FCurrent;
	static bool FCurrentReleased;
	__classmethod void __fastcall ReleaseCurrent();
	
public:
	__fastcall TTMSFNCPlacesPlatformServices();
	__fastcall virtual ~TTMSFNCPlacesPlatformServices();
	void __fastcall AddPlatformService(const GUID &AServiceGUID, const System::_di_IInterface AService);
	void __fastcall RemovePlatformService(const GUID &AServiceGUID);
	System::_di_IInterface __fastcall GetPlatformService(const GUID &AServiceGUID);
	bool __fastcall SupportsPlatformService(const GUID &AServiceGUID)/* overload */;
	bool __fastcall SupportsPlatformService(const GUID &AServiceGUID, System::_di_IInterface &AService)/* overload */;
	__classmethod TTMSFNCPlacesPlatformServices* __fastcall Current();
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

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
#define TTMSFNCPlacesDocURL u"https://download.tmssoftware.com/doc/tmsfncmaps/components"\
	u"/ttmsfncmaps/#ttmsfncplaces"
#define TTMSFNCPlacesTipsURL u"https://www.tmssoftware.com/site/tmsfncmaps.asp?s=faq"
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x0);
static constexpr System::Int8 BLD_VER = System::Int8(0x0);
}	/* namespace Tmsfncplaces */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCPLACES)
using namespace Fmx::Tmsfncplaces;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncplacesHPP
