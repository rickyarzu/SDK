// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCCheckBox.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfnccheckboxHPP
#define Fmx_TmsfnccheckboxHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <System.Types.hpp>
#include <FMX.TMSFNCHTMLImageContainer.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.TMSFNCGraphics.hpp>
#include <FMX.TMSFNCUtils.hpp>
#include <FMX.TMSFNCCustomControl.hpp>
#include <FMX.Controls.hpp>
#include <FMX.Types.hpp>
#include <System.Generics.Collections.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>
#include <FMX.TMSFNCBitmapContainer.hpp>
#include <FMX.TMSFNCGraphicsTypes.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfnccheckbox
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCCustomCheckBox;
class DELPHICLASS TTMSFNCCheckBox;
//-- type declarations -------------------------------------------------------
#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCustomCheckBox : public Fmx::Tmsfnchtmlimagecontainer::TTMSFNCHTMLImageContainer
{
	typedef Fmx::Tmsfnchtmlimagecontainer::TTMSFNCHTMLImageContainer inherited;
	
private:
	int FStartSize;
	bool FMouseHover;
	
protected:
	virtual void __fastcall DoDrawWidget(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	virtual void __fastcall HandleMouseUp(System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall HandleMouseLeave();
	virtual void __fastcall HandleMouseEnter();
	virtual void __fastcall HandleKeyDown(System::Word &Key, System::Classes::TShiftState Shift);
	virtual System::UnicodeString __fastcall GetVersion();
	
public:
	__fastcall virtual TTMSFNCCustomCheckBox(System::Classes::TComponent* AOwner);
public:
	/* TTMSFNCHTMLImageContainer.Destroy */ inline __fastcall virtual ~TTMSFNCCustomCheckBox() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCheckBox : public TTMSFNCCustomCheckBox
{
	typedef TTMSFNCCustomCheckBox inherited;
	
__published:
	__property BitmapContainer;
	__property BitmapName = {default=0};
	__property Checked = {default=0};
	__property WidgetPosition = {default=0};
	__property WordWrapping = {default=0};
	__property Trimming = {default=0};
	__property Text = {default=0};
	__property Font;
	__property HorizontalTextAlign = {default=1};
	__property VerticalTextAlign = {default=0};
	__property OnChange;
	__property OnCheckedStateChanged;
	__property OnAnchorClick;
	__property OnBeforeDrawWidget;
	__property OnAfterDrawWidget;
	__property OnBeforeDrawText;
	__property OnAfterDrawText;
public:
	/* TTMSFNCCustomCheckBox.Create */ inline __fastcall virtual TTMSFNCCheckBox(System::Classes::TComponent* AOwner) : TTMSFNCCustomCheckBox(AOwner) { }
	
public:
	/* TTMSFNCHTMLImageContainer.Destroy */ inline __fastcall virtual ~TTMSFNCCheckBox() { }
	
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x0);
static constexpr System::Int8 BLD_VER = System::Int8(0x1);
}	/* namespace Tmsfnccheckbox */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCCHECKBOX)
using namespace Fmx::Tmsfnccheckbox;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfnccheckboxHPP
