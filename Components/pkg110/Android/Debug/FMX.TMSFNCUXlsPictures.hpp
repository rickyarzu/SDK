// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCUXlsPictures.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncuxlspicturesHPP
#define Fmx_TmsfncuxlspicturesHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <FMX.Types.hpp>
#include <FMX.Graphics.hpp>
#include <System.Variants.hpp>
#include <System.SysUtils.hpp>
#include <System.Classes.hpp>
#include <FMX.TMSFNCUFlxMessages.hpp>
#include <FMX.TMSFNCUExcelAdapter.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncuxlspictures
{
//-- forward type declarations -----------------------------------------------
struct TSmallRect;
struct TMetafileHeader;
//-- type declarations -------------------------------------------------------
#pragma pack(push,1)
struct DECLSPEC_DRECORD TSmallRect
{
public:
	short Left;
	short Top;
	short Right;
	short Bottom;
};
#pragma pack(pop)


#pragma pack(push,1)
struct DECLSPEC_DRECORD TMetafileHeader
{
public:
	int Key;
	short Handle;
	TSmallRect Rect;
	System::Word Inch;
	int Reserved;
	System::Word CheckSum;
};
#pragma pack(pop)


//-- var, const, procedure ---------------------------------------------------
extern DELPHI_PACKAGE System::Word __fastcall ComputeAldusChecksum(TMetafileHeader &WMF);
extern DELPHI_PACKAGE void __fastcall SaveImgStreamToDiskImage(System::Classes::TStream* const Pic, const Fmx::Tmsfncuflxmessages::TXlsImgTypes PicType, System::Classes::TStream* const OutStream, /* out */ bool &Saved);
extern DELPHI_PACKAGE Fmx::Graphics::TBitmap* __fastcall CreateBmpPattern(const int n, const int ColorFg, const int ColorBg);
}	/* namespace Tmsfncuxlspictures */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCUXLSPICTURES)
using namespace Fmx::Tmsfncuxlspictures;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncuxlspicturesHPP
