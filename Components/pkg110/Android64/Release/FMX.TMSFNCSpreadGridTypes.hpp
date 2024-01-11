// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCSpreadGridTypes.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncspreadgridtypesHPP
#define Fmx_TmsfncspreadgridtypesHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <System.Variants.hpp>
#include <FMX.TMSFNCGrid.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncspreadgridtypes
{
//-- forward type declarations -----------------------------------------------
struct TCellName;
struct TGridRect;
struct TGridCoord;
struct TCellRef;
//-- type declarations -------------------------------------------------------
struct DECLSPEC_DRECORD TCellName
{
public:
	System::UnicodeString Name;
	int Col;
	int Row;
	static bool __fastcall _op_Equality(const TCellName &cn1, const TCellName &cn2);
	
	friend bool operator ==(const TCellName &cn1, const TCellName &cn2) { return TCellName::_op_Equality(cn1, cn2); }
};


struct DECLSPEC_DRECORD TGridRect
{
public:
	int Left;
	int Top;
	int Right;
	int Bottom;
};


struct DECLSPEC_DRECORD TGridCoord
{
public:
	int X;
	int Y;
};


struct DECLSPEC_DRECORD TCellRef
{
public:
	TGridCoord Src;
	TGridCoord Dst;
	Fmx::Tmsfncgrid::TTMSFNCGrid* SrcGrd;
	Fmx::Tmsfncgrid::TTMSFNCGrid* DstGrd;
	bool Dirty;
	static bool __fastcall _op_Equality(const TCellRef &cref1, const TCellRef &cref2);
	
	friend bool operator ==(const TCellRef &cref1, const TCellRef &cref2) { return TCellRef::_op_Equality(cref1, cref2); }
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Tmsfncspreadgridtypes */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCSPREADGRIDTYPES)
using namespace Fmx::Tmsfncspreadgridtypes;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncspreadgridtypesHPP
