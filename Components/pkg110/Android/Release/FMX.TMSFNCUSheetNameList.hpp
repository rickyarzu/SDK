// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCUSheetNameList.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncusheetnamelistHPP
#define Fmx_TmsfncusheetnamelistHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <System.SysUtils.hpp>
#include <FMX.TMSFNCXlsMessages.hpp>
#include <FMX.TMSFNCUFlxMessages.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncusheetnamelist
{
//-- forward type declarations -----------------------------------------------
struct TWideContainer;
class DELPHICLASS TSheetNameList;
//-- type declarations -------------------------------------------------------
struct DECLSPEC_DRECORD TWideContainer
{
public:
	System::UnicodeString S;
	int n;
};


typedef TWideContainer *PWideContainer;

#pragma pack(push,4)
class PASCALIMPLEMENTATION TSheetNameList : public System::Classes::TList
{
	typedef System::Classes::TList inherited;
	
protected:
	virtual void __fastcall Notify(void * Ptr, System::Classes::TListNotification Action);
	System::UnicodeString __fastcall GetFullName(const System::UnicodeString S, const int N);
	
public:
	HIDESBASE void __fastcall Add(const System::UnicodeString aName);
	System::UnicodeString __fastcall AddUniqueName(const System::UnicodeString aName);
	__classmethod System::UnicodeString __fastcall MakeValidSheetName(const System::UnicodeString aName);
	void __fastcall DeleteSheet(const System::UnicodeString SheetName);
	void __fastcall Rename(const System::UnicodeString OldName, const System::UnicodeString NewName);
	virtual bool __fastcall FindRootString(const System::UnicodeString S, /* out */ int &Index);
	virtual bool __fastcall FindFullString(const System::UnicodeString S, /* out */ int &Index);
public:
	/* TList.Destroy */ inline __fastcall virtual ~TSheetNameList() { }
	
public:
	/* TObject.Create */ inline __fastcall TSheetNameList() : System::Classes::TList() { }
	
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
}	/* namespace Tmsfncusheetnamelist */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCUSHEETNAMELIST)
using namespace Fmx::Tmsfncusheetnamelist;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncusheetnamelistHPP
