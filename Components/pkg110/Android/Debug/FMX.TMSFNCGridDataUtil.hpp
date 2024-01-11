// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCGridDataUtil.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncgriddatautilHPP
#define Fmx_TmsfncgriddatautilHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <System.Types.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Collections.hpp>
#include <System.Generics.Defaults.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncgriddatautil
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCGridIntList;
//-- type declarations -------------------------------------------------------
enum DECLSPEC_DENUM TTMSFNCGridAutoType : unsigned char { atNumeric, atFloat, atString, atDate, atTime, atScientific };

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCGridIntList : public System::Generics::Collections::TList__1<int>
{
	typedef System::Generics::Collections::TList__1<int> inherited;
	
public:
	int operator[](int index) { return this->Items[index]; }
	
private:
	void __fastcall SetInteger(int Index, const int Value);
	int __fastcall GetInteger(int Index);
	System::UnicodeString __fastcall GetStrValue();
	void __fastcall SetStrValue(const System::UnicodeString Value);
	
public:
	void __fastcall DeleteValue(int Value);
	bool __fastcall HasValue(int Value);
	int __fastcall IndexOfValue(int Value);
	__property int Items[int index] = {read=GetInteger, write=SetInteger/*, default*/};
	HIDESBASE void __fastcall Add(int Value);
	HIDESBASE void __fastcall Insert(int Index, int Value);
	HIDESBASE void __fastcall Delete(int Index);
	__property System::UnicodeString StrValue = {read=GetStrValue, write=SetStrValue};
public:
	/* {System_Generics_Collections}TList<System_Integer>.Create */ inline __fastcall TTMSFNCGridIntList()/* overload */ : System::Generics::Collections::TList__1<int>() { }
	/* {System_Generics_Collections}TList<System_Integer>.Create */ inline __fastcall TTMSFNCGridIntList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<int> > AComparer)/* overload */ : System::Generics::Collections::TList__1<int>(AComparer) { }
	/* {System_Generics_Collections}TList<System_Integer>.Create */ inline __fastcall TTMSFNCGridIntList(System::Generics::Collections::TEnumerable__1<int>* const Collection)/* overload */ : System::Generics::Collections::TList__1<int>(Collection) { }
	/* {System_Generics_Collections}TList<System_Integer>.Create */ inline __fastcall TTMSFNCGridIntList(const int *Values, const int Values_High)/* overload */ : System::Generics::Collections::TList__1<int>(Values, Values_High) { }
	/* {System_Generics_Collections}TList<System_Integer>.Destroy */ inline __fastcall virtual ~TTMSFNCGridIntList() { }
	
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
extern DELPHI_PACKAGE System::UnicodeString __fastcall CRToLF(System::UnicodeString s);
extern DELPHI_PACKAGE System::UnicodeString __fastcall CSVQuotes(const System::UnicodeString S);
extern DELPHI_PACKAGE int __fastcall CharPos(System::WideChar ch, const System::UnicodeString s);
extern DELPHI_PACKAGE System::UnicodeString __fastcall DoubleToSingleChar(System::WideChar ch, const System::UnicodeString s);
extern DELPHI_PACKAGE void __fastcall CSVToLineFeeds(System::UnicodeString &s);
extern DELPHI_PACKAGE int __fastcall VarCharPos(System::WideChar ch, const System::UnicodeString s, int &Res);
extern DELPHI_PACKAGE int __fastcall NumChar(System::WideChar p, System::UnicodeString s);
extern DELPHI_PACKAGE int __fastcall SinglePos(System::WideChar p, System::UnicodeString s, int &sp);
extern DELPHI_PACKAGE int __fastcall NumSingleChar(System::WideChar p, System::UnicodeString s);
extern DELPHI_PACKAGE System::UnicodeString __fastcall GetToken(System::UnicodeString &s, System::UnicodeString separator);
extern DELPHI_PACKAGE System::UnicodeString __fastcall GetNextLine(System::UnicodeString &s, bool multiline = true);
extern DELPHI_PACKAGE System::UnicodeString __fastcall LfToFile(System::UnicodeString s);
extern DELPHI_PACKAGE System::UnicodeString __fastcall FileToLf(System::UnicodeString s, bool multiline = true);
extern DELPHI_PACKAGE void __fastcall LineFeedsToCSV(System::UnicodeString &s);
extern DELPHI_PACKAGE void __fastcall LineFeedsToCSVNQ(System::UnicodeString &s);
extern DELPHI_PACKAGE int __fastcall LinesInText(System::UnicodeString s, bool multiline = true);
extern DELPHI_PACKAGE TTMSFNCGridAutoType __fastcall IsType(System::UnicodeString s);
extern DELPHI_PACKAGE System::UnicodeString __fastcall HTMLLineBreaks(System::UnicodeString s);
extern DELPHI_PACKAGE System::UnicodeString __fastcall FixNonBreaking(System::UnicodeString su);
extern DELPHI_PACKAGE bool __fastcall IsURL(const System::UnicodeString s);
}	/* namespace Tmsfncgriddatautil */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCGRIDDATAUTIL)
using namespace Fmx::Tmsfncgriddatautil;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncgriddatautilHPP
