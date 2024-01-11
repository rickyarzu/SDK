// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCHTMLText.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfnchtmltextHPP
#define Fmx_TmsfnchtmltextHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <FMX.TMSFNCCustomControl.hpp>
#include <FMX.TMSFNCBitmapContainer.hpp>
#include <FMX.TMSFNCGraphics.hpp>
#include <FMX.TMSFNCGraphicsTypes.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.Controls.hpp>
#include <System.UITypes.hpp>
#include <System.Types.hpp>
#include <FMX.Types.hpp>
#include <System.Generics.Collections.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfnchtmltext
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCHTMLText;
//-- type declarations -------------------------------------------------------
typedef void __fastcall (__closure *TTMSFNCHTMLTextAnchorClickEvent)(System::TObject* Sender, System::UnicodeString AAnchor);

class PASCALIMPLEMENTATION TTMSFNCHTMLText : public Fmx::Tmsfnccustomcontrol::TTMSFNCCustomControl
{
	typedef Fmx::Tmsfnccustomcontrol::TTMSFNCCustomControl inherited;
	
private:
	bool FDisableAdjustSize;
	Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* FBitmapContainer;
	TTMSFNCHTMLTextAnchorClickEvent FOnAnchorClick;
	System::Uitypes::TAlphaColor FURLColor;
	int FShadowOffset;
	System::Uitypes::TAlphaColor FShadowColor;
	bool FDisplayHTML;
	bool FURLUnderline;
	System::UnicodeString FText;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FFont;
	bool FWordWrapping;
	bool FAutoSize;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign FVerticalTextAlign;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign FHorizontalTextAlign;
	bool FAutoOpenURL;
	float FAutoSizeSpacing;
	bool FAutoHeight;
	bool FAutoWidth;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextTrimming FTrimming;
	void __fastcall SetShadowOffset(const int Value);
	void __fastcall SetURLColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetShadowColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetBitmapContainer(Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* const Value);
	void __fastcall SetText(const System::UnicodeString Value);
	void __fastcall SetDisplayHTML(const bool Value);
	void __fastcall SetURLUnderline(const bool Value);
	void __fastcall SetFnt(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetWordWrapping(const bool Value);
	void __fastcall SetAS(const bool Value);
	void __fastcall SetHorizontalTextAlign(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign Value);
	void __fastcall SetVerticalTextAlign(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign Value);
	bool __fastcall IsAutoSizeSpacingStored();
	void __fastcall SetAutoSizeSpacing(const float Value);
	Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* __fastcall GetBitmapContainer();
	void __fastcall SetAutoHeight(const bool Value);
	void __fastcall SetAutoWidth(const bool Value);
	void __fastcall SetTrimming(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextTrimming Value);
	
protected:
	virtual System::UnicodeString __fastcall GetVersion();
	virtual bool __fastcall CanDrawDesignTime();
	virtual void __fastcall ChangeDPIScale(int M, int D);
	virtual void __fastcall RegisterRuntimeClasses();
	virtual void __fastcall ApplyStyle();
	virtual void __fastcall ResetToDefaultStyle();
	virtual void __fastcall ApplyAutoSize();
	HIDESBASE void __fastcall FillChanged(System::TObject* Sender);
	void __fastcall DoFontChanged(System::TObject* Sender);
	HIDESBASE void __fastcall StrokeChanged(System::TObject* Sender);
	virtual void __fastcall Notification(System::Classes::TComponent* AComponent, System::Classes::TOperation Operation);
	virtual void __fastcall HandleMouseDown(System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall HandleMouseMove(System::Classes::TShiftState Shift, float X, float Y);
	void __fastcall DoAnchorClick(System::UnicodeString Anchor);
	virtual void __fastcall DrawHTMLText(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics);
	virtual void __fastcall SetEnabled(const bool Value);
	
public:
	__fastcall virtual TTMSFNCHTMLText(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCHTMLText();
	virtual System::Types::TRectF __fastcall GetTextRect();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	void __fastcall DoMouseMove(System::Classes::TShiftState Shift, float X, float Y);
	void __fastcall DoMouseDown(System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall UpdateControlAfterResize();
	bool __fastcall IsHTML();
	virtual void __fastcall Draw(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	
__published:
	__property bool AutoSize = {read=FAutoSize, write=SetAS, default=0};
	__property bool AutoHeight = {read=FAutoHeight, write=SetAutoHeight, default=1};
	__property bool AutoWidth = {read=FAutoWidth, write=SetAutoWidth, default=1};
	__property float AutoSizeSpacing = {read=FAutoSizeSpacing, write=SetAutoSizeSpacing, stored=IsAutoSizeSpacingStored};
	__property bool AutoOpenURL = {read=FAutoOpenURL, write=FAutoOpenURL, default=1};
	__property Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* BitmapContainer = {read=GetBitmapContainer, write=SetBitmapContainer};
	__property bool DisplayHTML = {read=FDisplayHTML, write=SetDisplayHTML, default=1};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* Font = {read=FFont, write=SetFnt};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign HorizontalTextAlign = {read=FHorizontalTextAlign, write=SetHorizontalTextAlign, default=0};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextTrimming Trimming = {read=FTrimming, write=SetTrimming, default=0};
	__property System::Uitypes::TAlphaColor ShadowColor = {read=FShadowColor, write=SetShadowColor, default=-8355712};
	__property int ShadowOffset = {read=FShadowOffset, write=SetShadowOffset, default=1};
	__property Fill;
	__property Stroke;
	__property System::UnicodeString Text = {read=FText, write=SetText};
	__property System::Uitypes::TAlphaColor URLColor = {read=FURLColor, write=SetURLColor, default=-16776961};
	__property bool URLUnderline = {read=FURLUnderline, write=SetURLUnderline, default=1};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign VerticalTextAlign = {read=FVerticalTextAlign, write=SetVerticalTextAlign, default=0};
	__property System::UnicodeString Version = {read=GetVersion};
	__property bool WordWrapping = {read=FWordWrapping, write=SetWordWrapping, default=0};
	__property TTMSFNCHTMLTextAnchorClickEvent OnAnchorClick = {read=FOnAnchorClick, write=FOnAnchorClick};
private:
	void *__ITMSFNCBitmapContainer;	// Fmx::Tmsfncbitmapcontainer::ITMSFNCBitmapContainer 
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {ED26710D-395F-4971-8AC9-A31083BF2A3C}
	operator Fmx::Tmsfncbitmapcontainer::_di_ITMSFNCBitmapContainer()
	{
		Fmx::Tmsfncbitmapcontainer::_di_ITMSFNCBitmapContainer intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator Fmx::Tmsfncbitmapcontainer::ITMSFNCBitmapContainer*(void) { return (Fmx::Tmsfncbitmapcontainer::ITMSFNCBitmapContainer*)&__ITMSFNCBitmapContainer; }
	#endif
	
};


//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x1);
static constexpr System::Int8 REL_VER = System::Int8(0x0);
static constexpr System::Int8 BLD_VER = System::Int8(0x5);
}	/* namespace Tmsfnchtmltext */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCHTMLTEXT)
using namespace Fmx::Tmsfnchtmltext;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfnchtmltextHPP
