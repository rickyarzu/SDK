// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCCloudSumUp.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfnccloudsumupHPP
#define Fmx_TmsfnccloudsumupHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <FMX.TMSFNCCloudBase.hpp>
#include <FMX.TMSFNCWebBrowser.hpp>
#include <FMX.TMSFNCCloudOAuth.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.TMSFNCUtils.hpp>
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
namespace Tmsfnccloudsumup
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCCustomCloudSumUp3DS;
class DELPHICLASS TTMSFNCCloudSumUpCard;
class DELPHICLASS TTMSFNCCloudSumUpCheckout;
class DELPHICLASS TTMSFNCCustomCloudSumUp;
class DELPHICLASS TTMSFNCCloudSumUp;
//-- type declarations -------------------------------------------------------
typedef void __fastcall (__closure *TTMSFNCCloudSumUpCreateCheckoutEvent)(System::TObject* Sender, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudSumUpGetCheckoutAccessEvent)(System::TObject* Sender, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudSumUpProcessCheckoutEvent)(System::TObject* Sender, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCustomCloudSumUp3DS : public Fmx::Tmsfnccloudoauth::TTMSFNCSimpleCloudOAuth
{
	typedef Fmx::Tmsfnccloudoauth::TTMSFNCSimpleCloudOAuth inherited;
	
private:
	TTMSFNCCustomCloudSumUp* FSumUp;
	Fmx::Tmsfncwebbrowser::TTMSFNCWebBrowserPopup* F3DSBrowser;
	System::UnicodeString FTermURL;
	System::UnicodeString FURL;
	System::UnicodeString FMD;
	System::UnicodeString FPaReq;
	
protected:
	virtual bool __fastcall ProcessAuthenticationCallbackURL(const System::UnicodeString ACallBackURLResult);
	virtual void __fastcall DoBeforeRunExternalBrowser(System::UnicodeString &AURL, bool &ACanRun);
	
public:
	__fastcall virtual TTMSFNCCustomCloudSumUp3DS(System::Classes::TComponent* AOwner)/* overload */;
	__fastcall virtual ~TTMSFNCCustomCloudSumUp3DS();
	void __fastcall ClearData();
public:
	/* TTMSFNCCustomCloudOAuth.Create */ inline __fastcall virtual TTMSFNCCustomCloudSumUp3DS()/* overload */ : Fmx::Tmsfnccloudoauth::TTMSFNCSimpleCloudOAuth() { }
	
};

#pragma pack(pop)

enum DECLSPEC_DENUM TTMSFNCCloudSumUpCurrency : unsigned char { sucEUR, sucBGN, sucCHF, sucCZK, sucDKK, sucBGP, sucHUF, sucNOK, sucPLN, sucSEK, sucUSD };

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudSumUpCard : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	System::UnicodeString FName;
	System::UnicodeString FExpiryYear;
	System::UnicodeString FExpiryMonth;
	System::UnicodeString FNumber;
	System::UnicodeString FCVV;
	
public:
	__fastcall virtual TTMSFNCCloudSumUpCard();
	__fastcall virtual ~TTMSFNCCloudSumUpCard();
	virtual void __fastcall Clear();
	
__published:
	__property System::UnicodeString Name = {read=FName, write=FName};
	__property System::UnicodeString Number = {read=FNumber, write=FNumber};
	__property System::UnicodeString ExpiryYear = {read=FExpiryYear, write=FExpiryYear};
	__property System::UnicodeString ExpiryMonth = {read=FExpiryMonth, write=FExpiryMonth};
	__property System::UnicodeString CVV = {read=FCVV, write=FCVV};
};

#pragma pack(pop)

class PASCALIMPLEMENTATION TTMSFNCCloudSumUpCheckout : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	double FAmount;
	System::UnicodeString FDescription;
	TTMSFNCCloudSumUpCurrency FCurrency;
	
public:
	__fastcall virtual TTMSFNCCloudSumUpCheckout();
	__fastcall virtual ~TTMSFNCCloudSumUpCheckout();
	virtual void __fastcall Clear();
	
__published:
	__property TTMSFNCCloudSumUpCurrency Currency = {read=FCurrency, write=FCurrency, default=0};
	__property double Amount = {read=FAmount, write=FAmount};
	__property System::UnicodeString Description = {read=FDescription, write=FDescription};
};


#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCustomCloudSumUp : public Fmx::Tmsfnccloudoauth::TTMSFNCSimpleCloudOAuth
{
	typedef Fmx::Tmsfnccloudoauth::TTMSFNCSimpleCloudOAuth inherited;
	
private:
	TTMSFNCCustomCloudSumUp3DS* F3DSAuthentication;
	System::UnicodeString FCheckoutToken;
	System::UnicodeString FMerchantID;
	System::UnicodeString FCheckoutError;
	System::Classes::TNotifyEvent FOnCheckoutFailed;
	TTMSFNCCloudSumUpGetCheckoutAccessEvent FOnGetCheckoutAccess;
	TTMSFNCCloudSumUpCreateCheckoutEvent FOnCreateCheckout;
	TTMSFNCCloudSumUpProcessCheckoutEvent FOnProcessCheckout;
	System::Classes::TNotifyEvent FOnCheckoutAccepted;
	System::Classes::TNotifyEvent FOnCheckoutPending;
	System::UnicodeString FTransactionID;
	System::UnicodeString FCheckoutID;
	TTMSFNCCloudSumUpCheckout* FCheckout;
	TTMSFNCCloudSumUpCard* FCard;
	
protected:
	void __fastcall DoCheckoutPending();
	void __fastcall DoCheckoutAccepted();
	void __fastcall DoCheckoutFailed();
	void __fastcall CallCheckoutFailed();
	void __fastcall CallCheckoutAccepted();
	void __fastcall CallCheckoutPending();
	void __fastcall DoCreateCheckout(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoProcessCheckout(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoGetCheckoutAccess(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestCreateCheckout(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestProcessCheckout(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestVerifyCheckout(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestGetCheckoutAccess(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual System::UnicodeString __fastcall GetVersion();
	void __fastcall GetCheckoutAccess();
	void __fastcall CreateCheckout();
	virtual void __fastcall ProcessCheckout(System::UnicodeString AID);
	__property System::Classes::TNotifyEvent OnCheckoutFailed = {read=FOnCheckoutFailed, write=FOnCheckoutFailed};
	__property System::Classes::TNotifyEvent OnCheckoutPending = {read=FOnCheckoutPending, write=FOnCheckoutPending};
	__property System::Classes::TNotifyEvent OnCheckoutAccepted = {read=FOnCheckoutAccepted, write=FOnCheckoutAccepted};
	__property TTMSFNCCloudSumUpCreateCheckoutEvent OnCreateCheckout = {read=FOnCreateCheckout, write=FOnCreateCheckout};
	__property TTMSFNCCloudSumUpProcessCheckoutEvent OnProcessCheckout = {read=FOnProcessCheckout, write=FOnProcessCheckout};
	__property TTMSFNCCloudSumUpGetCheckoutAccessEvent OnGetCheckoutAccess = {read=FOnGetCheckoutAccess, write=FOnGetCheckoutAccess};
	__property System::UnicodeString MerchantID = {read=FMerchantID, write=FMerchantID};
	__property TTMSFNCCloudSumUpCheckout* Checkout = {read=FCheckout};
	__property TTMSFNCCloudSumUpCard* Card = {read=FCard};
	
public:
	__fastcall virtual TTMSFNCCustomCloudSumUp(System::Classes::TComponent* AOwner)/* overload */;
	__fastcall virtual ~TTMSFNCCustomCloudSumUp();
	void __fastcall DoCheckout();
	virtual void __fastcall VerifyCheckout(System::UnicodeString AID);
	__property System::UnicodeString CheckoutError = {read=FCheckoutError};
	__property System::UnicodeString CheckoutID = {read=FCheckoutID};
	__property System::UnicodeString TransactionID = {read=FTransactionID};
public:
	/* TTMSFNCCustomCloudOAuth.Create */ inline __fastcall virtual TTMSFNCCustomCloudSumUp()/* overload */ : Fmx::Tmsfnccloudoauth::TTMSFNCSimpleCloudOAuth() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudSumUp : public TTMSFNCCustomCloudSumUp
{
	typedef TTMSFNCCustomCloudSumUp inherited;
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	
__published:
	__property OnCheckoutFailed;
	__property OnCheckoutAccepted;
	__property OnCheckoutPending;
	__property OnCreateCheckout;
	__property OnProcessCheckout;
	__property OnGetCheckoutAccess;
	__property MerchantID = {default=0};
	__property Checkout;
	__property Card;
public:
	/* TTMSFNCCustomCloudSumUp.Create */ inline __fastcall virtual TTMSFNCCloudSumUp(System::Classes::TComponent* AOwner)/* overload */ : TTMSFNCCustomCloudSumUp(AOwner) { }
	/* TTMSFNCCustomCloudSumUp.Destroy */ inline __fastcall virtual ~TTMSFNCCloudSumUp() { }
	
public:
	/* TTMSFNCCustomCloudOAuth.Create */ inline __fastcall virtual TTMSFNCCloudSumUp()/* overload */ : TTMSFNCCustomCloudSumUp() { }
	
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x0);
static constexpr System::Int8 BLD_VER = System::Int8(0x0);
}	/* namespace Tmsfnccloudsumup */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCCLOUDSUMUP)
using namespace Fmx::Tmsfnccloudsumup;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfnccloudsumupHPP
