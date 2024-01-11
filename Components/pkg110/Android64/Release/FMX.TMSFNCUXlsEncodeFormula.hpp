// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCUXlsEncodeFormula.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncuxlsencodeformulaHPP
#define Fmx_TmsfncuxlsencodeformulaHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <FMX.TMSFNCXlsFormulaMessages.hpp>
#include <FMX.TMSFNCXlsMessages.hpp>
#include <FMX.TMSFNCUXlsFormulaParser.hpp>
#include <FMX.TMSFNCUFlxStack.hpp>
#include <FMX.TMSFNCUXlsStrings.hpp>
#include <System.SysUtils.hpp>
#include <FMX.TMSFNCUXlsBaseRecordLists.hpp>
#include <FMX.TMSFNCUXlsRowColEntries.hpp>
#include <System.Character.hpp>
#include <FMX.TMSFNCUFlxMessages.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncuxlsencodeformula
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TParseString;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TParseString : public System::TObject
{
	typedef System::TObject inherited;
	
	
private:
	typedef System::DynamicArray<System::Byte> _TParseString__1;
	
	typedef System::DynamicArray<System::Byte> _TParseString__2;
	
	
private:
	int ParsePos;
	System::UnicodeString Fw;
	_TParseString__1 FParsedData;
	_TParseString__2 FParsedArrayData;
	int MaxErrorLen;
	System::UnicodeString DirectlyInFormula;
	int LastRefOp;
	Fmx::Tmsfncuxlsrowcolentries::TCellList* FCellList;
	Fmx::Tmsfncuflxstack::TWhiteSpaceStack* StackWs;
	System::UnicodeString Default3DExternSheet;
	bool Force3d;
	Fmx::Tmsfncxlsformulamessages::TFmReturnType InitialRefMode;
	bool __fastcall IsNumber(const System::WideChar c);
	bool __fastcall IsAlpha(const System::WideChar c);
	bool __fastcall IsAZ(const System::WideChar c);
	int __fastcall ATo1(const System::WideChar c);
	bool __fastcall NextChar();
	bool __fastcall PeekChar(/* out */ System::WideChar &c);
	bool __fastcall Peek2Char(/* out */ System::WideChar &c);
	bool __fastcall PeekCharWs(/* out */ System::WideChar &c);
	void __fastcall GetNumber();
	void __fastcall GetString();
	void __fastcall GetAlpha();
	void __fastcall GetArray();
	void __fastcall GetFormulaArgs(const int Index, /* out */ int &ArgCount);
	void __fastcall GetFormula(const System::UnicodeString s);
	bool __fastcall GetBool(const System::UnicodeString s);
	bool __fastcall IsErrorCode(const System::UnicodeString s, /* out */ System::Byte &b);
	void __fastcall GetError();
	void __fastcall GetOneReference(/* out */ bool &RowAbs, /* out */ bool &ColAbs, /* out */ int &Row, /* out */ int &Col, /* out */ bool &IsFullRowRange, /* out */ bool &IsFullColRange);
	bool __fastcall GetReference(const bool OnlyPeek);
	void __fastcall Factor();
	void __fastcall RefTerm();
	void __fastcall NegTerm();
	void __fastcall PerTerm();
	void __fastcall ExpTerm();
	void __fastcall MulTerm();
	void __fastcall AddTerm();
	void __fastcall AndTerm();
	void __fastcall ComTerm();
	void __fastcall Expression();
	void __fastcall SkipWhiteSpace();
	void __fastcall UndoSkipWhiteSpace(const int SaveParsePos);
	void __fastcall PopWhiteSpace();
	void __fastcall AddParsed(const System::Byte *s, const int s_High, const bool PopWs = true);
	void __fastcall AddParsedArray(const System::Byte *s, const int s_High);
	bool __fastcall FindComTerm(System::Byte &Ptg);
	void __fastcall GetGeneric3dRef(const System::UnicodeString ExternSheet);
	void __fastcall GetQuotedRef3d();
	void __fastcall GetRef3d(const System::UnicodeString s);
	System::Word __fastcall GetExternSheet(const System::UnicodeString ExternSheet);
	void __fastcall ConvertLastRefValueType(const Fmx::Tmsfncxlsformulamessages::TFmReturnType RefMode);
	System::Byte __fastcall GetLastRefOp();
	__classmethod Fmx::Tmsfncxlsformulamessages::TFmReturnType __fastcall GetPtgMode(const System::Byte aptg);
	void __fastcall SetLastRefOp(const System::Byte aptg, const Fmx::Tmsfncxlsformulamessages::TFmReturnType RefMode);
	void __fastcall ConvertLastRefValueTypeOnce(const Fmx::Tmsfncxlsformulamessages::TFmReturnType RefMode, bool &First);
	bool __fastcall IsDirectlyInFormula();
	void __fastcall DiscardNormalWhiteSpace();
	void __fastcall MakeLastWhitespaceNormal();
	bool __fastcall GetSecondAreaPart(const System::UnicodeString ExternSheet, const bool OnlyPeek, int Row1, int Col1, const bool RowAbs1, const bool ColAbs1, const bool IsFullRowRange1, const bool IsFullColRange1);
	void __fastcall DoExternNamedRange(const System::UnicodeString ExternSheet);
	void __fastcall AddParsedArea(const int Rw1, const int Rw2, const int grBit1, const int grBit2);
	void __fastcall AddParsed3dArea(const System::UnicodeString ExternSheet, const int Rw1, const int Rw2, const int grBit1, const int grBit2);
	void __fastcall AddParsed3dRef(const System::UnicodeString ExternSheet, const int Rw1, const int grBit1);
	void __fastcall AddParsedRef(const int Rw1, const int grBit1);
	void __fastcall AddParsedExternName(const System::UnicodeString ExternSheet, const System::UnicodeString ExternName);
	
public:
	__fastcall TParseString(const System::UnicodeString aw, Fmx::Tmsfncuxlsrowcolentries::TCellList* const aCellList, const Fmx::Tmsfncxlsformulamessages::TFmReturnType ReturnType);
	__fastcall TParseString(const System::UnicodeString aw, Fmx::Tmsfncuxlsrowcolentries::TCellList* const aCellList, const bool aForce3D, const System::UnicodeString aDefault3DExternSheet, const Fmx::Tmsfncxlsformulamessages::TFmReturnType ReturnType);
	__fastcall virtual ~TParseString();
	void __fastcall Parse();
	int __fastcall TotalSize();
	void __fastcall CopyToPtr(const Fmx::Tmsfncxlsmessages::PArrayOfByte Ptr, const int aPos);
	void __fastcall CopyToPtrNoLen(const Fmx::Tmsfncxlsmessages::PArrayOfByte Ptr, const int destIndex);
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Tmsfncuxlsencodeformula */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCUXLSENCODEFORMULA)
using namespace Fmx::Tmsfncuxlsencodeformula;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncuxlsencodeformulaHPP
