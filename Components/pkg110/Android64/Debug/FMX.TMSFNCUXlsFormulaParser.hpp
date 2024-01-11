// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCUXlsFormulaParser.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncuxlsformulaparserHPP
#define Fmx_TmsfncuxlsformulaparserHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <FMX.TMSFNCXlsMessages.hpp>
#include <FMX.TMSFNCXlsFormulaMessages.hpp>
#include <FMX.TMSFNCUFlxStack.hpp>
#include <FMX.TMSFNCUXlsBaseRecords.hpp>
#include <System.SysUtils.hpp>
#include <FMX.TMSFNCUXlsBaseRecordLists.hpp>
#include <FMX.TMSFNCUFlxMessages.hpp>
#include <FMX.TMSFNCUXlsReferences.hpp>
#include <FMX.TMSFNCUXlsRowColEntries.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncuxlsformulaparser
{
//-- forward type declarations -----------------------------------------------
//-- type declarations -------------------------------------------------------
//-- var, const, procedure ---------------------------------------------------
extern DELPHI_PACKAGE System::UnicodeString __fastcall RPNToString(const Fmx::Tmsfncxlsmessages::PArrayOfByte RPN, const int atPos, Fmx::Tmsfncuxlsrowcolentries::TCellList* const CellList);
}	/* namespace Tmsfncuxlsformulaparser */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCUXLSFORMULAPARSER)
using namespace Fmx::Tmsfncuxlsformulaparser;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncuxlsformulaparserHPP
