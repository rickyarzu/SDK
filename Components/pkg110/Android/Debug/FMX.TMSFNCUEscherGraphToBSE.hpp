// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCUEscherGraphToBSE.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncueschergraphtobseHPP
#define Fmx_TmsfncueschergraphtobseHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.SysUtils.hpp>
#include <System.Classes.hpp>
#include <FMX.TMSFNCXlsMessages.hpp>
#include <FMX.TMSFNCUEscherRecords.hpp>
#include <FMX.TMSFNCUXlsMD5.hpp>
#include <FMX.TMSFNCUFlxMessages.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncueschergraphtobse
{
//-- forward type declarations -----------------------------------------------
//-- type declarations -------------------------------------------------------
//-- var, const, procedure ---------------------------------------------------
extern DELPHI_PACKAGE void __fastcall LoadDataWMF(const Fmx::Tmsfncuflxmessages::ByteArray Data, const Fmx::Tmsfncuflxmessages::TXlsImgTypes DataType, System::Classes::TStream* const BlipData);
extern DELPHI_PACKAGE Fmx::Tmsfncuescherrecords::TEscherBSERecord* __fastcall ConvertGraphicToBSE(const Fmx::Tmsfncuflxmessages::ByteArray Data, const Fmx::Tmsfncuflxmessages::TXlsImgTypes DataType, const Fmx::Tmsfncuescherrecords::PEscherDwgGroupCache DwgGroupCache, const Fmx::Tmsfncuescherrecords::PEscherDwgCache DwgCache);
}	/* namespace Tmsfncueschergraphtobse */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCUESCHERGRAPHTOBSE)
using namespace Fmx::Tmsfncueschergraphtobse;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncueschergraphtobseHPP
