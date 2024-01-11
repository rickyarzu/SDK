// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCCloudPayPal.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfnccloudpaypalHPP
#define Fmx_TmsfnccloudpaypalHPP

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
namespace Tmsfnccloudpaypal
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCCloudPayPalItem;
class DELPHICLASS TTMSFNCCloudPayPalItems;
class DELPHICLASS TTMSFNCCloudPayPalError;
class DELPHICLASS TTMSFNCCloudPayPalTransaction;
class DELPHICLASS TTMSFNCCloudPayPalPayer;
class DELPHICLASS TTMSFNCCloudPayPalPayment;
class DELPHICLASS TTMSFNCApprovalProcess;
class DELPHICLASS TTMSFNCCustomCloudPayPal;
class DELPHICLASS TTMSFNCCloudPayPal;
//-- type declarations -------------------------------------------------------
enum DECLSPEC_DENUM TTMSFNCCloudPayPalCurrency : unsigned char { pcAUD, pcBRL, pcCAD, pcCZK, pcDKK, pcEUR, pcHKD, pcHUF, pcILS, pcJPY, pcMYR, pcMXN, pcTWD, pcNZD, pcNOK, pcPHP, pcPLN, pcGBP, pcSGD, pcSEK, pcCHF, pcTHB, pcTRY, pcUSD };

enum DECLSPEC_DENUM TTMSFNCCloudPayPalEnvironment : unsigned char { peLive, peSandbox };

class PASCALIMPLEMENTATION TTMSFNCCloudPayPalItem : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	TTMSFNCCloudPayPalItems* FOwner;
	System::UnicodeString FName;
	double FPrice;
	int FTag;
	int FQuantity;
	System::UnicodeString FDescription;
	System::UnicodeString FSKU;
	void __fastcall SetDescription(const System::UnicodeString Value);
	void __fastcall SetPrice(const double Value);
	void __fastcall SetQuantity(const int Value);
	void __fastcall SetName(const System::UnicodeString Value);
	void __fastcall SetTag(const int Value);
	void __fastcall SetSKU(const System::UnicodeString Value);
	
public:
	__fastcall virtual TTMSFNCCloudPayPalItem(System::Classes::TCollection* Collection);
	__fastcall virtual ~TTMSFNCCloudPayPalItem();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	
protected:
	virtual System::UnicodeString __fastcall GetDisplayName();
	
__published:
	__property System::UnicodeString Description = {read=FDescription, write=SetDescription};
	__property double Price = {read=FPrice, write=SetPrice};
	__property int Quantity = {read=FQuantity, write=SetQuantity, default=1};
	__property System::UnicodeString Name = {read=FName, write=SetName};
	__property System::UnicodeString SKU = {read=FSKU, write=SetSKU};
	__property int Tag = {read=FTag, write=SetTag, default=0};
};


class PASCALIMPLEMENTATION TTMSFNCCloudPayPalItems : public System::Classes::TCollection
{
	typedef System::Classes::TCollection inherited;
	
public:
	TTMSFNCCloudPayPalItem* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCCloudPayPalTransaction* FOwner;
	TTMSFNCCloudPayPalItem* __fastcall GetItems(int Index);
	void __fastcall SetItems(int Index, TTMSFNCCloudPayPalItem* const Value);
	
protected:
	virtual void __fastcall Update(System::Classes::TCollectionItem* Item);
	
public:
	__fastcall TTMSFNCCloudPayPalItems(TTMSFNCCloudPayPalTransaction* AOwner);
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	HIDESBASE TTMSFNCCloudPayPalItem* __fastcall Add();
	HIDESBASE TTMSFNCCloudPayPalItem* __fastcall Insert(int Index);
	__property TTMSFNCCloudPayPalItem* Items[int Index] = {read=GetItems, write=SetItems/*, default*/};
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCCloudPayPalItems() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudPayPalError : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	System::UnicodeString FErrorDescription;
	System::UnicodeString FErrorName;
	System::UnicodeString FErrorMessage;
	System::UnicodeString FErrorDetails;
	
public:
	__fastcall TTMSFNCCloudPayPalError();
	__fastcall virtual ~TTMSFNCCloudPayPalError();
	void __fastcall FromJSON(System::Json::TJSONValue* jo);
	
__published:
	__property System::UnicodeString ErrorMessage = {read=FErrorMessage};
	__property System::UnicodeString ErrorName = {read=FErrorName};
	__property System::UnicodeString ErrorDescription = {read=FErrorDescription};
	__property System::UnicodeString ErrorDetails = {read=FErrorDetails};
};


class PASCALIMPLEMENTATION TTMSFNCCloudPayPalTransaction : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	double FInsurance;
	double FTax;
	double FShipping;
	TTMSFNCCloudPayPalCurrency FCurrency;
	TTMSFNCCloudPayPalItems* FItems;
	System::UnicodeString FDescription;
	void __fastcall SetCurrency(const TTMSFNCCloudPayPalCurrency Value);
	void __fastcall SetInsurance(const double Value);
	void __fastcall SetShipping(const double Value);
	void __fastcall SetTax(const double Value);
	void __fastcall SetDescription(const System::UnicodeString Value);
	
public:
	__fastcall TTMSFNCCloudPayPalTransaction();
	__fastcall virtual ~TTMSFNCCloudPayPalTransaction();
	
__published:
	__property TTMSFNCCloudPayPalCurrency Currency = {read=FCurrency, write=SetCurrency, default=23};
	__property System::UnicodeString Description = {read=FDescription, write=SetDescription};
	__property double Shipping = {read=FShipping, write=SetShipping};
	__property double Insurance = {read=FInsurance, write=SetInsurance};
	__property double Tax = {read=FTax, write=SetTax};
	__property TTMSFNCCloudPayPalItems* Items = {read=FItems, write=FItems};
};


class PASCALIMPLEMENTATION TTMSFNCCloudPayPalPayer : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	System::UnicodeString FStreet;
	System::UnicodeString FLastName;
	System::UnicodeString FEMail;
	System::UnicodeString FPostalCode;
	System::UnicodeString FState;
	System::UnicodeString FID;
	System::UnicodeString FRecipient;
	System::UnicodeString FCity;
	System::UnicodeString FCountryCode;
	System::UnicodeString FFirstName;
	
public:
	__fastcall TTMSFNCCloudPayPalPayer();
	__fastcall virtual ~TTMSFNCCloudPayPalPayer();
	void __fastcall FromJSON(System::Json::TJSONValue* jo);
	
__published:
	__property System::UnicodeString ID = {read=FID};
	__property System::UnicodeString Email = {read=FEMail};
	__property System::UnicodeString FirstName = {read=FFirstName};
	__property System::UnicodeString LastName = {read=FLastName};
	__property System::UnicodeString Street = {read=FStreet};
	__property System::UnicodeString City = {read=FCity};
	__property System::UnicodeString State = {read=FState};
	__property System::UnicodeString PostalCode = {read=FPostalCode};
	__property System::UnicodeString CountryCode = {read=FCountryCode};
	__property System::UnicodeString Recipient = {read=FRecipient};
};


class PASCALIMPLEMENTATION TTMSFNCCloudPayPalPayment : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	System::UnicodeString FState;
	System::UnicodeString FID;
	TTMSFNCCloudPayPalPayer* FPayer;
	System::UnicodeString FTransactionID;
	System::UnicodeString FTotal;
	System::UnicodeString FCurrency;
	
public:
	__fastcall TTMSFNCCloudPayPalPayment();
	__fastcall virtual ~TTMSFNCCloudPayPalPayment();
	void __fastcall FromJSON(System::Json::TJSONValue* jo);
	
__published:
	__property System::UnicodeString ID = {read=FID};
	__property System::UnicodeString TransactionID = {read=FTransactionID};
	__property TTMSFNCCloudPayPalPayer* Payer = {read=FPayer};
	__property System::UnicodeString State = {read=FState};
	__property System::UnicodeString Total = {read=FTotal};
	__property System::UnicodeString Currency = {read=FCurrency};
};


class PASCALIMPLEMENTATION TTMSFNCApprovalProcess : public Fmx::Tmsfnccloudoauth::TTMSFNCCustomCloudOAuth
{
	typedef Fmx::Tmsfnccloudoauth::TTMSFNCCustomCloudOAuth inherited;
	
private:
	TTMSFNCCustomCloudPayPal* FPayPal;
	System::UnicodeString FURL;
	
protected:
	virtual System::UnicodeString __fastcall GetAuthenticationURL();
	virtual void __fastcall RetrieveAccessToken();
	virtual bool __fastcall ProcessAuthenticationCallbackURL(const System::UnicodeString ACallBackURLResult);
	
public:
	virtual void __fastcall TestTokens(const Fmx::Tmsfnccloudbase::_di_TTMSFNCCloudBaseRequestResultEvent ATestTokensRequestResultEvent = Fmx::Tmsfnccloudbase::_di_TTMSFNCCloudBaseRequestResultEvent());
	virtual bool __fastcall GetTestTokensResult(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	__property System::UnicodeString URL = {read=FURL, write=FURL};
public:
	/* TTMSFNCCustomCloudOAuth.Create */ inline __fastcall virtual TTMSFNCApprovalProcess()/* overload */ : Fmx::Tmsfnccloudoauth::TTMSFNCCustomCloudOAuth() { }
	/* TTMSFNCCustomCloudOAuth.Create */ inline __fastcall virtual TTMSFNCApprovalProcess(System::Classes::TComponent* AOwner)/* overload */ : Fmx::Tmsfnccloudoauth::TTMSFNCCustomCloudOAuth(AOwner) { }
	/* TTMSFNCCustomCloudOAuth.Destroy */ inline __fastcall virtual ~TTMSFNCApprovalProcess() { }
	
};


typedef void __fastcall (__closure *TTMSFNCCloudPayPalCreatePaymentEvent)(System::TObject* Sender, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudPayPalGetPaymentAccessEvent)(System::TObject* Sender, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudPayPalExecutePaymentEvent)(System::TObject* Sender, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

class PASCALIMPLEMENTATION TTMSFNCCustomCloudPayPal : public Fmx::Tmsfnccloudoauth::TTMSFNCSimpleCloudOAuth
{
	typedef Fmx::Tmsfnccloudoauth::TTMSFNCSimpleCloudOAuth inherited;
	
private:
	TTMSFNCApprovalProcess* FApprovalProcess;
	TTMSFNCCloudPayPalTransaction* FTransaction;
	TTMSFNCCloudPayPalPayment* FPayment;
	System::Classes::TNotifyEvent FOnPaymentCancelled;
	System::Classes::TNotifyEvent FOnPaymentAccepted;
	System::Classes::TNotifyEvent FOnPaymentFailed;
	TTMSFNCCloudPayPalError* FPaymentError;
	TTMSFNCCloudPayPalEnvironment FAPIEnvironment;
	System::UnicodeString FPaymentToken;
	System::UnicodeString FPaymentID;
	System::UnicodeString FPaymentURL;
	System::UnicodeString FPayerID;
	TTMSFNCCloudPayPalCreatePaymentEvent FOnCreatePayment;
	TTMSFNCCloudPayPalExecutePaymentEvent FOnExecutePayment;
	TTMSFNCCloudPayPalGetPaymentAccessEvent FOnGetPaymentAccess;
	
protected:
	virtual System::UnicodeString __fastcall GetVersion();
	void __fastcall DoPaymentFailed();
	void __fastcall DoPaymentCancelled();
	void __fastcall DoPaymentAccepted();
	void __fastcall CallPaymentFailed();
	void __fastcall CallPaymentCancelled();
	void __fastcall CallPaymentAccepted();
	HIDESBASE void __fastcall DoGetAuthorizationPageHTML(System::TObject* Sender, const bool ASuccess, System::UnicodeString &AHTML);
	void __fastcall DoCreatePayment(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoExecutePayment(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoGetPaymentAccess(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestCreatePayment(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestExecutePayment(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestGetPaymentAccess(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	System::UnicodeString __fastcall GetAPIBase();
	void __fastcall GetPaymentAccess();
	void __fastcall CreatePayment();
	void __fastcall ExecutePayment();
	virtual void __fastcall ApprovePayment();
	__property TTMSFNCCloudPayPalEnvironment APIEnvironment = {read=FAPIEnvironment, write=FAPIEnvironment, default=1};
	__property System::Classes::TNotifyEvent OnPaymentCancelled = {read=FOnPaymentCancelled, write=FOnPaymentCancelled};
	__property System::Classes::TNotifyEvent OnPaymentFailed = {read=FOnPaymentFailed, write=FOnPaymentFailed};
	__property System::Classes::TNotifyEvent OnPaymentAccepted = {read=FOnPaymentAccepted, write=FOnPaymentAccepted};
	__property TTMSFNCCloudPayPalCreatePaymentEvent OnCreatePayment = {read=FOnCreatePayment, write=FOnCreatePayment};
	__property TTMSFNCCloudPayPalExecutePaymentEvent OnExecutePayment = {read=FOnExecutePayment, write=FOnExecutePayment};
	__property TTMSFNCCloudPayPalGetPaymentAccessEvent OnGetPaymentAccess = {read=FOnGetPaymentAccess, write=FOnGetPaymentAccess};
	
public:
	__property TTMSFNCCloudPayPalPayment* Payment = {read=FPayment, write=FPayment};
	__property TTMSFNCCloudPayPalError* PaymentError = {read=FPaymentError, write=FPaymentError};
	__property TTMSFNCCloudPayPalTransaction* Transaction = {read=FTransaction, write=FTransaction};
	__fastcall virtual TTMSFNCCustomCloudPayPal(System::Classes::TComponent* AOwner)/* overload */;
	__fastcall virtual ~TTMSFNCCustomCloudPayPal();
	void __fastcall DoPayment();
public:
	/* TTMSFNCCustomCloudOAuth.Create */ inline __fastcall virtual TTMSFNCCustomCloudPayPal()/* overload */ : Fmx::Tmsfnccloudoauth::TTMSFNCSimpleCloudOAuth() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudPayPal : public TTMSFNCCustomCloudPayPal
{
	typedef TTMSFNCCustomCloudPayPal inherited;
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	
__published:
	__property APIEnvironment = {default=1};
	__property OnCreatePayment;
	__property OnExecutePayment;
	__property OnGetPaymentAccess;
	__property OnPaymentCancelled;
	__property OnPaymentFailed;
	__property OnPaymentAccepted;
public:
	/* TTMSFNCCustomCloudPayPal.Create */ inline __fastcall virtual TTMSFNCCloudPayPal(System::Classes::TComponent* AOwner)/* overload */ : TTMSFNCCustomCloudPayPal(AOwner) { }
	/* TTMSFNCCustomCloudPayPal.Destroy */ inline __fastcall virtual ~TTMSFNCCloudPayPal() { }
	
public:
	/* TTMSFNCCustomCloudOAuth.Create */ inline __fastcall virtual TTMSFNCCloudPayPal()/* overload */ : TTMSFNCCustomCloudPayPal() { }
	
};


//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x0);
static constexpr System::Int8 BLD_VER = System::Int8(0x1);
}	/* namespace Tmsfnccloudpaypal */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCCLOUDPAYPAL)
using namespace Fmx::Tmsfnccloudpaypal;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfnccloudpaypalHPP
