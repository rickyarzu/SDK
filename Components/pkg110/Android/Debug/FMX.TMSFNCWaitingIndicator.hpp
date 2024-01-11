// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCWaitingIndicator.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncwaitingindicatorHPP
#define Fmx_TmsfncwaitingindicatorHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <System.SysUtils.hpp>
#include <System.Types.hpp>
#include <System.UITypes.hpp>
#include <FMX.Types.hpp>
#include <FMX.Controls.hpp>
#include <FMX.TMSFNCCustomControl.hpp>
#include <FMX.TMSFNCGraphics.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.TMSFNCGraphicsTypes.hpp>
#include <FMX.TMSFNCStyles.hpp>
#include <FMX.Graphics.hpp>
#include <FMX.Forms.hpp>
#include <System.Generics.Collections.hpp>
#include <System.Generics.Defaults.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncwaitingindicator
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCCustomWaitingIndicatorAppearance;
class DELPHICLASS TTMSFNCWaitingIndicatorAppearance;
class DELPHICLASS TTMSFNCCustomWaitingIndicator;
class DELPHICLASS TTMSFNCWaitingIndicator;
//-- type declarations -------------------------------------------------------
enum DECLSPEC_DENUM TTMSFNCWaitingIndicatorIndicatorShape : unsigned char { wisCircle, wisSquare, wisImage, wisProgress };

enum DECLSPEC_DENUM TTMSFNCWaitingIndicatorMoveShape : unsigned char { wmsCircle, wmsLine };

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCustomWaitingIndicatorAppearance : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	TTMSFNCCustomWaitingIndicator* FOwner;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FIndicatorFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FIndicatorStroke;
	System::Classes::TNotifyEvent FOnChange;
	int FIndicators;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FOverlayStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FOverlayFill;
	TTMSFNCWaitingIndicatorIndicatorShape FIndicatorShape;
	Fmx::Tmsfnctypes::TTMSFNCBitmap* FIndicatorBitmap;
	bool FChangeIndicatorSize;
	bool FRotateIndicators;
	bool FRotateClockWise;
	TTMSFNCWaitingIndicatorMoveShape FMoveShape;
	Fmx::Tmsfnctypes::TTMSFNCBitmap* FCenterBitmap;
	void __fastcall SetIndicatorFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetIndicatorStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetIndicators(const int Value);
	void __fastcall SetOverlayFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetOverlayStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetIndicatorShape(const TTMSFNCWaitingIndicatorIndicatorShape Value);
	void __fastcall SetIndicatorBitmap(Fmx::Tmsfnctypes::TTMSFNCBitmap* const Value);
	void __fastcall SetChangeIndicatorSize(const bool Value);
	void __fastcall SetMoveShape(const TTMSFNCWaitingIndicatorMoveShape Value);
	void __fastcall SetCenterBitmap(Fmx::Tmsfnctypes::TTMSFNCBitmap* const Value);
	
protected:
	void __fastcall Changed();
	void __fastcall BitmapChanged(System::TObject* Sender);
	void __fastcall FillChanged(System::TObject* Sender);
	void __fastcall StrokeChanged(System::TObject* Sender);
	__property Fmx::Tmsfnctypes::TTMSFNCBitmap* CenterBitmap = {read=FCenterBitmap, write=SetCenterBitmap};
	__property bool ChangeIndicatorSize = {read=FChangeIndicatorSize, write=SetChangeIndicatorSize, default=0};
	__property int Indicators = {read=FIndicators, write=SetIndicators, default=1};
	__property Fmx::Tmsfnctypes::TTMSFNCBitmap* IndicatorBitmap = {read=FIndicatorBitmap, write=SetIndicatorBitmap};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* IndicatorFill = {read=FIndicatorFill, write=SetIndicatorFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* IndicatorStroke = {read=FIndicatorStroke, write=SetIndicatorStroke};
	__property TTMSFNCWaitingIndicatorIndicatorShape IndicatorShape = {read=FIndicatorShape, write=SetIndicatorShape, nodefault};
	__property TTMSFNCWaitingIndicatorMoveShape MoveShape = {read=FMoveShape, write=SetMoveShape, nodefault};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* OverlayFill = {read=FOverlayFill, write=SetOverlayFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* OverlayStroke = {read=FOverlayStroke, write=SetOverlayStroke};
	__property bool RotateIndicators = {read=FRotateIndicators, write=FRotateIndicators, default=0};
	__property bool RotateClockWise = {read=FRotateClockWise, write=FRotateClockWise, default=1};
	
public:
	__fastcall TTMSFNCCustomWaitingIndicatorAppearance(TTMSFNCCustomWaitingIndicator* AOwner);
	__fastcall virtual ~TTMSFNCCustomWaitingIndicatorAppearance();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__property System::Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCWaitingIndicatorAppearance : public TTMSFNCCustomWaitingIndicatorAppearance
{
	typedef TTMSFNCCustomWaitingIndicatorAppearance inherited;
	
__published:
	__property CenterBitmap;
	__property ChangeIndicatorSize = {default=0};
	__property Indicators = {default=1};
	__property IndicatorBitmap;
	__property IndicatorFill;
	__property IndicatorStroke;
	__property IndicatorShape;
	__property MoveShape;
	__property OverlayFill;
	__property OverlayStroke;
	__property RotateIndicators = {default=0};
	__property RotateClockWise = {default=1};
public:
	/* TTMSFNCCustomWaitingIndicatorAppearance.Create */ inline __fastcall TTMSFNCWaitingIndicatorAppearance(TTMSFNCCustomWaitingIndicator* AOwner) : TTMSFNCCustomWaitingIndicatorAppearance(AOwner) { }
	/* TTMSFNCCustomWaitingIndicatorAppearance.Destroy */ inline __fastcall virtual ~TTMSFNCWaitingIndicatorAppearance() { }
	
};

#pragma pack(pop)

typedef void __fastcall (__closure *TTMSFNCWaitingIndicatorAfterDrawIndicatorEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);

typedef void __fastcall (__closure *TTMSFNCWaitingIndicatorBeforeDrawIndicatorEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, bool &AAllow, bool &ADefaultDraw);

class PASCALIMPLEMENTATION TTMSFNCCustomWaitingIndicator : public Fmx::Tmsfnccustomcontrol::TTMSFNCCustomControl
{
	typedef Fmx::Tmsfnccustomcontrol::TTMSFNCCustomControl inherited;
	
private:
	bool FActive;
	Fmx::Tmsfnccustomcontrol::TTMSFNCControlAlignment FAlign;
	double FAnimationSpeed;
	TTMSFNCWaitingIndicatorAppearance* FAppearance;
	int FDrawCount;
	float FDrawWidth;
	float FDrawHeight;
	float FDrawX;
	float FDrawY;
	bool FSetSize;
	Fmx::Types::TTimer* FTimer;
	System::Classes::TNotifyEvent FOnAppearanceChanged;
	TTMSFNCWaitingIndicatorAfterDrawIndicatorEvent FOnAfterDrawIndicator;
	TTMSFNCWaitingIndicatorAfterDrawIndicatorEvent FOnAfterDrawOverlay;
	TTMSFNCWaitingIndicatorBeforeDrawIndicatorEvent FOnBeforeDrawIndicator;
	TTMSFNCWaitingIndicatorBeforeDrawIndicatorEvent FOnBeforeDrawOverlay;
	bool FOverlayParent;
	void __fastcall AppearanceChanged(System::TObject* Sender);
	double __fastcall CalculateIndicatorSize(int AIdx, double ASize, double ASpeed);
	void __fastcall DrawIndicator(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	void __fastcall ResetSize();
	void __fastcall SetActive(const bool Value);
	void __fastcall SetAnimationSpeed(const double Value);
	void __fastcall SetAppearance(TTMSFNCWaitingIndicatorAppearance* const Value);
	HIDESBASE void __fastcall SetSize();
	void __fastcall TimerChanged(System::TObject* Sender);
	void __fastcall SetOverlayParent(const bool Value);
	
protected:
	virtual void __fastcall ChangeDPIScale(int M, int D);
	virtual void __fastcall DoAfterDrawIndicator(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	virtual void __fastcall DoAfterDrawOverlay(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	virtual void __fastcall DoAppearanceChanged(System::TObject* Sender);
	virtual void __fastcall DoBeforeDrawIndicator(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoBeforeDrawOverlay(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DrawBackground(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	virtual void __fastcall Loaded();
	virtual void __fastcall UpdateControlAfterResize();
	__property bool Active = {read=FActive, write=SetActive, nodefault};
	__property TTMSFNCWaitingIndicatorAppearance* Appearance = {read=FAppearance, write=SetAppearance};
	__property double AnimationSpeed = {read=FAnimationSpeed, write=SetAnimationSpeed};
	__property bool OverlayParent = {read=FOverlayParent, write=SetOverlayParent, default=0};
	__property TTMSFNCWaitingIndicatorAfterDrawIndicatorEvent OnAfterDrawIndicator = {read=FOnAfterDrawIndicator, write=FOnAfterDrawIndicator};
	__property TTMSFNCWaitingIndicatorAfterDrawIndicatorEvent OnAfterDrawOverlay = {read=FOnAfterDrawOverlay, write=FOnAfterDrawOverlay};
	__property System::Classes::TNotifyEvent OnAppearanceChanged = {read=FOnAppearanceChanged, write=FOnAppearanceChanged};
	__property TTMSFNCWaitingIndicatorBeforeDrawIndicatorEvent OnBeforeDrawIndicator = {read=FOnBeforeDrawIndicator, write=FOnBeforeDrawIndicator};
	__property TTMSFNCWaitingIndicatorBeforeDrawIndicatorEvent OnBeforeDrawOverlay = {read=FOnBeforeDrawOverlay, write=FOnBeforeDrawOverlay};
	
public:
	__fastcall virtual TTMSFNCCustomWaitingIndicator(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCCustomWaitingIndicator();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	virtual void __fastcall Draw(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
};


class PASCALIMPLEMENTATION TTMSFNCWaitingIndicator : public TTMSFNCCustomWaitingIndicator
{
	typedef TTMSFNCCustomWaitingIndicator inherited;
	
__published:
	__property Active;
	__property Appearance;
	__property AnimationSpeed = {default=0};
	__property OverlayParent = {default=0};
	__property OnAppearanceChanged;
	__property OnAfterDrawIndicator;
	__property OnBeforeDrawIndicator;
	__property OnAfterDrawOverlay;
	__property OnBeforeDrawOverlay;
public:
	/* TTMSFNCCustomWaitingIndicator.Create */ inline __fastcall virtual TTMSFNCWaitingIndicator(System::Classes::TComponent* AOwner) : TTMSFNCCustomWaitingIndicator(AOwner) { }
	/* TTMSFNCCustomWaitingIndicator.Destroy */ inline __fastcall virtual ~TTMSFNCWaitingIndicator() { }
	
};


//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x1);
static constexpr System::Int8 BLD_VER = System::Int8(0x0);
}	/* namespace Tmsfncwaitingindicator */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCWAITINGINDICATOR)
using namespace Fmx::Tmsfncwaitingindicator;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncwaitingindicatorHPP
