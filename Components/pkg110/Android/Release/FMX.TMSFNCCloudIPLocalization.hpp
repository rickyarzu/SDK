// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCCloudIPLocalization.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfnccloudiplocalizationHPP
#define Fmx_TmsfnccloudiplocalizationHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <FMX.TMSFNCCloudBase.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.TMSFNCUtils.hpp>
#include <FMX.TMSFNCCustomComponent.hpp>
#include <System.JSON.hpp>
#include <System.Generics.Collections.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>
#include <System.Types.hpp>
#include <FMX.Controls.hpp>
#include <FMX.Types.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfnccloudiplocalization
{
//-- forward type declarations -----------------------------------------------
struct TTMSFNCCloudIPLocalizationIPTimeZone;
struct TTMSFNCCloudIPLocalizationIPFlag;
struct TTMSFNCCloudIPLocalizationAutonomousSystem;
class DELPHICLASS TTMSFNCCloudIPLocalizationIP;
class DELPHICLASS TTMSFNCCloudIPLocalizationIPs;
class DELPHICLASS TTMSFNCCustomCloudIPLocalizationLogic;
class DELPHICLASS TTMSFNCCustomCloudIPLocalization;
class DELPHICLASS TTMSFNCCloudIPLocalization;
//-- type declarations -------------------------------------------------------
enum DECLSPEC_DENUM TTMSFNCCloudIPLocalizationService : unsigned char { ipsAbstractAPI, ipsIPData, ipsIPStack };

enum DECLSPEC_DENUM TTMSFNCCloudIPLocalizationContinent : unsigned char { ipcUnknown, ipcAfrica, ipcAsia, ipcEurope, ipcNorthAmerica, ipcOceania, ipcSouthAmerica, ipcAntartica };

struct DECLSPEC_DRECORD TTMSFNCCloudIPLocalizationIPTimeZone
{
public:
	System::UnicodeString Name;
	System::UnicodeString Abbreviation;
	double GMTOffset;
	System::TTime CurrentTime;
	bool IsDaylightSavingsTime;
};


struct DECLSPEC_DRECORD TTMSFNCCloudIPLocalizationIPFlag
{
public:
	System::UnicodeString Name;
	System::UnicodeString ImageUrl;
	System::UnicodeString UniCode;
	System::Classes::TMemoryStream* FlagImageStream;
};


struct DECLSPEC_DRECORD TTMSFNCCloudIPLocalizationAutonomousSystem
{
public:
	System::UnicodeString Organization;
	System::UnicodeString InternetServiceProvider;
	System::UnicodeString ASN;
	System::UnicodeString ConnectionType;
};


class PASCALIMPLEMENTATION TTMSFNCCloudIPLocalizationIP : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	TTMSFNCCustomCloudIPLocalizationLogic* FOwner;
	System::UnicodeString FPostalCode;
	System::UnicodeString FCountry;
	System::UnicodeString FIPAddress;
	System::UnicodeString FCity;
	System::UnicodeString FCountryCode;
	System::UnicodeString FRegion;
	System::UnicodeString FRegionCode;
	double FLatitude;
	System::UnicodeString FContinentCode;
	TTMSFNCCloudIPLocalizationContinent FContinent;
	double FLongitude;
	bool FIsVPN;
	System::UnicodeString FContinentName;
	TTMSFNCCloudIPLocalizationIPTimeZone FTimeZone;
	TTMSFNCCloudIPLocalizationAutonomousSystem FAutonomousSystem;
	TTMSFNCCloudIPLocalizationIPFlag FFlag;
	
protected:
	virtual void __fastcall ParseJSONIPAbstract(System::Json::TJSONValue* AJSONIP);
	virtual void __fastcall ParseJSONIPData(System::Json::TJSONValue* AJSONIP);
	virtual void __fastcall ParseJSONIPStack(System::Json::TJSONValue* AJSONIP);
	virtual void __fastcall ParseJSONIP(System::Json::TJSONValue* AJSONIP);
	
public:
	__fastcall virtual TTMSFNCCloudIPLocalizationIP(TTMSFNCCustomCloudIPLocalizationLogic* ALocalizationAPI);
	__fastcall virtual ~TTMSFNCCloudIPLocalizationIP();
	virtual void __fastcall GetFlagImage();
	__property System::UnicodeString IPAddress = {read=FIPAddress};
	__property System::UnicodeString City = {read=FCity};
	__property System::UnicodeString Region = {read=FRegion};
	__property System::UnicodeString RegionCode = {read=FRegionCode};
	__property System::UnicodeString PostalCode = {read=FPostalCode};
	__property System::UnicodeString Country = {read=FCountry};
	__property System::UnicodeString CountryCode = {read=FCountryCode};
	__property TTMSFNCCloudIPLocalizationContinent Continent = {read=FContinent, nodefault};
	__property System::UnicodeString ContinentName = {read=FContinentName};
	__property System::UnicodeString ContinentCode = {read=FContinentCode};
	__property double Longitude = {read=FLongitude};
	__property double Latitude = {read=FLatitude};
	__property bool IsVPN = {read=FIsVPN, nodefault};
	__property TTMSFNCCloudIPLocalizationIPTimeZone TimeZone = {read=FTimeZone};
	__property TTMSFNCCloudIPLocalizationIPFlag Flag = {read=FFlag};
	__property TTMSFNCCloudIPLocalizationAutonomousSystem AutonomousSystem = {read=FAutonomousSystem};
	__property TTMSFNCCustomCloudIPLocalizationLogic* Owner = {read=FOwner};
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
	/* TObject.Create */ inline __fastcall TTMSFNCCloudIPLocalizationIP() : System::TObject() { }
	
};


#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudIPLocalizationIPs : public System::Generics::Collections::TObjectList__1<TTMSFNCCloudIPLocalizationIP*>
{
	typedef System::Generics::Collections::TObjectList__1<TTMSFNCCloudIPLocalizationIP*> inherited;
	
public:
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudIPLocalization_TTMSFNCCloudIPLocalizationIP>.Create */ inline __fastcall TTMSFNCCloudIPLocalizationIPs()/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudIPLocalizationIP*>() { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudIPLocalization_TTMSFNCCloudIPLocalizationIP>.Create */ inline __fastcall TTMSFNCCloudIPLocalizationIPs(bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudIPLocalizationIP*>(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudIPLocalization_TTMSFNCCloudIPLocalizationIP>.Create */ inline __fastcall TTMSFNCCloudIPLocalizationIPs(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCloudIPLocalizationIP*> > AComparer, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudIPLocalizationIP*>(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudIPLocalization_TTMSFNCCloudIPLocalizationIP>.Create */ inline __fastcall TTMSFNCCloudIPLocalizationIPs(System::Generics::Collections::TEnumerable__1<TTMSFNCCloudIPLocalizationIP*>* const Collection, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudIPLocalizationIP*>(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudIPLocalization_TTMSFNCCloudIPLocalizationIP>.Destroy */ inline __fastcall virtual ~TTMSFNCCloudIPLocalizationIPs() { }
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudIPLocalization_TTMSFNCCloudIPLocalizationIP>.Create */ inline __fastcall TTMSFNCCloudIPLocalizationIPs(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCloudIPLocalizationIP*> > AComparer)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudIPLocalizationIP*>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudIPLocalization_TTMSFNCCloudIPLocalizationIP>.Create */ inline __fastcall TTMSFNCCloudIPLocalizationIPs(System::Generics::Collections::TEnumerable__1<TTMSFNCCloudIPLocalizationIP*>* const Collection)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudIPLocalizationIP*>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudIPLocalization_TTMSFNCCloudIPLocalizationIP>.Create */ inline __fastcall TTMSFNCCloudIPLocalizationIPs(TTMSFNCCloudIPLocalizationIP* const *Values, const int Values_High)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudIPLocalizationIP*>(Values, Values_High) { }
	
};

#pragma pack(pop)

typedef void __fastcall (__closure *TTMSFNCCloudIPLocalizationGetIPEvent)(System::TObject* Sender, TTMSFNCCloudIPLocalizationIP* AIP, bool AError, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudIPLocalizatoinGetFlagImageEvent)(System::TObject* Sender, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* ARequestResult, TTMSFNCCloudIPLocalizationIP* AIP, System::Classes::TMemoryStream* AFlagImageStream);

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCustomCloudIPLocalizationLogic : public Fmx::Tmsfnccloudbase::TTMSFNCCloudBase
{
	typedef Fmx::Tmsfnccloudbase::TTMSFNCCloudBase inherited;
	
private:
	System::UnicodeString FPath;
	System::UnicodeString FAPIKey;
	TTMSFNCCloudIPLocalizationIPs* FIPs;
	TTMSFNCCloudIPLocalizationGetIPEvent FOnGetIP;
	TTMSFNCCloudIPLocalizationService FServiceLocalization;
	TTMSFNCCloudIPLocalizatoinGetFlagImageEvent FOnGetFlagImage;
	void __fastcall SetAPIKey(const System::UnicodeString Value);
	void __fastcall SetServiceLocalization(const TTMSFNCCloudIPLocalizationService Value);
	
protected:
	virtual System::UnicodeString __fastcall GenerateRequestPath(System::UnicodeString AIP = System::UnicodeString());
	void __fastcall DoRequestGetIP(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoGetIP(TTMSFNCCloudIPLocalizationIP* AIP, bool AError, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall GetIP(System::UnicodeString AIP = System::UnicodeString())/* overload */;
	virtual void __fastcall GetIP(TTMSFNCCloudIPLocalizationIP* AIP)/* overload */;
	virtual void __fastcall DoGetFlagImage(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* ARequestResult, TTMSFNCCloudIPLocalizationIP* AIP, System::Classes::TMemoryStream* AFlagImageStream);
	void __fastcall DoRequestGetFlagImage(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DownloadFlagImage(TTMSFNCCloudIPLocalizationIP* AIP);
	__property TTMSFNCCloudIPLocalizatoinGetFlagImageEvent OnGetFlagImage = {read=FOnGetFlagImage, write=FOnGetFlagImage};
	__property System::UnicodeString APIKey = {read=FAPIKey, write=SetAPIKey};
	__property TTMSFNCCloudIPLocalizationService ServiceLocalization = {read=FServiceLocalization, write=SetServiceLocalization, nodefault};
	__property TTMSFNCCloudIPLocalizationIPs* IPs = {read=FIPs, write=FIPs};
	__property TTMSFNCCloudIPLocalizationGetIPEvent OnGetIP = {read=FOnGetIP, write=FOnGetIP};
	
public:
	__fastcall virtual TTMSFNCCustomCloudIPLocalizationLogic(System::Classes::TComponent* AOwner)/* overload */;
	__fastcall virtual ~TTMSFNCCustomCloudIPLocalizationLogic();
public:
	/* TTMSFNCCustomCloudBase.Create */ inline __fastcall virtual TTMSFNCCustomCloudIPLocalizationLogic()/* overload */ : Fmx::Tmsfnccloudbase::TTMSFNCCloudBase() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCustomCloudIPLocalization : public Fmx::Tmsfnccustomcomponent::TTMSFNCCustomComponent
{
	typedef Fmx::Tmsfnccustomcomponent::TTMSFNCCustomComponent inherited;
	
private:
	TTMSFNCCustomCloudIPLocalizationLogic* FLogic;
	System::UnicodeString FAPIKey;
	TTMSFNCCloudIPLocalizationGetIPEvent FOnGetIP;
	TTMSFNCCloudIPLocalizationService FService;
	TTMSFNCCloudIPLocalizatoinGetFlagImageEvent FOnGetFlagImage;
	void __fastcall SetService(const TTMSFNCCloudIPLocalizationService Value);
	TTMSFNCCloudIPLocalizationIPs* __fastcall GetIPs();
	void __fastcall SetIPs(TTMSFNCCloudIPLocalizationIPs* const Value);
	void __fastcall SetAPIKey(const System::UnicodeString Value);
	
protected:
	virtual NativeUInt __fastcall GetInstance();
	virtual void __fastcall DoGetIP(System::TObject* Sender, TTMSFNCCloudIPLocalizationIP* AIP, bool AError, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoGetFlagImage(System::TObject* Sender, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* ARequestResult, TTMSFNCCloudIPLocalizationIP* AIP, System::Classes::TMemoryStream* AFlagImageStream);
	virtual System::UnicodeString __fastcall GetVersion();
	__property System::UnicodeString APIKey = {read=FAPIKey, write=SetAPIKey};
	__property TTMSFNCCloudIPLocalizationGetIPEvent OnGetIP = {read=FOnGetIP, write=FOnGetIP};
	__property TTMSFNCCloudIPLocalizatoinGetFlagImageEvent OnGetFlagImage = {read=FOnGetFlagImage, write=FOnGetFlagImage};
	__property TTMSFNCCloudIPLocalizationService Service = {read=FService, write=SetService, nodefault};
	
public:
	__fastcall virtual TTMSFNCCustomCloudIPLocalization(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCCustomCloudIPLocalization();
	TTMSFNCCloudIPLocalizationIP* __fastcall GetLocalizedIPByIPAddress(System::UnicodeString AIPAddress);
	virtual void __fastcall GetIP(System::UnicodeString AIP = System::UnicodeString())/* overload */;
	virtual void __fastcall GetIP(TTMSFNCCloudIPLocalizationIP* AIP)/* overload */;
	__property TTMSFNCCloudIPLocalizationIPs* IPs = {read=GetIPs, write=SetIPs};
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudIPLocalization : public TTMSFNCCustomCloudIPLocalization
{
	typedef TTMSFNCCustomCloudIPLocalization inherited;
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	
__published:
	__property APIKey = {default=0};
	__property Service;
	__property OnGetIP;
	__property OnGetFlagImage;
public:
	/* TTMSFNCCustomCloudIPLocalization.Create */ inline __fastcall virtual TTMSFNCCloudIPLocalization(System::Classes::TComponent* AOwner) : TTMSFNCCustomCloudIPLocalization(AOwner) { }
	/* TTMSFNCCustomCloudIPLocalization.Destroy */ inline __fastcall virtual ~TTMSFNCCloudIPLocalization() { }
	
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x0);
static constexpr System::Int8 BLD_VER = System::Int8(0x0);
}	/* namespace Tmsfnccloudiplocalization */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCCLOUDIPLOCALIZATION)
using namespace Fmx::Tmsfnccloudiplocalization;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfnccloudiplocalizationHPP
