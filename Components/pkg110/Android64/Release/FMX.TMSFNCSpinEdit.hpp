// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCSpinEdit.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncspineditHPP
#define Fmx_TmsfncspineditHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <System.Types.hpp>
#include <FMX.Types.hpp>
#include <FMX.TMSFNCCustomControl.hpp>
#include <FMX.TMSFNCGraphics.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.TMSFNCGraphicsTypes.hpp>
#include <FMX.TMSFNCEdit.hpp>
#include <FMX.TMSFNCStyles.hpp>
#include <FMX.TMSFNCTrackBar.hpp>
#include <FMX.Controls.hpp>
#include <System.Generics.Collections.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncspinedit
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCCustomSpinEditAppearance;
class DELPHICLASS TTMSFNCCustomSpinEditInteraction;
class DELPHICLASS TTMSFNCCustomSpinEdit;
class DELPHICLASS TTMSFNCSpinEdit;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TTMSFNCCustomSpinEditAppearance : public Fmx::Tmsfnctrackbar::TTMSFNCCustomTrackBarBaseAppearance
{
	typedef Fmx::Tmsfnctrackbar::TTMSFNCCustomTrackBarBaseAppearance inherited;
	
__published:
	__property ButtonSize = {default=20};
	__property ButtonFill;
	__property ButtonSpacing = {default=2};
	__property ButtonDownFill;
	__property ButtonDownStroke;
	__property ButtonStroke;
	__property ButtonShape = {default=3};
	__property MinButtonBitmap;
	__property MinButtonDownBitmap;
	__property PlusButtonBitmap;
	__property PlusButtonDownBitmap;
	__property ValueFont;
	__property Orientation = {default=0};
public:
	/* TTMSFNCCustomTrackBarBaseAppearance.Create */ inline __fastcall TTMSFNCCustomSpinEditAppearance(System::Classes::TComponent* AOwner) : Fmx::Tmsfnctrackbar::TTMSFNCCustomTrackBarBaseAppearance(AOwner) { }
	/* TTMSFNCCustomTrackBarBaseAppearance.Destroy */ inline __fastcall virtual ~TTMSFNCCustomSpinEditAppearance() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCustomSpinEditInteraction : public Fmx::Tmsfnctrackbar::TTMSFNCCustomTrackBarBaseInteraction
{
	typedef Fmx::Tmsfnctrackbar::TTMSFNCCustomTrackBarBaseInteraction inherited;
	
__published:
	__property Frequency;
	__property Editable = {default=1};
	__property RepeatClick = {default=0};
	__property RepeatInterval = {default=100};
public:
	/* TTMSFNCCustomTrackBarBaseInteraction.Create */ inline __fastcall TTMSFNCCustomSpinEditInteraction(System::Classes::TComponent* AOwner) : Fmx::Tmsfnctrackbar::TTMSFNCCustomTrackBarBaseInteraction(AOwner) { }
	
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTMSFNCCustomSpinEditInteraction() { }
	
};


typedef void __fastcall (__closure *TTMSFNCCustomSpinEditBeforeDrawValueEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, float AValue, bool &AAllow, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCCustomSpinEditAfterDrawValueEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, float AValue);

class PASCALIMPLEMENTATION TTMSFNCCustomSpinEdit : public Fmx::Tmsfnctrackbar::TTMSFNCCustomTrackBar
{
	typedef Fmx::Tmsfnctrackbar::TTMSFNCCustomTrackBar inherited;
	
private:
	Fmx::Tmsfncedit::TTMSFNCEdit* FEdit;
	TTMSFNCCustomSpinEditAppearance* FSpinAppearance;
	TTMSFNCCustomSpinEditInteraction* FSpinInteraction;
	TTMSFNCCustomSpinEditBeforeDrawValueEvent FOnBeforeDrawValue;
	TTMSFNCCustomSpinEditAfterDrawValueEvent FOnAfterDrawValue;
	void __fastcall SetSpinAppearance(TTMSFNCCustomSpinEditAppearance* const AValue);
	void __fastcall SetSpinInteraction(TTMSFNCCustomSpinEditInteraction* const AValue);
	void __fastcall SetEditFieldPrecision(const short AValue);
	void __fastcall SetEditFieldPrecisionDisplay(const Fmx::Tmsfncedit::TTMSFNCEditPrecisionDisplay AValue);
	short __fastcall GetEditFieldPrecision();
	Fmx::Tmsfncedit::TTMSFNCEditPrecisionDisplay __fastcall GetEditFieldPrecisionDisplay();
	void __fastcall SetEditFieldKeyboardType(const Fmx::Types::TVirtualKeyboardType AValue);
	Fmx::Types::TVirtualKeyboardType __fastcall GetEditFieldKeyboardType();
	
protected:
	virtual void __fastcall ChangeDPIScale(int M, int D);
	virtual void __fastcall UpdateControlAfterResize();
	virtual void __fastcall Loaded();
	virtual void __fastcall Draw(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	virtual void __fastcall DrawTrackLine(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	virtual void __fastcall DrawTrackSliders(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	void __fastcall ResizeEditField(const System::Types::TRectF &ARect);
	void __fastcall DrawValueText(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	virtual void __fastcall DoBeforeDrawValue(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, float AValue, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoAfterDrawValue(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, float AValue);
	virtual void __fastcall DoValueChanged(float AValue);
	void __fastcall EditTyping(System::TObject* Sender);
	void __fastcall UpdateEditField();
	void __fastcall EditExit(System::TObject* Sender);
	void __fastcall SpinInteractionChange(System::TObject* Sender);
	void __fastcall SpinAppearanceChange(System::TObject* Sender);
	virtual System::Types::TRectF __fastcall GetTrackLineRect();
	virtual System::Types::TRectF __fastcall GetMaxButtonRect();
	virtual System::Types::TRectF __fastcall GetMinButtonRect();
	__property short EditFieldPrecision = {read=GetEditFieldPrecision, write=SetEditFieldPrecision, default=1};
	__property Fmx::Tmsfncedit::TTMSFNCEditPrecisionDisplay EditFieldPrecisionDisplay = {read=GetEditFieldPrecisionDisplay, write=SetEditFieldPrecisionDisplay, default=0};
	__property TTMSFNCCustomSpinEditAppearance* Appearance = {read=FSpinAppearance, write=SetSpinAppearance};
	__property TTMSFNCCustomSpinEditInteraction* Interaction = {read=FSpinInteraction, write=SetSpinInteraction};
	__property Fmx::Types::TVirtualKeyboardType EditFieldKeyboardType = {read=GetEditFieldKeyboardType, write=SetEditFieldKeyboardType, nodefault};
	__property TTMSFNCCustomSpinEditBeforeDrawValueEvent OnBeforeDrawValue = {read=FOnBeforeDrawValue, write=FOnBeforeDrawValue};
	__property TTMSFNCCustomSpinEditAfterDrawValueEvent OnAfterDrawValue = {read=FOnAfterDrawValue, write=FOnAfterDrawValue};
	
public:
	__fastcall virtual TTMSFNCCustomSpinEdit(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCCustomSpinEdit();
};


class PASCALIMPLEMENTATION TTMSFNCSpinEdit : public TTMSFNCCustomSpinEdit
{
	typedef TTMSFNCCustomSpinEdit inherited;
	
__published:
	__property Appearance;
	__property Interaction;
	__property EditFieldPrecision = {default=1};
	__property EditFieldPrecisionDisplay = {default=0};
	__property EditFieldKeyboardType;
	__property Fill;
	__property Stroke;
	__property Max;
	__property Min;
	__property Value;
	__property OnChanged;
	__property OnBeforeDrawButton;
	__property OnAfterDrawButton;
	__property OnBeforeDrawValue;
	__property OnAfterDrawValue;
	__property OnValueChanged;
public:
	/* TTMSFNCCustomSpinEdit.Create */ inline __fastcall virtual TTMSFNCSpinEdit(System::Classes::TComponent* AOwner) : TTMSFNCCustomSpinEdit(AOwner) { }
	/* TTMSFNCCustomSpinEdit.Destroy */ inline __fastcall virtual ~TTMSFNCSpinEdit() { }
	
};


//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x1);
static constexpr System::Int8 BLD_VER = System::Int8(0x1);
}	/* namespace Tmsfncspinedit */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCSPINEDIT)
using namespace Fmx::Tmsfncspinedit;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncspineditHPP
