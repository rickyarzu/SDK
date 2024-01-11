// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCUXlsBaseList.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncuxlsbaselistHPP
#define Fmx_TmsfncuxlsbaselistHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <FMX.TMSFNCUFlxMessages.hpp>
#include <System.Generics.Collections.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>
#include <System.Types.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncuxlsbaselist
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TBaseList;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TBaseList : public System::Generics::Collections::TObjectList__1<System::TObject*>
{
	typedef System::Generics::Collections::TObjectList__1<System::TObject*> inherited;
	
public:
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TBaseList()/* overload */ : System::Generics::Collections::TObjectList__1<System::TObject*>() { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TBaseList(bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<System::TObject*>(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TBaseList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<System::TObject*> > AComparer, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<System::TObject*>(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TBaseList(System::Generics::Collections::TEnumerable__1<System::TObject*>* const Collection, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<System::TObject*>(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Destroy */ inline __fastcall virtual ~TBaseList() { }
	
public:
	/* {System_Generics_Collections}TList<System_TObject>.Create */ inline __fastcall TBaseList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<System::TObject*> > AComparer)/* overload */ : System::Generics::Collections::TObjectList__1<System::TObject*>(AComparer) { }
	/* {System_Generics_Collections}TList<System_TObject>.Create */ inline __fastcall TBaseList(System::Generics::Collections::TEnumerable__1<System::TObject*>* const Collection)/* overload */ : System::Generics::Collections::TObjectList__1<System::TObject*>(Collection) { }
	/* {System_Generics_Collections}TList<System_TObject>.Create */ inline __fastcall TBaseList(System::TObject* const *Values, const int Values_High)/* overload */ : System::Generics::Collections::TObjectList__1<System::TObject*>(Values, Values_High) { }
	
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Tmsfncuxlsbaselist */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCUXLSBASELIST)
using namespace Fmx::Tmsfncuxlsbaselist;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncuxlsbaselistHPP
