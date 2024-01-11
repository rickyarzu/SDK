// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCLocation.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfnclocationHPP
#define Fmx_TmsfnclocationHPP

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
namespace Tmsfnclocation
{
//-- forward type declarations -----------------------------------------------
__interface DELPHIINTERFACE ITMSFNCCustomLocationProperties;
typedef System::DelphiInterface<ITMSFNCCustomLocationProperties> _di_ITMSFNCCustomLocationProperties;
__interface DELPHIINTERFACE ITMSFNCCustomLocationInstance;
typedef System::DelphiInterface<ITMSFNCCustomLocationInstance> _di_ITMSFNCCustomLocationInstance;
__interface DELPHIINTERFACE ITMSFNCCustomLocation;
typedef System::DelphiInterface<ITMSFNCCustomLocation> _di_ITMSFNCCustomLocation;
__interface DELPHIINTERFACE ITMSFNCLocationService;
typedef System::DelphiInterface<ITMSFNCLocationService> _di_ITMSFNCLocationService;
__interface DELPHIINTERFACE ITMSFNCLocationServiceIPStack;
typedef System::DelphiInterface<ITMSFNCLocationServiceIPStack> _di_ITMSFNCLocationServiceIPStack;
__interface DELPHIINTERFACE ITMSFNCLocationServiceGoogle;
typedef System::DelphiInterface<ITMSFNCLocationServiceGoogle> _di_ITMSFNCLocationServiceGoogle;
class DELPHICLASS TTMSFNCLocationRequest;
class DELPHICLASS TTMSFNCLocationRequests;
__interface DELPHIINTERFACE TTMSFNCLocationGetLocationCallBack;
typedef System::DelphiInterface<TTMSFNCLocationGetLocationCallBack> _di_TTMSFNCLocationGetLocationCallBack;
__interface DELPHIINTERFACE TTMSFNCLocationGetLocationResultCallBack;
typedef System::DelphiInterface<TTMSFNCLocationGetLocationResultCallBack> _di_TTMSFNCLocationGetLocationResultCallBack;
class DELPHICLASS TTMSFNCLocationCallBackWrapper;
class DELPHICLASS TTMSFNCLocationResultCallBackWrapper;
class DELPHICLASS TTMSFNCCustomLocation;
class DELPHICLASS TTMSFNCCustomLocationInterfacedObject;
class DELPHICLASS TTMSFNCLocationList;
class DELPHICLASS TTMSFNCLocationFactoryService;
class DELPHICLASS TTMSFNCLocation;
class DELPHICLASS TTMSFNCLocationPlatformServicesService;
class DELPHICLASS TTMSFNCLocationPlatformServicesList;
class DELPHICLASS TTMSFNCLocationPlatformServices;
//-- type declarations -------------------------------------------------------
__interface  INTERFACE_UUID("{360FCEAE-9777-47FB-ACCC-4DFCAC859E8C}") ITMSFNCCustomLocationProperties  : public System::IInterface 
{
	virtual System::UnicodeString __fastcall GetAPIKey() = 0 ;
};

__interface  INTERFACE_UUID("{2E68C9D2-AAE4-4D00-B243-BA7EC6BF1946}") ITMSFNCCustomLocationInstance  : public System::IInterface 
{
	virtual void __fastcall SetLocationProperties(const _di_ITMSFNCCustomLocationProperties Value) = 0 ;
};

__interface  INTERFACE_UUID("{AC454083-A583-4826-B598-DF46154FD159}") ITMSFNCCustomLocation  : public System::IInterface 
{
	virtual System::UnicodeString __fastcall GetIdentifier() = 0 ;
	virtual Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestMethod __fastcall GetRequestMethod() = 0 ;
	virtual System::UnicodeString __fastcall GetHost() = 0 ;
	virtual System::UnicodeString __fastcall GetPath() = 0 ;
	virtual System::UnicodeString __fastcall GetQuery() = 0 ;
	virtual System::UnicodeString __fastcall GetPostData() = 0 ;
	virtual void __fastcall AddHeaders(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestHeaders* AHeaders) = 0 ;
	virtual void __fastcall Parse(TTMSFNCLocationRequest* ARequest, System::UnicodeString ARequestResult) = 0 ;
	virtual bool __fastcall IsValid() = 0 ;
	virtual void __fastcall DestroyLocation() = 0 ;
};

__interface  INTERFACE_UUID("{E18B6ADA-BA25-4D32-8427-9BA47CDE3B86}") ITMSFNCLocationService  : public System::IInterface 
{
	virtual _di_ITMSFNCCustomLocation __fastcall CreateLocation() = 0 ;
	virtual void __fastcall DestroyLocation(_di_ITMSFNCCustomLocation ALocation) = 0 ;
};

__interface  INTERFACE_UUID("{212D0845-716A-4E06-A5EE-3DB50B1B639F}") ITMSFNCLocationServiceIPStack  : public ITMSFNCLocationService 
{
	
};

__interface  INTERFACE_UUID("{79722F6E-7BE2-451F-9D22-8F3C3CB5F118}") ITMSFNCLocationServiceGoogle  : public ITMSFNCLocationService 
{
	
};

enum DECLSPEC_DENUM TTMSFNCLocationService : unsigned char { lsGoogle, lsIPStack };

enum DECLSPEC_DENUM TTMSFNCLocationConnection : unsigned char { lcHTTP, lcHTTPS };

class PASCALIMPLEMENTATION TTMSFNCLocationRequest : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	System::UnicodeString FID;
	TTMSFNCCustomLocation* FOwner;
	bool FDataBoolean;
	System::UnicodeString FDataString;
	System::TObject* FDataObject;
	NativeInt FDataInteger;
	void *FDataPointer;
	Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinate* FCoordinate;
	System::UnicodeString FPostalCode;
	System::UnicodeString FCountry;
	System::UnicodeString FCountryCode;
	System::UnicodeString FRegion;
	System::UnicodeString FCity;
	System::UnicodeString FIP;
	System::UnicodeString FIPType;
	System::UnicodeString FContinentCode;
	System::UnicodeString FContinent;
	System::UnicodeString FRegionCode;
	void __fastcall SetCoordinate(Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinate* const Value);
	
public:
	__fastcall virtual TTMSFNCLocationRequest(System::Classes::TCollection* Collection);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual ~TTMSFNCLocationRequest();
	__property void * DataPointer = {read=FDataPointer, write=FDataPointer};
	__property bool DataBoolean = {read=FDataBoolean, write=FDataBoolean, nodefault};
	__property System::TObject* DataObject = {read=FDataObject, write=FDataObject};
	__property System::UnicodeString DataString = {read=FDataString, write=FDataString};
	__property NativeInt DataInteger = {read=FDataInteger, write=FDataInteger};
	
__published:
	__property System::UnicodeString ID = {read=FID};
	__property Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinate* Coordinate = {read=FCoordinate, write=SetCoordinate};
	__property System::UnicodeString City = {read=FCity, write=FCity};
	__property System::UnicodeString Country = {read=FCountry, write=FCountry};
	__property System::UnicodeString CountryCode = {read=FCountryCode, write=FCountryCode};
	__property System::UnicodeString Continent = {read=FContinent, write=FContinent};
	__property System::UnicodeString ContinentCode = {read=FContinentCode, write=FContinentCode};
	__property System::UnicodeString Region = {read=FRegion, write=FRegion};
	__property System::UnicodeString RegionCode = {read=FRegionCode, write=FRegionCode};
	__property System::UnicodeString PostalCode = {read=FPostalCode, write=FPostalCode};
	__property System::UnicodeString IP = {read=FIP, write=FIP};
	__property System::UnicodeString IPType = {read=FIPType, write=FIPType};
};


class PASCALIMPLEMENTATION TTMSFNCLocationRequests : public Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCLocationRequest*>
{
	typedef Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCLocationRequest*> inherited;
	
public:
	TTMSFNCLocationRequest* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCCustomLocation* FOwner;
	HIDESBASE TTMSFNCLocationRequest* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCLocationRequest* const Value);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall CreateItemClass();
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	
public:
	__fastcall virtual TTMSFNCLocationRequests(TTMSFNCCustomLocation* AOwner);
	__property TTMSFNCLocationRequest* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	HIDESBASE TTMSFNCLocationRequest* __fastcall Add();
	HIDESBASE TTMSFNCLocationRequest* __fastcall Insert(int Index);
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCLocationRequests() { }
	
};


__interface TTMSFNCLocationGetLocationCallBack  : public System::IInterface 
{
	virtual void __fastcall Invoke(TTMSFNCLocationRequest* const ARequest, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult) = 0 ;
};

typedef void __fastcall (__closure *TTMSFNCLocationGetLocationEvent)(System::TObject* Sender, TTMSFNCLocationRequest* const ARequest, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

__interface TTMSFNCLocationGetLocationResultCallBack  : public System::IInterface 
{
	virtual void __fastcall Invoke(TTMSFNCLocationRequest* const AResult) = 0 ;
};

typedef void __fastcall (__closure *TTMSFNCLocationGetLocationResultEvent)(System::TObject* Sender, TTMSFNCLocationRequest* const AResult);

class PASCALIMPLEMENTATION TTMSFNCLocationCallBackWrapper : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	_di_TTMSFNCLocationGetLocationCallBack FCallback;
	
public:
	__fastcall TTMSFNCLocationCallBackWrapper(_di_TTMSFNCLocationGetLocationCallBack ACallback);
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
	/* TObject.Destroy */ inline __fastcall virtual ~TTMSFNCLocationCallBackWrapper() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCLocationResultCallBackWrapper : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	_di_TTMSFNCLocationGetLocationResultCallBack FCallback;
	
public:
	__fastcall TTMSFNCLocationResultCallBackWrapper(_di_TTMSFNCLocationGetLocationResultCallBack ACallback);
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
	/* TObject.Destroy */ inline __fastcall virtual ~TTMSFNCLocationResultCallBackWrapper() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCustomLocation : public Fmx::Tmsfnccloudbase::TTMSFNCCloudBase
{
	typedef Fmx::Tmsfnccloudbase::TTMSFNCCloudBase inherited;
	
private:
	_di_ITMSFNCCustomLocation FLocation;
	_di_ITMSFNCCustomLocationInstance FLocationInstance;
	_di_ITMSFNCCustomLocationProperties FLocationProperties;
	TTMSFNCLocationService FService;
	System::UnicodeString FAPIKey;
	TTMSFNCLocationRequests* FLocationRequests;
	TTMSFNCLocationGetLocationEvent FOnGetLocation;
	TTMSFNCLocationGetLocationEvent FOnGetLocationInternal;
	TTMSFNCLocationConnection FConnection;
	TTMSFNCLocationGetLocationResultEvent FOnGetLocationResultInternal;
	TTMSFNCLocationGetLocationResultEvent FOnGetLocationResult;
	HIDESBASE void __fastcall SetService(const TTMSFNCLocationService Value);
	void __fastcall SetAPIKey(const System::UnicodeString Value);
	void __fastcall SetLocationRequests(TTMSFNCLocationRequests* const Value);
	void __fastcall SetConnection(const TTMSFNCLocationConnection Value);
	
protected:
	virtual void __fastcall InternalGetLocation(_di_TTMSFNCLocationGetLocationCallBack ACallback = _di_TTMSFNCLocationGetLocationCallBack(), _di_TTMSFNCLocationGetLocationResultCallBack ACallback2 = _di_TTMSFNCLocationGetLocationResultCallBack(), System::UnicodeString AID = System::UnicodeString())/* overload */;
	void __fastcall DoRequestGetLocation(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoGetLocation(TTMSFNCLocationRequest* const ARequest, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	__property TTMSFNCLocationGetLocationEvent OnGetLocation = {read=FOnGetLocation, write=FOnGetLocation};
	__property TTMSFNCLocationGetLocationEvent OnGetLocationInternal = {read=FOnGetLocationInternal, write=FOnGetLocationInternal};
	__property TTMSFNCLocationGetLocationResultEvent OnGetLocationResult = {read=FOnGetLocationResult, write=FOnGetLocationResult};
	__property TTMSFNCLocationGetLocationResultEvent OnGetLocationResultInternal = {read=FOnGetLocationResultInternal, write=FOnGetLocationResultInternal};
	virtual void __fastcall InitializeLocation();
	virtual NativeUInt __fastcall GetInstance();
	TTMSFNCLocationRequests* __fastcall GetLocationRequests();
	bool __fastcall LocationReady();
	System::UnicodeString __fastcall GetAPIKey();
	int __fastcall GetVersionNr();
	virtual System::UnicodeString __fastcall GetDocURL();
	virtual System::UnicodeString __fastcall GetTipsURL();
	_di_ITMSFNCCustomLocation __fastcall Location();
	virtual System::UnicodeString __fastcall GetVersion();
	__property TTMSFNCLocationService Service = {read=FService, write=SetService, default=0};
	__property System::UnicodeString APIKey = {read=FAPIKey, write=SetAPIKey};
	__property TTMSFNCLocationRequests* LocationRequests = {read=FLocationRequests, write=SetLocationRequests};
	__property _di_ITMSFNCCustomLocation LocationInstance = {read=FLocation};
	__property _di_ITMSFNCCustomLocationProperties LocationProperties = {read=FLocationProperties};
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual TTMSFNCCustomLocation(System::Classes::TComponent* AOwner)/* overload */;
	__fastcall virtual ~TTMSFNCCustomLocation();
	virtual void __fastcall GetLocation(_di_TTMSFNCLocationGetLocationCallBack ACallback = _di_TTMSFNCLocationGetLocationCallBack(), System::UnicodeString AID = System::UnicodeString())/* overload */;
	virtual void __fastcall GetLocationResult(_di_TTMSFNCLocationGetLocationResultCallBack ACallback = _di_TTMSFNCLocationGetLocationResultCallBack(), System::UnicodeString AID = System::UnicodeString())/* overload */;
	
__published:
	__property TTMSFNCLocationConnection Connection = {read=FConnection, write=SetConnection, nodefault};
public:
	/* TTMSFNCCustomCloudBase.Create */ inline __fastcall virtual TTMSFNCCustomLocation()/* overload */ : Fmx::Tmsfnccloudbase::TTMSFNCCloudBase() { }
	
private:
	void *__ITMSFNCCustomLocationProperties;	// ITMSFNCCustomLocationProperties 
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {360FCEAE-9777-47FB-ACCC-4DFCAC859E8C}
	operator _di_ITMSFNCCustomLocationProperties()
	{
		_di_ITMSFNCCustomLocationProperties intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator ITMSFNCCustomLocationProperties*(void) { return (ITMSFNCCustomLocationProperties*)&__ITMSFNCCustomLocationProperties; }
	#endif
	
};


class PASCALIMPLEMENTATION TTMSFNCCustomLocationInterfacedObject : public System::TInterfacedObject
{
	typedef System::TInterfacedObject inherited;
	
private:
	_di_ITMSFNCCustomLocationProperties FLocationProperties;
	_di_ITMSFNCCustomLocationProperties __fastcall GetLocationProperties();
	
protected:
	void __fastcall SetLocationProperties(const _di_ITMSFNCCustomLocationProperties Value);
	
public:
	__property _di_ITMSFNCCustomLocationProperties LocationProperties = {read=GetLocationProperties};
	__fastcall virtual ~TTMSFNCCustomLocationInterfacedObject();
public:
	/* TObject.Create */ inline __fastcall TTMSFNCCustomLocationInterfacedObject() : System::TInterfacedObject() { }
	
private:
	void *__ITMSFNCCustomLocationInstance;	// ITMSFNCCustomLocationInstance 
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {2E68C9D2-AAE4-4D00-B243-BA7EC6BF1946}
	operator _di_ITMSFNCCustomLocationInstance()
	{
		_di_ITMSFNCCustomLocationInstance intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator ITMSFNCCustomLocationInstance*(void) { return (ITMSFNCCustomLocationInstance*)&__ITMSFNCCustomLocationInstance; }
	#endif
	
};


class PASCALIMPLEMENTATION TTMSFNCLocationList : public System::Generics::Collections::TList__1<_di_ITMSFNCCustomLocation>
{
	typedef System::Generics::Collections::TList__1<_di_ITMSFNCCustomLocation> inherited;
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCLocation_ITMSFNCCustomLocation>.Create */ inline __fastcall TTMSFNCLocationList()/* overload */ : System::Generics::Collections::TList__1<_di_ITMSFNCCustomLocation>() { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCLocation_ITMSFNCCustomLocation>.Create */ inline __fastcall TTMSFNCLocationList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<_di_ITMSFNCCustomLocation> > AComparer)/* overload */ : System::Generics::Collections::TList__1<_di_ITMSFNCCustomLocation>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCLocation_ITMSFNCCustomLocation>.Create */ inline __fastcall TTMSFNCLocationList(System::Generics::Collections::TEnumerable__1<_di_ITMSFNCCustomLocation>* const Collection)/* overload */ : System::Generics::Collections::TList__1<_di_ITMSFNCCustomLocation>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCLocation_ITMSFNCCustomLocation>.Create */ inline __fastcall TTMSFNCLocationList(const _di_ITMSFNCCustomLocation *Values, const int Values_High)/* overload */ : System::Generics::Collections::TList__1<_di_ITMSFNCCustomLocation>(Values, Values_High) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCLocation_ITMSFNCCustomLocation>.Destroy */ inline __fastcall virtual ~TTMSFNCLocationList() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCLocationFactoryService : public System::TInterfacedObject
{
	typedef System::TInterfacedObject inherited;
	
private:
	TTMSFNCLocationList* FLocation;
	
protected:
	virtual _di_ITMSFNCCustomLocation __fastcall DoCreateLocation() = 0 ;
	_di_ITMSFNCCustomLocation __fastcall CreateLocation();
	void __fastcall DestroyLocation(_di_ITMSFNCCustomLocation ALocation);
	
public:
	__fastcall TTMSFNCLocationFactoryService();
	__fastcall virtual ~TTMSFNCLocationFactoryService();
private:
	void *__ITMSFNCLocationService;	// ITMSFNCLocationService 
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {E18B6ADA-BA25-4D32-8427-9BA47CDE3B86}
	operator _di_ITMSFNCLocationService()
	{
		_di_ITMSFNCLocationService intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator ITMSFNCLocationService*(void) { return (ITMSFNCLocationService*)&__ITMSFNCLocationService; }
	#endif
	
};


class PASCALIMPLEMENTATION TTMSFNCLocation : public TTMSFNCCustomLocation
{
	typedef TTMSFNCCustomLocation inherited;
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	
public:
	__property LocationInstance;
	__property LocationProperties;
	
__published:
	__property OnGetLocation;
	__property OnGetLocationResult;
	__property APIKey = {default=0};
	__property LocationRequests;
	__property Service = {default=0};
	__property Version = {default=0};
public:
	/* TTMSFNCCustomLocation.Create */ inline __fastcall virtual TTMSFNCLocation(System::Classes::TComponent* AOwner)/* overload */ : TTMSFNCCustomLocation(AOwner) { }
	/* TTMSFNCCustomLocation.Destroy */ inline __fastcall virtual ~TTMSFNCLocation() { }
	
public:
	/* TTMSFNCCustomCloudBase.Create */ inline __fastcall virtual TTMSFNCLocation()/* overload */ : TTMSFNCCustomLocation() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCLocationPlatformServicesService : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	System::_di_IInterface FInterface;
	System::UnicodeString FGUID;
	
public:
	__fastcall TTMSFNCLocationPlatformServicesService(System::UnicodeString AGUID, System::_di_IInterface AInterface);
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
	/* TObject.Destroy */ inline __fastcall virtual ~TTMSFNCLocationPlatformServicesService() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCLocationPlatformServicesList : public System::Generics::Collections::TObjectList__1<TTMSFNCLocationPlatformServicesService*>
{
	typedef System::Generics::Collections::TObjectList__1<TTMSFNCLocationPlatformServicesService*> inherited;
	
private:
	System::_di_IInterface __fastcall GetValue(System::UnicodeString AGUID);
	
public:
	bool __fastcall ContainsKey(System::UnicodeString AGUID);
	void __fastcall RemoveByGUID(System::UnicodeString AGUID);
	__property System::_di_IInterface Interfaces[System::UnicodeString AGUID] = {read=GetValue};
public:
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCLocation_TTMSFNCLocationPlatformServicesService>.Create */ inline __fastcall TTMSFNCLocationPlatformServicesList()/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCLocationPlatformServicesService*>() { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCLocation_TTMSFNCLocationPlatformServicesService>.Create */ inline __fastcall TTMSFNCLocationPlatformServicesList(bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCLocationPlatformServicesService*>(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCLocation_TTMSFNCLocationPlatformServicesService>.Create */ inline __fastcall TTMSFNCLocationPlatformServicesList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCLocationPlatformServicesService*> > AComparer, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCLocationPlatformServicesService*>(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCLocation_TTMSFNCLocationPlatformServicesService>.Create */ inline __fastcall TTMSFNCLocationPlatformServicesList(System::Generics::Collections::TEnumerable__1<TTMSFNCLocationPlatformServicesService*>* const Collection, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCLocationPlatformServicesService*>(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCLocation_TTMSFNCLocationPlatformServicesService>.Destroy */ inline __fastcall virtual ~TTMSFNCLocationPlatformServicesList() { }
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCLocation_TTMSFNCLocationPlatformServicesService>.Create */ inline __fastcall TTMSFNCLocationPlatformServicesList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCLocationPlatformServicesService*> > AComparer)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCLocationPlatformServicesService*>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCLocation_TTMSFNCLocationPlatformServicesService>.Create */ inline __fastcall TTMSFNCLocationPlatformServicesList(System::Generics::Collections::TEnumerable__1<TTMSFNCLocationPlatformServicesService*>* const Collection)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCLocationPlatformServicesService*>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCLocation_TTMSFNCLocationPlatformServicesService>.Create */ inline __fastcall TTMSFNCLocationPlatformServicesList(TTMSFNCLocationPlatformServicesService* const *Values, const int Values_High)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCLocationPlatformServicesService*>(Values, Values_High) { }
	
};


class PASCALIMPLEMENTATION TTMSFNCLocationPlatformServices : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	TTMSFNCLocationPlatformServicesList* FServicesList;
	static TTMSFNCLocationPlatformServices* FCurrent;
	static bool FCurrentReleased;
	__classmethod void __fastcall ReleaseCurrent();
	
public:
	__fastcall TTMSFNCLocationPlatformServices();
	__fastcall virtual ~TTMSFNCLocationPlatformServices();
	void __fastcall AddPlatformService(const GUID &AServiceGUID, const System::_di_IInterface AService);
	void __fastcall RemovePlatformService(const GUID &AServiceGUID);
	System::_di_IInterface __fastcall GetPlatformService(const GUID &AServiceGUID);
	bool __fastcall SupportsPlatformService(const GUID &AServiceGUID)/* overload */;
	bool __fastcall SupportsPlatformService(const GUID &AServiceGUID, System::_di_IInterface &AService)/* overload */;
	__classmethod TTMSFNCLocationPlatformServices* __fastcall Current();
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
#define TTMSFNCLocationDocURL u"https://download.tmssoftware.com/doc/tmsfncmaps/components"\
	u"/ttmsfncmaps/#ttmsfnclocation"
#define TTMSFNCLocationTipsURL u"https://www.tmssoftware.com/site/tmsfncmaps.asp?s=faq"
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x2);
static constexpr System::Int8 BLD_VER = System::Int8(0x0);
}	/* namespace Tmsfnclocation */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCLOCATION)
using namespace Fmx::Tmsfnclocation;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfnclocationHPP
