// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCDigitalTimeSelector.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncdigitaltimeselectorHPP
#define Fmx_TmsfncdigitaltimeselectorHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <System.Types.hpp>
#include <System.UITypes.hpp>
#include <FMX.TMSFNCCustomSelector.hpp>
#include <FMX.TMSFNCGraphics.hpp>
#include <FMX.TMSFNCGraphicsTypes.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.Controls.hpp>
#include <FMX.TMSFNCUtils.hpp>
#include <FMX.TMSFNCCustomControl.hpp>
#include <FMX.Types.hpp>
#include <System.Generics.Collections.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncdigitaltimeselector
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCDigitalTimeSelectorItem;
class DELPHICLASS TTMSFNCDigitalTimeSelectorItems;
class DELPHICLASS TTMSFNCCustomDigitalTimeSelector;
class DELPHICLASS TTMSFNCDigitalTimeSelector;
//-- type declarations -------------------------------------------------------
enum DECLSPEC_DENUM TTMSFNCDigitalTimeSelectorIntervalUnit : unsigned char { tsuMilliseconds, tsuSeconds, tsuMinutes, tsuHours };

class PASCALIMPLEMENTATION TTMSFNCDigitalTimeSelectorItem : public Fmx::Tmsfnccustomselector::TTMSFNCCustomSelectorItem
{
	typedef Fmx::Tmsfnccustomselector::TTMSFNCCustomSelectorItem inherited;
	
private:
	TTMSFNCCustomDigitalTimeSelector* FOwner;
	System::TTime FTime;
	void __fastcall SetTime(const System::TTime Value);
	bool __fastcall IsTimeStored();
	
public:
	__fastcall virtual TTMSFNCDigitalTimeSelectorItem(System::Classes::TCollection* ACollection);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property System::TTime Time = {read=FTime, write=SetTime, stored=IsTimeStored};
public:
	/* TTMSFNCCustomSelectorItem.Destroy */ inline __fastcall virtual ~TTMSFNCDigitalTimeSelectorItem() { }
	
};


#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCDigitalTimeSelectorItems : public Fmx::Tmsfnccustomselector::TTMSFNCCustomSelectorItems
{
	typedef Fmx::Tmsfnccustomselector::TTMSFNCCustomSelectorItems inherited;
	
public:
	TTMSFNCDigitalTimeSelectorItem* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCCustomDigitalTimeSelector* FOwner;
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCDigitalTimeSelectorItem* const Value);
	HIDESBASE TTMSFNCDigitalTimeSelectorItem* __fastcall GetItem(int Index);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall CreateItemClass();
	
public:
	__fastcall virtual TTMSFNCDigitalTimeSelectorItems(Fmx::Tmsfnccustomselector::TTMSFNCCustomSelector* AOwner);
	HIDESBASE TTMSFNCDigitalTimeSelectorItem* __fastcall Add();
	HIDESBASE TTMSFNCDigitalTimeSelectorItem* __fastcall Insert(int Index);
	__property TTMSFNCDigitalTimeSelectorItem* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCDigitalTimeSelectorItems() { }
	
};

#pragma pack(pop)

typedef void __fastcall (__closure *TTMSFNCCustomDigitalTimeSelectorTimeSelected)(System::TObject* Sender, System::TTime ATime);

typedef void __fastcall (__closure *TTMSFNCCustomDigitalTimeSelectorTimeDeselected)(System::TObject* Sender, System::TTime ATime);

typedef void __fastcall (__closure *TTMSFNCCustomDigitalTimeSelectorBeforeDrawHeaderEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARectF, bool &AAllow, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCCustomDigitalTimeSelectorAfterDrawHeaderEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARectF);

typedef void __fastcall (__closure *TTMSFNCCustomDigitalTimeSelectorBeforeDrawHeaderTextEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARectF, System::UnicodeString AText, bool &AAllow, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCCustomDigitalTimeSelectorAfterDrawHeaderTextEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARectF, System::UnicodeString AText);

typedef void __fastcall (__closure *TTMSFNCCustomDigitalTimeSelectorBeforeDrawArrowEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARectF, bool ALeft, bool &AAllow, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCCustomDigitalTimeSelectorAfterDrawArrowEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARectF, bool ALeft);

typedef void __fastcall (__closure *TTMSFNCCustomDigitalTimeSelectorNavigationEvent)(System::TObject* Sender, bool ALeft);

class PASCALIMPLEMENTATION TTMSFNCCustomDigitalTimeSelector : public Fmx::Tmsfnccustomselector::TTMSFNCDefaultSelector
{
	typedef Fmx::Tmsfnccustomselector::TTMSFNCDefaultSelector inherited;
	
private:
	System::TTime FStartTime;
	System::TTime FEndTime;
	System::TTime FFirst;
	System::TTime FLast;
	System::TTime FSelectedTime;
	int FTimeInterval;
	TTMSFNCDigitalTimeSelectorIntervalUnit FIntervalUnit;
	System::UnicodeString FTimeFormat;
	TTMSFNCCustomDigitalTimeSelectorTimeDeselected FOnTimeDeselected;
	TTMSFNCCustomDigitalTimeSelectorTimeSelected FOnTimeSelected;
	TTMSFNCCustomDigitalTimeSelectorAfterDrawArrowEvent FOnAfterDrawArrow;
	TTMSFNCCustomDigitalTimeSelectorBeforeDrawHeaderEvent FOnBeforeDrawHeader;
	TTMSFNCCustomDigitalTimeSelectorBeforeDrawArrowEvent FOnBeforeDrawArrow;
	TTMSFNCCustomDigitalTimeSelectorAfterDrawHeaderEvent FOnAfterDrawHeader;
	TTMSFNCCustomDigitalTimeSelectorAfterDrawHeaderTextEvent FOnAfterDrawHeaderText;
	TTMSFNCCustomDigitalTimeSelectorBeforeDrawHeaderTextEvent FOnBeforeDrawHeaderText;
	TTMSFNCCustomDigitalTimeSelectorNavigationEvent FOnNavigation;
	int FHeaderSize;
	HIDESBASE void __fastcall SetItems(TTMSFNCDigitalTimeSelectorItems* const Value);
	void __fastcall SetSelectedTime(const System::TTime Value);
	void __fastcall SetStartTime(const System::TTime Value);
	void __fastcall SetTimeInterval(const int Value);
	void __fastcall SetEndTime(const System::TTime Value);
	void __fastcall SetIntervalUnit(const TTMSFNCDigitalTimeSelectorIntervalUnit Value);
	void __fastcall SetTimeFormat(const System::UnicodeString Value);
	void __fastcall SetHeaderSize(const int Value);
	TTMSFNCDigitalTimeSelectorItems* __fastcall GetItems();
	bool __fastcall IsTimeFormatStored();
	
protected:
	virtual void __fastcall ChangeDPIScale(int M, int D);
	virtual void __fastcall DoItemSelected(int AItemIndex);
	virtual void __fastcall DoItemDeselected(int AItemIndex);
	virtual void __fastcall DoBeforeDrawHeader(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARectF, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoAfterDrawHeader(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARectF);
	virtual void __fastcall DoBeforeDrawHeaderText(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARectF, System::UnicodeString AText, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoAfterDrawHeaderText(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARectF, System::UnicodeString AText);
	virtual void __fastcall DoBeforeDrawArrow(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARectF, bool ALeft, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoAfterDrawArrow(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARectF, bool ALeft);
	virtual void __fastcall DoNavigation(bool ALeft);
	virtual void __fastcall Draw(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	void __fastcall DrawArrows(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics);
	virtual void __fastcall DrawItemText(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const Fmx::Tmsfnccustomselector::TTMSFNCCustomSelectorDisplayItem &ADisplayItem);
	virtual void __fastcall AddTimes();
	virtual void __fastcall CalculateTimes();
	virtual void __fastcall UpdateCalculations();
	virtual void __fastcall HandleMouseDown(System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall HandleMouseMove(System::Classes::TShiftState Shift, float X, float Y);
	virtual System::UnicodeString __fastcall GetVersion();
	virtual Fmx::Tmsfnccustomselector::TTMSFNCCustomSelectorItems* __fastcall CreateItemsCollection();
	virtual float __fastcall GetTopOffset();
	virtual System::Types::TRectF __fastcall GetArrowRect(bool ALeft);
	virtual void __fastcall ResetToDefaultStyle();
	__property int HeaderSize = {read=FHeaderSize, write=SetHeaderSize, default=24};
	__property System::TTime StartTime = {read=FStartTime, write=SetStartTime};
	__property System::TTime EndTime = {read=FEndTime, write=SetEndTime};
	__property int TimeInterval = {read=FTimeInterval, write=SetTimeInterval, default=5};
	__property TTMSFNCDigitalTimeSelectorIntervalUnit IntervalUnit = {read=FIntervalUnit, write=SetIntervalUnit, default=2};
	__property System::UnicodeString TimeFormat = {read=FTimeFormat, write=SetTimeFormat, stored=IsTimeFormatStored};
	__property TTMSFNCCustomDigitalTimeSelectorTimeSelected OnTimeSelected = {read=FOnTimeSelected, write=FOnTimeSelected};
	__property TTMSFNCCustomDigitalTimeSelectorTimeDeselected OnTimeDeselected = {read=FOnTimeDeselected, write=FOnTimeDeselected};
	__property TTMSFNCCustomDigitalTimeSelectorBeforeDrawHeaderEvent OnBeforeDrawHeader = {read=FOnBeforeDrawHeader, write=FOnBeforeDrawHeader};
	__property TTMSFNCCustomDigitalTimeSelectorAfterDrawHeaderEvent OnAfterDrawHeader = {read=FOnAfterDrawHeader, write=FOnAfterDrawHeader};
	__property TTMSFNCCustomDigitalTimeSelectorBeforeDrawHeaderTextEvent OnBeforeDrawHeaderText = {read=FOnBeforeDrawHeaderText, write=FOnBeforeDrawHeaderText};
	__property TTMSFNCCustomDigitalTimeSelectorAfterDrawHeaderTextEvent OnAfterDrawHeaderText = {read=FOnAfterDrawHeaderText, write=FOnAfterDrawHeaderText};
	__property TTMSFNCCustomDigitalTimeSelectorBeforeDrawArrowEvent OnBeforeDrawArrow = {read=FOnBeforeDrawArrow, write=FOnBeforeDrawArrow};
	__property TTMSFNCCustomDigitalTimeSelectorAfterDrawArrowEvent OnAfterDrawArrow = {read=FOnAfterDrawArrow, write=FOnAfterDrawArrow};
	__property TTMSFNCCustomDigitalTimeSelectorNavigationEvent OnNavigation = {read=FOnNavigation, write=FOnNavigation};
	
public:
	__fastcall virtual TTMSFNCCustomDigitalTimeSelector(System::Classes::TComponent* AOwner);
	void __fastcall NavigateBack();
	void __fastcall NavigateForth();
	void __fastcall InitializePage(System::TTime ATime);
	int __fastcall FindItemByTime(System::TTime ATime);
	System::TTime __fastcall FindTimeByItem(int AItem);
	virtual void __fastcall InitSample();
	__property System::TTime SelectedTime = {read=FSelectedTime, write=SetSelectedTime};
	__property TTMSFNCDigitalTimeSelectorItems* Items = {read=GetItems, write=SetItems};
public:
	/* TTMSFNCCustomSelector.Destroy */ inline __fastcall virtual ~TTMSFNCCustomDigitalTimeSelector() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCDigitalTimeSelector : public TTMSFNCCustomDigitalTimeSelector
{
	typedef TTMSFNCCustomDigitalTimeSelector inherited;
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	
__published:
	__property Appearance;
	__property Rows = {default=4};
	__property Columns = {default=3};
	__property SelectedItemIndex = {default=-1};
	__property StartTime = {default=0};
	__property EndTime = {default=0};
	__property HeaderSize = {default=24};
	__property IntervalUnit = {default=2};
	__property TimeInterval = {default=5};
	__property TimeFormat;
	__property OnTimeSelected;
	__property OnTimeDeselected;
	__property OnBeforeDrawHeader;
	__property OnAfterDrawHeader;
	__property OnBeforeDrawHeaderText;
	__property OnAfterDrawHeaderText;
	__property OnBeforeDrawArrow;
	__property OnAfterDrawArrow;
	__property OnNavigation;
public:
	/* TTMSFNCCustomDigitalTimeSelector.Create */ inline __fastcall virtual TTMSFNCDigitalTimeSelector(System::Classes::TComponent* AOwner) : TTMSFNCCustomDigitalTimeSelector(AOwner) { }
	
public:
	/* TTMSFNCCustomSelector.Destroy */ inline __fastcall virtual ~TTMSFNCDigitalTimeSelector() { }
	
};


//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x2);
static constexpr System::Int8 BLD_VER = System::Int8(0x1);
}	/* namespace Tmsfncdigitaltimeselector */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCDIGITALTIMESELECTOR)
using namespace Fmx::Tmsfncdigitaltimeselector;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncdigitaltimeselectorHPP
