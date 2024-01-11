// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCXlsFormulaMessages.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncxlsformulamessagesHPP
#define Fmx_TmsfncxlsformulamessagesHPP

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
namespace Tmsfncxlsformulamessages
{
//-- forward type declarations -----------------------------------------------
struct TCellFunctionData;
//-- type declarations -------------------------------------------------------
enum DECLSPEC_DENUM TFmReturnType : unsigned char { fmValue, fmRef, fmArray };

struct DECLSPEC_DRECORD TCellFunctionData
{
public:
	int Index;
	System::UnicodeString Name;
	int MinArgCount;
	int MaxArgCount;
	bool Volatile;
	TFmReturnType ReturnType;
	System::UnicodeString ParamType;
};


typedef System::StaticArray<TCellFunctionData, 368> Fmx_Tmsfncxlsformulamessages__44;

//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 fmiErrNull = System::Int8(0x0);
static constexpr System::Int8 fmiErrDiv0 = System::Int8(0x7);
static constexpr System::Int8 fmiErrValue = System::Int8(0xf);
static constexpr System::Int8 fmiErrRef = System::Int8(0x17);
static constexpr System::Int8 fmiErrName = System::Int8(0x1d);
static constexpr System::Int8 fmiErrNum = System::Int8(0x24);
static constexpr System::Int8 fmiErrNA = System::Int8(0x2a);
extern DELPHI_PACKAGE System::ResourceString _fmErrNull;
#define Fmx_Tmsfncxlsformulamessages_fmErrNull System::LoadResourceString(&Fmx::Tmsfncxlsformulamessages::_fmErrNull)
extern DELPHI_PACKAGE System::ResourceString _fmErrDiv0;
#define Fmx_Tmsfncxlsformulamessages_fmErrDiv0 System::LoadResourceString(&Fmx::Tmsfncxlsformulamessages::_fmErrDiv0)
extern DELPHI_PACKAGE System::ResourceString _fmErrValue;
#define Fmx_Tmsfncxlsformulamessages_fmErrValue System::LoadResourceString(&Fmx::Tmsfncxlsformulamessages::_fmErrValue)
extern DELPHI_PACKAGE System::ResourceString _fmErrRef;
#define Fmx_Tmsfncxlsformulamessages_fmErrRef System::LoadResourceString(&Fmx::Tmsfncxlsformulamessages::_fmErrRef)
extern DELPHI_PACKAGE System::ResourceString _fmErrName;
#define Fmx_Tmsfncxlsformulamessages_fmErrName System::LoadResourceString(&Fmx::Tmsfncxlsformulamessages::_fmErrName)
extern DELPHI_PACKAGE System::ResourceString _fmErrNum;
#define Fmx_Tmsfncxlsformulamessages_fmErrNum System::LoadResourceString(&Fmx::Tmsfncxlsformulamessages::_fmErrNum)
extern DELPHI_PACKAGE System::ResourceString _fmErrNA;
#define Fmx_Tmsfncxlsformulamessages_fmErrNA System::LoadResourceString(&Fmx::Tmsfncxlsformulamessages::_fmErrNA)
extern DELPHI_PACKAGE System::ResourceString _fmErrUnknown;
#define Fmx_Tmsfncxlsformulamessages_fmErrUnknown System::LoadResourceString(&Fmx::Tmsfncxlsformulamessages::_fmErrUnknown)
extern DELPHI_PACKAGE System::ResourceString _fmErrStart;
#define Fmx_Tmsfncxlsformulamessages_fmErrStart System::LoadResourceString(&Fmx::Tmsfncxlsformulamessages::_fmErrStart)
extern DELPHI_PACKAGE System::ResourceString _fmTrue;
#define Fmx_Tmsfncxlsformulamessages_fmTrue System::LoadResourceString(&Fmx::Tmsfncxlsformulamessages::_fmTrue)
extern DELPHI_PACKAGE System::ResourceString _fmFalse;
#define Fmx_Tmsfncxlsformulamessages_fmFalse System::LoadResourceString(&Fmx::Tmsfncxlsformulamessages::_fmFalse)
extern DELPHI_PACKAGE System::ResourceString _fmStartFormula;
#define Fmx_Tmsfncxlsformulamessages_fmStartFormula System::LoadResourceString(&Fmx::Tmsfncxlsformulamessages::_fmStartFormula)
extern DELPHI_PACKAGE System::ResourceString _fmFormulaDecimal;
#define Fmx_Tmsfncxlsformulamessages_fmFormulaDecimal System::LoadResourceString(&Fmx::Tmsfncxlsformulamessages::_fmFormulaDecimal)
extern DELPHI_PACKAGE System::ResourceString _fmFormulaThousands;
#define Fmx_Tmsfncxlsformulamessages_fmFormulaThousands System::LoadResourceString(&Fmx::Tmsfncxlsformulamessages::_fmFormulaThousands)
extern DELPHI_PACKAGE System::ResourceString _fmFunctionSep;
#define Fmx_Tmsfncxlsformulamessages_fmFunctionSep System::LoadResourceString(&Fmx::Tmsfncxlsformulamessages::_fmFunctionSep)
extern DELPHI_PACKAGE System::ResourceString _fmUnion;
#define Fmx_Tmsfncxlsformulamessages_fmUnion System::LoadResourceString(&Fmx::Tmsfncxlsformulamessages::_fmUnion)
extern DELPHI_PACKAGE System::ResourceString _fmIntersect;
#define Fmx_Tmsfncxlsformulamessages_fmIntersect System::LoadResourceString(&Fmx::Tmsfncxlsformulamessages::_fmIntersect)
extern DELPHI_PACKAGE System::ResourceString _fmSingleQuote;
#define Fmx_Tmsfncxlsformulamessages_fmSingleQuote System::LoadResourceString(&Fmx::Tmsfncxlsformulamessages::_fmSingleQuote)
extern DELPHI_PACKAGE System::ResourceString _fmOpenArray;
#define Fmx_Tmsfncxlsformulamessages_fmOpenArray System::LoadResourceString(&Fmx::Tmsfncxlsformulamessages::_fmOpenArray)
extern DELPHI_PACKAGE System::ResourceString _fmCloseArray;
#define Fmx_Tmsfncxlsformulamessages_fmCloseArray System::LoadResourceString(&Fmx::Tmsfncxlsformulamessages::_fmCloseArray)
extern DELPHI_PACKAGE System::ResourceString _fmOpenParen;
#define Fmx_Tmsfncxlsformulamessages_fmOpenParen System::LoadResourceString(&Fmx::Tmsfncxlsformulamessages::_fmOpenParen)
extern DELPHI_PACKAGE System::ResourceString _fmCloseParen;
#define Fmx_Tmsfncxlsformulamessages_fmCloseParen System::LoadResourceString(&Fmx::Tmsfncxlsformulamessages::_fmCloseParen)
extern DELPHI_PACKAGE System::ResourceString _fmArrayRowSep;
#define Fmx_Tmsfncxlsformulamessages_fmArrayRowSep System::LoadResourceString(&Fmx::Tmsfncxlsformulamessages::_fmArrayRowSep)
extern DELPHI_PACKAGE System::ResourceString _fmArrayColSep;
#define Fmx_Tmsfncxlsformulamessages_fmArrayColSep System::LoadResourceString(&Fmx::Tmsfncxlsformulamessages::_fmArrayColSep)
extern DELPHI_PACKAGE System::ResourceString _fmAbsoluteRef;
#define Fmx_Tmsfncxlsformulamessages_fmAbsoluteRef System::LoadResourceString(&Fmx::Tmsfncxlsformulamessages::_fmAbsoluteRef)
extern DELPHI_PACKAGE System::ResourceString _fmRangeSep;
#define Fmx_Tmsfncxlsformulamessages_fmRangeSep System::LoadResourceString(&Fmx::Tmsfncxlsformulamessages::_fmRangeSep)
extern DELPHI_PACKAGE System::ResourceString _fmExternalRef;
#define Fmx_Tmsfncxlsformulamessages_fmExternalRef System::LoadResourceString(&Fmx::Tmsfncxlsformulamessages::_fmExternalRef)
extern DELPHI_PACKAGE System::ResourceString _fmWorkbookOpen;
#define Fmx_Tmsfncxlsformulamessages_fmWorkbookOpen System::LoadResourceString(&Fmx::Tmsfncxlsformulamessages::_fmWorkbookOpen)
extern DELPHI_PACKAGE System::ResourceString _fmWorkbookClose;
#define Fmx_Tmsfncxlsformulamessages_fmWorkbookClose System::LoadResourceString(&Fmx::Tmsfncxlsformulamessages::_fmWorkbookClose)
extern DELPHI_PACKAGE System::ResourceString _fmTableText;
#define Fmx_Tmsfncxlsformulamessages_fmTableText System::LoadResourceString(&Fmx::Tmsfncxlsformulamessages::_fmTableText)
extern DELPHI_PACKAGE System::ResourceString _fmPlus;
#define Fmx_Tmsfncxlsformulamessages_fmPlus System::LoadResourceString(&Fmx::Tmsfncxlsformulamessages::_fmPlus)
extern DELPHI_PACKAGE System::ResourceString _fmMinus;
#define Fmx_Tmsfncxlsformulamessages_fmMinus System::LoadResourceString(&Fmx::Tmsfncxlsformulamessages::_fmMinus)
extern DELPHI_PACKAGE System::ResourceString _fmMul;
#define Fmx_Tmsfncxlsformulamessages_fmMul System::LoadResourceString(&Fmx::Tmsfncxlsformulamessages::_fmMul)
extern DELPHI_PACKAGE System::ResourceString _fmDiv;
#define Fmx_Tmsfncxlsformulamessages_fmDiv System::LoadResourceString(&Fmx::Tmsfncxlsformulamessages::_fmDiv)
extern DELPHI_PACKAGE System::ResourceString _fmPower;
#define Fmx_Tmsfncxlsformulamessages_fmPower System::LoadResourceString(&Fmx::Tmsfncxlsformulamessages::_fmPower)
extern DELPHI_PACKAGE System::ResourceString _fmPercent;
#define Fmx_Tmsfncxlsformulamessages_fmPercent System::LoadResourceString(&Fmx::Tmsfncxlsformulamessages::_fmPercent)
static constexpr System::WideChar fmStr = (System::WideChar)(0x22);
extern DELPHI_PACKAGE System::ResourceString _fmAnd;
#define Fmx_Tmsfncxlsformulamessages_fmAnd System::LoadResourceString(&Fmx::Tmsfncxlsformulamessages::_fmAnd)
extern DELPHI_PACKAGE System::ResourceString _fmLT;
#define Fmx_Tmsfncxlsformulamessages_fmLT System::LoadResourceString(&Fmx::Tmsfncxlsformulamessages::_fmLT)
extern DELPHI_PACKAGE System::ResourceString _fmLE;
#define Fmx_Tmsfncxlsformulamessages_fmLE System::LoadResourceString(&Fmx::Tmsfncxlsformulamessages::_fmLE)
extern DELPHI_PACKAGE System::ResourceString _fmEQ;
#define Fmx_Tmsfncxlsformulamessages_fmEQ System::LoadResourceString(&Fmx::Tmsfncxlsformulamessages::_fmEQ)
extern DELPHI_PACKAGE System::ResourceString _fmGE;
#define Fmx_Tmsfncxlsformulamessages_fmGE System::LoadResourceString(&Fmx::Tmsfncxlsformulamessages::_fmGE)
extern DELPHI_PACKAGE System::ResourceString _fmGT;
#define Fmx_Tmsfncxlsformulamessages_fmGT System::LoadResourceString(&Fmx::Tmsfncxlsformulamessages::_fmGT)
extern DELPHI_PACKAGE System::ResourceString _fmNE;
#define Fmx_Tmsfncxlsformulamessages_fmNE System::LoadResourceString(&Fmx::Tmsfncxlsformulamessages::_fmNE)
static constexpr System::Int8 attr_bitFSpace = System::Int8(0x0);
static constexpr System::Int8 attr_bitFEnter = System::Int8(0x1);
static constexpr System::Int8 attr_bitFPreSpace = System::Int8(0x2);
static constexpr System::Int8 attr_bitFPreEnter = System::Int8(0x3);
static constexpr System::Int8 attr_bitFPostSpace = System::Int8(0x4);
static constexpr System::Int8 attr_bitFPostEnter = System::Int8(0x5);
static constexpr System::Int8 attr_bitFPreFmlaSpace = System::Int8(0x6);
extern DELPHI_PACKAGE Fmx_Tmsfncxlsformulamessages__44 FuncNameArray;
static constexpr System::Int8 ptgExp = System::Int8(0x1);
static constexpr System::Int8 ptgTbl = System::Int8(0x2);
static constexpr System::Int8 ptgAdd = System::Int8(0x3);
static constexpr System::Int8 ptgSub = System::Int8(0x4);
static constexpr System::Int8 ptgMul = System::Int8(0x5);
static constexpr System::Int8 ptgDiv = System::Int8(0x6);
static constexpr System::Int8 ptgPower = System::Int8(0x7);
static constexpr System::Int8 ptgConcat = System::Int8(0x8);
static constexpr System::Int8 ptgLT = System::Int8(0x9);
static constexpr System::Int8 ptgLE = System::Int8(0xa);
static constexpr System::Int8 ptgEQ = System::Int8(0xb);
static constexpr System::Int8 ptgGE = System::Int8(0xc);
static constexpr System::Int8 ptgGT = System::Int8(0xd);
static constexpr System::Int8 ptgNE = System::Int8(0xe);
static constexpr System::Int8 ptgIsect = System::Int8(0xf);
static constexpr System::Int8 ptgUnion = System::Int8(0x10);
static constexpr System::Int8 ptgRange = System::Int8(0x11);
static constexpr System::Int8 ptgUplus = System::Int8(0x12);
static constexpr System::Int8 ptgUminus = System::Int8(0x13);
static constexpr System::Int8 ptgPercent = System::Int8(0x14);
static constexpr System::Int8 ptgParen = System::Int8(0x15);
static constexpr System::Int8 ptgMissArg = System::Int8(0x16);
static constexpr System::Int8 ptgStr = System::Int8(0x17);
static constexpr System::Int8 ptgAttr = System::Int8(0x19);
static constexpr System::Int8 ptgSheet = System::Int8(0x1a);
static constexpr System::Int8 ptgEndSheet = System::Int8(0x1b);
static constexpr System::Int8 ptgErr = System::Int8(0x1c);
static constexpr System::Int8 ptgBool = System::Int8(0x1d);
static constexpr System::Int8 ptgInt = System::Int8(0x1e);
static constexpr System::Int8 ptgNum = System::Int8(0x1f);
static constexpr System::Int8 ptgArray = System::Int8(0x20);
static constexpr System::Int8 ptgFunc = System::Int8(0x21);
static constexpr System::Int8 ptgFuncVar = System::Int8(0x22);
static constexpr System::Int8 ptgName = System::Int8(0x23);
static constexpr System::Int8 ptgRef = System::Int8(0x24);
static constexpr System::Int8 ptgArea = System::Int8(0x25);
static constexpr System::Int8 ptgMemArea = System::Int8(0x26);
static constexpr System::Int8 ptgMemErr = System::Int8(0x27);
static constexpr System::Int8 ptgMemNoMem = System::Int8(0x28);
static constexpr System::Int8 ptgMemFunc = System::Int8(0x29);
static constexpr System::Int8 ptgRefErr = System::Int8(0x2a);
static constexpr System::Int8 ptgAreaErr = System::Int8(0x2b);
static constexpr System::Int8 ptgRefN = System::Int8(0x2c);
static constexpr System::Int8 ptgAreaN = System::Int8(0x2d);
static constexpr System::Int8 ptgMemAreaN = System::Int8(0x2e);
static constexpr System::Int8 ptgMemNoMemN = System::Int8(0x2f);
static constexpr System::Int8 ptgNameX = System::Int8(0x39);
static constexpr System::Int8 ptgRef3d = System::Int8(0x3a);
static constexpr System::Int8 ptgArea3d = System::Int8(0x3b);
static constexpr System::Int8 ptgRefErr3d = System::Int8(0x3c);
static constexpr System::Int8 ptgAreaErr3d = System::Int8(0x3d);
extern DELPHI_PACKAGE System::UnicodeString __fastcall FmFloatToStr(const System::Extended Value);
extern DELPHI_PACKAGE System::Extended __fastcall FmStrToFloat(const System::UnicodeString Value);
}	/* namespace Tmsfncxlsformulamessages */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCXLSFORMULAMESSAGES)
using namespace Fmx::Tmsfncxlsformulamessages;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncxlsformulamessagesHPP
