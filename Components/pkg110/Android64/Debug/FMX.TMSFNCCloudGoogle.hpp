// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCCloudGoogle.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfnccloudgoogleHPP
#define Fmx_TmsfnccloudgoogleHPP

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
#include <FMX.TMSFNCCloudStorage.hpp>
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
namespace Tmsfnccloudgoogle
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCCloudGoogleProfile;
class DELPHICLASS TTMSFNCCustomCloudGoogle;
class DELPHICLASS TTMSFNCCustomCloudGoogleStorage;
//-- type declarations -------------------------------------------------------
enum DECLSPEC_DENUM TTMSFNCCloudGoogleGender : unsigned char { ggMale, ggFemale, ggNone };

class PASCALIMPLEMENTATION TTMSFNCCloudGoogleProfile : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	System::UnicodeString FEmail;
	System::UnicodeString FLastName;
	System::UnicodeString FImageURL;
	System::UnicodeString FLink;
	bool FVerified;
	System::UnicodeString FLocale;
	TTMSFNCCloudGoogleGender FGender;
	System::UnicodeString FID;
	System::UnicodeString FFullName;
	System::UnicodeString FFirstName;
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	void __fastcall FromJSON(System::Json::TJSONValue* jo);
	__fastcall TTMSFNCCloudGoogleProfile();
	__fastcall virtual ~TTMSFNCCloudGoogleProfile();
	
__published:
	__property System::UnicodeString ID = {read=FID, write=FID};
	__property System::UnicodeString FullName = {read=FFullName, write=FFullName};
	__property System::UnicodeString FirstName = {read=FFirstName, write=FFirstName};
	__property System::UnicodeString LastName = {read=FLastName, write=FLastName};
	__property System::UnicodeString Email = {read=FEmail, write=FEmail};
	__property bool Verified = {read=FVerified, write=FVerified, nodefault};
	__property System::UnicodeString Link = {read=FLink, write=FLink};
	__property System::UnicodeString ImageURL = {read=FImageURL, write=FImageURL};
	__property TTMSFNCCloudGoogleGender Gender = {read=FGender, write=FGender, nodefault};
	__property System::UnicodeString Locale = {read=FLocale, write=FLocale};
};


typedef void __fastcall (__closure *TTMSFNCCloudGoogleGetUserInfoEvent)(System::TObject* Sender, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

class PASCALIMPLEMENTATION TTMSFNCCustomCloudGoogle : public Fmx::Tmsfnccloudoauth::TTMSFNCCloudOAuth
{
	typedef Fmx::Tmsfnccloudoauth::TTMSFNCCloudOAuth inherited;
	
private:
	TTMSFNCCloudGoogleProfile* FProfile;
	TTMSFNCCloudGoogleGetUserInfoEvent FOnGetUserInfo;
	
protected:
	void __fastcall DoGetUserInfo(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall RetrieveAccessToken();
	virtual void __fastcall RetrieveRefreshToken();
	virtual System::UnicodeString __fastcall GetAuthenticationURL();
	void __fastcall DoRequestGetUserInfo(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	
public:
	__fastcall virtual TTMSFNCCustomCloudGoogle(System::Classes::TComponent* AOwner)/* overload */;
	__fastcall virtual ~TTMSFNCCustomCloudGoogle();
	virtual void __fastcall TestTokens(const Fmx::Tmsfnccloudbase::_di_TTMSFNCCloudBaseRequestResultEvent ATestTokensRequestResultEvent = Fmx::Tmsfnccloudbase::_di_TTMSFNCCloudBaseRequestResultEvent());
	void __fastcall GetUserInfo();
	virtual bool __fastcall GetTestTokensResult(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	__property TTMSFNCCloudGoogleProfile* Profile = {read=FProfile};
	
__published:
	__property TTMSFNCCloudGoogleGetUserInfoEvent OnGetUserInfo = {read=FOnGetUserInfo, write=FOnGetUserInfo};
public:
	/* TTMSFNCCustomCloudOAuth.Create */ inline __fastcall virtual TTMSFNCCustomCloudGoogle()/* overload */ : Fmx::Tmsfnccloudoauth::TTMSFNCCloudOAuth() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCustomCloudGoogleStorage : public Fmx::Tmsfnccloudstorage::TTMSFNCCloudStorage
{
	typedef Fmx::Tmsfnccloudstorage::TTMSFNCCloudStorage inherited;
	
protected:
	virtual void __fastcall RetrieveAccessToken();
	virtual void __fastcall RetrieveRefreshToken();
	virtual System::UnicodeString __fastcall GetAuthenticationURL();
	
public:
	__fastcall virtual TTMSFNCCustomCloudGoogleStorage(System::Classes::TComponent* AOwner)/* overload */;
	virtual void __fastcall TestTokens(const Fmx::Tmsfnccloudbase::_di_TTMSFNCCloudBaseRequestResultEvent ATestTokensRequestResultEvent = Fmx::Tmsfnccloudbase::_di_TTMSFNCCloudBaseRequestResultEvent());
	virtual bool __fastcall GetTestTokensResult(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
public:
	/* TTMSFNCCloudStorage.Destroy */ inline __fastcall virtual ~TTMSFNCCustomCloudGoogleStorage() { }
	
public:
	/* TTMSFNCCustomCloudOAuth.Create */ inline __fastcall virtual TTMSFNCCustomCloudGoogleStorage()/* overload */ : Fmx::Tmsfnccloudstorage::TTMSFNCCloudStorage() { }
	
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Tmsfnccloudgoogle */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCCLOUDGOOGLE)
using namespace Fmx::Tmsfnccloudgoogle;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfnccloudgoogleHPP
