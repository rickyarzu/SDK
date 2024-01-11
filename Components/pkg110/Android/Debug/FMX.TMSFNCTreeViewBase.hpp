// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCTreeViewBase.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfnctreeviewbaseHPP
#define Fmx_TmsfnctreeviewbaseHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <FMX.TMSFNCCustomControl.hpp>
#include <FMX.TMSFNCScrollBar.hpp>
#include <FMX.StdCtrls.hpp>
#include <FMX.Controls.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <System.UITypes.hpp>
#include <System.Types.hpp>
#include <FMX.Types.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Collections.hpp>
#include <System.Generics.Defaults.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfnctreeviewbase
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCTreeViewDoubleListItem;
class DELPHICLASS TTMSFNCTreeViewDoubleList;
class DELPHICLASS TTMSFNCTreeViewBase;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TTMSFNCTreeViewDoubleListItem : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	TTMSFNCTreeViewBase* FOwner;
	double FValue;
	int FCellVal;
	void __fastcall SetCellData(const double Value);
	
public:
	__fastcall virtual TTMSFNCTreeViewDoubleListItem(System::Classes::TCollection* Collection);
	
__published:
	__property double Value = {read=FValue, write=SetCellData};
	__property int CellVal = {read=FCellVal, write=FCellVal, nodefault};
public:
	/* TCollectionItem.Destroy */ inline __fastcall virtual ~TTMSFNCTreeViewDoubleListItem() { }
	
};


#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCTreeViewDoubleList : public Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCTreeViewDoubleListItem*>
{
	typedef Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCTreeViewDoubleListItem*> inherited;
	
public:
	TTMSFNCTreeViewDoubleListItem* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCTreeViewBase* FOwner;
	System::Classes::TNotifyEvent FOnChange;
	HIDESBASE TTMSFNCTreeViewDoubleListItem* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCTreeViewDoubleListItem* const Value);
	
protected:
	__property System::Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
	
public:
	int __fastcall IndexOf(int ACellVal);
	__fastcall TTMSFNCTreeViewDoubleList(TTMSFNCTreeViewBase* AOwner);
	__property TTMSFNCTreeViewDoubleListItem* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	HIDESBASE TTMSFNCTreeViewDoubleListItem* __fastcall Add();
	HIDESBASE TTMSFNCTreeViewDoubleListItem* __fastcall Insert(int Index);
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCTreeViewDoubleList() { }
	
};

#pragma pack(pop)

enum DECLSPEC_DENUM TTMSFNCTreeViewScrollMode : unsigned char { smPixelScrolling, smNodeScrolling };

enum DECLSPEC_DENUM TTMSFNCTreeViewScrollUpdate : unsigned char { suContinuous, suOnce };

class PASCALIMPLEMENTATION TTMSFNCTreeViewBase : public Fmx::Tmsfnccustomcontrol::TTMSFNCCustomControl
{
	typedef Fmx::Tmsfnccustomcontrol::TTMSFNCCustomControl inherited;
	
private:
	float FSaveHScrollPos;
	float FSaveVScrollPos;
	double FTotalRowHeight;
	bool FNodeListBuild;
	double FTotalColumnWidth;
	double FStartOffset;
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
	Fmx::Tmsfncscrollbar::TTMSFNCScrollBar* FCustomVerticalScrollBar;
	Fmx::Tmsfncscrollbar::TTMSFNCScrollBar* FCustomHorizontalScrollBar;
	int FRowCount;
	int FColumnCount;
	TTMSFNCTreeViewDoubleList* FColumnW;
	TTMSFNCTreeViewDoubleList* FColumnP;
	double FDefaultRowHeight;
	double FDefaultColumnWidth;
	bool FVerticalScrollBarVisible;
	bool FHorizontalScrollBarVisible;
	TTMSFNCTreeViewScrollMode FScrollMode;
	bool FIsMouseDown;
	bool FDelayedLoading;
	bool FStretchScrollBars;
	bool FBlockUpdateNodeList;
	bool FBlockUpdateNode;
	int FBlockRemoveNode;
	bool FBlockUserInput;
	bool FBlockMouseClick;
	bool FCustomScrollBars;
	TTMSFNCTreeViewScrollUpdate FScrollUpdate;
	void __fastcall SetColumnCount(const int Value);
	void __fastcall SetRowCount(const int Value);
	void __fastcall SetDefaultColumnWidth(const double Value);
	void __fastcall SetDefaultRowHeight(const double Value);
	void __fastcall SetHorizontalScrollBarVisible(const bool Value);
	void __fastcall SetVerticalScrollBarVisible(const bool Value);
	void __fastcall SetScrollMode(const TTMSFNCTreeViewScrollMode Value);
	void __fastcall SetColWidths(int Col, const double Value);
	void __fastcall SetColumnP(TTMSFNCTreeViewDoubleList* const Value);
	void __fastcall SetColumnW(TTMSFNCTreeViewDoubleList* const Value);
	double __fastcall GetColWidths(int Col);
	double __fastcall GetColPos(int Col);
	void __fastcall SetColPos(int Col, const double Value);
	void __fastcall SetStretchScrollBars(const bool Value);
	void __fastcall SetCustomScrollBars(const bool Value);
	void __fastcall SetScrollUpdate(const TTMSFNCTreeViewScrollUpdate Value);
	
protected:
	virtual bool __fastcall ColumnStretchingActive() = 0 ;
	virtual void __fastcall UpdateTreeView();
	virtual void __fastcall UpdateColumns() = 0 ;
	virtual void __fastcall AutoSizeColumnInternal(int ACol, bool AUpdate = false, bool ACallEventHandlers = false) = 0 ;
	virtual void __fastcall UpdateVisualRange();
	virtual void __fastcall StretchColumn(bool AStretchAll = true, int ACol = 0xffffffff, double ANewWidth = -1.000000E+00);
	virtual void __fastcall StopAnimationTimer() = 0 ;
	virtual void __fastcall Scroll(double AHorizontalPos, double AVerticalPos);
	virtual void __fastcall UpdateDisplay();
	virtual void __fastcall VerticalScrollPositionChanged() = 0 ;
	virtual void __fastcall HorizontalScrollPositionChanged() = 0 ;
	void __fastcall VScrollChanged(System::TObject* Sender);
	void __fastcall HScrollChanged(System::TObject* Sender);
	void __fastcall HCustomScrollChanged(System::TObject* Sender, double AValue);
	void __fastcall VCustomScrollChanged(System::TObject* Sender, double AValue);
	virtual void __fastcall UpdateAutoSizing() = 0 ;
	virtual void __fastcall UpdateColumnRowCalculations(bool AUpdateTotalRowHeight = true) = 0 ;
	void __fastcall UpdateScrollBars(bool AUpdate = true, bool ACalculate = true);
	virtual void __fastcall UpdateCalculations() = 0 ;
	virtual void __fastcall ResetNodes(bool AUpdateAll = true) = 0 ;
	virtual void __fastcall UpdateColumnsCache() = 0 ;
	virtual void __fastcall UpdateGroupsCache() = 0 ;
	virtual void __fastcall UpdateNodesCache(bool AUpdateNodes = true, bool AResetNodes = false) = 0 ;
	virtual void __fastcall UpdateTreeViewCache();
	virtual void __fastcall UpdateTreeViewDisplay();
	virtual void __fastcall Loaded();
	virtual void __fastcall SetHScrollValue(float AValue);
	virtual void __fastcall SetVScrollValue(float AValue);
	virtual void __fastcall UpdateControlAfterResize();
	virtual bool __fastcall CanScrollDown();
	virtual bool __fastcall CanScrollUp();
	virtual bool __fastcall ScrollLimitation();
	virtual bool __fastcall IsColumnVisible(int ACol);
	virtual double __fastcall GetRowHeight(int ARow);
	virtual System::Types::TRectF __fastcall GetCalculationRect();
	virtual System::Types::TRectF __fastcall GetContentRect();
	virtual System::Types::TRectF __fastcall GetContentClipRect();
	virtual float __fastcall GetHScrollValue();
	virtual float __fastcall GetVScrollValue();
	virtual float __fastcall GetVViewPortSize();
	virtual float __fastcall GetHViewPortSize();
	virtual double __fastcall GetColumnViewPortSize();
	virtual double __fastcall GetRowViewPortSize();
	__property double TotalColumnWidth = {read=FTotalColumnWidth, write=FTotalColumnWidth};
	__property double TotalRowHeight = {read=FTotalRowHeight, write=FTotalRowHeight};
	__property bool IsMouseDown = {read=FIsMouseDown, write=FIsMouseDown, nodefault};
	__property bool BlockUserInput = {read=FBlockUserInput, write=FBlockUserInput, nodefault};
	__property bool BlockMouseClick = {read=FBlockMouseClick, write=FBlockMouseClick, nodefault};
	__property double DefaultRowHeight = {read=FDefaultRowHeight, write=SetDefaultRowHeight};
	__property double DefaultColumnWidth = {read=FDefaultColumnWidth, write=SetDefaultColumnWidth};
	__property bool HorizontalScrollBarVisible = {read=FHorizontalScrollBarVisible, write=SetHorizontalScrollBarVisible, default=1};
	__property bool VerticalScrollBarVisible = {read=FVerticalScrollBarVisible, write=SetVerticalScrollBarVisible, default=1};
	__property int RowCount = {read=FRowCount, write=SetRowCount, nodefault};
	__property int ColumnCount = {read=FColumnCount, write=SetColumnCount, nodefault};
	__property TTMSFNCTreeViewScrollMode ScrollMode = {read=FScrollMode, write=SetScrollMode, default=0};
	__property TTMSFNCTreeViewScrollUpdate ScrollUpdate = {read=FScrollUpdate, write=SetScrollUpdate, default=0};
	__property bool CustomScrollBars = {read=FCustomScrollBars, write=SetCustomScrollBars, default=0};
	__property double ColumnPositions[int Col] = {read=GetColPos, write=SetColPos};
	__property double ColumnWidths[int Col] = {read=GetColWidths, write=SetColWidths};
	__property TTMSFNCTreeViewDoubleList* ColumnW = {read=FColumnW, write=SetColumnW};
	__property TTMSFNCTreeViewDoubleList* ColumnP = {read=FColumnP, write=SetColumnP};
	__property int UpdateCount = {read=FUpdateCount, write=FUpdateCount, nodefault};
	__property bool BlockScrollingUpdate = {read=FBlockScrollingUpdate, write=FBlockScrollingUpdate, nodefault};
	__property bool StretchScrollBars = {read=FStretchScrollBars, write=SetStretchScrollBars, default=1};
	__property bool BlockUpdateNodeList = {read=FBlockUpdateNodeList, write=FBlockUpdateNodeList, nodefault};
	__property bool BlockUpdateNode = {read=FBlockUpdateNode, write=FBlockUpdateNode, nodefault};
	__property bool NodeListBuild = {read=FNodeListBuild, write=FNodeListBuild, nodefault};
	__property int BlockRemoveNode = {read=FBlockRemoveNode, write=FBlockRemoveNode, nodefault};
	
public:
	__fastcall virtual TTMSFNCTreeViewBase(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCTreeViewBase();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	virtual void __fastcall Resize();
	virtual void __fastcall BeginUpdate();
	virtual void __fastcall EndUpdate();
	virtual void __fastcall SaveScrollPosition();
	virtual void __fastcall RestoreScrollPosition();
	virtual void __fastcall AutoSizeColumn(int ACol);
	virtual double __fastcall GetVerticalScrollPosition();
	virtual double __fastcall GetHorizontalScrollPosition();
	Fmx::Stdctrls::TScrollBar* __fastcall HorizontalScrollBar();
	Fmx::Stdctrls::TScrollBar* __fastcall VerticalScrollBar();
	Fmx::Tmsfncscrollbar::TTMSFNCScrollBar* __fastcall CustomHorizontalScrollBar();
	Fmx::Tmsfncscrollbar::TTMSFNCScrollBar* __fastcall CustomVerticalScrollBar();
	int __fastcall StartCol();
	int __fastcall StopCol();
	double __fastcall StartX();
	double __fastcall StopX();
	int __fastcall StartRow();
	double __fastcall StartOffset();
	int __fastcall StopRow();
	double __fastcall StartY();
	double __fastcall StopY();
	virtual double __fastcall GetColumnWidth(int AColumn);
	virtual double __fastcall GetColumnPosition(int AColumn);
	virtual double __fastcall GetTotalColumnNodeWidth();
	virtual double __fastcall GetTotalColumnWidth();
	virtual double __fastcall GetTotalRowHeight();
};


//-- var, const, procedure ---------------------------------------------------
static constexpr System::Word SWIPECOUNT = System::Word(0x12c);
static constexpr System::Int8 DOWNCOUNT = System::Int8(0x64);
}	/* namespace Tmsfnctreeviewbase */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCTREEVIEWBASE)
using namespace Fmx::Tmsfnctreeviewbase;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfnctreeviewbaseHPP
