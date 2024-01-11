// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCElevation.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncelevationHPP
#define Fmx_TmsfncelevationHPP

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
namespace Tmsfncelevation
{
//-- forward type declarations -----------------------------------------------
__interface DELPHIINTERFACE ITMSFNCCustomElevationProperties;
typedef System::DelphiInterface<ITMSFNCCustomElevationProperties> _di_ITMSFNCCustomElevationProperties;
__interface DELPHIINTERFACE ITMSFNCCustomElevationInstance;
typedef System::DelphiInterface<ITMSFNCCustomElevationInstance> _di_ITMSFNCCustomElevationInstance;
__interface DELPHIINTERFACE ITMSFNCCustomElevation;
typedef System::DelphiInterface<ITMSFNCCustomElevation> _di_ITMSFNCCustomElevation;
__interface DELPHIINTERFACE ITMSFNCElevationService;
typedef System::DelphiInterface<ITMSFNCElevationService> _di_ITMSFNCElevationService;
__interface DELPHIINTERFACE ITMSFNCElevationServiceGoogle;
typedef System::DelphiInterface<ITMSFNCElevationServiceGoogle> _di_ITMSFNCElevationServiceGoogle;
__interface DELPHIINTERFACE ITMSFNCElevationServiceMapQuest;
typedef System::DelphiInterface<ITMSFNCElevationServiceMapQuest> _di_ITMSFNCElevationServiceMapQuest;
__interface DELPHIINTERFACE ITMSFNCElevationServiceAirMap;
typedef System::DelphiInterface<ITMSFNCElevationServiceAirMap> _di_ITMSFNCElevationServiceAirMap;
class DELPHICLASS TTMSFNCElevationItem;
class DELPHICLASS TTMSFNCElevationItems;
class DELPHICLASS TTMSFNCElevationRequest;
class DELPHICLASS TTMSFNCElevationRequests;
__interface DELPHIINTERFACE TTMSFNCElevationGetElevationCallBack;
typedef System::DelphiInterface<TTMSFNCElevationGetElevationCallBack> _di_TTMSFNCElevationGetElevationCallBack;
__interface DELPHIINTERFACE TTMSFNCElevationGetElevationResultCallBack;
typedef System::DelphiInterface<TTMSFNCElevationGetElevationResultCallBack> _di_TTMSFNCElevationGetElevationResultCallBack;
class DELPHICLASS TTMSFNCElevationCallBackWrapper;
class DELPHICLASS TTMSFNCElevationResultCallBackWrapper;
class DELPHICLASS TTMSFNCElevationData;
class DELPHICLASS TTMSFNCElevationRequestData;
class DELPHICLASS TTMSFNCElevationRequestDataList;
class DELPHICLASS TTMSFNCCustomElevation;
class DELPHICLASS TTMSFNCCustomElevationInterfacedObject;
class DELPHICLASS TTMSFNCElevationList;
class DELPHICLASS TTMSFNCElevationFactoryService;
class DELPHICLASS TTMSFNCElevation;
class DELPHICLASS TTMSFNCElevationPlatformServicesService;
class DELPHICLASS TTMSFNCElevationPlatformServicesList;
class DELPHICLASS TTMSFNCElevationPlatformServices;
//-- type declarations -------------------------------------------------------
__interface  INTERFACE_UUID("{E91C635D-A2E7-43F5-AF58-D6B0CBD4F48B}") ITMSFNCCustomElevationProperties  : public System::IInterface 
{
	virtual System::UnicodeString __fastcall GetAPIKey() = 0 ;
};

__interface  INTERFACE_UUID("{6FCC87D9-FF9C-4301-8DB2-CB8A805E10CA}") ITMSFNCCustomElevationInstance  : public System::IInterface 
{
	virtual void __fastcall SetElevationProperties(const _di_ITMSFNCCustomElevationProperties Value) = 0 ;
};

__interface  INTERFACE_UUID("{E9C3397B-E6B9-4A8A-84BC-DF0AB911F27D}") ITMSFNCCustomElevation  : public System::IInterface 
{
	virtual System::UnicodeString __fastcall GetIdentifier() = 0 ;
	virtual Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestMethod __fastcall GetRequestMethod() = 0 ;
	virtual System::UnicodeString __fastcall GetHost() = 0 ;
	virtual System::UnicodeString __fastcall GetPath() = 0 ;
	virtual System::UnicodeString __fastcall GetQuery(Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRecArray ACoordinates) = 0 ;
	virtual System::UnicodeString __fastcall GetPostData(Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRecArray ACoordinates = Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRecArray()) = 0 ;
	virtual Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRecArray __fastcall Parse(TTMSFNCElevationRequest* ARequest, Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRecArray ACoordinates, System::UnicodeString ARequestResult) = 0 ;
	virtual void __fastcall AddHeaders(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestHeaders* AHeaders) = 0 ;
	virtual bool __fastcall IsValid() = 0 ;
	virtual void __fastcall DestroyElevation() = 0 ;
};

__interface  INTERFACE_UUID("{4C6010BC-420F-44D9-AB15-ED4EE80DA9E4}") ITMSFNCElevationService  : public System::IInterface 
{
	virtual _di_ITMSFNCCustomElevation __fastcall CreateElevation() = 0 ;
	virtual void __fastcall DestroyElevation(_di_ITMSFNCCustomElevation AElevation) = 0 ;
};

__interface  INTERFACE_UUID("{59D7319D-8276-4CB8-B2CC-A3A0F6C1D0C5}") ITMSFNCElevationServiceGoogle  : public ITMSFNCElevationService 
{
	
};

__interface  INTERFACE_UUID("{B8735C1C-00A3-4087-AF3E-F507C01844ED}") ITMSFNCElevationServiceMapQuest  : public ITMSFNCElevationService 
{
	
};

__interface  INTERFACE_UUID("{FF3812D5-F3AB-4801-9B9A-0CB7696EF144}") ITMSFNCElevationServiceAirMap  : public ITMSFNCElevationService 
{
	
};

enum DECLSPEC_DENUM TTMSFNCElevationService : unsigned char { esGoogle, esMapQuest, esAirMap };

class PASCALIMPLEMENTATION TTMSFNCElevationItem : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	TTMSFNCCustomElevation* FOwner;
	bool FDataBoolean;
	System::UnicodeString FDataString;
	System::TObject* FDataObject;
	NativeInt FDataInteger;
	void *FDataPointer;
	Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinate* FCoordinate;
	double FElevation;
	double FResolution;
	void __fastcall SetCoordinate(Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinate* const Value);
	
public:
	__fastcall virtual TTMSFNCElevationItem(System::Classes::TCollection* Collection);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual ~TTMSFNCElevationItem();
	__property void * DataPointer = {read=FDataPointer, write=FDataPointer};
	__property bool DataBoolean = {read=FDataBoolean, write=FDataBoolean, nodefault};
	__property System::TObject* DataObject = {read=FDataObject, write=FDataObject};
	__property System::UnicodeString DataString = {read=FDataString, write=FDataString};
	__property NativeInt DataInteger = {read=FDataInteger, write=FDataInteger, nodefault};
	
__published:
	__property Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinate* Coordinate = {read=FCoordinate, write=SetCoordinate};
	__property double Elevation = {read=FElevation, write=FElevation};
	__property double Resolution = {read=FResolution, write=FResolution};
};


#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCElevationItems : public Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCElevationItem*>
{
	typedef Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCElevationItem*> inherited;
	
public:
	TTMSFNCElevationItem* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCCustomElevation* FOwner;
	HIDESBASE TTMSFNCElevationItem* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCElevationItem* const Value);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall CreateItemClass();
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	
public:
	__fastcall virtual TTMSFNCElevationItems(TTMSFNCCustomElevation* AOwner);
	__property TTMSFNCElevationItem* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	HIDESBASE TTMSFNCElevationItem* __fastcall Add();
	HIDESBASE TTMSFNCElevationItem* __fastcall Insert(int Index);
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCElevationItems() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCElevationRequest : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	System::UnicodeString FID;
	TTMSFNCCustomElevation* FOwner;
	bool FDataBoolean;
	System::UnicodeString FDataString;
	System::TObject* FDataObject;
	NativeInt FDataInteger;
	void *FDataPointer;
	TTMSFNCElevationItems* FItems;
	System::UnicodeString FStatus;
	System::UnicodeString FErrorMessage;
	void __fastcall SetErrorMessage(const System::UnicodeString Value);
	void __fastcall SetItems(TTMSFNCElevationItems* const Value);
	void __fastcall SetStatus(const System::UnicodeString Value);
	
public:
	__fastcall virtual TTMSFNCElevationRequest(System::Classes::TCollection* Collection);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual ~TTMSFNCElevationRequest();
	__property void * DataPointer = {read=FDataPointer, write=FDataPointer};
	__property bool DataBoolean = {read=FDataBoolean, write=FDataBoolean, nodefault};
	__property System::TObject* DataObject = {read=FDataObject, write=FDataObject};
	__property System::UnicodeString DataString = {read=FDataString, write=FDataString};
	__property NativeInt DataInteger = {read=FDataInteger, write=FDataInteger, nodefault};
	
__published:
	__property System::UnicodeString ID = {read=FID};
	__property TTMSFNCElevationItems* Items = {read=FItems, write=SetItems};
	__property System::UnicodeString Status = {read=FStatus, write=SetStatus};
	__property System::UnicodeString ErrorMessage = {read=FErrorMessage, write=SetErrorMessage};
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCElevationRequests : public Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCElevationRequest*>
{
	typedef Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCElevationRequest*> inherited;
	
public:
	TTMSFNCElevationRequest* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCCustomElevation* FOwner;
	HIDESBASE TTMSFNCElevationRequest* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCElevationRequest* const Value);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall CreateItemClass();
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	
public:
	__fastcall virtual TTMSFNCElevationRequests(TTMSFNCCustomElevation* AOwner);
	__property TTMSFNCElevationRequest* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	HIDESBASE TTMSFNCElevationRequest* __fastcall Add();
	HIDESBASE TTMSFNCElevationRequest* __fastcall Insert(int Index);
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCElevationRequests() { }
	
};

#pragma pack(pop)

__interface TTMSFNCElevationGetElevationCallBack  : public System::IInterface 
{
	virtual void __fastcall Invoke(TTMSFNCElevationRequest* const ARequest, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult) = 0 ;
};

typedef void __fastcall (__closure *TTMSFNCElevationGetElevationEvent)(System::TObject* Sender, TTMSFNCElevationRequest* const ARequest, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

__interface TTMSFNCElevationGetElevationResultCallBack  : public System::IInterface 
{
	virtual void __fastcall Invoke(TTMSFNCElevationRequest* const AResult) = 0 ;
};

typedef void __fastcall (__closure *TTMSFNCElevationGetElevationResultEvent)(System::TObject* Sender, TTMSFNCElevationRequest* const AResult);

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCElevationCallBackWrapper : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	_di_TTMSFNCElevationGetElevationCallBack FCallback;
	
public:
	__fastcall TTMSFNCElevationCallBackWrapper(_di_TTMSFNCElevationGetElevationCallBack ACallback);
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
	/* TObject.Destroy */ inline __fastcall virtual ~TTMSFNCElevationCallBackWrapper() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCElevationResultCallBackWrapper : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	_di_TTMSFNCElevationGetElevationResultCallBack FCallback;
	
public:
	__fastcall TTMSFNCElevationResultCallBackWrapper(_di_TTMSFNCElevationGetElevationResultCallBack ACallback);
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
	/* TObject.Destroy */ inline __fastcall virtual ~TTMSFNCElevationResultCallBackWrapper() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCElevationData : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRecArray FCoordinates;
	
public:
	__fastcall TTMSFNCElevationData(Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRecArray ACoordinates);
	__property Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRecArray Coordinates = {read=FCoordinates};
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
	/* TObject.Destroy */ inline __fastcall virtual ~TTMSFNCElevationData() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCElevationRequestData : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	int FCount;
	int FTotalCount;
	System::UnicodeString FGUID;
	
public:
	__property System::UnicodeString GUID = {read=FGUID, write=FGUID};
	__property int TotalCount = {read=FTotalCount, write=FTotalCount, nodefault};
	__property int Count = {read=FCount, write=FCount, nodefault};
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
	/* TObject.Create */ inline __fastcall TTMSFNCElevationRequestData() : System::TObject() { }
	/* TObject.Destroy */ inline __fastcall virtual ~TTMSFNCElevationRequestData() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCElevationRequestDataList : public System::Generics::Collections::TList__1<TTMSFNCElevationRequestData*>
{
	typedef System::Generics::Collections::TList__1<TTMSFNCElevationRequestData*> inherited;
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCElevation_TTMSFNCElevationRequestData>.Create */ inline __fastcall TTMSFNCElevationRequestDataList()/* overload */ : System::Generics::Collections::TList__1<TTMSFNCElevationRequestData*>() { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCElevation_TTMSFNCElevationRequestData>.Create */ inline __fastcall TTMSFNCElevationRequestDataList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCElevationRequestData*> > AComparer)/* overload */ : System::Generics::Collections::TList__1<TTMSFNCElevationRequestData*>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCElevation_TTMSFNCElevationRequestData>.Create */ inline __fastcall TTMSFNCElevationRequestDataList(System::Generics::Collections::TEnumerable__1<TTMSFNCElevationRequestData*>* const Collection)/* overload */ : System::Generics::Collections::TList__1<TTMSFNCElevationRequestData*>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCElevation_TTMSFNCElevationRequestData>.Create */ inline __fastcall TTMSFNCElevationRequestDataList(TTMSFNCElevationRequestData* const *Values, const int Values_High)/* overload */ : System::Generics::Collections::TList__1<TTMSFNCElevationRequestData*>(Values, Values_High) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCElevation_TTMSFNCElevationRequestData>.Destroy */ inline __fastcall virtual ~TTMSFNCElevationRequestDataList() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCustomElevation : public Fmx::Tmsfnccloudbase::TTMSFNCCloudBase
{
	typedef Fmx::Tmsfnccloudbase::TTMSFNCCloudBase inherited;
	
private:
	TTMSFNCElevationRequestDataList* FElevationRequestDataList;
	_di_ITMSFNCCustomElevation FElevation;
	_di_ITMSFNCCustomElevationInstance FElevationInstance;
	_di_ITMSFNCCustomElevationProperties FElevationProperties;
	TTMSFNCElevationService FService;
	System::UnicodeString FAPIKey;
	TTMSFNCElevationRequests* FElevationRequests;
	TTMSFNCElevationGetElevationEvent FOnGetElevation;
	TTMSFNCElevationGetElevationEvent FOnGetElevationInternal;
	Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRecArray FElevationData;
	TTMSFNCElevationGetElevationResultEvent FOnGetElevationResultInternal;
	TTMSFNCElevationGetElevationResultEvent FOnGetElevationResult;
	HIDESBASE void __fastcall SetService(const TTMSFNCElevationService Value);
	void __fastcall SetAPIKey(const System::UnicodeString Value);
	void __fastcall SetElevationRequests(TTMSFNCElevationRequests* const Value);
	
protected:
	void __fastcall InternalGetElevation(Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRecArray ACoordinates, _di_TTMSFNCElevationGetElevationCallBack ACallback, _di_TTMSFNCElevationGetElevationResultCallBack ACallback2);
	void __fastcall DoRequestGetElevation(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoGetElevation(TTMSFNCElevationRequest* const ARequest, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	__property TTMSFNCElevationGetElevationEvent OnGetElevation = {read=FOnGetElevation, write=FOnGetElevation};
	__property TTMSFNCElevationGetElevationEvent OnGetElevationInternal = {read=FOnGetElevationInternal, write=FOnGetElevationInternal};
	__property TTMSFNCElevationGetElevationResultEvent OnGetElevationResult = {read=FOnGetElevationResult, write=FOnGetElevationResult};
	__property TTMSFNCElevationGetElevationResultEvent OnGetElevationResultInternal = {read=FOnGetElevationResultInternal, write=FOnGetElevationResultInternal};
	virtual void __fastcall InitializeElevation();
	virtual NativeUInt __fastcall GetInstance();
	TTMSFNCElevationRequests* __fastcall GetElevationRequests();
	bool __fastcall ElevationReady();
	System::UnicodeString __fastcall GetAPIKey();
	Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRecArray __fastcall GetElevationData();
	int __fastcall GetVersionNr();
	virtual System::UnicodeString __fastcall GetDocURL();
	virtual System::UnicodeString __fastcall GetTipsURL();
	_di_ITMSFNCCustomElevation __fastcall Elevation();
	virtual System::UnicodeString __fastcall GetVersion();
	__property TTMSFNCElevationService Service = {read=FService, write=SetService, default=0};
	__property System::UnicodeString APIKey = {read=FAPIKey, write=SetAPIKey};
	__property TTMSFNCElevationRequests* ElevationRequests = {read=FElevationRequests, write=SetElevationRequests};
	__property _di_ITMSFNCCustomElevation ElevationInstance = {read=FElevation};
	__property _di_ITMSFNCCustomElevationProperties ElevationProperties = {read=FElevationProperties};
	
public:
	__property Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRecArray ElevationData = {read=FElevationData, write=FElevationData};
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual TTMSFNCCustomElevation(System::Classes::TComponent* AOwner)/* overload */;
	__fastcall virtual ~TTMSFNCCustomElevation();
	virtual void __fastcall GetElevation(const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec &ACoordinate, _di_TTMSFNCElevationGetElevationCallBack ACallback = _di_TTMSFNCElevationGetElevationCallBack())/* overload */;
	virtual void __fastcall GetElevation(Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRecArray ACoordinates, _di_TTMSFNCElevationGetElevationCallBack ACallback = _di_TTMSFNCElevationGetElevationCallBack())/* overload */;
	virtual void __fastcall GetElevationResult(const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec &ACoordinate, _di_TTMSFNCElevationGetElevationResultCallBack ACallback = _di_TTMSFNCElevationGetElevationResultCallBack())/* overload */;
	virtual void __fastcall GetElevationResult(Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRecArray ACoordinates, _di_TTMSFNCElevationGetElevationResultCallBack ACallback = _di_TTMSFNCElevationGetElevationResultCallBack())/* overload */;
	bool __fastcall FindElevation(Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec &ACoordinate);
	void __fastcall ClearElevationData();
public:
	/* TTMSFNCCustomCloudBase.Create */ inline __fastcall virtual TTMSFNCCustomElevation()/* overload */ : Fmx::Tmsfnccloudbase::TTMSFNCCloudBase() { }
	
private:
	void *__ITMSFNCCustomElevationProperties;	// ITMSFNCCustomElevationProperties 
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {E91C635D-A2E7-43F5-AF58-D6B0CBD4F48B}
	operator _di_ITMSFNCCustomElevationProperties()
	{
		_di_ITMSFNCCustomElevationProperties intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator ITMSFNCCustomElevationProperties*(void) { return (ITMSFNCCustomElevationProperties*)&__ITMSFNCCustomElevationProperties; }
	#endif
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCustomElevationInterfacedObject : public System::TInterfacedObject
{
	typedef System::TInterfacedObject inherited;
	
private:
	_di_ITMSFNCCustomElevationProperties FElevationProperties;
	_di_ITMSFNCCustomElevationProperties __fastcall GetElevationProperties();
	
protected:
	void __fastcall SetElevationProperties(const _di_ITMSFNCCustomElevationProperties Value);
	
public:
	__property _di_ITMSFNCCustomElevationProperties ElevationProperties = {read=GetElevationProperties};
	__fastcall virtual ~TTMSFNCCustomElevationInterfacedObject();
public:
	/* TObject.Create */ inline __fastcall TTMSFNCCustomElevationInterfacedObject() : System::TInterfacedObject() { }
	
private:
	void *__ITMSFNCCustomElevationInstance;	// ITMSFNCCustomElevationInstance 
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {6FCC87D9-FF9C-4301-8DB2-CB8A805E10CA}
	operator _di_ITMSFNCCustomElevationInstance()
	{
		_di_ITMSFNCCustomElevationInstance intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator ITMSFNCCustomElevationInstance*(void) { return (ITMSFNCCustomElevationInstance*)&__ITMSFNCCustomElevationInstance; }
	#endif
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCElevationList : public System::Generics::Collections::TList__1<_di_ITMSFNCCustomElevation>
{
	typedef System::Generics::Collections::TList__1<_di_ITMSFNCCustomElevation> inherited;
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCElevation_ITMSFNCCustomElevation>.Create */ inline __fastcall TTMSFNCElevationList()/* overload */ : System::Generics::Collections::TList__1<_di_ITMSFNCCustomElevation>() { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCElevation_ITMSFNCCustomElevation>.Create */ inline __fastcall TTMSFNCElevationList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<_di_ITMSFNCCustomElevation> > AComparer)/* overload */ : System::Generics::Collections::TList__1<_di_ITMSFNCCustomElevation>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCElevation_ITMSFNCCustomElevation>.Create */ inline __fastcall TTMSFNCElevationList(System::Generics::Collections::TEnumerable__1<_di_ITMSFNCCustomElevation>* const Collection)/* overload */ : System::Generics::Collections::TList__1<_di_ITMSFNCCustomElevation>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCElevation_ITMSFNCCustomElevation>.Create */ inline __fastcall TTMSFNCElevationList(const _di_ITMSFNCCustomElevation *Values, const int Values_High)/* overload */ : System::Generics::Collections::TList__1<_di_ITMSFNCCustomElevation>(Values, Values_High) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCElevation_ITMSFNCCustomElevation>.Destroy */ inline __fastcall virtual ~TTMSFNCElevationList() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCElevationFactoryService : public System::TInterfacedObject
{
	typedef System::TInterfacedObject inherited;
	
private:
	TTMSFNCElevationList* FElevation;
	
protected:
	virtual _di_ITMSFNCCustomElevation __fastcall DoCreateElevation() = 0 ;
	_di_ITMSFNCCustomElevation __fastcall CreateElevation();
	void __fastcall DestroyElevation(_di_ITMSFNCCustomElevation AElevation);
	
public:
	__fastcall TTMSFNCElevationFactoryService();
	__fastcall virtual ~TTMSFNCElevationFactoryService();
private:
	void *__ITMSFNCElevationService;	// ITMSFNCElevationService 
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {4C6010BC-420F-44D9-AB15-ED4EE80DA9E4}
	operator _di_ITMSFNCElevationService()
	{
		_di_ITMSFNCElevationService intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator ITMSFNCElevationService*(void) { return (ITMSFNCElevationService*)&__ITMSFNCElevationService; }
	#endif
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCElevation : public TTMSFNCCustomElevation
{
	typedef TTMSFNCCustomElevation inherited;
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	
public:
	__property ElevationInstance;
	__property ElevationProperties;
	
__published:
	__property OnGetElevation;
	__property OnGetElevationResult;
	__property APIKey = {default=0};
	__property ElevationRequests;
	__property Service = {default=0};
	__property Version = {default=0};
public:
	/* TTMSFNCCustomElevation.Create */ inline __fastcall virtual TTMSFNCElevation(System::Classes::TComponent* AOwner)/* overload */ : TTMSFNCCustomElevation(AOwner) { }
	/* TTMSFNCCustomElevation.Destroy */ inline __fastcall virtual ~TTMSFNCElevation() { }
	
public:
	/* TTMSFNCCustomCloudBase.Create */ inline __fastcall virtual TTMSFNCElevation()/* overload */ : TTMSFNCCustomElevation() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCElevationPlatformServicesService : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	System::_di_IInterface FInterface;
	System::UnicodeString FGUID;
	
public:
	__fastcall TTMSFNCElevationPlatformServicesService(System::UnicodeString AGUID, System::_di_IInterface AInterface);
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
	/* TObject.Destroy */ inline __fastcall virtual ~TTMSFNCElevationPlatformServicesService() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCElevationPlatformServicesList : public System::Generics::Collections::TObjectList__1<TTMSFNCElevationPlatformServicesService*>
{
	typedef System::Generics::Collections::TObjectList__1<TTMSFNCElevationPlatformServicesService*> inherited;
	
private:
	System::_di_IInterface __fastcall GetValue(System::UnicodeString AGUID);
	
public:
	bool __fastcall ContainsKey(System::UnicodeString AGUID);
	void __fastcall RemoveByGUID(System::UnicodeString AGUID);
	__property System::_di_IInterface Interfaces[System::UnicodeString AGUID] = {read=GetValue};
public:
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCElevation_TTMSFNCElevationPlatformServicesService>.Create */ inline __fastcall TTMSFNCElevationPlatformServicesList()/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCElevationPlatformServicesService*>() { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCElevation_TTMSFNCElevationPlatformServicesService>.Create */ inline __fastcall TTMSFNCElevationPlatformServicesList(bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCElevationPlatformServicesService*>(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCElevation_TTMSFNCElevationPlatformServicesService>.Create */ inline __fastcall TTMSFNCElevationPlatformServicesList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCElevationPlatformServicesService*> > AComparer, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCElevationPlatformServicesService*>(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCElevation_TTMSFNCElevationPlatformServicesService>.Create */ inline __fastcall TTMSFNCElevationPlatformServicesList(System::Generics::Collections::TEnumerable__1<TTMSFNCElevationPlatformServicesService*>* const Collection, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCElevationPlatformServicesService*>(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCElevation_TTMSFNCElevationPlatformServicesService>.Destroy */ inline __fastcall virtual ~TTMSFNCElevationPlatformServicesList() { }
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCElevation_TTMSFNCElevationPlatformServicesService>.Create */ inline __fastcall TTMSFNCElevationPlatformServicesList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCElevationPlatformServicesService*> > AComparer)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCElevationPlatformServicesService*>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCElevation_TTMSFNCElevationPlatformServicesService>.Create */ inline __fastcall TTMSFNCElevationPlatformServicesList(System::Generics::Collections::TEnumerable__1<TTMSFNCElevationPlatformServicesService*>* const Collection)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCElevationPlatformServicesService*>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCElevation_TTMSFNCElevationPlatformServicesService>.Create */ inline __fastcall TTMSFNCElevationPlatformServicesList(TTMSFNCElevationPlatformServicesService* const *Values, const int Values_High)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCElevationPlatformServicesService*>(Values, Values_High) { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCElevationPlatformServices : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	TTMSFNCElevationPlatformServicesList* FServicesList;
	static TTMSFNCElevationPlatformServices* FCurrent;
	static bool FCurrentReleased;
	__classmethod void __fastcall ReleaseCurrent();
	
public:
	__fastcall TTMSFNCElevationPlatformServices();
	__fastcall virtual ~TTMSFNCElevationPlatformServices();
	void __fastcall AddPlatformService(const GUID &AServiceGUID, const System::_di_IInterface AService);
	void __fastcall RemovePlatformService(const GUID &AServiceGUID);
	System::_di_IInterface __fastcall GetPlatformService(const GUID &AServiceGUID);
	bool __fastcall SupportsPlatformService(const GUID &AServiceGUID)/* overload */;
	bool __fastcall SupportsPlatformService(const GUID &AServiceGUID, System::_di_IInterface &AService)/* overload */;
	__classmethod TTMSFNCElevationPlatformServices* __fastcall Current();
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
#define TTMSFNCElevationDocURL u"https://download.tmssoftware.com/doc/tmsfncmaps/components"\
	u"/ttmsfncmaps/#ttmsfncelevation"
#define TTMSFNCElevationTipsURL u"https://www.tmssoftware.com/site/tmsfncmaps.asp?s=faq"
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x0);
static constexpr System::Int8 BLD_VER = System::Int8(0x1);
}	/* namespace Tmsfncelevation */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCELEVATION)
using namespace Fmx::Tmsfncelevation;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncelevationHPP
