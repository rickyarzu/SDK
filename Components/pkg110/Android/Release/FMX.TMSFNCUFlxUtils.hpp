// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCUFlxUtils.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncuflxutilsHPP
#define Fmx_TmsfncuflxutilsHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <FMX.TMSFNCUExcelAdapter.hpp>
#include <FMX.TMSFNCUFlxMessages.hpp>
#include <System.SysUtils.hpp>
#include <FMX.TMSFNCXlsMessages.hpp>
#include <FMX.Types.hpp>
#include <System.UITypes.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncuflxutils
{
//-- forward type declarations -----------------------------------------------
//-- type declarations -------------------------------------------------------
//-- var, const, procedure ---------------------------------------------------
extern DELPHI_PACKAGE int __fastcall MatchNearestColor(Fmx::Tmsfncuexceladapter::TExcelFile* const Workbook, const System::Uitypes::TColor aColor, const Fmx::Tmsfncuflxmessages::BooleanArray UsedColors);
extern DELPHI_PACKAGE void __fastcall CalcImgCells(Fmx::Tmsfncuexceladapter::TExcelFile* const Workbook, const int Row, const int Col, const int dh, const int dw, const System::Extended ImgHeightInPixels, const System::Extended ImgWidthInPixels, /* out */ Fmx::Tmsfncuflxmessages::TImageProperties &Props);
extern DELPHI_PACKAGE void __fastcall CalcImgDimentions(Fmx::Tmsfncuexceladapter::TExcelFile* const Workbook, const Fmx::Tmsfncuflxmessages::TClientAnchor &Anchor, /* out */ System::Extended &XOfsPixel, /* out */ System::Extended &YOfsPixel, /* out */ System::Extended &w, /* out */ System::Extended &h)/* overload */;
extern DELPHI_PACKAGE void __fastcall CalcImgDimentions(Fmx::Tmsfncuexceladapter::TExcelFile* const Workbook, const Fmx::Tmsfncuflxmessages::TClientAnchor &Anchor, /* out */ int &w, /* out */ int &h)/* overload */;
extern DELPHI_PACKAGE void __fastcall CalcImgDimentions(Fmx::Tmsfncuexceladapter::TExcelFile* const Workbook, const Fmx::Tmsfncuflxmessages::TClientAnchor &Anchor, /* out */ System::Extended &w, /* out */ System::Extended &h)/* overload */;
}	/* namespace Tmsfncuflxutils */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCUFLXUTILS)
using namespace Fmx::Tmsfncuflxutils;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncuflxutilsHPP
