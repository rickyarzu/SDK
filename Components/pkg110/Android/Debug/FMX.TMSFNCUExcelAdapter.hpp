// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCUExcelAdapter.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncuexceladapterHPP
#define Fmx_TmsfncuexceladapterHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <System.SysUtils.hpp>
#include <System.Variants.hpp>
#include <FMX.TMSFNCUFlxMessages.hpp>
#include <FMX.TMSFNCUFlxFormats.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncuexceladapter
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TExcelFile;
class DELPHICLASS TExcelAdapter;
//-- type declarations -------------------------------------------------------
#pragma pack(push,4)
class PASCALIMPLEMENTATION TExcelFile : public System::TObject
{
	typedef System::TObject inherited;
	
protected:
	virtual System::Variant __fastcall GetCellValue(int aRow, int aCol) = 0 ;
	virtual void __fastcall SetCellValue(int aRow, int aCol, const System::Variant &Value) = 0 ;
	virtual Fmx::Tmsfncuflxmessages::TXlsCellValue __fastcall GetCellValueX(int aRow, int aCol) = 0 ;
	virtual void __fastcall SetCellValueX(int aRow, int aCol, const Fmx::Tmsfncuflxmessages::TXlsCellValue &Value) = 0 ;
	virtual System::UnicodeString __fastcall GetCellFormula(int aRow, int aCol) = 0 ;
	virtual void __fastcall SetCellFormula(int aRow, int aCol, const System::UnicodeString Value) = 0 ;
	virtual int __fastcall GetCommentsCount(int Row) = 0 ;
	virtual System::UnicodeString __fastcall GetCommentText(int Row, int aPos) = 0 ;
	virtual int __fastcall GetCommentColumn(int Row, int aPos) = 0 ;
	virtual System::UnicodeString __fastcall GetPictureName(int Row, int aPos) = 0 ;
	virtual int __fastcall GetPicturesCount(int Row) = 0 ;
	virtual int __fastcall GetExcelNameCount() = 0 ;
	virtual System::UnicodeString __fastcall GetRangeName(int index) = 0 ;
	virtual int __fastcall GetRangeR1(int index) = 0 ;
	virtual int __fastcall GetRangeR2(int index) = 0 ;
	virtual int __fastcall GetRangeC1(int index) = 0 ;
	virtual int __fastcall GetRangeC2(int index) = 0 ;
	virtual void __fastcall SetRangeR1(int index, int value) = 0 ;
	virtual void __fastcall SetRangeR2(int index, int value) = 0 ;
	virtual void __fastcall SetRangeC1(int index, int value) = 0 ;
	virtual void __fastcall SetRangeC2(int index, int value) = 0 ;
	virtual int __fastcall GetRangeSheet(int index) = 0 ;
	virtual int __fastcall GetActiveSheet() = 0 ;
	virtual void __fastcall SetActiveSheet(const int Value) = 0 ;
	virtual System::UnicodeString __fastcall GetActiveSheetName() = 0 ;
	virtual void __fastcall SetActiveSheetName(const System::UnicodeString Value) = 0 ;
	virtual System::UnicodeString __fastcall GetActiveSheetCodeName() = 0 ;
	virtual void __fastcall SetActiveSheetCodeName(const System::UnicodeString Value) = 0 ;
	virtual Fmx::Tmsfncuflxmessages::TXlsSheetVisible __fastcall GetActiveSheetVisible() = 0 ;
	virtual void __fastcall SetActiveSheetVisible(const Fmx::Tmsfncuflxmessages::TXlsSheetVisible Value) = 0 ;
	virtual int __fastcall GetColumnWidth(int aCol) = 0 ;
	virtual int __fastcall GetColumnWidthHiddenIsZero(int aCol) = 0 ;
	virtual int __fastcall GetRowHeight(int aRow) = 0 ;
	virtual int __fastcall GetRowHeightHiddenIsZero(int aRow) = 0 ;
	virtual void __fastcall SetColumnWidth(int aCol, const int Value) = 0 ;
	virtual void __fastcall SetRowHeight(int aRow, const int Value) = 0 ;
	virtual bool __fastcall GetRowHidden(const int aRow) = 0 ;
	virtual bool __fastcall GetColumnHidden(const int aCol) = 0 ;
	virtual void __fastcall SetRowHidden(const int aRow, const bool Value) = 0 ;
	virtual void __fastcall SetColumnHidden(const int aCol, const bool Value) = 0 ;
	virtual int __fastcall GetDefaultColWidth() = 0 ;
	virtual int __fastcall GetDefaultRowHeight() = 0 ;
	virtual bool __fastcall GetAutoRowHeight(int Row) = 0 ;
	virtual void __fastcall SetAutoRowHeight(int Row, const bool Value) = 0 ;
	virtual int __fastcall GetColumnFormat(int aColumn) = 0 ;
	virtual int __fastcall GetRowFormat(int aRow) = 0 ;
	virtual void __fastcall SetColumnFormat(int aColumn, const int Value) = 0 ;
	virtual void __fastcall SetRowFormat(int aRow, const int Value) = 0 ;
	virtual int __fastcall GetCellFormat(int aRow, int aCol) = 0 ;
	virtual void __fastcall SetCellFormat(int aRow, int aCol, const int Value) = 0 ;
	virtual unsigned __fastcall GetColorPalette(Fmx::Tmsfncuflxmessages::TColorPaletteRange Index) = 0 ;
	virtual void __fastcall SetColorPalette(Fmx::Tmsfncuflxmessages::TColorPaletteRange Index, const unsigned Value) = 0 ;
	virtual Fmx::Tmsfncuflxformats::TFlxFont __fastcall GetFontList(int index) = 0 ;
	virtual void __fastcall SetFontList(int index, const Fmx::Tmsfncuflxformats::TFlxFont &Value) = 0 ;
	virtual Fmx::Tmsfncuflxformats::TFlxFormat __fastcall GetFormatList(int index) = 0 ;
	virtual void __fastcall SetFormatList(int index, const Fmx::Tmsfncuflxformats::TFlxFormat &Value) = 0 ;
	virtual System::UnicodeString __fastcall GetPageFooter() = 0 ;
	virtual System::UnicodeString __fastcall GetPageHeader() = 0 ;
	virtual void __fastcall SetPageFooter(const System::UnicodeString Value) = 0 ;
	virtual void __fastcall SetPageHeader(const System::UnicodeString Value) = 0 ;
	virtual bool __fastcall GetShowGridLines() = 0 ;
	virtual void __fastcall SetShowGridLines(const bool Value) = 0 ;
	virtual bool __fastcall GetShowGridHeaders() = 0 ;
	virtual void __fastcall SetShowGridHeaders(const bool Value) = 0 ;
	virtual bool __fastcall GetPrintGridLines() = 0 ;
	virtual void __fastcall SetPrintGridLines(const bool Value) = 0 ;
	virtual int __fastcall GetSheetZoom() = 0 ;
	virtual void __fastcall SetSheetZoom(const int Value) = 0 ;
	virtual Fmx::Tmsfncuflxmessages::TXlsMargins __fastcall GetMargins() = 0 ;
	virtual void __fastcall SetMargins(const Fmx::Tmsfncuflxmessages::TXlsMargins &Value) = 0 ;
	virtual System::Word __fastcall GetPrintNumberOfHorizontalPages() = 0 ;
	virtual System::Word __fastcall GetPrintNumberOfVerticalPages() = 0 ;
	virtual int __fastcall GetPrintScale() = 0 ;
	virtual System::Byte __fastcall GetPrintOptions() = 0 ;
	virtual bool __fastcall GetPrintToFit() = 0 ;
	virtual void __fastcall SetPrintNumberOfHorizontalPages(const System::Word Value) = 0 ;
	virtual void __fastcall SetPrintNumberOfVerticalPages(const System::Word Value) = 0 ;
	virtual void __fastcall SetPrintScale(const int Value) = 0 ;
	virtual void __fastcall SetPrintOptions(const System::Byte Value) = 0 ;
	virtual void __fastcall SetPrintToFit(const bool Value) = 0 ;
	virtual bool __fastcall GetPrintHCentered() = 0 ;
	virtual bool __fastcall GetPrintVCentered() = 0 ;
	virtual void __fastcall SetPrintHCentered(const bool Value) = 0 ;
	virtual void __fastcall SetPrintVCentered(const bool Value) = 0 ;
	virtual int __fastcall GetPrintCopies() = 0 ;
	virtual Fmx::Tmsfncuflxmessages::TPrinterDriverSettings __fastcall GetPrinterDriverSettings() = 0 ;
	virtual int __fastcall GetPrintPaperSize() = 0 ;
	virtual int __fastcall GetPrintXResolution() = 0 ;
	virtual int __fastcall GetPrintYResolution() = 0 ;
	virtual void __fastcall SetPrintCopies(const int Value) = 0 ;
	virtual void __fastcall SetPrinterDriverSettings(const Fmx::Tmsfncuflxmessages::TPrinterDriverSettings &Value) = 0 ;
	virtual void __fastcall SetPrintPaperSize(const int Value) = 0 ;
	virtual void __fastcall SetPrintXResolution(const int Value) = 0 ;
	virtual void __fastcall SetPrintYResolution(const int Value) = 0 ;
	virtual bool __fastcall GetInvalidateFormulas() = 0 ;
	virtual void __fastcall SetInvalidateFormulas(const bool Value) = 0 ;
	virtual bool __fastcall GetIsXltTemplate() = 0 ;
	virtual void __fastcall SetIsXltTemplate(const bool Value) = 0 ;
	virtual Fmx::Tmsfncuflxmessages::TXlsCellRange __fastcall GetCellMergedBounds(int aRow, int aCol) = 0 ;
	virtual Fmx::Tmsfncuflxmessages::TXlsCellRange __fastcall GetCellMergedList(int index) = 0 ;
	virtual bool __fastcall GetOptions1904Dates() = 0 ;
	virtual bool __fastcall GetOptionsR1C1() = 0 ;
	virtual bool __fastcall GetOptionsSaveExternalLinkValues() = 0 ;
	virtual void __fastcall SetOptions1904Dates(const bool Value) = 0 ;
	virtual void __fastcall SetOptionsR1C1(const bool Value) = 0 ;
	virtual void __fastcall SetOptionsSaveExternalLinkValues(const bool Value) = 0 ;
	virtual bool __fastcall GetOptionsPrecisionAsDisplayed() = 0 ;
	virtual void __fastcall SetOptionsPrecisionAsDisplayed(const bool Value) = 0 ;
	virtual bool __fastcall GetOutlineSummaryColsRightOfDetail() = 0 ;
	virtual bool __fastcall GetOutlineSummaryRowsBelowDetail() = 0 ;
	virtual bool __fastcall GetOutlineAutomaticStyles() = 0 ;
	virtual void __fastcall SetOutlineSummaryColsRightOfDetail(const bool Value) = 0 ;
	virtual void __fastcall SetOutlineSummaryRowsBelowDetail(const bool Value) = 0 ;
	virtual void __fastcall SetOutlineAutomaticStyles(const bool Value) = 0 ;
	
public:
	virtual void __fastcall Connect() = 0 ;
	virtual void __fastcall Disconnect() = 0 ;
	virtual void __fastcall OpenFile(const System::Sysutils::TFileName FileName) = 0 ;
	virtual void __fastcall OpenFileAndSearch(const System::Sysutils::TFileName FileName) = 0 ;
	virtual void __fastcall NewFile(const int SheetCount = 0x3) = 0 ;
	virtual void __fastcall LoadFromStream(System::Classes::TStream* const Stream) = 0 ;
	virtual void __fastcall CloseFile() = 0 ;
	__property int ActiveSheet = {read=GetActiveSheet, write=SetActiveSheet, nodefault};
	virtual void __fastcall InsertAndCopySheets(const int CopyFrom, const int InsertBefore, const int SheetCount) = 0 ;
	virtual void __fastcall ClearSheet() = 0 ;
	virtual void __fastcall DeleteSheet(int aSheetCount) = 0 ;
	virtual int __fastcall SheetCount() = 0 ;
	__property System::UnicodeString ActiveSheetName = {read=GetActiveSheetName, write=SetActiveSheetName};
	__property System::UnicodeString ActiveSheetCodeName = {read=GetActiveSheetCodeName, write=SetActiveSheetCodeName};
	__property Fmx::Tmsfncuflxmessages::TXlsSheetVisible ActiveSheetVisible = {read=GetActiveSheetVisible, write=SetActiveSheetVisible, nodefault};
	virtual void __fastcall SelectSheet(const int SheetNo) = 0 ;
	__property System::UnicodeString PageHeader = {read=GetPageHeader, write=SetPageHeader};
	__property System::UnicodeString PageFooter = {read=GetPageFooter, write=SetPageFooter};
	__property bool ShowGridLines = {read=GetShowGridLines, write=SetShowGridLines, nodefault};
	__property bool ShowGridHeaders = {read=GetShowGridHeaders, write=SetShowGridHeaders, nodefault};
	__property bool PrintGridLines = {read=GetPrintGridLines, write=SetPrintGridLines, nodefault};
	__property int SheetZoom = {read=GetSheetZoom, write=SetSheetZoom, nodefault};
	__property Fmx::Tmsfncuflxmessages::TXlsMargins Margins = {read=GetMargins, write=SetMargins};
	__property bool PrintToFit = {read=GetPrintToFit, write=SetPrintToFit, nodefault};
	__property System::Byte PrintOptions = {read=GetPrintOptions, write=SetPrintOptions, nodefault};
	__property int PrintScale = {read=GetPrintScale, write=SetPrintScale, nodefault};
	__property System::Word PrintNumberOfHorizontalPages = {read=GetPrintNumberOfHorizontalPages, write=SetPrintNumberOfHorizontalPages, nodefault};
	__property System::Word PrintNumberOfVerticalPages = {read=GetPrintNumberOfVerticalPages, write=SetPrintNumberOfVerticalPages, nodefault};
	__property bool PrintHCentered = {read=GetPrintHCentered, write=SetPrintHCentered, nodefault};
	__property bool PrintVCentered = {read=GetPrintVCentered, write=SetPrintVCentered, nodefault};
	__property int PrintPaperSize = {read=GetPrintPaperSize, write=SetPrintPaperSize, nodefault};
	__property int PrintCopies = {read=GetPrintCopies, write=SetPrintCopies, nodefault};
	__property int PrintXResolution = {read=GetPrintXResolution, write=SetPrintXResolution, nodefault};
	__property int PrintYResolution = {read=GetPrintYResolution, write=SetPrintYResolution, nodefault};
	__property Fmx::Tmsfncuflxmessages::TPrinterDriverSettings PrinterDriverSettings = {read=GetPrinterDriverSettings, write=SetPrinterDriverSettings};
	virtual void __fastcall DeleteMarkedRows(const System::UnicodeString Mark) = 0 ;
	virtual void __fastcall MakePageBreaks(const System::UnicodeString Mark) = 0 ;
	virtual void __fastcall InsertHPageBreak(const int Row) = 0 ;
	virtual void __fastcall InsertVPageBreak(const int Col) = 0 ;
	virtual void __fastcall DeleteHPageBreak(const int Row) = 0 ;
	virtual void __fastcall DeleteVPageBreak(const int Col) = 0 ;
	virtual bool __fastcall HasHPageBreak(const int Row) = 0 ;
	virtual bool __fastcall HasVPageBreak(const int Col) = 0 ;
	virtual void __fastcall RefreshPivotTables() = 0 ;
	virtual void __fastcall RefreshChartRanges(const System::UnicodeString VarStr) = 0 ;
	virtual void __fastcall Save(const bool AutoClose, const System::UnicodeString FileName, const Fmx::Tmsfncuflxmessages::TOnGetFileNameEvent OnGetFileName, const Fmx::Tmsfncuflxmessages::TOnGetOutStreamEvent OnGetOutStream = 0x0, System::Classes::TStream* const DataStream = (System::Classes::TStream*)(0x0)) = 0 ;
	virtual void __fastcall InsertAndCopyRows(const int FirstRow, const int LastRow, const int DestRow, const int aCount, const bool OnlyFormulas) = 0 ;
	virtual void __fastcall InsertAndCopyCols(const int FirstCol, const int LastCol, const int DestCol, const int aCount, const bool OnlyFormulas) = 0 ;
	virtual void __fastcall DeleteRows(const int aRow, const int aCount) = 0 ;
	virtual void __fastcall DeleteCols(const int aCol, const int aCount) = 0 ;
	virtual void __fastcall BeginSheet() = 0 ;
	virtual void __fastcall EndSheet(const int RowOffset) = 0 ;
	virtual bool __fastcall CanOptimizeRead() = 0 ;
	__property int RangeCount = {read=GetExcelNameCount, nodefault};
	__property System::UnicodeString RangeName[int index] = {read=GetRangeName};
	__property int RangeR1[int index] = {read=GetRangeR1, write=SetRangeR1};
	__property int RangeR2[int index] = {read=GetRangeR2, write=SetRangeR2};
	__property int RangeC1[int index] = {read=GetRangeC1, write=SetRangeC1};
	__property int RangeC2[int index] = {read=GetRangeC2, write=SetRangeC2};
	__property int RangeSheet[int index] = {read=GetRangeSheet};
	virtual void __fastcall AddRange(Fmx::Tmsfncuflxmessages::TXlsNamedRange &NamedRange) = 0 ;
	__property int PicturesCount[int Row] = {read=GetPicturesCount};
	__property System::UnicodeString PictureName[int Row][int aPos] = {read=GetPictureName};
	virtual void __fastcall AssignPicture(const int Row, const int aPos, const Fmx::Tmsfncuflxmessages::ByteArray Pic, const Fmx::Tmsfncuflxmessages::TXlsImgTypes PicType) = 0 /* overload */;
	virtual void __fastcall AssignPicture(const int Row, const int aPos, const Fmx::Tmsfncuflxmessages::ByteArray Pic, const Fmx::Tmsfncuflxmessages::TXlsImgTypes PicType, const Fmx::Tmsfncuflxmessages::TImageProperties &Props, const Fmx::Tmsfncuflxmessages::TFlxAnchorType Anchor = (Fmx::Tmsfncuflxmessages::TFlxAnchorType)(0x1)) = 0 /* overload */;
	virtual void __fastcall AssignPictureProperties(const int Row, const int aPos, const Fmx::Tmsfncuflxmessages::TImageProperties &Props, const Fmx::Tmsfncuflxmessages::TFlxAnchorType Anchor = (Fmx::Tmsfncuflxmessages::TFlxAnchorType)(0x1)) = 0 ;
	virtual void __fastcall GetPicture(const int Row, const int aPos, System::Classes::TStream* const Pic, /* out */ Fmx::Tmsfncuflxmessages::TXlsImgTypes &PicType, /* out */ Fmx::Tmsfncuflxmessages::TClientAnchor &Anchor) = 0 ;
	virtual void __fastcall DeleteImage(const int Index) = 0 ;
	virtual void __fastcall ClearImage(const int Index) = 0 ;
	virtual void __fastcall AddImage(const Fmx::Tmsfncuflxmessages::ByteArray Data, const Fmx::Tmsfncuflxmessages::TXlsImgTypes DataType, const Fmx::Tmsfncuflxmessages::TImageProperties &Properties, const Fmx::Tmsfncuflxmessages::TFlxAnchorType Anchor) = 0 ;
	__property int CommentsCount[int Row] = {read=GetCommentsCount};
	__property System::UnicodeString CommentText[int Row][int aPos] = {read=GetCommentText};
	__property int CommentColumn[int Row][int aPos] = {read=GetCommentColumn};
	virtual void __fastcall AssignComment(const int Row, const int aPos, const System::UnicodeString Comment) = 0 ;
	virtual void __fastcall SetCellComment(int Row, int Col, const System::UnicodeString Value, const Fmx::Tmsfncuflxmessages::TImageProperties &Properties) = 0 ;
	virtual System::UnicodeString __fastcall GetCellComment(int Row, int Col) = 0 ;
	virtual int __fastcall CellCount(const int aRow) = 0 ;
	virtual System::Variant __fastcall GetCellData(const int aRow, const int aColOffset) = 0 ;
	virtual Fmx::Tmsfncuflxmessages::TXlsCellValue __fastcall GetCellDataX(const int aRow, const int aColOffset) = 0 ;
	virtual void __fastcall GetCellDataX2(const int aRow, const int aColOffset, /* out */ Fmx::Tmsfncuflxmessages::TXlsCellValue &v, /* out */ Fmx::Tmsfncuflxmessages::TRTFRunList &RTFRuns) = 0 ;
	virtual void __fastcall AssignCellData(const int aRow, const int aColOffset, const System::Variant &Value) = 0 ;
	virtual void __fastcall AssignCellDataX(const int aRow, const int aColOffset, const Fmx::Tmsfncuflxmessages::TXlsCellValue &Value) = 0 ;
	virtual void __fastcall AssignCellDataX2(const int aRow, const int aColOffset, const Fmx::Tmsfncuflxmessages::TXlsCellValue &Value, const Fmx::Tmsfncuflxmessages::TRTFRunList RTFRuns) = 0 ;
	virtual void __fastcall GetCellValueX2(int aRow, int aCol, /* out */ Fmx::Tmsfncuflxmessages::TXlsCellValue &v, /* out */ Fmx::Tmsfncuflxmessages::TRTFRunList &RTFRuns) = 0 ;
	virtual void __fastcall AssignCellValueX2(int aRow, int aCol, const Fmx::Tmsfncuflxmessages::TXlsCellValue &Value, const Fmx::Tmsfncuflxmessages::TRTFRunList RTFRuns) = 0 ;
	virtual void __fastcall SetCellString(const int aRow, const int aCol, const System::UnicodeString Text, const System::UnicodeString DateFormat = System::UnicodeString(), const System::UnicodeString TimeFormat = System::UnicodeString()) = 0 /* overload */;
	virtual void __fastcall SetCellString(const int aRow, const int aCol, const System::UnicodeString Text, const Fmx::Tmsfncuflxformats::TFlxFormat &Fm, const System::UnicodeString DateFormat = System::UnicodeString(), const System::UnicodeString TimeFormat = System::UnicodeString()) = 0 /* overload */;
	virtual int __fastcall MaxRow() = 0 ;
	virtual int __fastcall MaxCol() = 0 ;
	virtual bool __fastcall IsEmptyRow(const int aRow) = 0 ;
	__property System::Variant CellValue[int aRow][int aCol] = {read=GetCellValue, write=SetCellValue};
	__property Fmx::Tmsfncuflxmessages::TXlsCellValue CellValueX[int aRow][int aCol] = {read=GetCellValueX, write=SetCellValueX};
	__property int CellFormat[int aRow][int aCol] = {read=GetCellFormat, write=SetCellFormat};
	__property System::UnicodeString CellFormula[int aRow][int aCol] = {read=GetCellFormula, write=SetCellFormula};
	virtual void __fastcall SetCellFormulaX(int aRow, int aCol, const System::UnicodeString Formula, const System::Variant &Value) = 0 ;
	virtual int __fastcall ColByIndex(const int Row, const int ColIndex) = 0 ;
	virtual int __fastcall ColIndexCount(const int Row) = 0 ;
	virtual int __fastcall ColIndex(const int Row, const int Col) = 0 ;
	__property int ColumnWidth[int aCol] = {read=GetColumnWidth, write=SetColumnWidth};
	__property int ColumnWidthHiddenIsZero[int aCol] = {read=GetColumnWidthHiddenIsZero};
	__property int RowHeight[int aRow] = {read=GetRowHeight, write=SetRowHeight};
	__property int RowHeightHiddenIsZero[int aRow] = {read=GetRowHeight};
	__property bool ColumnHidden[const int aCol] = {read=GetColumnHidden, write=SetColumnHidden};
	__property bool RowHidden[const int aRow] = {read=GetRowHidden, write=SetRowHidden};
	__property int DefaultColWidth = {read=GetDefaultColWidth, nodefault};
	__property int DefaultRowHeight = {read=GetDefaultRowHeight, nodefault};
	__property int ColumnFormat[int aColumn] = {read=GetColumnFormat, write=SetColumnFormat};
	__property int RowFormat[int aRow] = {read=GetRowFormat, write=SetRowFormat};
	virtual void __fastcall SetBounds(const int aRangePos) = 0 ;
	virtual int __fastcall GetFirstColumn() = 0 ;
	virtual void __fastcall PrepareBlockData(const int R1, const int C1, const int R2, const int C2) = 0 ;
	virtual void __fastcall AssignBlockData(const int Row, const int Col, const System::Variant &v) = 0 ;
	virtual void __fastcall PasteBlockData() = 0 ;
	virtual bool __fastcall IsWorksheet(const int index) = 0 ;
	__property bool AutoRowHeight[int Row] = {read=GetAutoRowHeight, write=SetAutoRowHeight};
	__property unsigned ColorPalette[Fmx::Tmsfncuflxmessages::TColorPaletteRange Index] = {read=GetColorPalette, write=SetColorPalette};
	virtual Fmx::Tmsfncuflxmessages::BooleanArray __fastcall GetUsedPaletteColors() = 0 ;
	__property Fmx::Tmsfncuflxformats::TFlxFont FontList[int index] = {read=GetFontList, write=SetFontList};
	virtual int __fastcall FontListCount() = 0 ;
	__property Fmx::Tmsfncuflxformats::TFlxFormat FormatList[int index] = {read=GetFormatList, write=SetFormatList};
	virtual int __fastcall FormatListCount() = 0 ;
	virtual int __fastcall AddFormat(const Fmx::Tmsfncuflxformats::TFlxFormat &Fmt) = 0 ;
	virtual int __fastcall AddFont(const Fmx::Tmsfncuflxformats::TFlxFont &Fmt) = 0 ;
	__property Fmx::Tmsfncuflxmessages::TXlsCellRange CellMergedBounds[int aRow][int aCol] = {read=GetCellMergedBounds};
	virtual void __fastcall MergeCells(const int FirstRow, const int FirstCol, const int LastRow, const int LastCol) = 0 ;
	virtual void __fastcall UnMergeCells(const int FirstRow, const int FirstCol, const int LastRow, const int LastCol) = 0 ;
	virtual int __fastcall CellMergedListCount() = 0 ;
	__property Fmx::Tmsfncuflxmessages::TXlsCellRange CellMergedList[int index] = {read=GetCellMergedList};
	virtual void __fastcall CopyToClipboard() = 0 /* overload */;
	virtual void __fastcall CopyToClipboard(const Fmx::Tmsfncuflxmessages::TXlsCellRange &Range) = 0 /* overload */;
	virtual void __fastcall PasteFromClipboard(const int Row, const int Col) = 0 ;
	virtual void __fastcall ParseComments() = 0 ;
	virtual int __fastcall HyperLinkCount() = 0 ;
	virtual Fmx::Tmsfncuflxmessages::THyperLink __fastcall GetHyperLink(const int HyperLinkIndex) = 0 ;
	virtual void __fastcall SetHyperLink(const int HyperLinkIndex, const Fmx::Tmsfncuflxmessages::THyperLink &value) = 0 ;
	virtual Fmx::Tmsfncuflxmessages::TXlsCellRange __fastcall GetHyperLinkCellRange(const int HyperLinkIndex) = 0 ;
	virtual void __fastcall SetHyperLinkCellRange(const int HyperLinkIndex, const Fmx::Tmsfncuflxmessages::TXlsCellRange &CellRange) = 0 ;
	virtual void __fastcall AddHyperLink(const Fmx::Tmsfncuflxmessages::TXlsCellRange &CellRange, const Fmx::Tmsfncuflxmessages::THyperLink &value) = 0 ;
	virtual void __fastcall DeleteHyperLink(const int HyperLinkIndex) = 0 ;
	virtual int __fastcall GetRowOutlineLevel(const int aRow) = 0 ;
	virtual void __fastcall SetRowOutlineLevel(const int FirstRow, const int LastRow, const int Value) = 0 ;
	virtual int __fastcall GetColOutlineLevel(const int aCol) = 0 ;
	virtual void __fastcall SetColOutlineLevel(const int FirstCol, const int LastCol, const int Level) = 0 ;
	__property bool OutlineSummaryRowsBelowDetail = {read=GetOutlineSummaryRowsBelowDetail, write=SetOutlineSummaryRowsBelowDetail, nodefault};
	__property bool OutlineSummaryColsRightOfDetail = {read=GetOutlineSummaryColsRightOfDetail, write=SetOutlineSummaryColsRightOfDetail, nodefault};
	__property bool OutlineAutomaticStyles = {read=GetOutlineAutomaticStyles, write=SetOutlineAutomaticStyles, nodefault};
	__property bool Options1904Dates = {read=GetOptions1904Dates, write=SetOptions1904Dates, nodefault};
	__property bool OptionsR1C1 = {read=GetOptionsR1C1, write=SetOptionsR1C1, nodefault};
	__property bool OptionsSaveExternalLinkValues = {read=GetOptionsSaveExternalLinkValues, write=SetOptionsSaveExternalLinkValues, nodefault};
	__property bool OptionsPrecisionAsDisplayed = {read=GetOptionsPrecisionAsDisplayed, write=SetOptionsPrecisionAsDisplayed, nodefault};
	virtual void __fastcall FreezePanes(const int Row, const int Col) = 0 ;
	virtual void __fastcall GetFrozenPanes(/* out */ int &Row, /* out */ int &Col) = 0 ;
	virtual void __fastcall SplitWindow(const int xOffset, const int yOffset) = 0 ;
	virtual void __fastcall GetSplitWindow(/* out */ int &xOffset, /* out */ int &yOffset) = 0 ;
	__property bool InvalidateFormulas = {read=GetInvalidateFormulas, write=SetInvalidateFormulas, nodefault};
	__property bool IsXltTemplate = {read=GetIsXltTemplate, write=SetIsXltTemplate, nodefault};
	virtual void __fastcall AutofitRow(const int row1, const int row2, const bool AutofitNotAutofittingRows, const bool keepHeightAutomatic, const System::Extended adjustment) = 0 ;
	virtual void __fastcall AutofitCol(const int Col1, const int Col2, const bool IgnoreStrings, const System::Extended Adjustment) = 0 ;
	virtual void __fastcall AutofitRowsOnWorkbook(const bool AutofitNotAutofittingRows, const bool KeepSizesAutomatic, const System::Extended Adjustment) = 0 ;
	virtual void __fastcall SetAutoFilter(const int row, const int col1, const int col2) = 0 /* overload */;
	virtual void __fastcall RemoveAutoFilter() = 0 ;
	virtual bool __fastcall HasAutoFilter() = 0 /* overload */;
	virtual bool __fastcall HasAutoFilter(const int row, const int col) = 0 /* overload */;
	virtual Fmx::Tmsfncuflxmessages::TXlsCellRange __fastcall GetAutoFilterRange() = 0 ;
	virtual int __fastcall DefaultFormatId() = 0 ;
	virtual System::UnicodeString __fastcall FormatValue1904(const System::Variant &CellValue, const System::UnicodeString Format, int &Color) = 0 ;
public:
	/* TObject.Create */ inline __fastcall TExcelFile() : System::TObject() { }
	/* TObject.Destroy */ inline __fastcall virtual ~TExcelFile() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TExcelAdapter : public System::Classes::TComponent
{
	typedef System::Classes::TComponent inherited;
	
private:
	System::UnicodeString FBasePathToOpen;
	
public:
	virtual TExcelFile* __fastcall GetWorkbook() = 0 ;
	
__published:
	__property System::UnicodeString BasePathToOpen = {read=FBasePathToOpen, write=FBasePathToOpen};
public:
	/* TComponent.Create */ inline __fastcall virtual TExcelAdapter(System::Classes::TComponent* AOwner) : System::Classes::TComponent(AOwner) { }
	/* TComponent.Destroy */ inline __fastcall virtual ~TExcelAdapter() { }
	
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
}	/* namespace Tmsfncuexceladapter */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCUEXCELADAPTER)
using namespace Fmx::Tmsfncuexceladapter;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncuexceladapterHPP
