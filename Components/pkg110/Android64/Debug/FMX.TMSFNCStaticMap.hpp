// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCStaticMap.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncstaticmapHPP
#define Fmx_TmsfncstaticmapHPP

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
namespace Tmsfncstaticmap
{
//-- forward type declarations -----------------------------------------------
__interface DELPHIINTERFACE ITMSFNCCustomStaticMapProperties;
typedef System::DelphiInterface<ITMSFNCCustomStaticMapProperties> _di_ITMSFNCCustomStaticMapProperties;
__interface DELPHIINTERFACE ITMSFNCCustomStaticMapInstance;
typedef System::DelphiInterface<ITMSFNCCustomStaticMapInstance> _di_ITMSFNCCustomStaticMapInstance;
__interface DELPHIINTERFACE ITMSFNCCustomStaticMap;
typedef System::DelphiInterface<ITMSFNCCustomStaticMap> _di_ITMSFNCCustomStaticMap;
__interface DELPHIINTERFACE ITMSFNCStaticMapService;
typedef System::DelphiInterface<ITMSFNCStaticMapService> _di_ITMSFNCStaticMapService;
__interface DELPHIINTERFACE ITMSFNCStaticMapServiceGoogle;
typedef System::DelphiInterface<ITMSFNCStaticMapServiceGoogle> _di_ITMSFNCStaticMapServiceGoogle;
__interface DELPHIINTERFACE ITMSFNCStaticMapServiceHere;
typedef System::DelphiInterface<ITMSFNCStaticMapServiceHere> _di_ITMSFNCStaticMapServiceHere;
__interface DELPHIINTERFACE ITMSFNCStaticMapServiceMapBox;
typedef System::DelphiInterface<ITMSFNCStaticMapServiceMapBox> _di_ITMSFNCStaticMapServiceMapBox;
__interface DELPHIINTERFACE ITMSFNCStaticMapServiceAzure;
typedef System::DelphiInterface<ITMSFNCStaticMapServiceAzure> _di_ITMSFNCStaticMapServiceAzure;
__interface DELPHIINTERFACE ITMSFNCStaticMapServiceTomTom;
typedef System::DelphiInterface<ITMSFNCStaticMapServiceTomTom> _di_ITMSFNCStaticMapServiceTomTom;
__interface DELPHIINTERFACE ITMSFNCStaticMapServiceBing;
typedef System::DelphiInterface<ITMSFNCStaticMapServiceBing> _di_ITMSFNCStaticMapServiceBing;
class DELPHICLASS TTMSFNCCustomStaticMap;
class DELPHICLASS TTMSFNCCustomStaticMapInterfacedObject;
class DELPHICLASS TTMSFNCStaticMapList;
class DELPHICLASS TTMSFNCStaticMapFactoryService;
class DELPHICLASS TTMSFNCStaticMap;
class DELPHICLASS TTMSFNCStaticMapPlatformServicesService;
class DELPHICLASS TTMSFNCStaticMapPlatformServicesList;
class DELPHICLASS TTMSFNCStaticMapPlatformServices;
//-- type declarations -------------------------------------------------------
enum DECLSPEC_DENUM TTMSFNCStaticMapService : unsigned char { smGoogle, smHere, smMapBox, smAzure, smTomTom, smBing };

enum DECLSPEC_DENUM TTMSFNCStaticMapType : unsigned char { mtDefault, mtSatellite, mtHybrid, mtTerrain, mtLight, mtDark };

__interface  INTERFACE_UUID("{E91C635D-A2E7-43F5-AF58-D6B0CBD4F48B}") ITMSFNCCustomStaticMapProperties  : public System::IInterface 
{
	virtual System::UnicodeString __fastcall GetAPIKey() = 0 ;
};

__interface  INTERFACE_UUID("{6FCC87D9-FF9C-4301-8DB2-CB8A805E10CA}") ITMSFNCCustomStaticMapInstance  : public System::IInterface 
{
	virtual void __fastcall SetStaticMapProperties(const _di_ITMSFNCCustomStaticMapProperties Value) = 0 ;
};

__interface  INTERFACE_UUID("{E9C3397B-E6B9-4A8A-84BC-DF0AB911F27D}") ITMSFNCCustomStaticMap  : public System::IInterface 
{
	virtual System::UnicodeString __fastcall GetIdentifier() = 0 ;
	virtual System::UnicodeString __fastcall GetURL(const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec &ACoordinate, int AWidth, int AHeight, int AZoom, bool AShowMarker, TTMSFNCStaticMapType AMapType) = 0 /* overload */;
	virtual System::UnicodeString __fastcall GetURL(System::UnicodeString AAddress, int AWidth, int AHeight, int AZoom, bool AShowMarker, TTMSFNCStaticMapType AMapType) = 0 /* overload */;
	virtual bool __fastcall IsValid() = 0 ;
	virtual void __fastcall DestroyStaticMap() = 0 ;
};

__interface  INTERFACE_UUID("{4C6010BC-420F-44D9-AB15-ED4EE80DA9E4}") ITMSFNCStaticMapService  : public System::IInterface 
{
	virtual _di_ITMSFNCCustomStaticMap __fastcall CreateStaticMap() = 0 ;
	virtual void __fastcall DestroyStaticMap(_di_ITMSFNCCustomStaticMap AStaticMap) = 0 ;
};

__interface  INTERFACE_UUID("{59D7319D-8276-4CB8-B2CC-A3A0F6C1D0C5}") ITMSFNCStaticMapServiceGoogle  : public ITMSFNCStaticMapService 
{
	
};

__interface  INTERFACE_UUID("{A41EF7DD-3E6F-48A7-A8C4-DF4397DC7AD8}") ITMSFNCStaticMapServiceHere  : public ITMSFNCStaticMapService 
{
	
};

__interface  INTERFACE_UUID("{B5488882-CA2D-4B0C-B4DE-F865AB8A8A9B}") ITMSFNCStaticMapServiceMapBox  : public ITMSFNCStaticMapService 
{
	
};

__interface  INTERFACE_UUID("{2D012792-CFAC-4C18-8E1C-BE254BB5B833}") ITMSFNCStaticMapServiceAzure  : public ITMSFNCStaticMapService 
{
	
};

__interface  INTERFACE_UUID("{A8784691-F7B8-43C2-98B6-9F5DA8AAEFEE}") ITMSFNCStaticMapServiceTomTom  : public ITMSFNCStaticMapService 
{
	
};

__interface  INTERFACE_UUID("{AB1049D9-45CB-46E2-99C7-008648918DE1}") ITMSFNCStaticMapServiceBing  : public ITMSFNCStaticMapService 
{
	
};

class PASCALIMPLEMENTATION TTMSFNCCustomStaticMap : public Fmx::Tmsfnccloudbase::TTMSFNCCloudBase
{
	typedef Fmx::Tmsfnccloudbase::TTMSFNCCloudBase inherited;
	
private:
	_di_ITMSFNCCustomStaticMap FStaticMap;
	_di_ITMSFNCCustomStaticMapInstance FStaticMapInstance;
	_di_ITMSFNCCustomStaticMapProperties FStaticMapProperties;
	TTMSFNCStaticMapService FService;
	System::UnicodeString FAPIKey;
	HIDESBASE void __fastcall SetService(const TTMSFNCStaticMapService Value);
	void __fastcall SetAPIKey(const System::UnicodeString Value);
	
protected:
	virtual void __fastcall InitializeStaticMap();
	virtual NativeUInt __fastcall GetInstance();
	bool __fastcall StaticMapReady();
	System::UnicodeString __fastcall GetAPIKey();
	int __fastcall GetVersionNr();
	virtual System::UnicodeString __fastcall GetDocURL();
	virtual System::UnicodeString __fastcall GetTipsURL();
	_di_ITMSFNCCustomStaticMap __fastcall StaticMap();
	virtual System::UnicodeString __fastcall GetVersion();
	__property TTMSFNCStaticMapService Service = {read=FService, write=SetService, default=0};
	__property System::UnicodeString APIKey = {read=FAPIKey, write=SetAPIKey};
	__property _di_ITMSFNCCustomStaticMap StaticMapInstance = {read=FStaticMap};
	__property _di_ITMSFNCCustomStaticMapProperties StaticMapProperties = {read=FStaticMapProperties};
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual TTMSFNCCustomStaticMap(System::Classes::TComponent* AOwner)/* overload */;
	__fastcall virtual ~TTMSFNCCustomStaticMap();
	virtual System::UnicodeString __fastcall GetStaticMap(const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec &ACoordinate, float AWidth = 6.400000E+02f, float AHeight = 4.800000E+02f, float AZoom = 1.000000E+01f, bool AShowMarker = true, TTMSFNCStaticMapType AMapType = (TTMSFNCStaticMapType)(0x0))/* overload */;
	virtual System::UnicodeString __fastcall GetStaticMap(System::UnicodeString AAddress, float AWidth = 6.400000E+02f, float AHeight = 4.800000E+02f, float AZoom = 1.000000E+01f, bool AShowMarker = true, TTMSFNCStaticMapType AMapType = (TTMSFNCStaticMapType)(0x0))/* overload */;
public:
	/* TTMSFNCCustomCloudBase.Create */ inline __fastcall virtual TTMSFNCCustomStaticMap()/* overload */ : Fmx::Tmsfnccloudbase::TTMSFNCCloudBase() { }
	
private:
	void *__ITMSFNCCustomStaticMapProperties;	// ITMSFNCCustomStaticMapProperties 
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {E91C635D-A2E7-43F5-AF58-D6B0CBD4F48B}
	operator _di_ITMSFNCCustomStaticMapProperties()
	{
		_di_ITMSFNCCustomStaticMapProperties intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator ITMSFNCCustomStaticMapProperties*(void) { return (ITMSFNCCustomStaticMapProperties*)&__ITMSFNCCustomStaticMapProperties; }
	#endif
	
};


class PASCALIMPLEMENTATION TTMSFNCCustomStaticMapInterfacedObject : public System::TInterfacedObject
{
	typedef System::TInterfacedObject inherited;
	
private:
	_di_ITMSFNCCustomStaticMapProperties FStaticMapProperties;
	_di_ITMSFNCCustomStaticMapProperties __fastcall GetStaticMapProperties();
	
protected:
	void __fastcall SetStaticMapProperties(const _di_ITMSFNCCustomStaticMapProperties Value);
	
public:
	__property _di_ITMSFNCCustomStaticMapProperties StaticMapProperties = {read=GetStaticMapProperties};
	__fastcall virtual ~TTMSFNCCustomStaticMapInterfacedObject();
public:
	/* TObject.Create */ inline __fastcall TTMSFNCCustomStaticMapInterfacedObject() : System::TInterfacedObject() { }
	
private:
	void *__ITMSFNCCustomStaticMapInstance;	// ITMSFNCCustomStaticMapInstance 
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {6FCC87D9-FF9C-4301-8DB2-CB8A805E10CA}
	operator _di_ITMSFNCCustomStaticMapInstance()
	{
		_di_ITMSFNCCustomStaticMapInstance intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator ITMSFNCCustomStaticMapInstance*(void) { return (ITMSFNCCustomStaticMapInstance*)&__ITMSFNCCustomStaticMapInstance; }
	#endif
	
};


class PASCALIMPLEMENTATION TTMSFNCStaticMapList : public System::Generics::Collections::TList__1<_di_ITMSFNCCustomStaticMap>
{
	typedef System::Generics::Collections::TList__1<_di_ITMSFNCCustomStaticMap> inherited;
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCStaticMap_ITMSFNCCustomStaticMap>.Create */ inline __fastcall TTMSFNCStaticMapList()/* overload */ : System::Generics::Collections::TList__1<_di_ITMSFNCCustomStaticMap>() { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCStaticMap_ITMSFNCCustomStaticMap>.Create */ inline __fastcall TTMSFNCStaticMapList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<_di_ITMSFNCCustomStaticMap> > AComparer)/* overload */ : System::Generics::Collections::TList__1<_di_ITMSFNCCustomStaticMap>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCStaticMap_ITMSFNCCustomStaticMap>.Create */ inline __fastcall TTMSFNCStaticMapList(System::Generics::Collections::TEnumerable__1<_di_ITMSFNCCustomStaticMap>* const Collection)/* overload */ : System::Generics::Collections::TList__1<_di_ITMSFNCCustomStaticMap>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCStaticMap_ITMSFNCCustomStaticMap>.Create */ inline __fastcall TTMSFNCStaticMapList(const _di_ITMSFNCCustomStaticMap *Values, const int Values_High)/* overload */ : System::Generics::Collections::TList__1<_di_ITMSFNCCustomStaticMap>(Values, Values_High) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCStaticMap_ITMSFNCCustomStaticMap>.Destroy */ inline __fastcall virtual ~TTMSFNCStaticMapList() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCStaticMapFactoryService : public System::TInterfacedObject
{
	typedef System::TInterfacedObject inherited;
	
private:
	TTMSFNCStaticMapList* FStaticMap;
	
protected:
	virtual _di_ITMSFNCCustomStaticMap __fastcall DoCreateStaticMap() = 0 ;
	_di_ITMSFNCCustomStaticMap __fastcall CreateStaticMap();
	void __fastcall DestroyStaticMap(_di_ITMSFNCCustomStaticMap AStaticMap);
	
public:
	__fastcall TTMSFNCStaticMapFactoryService();
	__fastcall virtual ~TTMSFNCStaticMapFactoryService();
private:
	void *__ITMSFNCStaticMapService;	// ITMSFNCStaticMapService 
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {4C6010BC-420F-44D9-AB15-ED4EE80DA9E4}
	operator _di_ITMSFNCStaticMapService()
	{
		_di_ITMSFNCStaticMapService intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator ITMSFNCStaticMapService*(void) { return (ITMSFNCStaticMapService*)&__ITMSFNCStaticMapService; }
	#endif
	
};


class PASCALIMPLEMENTATION TTMSFNCStaticMap : public TTMSFNCCustomStaticMap
{
	typedef TTMSFNCCustomStaticMap inherited;
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	
public:
	__property StaticMapInstance;
	__property StaticMapProperties;
	
__published:
	__property APIKey = {default=0};
	__property Service = {default=0};
	__property Version = {default=0};
public:
	/* TTMSFNCCustomStaticMap.Create */ inline __fastcall virtual TTMSFNCStaticMap(System::Classes::TComponent* AOwner)/* overload */ : TTMSFNCCustomStaticMap(AOwner) { }
	/* TTMSFNCCustomStaticMap.Destroy */ inline __fastcall virtual ~TTMSFNCStaticMap() { }
	
public:
	/* TTMSFNCCustomCloudBase.Create */ inline __fastcall virtual TTMSFNCStaticMap()/* overload */ : TTMSFNCCustomStaticMap() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCStaticMapPlatformServicesService : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	System::_di_IInterface FInterface;
	System::UnicodeString FGUID;
	
public:
	__fastcall TTMSFNCStaticMapPlatformServicesService(System::UnicodeString AGUID, System::_di_IInterface AInterface);
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
	/* TObject.Destroy */ inline __fastcall virtual ~TTMSFNCStaticMapPlatformServicesService() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCStaticMapPlatformServicesList : public System::Generics::Collections::TObjectList__1<TTMSFNCStaticMapPlatformServicesService*>
{
	typedef System::Generics::Collections::TObjectList__1<TTMSFNCStaticMapPlatformServicesService*> inherited;
	
private:
	System::_di_IInterface __fastcall GetValue(System::UnicodeString AGUID);
	
public:
	bool __fastcall ContainsKey(System::UnicodeString AGUID);
	void __fastcall RemoveByGUID(System::UnicodeString AGUID);
	__property System::_di_IInterface Interfaces[System::UnicodeString AGUID] = {read=GetValue};
public:
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCStaticMap_TTMSFNCStaticMapPlatformServicesService>.Create */ inline __fastcall TTMSFNCStaticMapPlatformServicesList()/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCStaticMapPlatformServicesService*>() { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCStaticMap_TTMSFNCStaticMapPlatformServicesService>.Create */ inline __fastcall TTMSFNCStaticMapPlatformServicesList(bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCStaticMapPlatformServicesService*>(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCStaticMap_TTMSFNCStaticMapPlatformServicesService>.Create */ inline __fastcall TTMSFNCStaticMapPlatformServicesList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCStaticMapPlatformServicesService*> > AComparer, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCStaticMapPlatformServicesService*>(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCStaticMap_TTMSFNCStaticMapPlatformServicesService>.Create */ inline __fastcall TTMSFNCStaticMapPlatformServicesList(System::Generics::Collections::TEnumerable__1<TTMSFNCStaticMapPlatformServicesService*>* const Collection, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCStaticMapPlatformServicesService*>(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCStaticMap_TTMSFNCStaticMapPlatformServicesService>.Destroy */ inline __fastcall virtual ~TTMSFNCStaticMapPlatformServicesList() { }
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCStaticMap_TTMSFNCStaticMapPlatformServicesService>.Create */ inline __fastcall TTMSFNCStaticMapPlatformServicesList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCStaticMapPlatformServicesService*> > AComparer)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCStaticMapPlatformServicesService*>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCStaticMap_TTMSFNCStaticMapPlatformServicesService>.Create */ inline __fastcall TTMSFNCStaticMapPlatformServicesList(System::Generics::Collections::TEnumerable__1<TTMSFNCStaticMapPlatformServicesService*>* const Collection)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCStaticMapPlatformServicesService*>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCStaticMap_TTMSFNCStaticMapPlatformServicesService>.Create */ inline __fastcall TTMSFNCStaticMapPlatformServicesList(TTMSFNCStaticMapPlatformServicesService* const *Values, const int Values_High)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCStaticMapPlatformServicesService*>(Values, Values_High) { }
	
};


class PASCALIMPLEMENTATION TTMSFNCStaticMapPlatformServices : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	TTMSFNCStaticMapPlatformServicesList* FServicesList;
	static TTMSFNCStaticMapPlatformServices* FCurrent;
	static bool FCurrentReleased;
	__classmethod void __fastcall ReleaseCurrent();
	
public:
	__fastcall TTMSFNCStaticMapPlatformServices();
	__fastcall virtual ~TTMSFNCStaticMapPlatformServices();
	void __fastcall AddPlatformService(const GUID &AServiceGUID, const System::_di_IInterface AService);
	void __fastcall RemovePlatformService(const GUID &AServiceGUID);
	System::_di_IInterface __fastcall GetPlatformService(const GUID &AServiceGUID);
	bool __fastcall SupportsPlatformService(const GUID &AServiceGUID)/* overload */;
	bool __fastcall SupportsPlatformService(const GUID &AServiceGUID, System::_di_IInterface &AService)/* overload */;
	__classmethod TTMSFNCStaticMapPlatformServices* __fastcall Current();
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
#define TTMSFNCStaticMapDocURL u"https://download.tmssoftware.com/doc/tmsfncmaps/components"\
	u"/ttmsfncmaps/#ttmsfncstaticmap"
#define TTMSFNCStaticMapTipsURL u"https://www.tmssoftware.com/site/tmsfncmaps.asp?s=faq"
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x0);
static constexpr System::Int8 BLD_VER = System::Int8(0x0);
}	/* namespace Tmsfncstaticmap */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCSTATICMAP)
using namespace Fmx::Tmsfncstaticmap;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncstaticmapHPP
