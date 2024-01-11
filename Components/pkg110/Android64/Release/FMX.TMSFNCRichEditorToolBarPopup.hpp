// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCRichEditorToolBarPopup.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncricheditortoolbarpopupHPP
#define Fmx_TmsfncricheditortoolbarpopupHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <FMX.TMSFNCToolBar.hpp>
#include <FMX.TMSFNCRichEditor.hpp>
#include <FMX.TMSFNCRichEditorToolBar.hpp>
#include <FMX.TMSFNCGraphicsTypes.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.TMSFNCToolBarPopup.hpp>
#include <FMX.TMSFNCPopup.hpp>
#include <FMX.TMSFNCCustomComponent.hpp>
#include <FMX.Controls.hpp>
#include <FMX.Types.hpp>
#include <System.Generics.Collections.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>
#include <System.Types.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncricheditortoolbarpopup
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCRichEditorToolBarPopup;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TTMSFNCRichEditorToolBarPopup : public Fmx::Tmsfncricheditor::TTMSFNCRichEditorCustomToolBarPopup
{
	typedef Fmx::Tmsfncricheditor::TTMSFNCRichEditorCustomToolBarPopup inherited;
	
private:
	Fmx::Tmsfncricheditortoolbar::TTMSFNCRichEditorFormatToolBarOptions FOptions;
	
protected:
	virtual System::UnicodeString __fastcall GetDocURL();
	virtual Fmx::Tmsfnctoolbar::TTMSFNCToolBar* __fastcall CreateToolBar();
	virtual void __fastcall RegisterRuntimeClasses();
	virtual void __fastcall PrepareToolBar();
	void __fastcall UpdateButtonStates();
	void __fastcall DoApplyBold(System::TObject* Sender);
	void __fastcall DoApplyItalic(System::TObject* Sender);
	void __fastcall DoApplyUnderline(System::TObject* Sender);
	void __fastcall DoApplyStrikeout(System::TObject* Sender);
	void __fastcall DoApplyFontName(System::TObject* Sender, System::UnicodeString AFontName);
	void __fastcall DoApplyFontSize(System::TObject* Sender, int AFontSize);
	void __fastcall DoApplyTextColor(System::TObject* Sender, System::Uitypes::TAlphaColor AColor);
	void __fastcall DoApplyBackgroundColor(System::TObject* Sender, System::Uitypes::TAlphaColor AColor);
	
public:
	__fastcall virtual TTMSFNCRichEditorToolBarPopup(System::Classes::TComponent* AOwner);
	__property Fmx::Tmsfncricheditortoolbar::TTMSFNCRichEditorFormatToolBarOptions Options = {read=FOptions, write=FOptions, default=1599};
	__property AutoAlign = {default=1};
	__property Placement = {default=0};
	__property PlacementRectangle;
	__property PlacementControl;
	__property DragGrip = {default=0};
	
__published:
	__property RichEditor;
public:
	/* TTMSFNCCustomToolBarPopup.Destroy */ inline __fastcall virtual ~TTMSFNCRichEditorToolBarPopup() { }
	
};


//-- var, const, procedure ---------------------------------------------------
#define AllRichEditorFormatOptions (System::Set<Fmx::Tmsfncricheditortoolbar::TTMSFNCRichEditorFormatToolBarOption, Fmx::Tmsfncricheditortoolbar::TTMSFNCRichEditorFormatToolBarOption::ftoFontName, Fmx::Tmsfncricheditortoolbar::TTMSFNCRichEditorFormatToolBarOption::ftoIndent>() << Fmx::Tmsfncricheditortoolbar::TTMSFNCRichEditorFormatToolBarOption::ftoFontName << Fmx::Tmsfncricheditortoolbar::TTMSFNCRichEditorFormatToolBarOption::ftoFontSize << Fmx::Tmsfncricheditortoolbar::TTMSFNCRichEditorFormatToolBarOption::ftoBold << Fmx::Tmsfncricheditortoolbar::TTMSFNCRichEditorFormatToolBarOption::ftoItalic << Fmx::Tmsfncricheditortoolbar::TTMSFNCRichEditorFormatToolBarOption::ftoUnderline << Fmx::Tmsfncricheditortoolbar::TTMSFNCRichEditorFormatToolBarOption::ftoStrikeout \
	<< Fmx::Tmsfncricheditortoolbar::TTMSFNCRichEditorFormatToolBarOption::ftoTextColor << Fmx::Tmsfncricheditortoolbar::TTMSFNCRichEditorFormatToolBarOption::ftoBackgroundColor )
}	/* namespace Tmsfncricheditortoolbarpopup */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCRICHEDITORTOOLBARPOPUP)
using namespace Fmx::Tmsfncricheditortoolbarpopup;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncricheditortoolbarpopupHPP
