// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCCloudSMS.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfnccloudsmsHPP
#define Fmx_TmsfnccloudsmsHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <FMX.TMSFNCCloudBase.hpp>
#include <FMX.TMSFNCCloudOAuth.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.TMSFNCUtils.hpp>
#include <FMX.TMSFNCGraphicsTypes.hpp>
#include <FMX.TMSFNCGraphics.hpp>
#include <System.SysUtils.hpp>
#include <FMX.TMSFNCCloudSMS.Twilio.hpp>
#include <FMX.TMSFNCCloudSMS.InfoBip.hpp>
#include <FMX.TMSFNCCloudSMS.BulkSMS.hpp>
#include <FMX.TMSFNCCloudSMS.Spryng.hpp>
#include <System.JSON.hpp>
#include <System.Generics.Collections.hpp>
#include <System.Generics.Defaults.hpp>
#include <System.Types.hpp>
#include <FMX.TMSFNCCustomComponent.hpp>
#include <FMX.Controls.hpp>
#include <FMX.Types.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfnccloudsms
{
//-- forward type declarations -----------------------------------------------
__interface DELPHIINTERFACE ITMSFNCCustomCloudSMSProperties;
typedef System::DelphiInterface<ITMSFNCCustomCloudSMSProperties> _di_ITMSFNCCustomCloudSMSProperties;
__interface DELPHIINTERFACE ITMSFNCCustomCloudSMSInstance;
typedef System::DelphiInterface<ITMSFNCCustomCloudSMSInstance> _di_ITMSFNCCustomCloudSMSInstance;
__interface DELPHIINTERFACE ITMSFNCCustomCloudSMS;
typedef System::DelphiInterface<ITMSFNCCustomCloudSMS> _di_ITMSFNCCustomCloudSMS;
__interface DELPHIINTERFACE ITMSFNCCloudSMSService;
typedef System::DelphiInterface<ITMSFNCCloudSMSService> _di_ITMSFNCCloudSMSService;
__interface DELPHIINTERFACE ITMSFNCCloudSMSServiceTwilio;
typedef System::DelphiInterface<ITMSFNCCloudSMSServiceTwilio> _di_ITMSFNCCloudSMSServiceTwilio;
__interface DELPHIINTERFACE ITMSFNCCloudSMSServiceInfoBip;
typedef System::DelphiInterface<ITMSFNCCloudSMSServiceInfoBip> _di_ITMSFNCCloudSMSServiceInfoBip;
__interface DELPHIINTERFACE ITMSFNCCloudSMSServiceBulkSMS;
typedef System::DelphiInterface<ITMSFNCCloudSMSServiceBulkSMS> _di_ITMSFNCCloudSMSServiceBulkSMS;
__interface DELPHIINTERFACE ITMSFNCCloudSMSServiceSpryng;
typedef System::DelphiInterface<ITMSFNCCloudSMSServiceSpryng> _di_ITMSFNCCloudSMSServiceSpryng;
class DELPHICLASS TTMSFNCCloudSMSItem;
class DELPHICLASS TTMSFNCCloudSMSItems;
class DELPHICLASS TTMSFNCCloudSMSRequest;
class DELPHICLASS TTMSFNCCloudSMSRequests;
__interface DELPHIINTERFACE TTMSFNCCloudSMSSendCloudSMSCallBack;
typedef System::DelphiInterface<TTMSFNCCloudSMSSendCloudSMSCallBack> _di_TTMSFNCCloudSMSSendCloudSMSCallBack;
__interface DELPHIINTERFACE TTMSFNCCloudSMSSendCloudSMSResultCallBack;
typedef System::DelphiInterface<TTMSFNCCloudSMSSendCloudSMSResultCallBack> _di_TTMSFNCCloudSMSSendCloudSMSResultCallBack;
class DELPHICLASS TTMSFNCCloudSMSCallBackWrapper;
class DELPHICLASS TTMSFNCCloudSMSResultCallBackWrapper;
class DELPHICLASS TTMSFNCCustomCloudSMS;
class DELPHICLASS TTMSFNCCustomCloudSMSInterfacedObject;
class DELPHICLASS TTMSFNCCloudSMSList;
class DELPHICLASS TTMSFNCCloudSMSFactoryService;
class DELPHICLASS TTMSFNCCloudSMS;
class DELPHICLASS TTMSFNCCloudSMSPlatformServicesService;
class DELPHICLASS TTMSFNCCloudSMSPlatformServicesList;
class DELPHICLASS TTMSFNCCloudSMSPlatformServices;
//-- type declarations -------------------------------------------------------
__interface  INTERFACE_UUID("{C4FB2AE2-4EFA-4BD6-9083-0F7A02BAC100}") ITMSFNCCustomCloudSMSProperties  : public System::IInterface 
{
	virtual System::UnicodeString __fastcall GetAPIKey() = 0 ;
	virtual System::UnicodeString __fastcall GetClientID() = 0 ;
	virtual System::UnicodeString __fastcall GetSecret() = 0 ;
};

__interface  INTERFACE_UUID("{AA84DCAE-00DB-424E-81A5-A923EC265F26}") ITMSFNCCustomCloudSMSInstance  : public System::IInterface 
{
	virtual void __fastcall SetCloudSMSProperties(const _di_ITMSFNCCustomCloudSMSProperties Value) = 0 ;
};

__interface  INTERFACE_UUID("{B0F9B6F4-6BAE-412F-B760-A563CA0A5CCE}") ITMSFNCCustomCloudSMS  : public System::IInterface 
{
	virtual System::UnicodeString __fastcall GetIdentifier() = 0 ;
	virtual Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestMethod __fastcall GetRequestMethod() = 0 ;
	virtual System::UnicodeString __fastcall GetHost() = 0 ;
	virtual System::UnicodeString __fastcall GetPath() = 0 ;
	virtual System::UnicodeString __fastcall GetQuery() = 0 ;
	virtual System::UnicodeString __fastcall GetPostData(System::UnicodeString AFrom, System::UnicodeString ATo, System::UnicodeString ABody) = 0 ;
	virtual void __fastcall Parse(TTMSFNCCloudSMSRequest* ARequest, System::UnicodeString ARequestResult) = 0 ;
	virtual void __fastcall AddHeaders(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestHeaders* AHeaders) = 0 ;
	virtual bool __fastcall IsValid() = 0 ;
	virtual void __fastcall DestroyCloudSMS() = 0 ;
};

__interface  INTERFACE_UUID("{74A9B3D8-B085-4B54-8EF7-A3C5BABE6C0A}") ITMSFNCCloudSMSService  : public System::IInterface 
{
	virtual _di_ITMSFNCCustomCloudSMS __fastcall CreateCloudSMS() = 0 ;
	virtual void __fastcall DestroyCloudSMS(_di_ITMSFNCCustomCloudSMS ACloudSMS) = 0 ;
};

__interface  INTERFACE_UUID("{803039BA-056B-4C3B-83B5-A3DF51314E78}") ITMSFNCCloudSMSServiceTwilio  : public ITMSFNCCloudSMSService 
{
	
};

__interface  INTERFACE_UUID("{CA88EFC9-7643-45B0-8DEA-1CEE8101FE21}") ITMSFNCCloudSMSServiceInfoBip  : public ITMSFNCCloudSMSService 
{
	
};

__interface  INTERFACE_UUID("{45337248-214E-4BAE-AE40-8753CC8150F3}") ITMSFNCCloudSMSServiceBulkSMS  : public ITMSFNCCloudSMSService 
{
	
};

__interface  INTERFACE_UUID("{8AAB1E67-F7E0-48E8-9917-7B8B950D33A4}") ITMSFNCCloudSMSServiceSpryng  : public ITMSFNCCloudSMSService 
{
	
};

enum DECLSPEC_DENUM TTMSFNCCloudSMSService : unsigned char { cssTwilio, cssInfoBip, cssBulkSMS, cssSpryng };

class PASCALIMPLEMENTATION TTMSFNCCloudSMSItem : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	TTMSFNCCustomCloudSMS* FOwner;
	bool FDataBoolean;
	System::UnicodeString FDataString;
	System::TObject* FDataObject;
	NativeInt FDataInteger;
	void *FDataPointer;
	
public:
	__fastcall virtual TTMSFNCCloudSMSItem(System::Classes::TCollection* Collection);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual ~TTMSFNCCloudSMSItem();
	__property void * DataPointer = {read=FDataPointer, write=FDataPointer};
	__property bool DataBoolean = {read=FDataBoolean, write=FDataBoolean, nodefault};
	__property System::TObject* DataObject = {read=FDataObject, write=FDataObject};
	__property System::UnicodeString DataString = {read=FDataString, write=FDataString};
	__property NativeInt DataInteger = {read=FDataInteger, write=FDataInteger};
};


class PASCALIMPLEMENTATION TTMSFNCCloudSMSItems : public Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCCloudSMSItem*>
{
	typedef Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCCloudSMSItem*> inherited;
	
public:
	TTMSFNCCloudSMSItem* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCCustomCloudSMS* FOwner;
	HIDESBASE TTMSFNCCloudSMSItem* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCCloudSMSItem* const Value);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall CreateItemClass();
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	
public:
	__fastcall virtual TTMSFNCCloudSMSItems(TTMSFNCCustomCloudSMS* AOwner);
	__property TTMSFNCCloudSMSItem* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	HIDESBASE TTMSFNCCloudSMSItem* __fastcall Add();
	HIDESBASE TTMSFNCCloudSMSItem* __fastcall Insert(int Index);
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCCloudSMSItems() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudSMSRequest : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	System::UnicodeString FID;
	TTMSFNCCustomCloudSMS* FOwner;
	bool FDataBoolean;
	System::UnicodeString FDataString;
	System::TObject* FDataObject;
	NativeInt FDataInteger;
	void *FDataPointer;
	TTMSFNCCloudSMSItems* FItems;
	System::UnicodeString FStatus;
	System::UnicodeString FErrorMessage;
	void __fastcall SetErrorMessage(const System::UnicodeString Value);
	void __fastcall SetItems(TTMSFNCCloudSMSItems* const Value);
	void __fastcall SetStatus(const System::UnicodeString Value);
	
public:
	__fastcall virtual TTMSFNCCloudSMSRequest(System::Classes::TCollection* Collection);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual ~TTMSFNCCloudSMSRequest();
	__property void * DataPointer = {read=FDataPointer, write=FDataPointer};
	__property bool DataBoolean = {read=FDataBoolean, write=FDataBoolean, nodefault};
	__property System::TObject* DataObject = {read=FDataObject, write=FDataObject};
	__property System::UnicodeString DataString = {read=FDataString, write=FDataString};
	__property NativeInt DataInteger = {read=FDataInteger, write=FDataInteger};
	
__published:
	__property System::UnicodeString ID = {read=FID};
	__property TTMSFNCCloudSMSItems* Items = {read=FItems, write=SetItems};
	__property System::UnicodeString Status = {read=FStatus, write=SetStatus};
	__property System::UnicodeString ErrorMessage = {read=FErrorMessage, write=SetErrorMessage};
};


class PASCALIMPLEMENTATION TTMSFNCCloudSMSRequests : public Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCCloudSMSRequest*>
{
	typedef Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCCloudSMSRequest*> inherited;
	
public:
	TTMSFNCCloudSMSRequest* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCCustomCloudSMS* FOwner;
	HIDESBASE TTMSFNCCloudSMSRequest* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCCloudSMSRequest* const Value);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall CreateItemClass();
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	
public:
	__fastcall virtual TTMSFNCCloudSMSRequests(TTMSFNCCustomCloudSMS* AOwner);
	__property TTMSFNCCloudSMSRequest* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	HIDESBASE TTMSFNCCloudSMSRequest* __fastcall Add();
	HIDESBASE TTMSFNCCloudSMSRequest* __fastcall Insert(int Index);
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCCloudSMSRequests() { }
	
};


__interface TTMSFNCCloudSMSSendCloudSMSCallBack  : public System::IInterface 
{
	virtual void __fastcall Invoke(TTMSFNCCloudSMSRequest* const ARequest, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult) = 0 ;
};

typedef void __fastcall (__closure *TTMSFNCCloudSMSSendCloudSMSEvent)(System::TObject* Sender, TTMSFNCCloudSMSRequest* const ARequest, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

__interface TTMSFNCCloudSMSSendCloudSMSResultCallBack  : public System::IInterface 
{
	virtual void __fastcall Invoke(TTMSFNCCloudSMSRequest* const AResult) = 0 ;
};

typedef void __fastcall (__closure *TTMSFNCCloudSMSSendCloudSMSResultEvent)(System::TObject* Sender, TTMSFNCCloudSMSRequest* const AResult);

class PASCALIMPLEMENTATION TTMSFNCCloudSMSCallBackWrapper : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	_di_TTMSFNCCloudSMSSendCloudSMSCallBack FCallback;
	
public:
	__fastcall TTMSFNCCloudSMSCallBackWrapper(_di_TTMSFNCCloudSMSSendCloudSMSCallBack ACallback);
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
	/* TObject.Destroy */ inline __fastcall virtual ~TTMSFNCCloudSMSCallBackWrapper() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudSMSResultCallBackWrapper : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	_di_TTMSFNCCloudSMSSendCloudSMSResultCallBack FCallback;
	
public:
	__fastcall TTMSFNCCloudSMSResultCallBackWrapper(_di_TTMSFNCCloudSMSSendCloudSMSResultCallBack ACallback);
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
	/* TObject.Destroy */ inline __fastcall virtual ~TTMSFNCCloudSMSResultCallBackWrapper() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCustomCloudSMS : public Fmx::Tmsfnccloudbase::TTMSFNCCloudBase
{
	typedef Fmx::Tmsfnccloudbase::TTMSFNCCloudBase inherited;
	
private:
	_di_ITMSFNCCustomCloudSMS FCloudSMS;
	_di_ITMSFNCCustomCloudSMSInstance FCloudSMSInstance;
	_di_ITMSFNCCustomCloudSMSProperties FCloudSMSProperties;
	TTMSFNCCloudSMSService FService;
	System::UnicodeString FAPIKey;
	TTMSFNCCloudSMSRequests* FCloudSMSRequests;
	TTMSFNCCloudSMSSendCloudSMSEvent FOnSendCloudSMS;
	System::UnicodeString FClientID;
	System::UnicodeString FSecret;
	HIDESBASE void __fastcall SetService(const TTMSFNCCloudSMSService Value);
	void __fastcall SetAPIKey(const System::UnicodeString Value);
	void __fastcall SetCloudSMSRequests(TTMSFNCCloudSMSRequests* const Value);
	void __fastcall SetClientID(const System::UnicodeString Value);
	void __fastcall SetSecret(const System::UnicodeString Value);
	
protected:
	void __fastcall DoRequestSendCloudSMS(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoSendCloudSMS(TTMSFNCCloudSMSRequest* const ARequest, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall InitializeCloudSMS();
	virtual NativeUInt __fastcall GetInstance();
	TTMSFNCCloudSMSRequests* __fastcall GetCloudSMSRequests();
	bool __fastcall CloudSMSReady();
	System::UnicodeString __fastcall GetAPIKey();
	System::UnicodeString __fastcall GetClientID();
	System::UnicodeString __fastcall GetSecret();
	int __fastcall GetVersionNr();
	virtual System::UnicodeString __fastcall GetDocURL();
	virtual System::UnicodeString __fastcall GetTipsURL();
	_di_ITMSFNCCustomCloudSMS __fastcall CloudSMS();
	virtual System::UnicodeString __fastcall GetVersion();
	__property TTMSFNCCloudSMSSendCloudSMSEvent OnSendCloudSMS = {read=FOnSendCloudSMS, write=FOnSendCloudSMS};
	__property TTMSFNCCloudSMSService Service = {read=FService, write=SetService, default=0};
	__property System::UnicodeString APIKey = {read=FAPIKey, write=SetAPIKey};
	__property System::UnicodeString ClientID = {read=FClientID, write=SetClientID};
	__property System::UnicodeString Secret = {read=FSecret, write=SetSecret};
	__property TTMSFNCCloudSMSRequests* CloudSMSRequests = {read=FCloudSMSRequests, write=SetCloudSMSRequests};
	__property _di_ITMSFNCCustomCloudSMS CloudSMSInstance = {read=FCloudSMS};
	__property _di_ITMSFNCCustomCloudSMSProperties CloudSMSProperties = {read=FCloudSMSProperties};
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual TTMSFNCCustomCloudSMS(System::Classes::TComponent* AOwner)/* overload */;
	__fastcall virtual ~TTMSFNCCustomCloudSMS();
	void __fastcall SendCloudSMS(System::UnicodeString AFrom, System::UnicodeString ATo, System::UnicodeString ABody, _di_TTMSFNCCloudSMSSendCloudSMSCallBack ACallback = _di_TTMSFNCCloudSMSSendCloudSMSCallBack(), System::UnicodeString AID = System::UnicodeString(), void * ADataPointer = (void *)(0x0));
public:
	/* TTMSFNCCustomCloudBase.Create */ inline __fastcall virtual TTMSFNCCustomCloudSMS()/* overload */ : Fmx::Tmsfnccloudbase::TTMSFNCCloudBase() { }
	
private:
	void *__ITMSFNCCustomCloudSMSProperties;	// ITMSFNCCustomCloudSMSProperties 
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {C4FB2AE2-4EFA-4BD6-9083-0F7A02BAC100}
	operator _di_ITMSFNCCustomCloudSMSProperties()
	{
		_di_ITMSFNCCustomCloudSMSProperties intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator ITMSFNCCustomCloudSMSProperties*(void) { return (ITMSFNCCustomCloudSMSProperties*)&__ITMSFNCCustomCloudSMSProperties; }
	#endif
	
};


class PASCALIMPLEMENTATION TTMSFNCCustomCloudSMSInterfacedObject : public System::TInterfacedObject
{
	typedef System::TInterfacedObject inherited;
	
private:
	_di_ITMSFNCCustomCloudSMSProperties FCloudSMSProperties;
	_di_ITMSFNCCustomCloudSMSProperties __fastcall GetCloudSMSProperties();
	
protected:
	void __fastcall SetCloudSMSProperties(const _di_ITMSFNCCustomCloudSMSProperties Value);
	
public:
	__property _di_ITMSFNCCustomCloudSMSProperties CloudSMSProperties = {read=GetCloudSMSProperties};
	__fastcall virtual ~TTMSFNCCustomCloudSMSInterfacedObject();
public:
	/* TObject.Create */ inline __fastcall TTMSFNCCustomCloudSMSInterfacedObject() : System::TInterfacedObject() { }
	
private:
	void *__ITMSFNCCustomCloudSMSInstance;	// ITMSFNCCustomCloudSMSInstance 
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {AA84DCAE-00DB-424E-81A5-A923EC265F26}
	operator _di_ITMSFNCCustomCloudSMSInstance()
	{
		_di_ITMSFNCCustomCloudSMSInstance intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator ITMSFNCCustomCloudSMSInstance*(void) { return (ITMSFNCCustomCloudSMSInstance*)&__ITMSFNCCustomCloudSMSInstance; }
	#endif
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudSMSList : public System::Generics::Collections::TList__1<_di_ITMSFNCCustomCloudSMS>
{
	typedef System::Generics::Collections::TList__1<_di_ITMSFNCCustomCloudSMS> inherited;
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudSMS_ITMSFNCCustomCloudSMS>.Create */ inline __fastcall TTMSFNCCloudSMSList()/* overload */ : System::Generics::Collections::TList__1<_di_ITMSFNCCustomCloudSMS>() { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudSMS_ITMSFNCCustomCloudSMS>.Create */ inline __fastcall TTMSFNCCloudSMSList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<_di_ITMSFNCCustomCloudSMS> > AComparer)/* overload */ : System::Generics::Collections::TList__1<_di_ITMSFNCCustomCloudSMS>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudSMS_ITMSFNCCustomCloudSMS>.Create */ inline __fastcall TTMSFNCCloudSMSList(System::Generics::Collections::TEnumerable__1<_di_ITMSFNCCustomCloudSMS>* const Collection)/* overload */ : System::Generics::Collections::TList__1<_di_ITMSFNCCustomCloudSMS>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudSMS_ITMSFNCCustomCloudSMS>.Create */ inline __fastcall TTMSFNCCloudSMSList(const _di_ITMSFNCCustomCloudSMS *Values, const int Values_High)/* overload */ : System::Generics::Collections::TList__1<_di_ITMSFNCCustomCloudSMS>(Values, Values_High) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudSMS_ITMSFNCCustomCloudSMS>.Destroy */ inline __fastcall virtual ~TTMSFNCCloudSMSList() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudSMSFactoryService : public System::TInterfacedObject
{
	typedef System::TInterfacedObject inherited;
	
private:
	TTMSFNCCloudSMSList* FCloudSMS;
	
protected:
	virtual _di_ITMSFNCCustomCloudSMS __fastcall DoCreateCloudSMS() = 0 ;
	_di_ITMSFNCCustomCloudSMS __fastcall CreateCloudSMS();
	void __fastcall DestroyCloudSMS(_di_ITMSFNCCustomCloudSMS ACloudSMS);
	
public:
	__fastcall TTMSFNCCloudSMSFactoryService();
	__fastcall virtual ~TTMSFNCCloudSMSFactoryService();
private:
	void *__ITMSFNCCloudSMSService;	// ITMSFNCCloudSMSService 
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {74A9B3D8-B085-4B54-8EF7-A3C5BABE6C0A}
	operator _di_ITMSFNCCloudSMSService()
	{
		_di_ITMSFNCCloudSMSService intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator ITMSFNCCloudSMSService*(void) { return (ITMSFNCCloudSMSService*)&__ITMSFNCCloudSMSService; }
	#endif
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudSMS : public TTMSFNCCustomCloudSMS
{
	typedef TTMSFNCCustomCloudSMS inherited;
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	
public:
	__property CloudSMSInstance;
	__property CloudSMSProperties;
	
__published:
	__property OnSendCloudSMS;
	__property APIKey = {default=0};
	__property ClientID = {default=0};
	__property Secret = {default=0};
	__property CloudSMSRequests;
	__property Service = {default=0};
	__property Version = {default=0};
public:
	/* TTMSFNCCustomCloudSMS.Create */ inline __fastcall virtual TTMSFNCCloudSMS(System::Classes::TComponent* AOwner)/* overload */ : TTMSFNCCustomCloudSMS(AOwner) { }
	/* TTMSFNCCustomCloudSMS.Destroy */ inline __fastcall virtual ~TTMSFNCCloudSMS() { }
	
public:
	/* TTMSFNCCustomCloudBase.Create */ inline __fastcall virtual TTMSFNCCloudSMS()/* overload */ : TTMSFNCCustomCloudSMS() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudSMSPlatformServicesService : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	System::_di_IInterface FInterface;
	System::UnicodeString FGUID;
	
public:
	__fastcall TTMSFNCCloudSMSPlatformServicesService(System::UnicodeString AGUID, System::_di_IInterface AInterface);
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
	/* TObject.Destroy */ inline __fastcall virtual ~TTMSFNCCloudSMSPlatformServicesService() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudSMSPlatformServicesList : public System::Generics::Collections::TObjectList__1<TTMSFNCCloudSMSPlatformServicesService*>
{
	typedef System::Generics::Collections::TObjectList__1<TTMSFNCCloudSMSPlatformServicesService*> inherited;
	
private:
	System::_di_IInterface __fastcall GetValue(System::UnicodeString AGUID);
	
public:
	bool __fastcall ContainsKey(System::UnicodeString AGUID);
	void __fastcall RemoveByGUID(System::UnicodeString AGUID);
	__property System::_di_IInterface Interfaces[System::UnicodeString AGUID] = {read=GetValue};
public:
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudSMS_TTMSFNCCloudSMSPlatformServicesService>.Create */ inline __fastcall TTMSFNCCloudSMSPlatformServicesList()/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudSMSPlatformServicesService*>() { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudSMS_TTMSFNCCloudSMSPlatformServicesService>.Create */ inline __fastcall TTMSFNCCloudSMSPlatformServicesList(bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudSMSPlatformServicesService*>(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudSMS_TTMSFNCCloudSMSPlatformServicesService>.Create */ inline __fastcall TTMSFNCCloudSMSPlatformServicesList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCloudSMSPlatformServicesService*> > AComparer, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudSMSPlatformServicesService*>(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudSMS_TTMSFNCCloudSMSPlatformServicesService>.Create */ inline __fastcall TTMSFNCCloudSMSPlatformServicesList(System::Generics::Collections::TEnumerable__1<TTMSFNCCloudSMSPlatformServicesService*>* const Collection, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudSMSPlatformServicesService*>(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudSMS_TTMSFNCCloudSMSPlatformServicesService>.Destroy */ inline __fastcall virtual ~TTMSFNCCloudSMSPlatformServicesList() { }
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudSMS_TTMSFNCCloudSMSPlatformServicesService>.Create */ inline __fastcall TTMSFNCCloudSMSPlatformServicesList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCloudSMSPlatformServicesService*> > AComparer)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudSMSPlatformServicesService*>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudSMS_TTMSFNCCloudSMSPlatformServicesService>.Create */ inline __fastcall TTMSFNCCloudSMSPlatformServicesList(System::Generics::Collections::TEnumerable__1<TTMSFNCCloudSMSPlatformServicesService*>* const Collection)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudSMSPlatformServicesService*>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudSMS_TTMSFNCCloudSMSPlatformServicesService>.Create */ inline __fastcall TTMSFNCCloudSMSPlatformServicesList(TTMSFNCCloudSMSPlatformServicesService* const *Values, const int Values_High)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudSMSPlatformServicesService*>(Values, Values_High) { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudSMSPlatformServices : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	TTMSFNCCloudSMSPlatformServicesList* FServicesList;
	static TTMSFNCCloudSMSPlatformServices* FCurrent;
	static bool FCurrentReleased;
	__classmethod void __fastcall ReleaseCurrent();
	
public:
	__fastcall TTMSFNCCloudSMSPlatformServices();
	__fastcall virtual ~TTMSFNCCloudSMSPlatformServices();
	void __fastcall AddPlatformService(const GUID &AServiceGUID, const System::_di_IInterface AService);
	void __fastcall RemovePlatformService(const GUID &AServiceGUID);
	System::_di_IInterface __fastcall GetPlatformService(const GUID &AServiceGUID);
	bool __fastcall SupportsPlatformService(const GUID &AServiceGUID)/* overload */;
	bool __fastcall SupportsPlatformService(const GUID &AServiceGUID, System::_di_IInterface &AService)/* overload */;
	__classmethod TTMSFNCCloudSMSPlatformServices* __fastcall Current();
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
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x0);
static constexpr System::Int8 BLD_VER = System::Int8(0x0);
#define TTMSFNCCloudSMSDocURL u"https://download.tmssoftware.com/doc/tmsfnccloudpack/"
#define TTMSFNCCloudSMSTipsURL u"https://www.tmssoftware.com/site/tmsfnccloudpack.asp?s=faq"
}	/* namespace Tmsfnccloudsms */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCCLOUDSMS)
using namespace Fmx::Tmsfnccloudsms;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfnccloudsmsHPP
