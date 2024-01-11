// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCProgressBar.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncprogressbarHPP
#define Fmx_TmsfncprogressbarHPP

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
#include <System.TypInfo.hpp>
#include <FMX.Controls.hpp>
#include <FMX.TMSFNCCustomControl.hpp>
#include <FMX.TMSFNCGraphics.hpp>
#include <FMX.TMSFNCGraphicsTypes.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.TMSFNCStyles.hpp>
#include <FMX.TMSFNCUtils.hpp>
#include <FMX.Types.hpp>
#include <System.Generics.Collections.hpp>
#include <System.Generics.Defaults.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncprogressbar
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCProgressInteraction;
class DELPHICLASS TTMSFNCCustomProgressBarLevel;
class DELPHICLASS TTMSFNCCustomProgressBarLevelCollection;
class DELPHICLASS TTMSFNCCustomProgressBarAppearance;
class DELPHICLASS TTMSFNCProgressBarAppearance;
class DELPHICLASS TTMSFNCRatingAppearance;
class DELPHICLASS TTMSFNCCustomProgressBarLayout;
class DELPHICLASS TTMSFNCProgressBarLayout;
class DELPHICLASS TTMSFNCRatingLayout;
class DELPHICLASS TTMSFNCCustomProgressBar;
class DELPHICLASS TTMSFNCProgressBar;
class DELPHICLASS TTMSFNCRating;
//-- type declarations -------------------------------------------------------
enum DECLSPEC_DENUM TTMSFNCProgressBarShape : unsigned char { psHorizontalLine, psVerticalLine };

enum DECLSPEC_DENUM TTMSFNCProgressBarValueType : unsigned char { pvtValue, pvtPercentage };

enum DECLSPEC_DENUM TTMSFNCProgressBarTextOrientation : unsigned char { ptoHorizontal, ptoLeft, ptoRight, ptoUpsideDown };

enum DECLSPEC_DENUM TTMSFNCProgressBarTextPosition : unsigned char { ptpStart, ptpCenter, ptpEnd, ptpProgressEnd, ptpFollowCenter, ptpFollowEnd, ptpProgressCenter };

enum DECLSPEC_DENUM TTMSFNCProgressBarBlockType : unsigned char { pbtFirst, pbtLast, pbtFirstLast, pbtMiddle };

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCProgressInteraction : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	bool FReadOnlyMode;
	bool FSnapToValue;
	bool FSlideToValue;
	bool FKeyboardSupport;
	void __fastcall SetReadOnlyMode(const bool Value);
	void __fastcall SetSnapToValue(const bool Value);
	void __fastcall SetSlideToValue(const bool Value);
	void __fastcall SetKeyboardSupport(const bool Value);
	
public:
	__fastcall virtual TTMSFNCProgressInteraction();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property bool ReadOnlyMode = {read=FReadOnlyMode, write=SetReadOnlyMode, default=0};
	__property bool SnapToValue = {read=FSnapToValue, write=SetSnapToValue, default=0};
	__property bool SlideToValue = {read=FSlideToValue, write=SetSlideToValue, default=1};
	__property bool KeyboardSupport = {read=FKeyboardSupport, write=SetKeyboardSupport, default=0};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTMSFNCProgressInteraction() { }
	
};

#pragma pack(pop)

class PASCALIMPLEMENTATION TTMSFNCCustomProgressBarLevel : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FActiveFont;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FFill;
	double FLevelPosition;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FStroke;
	void __fastcall SetActiveFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetLevelPosition(const double Value);
	void __fastcall SetStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	HIDESBASE void __fastcall Changed(System::TObject* Sender);
	void __fastcall FillChanged(System::TObject* Sender);
	void __fastcall FontChanged(System::TObject* Sender);
	void __fastcall StrokeChanged(System::TObject* Sender);
	
public:
	__fastcall virtual TTMSFNCCustomProgressBarLevel(System::Classes::TCollection* ACollection);
	__fastcall virtual ~TTMSFNCCustomProgressBarLevel();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* ActiveFont = {read=FActiveFont, write=SetActiveFont};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* Fill = {read=FFill, write=SetFill};
	__property double LevelPosition = {read=FLevelPosition, write=SetLevelPosition};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* Stroke = {read=FStroke, write=SetStroke};
};


#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCustomProgressBarLevelCollection : public System::Classes::TOwnedCollection
{
	typedef System::Classes::TOwnedCollection inherited;
	
public:
	TTMSFNCCustomProgressBarLevel* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCCustomProgressBar* FOwner;
	bool FSorted;
	System::Classes::TNotifyEvent FOnChanged;
	HIDESBASE TTMSFNCCustomProgressBarLevel* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCCustomProgressBarLevel* const Value);
	
protected:
	HIDESBASE void __fastcall Sort();
	
public:
	__fastcall TTMSFNCCustomProgressBarLevelCollection(TTMSFNCCustomProgressBar* AOwner);
	HIDESBASE TTMSFNCCustomProgressBarLevel* __fastcall Add();
	virtual void __fastcall EndUpdate();
	HIDESBASE TTMSFNCCustomProgressBarLevel* __fastcall Insert(int Index);
	__property TTMSFNCCustomProgressBarLevel* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	__property TTMSFNCCustomProgressBar* TMSFNCCustomProgressBar = {read=FOwner};
	__property System::Classes::TNotifyEvent OnChanged = {read=FOnChanged, write=FOnChanged};
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCCustomProgressBarLevelCollection() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCustomProgressBarAppearance : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	Fmx::Tmsfnctypes::TTMSFNCBitmap* FActiveBitmap;
	TTMSFNCCustomProgressBar* FOwner;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FFont;
	Fmx::Tmsfnctypes::TTMSFNCBitmap* FInActiveBitmap;
	bool FStacked;
	System::Classes::TNotifyEvent FOnChange;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FDefaultLevelFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FDefaultLevelFont;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FDefaultLevelStroke;
	bool FShowActiveBitmaps;
	bool FShowInActiveBitmaps;
	void __fastcall SetActiveBitmap(Fmx::Tmsfnctypes::TTMSFNCBitmap* const Value);
	void __fastcall SetFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetInActiveBitmap(Fmx::Tmsfnctypes::TTMSFNCBitmap* const Value);
	void __fastcall SetStacked(const bool Value);
	void __fastcall SetStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetDefaultLevelFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetDefaultLevelFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetDefaultLevelStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetShowActiveBitmaps(const bool Value);
	void __fastcall SetShowInActiveBitmaps(const bool Value);
	
protected:
	void __fastcall BitmapChanged(System::TObject* Sender);
	void __fastcall Changed(System::TObject* Sender);
	void __fastcall FillChanged(System::TObject* Sender);
	void __fastcall FontChanged(System::TObject* Sender);
	void __fastcall StrokeChanged(System::TObject* Sender);
	__property Fmx::Tmsfnctypes::TTMSFNCBitmap* ActiveBitmap = {read=FActiveBitmap, write=SetActiveBitmap};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* DefaultLevelFill = {read=FDefaultLevelFill, write=SetDefaultLevelFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* DefaultLevelFont = {read=FDefaultLevelFont, write=SetDefaultLevelFont};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* DefaultLevelStroke = {read=FDefaultLevelStroke, write=SetDefaultLevelStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* Fill = {read=FFill, write=SetFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* Font = {read=FFont, write=SetFont};
	__property Fmx::Tmsfnctypes::TTMSFNCBitmap* InActiveBitmap = {read=FInActiveBitmap, write=SetInActiveBitmap};
	__property bool Stacked = {read=FStacked, write=SetStacked, default=0};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* Stroke = {read=FStroke, write=SetStroke};
	__property bool ShowActiveBitmaps = {read=FShowActiveBitmaps, write=SetShowActiveBitmaps, nodefault};
	__property bool ShowInActiveBitmaps = {read=FShowInActiveBitmaps, write=SetShowInActiveBitmaps, nodefault};
	
public:
	__fastcall TTMSFNCCustomProgressBarAppearance(TTMSFNCCustomProgressBar* AOwner);
	__fastcall virtual ~TTMSFNCCustomProgressBarAppearance();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__property System::Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCProgressBarAppearance : public TTMSFNCCustomProgressBarAppearance
{
	typedef TTMSFNCCustomProgressBarAppearance inherited;
	
__published:
	__property DefaultLevelFill;
	__property DefaultLevelFont;
	__property DefaultLevelStroke;
	__property Fill;
	__property Font;
	__property Stacked = {default=0};
	__property Stroke;
public:
	/* TTMSFNCCustomProgressBarAppearance.Create */ inline __fastcall TTMSFNCProgressBarAppearance(TTMSFNCCustomProgressBar* AOwner) : TTMSFNCCustomProgressBarAppearance(AOwner) { }
	/* TTMSFNCCustomProgressBarAppearance.Destroy */ inline __fastcall virtual ~TTMSFNCProgressBarAppearance() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCRatingAppearance : public TTMSFNCCustomProgressBarAppearance
{
	typedef TTMSFNCCustomProgressBarAppearance inherited;
	
__published:
	__property ActiveBitmap;
	__property DefaultLevelFill;
	__property DefaultLevelFont;
	__property DefaultLevelStroke;
	__property Fill;
	__property Font;
	__property InActiveBitmap;
	__property Stroke;
	__property ShowActiveBitmaps;
	__property ShowInActiveBitmaps;
public:
	/* TTMSFNCCustomProgressBarAppearance.Create */ inline __fastcall TTMSFNCRatingAppearance(TTMSFNCCustomProgressBar* AOwner) : TTMSFNCCustomProgressBarAppearance(AOwner) { }
	/* TTMSFNCCustomProgressBarAppearance.Destroy */ inline __fastcall virtual ~TTMSFNCRatingAppearance() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCustomProgressBarLayout : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	int FBlocks;
	int FBottomMargin;
	int FDecimals;
	float FInterval;
	int FLeftMargin;
	Fmx::Tmsfnctypes::TTMSFNCBitmap* FMaximumBitmap;
	Fmx::Tmsfnctypes::TTMSFNCBitmap* FMinimumBitmap;
	TTMSFNCCustomProgressBar* FOwner;
	System::UnicodeString FPrefix;
	int FRightMargin;
	float FRounding;
	TTMSFNCProgressBarShape FShape;
	bool FShowValue;
	int FSpacing;
	System::UnicodeString FSuffix;
	TTMSFNCProgressBarTextOrientation FTextOrientation;
	TTMSFNCProgressBarTextPosition FTextPosition;
	int FTopMargin;
	TTMSFNCProgressBarValueType FValueType;
	System::Classes::TNotifyEvent FOnChange;
	System::Sysutils::TFloatFormat FTextFormat;
	bool FRoundProgressEnd;
	void __fastcall BitmapChanged(System::TObject* Sender);
	void __fastcall SetBlocks(const int Value);
	void __fastcall SetBottomMargin(const int Value);
	void __fastcall SetDecimals(const int Value);
	void __fastcall SetInterval(const float AValue);
	void __fastcall SetLeftMargin(const int Value);
	void __fastcall SetMaximumBitmap(Fmx::Tmsfnctypes::TTMSFNCBitmap* const Value);
	void __fastcall SetMinimumBitmap(Fmx::Tmsfnctypes::TTMSFNCBitmap* const Value);
	void __fastcall SetPrefix(const System::UnicodeString Value);
	void __fastcall SetRightMargin(const int Value);
	void __fastcall SetRounding(const float Value);
	void __fastcall SetShape(const TTMSFNCProgressBarShape Value);
	void __fastcall SetShowValue(const bool Value);
	void __fastcall SetSpacing(const int Value);
	void __fastcall SetSuffix(const System::UnicodeString Value);
	void __fastcall SetTextOrientation(const TTMSFNCProgressBarTextOrientation Value);
	void __fastcall SetTextPosition(const TTMSFNCProgressBarTextPosition Value);
	void __fastcall SetTopMargin(const int Value);
	void __fastcall SetValueType(const TTMSFNCProgressBarValueType Value);
	void __fastcall SetTextFormat(const System::Sysutils::TFloatFormat Value);
	void __fastcall SetRoundProgressEnd(const bool Value);
	
protected:
	void __fastcall Changed();
	__property int Blocks = {read=FBlocks, write=SetBlocks, default=1};
	__property int BottomMargin = {read=FBottomMargin, write=SetBottomMargin, default=0};
	__property int Decimals = {read=FDecimals, write=SetDecimals, default=2};
	__property float Interval = {read=FInterval, write=SetInterval};
	__property int LeftMargin = {read=FLeftMargin, write=SetLeftMargin, default=0};
	__property Fmx::Tmsfnctypes::TTMSFNCBitmap* MaximumBitmap = {read=FMaximumBitmap, write=SetMaximumBitmap};
	__property Fmx::Tmsfnctypes::TTMSFNCBitmap* MinimumBitmap = {read=FMinimumBitmap, write=SetMinimumBitmap};
	__property System::UnicodeString Prefix = {read=FPrefix, write=SetPrefix};
	__property int RightMargin = {read=FRightMargin, write=SetRightMargin, default=0};
	__property float Rounding = {read=FRounding, write=SetRounding};
	__property bool RoundProgressEnd = {read=FRoundProgressEnd, write=SetRoundProgressEnd, default=1};
	__property TTMSFNCProgressBarShape Shape = {read=FShape, write=SetShape, default=0};
	__property bool ShowValue = {read=FShowValue, write=SetShowValue, nodefault};
	__property int Spacing = {read=FSpacing, write=SetSpacing, default=2};
	__property System::UnicodeString Suffix = {read=FSuffix, write=SetSuffix};
	__property System::Sysutils::TFloatFormat TextFormat = {read=FTextFormat, write=SetTextFormat, default=2};
	__property TTMSFNCProgressBarTextOrientation TextOrientation = {read=FTextOrientation, write=SetTextOrientation, default=0};
	__property TTMSFNCProgressBarTextPosition TextPosition = {read=FTextPosition, write=SetTextPosition, default=1};
	__property int TopMargin = {read=FTopMargin, write=SetTopMargin, default=0};
	__property TTMSFNCProgressBarValueType ValueType = {read=FValueType, write=SetValueType, default=1};
	__property System::Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
	
public:
	__fastcall TTMSFNCCustomProgressBarLayout(TTMSFNCCustomProgressBar* AOwner);
	__fastcall virtual ~TTMSFNCCustomProgressBarLayout();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCProgressBarLayout : public TTMSFNCCustomProgressBarLayout
{
	typedef TTMSFNCCustomProgressBarLayout inherited;
	
__published:
	__property Blocks = {default=1};
	__property BottomMargin = {default=0};
	__property Decimals = {default=2};
	__property LeftMargin = {default=0};
	__property MaximumBitmap;
	__property MinimumBitmap;
	__property Prefix = {default=0};
	__property RightMargin = {default=0};
	__property Rounding = {default=0};
	__property RoundProgressEnd = {default=1};
	__property Shape = {default=0};
	__property ShowValue;
	__property Spacing = {default=2};
	__property Suffix = {default=0};
	__property TextOrientation = {default=0};
	__property TextPosition = {default=1};
	__property TopMargin = {default=0};
	__property ValueType = {default=1};
public:
	/* TTMSFNCCustomProgressBarLayout.Create */ inline __fastcall TTMSFNCProgressBarLayout(TTMSFNCCustomProgressBar* AOwner) : TTMSFNCCustomProgressBarLayout(AOwner) { }
	/* TTMSFNCCustomProgressBarLayout.Destroy */ inline __fastcall virtual ~TTMSFNCProgressBarLayout() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCRatingLayout : public TTMSFNCCustomProgressBarLayout
{
	typedef TTMSFNCCustomProgressBarLayout inherited;
	
__published:
	__property Blocks = {default=1};
	__property BottomMargin = {default=0};
	__property Decimals = {default=2};
	__property Interval = {default=0};
	__property LeftMargin = {default=0};
	__property Prefix = {default=0};
	__property RightMargin = {default=0};
	__property Rounding = {default=0};
	__property RoundProgressEnd = {default=1};
	__property Shape = {default=0};
	__property ShowValue;
	__property Spacing = {default=2};
	__property Suffix = {default=0};
	__property TextOrientation = {default=0};
	__property TextPosition = {default=1};
	__property TopMargin = {default=0};
	__property ValueType = {default=1};
public:
	/* TTMSFNCCustomProgressBarLayout.Create */ inline __fastcall TTMSFNCRatingLayout(TTMSFNCCustomProgressBar* AOwner) : TTMSFNCCustomProgressBarLayout(AOwner) { }
	/* TTMSFNCCustomProgressBarLayout.Destroy */ inline __fastcall virtual ~TTMSFNCRatingLayout() { }
	
};

#pragma pack(pop)

typedef void __fastcall (__closure *TTMSFNCProgressBarAfterDrawValueEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, System::UnicodeString AText, const System::Types::TRectF &ARect, TTMSFNCProgressBarTextPosition APosition, TTMSFNCProgressBarTextOrientation AOrientation);

typedef void __fastcall (__closure *TTMSFNCProgressBarBeforeDrawValueEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, System::UnicodeString AText, const System::Types::TRectF &ARect, TTMSFNCProgressBarTextPosition APosition, TTMSFNCProgressBarTextOrientation AOrientation, bool &AAllow, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCProgressBarAfterDrawBlockEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsCorners ACorners);

typedef void __fastcall (__closure *TTMSFNCProgressBarBeforeDrawBlockEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsCorners ACorners, bool &AAllow, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCProgressBarValueChangedEvent)(System::TObject* Sender, float AValue);

typedef void __fastcall (__closure *TTMSFNCProgressBarValueChangeEvent)(System::TObject* Sender, float AValue, bool &AAllow);

class PASCALIMPLEMENTATION TTMSFNCCustomProgressBar : public Fmx::Tmsfnccustomcontrol::TTMSFNCCustomControl
{
	typedef Fmx::Tmsfnccustomcontrol::TTMSFNCCustomControl inherited;
	
private:
	TTMSFNCCustomProgressBarAppearance* FAppearance;
	int FCount;
	bool FDrawActive;
	int FDrawBlocks;
	TTMSFNCProgressInteraction* FInteraction;
	TTMSFNCCustomProgressBarLayout* FLayout;
	TTMSFNCCustomProgressBarLevelCollection* FLevels;
	double FMaximum;
	double FMinimum;
	bool FMouseDown;
	bool FMouseHover;
	bool FMouseSlide;
	double FPercentage;
	double FProgressValue;
	TTMSFNCProgressBarAfterDrawBlockEvent FOnAfterDrawBlock;
	TTMSFNCProgressBarAfterDrawValueEvent FOnAfterDrawValue;
	System::Classes::TNotifyEvent FOnAppearanceChanged;
	TTMSFNCProgressBarBeforeDrawBlockEvent FOnBeforeDrawBlock;
	TTMSFNCProgressBarBeforeDrawValueEvent FOnBeforeDrawValue;
	System::Classes::TNotifyEvent FOnChanged;
	System::Classes::TNotifyEvent FOnLayoutChanged;
	TTMSFNCProgressBarValueChangeEvent FOnKeyboardValueChange;
	TTMSFNCProgressBarValueChangeEvent FOnSlideValueChange;
	TTMSFNCProgressBarValueChangeEvent FOnSnapValueChange;
	TTMSFNCProgressBarValueChangedEvent FOnKeyboardValueChanged;
	TTMSFNCProgressBarValueChangedEvent FOnSlideValueChanged;
	TTMSFNCProgressBarValueChangedEvent FOnSnapValueChanged;
	TTMSFNCProgressBarValueChangeEvent FOnValueChange;
	TTMSFNCProgressBarValueChangedEvent FOnValueChanged;
	System::Classes::TNotifyEvent FOnLevelsChanged;
	Fmx::Tmsfncgraphicstypes::TTMSFNCAppearanceGlobalFont* FGlobalFont;
	void __fastcall AppearanceChanged(System::TObject* Sender);
	double __fastcall CalculatePercentage(double AValue);
	void __fastcall DrawBlocksValueNotZero();
	void __fastcall DrawInactiveBitmaps(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	void __fastcall DrawLowHighBitmaps(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	void __fastcall DrawProgress(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	float __fastcall DrawProgressBlock(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, double APercentage, TTMSFNCProgressBarBlockType ABlockType = (TTMSFNCProgressBarBlockType)(0x2), float AOffset = 0.000000E+00f);
	void __fastcall DrawStackedProgress(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	void __fastcall DrawValue(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	int __fastcall GetActiveLevel(double AValue);
	TTMSFNCProgressBarAppearance* __fastcall GetAppearance();
	TTMSFNCProgressBarLayout* __fastcall GetLayout();
	System::Types::TRectF __fastcall GetLowBitmapRect();
	System::Types::TRectF __fastcall GetHighBitmapRect();
	System::Types::TRectF __fastcall GetWorkingRect();
	void __fastcall LayoutChanged(System::TObject* Sender);
	void __fastcall LevelsChanged(System::TObject* Sender);
	bool __fastcall MouseOnProgressValue(float AX, float AY);
	void __fastcall SetApperance(TTMSFNCProgressBarAppearance* const AValue);
	void __fastcall SetInteraction(TTMSFNCProgressInteraction* const Value);
	void __fastcall SetLayout(TTMSFNCProgressBarLayout* const AValue);
	void __fastcall SetLevels(TTMSFNCCustomProgressBarLevelCollection* const Value);
	void __fastcall SetMaximum(const double Value);
	void __fastcall SetMinimum(const double Value);
	float __fastcall SetMouseValue(float AX, float AY);
	void __fastcall SetProgressValue(const double Value);
	void __fastcall SetGlobalFont(Fmx::Tmsfncgraphicstypes::TTMSFNCAppearanceGlobalFont* const Value);
	
protected:
	virtual void __fastcall ChangeDPIScale(int M, int D);
	virtual TTMSFNCCustomProgressBarAppearance* __fastcall CreateAppearance();
	virtual TTMSFNCCustomProgressBarLayout* __fastcall CreateLayout();
	virtual void __fastcall DoAfterDrawBlock(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsCorners ACorners);
	virtual void __fastcall DoAfterDrawValue(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, System::UnicodeString AText, const System::Types::TRectF &ARect, TTMSFNCProgressBarTextPosition APosition, TTMSFNCProgressBarTextOrientation AOrientation);
	virtual void __fastcall DoAppearanceChanged(System::TObject* Sender);
	virtual void __fastcall DoBeforeDrawBlock(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsCorners ACorners, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoBeforeDrawValue(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, System::UnicodeString AText, const System::Types::TRectF &ARect, TTMSFNCProgressBarTextPosition APosition, TTMSFNCProgressBarTextOrientation AOrientation, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoChanged(System::TObject* Sender);
	virtual void __fastcall DoLayoutChanged(System::TObject* Sender);
	virtual void __fastcall DoLevelsChanged(System::TObject* Sender);
	virtual void __fastcall DoSlideValueChange(float AValue, bool &AAllow);
	virtual void __fastcall DoSlideValueChanged(float AValue);
	virtual void __fastcall DoSnapValueChange(float AValue, bool &AAllow);
	virtual void __fastcall DoSnapValueChanged(float AValue);
	virtual void __fastcall DoKeyboardValueChange(float AValue, bool &AAllow);
	virtual void __fastcall DoKeyboardValueChanged(float AValue);
	virtual void __fastcall DrawBackground(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	virtual void __fastcall HandleKeyDown(System::Word &Key, System::Classes::TShiftState Shift);
	virtual void __fastcall HandleKeyUp(System::Word &Key, System::Classes::TShiftState Shift);
	virtual void __fastcall HandleMouseDown(System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall HandleMouseEnter();
	virtual void __fastcall HandleMouseLeave();
	virtual void __fastcall HandleMouseMove(System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall HandleMouseUp(System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall SetFonts(Fmx::Tmsfncgraphicstypes::TTMSFNCAppearanceGlobalFontType ASetType);
	__property TTMSFNCProgressBarAppearance* Appearance = {read=GetAppearance, write=SetApperance};
	__property TTMSFNCProgressInteraction* Interaction = {read=FInteraction, write=SetInteraction};
	__property TTMSFNCProgressBarLayout* Layout = {read=GetLayout, write=SetLayout};
	__property TTMSFNCCustomProgressBarLevelCollection* Levels = {read=FLevels, write=SetLevels};
	__property double Maximum = {read=FMaximum, write=SetMaximum};
	__property double Minimum = {read=FMinimum, write=SetMinimum};
	__property double Value = {read=FProgressValue, write=SetProgressValue};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCAppearanceGlobalFont* GlobalFont = {read=FGlobalFont, write=SetGlobalFont};
	__property TTMSFNCProgressBarAfterDrawBlockEvent OnAfterDrawBlock = {read=FOnAfterDrawBlock, write=FOnAfterDrawBlock};
	__property TTMSFNCProgressBarAfterDrawValueEvent OnAfterDrawValue = {read=FOnAfterDrawValue, write=FOnAfterDrawValue};
	__property System::Classes::TNotifyEvent OnAppearanceChanged = {read=FOnAppearanceChanged, write=FOnAppearanceChanged};
	__property TTMSFNCProgressBarBeforeDrawBlockEvent OnBeforeDrawBlock = {read=FOnBeforeDrawBlock, write=FOnBeforeDrawBlock};
	__property TTMSFNCProgressBarBeforeDrawValueEvent OnBeforeDrawValue = {read=FOnBeforeDrawValue, write=FOnBeforeDrawValue};
	__property System::Classes::TNotifyEvent OnChanged = {read=FOnChanged, write=FOnChanged};
	__property System::Classes::TNotifyEvent OnLayoutChanged = {read=FOnLayoutChanged, write=FOnLayoutChanged};
	__property System::Classes::TNotifyEvent OnLevelsChanged = {read=FOnLevelsChanged, write=FOnLevelsChanged};
	__property TTMSFNCProgressBarValueChangeEvent OnSlideValueChange = {read=FOnSlideValueChange, write=FOnSlideValueChange};
	__property TTMSFNCProgressBarValueChangedEvent OnSlideValueChanged = {read=FOnSlideValueChanged, write=FOnSlideValueChanged};
	__property TTMSFNCProgressBarValueChangeEvent OnSnapValueChange = {read=FOnSnapValueChange, write=FOnSnapValueChange};
	__property TTMSFNCProgressBarValueChangedEvent OnSnapValueChanged = {read=FOnSnapValueChanged, write=FOnSnapValueChanged};
	__property TTMSFNCProgressBarValueChangeEvent OnKeyboardValueChange = {read=FOnKeyboardValueChange, write=FOnKeyboardValueChange};
	__property TTMSFNCProgressBarValueChangedEvent OnKeyboardValueChanged = {read=FOnKeyboardValueChanged, write=FOnKeyboardValueChanged};
	__property TTMSFNCProgressBarValueChangeEvent OnValueChange = {read=FOnValueChange, write=FOnValueChange};
	__property TTMSFNCProgressBarValueChangedEvent OnValueChanged = {read=FOnValueChanged, write=FOnValueChanged};
	
public:
	__fastcall virtual TTMSFNCCustomProgressBar(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCCustomProgressBar();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	virtual void __fastcall Draw(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
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


class PASCALIMPLEMENTATION TTMSFNCProgressBar : public TTMSFNCCustomProgressBar
{
	typedef TTMSFNCCustomProgressBar inherited;
	
public:
	__fastcall virtual TTMSFNCProgressBar(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCProgressBar();
	
__published:
	__property Appearance;
	__property Layout;
	__property Levels;
	__property Maximum;
	__property Minimum;
	__property Value;
	__property GlobalFont;
	__property OnAfterDrawBlock;
	__property OnAfterDrawValue;
	__property OnAppearanceChanged;
	__property OnBeforeDrawBlock;
	__property OnBeforeDrawValue;
	__property OnChanged;
	__property OnLayoutChanged;
	__property OnLevelsChanged;
};


class PASCALIMPLEMENTATION TTMSFNCRating : public TTMSFNCCustomProgressBar
{
	typedef TTMSFNCCustomProgressBar inherited;
	
private:
	HIDESBASE TTMSFNCRatingAppearance* __fastcall GetAppearance();
	HIDESBASE TTMSFNCRatingLayout* __fastcall GetLayout();
	void __fastcall SetAppearance(TTMSFNCRatingAppearance* const AValue);
	HIDESBASE void __fastcall SetLayout(TTMSFNCRatingLayout* const AValue);
	
protected:
	virtual TTMSFNCCustomProgressBarAppearance* __fastcall CreateAppearance();
	virtual TTMSFNCCustomProgressBarLayout* __fastcall CreateLayout();
	
public:
	__fastcall virtual TTMSFNCRating(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCRating();
	
__published:
	__property TTMSFNCRatingAppearance* Appearance = {read=GetAppearance, write=SetAppearance};
	__property Interaction;
	__property TTMSFNCRatingLayout* Layout = {read=GetLayout, write=SetLayout};
	__property Levels;
	__property Maximum;
	__property Minimum;
	__property Value;
	__property GlobalFont;
	__property OnAfterDrawBlock;
	__property OnAfterDrawValue;
	__property OnAppearanceChanged;
	__property OnBeforeDrawBlock;
	__property OnBeforeDrawValue;
	__property OnChanged;
	__property OnKeyboardValueChange;
	__property OnKeyboardValueChanged;
	__property OnLayoutChanged;
	__property OnSlideValueChange;
	__property OnSlideValueChanged;
	__property OnSnapValueChange;
	__property OnSnapValueChanged;
	__property OnValueChange;
	__property OnValueChanged;
};


//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 KEY_LEFT = System::Int8(0x25);
static constexpr System::Int8 KEY_RIGHT = System::Int8(0x27);
static constexpr System::Int8 KEY_UP = System::Int8(0x26);
static constexpr System::Int8 KEY_DOWN = System::Int8(0x28);
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x3);
static constexpr System::Int8 BLD_VER = System::Int8(0x0);
}	/* namespace Tmsfncprogressbar */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCPROGRESSBAR)
using namespace Fmx::Tmsfncprogressbar;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncprogressbarHPP
