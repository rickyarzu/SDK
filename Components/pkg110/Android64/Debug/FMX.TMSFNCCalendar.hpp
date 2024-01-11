// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCCalendar.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfnccalendarHPP
#define Fmx_TmsfnccalendarHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.UITypes.hpp>
#include <System.Classes.hpp>
#include <System.Types.hpp>
#include <System.TypInfo.hpp>
#include <FMX.Controls.hpp>
#include <FMX.Graphics.hpp>
#include <FMX.TMSFNCCustomControl.hpp>
#include <FMX.TMSFNCGraphics.hpp>
#include <FMX.TMSFNCGraphicsTypes.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.TMSFNCUtils.hpp>
#include <FMX.TMSFNCBitmapContainer.hpp>
#include <System.SysUtils.hpp>
#include <FMX.TMSFNCStyles.hpp>
#include <FMX.Types.hpp>
#include <System.Generics.Collections.hpp>
#include <System.Generics.Defaults.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfnccalendar
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCCalendarArrow;
class DELPHICLASS TTMSFNCCalendarHeader;
class DELPHICLASS TTMSFNCCalendarFooter;
class DELPHICLASS TTMSFNCCalendarDayNameAppearance;
class DELPHICLASS TTMSFNCCalendarDateAppearance;
class DELPHICLASS TTMSFNCCalendarLineAppearance;
class DELPHICLASS TTMSFNCCalendarWeekNumberAppearance;
class DELPHICLASS TTMSFNCCalendarCustomInteraction;
class DELPHICLASS TTMSFNCCalendarInteraction;
class DELPHICLASS TTMSFNCCalendarDateItem;
class DELPHICLASS TTMSFNCCalendarDates;
class DELPHICLASS TTMSFNCCalendarEventItem;
class DELPHICLASS TTMSFNCCalendarEvents;
class DELPHICLASS TTMSFNCCustomCalendar;
class DELPHICLASS TTMSFNCCalendar;
//-- type declarations -------------------------------------------------------
enum DECLSPEC_DENUM TTMSFNCCalendarArrowLayoutValue : unsigned char { alvLeft, alvRight };

typedef System::Set<TTMSFNCCalendarArrowLayoutValue, TTMSFNCCalendarArrowLayoutValue::alvLeft, TTMSFNCCalendarArrowLayoutValue::alvRight> TTMSFNCCalendarArrowLayout;

enum DECLSPEC_DENUM TTMSFNCCalendarArrowType : unsigned char { atTriangle, atArrow, atBitmap, atCustom };

class PASCALIMPLEMENTATION TTMSFNCCalendarArrow : public Fmx::Tmsfnctypes::TTMSFNCPersistent
{
	typedef Fmx::Tmsfnctypes::TTMSFNCPersistent inherited;
	
private:
	System::Classes::TPersistent* FOwner;
	System::Uitypes::TAlphaColor FColor;
	TTMSFNCCalendarArrowLayout FVisibility;
	int FSize;
	System::Classes::TNotifyEvent FOnChange;
	TTMSFNCCalendarArrowType FArrowLeftType;
	Fmx::Tmsfnctypes::TTMSFNCScaledBitmaps* FArrowLeftBitmap;
	Fmx::Tmsfnctypes::TTMSFNCScaledBitmaps* FArrowRightBitmap;
	float FArrowRightBitmapSize;
	TTMSFNCCalendarArrowType FArrowRightType;
	float FArrowLeftBitmapSize;
	void __fastcall SetColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetVisibility(const TTMSFNCCalendarArrowLayout Value);
	void __fastcall SetSize(const int Value);
	void __fastcall SetArrowLeftBitmap(Fmx::Tmsfnctypes::TTMSFNCScaledBitmaps* const Value);
	void __fastcall SetArrowRightBitmap(Fmx::Tmsfnctypes::TTMSFNCScaledBitmaps* const Value);
	void __fastcall SetArrowLeftBitmapSize(const float Value);
	void __fastcall SetArrowLeftType(const TTMSFNCCalendarArrowType Value);
	void __fastcall SetArrowRightBitmapSize(const float Value);
	void __fastcall SetArrowRightType(const TTMSFNCCalendarArrowType Value);
	void __fastcall SetBitmapContainer(Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* const Value);
	Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* __fastcall GetBitmapContainer();
	bool __fastcall IsArrowLeftBitmapSizeStored();
	bool __fastcall IsArrowRightBitmapSizeStore();
	
protected:
	void __fastcall Changed();
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	__property Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* BitmapContainer = {read=GetBitmapContainer, write=SetBitmapContainer};
	
public:
	__fastcall TTMSFNCCalendarArrow(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCCalendarArrow();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__property int Size = {read=FSize, write=SetSize, default=15};
	__property System::Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
	
__published:
	__property Fmx::Tmsfnctypes::TTMSFNCScaledBitmaps* ArrowLeftBitmap = {read=FArrowLeftBitmap, write=SetArrowLeftBitmap};
	__property TTMSFNCCalendarArrowType ArrowLeftType = {read=FArrowLeftType, write=SetArrowLeftType, default=1};
	__property float ArrowLeftBitmapSize = {read=FArrowLeftBitmapSize, write=SetArrowLeftBitmapSize, stored=IsArrowLeftBitmapSizeStored};
	__property Fmx::Tmsfnctypes::TTMSFNCScaledBitmaps* ArrowRightBitmap = {read=FArrowRightBitmap, write=SetArrowRightBitmap};
	__property TTMSFNCCalendarArrowType ArrowRightType = {read=FArrowRightType, write=SetArrowRightType, default=1};
	__property float ArrowRightBitmapSize = {read=FArrowRightBitmapSize, write=SetArrowRightBitmapSize, stored=IsArrowRightBitmapSizeStore};
	__property System::Uitypes::TAlphaColor Color = {read=FColor, write=SetColor, default=-9868951};
	__property TTMSFNCCalendarArrowLayout Visibility = {read=FVisibility, write=SetVisibility, default=3};
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


class PASCALIMPLEMENTATION TTMSFNCCalendarHeader : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FFont;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign FVerticalTextAlign;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign FHorizontalTextAlign;
	TTMSFNCCalendarArrow* FArrow;
	bool FVisible;
	System::Classes::TNotifyEvent FOnChange;
	int FHeight;
	void __fastcall SetFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetHorizontalTextAlign(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign Value);
	void __fastcall SetVerticalTextAlign(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign Value);
	void __fastcall SetStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetArrow(TTMSFNCCalendarArrow* const Value);
	void __fastcall SetVisible(const bool Value);
	void __fastcall SetHeight(const int Value);
	
protected:
	void __fastcall Changed();
	void __fastcall FillChanged(System::TObject* Sender);
	void __fastcall FontChanged(System::TObject* Sender);
	void __fastcall StrokeChanged(System::TObject* Sender);
	
public:
	__fastcall TTMSFNCCalendarHeader(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCCalendarHeader();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__property System::Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
	
__published:
	__property TTMSFNCCalendarArrow* Arrow = {read=FArrow, write=SetArrow};
	__property int Height = {read=FHeight, write=SetHeight, default=25};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* Fill = {read=FFill, write=SetFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* Font = {read=FFont, write=SetFont};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* Stroke = {read=FStroke, write=SetStroke};
	__property bool Visible = {read=FVisible, write=SetVisible, default=1};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign VerticalTextAlign = {read=FVerticalTextAlign, write=SetVerticalTextAlign, default=0};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign HorizontalTextAlign = {read=FHorizontalTextAlign, write=SetHorizontalTextAlign, default=0};
};


enum DECLSPEC_DENUM TTMSFNCCalendarFooterDate : unsigned char { fdNone, fdSelected, fdToday };

class PASCALIMPLEMENTATION TTMSFNCCalendarFooter : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FFont;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign FVerticalTextAlign;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign FHorizontalTextAlign;
	System::UnicodeString FCaption;
	bool FVisible;
	TTMSFNCCalendarFooterDate FDateCaption;
	System::Classes::TNotifyEvent FOnChange;
	int FHeight;
	System::Types::TRectF FCaptionRect;
	void __fastcall SetFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetHorizontalTextAlign(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign Value);
	void __fastcall SetVerticalTextAlign(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign Value);
	void __fastcall SetStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetCaption(const System::UnicodeString Value);
	void __fastcall SetVisible(const bool Value);
	void __fastcall SetHeight(const int Value);
	void __fastcall SetDateCaption(const TTMSFNCCalendarFooterDate Value);
	void __fastcall SetCaptionRect(const System::Types::TRectF &Value);
	bool __fastcall IsCaptionStored();
	
protected:
	void __fastcall Changed();
	void __fastcall FillChanged(System::TObject* Sender);
	void __fastcall FontChanged(System::TObject* Sender);
	void __fastcall StrokeChanged(System::TObject* Sender);
	
public:
	__fastcall TTMSFNCCalendarFooter();
	__fastcall virtual ~TTMSFNCCalendarFooter();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__property System::Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
	__property System::Types::TRectF CaptionRect = {read=FCaptionRect, write=SetCaptionRect};
	
__published:
	__property System::UnicodeString Caption = {read=FCaption, write=SetCaption, stored=IsCaptionStored};
	__property TTMSFNCCalendarFooterDate DateCaption = {read=FDateCaption, write=SetDateCaption, default=2};
	__property int Height = {read=FHeight, write=SetHeight, default=25};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* Fill = {read=FFill, write=SetFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* Font = {read=FFont, write=SetFont};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* Stroke = {read=FStroke, write=SetStroke};
	__property bool Visible = {read=FVisible, write=SetVisible, default=1};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign VerticalTextAlign = {read=FVerticalTextAlign, write=SetVerticalTextAlign, default=0};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign HorizontalTextAlign = {read=FHorizontalTextAlign, write=SetHorizontalTextAlign, default=0};
};


class PASCALIMPLEMENTATION TTMSFNCCalendarDayNameAppearance : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FFont;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign FVerticalTextAlign;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign FHorizontalTextAlign;
	System::Classes::TNotifyEvent FOnChange;
	int FHeight;
	void __fastcall SetFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetHorizontalTextAlign(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign Value);
	void __fastcall SetStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetVerticalTextAlign(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign Value);
	void __fastcall SetHeight(const int Value);
	
protected:
	void __fastcall Changed();
	void __fastcall FillChanged(System::TObject* Sender);
	void __fastcall FontChanged(System::TObject* Sender);
	void __fastcall StrokeChanged(System::TObject* Sender);
	
public:
	__fastcall virtual TTMSFNCCalendarDayNameAppearance();
	__fastcall virtual ~TTMSFNCCalendarDayNameAppearance();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__property System::Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
	
__published:
	__property int Height = {read=FHeight, write=SetHeight, default=15};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* Fill = {read=FFill, write=SetFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* Font = {read=FFont, write=SetFont};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* Stroke = {read=FStroke, write=SetStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign VerticalTextAlign = {read=FVerticalTextAlign, write=SetVerticalTextAlign, default=0};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign HorizontalTextAlign = {read=FHorizontalTextAlign, write=SetHorizontalTextAlign, default=0};
};


class PASCALIMPLEMENTATION TTMSFNCCalendarDateAppearance : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FFont;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign FVerticalTextAlign;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign FHorizontalTextAlign;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FSelectedFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FSelectedFont;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FSelectedStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign FSelectedVerticalTextAlign;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign FSelectedHorizontalTextAlign;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FDisabledFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FDisabledFont;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FDisabledStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FDateBeforeFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FDateBeforeFont;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FDateBeforeStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FDateAfterFont;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FDateAfterFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FDateAfterStroke;
	bool FShowDaysBefore;
	bool FShowDaysAfter;
	System::Classes::TNotifyEvent FOnChange;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FTodayFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FBadgeFont;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FTodayStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FBadgeFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FBadgeStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FTodayFont;
	bool FShowFocus;
	void __fastcall SetFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetHorizontalTextAlign(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign Value);
	void __fastcall SetStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetVerticalTextAlign(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign Value);
	void __fastcall SetSelectedFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetSelectedFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetSelectedHorizontalTextAlign(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign Value);
	void __fastcall SetSelectedStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetSelectedVerticalTextAlign(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign Value);
	void __fastcall SetDisabledFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetDisabledFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetDisabledStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetDateAfterFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetDateAfterFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetDateBeforeFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetDateBeforeFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetShowDaysAfter(const bool Value);
	void __fastcall SetShowDaysBefore(const bool Value);
	void __fastcall SetDateAfterStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetDateBeforeStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetBadgeFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetBadgeFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetBadgeStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetTodayFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetTodayFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetTodayStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetShowFocus(const bool Value);
	
protected:
	void __fastcall Changed();
	void __fastcall FillChanged(System::TObject* Sender);
	void __fastcall FontChanged(System::TObject* Sender);
	void __fastcall StrokeChanged(System::TObject* Sender);
	
public:
	__fastcall virtual TTMSFNCCalendarDateAppearance();
	__fastcall virtual ~TTMSFNCCalendarDateAppearance();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__property System::Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
	
__published:
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* Fill = {read=FFill, write=SetFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* Font = {read=FFont, write=SetFont};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* Stroke = {read=FStroke, write=SetStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign VerticalTextAlign = {read=FVerticalTextAlign, write=SetVerticalTextAlign, default=0};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign HorizontalTextAlign = {read=FHorizontalTextAlign, write=SetHorizontalTextAlign, default=0};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* SelectedFill = {read=FSelectedFill, write=SetSelectedFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* SelectedFont = {read=FSelectedFont, write=SetSelectedFont};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* SelectedStroke = {read=FSelectedStroke, write=SetSelectedStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign SelectedVerticalTextAlign = {read=FSelectedVerticalTextAlign, write=SetSelectedVerticalTextAlign, default=0};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign SelectedHorizontalTextAlign = {read=FSelectedHorizontalTextAlign, write=SetSelectedHorizontalTextAlign, default=0};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* DisabledFill = {read=FDisabledFill, write=SetDisabledFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* DisabledFont = {read=FDisabledFont, write=SetDisabledFont};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* DisabledStroke = {read=FDisabledStroke, write=SetDisabledStroke};
	__property bool ShowDaysBefore = {read=FShowDaysBefore, write=SetShowDaysBefore, default=0};
	__property bool ShowDaysAfter = {read=FShowDaysAfter, write=SetShowDaysAfter, default=0};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* DateBeforeFill = {read=FDateBeforeFill, write=SetDateBeforeFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* DateBeforeFont = {read=FDateBeforeFont, write=SetDateBeforeFont};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* DateBeforeStroke = {read=FDateBeforeStroke, write=SetDateBeforeStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* DateAfterFill = {read=FDateAfterFill, write=SetDateAfterFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* DateAfterFont = {read=FDateAfterFont, write=SetDateAfterFont};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* DateAfterStroke = {read=FDateAfterStroke, write=SetDateAfterStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* TodayFill = {read=FTodayFill, write=SetTodayFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* TodayFont = {read=FTodayFont, write=SetTodayFont};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* TodayStroke = {read=FTodayStroke, write=SetTodayStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* BadgeFill = {read=FBadgeFill, write=SetBadgeFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* BadgeFont = {read=FBadgeFont, write=SetBadgeFont};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* BadgeStroke = {read=FBadgeStroke, write=SetBadgeStroke};
	__property bool ShowFocus = {read=FShowFocus, write=SetShowFocus, default=1};
};


class PASCALIMPLEMENTATION TTMSFNCCalendarLineAppearance : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FStroke;
	System::Classes::TNotifyEvent FOnChange;
	void __fastcall SetStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	
protected:
	void __fastcall Changed();
	void __fastcall StrokeChanged(System::TObject* Sender);
	
public:
	__fastcall virtual TTMSFNCCalendarLineAppearance();
	__fastcall virtual ~TTMSFNCCalendarLineAppearance();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__property System::Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
	
__published:
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* Stroke = {read=FStroke, write=SetStroke};
};


class PASCALIMPLEMENTATION TTMSFNCCalendarWeekNumberAppearance : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	System::Classes::TNotifyEvent FOnChange;
	bool FVisible;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FFont;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign FVerticalTextAlign;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign FHorizontalTextAlign;
	void __fastcall SetFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetVisible(const bool Value);
	void __fastcall SetHorizontalTextAlign(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign Value);
	void __fastcall SetVerticalTextAlign(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign Value);
	
protected:
	void __fastcall Changed();
	void __fastcall FillChanged(System::TObject* Sender);
	void __fastcall FontChanged(System::TObject* Sender);
	void __fastcall StrokeChanged(System::TObject* Sender);
	
public:
	__fastcall virtual TTMSFNCCalendarWeekNumberAppearance();
	__fastcall virtual ~TTMSFNCCalendarWeekNumberAppearance();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__property System::Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
	
__published:
	__property bool Visible = {read=FVisible, write=SetVisible, default=0};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* Font = {read=FFont, write=SetFont};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* Fill = {read=FFill, write=SetFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* Stroke = {read=FStroke, write=SetStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign VerticalTextAlign = {read=FVerticalTextAlign, write=SetVerticalTextAlign, default=0};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign HorizontalTextAlign = {read=FHorizontalTextAlign, write=SetHorizontalTextAlign, default=0};
};


enum DECLSPEC_DENUM TTMSFNCCalendarNavigationMode : unsigned char { nmMonth, nmYear, nmFocusedDate, nmCustom };

class PASCALIMPLEMENTATION TTMSFNCCalendarCustomInteraction : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	bool FMultiSelect;
	bool FKeyboardSupport;
	bool FReadOnlyMode;
	TTMSFNCCalendarNavigationMode FNavigationMode;
	bool FSwipeOnHeader;
	void __fastcall SetKeyboardSupport(const bool Value);
	void __fastcall SetMultiSelect(const bool Value);
	void __fastcall SetReadOnlyMode(const bool Value);
	void __fastcall SetNavigationMode(const TTMSFNCCalendarNavigationMode Value);
	void __fastcall SetSwipeOnHeader(const bool Value);
	
protected:
	__property bool MultiSelect = {read=FMultiSelect, write=SetMultiSelect, default=0};
	__property bool KeyboardSupport = {read=FKeyboardSupport, write=SetKeyboardSupport, default=1};
	__property bool ReadOnlyMode = {read=FReadOnlyMode, write=SetReadOnlyMode, default=0};
	__property bool SwipeOnHeader = {read=FSwipeOnHeader, write=SetSwipeOnHeader, default=0};
	__property TTMSFNCCalendarNavigationMode NavigationMode = {read=FNavigationMode, write=SetNavigationMode, default=0};
	
public:
	__fastcall virtual TTMSFNCCalendarCustomInteraction();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTMSFNCCalendarCustomInteraction() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCalendarInteraction : public TTMSFNCCalendarCustomInteraction
{
	typedef TTMSFNCCalendarCustomInteraction inherited;
	
__published:
	__property MultiSelect = {default=0};
	__property KeyboardSupport = {default=1};
	__property ReadOnlyMode = {default=0};
	__property SwipeOnHeader = {default=0};
	__property NavigationMode = {default=0};
public:
	/* TTMSFNCCalendarCustomInteraction.Create */ inline __fastcall virtual TTMSFNCCalendarInteraction() : TTMSFNCCalendarCustomInteraction() { }
	
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTMSFNCCalendarInteraction() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCalendarDateItem : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	System::TDate FDate;
	void __fastcall SetDate(const System::TDate Value);
	
protected:
	void __fastcall Update();
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property System::TDate Date = {read=FDate, write=SetDate};
public:
	/* TCollectionItem.Create */ inline __fastcall virtual TTMSFNCCalendarDateItem(System::Classes::TCollection* Collection) : System::Classes::TCollectionItem(Collection) { }
	/* TCollectionItem.Destroy */ inline __fastcall virtual ~TTMSFNCCalendarDateItem() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCalendarDates : public System::Classes::TCollection
{
	typedef System::Classes::TCollection inherited;
	
private:
	System::Classes::TNotifyEvent FOnChange;
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCCalendarDateItem* const Value);
	HIDESBASE TTMSFNCCalendarDateItem* __fastcall GetItem(int Index);
	
protected:
	virtual void __fastcall DoChange();
	virtual void __fastcall Update(System::Classes::TCollectionItem* Item);
	
public:
	void __fastcall SelectDate(System::TDate ADate);
	void __fastcall SelectDateInterval(System::TDate ADateFrom, System::TDate ADateTo);
	void __fastcall UnselectDate(System::TDate ADate);
	void __fastcall UnselectAll();
	HIDESBASE TTMSFNCCalendarDateItem* __fastcall Add();
	bool __fastcall InCollection(System::TDate ADate);
	__property TTMSFNCCalendarDateItem* Items[int Index] = {read=GetItem, write=SetItem};
	__property System::Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
public:
	/* TCollection.Create */ inline __fastcall TTMSFNCCalendarDates(System::Classes::TCollectionItemClass ItemClass) : System::Classes::TCollection(ItemClass) { }
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCCalendarDates() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCalendarEventItem : public TTMSFNCCalendarDateItem
{
	typedef TTMSFNCCalendarDateItem inherited;
	
private:
	System::UnicodeString FHint;
	int FBadgeValue;
	System::Uitypes::TAlphaColor FBadgeColor;
	bool FShowBadge;
	System::Uitypes::TAlphaColor FBadgeFontColor;
	void __fastcall SetBadgeColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetBadgeFontColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetBadgeValue(const int Value);
	void __fastcall SetHint(const System::UnicodeString Value);
	void __fastcall SetShowBadge(const bool Value);
	bool __fastcall IsHintStored();
	
protected:
	HIDESBASE void __fastcall Update();
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual TTMSFNCCalendarEventItem(System::Classes::TCollection* ACollection);
	
__published:
	__property int BadgeValue = {read=FBadgeValue, write=SetBadgeValue, default=0};
	__property bool ShowBadge = {read=FShowBadge, write=SetShowBadge, default=1};
	__property System::Uitypes::TAlphaColor BadgeFontColor = {read=FBadgeFontColor, write=SetBadgeFontColor, default=0};
	__property System::Uitypes::TAlphaColor BadgeColor = {read=FBadgeColor, write=SetBadgeColor, default=0};
	__property System::UnicodeString Hint = {read=FHint, write=SetHint, stored=IsHintStored};
public:
	/* TCollectionItem.Destroy */ inline __fastcall virtual ~TTMSFNCCalendarEventItem() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCalendarEvents : public TTMSFNCCalendarDates
{
	typedef TTMSFNCCalendarDates inherited;
	
private:
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCCalendarEventItem* const Value);
	HIDESBASE TTMSFNCCalendarEventItem* __fastcall GetItem(int Index);
	
public:
	HIDESBASE TTMSFNCCalendarEventItem* __fastcall Add();
	TTMSFNCCalendarEventItem* __fastcall GetEventCollectionItemByDate(System::TDate ADate);
	__property TTMSFNCCalendarEventItem* Items[int Index] = {read=GetItem, write=SetItem};
public:
	/* TCollection.Create */ inline __fastcall TTMSFNCCalendarEvents(System::Classes::TCollectionItemClass ItemClass) : TTMSFNCCalendarDates(ItemClass) { }
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCCalendarEvents() { }
	
};


typedef void __fastcall (__closure *TTMSFNCCalendarBeforeDrawHeaderEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, bool &AAllow, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCCalendarAfterDrawHeaderEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);

typedef void __fastcall (__closure *TTMSFNCCalendarBeforeDrawHeaderTextEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, System::UnicodeString AText, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign AHorizontalTextAlign, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign AVerticalTextAlign, bool &AAllow, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCCalendarAfterDrawHeaderTextEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, System::UnicodeString AText, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign AHorizontalTextAlign, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign AVerticalTextAlign);

typedef void __fastcall (__closure *TTMSFNCCalendarBeforeDrawFooterEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARectF, bool &AAllow, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCCalendarAfterDrawFooterEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARectF);

typedef void __fastcall (__closure *TTMSFNCCalendarBeforeDrawFooterTextEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, System::UnicodeString AText, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign AHorizontalTextAlign, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign AVerticalTextAlign, bool &AAllow, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCCalendarAfterDrawFooterTextEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, System::UnicodeString AText, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign AHorizontalTextAlign, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign AVerticalTextAlign);

typedef void __fastcall (__closure *TTMSFNCCalendarBeforeDrawDayNamesEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, bool &AAllow, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCCalendarAfterDrawDayNamesEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);

typedef void __fastcall (__closure *TTMSFNCCalendarBeforeDrawDayNamesTextEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, System::UnicodeString AText, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign AHorizontalTextAlign, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign AVerticalTextAlign, bool &AAllow, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCCalendarAfterDrawDayNamesTextEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, System::UnicodeString AText, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign AHorizontalTextAlign, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign AVerticalTextAlign);

typedef void __fastcall (__closure *TTMSFNCCalendarBeforeDrawDayNumbersEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, System::TDate ADate, bool &AAllow, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCCalendarAfterDrawDayNumbersEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, System::TDate ADate);

typedef void __fastcall (__closure *TTMSFNCCalendarBeforeDrawDayNumbersTextEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, System::UnicodeString AText, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign AHorizontalTextAlign, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign AVerticalTextAlign, bool &AAllow, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCCalendarAfterDrawDayNumbersTextEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, System::UnicodeString AText, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign AHorizontalTextAlign, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign AVerticalTextAlign);

typedef void __fastcall (__closure *TTMSFNCCalendarBeforeDrawLinesEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, bool &AAllow, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCCalendarAfterDrawLinesEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics);

typedef void __fastcall (__closure *TTMSFNCCalendarBeforeDrawWeekNumbersEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, bool &AAllow, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCCalendarAfterDrawWeekNumbersEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);

typedef void __fastcall (__closure *TTMSFNCCalendarBeforeDrawWeekNumbersTextEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, System::UnicodeString AText, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign AHorizontalTextAlign, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign AVerticalTextAlign, bool &AAllow, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCCalendarAfterDrawWeekNumbersTextEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, System::UnicodeString AText, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign AHorizontalTextAlign, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign AVerticalTextAlign);

typedef void __fastcall (__closure *TTMSFNCCalendarBeforeDrawBadgeEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCCalendarEventItem* ABadge, bool &AAllow, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCCalendarAfterDrawBadgeEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCCalendarEventItem* ABadge);

typedef void __fastcall (__closure *TTMSFNCCalendarBeforeDrawArrowLeftEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &AArrowRect, bool &AAllow, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCCalendarAfterDrawArrowLeftEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &AArrowRect);

typedef void __fastcall (__closure *TTMSFNCCalendarBeforeDrawArrowRightEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &AArrowRect, bool &AAllow, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCCalendarAfterDrawArrowRightEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &AArrowRect);

typedef void __fastcall (__closure *TTMSFNCCalendarBeforeSelectDateEvent)(System::TObject* Sender, System::TDate ADate);

typedef void __fastcall (__closure *TTMSFNCCalendarSelectedDateEvent)(System::TObject* Sender, System::TDate ADate);

typedef void __fastcall (__closure *TTMSFNCCalendarSelectedMultiDateEvent)(System::TObject* Sender, System::TDate AStartDate, System::TDate AEndDate);

typedef void __fastcall (__closure *TTMSFNCCalendarYearChangedEvent)(System::TObject* Sender, int AYear);

typedef void __fastcall (__closure *TTMSFNCCalendarMonthChangedEvent)(System::TObject* Sender, int AMonth);

typedef void __fastcall (__closure *TTMSFNCCalendarCustomNavigationEvent)(System::TObject* Sender, System::TDate ADate, System::TDate AFocusedDate, bool ADirection);

typedef void __fastcall (__closure *TTMSFNCCalendarCustomArrowDrawEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, bool ADirection);

typedef void __fastcall (__closure *TTMSFNCCalendarCustomNavigateEvent)(System::TObject* Sender, int AMonth, int AYear);

class PASCALIMPLEMENTATION TTMSFNCCustomCalendar : public Fmx::Tmsfnccustomcontrol::TTMSFNCCustomControl
{
	typedef Fmx::Tmsfnccustomcontrol::TTMSFNCCustomControl inherited;
	
private:
	int FDay;
	int FMonth;
	int FYear;
	Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* FBitmapContainer;
	int FNumOfWeeksDrawn;
	TTMSFNCCalendarWeekNumberAppearance* FWeekNumberAppearance;
	int FFirstDay;
	TTMSFNCCalendarHeader* FHeader;
	TTMSFNCCalendarFooter* FFooter;
	TTMSFNCCalendarDayNameAppearance* FDayNameAppearance;
	TTMSFNCCalendarDateAppearance* FDateAppearance;
	TTMSFNCCalendarLineAppearance* FLineAppearance;
	float FXOffset;
	float FYOffset;
	float FDateAreaHeight;
	float FMx;
	float FMy;
	unsigned FTick;
	TTMSFNCCalendarDates* FSelectedDates;
	TTMSFNCCalendarEvents* FEvents;
	int FBadgeSize;
	bool FMouseDown;
	bool FShiftPressed;
	bool FSelectedAll;
	System::TDate FDate;
	System::TDate FMaxDate;
	System::TDate FMinDate;
	System::TDate FClickedDate;
	System::TDate FMouseAtDate;
	System::TDate FFocusedDate;
	System::TDate FHoverDate;
	System::Classes::TNotifyEvent FOnChange;
	TTMSFNCCalendarBeforeDrawHeaderEvent FOnBeforeDrawHeader;
	TTMSFNCCalendarAfterDrawDayNamesEvent FOnAfterDrawDayNames;
	TTMSFNCCalendarAfterDrawHeaderEvent FOnAfterDrawHeader;
	TTMSFNCCalendarBeforeDrawDayNamesEvent FOnBeforeDrawDayNames;
	TTMSFNCCalendarAfterDrawHeaderTextEvent FOnAfterDrawHeaderText;
	TTMSFNCCalendarBeforeDrawHeaderTextEvent FOnBeforeDrawHeaderText;
	TTMSFNCCalendarAfterDrawDayNamesTextEvent FOnAfterDrawDayNamesText;
	TTMSFNCCalendarBeforeDrawDayNamesTextEvent FOnBeforeDrawDayNamesText;
	TTMSFNCCalendarAfterDrawWeekNumbersTextEvent FOnAfterDrawWeekNumbersText;
	TTMSFNCCalendarBeforeDrawDayNumbersTextEvent FOnBeforeDrawDayNumbersText;
	TTMSFNCCalendarBeforeDrawLinesEvent FOnBeforeDrawLines;
	TTMSFNCCalendarAfterDrawWeekNumbersEvent FOnAfterDrawWeekNumbers;
	TTMSFNCCalendarBeforeDrawDayNumbersEvent FOnBeforeDrawDayNumbers;
	TTMSFNCCalendarAfterDrawDayNumbersTextEvent FOnAfterDrawDayNumbersText;
	TTMSFNCCalendarBeforeDrawWeekNumbersTextEvent FOnBeforeDrawWeekNumbersText;
	TTMSFNCCalendarAfterDrawLinesEvent FOnAfterDrawLines;
	TTMSFNCCalendarAfterDrawDayNumbersEvent FOnAfterDrawDayNumbers;
	TTMSFNCCalendarBeforeDrawWeekNumbersEvent FOnBeforeDrawWeekNumbers;
	TTMSFNCCalendarInteraction* FInteraction;
	TTMSFNCCalendarYearChangedEvent FOnYearChanged;
	TTMSFNCCalendarSelectedDateEvent FOnSelectDate;
	TTMSFNCCalendarMonthChangedEvent FOnMonthChanged;
	TTMSFNCCalendarSelectedMultiDateEvent FOnSelectMultiDate;
	TTMSFNCCalendarBeforeSelectDateEvent FOnBeforeSelectDate;
	TTMSFNCCalendarBeforeDrawFooterTextEvent FOnBeforeDrawFooterText;
	TTMSFNCCalendarBeforeDrawFooterEvent FOnBeforeDrawFooter;
	TTMSFNCCalendarAfterDrawFooterTextEvent FOnAfterDrawFooterText;
	TTMSFNCCalendarAfterDrawFooterEvent FOnAfterDrawFooter;
	TTMSFNCCalendarCustomNavigationEvent FOnCustomNavigation;
	TTMSFNCCalendarAfterDrawBadgeEvent FOnAfterDrawBadge;
	TTMSFNCCalendarBeforeDrawBadgeEvent FOnBeforeDrawBadge;
	TTMSFNCCalendarCustomArrowDrawEvent FOnCustomArrowDraw;
	TTMSFNCCalendarAfterDrawArrowRightEvent FOnAfterDrawArrowRight;
	TTMSFNCCalendarBeforeDrawArrowLeftEvent FOnBeforeDrawArrowLeft;
	TTMSFNCCalendarBeforeDrawArrowRightEvent FOnBeforeDrawArrowRight;
	TTMSFNCCalendarAfterDrawArrowLeftEvent FOnAfterDrawArrowLeft;
	TTMSFNCCalendarCustomNavigateEvent FOnNavigateBack;
	TTMSFNCCalendarCustomNavigateEvent FOnNavigateForward;
	System::Classes::TNotifyEvent FOnNavigateFooter;
	Fmx::Tmsfncgraphicstypes::TTMSFNCAppearanceGlobalFont* FGlobalFont;
	void __fastcall SetDay(const int Value);
	void __fastcall SetMonth(const int Value);
	void __fastcall SetYear(const int Value);
	void __fastcall SetFirstDay(const int Value);
	void __fastcall SetHeader(TTMSFNCCalendarHeader* const Value);
	void __fastcall IncrementCell(float &ACellSide, const float AMoveBy);
	void __fastcall ShiftCellH(System::Types::TRectF &ACell, const float AMoveBy);
	void __fastcall ShiftCellV(System::Types::TRectF &ACell, const float AMoveBy);
	void __fastcall IncrementWeekDay(int &ADay);
	void __fastcall SetDateForward(System::TDate &ADate, int ASetBy);
	void __fastcall SetDateBackward(System::TDate &ADate, int ASetBy);
	void __fastcall SetDayNameAppearance(TTMSFNCCalendarDayNameAppearance* const Value);
	void __fastcall SetDateAppearance(TTMSFNCCalendarDateAppearance* const Value);
	void __fastcall SetLineAppearance(TTMSFNCCalendarLineAppearance* const Value);
	void __fastcall SetWeekNumberAppearance(TTMSFNCCalendarWeekNumberAppearance* const Value);
	void __fastcall SetArrowLeftRect(const System::Types::TRectF &AHeaderRect, System::Types::TRectF &AArrowRect, float ACentre);
	void __fastcall SetArrowRightRect(const System::Types::TRectF &AHeaderRect, System::Types::TRectF &AArrowRect, float ACentre);
	void __fastcall SetFocusedDate(const System::TDate Value);
	void __fastcall SetDate(const System::TDate Value);
	void __fastcall SetInteraction(TTMSFNCCalendarInteraction* const Value);
	void __fastcall SetMaxDate(const System::TDate Value);
	void __fastcall SetMinDate(const System::TDate Value);
	void __fastcall SetFooter(TTMSFNCCalendarFooter* const Value);
	void __fastcall SetBitmapContainer(Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* const Value);
	void __fastcall SetBadgeSize(const int Value);
	void __fastcall SetEvents(TTMSFNCCalendarEvents* const Value);
	int __fastcall ColCount(const bool AShowWeeks);
	int __fastcall CalcRowCount(const int ACol, const int ADaysInAMonth);
	float __fastcall CalcDateAreaHeight(const float AHeight, const bool AHeaderVisible, const bool AFooterVisible);
	System::Types::TRectF __fastcall GetArrowRect(bool ALeft);
	System::Types::TRectF __fastcall GetFooterTextRect();
	bool __fastcall PointInRect(const System::Types::TRectF &ARect, const System::Types::TPointF &APoint);
	bool __fastcall IsMaxDateStored();
	bool __fastcall IsMinDateStored();
	System::TDate __fastcall GetCurrentDate();
	Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* __fastcall GetBitmapContainer();
	bool __fastcall IsFocusedDateStored();
	void __fastcall SetGlobalFont(Fmx::Tmsfncgraphicstypes::TTMSFNCAppearanceGlobalFont* const Value);
	
protected:
	virtual void __fastcall ApplyStyle();
	virtual void __fastcall ResetToDefaultStyle();
	void __fastcall Changed();
	virtual void __fastcall CalculateXOffset();
	virtual void __fastcall ChangeDPIScale(int M, int D);
	virtual void __fastcall Notification(System::Classes::TComponent* AComponent, System::Classes::TOperation Operation);
	virtual void __fastcall Draw(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARectF);
	void __fastcall DrawHeader(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARectF);
	void __fastcall DrawFooter(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARectF);
	void __fastcall DrawArrows(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARectF, TTMSFNCCalendarArrowLayoutValue ADirection);
	void __fastcall DrawDayNames(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARectF);
	void __fastcall DrawDays(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARectF);
	void __fastcall DrawDayNumbers(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ACellRect, int Col, int Row, int AMonth, int I);
	void __fastcall DrawWeekNumbers(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARectF);
	void __fastcall DrawLines(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARectF);
	void __fastcall DrawBadges(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARectF);
	void __fastcall DrawBadge(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARectF, TTMSFNCCalendarEventItem* ABadge, int ACol, int ARow);
	void __fastcall EventsChanged(System::TObject* Sender);
	void __fastcall WeekNumbersChanged(System::TObject* Sender);
	void __fastcall ArrowsChanged(System::TObject* Sender);
	void __fastcall HeaderChanged(System::TObject* Sender);
	void __fastcall FooterChanged(System::TObject* Sender);
	void __fastcall DayNameAppearanceChanged(System::TObject* Sender);
	void __fastcall LineAppearanceChanged(System::TObject* Sender);
	void __fastcall ShowBeforeAndAfterChanged(System::TObject* Sender);
	virtual void __fastcall HandleMouseDown(System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall HandleMouseUp(System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall HandleMouseMove(System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall HandleKeyDown(System::Word &Key, System::Classes::TShiftState Shift);
	virtual void __fastcall HandleKeyUp(System::Word &Key, System::Classes::TShiftState Shift);
	virtual void __fastcall DoBeforeDrawHeader(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoAfterDrawHeader(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	virtual void __fastcall DoBeforeDrawHeaderText(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, System::UnicodeString AText, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign AHorizontalTextAlign, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign AVerticalTextAlign, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoAfterDrawHeaderText(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, System::UnicodeString AText, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign AHorizontalTextAlign, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign AVerticalTextAlign);
	virtual void __fastcall DoBeforeDrawFooter(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoAfterDrawFooter(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	virtual void __fastcall DoBeforeDrawFooterText(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, System::UnicodeString AText, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign AHorizontalTextAlign, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign AVerticalTextAlign, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoAfterDrawFooterText(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, System::UnicodeString AText, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign AHorizontalTextAlign, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign AVerticalTextAlign);
	virtual void __fastcall DoBeforeDrawDayNames(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoAfterDrawDayNames(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	virtual void __fastcall DoBeforeDrawDayNamesText(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, System::UnicodeString AText, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign AHorizontalTextAlign, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign AVerticalTextAlign, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoAfterDrawDayNamesText(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, System::UnicodeString AText, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign AHorizontalTextAlign, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign AVerticalTextAlign);
	virtual void __fastcall DoBeforeDrawDayNumbers(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, System::TDate ADate, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoAfterDrawDayNumbers(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, System::TDate ADate);
	virtual void __fastcall DoBeforeDrawDayNumbersText(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, System::UnicodeString AText, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign AHorizontalTextAlign, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign AVerticalTextAlign, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoAfterDrawDayNumbersText(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, System::UnicodeString AText, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign AHorizontalTextAlign, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign AVerticalTextAlign);
	virtual void __fastcall DoBeforeDrawLines(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoAfterDrawLines(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics);
	virtual void __fastcall DoBeforeDrawWeekNumbers(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoAfterDrawWeekNumbers(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	virtual void __fastcall DoBeforeDrawWeekNumbersText(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, System::UnicodeString AText, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign AHorizontalTextAlign, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign AVerticalTextAlign, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoAfterDrawWeekNumbersText(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, System::UnicodeString AText, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign AHorizontalTextAlign, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign AVerticalTextAlign);
	virtual void __fastcall DoBeforeDrawBadge(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCCalendarEventItem* ABadge, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoAfterDrawBadge(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCCalendarEventItem* ABadge);
	virtual void __fastcall DoBeforeDrawArrowLeft(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &AArrowRect, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoAfterDrawArrowLeft(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &AArrowRect);
	virtual void __fastcall DoBeforeDrawArrowRight(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &AArrowRect, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoAfterDrawArrowRight(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &AArrowRect);
	virtual void __fastcall DoBeforeSelectDate(System::TDate ADate);
	virtual void __fastcall DoSelectDate(System::TDate ADate);
	virtual void __fastcall DoSelectMultiDate(System::TDate AStartDate, System::TDate AEndDate);
	virtual void __fastcall DoChangeYear(int AYear);
	virtual void __fastcall DoChangeMonth(int AMonth);
	virtual void __fastcall DoCustomNavigation(System::TDate ADate, System::TDate AFocusedDate, bool ADirection);
	virtual void __fastcall DoCustomArrowDraw(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, bool ADirection);
	virtual bool __fastcall IsAppearanceProperty(System::TObject* AObject, System::UnicodeString APropertyName, System::TTypeKind APropertyType);
	virtual System::UnicodeString __fastcall GetVersion();
	virtual System::UnicodeString __fastcall GetHintString();
	virtual bool __fastcall HasHint();
	virtual System::UnicodeString __fastcall GetDocURL();
	virtual void __fastcall SetFonts(Fmx::Tmsfncgraphicstypes::TTMSFNCAppearanceGlobalFontType ASetType);
	__property Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* BitmapContainer = {read=GetBitmapContainer, write=SetBitmapContainer};
	__property TTMSFNCCalendarHeader* Header = {read=FHeader, write=SetHeader};
	__property TTMSFNCCalendarFooter* Footer = {read=FFooter, write=SetFooter};
	__property TTMSFNCCalendarEvents* Events = {read=FEvents, write=SetEvents};
	__property int Month = {read=FMonth, write=SetMonth, nodefault};
	__property int Year = {read=FYear, write=SetYear, nodefault};
	__property System::TDate MaxDate = {read=FMaxDate, write=SetMaxDate, stored=IsMaxDateStored};
	__property System::TDate MinDate = {read=FMinDate, write=SetMinDate, stored=IsMinDateStored};
	__property TTMSFNCCalendarWeekNumberAppearance* WeekNumberAppearance = {read=FWeekNumberAppearance, write=SetWeekNumberAppearance};
	__property int FirstDay = {read=FFirstDay, write=SetFirstDay, default=1};
	__property TTMSFNCCalendarDayNameAppearance* DayNameAppearance = {read=FDayNameAppearance, write=SetDayNameAppearance};
	__property TTMSFNCCalendarDateAppearance* DateAppearance = {read=FDateAppearance, write=SetDateAppearance};
	__property TTMSFNCCalendarLineAppearance* LineAppearance = {read=FLineAppearance, write=SetLineAppearance};
	__property TTMSFNCCalendarInteraction* Interaction = {read=FInteraction, write=SetInteraction};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCAppearanceGlobalFont* GlobalFont = {read=FGlobalFont, write=SetGlobalFont};
	__property TTMSFNCCalendarBeforeDrawHeaderEvent OnBeforeDrawHeader = {read=FOnBeforeDrawHeader, write=FOnBeforeDrawHeader};
	__property TTMSFNCCalendarAfterDrawHeaderEvent OnAfterDrawHeader = {read=FOnAfterDrawHeader, write=FOnAfterDrawHeader};
	__property TTMSFNCCalendarBeforeDrawHeaderTextEvent OnBeforeDrawHeaderText = {read=FOnBeforeDrawHeaderText, write=FOnBeforeDrawHeaderText};
	__property TTMSFNCCalendarAfterDrawHeaderTextEvent OnAfterDrawHeaderText = {read=FOnAfterDrawHeaderText, write=FOnAfterDrawHeaderText};
	__property TTMSFNCCalendarBeforeDrawFooterEvent OnBeforeDrawFooter = {read=FOnBeforeDrawFooter, write=FOnBeforeDrawFooter};
	__property TTMSFNCCalendarAfterDrawFooterEvent OnAfterDrawFooter = {read=FOnAfterDrawFooter, write=FOnAfterDrawFooter};
	__property TTMSFNCCalendarBeforeDrawFooterTextEvent OnBeforeDrawFooterText = {read=FOnBeforeDrawFooterText, write=FOnBeforeDrawFooterText};
	__property TTMSFNCCalendarAfterDrawFooterTextEvent OnAfterDrawFooterText = {read=FOnAfterDrawFooterText, write=FOnAfterDrawFooterText};
	__property TTMSFNCCalendarBeforeDrawDayNamesEvent OnBeforeDrawDayNames = {read=FOnBeforeDrawDayNames, write=FOnBeforeDrawDayNames};
	__property TTMSFNCCalendarAfterDrawDayNamesEvent OnAfterDrawDayNames = {read=FOnAfterDrawDayNames, write=FOnAfterDrawDayNames};
	__property TTMSFNCCalendarBeforeDrawDayNamesTextEvent OnBeforeDrawDayNamesText = {read=FOnBeforeDrawDayNamesText, write=FOnBeforeDrawDayNamesText};
	__property TTMSFNCCalendarAfterDrawDayNamesTextEvent OnAfterDrawDayNamesText = {read=FOnAfterDrawDayNamesText, write=FOnAfterDrawDayNamesText};
	__property TTMSFNCCalendarBeforeDrawDayNumbersEvent OnBeforeDrawDayNumbers = {read=FOnBeforeDrawDayNumbers, write=FOnBeforeDrawDayNumbers};
	__property TTMSFNCCalendarAfterDrawDayNumbersEvent OnAfterDrawDayNumbers = {read=FOnAfterDrawDayNumbers, write=FOnAfterDrawDayNumbers};
	__property TTMSFNCCalendarBeforeDrawDayNumbersTextEvent OnBeforeDrawDayNumbersText = {read=FOnBeforeDrawDayNumbersText, write=FOnBeforeDrawDayNumbersText};
	__property TTMSFNCCalendarAfterDrawDayNumbersTextEvent OnAfterDrawDayNumbersText = {read=FOnAfterDrawDayNumbersText, write=FOnAfterDrawDayNumbersText};
	__property TTMSFNCCalendarBeforeDrawLinesEvent OnBeforeDrawLines = {read=FOnBeforeDrawLines, write=FOnBeforeDrawLines};
	__property TTMSFNCCalendarAfterDrawLinesEvent OnAfterDrawLines = {read=FOnAfterDrawLines, write=FOnAfterDrawLines};
	__property TTMSFNCCalendarBeforeDrawWeekNumbersEvent OnBeforeDrawWeekNumbers = {read=FOnBeforeDrawWeekNumbers, write=FOnBeforeDrawWeekNumbers};
	__property TTMSFNCCalendarAfterDrawWeekNumbersEvent OnAfterDrawWeekNumbers = {read=FOnAfterDrawWeekNumbers, write=FOnAfterDrawWeekNumbers};
	__property TTMSFNCCalendarBeforeDrawWeekNumbersTextEvent OnBeforeDrawWeekNumbersText = {read=FOnBeforeDrawWeekNumbersText, write=FOnBeforeDrawWeekNumbersText};
	__property TTMSFNCCalendarAfterDrawWeekNumbersTextEvent OnAfterDrawWeekNumbersText = {read=FOnAfterDrawWeekNumbersText, write=FOnAfterDrawWeekNumbersText};
	__property TTMSFNCCalendarBeforeDrawBadgeEvent OnBeforeDrawBadge = {read=FOnBeforeDrawBadge, write=FOnBeforeDrawBadge};
	__property TTMSFNCCalendarAfterDrawBadgeEvent OnAfterDrawBadge = {read=FOnAfterDrawBadge, write=FOnAfterDrawBadge};
	__property TTMSFNCCalendarBeforeDrawArrowLeftEvent OnBeforeDrawArrowLeft = {read=FOnBeforeDrawArrowLeft, write=FOnBeforeDrawArrowLeft};
	__property TTMSFNCCalendarAfterDrawArrowLeftEvent OnAfterDrawArrowLeft = {read=FOnAfterDrawArrowLeft, write=FOnAfterDrawArrowLeft};
	__property TTMSFNCCalendarBeforeDrawArrowRightEvent OnBeforeDrawArrowRight = {read=FOnBeforeDrawArrowRight, write=FOnBeforeDrawArrowRight};
	__property TTMSFNCCalendarAfterDrawArrowRightEvent OnAfterDrawArrowRight = {read=FOnAfterDrawArrowRight, write=FOnAfterDrawArrowRight};
	__property TTMSFNCCalendarBeforeSelectDateEvent OnBeforeSelectDate = {read=FOnBeforeSelectDate, write=FOnBeforeSelectDate};
	__property TTMSFNCCalendarSelectedDateEvent OnSelectDate = {read=FOnSelectDate, write=FOnSelectDate};
	__property TTMSFNCCalendarSelectedMultiDateEvent OnSelectMultiDate = {read=FOnSelectMultiDate, write=FOnSelectMultiDate};
	__property TTMSFNCCalendarYearChangedEvent OnYearChanged = {read=FOnYearChanged, write=FOnYearChanged};
	__property TTMSFNCCalendarMonthChangedEvent OnMonthChanged = {read=FOnMonthChanged, write=FOnMonthChanged};
	__property TTMSFNCCalendarCustomNavigationEvent OnCustomNavigation = {read=FOnCustomNavigation, write=FOnCustomNavigation};
	__property TTMSFNCCalendarCustomArrowDrawEvent OnCustomArrowDraw = {read=FOnCustomArrowDraw, write=FOnCustomArrowDraw};
	__property TTMSFNCCalendarCustomNavigateEvent OnNavigateBack = {read=FOnNavigateBack, write=FOnNavigateBack};
	__property TTMSFNCCalendarCustomNavigateEvent OnNavigateForward = {read=FOnNavigateForward, write=FOnNavigateForward};
	__property System::Classes::TNotifyEvent OnNavigateFooter = {read=FOnNavigateFooter, write=FOnNavigateFooter};
	
public:
	__fastcall virtual TTMSFNCCustomCalendar(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCCustomCalendar();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	void __fastcall SelectDate(System::TDate ADate);
	void __fastcall SelectEvent(System::TDate ADate);
	void __fastcall SelectMultiDates(System::TDate AStartDate, System::TDate AEndDate);
	void __fastcall PreviousDate();
	void __fastcall NextDate();
	virtual void __fastcall UpdateControlAfterResize();
	void __fastcall SelectADate(System::TDate ADate);
	void __fastcall SelectDateIfAvailable(System::TDate ADate);
	virtual void __fastcall InitSample();
	int __fastcall ColAtX(float AX);
	int __fastcall RowAtY(float AY);
	int __fastcall DateToRow(System::TDate ADate);
	int __fastcall DateToCol(System::TDate ADate);
	System::TDate __fastcall XYToDate(float AX, float AY);
	int __fastcall CurrentDay();
	int __fastcall CurrentMonth();
	int __fastcall CurrentYear();
	int __fastcall PreviousMonth();
	int __fastcall PreviousYear();
	int __fastcall NextMonth();
	int __fastcall NextYear();
	System::TDate __fastcall SelectedDate();
	__property int Day = {read=FDay, write=SetDay, nodefault};
	__property System::TDate Date = {read=FDate, write=SetDate};
	__property System::TDate CurrentDate = {read=GetCurrentDate};
	__property System::TDate FocusedDate = {read=FFocusedDate, write=SetFocusedDate, stored=IsFocusedDateStored};
	__property TTMSFNCCalendarDates* SelectedDates = {read=FSelectedDates};
	__property int BadgeSize = {read=FBadgeSize, write=SetBadgeSize, default=14};
	__property System::Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
private:
	void *__ITMSFNCAppearanceGlobalFont;	// Fmx::Tmsfncgraphicstypes::ITMSFNCAppearanceGlobalFont 
	void *__ITMSFNCBitmapContainer;	// Fmx::Tmsfncbitmapcontainer::ITMSFNCBitmapContainer 
	
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


class PASCALIMPLEMENTATION TTMSFNCCalendar : public TTMSFNCCustomCalendar
{
	typedef TTMSFNCCustomCalendar inherited;
	
__published:
	__property BitmapContainer;
	__property BadgeSize = {default=14};
	__property Header;
	__property Footer;
	__property Fill;
	__property Stroke;
	__property Day;
	__property Month;
	__property Year;
	__property Date = {default=0};
	__property MaxDate = {default=0};
	__property MinDate = {default=0};
	__property FirstDay = {default=1};
	__property Events;
	__property WeekNumberAppearance;
	__property DayNameAppearance;
	__property DateAppearance;
	__property LineAppearance;
	__property Interaction;
	__property GlobalFont;
	__property OnBeforeDrawHeader;
	__property OnAfterDrawHeader;
	__property OnBeforeDrawFooter;
	__property OnAfterDrawFooter;
	__property OnBeforeDrawDayNames;
	__property OnAfterDrawDayNames;
	__property OnBeforeDrawDayNumbers;
	__property OnAfterDrawDayNumbers;
	__property OnBeforeDrawLines;
	__property OnAfterDrawLines;
	__property OnBeforeDrawWeekNumbers;
	__property OnAfterDrawWeekNumbers;
	__property OnBeforeDrawArrowLeft;
	__property OnAfterDrawArrowLeft;
	__property OnBeforeDrawArrowRight;
	__property OnAfterDrawArrowRight;
	__property OnBeforeDrawBadge;
	__property OnAfterDrawBadge;
	__property OnBeforeDrawHeaderText;
	__property OnAfterDrawHeaderText;
	__property OnBeforeDrawFooterText;
	__property OnAfterDrawFooterText;
	__property OnBeforeDrawDayNamesText;
	__property OnAfterDrawDayNamesText;
	__property OnBeforeDrawDayNumbersText;
	__property OnAfterDrawDayNumbersText;
	__property OnBeforeDrawWeekNumbersText;
	__property OnAfterDrawWeekNumbersText;
	__property OnBeforeSelectDate;
	__property OnSelectDate;
	__property OnSelectMultiDate;
	__property OnYearChanged;
	__property OnMonthChanged;
	__property OnCustomNavigation;
	__property OnCustomArrowDraw;
	__property OnNavigateBack;
	__property OnNavigateForward;
	__property OnNavigateFooter;
public:
	/* TTMSFNCCustomCalendar.Create */ inline __fastcall virtual TTMSFNCCalendar(System::Classes::TComponent* AOwner) : TTMSFNCCustomCalendar(AOwner) { }
	/* TTMSFNCCustomCalendar.Destroy */ inline __fastcall virtual ~TTMSFNCCalendar() { }
	
};


//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x3);
static constexpr System::Int8 BLD_VER = System::Int8(0x2);
}	/* namespace Tmsfnccalendar */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCCALENDAR)
using namespace Fmx::Tmsfnccalendar;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfnccalendarHPP
