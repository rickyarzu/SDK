// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCUXlsWorkbookGlobals.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncuxlsworkbookglobalsHPP
#define Fmx_TmsfncuxlsworkbookglobalsHPP

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
#include <FMX.TMSFNCUXlsReferences.hpp>
#include <FMX.TMSFNCUSheetNameList.hpp>
#include <FMX.TMSFNCUXlsEscher.hpp>
#include <FMX.TMSFNCUXlsFormula.hpp>
#include <FMX.TMSFNCUEscherRecords.hpp>
#include <FMX.TMSFNCUXlsPalette.hpp>
#include <FMX.TMSFNCUXlsXF.hpp>
#include <FMX.TMSFNCUFlxMessages.hpp>
#include <FMX.TMSFNCUOle2Impl.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncuxlsworkbookglobals
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TBoundSheetList;
class DELPHICLASS TWorkbookGlobals;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TBoundSheetList : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	Fmx::Tmsfncusheetnamelist::TSheetNameList* FSheetNames;
	Fmx::Tmsfncuxlsbaserecordlists::TBoundSheetRecordList* FBoundSheets;
	
public:
	__property Fmx::Tmsfncuxlsbaserecordlists::TBoundSheetRecordList* BoundSheets = {read=FBoundSheets};
	__fastcall TBoundSheetList();
	__fastcall virtual ~TBoundSheetList();
	void __fastcall Clear();
	void __fastcall Add(Fmx::Tmsfncuxlsotherrecords::TBoundSheetRecord* const aRecord);
	void __fastcall SaveToStream(Fmx::Tmsfncuole2impl::TOle2File* const DataStream);
	void __fastcall SaveRangeToStream(Fmx::Tmsfncuole2impl::TOle2File* const DataStream, const int SheetIndex);
	__int64 __fastcall TotalSize();
	__int64 __fastcall TotalRangeSize(const int SheetIndex);
	void __fastcall InsertSheet(const int BeforeSheet, const System::Word OptionFlags, const System::UnicodeString SheetName);
	void __fastcall DeleteSheet(const int SheetIndex);
};


class PASCALIMPLEMENTATION TWorkbookGlobals : public Fmx::Tmsfncuxlssections::TBaseSection
{
	typedef Fmx::Tmsfncuxlssections::TBaseSection inherited;
	
private:
	Fmx::Tmsfncuxlssst::TSST* FSST;
	Fmx::Tmsfncuxlsreferences::TReferences* FReferences;
	TBoundSheetList* FBoundSheets;
	Fmx::Tmsfncuxlsbaserecordlists::TBaseRecordList* FMiscRecords;
	Fmx::Tmsfncuxlsbaserecordlists::TNameRecordList* FNames;
	Fmx::Tmsfncuxlsescher::TDrawingGroup* FDrawingGroup;
	Fmx::Tmsfncuxlsbaserecords::TWindow1Record* FWindow1;
	Fmx::Tmsfncuxlsbaserecords::T1904Record* F1904;
	Fmx::Tmsfncuxlsbaserecords::TBookBoolRecord* FBookBool;
	Fmx::Tmsfncuxlsbaserecords::TPrecisionRecord* FPrecision;
	Fmx::Tmsfncuxlsxf::TXFRecordList* FXF;
	Fmx::Tmsfncuxlsxf::TFontRecordList* FFonts;
	Fmx::Tmsfncuxlsxf::TFormatRecordList* FFormats;
	Fmx::Tmsfncuxlspalette::TPaletteRecord* FPaletteCache;
	int FPaletteIndex;
	bool FHasMacro;
	bool FIsXltTemplate;
	System::UnicodeString FCodeName;
	int __fastcall GetSheetCount();
	System::UnicodeString __fastcall GetSheetName(const int index);
	void __fastcall SetSheetName(const int index, const System::UnicodeString Value);
	Fmx::Tmsfncuflxmessages::TXlsSheetVisible __fastcall GetSheetVisible(const int index);
	void __fastcall SetSheetVisible(const int index, const Fmx::Tmsfncuflxmessages::TXlsSheetVisible Value);
	System::Word __fastcall GetSheetOptionFlags(const int index);
	int __fastcall GetActivesheet();
	void __fastcall SetActiveSheet(const int Value);
	unsigned __fastcall GetColorPalette(Fmx::Tmsfncuflxmessages::TColorPaletteRange Index);
	void __fastcall SetColorPalette(Fmx::Tmsfncuflxmessages::TColorPaletteRange Index, const unsigned Value);
	bool __fastcall GetIs1904();
	bool __fastcall GetPrecisionAsDisplayed();
	bool __fastcall GetSaveExternalLinkValues();
	void __fastcall SetIs1904(const bool Value);
	void __fastcall SetPrecisionAsDisplayed(const bool Value);
	void __fastcall SetSaveExternalLinkValues(const bool Value);
	
public:
	__property Fmx::Tmsfncuxlssst::TSST* SST = {read=FSST};
	__property System::UnicodeString SheetName[const int index] = {read=GetSheetName, write=SetSheetName};
	void __fastcall SetFirstSheetVisible(const int index);
	__property Fmx::Tmsfncuflxmessages::TXlsSheetVisible SheetVisible[const int index] = {read=GetSheetVisible, write=SetSheetVisible};
	__property int SheetCount = {read=GetSheetCount, nodefault};
	__property System::Word SheetOptionFlags[const int index] = {read=GetSheetOptionFlags};
	void __fastcall SheetSetOffset(const int index, const unsigned Offset);
	__property int ActiveSheet = {read=GetActivesheet, write=SetActiveSheet, nodefault};
	__property Fmx::Tmsfncuxlsescher::TDrawingGroup* DrawingGroup = {read=FDrawingGroup};
	__property Fmx::Tmsfncuxlsreferences::TReferences* References = {read=FReferences};
	__property Fmx::Tmsfncuxlsbaserecordlists::TNameRecordList* Names = {read=FNames};
	__property bool HasMacro = {read=FHasMacro, nodefault};
	__property System::UnicodeString CodeName = {read=FCodeName};
	__property bool IsXltTemplate = {read=FIsXltTemplate, write=FIsXltTemplate, nodefault};
	__fastcall TWorkbookGlobals();
	__fastcall virtual ~TWorkbookGlobals();
	virtual __int64 __fastcall TotalSize();
	virtual __int64 __fastcall TotalRangeSize(const int SheetIndex, const Fmx::Tmsfncuflxmessages::TXlsCellRange &CellRange);
	virtual void __fastcall Clear();
	virtual void __fastcall LoadFromStream(Fmx::Tmsfncuole2impl::TOle2File* const DataStream, Fmx::Tmsfncxlsmessages::TRecordHeader &RecordHeader, Fmx::Tmsfncuxlsotherrecords::TBOFRecord* const First, Fmx::Tmsfncuxlssst::TSST* const SST);
	virtual void __fastcall SaveToStream(Fmx::Tmsfncuole2impl::TOle2File* const DataStream);
	virtual void __fastcall SaveRangeToStream(Fmx::Tmsfncuole2impl::TOle2File* const DataStream, const int SheetIndex, const Fmx::Tmsfncuflxmessages::TXlsCellRange &CellRange);
	void __fastcall InsertAndCopyRowsAndCols(const int FirstRow, const int LastRow, const int DestRow, const int aRowCount, const int FirstCol, const int LastCol, const int DestCol, const int aColCount, const Fmx::Tmsfncxlsmessages::TSheetInfo &SheetInfo);
	void __fastcall DeleteRowsAndCols(const System::Word aRow, const System::Word aRowCount, const System::Word aCol, const System::Word aColCount, const Fmx::Tmsfncxlsmessages::TSheetInfo &SheetInfo);
	void __fastcall DeleteSheets(const int SheetIndex, const int SheetCount);
	void __fastcall InsertSheets(const int CopyFrom, int BeforeSheet, const System::Word OptionFlags, const System::UnicodeString Name, const int SheetCount);
	__property unsigned ColorPalette[Fmx::Tmsfncuflxmessages::TColorPaletteRange Index] = {read=GetColorPalette, write=SetColorPalette};
	__property Fmx::Tmsfncuxlsxf::TXFRecordList* XF = {read=FXF};
	__property Fmx::Tmsfncuxlsxf::TFontRecordList* Fonts = {read=FFonts};
	__property Fmx::Tmsfncuxlsxf::TFormatRecordList* Formats = {read=FFormats};
	__property bool Is1904 = {read=GetIs1904, write=SetIs1904, nodefault};
	__property bool PrecisionAsDisplayed = {read=GetPrecisionAsDisplayed, write=SetPrecisionAsDisplayed, nodefault};
	__property bool SaveExternalLinkValues = {read=GetSaveExternalLinkValues, write=SetSaveExternalLinkValues, nodefault};
	void __fastcall DeleteCountry();
	__classmethod bool __fastcall IsValidRangeName(const System::UnicodeString Name, int &OptionFlags);
	void __fastcall CheckInternalNames(const int OptionFlags);
	void __fastcall AddName(Fmx::Tmsfncuflxmessages::TXlsNamedRange &Range, const void * CellList);
	Fmx::Tmsfncuxlsformula::TNameRecord* __fastcall GetName(const int sheet, const System::UnicodeString aName);
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Tmsfncuxlsworkbookglobals */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCUXLSWORKBOOKGLOBALS)
using namespace Fmx::Tmsfncuxlsworkbookglobals;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncuxlsworkbookglobalsHPP
