// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCPlannerBase.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncplannerbaseHPP
#define Fmx_TmsfncplannerbaseHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <FMX.TMSFNCCustomControl.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.StdCtrls.hpp>
#include <System.Types.hpp>
#include <System.Generics.Collections.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>
#include <FMX.Controls.hpp>
#include <FMX.Types.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncplannerbase
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCPlannerDoubleListItem;
class DELPHICLASS TTMSFNCPlannerDoubleList;
struct TTMSFNCPlannerCell;
struct TTMSFNCPlannerTime;
struct TTMSFNCPlannerSelection;
class DELPHICLASS TTMSFNCPlannerBase;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TTMSFNCPlannerDoubleListItem : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	double FValue;
	int FCellVal;
	
public:
	__property double Value = {read=FValue, write=FValue};
	__property int CellVal = {read=FCellVal, write=FCellVal, nodefault};
	System::UnicodeString __fastcall ToJSON()/* overload */;
	void __fastcall FromJSON(const System::UnicodeString Value);
	__property System::UnicodeString JSON = {read=ToJSON, write=FromJSON};
	System::UnicodeString __fastcall ToJSON(Fmx::Tmsfnctypes::TTMSFNCObjectExcludePropertyListArray AExcludedProperties)/* overload */;
	void __fastcall Log();
	void __fastcall SaveToJSONFile(const System::UnicodeString AFileName);
	void __fastcall LoadFromJSONFile(const System::UnicodeString AFileName);
	void __fastcall SaveToJSONStream(System::Classes::TStream* const AStream);
	void __fastcall LoadFromJSONStream(System::Classes::TStream* const AStream);
public:
	/* TObject.Create */ inline __fastcall TTMSFNCPlannerDoubleListItem() : System::TObject() { }
	/* TObject.Destroy */ inline __fastcall virtual ~TTMSFNCPlannerDoubleListItem() { }
	
};


#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCPlannerDoubleList : public System::Generics::Collections::TObjectList__1<TTMSFNCPlannerDoubleListItem*>
{
	typedef System::Generics::Collections::TObjectList__1<TTMSFNCPlannerDoubleListItem*> inherited;
	
public:
	int __fastcall IndexOfValue(int ACellVal);
public:
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlannerBase_TTMSFNCPlannerDoubleListItem>.Create */ inline __fastcall TTMSFNCPlannerDoubleList()/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCPlannerDoubleListItem*>() { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlannerBase_TTMSFNCPlannerDoubleListItem>.Create */ inline __fastcall TTMSFNCPlannerDoubleList(bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCPlannerDoubleListItem*>(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlannerBase_TTMSFNCPlannerDoubleListItem>.Create */ inline __fastcall TTMSFNCPlannerDoubleList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCPlannerDoubleListItem*> > AComparer, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCPlannerDoubleListItem*>(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlannerBase_TTMSFNCPlannerDoubleListItem>.Create */ inline __fastcall TTMSFNCPlannerDoubleList(System::Generics::Collections::TEnumerable__1<TTMSFNCPlannerDoubleListItem*>* const Collection, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCPlannerDoubleListItem*>(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlannerBase_TTMSFNCPlannerDoubleListItem>.Destroy */ inline __fastcall virtual ~TTMSFNCPlannerDoubleList() { }
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerBase_TTMSFNCPlannerDoubleListItem>.Create */ inline __fastcall TTMSFNCPlannerDoubleList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCPlannerDoubleListItem*> > AComparer)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCPlannerDoubleListItem*>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerBase_TTMSFNCPlannerDoubleListItem>.Create */ inline __fastcall TTMSFNCPlannerDoubleList(System::Generics::Collections::TEnumerable__1<TTMSFNCPlannerDoubleListItem*>* const Collection)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCPlannerDoubleListItem*>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerBase_TTMSFNCPlannerDoubleListItem>.Create */ inline __fastcall TTMSFNCPlannerDoubleList(TTMSFNCPlannerDoubleListItem* const *Values, const int Values_High)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCPlannerDoubleListItem*>(Values, Values_High) { }
	
};

#pragma pack(pop)

enum DECLSPEC_DENUM TTMSFNCPlannerScrollMode : unsigned char { smPixelScrolling, smCellScrolling };

struct DECLSPEC_DRECORD TTMSFNCPlannerCell
{
public:
	int Col;
	int Row;
};


struct DECLSPEC_DRECORD TTMSFNCPlannerTime
{
public:
	System::TDateTime StartTime;
	System::TDateTime EndTime;
};


struct DECLSPEC_DRECORD TTMSFNCPlannerSelection
{
public:
	TTMSFNCPlannerCell StartCell;
	TTMSFNCPlannerCell EndCell;
};


enum DECLSPEC_DENUM TTMSFNCPlannerOrientationMode : unsigned char { pomHorizontal, pomVertical };

enum DECLSPEC_DENUM TTMSFNCPlannerItemCachingMode : unsigned char { picmNoCaching, picmDelayedCaching, picmFullCaching };

class PASCALIMPLEMENTATION TTMSFNCPlannerBase : public Fmx::Tmsfnccustomcontrol::TTMSFNCCustomControl
{
	typedef Fmx::Tmsfnccustomcontrol::TTMSFNCCustomControl inherited;
	
private:
	float FSaveHScrollPos;
	float FSaveVScrollPos;
	double FTotalRowHeight;
	double FTotalColumnWidth;
	int FStartCol;
	int FStopCol;
	int FStartRow;
	int FStopRow;
	double FStartX;
	double FStopX;
	double FStartY;
	double FStopY;
	bool FBlockScrollingUpdate;
	int FUpdateCount;
	Fmx::Stdctrls::TScrollBar* FVerticalScrollBar;
	Fmx::Stdctrls::TScrollBar* FHorizontalScrollBar;
	int FRowCount;
	int FColumnCount;
	TTMSFNCPlannerDoubleList* FColumnW;
	TTMSFNCPlannerDoubleList* FRowH;
	TTMSFNCPlannerDoubleList* FColumnP;
	TTMSFNCPlannerDoubleList* FRowP;
	double FDefaultRowHeight;
	double FDefaultColumnWidth;
	bool FVerticalScrollBarVisible;
	bool FHorizontalScrollBarVisible;
	TTMSFNCPlannerScrollMode FScrollMode;
	TTMSFNCPlannerOrientationMode FOrientationMode;
	bool FIsMouseDown;
	bool FDelayedLoading;
	TTMSFNCPlannerItemCachingMode FItemCachingMode;
	bool FStretchScrollBars;
	void __fastcall SetColumnCount(const int Value);
	void __fastcall SetRowCount(const int Value);
	void __fastcall SetDefaultColumnWidth(const double Value);
	void __fastcall SetDefaultRowHeight(const double Value);
	void __fastcall SetHorizontalScrollBarVisible(const bool Value);
	void __fastcall SetVerticalScrollBarVisible(const bool Value);
	void __fastcall SetScrollMode(const TTMSFNCPlannerScrollMode Value);
	void __fastcall SetColWidths(int Col, const double Value);
	void __fastcall SetRowHeights(int Row, const double Value);
	void __fastcall SetOrientationMode(const TTMSFNCPlannerOrientationMode Value);
	void __fastcall SetItemCachingMode(const TTMSFNCPlannerItemCachingMode Value);
	double __fastcall GetColWidths(int Col);
	double __fastcall GetRowHeights(int Row);
	double __fastcall GetColPos(int Col);
	double __fastcall GetRowPos(int Row);
	void __fastcall SetColPos(int Col, const double Value);
	void __fastcall SetRowPos(int Row, const double Value);
	void __fastcall SetStretchScrollBars(const bool Value);
	
protected:
	virtual void __fastcall BeforeExport();
	virtual void __fastcall AfterExport();
	virtual void __fastcall UpdateVisualRange();
	virtual void __fastcall UpdateControlAfterResize();
	virtual void __fastcall StretchColumn(int ACol = 0xffffffff, double ANewWidth = -1.000000E+00);
	virtual void __fastcall StretchRow(int ARow = 0xffffffff, double ANewHeight = -1.000000E+00);
	virtual void __fastcall StopAnimationTimer() = 0 ;
	void __fastcall Scroll(double AHorizontalPos, double AVerticalPos);
	virtual void __fastcall UpdateDisplay();
	virtual void __fastcall DoHScroll(float APosition) = 0 ;
	virtual void __fastcall DoVScroll(float APosition) = 0 ;
	virtual void __fastcall VerticalScrollPositionChanged() = 0 ;
	virtual void __fastcall HorizontalScrollPositionChanged() = 0 ;
	void __fastcall VScrollChanged(System::TObject* Sender);
	void __fastcall HScrollChanged(System::TObject* Sender);
	virtual void __fastcall UpdateAutoSizing() = 0 ;
	virtual void __fastcall UpdateColumnRowCalculations() = 0 ;
	void __fastcall UpdateScrollBars(bool AUpdate = true, bool ACalculate = true);
	virtual void __fastcall UpdateScrollPosition(bool AForce = true) = 0 ;
	virtual void __fastcall UpdateCalculations(bool AForce = false) = 0 ;
	virtual void __fastcall UpdatePositionsCache() = 0 ;
	virtual void __fastcall UpdateFullDaysItemsCache() = 0 ;
	virtual void __fastcall UpdateGroupsCache() = 0 ;
	virtual void __fastcall UpdateFullDaysCache() = 0 ;
	virtual void __fastcall UpdateTimeLinesCache() = 0 ;
	virtual void __fastcall UpdateGridCache() = 0 ;
	virtual void __fastcall UpdatePlannerDisplay();
	virtual void __fastcall DirtyItems() = 0 ;
	virtual void __fastcall Loaded();
	virtual void __fastcall SetHScrollValue(float AValue);
	virtual void __fastcall SetVScrollValue(float AValue);
	virtual bool __fastcall ColumnStretchingActive() = 0 ;
	virtual float __fastcall GetVViewPortSize();
	virtual float __fastcall GetHViewPortSize();
	virtual float __fastcall GetHScrollValue();
	virtual float __fastcall GetVScrollValue();
	int __fastcall GetUpdateCount();
	virtual System::Types::TRectF __fastcall GetCalculationRect();
	virtual System::Types::TRectF __fastcall GetContentRect();
	__property double TotalColumnWidth = {read=FTotalColumnWidth, write=FTotalColumnWidth};
	__property double TotalRowHeight = {read=FTotalRowHeight, write=FTotalRowHeight};
	__property TTMSFNCPlannerItemCachingMode ItemCachingMode = {read=FItemCachingMode, write=SetItemCachingMode, default=0};
	__property bool IsMouseDown = {read=FIsMouseDown, write=FIsMouseDown, nodefault};
	__property double DefaultRowHeight = {read=FDefaultRowHeight, write=SetDefaultRowHeight};
	__property double DefaultColumnWidth = {read=FDefaultColumnWidth, write=SetDefaultColumnWidth};
	__property bool HorizontalScrollBarVisible = {read=FHorizontalScrollBarVisible, write=SetHorizontalScrollBarVisible, default=1};
	__property bool VerticalScrollBarVisible = {read=FVerticalScrollBarVisible, write=SetVerticalScrollBarVisible, default=1};
	__property int RowCount = {read=FRowCount, write=SetRowCount, nodefault};
	__property int ColumnCount = {read=FColumnCount, write=SetColumnCount, nodefault};
	__property TTMSFNCPlannerScrollMode ScrollMode = {read=FScrollMode, write=SetScrollMode, default=0};
	__property TTMSFNCPlannerOrientationMode OrientationMode = {read=FOrientationMode, write=SetOrientationMode, default=1};
	__property double RowPositions[int Row] = {read=GetRowPos, write=SetRowPos};
	__property double ColumnPositions[int Col] = {read=GetColPos, write=SetColPos};
	__property double ColumnWidths[int Col] = {read=GetColWidths, write=SetColWidths};
	__property double RowHeights[int Row] = {read=GetRowHeights, write=SetRowHeights};
	__property TTMSFNCPlannerDoubleList* ColumnW = {read=FColumnW};
	__property TTMSFNCPlannerDoubleList* RowH = {read=FRowH};
	__property TTMSFNCPlannerDoubleList* ColumnP = {read=FColumnP};
	__property TTMSFNCPlannerDoubleList* RowP = {read=FRowP};
	__property bool BlockScrollingUpdate = {read=FBlockScrollingUpdate, write=FBlockScrollingUpdate, nodefault};
	__property bool StretchScrollBars = {read=FStretchScrollBars, write=SetStretchScrollBars, default=0};
	
public:
	__fastcall virtual TTMSFNCPlannerBase(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCPlannerBase();
	__property int UpdateCount = {read=GetUpdateCount, nodefault};
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	virtual void __fastcall BeginUpdate();
	virtual void __fastcall EndUpdate();
	virtual void __fastcall RestoreScrollPosition();
	virtual void __fastcall SaveScrollPosition();
	virtual void __fastcall UpdateConflicts() = 0 ;
	virtual void __fastcall UpdateFullDayConflicts() = 0 ;
	virtual void __fastcall UpdatePlannerCache(bool ADirtyItems = true);
	virtual void __fastcall UpdateItemsCache() = 0 ;
	virtual bool __fastcall IsFullDayAutoSize() = 0 ;
	virtual double __fastcall GetColumnViewPortSize();
	virtual double __fastcall GetRowViewPortSize();
	virtual double __fastcall GetVerticalScrollPosition();
	virtual double __fastcall GetHorizontalScrollPosition();
	Fmx::Stdctrls::TScrollBar* __fastcall HorizontalScrollBar();
	Fmx::Stdctrls::TScrollBar* __fastcall VerticalScrollBar();
	virtual TTMSFNCPlannerCell __fastcall XYToCell(double X, double Y);
	int __fastcall StartCol();
	int __fastcall StopCol();
	double __fastcall StartX();
	double __fastcall StopX();
	int __fastcall StartRow();
	int __fastcall StopRow();
	double __fastcall StartY();
	double __fastcall StopY();
	double __fastcall GetTotalColumnWidth();
	double __fastcall GetTotalRowHeight();
};


//-- var, const, procedure ---------------------------------------------------
static constexpr System::Word SWIPECOUNT = System::Word(0x12c);
static constexpr System::Int8 DOWNCOUNT = System::Int8(0x64);
}	/* namespace Tmsfncplannerbase */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCPLANNERBASE)
using namespace Fmx::Tmsfncplannerbase;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncplannerbaseHPP
