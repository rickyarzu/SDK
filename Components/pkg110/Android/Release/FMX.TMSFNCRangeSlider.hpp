// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCRangeSlider.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncrangesliderHPP
#define Fmx_TmsfncrangesliderHPP

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
#include <FMX.TMSFNCGraphics.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.TMSFNCGraphicsTypes.hpp>
#include <FMX.TMSFNCEdit.hpp>
#include <FMX.TMSFNCStyles.hpp>
#include <FMX.TMSFNCTrackBar.hpp>
#include <FMX.TMSFNCCustomControl.hpp>
#include <FMX.Controls.hpp>
#include <System.Generics.Collections.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncrangeslider
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCCustomRangeSliderAppearance;
class DELPHICLASS TTMSFNCCustomRangeSliderInteraction;
class DELPHICLASS TTMSFNCCustomRangeSlider;
class DELPHICLASS TTMSFNCRangeSlider;
//-- type declarations -------------------------------------------------------
#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCustomRangeSliderAppearance : public Fmx::Tmsfnctrackbar::TTMSFNCCustomTrackBarBaseAppearance
{
	typedef Fmx::Tmsfnctrackbar::TTMSFNCCustomTrackBarBaseAppearance inherited;
	
__published:
	__property ThumbBitmap;
	__property ThumbFill;
	__property ThumbStroke;
	__property ThumbHeight = {default=16};
	__property ThumbWidth = {default=8};
	__property ThumbDownBitmap;
	__property ThumbDownFill;
	__property ThumbDownStroke;
	__property ThumbShape = {default=0};
	__property ThumbRightBitmap;
	__property ThumbRightFill;
	__property ThumbRightStroke;
	__property ThumbRightHeight = {default=16};
	__property ThumbRightWidth = {default=8};
	__property ThumbRightDownBitmap;
	__property ThumbRightDownFill;
	__property ThumbRightDownStroke;
	__property LineShape = {default=0};
	__property LineBitmap;
	__property LineWidth = {default=1};
	__property LineStroke;
	__property LineFill;
	__property LineMiddleStroke;
	__property LineMiddleFill;
	__property LineRightFill;
	__property LineRightStroke;
	__property Orientation = {default=0};
	__property TickMarkPosition = {default=1};
	__property TickMarkSize = {default=4};
	__property TickMarkSpacing = {default=8};
	__property TickMarkStroke;
	__property TickMarkLabelFont;
	__property TickMarkLabelFormat;
	__property TickMarkLabel = {default=0};
	__property TickMarkDivision = {default=5};
	__property TrackLabelFormat;
	__property TrackLabelFont;
	__property TrackLabelPosition = {default=6};
public:
	/* TTMSFNCCustomTrackBarBaseAppearance.Create */ inline __fastcall TTMSFNCCustomRangeSliderAppearance(System::Classes::TComponent* AOwner) : Fmx::Tmsfnctrackbar::TTMSFNCCustomTrackBarBaseAppearance(AOwner) { }
	/* TTMSFNCCustomTrackBarBaseAppearance.Destroy */ inline __fastcall virtual ~TTMSFNCCustomRangeSliderAppearance() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCustomRangeSliderInteraction : public Fmx::Tmsfnctrackbar::TTMSFNCCustomTrackBarBaseInteraction
{
	typedef Fmx::Tmsfnctrackbar::TTMSFNCCustomTrackBarBaseInteraction inherited;
	
__published:
	__property Frequency;
public:
	/* TTMSFNCCustomTrackBarBaseInteraction.Create */ inline __fastcall TTMSFNCCustomRangeSliderInteraction(System::Classes::TComponent* AOwner) : Fmx::Tmsfnctrackbar::TTMSFNCCustomTrackBarBaseInteraction(AOwner) { }
	
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTMSFNCCustomRangeSliderInteraction() { }
	
};

#pragma pack(pop)

typedef void __fastcall (__closure *TTMSFNCCustomRangeSliderValueChanged)(System::TObject* Sender, float AValue, bool ALeft);

typedef void __fastcall (__closure *TTMSFNCCustomRangeSliderBeforeDrawThumbEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, float AValue, bool ALeft, bool &AAllow, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCCustomRangeSliderAfterDrawThumbEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, float AValue, bool ALeft);

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCustomRangeSlider : public Fmx::Tmsfnctrackbar::TTMSFNCCustomTrackBarBase
{
	typedef Fmx::Tmsfnctrackbar::TTMSFNCCustomTrackBarBase inherited;
	
private:
	TTMSFNCCustomRangeSliderBeforeDrawThumbEvent FOnBeforeDrawThumb;
	TTMSFNCCustomRangeSliderAfterDrawThumbEvent FOnAfterDrawThumb;
	TTMSFNCCustomRangeSliderInteraction* FRangeInteraction;
	TTMSFNCCustomRangeSliderAppearance* FRangeAppearance;
	void __fastcall SetValueLeft(const float AValue);
	void __fastcall SetValueRight(const float AValue);
	void __fastcall SetRangeInteraction(TTMSFNCCustomRangeSliderInteraction* const AValue);
	void __fastcall SetRangeAppearance(TTMSFNCCustomRangeSliderAppearance* const AValue);
	bool __fastcall IsValueLeftStored();
	bool __fastcall IsValueRightStored();
	float __fastcall GetValueLeft();
	float __fastcall GetValueRight();
	
protected:
	virtual void __fastcall ChangeDPIScale(int M, int D);
	virtual void __fastcall DrawTrackLine(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	virtual void __fastcall DrawTrackSliders(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	void __fastcall DrawTrackSlider(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, bool ALeft);
	virtual void __fastcall DoBeforeDrawThumb(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, float AValue, bool ALeft, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoAfterDrawThumb(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, float AValue, bool ALeft);
	void __fastcall RangeInteractionChange(System::TObject* Sender);
	void __fastcall RangeAppearanceChange(System::TObject* Sender);
	virtual System::Types::TRectF __fastcall GetSliderRect(bool ALeft);
	virtual float __fastcall GetThumbWidth();
	__property TTMSFNCCustomRangeSliderAppearance* Appearance = {read=FRangeAppearance, write=SetRangeAppearance};
	__property TTMSFNCCustomRangeSliderInteraction* Interaction = {read=FRangeInteraction, write=SetRangeInteraction};
	__property float ValueLeft = {read=GetValueLeft, write=SetValueLeft, stored=IsValueLeftStored};
	__property float ValueRight = {read=GetValueRight, write=SetValueRight, stored=IsValueRightStored};
	__property TTMSFNCCustomRangeSliderBeforeDrawThumbEvent OnBeforeDrawThumb = {read=FOnBeforeDrawThumb, write=FOnBeforeDrawThumb};
	__property TTMSFNCCustomRangeSliderAfterDrawThumbEvent OnAfterDrawThumb = {read=FOnAfterDrawThumb, write=FOnAfterDrawThumb};
	
public:
	__fastcall virtual TTMSFNCCustomRangeSlider(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCCustomRangeSlider();
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCRangeSlider : public TTMSFNCCustomRangeSlider
{
	typedef TTMSFNCCustomRangeSlider inherited;
	
__published:
	__property Appearance;
	__property Interaction;
	__property Fill;
	__property Stroke;
	__property Max;
	__property Min;
	__property ValueLeft;
	__property ValueRight;
	__property OnChanged;
	__property OnBeforeDrawTrackLine;
	__property OnAfterDrawTrackLine;
	__property OnBeforeDrawTickMarks;
	__property OnAfterDrawTickMarks;
	__property OnBeforeDrawTickLabel;
	__property OnAfterDrawTickLabel;
	__property OnBeforeDrawTrackLabel;
	__property OnAfterDrawTrackLabel;
	__property OnBeforeDrawThumb;
	__property OnAfterDrawThumb;
	__property OnValueChanged;
	__property OnValueChange;
public:
	/* TTMSFNCCustomRangeSlider.Create */ inline __fastcall virtual TTMSFNCRangeSlider(System::Classes::TComponent* AOwner) : TTMSFNCCustomRangeSlider(AOwner) { }
	/* TTMSFNCCustomRangeSlider.Destroy */ inline __fastcall virtual ~TTMSFNCRangeSlider() { }
	
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x3);
static constexpr System::Int8 BLD_VER = System::Int8(0x0);
}	/* namespace Tmsfncrangeslider */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCRANGESLIDER)
using namespace Fmx::Tmsfncrangeslider;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncrangesliderHPP
