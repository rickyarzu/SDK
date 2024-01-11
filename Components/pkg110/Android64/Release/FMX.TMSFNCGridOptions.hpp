// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCGridOptions.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncgridoptionsHPP
#define Fmx_TmsfncgridoptionsHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <FMX.TMSFNCGridDataUtil.hpp>
#include <FMX.TMSFNCGraphicsTypes.hpp>
#include <System.UITypes.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncgridoptions
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCGridScrollBarOptions;
class DELPHICLASS TTMSFNCGridStylingOptions;
class DELPHICLASS TTMSFNCGridBandOptions;
class DELPHICLASS TTMSFNCGridSelection;
class DELPHICLASS TTMSFNCGridMouseOptions;
class DELPHICLASS TTMSFNCGridKeyboardOptions;
class DELPHICLASS TTMSFNCGridSortingOptions;
class DELPHICLASS TTMSFNCGridBorderOptions;
class DELPHICLASS TTMSFNCGridEditingOptions;
class DELPHICLASS TTMSFNCGridLookupOptions;
class DELPHICLASS TTMSFNCGridFilteringOptions;
class DELPHICLASS TTMSFNCGridGroupingOptions;
class DELPHICLASS TTMSFNCGridClipboardOptions;
class DELPHICLASS TTMSFNCGridHTMLExportOptions;
class DELPHICLASS TTMSFNCGridURLOptions;
class DELPHICLASS TTMSFNCGridIOOptions;
class DELPHICLASS TTMSFNCGridCellOptions;
class DELPHICLASS TTMSFNCGridColumnSizeOptions;
class DELPHICLASS TTMSFNCGridOptions;
//-- type declarations -------------------------------------------------------
enum DECLSPEC_DENUM TTMSFNCGridTabKeyHandling : unsigned char { tkhNextControl, tkhNextCell, tkhMixed };

enum DECLSPEC_DENUM TTMSFNCGridTabKeyDirection : unsigned char { tkdNextColumnCell, tkdNextRowCell };

enum DECLSPEC_DENUM TTMSFNCGridPrintPosition : unsigned char { ppTopLeft, ppTopCenter, ppTopRight, ppBottomLeft, ppBottomCenter, ppBottomRight };

enum DECLSPEC_DENUM TTMSFNCGridPrintCellBackground : unsigned char { cbNone, cbCellColor, cbFull };

class PASCALIMPLEMENTATION TTMSFNCGridScrollBarOptions : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	System::Classes::TNotifyEvent FOnChange;
	bool FVerticalScrollBarVisible;
	bool FHorizontalScrollBarVisible;
	void __fastcall SetHorizontalScrollBarVisible(const bool Value);
	void __fastcall SetVerticalScrollBarVisible(const bool Value);
	
protected:
	__property System::Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall TTMSFNCGridScrollBarOptions();
	__fastcall virtual ~TTMSFNCGridScrollBarOptions();
	
__published:
	__property bool HorizontalScrollBarVisible = {read=FHorizontalScrollBarVisible, write=SetHorizontalScrollBarVisible, default=1};
	__property bool VerticalScrollBarVisible = {read=FVerticalScrollBarVisible, write=SetVerticalScrollBarVisible, default=1};
};


class PASCALIMPLEMENTATION TTMSFNCGridStylingOptions : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	bool FAdaptToStyle;
	System::Classes::TNotifyEvent FOnChange;
	void __fastcall SetAdaptToStyle(const bool Value);
	
protected:
	__property System::Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall TTMSFNCGridStylingOptions();
	__fastcall virtual ~TTMSFNCGridStylingOptions();
	
__published:
	__property bool AdaptToStyle = {read=FAdaptToStyle, write=SetAdaptToStyle, default=0};
};


class PASCALIMPLEMENTATION TTMSFNCGridBandOptions : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	bool FEnabled;
	System::Classes::TNotifyEvent FOnChange;
	int FBandRowCount;
	int FNormalRowCount;
	int FTotalRowCount;
	void __fastcall SetEnabled(const bool Value);
	void __fastcall SetBandRowCount(const int Value);
	void __fastcall SetNormalRowCount(const int Value);
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall TTMSFNCGridBandOptions();
	virtual void __fastcall Changed();
	__property int TotalRowCount = {read=FTotalRowCount, nodefault};
	
__published:
	__property int NormalRowCount = {read=FNormalRowCount, write=SetNormalRowCount, default=1};
	__property int BandRowCount = {read=FBandRowCount, write=SetBandRowCount, default=1};
	__property bool Enabled = {read=FEnabled, write=SetEnabled, default=0};
	__property System::Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTMSFNCGridBandOptions() { }
	
};


enum DECLSPEC_DENUM TTMSFNCGridSelectionMode : unsigned char { smNone, smSingleCell, smSingleRow, smSingleColumn, smCellRange, smRowRange, smColumnRange, smDisjunctRow, smDisjunctColumn, smDisjunctCell };

class PASCALIMPLEMENTATION TTMSFNCGridSelection : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	TTMSFNCGridSelectionMode FMode;
	System::Classes::TNotifyEvent FOnChange;
	bool FShowSelectionInFixedCells;
	void __fastcall SetMode(const TTMSFNCGridSelectionMode Value);
	void __fastcall SetShowSelectionInFixedCells(const bool Value);
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall TTMSFNCGridSelection();
	void __fastcall Changed();
	
__published:
	__property TTMSFNCGridSelectionMode Mode = {read=FMode, write=SetMode, default=1};
	__property bool ShowSelectionInFixedCells = {read=FShowSelectionInFixedCells, write=SetShowSelectionInFixedCells, default=0};
	__property System::Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTMSFNCGridSelection() { }
	
};


enum DECLSPEC_DENUM TTMSFNCGridFixedCellSelectionMode : unsigned char { fcsAll, fcsRow, fcsColumn, fcsRowRange, fcsColumnRange, fcsDisjunctRow, fcsDisjunctColumn };

typedef System::Set<TTMSFNCGridFixedCellSelectionMode, TTMSFNCGridFixedCellSelectionMode::fcsAll, TTMSFNCGridFixedCellSelectionMode::fcsDisjunctColumn> TTMSFNCGridFixedCellSelection;

enum DECLSPEC_DENUM TTMSFNCGridAutoScrollingSpeedMode : unsigned char { asmPixels, asmCell };

class PASCALIMPLEMENTATION TTMSFNCGridMouseOptions : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	bool FDirectEdit;
	int FWheelScrollSize;
	bool FAutoDragging;
	bool FFixedRowSizing;
	bool FFixedColumnSizing;
	bool FRowDragging;
	bool FColumnDragging;
	int FAutoScrollingInterval;
	bool FRowSizing;
	bool FColumnSizing;
	int FAutoScrollingSpeed;
	bool FAutoScrolling;
	bool FTouchScrolling;
	float FTouchScrollingSensitivity;
	TTMSFNCGridFixedCellSelection FFixedCellSelection;
	bool FRowAutoSizeOnDblClick;
	bool FColumnAutoSizeOnDblClick;
	bool FWheelScrollKeepSelection;
	int FRowSizeMargin;
	int FColumnSizeMargin;
	TTMSFNCGridAutoScrollingSpeedMode FAutoScrollingSpeedMode;
	int FClickMargin;
	void __fastcall SetWheelScrollSize(const int Value);
	void __fastcall SetAutoScrollingInterval(const int Value);
	void __fastcall SetTouchScrolling(const bool Value);
	void __fastcall SetWheelScrollKeepSelection(const bool Value);
	bool __fastcall IsTouchScrollingSensitivityStored();
	void __fastcall SetColumnSizeMargin(const int Value);
	void __fastcall SetRowSizeMargin(const int Value);
	void __fastcall SetClickMargin(const int Value);
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall TTMSFNCGridMouseOptions();
	
__published:
	__property bool DirectEdit = {read=FDirectEdit, write=FDirectEdit, default=0};
	__property int WheelScrollSize = {read=FWheelScrollSize, write=SetWheelScrollSize, default=4};
	__property bool WheelScrollKeepSelection = {read=FWheelScrollKeepSelection, write=SetWheelScrollKeepSelection, default=0};
	__property bool ColumnSizing = {read=FColumnSizing, write=FColumnSizing, default=0};
	__property int ClickMargin = {read=FClickMargin, write=SetClickMargin, default=2};
	__property int ColumnSizeMargin = {read=FColumnSizeMargin, write=SetColumnSizeMargin, default=2};
	__property bool RowSizing = {read=FRowSizing, write=FRowSizing, default=0};
	__property int RowSizeMargin = {read=FRowSizeMargin, write=SetRowSizeMargin, default=2};
	__property bool FixedColumnSizing = {read=FFixedColumnSizing, write=FFixedColumnSizing, default=0};
	__property bool FixedRowSizing = {read=FFixedRowSizing, write=FFixedRowSizing, default=0};
	__property TTMSFNCGridFixedCellSelection FixedCellSelection = {read=FFixedCellSelection, write=FFixedCellSelection, default=0};
	__property bool ColumnAutoSizeOnDblClick = {read=FColumnAutoSizeOnDblClick, write=FColumnAutoSizeOnDblClick, default=1};
	__property bool RowAutoSizeOnDblClick = {read=FRowAutoSizeOnDblClick, write=FRowAutoSizeOnDblClick, default=1};
	__property bool ColumnDragging = {read=FColumnDragging, write=FColumnDragging, default=0};
	__property bool RowDragging = {read=FRowDragging, write=FRowDragging, default=0};
	__property bool AutoScrolling = {read=FAutoScrolling, write=FAutoScrolling, default=1};
	__property bool AutoDragging = {read=FAutoDragging, write=FAutoDragging, default=1};
	__property TTMSFNCGridAutoScrollingSpeedMode AutoScrollingSpeedMode = {read=FAutoScrollingSpeedMode, write=FAutoScrollingSpeedMode, default=0};
	__property int AutoScrollingSpeed = {read=FAutoScrollingSpeed, write=FAutoScrollingSpeed, default=1};
	__property int AutoScrollingInterval = {read=FAutoScrollingInterval, write=SetAutoScrollingInterval, default=100};
	__property bool TouchScrolling = {read=FTouchScrolling, write=SetTouchScrolling, default=0};
	__property float TouchScrollingSensitivity = {read=FTouchScrollingSensitivity, write=FTouchScrollingSensitivity, stored=IsTouchScrollingSensitivityStored};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTMSFNCGridMouseOptions() { }
	
};


enum DECLSPEC_DENUM TTMSFNCGridInsertKeyHandling : unsigned char { ikhNone, ikhInsertRowBefore, ikhInsertRowAfter };

enum DECLSPEC_DENUM TTMSFNCGridEnterKeyHandling : unsigned char { ekhNone, ekhNextColumn, ekhNextRow, ekhNextColumnInRow, ekhNextRowInColumn, ekhNextColumnAndAppend, ekhNextRowAndAppend, ekhNextRowAndColumnAppend, ekhNextColumnAndRowAppend };

enum DECLSPEC_DENUM TTMSFNCGridDeleteKeyHandling : unsigned char { dkhNone, dkhDeleteRow };

class PASCALIMPLEMENTATION TTMSFNCGridKeyboardOptions : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	TTMSFNCGridTabKeyDirection FTabKeyDirection;
	TTMSFNCGridTabKeyHandling FTabKeyHandling;
	int FPageScrollSize;
	TTMSFNCGridEnterKeyHandling FEnterKeyHandling;
	bool FEnterKeyDirectEdit;
	TTMSFNCGridDeleteKeyHandling FDeleteKeyHandling;
	TTMSFNCGridInsertKeyHandling FInsertKeyHandling;
	bool FTabKeyDirectEdit;
	bool FArrowKeyDirectEdit;
	bool FAllowCellMergeShortCut;
	void __fastcall SetPageScrollSize(const int Value);
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall TTMSFNCGridKeyboardOptions();
	
__published:
	__property bool AllowCellMergeShortCut = {read=FAllowCellMergeShortCut, write=FAllowCellMergeShortCut, default=0};
	__property bool TabKeyDirectEdit = {read=FTabKeyDirectEdit, write=FTabKeyDirectEdit, default=0};
	__property bool ArrowKeyDirectEdit = {read=FArrowKeyDirectEdit, write=FArrowKeyDirectEdit, default=0};
	__property TTMSFNCGridInsertKeyHandling InsertKeyHandling = {read=FInsertKeyHandling, write=FInsertKeyHandling, default=0};
	__property TTMSFNCGridDeleteKeyHandling DeleteKeyHandling = {read=FDeleteKeyHandling, write=FDeleteKeyHandling, default=0};
	__property TTMSFNCGridEnterKeyHandling EnterKeyHandling = {read=FEnterKeyHandling, write=FEnterKeyHandling, default=0};
	__property bool EnterKeyDirectEdit = {read=FEnterKeyDirectEdit, write=FEnterKeyDirectEdit, default=0};
	__property TTMSFNCGridTabKeyHandling TabKeyHandling = {read=FTabKeyHandling, write=FTabKeyHandling, default=2};
	__property TTMSFNCGridTabKeyDirection TabKeyDirection = {read=FTabKeyDirection, write=FTabKeyDirection, default=0};
	__property int PageScrollSize = {read=FPageScrollSize, write=SetPageScrollSize, default=0};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTMSFNCGridKeyboardOptions() { }
	
};


enum DECLSPEC_DENUM TTMSFNCGridSortBlankPosition : unsigned char { blFirst, blLast };

enum DECLSPEC_DENUM TTMSFNCGridSortingMode : unsigned char { gsmNone, gsmNormal, gsmIndexed };

enum DECLSPEC_DENUM TTMSFNCGridSortColumns : unsigned char { scAll, scNormal, scSingle };

enum DECLSPEC_DENUM TTMSFNCGridBorders : unsigned char { bNone, bAll, bVertical, bHorizontal };

class PASCALIMPLEMENTATION TTMSFNCGridSortingOptions : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	TTMSFNCGridSortingMode FMode;
	int FRow;
	TTMSFNCGridSortColumns FColumns;
	bool FMultiColumn;
	bool FIgnoreCase;
	bool FIgnoreBlanks;
	TTMSFNCGridSortBlankPosition FBlankPosition;
	void __fastcall SetMode(const TTMSFNCGridSortingMode Value);
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall TTMSFNCGridSortingOptions();
	
__published:
	__property TTMSFNCGridSortBlankPosition BlankPosition = {read=FBlankPosition, write=FBlankPosition, default=0};
	__property int Row = {read=FRow, write=FRow, default=0};
	__property bool IgnoreCase = {read=FIgnoreCase, write=FIgnoreCase, default=0};
	__property bool IgnoreBlanks = {read=FIgnoreBlanks, write=FIgnoreBlanks, default=0};
	__property bool MultiColumn = {read=FMultiColumn, write=FMultiColumn, default=1};
	__property TTMSFNCGridSortingMode Mode = {read=FMode, write=SetMode, default=0};
	__property TTMSFNCGridSortColumns Columns = {read=FColumns, write=FColumns, default=0};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTMSFNCGridSortingOptions() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCGridBorderOptions : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	TTMSFNCGridBorders FFixedCellBorders;
	TTMSFNCGridBorders FCellBorders;
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall TTMSFNCGridBorderOptions();
	
__published:
	__property TTMSFNCGridBorders FixedCellBorders = {read=FFixedCellBorders, write=FFixedCellBorders, default=1};
	__property TTMSFNCGridBorders CellBorders = {read=FCellBorders, write=FCellBorders, default=1};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTMSFNCGridBorderOptions() { }
	
};


enum DECLSPEC_DENUM TTMSFNCGridAutoComplete : unsigned char { acDisabled, acNormal, acLookupList };

enum DECLSPEC_DENUM TTMSFNCGridAutoPost : unsigned char { apNone, apCell, apRow };

class PASCALIMPLEMENTATION TTMSFNCGridEditingOptions : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	bool FEnabled;
	TTMSFNCGridAutoComplete FAutoComplete;
	System::Classes::TStringList* FAutoCompleteItems;
	bool FAutoHistory;
	bool FAutoCompleteCaseSensitive;
	System::UnicodeString FCalcFormat;
	TTMSFNCGridAutoPost FAutoPost;
	bool FAutoCancel;
	bool FDirectComboClose;
	bool FDirectComboDrop;
	bool FEditWithTags;
	void __fastcall SetAutoCompleteItems(System::Classes::TStringList* const Value);
	void __fastcall SetAutoPost(const TTMSFNCGridAutoPost Value);
	void __fastcall SetAutoCancel(const bool Value);
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall TTMSFNCGridEditingOptions();
	__fastcall virtual ~TTMSFNCGridEditingOptions();
	
__published:
	__property bool AutoCancel = {read=FAutoCancel, write=SetAutoCancel, default=0};
	__property TTMSFNCGridAutoComplete AutoComplete = {read=FAutoComplete, write=FAutoComplete, default=0};
	__property bool AutoCompleteCaseSensitive = {read=FAutoCompleteCaseSensitive, write=FAutoCompleteCaseSensitive, default=1};
	__property System::Classes::TStringList* AutoCompleteItems = {read=FAutoCompleteItems, write=SetAutoCompleteItems};
	__property bool AutoHistory = {read=FAutoHistory, write=FAutoHistory, default=0};
	__property TTMSFNCGridAutoPost AutoPost = {read=FAutoPost, write=SetAutoPost, default=1};
	__property System::UnicodeString CalcFormat = {read=FCalcFormat, write=FCalcFormat};
	__property bool DirectComboDrop = {read=FDirectComboDrop, write=FDirectComboDrop, default=0};
	__property bool DirectComboClose = {read=FDirectComboClose, write=FDirectComboClose, default=0};
	__property bool Enabled = {read=FEnabled, write=FEnabled, default=1};
	__property bool EditWithTags = {read=FEditWithTags, write=FEditWithTags, default=1};
};


class PASCALIMPLEMENTATION TTMSFNCGridLookupOptions : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	bool FCaseSensitive;
	bool FIncremental;
	bool FEnabled;
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall TTMSFNCGridLookupOptions();
	
__published:
	__property bool CaseSensitive = {read=FCaseSensitive, write=FCaseSensitive, default=0};
	__property bool Enabled = {read=FEnabled, write=FEnabled, default=0};
	__property bool Incremental = {read=FIncremental, write=FIncremental, default=1};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTMSFNCGridLookupOptions() { }
	
};


enum DECLSPEC_DENUM TTMSFNCGridFilterRows : unsigned char { frNormal, frAll };

class PASCALIMPLEMENTATION TTMSFNCGridFilteringOptions : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	TTMSFNCGridFilterRows FRows;
	int FDropDownFixedRow;
	bool FDropDown;
	System::Classes::TNotifyEvent FOnChange;
	int FDropDownHeight;
	int FDropDownWidth;
	bool FMultiColumn;
	void __fastcall SetDropDown(const bool Value);
	void __fastcall SetDropDownFixedRow(const int Value);
	
public:
	__fastcall TTMSFNCGridFilteringOptions();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	void __fastcall Changed();
	
__published:
	__property TTMSFNCGridFilterRows Rows = {read=FRows, write=FRows, default=0};
	__property bool DropDown = {read=FDropDown, write=SetDropDown, default=0};
	__property int DropDownFixedRow = {read=FDropDownFixedRow, write=SetDropDownFixedRow, default=0};
	__property int DropDownWidth = {read=FDropDownWidth, write=FDropDownWidth, default=100};
	__property int DropDownHeight = {read=FDropDownHeight, write=FDropDownHeight, default=120};
	__property bool MultiColumn = {read=FMultiColumn, write=FMultiColumn, default=0};
	__property System::Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTMSFNCGridFilteringOptions() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCGridGroupingOptions : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	bool FMergeHeader;
	bool FMergeSummary;
	bool FSummary;
	bool FShowGroupCount;
	System::UnicodeString FCalcFormat;
	bool FAutoSelectGroup;
	bool FAutoCheckGroup;
	System::UnicodeString FGroupCountFormat;
	
public:
	__fastcall TTMSFNCGridGroupingOptions();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property bool AutoSelectGroup = {read=FAutoSelectGroup, write=FAutoSelectGroup, default=0};
	__property bool AutoCheckGroup = {read=FAutoCheckGroup, write=FAutoCheckGroup, default=0};
	__property System::UnicodeString CalcFormat = {read=FCalcFormat, write=FCalcFormat};
	__property bool MergeHeader = {read=FMergeHeader, write=FMergeHeader, default=0};
	__property bool MergeSummary = {read=FMergeSummary, write=FMergeSummary, default=0};
	__property bool ShowGroupCount = {read=FShowGroupCount, write=FShowGroupCount, default=0};
	__property System::UnicodeString GroupCountFormat = {read=FGroupCountFormat, write=FGroupCountFormat};
	__property bool Summary = {read=FSummary, write=FSummary, default=0};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTMSFNCGridGroupingOptions() { }
	
};


enum DECLSPEC_DENUM TTMSFNCGridClipboardPasteAction : unsigned char { paReplace, paInsert };

class PASCALIMPLEMENTATION TTMSFNCGridClipboardOptions : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	bool FEnabled;
	bool FIgnoreReadOnly;
	bool FAllowColGrow;
	bool FAllowRowGrow;
	TTMSFNCGridClipboardPasteAction FPasteAction;
	
public:
	__fastcall TTMSFNCGridClipboardOptions();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property bool Enabled = {read=FEnabled, write=FEnabled, default=1};
	__property bool IgnoreReadOnly = {read=FIgnoreReadOnly, write=FIgnoreReadOnly, default=0};
	__property bool AllowColGrow = {read=FAllowColGrow, write=FAllowColGrow, default=0};
	__property bool AllowRowGrow = {read=FAllowRowGrow, write=FAllowRowGrow, default=0};
	__property TTMSFNCGridClipboardPasteAction PasteAction = {read=FPasteAction, write=FPasteAction, default=0};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTMSFNCGridClipboardOptions() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCGridHTMLExportOptions : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	System::UnicodeString FHeaderFile;
	System::UnicodeString FFooterFile;
	bool FShow;
	bool FConvertSpecialChars;
	int FWidth;
	bool FNonBreakingText;
	int FBorderSize;
	int FCellPadding;
	System::UnicodeString FPrefixTag;
	System::UnicodeString FSuffixTag;
	bool FSaveFonts;
	bool FExportImages;
	int FCellSpacing;
	System::UnicodeString FSummary;
	bool FSaveColors;
	bool FXHTML;
	System::UnicodeString FTableStyle;
	Fmx::Tmsfncgriddatautil::TTMSFNCGridIntList* FColumnWidths;
	
public:
	__fastcall TTMSFNCGridHTMLExportOptions();
	__fastcall virtual ~TTMSFNCGridHTMLExportOptions();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__property Fmx::Tmsfncgriddatautil::TTMSFNCGridIntList* ColumnWidths = {read=FColumnWidths, write=FColumnWidths};
	
__published:
	__property int BorderSize = {read=FBorderSize, write=FBorderSize, default=1};
	__property int CellSpacing = {read=FCellSpacing, write=FCellSpacing, default=0};
	__property int CellPadding = {read=FCellPadding, write=FCellPadding, default=0};
	__property bool ConvertSpecialChars = {read=FConvertSpecialChars, write=FConvertSpecialChars, default=0};
	__property bool ExportImages = {read=FExportImages, write=FExportImages, default=1};
	__property System::UnicodeString FooterFile = {read=FFooterFile, write=FFooterFile};
	__property System::UnicodeString HeaderFile = {read=FHeaderFile, write=FHeaderFile};
	__property bool NonBreakingText = {read=FNonBreakingText, write=FNonBreakingText, default=0};
	__property System::UnicodeString PrefixTag = {read=FPrefixTag, write=FPrefixTag};
	__property bool SaveColors = {read=FSaveColors, write=FSaveColors, default=1};
	__property bool SaveFonts = {read=FSaveFonts, write=FSaveFonts, default=1};
	__property System::UnicodeString SuffixTag = {read=FSuffixTag, write=FSuffixTag};
	__property bool Show = {read=FShow, write=FShow, default=0};
	__property System::UnicodeString Summary = {read=FSummary, write=FSummary};
	__property System::UnicodeString TableStyle = {read=FTableStyle, write=FTableStyle};
	__property int Width = {read=FWidth, write=FWidth, default=100};
	__property bool XHTML = {read=FXHTML, write=FXHTML, default=0};
};


class PASCALIMPLEMENTATION TTMSFNCGridURLOptions : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	bool FUnderline;
	System::Uitypes::TAlphaColor FColor;
	bool FShow;
	System::Classes::TNotifyEvent FOnChange;
	bool FFull;
	bool FOpen;
	void __fastcall SetColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetUnderline(const bool Value);
	void __fastcall SetFull(const bool Value);
	
public:
	__fastcall TTMSFNCGridURLOptions();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	virtual void __fastcall Changed();
	
__published:
	__property System::Uitypes::TAlphaColor Color = {read=FColor, write=SetColor, default=-16776961};
	__property bool Full = {read=FFull, write=SetFull, default=1};
	__property bool Open = {read=FOpen, write=FOpen, default=1};
	__property bool Show = {read=FShow, write=FShow, default=1};
	__property bool Underline = {read=FUnderline, write=SetUnderline, default=1};
	__property System::Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTMSFNCGridURLOptions() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCGridIOOptions : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	System::WideChar FDelimiter;
	bool FQuoteEmptyCells;
	System::UnicodeString FXMLEncoding;
	bool FAlwaysQuotes;
	bool FSaveVirtualCellData;
	
public:
	__fastcall TTMSFNCGridIOOptions();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property bool AlwaysQuotes = {read=FAlwaysQuotes, write=FAlwaysQuotes, default=0};
	__property System::WideChar Delimiter = {read=FDelimiter, write=FDelimiter, default=0};
	__property bool QuoteEmptyCells = {read=FQuoteEmptyCells, write=FQuoteEmptyCells, default=1};
	__property System::UnicodeString XMLEncoding = {read=FXMLEncoding, write=FXMLEncoding};
	__property bool SaveVirtualCellData = {read=FSaveVirtualCellData, write=FSaveVirtualCellData, default=1};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTMSFNCGridIOOptions() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCGridCellOptions : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	bool FDisplayHTMLFormatting;
	System::Classes::TNotifyEvent FOnChange;
	void __fastcall SetDisplayHTMLFormatting(const bool Value);
	
protected:
	__property System::Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
	
public:
	__fastcall TTMSFNCGridCellOptions();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property bool DisplayHTMLFormatting = {read=FDisplayHTMLFormatting, write=SetDisplayHTMLFormatting, default=0};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTMSFNCGridCellOptions() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCGridColumnSizeOptions : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	bool FStretch;
	bool FStretchAll;
	int FStretchColumn;
	System::Classes::TNotifyEvent FOnChange;
	bool FSyncWithGrid;
	bool FSyncNormalCellsOnly;
	void __fastcall SetStretch(const bool Value);
	void __fastcall SetStretchAll(const bool Value);
	void __fastcall SetStretchColumn(const int Value);
	void __fastcall SetNormalCellsOnly(const bool Value);
	void __fastcall SetSyncWithGrid(const bool Value);
	
public:
	__fastcall TTMSFNCGridColumnSizeOptions();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property bool Stretch = {read=FStretch, write=SetStretch, default=0};
	__property int StretchColumn = {read=FStretchColumn, write=SetStretchColumn, default=-1};
	__property bool StretchAll = {read=FStretchAll, write=SetStretchAll, default=0};
	__property bool SyncWithGrid = {read=FSyncWithGrid, write=SetSyncWithGrid, default=0};
	__property bool SyncNormalCellsOnly = {read=FSyncNormalCellsOnly, write=SetNormalCellsOnly, default=0};
	__property System::Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTMSFNCGridColumnSizeOptions() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCGridOptions : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	TTMSFNCGridMouseOptions* FMouse;
	TTMSFNCGridKeyboardOptions* FKeyboard;
	TTMSFNCGridSortingOptions* FSorting;
	TTMSFNCGridGroupingOptions* FGrouping;
	TTMSFNCGridFilteringOptions* FFiltering;
	TTMSFNCGridEditingOptions* FEditing;
	TTMSFNCGridBorderOptions* FBorders;
	TTMSFNCGridLookupOptions* FLookup;
	TTMSFNCGridClipboardOptions* FClipboard;
	TTMSFNCGridHTMLExportOptions* FHTMLExport;
	TTMSFNCGridBandOptions* FBands;
	System::Classes::TNotifyEvent FOnChange;
	TTMSFNCGridURLOptions* FURL;
	TTMSFNCGridScrollBarOptions* FScrollBar;
	TTMSFNCGridIOOptions* FIO;
	TTMSFNCGridCellOptions* FCell;
	TTMSFNCGridColumnSizeOptions* FColumnSize;
	TTMSFNCGridSelection* FSelection;
	TTMSFNCGridStylingOptions* FStyling;
	void __fastcall SetKeyboard(TTMSFNCGridKeyboardOptions* const Value);
	void __fastcall SetMouse(TTMSFNCGridMouseOptions* const Value);
	void __fastcall SetGrouping(TTMSFNCGridGroupingOptions* const Value);
	void __fastcall SetSorting(TTMSFNCGridSortingOptions* const Value);
	void __fastcall SetFiltering(TTMSFNCGridFilteringOptions* const Value);
	void __fastcall SetEditing(TTMSFNCGridEditingOptions* const Value);
	void __fastcall SetBorders(TTMSFNCGridBorderOptions* const Value);
	void __fastcall SetLookup(TTMSFNCGridLookupOptions* const Value);
	void __fastcall SetClipboard(TTMSFNCGridClipboardOptions* const Value);
	void __fastcall SetHTMLExport(TTMSFNCGridHTMLExportOptions* const Value);
	void __fastcall SetBands(TTMSFNCGridBandOptions* const Value);
	void __fastcall SetURL(TTMSFNCGridURLOptions* const Value);
	void __fastcall SetScrollBar(TTMSFNCGridScrollBarOptions* const Value);
	void __fastcall SetIO(TTMSFNCGridIOOptions* const Value);
	void __fastcall SetCell(TTMSFNCGridCellOptions* const Value);
	void __fastcall SetColumnSize(TTMSFNCGridColumnSizeOptions* const Value);
	void __fastcall SetSelection(TTMSFNCGridSelection* const Value);
	void __fastcall SetStyling(TTMSFNCGridStylingOptions* const Value);
	
public:
	void __fastcall DoChange(System::TObject* Sender);
	__fastcall TTMSFNCGridOptions();
	__fastcall virtual ~TTMSFNCGridOptions();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__property System::Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
	
__published:
	__property TTMSFNCGridBandOptions* Bands = {read=FBands, write=SetBands};
	__property TTMSFNCGridBorderOptions* Borders = {read=FBorders, write=SetBorders};
	__property TTMSFNCGridCellOptions* Cell = {read=FCell, write=SetCell};
	__property TTMSFNCGridColumnSizeOptions* ColumnSize = {read=FColumnSize, write=SetColumnSize};
	__property TTMSFNCGridClipboardOptions* Clipboard = {read=FClipboard, write=SetClipboard};
	__property TTMSFNCGridEditingOptions* Editing = {read=FEditing, write=SetEditing};
	__property TTMSFNCGridFilteringOptions* Filtering = {read=FFiltering, write=SetFiltering};
	__property TTMSFNCGridGroupingOptions* Grouping = {read=FGrouping, write=SetGrouping};
	__property TTMSFNCGridHTMLExportOptions* HTMLExport = {read=FHTMLExport, write=SetHTMLExport};
	__property TTMSFNCGridIOOptions* IO = {read=FIO, write=SetIO};
	__property TTMSFNCGridKeyboardOptions* Keyboard = {read=FKeyboard, write=SetKeyboard};
	__property TTMSFNCGridLookupOptions* Lookup = {read=FLookup, write=SetLookup};
	__property TTMSFNCGridMouseOptions* Mouse = {read=FMouse, write=SetMouse};
	__property TTMSFNCGridStylingOptions* Styling = {read=FStyling, write=SetStyling};
	__property TTMSFNCGridSortingOptions* Sorting = {read=FSorting, write=SetSorting};
	__property TTMSFNCGridURLOptions* URL = {read=FURL, write=SetURL};
	__property TTMSFNCGridScrollBarOptions* ScrollBar = {read=FScrollBar, write=SetScrollBar};
	__property TTMSFNCGridSelection* Selection = {read=FSelection, write=SetSelection};
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Tmsfncgridoptions */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCGRIDOPTIONS)
using namespace Fmx::Tmsfncgridoptions;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncgridoptionsHPP
