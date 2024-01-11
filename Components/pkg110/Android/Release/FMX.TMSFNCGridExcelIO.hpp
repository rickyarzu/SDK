// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCGridExcelIO.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncgridexcelioHPP
#define Fmx_TmsfncgridexcelioHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <FMX.Controls.hpp>
#include <FMX.TMSFNCUFlxNumberFormat.hpp>
#include <FMX.TMSFNCCustomGrid.hpp>
#include <FMX.TMSFNCCustomComponent.hpp>
#include <FMX.TMSFNCUFlxFormats.hpp>
#include <FMX.TMSFNCUExcelAdapter.hpp>
#include <FMX.TMSFNCUFlxMessages.hpp>
#include <FMX.TMSFNCGraphicsTypes.hpp>
#include <FMX.TMSFNCGraphics.hpp>
#include <System.SysUtils.hpp>
#include <System.Variants.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.TMSFNCGridCell.hpp>
#include <FMX.TMSFNCUtils.hpp>
#include <FMX.TMSFNCGridData.hpp>
#include <FMX.TMSFNCXLSAdapter.hpp>
#include <FMX.TMSFNCXlsMessages.hpp>
#include <FMX.TMSFNCUFlxUtils.hpp>
#include <FMX.Graphics.hpp>
#include <System.UITypes.hpp>
#include <System.Types.hpp>
#include <FMX.DialogService.hpp>
#include <FMX.TMSFNCCustomScrollControl.hpp>
#include <FMX.TMSFNCCustomControl.hpp>
#include <FMX.Types.hpp>
#include <System.Generics.Collections.hpp>
#include <System.Generics.Defaults.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncgridexcelio
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCGridIOOptions;
class DELPHICLASS TAGrid;
struct TOneRowBorder;
class DELPHICLASS TTMSFNCGridExcelIO;
//-- type declarations -------------------------------------------------------
typedef void __fastcall (__closure *TTMSFNCGridIOProgressEvent)(System::TObject* Sender, int SheetNum, int SheetTot, int RowNum, int RowTot);

enum DECLSPEC_DENUM TOverwriteMode : unsigned char { omNever, omAlways, omWarn };

enum DECLSPEC_DENUM TInsertInSheet : unsigned char { InsertInSheet_Clear, InsertInSheet_OverwriteCells, InsertInSheet_InsertRows, InsertInSheet_InsertCols, InsertInSheet_InsertRowsExceptFirstAndSecond, InsertInSheet_InsertColsExceptFirstAndSecond };

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCGridIOOptions : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	bool FImportCellProperties;
	bool FImportCellSizes;
	bool FImportCellFormats;
	bool FImportClearCells;
	bool FImportFormulas;
	bool FImportImages;
	bool FImportPrintOptions;
	bool FExportCellSizes;
	bool FExportCellFormats;
	bool FExportFormulas;
	bool FExportCellProperties;
	bool FExportWordWrapped;
	bool FExportHTMLTags;
	bool FExportImages;
	bool FExportHiddenColumns;
	bool FExportHiddenRows;
	bool FExportShowInExcel;
	System::UnicodeString FExportOverwriteMessage;
	TOverwriteMode FExportOverwrite;
	bool FExportHardBorders;
	bool FUseExcelStandardColorPalette;
	bool FExportShowGridLines;
	bool FImportLockedCellsAsReadonly;
	bool FExportReadonlyCellsAsLocked;
	bool FExportPrintOptions;
	bool FExportSummaryRowsBelowDetail;
	bool FExportCellMargins;
	
public:
	__fastcall TTMSFNCGridIOOptions();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property bool ImportFormulas = {read=FImportFormulas, write=FImportFormulas, default=1};
	__property bool ImportImages = {read=FImportImages, write=FImportImages, default=1};
	__property bool ImportCellFormats = {read=FImportCellFormats, write=FImportCellFormats, default=1};
	__property bool ImportCellProperties = {read=FImportCellProperties, write=FImportCellProperties, default=0};
	__property bool ImportCellSizes = {read=FImportCellSizes, write=FImportCellSizes, default=1};
	__property bool ImportClearCells = {read=FImportClearCells, write=FImportClearCells, default=1};
	__property bool ImportLockedCellsAsReadonly = {read=FImportLockedCellsAsReadonly, write=FImportLockedCellsAsReadonly, default=0};
	__property TOverwriteMode ExportOverwrite = {read=FExportOverwrite, write=FExportOverwrite, default=0};
	__property System::UnicodeString ExportOverwriteMessage = {read=FExportOverwriteMessage, write=FExportOverwriteMessage};
	__property bool ExportFormulas = {read=FExportFormulas, write=FExportFormulas, default=1};
	__property bool ExportCellFormats = {read=FExportCellFormats, write=FExportCellFormats, default=1};
	__property bool ExportCellProperties = {read=FExportCellProperties, write=FExportCellProperties, default=1};
	__property bool ExportCellSizes = {read=FExportCellSizes, write=FExportCellSizes, default=1};
	__property bool ExportHiddenColumns = {read=FExportHiddenColumns, write=FExportHiddenColumns, default=0};
	__property bool ExportImages = {read=FExportImages, write=FExportImages, default=1};
	__property bool ExportReadonlyCellsAsLocked = {read=FExportReadonlyCellsAsLocked, write=FExportReadonlyCellsAsLocked, default=0};
	__property bool ExportWordWrapped = {read=FExportWordWrapped, write=FExportWordWrapped, default=0};
	__property bool ExportHTMLTags = {read=FExportHTMLTags, write=FExportHTMLTags, default=1};
	__property bool ExportShowInExcel = {read=FExportShowInExcel, write=FExportShowInExcel, default=0};
	__property bool ExportHardBorders = {read=FExportHardBorders, write=FExportHardBorders, default=0};
	__property bool ExportShowGridLines = {read=FExportShowGridLines, write=FExportShowGridLines, default=1};
	__property bool ExportPrintOptions = {read=FExportPrintOptions, write=FExportPrintOptions, default=1};
	__property bool ImportPrintOptions = {read=FImportPrintOptions, write=FImportPrintOptions, default=1};
	__property bool ExportSummaryRowsBelowDetail = {read=FExportSummaryRowsBelowDetail, write=FExportSummaryRowsBelowDetail, default=0};
	__property bool ExportCellMargins = {read=FExportCellMargins, write=FExportCellMargins, default=0};
	__property bool UseExcelStandardColorPalette = {read=FUseExcelStandardColorPalette, write=FUseExcelStandardColorPalette, default=1};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTMSFNCGridIOOptions() { }
	
};

#pragma pack(pop)

class PASCALIMPLEMENTATION TAGrid : public Fmx::Tmsfnccustomgrid::TTMSFNCCustomGrid
{
	typedef Fmx::Tmsfnccustomgrid::TTMSFNCCustomGrid inherited;
	
public:
	/* TTMSFNCCustomGrid.Create */ inline __fastcall virtual TAGrid(System::Classes::TComponent* AOwner) : Fmx::Tmsfnccustomgrid::TTMSFNCCustomGrid(AOwner) { }
	/* TTMSFNCCustomGrid.Destroy */ inline __fastcall virtual ~TAGrid() { }
	
};


struct DECLSPEC_DRECORD TOneRowBorder
{
public:
	bool HasBottom;
	bool HasRight;
	int BottomColor;
	int RightColor;
};


typedef System::DynamicArray<TOneRowBorder> TRowBorderArray;

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCGridExcelIO : public Fmx::Tmsfnccustomcomponent::TTMSFNCCustomComponent
{
	typedef Fmx::Tmsfnccustomcomponent::TTMSFNCCustomComponent inherited;
	
	
private:
	typedef System::DynamicArray<System::UnicodeString> _TTMSFNCGridExcelIO__1;
	
	
private:
	Fmx::Tmsfnccustomgrid::TTMSFNCCustomGrid* FFMXGrid;
	Fmx::Tmsfncuexceladapter::TExcelAdapter* FAdapter;
	bool FAutoResizeGrid;
	bool FUseUnicode;
	_TTMSFNCGridExcelIO__1 FSheetNames;
	int FGridStartCol;
	int FGridStartRow;
	int FXlsStartRow;
	int FXlsStartCol;
	bool FZoomSaved;
	int FZoom;
	int FWorkSheet;
	int FWorkSheetNum;
	System::UnicodeString FDateFormat;
	System::UnicodeString FTimeFormat;
	TTMSFNCGridIOOptions* FOptions;
	TTMSFNCGridIOProgressEvent FOnProgress;
	void __fastcall SetFMXGrid(Fmx::Tmsfnccustomgrid::TTMSFNCCustomGrid* const Value);
	TAGrid* __fastcall CurrentGrid();
	void __fastcall ImportData(Fmx::Tmsfncuexceladapter::TExcelFile* const Workbook);
	void __fastcall ExportData(Fmx::Tmsfncuexceladapter::TExcelFile* const Workbook);
	void __fastcall CloseFile(Fmx::Tmsfncuexceladapter::TExcelFile* &Workbook);
	Fmx::Tmsfncuflxformats::TFlxFormat __fastcall CellFormatDef(Fmx::Tmsfncuexceladapter::TExcelFile* const Workbook, const int aRow, const int aCol);
	System::Uitypes::TAlphaColor __fastcall GetColor(Fmx::Tmsfncuexceladapter::TExcelFile* const Workbook, const Fmx::Tmsfncuflxformats::TFlxFormat &Fm);
	System::Uitypes::TAlphaColor __fastcall GetFontColor(Fmx::Tmsfncuexceladapter::TExcelFile* const Workbook, const Fmx::Tmsfncuflxformats::TFlxFormat &Fm);
	System::UnicodeString __fastcall GetSheetNames(int index);
	int __fastcall GetSheetNamesCount();
	void __fastcall SetGridStartCol(const int Value);
	void __fastcall SetGridStartRow(const int Value);
	void __fastcall SetXlsStartCol(const int Value);
	void __fastcall SetXlsStartRow(const int Value);
	void __fastcall OpenText(Fmx::Tmsfncuexceladapter::TExcelFile* const Workbook, const System::Sysutils::TFileName FileName, const System::WideChar Delimiter);
	void __fastcall SetZoom(const int Value);
	void __fastcall ImportImages(Fmx::Tmsfncuexceladapter::TExcelFile* const Workbook, const System::Extended Zoom100);
	void __fastcall ExportImage(Fmx::Tmsfncuexceladapter::TExcelFile* const Workbook, Fmx::Graphics::TBitmap* const Pic, const int rx, const int cx, const int ix, const int iy, const int iw, const int ih);
	void __fastcall InternalXLSImport(const System::Sysutils::TFileName FileName, const int SheetNumber, const System::UnicodeString SheetName);
	System::UnicodeString __fastcall SupressCR(System::UnicodeString s);
	bool __fastcall FindSheet(Fmx::Tmsfncuexceladapter::TExcelFile* const Workbook, const System::UnicodeString SheetName, /* out */ int &index);
	void __fastcall SetOptions(TTMSFNCGridIOOptions* const Value);
	void __fastcall SetBorders(const int cg, const int rg, TRowBorderArray &LastRowBorders, int SpanRow, int SpanCol, Fmx::Tmsfncuflxformats::TFlxFormat &Fm, Fmx::Tmsfncuexceladapter::TExcelFile* const Workbook, const Fmx::Tmsfncuflxmessages::BooleanArray UsedColors);
	void __fastcall CopyFmToMerged(Fmx::Tmsfncuexceladapter::TExcelFile* const Workbook, Fmx::Tmsfncgriddata::TTMSFNCGridCellProperty* const cp, const int rx, const int cx, const Fmx::Tmsfncuflxformats::TFlxFormat &Fm);
	void __fastcall ImportNodes(Fmx::Tmsfncuexceladapter::TExcelFile* const Workbook, const int first, const int last, const int level);
	void __fastcall ImportAllNodes(Fmx::Tmsfncuexceladapter::TExcelFile* const Workbook, const int first, const int last);
	int __fastcall NearestColorIndex(Fmx::Tmsfncuexceladapter::TExcelFile* const Workbook, const System::Uitypes::TAlphaColor aColor, const Fmx::Tmsfncuflxmessages::BooleanArray UsedColors);
	Fmx::Tmsfncuflxmessages::BooleanArray __fastcall GetUsedPaletteColors(Fmx::Tmsfncuexceladapter::TExcelFile* const Workbook);
	void __fastcall OpenFile(Fmx::Tmsfncuexceladapter::TExcelFile* const Workbook, const System::UnicodeString FileName);
	void __fastcall SetVersion(const System::UnicodeString Value);
	
protected:
	virtual System::UnicodeString __fastcall GetDocURL();
	virtual void __fastcall RegisterRuntimeClasses();
	virtual System::UnicodeString __fastcall GetVersion();
	virtual NativeUInt __fastcall GetInstance();
	virtual void __fastcall Notification(System::Classes::TComponent* AComponent, System::Classes::TOperation Operation);
	void __fastcall ExportWorkBook(const System::Sysutils::TFileName FileName, const System::UnicodeString SheetName = System::UnicodeString(), const int SheetPos = 0xffffffff, const int SelectSheet = 0x1, const TInsertInSheet InsertInSheet = (TInsertInSheet)(0x0));
	
public:
	void __fastcall XLSImport(const System::Sysutils::TFileName FileName)/* overload */;
	void __fastcall XLSImport(const System::Sysutils::TFileName FileName, const int SheetNumber)/* overload */;
	void __fastcall XLSImport(const System::Sysutils::TFileName FileName, const System::UnicodeString SheetName)/* overload */;
	void __fastcall XLSExport(const System::Sysutils::TFileName FileName, const System::UnicodeString SheetName = System::UnicodeString(), const int SheetPos = 0xffffffff, const int SelectSheet = 0x1, const TInsertInSheet InsertInSheet = (TInsertInSheet)(0x0));
	void __fastcall LoadSheetNames(const System::UnicodeString FileName);
	__property System::UnicodeString SheetNames[int index] = {read=GetSheetNames};
	__property int SheetNamesCount = {read=GetSheetNamesCount, nodefault};
	__fastcall virtual TTMSFNCGridExcelIO(System::Classes::TComponent* AOwner);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual ~TTMSFNCGridExcelIO();
	
__published:
	__property Fmx::Tmsfnccustomgrid::TTMSFNCCustomGrid* Grid = {read=FFMXGrid, write=SetFMXGrid};
	__property bool AutoResizeGrid = {read=FAutoResizeGrid, write=FAutoResizeGrid, default=1};
	__property TTMSFNCGridIOOptions* Options = {read=FOptions, write=SetOptions};
	__property bool UseUnicode = {read=FUseUnicode, write=FUseUnicode, nodefault};
	__property int GridStartRow = {read=FGridStartRow, write=SetGridStartRow, default=1};
	__property int GridStartCol = {read=FGridStartCol, write=SetGridStartCol, default=1};
	__property int XlsStartRow = {read=FXlsStartRow, write=SetXlsStartRow, default=1};
	__property int XlsStartCol = {read=FXlsStartCol, write=SetXlsStartCol, default=1};
	__property bool ZoomSaved = {read=FZoomSaved, write=FZoomSaved, default=1};
	__property int Zoom = {read=FZoom, write=SetZoom, default=100};
	__property System::UnicodeString DateFormat = {read=FDateFormat, write=FDateFormat};
	__property System::UnicodeString TimeFormat = {read=FTimeFormat, write=FTimeFormat};
	__property System::UnicodeString Version = {read=GetVersion, write=SetVersion};
	__property TTMSFNCGridIOProgressEvent OnProgress = {read=FOnProgress, write=FOnProgress};
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 CellOfs = System::Int8(0x0);
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCGridExcelIOErrNoGrid;
#define Fmx_Tmsfncgridexcelio_sTMSFNCGridExcelIOErrNoGrid System::LoadResourceString(&Fmx::Tmsfncgridexcelio::_sTMSFNCGridExcelIOErrNoGrid)
}	/* namespace Tmsfncgridexcelio */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCGRIDEXCELIO)
using namespace Fmx::Tmsfncgridexcelio;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncgridexcelioHPP
