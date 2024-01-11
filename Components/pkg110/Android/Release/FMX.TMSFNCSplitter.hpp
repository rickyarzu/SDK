// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCSplitter.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncsplitterHPP
#define Fmx_TmsfncsplitterHPP

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
namespace Tmsfncsplitter
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCCustomSplitterAppearance;
class DELPHICLASS TTMSFNCSplitterAppearance;
class DELPHICLASS TTMSFNCSplitterCache;
class DELPHICLASS TTMSFNCCustomSplitter;
class DELPHICLASS TTMSFNCSplitter;
//-- type declarations -------------------------------------------------------
enum DECLSPEC_DENUM TTMSFNCSplitterIndicator : unsigned char { siCircle, siCircles, siLine, siSquare, siSquares, siImage };

enum DECLSPEC_DENUM TTMSFNCSplitterResizeStyle : unsigned char { rsOnce, rsContinuous };

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCustomSplitterAppearance : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	Fmx::Tmsfnctypes::TTMSFNCBitmap* FIndicatorBitmap;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FIndicatorDownFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FIndicatorDownStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FIndicatorFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FIndicatorHoverFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FIndicatorHoverStroke;
	int FIndicatorMargin;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FIndicatorStroke;
	TTMSFNCCustomSplitter* FOwner;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FSplitterDownFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FSplitterDownStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FSplitterFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FSplitterHoverFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FSplitterHoverStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FSplitterStroke;
	System::Classes::TNotifyEvent FOnChange;
	void __fastcall SetIndicatorBitmap(Fmx::Tmsfnctypes::TTMSFNCBitmap* const Value);
	void __fastcall SetIndicatorDownFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetIndicatorDownStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetIndicatorFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetIndicatorHoverFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetIndicatorHoverStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetIndicatorMargin(const int Value);
	void __fastcall SetIndicatorStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetSplitterDownFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetSplitterDownStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetSplitterHoverFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetSplitterHoverStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetSplitterFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetSplitterStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	
protected:
	void __fastcall Changed();
	void __fastcall BitmapChanged(System::TObject* Sender);
	void __fastcall FillChanged(System::TObject* Sender);
	void __fastcall StrokeChanged(System::TObject* Sender);
	__property Fmx::Tmsfnctypes::TTMSFNCBitmap* IndicatorBitmap = {read=FIndicatorBitmap, write=SetIndicatorBitmap};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* IndicatorDownFill = {read=FIndicatorDownFill, write=SetIndicatorDownFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* IndicatorDownStroke = {read=FIndicatorDownStroke, write=SetIndicatorDownStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* IndicatorFill = {read=FIndicatorFill, write=SetIndicatorFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* IndicatorHoverFill = {read=FIndicatorHoverFill, write=SetIndicatorHoverFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* IndicatorHoverStroke = {read=FIndicatorHoverStroke, write=SetIndicatorHoverStroke};
	__property int IndicatorMargin = {read=FIndicatorMargin, write=SetIndicatorMargin, default=1};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* IndicatorStroke = {read=FIndicatorStroke, write=SetIndicatorStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* SplitterDownFill = {read=FSplitterDownFill, write=SetSplitterDownFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* SplitterDownStroke = {read=FSplitterDownStroke, write=SetSplitterDownStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* SplitterFill = {read=FSplitterFill, write=SetSplitterFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* SplitterHoverFill = {read=FSplitterHoverFill, write=SetSplitterHoverFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* SplitterHoverStroke = {read=FSplitterHoverStroke, write=SetSplitterHoverStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* SplitterStroke = {read=FSplitterStroke, write=SetSplitterStroke};
	
public:
	__fastcall TTMSFNCCustomSplitterAppearance(TTMSFNCCustomSplitter* AOwner);
	__fastcall virtual ~TTMSFNCCustomSplitterAppearance();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__property System::Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCSplitterAppearance : public TTMSFNCCustomSplitterAppearance
{
	typedef TTMSFNCCustomSplitterAppearance inherited;
	
__published:
	__property IndicatorBitmap;
	__property IndicatorDownFill;
	__property IndicatorDownStroke;
	__property IndicatorFill;
	__property IndicatorHoverFill;
	__property IndicatorHoverStroke;
	__property IndicatorMargin = {default=1};
	__property IndicatorStroke;
	__property SplitterDownFill;
	__property SplitterDownStroke;
	__property SplitterFill;
	__property SplitterHoverFill;
	__property SplitterHoverStroke;
	__property SplitterStroke;
public:
	/* TTMSFNCCustomSplitterAppearance.Create */ inline __fastcall TTMSFNCSplitterAppearance(TTMSFNCCustomSplitter* AOwner) : TTMSFNCCustomSplitterAppearance(AOwner) { }
	/* TTMSFNCCustomSplitterAppearance.Destroy */ inline __fastcall virtual ~TTMSFNCSplitterAppearance() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCSplitterCache : public Fmx::Tmsfnccustomcontrol::TTMSFNCCustomControl
{
	typedef Fmx::Tmsfnccustomcontrol::TTMSFNCCustomControl inherited;
	
private:
	TTMSFNCCustomSplitter* FSplitter;
	
public:
	virtual void __fastcall Draw(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
public:
	/* TTMSFNCCustomControl.Create */ inline __fastcall virtual TTMSFNCSplitterCache(System::Classes::TComponent* AOwner) : Fmx::Tmsfnccustomcontrol::TTMSFNCCustomControl(AOwner) { }
	/* TTMSFNCCustomControl.Destroy */ inline __fastcall virtual ~TTMSFNCSplitterCache() { }
	
};

#pragma pack(pop)

typedef void __fastcall (__closure *TTMSFNCSplitterMoveEvent)(System::TObject* Sender, TTMSFNCSplitterResizeStyle AResizeStyle, const System::Types::TPointF &ADownPos, const System::Types::TPointF &ACurrentPos, float ASplit);

typedef void __fastcall (__closure *TTMSFNCSplitterAfterDrawIndicatorEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, TTMSFNCSplitterIndicator AIndicator, const System::Types::TRectF &ARect, TTMSFNCSplitterResizeStyle AResizeStyle);

typedef void __fastcall (__closure *TTMSFNCSplitterBeforeDrawIndicatorEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, TTMSFNCSplitterIndicator AIndicator, const System::Types::TRectF &ARect, TTMSFNCSplitterResizeStyle AResizeStyle, bool &AAllow, bool &ADefaultDraw);

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCustomSplitter : public Fmx::Tmsfnccustomcontrol::TTMSFNCCustomControl
{
	typedef Fmx::Tmsfnccustomcontrol::TTMSFNCCustomControl inherited;
	
private:
	TTMSFNCSplitterAppearance* FAppearance;
	TTMSFNCSplitterCache* FCache;
	Fmx::Controls::TControl* FControl;
	System::Types::TPointF FDownPos;
	float FMaxSize;
	float FMinSize;
	bool FMouseDown;
	bool FMouseHover;
	float FNewSize;
	float FOldSize;
	bool FShowIndicator;
	float FSplit;
	TTMSFNCSplitterIndicator FSplitterIndicator;
	TTMSFNCSplitterResizeStyle FResizeStyle;
	System::Classes::TNotifyEvent FOnAppearanceChanged;
	TTMSFNCSplitterAfterDrawIndicatorEvent FOnAfterDrawIndicator;
	TTMSFNCSplitterBeforeDrawIndicatorEvent FOnBeforeDrawIndicator;
	System::Classes::TNotifyEvent FOnChanged;
	TTMSFNCSplitterMoveEvent FOnSplitterMove;
	TTMSFNCSplitterMoveEvent FOnSplitterMoved;
	void __fastcall AppearanceChanged(System::TObject* Sender);
	void __fastcall CalcSplitSize(float X, float Y, float &NewSize, float &Split);
	void __fastcall DrawIndicatorCircle(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	void __fastcall DrawIndicatorCircles(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	void __fastcall DrawIndicatorImage(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	void __fastcall DrawIndicatorLine(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	void __fastcall DrawIndicatorSquare(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	void __fastcall DrawIndicatorSquares(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	void __fastcall DrawLine();
	System::Types::TRectF __fastcall GetDrawingRect(const System::Types::TRectF &ARect);
	void __fastcall GetDrawingRects(const System::Types::TRectF &ARect, System::Types::TRectF &ARect1, System::Types::TRectF &ARect2, System::Types::TRectF &ARect3);
	void __fastcall SetAppearance(TTMSFNCSplitterAppearance* const Value);
	void __fastcall SetMinSize(const float Value);
	void __fastcall SetShowIndicator(const bool Value);
	void __fastcall SetSplitterIndicator(const TTMSFNCSplitterIndicator Value);
	void __fastcall SetResizeStyle(const TTMSFNCSplitterResizeStyle Value);
	
protected:
	virtual void __fastcall ChangeDPIScale(int M, int D);
	virtual void __fastcall DoAppearanceChanged(System::TObject* Sender);
	virtual void __fastcall DoAfterDrawIndicator(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, TTMSFNCSplitterIndicator AIndicator, const System::Types::TRectF &ARect, TTMSFNCSplitterResizeStyle AResizeStyle);
	virtual void __fastcall DoBeforeDrawIndicator(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, TTMSFNCSplitterIndicator AIndicator, const System::Types::TRectF &ARect, TTMSFNCSplitterResizeStyle AResizeStyle, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoSplitterMove(TTMSFNCSplitterResizeStyle AResizeStyle, const System::Types::TPointF &ADownPos, const System::Types::TPointF &ACurrentPos, float ASplit);
	virtual void __fastcall DoSplitterMoved(TTMSFNCSplitterResizeStyle AResizeStyle, const System::Types::TPointF &ADownPos, const System::Types::TPointF &ACurrentPos, float ASplit);
	bool __fastcall DoCanResize(float &NewSize);
	virtual void __fastcall DoChanged();
	virtual void __fastcall DrawBackGroundColor(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	virtual void __fastcall DrawIndicator(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	Fmx::Controls::TControl* __fastcall FindControl();
	virtual void __fastcall HandleMouseDown(System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall HandleMouseEnter();
	virtual void __fastcall HandleMouseLeave();
	virtual void __fastcall HandleMouseMove(System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall HandleMouseUp(System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall Notification(System::Classes::TComponent* AComponent, System::Classes::TOperation Operation);
	virtual void __fastcall SetAlign(const Fmx::Types::TAlignLayout Value);
	void __fastcall UpdateSplitterControlSize();
	void __fastcall UpdateSplitterSize(float X, float Y);
	__property TTMSFNCSplitterAppearance* Appearance = {read=FAppearance, write=SetAppearance};
	__property float MinSize = {read=FMinSize, write=SetMinSize};
	__property TTMSFNCSplitterResizeStyle ResizeStyle = {read=FResizeStyle, write=SetResizeStyle, default=1};
	__property bool ShowIndicator = {read=FShowIndicator, write=SetShowIndicator, default=1};
	__property TTMSFNCSplitterIndicator SplitterIndicator = {read=FSplitterIndicator, write=SetSplitterIndicator, default=0};
	__property TTMSFNCSplitterAfterDrawIndicatorEvent OnAfterDrawIndicator = {read=FOnAfterDrawIndicator, write=FOnAfterDrawIndicator};
	__property TTMSFNCSplitterBeforeDrawIndicatorEvent OnBeforeDrawIndicator = {read=FOnBeforeDrawIndicator, write=FOnBeforeDrawIndicator};
	__property System::Classes::TNotifyEvent OnAppearanceChanged = {read=FOnAppearanceChanged, write=FOnAppearanceChanged};
	__property System::Classes::TNotifyEvent OnChanged = {read=FOnChanged, write=FOnChanged};
	__property TTMSFNCSplitterMoveEvent OnSplitterMove = {read=FOnSplitterMove, write=FOnSplitterMove};
	__property TTMSFNCSplitterMoveEvent OnSplitterMoved = {read=FOnSplitterMoved, write=FOnSplitterMoved};
	
public:
	__fastcall virtual TTMSFNCCustomSplitter(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCCustomSplitter();
	virtual void __fastcall Draw(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCSplitter : public TTMSFNCCustomSplitter
{
	typedef TTMSFNCCustomSplitter inherited;
	
__published:
	__property Appearance;
	__property MinSize = {default=0};
	__property ResizeStyle = {default=1};
	__property ShowIndicator = {default=1};
	__property SplitterIndicator = {default=0};
	__property OnAppearanceChanged;
	__property OnChanged;
	__property OnSplitterMove;
	__property OnSplitterMoved;
public:
	/* TTMSFNCCustomSplitter.Create */ inline __fastcall virtual TTMSFNCSplitter(System::Classes::TComponent* AOwner) : TTMSFNCCustomSplitter(AOwner) { }
	/* TTMSFNCCustomSplitter.Destroy */ inline __fastcall virtual ~TTMSFNCSplitter() { }
	
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x1);
static constexpr System::Int8 BLD_VER = System::Int8(0x0);
}	/* namespace Tmsfncsplitter */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCSPLITTER)
using namespace Fmx::Tmsfncsplitter;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncsplitterHPP
