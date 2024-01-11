// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCTimeZone.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfnctimezoneHPP
#define Fmx_TmsfnctimezoneHPP

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
namespace Tmsfnctimezone
{
//-- forward type declarations -----------------------------------------------
__interface DELPHIINTERFACE ITMSFNCCustomTimeZoneProperties;
typedef System::DelphiInterface<ITMSFNCCustomTimeZoneProperties> _di_ITMSFNCCustomTimeZoneProperties;
__interface DELPHIINTERFACE ITMSFNCCustomTimeZoneInstance;
typedef System::DelphiInterface<ITMSFNCCustomTimeZoneInstance> _di_ITMSFNCCustomTimeZoneInstance;
__interface DELPHIINTERFACE ITMSFNCCustomTimeZone;
typedef System::DelphiInterface<ITMSFNCCustomTimeZone> _di_ITMSFNCCustomTimeZone;
__interface DELPHIINTERFACE ITMSFNCTimeZoneService;
typedef System::DelphiInterface<ITMSFNCTimeZoneService> _di_ITMSFNCTimeZoneService;
__interface DELPHIINTERFACE ITMSFNCTimeZoneServiceGoogle;
typedef System::DelphiInterface<ITMSFNCTimeZoneServiceGoogle> _di_ITMSFNCTimeZoneServiceGoogle;
__interface DELPHIINTERFACE ITMSFNCTimeZoneServiceAzure;
typedef System::DelphiInterface<ITMSFNCTimeZoneServiceAzure> _di_ITMSFNCTimeZoneServiceAzure;
__interface DELPHIINTERFACE ITMSFNCTimeZoneServiceBing;
typedef System::DelphiInterface<ITMSFNCTimeZoneServiceBing> _di_ITMSFNCTimeZoneServiceBing;
__interface DELPHIINTERFACE ITMSFNCTimeZoneServiceHere;
typedef System::DelphiInterface<ITMSFNCTimeZoneServiceHere> _di_ITMSFNCTimeZoneServiceHere;
class DELPHICLASS TTMSFNCTimeZoneItem;
class DELPHICLASS TTMSFNCTimeZoneItems;
class DELPHICLASS TTMSFNCTimeZoneRequest;
class DELPHICLASS TTMSFNCTimeZoneRequests;
__interface DELPHIINTERFACE TTMSFNCTimeZoneGetTimeZoneCallBack;
typedef System::DelphiInterface<TTMSFNCTimeZoneGetTimeZoneCallBack> _di_TTMSFNCTimeZoneGetTimeZoneCallBack;
__interface DELPHIINTERFACE TTMSFNCTimeZoneGetTimeZoneResultCallBack;
typedef System::DelphiInterface<TTMSFNCTimeZoneGetTimeZoneResultCallBack> _di_TTMSFNCTimeZoneGetTimeZoneResultCallBack;
class DELPHICLASS TTMSFNCTimeZoneCallBackWrapper;
class DELPHICLASS TTMSFNCTimeZoneResultCallBackWrapper;
class DELPHICLASS TTMSFNCCustomTimeZone;
class DELPHICLASS TTMSFNCCustomTimeZoneInterfacedObject;
class DELPHICLASS TTMSFNCTimeZoneList;
class DELPHICLASS TTMSFNCTimeZoneFactoryService;
class DELPHICLASS TTMSFNCTimeZone;
class DELPHICLASS TTMSFNCTimeZonePlatformServicesService;
class DELPHICLASS TTMSFNCTimeZonePlatformServicesList;
class DELPHICLASS TTMSFNCTimeZonePlatformServices;
//-- type declarations -------------------------------------------------------
__interface  INTERFACE_UUID("{48F2B5B0-7134-4BDA-AE58-AC2D6CDD46F3}") ITMSFNCCustomTimeZoneProperties  : public System::IInterface 
{
	virtual System::UnicodeString __fastcall GetAPIKey() = 0 ;
};

__interface  INTERFACE_UUID("{C13906FE-684D-4943-8B8C-5C168DC890EB}") ITMSFNCCustomTimeZoneInstance  : public System::IInterface 
{
	virtual void __fastcall SetTimeZoneProperties(const _di_ITMSFNCCustomTimeZoneProperties Value) = 0 ;
};

__interface  INTERFACE_UUID("{A0426AB6-384C-43B0-A204-68EC89B97849}") ITMSFNCCustomTimeZone  : public System::IInterface 
{
	virtual System::UnicodeString __fastcall GetIdentifier() = 0 ;
	virtual Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestMethod __fastcall GetRequestMethod() = 0 ;
	virtual System::UnicodeString __fastcall GetHost() = 0 ;
	virtual System::UnicodeString __fastcall GetPath(System::UnicodeString AAddress) = 0 ;
	virtual System::UnicodeString __fastcall GetQuery(System::UnicodeString AAddress, const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec &ACoordinate, System::TDateTime ADateTime, System::UnicodeString ALocale) = 0 ;
	virtual System::UnicodeString __fastcall GetPostData() = 0 ;
	virtual void __fastcall Parse(TTMSFNCTimeZoneRequest* ARequest, System::UnicodeString ARequestResult) = 0 ;
	virtual void __fastcall AddHeaders(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestHeaders* AHeaders) = 0 ;
	virtual bool __fastcall IsValid() = 0 ;
	virtual void __fastcall DestroyTimeZone() = 0 ;
};

__interface  INTERFACE_UUID("{56482F34-A3B5-4E91-B734-BDBD6F7FA470}") ITMSFNCTimeZoneService  : public System::IInterface 
{
	virtual _di_ITMSFNCCustomTimeZone __fastcall CreateTimeZone() = 0 ;
	virtual void __fastcall DestroyTimeZone(_di_ITMSFNCCustomTimeZone ATimeZone) = 0 ;
};

__interface  INTERFACE_UUID("{88FA53E0-EA07-420E-BF9B-BC124FBE35FC}") ITMSFNCTimeZoneServiceGoogle  : public ITMSFNCTimeZoneService 
{
	
};

__interface  INTERFACE_UUID("{87CFBBF3-DB89-4BF8-B926-D812835A3CB2}") ITMSFNCTimeZoneServiceAzure  : public ITMSFNCTimeZoneService 
{
	
};

__interface  INTERFACE_UUID("{924FB975-385B-4D84-B627-5B8C0787520D}") ITMSFNCTimeZoneServiceBing  : public ITMSFNCTimeZoneService 
{
	
};

__interface  INTERFACE_UUID("{6DE7D506-A088-485A-A8B3-6A4ECB2F4FA9}") ITMSFNCTimeZoneServiceHere  : public ITMSFNCTimeZoneService 
{
	
};

enum DECLSPEC_DENUM TTMSFNCTimeZoneService : unsigned char { tzsGoogle, tzsAzure, tzsBing, tzsHere };

class PASCALIMPLEMENTATION TTMSFNCTimeZoneItem : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	TTMSFNCCustomTimeZone* FOwner;
	bool FDataBoolean;
	System::UnicodeString FDataString;
	System::TObject* FDataObject;
	NativeInt FDataInteger;
	void *FDataPointer;
	Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinate* FCoordinate;
	System::UnicodeString FTimeZone;
	System::UnicodeString FDescription;
	System::UnicodeString FOffset;
	System::UnicodeString FDSTOffset;
	void __fastcall SetCoordinate(Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinate* const Value);
	
public:
	__fastcall virtual TTMSFNCTimeZoneItem(System::Classes::TCollection* Collection);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual ~TTMSFNCTimeZoneItem();
	__property void * DataPointer = {read=FDataPointer, write=FDataPointer};
	__property bool DataBoolean = {read=FDataBoolean, write=FDataBoolean, nodefault};
	__property System::TObject* DataObject = {read=FDataObject, write=FDataObject};
	__property System::UnicodeString DataString = {read=FDataString, write=FDataString};
	__property NativeInt DataInteger = {read=FDataInteger, write=FDataInteger};
	
__published:
	__property Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinate* Coordinate = {read=FCoordinate, write=SetCoordinate};
	__property System::UnicodeString TimeZone = {read=FTimeZone, write=FTimeZone};
	__property System::UnicodeString Description = {read=FDescription, write=FDescription};
	__property System::UnicodeString Offset = {read=FOffset, write=FOffset};
	__property System::UnicodeString DSTOffset = {read=FDSTOffset, write=FDSTOffset};
};


class PASCALIMPLEMENTATION TTMSFNCTimeZoneItems : public Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCTimeZoneItem*>
{
	typedef Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCTimeZoneItem*> inherited;
	
public:
	TTMSFNCTimeZoneItem* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCCustomTimeZone* FOwner;
	HIDESBASE TTMSFNCTimeZoneItem* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCTimeZoneItem* const Value);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall CreateItemClass();
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	
public:
	__fastcall virtual TTMSFNCTimeZoneItems(TTMSFNCCustomTimeZone* AOwner);
	__property TTMSFNCTimeZoneItem* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	HIDESBASE TTMSFNCTimeZoneItem* __fastcall Add();
	HIDESBASE TTMSFNCTimeZoneItem* __fastcall Insert(int Index);
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCTimeZoneItems() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCTimeZoneRequest : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	System::UnicodeString FID;
	TTMSFNCCustomTimeZone* FOwner;
	bool FDataBoolean;
	System::UnicodeString FDataString;
	System::TObject* FDataObject;
	NativeInt FDataInteger;
	void *FDataPointer;
	TTMSFNCTimeZoneItems* FItems;
	System::UnicodeString FStatus;
	System::UnicodeString FErrorMessage;
	void __fastcall SetErrorMessage(const System::UnicodeString Value);
	void __fastcall SetItems(TTMSFNCTimeZoneItems* const Value);
	void __fastcall SetStatus(const System::UnicodeString Value);
	
public:
	__fastcall virtual TTMSFNCTimeZoneRequest(System::Classes::TCollection* Collection);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual ~TTMSFNCTimeZoneRequest();
	__property void * DataPointer = {read=FDataPointer, write=FDataPointer};
	__property bool DataBoolean = {read=FDataBoolean, write=FDataBoolean, nodefault};
	__property System::TObject* DataObject = {read=FDataObject, write=FDataObject};
	__property System::UnicodeString DataString = {read=FDataString, write=FDataString};
	__property NativeInt DataInteger = {read=FDataInteger, write=FDataInteger};
	
__published:
	__property System::UnicodeString ID = {read=FID};
	__property TTMSFNCTimeZoneItems* Items = {read=FItems, write=SetItems};
	__property System::UnicodeString Status = {read=FStatus, write=SetStatus};
	__property System::UnicodeString ErrorMessage = {read=FErrorMessage, write=SetErrorMessage};
};


class PASCALIMPLEMENTATION TTMSFNCTimeZoneRequests : public Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCTimeZoneRequest*>
{
	typedef Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCTimeZoneRequest*> inherited;
	
public:
	TTMSFNCTimeZoneRequest* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCCustomTimeZone* FOwner;
	HIDESBASE TTMSFNCTimeZoneRequest* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCTimeZoneRequest* const Value);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall CreateItemClass();
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	
public:
	__fastcall virtual TTMSFNCTimeZoneRequests(TTMSFNCCustomTimeZone* AOwner);
	__property TTMSFNCTimeZoneRequest* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	HIDESBASE TTMSFNCTimeZoneRequest* __fastcall Add();
	HIDESBASE TTMSFNCTimeZoneRequest* __fastcall Insert(int Index);
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCTimeZoneRequests() { }
	
};


__interface TTMSFNCTimeZoneGetTimeZoneCallBack  : public System::IInterface 
{
	virtual void __fastcall Invoke(TTMSFNCTimeZoneRequest* const ARequest, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult) = 0 ;
};

typedef void __fastcall (__closure *TTMSFNCTimeZoneGetTimeZoneEvent)(System::TObject* Sender, TTMSFNCTimeZoneRequest* const ARequest, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

__interface TTMSFNCTimeZoneGetTimeZoneResultCallBack  : public System::IInterface 
{
	virtual void __fastcall Invoke(TTMSFNCTimeZoneRequest* const AResult) = 0 ;
};

typedef void __fastcall (__closure *TTMSFNCTimeZoneGetTimeZoneResultEvent)(System::TObject* Sender, TTMSFNCTimeZoneRequest* const AResult);

class PASCALIMPLEMENTATION TTMSFNCTimeZoneCallBackWrapper : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	_di_TTMSFNCTimeZoneGetTimeZoneCallBack FCallback;
	
public:
	__fastcall TTMSFNCTimeZoneCallBackWrapper(_di_TTMSFNCTimeZoneGetTimeZoneCallBack ACallback);
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
	/* TObject.Destroy */ inline __fastcall virtual ~TTMSFNCTimeZoneCallBackWrapper() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCTimeZoneResultCallBackWrapper : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	_di_TTMSFNCTimeZoneGetTimeZoneResultCallBack FCallback;
	
public:
	__fastcall TTMSFNCTimeZoneResultCallBackWrapper(_di_TTMSFNCTimeZoneGetTimeZoneResultCallBack ACallback);
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
	/* TObject.Destroy */ inline __fastcall virtual ~TTMSFNCTimeZoneResultCallBackWrapper() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCustomTimeZone : public Fmx::Tmsfnccloudbase::TTMSFNCCloudBase
{
	typedef Fmx::Tmsfnccloudbase::TTMSFNCCloudBase inherited;
	
private:
	_di_ITMSFNCCustomTimeZone FTimeZone;
	_di_ITMSFNCCustomTimeZoneInstance FTimeZoneInstance;
	_di_ITMSFNCCustomTimeZoneProperties FTimeZoneProperties;
	TTMSFNCTimeZoneService FService;
	System::UnicodeString FAPIKey;
	TTMSFNCTimeZoneRequests* FTimeZoneRequests;
	TTMSFNCTimeZoneGetTimeZoneEvent FOnGetTimeZone;
	TTMSFNCTimeZoneGetTimeZoneEvent FOnGetTimeZoneInternal;
	TTMSFNCTimeZoneGetTimeZoneResultEvent FOnGetTimeZoneResultInternal;
	TTMSFNCTimeZoneGetTimeZoneResultEvent FOnGetTimeZoneResult;
	HIDESBASE void __fastcall SetService(const TTMSFNCTimeZoneService Value);
	void __fastcall SetAPIKey(const System::UnicodeString Value);
	void __fastcall SetTimeZoneRequests(TTMSFNCTimeZoneRequests* const Value);
	
protected:
	void __fastcall DoRequestGetTimeZone(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoGetTimeZone(TTMSFNCTimeZoneRequest* const ARequest, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	__property TTMSFNCTimeZoneGetTimeZoneEvent OnGetTimeZone = {read=FOnGetTimeZone, write=FOnGetTimeZone};
	__property TTMSFNCTimeZoneGetTimeZoneEvent OnGetTimeZoneInternal = {read=FOnGetTimeZoneInternal, write=FOnGetTimeZoneInternal};
	__property TTMSFNCTimeZoneGetTimeZoneResultEvent OnGetTimeZoneResult = {read=FOnGetTimeZoneResult, write=FOnGetTimeZoneResult};
	__property TTMSFNCTimeZoneGetTimeZoneResultEvent OnGetTimeZoneResultInternal = {read=FOnGetTimeZoneResultInternal, write=FOnGetTimeZoneResultInternal};
	virtual void __fastcall InitializeTimeZone();
	virtual NativeUInt __fastcall GetInstance();
	TTMSFNCTimeZoneRequests* __fastcall GetTimeZoneRequests();
	bool __fastcall TimeZoneReady();
	System::UnicodeString __fastcall GetAPIKey();
	int __fastcall GetVersionNr();
	virtual System::UnicodeString __fastcall GetDocURL();
	virtual System::UnicodeString __fastcall GetTipsURL();
	_di_ITMSFNCCustomTimeZone __fastcall TimeZone();
	virtual System::UnicodeString __fastcall GetVersion();
	__property TTMSFNCTimeZoneService Service = {read=FService, write=SetService, default=0};
	__property System::UnicodeString APIKey = {read=FAPIKey, write=SetAPIKey};
	__property TTMSFNCTimeZoneRequests* TimeZoneRequests = {read=FTimeZoneRequests, write=SetTimeZoneRequests};
	void __fastcall GetTimeZoneInt(System::UnicodeString AAddress, const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec &ACoordinate, System::TDateTime ADateTime = 0.000000E+00, System::UnicodeString ALocale = System::UnicodeString(), Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode AMode = (Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode)(0x0), _di_TTMSFNCTimeZoneGetTimeZoneCallBack ACallback = _di_TTMSFNCTimeZoneGetTimeZoneCallBack(), _di_TTMSFNCTimeZoneGetTimeZoneResultCallBack ACallback2 = _di_TTMSFNCTimeZoneGetTimeZoneResultCallBack(), System::UnicodeString AID = System::UnicodeString(), void * ADataPointer = (void *)(0x0));
	__property _di_ITMSFNCCustomTimeZone TimeZoneInstance = {read=FTimeZone};
	__property _di_ITMSFNCCustomTimeZoneProperties TimeZoneProperties = {read=FTimeZoneProperties};
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual TTMSFNCCustomTimeZone(System::Classes::TComponent* AOwner)/* overload */;
	__fastcall virtual ~TTMSFNCCustomTimeZone();
	virtual void __fastcall GetTimeZone(const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec &ACoordinate, System::TDateTime ADateTime = 0.000000E+00, System::UnicodeString ALocale = System::UnicodeString(), Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode AMode = (Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode)(0x0), _di_TTMSFNCTimeZoneGetTimeZoneCallBack ACallback = _di_TTMSFNCTimeZoneGetTimeZoneCallBack(), System::UnicodeString AID = System::UnicodeString(), void * ADataPointer = (void *)(0x0))/* overload */;
	virtual void __fastcall GetTimeZone(System::UnicodeString AAddress, System::TDateTime ADateTime = 0.000000E+00, System::UnicodeString ALocale = System::UnicodeString(), Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode AMode = (Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode)(0x0), _di_TTMSFNCTimeZoneGetTimeZoneCallBack ACallback = _di_TTMSFNCTimeZoneGetTimeZoneCallBack(), System::UnicodeString AID = System::UnicodeString(), void * ADataPointer = (void *)(0x0))/* overload */;
	virtual void __fastcall GetTimeZoneResult(const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec &ACoordinate, System::TDateTime ADateTime = 0.000000E+00, System::UnicodeString ALocale = System::UnicodeString(), Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode AMode = (Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode)(0x0), _di_TTMSFNCTimeZoneGetTimeZoneResultCallBack ACallback = _di_TTMSFNCTimeZoneGetTimeZoneResultCallBack(), System::UnicodeString AID = System::UnicodeString(), void * ADataPointer = (void *)(0x0))/* overload */;
	virtual void __fastcall GetTimeZoneResult(System::UnicodeString AAddress, System::TDateTime ADateTime = 0.000000E+00, System::UnicodeString ALocale = System::UnicodeString(), Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode AMode = (Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode)(0x0), _di_TTMSFNCTimeZoneGetTimeZoneResultCallBack ACallback = _di_TTMSFNCTimeZoneGetTimeZoneResultCallBack(), System::UnicodeString AID = System::UnicodeString(), void * ADataPointer = (void *)(0x0))/* overload */;
public:
	/* TTMSFNCCustomCloudBase.Create */ inline __fastcall virtual TTMSFNCCustomTimeZone()/* overload */ : Fmx::Tmsfnccloudbase::TTMSFNCCloudBase() { }
	
private:
	void *__ITMSFNCCustomTimeZoneProperties;	// ITMSFNCCustomTimeZoneProperties 
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {48F2B5B0-7134-4BDA-AE58-AC2D6CDD46F3}
	operator _di_ITMSFNCCustomTimeZoneProperties()
	{
		_di_ITMSFNCCustomTimeZoneProperties intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator ITMSFNCCustomTimeZoneProperties*(void) { return (ITMSFNCCustomTimeZoneProperties*)&__ITMSFNCCustomTimeZoneProperties; }
	#endif
	
};


class PASCALIMPLEMENTATION TTMSFNCCustomTimeZoneInterfacedObject : public System::TInterfacedObject
{
	typedef System::TInterfacedObject inherited;
	
private:
	_di_ITMSFNCCustomTimeZoneProperties FTimeZoneProperties;
	_di_ITMSFNCCustomTimeZoneProperties __fastcall GetTimeZoneProperties();
	
protected:
	void __fastcall SetTimeZoneProperties(const _di_ITMSFNCCustomTimeZoneProperties Value);
	
public:
	__property _di_ITMSFNCCustomTimeZoneProperties TimeZoneProperties = {read=GetTimeZoneProperties};
	__fastcall virtual ~TTMSFNCCustomTimeZoneInterfacedObject();
public:
	/* TObject.Create */ inline __fastcall TTMSFNCCustomTimeZoneInterfacedObject() : System::TInterfacedObject() { }
	
private:
	void *__ITMSFNCCustomTimeZoneInstance;	// ITMSFNCCustomTimeZoneInstance 
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {C13906FE-684D-4943-8B8C-5C168DC890EB}
	operator _di_ITMSFNCCustomTimeZoneInstance()
	{
		_di_ITMSFNCCustomTimeZoneInstance intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator ITMSFNCCustomTimeZoneInstance*(void) { return (ITMSFNCCustomTimeZoneInstance*)&__ITMSFNCCustomTimeZoneInstance; }
	#endif
	
};


class PASCALIMPLEMENTATION TTMSFNCTimeZoneList : public System::Generics::Collections::TList__1<_di_ITMSFNCCustomTimeZone>
{
	typedef System::Generics::Collections::TList__1<_di_ITMSFNCCustomTimeZone> inherited;
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCTimeZone_ITMSFNCCustomTimeZone>.Create */ inline __fastcall TTMSFNCTimeZoneList()/* overload */ : System::Generics::Collections::TList__1<_di_ITMSFNCCustomTimeZone>() { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTimeZone_ITMSFNCCustomTimeZone>.Create */ inline __fastcall TTMSFNCTimeZoneList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<_di_ITMSFNCCustomTimeZone> > AComparer)/* overload */ : System::Generics::Collections::TList__1<_di_ITMSFNCCustomTimeZone>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTimeZone_ITMSFNCCustomTimeZone>.Create */ inline __fastcall TTMSFNCTimeZoneList(System::Generics::Collections::TEnumerable__1<_di_ITMSFNCCustomTimeZone>* const Collection)/* overload */ : System::Generics::Collections::TList__1<_di_ITMSFNCCustomTimeZone>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTimeZone_ITMSFNCCustomTimeZone>.Create */ inline __fastcall TTMSFNCTimeZoneList(const _di_ITMSFNCCustomTimeZone *Values, const int Values_High)/* overload */ : System::Generics::Collections::TList__1<_di_ITMSFNCCustomTimeZone>(Values, Values_High) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTimeZone_ITMSFNCCustomTimeZone>.Destroy */ inline __fastcall virtual ~TTMSFNCTimeZoneList() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCTimeZoneFactoryService : public System::TInterfacedObject
{
	typedef System::TInterfacedObject inherited;
	
private:
	TTMSFNCTimeZoneList* FTimeZone;
	
protected:
	virtual _di_ITMSFNCCustomTimeZone __fastcall DoCreateTimeZone() = 0 ;
	_di_ITMSFNCCustomTimeZone __fastcall CreateTimeZone();
	void __fastcall DestroyTimeZone(_di_ITMSFNCCustomTimeZone ATimeZone);
	
public:
	__fastcall TTMSFNCTimeZoneFactoryService();
	__fastcall virtual ~TTMSFNCTimeZoneFactoryService();
private:
	void *__ITMSFNCTimeZoneService;	// ITMSFNCTimeZoneService 
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {56482F34-A3B5-4E91-B734-BDBD6F7FA470}
	operator _di_ITMSFNCTimeZoneService()
	{
		_di_ITMSFNCTimeZoneService intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator ITMSFNCTimeZoneService*(void) { return (ITMSFNCTimeZoneService*)&__ITMSFNCTimeZoneService; }
	#endif
	
};


class PASCALIMPLEMENTATION TTMSFNCTimeZone : public TTMSFNCCustomTimeZone
{
	typedef TTMSFNCCustomTimeZone inherited;
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	
public:
	__property TimeZoneInstance;
	__property TimeZoneProperties;
	
__published:
	__property OnGetTimeZone;
	__property OnGetTimeZoneResult;
	__property APIKey = {default=0};
	__property TimeZoneRequests;
	__property Service = {default=0};
	__property Version = {default=0};
public:
	/* TTMSFNCCustomTimeZone.Create */ inline __fastcall virtual TTMSFNCTimeZone(System::Classes::TComponent* AOwner)/* overload */ : TTMSFNCCustomTimeZone(AOwner) { }
	/* TTMSFNCCustomTimeZone.Destroy */ inline __fastcall virtual ~TTMSFNCTimeZone() { }
	
public:
	/* TTMSFNCCustomCloudBase.Create */ inline __fastcall virtual TTMSFNCTimeZone()/* overload */ : TTMSFNCCustomTimeZone() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCTimeZonePlatformServicesService : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	System::_di_IInterface FInterface;
	System::UnicodeString FGUID;
	
public:
	__fastcall TTMSFNCTimeZonePlatformServicesService(System::UnicodeString AGUID, System::_di_IInterface AInterface);
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
	/* TObject.Destroy */ inline __fastcall virtual ~TTMSFNCTimeZonePlatformServicesService() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCTimeZonePlatformServicesList : public System::Generics::Collections::TObjectList__1<TTMSFNCTimeZonePlatformServicesService*>
{
	typedef System::Generics::Collections::TObjectList__1<TTMSFNCTimeZonePlatformServicesService*> inherited;
	
private:
	System::_di_IInterface __fastcall GetValue(System::UnicodeString AGUID);
	
public:
	bool __fastcall ContainsKey(System::UnicodeString AGUID);
	void __fastcall RemoveByGUID(System::UnicodeString AGUID);
	__property System::_di_IInterface Interfaces[System::UnicodeString AGUID] = {read=GetValue};
public:
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCTimeZone_TTMSFNCTimeZonePlatformServicesService>.Create */ inline __fastcall TTMSFNCTimeZonePlatformServicesList()/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCTimeZonePlatformServicesService*>() { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCTimeZone_TTMSFNCTimeZonePlatformServicesService>.Create */ inline __fastcall TTMSFNCTimeZonePlatformServicesList(bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCTimeZonePlatformServicesService*>(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCTimeZone_TTMSFNCTimeZonePlatformServicesService>.Create */ inline __fastcall TTMSFNCTimeZonePlatformServicesList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCTimeZonePlatformServicesService*> > AComparer, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCTimeZonePlatformServicesService*>(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCTimeZone_TTMSFNCTimeZonePlatformServicesService>.Create */ inline __fastcall TTMSFNCTimeZonePlatformServicesList(System::Generics::Collections::TEnumerable__1<TTMSFNCTimeZonePlatformServicesService*>* const Collection, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCTimeZonePlatformServicesService*>(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCTimeZone_TTMSFNCTimeZonePlatformServicesService>.Destroy */ inline __fastcall virtual ~TTMSFNCTimeZonePlatformServicesList() { }
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCTimeZone_TTMSFNCTimeZonePlatformServicesService>.Create */ inline __fastcall TTMSFNCTimeZonePlatformServicesList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCTimeZonePlatformServicesService*> > AComparer)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCTimeZonePlatformServicesService*>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTimeZone_TTMSFNCTimeZonePlatformServicesService>.Create */ inline __fastcall TTMSFNCTimeZonePlatformServicesList(System::Generics::Collections::TEnumerable__1<TTMSFNCTimeZonePlatformServicesService*>* const Collection)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCTimeZonePlatformServicesService*>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTimeZone_TTMSFNCTimeZonePlatformServicesService>.Create */ inline __fastcall TTMSFNCTimeZonePlatformServicesList(TTMSFNCTimeZonePlatformServicesService* const *Values, const int Values_High)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCTimeZonePlatformServicesService*>(Values, Values_High) { }
	
};


class PASCALIMPLEMENTATION TTMSFNCTimeZonePlatformServices : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	TTMSFNCTimeZonePlatformServicesList* FServicesList;
	static TTMSFNCTimeZonePlatformServices* FCurrent;
	static bool FCurrentReleased;
	__classmethod void __fastcall ReleaseCurrent();
	
public:
	__fastcall TTMSFNCTimeZonePlatformServices();
	__fastcall virtual ~TTMSFNCTimeZonePlatformServices();
	void __fastcall AddPlatformService(const GUID &AServiceGUID, const System::_di_IInterface AService);
	void __fastcall RemovePlatformService(const GUID &AServiceGUID);
	System::_di_IInterface __fastcall GetPlatformService(const GUID &AServiceGUID);
	bool __fastcall SupportsPlatformService(const GUID &AServiceGUID)/* overload */;
	bool __fastcall SupportsPlatformService(const GUID &AServiceGUID, System::_di_IInterface &AService)/* overload */;
	__classmethod TTMSFNCTimeZonePlatformServices* __fastcall Current();
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
#define TTMSFNCTimeZoneDocURL u"https://download.tmssoftware.com/doc/tmsfncmaps/components"\
	u"/ttmsfncmaps/#ttmsfnctimezone"
#define TTMSFNCTimeZoneTipsURL u"https://www.tmssoftware.com/site/tmsfncmaps.asp?s=faq"
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x0);
static constexpr System::Int8 BLD_VER = System::Int8(0x0);
}	/* namespace Tmsfnctimezone */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCTIMEZONE)
using namespace Fmx::Tmsfnctimezone;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfnctimezoneHPP
