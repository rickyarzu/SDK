// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCUXlsStrings.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncuxlsstringsHPP
#define Fmx_TmsfncuxlsstringsHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <FMX.TMSFNCXlsMessages.hpp>
#include <System.SysUtils.hpp>
#include <System.Classes.hpp>
#include <FMX.TMSFNCUXlsBaseRecords.hpp>
#include <FMX.TMSFNCUFlxMessages.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncuxlsstrings
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TExcelString;
//-- type declarations -------------------------------------------------------
_DECLARE_ARITH_TYPE_ALIAS(System::Int8, TStrLenLength);

_DECLARE_ARITH_TYPE_ALIAS(System::Int8, TCharSize);

#pragma pack(push,4)
class PASCALIMPLEMENTATION TExcelString : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	TStrLenLength StrLenLength;
	
public:
	System::Word StrLen;
	System::Byte OptionFlags;
	System::UnicodeString WideData;
	Fmx::Tmsfncuflxmessages::ByteArray ShortData;
	System::Word NumberRichTextFormats;
	Fmx::Tmsfncxlsmessages::ArrayOfByte *RichTextFormats;
	unsigned FarEastDataSize;
	Fmx::Tmsfncxlsmessages::ArrayOfByte *FarEastData;
	System::UnicodeString __fastcall GetValue();
	__fastcall TExcelString(const TStrLenLength aStrLenLength, Fmx::Tmsfncuxlsbaserecords::TBaseRecord* &aRecord, int &Ofs)/* overload */;
	__fastcall TExcelString(const TStrLenLength aStrLenLength, const System::UnicodeString s, const bool ForceWide)/* overload */;
	__fastcall virtual ~TExcelString();
	void __fastcall SaveToStream(System::Classes::TStream* const DataStream)/* overload */;
	void __fastcall SaveToStream(System::Classes::TStream* const DataStream, const bool IncludeLen)/* overload */;
	TCharSize __fastcall GetCharSize();
	bool __fastcall HasRichText();
	bool __fastcall HasFarInfo();
	int __fastcall Compare(TExcelString* const Str2);
	__int64 __fastcall TotalSize();
	void __fastcall CopyToPtr(const Fmx::Tmsfncxlsmessages::PArrayOfByte Ptr, const int aPos)/* overload */;
	void __fastcall CopyToPtr(const Fmx::Tmsfncxlsmessages::PArrayOfByte Ptr, const int aPos, const bool IncludeLen)/* overload */;
	__property System::UnicodeString Value = {read=GetValue};
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
}	/* namespace Tmsfncuxlsstrings */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCUXLSSTRINGS)
using namespace Fmx::Tmsfncuxlsstrings;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncuxlsstringsHPP
