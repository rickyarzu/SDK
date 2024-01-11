// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCUFlxRowComments.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncuflxrowcommentsHPP
#define Fmx_TmsfncuflxrowcommentsHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.SysUtils.hpp>
#include <System.Classes.hpp>
#include <System.Generics.Collections.hpp>
#include <FMX.TMSFNCUFlxMessages.hpp>
#include <System.Generics.Defaults.hpp>
#include <System.Types.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncuflxrowcomments
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TCommentRowPos;
class DELPHICLASS TRowComments;
//-- type declarations -------------------------------------------------------
#pragma pack(push,4)
class PASCALIMPLEMENTATION TCommentRowPos : public System::Generics::Collections::TList__1<int>
{
	typedef System::Generics::Collections::TList__1<int> inherited;
	
public:
	int Row;
public:
	/* {System_Generics_Collections}TList<System_Integer>.Create */ inline __fastcall TCommentRowPos()/* overload */ : System::Generics::Collections::TList__1<int>() { }
	/* {System_Generics_Collections}TList<System_Integer>.Create */ inline __fastcall TCommentRowPos(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<int> > AComparer)/* overload */ : System::Generics::Collections::TList__1<int>(AComparer) { }
	/* {System_Generics_Collections}TList<System_Integer>.Create */ inline __fastcall TCommentRowPos(System::Generics::Collections::TEnumerable__1<int>* const Collection)/* overload */ : System::Generics::Collections::TList__1<int>(Collection) { }
	/* {System_Generics_Collections}TList<System_Integer>.Create */ inline __fastcall TCommentRowPos(const int *Values, const int Values_High)/* overload */ : System::Generics::Collections::TList__1<int>(Values, Values_High) { }
	/* {System_Generics_Collections}TList<System_Integer>.Destroy */ inline __fastcall virtual ~TCommentRowPos() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TRowComments : public System::Generics::Collections::TObjectList__1<System::TObject*>
{
	typedef System::Generics::Collections::TObjectList__1<System::TObject*> inherited;
	
public:
	TCommentRowPos* operator[](int aRow) { return this->Items[aRow]; }
	
private:
	TCommentRowPos* EmptySlot;
	TCommentRowPos* __fastcall GetItems(int aRow);
	bool __fastcall Find(const int aRow, /* out */ int &Index);
	
public:
	__fastcall TRowComments();
	__fastcall virtual ~TRowComments();
	HIDESBASE void __fastcall Add(const int aRow, const int aPos);
	__property TCommentRowPos* Items[int aRow] = {read=GetItems/*, default*/};
	HIDESBASE void __fastcall Delete(const int aRow, const int aCol);
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
}	/* namespace Tmsfncuflxrowcomments */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCUFLXROWCOMMENTS)
using namespace Fmx::Tmsfncuflxrowcomments;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncuflxrowcommentsHPP
