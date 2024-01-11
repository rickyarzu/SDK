// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCUFlxStack.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncuflxstackHPP
#define Fmx_TmsfncuflxstackHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <System.SysUtils.hpp>
#include <FMX.TMSFNCUFlxMessages.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncuflxstack
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TStringStack;
class DELPHICLASS TFormulaStack;
struct TWhiteSpace;
class DELPHICLASS TWhiteSpaceStack;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TStringStack : public System::TObject
{
	typedef System::TObject inherited;
	
	
private:
	typedef System::DynamicArray<System::UnicodeString> _TStringStack__1;
	
	
private:
	_TStringStack__1 FList;
	int FListCount;
	
public:
	__fastcall TStringStack();
	__fastcall virtual ~TStringStack();
	int __fastcall Count();
	bool __fastcall AtLeast(int ACount);
	virtual void __fastcall Push(const System::UnicodeString s);
	void __fastcall Pop(/* out */ System::UnicodeString &s);
	void __fastcall Peek(/* out */ System::UnicodeString &s);
};


class PASCALIMPLEMENTATION TFormulaStack : public TStringStack
{
	typedef TStringStack inherited;
	
public:
	System::UnicodeString FmSpaces;
	System::UnicodeString FmPreSpaces;
	System::UnicodeString FmPostSpaces;
	virtual void __fastcall Push(const System::UnicodeString s);
public:
	/* TStringStack.Create */ inline __fastcall TFormulaStack() : TStringStack() { }
	/* TStringStack.Destroy */ inline __fastcall virtual ~TFormulaStack() { }
	
};


struct DECLSPEC_DRECORD TWhiteSpace
{
public:
	System::Byte Count;
	System::Byte Kind;
};


class PASCALIMPLEMENTATION TWhiteSpaceStack : public System::TObject
{
	typedef System::TObject inherited;
	
	
private:
	typedef System::DynamicArray<TWhiteSpace> _TWhiteSpaceStack__1;
	
	
private:
	_TWhiteSpaceStack__1 FList;
	int FListCount;
	
public:
	__fastcall TWhiteSpaceStack();
	__fastcall virtual ~TWhiteSpaceStack();
	int __fastcall Count();
	bool __fastcall AtLeast(int ACount);
	virtual void __fastcall Push(const TWhiteSpace s);
	void __fastcall Pop(/* out */ TWhiteSpace &s);
	void __fastcall Peek(/* out */ TWhiteSpace &s);
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Tmsfncuflxstack */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCUFLXSTACK)
using namespace Fmx::Tmsfncuflxstack;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncuflxstackHPP
