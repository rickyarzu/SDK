// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCIPEdit.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncipeditHPP
#define Fmx_TmsfncipeditHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <System.Types.hpp>
#include <System.SysUtils.hpp>
#include <FMX.Types.hpp>
#include <System.TypInfo.hpp>
#include <FMX.TMSFNCCustomControl.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.TMSFNCEdit.hpp>
#include <FMX.TMSFNCGraphics.hpp>
#include <FMX.TMSFNCGraphicsTypes.hpp>
#include <FMX.TMSFNCUtils.hpp>
#include <FMX.TMSFNCStyles.hpp>
#include <FMX.Controls.hpp>
#include <System.Generics.Collections.hpp>
#include <System.Generics.Defaults.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncipedit
{
//-- forward type declarations -----------------------------------------------
struct TTMSFNCIPv6Address;
class DELPHICLASS TTMSFNCCustomIPEdit;
class DELPHICLASS TTMSFNCIPEdit;
//-- type declarations -------------------------------------------------------
enum DECLSPEC_DENUM TTMSFNCIPEditType : unsigned char { IPv4, IPv6, MAC };

struct DECLSPEC_DRECORD TTMSFNCIPv6Address
{
public:
	unsigned IPv6HiHi;
	unsigned IPv6HiLo;
	unsigned IPv6LoHi;
	unsigned IPv6LoLo;
};


#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCustomIPEdit : public Fmx::Tmsfnccustomcontrol::TTMSFNCCustomControl
{
	typedef Fmx::Tmsfnccustomcontrol::TTMSFNCCustomControl inherited;
	
private:
	int FNumOfFields;
	System::StaticArray<Fmx::Tmsfncedit::TTMSFNCEdit*, 8> FFields;
	System::UnicodeString FIPAddress;
	TTMSFNCIPEditType FIPAddressType;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FIPAddressFont;
	System::Classes::TNotifyEvent FOnChange;
	void __fastcall SetIPAddress(const System::UnicodeString Value);
	void __fastcall SetIPAddressType(const TTMSFNCIPEditType Value);
	void __fastcall SetIPv4Address(const unsigned Value);
	void __fastcall SetIPv6Address(const TTMSFNCIPv6Address &Value);
	void __fastcall SetIPAddressFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	System::UnicodeString __fastcall GetIPAddress();
	unsigned __fastcall GetIPv4Address();
	TTMSFNCIPv6Address __fastcall GetIPv6Address();
	
protected:
	virtual void __fastcall ChangeDPIScale(int M, int D);
	virtual void __fastcall ApplyStyle();
	virtual void __fastcall ResetToDefaultStyle();
	virtual void __fastcall UpdateControlAfterResize();
	virtual void __fastcall Loaded();
	void __fastcall DoChange();
	virtual void __fastcall Draw(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	void __fastcall CreateFields();
	void __fastcall InitializeFields();
	void __fastcall IPToFields();
	void __fastcall SetFieldWidth();
	void __fastcall ResetFields();
	void __fastcall ClearIPAddress();
	void __fastcall IPAddressFontChanged(System::TObject* Sender);
	void __fastcall FieldKeyUp(System::TObject* Sender, System::Word &Key, System::WideChar &KeyChar, System::Classes::TShiftState Shift);
	void __fastcall FieldKeyDown(System::TObject* Sender, System::Word &Key, System::WideChar &KeyChar, System::Classes::TShiftState Shift);
	void __fastcall FieldEnter(System::TObject* Sender);
	void __fastcall FieldExit(System::TObject* Sender);
	void __fastcall FieldChange(System::TObject* Sender);
	virtual System::UnicodeString __fastcall GetVersion();
	virtual bool __fastcall IsAppearanceProperty(System::TObject* AObject, System::UnicodeString APropertyName, System::TTypeKind APropertyType);
	__property System::UnicodeString IPAddress = {read=GetIPAddress, write=SetIPAddress};
	__property TTMSFNCIPEditType IPAddressType = {read=FIPAddressType, write=SetIPAddressType, default=0};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* IPAddressFont = {read=FIPAddressFont, write=SetIPAddressFont};
	__property System::Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
	
public:
	__fastcall virtual TTMSFNCCustomIPEdit(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCCustomIPEdit();
	__property unsigned IPv4Address = {read=GetIPv4Address, write=SetIPv4Address, nodefault};
	__property TTMSFNCIPv6Address IPv6Address = {read=GetIPv6Address, write=SetIPv6Address};
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCIPEdit : public TTMSFNCCustomIPEdit
{
	typedef TTMSFNCCustomIPEdit inherited;
	
__published:
	__property IPAddress = {default=0};
	__property IPAddressType = {default=0};
	__property IPAddressFont;
	__property Fill;
	__property Stroke;
	__property OnChange;
public:
	/* TTMSFNCCustomIPEdit.Create */ inline __fastcall virtual TTMSFNCIPEdit(System::Classes::TComponent* AOwner) : TTMSFNCCustomIPEdit(AOwner) { }
	/* TTMSFNCCustomIPEdit.Destroy */ inline __fastcall virtual ~TTMSFNCIPEdit() { }
	
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x1);
static constexpr System::Int8 BLD_VER = System::Int8(0x0);
}	/* namespace Tmsfncipedit */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCIPEDIT)
using namespace Fmx::Tmsfncipedit;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncipeditHPP
