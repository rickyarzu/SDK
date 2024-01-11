// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCCloudMicrosoft.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfnccloudmicrosoftHPP
#define Fmx_TmsfnccloudmicrosoftHPP

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
namespace Tmsfnccloudmicrosoft
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCCloudMicrosoftProfile;
class DELPHICLASS TTMSFNCCustomCloudMicrosoft;
class DELPHICLASS TTMSFNCCustomCloudMicrosoftStorage;
//-- type declarations -------------------------------------------------------
enum DECLSPEC_DENUM TTMSFNCCloudMicrosoftGender : unsigned char { ggMale, ggFemale, ggNone };

class PASCALIMPLEMENTATION TTMSFNCCloudMicrosoftProfile : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	System::UnicodeString FEmail;
	System::UnicodeString FDisplayName;
	System::UnicodeString FID;
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	void __fastcall FromJSON(System::Json::TJSONValue* jo);
	__fastcall TTMSFNCCloudMicrosoftProfile();
	__fastcall virtual ~TTMSFNCCloudMicrosoftProfile();
	
__published:
	__property System::UnicodeString ID = {read=FID, write=FID};
	__property System::UnicodeString DisplayName = {read=FDisplayName, write=FDisplayName};
	__property System::UnicodeString Email = {read=FEmail, write=FEmail};
};


typedef void __fastcall (__closure *TTMSFNCCloudMicrosoftGetUserInfoEvent)(System::TObject* Sender, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

class PASCALIMPLEMENTATION TTMSFNCCustomCloudMicrosoft : public Fmx::Tmsfnccloudoauth::TTMSFNCCloudOAuth
{
	typedef Fmx::Tmsfnccloudoauth::TTMSFNCCloudOAuth inherited;
	
private:
	TTMSFNCCloudMicrosoftProfile* FProfile;
	TTMSFNCCloudMicrosoftGetUserInfoEvent FOnGetUserInfo;
	
protected:
	void __fastcall DoGetUserInfo(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall RetrieveAccessToken();
	virtual void __fastcall RetrieveRefreshToken();
	virtual System::UnicodeString __fastcall GetAuthenticationURL();
	void __fastcall DoRequestGetUserInfo(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	
public:
	__fastcall virtual TTMSFNCCustomCloudMicrosoft(System::Classes::TComponent* AOwner)/* overload */;
	__fastcall virtual ~TTMSFNCCustomCloudMicrosoft();
	virtual void __fastcall TestTokens(const Fmx::Tmsfnccloudbase::_di_TTMSFNCCloudBaseRequestResultEvent ATestTokensRequestResultEvent = Fmx::Tmsfnccloudbase::_di_TTMSFNCCloudBaseRequestResultEvent());
	void __fastcall GetUserInfo();
	virtual bool __fastcall GetTestTokensResult(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	__property TTMSFNCCloudMicrosoftProfile* Profile = {read=FProfile};
	
__published:
	__property TTMSFNCCloudMicrosoftGetUserInfoEvent OnGetUserInfo = {read=FOnGetUserInfo, write=FOnGetUserInfo};
public:
	/* TTMSFNCCustomCloudOAuth.Create */ inline __fastcall virtual TTMSFNCCustomCloudMicrosoft()/* overload */ : Fmx::Tmsfnccloudoauth::TTMSFNCCloudOAuth() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCustomCloudMicrosoftStorage : public Fmx::Tmsfnccloudstorage::TTMSFNCCloudStorage
{
	typedef Fmx::Tmsfnccloudstorage::TTMSFNCCloudStorage inherited;
	
protected:
	virtual void __fastcall RetrieveAccessToken();
	virtual void __fastcall RetrieveRefreshToken();
	virtual System::UnicodeString __fastcall GetAuthenticationURL();
	
public:
	__fastcall virtual TTMSFNCCustomCloudMicrosoftStorage(System::Classes::TComponent* AOwner)/* overload */;
	virtual void __fastcall TestTokens(const Fmx::Tmsfnccloudbase::_di_TTMSFNCCloudBaseRequestResultEvent ATestTokensRequestResultEvent = Fmx::Tmsfnccloudbase::_di_TTMSFNCCloudBaseRequestResultEvent());
	virtual bool __fastcall GetTestTokensResult(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
public:
	/* TTMSFNCCloudStorage.Destroy */ inline __fastcall virtual ~TTMSFNCCustomCloudMicrosoftStorage() { }
	
public:
	/* TTMSFNCCustomCloudOAuth.Create */ inline __fastcall virtual TTMSFNCCustomCloudMicrosoftStorage()/* overload */ : Fmx::Tmsfnccloudstorage::TTMSFNCCloudStorage() { }
	
};


//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x0);
static constexpr System::Int8 BLD_VER = System::Int8(0x1);
}	/* namespace Tmsfnccloudmicrosoft */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCCLOUDMICROSOFT)
using namespace Fmx::Tmsfnccloudmicrosoft;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfnccloudmicrosoftHPP
