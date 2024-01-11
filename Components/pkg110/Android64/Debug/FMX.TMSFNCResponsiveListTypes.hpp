// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCResponsiveListTypes.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncresponsivelisttypesHPP
#define Fmx_TmsfncresponsivelisttypesHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <System.Variants.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncresponsivelisttypes
{
//-- forward type declarations -----------------------------------------------
struct TResponsiveNameValuePair;
//-- type declarations -------------------------------------------------------
struct DECLSPEC_DRECORD TResponsiveNameValuePair
{
public:
	System::UnicodeString Name;
	System::Variant Value;
	static bool __fastcall _op_Equality(const TResponsiveNameValuePair &rnvp1, const TResponsiveNameValuePair &rnvp2);
	
	friend bool operator ==(const TResponsiveNameValuePair &rnvp1, const TResponsiveNameValuePair &rnvp2) { return TResponsiveNameValuePair::_op_Equality(rnvp1, rnvp2); }
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Tmsfncresponsivelisttypes */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCRESPONSIVELISTTYPES)
using namespace Fmx::Tmsfncresponsivelisttypes;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncresponsivelisttypesHPP
