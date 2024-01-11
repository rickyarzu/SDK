// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCCloudGoogleLookup.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfnccloudgooglelookupHPP
#define Fmx_TmsfnccloudgooglelookupHPP

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
#include <FMX.TMSFNCCloudGoogle.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <System.JSON.hpp>
#include <FMX.TMSFNCCustomComponent.hpp>
#include <FMX.Controls.hpp>
#include <FMX.Types.hpp>
#include <System.Generics.Collections.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>
#include <System.Types.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfnccloudgooglelookup
{
//-- forward type declarations -----------------------------------------------
struct TTMSFNCCloudGoogleLocationLookupGeoLocation;
class DELPHICLASS TTMSFNCCustomCloudGoogleLookup;
class DELPHICLASS TTMSFNCCloudGoogleLookup;
class DELPHICLASS TTMSFNCCustomCloudGoogleLocationLookup;
class DELPHICLASS TTMSFNCCloudGoogleLocationLookup;
//-- type declarations -------------------------------------------------------
struct DECLSPEC_DRECORD TTMSFNCCloudGoogleLocationLookupGeoLocation
{
public:
	double Latitude;
	double Longitude;
};


typedef void __fastcall (__closure *TTMSFNCCloudGoogleLookupEvent)(System::TObject* Sender, System::Classes::TStrings* const AInfo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudGoogleGeoLocationEvent)(System::TObject* Sender, const TTMSFNCCloudGoogleLocationLookupGeoLocation &AInfo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

class PASCALIMPLEMENTATION TTMSFNCCustomCloudGoogleLookup : public Fmx::Tmsfnccloudoauth::TTMSFNCSimpleCloudOAuth
{
	typedef Fmx::Tmsfnccloudoauth::TTMSFNCSimpleCloudOAuth inherited;
	
private:
	System::Classes::TStrings* FLookupValues;
	TTMSFNCCloudGoogleLookupEvent FOnLookup;
	
protected:
	virtual System::UnicodeString __fastcall GetVersion();
	virtual Fmx::Tmsfnccloudoauth::TTMSFNCCloudOAuthServiceStringArray __fastcall GetAuthenticationDetailsLabels();
	void __fastcall DoLookup(System::Classes::TStrings* const AInfo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestLookup(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	
public:
	__fastcall virtual TTMSFNCCustomCloudGoogleLookup(System::Classes::TComponent* AOwner)/* overload */;
	__fastcall virtual ~TTMSFNCCustomCloudGoogleLookup();
	void __fastcall Lookup(System::UnicodeString AText);
	
__published:
	__property TTMSFNCCloudGoogleLookupEvent OnLookup = {read=FOnLookup, write=FOnLookup};
public:
	/* TTMSFNCCustomCloudOAuth.Create */ inline __fastcall virtual TTMSFNCCustomCloudGoogleLookup()/* overload */ : Fmx::Tmsfnccloudoauth::TTMSFNCSimpleCloudOAuth() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudGoogleLookup : public TTMSFNCCustomCloudGoogleLookup
{
	typedef TTMSFNCCustomCloudGoogleLookup inherited;
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	
__published:
	__property OnLookup;
public:
	/* TTMSFNCCustomCloudGoogleLookup.Create */ inline __fastcall virtual TTMSFNCCloudGoogleLookup(System::Classes::TComponent* AOwner)/* overload */ : TTMSFNCCustomCloudGoogleLookup(AOwner) { }
	/* TTMSFNCCustomCloudGoogleLookup.Destroy */ inline __fastcall virtual ~TTMSFNCCloudGoogleLookup() { }
	
public:
	/* TTMSFNCCustomCloudOAuth.Create */ inline __fastcall virtual TTMSFNCCloudGoogleLookup()/* overload */ : TTMSFNCCustomCloudGoogleLookup() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCustomCloudGoogleLocationLookup : public Fmx::Tmsfnccloudoauth::TTMSFNCSimpleCloudOAuth
{
	typedef Fmx::Tmsfnccloudoauth::TTMSFNCSimpleCloudOAuth inherited;
	
private:
	System::UnicodeString FLanguage;
	TTMSFNCCloudGoogleLocationLookupGeoLocation FGeoLocation;
	System::Classes::TStrings* FLocationLookupValues;
	TTMSFNCCloudGoogleLookupEvent FOnLocationLookup;
	TTMSFNCCloudGoogleGeoLocationEvent FOnGetGeoLocation;
	
protected:
	virtual System::UnicodeString __fastcall GetVersion();
	virtual Fmx::Tmsfnccloudoauth::TTMSFNCCloudOAuthServiceStringArray __fastcall GetAuthenticationDetailsLabels();
	void __fastcall DoLocationLookup(System::Classes::TStrings* const AInfo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoGetGeoLocation(const TTMSFNCCloudGoogleLocationLookupGeoLocation &AInfo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestLocationLookup(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestGetLocation(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	__property TTMSFNCCloudGoogleLookupEvent OnLocationLookup = {read=FOnLocationLookup, write=FOnLocationLookup};
	__property TTMSFNCCloudGoogleGeoLocationEvent OnGetGeoLocation = {read=FOnGetGeoLocation, write=FOnGetGeoLocation};
	
public:
	__fastcall virtual TTMSFNCCustomCloudGoogleLocationLookup(System::Classes::TComponent* AOwner)/* overload */;
	__fastcall virtual ~TTMSFNCCustomCloudGoogleLocationLookup();
	void __fastcall LocationLookup(System::UnicodeString AText);
	void __fastcall GetGeoLocation(System::UnicodeString AText);
public:
	/* TTMSFNCCustomCloudOAuth.Create */ inline __fastcall virtual TTMSFNCCustomCloudGoogleLocationLookup()/* overload */ : Fmx::Tmsfnccloudoauth::TTMSFNCSimpleCloudOAuth() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudGoogleLocationLookup : public TTMSFNCCustomCloudGoogleLocationLookup
{
	typedef TTMSFNCCustomCloudGoogleLocationLookup inherited;
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	
__published:
	__property OnLocationLookup;
	__property OnGetGeoLocation;
public:
	/* TTMSFNCCustomCloudGoogleLocationLookup.Create */ inline __fastcall virtual TTMSFNCCloudGoogleLocationLookup(System::Classes::TComponent* AOwner)/* overload */ : TTMSFNCCustomCloudGoogleLocationLookup(AOwner) { }
	/* TTMSFNCCustomCloudGoogleLocationLookup.Destroy */ inline __fastcall virtual ~TTMSFNCCloudGoogleLocationLookup() { }
	
public:
	/* TTMSFNCCustomCloudOAuth.Create */ inline __fastcall virtual TTMSFNCCloudGoogleLocationLookup()/* overload */ : TTMSFNCCustomCloudGoogleLocationLookup() { }
	
};


//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x0);
static constexpr System::Int8 BLD_VER = System::Int8(0x0);
}	/* namespace Tmsfnccloudgooglelookup */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCCLOUDGOOGLELOOKUP)
using namespace Fmx::Tmsfnccloudgooglelookup;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfnccloudgooglelookupHPP
