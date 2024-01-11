// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCDigitalTimePicker.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncdigitaltimepickerHPP
#define Fmx_TmsfncdigitaltimepickerHPP

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
#include <FMX.TMSFNCCustomPicker.hpp>
#include <FMX.TMSFNCCustomSelector.hpp>
#include <FMX.TMSFNCGraphics.hpp>
#include <FMX.TMSFNCDigitalTimeSelector.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.TMSFNCUtils.hpp>
#include <FMX.StdCtrls.hpp>
#include <FMX.TMSFNCGraphicsTypes.hpp>
#include <FMX.TMSFNCCustomControl.hpp>
#include <FMX.Controls.hpp>
#include <System.Generics.Collections.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncdigitaltimepicker
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCCustomDigitalTimePicker;
class DELPHICLASS TTMSFNCDigitalTimePicker;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TTMSFNCCustomDigitalTimePicker : public Fmx::Tmsfnccustompicker::TTMSFNCDefaultPicker
{
	typedef Fmx::Tmsfnccustompicker::TTMSFNCDefaultPicker inherited;
	
private:
	System::TTime FPrevSelTime;
	bool FCloseOnSelection;
	Fmx::Tmsfncdigitaltimeselector::TTMSFNCDigitalTimeSelector* FTimeSelector;
	Fmx::Tmsfncdigitaltimeselector::TTMSFNCCustomDigitalTimeSelectorTimeDeselected FOnTimeDeselected;
	Fmx::Tmsfncdigitaltimeselector::TTMSFNCCustomDigitalTimeSelectorTimeSelected FOnTimeSelected;
	Fmx::Tmsfncdigitaltimeselector::TTMSFNCCustomDigitalTimeSelectorAfterDrawArrowEvent FOnAfterDrawArrow;
	Fmx::Tmsfncdigitaltimeselector::TTMSFNCCustomDigitalTimeSelectorBeforeDrawHeaderEvent FOnBeforeDrawHeader;
	Fmx::Tmsfncdigitaltimeselector::TTMSFNCCustomDigitalTimeSelectorAfterDrawHeaderTextEvent FOnAfterDrawHeaderText;
	Fmx::Tmsfncdigitaltimeselector::TTMSFNCCustomDigitalTimeSelectorBeforeDrawArrowEvent FOnBeforeDrawArrow;
	Fmx::Tmsfncdigitaltimeselector::TTMSFNCCustomDigitalTimeSelectorAfterDrawHeaderEvent FOnAfterDrawHeader;
	Fmx::Tmsfncdigitaltimeselector::TTMSFNCCustomDigitalTimeSelectorBeforeDrawHeaderTextEvent FOnBeforeDrawHeaderText;
	bool FAllowNumericNullValue;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FFont;
	Fmx::Tmsfnccustomselector::TTMSFNCCustomSelectorItemBeforeDrawText FOnItemBeforeDrawText;
	Fmx::Tmsfnccustomselector::TTMSFNCCustomSelectorItemBeforeDrawContent FOnItemBeforeDrawContent;
	Fmx::Tmsfnccustomselector::TTMSFNCCustomSelectorItemAfterDrawBackground FOnItemAfterDrawBackground;
	Fmx::Tmsfnccustomselector::TTMSFNCCustomSelectorItemAfterDrawText FOnItemAfterDrawText;
	Fmx::Tmsfnccustomselector::TTMSFNCCustomSelectorItemAfterDrawContent FOnItemAfterDrawContent;
	Fmx::Tmsfnccustomselector::TTMSFNCCustomSelectorItemBeforeDrawBackground FOnItemBeforeDrawBackground;
	void __fastcall SetHeaderSize(const int Value);
	HIDESBASE void __fastcall SetItems(Fmx::Tmsfncdigitaltimeselector::TTMSFNCDigitalTimeSelectorItems* const Value);
	void __fastcall SetSelectedTime(const System::TTime Value);
	void __fastcall SetEndTime(const System::TTime Value);
	void __fastcall SetIntervalUnit(const Fmx::Tmsfncdigitaltimeselector::TTMSFNCDigitalTimeSelectorIntervalUnit Value);
	void __fastcall SetStartTime(const System::TTime Value);
	void __fastcall SetTimeFormat(const System::UnicodeString Value);
	void __fastcall SetTimeInterval(const int Value);
	void __fastcall SetAllowNumericNullValue(const bool Value);
	HIDESBASE Fmx::Tmsfncdigitaltimeselector::TTMSFNCDigitalTimeSelectorItems* __fastcall GetItems();
	System::TTime __fastcall GetSelectedTime();
	System::TTime __fastcall GetEndTime();
	Fmx::Tmsfncdigitaltimeselector::TTMSFNCDigitalTimeSelectorIntervalUnit __fastcall GetIntervalUnit();
	System::TTime __fastcall GetStartTime();
	System::UnicodeString __fastcall GetTimeFormat();
	int __fastcall GetTimeInterval();
	bool __fastcall IsTimeFormatStored();
	bool __fastcall IsIntervalUnitStored();
	int __fastcall GetHeaderSize();
	HIDESBASE void __fastcall SetFnt(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	
protected:
	virtual void __fastcall Loaded();
	virtual void __fastcall ChangeDPIScale(int M, int D);
	void __fastcall FontChange(System::TObject* Sender);
	virtual void __fastcall SetEditable(const bool Value);
	virtual void __fastcall UpdateEditText(System::UnicodeString AText);
	virtual void __fastcall InitializePopup();
	virtual void __fastcall DoTimeSelected();
	virtual void __fastcall SetGraphicColors();
	void __fastcall TimeSelected(System::TObject* Sender, System::TTime ATime);
	void __fastcall TimeDeselected(System::TObject* Sender, System::TTime ATime);
	virtual void __fastcall DoBeforeDrawHeader(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARectF, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoAfterDrawHeader(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARectF);
	virtual void __fastcall DoBeforeDrawHeaderText(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARectF, System::UnicodeString AText, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoAfterDrawHeaderText(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARectF, System::UnicodeString AText);
	virtual void __fastcall DoBeforeDrawArrow(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARectF, bool ALeft, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoAfterDrawArrow(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARectF, bool ALeft);
	virtual void __fastcall DoBeforeDrawItemBackground(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AItemIndex, bool &ADefaultDraw);
	virtual void __fastcall DoAfterDrawItemBackground(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AItemIndex);
	virtual void __fastcall DoBeforeDrawItemContent(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AItemIndex, bool &ADefaultDraw);
	virtual void __fastcall DoAfterDrawItemContent(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AItemIndex);
	virtual void __fastcall DoBeforeDrawItemText(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AItemIndex, System::UnicodeString &AText, bool &ADefaultDraw);
	virtual void __fastcall DoAfterDrawItemText(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AItemIndex, System::UnicodeString AText);
	virtual void __fastcall DrawContent(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	virtual void __fastcall SelectFirstValue();
	virtual void __fastcall SelectLastValue();
	virtual void __fastcall SelectNextValue();
	virtual void __fastcall SelectPreviousValue();
	virtual void __fastcall EditUp();
	virtual void __fastcall EditDown();
	virtual System::UnicodeString __fastcall GetVersion();
	virtual Fmx::Tmsfnccustomselector::TTMSFNCCustomSelector* __fastcall CreateSelector();
	__property bool AllowNumericNullValue = {read=FAllowNumericNullValue, write=SetAllowNumericNullValue, default=1};
	__property System::TTime SelectedTime = {read=GetSelectedTime, write=SetSelectedTime};
	__property Fmx::Tmsfncdigitaltimeselector::TTMSFNCDigitalTimeSelectorItems* Items = {read=GetItems, write=SetItems};
	__property bool CloseOnSelection = {read=FCloseOnSelection, write=FCloseOnSelection, default=1};
	__property System::UnicodeString TimeFormat = {read=GetTimeFormat, write=SetTimeFormat, stored=IsTimeFormatStored};
	__property int TimeInterval = {read=GetTimeInterval, write=SetTimeInterval, default=5};
	__property Fmx::Tmsfncdigitaltimeselector::TTMSFNCDigitalTimeSelectorIntervalUnit IntervalUnit = {read=GetIntervalUnit, write=SetIntervalUnit, stored=IsIntervalUnitStored, nodefault};
	__property System::TTime StartTime = {read=GetStartTime, write=SetStartTime};
	__property System::TTime EndTime = {read=GetEndTime, write=SetEndTime};
	__property int HeaderSize = {read=GetHeaderSize, write=SetHeaderSize, nodefault};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* Font = {read=FFont, write=SetFnt};
	__property Fmx::Tmsfncdigitaltimeselector::TTMSFNCCustomDigitalTimeSelectorTimeSelected OnTimeSelected = {read=FOnTimeSelected, write=FOnTimeSelected};
	__property Fmx::Tmsfncdigitaltimeselector::TTMSFNCCustomDigitalTimeSelectorTimeDeselected OnTimeDeselected = {read=FOnTimeDeselected, write=FOnTimeDeselected};
	__property Fmx::Tmsfncdigitaltimeselector::TTMSFNCCustomDigitalTimeSelectorBeforeDrawHeaderEvent OnBeforeDrawHeader = {read=FOnBeforeDrawHeader, write=FOnBeforeDrawHeader};
	__property Fmx::Tmsfncdigitaltimeselector::TTMSFNCCustomDigitalTimeSelectorAfterDrawHeaderEvent OnAfterDrawHeader = {read=FOnAfterDrawHeader, write=FOnAfterDrawHeader};
	__property Fmx::Tmsfncdigitaltimeselector::TTMSFNCCustomDigitalTimeSelectorBeforeDrawHeaderTextEvent OnBeforeDrawHeaderText = {read=FOnBeforeDrawHeaderText, write=FOnBeforeDrawHeaderText};
	__property Fmx::Tmsfncdigitaltimeselector::TTMSFNCCustomDigitalTimeSelectorAfterDrawHeaderTextEvent OnAfterDrawHeaderText = {read=FOnAfterDrawHeaderText, write=FOnAfterDrawHeaderText};
	__property Fmx::Tmsfncdigitaltimeselector::TTMSFNCCustomDigitalTimeSelectorBeforeDrawArrowEvent OnBeforeDrawArrow = {read=FOnBeforeDrawArrow, write=FOnBeforeDrawArrow};
	__property Fmx::Tmsfncdigitaltimeselector::TTMSFNCCustomDigitalTimeSelectorAfterDrawArrowEvent OnAfterDrawArrow = {read=FOnAfterDrawArrow, write=FOnAfterDrawArrow};
	__property Fmx::Tmsfnccustomselector::TTMSFNCCustomSelectorItemBeforeDrawBackground OnItemBeforeDrawBackground = {read=FOnItemBeforeDrawBackground, write=FOnItemBeforeDrawBackground};
	__property Fmx::Tmsfnccustomselector::TTMSFNCCustomSelectorItemAfterDrawBackground OnItemAfterDrawBackground = {read=FOnItemAfterDrawBackground, write=FOnItemAfterDrawBackground};
	__property Fmx::Tmsfnccustomselector::TTMSFNCCustomSelectorItemBeforeDrawContent OnItemBeforeDrawContent = {read=FOnItemBeforeDrawContent, write=FOnItemBeforeDrawContent};
	__property Fmx::Tmsfnccustomselector::TTMSFNCCustomSelectorItemAfterDrawContent OnItemAfterDrawContent = {read=FOnItemAfterDrawContent, write=FOnItemAfterDrawContent};
	__property Fmx::Tmsfnccustomselector::TTMSFNCCustomSelectorItemBeforeDrawText OnItemBeforeDrawText = {read=FOnItemBeforeDrawText, write=FOnItemBeforeDrawText};
	__property Fmx::Tmsfnccustomselector::TTMSFNCCustomSelectorItemAfterDrawText OnItemAfterDrawText = {read=FOnItemAfterDrawText, write=FOnItemAfterDrawText};
	
public:
	__fastcall virtual TTMSFNCCustomDigitalTimePicker(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCCustomDigitalTimePicker();
	void __fastcall Clear();
	__property Fmx::Tmsfncdigitaltimeselector::TTMSFNCDigitalTimeSelector* TimeSelector = {read=FTimeSelector};
};


class PASCALIMPLEMENTATION TTMSFNCDigitalTimePicker : public TTMSFNCCustomDigitalTimePicker
{
	typedef TTMSFNCCustomDigitalTimePicker inherited;
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	
__published:
	__property AllowNumericNullValue = {default=1};
	__property Editable = {default=0};
	__property DropDownWidth;
	__property DropDownHeight;
	__property Appearance;
	__property Rows = {default=4};
	__property Columns = {default=3};
	__property CloseOnSelection = {default=1};
	__property Font;
	__property SelectedTime = {default=0};
	__property TimeFormat;
	__property TimeInterval = {default=5};
	__property IntervalUnit;
	__property StartTime = {default=0};
	__property EndTime = {default=0};
	__property HeaderSize;
	__property OnTimeSelected;
	__property OnTimeDeselected;
	__property OnBeforeDrawHeader;
	__property OnAfterDrawHeader;
	__property OnBeforeDrawHeaderText;
	__property OnAfterDrawHeaderText;
	__property OnBeforeDrawArrow;
	__property OnAfterDrawArrow;
public:
	/* TTMSFNCCustomDigitalTimePicker.Create */ inline __fastcall virtual TTMSFNCDigitalTimePicker(System::Classes::TComponent* AOwner) : TTMSFNCCustomDigitalTimePicker(AOwner) { }
	/* TTMSFNCCustomDigitalTimePicker.Destroy */ inline __fastcall virtual ~TTMSFNCDigitalTimePicker() { }
	
};


//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x3);
static constexpr System::Int8 BLD_VER = System::Int8(0x0);
}	/* namespace Tmsfncdigitaltimepicker */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCDIGITALTIMEPICKER)
using namespace Fmx::Tmsfncdigitaltimepicker;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncdigitaltimepickerHPP
