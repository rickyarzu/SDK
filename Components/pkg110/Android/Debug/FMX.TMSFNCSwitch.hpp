// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCSwitch.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncswitchHPP
#define Fmx_TmsfncswitchHPP

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
#include <FMX.TMSFNCGraphicsTypes.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.Controls.hpp>
#include <System.Generics.Collections.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncswitch
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCCustomSwitchAppearanceOff;
class DELPHICLASS TTMSFNCCustomSwitchAppearanceOn;
class DELPHICLASS TTMSFNCCustomSwitchButtonAppearance;
class DELPHICLASS TTMSFNCCustomSwitch;
class DELPHICLASS TTMSFNCSwitch;
//-- type declarations -------------------------------------------------------
enum DECLSPEC_DENUM TTMSFNCCustomSwitchOrientation : unsigned char { soHorizontal, soVertical };

enum DECLSPEC_DENUM TTMSFNCCustomSwitchState : unsigned char { ssOff, ssOn };

enum DECLSPEC_DENUM TTMSFNCCustomSwitchLayout : unsigned char { sloSimple, sloExtended };

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCustomSwitchAppearanceOff : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	System::Classes::TNotifyEvent FOnChange;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FStroke;
	System::UnicodeString FText;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FFont;
	void __fastcall SetFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetText(const System::UnicodeString Value);
	bool __fastcall IsTextStored();
	void __fastcall SetFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	
protected:
	void __fastcall Changed();
	void __fastcall FillChanged(System::TObject* Sender);
	void __fastcall StrokeChanged(System::TObject* Sender);
	void __fastcall FontChanged(System::TObject* Sender);
	
public:
	__fastcall TTMSFNCCustomSwitchAppearanceOff();
	__fastcall virtual ~TTMSFNCCustomSwitchAppearanceOff();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* Fill = {read=FFill, write=SetFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* Stroke = {read=FStroke, write=SetStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* Font = {read=FFont, write=SetFont};
	__property System::UnicodeString Text = {read=FText, write=SetText, stored=IsTextStored};
	__property System::Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCustomSwitchAppearanceOn : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	System::Classes::TNotifyEvent FOnChange;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FStroke;
	System::UnicodeString FText;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FFont;
	void __fastcall SetFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetText(const System::UnicodeString Value);
	bool __fastcall IsTextStored();
	void __fastcall SetFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	
protected:
	void __fastcall Changed();
	void __fastcall FillChanged(System::TObject* Sender);
	void __fastcall StrokeChanged(System::TObject* Sender);
	void __fastcall FontChanged(System::TObject* Sender);
	
public:
	__fastcall TTMSFNCCustomSwitchAppearanceOn();
	__fastcall virtual ~TTMSFNCCustomSwitchAppearanceOn();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* Fill = {read=FFill, write=SetFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* Stroke = {read=FStroke, write=SetStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* Font = {read=FFont, write=SetFont};
	__property System::UnicodeString Text = {read=FText, write=SetText, stored=IsTextStored};
	__property System::Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCustomSwitchButtonAppearance : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	System::Classes::TNotifyEvent FOnChange;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FStroke;
	float FMargin;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FOffFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FOffStroke;
	void __fastcall SetFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetMargin(const float Value);
	bool __fastcall IsMarginStored();
	void __fastcall SetOffFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetOffStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	
protected:
	void __fastcall Changed();
	void __fastcall FillChanged(System::TObject* Sender);
	void __fastcall StrokeChanged(System::TObject* Sender);
	
public:
	__fastcall TTMSFNCCustomSwitchButtonAppearance();
	__fastcall virtual ~TTMSFNCCustomSwitchButtonAppearance();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property float Margin = {read=FMargin, write=SetMargin, stored=IsMarginStored};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* OffFill = {read=FOffFill, write=SetOffFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* OffStroke = {read=FOffStroke, write=SetOffStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* Fill = {read=FFill, write=SetFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* Stroke = {read=FStroke, write=SetStroke};
	__property System::Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
};

#pragma pack(pop)

typedef void __fastcall (__closure *TTMSFNCCustomSwitchBeforeDrawSwitchEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCCustomSwitchState ASwitchState, bool &AAllow, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCCustomSwitchAfterDrawSwitchEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCCustomSwitchState ASwitchState);

typedef void __fastcall (__closure *TTMSFNCCustomSwitchBeforeDrawSwitchButtonEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCCustomSwitchState ASwitchState, bool &AAllow, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCCustomSwitchAfterDrawSwitchButtonEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCCustomSwitchState ASwitchState);

typedef void __fastcall (__closure *TTMSFNCCustomSwitchStateChangeEvent)(System::TObject* Sender, TTMSFNCCustomSwitchState ASwitchState);

class PASCALIMPLEMENTATION TTMSFNCCustomSwitch : public Fmx::Tmsfnccustomcontrol::TTMSFNCCustomControl
{
	typedef Fmx::Tmsfnccustomcontrol::TTMSFNCCustomControl inherited;
	
private:
	double FButtonPos;
	double FPosTo;
	bool FMouseDown;
	bool FMouseDownButton;
	TTMSFNCCustomSwitchOrientation FOrientation;
	TTMSFNCCustomSwitchAppearanceOff* FAppearanceOff;
	TTMSFNCCustomSwitchAppearanceOn* FAppearanceOn;
	TTMSFNCCustomSwitchButtonAppearance* FButtonAppearance;
	bool FRounded;
	TTMSFNCCustomSwitchLayout FLayout;
	TTMSFNCCustomSwitchState FSwitchState;
	Fmx::Types::TTimer* FSwitchTimer;
	int FAnimationFactor;
	bool FDoAnimation;
	TTMSFNCCustomSwitchAfterDrawSwitchEvent FOnAfterDrawSwitch;
	TTMSFNCCustomSwitchAfterDrawSwitchButtonEvent FOnAfterDrawSwitchButton;
	TTMSFNCCustomSwitchBeforeDrawSwitchEvent FOnBeforeDrawSwitch;
	TTMSFNCCustomSwitchBeforeDrawSwitchButtonEvent FOnBeforeDrawSwitchButton;
	TTMSFNCCustomSwitchStateChangeEvent FOnStateChange;
	System::Classes::TNotifyEvent FOnChange;
	Fmx::Tmsfncgraphicstypes::TTMSFNCAppearanceGlobalFont* FGlobalFont;
	void __fastcall SetOrientation(const TTMSFNCCustomSwitchOrientation Value);
	void __fastcall SetAppearanceOff(TTMSFNCCustomSwitchAppearanceOff* const Value);
	void __fastcall SetAppearanceOn(TTMSFNCCustomSwitchAppearanceOn* const Value);
	void __fastcall SetButtonAppearance(TTMSFNCCustomSwitchButtonAppearance* const Value);
	void __fastcall SetRounded(const bool Value);
	void __fastcall SetChecked(const bool Value);
	void __fastcall SetLayout(const TTMSFNCCustomSwitchLayout Value);
	void __fastcall SetSwitchState(const TTMSFNCCustomSwitchState Value);
	void __fastcall SetAnimationFactor(const int Value);
	bool __fastcall GetChecked();
	void __fastcall SetGlobalFont(Fmx::Tmsfncgraphicstypes::TTMSFNCAppearanceGlobalFont* const Value);
	
protected:
	virtual void __fastcall ChangeDPIScale(int M, int D);
	virtual void __fastcall ApplyStyle();
	virtual void __fastcall ResetToDefaultStyle();
	virtual System::UnicodeString __fastcall GetVersion();
	virtual void __fastcall Draw(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	void __fastcall DrawSwitchBackground(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	void __fastcall DrawSwitchButton(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	virtual void __fastcall HandleMouseDown(System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall HandleMouseUp(System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall HandleMouseMove(System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall DoBeforeDrawSwitch(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCCustomSwitchState ASwitchState, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoAfterDrawSwitch(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCCustomSwitchState ASwitchState);
	virtual void __fastcall DoBeforeDrawSwtichButton(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCCustomSwitchState ASwitchState, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoAfterDrawSwitchButton(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCCustomSwitchState ASwitchState);
	void __fastcall DoStateChange(TTMSFNCCustomSwitchState ASwitchState);
	void __fastcall DoSwitchTimer(System::TObject* Sender);
	virtual void __fastcall UpdateControlAfterResize();
	void __fastcall AppearanceChanged(System::TObject* Sender);
	void __fastcall Changed();
	System::Types::TRectF __fastcall GetSwitchButtonRect();
	double __fastcall CalculateButtonPosition(float AX, float AY);
	double __fastcall GetButtonPos();
	double __fastcall GetButtonOffPos();
	double __fastcall GetButtonOnPos();
	System::Types::TRectF __fastcall GetOffTextRect();
	System::Types::TRectF __fastcall GetOnTextRect();
	virtual void __fastcall SetFonts(Fmx::Tmsfncgraphicstypes::TTMSFNCAppearanceGlobalFontType ASetType);
	__property TTMSFNCCustomSwitchAppearanceOff* AppearanceOff = {read=FAppearanceOff, write=SetAppearanceOff};
	__property TTMSFNCCustomSwitchAppearanceOn* AppearanceOn = {read=FAppearanceOn, write=SetAppearanceOn};
	__property TTMSFNCCustomSwitchButtonAppearance* ButtonAppearance = {read=FButtonAppearance, write=SetButtonAppearance};
	__property int AnimationFactor = {read=FAnimationFactor, write=SetAnimationFactor, default=15};
	__property bool Rounded = {read=FRounded, write=SetRounded, default=0};
	__property TTMSFNCCustomSwitchOrientation Orientation = {read=FOrientation, write=SetOrientation, default=0};
	__property TTMSFNCCustomSwitchState State = {read=FSwitchState, write=SetSwitchState, default=0};
	__property TTMSFNCCustomSwitchLayout Layout = {read=FLayout, write=SetLayout, default=0};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCAppearanceGlobalFont* GlobalFont = {read=FGlobalFont, write=SetGlobalFont};
	__property TTMSFNCCustomSwitchBeforeDrawSwitchEvent OnBeforeDrawSwitch = {read=FOnBeforeDrawSwitch, write=FOnBeforeDrawSwitch};
	__property TTMSFNCCustomSwitchAfterDrawSwitchEvent OnAfterDrawSwitch = {read=FOnAfterDrawSwitch, write=FOnAfterDrawSwitch};
	__property TTMSFNCCustomSwitchBeforeDrawSwitchButtonEvent OnBeforeDrawSwitchButton = {read=FOnBeforeDrawSwitchButton, write=FOnBeforeDrawSwitchButton};
	__property TTMSFNCCustomSwitchAfterDrawSwitchButtonEvent OnAfterDrawSwitchButton = {read=FOnAfterDrawSwitchButton, write=FOnAfterDrawSwitchButton};
	__property TTMSFNCCustomSwitchStateChangeEvent OnStateChange = {read=FOnStateChange, write=FOnStateChange};
	__property System::Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
	
public:
	__fastcall virtual TTMSFNCCustomSwitch(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCCustomSwitch();
	__property bool Checked = {read=GetChecked, write=SetChecked, nodefault};
private:
	void *__ITMSFNCAppearanceGlobalFont;	// Fmx::Tmsfncgraphicstypes::ITMSFNCAppearanceGlobalFont 
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {85CF4F6B-3FF9-4CB7-AD6A-7FC477ED5462}
	operator Fmx::Tmsfncgraphicstypes::_di_ITMSFNCAppearanceGlobalFont()
	{
		Fmx::Tmsfncgraphicstypes::_di_ITMSFNCAppearanceGlobalFont intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator Fmx::Tmsfncgraphicstypes::ITMSFNCAppearanceGlobalFont*(void) { return (Fmx::Tmsfncgraphicstypes::ITMSFNCAppearanceGlobalFont*)&__ITMSFNCAppearanceGlobalFont; }
	#endif
	
};


class PASCALIMPLEMENTATION TTMSFNCSwitch : public TTMSFNCCustomSwitch
{
	typedef TTMSFNCCustomSwitch inherited;
	
__published:
	__property AppearanceOff;
	__property AppearanceOn;
	__property ButtonAppearance;
	__property AnimationFactor = {default=15};
	__property State = {default=0};
	__property Layout = {default=0};
	__property Orientation = {default=0};
	__property Rounded = {default=0};
	__property GlobalFont;
	__property OnBeforeDrawSwitch;
	__property OnAfterDrawSwitch;
	__property OnBeforeDrawSwitchButton;
	__property OnAfterDrawSwitchButton;
	__property OnStateChange;
	__property OnChange;
public:
	/* TTMSFNCCustomSwitch.Create */ inline __fastcall virtual TTMSFNCSwitch(System::Classes::TComponent* AOwner) : TTMSFNCCustomSwitch(AOwner) { }
	/* TTMSFNCCustomSwitch.Destroy */ inline __fastcall virtual ~TTMSFNCSwitch() { }
	
};


//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x3);
static constexpr System::Int8 BLD_VER = System::Int8(0x0);
}	/* namespace Tmsfncswitch */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCSWITCH)
using namespace Fmx::Tmsfncswitch;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncswitchHPP
