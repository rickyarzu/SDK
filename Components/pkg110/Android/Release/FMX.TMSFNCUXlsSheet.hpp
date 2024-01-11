// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCUXlsSheet.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncuxlssheetHPP
#define Fmx_TmsfncuxlssheetHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <System.SysUtils.hpp>
#include <FMX.TMSFNCUXlsBaseRecords.hpp>
#include <FMX.TMSFNCUXlsBaseRecordLists.hpp>
#include <FMX.TMSFNCUXlsOtherRecords.hpp>
#include <FMX.TMSFNCUXlsChart.hpp>
#include <FMX.TMSFNCUXlsSST.hpp>
#include <FMX.TMSFNCXlsMessages.hpp>
#include <FMX.TMSFNCUXlsSections.hpp>
#include <FMX.TMSFNCUXlsRowColEntries.hpp>
#include <FMX.TMSFNCUXlsEscher.hpp>
#include <FMX.TMSFNCUXlsWorkbookGlobals.hpp>
#include <FMX.TMSFNCUXlsNotes.hpp>
#include <FMX.TMSFNCUXlsBaseList.hpp>
#include <FMX.TMSFNCUFlxMessages.hpp>
#include <FMX.TMSFNCUXlsPageBreaks.hpp>
#include <System.Types.hpp>
#include <FMX.TMSFNCUXlsColInfo.hpp>
#include <FMX.TMSFNCUXlsHyperLink.hpp>
#include <FMX.TMSFNCUOle2Impl.hpp>
#include <System.Generics.Collections.hpp>
#include <System.Generics.Defaults.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncuxlssheet
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TSheet;
class DELPHICLASS TFlxChart;
class DELPHICLASS TSheetRecordList;
class DELPHICLASS TChartList;
class DELPHICLASS TFlxUnsupportedSheet;
class DELPHICLASS TWorkSheet;
//-- type declarations -------------------------------------------------------
#pragma pack(push,4)
class PASCALIMPLEMENTATION TSheet : public Fmx::Tmsfncuxlssections::TBaseSection
{
	typedef Fmx::Tmsfncuxlssections::TBaseSection inherited;
	
private:
	bool __fastcall GetShowGridLines();
	void __fastcall SetShowGridLines(const bool Value);
	bool __fastcall GetShowGridHeaders();
	void __fastcall SetShowGridHeaders(const bool Value);
	bool __fastcall GetPrintGridLines();
	void __fastcall SetPrintGridLines(const bool Value);
	System::UnicodeString __fastcall GetPageFooter();
	System::UnicodeString __fastcall GetPageHeader();
	void __fastcall SetPageFooter(const System::UnicodeString Value);
	void __fastcall SetPageHeader(const System::UnicodeString Value);
	Fmx::Tmsfncuflxmessages::TXlsMargins __fastcall GetMargins();
	void __fastcall SetMargins(const Fmx::Tmsfncuflxmessages::TXlsMargins &Value);
	void __fastcall AddMargin(Fmx::Tmsfncuxlsbaserecords::TMarginRecord* &Margin, const int aId, const System::Extended Value);
	int __fastcall GetSheetZoom();
	void __fastcall SetSheetZoom(const int Value);
	System::UnicodeString __fastcall GetCodeName();
	void __fastcall SetCodeName(const System::UnicodeString Value);
	bool __fastcall GetIsR1C1();
	void __fastcall SetIsR1C1(const bool Value);
	bool __fastcall GetWindow2Frozen();
	void __fastcall SetWindow2Frozen(const bool value);
	
protected:
	Fmx::Tmsfncuxlsworkbookglobals::TWorkbookGlobals* FWorkbookGlobals;
	Fmx::Tmsfncuxlsbaserecords::TWindow2Record* FWindow2;
	Fmx::Tmsfncuxlsbaserecords::TPageHeaderRecord* FPageHeader;
	Fmx::Tmsfncuxlsbaserecords::TPageFooterRecord* FPageFooter;
	Fmx::Tmsfncuxlsbaserecords::TPrintGridLinesRecord* FPrintGridLines;
	Fmx::Tmsfncuxlsbaserecords::TMarginRecord* FLeftMargin;
	Fmx::Tmsfncuxlsbaserecords::TMarginRecord* FRightMargin;
	Fmx::Tmsfncuxlsbaserecords::TMarginRecord* FTopMargin;
	Fmx::Tmsfncuxlsbaserecords::TMarginRecord* FBottomMargin;
	Fmx::Tmsfncuxlsbaserecords::TSetupRecord* FSetup;
	Fmx::Tmsfncuxlsbaserecords::TPlsRecord* FPrinterDriverSettings;
	Fmx::Tmsfncuxlsbaserecords::TWsBoolRecord* FWSBool;
	Fmx::Tmsfncuxlsbaserecords::TPrintCenteredRecord* FHCenter;
	Fmx::Tmsfncuxlsbaserecords::TPrintCenteredRecord* FVCenter;
	Fmx::Tmsfncuxlsbaserecords::TSCLRecord* FZoom;
	Fmx::Tmsfncuxlsotherrecords::TGutsRecord* FGuts;
	Fmx::Tmsfncuxlsotherrecords::TPaneRecord* FPane;
	Fmx::Tmsfncuxlsbaserecords::TAutoFilterInfoRecord* FAutoFilterInfo;
	Fmx::Tmsfncuxlsbaserecords::TRefModeRecord* FRefMode;
	Fmx::Tmsfncuxlsbaserecordlists::TBaseRecordList* FPrintRecords;
	Fmx::Tmsfncuxlsotherrecords::TCodeNameRecord* FCodeName;
	void __fastcall LoadCachePointers(Fmx::Tmsfncuxlsbaserecords::TBaseRecord* const R);
	virtual void __fastcall FixCachePointers();
	bool __fastcall GetSelected();
	void __fastcall SetSelected(const bool Value);
	virtual void __fastcall SetPageHeaderFooter(Fmx::Tmsfncuxlsbaserecords::TPageHeaderFooterRecord* const P, const System::UnicodeString s) = 0 ;
	virtual void __fastcall AddZoomRecord() = 0 ;
	virtual void __fastcall AddOrRemovePane(const bool Add);
	__property bool Window2Frozen = {read=GetWindow2Frozen, write=SetWindow2Frozen, nodefault};
	
public:
	Fmx::Tmsfncuxlsbaserecords::TDimensionsRec OriginalDimensions;
	TSheet* __fastcall CopyTo();
	virtual TSheet* __fastcall DoCopyTo();
	virtual void __fastcall InsertAndCopyRowsAndCols(const int FirstRow, const int LastRow, const int DestRow, const int aRowCount, const int FirstCol, const int LastCol, const int DestCol, const int aColCount, const Fmx::Tmsfncxlsmessages::TSheetInfo &SheetInfo, const bool OnlyFormulas) = 0 ;
	virtual void __fastcall DeleteRowsAndCols(const System::Word aRow, const System::Word aRowCount, const System::Word aCol, const System::Word aColCount, const Fmx::Tmsfncxlsmessages::TSheetInfo &SheetInfo) = 0 ;
	virtual void __fastcall ArrangeInsertRowsAndCols(const int InsRowPos, const int InsRowCount, const int InsColPos, const int InsColCount, const Fmx::Tmsfncxlsmessages::TSheetInfo &SheetInfo) = 0 ;
	virtual void __fastcall ArrangeCopySheet(const Fmx::Tmsfncxlsmessages::TSheetInfo &SheetInfo);
	virtual void __fastcall Clear();
	virtual void __fastcall DeleteHPageBreak(const System::Word aRow);
	virtual void __fastcall DeleteVPageBreak(const System::Word aCol);
	virtual void __fastcall InsertHPageBreak(const System::Word aRow);
	virtual void __fastcall InsertVPageBreak(const System::Word aCol);
	__fastcall virtual TSheet(Fmx::Tmsfncuxlsworkbookglobals::TWorkbookGlobals* const aWorkbookGlobals);
	__property bool Selected = {read=GetSelected, write=SetSelected, nodefault};
	__property bool ShowGridLines = {read=GetShowGridLines, write=SetShowGridLines, nodefault};
	__property bool ShowGridHeaders = {read=GetShowGridHeaders, write=SetShowGridHeaders, nodefault};
	__property bool PrintGridLines = {read=GetPrintGridLines, write=SetPrintGridLines, nodefault};
	__property System::UnicodeString PageHeader = {read=GetPageHeader, write=SetPageHeader};
	__property System::UnicodeString PageFooter = {read=GetPageFooter, write=SetPageFooter};
	__property Fmx::Tmsfncuflxmessages::TXlsMargins Margins = {read=GetMargins, write=SetMargins};
	__property int SheetZoom = {read=GetSheetZoom, write=SetSheetZoom, nodefault};
	__property bool IsR1C1 = {read=GetIsR1C1, write=SetIsR1C1, nodefault};
	void __fastcall FreezePanes(const int row, const int col);
	void __fastcall GetFrozenPanes(/* out */ int &row, /* out */ int &col);
	void __fastcall GetSplitWindow(/* out */ int &xOffset, /* out */ int &yOffset);
	void __fastcall SplitWindow(const int xOffset, const int yOffset);
	__property System::UnicodeString CodeName = {read=GetCodeName, write=SetCodeName};
	virtual __int64 __fastcall TotalSize();
	virtual __int64 __fastcall FixTotalSize(const bool NeedsRecalc);
	virtual __int64 __fastcall TotalRangeSize(const int SheetIndex, const Fmx::Tmsfncuflxmessages::TXlsCellRange &CellRange);
	virtual void __fastcall RestoreObjectCoords();
	virtual void __fastcall FixRows();
public:
	/* TBaseSection.Destroy */ inline __fastcall virtual ~TSheet() { }
	
};

#pragma pack(pop)

_DECLARE_METACLASS(System::TMetaClass, ClassOfTSheet);

#pragma pack(push,4)
class PASCALIMPLEMENTATION TFlxChart : public TSheet
{
	typedef TSheet inherited;
	
private:
	Fmx::Tmsfncuxlschart::TChartRecordList* FChartRecords;
	void __fastcall LoadSubChart(Fmx::Tmsfncuole2impl::TOle2File* const DataStream, Fmx::Tmsfncxlsmessages::TRecordHeader &RecordHeader, Fmx::Tmsfncuxlssst::TSST* const SST, const int Level);
	
protected:
	virtual void __fastcall SetPageHeaderFooter(Fmx::Tmsfncuxlsbaserecords::TPageHeaderFooterRecord* const P, const System::UnicodeString s);
	virtual void __fastcall AddZoomRecord();
	virtual void __fastcall FixCachePointers();
	
public:
	Fmx::Tmsfncuxlsbaserecords::TBaseRecord* RemainingData;
	__fastcall virtual TFlxChart(Fmx::Tmsfncuxlsworkbookglobals::TWorkbookGlobals* const aWorkbookGlobals);
	__fastcall virtual ~TFlxChart();
	virtual TSheet* __fastcall DoCopyTo();
	virtual __int64 __fastcall TotalSize();
	virtual __int64 __fastcall TotalRangeSize(const int SheetIndex, const Fmx::Tmsfncuflxmessages::TXlsCellRange &CellRange);
	virtual void __fastcall LoadFromStream(Fmx::Tmsfncuole2impl::TOle2File* const DataStream, Fmx::Tmsfncxlsmessages::TRecordHeader &RecordHeader, Fmx::Tmsfncuxlsotherrecords::TBOFRecord* const First, Fmx::Tmsfncuxlssst::TSST* const SST);
	virtual void __fastcall SaveToStream(Fmx::Tmsfncuole2impl::TOle2File* const DataStream);
	virtual void __fastcall SaveRangeToStream(Fmx::Tmsfncuole2impl::TOle2File* const DataStream, const int SheetIndex, const Fmx::Tmsfncuflxmessages::TXlsCellRange &CellRange);
	virtual void __fastcall Clear();
	void __fastcall ArrangeCopyRowsAndCols(const int RowOffset, const int ColOffset);
	virtual void __fastcall ArrangeCopySheet(const Fmx::Tmsfncxlsmessages::TSheetInfo &SheetInfo);
	virtual void __fastcall ArrangeInsertRowsAndCols(const int InsRowPos, const int InsRowCount, const int InsColPos, const int InsColCount, const Fmx::Tmsfncxlsmessages::TSheetInfo &SheetInfo);
	virtual void __fastcall InsertAndCopyRowsAndCols(const int FirstRow, const int LastRow, const int DestRow, const int aRowCount, const int FirstCol, const int LastCol, const int DestCol, const int aColCount, const Fmx::Tmsfncxlsmessages::TSheetInfo &SheetInfo, const bool OnlyFormulas);
	virtual void __fastcall DeleteRowsAndCols(const System::Word aRow, const System::Word aRowCount, const System::Word aCol, const System::Word aColCount, const Fmx::Tmsfncxlsmessages::TSheetInfo &SheetInfo);
};

#pragma pack(pop)

class PASCALIMPLEMENTATION TSheetRecordList : public Fmx::Tmsfncuxlsbaserecordlists::TBaseRecordList
{
	typedef Fmx::Tmsfncuxlsbaserecordlists::TBaseRecordList inherited;
	
public:
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TSheetRecordList()/* overload */ : Fmx::Tmsfncuxlsbaserecordlists::TBaseRecordList() { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TSheetRecordList(bool AOwnsObjects)/* overload */ : Fmx::Tmsfncuxlsbaserecordlists::TBaseRecordList(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TSheetRecordList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<System::TObject*> > AComparer, bool AOwnsObjects)/* overload */ : Fmx::Tmsfncuxlsbaserecordlists::TBaseRecordList(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TSheetRecordList(System::Generics::Collections::TEnumerable__1<System::TObject*>* const Collection, bool AOwnsObjects)/* overload */ : Fmx::Tmsfncuxlsbaserecordlists::TBaseRecordList(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Destroy */ inline __fastcall virtual ~TSheetRecordList() { }
	
public:
	/* {System_Generics_Collections}TList<System_TObject>.Create */ inline __fastcall TSheetRecordList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<System::TObject*> > AComparer)/* overload */ : Fmx::Tmsfncuxlsbaserecordlists::TBaseRecordList(AComparer) { }
	/* {System_Generics_Collections}TList<System_TObject>.Create */ inline __fastcall TSheetRecordList(System::Generics::Collections::TEnumerable__1<System::TObject*>* const Collection)/* overload */ : Fmx::Tmsfncuxlsbaserecordlists::TBaseRecordList(Collection) { }
	/* {System_Generics_Collections}TList<System_TObject>.Create */ inline __fastcall TSheetRecordList(System::TObject* const *Values, const int Values_High)/* overload */ : Fmx::Tmsfncuxlsbaserecordlists::TBaseRecordList(Values, Values_High) { }
	
};


#pragma pack(push,4)
class PASCALIMPLEMENTATION TChartList : public Fmx::Tmsfncuxlsbaselist::TBaseList
{
	typedef Fmx::Tmsfncuxlsbaselist::TBaseList inherited;
	
public:
	TFlxChart* operator[](int index) { return this->Items[index]; }
	
private:
	TFlxChart* __fastcall GetItems(int index);
	void __fastcall SetItems(int index, TFlxChart* const Value);
	
public:
	__property TFlxChart* Items[int index] = {read=GetItems, write=SetItems/*, default*/};
	HIDESBASE int __fastcall Add(TFlxChart* aRecord);
	HIDESBASE void __fastcall Insert(int Index, TFlxChart* aRecord);
	void __fastcall SaveToStream(Fmx::Tmsfncuole2impl::TOle2File* const DataStream);
	void __fastcall ArrangeInsertRowsAndCols(const int InsRowPos, const int InsRowCount, const int InsColPos, const int InsColCount, const Fmx::Tmsfncxlsmessages::TSheetInfo &SheetInfo);
public:
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TChartList()/* overload */ : Fmx::Tmsfncuxlsbaselist::TBaseList() { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TChartList(bool AOwnsObjects)/* overload */ : Fmx::Tmsfncuxlsbaselist::TBaseList(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TChartList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<System::TObject*> > AComparer, bool AOwnsObjects)/* overload */ : Fmx::Tmsfncuxlsbaselist::TBaseList(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TChartList(System::Generics::Collections::TEnumerable__1<System::TObject*>* const Collection, bool AOwnsObjects)/* overload */ : Fmx::Tmsfncuxlsbaselist::TBaseList(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Destroy */ inline __fastcall virtual ~TChartList() { }
	
public:
	/* {System_Generics_Collections}TList<System_TObject>.Create */ inline __fastcall TChartList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<System::TObject*> > AComparer)/* overload */ : Fmx::Tmsfncuxlsbaselist::TBaseList(AComparer) { }
	/* {System_Generics_Collections}TList<System_TObject>.Create */ inline __fastcall TChartList(System::Generics::Collections::TEnumerable__1<System::TObject*>* const Collection)/* overload */ : Fmx::Tmsfncuxlsbaselist::TBaseList(Collection) { }
	/* {System_Generics_Collections}TList<System_TObject>.Create */ inline __fastcall TChartList(System::TObject* const *Values, const int Values_High)/* overload */ : Fmx::Tmsfncuxlsbaselist::TBaseList(Values, Values_High) { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TFlxUnsupportedSheet : public TSheet
{
	typedef TSheet inherited;
	
private:
	TSheetRecordList* FSheetRecords;
	
protected:
	virtual void __fastcall SetPageHeaderFooter(Fmx::Tmsfncuxlsbaserecords::TPageHeaderFooterRecord* const P, const System::UnicodeString s);
	virtual void __fastcall AddZoomRecord();
	virtual void __fastcall FixCachePointers();
	
public:
	__fastcall virtual TFlxUnsupportedSheet(Fmx::Tmsfncuxlsworkbookglobals::TWorkbookGlobals* const aWorkbookGlobals);
	__fastcall virtual ~TFlxUnsupportedSheet();
	virtual TSheet* __fastcall DoCopyTo();
	virtual __int64 __fastcall TotalSize();
	virtual __int64 __fastcall TotalRangeSize(const int SheetIndex, const Fmx::Tmsfncuflxmessages::TXlsCellRange &CellRange);
	virtual void __fastcall LoadFromStream(Fmx::Tmsfncuole2impl::TOle2File* const DataStream, Fmx::Tmsfncxlsmessages::TRecordHeader &RecordHeader, Fmx::Tmsfncuxlsotherrecords::TBOFRecord* const First, Fmx::Tmsfncuxlssst::TSST* const SST);
	virtual void __fastcall SaveToStream(Fmx::Tmsfncuole2impl::TOle2File* const DataStream);
	virtual void __fastcall SaveRangeToStream(Fmx::Tmsfncuole2impl::TOle2File* const DataStream, const int SheetIndex, const Fmx::Tmsfncuflxmessages::TXlsCellRange &CellRange);
	virtual void __fastcall Clear();
	virtual void __fastcall ArrangeCopySheet(const Fmx::Tmsfncxlsmessages::TSheetInfo &SheetInfo);
	virtual void __fastcall ArrangeInsertRowsAndCols(const int InsRowPos, const int InsRowCount, const int InsColPos, const int InsColCount, const Fmx::Tmsfncxlsmessages::TSheetInfo &SheetInfo);
	virtual void __fastcall InsertAndCopyRowsAndCols(const int FirstRow, const int LastRow, const int DestRow, const int aRowCount, const int FirstCol, const int LastCol, const int DestCol, const int aColCount, const Fmx::Tmsfncxlsmessages::TSheetInfo &SheetInfo, const bool OnlyFormulas);
	virtual void __fastcall DeleteRowsAndCols(const System::Word aRow, const System::Word aRowCount, const System::Word aCol, const System::Word aColCount, const Fmx::Tmsfncxlsmessages::TSheetInfo &SheetInfo);
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TWorkSheet : public TSheet
{
	typedef TSheet inherited;
	
private:
	Fmx::Tmsfncuxlsbaserecordlists::TBaseRecordList* FMiscRecords1;
	Fmx::Tmsfncuxlsbaserecordlists::TBaseRecordList* FMiscRecords2;
	Fmx::Tmsfncuxlspagebreaks::THPageBreakList* FHPageBreaks;
	Fmx::Tmsfncuxlspagebreaks::TVPageBreakList* FVPageBreaks;
	Fmx::Tmsfncuxlsescher::TDrawing* FDrawing;
	Fmx::Tmsfncuxlsrowcolentries::TCells* FCells;
	Fmx::Tmsfncuxlsrowcolentries::TRangeList* FRanges;
	Fmx::Tmsfncuxlsnotes::TNoteList* FNotes;
	Fmx::Tmsfncuxlscolinfo::TColInfoList* FColumns;
	Fmx::Tmsfncuxlshyperlink::THLinkList* FHLinks;
	int FDefRowHeight;
	int FDefColWidth;
	int __fastcall GetDrawingRow(int index);
	System::UnicodeString __fastcall GetDrawingName(int index);
	System::Word __fastcall GetPrintNumberOfHorizontalPages();
	System::Word __fastcall GetPrintNumberOfVerticalPages();
	int __fastcall GetPrintScale();
	bool __fastcall GetPrintToFit();
	void __fastcall SetPrintNumberOfHorizontalPages(const System::Word Value);
	void __fastcall SetPrintNumberOfVerticalPages(const System::Word Value);
	void __fastcall SetPrintScale(const int Value);
	void __fastcall SetPrintToFit(const bool Value);
	System::Word __fastcall GetPrintOptions();
	void __fastcall SetPrintOptions(const System::Word Value);
	int __fastcall GetPrintCopies();
	Fmx::Tmsfncuflxmessages::TPrinterDriverSettings __fastcall GetPrinterDriverSettings();
	int __fastcall GetPrintPaperSize();
	int __fastcall GetPrintXResolution();
	int __fastcall GetPrintYResolution();
	void __fastcall SetPrintCopies(const int Value);
	void __fastcall SetPrinterDriverSettings(const Fmx::Tmsfncuflxmessages::TPrinterDriverSettings &Value);
	void __fastcall SetPrintPaperSize(const int Value);
	void __fastcall SetPrintXResolution(const int Value);
	void __fastcall SetPrintYResolution(const int Value);
	int __fastcall GetColOutlineLevel(int col);
	int __fastcall GetRowOutlineLevel(int row);
	void __fastcall SetColOulineLevel(int col, const int Value);
	void __fastcall SetRowOulineLevel(int row, const int Value);
	void __fastcall EnsureGuts();
	void __fastcall AddPrinterDriverRecord(Fmx::Tmsfncuxlsbaserecords::TPlsRecord* const aPlsRecord, Fmx::Tmsfncuxlsbaserecordlists::TBaseRecordList* const FRecords);
	void __fastcall RemovePrinterDriverRecord()/* overload */;
	void __fastcall RemovePrinterDriverRecord(Fmx::Tmsfncuxlsbaserecordlists::TBaseRecordList* const FRecords)/* overload */;
	bool __fastcall GetOutlineSummaryColsRightOfDetail();
	bool __fastcall GetOutlineSummaryRowsBelowDetail();
	bool __fastcall GetOutlineAutomaticStyles();
	void __fastcall SetOutlineSummaryColsRightOfDetail(const bool value);
	void __fastcall SetOutlineSummaryRowsBelowDetail(const bool value);
	void __fastcall SetOutlineAutomaticStyles(const bool value);
	bool __fastcall GetPrintHCentered();
	bool __fastcall GetPrintVCentered();
	void __fastcall SetPrintHCentered(const bool Value);
	void __fastcall SetPrintVCentered(const bool Value);
	
protected:
	virtual void __fastcall AddZoomRecord();
	virtual void __fastcall SetPageHeaderFooter(Fmx::Tmsfncuxlsbaserecords::TPageHeaderFooterRecord* const P, const System::UnicodeString s);
	virtual void __fastcall FixCachePointers();
	virtual void __fastcall AddOrRemovePane(const bool Add);
	
public:
	__fastcall virtual TWorkSheet(Fmx::Tmsfncuxlsworkbookglobals::TWorkbookGlobals* const aWorkbookGlobals);
	__fastcall TWorkSheet(Fmx::Tmsfncuxlsworkbookglobals::TWorkbookGlobals* const aWorkbookGlobals, Fmx::Tmsfncuxlssst::TSST* const SST);
	__fastcall virtual ~TWorkSheet();
	virtual TSheet* __fastcall DoCopyTo();
	virtual __int64 __fastcall TotalSize();
	virtual __int64 __fastcall TotalRangeSize(const int SheetIndex, const Fmx::Tmsfncuflxmessages::TXlsCellRange &CellRange);
	virtual void __fastcall LoadFromStream(Fmx::Tmsfncuole2impl::TOle2File* const DataStream, Fmx::Tmsfncxlsmessages::TRecordHeader &RecordHeader, Fmx::Tmsfncuxlsotherrecords::TBOFRecord* const First, Fmx::Tmsfncuxlssst::TSST* const SST);
	virtual void __fastcall SaveToStream(Fmx::Tmsfncuole2impl::TOle2File* const DataStream);
	virtual void __fastcall SaveRangeToStream(Fmx::Tmsfncuole2impl::TOle2File* const DataStream, const int SheetIndex, const Fmx::Tmsfncuflxmessages::TXlsCellRange &CellRange);
	virtual void __fastcall Clear();
	virtual void __fastcall InsertAndCopyRowsAndCols(const int FirstRow, const int LastRow, const int DestRow, const int aRowCount, const int FirstCol, const int LastCol, const int DestCol, const int aColCount, const Fmx::Tmsfncxlsmessages::TSheetInfo &SheetInfo, const bool OnlyFormulas);
	virtual void __fastcall DeleteRowsAndCols(const System::Word aRow, const System::Word aRowCount, const System::Word aCol, const System::Word aColCount, const Fmx::Tmsfncxlsmessages::TSheetInfo &SheetInfo);
	virtual void __fastcall ArrangeInsertRowsAndCols(const int InsRowPos, const int InsRowCount, const int InsColPos, const int InsColCount, const Fmx::Tmsfncxlsmessages::TSheetInfo &SheetInfo);
	virtual void __fastcall ArrangeCopySheet(const Fmx::Tmsfncxlsmessages::TSheetInfo &SheetInfo);
	void __fastcall ClearValues();
	__property Fmx::Tmsfncuxlsnotes::TNoteList* Notes = {read=FNotes};
	__property Fmx::Tmsfncuxlsrowcolentries::TCells* Cells = {read=FCells};
	__property Fmx::Tmsfncuxlshyperlink::THLinkList* HLinks = {read=FHLinks};
	int __fastcall DrawingCount();
	void __fastcall AssignDrawing(const int Index, const Fmx::Tmsfncuflxmessages::ByteArray Data, const Fmx::Tmsfncuflxmessages::TXlsImgTypes DataType);
	void __fastcall GetDrawingFromStream(const int Index, System::Classes::TStream* const Data, Fmx::Tmsfncuflxmessages::TXlsImgTypes &DataType);
	__property int DrawingRow[int index] = {read=GetDrawingRow};
	__property System::UnicodeString DrawingName[int index] = {read=GetDrawingName};
	Fmx::Tmsfncuflxmessages::TClientAnchor __fastcall GetAnchor(const int Index);
	void __fastcall SetAnchor(const int Index, const Fmx::Tmsfncuflxmessages::TClientAnchor &aAnchor);
	void __fastcall DeleteImage(const int Index);
	void __fastcall ClearImage(const int Index);
	void __fastcall AddImage(const Fmx::Tmsfncuflxmessages::ByteArray Data, const Fmx::Tmsfncuflxmessages::TXlsImgTypes DataType, const Fmx::Tmsfncuflxmessages::TImageProperties &Properties, const Fmx::Tmsfncuflxmessages::TFlxAnchorType Anchor);
	void __fastcall AddNewComment(const int Row, const int Col, const System::UnicodeString Txt, const Fmx::Tmsfncuflxmessages::TImageProperties &Properties);
	virtual void __fastcall DeleteHPageBreak(const System::Word aRow);
	virtual void __fastcall DeleteVPageBreak(const System::Word aCol);
	virtual void __fastcall InsertHPageBreak(const System::Word aRow);
	virtual void __fastcall InsertVPageBreak(const System::Word aCol);
	int __fastcall GetRowHeight(const int aRow)/* overload */;
	int __fastcall GetRowHeight(const int aRow, const bool HiddenIsZero)/* overload */;
	int __fastcall GetColWidth(const System::Word aCol)/* overload */;
	int __fastcall GetColWidth(const System::Word aCol, const bool HiddenIsZero)/* overload */;
	void __fastcall SetRowHeight(const int aRow, const int Value);
	void __fastcall SetColWidth(const System::Word aCol, const int Value);
	bool __fastcall GetRowHidden(const int aRow);
	bool __fastcall GetColHidden(const System::Word aCol);
	void __fastcall SetRowHidden(const int aRow, const bool Value);
	void __fastcall SetColHidden(const System::Word aCol, const bool Value);
	__property int DefRowHeight = {read=FDefRowHeight, nodefault};
	__property int DefColWidth = {read=FDefColWidth, nodefault};
	int __fastcall GetRowFormat(const int aRow);
	int __fastcall GetColFormat(const int aCol);
	void __fastcall SetRowFormat(const int aRow, const int Value);
	void __fastcall SetColFormat(const int aCol, const int Value);
	Fmx::Tmsfncuflxmessages::TXlsCellRange __fastcall CellMergedBounds(const int aRow, const int aCol);
	Fmx::Tmsfncuflxmessages::TXlsCellRange __fastcall CellMergedList(const int index);
	int __fastcall CellMergedListCount();
	void __fastcall MergeCells(int aRow1, int aCol1, int aRow2, int aCol2);
	void __fastcall UnMergeCells(int aRow1, int aCol1, int aRow2, int aCol2);
	bool __fastcall HasHPageBreak(const int Row);
	bool __fastcall HasVPageBreak(const int Col);
	__property bool PrintToFit = {read=GetPrintToFit, write=SetPrintToFit, nodefault};
	__property bool PrintHCentered = {read=GetPrintHCentered, write=SetPrintHCentered, nodefault};
	__property bool PrintVCentered = {read=GetPrintVCentered, write=SetPrintVCentered, nodefault};
	__property int PrintScale = {read=GetPrintScale, write=SetPrintScale, nodefault};
	__property System::Word PrintNumberOfHorizontalPages = {read=GetPrintNumberOfHorizontalPages, write=SetPrintNumberOfHorizontalPages, nodefault};
	__property System::Word PrintNumberOfVerticalPages = {read=GetPrintNumberOfVerticalPages, write=SetPrintNumberOfVerticalPages, nodefault};
	__property System::Word PrintOptions = {read=GetPrintOptions, write=SetPrintOptions, nodefault};
	__property int PrintPaperSize = {read=GetPrintPaperSize, write=SetPrintPaperSize, nodefault};
	__property int PrintCopies = {read=GetPrintCopies, write=SetPrintCopies, nodefault};
	__property int PrintXResolution = {read=GetPrintXResolution, write=SetPrintXResolution, nodefault};
	__property int PrintYResolution = {read=GetPrintYResolution, write=SetPrintYResolution, nodefault};
	__property Fmx::Tmsfncuflxmessages::TPrinterDriverSettings PrinterDriverSettings = {read=GetPrinterDriverSettings, write=SetPrinterDriverSettings};
	void __fastcall DoCreateFromData(Fmx::Tmsfncuxlssst::TSST* const SST);
	__property int RowOutlineLevel[int row] = {read=GetRowOutlineLevel, write=SetRowOulineLevel};
	__property int ColOutlineLevel[int col] = {read=GetColOutlineLevel, write=SetColOulineLevel};
	__property bool OutlineSummaryRowsBelowDetail = {read=GetOutlineSummaryRowsBelowDetail, write=SetOutlineSummaryRowsBelowDetail, nodefault};
	__property bool OutlineSummaryColsRightOfDetail = {read=GetOutlineSummaryColsRightOfDetail, write=SetOutlineSummaryColsRightOfDetail, nodefault};
	__property bool OutlineAutomaticStyles = {read=GetOutlineAutomaticStyles, write=SetOutlineAutomaticStyles, nodefault};
	virtual void __fastcall RestoreObjectCoords();
	void __fastcall RecalcRowHeights(const void * Workbook, const int Row1, const int Row2, const bool Forced, const bool KeepAutoFit, const System::Extended Adjustment);
	void __fastcall RecalcColWidths(const void * Workbook, const int Col1, const int Col2, const bool IgnoreStrings, const System::Extended Adjustment);
	void __fastcall SetAutoFilter(const int SheetIndex, const int Row, const int Col1, const int Col2);
	void __fastcall RemoveAutoFilter();
	bool __fastcall HasAutoFilter()/* overload */;
	bool __fastcall HasAutoFilter(const int sheet, const int row, const int col)/* overload */;
	Fmx::Tmsfncuflxmessages::TXlsCellRange __fastcall GetAutoFilterRange(const int Sheet);
	virtual void __fastcall FixRows();
	virtual __int64 __fastcall FixTotalSize(const bool NeedsRecalc);
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
#define RESOURCE_EMPTYSHEET u"TMSFLXEMPTYSHEET"
}	/* namespace Tmsfncuxlssheet */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCUXLSSHEET)
using namespace Fmx::Tmsfncuxlssheet;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncuxlssheetHPP
