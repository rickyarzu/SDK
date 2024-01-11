// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCXLSAdapter.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncxlsadapterHPP
#define Fmx_TmsfncxlsadapterHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.SysUtils.hpp>
#include <System.Classes.hpp>
#include <FMX.TMSFNCUExcelAdapter.hpp>
#include <FMX.TMSFNCXlsBaseTemplateStore.hpp>
#include <FMX.TMSFNCUFlxMessages.hpp>
#include <FMX.TMSFNCUExcelRecords.hpp>
#include <FMX.TMSFNCXlsMessages.hpp>
#include <FMX.TMSFNCUFlxRowComments.hpp>
#include <FMX.TMSFNCUOle2Impl.hpp>
#include <System.Variants.hpp>
#include <System.Types.hpp>
#include <FMX.TMSFNCUXlsSheet.hpp>
#include <FMX.TMSFNCUFlxFormats.hpp>
#include <FMX.TMSFNCUXlsRowColEntries.hpp>
#include <FMX.TMSFNCUXlsXF.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncxlsadapter
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TXLSAdapter;
class DELPHICLASS TXLSFile;
//-- type declarations -------------------------------------------------------
enum DECLSPEC_DENUM TExcelSaveFormatNative : unsigned char { snXLS, snCSVComma, snCSVSemiColon, snTabDelimited };

typedef System::Set<TExcelSaveFormatNative, TExcelSaveFormatNative::snXLS, TExcelSaveFormatNative::snTabDelimited> TSetOfExcelSaveFormatNative;

#pragma pack(push,4)
class PASCALIMPLEMENTATION TXLSAdapter : public Fmx::Tmsfncuexceladapter::TExcelAdapter
{
	typedef Fmx::Tmsfncuexceladapter::TExcelAdapter inherited;
	
private:
	Fmx::Tmsfncxlsbasetemplatestore::TXlsBaseTemplateStore* FTemplateStore;
	TSetOfExcelSaveFormatNative FSaveFormat;
	bool FAllowOverwritingFiles;
	void __fastcall SetTemplateStore(Fmx::Tmsfncxlsbasetemplatestore::TXlsBaseTemplateStore* const Value);
	
protected:
	virtual void __fastcall Notification(System::Classes::TComponent* AComponent, System::Classes::TOperation Operation);
	
public:
	__fastcall virtual TXLSAdapter(System::Classes::TComponent* AOwner);
	virtual Fmx::Tmsfncuexceladapter::TExcelFile* __fastcall GetWorkbook();
	
__published:
	__property TSetOfExcelSaveFormatNative SaveFormat = {read=FSaveFormat, write=FSaveFormat, default=1};
	__property Fmx::Tmsfncxlsbasetemplatestore::TXlsBaseTemplateStore* TemplateStore = {read=FTemplateStore, write=SetTemplateStore};
	__property bool AllowOverwritingFiles = {read=FAllowOverwritingFiles, write=FAllowOverwritingFiles, nodefault};
public:
	/* TComponent.Destroy */ inline __fastcall virtual ~TXLSAdapter() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TXLSFile : public Fmx::Tmsfncuexceladapter::TExcelFile
{
	typedef Fmx::Tmsfncuexceladapter::TExcelFile inherited;
	
private:
	TXLSAdapter* FAdapter;
	int FActiveSheet;
	Fmx::Tmsfncuexcelrecords::TWorkbook* FWorkbook;
	Fmx::Tmsfncuflxmessages::ByteArray FOtherStreams;
	int FirstColumn;
	int LastColumn;
	bool AllowOverwritingFiles;
	bool IsFileModified;
	Fmx::Tmsfncuflxrowcomments::TRowComments* RowPictures;
	void __fastcall ParsePictures();
	void __fastcall OpenStream(System::Classes::TStream* const aStream);
	void __fastcall SaveAsXls(const System::UnicodeString aFileName, System::Classes::TStream* const aStream)/* overload */;
	void __fastcall SaveAsXls(System::Classes::TStream* const aStream)/* overload */;
	void __fastcall SaveAsTextDelimited(const System::UnicodeString FileName, System::Classes::TStream* const DataStream, const System::WideChar Delim);
	void __fastcall InternalSetCellString(const int aRow, const int aCol, const System::UnicodeString Text, const Fmx::Tmsfncuflxformats::PFlxFormat Fm, const System::UnicodeString DateFormat, const System::UnicodeString TimeFormat, const Fmx::Tmsfncuflxmessages::PFormatSettings FormatSettings);
	void __fastcall SetCellValueAndFmt(const int aRow, const int aCol, const System::Variant &v, const Fmx::Tmsfncuflxformats::PFlxFormat Fm);
	System::UnicodeString __fastcall SkipThousands(const System::UnicodeString s, const Fmx::Tmsfncuflxmessages::PFormatSettings FormatSettings);
	void __fastcall RestoreObjectSizes();
	void __fastcall GetPercentAndCurrencyFormat(const int aRow, const int aCol, Fmx::Tmsfncuflxformats::TFlxFormat &Fmt1, const bool HasExp, const bool HasPercent, const bool HasCurrency, const bool NeedsDecimals, const Fmx::Tmsfncuflxmessages::PFormatSettings FormatSettings);
	
protected:
	virtual int __fastcall GetActiveSheet();
	virtual void __fastcall SetActiveSheet(const int Value);
	virtual System::UnicodeString __fastcall GetActiveSheetName();
	virtual void __fastcall SetActiveSheetName(const System::UnicodeString Value);
	virtual System::UnicodeString __fastcall GetActiveSheetCodeName();
	virtual void __fastcall SetActiveSheetCodeName(const System::UnicodeString Value);
	virtual Fmx::Tmsfncuflxmessages::TXlsSheetVisible __fastcall GetActiveSheetVisible();
	virtual void __fastcall SetActiveSheetVisible(const Fmx::Tmsfncuflxmessages::TXlsSheetVisible Value);
	virtual int __fastcall GetColumnWidth(int aCol);
	virtual int __fastcall GetColumnWidthHiddenIsZero(int aCol);
	virtual int __fastcall GetRowHeight(int aRow);
	virtual int __fastcall GetRowHeightHiddenIsZero(int aRow);
	virtual void __fastcall SetColumnWidth(int aCol, const int Value);
	virtual void __fastcall SetRowHeight(int aRow, const int Value);
	virtual bool __fastcall GetRowHidden(const int aRow);
	virtual bool __fastcall GetColumnHidden(const int aCol);
	virtual void __fastcall SetRowHidden(const int aRow, const bool Value);
	virtual void __fastcall SetColumnHidden(const int aCol, const bool Value);
	virtual int __fastcall GetDefaultColWidth();
	virtual int __fastcall GetDefaultRowHeight();
	virtual int __fastcall GetCommentsCount(int Row);
	virtual System::UnicodeString __fastcall GetCommentText(int Row, int aPos);
	virtual int __fastcall GetCommentColumn(int Row, int aPos);
	virtual System::UnicodeString __fastcall GetPictureName(int Row, int aPos);
	virtual int __fastcall GetPicturesCount(int Row);
	virtual System::Variant __fastcall GetCellValue(int aRow, int aCol);
	virtual void __fastcall SetCellValue(int aRow, int aCol, const System::Variant &Value);
	virtual Fmx::Tmsfncuflxmessages::TXlsCellValue __fastcall GetCellValueX(int aRow, int aCol);
	virtual void __fastcall SetCellValueX(int aRow, int aCol, const Fmx::Tmsfncuflxmessages::TXlsCellValue &Value);
	virtual System::UnicodeString __fastcall GetCellFormula(int aRow, int aCol);
	virtual void __fastcall SetCellFormula(int aRow, int aCol, const System::UnicodeString Value);
	virtual bool __fastcall GetAutoRowHeight(int Row);
	virtual void __fastcall SetAutoRowHeight(int Row, const bool Value);
	virtual int __fastcall GetColumnFormat(int aColumn);
	virtual int __fastcall GetRowFormat(int aRow);
	virtual void __fastcall SetColumnFormat(int aColumn, const int Value);
	virtual void __fastcall SetRowFormat(int aRow, const int Value);
	virtual int __fastcall GetCellFormat(int aRow, int aCol);
	virtual void __fastcall SetCellFormat(int aRow, int aCol, const int Value);
	virtual unsigned __fastcall GetColorPalette(Fmx::Tmsfncuflxmessages::TColorPaletteRange Index);
	virtual void __fastcall SetColorPalette(Fmx::Tmsfncuflxmessages::TColorPaletteRange Index, const unsigned Value);
	virtual Fmx::Tmsfncuflxformats::TFlxFont __fastcall GetFontList(int index);
	virtual void __fastcall SetFontList(int index, const Fmx::Tmsfncuflxformats::TFlxFont &Value);
	virtual Fmx::Tmsfncuflxformats::TFlxFormat __fastcall GetFormatList(int index);
	virtual void __fastcall SetFormatList(int index, const Fmx::Tmsfncuflxformats::TFlxFormat &Value);
	virtual System::UnicodeString __fastcall GetPageFooter();
	virtual System::UnicodeString __fastcall GetPageHeader();
	virtual void __fastcall SetPageFooter(const System::UnicodeString Value);
	virtual void __fastcall SetPageHeader(const System::UnicodeString Value);
	virtual bool __fastcall GetShowGridLines();
	virtual void __fastcall SetShowGridLines(const bool Value);
	virtual bool __fastcall GetShowGridHeaders();
	virtual void __fastcall SetShowGridHeaders(const bool Value);
	virtual bool __fastcall GetPrintGridLines();
	virtual void __fastcall SetPrintGridLines(const bool Value);
	virtual bool __fastcall GetPrintHCentered();
	virtual bool __fastcall GetPrintVCentered();
	virtual void __fastcall SetPrintHCentered(const bool Value);
	virtual void __fastcall SetPrintVCentered(const bool Value);
	virtual int __fastcall GetSheetZoom();
	virtual void __fastcall SetSheetZoom(const int Value);
	virtual Fmx::Tmsfncuflxmessages::TXlsMargins __fastcall GetMargins();
	virtual void __fastcall SetMargins(const Fmx::Tmsfncuflxmessages::TXlsMargins &Value);
	virtual System::Word __fastcall GetPrintNumberOfHorizontalPages();
	virtual System::Word __fastcall GetPrintNumberOfVerticalPages();
	virtual int __fastcall GetPrintScale();
	virtual System::Byte __fastcall GetPrintOptions();
	virtual bool __fastcall GetPrintToFit();
	virtual void __fastcall SetPrintNumberOfHorizontalPages(const System::Word Value);
	virtual void __fastcall SetPrintNumberOfVerticalPages(const System::Word Value);
	virtual void __fastcall SetPrintScale(const int Value);
	virtual void __fastcall SetPrintToFit(const bool Value);
	virtual void __fastcall SetPrintOptions(const System::Byte Value);
	virtual int __fastcall GetPrintCopies();
	virtual Fmx::Tmsfncuflxmessages::TPrinterDriverSettings __fastcall GetPrinterDriverSettings();
	virtual int __fastcall GetPrintPaperSize();
	virtual int __fastcall GetPrintXResolution();
	virtual int __fastcall GetPrintYResolution();
	virtual void __fastcall SetPrintCopies(const int Value);
	virtual void __fastcall SetPrinterDriverSettings(const Fmx::Tmsfncuflxmessages::TPrinterDriverSettings &Value);
	virtual void __fastcall SetPrintPaperSize(const int Value);
	virtual void __fastcall SetPrintXResolution(const int Value);
	virtual void __fastcall SetPrintYResolution(const int Value);
	virtual Fmx::Tmsfncuflxmessages::TXlsCellRange __fastcall GetCellMergedBounds(int aRow, int aCol);
	virtual Fmx::Tmsfncuflxmessages::TXlsCellRange __fastcall GetCellMergedList(int index);
	virtual bool __fastcall GetOptions1904Dates();
	virtual bool __fastcall GetOptionsR1C1();
	virtual bool __fastcall GetOptionsSaveExternalLinkValues();
	virtual void __fastcall SetOptions1904Dates(const bool Value);
	virtual void __fastcall SetOptionsR1C1(const bool Value);
	virtual void __fastcall SetOptionsSaveExternalLinkValues(const bool Value);
	virtual bool __fastcall GetOptionsPrecisionAsDisplayed();
	virtual void __fastcall SetOptionsPrecisionAsDisplayed(const bool Value);
	virtual bool __fastcall GetOutlineSummaryColsRightOfDetail();
	virtual bool __fastcall GetOutlineSummaryRowsBelowDetail();
	virtual bool __fastcall GetOutlineAutomaticStyles();
	virtual void __fastcall SetOutlineSummaryColsRightOfDetail(const bool Value);
	virtual void __fastcall SetOutlineSummaryRowsBelowDetail(const bool Value);
	virtual void __fastcall SetOutlineAutomaticStyles(const bool Value);
	virtual bool __fastcall GetInvalidateFormulas();
	virtual void __fastcall SetInvalidateFormulas(const bool Value);
	virtual bool __fastcall GetIsXltTemplate();
	virtual void __fastcall SetIsXltTemplate(const bool Value);
	
public:
	__fastcall TXLSFile(TXLSAdapter* const aAdapter)/* overload */;
	__fastcall TXLSFile(TXLSAdapter* const aAdapter, const bool aAllowOverwritingFiles)/* overload */;
	__fastcall virtual ~TXLSFile();
	virtual void __fastcall Connect();
	virtual void __fastcall Disconnect();
	Fmx::Tmsfncuexcelrecords::TWorkbook* __fastcall GetTWorkbook();
	virtual void __fastcall NewFile(const int SheetCount = 0x3);
	virtual void __fastcall OpenFile(const System::Sysutils::TFileName FileName);
	virtual void __fastcall OpenFileAndSearch(const System::Sysutils::TFileName FileName);
	void __fastcall OpenFileAndOrSearch(const System::Sysutils::TFileName FileName, const bool Search);
	virtual void __fastcall LoadFromStream(System::Classes::TStream* const aStream);
	virtual void __fastcall CloseFile();
	virtual void __fastcall InsertAndCopySheets(const int CopyFrom, const int InsertBefore, const int SheetCount);
	virtual void __fastcall ClearSheet();
	virtual void __fastcall DeleteSheet(int aSheetCount);
	virtual int __fastcall SheetCount();
	virtual void __fastcall SelectSheet(const int SheetNo);
	virtual void __fastcall DeleteMarkedRows(const System::UnicodeString Mark);
	virtual void __fastcall RefreshChartRanges(const System::UnicodeString VarStr);
	virtual void __fastcall MakePageBreaks(const System::UnicodeString Mark);
	virtual void __fastcall InsertHPageBreak(const int Row);
	virtual void __fastcall InsertVPageBreak(const int Col);
	virtual void __fastcall DeleteHPageBreak(const int Row);
	virtual void __fastcall DeleteVPageBreak(const int Col);
	virtual bool __fastcall HasHPageBreak(const int Row);
	virtual bool __fastcall HasVPageBreak(const int Col);
	virtual void __fastcall RefreshPivotTables();
	virtual void __fastcall Save(const bool AutoClose, const System::UnicodeString FileName, const Fmx::Tmsfncuflxmessages::TOnGetFileNameEvent OnGetFileName, const Fmx::Tmsfncuflxmessages::TOnGetOutStreamEvent OnGetOutStream = 0x0, System::Classes::TStream* const DataStream = (System::Classes::TStream*)(0x0));
	virtual void __fastcall InsertAndCopyRows(const int FirstRow, const int LastRow, const int DestRow, const int aCount, const bool OnlyFormulas);
	virtual void __fastcall InsertAndCopyCols(const int FirstCol, const int LastCol, const int DestCol, const int aCount, const bool OnlyFormulas);
	virtual void __fastcall DeleteRows(const int aRow, const int aCount);
	virtual void __fastcall DeleteCols(const int aCol, const int aCount);
	virtual void __fastcall BeginSheet();
	virtual void __fastcall EndSheet(const int RowOffset);
	virtual bool __fastcall CanOptimizeRead();
	virtual int __fastcall GetExcelNameCount();
	virtual System::UnicodeString __fastcall GetRangeName(int index);
	virtual int __fastcall GetRangeR1(int index);
	virtual int __fastcall GetRangeR2(int index);
	virtual int __fastcall GetRangeC1(int index);
	virtual int __fastcall GetRangeC2(int index);
	virtual void __fastcall SetRangeR1(int index, int value);
	virtual void __fastcall SetRangeR2(int index, int value);
	virtual void __fastcall SetRangeC1(int index, int value);
	virtual void __fastcall SetRangeC2(int index, int value);
	virtual int __fastcall GetRangeSheet(int index);
	virtual void __fastcall AddRange(Fmx::Tmsfncuflxmessages::TXlsNamedRange &NamedRange);
	virtual void __fastcall AssignPicture(const int Row, const int aPos, const Fmx::Tmsfncuflxmessages::ByteArray Pic, const Fmx::Tmsfncuflxmessages::TXlsImgTypes PicType)/* overload */;
	virtual void __fastcall AssignPicture(const int Row, const int aPos, const Fmx::Tmsfncuflxmessages::ByteArray Pic, const Fmx::Tmsfncuflxmessages::TXlsImgTypes PicType, const Fmx::Tmsfncuflxmessages::TImageProperties &Props, const Fmx::Tmsfncuflxmessages::TFlxAnchorType Anchor = (Fmx::Tmsfncuflxmessages::TFlxAnchorType)(0x1))/* overload */;
	virtual void __fastcall AssignPictureProperties(const int Row, const int aPos, const Fmx::Tmsfncuflxmessages::TImageProperties &Props, const Fmx::Tmsfncuflxmessages::TFlxAnchorType Anchor = (Fmx::Tmsfncuflxmessages::TFlxAnchorType)(0x1));
	virtual void __fastcall GetPicture(const int Row, const int aPos, System::Classes::TStream* const Pic, /* out */ Fmx::Tmsfncuflxmessages::TXlsImgTypes &PicType, /* out */ Fmx::Tmsfncuflxmessages::TClientAnchor &Anchor);
	virtual void __fastcall DeleteImage(const int Index);
	virtual void __fastcall ClearImage(const int Index);
	virtual void __fastcall AddImage(const Fmx::Tmsfncuflxmessages::ByteArray Data, const Fmx::Tmsfncuflxmessages::TXlsImgTypes DataType, const Fmx::Tmsfncuflxmessages::TImageProperties &Properties, const Fmx::Tmsfncuflxmessages::TFlxAnchorType Anchor);
	virtual void __fastcall AssignComment(const int Row, const int aPos, const System::UnicodeString Comment);
	virtual System::UnicodeString __fastcall GetCellComment(int Row, int Col);
	virtual void __fastcall SetCellComment(int Row, int Col, const System::UnicodeString Value, const Fmx::Tmsfncuflxmessages::TImageProperties &Properties);
	virtual int __fastcall CellMergedListCount();
	virtual void __fastcall MergeCells(const int FirstRow, const int FirstCol, const int LastRow, const int LastCol);
	virtual void __fastcall UnMergeCells(const int FirstRow, const int FirstCol, const int LastRow, const int LastCol);
	virtual int __fastcall CellCount(const int aRow);
	virtual System::Variant __fastcall GetCellData(const int aRow, const int aColOffset);
	virtual Fmx::Tmsfncuflxmessages::TXlsCellValue __fastcall GetCellDataX(const int aRow, const int aColOffset);
	virtual void __fastcall GetCellDataX2(const int aRow, const int aColOffset, /* out */ Fmx::Tmsfncuflxmessages::TXlsCellValue &v, /* out */ Fmx::Tmsfncuflxmessages::TRTFRunList &RTFRuns);
	virtual void __fastcall AssignCellData(const int aRow, const int aColOffset, const System::Variant &Value);
	virtual void __fastcall AssignCellDataX(const int aRow, const int aColOffset, const Fmx::Tmsfncuflxmessages::TXlsCellValue &Value);
	virtual void __fastcall AssignCellDataX2(const int aRow, const int aColOffset, const Fmx::Tmsfncuflxmessages::TXlsCellValue &Value, const Fmx::Tmsfncuflxmessages::TRTFRunList RTFRuns);
	virtual void __fastcall GetCellValueX2(int aRow, int aCol, /* out */ Fmx::Tmsfncuflxmessages::TXlsCellValue &v, /* out */ Fmx::Tmsfncuflxmessages::TRTFRunList &RTFRuns);
	virtual void __fastcall AssignCellValueX2(int aRow, int aCol, const Fmx::Tmsfncuflxmessages::TXlsCellValue &Value, const Fmx::Tmsfncuflxmessages::TRTFRunList RTFRuns);
	virtual void __fastcall SetCellFormulaX(int aRow, int aCol, const System::UnicodeString Formula, const System::Variant &Value);
	virtual void __fastcall SetCellString(const int aRow, const int aCol, const System::UnicodeString Text, const System::UnicodeString DateFormat = System::UnicodeString(), const System::UnicodeString TimeFormat = System::UnicodeString())/* overload */;
	virtual void __fastcall SetCellString(const int aRow, const int aCol, const System::UnicodeString Text, const Fmx::Tmsfncuflxformats::TFlxFormat &Fm, const System::UnicodeString DateFormat = System::UnicodeString(), const System::UnicodeString TimeFormat = System::UnicodeString())/* overload */;
	virtual int __fastcall MaxRow();
	virtual int __fastcall MaxCol();
	virtual bool __fastcall IsEmptyRow(const int aRow);
	virtual int __fastcall ColByIndex(const int Row, const int ColIndex);
	virtual int __fastcall ColIndexCount(const int Row);
	virtual int __fastcall ColIndex(const int Row, const int Col);
	virtual void __fastcall SetBounds(const int aRangePos);
	virtual int __fastcall GetFirstColumn();
	virtual void __fastcall PrepareBlockData(const int R1, const int C1, const int R2, const int C2);
	virtual void __fastcall AssignBlockData(const int Row, const int Col, const System::Variant &v);
	virtual void __fastcall PasteBlockData();
	virtual bool __fastcall IsWorksheet(const int index);
	virtual int __fastcall FontListCount();
	virtual int __fastcall FormatListCount();
	virtual int __fastcall AddFont(const Fmx::Tmsfncuflxformats::TFlxFont &Fmt);
	virtual int __fastcall AddFormat(const Fmx::Tmsfncuflxformats::TFlxFormat &Fmt);
	void __fastcall CopyToClipboardFormat(const Fmx::Tmsfncuflxmessages::TXlsCellRange &Range, /* out */ System::UnicodeString &textString, System::Classes::TStream* const xlsStream);
	virtual void __fastcall CopyToClipboard()/* overload */;
	virtual void __fastcall CopyToClipboard(const Fmx::Tmsfncuflxmessages::TXlsCellRange &Range)/* overload */;
	virtual void __fastcall PasteFromClipboard(const int Row, const int Col);
	void __fastcall PasteFromXlsClipboardFormat(const int Row, const int Col, System::Classes::TStream* const Stream);
	void __fastcall PasteFromTextClipboardFormat(const int Row, const int Col, const System::UnicodeString Data);
	virtual void __fastcall ParseComments();
	virtual int __fastcall HyperLinkCount();
	virtual Fmx::Tmsfncuflxmessages::THyperLink __fastcall GetHyperLink(const int HyperLinkIndex);
	virtual void __fastcall SetHyperLink(const int HyperLinkIndex, const Fmx::Tmsfncuflxmessages::THyperLink &value);
	virtual Fmx::Tmsfncuflxmessages::TXlsCellRange __fastcall GetHyperLinkCellRange(const int HyperLinkIndex);
	virtual void __fastcall SetHyperLinkCellRange(const int HyperLinkIndex, const Fmx::Tmsfncuflxmessages::TXlsCellRange &CellRange);
	virtual void __fastcall AddHyperLink(const Fmx::Tmsfncuflxmessages::TXlsCellRange &CellRange, const Fmx::Tmsfncuflxmessages::THyperLink &value);
	virtual void __fastcall DeleteHyperLink(const int HyperLinkIndex);
	virtual int __fastcall GetRowOutlineLevel(const int aRow);
	virtual void __fastcall SetRowOutlineLevel(const int FirstRow, const int LastRow, const int Level);
	virtual int __fastcall GetColOutlineLevel(const int aCol);
	virtual void __fastcall SetColOutlineLevel(const int FirstCol, const int LastCol, const int Level);
	virtual Fmx::Tmsfncuflxmessages::BooleanArray __fastcall GetUsedPaletteColors();
	virtual void __fastcall FreezePanes(const int Row, const int Col);
	virtual void __fastcall GetFrozenPanes(/* out */ int &Row, /* out */ int &Col);
	virtual void __fastcall SplitWindow(const int xOffset, const int yOffset);
	virtual void __fastcall GetSplitWindow(/* out */ int &xOffset, /* out */ int &yOffset);
	virtual void __fastcall AutofitRow(const int row1, const int row2, const bool AutofitNotAutofittingRows, const bool keepHeightAutomatic, const System::Extended adjustment);
	virtual void __fastcall AutofitCol(const int Col1, const int Col2, const bool IgnoreStrings, const System::Extended Adjustment);
	virtual void __fastcall AutofitRowsOnWorkbook(const bool AutofitNotAutofittingRows, const bool KeepSizesAutomatic, const System::Extended Adjustment);
	virtual void __fastcall SetAutoFilter(const int row, const int col1, const int col2)/* overload */;
	virtual void __fastcall RemoveAutoFilter();
	virtual bool __fastcall HasAutoFilter()/* overload */;
	virtual bool __fastcall HasAutoFilter(const int row, const int col)/* overload */;
	virtual Fmx::Tmsfncuflxmessages::TXlsCellRange __fastcall GetAutoFilterRange();
	virtual int __fastcall DefaultFormatId();
	virtual System::UnicodeString __fastcall FormatValue1904(const System::Variant &CellValue, const System::UnicodeString Format, int &Color);
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
}	/* namespace Tmsfncxlsadapter */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCXLSADAPTER)
using namespace Fmx::Tmsfncxlsadapter;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncxlsadapterHPP
