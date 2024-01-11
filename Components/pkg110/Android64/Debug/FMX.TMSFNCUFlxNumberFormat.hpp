// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCUFlxNumberFormat.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncuflxnumberformatHPP
#define Fmx_TmsfncuflxnumberformatHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.SysUtils.hpp>
#include <System.Variants.hpp>
#include <FMX.TMSFNCUFlxMessages.hpp>
#include <System.Math.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncuflxnumberformat
{
//-- forward type declarations -----------------------------------------------
//-- type declarations -------------------------------------------------------
//-- var, const, procedure ---------------------------------------------------
extern DELPHI_PACKAGE System::UnicodeString __fastcall XlsFormatValue _DEPRECATED_ATTRIBUTE1("Use XlsFormatValue1904 instead.") (const System::Variant &V, const System::UnicodeString Format, int &Color);
extern DELPHI_PACKAGE System::UnicodeString __fastcall XlsFormatValue1904(const System::Variant &V, const System::UnicodeString Format, const bool Dates1904, int &Color, Fmx::Tmsfncuflxmessages::PFormatSettings FormatSettings = (Fmx::Tmsfncuflxmessages::PFormatSettings)(0x0));
extern DELPHI_PACKAGE bool __fastcall HasXlsDateTime(const System::UnicodeString Format, /* out */ bool &HasDate, /* out */ bool &HasTime, Fmx::Tmsfncuflxmessages::PFormatSettings FormatSettings = (Fmx::Tmsfncuflxmessages::PFormatSettings)(0x0));
}	/* namespace Tmsfncuflxnumberformat */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCUFLXNUMBERFORMAT)
using namespace Fmx::Tmsfncuflxnumberformat;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncuflxnumberformatHPP
