// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCUTextDelim.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncutextdelimHPP
#define Fmx_TmsfncutextdelimHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <System.SysUtils.hpp>
#include <FMX.TMSFNCUExcelAdapter.hpp>
#include <FMX.TMSFNCUFlxNumberFormat.hpp>
#include <FMX.TMSFNCUFlxMessages.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncutextdelim
{
//-- forward type declarations -----------------------------------------------
//-- type declarations -------------------------------------------------------
enum DECLSPEC_DENUM XLSColumnImportTypes : unsigned char { xct_general, xct_text, xct_skip };

//-- var, const, procedure ---------------------------------------------------
extern DELPHI_PACKAGE void __fastcall SaveRangeAsTextDelim(System::Classes::TStream* const OutStream, Fmx::Tmsfncuexceladapter::TExcelFile* const Workbook, const System::WideChar Delim, const Fmx::Tmsfncuflxmessages::TXlsCellRange &Range, System::Sysutils::TEncoding* const Encoding)/* overload */;
extern DELPHI_PACKAGE void __fastcall SaveAsTextDelim(System::Classes::TStream* const OutStream, Fmx::Tmsfncuexceladapter::TExcelFile* const Workbook, const System::WideChar Delim, System::Sysutils::TEncoding* const Encoding)/* overload */;
extern DELPHI_PACKAGE void __fastcall LoadFromTextDelim(System::Classes::TStream* const InStream, Fmx::Tmsfncuexceladapter::TExcelFile* const Workbook, const System::WideChar Delim, const int FirstRow, const int FirstCol, const XLSColumnImportTypes *ColumnFormats, const int ColumnFormats_High, System::Sysutils::TEncoding* const Encoding, const bool DetectBOM = false)/* overload */;
extern DELPHI_PACKAGE void __fastcall LoadFromTextDelim(System::Classes::TStreamReader* const Sr, Fmx::Tmsfncuexceladapter::TExcelFile* const Workbook, const System::WideChar Delim, const int FirstRow, const int FirstCol, const XLSColumnImportTypes *ColumnFormats, const int ColumnFormats_High)/* overload */;
extern DELPHI_PACKAGE void __fastcall SaveAsTextDelim(System::Classes::TStream* const OutStream, Fmx::Tmsfncuexceladapter::TExcelFile* const Workbook, const System::WideChar Delim)/* overload */;
extern DELPHI_PACKAGE void __fastcall SaveRangeAsTextDelim(System::Classes::TStream* const OutStream, Fmx::Tmsfncuexceladapter::TExcelFile* const Workbook, const System::WideChar Delim, const Fmx::Tmsfncuflxmessages::TXlsCellRange &Range)/* overload */;
extern DELPHI_PACKAGE void __fastcall LoadFromTextDelim(System::Classes::TStream* const InStream, Fmx::Tmsfncuexceladapter::TExcelFile* const Workbook, const System::WideChar aDelim, const int FirstRow, const int FirstCol, const XLSColumnImportTypes *ColumnFormats, const int ColumnFormats_High)/* overload */;
}	/* namespace Tmsfncutextdelim */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCUTEXTDELIM)
using namespace Fmx::Tmsfncutextdelim;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncutextdelimHPP
