// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCUFlxFormats.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncuflxformatsHPP
#define Fmx_TmsfncuflxformatsHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <FMX.TMSFNCUFlxMessages.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncuflxformats
{
//-- forward type declarations -----------------------------------------------
struct TFlxFont;
struct TFlxOneBorder;
struct TFlxBorders;
struct TFlxFillPattern;
struct TFlxFormat;
//-- type declarations -------------------------------------------------------
enum DECLSPEC_DENUM THFlxAlignment : unsigned char { fha_general, fha_left, fha_center, fha_right, fha_fill, fha_justify, fha_center_across_selection };

enum DECLSPEC_DENUM TVFlxAlignment : unsigned char { fva_top, fva_center, fva_bottom, fva_justify, fva_distributed };

enum DECLSPEC_DENUM TFlxBorderStyle : unsigned char { fbs_None, fbs_Thin, fbs_Medium, fbs_Dashed, fbs_Dotted, fbs_Thick, fbs_Double, fbs_Hair, fbs_Medium_dashed, fbs_Dash_dot, fbs_Medium_dash_dot, fbs_Dash_dot_dot, fbs_Medium_dash_dot_dot, fbs_Slanted_dash_dot };

_DECLARE_ARITH_TYPE_ALIAS(System::Int8, TFlxPatternStyle);

enum DECLSPEC_DENUM TFlxDiagonalBorder : unsigned char { fdb_None, fdb_DiagDown, fdb_DiagUp, fdb_Both };

enum DECLSPEC_DENUM TFlxFontStyle : unsigned char { flsBold, flsItalic, flsStrikeOut, flsSuperscript, flsSubscript };

enum DECLSPEC_DENUM TFlxUnderline : unsigned char { fu_None, fu_Single, fu_Double, fu_SingleAccounting, fu_DoubleAccounting };

typedef System::Set<TFlxFontStyle, TFlxFontStyle::flsBold, TFlxFontStyle::flsSubscript> SetOfTFlxFontStyle;

struct DECLSPEC_DRECORD TFlxFont
{
public:
	System::UnicodeString Name;
	System::Word Size20;
	int ColorIndex;
	SetOfTFlxFontStyle Style;
	TFlxUnderline Underline;
	System::Byte Family;
	System::Byte CharSet;
};


struct DECLSPEC_DRECORD TFlxOneBorder
{
public:
	TFlxBorderStyle Style;
	int ColorIndex;
};


struct DECLSPEC_DRECORD TFlxBorders
{
public:
	TFlxOneBorder Left;
	TFlxOneBorder Right;
	TFlxOneBorder Top;
	TFlxOneBorder Bottom;
	TFlxOneBorder Diagonal;
	TFlxDiagonalBorder DiagonalStyle;
};


struct DECLSPEC_DRECORD TFlxFillPattern
{
public:
	TFlxPatternStyle Pattern;
	int FgColorIndex;
	int BgColorIndex;
};


struct DECLSPEC_DRECORD TFlxFormat
{
public:
	TFlxFont Font;
	TFlxBorders Borders;
	System::UnicodeString Format;
	TFlxFillPattern FillPattern;
	THFlxAlignment HAlignment;
	TVFlxAlignment VAlignment;
	bool Locked;
	bool Hidden;
	int Parent;
	bool WrapText;
	bool ShrinkToFit;
	System::Byte Rotation;
	System::Byte Indent;
};


typedef TFlxFormat *PFlxFormat;

//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 TFlxPatternStyle_Automatic = System::Int8(0x0);
static constexpr System::Int8 TFlxPatternStyle_None = System::Int8(0x1);
static constexpr System::Int8 TFlxPatternStyle_Solid = System::Int8(0x2);
static constexpr System::Int8 TFlxPatternStyle_Gray50 = System::Int8(0x3);
static constexpr System::Int8 TFlxPatternStyle_Gray75 = System::Int8(0x4);
static constexpr System::Int8 TFlxPatternStyle_Gray25 = System::Int8(0x5);
static constexpr System::Int8 TFlxPatternStyle_Horizontal = System::Int8(0x6);
static constexpr System::Int8 TFlxPatternStyle_Vertical = System::Int8(0x7);
static constexpr System::Int8 TFlxPatternStyle_Down = System::Int8(0x8);
static constexpr System::Int8 TFlxPatternStyle_Up = System::Int8(0x9);
static constexpr System::Int8 TFlxPatternStyle_Checker = System::Int8(0xa);
static constexpr System::Int8 TFlxPatternStyle_SemiGray75 = System::Int8(0xb);
static constexpr System::Int8 TFlxPatternStyle_LightHorizontal = System::Int8(0xc);
static constexpr System::Int8 TFlxPatternStyle_LightVertical = System::Int8(0xd);
static constexpr System::Int8 TFlxPatternStyle_LightDown = System::Int8(0xe);
static constexpr System::Int8 TFlxPatternStyle_LightUp = System::Int8(0xf);
static constexpr System::Int8 TFlxPatternStyle_Grid = System::Int8(0x10);
static constexpr System::Int8 TFlxPatternStyle_CrissCross = System::Int8(0x11);
static constexpr System::Int8 TFlxPatternStyle_Gray16 = System::Int8(0x12);
static constexpr System::Int8 TFlxPatternStyle_Gray8 = System::Int8(0x13);
}	/* namespace Tmsfncuflxformats */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCUFLXFORMATS)
using namespace Fmx::Tmsfncuflxformats;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncuflxformatsHPP
