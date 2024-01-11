// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCCloudImgur.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfnccloudimgurHPP
#define Fmx_TmsfnccloudimgurHPP

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
#include <System.JSON.hpp>
#include <System.Generics.Collections.hpp>
#include <FMX.TMSFNCCustomComponent.hpp>
#include <FMX.Controls.hpp>
#include <FMX.Types.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>
#include <System.Types.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfnccloudimgur
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCCustomCloudImgur;
class DELPHICLASS TTMSFNCCloudImgur;
//-- type declarations -------------------------------------------------------
typedef void __fastcall (__closure *TTMSFNCCloudImgurUploadImageEvent)(System::TObject* Sender, const System::UnicodeString ALink, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

class PASCALIMPLEMENTATION TTMSFNCCustomCloudImgur : public Fmx::Tmsfnccloudoauth::TTMSFNCCloudOAuth
{
	typedef Fmx::Tmsfnccloudoauth::TTMSFNCCloudOAuth inherited;
	
private:
	TTMSFNCCloudImgurUploadImageEvent FOnUploadImage;
	
protected:
	virtual System::UnicodeString __fastcall GetVersion();
	virtual System::UnicodeString __fastcall GetAuthenticationURL();
	virtual void __fastcall RetrieveAccessToken();
	virtual void __fastcall RetrieveRefreshToken();
	void __fastcall DoUploadImage(const System::UnicodeString ALink, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestUploadImage(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	__property TTMSFNCCloudImgurUploadImageEvent OnUploadImage = {read=FOnUploadImage, write=FOnUploadImage};
	
public:
	__fastcall virtual TTMSFNCCustomCloudImgur(System::Classes::TComponent* AOwner)/* overload */;
	virtual void __fastcall TestTokens(const Fmx::Tmsfnccloudbase::_di_TTMSFNCCloudBaseRequestResultEvent ATestTokensRequestResultEvent = Fmx::Tmsfnccloudbase::_di_TTMSFNCCloudBaseRequestResultEvent());
	virtual bool __fastcall GetTestTokensResult(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall UploadImage(const System::UnicodeString AFileName);
public:
	/* TTMSFNCCustomCloudOAuth.Create */ inline __fastcall virtual TTMSFNCCustomCloudImgur()/* overload */ : Fmx::Tmsfnccloudoauth::TTMSFNCCloudOAuth() { }
	/* TTMSFNCCustomCloudOAuth.Destroy */ inline __fastcall virtual ~TTMSFNCCustomCloudImgur() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudImgur : public TTMSFNCCustomCloudImgur
{
	typedef TTMSFNCCustomCloudImgur inherited;
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	
__published:
	__property OnUploadImage;
public:
	/* TTMSFNCCustomCloudImgur.Create */ inline __fastcall virtual TTMSFNCCloudImgur(System::Classes::TComponent* AOwner)/* overload */ : TTMSFNCCustomCloudImgur(AOwner) { }
	
public:
	/* TTMSFNCCustomCloudOAuth.Create */ inline __fastcall virtual TTMSFNCCloudImgur()/* overload */ : TTMSFNCCustomCloudImgur() { }
	/* TTMSFNCCustomCloudOAuth.Destroy */ inline __fastcall virtual ~TTMSFNCCloudImgur() { }
	
};


//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x0);
static constexpr System::Int8 BLD_VER = System::Int8(0x0);
}	/* namespace Tmsfnccloudimgur */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCCLOUDIMGUR)
using namespace Fmx::Tmsfnccloudimgur;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfnccloudimgurHPP
