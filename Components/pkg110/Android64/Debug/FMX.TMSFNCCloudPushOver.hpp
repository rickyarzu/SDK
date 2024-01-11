// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCCloudPushOver.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfnccloudpushoverHPP
#define Fmx_TmsfnccloudpushoverHPP

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
#include <System.SysUtils.hpp>
#include <System.JSON.hpp>
#include <System.Generics.Collections.hpp>
#include <FMX.TMSFNCCustomComponent.hpp>
#include <FMX.Controls.hpp>
#include <FMX.Types.hpp>
#include <System.Generics.Defaults.hpp>
#include <System.Types.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfnccloudpushover
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCCloudPushOverMessage;
class DELPHICLASS TTMSFNCCustomCloudPushOver;
class DELPHICLASS TTMSFNCCloudPushOver;
//-- type declarations -------------------------------------------------------
enum DECLSPEC_DENUM TTMSFNCCloudPushOverMessagePriority : unsigned char { mpNone, mpQuiet, mpHighPriority, mpConfirmation, mpLowestPriority };

enum DECLSPEC_DENUM TTMSFNCCloudPushOverMessageSound : unsigned char { msDefault, msBike, msBugle, msCashRegister, msClassical, msCosmic, msFalling, msGamelan, msIncoming, msIntermission, msMagic, msMechanical, msPianoBar, msSiren, msSpaceAlarm, msTugBoat, msAlien, msClimb, msPersistent, msEcho, msUpDown, msNone };

typedef void __fastcall (__closure *TTMSFNCCloudPushOverErrorEvent)(System::TObject* Sender, System::UnicodeString AErrorMessage, int AErrorCode);

typedef void __fastcall (__closure *TTMSFNCCloudPushOverUserValidEvent)(System::TObject* Sender, System::UnicodeString AUser, bool AValid);

class PASCALIMPLEMENTATION TTMSFNCCloudPushOverMessage : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	System::UnicodeString FMessage;
	System::UnicodeString FURLTitle;
	TTMSFNCCloudPushOverMessageSound FSound;
	System::UnicodeString FDevice;
	System::UnicodeString FTitle;
	System::TDateTime FTimeStamp;
	System::UnicodeString FURL;
	System::UnicodeString FUser;
	TTMSFNCCloudPushOverMessagePriority FPriority;
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__property System::UnicodeString User = {read=FUser, write=FUser};
	__property System::UnicodeString Title = {read=FTitle, write=FTitle};
	__property System::UnicodeString Device = {read=FDevice, write=FDevice};
	__property System::UnicodeString Message = {read=FMessage, write=FMessage};
	__property System::UnicodeString URL = {read=FURL, write=FURL};
	__property System::UnicodeString URLTitle = {read=FURLTitle, write=FURLTitle};
	__property TTMSFNCCloudPushOverMessagePriority Priority = {read=FPriority, write=FPriority, nodefault};
	__property System::TDateTime TimeStamp = {read=FTimeStamp, write=FTimeStamp};
	__property TTMSFNCCloudPushOverMessageSound Sound = {read=FSound, write=FSound, nodefault};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTMSFNCCloudPushOverMessage() { }
	
public:
	/* TObject.Create */ inline __fastcall TTMSFNCCloudPushOverMessage() : System::Classes::TPersistent() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCustomCloudPushOver : public Fmx::Tmsfnccloudbase::TTMSFNCCloudBase
{
	typedef Fmx::Tmsfnccloudbase::TTMSFNCCloudBase inherited;
	
private:
	System::UnicodeString FAPIKey;
	System::Classes::TNotifyEvent FOnPushSucces;
	TTMSFNCCloudPushOverErrorEvent FOnPushError;
	TTMSFNCCloudPushOverUserValidEvent FOnCheckUserValid;
	void __fastcall SetAPIKey(const System::UnicodeString Value);
	
protected:
	virtual NativeUInt __fastcall GetInstance();
	virtual System::UnicodeString __fastcall GetVersion();
	void __fastcall DoPushMessage(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoValidateUser(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	__property System::UnicodeString APIKey = {read=FAPIKey, write=SetAPIKey};
	__property TTMSFNCCloudPushOverErrorEvent OnPushError = {read=FOnPushError, write=FOnPushError};
	__property System::Classes::TNotifyEvent OnPushSucces = {read=FOnPushSucces, write=FOnPushSucces};
	__property TTMSFNCCloudPushOverUserValidEvent OnCheckUserValid = {read=FOnCheckUserValid, write=FOnCheckUserValid};
	
public:
	__fastcall virtual TTMSFNCCustomCloudPushOver(System::Classes::TComponent* AOwner)/* overload */;
	__fastcall virtual ~TTMSFNCCustomCloudPushOver();
	void __fastcall PushMessage(System::UnicodeString AUser, System::UnicodeString AMessage)/* overload */;
	void __fastcall PushMessage(System::UnicodeString AUser, System::UnicodeString ATitle, System::UnicodeString AMessage)/* overload */;
	void __fastcall PushMessage(System::UnicodeString AUser, System::UnicodeString ADevice, System::UnicodeString ATitle, System::UnicodeString AMessage)/* overload */;
	void __fastcall PushMessage(TTMSFNCCloudPushOverMessage* AMessage)/* overload */;
	void __fastcall ValidateUser(System::UnicodeString AUser);
public:
	/* TTMSFNCCustomCloudBase.Create */ inline __fastcall virtual TTMSFNCCustomCloudPushOver()/* overload */ : Fmx::Tmsfnccloudbase::TTMSFNCCloudBase() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudPushOver : public TTMSFNCCustomCloudPushOver
{
	typedef TTMSFNCCustomCloudPushOver inherited;
	
__published:
	__property APIKey = {default=0};
	__property OnPushError;
	__property OnPushSucces;
	__property OnCheckUserValid;
public:
	/* TTMSFNCCustomCloudPushOver.Create */ inline __fastcall virtual TTMSFNCCloudPushOver(System::Classes::TComponent* AOwner)/* overload */ : TTMSFNCCustomCloudPushOver(AOwner) { }
	/* TTMSFNCCustomCloudPushOver.Destroy */ inline __fastcall virtual ~TTMSFNCCloudPushOver() { }
	
public:
	/* TTMSFNCCustomCloudBase.Create */ inline __fastcall virtual TTMSFNCCloudPushOver()/* overload */ : TTMSFNCCustomCloudPushOver() { }
	
};


//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x0);
static constexpr System::Int8 BLD_VER = System::Int8(0x0);
}	/* namespace Tmsfnccloudpushover */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCCLOUDPUSHOVER)
using namespace Fmx::Tmsfnccloudpushover;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfnccloudpushoverHPP
