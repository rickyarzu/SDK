// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCCloudTranslation.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfnccloudtranslationHPP
#define Fmx_TmsfnccloudtranslationHPP

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
#include <FMX.TMSFNCCloudBase.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>
#include <FMX.TMSFNCCustomComponent.hpp>
#include <FMX.Controls.hpp>
#include <FMX.Types.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfnccloudtranslation
{
//-- forward type declarations -----------------------------------------------
__interface DELPHIINTERFACE ITMSFNCCustomCloudTranslationProperties;
typedef System::DelphiInterface<ITMSFNCCustomCloudTranslationProperties> _di_ITMSFNCCustomCloudTranslationProperties;
__interface DELPHIINTERFACE ITMSFNCCustomCloudTranslationInstance;
typedef System::DelphiInterface<ITMSFNCCustomCloudTranslationInstance> _di_ITMSFNCCustomCloudTranslationInstance;
class DELPHICLASS TTMSFNCCloudTranslationData;
__interface DELPHIINTERFACE TTMSFNCCloudTranslationRequestTokenCallback;
typedef System::DelphiInterface<TTMSFNCCloudTranslationRequestTokenCallback> _di_TTMSFNCCloudTranslationRequestTokenCallback;
__interface DELPHIINTERFACE ITMSFNCCustomCloudTranslation;
typedef System::DelphiInterface<ITMSFNCCustomCloudTranslation> _di_ITMSFNCCustomCloudTranslation;
__interface DELPHIINTERFACE ITMSFNCCloudTranslationService;
typedef System::DelphiInterface<ITMSFNCCloudTranslationService> _di_ITMSFNCCloudTranslationService;
__interface DELPHIINTERFACE ITMSFNCCloudTranslationServiceGoogle;
typedef System::DelphiInterface<ITMSFNCCloudTranslationServiceGoogle> _di_ITMSFNCCloudTranslationServiceGoogle;
__interface DELPHIINTERFACE ITMSFNCCloudTranslationServiceMicrosoft;
typedef System::DelphiInterface<ITMSFNCCloudTranslationServiceMicrosoft> _di_ITMSFNCCloudTranslationServiceMicrosoft;
__interface DELPHIINTERFACE ITMSFNCCloudTranslationServiceIBM;
typedef System::DelphiInterface<ITMSFNCCloudTranslationServiceIBM> _di_ITMSFNCCloudTranslationServiceIBM;
__interface DELPHIINTERFACE ITMSFNCCloudTranslationServiceDeepL;
typedef System::DelphiInterface<ITMSFNCCloudTranslationServiceDeepL> _di_ITMSFNCCloudTranslationServiceDeepL;
class DELPHICLASS TTMSFNCCloudTranslationDetection;
class DELPHICLASS TTMSFNCCloudTranslationDetections;
class DELPHICLASS TTMSFNCCloudTranslationTranslation;
class DELPHICLASS TTMSFNCCloudTranslationTranslations;
class DELPHICLASS TTMSFNCCloudTranslationRequest;
class DELPHICLASS TTMSFNCCloudTranslationRequests;
__interface DELPHIINTERFACE TTMSFNCCloudTranslationGetSupportedLanguagesCallback;
typedef System::DelphiInterface<TTMSFNCCloudTranslationGetSupportedLanguagesCallback> _di_TTMSFNCCloudTranslationGetSupportedLanguagesCallback;
__interface DELPHIINTERFACE TTMSFNCCloudTranslationTranslateCallback;
typedef System::DelphiInterface<TTMSFNCCloudTranslationTranslateCallback> _di_TTMSFNCCloudTranslationTranslateCallback;
__interface DELPHIINTERFACE TTMSFNCCloudTranslationDetectCallback;
typedef System::DelphiInterface<TTMSFNCCloudTranslationDetectCallback> _di_TTMSFNCCloudTranslationDetectCallback;
class DELPHICLASS TTMSFNCCloudTranslationTranslateCallbackWrapper;
class DELPHICLASS TTMSFNCCloudTranslationDetectCallbackWrapper;
class DELPHICLASS TTMSFNCCloudTranslationGetSupportedLanguagesCallbackWrapper;
class DELPHICLASS TTMSFNCCloudTranslationQueueItem;
class DELPHICLASS TTMSFNCCloudTranslationQueueList;
class DELPHICLASS TTMSFNCCustomCloudTranslation;
class DELPHICLASS TTMSFNCCustomCloudTranslationInterfacedObject;
class DELPHICLASS TTMSFNCCloudTranslationList;
class DELPHICLASS TTMSFNCCloudTranslationFactoryService;
class DELPHICLASS TTMSFNCCloudTranslation;
class DELPHICLASS TTMSFNCCloudTranslationPlatformServicesService;
class DELPHICLASS TTMSFNCCloudTranslationPlatformServicesList;
class DELPHICLASS TTMSFNCCloudTranslationPlatformServices;
//-- type declarations -------------------------------------------------------
__interface  INTERFACE_UUID("{6D344230-E552-4C05-99D9-481F07DC915B}") ITMSFNCCustomCloudTranslationProperties  : public System::IInterface 
{
	virtual System::UnicodeString __fastcall GetAPIKey() = 0 ;
	virtual System::UnicodeString __fastcall GetServiceEndPoint() = 0 ;
	virtual System::UnicodeString __fastcall GetServiceRegion() = 0 ;
};

__interface  INTERFACE_UUID("{DD56FEFE-025B-4B03-BFF6-1659603220FD}") ITMSFNCCustomCloudTranslationInstance  : public System::IInterface 
{
	virtual void __fastcall SetTranslationProperties(const _di_ITMSFNCCustomCloudTranslationProperties Value) = 0 ;
};

class PASCALIMPLEMENTATION TTMSFNCCloudTranslationData : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	System::Classes::TStringList* FText;
	
public:
	__fastcall TTMSFNCCloudTranslationData();
	__fastcall virtual ~TTMSFNCCloudTranslationData();
	__property System::Classes::TStringList* Text = {read=FText};
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


__interface TTMSFNCCloudTranslationRequestTokenCallback  : public System::IInterface 
{
	virtual void __fastcall Invoke(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult) = 0 ;
};

__interface  INTERFACE_UUID("{E9C3397B-E6B9-4A8A-84BC-DF0AB911F27D}") ITMSFNCCustomCloudTranslation  : public System::IInterface 
{
	virtual bool __fastcall NeedsToken() = 0 ;
	virtual System::UnicodeString __fastcall GetIdentifier() = 0 ;
	virtual System::UnicodeString __fastcall GetHost() = 0 ;
	virtual Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestMethod __fastcall GetTranslateRequestMethod() = 0 ;
	virtual System::UnicodeString __fastcall GetTranslatePath(System::UnicodeString ALanguage) = 0 ;
	virtual System::UnicodeString __fastcall GetTranslateQuery(System::UnicodeString ALanguage) = 0 ;
	virtual Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestMethod __fastcall GetDetectRequestMethod() = 0 ;
	virtual System::UnicodeString __fastcall GetDetectPath() = 0 ;
	virtual System::UnicodeString __fastcall GetDetectQuery() = 0 ;
	virtual void __fastcall RequestToken(_di_TTMSFNCCloudTranslationRequestTokenCallback ACallback) = 0 ;
	virtual System::UnicodeString __fastcall GetDetectPostData(System::Classes::TStringList* AText, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestPostDataBuilder* PostDataBuilder) = 0 ;
	virtual void __fastcall ParseDetect(TTMSFNCCloudTranslationRequest* ARequest, TTMSFNCCloudTranslationData* AOriginalData, System::UnicodeString ARequestResult) = 0 ;
	virtual void __fastcall AddDetectHeaders(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestHeaders* AHeaders) = 0 ;
	virtual System::UnicodeString __fastcall GetTranslatePostData(System::Classes::TStringList* AText, System::UnicodeString ALanguage, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestPostDataBuilder* PostDataBuilder) = 0 ;
	virtual void __fastcall ParseTranslate(TTMSFNCCloudTranslationRequest* ARequest, TTMSFNCCloudTranslationData* AOriginalData, System::UnicodeString ARequestResult) = 0 ;
	virtual void __fastcall AddTranslateHeaders(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestHeaders* AHeaders) = 0 ;
	virtual Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestMethod __fastcall GetSupportedLanguagesRequestMethod() = 0 ;
	virtual System::UnicodeString __fastcall GetSupportedLanguagesPath(System::UnicodeString ALanguage) = 0 ;
	virtual System::UnicodeString __fastcall GetSupportedLanguagesQuery(System::UnicodeString ALanguage) = 0 ;
	virtual void __fastcall ParseSupportedLanguages(System::Classes::TStringList* ASupportedLanguages, System::UnicodeString ARequestResult) = 0 ;
	virtual void __fastcall AddSupportedLanguagesHeaders(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestHeaders* AHeaders) = 0 ;
	virtual bool __fastcall IsValid() = 0 ;
};

__interface  INTERFACE_UUID("{6DD03C2B-D802-4444-A0DF-04992380C53F}") ITMSFNCCloudTranslationService  : public System::IInterface 
{
	virtual _di_ITMSFNCCustomCloudTranslation __fastcall CreateTranslation() = 0 ;
	virtual void __fastcall DestroyTranslation() = 0 ;
};

__interface  INTERFACE_UUID("{3370BE7F-B1B0-4FFF-8456-48467A73919E}") ITMSFNCCloudTranslationServiceGoogle  : public ITMSFNCCloudTranslationService 
{
	
};

__interface  INTERFACE_UUID("{1D7CA1E5-7DA4-478B-8855-56A4C5E9E918}") ITMSFNCCloudTranslationServiceMicrosoft  : public ITMSFNCCloudTranslationService 
{
	
};

__interface  INTERFACE_UUID("{62669027-0AED-406E-971E-6744E88D35C4}") ITMSFNCCloudTranslationServiceIBM  : public ITMSFNCCloudTranslationService 
{
	
};

__interface  INTERFACE_UUID("{5720A6C4-CD24-4E8D-B4E6-29815C09D525}") ITMSFNCCloudTranslationServiceDeepL  : public ITMSFNCCloudTranslationService 
{
	
};

enum DECLSPEC_DENUM TTMSFNCCloudTranslationService : unsigned char { tsGoogle, tsMicrosoft, tsIBM, tsDeepL };

class PASCALIMPLEMENTATION TTMSFNCCloudTranslationDetection : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	System::UnicodeString FSourceText;
	System::UnicodeString FSourceLang;
	
public:
	__fastcall virtual TTMSFNCCloudTranslationDetection(System::Classes::TCollection* Collection);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property System::UnicodeString SourceText = {read=FSourceText, write=FSourceText};
	__property System::UnicodeString SourceLanguage = {read=FSourceLang, write=FSourceLang};
public:
	/* TCollectionItem.Destroy */ inline __fastcall virtual ~TTMSFNCCloudTranslationDetection() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudTranslationDetections : public System::Classes::TOwnedCollection
{
	typedef System::Classes::TOwnedCollection inherited;
	
public:
	TTMSFNCCloudTranslationDetection* operator[](int Index) { return this->Items[Index]; }
	
private:
	Fmx::Tmsfnccloudbase::TTMSFNCCustomCloudBase* FOwner;
	TTMSFNCCloudTranslationDetection* __fastcall GetItems(int Index);
	void __fastcall SetItems(int Index, TTMSFNCCloudTranslationDetection* const Value);
	
protected:
	virtual void __fastcall Update(System::Classes::TCollectionItem* Item);
	
public:
	__fastcall TTMSFNCCloudTranslationDetections(TTMSFNCCustomCloudTranslation* AOwner);
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	HIDESBASE TTMSFNCCloudTranslationDetection* __fastcall Add();
	HIDESBASE TTMSFNCCloudTranslationDetection* __fastcall Insert(int Index);
	__property TTMSFNCCloudTranslationDetection* Items[int Index] = {read=GetItems, write=SetItems/*, default*/};
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCCloudTranslationDetections() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudTranslationTranslation : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	TTMSFNCCustomCloudTranslation* FOwner;
	bool FDataBoolean;
	System::UnicodeString FDataString;
	System::TObject* FDataObject;
	NativeInt FDataInteger;
	void *FDataPointer;
	System::UnicodeString FSourceText;
	System::UnicodeString FSourceLanguage;
	System::UnicodeString FTranslatedText;
	
public:
	__fastcall virtual TTMSFNCCloudTranslationTranslation(System::Classes::TCollection* Collection);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual ~TTMSFNCCloudTranslationTranslation();
	__property void * DataPointer = {read=FDataPointer, write=FDataPointer};
	__property bool DataBoolean = {read=FDataBoolean, write=FDataBoolean, nodefault};
	__property System::TObject* DataObject = {read=FDataObject, write=FDataObject};
	__property System::UnicodeString DataString = {read=FDataString, write=FDataString};
	__property NativeInt DataInteger = {read=FDataInteger, write=FDataInteger};
	
__published:
	__property System::UnicodeString SourceLanguage = {read=FSourceLanguage, write=FSourceLanguage};
	__property System::UnicodeString TranslatedText = {read=FTranslatedText, write=FTranslatedText};
	__property System::UnicodeString SourceText = {read=FSourceText, write=FSourceText};
};


class PASCALIMPLEMENTATION TTMSFNCCloudTranslationTranslations : public Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCCloudTranslationTranslation*>
{
	typedef Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCCloudTranslationTranslation*> inherited;
	
public:
	TTMSFNCCloudTranslationTranslation* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCCustomCloudTranslation* FOwner;
	HIDESBASE TTMSFNCCloudTranslationTranslation* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCCloudTranslationTranslation* const Value);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall CreateItemClass();
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	
public:
	__fastcall virtual TTMSFNCCloudTranslationTranslations(TTMSFNCCustomCloudTranslation* AOwner);
	__property TTMSFNCCloudTranslationTranslation* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	HIDESBASE TTMSFNCCloudTranslationTranslation* __fastcall Add();
	HIDESBASE TTMSFNCCloudTranslationTranslation* __fastcall Insert(int Index);
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCCloudTranslationTranslations() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudTranslationRequest : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	TTMSFNCCustomCloudTranslation* FOwner;
	bool FDataBoolean;
	System::UnicodeString FDataString;
	System::TObject* FDataObject;
	NativeInt FDataInteger;
	void *FDataPointer;
	TTMSFNCCloudTranslationTranslations* FTranslations;
	TTMSFNCCloudTranslationDetections* FDetections;
	void __fastcall SetTranslations(TTMSFNCCloudTranslationTranslations* const Value);
	void __fastcall SetDetections(TTMSFNCCloudTranslationDetections* const Value);
	
public:
	__fastcall virtual TTMSFNCCloudTranslationRequest(System::Classes::TCollection* Collection);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual ~TTMSFNCCloudTranslationRequest();
	__property void * DataPointer = {read=FDataPointer, write=FDataPointer};
	__property bool DataBoolean = {read=FDataBoolean, write=FDataBoolean, nodefault};
	__property System::TObject* DataObject = {read=FDataObject, write=FDataObject};
	__property System::UnicodeString DataString = {read=FDataString, write=FDataString};
	__property NativeInt DataInteger = {read=FDataInteger, write=FDataInteger};
	
__published:
	__property TTMSFNCCloudTranslationTranslations* Translations = {read=FTranslations, write=SetTranslations};
	__property TTMSFNCCloudTranslationDetections* Detections = {read=FDetections, write=SetDetections};
};


class PASCALIMPLEMENTATION TTMSFNCCloudTranslationRequests : public Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCCloudTranslationRequest*>
{
	typedef Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCCloudTranslationRequest*> inherited;
	
public:
	TTMSFNCCloudTranslationRequest* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCCustomCloudTranslation* FOwner;
	HIDESBASE TTMSFNCCloudTranslationRequest* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCCloudTranslationRequest* const Value);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall CreateItemClass();
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	
public:
	__fastcall virtual TTMSFNCCloudTranslationRequests(TTMSFNCCustomCloudTranslation* AOwner);
	__property TTMSFNCCloudTranslationRequest* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	HIDESBASE TTMSFNCCloudTranslationRequest* __fastcall Add();
	HIDESBASE TTMSFNCCloudTranslationRequest* __fastcall Insert(int Index);
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCCloudTranslationRequests() { }
	
};


__interface TTMSFNCCloudTranslationGetSupportedLanguagesCallback  : public System::IInterface 
{
	virtual void __fastcall Invoke(System::Classes::TStringList* const ASupportedLanguages, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult) = 0 ;
};

typedef void __fastcall (__closure *TTMSFNCCloudTranslationGetSupportedLanguagesEvent)(System::TObject* Sender, System::Classes::TStringList* const ALanguages, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

__interface TTMSFNCCloudTranslationTranslateCallback  : public System::IInterface 
{
	virtual void __fastcall Invoke(TTMSFNCCloudTranslationRequest* const ARequest, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult) = 0 ;
};

typedef void __fastcall (__closure *TTMSFNCCloudTranslationTranslateEvent)(System::TObject* Sender, TTMSFNCCloudTranslationRequest* const ARequest, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

__interface TTMSFNCCloudTranslationDetectCallback  : public System::IInterface 
{
	virtual void __fastcall Invoke(TTMSFNCCloudTranslationRequest* const ARequest, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult) = 0 ;
};

typedef void __fastcall (__closure *TTMSFNCCloudTranslationDetectEvent)(System::TObject* Sender, TTMSFNCCloudTranslationRequest* const ARequest, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

class PASCALIMPLEMENTATION TTMSFNCCloudTranslationTranslateCallbackWrapper : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	_di_TTMSFNCCloudTranslationTranslateCallback FCallback;
	
public:
	__fastcall TTMSFNCCloudTranslationTranslateCallbackWrapper(_di_TTMSFNCCloudTranslationTranslateCallback ACallback);
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
	/* TObject.Destroy */ inline __fastcall virtual ~TTMSFNCCloudTranslationTranslateCallbackWrapper() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudTranslationDetectCallbackWrapper : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	_di_TTMSFNCCloudTranslationDetectCallback FCallback;
	
public:
	__fastcall TTMSFNCCloudTranslationDetectCallbackWrapper(_di_TTMSFNCCloudTranslationDetectCallback ACallback);
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
	/* TObject.Destroy */ inline __fastcall virtual ~TTMSFNCCloudTranslationDetectCallbackWrapper() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudTranslationGetSupportedLanguagesCallbackWrapper : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	_di_TTMSFNCCloudTranslationGetSupportedLanguagesCallback FCallback;
	
public:
	__fastcall TTMSFNCCloudTranslationGetSupportedLanguagesCallbackWrapper(_di_TTMSFNCCloudTranslationGetSupportedLanguagesCallback ACallback);
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
	/* TObject.Destroy */ inline __fastcall virtual ~TTMSFNCCloudTranslationGetSupportedLanguagesCallbackWrapper() { }
	
};


enum DECLSPEC_DENUM TTMSFNCCloudTranslationQueueItemTask : unsigned char { qitTranslate, qitDetect, qitGetSupportedLanguages };

class PASCALIMPLEMENTATION TTMSFNCCloudTranslationQueueItem : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	TTMSFNCCloudTranslationQueueItemTask FTask;
	_di_TTMSFNCCloudTranslationGetSupportedLanguagesCallback FCallbackGetSupportLanguages;
	_di_TTMSFNCCloudTranslationTranslateCallback FCallbackTranslate;
	_di_TTMSFNCCloudTranslationDetectCallback FCallbackDetect;
	System::UnicodeString FLanguage;
	System::Classes::TStringList* FText;
	
public:
	__fastcall TTMSFNCCloudTranslationQueueItem(System::Classes::TStringList* AText, TTMSFNCCloudTranslationQueueItemTask ATask, _di_TTMSFNCCloudTranslationGetSupportedLanguagesCallback ACallbackGetSupportedLanguages, _di_TTMSFNCCloudTranslationTranslateCallback ACallbackTranslate, _di_TTMSFNCCloudTranslationDetectCallback ACallbackDetect, System::UnicodeString ALanguage);
	__fastcall virtual ~TTMSFNCCloudTranslationQueueItem();
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


class PASCALIMPLEMENTATION TTMSFNCCloudTranslationQueueList : public System::Generics::Collections::TObjectList__1<TTMSFNCCloudTranslationQueueItem*>
{
	typedef System::Generics::Collections::TObjectList__1<TTMSFNCCloudTranslationQueueItem*> inherited;
	
public:
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudTranslation_TTMSFNCCloudTranslationQueueItem>.Create */ inline __fastcall TTMSFNCCloudTranslationQueueList()/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudTranslationQueueItem*>() { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudTranslation_TTMSFNCCloudTranslationQueueItem>.Create */ inline __fastcall TTMSFNCCloudTranslationQueueList(bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudTranslationQueueItem*>(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudTranslation_TTMSFNCCloudTranslationQueueItem>.Create */ inline __fastcall TTMSFNCCloudTranslationQueueList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCloudTranslationQueueItem*> > AComparer, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudTranslationQueueItem*>(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudTranslation_TTMSFNCCloudTranslationQueueItem>.Create */ inline __fastcall TTMSFNCCloudTranslationQueueList(System::Generics::Collections::TEnumerable__1<TTMSFNCCloudTranslationQueueItem*>* const Collection, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudTranslationQueueItem*>(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudTranslation_TTMSFNCCloudTranslationQueueItem>.Destroy */ inline __fastcall virtual ~TTMSFNCCloudTranslationQueueList() { }
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudTranslation_TTMSFNCCloudTranslationQueueItem>.Create */ inline __fastcall TTMSFNCCloudTranslationQueueList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCloudTranslationQueueItem*> > AComparer)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudTranslationQueueItem*>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudTranslation_TTMSFNCCloudTranslationQueueItem>.Create */ inline __fastcall TTMSFNCCloudTranslationQueueList(System::Generics::Collections::TEnumerable__1<TTMSFNCCloudTranslationQueueItem*>* const Collection)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudTranslationQueueItem*>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudTranslation_TTMSFNCCloudTranslationQueueItem>.Create */ inline __fastcall TTMSFNCCloudTranslationQueueList(TTMSFNCCloudTranslationQueueItem* const *Values, const int Values_High)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudTranslationQueueItem*>(Values, Values_High) { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCustomCloudTranslation : public Fmx::Tmsfnccloudbase::TTMSFNCCloudBase
{
	typedef Fmx::Tmsfnccloudbase::TTMSFNCCloudBase inherited;
	
private:
	TTMSFNCCloudTranslationQueueList* FQueueList;
	_di_ITMSFNCCustomCloudTranslation FTranslation;
	_di_ITMSFNCCustomCloudTranslationInstance FTranslationInstance;
	_di_ITMSFNCCustomCloudTranslationProperties FTranslationProperties;
	TTMSFNCCloudTranslationService FService;
	System::UnicodeString FAPIKey;
	TTMSFNCCloudTranslationRequests* FTranslationRequests;
	TTMSFNCCloudTranslationTranslateEvent FOnTranslate;
	TTMSFNCCloudTranslationTranslateEvent FOnTranslateInternal;
	TTMSFNCCloudTranslationDetectEvent FOnDetect;
	TTMSFNCCloudTranslationDetectEvent FOnDetectInternal;
	TTMSFNCCloudTranslationGetSupportedLanguagesEvent FOnGetSupportedLanguages;
	System::Classes::TStringList* FSupportedLanguages;
	System::UnicodeString FServiceEndPoint;
	System::UnicodeString FServiceRegion;
	TTMSFNCCloudTranslationTranslations* FTranslations;
	TTMSFNCCloudTranslationDetections* FDetections;
	HIDESBASE void __fastcall SetService(const TTMSFNCCloudTranslationService Value);
	void __fastcall SetAPIKey(const System::UnicodeString Value);
	void __fastcall SetTranslationRequests(TTMSFNCCloudTranslationRequests* const Value);
	void __fastcall SetDetections(TTMSFNCCloudTranslationDetections* const Value);
	void __fastcall SetTranslations(TTMSFNCCloudTranslationTranslations* const Value);
	
protected:
	virtual void __fastcall DoRequestToken(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoRequestGetSupportedLanguages(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestTranslate(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoTranslate(TTMSFNCCloudTranslationRequest* const ARequest, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestDetect(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoDetect(TTMSFNCCloudTranslationRequest* const ARequest, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoGetSupportedLanguages(System::Classes::TStringList* const ALanguages, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	__property TTMSFNCCloudTranslationGetSupportedLanguagesEvent OnGetSupportedLanguages = {read=FOnGetSupportedLanguages, write=FOnGetSupportedLanguages};
	__property TTMSFNCCloudTranslationTranslateEvent OnTranslate = {read=FOnTranslate, write=FOnTranslate};
	__property TTMSFNCCloudTranslationTranslateEvent OnTranslateInternal = {read=FOnTranslateInternal, write=FOnTranslateInternal};
	__property TTMSFNCCloudTranslationDetectEvent OnDetect = {read=FOnDetect, write=FOnDetect};
	__property TTMSFNCCloudTranslationDetectEvent OnDetectInternal = {read=FOnDetectInternal, write=FOnDetectInternal};
	__property System::Classes::TStringList* SupportedLanguages = {read=FSupportedLanguages};
	virtual void __fastcall InitializeTranslation();
	virtual NativeUInt __fastcall GetInstance();
	TTMSFNCCloudTranslationRequests* __fastcall GetTranslationRequests();
	bool __fastcall TranslationReady();
	System::UnicodeString __fastcall GetAPIKey();
	System::UnicodeString __fastcall GetServiceEndPoint();
	System::UnicodeString __fastcall GetServiceRegion();
	int __fastcall GetVersionNr();
	virtual System::UnicodeString __fastcall GetDocURL();
	virtual System::UnicodeString __fastcall GetTipsURL();
	_di_ITMSFNCCustomCloudTranslation __fastcall Translation();
	virtual System::UnicodeString __fastcall GetVersion();
	__property TTMSFNCCloudTranslationService Service = {read=FService, write=SetService, default=0};
	__property System::UnicodeString ServiceEndPoint = {read=FServiceEndPoint, write=FServiceEndPoint};
	__property System::UnicodeString ServiceRegion = {read=FServiceRegion, write=FServiceRegion};
	__property System::UnicodeString APIKey = {read=FAPIKey, write=SetAPIKey};
	__property TTMSFNCCloudTranslationRequests* TranslationRequests = {read=FTranslationRequests, write=SetTranslationRequests};
	__property TTMSFNCCloudTranslationTranslations* Translations = {read=FTranslations, write=SetTranslations};
	__property TTMSFNCCloudTranslationDetections* Detections = {read=FDetections, write=SetDetections};
	__property _di_ITMSFNCCustomCloudTranslation TranslationInstance = {read=FTranslation};
	__property _di_ITMSFNCCustomCloudTranslationProperties TranslationProperties = {read=FTranslationProperties};
	virtual void __fastcall Detect(System::Classes::TStringList* ATextList, _di_TTMSFNCCloudTranslationDetectCallback ACallback = _di_TTMSFNCCloudTranslationDetectCallback())/* overload */;
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual TTMSFNCCustomCloudTranslation(System::Classes::TComponent* AOwner)/* overload */;
	__fastcall virtual ~TTMSFNCCustomCloudTranslation();
	virtual void __fastcall GetSupportedLanguages(const System::UnicodeString ALanguage = u"en", _di_TTMSFNCCloudTranslationGetSupportedLanguagesCallback ACallback = _di_TTMSFNCCloudTranslationGetSupportedLanguagesCallback());
	virtual void __fastcall Translate(System::UnicodeString AText, const System::UnicodeString ALanguage = u"en", _di_TTMSFNCCloudTranslationTranslateCallback ACallback = _di_TTMSFNCCloudTranslationTranslateCallback())/* overload */;
	virtual void __fastcall Translate(System::Classes::TStringList* ATextList, const System::UnicodeString ALanguage = u"en", _di_TTMSFNCCloudTranslationTranslateCallback ACallback = _di_TTMSFNCCloudTranslationTranslateCallback())/* overload */;
	virtual void __fastcall Detect(System::UnicodeString AText, _di_TTMSFNCCloudTranslationDetectCallback ACallback = _di_TTMSFNCCloudTranslationDetectCallback())/* overload */;
public:
	/* TTMSFNCCustomCloudBase.Create */ inline __fastcall virtual TTMSFNCCustomCloudTranslation()/* overload */ : Fmx::Tmsfnccloudbase::TTMSFNCCloudBase() { }
	
private:
	void *__ITMSFNCCustomCloudTranslationProperties;	// ITMSFNCCustomCloudTranslationProperties 
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {6D344230-E552-4C05-99D9-481F07DC915B}
	operator _di_ITMSFNCCustomCloudTranslationProperties()
	{
		_di_ITMSFNCCustomCloudTranslationProperties intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator ITMSFNCCustomCloudTranslationProperties*(void) { return (ITMSFNCCustomCloudTranslationProperties*)&__ITMSFNCCustomCloudTranslationProperties; }
	#endif
	
};


class PASCALIMPLEMENTATION TTMSFNCCustomCloudTranslationInterfacedObject : public System::TInterfacedObject
{
	typedef System::TInterfacedObject inherited;
	
private:
	_di_ITMSFNCCustomCloudTranslationProperties FTranslationProperties;
	_di_ITMSFNCCustomCloudTranslationProperties __fastcall GetTranslationProperties();
	
protected:
	void __fastcall SetTranslationProperties(const _di_ITMSFNCCustomCloudTranslationProperties Value);
	
public:
	__property _di_ITMSFNCCustomCloudTranslationProperties TranslationProperties = {read=GetTranslationProperties};
	__fastcall virtual ~TTMSFNCCustomCloudTranslationInterfacedObject();
public:
	/* TObject.Create */ inline __fastcall TTMSFNCCustomCloudTranslationInterfacedObject() : System::TInterfacedObject() { }
	
private:
	void *__ITMSFNCCustomCloudTranslationInstance;	// ITMSFNCCustomCloudTranslationInstance 
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {DD56FEFE-025B-4B03-BFF6-1659603220FD}
	operator _di_ITMSFNCCustomCloudTranslationInstance()
	{
		_di_ITMSFNCCustomCloudTranslationInstance intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator ITMSFNCCustomCloudTranslationInstance*(void) { return (ITMSFNCCustomCloudTranslationInstance*)&__ITMSFNCCustomCloudTranslationInstance; }
	#endif
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudTranslationList : public System::Generics::Collections::TList__1<_di_ITMSFNCCustomCloudTranslation>
{
	typedef System::Generics::Collections::TList__1<_di_ITMSFNCCustomCloudTranslation> inherited;
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudTranslation_ITMSFNCCustomCloudTranslation>.Create */ inline __fastcall TTMSFNCCloudTranslationList()/* overload */ : System::Generics::Collections::TList__1<_di_ITMSFNCCustomCloudTranslation>() { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudTranslation_ITMSFNCCustomCloudTranslation>.Create */ inline __fastcall TTMSFNCCloudTranslationList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<_di_ITMSFNCCustomCloudTranslation> > AComparer)/* overload */ : System::Generics::Collections::TList__1<_di_ITMSFNCCustomCloudTranslation>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudTranslation_ITMSFNCCustomCloudTranslation>.Create */ inline __fastcall TTMSFNCCloudTranslationList(System::Generics::Collections::TEnumerable__1<_di_ITMSFNCCustomCloudTranslation>* const Collection)/* overload */ : System::Generics::Collections::TList__1<_di_ITMSFNCCustomCloudTranslation>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudTranslation_ITMSFNCCustomCloudTranslation>.Create */ inline __fastcall TTMSFNCCloudTranslationList(const _di_ITMSFNCCustomCloudTranslation *Values, const int Values_High)/* overload */ : System::Generics::Collections::TList__1<_di_ITMSFNCCustomCloudTranslation>(Values, Values_High) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudTranslation_ITMSFNCCustomCloudTranslation>.Destroy */ inline __fastcall virtual ~TTMSFNCCloudTranslationList() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudTranslationFactoryService : public System::TInterfacedObject
{
	typedef System::TInterfacedObject inherited;
	
private:
	TTMSFNCCloudTranslationList* FTranslation;
	
protected:
	virtual _di_ITMSFNCCustomCloudTranslation __fastcall DoCreateTranslation() = 0 ;
	_di_ITMSFNCCustomCloudTranslation __fastcall CreateTranslation();
	void __fastcall DestroyTranslation();
	
public:
	__fastcall TTMSFNCCloudTranslationFactoryService();
	__fastcall virtual ~TTMSFNCCloudTranslationFactoryService();
private:
	void *__ITMSFNCCloudTranslationService;	// ITMSFNCCloudTranslationService 
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {6DD03C2B-D802-4444-A0DF-04992380C53F}
	operator _di_ITMSFNCCloudTranslationService()
	{
		_di_ITMSFNCCloudTranslationService intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator ITMSFNCCloudTranslationService*(void) { return (ITMSFNCCloudTranslationService*)&__ITMSFNCCloudTranslationService; }
	#endif
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudTranslation : public TTMSFNCCustomCloudTranslation
{
	typedef TTMSFNCCustomCloudTranslation inherited;
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	
public:
	__property TranslationInstance;
	__property TranslationProperties;
	__property SupportedLanguages;
	__property TranslationRequests;
	__property Translations;
	__property Detections;
	
__published:
	__property OnGetSupportedLanguages;
	__property OnTranslate;
	__property OnDetect;
	__property APIKey = {default=0};
	__property ServiceEndPoint = {default=0};
	__property ServiceRegion = {default=0};
	__property Service = {default=0};
	__property Version = {default=0};
public:
	/* TTMSFNCCustomCloudTranslation.Create */ inline __fastcall virtual TTMSFNCCloudTranslation(System::Classes::TComponent* AOwner)/* overload */ : TTMSFNCCustomCloudTranslation(AOwner) { }
	/* TTMSFNCCustomCloudTranslation.Destroy */ inline __fastcall virtual ~TTMSFNCCloudTranslation() { }
	
public:
	/* TTMSFNCCustomCloudBase.Create */ inline __fastcall virtual TTMSFNCCloudTranslation()/* overload */ : TTMSFNCCustomCloudTranslation() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudTranslationPlatformServicesService : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	System::_di_IInterface FInterface;
	System::UnicodeString FGUID;
	
public:
	__fastcall TTMSFNCCloudTranslationPlatformServicesService(System::UnicodeString AGUID, System::_di_IInterface AInterface);
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
	/* TObject.Destroy */ inline __fastcall virtual ~TTMSFNCCloudTranslationPlatformServicesService() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudTranslationPlatformServicesList : public System::Generics::Collections::TObjectList__1<TTMSFNCCloudTranslationPlatformServicesService*>
{
	typedef System::Generics::Collections::TObjectList__1<TTMSFNCCloudTranslationPlatformServicesService*> inherited;
	
private:
	System::_di_IInterface __fastcall GetValue(System::UnicodeString AGUID);
	
public:
	bool __fastcall ContainsKey(System::UnicodeString AGUID);
	void __fastcall RemoveByGUID(System::UnicodeString AGUID);
	__property System::_di_IInterface Interfaces[System::UnicodeString AGUID] = {read=GetValue};
public:
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudTranslation_TTMSFNCCloudTranslationPlatformServicesService>.Create */ inline __fastcall TTMSFNCCloudTranslationPlatformServicesList()/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudTranslationPlatformServicesService*>() { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudTranslation_TTMSFNCCloudTranslationPlatformServicesService>.Create */ inline __fastcall TTMSFNCCloudTranslationPlatformServicesList(bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudTranslationPlatformServicesService*>(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudTranslation_TTMSFNCCloudTranslationPlatformServicesService>.Create */ inline __fastcall TTMSFNCCloudTranslationPlatformServicesList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCloudTranslationPlatformServicesService*> > AComparer, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudTranslationPlatformServicesService*>(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudTranslation_TTMSFNCCloudTranslationPlatformServicesService>.Create */ inline __fastcall TTMSFNCCloudTranslationPlatformServicesList(System::Generics::Collections::TEnumerable__1<TTMSFNCCloudTranslationPlatformServicesService*>* const Collection, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudTranslationPlatformServicesService*>(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudTranslation_TTMSFNCCloudTranslationPlatformServicesService>.Destroy */ inline __fastcall virtual ~TTMSFNCCloudTranslationPlatformServicesList() { }
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudTranslation_TTMSFNCCloudTranslationPlatformServicesService>.Create */ inline __fastcall TTMSFNCCloudTranslationPlatformServicesList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCloudTranslationPlatformServicesService*> > AComparer)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudTranslationPlatformServicesService*>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudTranslation_TTMSFNCCloudTranslationPlatformServicesService>.Create */ inline __fastcall TTMSFNCCloudTranslationPlatformServicesList(System::Generics::Collections::TEnumerable__1<TTMSFNCCloudTranslationPlatformServicesService*>* const Collection)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudTranslationPlatformServicesService*>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudTranslation_TTMSFNCCloudTranslationPlatformServicesService>.Create */ inline __fastcall TTMSFNCCloudTranslationPlatformServicesList(TTMSFNCCloudTranslationPlatformServicesService* const *Values, const int Values_High)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudTranslationPlatformServicesService*>(Values, Values_High) { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudTranslationPlatformServices : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	TTMSFNCCloudTranslationPlatformServicesList* FServicesList;
	static TTMSFNCCloudTranslationPlatformServices* FCurrent;
	static bool FCurrentReleased;
	__classmethod void __fastcall ReleaseCurrent();
	
public:
	__fastcall TTMSFNCCloudTranslationPlatformServices();
	__fastcall virtual ~TTMSFNCCloudTranslationPlatformServices();
	void __fastcall AddPlatformService(const GUID &AServiceGUID, const System::_di_IInterface AService);
	void __fastcall RemovePlatformService(const GUID &AServiceGUID);
	System::_di_IInterface __fastcall GetPlatformService(const GUID &AServiceGUID);
	bool __fastcall SupportsPlatformService(const GUID &AServiceGUID)/* overload */;
	bool __fastcall SupportsPlatformService(const GUID &AServiceGUID, System::_di_IInterface &AService)/* overload */;
	__classmethod TTMSFNCCloudTranslationPlatformServices* __fastcall Current();
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
#define TTMSFNCCloudTranslationDocURL u"https://download.tmssoftware.com/doc/tmsfnccloudpack/compo"\
	u"nents/ttmsfnccloudtranslation/"
#define TTMSFNCCloudTranslationTipsURL u"https://www.tmssoftware.com/site/tmsfnccloudpack.asp?s=faq"
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x1);
static constexpr System::Int8 BLD_VER = System::Int8(0x1);
}	/* namespace Tmsfnccloudtranslation */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCCLOUDTRANSLATION)
using namespace Fmx::Tmsfnccloudtranslation;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfnccloudtranslationHPP
