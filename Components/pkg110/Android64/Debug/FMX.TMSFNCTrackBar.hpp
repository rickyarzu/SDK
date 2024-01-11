// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCTrackBar.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfnctrackbarHPP
#define Fmx_TmsfnctrackbarHPP

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
#include <FMX.Controls.hpp>
#include <System.UITypes.hpp>
#include <System.Generics.Collections.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfnctrackbar
{
//-- forward type declarations -----------------------------------------------
struct TTMSFNCCustomTrackBarBaseValues;
class DELPHICLASS TTMSFNCCustomTrackBarBaseAppearance;
class DELPHICLASS TTMSFNCCustomTrackBarAppearance;
class DELPHICLASS TTMSFNCCustomTrackBarBaseInteraction;
class DELPHICLASS TTMSFNCCustomTrackBarInteraction;
class DELPHICLASS TTMSFNCCustomTrackBarBase;
class DELPHICLASS TTMSFNCCustomTrackBar;
class DELPHICLASS TTMSFNCTrackBar;
//-- type declarations -------------------------------------------------------
struct DECLSPEC_DRECORD TTMSFNCCustomTrackBarBaseValues
{
public:
	float Left;
	float Right;
};


enum DECLSPEC_DENUM TTMSFNCTrackBarAppearanceTickMarkPosition : unsigned char { tmpBoth, tmpBottomRight, tmpTopLeft, tmpNone };

enum DECLSPEC_DENUM TTMSFNCTrackBarAppearanceButtonShape : unsigned char { bsRounded, bsRectangle, bsImage, bsNoButton };

enum DECLSPEC_DENUM TTMSFNCCustomTrackBarTrackLabelPosition : unsigned char { tlpTopLeft, tlpTopCenter, tlpTopRight, tlpBottomLeft, tlpBottomCenter, tlpBottomRight, tlpNone };

enum DECLSPEC_DENUM TTMSFNCCustomTrackBarBaseShape : unsigned char { tsRectangle, tsEllipse, tsImage };

enum DECLSPEC_DENUM TTMSFNCCustomTrackBarBaseLineShape : unsigned char { lsRectangle, lsRoundedRectangle, lsImage };

enum DECLSPEC_DENUM TTMSFNCCustomTrackBarOrientation : unsigned char { tboHorizontal, tboVertical };

class PASCALIMPLEMENTATION TTMSFNCCustomTrackBarBaseAppearance : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	System::Classes::TComponent* FOwner;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FButtonStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FButtonFill;
	int FButtonSize;
	System::Classes::TNotifyEvent FOnChange;
	int FButtonSpacing;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FThumbFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FThumbRightFill;
	int FThumbHeight;
	int FThumbRightHeight;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FThumbStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FThumbRightStroke;
	int FThumbWidth;
	int FThumbRightWidth;
	int FLineWidth;
	int FTickMarkSpacing;
	int FTickMarkSize;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FTickMarkStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FLineFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FLineStroke;
	TTMSFNCTrackBarAppearanceButtonShape FButtonShape;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FButtonDownFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FButtonDownStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FThumbDownFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FThumbRightDownFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FThumbDownStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FThumbRightDownStroke;
	TTMSFNCTrackBarAppearanceTickMarkPosition FTickMarkPosition;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FValueFont;
	TTMSFNCCustomTrackBarBaseShape FThumbShape;
	System::UnicodeString FTickMarkLabelFormat;
	System::UnicodeString FTrackLabelFormat;
	TTMSFNCCustomTrackBarTrackLabelPosition FTrackLabelPosition;
	bool FTickMarkLabel;
	int FTickMarkDivision;
	TTMSFNCCustomTrackBarOrientation FOrientation;
	Fmx::Tmsfnctypes::TTMSFNCBitmap* FMinButtonBitmap;
	Fmx::Tmsfnctypes::TTMSFNCBitmap* FMinButtonDownBitmap;
	Fmx::Tmsfnctypes::TTMSFNCBitmap* FPlusButtonBitmap;
	Fmx::Tmsfnctypes::TTMSFNCBitmap* FPlusButtonDownBitmap;
	Fmx::Tmsfnctypes::TTMSFNCBitmap* FLineBitmap;
	TTMSFNCCustomTrackBarBaseLineShape FLineShape;
	Fmx::Tmsfnctypes::TTMSFNCBitmap* FThumbBitmap;
	Fmx::Tmsfnctypes::TTMSFNCBitmap* FThumbDownBitmap;
	Fmx::Tmsfnctypes::TTMSFNCBitmap* FThumbRightBitmap;
	Fmx::Tmsfnctypes::TTMSFNCBitmap* FThumbRightDownBitmap;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FTickMarkLabelFont;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FTrackLabelFont;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FLineRightStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FLineRightFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FLineMiddleFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FLineMiddleStroke;
	void __fastcall SetButtonFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const AValue);
	void __fastcall SetButtonSize(const int AValue);
	void __fastcall SetButtonStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const AValue);
	void __fastcall SetButtonSpacing(const int AValue);
	void __fastcall SetThumbFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const AValue);
	void __fastcall SetThumbHeight(const int AValue);
	void __fastcall SetThumbRightFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const AValue);
	void __fastcall SetThumbRightHeight(const int AValue);
	void __fastcall SetThumbRightStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const AValue);
	void __fastcall SetThumbRightWidth(const int AValue);
	void __fastcall SetThumbStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const AValue);
	void __fastcall SetThumbWidth(const int AValue);
	void __fastcall SetLineWidth(const int AValue);
	void __fastcall SetTickMarkSpacing(const int AValue);
	void __fastcall SetTickMarkSize(const int AValue);
	void __fastcall SetLineFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const AValue);
	void __fastcall SetLineStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const AValue);
	void __fastcall SetTickMarkStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const AValue);
	void __fastcall SetButtonShape(const TTMSFNCTrackBarAppearanceButtonShape AValue);
	void __fastcall SetButtonDownFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const AValue);
	void __fastcall SetButtonDownStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const AValue);
	void __fastcall SetThumbDownFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const AValue);
	void __fastcall SetThumbDownStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const AValue);
	void __fastcall SetThumbRightDownFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const AValue);
	void __fastcall SetThumbRightDownStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const AValue);
	void __fastcall SetTickMarkPosition(const TTMSFNCTrackBarAppearanceTickMarkPosition AValue);
	void __fastcall SetValueFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const AValue);
	void __fastcall SetThumbShape(const TTMSFNCCustomTrackBarBaseShape AValue);
	void __fastcall SetTickMarkLabelFormat(const System::UnicodeString AValue);
	void __fastcall SetTrackLabelFormat(const System::UnicodeString AValue);
	void __fastcall SetTrackLabelPosition(const TTMSFNCCustomTrackBarTrackLabelPosition AValue);
	void __fastcall SetTickMarkLabel(const bool AValue);
	void __fastcall SetTickMarkDivision(const int AValue);
	void __fastcall SetOrientation(const TTMSFNCCustomTrackBarOrientation AValue);
	bool __fastcall IsTickMarkLabelFormatStored();
	bool __fastcall IsTrackLabelFormatStored();
	void __fastcall SetMinButtonBitmap(Fmx::Tmsfnctypes::TTMSFNCBitmap* const Value);
	void __fastcall SetMinButtonDownBitmap(Fmx::Tmsfnctypes::TTMSFNCBitmap* const Value);
	void __fastcall SetPlusButtonBitmap(Fmx::Tmsfnctypes::TTMSFNCBitmap* const Value);
	void __fastcall SetPlusButtonDownBitmap(Fmx::Tmsfnctypes::TTMSFNCBitmap* const Value);
	void __fastcall SetLineBitmap(Fmx::Tmsfnctypes::TTMSFNCBitmap* const Value);
	void __fastcall SetLineShape(const TTMSFNCCustomTrackBarBaseLineShape Value);
	void __fastcall SetThumbBitmap(Fmx::Tmsfnctypes::TTMSFNCBitmap* const Value);
	void __fastcall SetThumbDownBitmap(Fmx::Tmsfnctypes::TTMSFNCBitmap* const Value);
	void __fastcall SetThumbRightBitmap(Fmx::Tmsfnctypes::TTMSFNCBitmap* const Value);
	void __fastcall SetThumbRightDownBitmap(Fmx::Tmsfnctypes::TTMSFNCBitmap* const Value);
	void __fastcall SetTickMarkLabelFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetTrackLabelFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetLineRightStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetLineRightFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetLineMiddleFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetLineMiddleStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	
protected:
	void __fastcall Changed();
	void __fastcall FillChanged(System::TObject* Sender);
	void __fastcall StrokeChanged(System::TObject* Sender);
	void __fastcall FontChanged(System::TObject* Sender);
	void __fastcall BitmapChanged(System::TObject* Sender);
	__property int ButtonSize = {read=FButtonSize, write=SetButtonSize, default=20};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* ButtonFill = {read=FButtonFill, write=SetButtonFill};
	__property int ButtonSpacing = {read=FButtonSpacing, write=SetButtonSpacing, default=2};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* ButtonStroke = {read=FButtonStroke, write=SetButtonStroke};
	__property TTMSFNCTrackBarAppearanceButtonShape ButtonShape = {read=FButtonShape, write=SetButtonShape, default=3};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* ButtonDownFill = {read=FButtonDownFill, write=SetButtonDownFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* ButtonDownStroke = {read=FButtonDownStroke, write=SetButtonDownStroke};
	__property Fmx::Tmsfnctypes::TTMSFNCBitmap* MinButtonBitmap = {read=FMinButtonBitmap, write=SetMinButtonBitmap};
	__property Fmx::Tmsfnctypes::TTMSFNCBitmap* MinButtonDownBitmap = {read=FMinButtonDownBitmap, write=SetMinButtonDownBitmap};
	__property Fmx::Tmsfnctypes::TTMSFNCBitmap* PlusButtonBitmap = {read=FPlusButtonBitmap, write=SetPlusButtonBitmap};
	__property Fmx::Tmsfnctypes::TTMSFNCBitmap* PlusButtonDownBitmap = {read=FPlusButtonDownBitmap, write=SetPlusButtonDownBitmap};
	__property Fmx::Tmsfnctypes::TTMSFNCBitmap* ThumbBitmap = {read=FThumbBitmap, write=SetThumbBitmap};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* ThumbFill = {read=FThumbFill, write=SetThumbFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* ThumbStroke = {read=FThumbStroke, write=SetThumbStroke};
	__property int ThumbHeight = {read=FThumbHeight, write=SetThumbHeight, default=16};
	__property int ThumbWidth = {read=FThumbWidth, write=SetThumbWidth, default=8};
	__property TTMSFNCCustomTrackBarBaseShape ThumbShape = {read=FThumbShape, write=SetThumbShape, default=0};
	__property Fmx::Tmsfnctypes::TTMSFNCBitmap* ThumbDownBitmap = {read=FThumbDownBitmap, write=SetThumbDownBitmap};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* ThumbDownFill = {read=FThumbDownFill, write=SetThumbDownFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* ThumbDownStroke = {read=FThumbDownStroke, write=SetThumbDownStroke};
	__property Fmx::Tmsfnctypes::TTMSFNCBitmap* ThumbRightBitmap = {read=FThumbRightBitmap, write=SetThumbRightBitmap};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* ThumbRightFill = {read=FThumbRightFill, write=SetThumbRightFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* ThumbRightStroke = {read=FThumbRightStroke, write=SetThumbRightStroke};
	__property int ThumbRightHeight = {read=FThumbRightHeight, write=SetThumbRightHeight, default=16};
	__property int ThumbRightWidth = {read=FThumbRightWidth, write=SetThumbRightWidth, default=8};
	__property Fmx::Tmsfnctypes::TTMSFNCBitmap* ThumbRightDownBitmap = {read=FThumbRightDownBitmap, write=SetThumbRightDownBitmap};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* ThumbRightDownFill = {read=FThumbRightDownFill, write=SetThumbRightDownFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* ThumbRightDownStroke = {read=FThumbRightDownStroke, write=SetThumbRightDownStroke};
	__property int LineWidth = {read=FLineWidth, write=SetLineWidth, default=1};
	__property TTMSFNCCustomTrackBarBaseLineShape LineShape = {read=FLineShape, write=SetLineShape, default=0};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* LineStroke = {read=FLineStroke, write=SetLineStroke};
	__property Fmx::Tmsfnctypes::TTMSFNCBitmap* LineBitmap = {read=FLineBitmap, write=SetLineBitmap};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* LineFill = {read=FLineFill, write=SetLineFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* LineRightFill = {read=FLineRightFill, write=SetLineRightFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* LineRightStroke = {read=FLineRightStroke, write=SetLineRightStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* LineMiddleFill = {read=FLineMiddleFill, write=SetLineMiddleFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* LineMiddleStroke = {read=FLineMiddleStroke, write=SetLineMiddleStroke};
	__property TTMSFNCCustomTrackBarOrientation Orientation = {read=FOrientation, write=SetOrientation, default=0};
	__property int TickMarkSize = {read=FTickMarkSize, write=SetTickMarkSize, default=4};
	__property int TickMarkSpacing = {read=FTickMarkSpacing, write=SetTickMarkSpacing, default=8};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* TickMarkStroke = {read=FTickMarkStroke, write=SetTickMarkStroke};
	__property int TickMarkDivision = {read=FTickMarkDivision, write=SetTickMarkDivision, default=5};
	__property TTMSFNCTrackBarAppearanceTickMarkPosition TickMarkPosition = {read=FTickMarkPosition, write=SetTickMarkPosition, default=1};
	__property bool TickMarkLabel = {read=FTickMarkLabel, write=SetTickMarkLabel, default=0};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* TickMarkLabelFont = {read=FTickMarkLabelFont, write=SetTickMarkLabelFont};
	__property System::UnicodeString TickMarkLabelFormat = {read=FTickMarkLabelFormat, write=SetTickMarkLabelFormat, stored=IsTickMarkLabelFormatStored};
	__property TTMSFNCCustomTrackBarTrackLabelPosition TrackLabelPosition = {read=FTrackLabelPosition, write=SetTrackLabelPosition, default=6};
	__property System::UnicodeString TrackLabelFormat = {read=FTrackLabelFormat, write=SetTrackLabelFormat, stored=IsTrackLabelFormatStored};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* TrackLabelFont = {read=FTrackLabelFont, write=SetTrackLabelFont};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* ValueFont = {read=FValueFont, write=SetValueFont};
	
public:
	__fastcall TTMSFNCCustomTrackBarBaseAppearance(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCCustomTrackBarBaseAppearance();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__property System::Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
};


class PASCALIMPLEMENTATION TTMSFNCCustomTrackBarAppearance : public TTMSFNCCustomTrackBarBaseAppearance
{
	typedef TTMSFNCCustomTrackBarBaseAppearance inherited;
	
__published:
	__property ButtonSize = {default=20};
	__property ButtonFill;
	__property ButtonSpacing = {default=2};
	__property ButtonStroke;
	__property ButtonShape = {default=3};
	__property MinButtonBitmap;
	__property MinButtonDownBitmap;
	__property PlusButtonBitmap;
	__property PlusButtonDownBitmap;
	__property ButtonDownFill;
	__property ButtonDownStroke;
	__property ThumbBitmap;
	__property ThumbFill;
	__property ThumbStroke;
	__property ThumbHeight = {default=16};
	__property ThumbWidth = {default=8};
	__property ThumbDownBitmap;
	__property ThumbDownFill;
	__property ThumbDownStroke;
	__property ThumbShape = {default=0};
	__property LineBitmap;
	__property LineShape = {default=0};
	__property LineWidth = {default=1};
	__property LineStroke;
	__property LineFill;
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
	/* TTMSFNCCustomTrackBarBaseAppearance.Create */ inline __fastcall TTMSFNCCustomTrackBarAppearance(System::Classes::TComponent* AOwner) : TTMSFNCCustomTrackBarBaseAppearance(AOwner) { }
	/* TTMSFNCCustomTrackBarBaseAppearance.Destroy */ inline __fastcall virtual ~TTMSFNCCustomTrackBarAppearance() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCustomTrackBarBaseInteraction : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	System::Classes::TComponent* FOwner;
	float FFrequency;
	System::Classes::TNotifyEvent FOnChange;
	bool FEditable;
	bool FRepeatClick;
	int FRepeatInterval;
	bool FJumpToExact;
	void __fastcall SetFrequency(const float AValue);
	void __fastcall SetEditable(const bool AValue);
	void __fastcall SetRepeatClick(const bool AValue);
	void __fastcall SetRepeatInterval(const int AValue);
	bool __fastcall IsFrequencyStored();
	void __fastcall SetJumpToExact(const bool Value);
	
protected:
	void __fastcall Changed();
	__property bool JumpToExactValue = {read=FJumpToExact, write=SetJumpToExact, default=0};
	__property float Frequency = {read=FFrequency, write=SetFrequency, stored=IsFrequencyStored};
	__property bool Editable = {read=FEditable, write=SetEditable, default=1};
	__property bool RepeatClick = {read=FRepeatClick, write=SetRepeatClick, default=0};
	__property int RepeatInterval = {read=FRepeatInterval, write=SetRepeatInterval, default=100};
	
public:
	__fastcall TTMSFNCCustomTrackBarBaseInteraction(System::Classes::TComponent* AOwner);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__property System::Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTMSFNCCustomTrackBarBaseInteraction() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCustomTrackBarInteraction : public TTMSFNCCustomTrackBarBaseInteraction
{
	typedef TTMSFNCCustomTrackBarBaseInteraction inherited;
	
__published:
	__property Frequency;
	__property RepeatClick = {default=0};
	__property RepeatInterval = {default=100};
	__property JumpToExactValue = {default=0};
public:
	/* TTMSFNCCustomTrackBarBaseInteraction.Create */ inline __fastcall TTMSFNCCustomTrackBarInteraction(System::Classes::TComponent* AOwner) : TTMSFNCCustomTrackBarBaseInteraction(AOwner) { }
	
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTMSFNCCustomTrackBarInteraction() { }
	
};


typedef void __fastcall (__closure *TTMSFNCCustomTrackBarBaseBeforeDrawButtonEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, bool APlus, bool &AAllow, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCCustomTrackBarBaseAfterDrawButtonEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, bool APlus);

typedef void __fastcall (__closure *TTMSFNCCustomTrackBarBaseBeforeDrawTrackLine)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, bool &AAllow, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCCustomTrackBarBaseAfterDrawTrackLine)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);

typedef void __fastcall (__closure *TTMSFNCCustomTrackBarBaseBeforeDrawTickMarks)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, bool &AAllow, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCCustomTrackBarBaseAfterDrawTickMarks)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);

typedef void __fastcall (__closure *TTMSFNCCustomTrackBarBaseValueChanged)(System::TObject* Sender, float AValue, bool ALeft);

typedef void __fastcall (__closure *TTMSFNCCustomTrackBarBaseBeforeDrawTickLabel)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TPointF &APosition, float AValue, bool &AAllow, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCCustomTrackBarBaseAfterDrawTickLabel)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TPointF &APosition, float AValue);

typedef void __fastcall (__closure *TTMSFNCCustomTrackBarBaseBeforeDrawTrackLabel)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, System::UnicodeString ALabel, bool &AAllow, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCCustomTrackBarBaseAfterDrawTrackLabel)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, System::UnicodeString ALabel);

class PASCALIMPLEMENTATION TTMSFNCCustomTrackBarBase : public Fmx::Tmsfnccustomcontrol::TTMSFNCCustomControl
{
	typedef Fmx::Tmsfnccustomcontrol::TTMSFNCCustomControl inherited;
	
private:
	float FMax;
	float FMin;
	bool FMouseDown;
	bool FPlusDown;
	bool FMinusDown;
	System::Uitypes::TAlphaColor FOldButtonColor;
	System::Uitypes::TAlphaColor FOldThumbColor;
	System::Uitypes::TAlphaColor FOldThumbRightColor;
	System::Uitypes::TAlphaColor FOldLineColor;
	System::Uitypes::TAlphaColor FOldTickMarkColor;
	System::Uitypes::TAlphaColor FOldButtonDownColor;
	System::Uitypes::TAlphaColor FOldThumbDownColor;
	System::Uitypes::TAlphaColor FOldThumbRightDownColor;
	System::Uitypes::TAlphaColor FOldButtonFill;
	System::Uitypes::TAlphaColor FOldThumbFill;
	System::Uitypes::TAlphaColor FOldThumbRightFill;
	System::Uitypes::TAlphaColor FOldLineFill;
	System::Uitypes::TAlphaColor FOldButtonDownFill;
	System::Uitypes::TAlphaColor FOldThumbDownFill;
	System::Uitypes::TAlphaColor FOldThumbRightDownFill;
	TTMSFNCCustomTrackBarBaseBeforeDrawButtonEvent FOnBeforeDrawButton;
	TTMSFNCCustomTrackBarBaseAfterDrawTrackLine FOnAfterDrawTrackLine;
	TTMSFNCCustomTrackBarBaseAfterDrawTickMarks FOnAfterDrawTickMarks;
	TTMSFNCCustomTrackBarBaseAfterDrawButtonEvent FOnAfterDrawButton;
	TTMSFNCCustomTrackBarBaseBeforeDrawTrackLine FOnBeforeDrawTrackLine;
	TTMSFNCCustomTrackBarBaseBeforeDrawTickMarks FOnBeforeDrawTickMarks;
	System::Classes::TNotifyEvent FOnChanged;
	TTMSFNCCustomTrackBarBaseValueChanged FOnValuesChanged;
	TTMSFNCCustomTrackBarBaseBeforeDrawTickLabel FOnBeforeDrawTickLabel;
	TTMSFNCCustomTrackBarBaseAfterDrawTickLabel FOnAfterDrawTickLabel;
	TTMSFNCCustomTrackBarBaseBeforeDrawTrackLabel FOnBeforeDrawTrackLabel;
	TTMSFNCCustomTrackBarBaseAfterDrawTrackLabel FOnAfterDrawTrackLabel;
	TTMSFNCCustomTrackBarBaseValueChanged FOnValueChange;
	virtual void __fastcall SetMax(const float AValue);
	void __fastcall SetMin(const float AValue);
	void __fastcall SetAppearance(TTMSFNCCustomTrackBarBaseAppearance* const AValue);
	void __fastcall SetInteraction(TTMSFNCCustomTrackBarBaseInteraction* const AValue);
	void __fastcall SetValues(const TTMSFNCCustomTrackBarBaseValues &AValue);
	bool __fastcall IsMaxStored();
	bool __fastcall IsMinStored();
	
protected:
	bool FLeftSlider;
	float FPrevValue;
	bool FRightSlider;
	TTMSFNCCustomTrackBarBaseValues FValues;
	TTMSFNCCustomTrackBarBaseAppearance* FAppearance;
	TTMSFNCCustomTrackBarBaseInteraction* FInteraction;
	virtual void __fastcall SetEnabled(const bool Value);
	virtual void __fastcall ApplyStyle();
	virtual void __fastcall ResetToDefaultStyle();
	void __fastcall AppearanceChanged(System::TObject* Sender);
	void __fastcall InteractionChanged(System::TObject* Sender);
	virtual void __fastcall DoChanged();
	virtual void __fastcall Draw(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	virtual void __fastcall DoBeforeDrawButton(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, bool APlus, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoAfterDrawButton(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, bool APlus);
	virtual void __fastcall DoBeforeDrawTrackLine(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoAfterDrawTrackLine(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	virtual void __fastcall DoBeforeDrawTickMarks(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoAfterDrawTickMarks(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	virtual void __fastcall DoBeforeDrawTickLabel(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TPointF &APosition, float AValue, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoAfterDrawTickLabel(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TPointF &APosition, float AValue);
	virtual void __fastcall DoBeforeDrawTrackLabel(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, System::UnicodeString ALabel, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoAfterDrawTrackLabel(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, System::UnicodeString ALabel);
	virtual void __fastcall DoValuesChange(float AValue, bool ALeft);
	virtual void __fastcall DoValuesChanged(float AValue, bool ALeft);
	virtual void __fastcall HandleMouseDown(System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall HandleMouseMove(System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall HandleMouseUp(System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall DrawPlusButton(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	virtual void __fastcall DrawMinusButton(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	virtual void __fastcall DrawTrackLine(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	virtual void __fastcall DrawTickLines(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	virtual void __fastcall DrawTickLinesText(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, bool ATopLeft);
	virtual void __fastcall DrawTrackLabel(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	virtual void __fastcall DrawTrackSliders(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	void __fastcall InternalValueCheck(float X, float Y, bool AChange);
	float __fastcall ClosestTo(const float ATarget, const float AFirstValue, const float ASecondValue);
	virtual System::Types::TRectF __fastcall GetMaxButtonRect();
	virtual System::Types::TRectF __fastcall GetMinButtonRect();
	virtual System::Types::TRectF __fastcall GetSliderRect(bool ALeft);
	virtual float __fastcall GetThumbWidth();
	virtual System::Types::TRectF __fastcall GetTrackLineRect();
	System::Types::TRectF __fastcall GetTrackLineDrawRect(const System::Types::TRectF &ARect);
	System::Types::TRectF __fastcall GetTickTopLeftRect();
	System::Types::TRectF __fastcall GetTickBottomRightRect();
	System::Types::TRectF __fastcall GetTrackLabelRect();
	float __fastcall GetTrackLabelTopLeft(const System::Types::TRectF &ATrackRect, float ATextHeight);
	float __fastcall CalcValue(float AX, float AY, bool ALeft);
	__property TTMSFNCCustomTrackBarBaseAppearance* Appearance = {read=FAppearance, write=SetAppearance};
	__property TTMSFNCCustomTrackBarBaseInteraction* Interaction = {read=FInteraction, write=SetInteraction};
	__property float Max = {read=FMax, write=SetMax, stored=IsMaxStored};
	__property float Min = {read=FMin, write=SetMin, stored=IsMinStored};
	__property TTMSFNCCustomTrackBarBaseValues Values = {read=FValues, write=SetValues};
	__property System::Classes::TNotifyEvent OnChanged = {read=FOnChanged, write=FOnChanged};
	__property TTMSFNCCustomTrackBarBaseBeforeDrawButtonEvent OnBeforeDrawButton = {read=FOnBeforeDrawButton, write=FOnBeforeDrawButton};
	__property TTMSFNCCustomTrackBarBaseAfterDrawButtonEvent OnAfterDrawButton = {read=FOnAfterDrawButton, write=FOnAfterDrawButton};
	__property TTMSFNCCustomTrackBarBaseBeforeDrawTrackLine OnBeforeDrawTrackLine = {read=FOnBeforeDrawTrackLine, write=FOnBeforeDrawTrackLine};
	__property TTMSFNCCustomTrackBarBaseAfterDrawTrackLine OnAfterDrawTrackLine = {read=FOnAfterDrawTrackLine, write=FOnAfterDrawTrackLine};
	__property TTMSFNCCustomTrackBarBaseBeforeDrawTickMarks OnBeforeDrawTickMarks = {read=FOnBeforeDrawTickMarks, write=FOnBeforeDrawTickMarks};
	__property TTMSFNCCustomTrackBarBaseAfterDrawTickMarks OnAfterDrawTickMarks = {read=FOnAfterDrawTickMarks, write=FOnAfterDrawTickMarks};
	__property TTMSFNCCustomTrackBarBaseBeforeDrawTickLabel OnBeforeDrawTickLabel = {read=FOnBeforeDrawTickLabel, write=FOnBeforeDrawTickLabel};
	__property TTMSFNCCustomTrackBarBaseAfterDrawTickLabel OnAfterDrawTickLabel = {read=FOnAfterDrawTickLabel, write=FOnAfterDrawTickLabel};
	__property TTMSFNCCustomTrackBarBaseBeforeDrawTrackLabel OnBeforeDrawTrackLabel = {read=FOnBeforeDrawTrackLabel, write=FOnBeforeDrawTrackLabel};
	__property TTMSFNCCustomTrackBarBaseAfterDrawTrackLabel OnAfterDrawTrackLabel = {read=FOnAfterDrawTrackLabel, write=FOnAfterDrawTrackLabel};
	__property TTMSFNCCustomTrackBarBaseValueChanged OnValueChanged = {read=FOnValuesChanged, write=FOnValuesChanged};
	__property TTMSFNCCustomTrackBarBaseValueChanged OnValueChange = {read=FOnValueChange, write=FOnValueChange};
	
public:
	__fastcall virtual TTMSFNCCustomTrackBarBase(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCCustomTrackBarBase();
};


typedef void __fastcall (__closure *TTMSFNCCustomTrackBarValueChangedEvent)(System::TObject* Sender, float AValue);

typedef void __fastcall (__closure *TTMSFNCCustomTrackBarBeforeDrawThumbEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, float AValue, bool &AAllow, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCCustomTrackBarAfterDrawThumbEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, float AValue);

class PASCALIMPLEMENTATION TTMSFNCCustomTrackBar : public TTMSFNCCustomTrackBarBase
{
	typedef TTMSFNCCustomTrackBarBase inherited;
	
private:
	TTMSFNCCustomTrackBarValueChangedEvent FOnValueChanged;
	TTMSFNCCustomTrackBarValueChangedEvent FOnValueChanging;
	TTMSFNCCustomTrackBarBeforeDrawThumbEvent FOnBeforeDrawThumb;
	TTMSFNCCustomTrackBarAfterDrawThumbEvent FOnAfterDrawThumb;
	TTMSFNCCustomTrackBarInteraction* FTrackInteraction;
	TTMSFNCCustomTrackBarAppearance* FTrackAppearance;
	Fmx::Types::TTimer* FRepeatTimer;
	bool FTrackDown;
	float FToValue;
	Fmx::Tmsfncgraphicstypes::TTMSFNCAppearanceGlobalFont* FGlobalFont;
	void __fastcall SetValue(const float AValue);
	virtual void __fastcall SetMax(const float AValue);
	void __fastcall SetTrackInteraction(TTMSFNCCustomTrackBarInteraction* const AValue);
	void __fastcall SetTrackAppearance(TTMSFNCCustomTrackBarAppearance* const AValue);
	bool __fastcall IsValueStored();
	float __fastcall GetValue();
	void __fastcall SetGlobalFont(Fmx::Tmsfncgraphicstypes::TTMSFNCAppearanceGlobalFont* const Value);
	
protected:
	virtual void __fastcall ChangeDPIScale(int M, int D);
	virtual void __fastcall DrawTrackLine(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	virtual void __fastcall DrawTrackSliders(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	virtual void __fastcall DoBeforeDrawThumb(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, float AValue, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoAfterDrawThumb(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, float AValue);
	virtual void __fastcall HandleMouseDown(System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall HandleMouseMove(System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall HandleKeyDown(System::Word &Key, System::Classes::TShiftState Shift);
	virtual void __fastcall HandleMouseUp(System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall HandleMouseWheel(System::Classes::TShiftState Shift, int WheelDelta, bool &Handled);
	virtual void __fastcall DoValueChanged(float AValue);
	virtual void __fastcall DoValueChange(float AValue);
	void __fastcall DoRepeatTimer(System::TObject* Sender);
	virtual void __fastcall DoValuesChange(float AValue, bool ALeft);
	virtual void __fastcall DoValuesChanged(float AValue, bool ALeft);
	void __fastcall TrackInteractionChange(System::TObject* Sender);
	void __fastcall TrackAppearanceChange(System::TObject* Sender);
	System::Types::TRectF __fastcall GetMaxOfThumbAndTrackRect();
	virtual System::Types::TRectF __fastcall GetMaxButtonRect();
	virtual System::Types::TRectF __fastcall GetMinButtonRect();
	virtual float __fastcall GetThumbWidth();
	virtual System::Types::TRectF __fastcall GetTrackLineRect();
	virtual void __fastcall SetFonts(Fmx::Tmsfncgraphicstypes::TTMSFNCAppearanceGlobalFontType ASetType);
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCAppearanceGlobalFont* GlobalFont = {read=FGlobalFont, write=SetGlobalFont};
	__property TTMSFNCCustomTrackBarAppearance* Appearance = {read=FTrackAppearance, write=SetTrackAppearance};
	__property TTMSFNCCustomTrackBarInteraction* Interaction = {read=FTrackInteraction, write=SetTrackInteraction};
	__property float Value = {read=GetValue, write=SetValue, stored=IsValueStored};
	__property TTMSFNCCustomTrackBarValueChangedEvent OnValueChanged = {read=FOnValueChanged, write=FOnValueChanged};
	__property TTMSFNCCustomTrackBarValueChangedEvent OnValueChange = {read=FOnValueChanging, write=FOnValueChanging};
	__property TTMSFNCCustomTrackBarBeforeDrawThumbEvent OnBeforeDrawThumb = {read=FOnBeforeDrawThumb, write=FOnBeforeDrawThumb};
	__property TTMSFNCCustomTrackBarAfterDrawThumbEvent OnAfterDrawThumb = {read=FOnAfterDrawThumb, write=FOnAfterDrawThumb};
	
public:
	__fastcall virtual TTMSFNCCustomTrackBar(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCCustomTrackBar();
	void __fastcall DecreaseByFrequency();
	void __fastcall EncreaseByFrequency();
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


class PASCALIMPLEMENTATION TTMSFNCTrackBar : public TTMSFNCCustomTrackBar
{
	typedef TTMSFNCCustomTrackBar inherited;
	
__published:
	__property Appearance;
	__property Interaction;
	__property Fill;
	__property Stroke;
	__property Max;
	__property Min;
	__property Value;
	__property GlobalFont;
	__property OnChanged;
	__property OnBeforeDrawButton;
	__property OnAfterDrawButton;
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
	/* TTMSFNCCustomTrackBar.Create */ inline __fastcall virtual TTMSFNCTrackBar(System::Classes::TComponent* AOwner) : TTMSFNCCustomTrackBar(AOwner) { }
	/* TTMSFNCCustomTrackBar.Destroy */ inline __fastcall virtual ~TTMSFNCTrackBar() { }
	
};


//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x6);
static constexpr System::Int8 BLD_VER = System::Int8(0x1);
static constexpr System::Int8 SLIDERLINESPACING = System::Int8(0x4);
static constexpr System::Int8 SLIDERLINEROUNDING = System::Int8(0x3);
}	/* namespace Tmsfnctrackbar */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCTRACKBAR)
using namespace Fmx::Tmsfnctrackbar;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfnctrackbarHPP
