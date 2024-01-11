// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCDatePicker.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncdatepickerHPP
#define Fmx_TmsfncdatepickerHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <FMX.TMSFNCCustomPicker.hpp>
#include <FMX.Controls.hpp>
#include <FMX.TMSFNCCustomSelector.hpp>
#include <FMX.TMSFNCGraphics.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.StdCtrls.hpp>
#include <FMX.TMSFNCGraphicsTypes.hpp>
#include <FMX.TMSFNCCalendar.hpp>
#include <FMX.TMSFNCBitmapContainer.hpp>
#include <FMX.TMSFNCStyles.hpp>
#include <FMX.TMSFNCUtils.hpp>
#include <System.Types.hpp>
#include <FMX.Types.hpp>
#include <System.TypInfo.hpp>
#include <FMX.TMSFNCCustomControl.hpp>
#include <System.Generics.Collections.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncdatepicker
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCDatePickerInteraction;
class DELPHICLASS TTMSFNCCustomDatePicker;
class DELPHICLASS TTMSFNCDatePicker;
//-- type declarations -------------------------------------------------------
typedef void __fastcall (__closure *TTMSFNCCustomDatePickerDateSelected)(System::TObject* Sender, System::TDate ADate);

typedef void __fastcall (__closure *TTMSFNCCustomDatePickerValidateEvent)(System::TObject* Sender, System::UnicodeString AEditText, System::TDateTime &ADate, bool &ADefault);

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCDatePickerInteraction : public Fmx::Tmsfnccalendar::TTMSFNCCalendarCustomInteraction
{
	typedef Fmx::Tmsfnccalendar::TTMSFNCCalendarCustomInteraction inherited;
	
__published:
	__property ReadOnlyMode = {default=0};
	__property SwipeOnHeader = {default=0};
	__property KeyboardSupport = {default=1};
	__property NavigationMode = {default=0};
public:
	/* TTMSFNCCalendarCustomInteraction.Create */ inline __fastcall virtual TTMSFNCDatePickerInteraction() : Fmx::Tmsfnccalendar::TTMSFNCCalendarCustomInteraction() { }
	
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTMSFNCDatePickerInteraction() { }
	
};

#pragma pack(pop)

class PASCALIMPLEMENTATION TTMSFNCCustomDatePicker : public Fmx::Tmsfnccustompicker::TTMSFNCDefaultPicker
{
	typedef Fmx::Tmsfnccustompicker::TTMSFNCDefaultPicker inherited;
	
private:
	System::TDate FPrevSelDate;
	Fmx::Tmsfnccustomselector::TTMSFNCCustomSelector* FWrapper;
	Fmx::Tmsfnccalendar::TTMSFNCCalendar* FDateSelector;
	TTMSFNCCustomDatePickerDateSelected FOnDateSelected;
	bool FCloseOnSelection;
	System::Classes::TNotifyEvent FOnCustomize;
	Fmx::Tmsfnccalendar::TTMSFNCCalendarHeader* FHeader;
	TTMSFNCDatePickerInteraction* FInteraction;
	Fmx::Tmsfnccalendar::TTMSFNCCalendarAfterDrawBadgeEvent FOnAfterDrawBadge;
	Fmx::Tmsfnccalendar::TTMSFNCCalendarAfterDrawArrowRightEvent FOnAfterDrawArrowRight;
	Fmx::Tmsfnccalendar::TTMSFNCCalendarAfterDrawDayNamesTextEvent FOnAfterDrawDayNamesText;
	Fmx::Tmsfnccalendar::TTMSFNCCalendarAfterDrawWeekNumbersTextEvent FOnAfterDrawWeekNumbersText;
	Fmx::Tmsfnccalendar::TTMSFNCCalendarBeforeDrawHeaderEvent FOnBeforeDrawHeader;
	Fmx::Tmsfnccalendar::TTMSFNCCalendarBeforeDrawDayNumbersTextEvent FOnBeforeDrawDayNumbersText;
	Fmx::Tmsfnccalendar::TTMSFNCCalendarBeforeDrawFooterTextEvent FOnBeforeDrawFooterText;
	Fmx::Tmsfnccalendar::TTMSFNCCalendarBeforeDrawLinesEvent FOnBeforeDrawLines;
	Fmx::Tmsfnccalendar::TTMSFNCCalendarAfterDrawDayNamesEvent FOnAfterDrawDayNames;
	Fmx::Tmsfnccalendar::TTMSFNCCalendarAfterDrawWeekNumbersEvent FOnAfterDrawWeekNumbers;
	Fmx::Tmsfnccalendar::TTMSFNCCalendarAfterDrawHeaderTextEvent FOnAfterDrawHeaderText;
	Fmx::Tmsfnccalendar::TTMSFNCCalendarBeforeDrawArrowLeftEvent FOnBeforeDrawArrowLeft;
	Fmx::Tmsfnccalendar::TTMSFNCCalendarBeforeDrawDayNumbersEvent FOnBeforeDrawDayNumbers;
	Fmx::Tmsfnccalendar::TTMSFNCCalendarBeforeDrawFooterEvent FOnBeforeDrawFooter;
	Fmx::Tmsfnccalendar::TTMSFNCCalendarBeforeDrawBadgeEvent FOnBeforeDrawBadge;
	Fmx::Tmsfnccalendar::TTMSFNCCalendarAfterDrawHeaderEvent FOnAfterDrawHeader;
	Fmx::Tmsfnccalendar::TTMSFNCCalendarBeforeDrawArrowRightEvent FOnBeforeDrawArrowRight;
	Fmx::Tmsfnccalendar::TTMSFNCCalendarAfterDrawDayNumbersTextEvent FOnAfterDrawDayNumbersText;
	Fmx::Tmsfnccalendar::TTMSFNCCalendarBeforeDrawDayNamesTextEvent FOnBeforeDrawDayNamesText;
	Fmx::Tmsfnccalendar::TTMSFNCCalendarBeforeDrawWeekNumbersTextEvent FOnBeforeDrawWeekNumbersText;
	Fmx::Tmsfnccalendar::TTMSFNCCalendarAfterDrawFooterTextEvent FOnAfterDrawFooterText;
	Fmx::Tmsfnccalendar::TTMSFNCCalendarAfterDrawLinesEvent FOnAfterDrawLines;
	Fmx::Tmsfnccalendar::TTMSFNCCalendarAfterDrawArrowLeftEvent FOnAfterDrawArrowLeft;
	Fmx::Tmsfnccalendar::TTMSFNCCalendarAfterDrawDayNumbersEvent FOnAfterDrawDayNumbers;
	Fmx::Tmsfnccalendar::TTMSFNCCalendarBeforeDrawDayNamesEvent FOnBeforeDrawDayNames;
	Fmx::Tmsfnccalendar::TTMSFNCCalendarBeforeDrawWeekNumbersEvent FOnBeforeDrawWeekNumbers;
	Fmx::Tmsfnccalendar::TTMSFNCCalendarAfterDrawFooterEvent FOnAfterDrawFooter;
	Fmx::Tmsfnccalendar::TTMSFNCCalendarBeforeDrawHeaderTextEvent FOnBeforeDrawHeaderText;
	Fmx::Tmsfnccalendar::TTMSFNCCalendarYearChangedEvent FOnYearChanged;
	Fmx::Tmsfnccalendar::TTMSFNCCalendarCustomArrowDrawEvent FOnCustomArrowDraw;
	Fmx::Tmsfnccalendar::TTMSFNCCalendarMonthChangedEvent FOnMonthChanged;
	Fmx::Tmsfnccalendar::TTMSFNCCalendarSelectedMultiDateEvent FOnSelectMultiDate;
	Fmx::Tmsfnccalendar::TTMSFNCCalendarBeforeSelectDateEvent FOnBeforeSelectDate;
	Fmx::Tmsfnccalendar::TTMSFNCCalendarCustomNavigationEvent FOnCustomNavigation;
	bool FAllowNumericNullValue;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FFont;
	TTMSFNCCustomDatePickerValidateEvent FOnValidate;
	void __fastcall SetSelectedDate(const System::TDate Value);
	void __fastcall SetEvents(Fmx::Tmsfnccalendar::TTMSFNCCalendarEvents* const Value);
	void __fastcall SetWeekNumberAppearance(Fmx::Tmsfnccalendar::TTMSFNCCalendarWeekNumberAppearance* const Value);
	void __fastcall SetDateAppearance(Fmx::Tmsfnccalendar::TTMSFNCCalendarDateAppearance* const Value);
	void __fastcall SetDayNameAppearance(Fmx::Tmsfnccalendar::TTMSFNCCalendarDayNameAppearance* const Value);
	void __fastcall SetLineAppearance(Fmx::Tmsfnccalendar::TTMSFNCCalendarLineAppearance* const Value);
	void __fastcall SetInteraction(TTMSFNCDatePickerInteraction* const Value);
	void __fastcall SetMaxDate(const System::TDate Value);
	void __fastcall SetMinDate(const System::TDate Value);
	void __fastcall SetFirstDay(const int Value);
	void __fastcall SetHeader(Fmx::Tmsfnccalendar::TTMSFNCCalendarHeader* const Value);
	void __fastcall SetFooter(Fmx::Tmsfnccalendar::TTMSFNCCalendarFooter* const Value);
	void __fastcall SetCalendarFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetCalendarStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetBitmapContainer(Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* const Value);
	void __fastcall SetBadgeSize(const int Value);
	void __fastcall SetDay(const int Value);
	void __fastcall SetMonth(const int Value);
	void __fastcall SetYear(const int Value);
	void __fastcall SetAllowNumericNullValue(const bool Value);
	System::TDate __fastcall GetSelectedDate();
	Fmx::Tmsfnccalendar::TTMSFNCCalendarEvents* __fastcall GetEvents();
	Fmx::Tmsfnccalendar::TTMSFNCCalendarWeekNumberAppearance* __fastcall GetWeekNumberAppearance();
	Fmx::Tmsfnccalendar::TTMSFNCCalendarDateAppearance* __fastcall GetDateAppearance();
	Fmx::Tmsfnccalendar::TTMSFNCCalendarDayNameAppearance* __fastcall GetDayNameAppearance();
	Fmx::Tmsfnccalendar::TTMSFNCCalendarLineAppearance* __fastcall GetLineAppearance();
	System::TDate __fastcall GetMaxDate();
	System::TDate __fastcall GetMinDate();
	int __fastcall GetFirstDay();
	Fmx::Tmsfnccalendar::TTMSFNCCalendarFooter* __fastcall GetFooter();
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* __fastcall GetCalendarFill();
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* __fastcall GetCalendarStroke();
	Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* __fastcall GetBitmapContainer();
	int __fastcall GetBadgeSize();
	int __fastcall GetDay();
	int __fastcall GetMonth();
	int __fastcall GetYear();
	HIDESBASE void __fastcall SetFnt(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	
protected:
	virtual void __fastcall ChangeDPIScale(int M, int D);
	virtual void __fastcall DoDateSelected();
	virtual void __fastcall DoValidate();
	virtual void __fastcall DoEditExit(System::TObject* Sender);
	virtual void __fastcall Loaded();
	void __fastcall FontChange(System::TObject* Sender);
	virtual void __fastcall InitializePopup();
	virtual void __fastcall ApplyStyle();
	virtual void __fastcall ResetToDefaultStyle();
	virtual void __fastcall SetAdaptToStyle(const bool Value);
	virtual void __fastcall DrawContent(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	virtual void __fastcall SelectFirstValue();
	virtual void __fastcall SelectLastValue();
	virtual void __fastcall SelectNextValue();
	virtual void __fastcall SelectPreviousValue();
	virtual void __fastcall EditUp();
	virtual void __fastcall EditDown();
	virtual void __fastcall HandleKeyDown(System::Word &Key, System::Classes::TShiftState Shift);
	virtual void __fastcall SetEditable(const bool Value);
	virtual void __fastcall UpdateEditText(System::UnicodeString AText);
	virtual void __fastcall DateSelected(System::TObject* Sender, System::TDate ADate);
	virtual void __fastcall DoBeforeDrawHeader(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoAfterDrawHeader(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	virtual void __fastcall DoBeforeDrawHeaderText(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, System::UnicodeString AText, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign AHorizontalTextAlign, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign AVerticalTextAlign, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoAfterDrawHeaderText(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, System::UnicodeString AText, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign AHorizontalTextAlign, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign AVerticalTextAlign);
	virtual void __fastcall DoBeforeDrawFooter(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoAfterDrawFooter(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	virtual void __fastcall DoBeforeDrawFooterText(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, System::UnicodeString AText, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign AHorizontalTextAlign, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign AVerticalTextAlign, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoAfterDrawFooterText(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, System::UnicodeString AText, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign AHorizontalTextAlign, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign AVerticalTextAlign);
	virtual void __fastcall DoBeforeDrawDayNames(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoAfterDrawDayNames(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	virtual void __fastcall DoBeforeDrawDayNamesText(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, System::UnicodeString AText, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign AHorizontalTextAlign, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign AVerticalTextAlign, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoAfterDrawDayNamesText(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, System::UnicodeString AText, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign AHorizontalTextAlign, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign AVerticalTextAlign);
	virtual void __fastcall DoBeforeDrawDayNumbers(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, System::TDate ADate, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoAfterDrawDayNumbers(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, System::TDate ADate);
	virtual void __fastcall DoBeforeDrawDayNumbersText(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, System::UnicodeString AText, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign AHorizontalTextAlign, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign AVerticalTextAlign, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoAfterDrawDayNumbersText(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, System::UnicodeString AText, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign AHorizontalTextAlign, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign AVerticalTextAlign);
	virtual void __fastcall DoBeforeDrawLines(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoAfterDrawLines(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics);
	virtual void __fastcall DoBeforeDrawWeekNumbers(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoAfterDrawWeekNumbers(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	virtual void __fastcall DoBeforeDrawWeekNumbersText(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, System::UnicodeString AText, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign AHorizontalTextAlign, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign AVerticalTextAlign, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoAfterDrawWeekNumbersText(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, System::UnicodeString AText, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign AHorizontalTextAlign, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign AVerticalTextAlign);
	virtual void __fastcall DoBeforeDrawBadge(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, Fmx::Tmsfnccalendar::TTMSFNCCalendarEventItem* ABadge, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoAfterDrawBadge(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, Fmx::Tmsfnccalendar::TTMSFNCCalendarEventItem* ABadge);
	virtual void __fastcall DoBeforeDrawArrowLeft(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &AArrowRect, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoAfterDrawArrowLeft(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &AArrowRect);
	virtual void __fastcall DoBeforeDrawArrowRight(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &AArrowRect, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoAfterDrawArrowRight(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &AArrowRect);
	virtual void __fastcall DoBeforeSelectDate(System::TObject* Sender, System::TDate ADate);
	virtual void __fastcall DoSelectMultiDate(System::TObject* Sender, System::TDate AStartDate, System::TDate AEndDate);
	virtual void __fastcall DoChangeYear(System::TObject* Sender, int AYear);
	virtual void __fastcall DoChangeMonth(System::TObject* Sender, int AMonth);
	virtual void __fastcall DoCustomNavigation(System::TObject* Sender, System::TDate ADate, System::TDate AFocusedDate, bool ADirection);
	virtual void __fastcall DoCustomArrowDraw(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, bool ADirection);
	virtual bool __fastcall IsAppearanceProperty(System::TObject* AObject, System::UnicodeString APropertyName, System::TTypeKind APropertyType);
	virtual System::UnicodeString __fastcall GetVersion();
	virtual Fmx::Tmsfnccustomselector::TTMSFNCCustomSelector* __fastcall CreateSelector();
	virtual Fmx::Controls::TControl* __fastcall GetFocusedControl();
	__property bool AllowNumericNullValue = {read=FAllowNumericNullValue, write=SetAllowNumericNullValue, default=1};
	__property bool CloseOnSelection = {read=FCloseOnSelection, write=FCloseOnSelection, default=1};
	__property TTMSFNCCustomDatePickerDateSelected OnDateSelected = {read=FOnDateSelected, write=FOnDateSelected};
	__property System::TDate SelectedDate = {read=GetSelectedDate, write=SetSelectedDate};
	__property System::Classes::TNotifyEvent OnCustomize = {read=FOnCustomize, write=FOnCustomize};
	__property Fmx::Tmsfnccalendar::TTMSFNCCalendarWeekNumberAppearance* WeekNumberAppearance = {read=GetWeekNumberAppearance, write=SetWeekNumberAppearance};
	__property Fmx::Tmsfnccalendar::TTMSFNCCalendarDayNameAppearance* DayNameAppearance = {read=GetDayNameAppearance, write=SetDayNameAppearance};
	__property Fmx::Tmsfnccalendar::TTMSFNCCalendarDateAppearance* DateAppearance = {read=GetDateAppearance, write=SetDateAppearance};
	__property Fmx::Tmsfnccalendar::TTMSFNCCalendarLineAppearance* LineAppearance = {read=GetLineAppearance, write=SetLineAppearance};
	__property TTMSFNCDatePickerInteraction* Interaction = {read=FInteraction, write=SetInteraction};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* CalendarFill = {read=GetCalendarFill, write=SetCalendarFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* CalendarStroke = {read=GetCalendarStroke, write=SetCalendarStroke};
	__property Fmx::Tmsfnccalendar::TTMSFNCCalendarEvents* Events = {read=GetEvents, write=SetEvents};
	__property int BadgeSize = {read=GetBadgeSize, write=SetBadgeSize, nodefault};
	__property int FirstDay = {read=GetFirstDay, write=SetFirstDay, nodefault};
	__property Fmx::Tmsfnccalendar::TTMSFNCCalendarHeader* Header = {read=FHeader, write=SetHeader};
	__property Fmx::Tmsfnccalendar::TTMSFNCCalendarFooter* Footer = {read=GetFooter, write=SetFooter};
	__property System::TDate MaxDate = {read=GetMaxDate, write=SetMaxDate};
	__property System::TDate MinDate = {read=GetMinDate, write=SetMinDate};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* Font = {read=FFont, write=SetFnt};
	__property Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* BitmapContainer = {read=GetBitmapContainer, write=SetBitmapContainer};
	__property Fmx::Tmsfnccalendar::TTMSFNCCalendarBeforeDrawHeaderEvent OnBeforeDrawHeader = {read=FOnBeforeDrawHeader, write=FOnBeforeDrawHeader};
	__property Fmx::Tmsfnccalendar::TTMSFNCCalendarAfterDrawHeaderEvent OnAfterDrawHeader = {read=FOnAfterDrawHeader, write=FOnAfterDrawHeader};
	__property Fmx::Tmsfnccalendar::TTMSFNCCalendarBeforeDrawHeaderTextEvent OnBeforeDrawHeaderText = {read=FOnBeforeDrawHeaderText, write=FOnBeforeDrawHeaderText};
	__property Fmx::Tmsfnccalendar::TTMSFNCCalendarAfterDrawHeaderTextEvent OnAfterDrawHeaderText = {read=FOnAfterDrawHeaderText, write=FOnAfterDrawHeaderText};
	__property Fmx::Tmsfnccalendar::TTMSFNCCalendarBeforeDrawFooterEvent OnBeforeDrawFooter = {read=FOnBeforeDrawFooter, write=FOnBeforeDrawFooter};
	__property Fmx::Tmsfnccalendar::TTMSFNCCalendarAfterDrawFooterEvent OnAfterDrawFooter = {read=FOnAfterDrawFooter, write=FOnAfterDrawFooter};
	__property Fmx::Tmsfnccalendar::TTMSFNCCalendarBeforeDrawFooterTextEvent OnBeforeDrawFooterText = {read=FOnBeforeDrawFooterText, write=FOnBeforeDrawFooterText};
	__property Fmx::Tmsfnccalendar::TTMSFNCCalendarAfterDrawFooterTextEvent OnAfterDrawFooterText = {read=FOnAfterDrawFooterText, write=FOnAfterDrawFooterText};
	__property Fmx::Tmsfnccalendar::TTMSFNCCalendarBeforeDrawDayNamesEvent OnBeforeDrawDayNames = {read=FOnBeforeDrawDayNames, write=FOnBeforeDrawDayNames};
	__property Fmx::Tmsfnccalendar::TTMSFNCCalendarAfterDrawDayNamesEvent OnAfterDrawDayNames = {read=FOnAfterDrawDayNames, write=FOnAfterDrawDayNames};
	__property Fmx::Tmsfnccalendar::TTMSFNCCalendarBeforeDrawDayNamesTextEvent OnBeforeDrawDayNamesText = {read=FOnBeforeDrawDayNamesText, write=FOnBeforeDrawDayNamesText};
	__property Fmx::Tmsfnccalendar::TTMSFNCCalendarAfterDrawDayNamesTextEvent OnAfterDrawDayNamesText = {read=FOnAfterDrawDayNamesText, write=FOnAfterDrawDayNamesText};
	__property Fmx::Tmsfnccalendar::TTMSFNCCalendarBeforeDrawDayNumbersEvent OnBeforeDrawDayNumbers = {read=FOnBeforeDrawDayNumbers, write=FOnBeforeDrawDayNumbers};
	__property Fmx::Tmsfnccalendar::TTMSFNCCalendarAfterDrawDayNumbersEvent OnAfterDrawDayNumbers = {read=FOnAfterDrawDayNumbers, write=FOnAfterDrawDayNumbers};
	__property Fmx::Tmsfnccalendar::TTMSFNCCalendarBeforeDrawDayNumbersTextEvent OnBeforeDrawDayNumbersText = {read=FOnBeforeDrawDayNumbersText, write=FOnBeforeDrawDayNumbersText};
	__property Fmx::Tmsfnccalendar::TTMSFNCCalendarAfterDrawDayNumbersTextEvent OnAfterDrawDayNumbersText = {read=FOnAfterDrawDayNumbersText, write=FOnAfterDrawDayNumbersText};
	__property Fmx::Tmsfnccalendar::TTMSFNCCalendarBeforeDrawLinesEvent OnBeforeDrawLines = {read=FOnBeforeDrawLines, write=FOnBeforeDrawLines};
	__property Fmx::Tmsfnccalendar::TTMSFNCCalendarAfterDrawLinesEvent OnAfterDrawLines = {read=FOnAfterDrawLines, write=FOnAfterDrawLines};
	__property Fmx::Tmsfnccalendar::TTMSFNCCalendarBeforeDrawWeekNumbersEvent OnBeforeDrawWeekNumbers = {read=FOnBeforeDrawWeekNumbers, write=FOnBeforeDrawWeekNumbers};
	__property Fmx::Tmsfnccalendar::TTMSFNCCalendarAfterDrawWeekNumbersEvent OnAfterDrawWeekNumbers = {read=FOnAfterDrawWeekNumbers, write=FOnAfterDrawWeekNumbers};
	__property Fmx::Tmsfnccalendar::TTMSFNCCalendarBeforeDrawWeekNumbersTextEvent OnBeforeDrawWeekNumbersText = {read=FOnBeforeDrawWeekNumbersText, write=FOnBeforeDrawWeekNumbersText};
	__property Fmx::Tmsfnccalendar::TTMSFNCCalendarAfterDrawWeekNumbersTextEvent OnAfterDrawWeekNumbersText = {read=FOnAfterDrawWeekNumbersText, write=FOnAfterDrawWeekNumbersText};
	__property Fmx::Tmsfnccalendar::TTMSFNCCalendarBeforeDrawBadgeEvent OnBeforeDrawBadge = {read=FOnBeforeDrawBadge, write=FOnBeforeDrawBadge};
	__property Fmx::Tmsfnccalendar::TTMSFNCCalendarAfterDrawBadgeEvent OnAfterDrawBadge = {read=FOnAfterDrawBadge, write=FOnAfterDrawBadge};
	__property Fmx::Tmsfnccalendar::TTMSFNCCalendarBeforeDrawArrowLeftEvent OnBeforeDrawArrowLeft = {read=FOnBeforeDrawArrowLeft, write=FOnBeforeDrawArrowLeft};
	__property Fmx::Tmsfnccalendar::TTMSFNCCalendarAfterDrawArrowLeftEvent OnAfterDrawArrowLeft = {read=FOnAfterDrawArrowLeft, write=FOnAfterDrawArrowLeft};
	__property Fmx::Tmsfnccalendar::TTMSFNCCalendarBeforeDrawArrowRightEvent OnBeforeDrawArrowRight = {read=FOnBeforeDrawArrowRight, write=FOnBeforeDrawArrowRight};
	__property Fmx::Tmsfnccalendar::TTMSFNCCalendarAfterDrawArrowRightEvent OnAfterDrawArrowRight = {read=FOnAfterDrawArrowRight, write=FOnAfterDrawArrowRight};
	__property Fmx::Tmsfnccalendar::TTMSFNCCalendarBeforeSelectDateEvent OnBeforeSelectDate = {read=FOnBeforeSelectDate, write=FOnBeforeSelectDate};
	__property Fmx::Tmsfnccalendar::TTMSFNCCalendarSelectedMultiDateEvent OnSelectMultiDate = {read=FOnSelectMultiDate, write=FOnSelectMultiDate};
	__property Fmx::Tmsfnccalendar::TTMSFNCCalendarYearChangedEvent OnYearChanged = {read=FOnYearChanged, write=FOnYearChanged};
	__property Fmx::Tmsfnccalendar::TTMSFNCCalendarMonthChangedEvent OnMonthChanged = {read=FOnMonthChanged, write=FOnMonthChanged};
	__property Fmx::Tmsfnccalendar::TTMSFNCCalendarCustomNavigationEvent OnCustomNavigation = {read=FOnCustomNavigation, write=FOnCustomNavigation};
	__property Fmx::Tmsfnccalendar::TTMSFNCCalendarCustomArrowDrawEvent OnCustomArrowDraw = {read=FOnCustomArrowDraw, write=FOnCustomArrowDraw};
	__property TTMSFNCCustomDatePickerValidateEvent OnValidate = {read=FOnValidate, write=FOnValidate};
	
public:
	__fastcall virtual TTMSFNCCustomDatePicker(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCCustomDatePicker();
	void __fastcall Clear();
	__property int Day = {read=GetDay, write=SetDay, nodefault};
	__property int Month = {read=GetMonth, write=SetMonth, nodefault};
	__property int Year = {read=GetYear, write=SetYear, nodefault};
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


class PASCALIMPLEMENTATION TTMSFNCDatePicker : public TTMSFNCCustomDatePicker
{
	typedef TTMSFNCCustomDatePicker inherited;
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	
__published:
	__property AllowNumericNullValue = {default=1};
	__property BitmapContainer;
	__property Editable = {default=0};
	__property FirstDay;
	__property MaxDate = {default=0};
	__property MinDate = {default=0};
	__property Events;
	__property BadgeSize;
	__property Header;
	__property Footer;
	__property Font;
	__property Interaction;
	__property DropDownWidth;
	__property DropDownHeight;
	__property CloseOnSelection = {default=1};
	__property OnDateSelected;
	__property SelectedDate = {default=0};
	__property WeekNumberAppearance;
	__property DateAppearance;
	__property DayNameAppearance;
	__property LineAppearance;
	__property CalendarFill;
	__property CalendarStroke;
	__property OnCustomize;
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
	__property OnSelectMultiDate;
	__property OnYearChanged;
	__property OnMonthChanged;
	__property OnCustomNavigation;
	__property OnCustomArrowDraw;
	__property OnValidate;
public:
	/* TTMSFNCCustomDatePicker.Create */ inline __fastcall virtual TTMSFNCDatePicker(System::Classes::TComponent* AOwner) : TTMSFNCCustomDatePicker(AOwner) { }
	/* TTMSFNCCustomDatePicker.Destroy */ inline __fastcall virtual ~TTMSFNCDatePicker() { }
	
};


//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x2);
static constexpr System::Int8 BLD_VER = System::Int8(0x1);
}	/* namespace Tmsfncdatepicker */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCDATEPICKER)
using namespace Fmx::Tmsfncdatepicker;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncdatepickerHPP
