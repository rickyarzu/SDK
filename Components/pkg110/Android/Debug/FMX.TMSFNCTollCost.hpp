// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCTollCost.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfnctollcostHPP
#define Fmx_TmsfnctollcostHPP

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
namespace Tmsfnctollcost
{
//-- forward type declarations -----------------------------------------------
__interface DELPHIINTERFACE ITMSFNCCustomTollCostProperties;
typedef System::DelphiInterface<ITMSFNCCustomTollCostProperties> _di_ITMSFNCCustomTollCostProperties;
__interface DELPHIINTERFACE ITMSFNCCustomTollCostInstance;
typedef System::DelphiInterface<ITMSFNCCustomTollCostInstance> _di_ITMSFNCCustomTollCostInstance;
__interface DELPHIINTERFACE ITMSFNCCustomTollCost;
typedef System::DelphiInterface<ITMSFNCCustomTollCost> _di_ITMSFNCCustomTollCost;
__interface DELPHIINTERFACE ITMSFNCTollCostService;
typedef System::DelphiInterface<ITMSFNCTollCostService> _di_ITMSFNCTollCostService;
__interface DELPHIINTERFACE ITMSFNCTollCostServiceHere;
typedef System::DelphiInterface<ITMSFNCTollCostServiceHere> _di_ITMSFNCTollCostServiceHere;
__interface DELPHIINTERFACE ITMSFNCTollCostServicePTVxServer;
typedef System::DelphiInterface<ITMSFNCTollCostServicePTVxServer> _di_ITMSFNCTollCostServicePTVxServer;
class DELPHICLASS TTMSFNCTollCostStep;
class DELPHICLASS TTMSFNCTollCostSteps;
class DELPHICLASS TTMSFNCTollCostSystem;
class DELPHICLASS TTMSFNCTollCostSystems;
class DELPHICLASS TTMSFNCTollCostItem;
class DELPHICLASS TTMSFNCTollCostItems;
class DELPHICLASS TTMSFNCTollCostRequest;
class DELPHICLASS TTMSFNCTollCostRequests;
__interface DELPHIINTERFACE TTMSFNCTollCostGetTollCostCallback;
typedef System::DelphiInterface<TTMSFNCTollCostGetTollCostCallback> _di_TTMSFNCTollCostGetTollCostCallback;
__interface DELPHIINTERFACE TTMSFNCTollCostGetTollCostResultCallback;
typedef System::DelphiInterface<TTMSFNCTollCostGetTollCostResultCallback> _di_TTMSFNCTollCostGetTollCostResultCallback;
class DELPHICLASS TTMSFNCTollCostCallBackWrapper;
class DELPHICLASS TTMSFNCTollCostResultCallBackWrapper;
class DELPHICLASS TTMSFNCCustomTollCost;
class DELPHICLASS TTMSFNCCustomTollCostInterfacedObject;
class DELPHICLASS TTMSFNCTollCostList;
class DELPHICLASS TTMSFNCTollCostFactoryService;
class DELPHICLASS TTMSFNCTollCost;
class DELPHICLASS TTMSFNCTollCostPlatformServicesService;
class DELPHICLASS TTMSFNCTollCostPlatformServicesList;
class DELPHICLASS TTMSFNCTollCostPlatformServices;
//-- type declarations -------------------------------------------------------
enum DECLSPEC_DENUM TTMSFNCTollCostTravelMode : unsigned char { ttCar, ttDeliveryVan, ttLightTruck, ttHeavyTruck };

enum DECLSPEC_DENUM TTMSFNCTollCostCurrency : unsigned char { tcCAD, tcEUR, tcBRL, tcGBP, tcUSD };

__interface  INTERFACE_UUID("{7E76D35C-397F-4D05-AAAB-3CE44C082FE7}") ITMSFNCCustomTollCostProperties  : public System::IInterface 
{
	virtual System::UnicodeString __fastcall GetAPIKey() = 0 ;
	virtual System::UnicodeString __fastcall GetServiceEndPoint() = 0 ;
};

__interface  INTERFACE_UUID("{BB0799B8-FE15-4E10-AC1D-7490C887DB7C}") ITMSFNCCustomTollCostInstance  : public System::IInterface 
{
	virtual void __fastcall SetTollCostProperties(const _di_ITMSFNCCustomTollCostProperties Value) = 0 ;
};

__interface  INTERFACE_UUID("{EDE79341-AAA4-4E89-B471-47365BDC999D}") ITMSFNCCustomTollCost  : public System::IInterface 
{
	virtual System::UnicodeString __fastcall GetIdentifier() = 0 ;
	virtual Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestMethod __fastcall GetRequestMethod() = 0 ;
	virtual System::UnicodeString __fastcall GetHost() = 0 ;
	virtual System::UnicodeString __fastcall GetPath() = 0 ;
	virtual System::UnicodeString __fastcall GetQuery(double AOriginLatitude, double AOriginLongitude, double ADestinationLatitude, double ADestinationLongitude, TTMSFNCTollCostTravelMode ATravelMode = (TTMSFNCTollCostTravelMode)(0x0), Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRecArray AWayPoints = Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRecArray(), System::UnicodeString ALocale = System::UnicodeString(), TTMSFNCTollCostCurrency ACurrency = (TTMSFNCTollCostCurrency)(0x1)) = 0 ;
	virtual System::UnicodeString __fastcall GetPostData(double AOriginLatitude, double AOriginLongitude, double ADestinationLatitude, double ADestinationLongitude, TTMSFNCTollCostTravelMode ATravelMode = (TTMSFNCTollCostTravelMode)(0x0), Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRecArray AWayPoints = Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRecArray(), System::UnicodeString ALocale = System::UnicodeString(), TTMSFNCTollCostCurrency ACurrency = (TTMSFNCTollCostCurrency)(0x1)) = 0 ;
	virtual void __fastcall AddHeaders(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestHeaders* AHeaders) = 0 ;
	virtual void __fastcall Parse(TTMSFNCTollCostRequest* ARequest, System::UnicodeString ARequestResult) = 0 ;
	virtual bool __fastcall IsValid() = 0 ;
	virtual void __fastcall DestroyTollCost() = 0 ;
};

__interface  INTERFACE_UUID("{889FC829-1504-47FA-B2FD-13F51E9A6932}") ITMSFNCTollCostService  : public System::IInterface 
{
	virtual _di_ITMSFNCCustomTollCost __fastcall CreateTollCost() = 0 ;
	virtual void __fastcall DestroyTollCost(_di_ITMSFNCCustomTollCost ATollCost) = 0 ;
};

__interface  INTERFACE_UUID("{CBA17FC0-8DC5-44E1-BB14-0D82B44435AE}") ITMSFNCTollCostServiceHere  : public ITMSFNCTollCostService 
{
	
};

__interface  INTERFACE_UUID("{53412D7E-9D1B-418A-A234-D9F658D9F37A}") ITMSFNCTollCostServicePTVxServer  : public ITMSFNCTollCostService 
{
	
};

enum DECLSPEC_DENUM TTMSFNCTollCostService : unsigned char { tcsHere, tcsPTVxServer };

class PASCALIMPLEMENTATION TTMSFNCTollCostStep : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	TTMSFNCTollCostItem* FOwner;
	bool FDataBoolean;
	System::UnicodeString FDataString;
	System::TObject* FDataObject;
	NativeInt FDataInteger;
	void *FDataPointer;
	double FDistance;
	double FDuration;
	Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinate* FLocation;
	System::UnicodeString FInstructions;
	
public:
	__fastcall virtual TTMSFNCTollCostStep(System::Classes::TCollection* Collection);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual ~TTMSFNCTollCostStep();
	__property void * DataPointer = {read=FDataPointer, write=FDataPointer};
	__property bool DataBoolean = {read=FDataBoolean, write=FDataBoolean, nodefault};
	__property System::TObject* DataObject = {read=FDataObject, write=FDataObject};
	__property System::UnicodeString DataString = {read=FDataString, write=FDataString};
	__property NativeInt DataInteger = {read=FDataInteger, write=FDataInteger, nodefault};
	
__published:
	__property Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinate* Location = {read=FLocation, write=FLocation};
	__property double Distance = {read=FDistance, write=FDistance};
	__property double Duration = {read=FDuration, write=FDuration};
	__property System::UnicodeString Instructions = {read=FInstructions, write=FInstructions};
};


#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCTollCostSteps : public Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCTollCostStep*>
{
	typedef Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCTollCostStep*> inherited;
	
public:
	TTMSFNCTollCostStep* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCTollCostItem* FOwner;
	HIDESBASE TTMSFNCTollCostStep* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCTollCostStep* const Value);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall CreateItemClass();
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	
public:
	__fastcall virtual TTMSFNCTollCostSteps(TTMSFNCTollCostItem* AOwner);
	__property TTMSFNCTollCostStep* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	HIDESBASE TTMSFNCTollCostStep* __fastcall Add();
	HIDESBASE TTMSFNCTollCostStep* __fastcall Insert(int Index);
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCTollCostSteps() { }
	
};

#pragma pack(pop)

class PASCALIMPLEMENTATION TTMSFNCTollCostSystem : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	TTMSFNCTollCostItem* FOwner;
	bool FDataBoolean;
	System::UnicodeString FDataString;
	System::TObject* FDataObject;
	NativeInt FDataInteger;
	void *FDataPointer;
	int FID;
	System::UnicodeString FSummary;
	System::UnicodeString FLanguage;
	double FCost;
	System::UnicodeString FCurrency;
	
public:
	__fastcall virtual TTMSFNCTollCostSystem(System::Classes::TCollection* Collection);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual ~TTMSFNCTollCostSystem();
	__property void * DataPointer = {read=FDataPointer, write=FDataPointer};
	__property bool DataBoolean = {read=FDataBoolean, write=FDataBoolean, nodefault};
	__property System::TObject* DataObject = {read=FDataObject, write=FDataObject};
	__property System::UnicodeString DataString = {read=FDataString, write=FDataString};
	__property NativeInt DataInteger = {read=FDataInteger, write=FDataInteger, nodefault};
	
__published:
	__property int ID = {read=FID, write=FID, nodefault};
	__property System::UnicodeString Summary = {read=FSummary, write=FSummary};
	__property System::UnicodeString Language = {read=FLanguage, write=FLanguage};
	__property double Cost = {read=FCost, write=FCost};
	__property System::UnicodeString Currency = {read=FCurrency, write=FCurrency};
};


#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCTollCostSystems : public Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCTollCostStep*>
{
	typedef Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCTollCostStep*> inherited;
	
public:
	TTMSFNCTollCostSystem* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCTollCostItem* FOwner;
	HIDESBASE TTMSFNCTollCostSystem* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCTollCostSystem* const Value);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall CreateItemClass();
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	
public:
	__fastcall virtual TTMSFNCTollCostSystems(TTMSFNCTollCostItem* AOwner);
	__property TTMSFNCTollCostSystem* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	HIDESBASE TTMSFNCTollCostSystem* __fastcall Add();
	HIDESBASE TTMSFNCTollCostSystem* __fastcall Insert(int Index);
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCTollCostSystems() { }
	
};

#pragma pack(pop)

class PASCALIMPLEMENTATION TTMSFNCTollCostItem : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	TTMSFNCCustomTollCost* FOwner;
	bool FDataBoolean;
	System::UnicodeString FDataString;
	System::TObject* FDataObject;
	NativeInt FDataInteger;
	void *FDataPointer;
	Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinates* FCoordinates;
	double FDistance;
	double FDuration;
	TTMSFNCTollCostSteps* FSteps;
	double FTotalCost;
	System::UnicodeString FCurrency;
	TTMSFNCTollCostSystems* FSystems;
	void __fastcall SetCoordinates(Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinates* const Value);
	Fmx::Tmsfncmapscommontypes::TTMSFNCMapsBounds* __fastcall GetBounds();
	void __fastcall SetSteps(TTMSFNCTollCostSteps* const Value);
	void __fastcall SetSystems(TTMSFNCTollCostSystems* const Value);
	
public:
	__fastcall virtual TTMSFNCTollCostItem(System::Classes::TCollection* Collection);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual ~TTMSFNCTollCostItem();
	__property void * DataPointer = {read=FDataPointer, write=FDataPointer};
	__property bool DataBoolean = {read=FDataBoolean, write=FDataBoolean, nodefault};
	__property System::TObject* DataObject = {read=FDataObject, write=FDataObject};
	__property System::UnicodeString DataString = {read=FDataString, write=FDataString};
	__property NativeInt DataInteger = {read=FDataInteger, write=FDataInteger, nodefault};
	__property Fmx::Tmsfncmapscommontypes::TTMSFNCMapsBounds* Bounds = {read=GetBounds};
	
__published:
	__property Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinates* Coordinates = {read=FCoordinates, write=SetCoordinates};
	__property double Distance = {read=FDistance, write=FDistance};
	__property double Duration = {read=FDuration, write=FDuration};
	__property TTMSFNCTollCostSteps* Steps = {read=FSteps, write=SetSteps};
	__property TTMSFNCTollCostSystems* TollSystems = {read=FSystems, write=SetSystems};
	__property double TotalCost = {read=FTotalCost, write=FTotalCost};
	__property System::UnicodeString Currency = {read=FCurrency, write=FCurrency};
};


#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCTollCostItems : public Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCTollCostItem*>
{
	typedef Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCTollCostItem*> inherited;
	
public:
	TTMSFNCTollCostItem* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCCustomTollCost* FOwner;
	HIDESBASE TTMSFNCTollCostItem* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCTollCostItem* const Value);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall CreateItemClass();
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	
public:
	__fastcall virtual TTMSFNCTollCostItems(TTMSFNCCustomTollCost* AOwner);
	__property TTMSFNCTollCostItem* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	HIDESBASE TTMSFNCTollCostItem* __fastcall Add();
	HIDESBASE TTMSFNCTollCostItem* __fastcall Insert(int Index);
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCTollCostItems() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCTollCostRequest : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	TTMSFNCCustomTollCost* FOwner;
	void *FDataPointer;
	bool FDataBoolean;
	System::UnicodeString FDataString;
	System::TObject* FDataObject;
	NativeInt FDataInteger;
	TTMSFNCTollCostItems* FItems;
	System::UnicodeString FID;
	TTMSFNCTollCostTravelMode FTraveLmode;
	System::UnicodeString FStatus;
	System::UnicodeString FErrorMessage;
	void __fastcall SetItems(TTMSFNCTollCostItems* const Value);
	void __fastcall SetTravelMode(const TTMSFNCTollCostTravelMode Value);
	void __fastcall SetErrorMessage(const System::UnicodeString Value);
	void __fastcall SetStatus(const System::UnicodeString Value);
	
public:
	__fastcall virtual TTMSFNCTollCostRequest(System::Classes::TCollection* Collection);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual ~TTMSFNCTollCostRequest();
	__property void * DataPointer = {read=FDataPointer, write=FDataPointer};
	__property bool DataBoolean = {read=FDataBoolean, write=FDataBoolean, nodefault};
	__property System::TObject* DataObject = {read=FDataObject, write=FDataObject};
	__property System::UnicodeString DataString = {read=FDataString, write=FDataString};
	__property NativeInt DataInteger = {read=FDataInteger, write=FDataInteger, nodefault};
	
__published:
	__property System::UnicodeString ID = {read=FID};
	__property TTMSFNCTollCostItems* Items = {read=FItems, write=SetItems};
	__property TTMSFNCTollCostTravelMode TravelMode = {read=FTraveLmode, write=SetTravelMode, nodefault};
	__property System::UnicodeString Status = {read=FStatus, write=SetStatus};
	__property System::UnicodeString ErrorMessage = {read=FErrorMessage, write=SetErrorMessage};
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCTollCostRequests : public Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCTollCostRequest*>
{
	typedef Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCTollCostRequest*> inherited;
	
public:
	TTMSFNCTollCostRequest* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCCustomTollCost* FOwner;
	HIDESBASE TTMSFNCTollCostRequest* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCTollCostRequest* const Value);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall CreateItemClass();
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	
public:
	__fastcall virtual TTMSFNCTollCostRequests(TTMSFNCCustomTollCost* AOwner);
	__property TTMSFNCTollCostRequest* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	HIDESBASE TTMSFNCTollCostRequest* __fastcall Add();
	HIDESBASE TTMSFNCTollCostRequest* __fastcall Insert(int Index);
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCTollCostRequests() { }
	
};

#pragma pack(pop)

__interface TTMSFNCTollCostGetTollCostCallback  : public System::IInterface 
{
	virtual void __fastcall Invoke(TTMSFNCTollCostRequest* const ARequest, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult) = 0 ;
};

typedef void __fastcall (__closure *TTMSFNCTollCostGetTollCostEvent)(System::TObject* Sender, TTMSFNCTollCostRequest* const ARequest, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

__interface TTMSFNCTollCostGetTollCostResultCallback  : public System::IInterface 
{
	virtual void __fastcall Invoke(TTMSFNCTollCostRequest* const AResult) = 0 ;
};

typedef void __fastcall (__closure *TTMSFNCTollCostGetTollCostResultEvent)(System::TObject* Sender, TTMSFNCTollCostRequest* const AResult);

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCTollCostCallBackWrapper : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	_di_TTMSFNCTollCostGetTollCostCallback FCallback;
	
public:
	__fastcall TTMSFNCTollCostCallBackWrapper(_di_TTMSFNCTollCostGetTollCostCallback ACallback);
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
	/* TObject.Destroy */ inline __fastcall virtual ~TTMSFNCTollCostCallBackWrapper() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCTollCostResultCallBackWrapper : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	_di_TTMSFNCTollCostGetTollCostResultCallback FCallback;
	
public:
	__fastcall TTMSFNCTollCostResultCallBackWrapper(_di_TTMSFNCTollCostGetTollCostResultCallback ACallback);
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
	/* TObject.Destroy */ inline __fastcall virtual ~TTMSFNCTollCostResultCallBackWrapper() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCustomTollCost : public Fmx::Tmsfnccloudbase::TTMSFNCCloudBase
{
	typedef Fmx::Tmsfnccloudbase::TTMSFNCCloudBase inherited;
	
private:
	_di_ITMSFNCCustomTollCost FTollCost;
	_di_ITMSFNCCustomTollCostInstance FTollCostInstance;
	_di_ITMSFNCCustomTollCostProperties FTollCostProperties;
	TTMSFNCTollCostService FService;
	System::UnicodeString FAPIKey;
	TTMSFNCTollCostRequests* FTollCostRequests;
	TTMSFNCTollCostGetTollCostEvent FOnGetTollCost;
	TTMSFNCTollCostGetTollCostEvent FOnGetTollCostInternal;
	System::UnicodeString FToken;
	System::UnicodeString FUserName;
	System::UnicodeString FServiceEndPoint;
	TTMSFNCTollCostGetTollCostResultEvent FOnGetTollCostResultInternal;
	TTMSFNCTollCostGetTollCostResultEvent FOnGetTollCostResult;
	HIDESBASE void __fastcall SetService(const TTMSFNCTollCostService Value);
	void __fastcall SetAPIKey(const System::UnicodeString Value);
	void __fastcall SetTollCostRequests(TTMSFNCTollCostRequests* const Value);
	void __fastcall SetFToken(const System::UnicodeString Value);
	void __fastcall SetUserName(const System::UnicodeString Value);
	
protected:
	void __fastcall DoRequestGetTollCost(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoGetTollCost(TTMSFNCTollCostRequest* const ARequest, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	__property TTMSFNCTollCostGetTollCostEvent OnGetTollCost = {read=FOnGetTollCost, write=FOnGetTollCost};
	__property TTMSFNCTollCostGetTollCostEvent OnGetTollCostInternal = {read=FOnGetTollCostInternal, write=FOnGetTollCostInternal};
	__property TTMSFNCTollCostGetTollCostResultEvent OnGetTollCostResult = {read=FOnGetTollCostResult, write=FOnGetTollCostResult};
	__property TTMSFNCTollCostGetTollCostResultEvent OnGetTollCostResultInternal = {read=FOnGetTollCostResultInternal, write=FOnGetTollCostResultInternal};
	virtual void __fastcall InitializeTollCost();
	virtual NativeUInt __fastcall GetInstance();
	TTMSFNCTollCostRequests* __fastcall GetTollCostRequests();
	bool __fastcall TollCostReady();
	System::UnicodeString __fastcall GetAPIKey();
	System::UnicodeString __fastcall GetServiceEndPoint();
	int __fastcall GetVersionNr();
	virtual System::UnicodeString __fastcall GetDocURL();
	virtual System::UnicodeString __fastcall GetTipsURL();
	_di_ITMSFNCCustomTollCost __fastcall TollCost();
	virtual System::UnicodeString __fastcall GetVersion();
	__property TTMSFNCTollCostService Service = {read=FService, write=SetService, default=0};
	__property System::UnicodeString ServiceEndPoint = {read=FServiceEndPoint, write=FServiceEndPoint};
	__property System::UnicodeString APIKey = {read=FAPIKey, write=SetAPIKey};
	__property System::UnicodeString UserName = {read=FUserName, write=SetUserName};
	__property System::UnicodeString Token = {read=FToken, write=SetFToken};
	__property TTMSFNCTollCostRequests* TollCostRequests = {read=FTollCostRequests, write=SetTollCostRequests};
	__property _di_ITMSFNCCustomTollCost TollCostInstance = {read=FTollCost};
	__property _di_ITMSFNCCustomTollCostProperties TollCostProperties = {read=FTollCostProperties};
	virtual void __fastcall GetTollCostInt(double AOriginLatitude, double AOriginLongitude, double ADestinationLatitude, double ADestinationLongitude, TTMSFNCTollCostTravelMode ATravelMode = (TTMSFNCTollCostTravelMode)(0x0), Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRecArray AWayPoints = Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRecArray(), System::UnicodeString ALocale = System::UnicodeString(), Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode AMode = (Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode)(0x0), TTMSFNCTollCostCurrency ACurrency = (TTMSFNCTollCostCurrency)(0x1), System::UnicodeString AID = System::UnicodeString(), void * ADataPointer = (void *)(0x0), _di_TTMSFNCTollCostGetTollCostCallback ACallback = _di_TTMSFNCTollCostGetTollCostCallback(), _di_TTMSFNCTollCostGetTollCostResultCallback ACallback2 = _di_TTMSFNCTollCostGetTollCostResultCallback())/* overload */;
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual TTMSFNCCustomTollCost(System::Classes::TComponent* AOwner)/* overload */;
	__fastcall virtual ~TTMSFNCCustomTollCost();
	virtual void __fastcall GetTollCost(const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec &AOrigin, const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec &ADestination, _di_TTMSFNCTollCostGetTollCostCallback ACallback = _di_TTMSFNCTollCostGetTollCostCallback(), System::UnicodeString AID = System::UnicodeString(), void * ADataPointer = (void *)(0x0), TTMSFNCTollCostTravelMode ATravelMode = (TTMSFNCTollCostTravelMode)(0x0), Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRecArray AWayPoints = Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRecArray(), TTMSFNCTollCostCurrency ACurrency = (TTMSFNCTollCostCurrency)(0x1), System::UnicodeString ALocale = System::UnicodeString(), Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode AMode = (Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode)(0x0));
	virtual void __fastcall GetTollCostResult(const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec &AOrigin, const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec &ADestination, _di_TTMSFNCTollCostGetTollCostResultCallback ACallback = _di_TTMSFNCTollCostGetTollCostResultCallback(), System::UnicodeString AID = System::UnicodeString(), void * ADataPointer = (void *)(0x0), TTMSFNCTollCostTravelMode ATravelMode = (TTMSFNCTollCostTravelMode)(0x0), Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRecArray AWayPoints = Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRecArray(), TTMSFNCTollCostCurrency ACurrency = (TTMSFNCTollCostCurrency)(0x1), System::UnicodeString ALocale = System::UnicodeString(), Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode AMode = (Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode)(0x0));
public:
	/* TTMSFNCCustomCloudBase.Create */ inline __fastcall virtual TTMSFNCCustomTollCost()/* overload */ : Fmx::Tmsfnccloudbase::TTMSFNCCloudBase() { }
	
private:
	void *__ITMSFNCCustomTollCostProperties;	// ITMSFNCCustomTollCostProperties 
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {7E76D35C-397F-4D05-AAAB-3CE44C082FE7}
	operator _di_ITMSFNCCustomTollCostProperties()
	{
		_di_ITMSFNCCustomTollCostProperties intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator ITMSFNCCustomTollCostProperties*(void) { return (ITMSFNCCustomTollCostProperties*)&__ITMSFNCCustomTollCostProperties; }
	#endif
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCustomTollCostInterfacedObject : public System::TInterfacedObject
{
	typedef System::TInterfacedObject inherited;
	
private:
	_di_ITMSFNCCustomTollCostProperties FTollCostProperties;
	_di_ITMSFNCCustomTollCostProperties __fastcall GetTollCostProperties();
	
protected:
	void __fastcall SetTollCostProperties(const _di_ITMSFNCCustomTollCostProperties Value);
	
public:
	__property _di_ITMSFNCCustomTollCostProperties TollCostProperties = {read=GetTollCostProperties};
	__fastcall virtual ~TTMSFNCCustomTollCostInterfacedObject();
public:
	/* TObject.Create */ inline __fastcall TTMSFNCCustomTollCostInterfacedObject() : System::TInterfacedObject() { }
	
private:
	void *__ITMSFNCCustomTollCostInstance;	// ITMSFNCCustomTollCostInstance 
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {BB0799B8-FE15-4E10-AC1D-7490C887DB7C}
	operator _di_ITMSFNCCustomTollCostInstance()
	{
		_di_ITMSFNCCustomTollCostInstance intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator ITMSFNCCustomTollCostInstance*(void) { return (ITMSFNCCustomTollCostInstance*)&__ITMSFNCCustomTollCostInstance; }
	#endif
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCTollCostList : public System::Generics::Collections::TList__1<_di_ITMSFNCCustomTollCost>
{
	typedef System::Generics::Collections::TList__1<_di_ITMSFNCCustomTollCost> inherited;
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCTollCost_ITMSFNCCustomTollCost>.Create */ inline __fastcall TTMSFNCTollCostList()/* overload */ : System::Generics::Collections::TList__1<_di_ITMSFNCCustomTollCost>() { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTollCost_ITMSFNCCustomTollCost>.Create */ inline __fastcall TTMSFNCTollCostList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<_di_ITMSFNCCustomTollCost> > AComparer)/* overload */ : System::Generics::Collections::TList__1<_di_ITMSFNCCustomTollCost>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTollCost_ITMSFNCCustomTollCost>.Create */ inline __fastcall TTMSFNCTollCostList(System::Generics::Collections::TEnumerable__1<_di_ITMSFNCCustomTollCost>* const Collection)/* overload */ : System::Generics::Collections::TList__1<_di_ITMSFNCCustomTollCost>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTollCost_ITMSFNCCustomTollCost>.Create */ inline __fastcall TTMSFNCTollCostList(const _di_ITMSFNCCustomTollCost *Values, const int Values_High)/* overload */ : System::Generics::Collections::TList__1<_di_ITMSFNCCustomTollCost>(Values, Values_High) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTollCost_ITMSFNCCustomTollCost>.Destroy */ inline __fastcall virtual ~TTMSFNCTollCostList() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCTollCostFactoryService : public System::TInterfacedObject
{
	typedef System::TInterfacedObject inherited;
	
private:
	TTMSFNCTollCostList* FTollCost;
	
protected:
	virtual _di_ITMSFNCCustomTollCost __fastcall DoCreateTollCost() = 0 ;
	_di_ITMSFNCCustomTollCost __fastcall CreateTollCost();
	void __fastcall DestroyTollCost(_di_ITMSFNCCustomTollCost ATollCost);
	
public:
	__fastcall TTMSFNCTollCostFactoryService();
	__fastcall virtual ~TTMSFNCTollCostFactoryService();
private:
	void *__ITMSFNCTollCostService;	// ITMSFNCTollCostService 
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {889FC829-1504-47FA-B2FD-13F51E9A6932}
	operator _di_ITMSFNCTollCostService()
	{
		_di_ITMSFNCTollCostService intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator ITMSFNCTollCostService*(void) { return (ITMSFNCTollCostService*)&__ITMSFNCTollCostService; }
	#endif
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCTollCost : public TTMSFNCCustomTollCost
{
	typedef TTMSFNCCustomTollCost inherited;
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	
public:
	__property TollCostInstance;
	__property TollCostProperties;
	
__published:
	__property OnGetTollCost;
	__property OnGetTollCostResult;
	__property APIKey = {default=0};
	__property ServiceEndpoint = {default=0};
	__property UserName = {default=0};
	__property Token = {default=0};
	__property TollCostRequests;
	__property Service = {default=0};
	__property Version = {default=0};
public:
	/* TTMSFNCCustomTollCost.Create */ inline __fastcall virtual TTMSFNCTollCost(System::Classes::TComponent* AOwner)/* overload */ : TTMSFNCCustomTollCost(AOwner) { }
	/* TTMSFNCCustomTollCost.Destroy */ inline __fastcall virtual ~TTMSFNCTollCost() { }
	
public:
	/* TTMSFNCCustomCloudBase.Create */ inline __fastcall virtual TTMSFNCTollCost()/* overload */ : TTMSFNCCustomTollCost() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCTollCostPlatformServicesService : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	System::_di_IInterface FInterface;
	System::UnicodeString FGUID;
	
public:
	__fastcall TTMSFNCTollCostPlatformServicesService(System::UnicodeString AGUID, System::_di_IInterface AInterface);
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
	/* TObject.Destroy */ inline __fastcall virtual ~TTMSFNCTollCostPlatformServicesService() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCTollCostPlatformServicesList : public System::Generics::Collections::TObjectList__1<TTMSFNCTollCostPlatformServicesService*>
{
	typedef System::Generics::Collections::TObjectList__1<TTMSFNCTollCostPlatformServicesService*> inherited;
	
private:
	System::_di_IInterface __fastcall GetValue(System::UnicodeString AGUID);
	
public:
	bool __fastcall ContainsKey(System::UnicodeString AGUID);
	void __fastcall RemoveByGUID(System::UnicodeString AGUID);
	__property System::_di_IInterface Interfaces[System::UnicodeString AGUID] = {read=GetValue};
public:
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCTollCost_TTMSFNCTollCostPlatformServicesService>.Create */ inline __fastcall TTMSFNCTollCostPlatformServicesList()/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCTollCostPlatformServicesService*>() { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCTollCost_TTMSFNCTollCostPlatformServicesService>.Create */ inline __fastcall TTMSFNCTollCostPlatformServicesList(bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCTollCostPlatformServicesService*>(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCTollCost_TTMSFNCTollCostPlatformServicesService>.Create */ inline __fastcall TTMSFNCTollCostPlatformServicesList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCTollCostPlatformServicesService*> > AComparer, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCTollCostPlatformServicesService*>(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCTollCost_TTMSFNCTollCostPlatformServicesService>.Create */ inline __fastcall TTMSFNCTollCostPlatformServicesList(System::Generics::Collections::TEnumerable__1<TTMSFNCTollCostPlatformServicesService*>* const Collection, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCTollCostPlatformServicesService*>(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCTollCost_TTMSFNCTollCostPlatformServicesService>.Destroy */ inline __fastcall virtual ~TTMSFNCTollCostPlatformServicesList() { }
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCTollCost_TTMSFNCTollCostPlatformServicesService>.Create */ inline __fastcall TTMSFNCTollCostPlatformServicesList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCTollCostPlatformServicesService*> > AComparer)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCTollCostPlatformServicesService*>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTollCost_TTMSFNCTollCostPlatformServicesService>.Create */ inline __fastcall TTMSFNCTollCostPlatformServicesList(System::Generics::Collections::TEnumerable__1<TTMSFNCTollCostPlatformServicesService*>* const Collection)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCTollCostPlatformServicesService*>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTollCost_TTMSFNCTollCostPlatformServicesService>.Create */ inline __fastcall TTMSFNCTollCostPlatformServicesList(TTMSFNCTollCostPlatformServicesService* const *Values, const int Values_High)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCTollCostPlatformServicesService*>(Values, Values_High) { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCTollCostPlatformServices : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	TTMSFNCTollCostPlatformServicesList* FServicesList;
	static TTMSFNCTollCostPlatformServices* FCurrent;
	static bool FCurrentReleased;
	__classmethod void __fastcall ReleaseCurrent();
	
public:
	__fastcall TTMSFNCTollCostPlatformServices();
	__fastcall virtual ~TTMSFNCTollCostPlatformServices();
	void __fastcall AddPlatformService(const GUID &AServiceGUID, const System::_di_IInterface AService);
	void __fastcall RemovePlatformService(const GUID &AServiceGUID);
	System::_di_IInterface __fastcall GetPlatformService(const GUID &AServiceGUID);
	bool __fastcall SupportsPlatformService(const GUID &AServiceGUID)/* overload */;
	bool __fastcall SupportsPlatformService(const GUID &AServiceGUID, System::_di_IInterface &AService)/* overload */;
	__classmethod TTMSFNCTollCostPlatformServices* __fastcall Current();
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
#define TTMSFNCTollCostDocURL u"https://download.tmssoftware.com/doc/tmsfncmaps/components"\
	u"/ttmsfncmaps/#ttmsfnctollcost"
#define TTMSFNCTollCostTipsURL u"https://www.tmssoftware.com/site/tmsfncmaps.asp?s=faq"
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x0);
static constexpr System::Int8 BLD_VER = System::Int8(0x0);
}	/* namespace Tmsfnctollcost */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCTOLLCOST)
using namespace Fmx::Tmsfnctollcost;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfnctollcostHPP
