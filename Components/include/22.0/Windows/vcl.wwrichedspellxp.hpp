// CodeGear C++Builder
// Copyright (c) 1995, 2024 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'vcl.wwrichedspellxp.pas' rev: 36.00 (Windows)

#ifndef vcl_wwrichedspellxpHPP
#define vcl_wwrichedspellxpHPP

#pragma delphiheader begin
#pragma option push
#if defined(__BORLANDC__) && !defined(__clang__)
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#endif
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <vcl.wwriched.hpp>
#include <Vcl.ComCtrls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Controls.hpp>

//-- user supplied -----------------------------------------------------------

namespace Vcl
{
namespace Wwrichedspellxp
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TwwDBRichEditMSWord;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TwwDBRichEditMSWord : public Vcl::Wwriched::TwwDBRichEdit
{
	typedef Vcl::Wwriched::TwwDBRichEdit inherited;
	
public:
	virtual bool __fastcall MSWordSpellChecker();
public:
	/* TwwDBRichEdit.Create */ inline __fastcall virtual TwwDBRichEditMSWord(System::Classes::TComponent* AOwner) : Vcl::Wwriched::TwwDBRichEdit(AOwner) { }
	/* TwwDBRichEdit.Destroy */ inline __fastcall virtual ~TwwDBRichEditMSWord() { }
	
public:
	/* TWinControl.CreateParented */ inline __fastcall TwwDBRichEditMSWord(HWND ParentWindow) : Vcl::Wwriched::TwwDBRichEdit(ParentWindow) { }
	
};


//-- var, const, procedure ---------------------------------------------------
extern DELPHI_PACKAGE bool __fastcall MSWordSpellChecker(Vcl::Wwriched::TwwDBRichEdit* RichEdit);
extern DELPHI_PACKAGE void __fastcall Register(void);
}	/* namespace Wwrichedspellxp */
}	/* namespace Vcl */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_VCL_WWRICHEDSPELLXP)
using namespace Vcl::Wwrichedspellxp;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_VCL)
using namespace Vcl;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// vcl_wwrichedspellxpHPP
