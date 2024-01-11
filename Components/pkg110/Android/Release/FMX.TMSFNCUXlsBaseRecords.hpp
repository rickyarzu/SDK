// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCUXlsBaseRecords.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncuxlsbaserecordsHPP
#define Fmx_TmsfncuxlsbaserecordsHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.SysUtils.hpp>
#include <System.Classes.hpp>
#include <System.Variants.hpp>
#include <FMX.TMSFNCXlsMessages.hpp>
#include <FMX.TMSFNCUFlxMessages.hpp>
#include <FMX.TMSFNCUOle2Impl.hpp>
#include <System.Generics.Collections.hpp>
#include <System.Generics.Defaults.hpp>
#include <System.Types.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncuxlsbaserecords
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TBaseRecord;
class DELPHICLASS TContinueRecord;
class DELPHICLASS TIgnoreRecord;
class DELPHICLASS TSubListRecord;
class DELPHICLASS TBaseRowColRecord;
class DELPHICLASS TCellRecord;
class DELPHICLASS TRowRecord;
struct TDimensionsRec;
class DELPHICLASS TDimensionsRecord;
class DELPHICLASS TStringRecord;
class DELPHICLASS TWindow1Record;
class DELPHICLASS TWindow2Record;
class DELPHICLASS TSCLRecord;
class DELPHICLASS TDefColWidthRecord;
class DELPHICLASS TStandardWidthRecord;
class DELPHICLASS TDefRowHeightRecord;
class DELPHICLASS TPageHeaderFooterRecord;
class DELPHICLASS TPageHeaderRecord;
class DELPHICLASS TPageFooterRecord;
class DELPHICLASS TPrintGridLinesRecord;
class DELPHICLASS TMarginRecord;
struct TSetupRec;
class DELPHICLASS TSetupRecord;
class DELPHICLASS TPlsRecord;
class DELPHICLASS TPrintCenteredRecord;
class DELPHICLASS TWsBoolRecord;
class DELPHICLASS T1904Record;
class DELPHICLASS TRefModeRecord;
class DELPHICLASS TPrecisionRecord;
class DELPHICLASS TBookBoolRecord;
class DELPHICLASS TAutoFilterInfoRecord;
//-- type declarations -------------------------------------------------------
#pragma pack(push,4)
class PASCALIMPLEMENTATION TBaseRecord : public System::TObject
{
	typedef System::TObject inherited;
	
public:
	System::Word Id;
	Fmx::Tmsfncxlsmessages::ArrayOfByte *Data;
	System::Word DataSize;
	TContinueRecord* Continue;
	void __fastcall SaveDataToStream(Fmx::Tmsfncuole2impl::TOle2File* const Workbook, const Fmx::Tmsfncxlsmessages::PArrayOfByte aData);
	
protected:
	virtual TBaseRecord* __fastcall DoCopyTo();
	
public:
	__fastcall virtual TBaseRecord(const System::Word aId, const Fmx::Tmsfncxlsmessages::PArrayOfByte aData, const int aDataSize);
	__fastcall virtual ~TBaseRecord();
	void __fastcall AddContinue(TContinueRecord* const aContinue);
	virtual void __fastcall SaveToStream(Fmx::Tmsfncuole2impl::TOle2File* const Workbook);
	TBaseRecord* __fastcall CopyTo();
	virtual int __fastcall TotalSize();
	virtual int __fastcall TotalSizeNoHeaders();
};

#pragma pack(pop)

_DECLARE_METACLASS(System::TMetaClass, ClassOfTBaseRecord);

#pragma pack(push,4)
class PASCALIMPLEMENTATION TContinueRecord : public TBaseRecord
{
	typedef TBaseRecord inherited;
	
public:
	/* TBaseRecord.Create */ inline __fastcall virtual TContinueRecord(const System::Word aId, const Fmx::Tmsfncxlsmessages::PArrayOfByte aData, const int aDataSize) : TBaseRecord(aId, aData, aDataSize) { }
	/* TBaseRecord.Destroy */ inline __fastcall virtual ~TContinueRecord() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TIgnoreRecord : public TBaseRecord
{
	typedef TBaseRecord inherited;
	
public:
	virtual int __fastcall TotalSize();
	virtual void __fastcall SaveToStream(Fmx::Tmsfncuole2impl::TOle2File* const Workbook);
public:
	/* TBaseRecord.Create */ inline __fastcall virtual TIgnoreRecord(const System::Word aId, const Fmx::Tmsfncxlsmessages::PArrayOfByte aData, const int aDataSize) : TBaseRecord(aId, aData, aDataSize) { }
	/* TBaseRecord.Destroy */ inline __fastcall virtual ~TIgnoreRecord() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TSubListRecord : public TBaseRecord
{
	typedef TBaseRecord inherited;
	
private:
	System::Generics::Collections::TObjectList__1<System::TObject*>* FSubList;
	
protected:
	virtual TBaseRecord* __fastcall DoCopyTo();
	
public:
	__fastcall TSubListRecord(System::Generics::Collections::TObjectList__1<System::TObject*>* const aSubList);
	virtual int __fastcall TotalSize();
	virtual void __fastcall SaveToStream(Fmx::Tmsfncuole2impl::TOle2File* const Workbook);
public:
	/* TBaseRecord.Create */ inline __fastcall virtual TSubListRecord(const System::Word aId, const Fmx::Tmsfncxlsmessages::PArrayOfByte aData, const int aDataSize) : TBaseRecord(aId, aData, aDataSize) { }
	/* TBaseRecord.Destroy */ inline __fastcall virtual ~TSubListRecord() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TBaseRowColRecord : public TBaseRecord
{
	typedef TBaseRecord inherited;
	
private:
	System::Word __fastcall GetColumn();
	System::Word __fastcall GetRow();
	void __fastcall SetColumn(System::Word Value);
	void __fastcall SetRow(System::Word Value);
	
public:
	__property System::Word Row = {read=GetRow, write=SetRow, nodefault};
	__property System::Word Column = {read=GetColumn, write=SetColumn, nodefault};
	virtual void __fastcall ArrangeInsertRowsAndCols(const int aRowPos, const int aRowCount, const int aColPos, const int aColCount, const Fmx::Tmsfncxlsmessages::TSheetInfo &SheetInfo);
	virtual void __fastcall ArrangeCopyRowsAndCols(const int RowOffset, const int ColOffset);
	__fastcall virtual TBaseRowColRecord(const System::Word aId, const Fmx::Tmsfncxlsmessages::PArrayOfByte aData, const int aDataSize);
	virtual __int64 __fastcall FixTotalSize(const bool NeedsRecalc);
public:
	/* TBaseRecord.Destroy */ inline __fastcall virtual ~TBaseRowColRecord() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TCellRecord : public TBaseRowColRecord
{
	typedef TBaseRowColRecord inherited;
	
private:
	System::Word __fastcall GetXF();
	void __fastcall SetXF(const System::Word Value);
	
protected:
	virtual System::Variant __fastcall GetValue();
	virtual void __fastcall SetValue(const System::Variant &Value);
	
public:
	__property System::Word XF = {read=GetXF, write=SetXF, nodefault};
	__property System::Variant Value = {read=GetValue, write=SetValue};
	__fastcall TCellRecord(const System::Word aId, const System::Word aDataSize, const System::Word aRow, const System::Word aCol, const System::Word aXF);
	virtual bool __fastcall CanJoinNext(TCellRecord* const NextRecord, const int MaxCol);
	virtual void __fastcall SaveFirstMul(Fmx::Tmsfncuole2impl::TOle2File* const Workbook, const System::Word JoinedRecordSize);
	virtual void __fastcall SaveMidMul(Fmx::Tmsfncuole2impl::TOle2File* const Workbook);
	virtual void __fastcall SaveLastMul(Fmx::Tmsfncuole2impl::TOle2File* const Workbook);
	virtual int __fastcall TotalSizeFirst();
	virtual int __fastcall TotalSizeMid();
	virtual int __fastcall TotalSizeLast();
public:
	/* TBaseRowColRecord.Create */ inline __fastcall virtual TCellRecord(const System::Word aId, const Fmx::Tmsfncxlsmessages::PArrayOfByte aData, const int aDataSize) : TBaseRowColRecord(aId, aData, aDataSize) { }
	
public:
	/* TBaseRecord.Destroy */ inline __fastcall virtual ~TCellRecord() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TRowRecord : public TBaseRowColRecord
{
	typedef TBaseRowColRecord inherited;
	
private:
	System::Word __fastcall GetHeight();
	System::Word __fastcall GetMaxCol();
	System::Word __fastcall GetMinCol();
	System::Word __fastcall GetXF();
	void __fastcall SetHeight(const System::Word Value);
	void __fastcall SetMaxCol(const System::Word Value);
	void __fastcall SetMinCol(const System::Word Value);
	void __fastcall SetXF(const System::Word Value);
	System::Word __fastcall GetOptions();
	void __fastcall SetOptions(const System::Word Value);
	
public:
	__fastcall virtual TRowRecord(const System::Word aId, const Fmx::Tmsfncxlsmessages::PArrayOfByte aData, const int aDataSize);
	__fastcall TRowRecord(const System::Word Row);
	HIDESBASE System::Word __fastcall GetRow();
	__property System::Word MaxCol = {read=GetMaxCol, write=SetMaxCol, nodefault};
	__property System::Word MinCol = {read=GetMinCol, write=SetMinCol, nodefault};
	__property System::Word Height = {read=GetHeight, write=SetHeight, nodefault};
	__property System::Word XF = {read=GetXF, write=SetXF, nodefault};
	bool __fastcall IsFormatted();
	bool __fastcall IsModified();
	__property System::Word Options = {read=GetOptions, write=SetOptions, nodefault};
	void __fastcall ManualHeight();
	void __fastcall AutoHeight();
	void __fastcall Hide(const bool value);
	bool __fastcall IsAutoHeight();
	bool __fastcall IsHidden();
	void __fastcall SaveRangeToStream(Fmx::Tmsfncuole2impl::TOle2File* const DataStream, const int aMinCol, const int aMaxCol);
	void __fastcall SetRowOutlineLevel(const int Level);
public:
	/* TBaseRecord.Destroy */ inline __fastcall virtual ~TRowRecord() { }
	
};

#pragma pack(pop)

#pragma pack(push,1)
struct DECLSPEC_DRECORD TDimensionsRec
{
public:
	unsigned FirstRow;
	unsigned LastRow;
	System::Word FirstCol;
	System::Word LastCol;
	System::Word Extra;
};
#pragma pack(pop)


typedef TDimensionsRec *PDimensionsRec;

#pragma pack(push,4)
class PASCALIMPLEMENTATION TDimensionsRecord : public TBaseRecord
{
	typedef TBaseRecord inherited;
	
public:
	PDimensionsRec __fastcall Dim();
public:
	/* TBaseRecord.Create */ inline __fastcall virtual TDimensionsRecord(const System::Word aId, const Fmx::Tmsfncxlsmessages::PArrayOfByte aData, const int aDataSize) : TBaseRecord(aId, aData, aDataSize) { }
	/* TBaseRecord.Destroy */ inline __fastcall virtual ~TDimensionsRecord() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TStringRecord : public TBaseRecord
{
	typedef TBaseRecord inherited;
	
public:
	virtual void __fastcall SaveToStream(Fmx::Tmsfncuole2impl::TOle2File* const Workbook);
	virtual int __fastcall TotalSize();
	System::UnicodeString __fastcall Value();
public:
	/* TBaseRecord.Create */ inline __fastcall virtual TStringRecord(const System::Word aId, const Fmx::Tmsfncxlsmessages::PArrayOfByte aData, const int aDataSize) : TBaseRecord(aId, aData, aDataSize) { }
	/* TBaseRecord.Destroy */ inline __fastcall virtual ~TStringRecord() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TWindow1Record : public TBaseRecord
{
	typedef TBaseRecord inherited;
	
private:
	int __fastcall GetActiveSheet();
	void __fastcall SetActiveSheet(const int Value);
	int __fastcall GetFirstSheetVisible();
	void __fastcall SetFirstSheetVisible(const int Value);
	void __fastcall MakeMoreThan1(const int p);
	
public:
	__property int ActiveSheet = {read=GetActiveSheet, write=SetActiveSheet, nodefault};
	__property int FirstSheetVisible = {read=GetFirstSheetVisible, write=SetFirstSheetVisible, nodefault};
	virtual void __fastcall SaveToStream(Fmx::Tmsfncuole2impl::TOle2File* const Workbook);
public:
	/* TBaseRecord.Create */ inline __fastcall virtual TWindow1Record(const System::Word aId, const Fmx::Tmsfncxlsmessages::PArrayOfByte aData, const int aDataSize) : TBaseRecord(aId, aData, aDataSize) { }
	/* TBaseRecord.Destroy */ inline __fastcall virtual ~TWindow1Record() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TWindow2Record : public TBaseRecord
{
	typedef TBaseRecord inherited;
	
private:
	bool __fastcall GetSelected();
	void __fastcall SetSelected(const bool Value);
	bool __fastcall GetShowGridLines();
	void __fastcall SetShowGridLines(const bool Value);
	bool __fastcall GetShowGridHeaders();
	void __fastcall SetShowGridHeaders(const bool Value);
	void __fastcall SetSheetZoom(const int Value);
	int __fastcall GetSheetZoom();
	bool __fastcall GetIsFrozen();
	bool __fastcall GetIsFrozenButNoSplit();
	void __fastcall SetIsFrozen(const bool value);
	void __fastcall SetIsFrozenButNoSplit(const bool value);
	
protected:
	virtual TBaseRecord* __fastcall DoCopyTo();
	
public:
	__property bool Selected = {read=GetSelected, write=SetSelected, nodefault};
	__property bool ShowGridLines = {read=GetShowGridLines, write=SetShowGridLines, nodefault};
	__property bool ShowGridHeaders = {read=GetShowGridHeaders, write=SetShowGridHeaders, nodefault};
	__property int SheetZoom = {read=GetSheetZoom, write=SetSheetZoom, nodefault};
	__property bool IsFrozen = {read=GetIsFrozen, write=SetIsFrozen, nodefault};
	__property bool IsFrozenButNoSplit = {read=GetIsFrozenButNoSplit, write=SetIsFrozenButNoSplit, nodefault};
public:
	/* TBaseRecord.Create */ inline __fastcall virtual TWindow2Record(const System::Word aId, const Fmx::Tmsfncxlsmessages::PArrayOfByte aData, const int aDataSize) : TBaseRecord(aId, aData, aDataSize) { }
	/* TBaseRecord.Destroy */ inline __fastcall virtual ~TWindow2Record() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TSCLRecord : public TBaseRecord
{
	typedef TBaseRecord inherited;
	
private:
	int __fastcall GetZoom();
	void __fastcall SetZoom(const int Value);
	
public:
	__fastcall TSCLRecord(const int aZoom);
	__property int Zoom = {read=GetZoom, write=SetZoom, nodefault};
public:
	/* TBaseRecord.Create */ inline __fastcall virtual TSCLRecord(const System::Word aId, const Fmx::Tmsfncxlsmessages::PArrayOfByte aData, const int aDataSize) : TBaseRecord(aId, aData, aDataSize) { }
	/* TBaseRecord.Destroy */ inline __fastcall virtual ~TSCLRecord() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TDefColWidthRecord : public TBaseRecord
{
	typedef TBaseRecord inherited;
	
public:
	System::Word __fastcall Width();
	virtual void __fastcall SaveToStream(Fmx::Tmsfncuole2impl::TOle2File* const Workbook);
public:
	/* TBaseRecord.Create */ inline __fastcall virtual TDefColWidthRecord(const System::Word aId, const Fmx::Tmsfncxlsmessages::PArrayOfByte aData, const int aDataSize) : TBaseRecord(aId, aData, aDataSize) { }
	/* TBaseRecord.Destroy */ inline __fastcall virtual ~TDefColWidthRecord() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TStandardWidthRecord : public TBaseRecord
{
	typedef TBaseRecord inherited;
	
public:
	System::Word __fastcall Width();
public:
	/* TBaseRecord.Create */ inline __fastcall virtual TStandardWidthRecord(const System::Word aId, const Fmx::Tmsfncxlsmessages::PArrayOfByte aData, const int aDataSize) : TBaseRecord(aId, aData, aDataSize) { }
	/* TBaseRecord.Destroy */ inline __fastcall virtual ~TStandardWidthRecord() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TDefRowHeightRecord : public TBaseRecord
{
	typedef TBaseRecord inherited;
	
public:
	System::Word __fastcall Height();
public:
	/* TBaseRecord.Create */ inline __fastcall virtual TDefRowHeightRecord(const System::Word aId, const Fmx::Tmsfncxlsmessages::PArrayOfByte aData, const int aDataSize) : TBaseRecord(aId, aData, aDataSize) { }
	/* TBaseRecord.Destroy */ inline __fastcall virtual ~TDefRowHeightRecord() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TPageHeaderFooterRecord : public TBaseRecord
{
	typedef TBaseRecord inherited;
	
private:
	System::UnicodeString __fastcall GetText();
	void __fastcall SetText(const System::UnicodeString Value);
	
public:
	__property System::UnicodeString Text = {read=GetText, write=SetText};
public:
	/* TBaseRecord.Create */ inline __fastcall virtual TPageHeaderFooterRecord(const System::Word aId, const Fmx::Tmsfncxlsmessages::PArrayOfByte aData, const int aDataSize) : TBaseRecord(aId, aData, aDataSize) { }
	/* TBaseRecord.Destroy */ inline __fastcall virtual ~TPageHeaderFooterRecord() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TPageHeaderRecord : public TPageHeaderFooterRecord
{
	typedef TPageHeaderFooterRecord inherited;
	
public:
	/* TBaseRecord.Create */ inline __fastcall virtual TPageHeaderRecord(const System::Word aId, const Fmx::Tmsfncxlsmessages::PArrayOfByte aData, const int aDataSize) : TPageHeaderFooterRecord(aId, aData, aDataSize) { }
	/* TBaseRecord.Destroy */ inline __fastcall virtual ~TPageHeaderRecord() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TPageFooterRecord : public TPageHeaderFooterRecord
{
	typedef TPageHeaderFooterRecord inherited;
	
public:
	/* TBaseRecord.Create */ inline __fastcall virtual TPageFooterRecord(const System::Word aId, const Fmx::Tmsfncxlsmessages::PArrayOfByte aData, const int aDataSize) : TPageHeaderFooterRecord(aId, aData, aDataSize) { }
	/* TBaseRecord.Destroy */ inline __fastcall virtual ~TPageFooterRecord() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TPrintGridLinesRecord : public TBaseRecord
{
	typedef TBaseRecord inherited;
	
private:
	bool __fastcall GetValue();
	void __fastcall SetValue(const bool Value);
	
public:
	__property bool Value = {read=GetValue, write=SetValue, nodefault};
public:
	/* TBaseRecord.Create */ inline __fastcall virtual TPrintGridLinesRecord(const System::Word aId, const Fmx::Tmsfncxlsmessages::PArrayOfByte aData, const int aDataSize) : TBaseRecord(aId, aData, aDataSize) { }
	/* TBaseRecord.Destroy */ inline __fastcall virtual ~TPrintGridLinesRecord() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TMarginRecord : public TBaseRecord
{
	typedef TBaseRecord inherited;
	
private:
	double __fastcall GetValue();
	void __fastcall SetValue(const double Value);
	
public:
	__property double Value = {read=GetValue, write=SetValue};
public:
	/* TBaseRecord.Create */ inline __fastcall virtual TMarginRecord(const System::Word aId, const Fmx::Tmsfncxlsmessages::PArrayOfByte aData, const int aDataSize) : TBaseRecord(aId, aData, aDataSize) { }
	/* TBaseRecord.Destroy */ inline __fastcall virtual ~TMarginRecord() { }
	
};

#pragma pack(pop)

#pragma pack(push,1)
struct DECLSPEC_DRECORD TSetupRec
{
public:
	System::Word PaperSize;
	System::Word Scale;
	System::Word PageStart;
	System::Word FitWidth;
	System::Word FitHeight;
	System::Word GrBit;
	System::Word Resolution;
	System::Word VResolution;
	double HeaderMargin;
	double FooterMargin;
	System::Word Copies;
};
#pragma pack(pop)


typedef TSetupRec *PSetupRec;

#pragma pack(push,4)
class PASCALIMPLEMENTATION TSetupRecord : public TBaseRecord
{
	typedef TBaseRecord inherited;
	
private:
	TSetupRec __fastcall GetValue();
	void __fastcall SetValue(const TSetupRec &Value);
	System::Word __fastcall GetScale();
	void __fastcall SetScale(const System::Word Value);
	System::Word __fastcall GetFitHeight();
	System::Word __fastcall GetFitWidth();
	void __fastcall SetFitHeight(const System::Word Value);
	void __fastcall SetFitWidth(const System::Word Value);
	System::Extended __fastcall GetFooterMargin();
	System::Extended __fastcall GetHeaderMargin();
	void __fastcall SetFooterMargin(const System::Extended Value);
	void __fastcall SetHeaderMargin(const System::Extended Value);
	System::Word __fastcall GetPrintOptions();
	void __fastcall SetPrintOptions(const System::Word Value);
	int __fastcall GetPrintCopies();
	int __fastcall GetPrintPaperSize();
	int __fastcall GetPrintXResolution();
	int __fastcall GetPrintYResolution();
	void __fastcall SetPrintCopies(const int Value);
	void __fastcall SetPrintPaperSize(const int Value);
	void __fastcall SetPrintXResolution(const int Value);
	void __fastcall SetPrintYResolution(const int Value);
	
public:
	__property TSetupRec Value = {read=GetValue, write=SetValue};
	__property System::Word Scale = {read=GetScale, write=SetScale, nodefault};
	__property System::Word PrintOptions = {read=GetPrintOptions, write=SetPrintOptions, nodefault};
	__property System::Word FitWidth = {read=GetFitWidth, write=SetFitWidth, nodefault};
	__property System::Word FitHeight = {read=GetFitHeight, write=SetFitHeight, nodefault};
	__property int PrintPaperSize = {read=GetPrintPaperSize, write=SetPrintPaperSize, nodefault};
	__property int PrintCopies = {read=GetPrintCopies, write=SetPrintCopies, nodefault};
	__property int PrintXResolution = {read=GetPrintXResolution, write=SetPrintXResolution, nodefault};
	__property int PrintYResolution = {read=GetPrintYResolution, write=SetPrintYResolution, nodefault};
	__property System::Extended HeaderMargin = {read=GetHeaderMargin, write=SetHeaderMargin};
	__property System::Extended FooterMargin = {read=GetFooterMargin, write=SetFooterMargin};
public:
	/* TBaseRecord.Create */ inline __fastcall virtual TSetupRecord(const System::Word aId, const Fmx::Tmsfncxlsmessages::PArrayOfByte aData, const int aDataSize) : TBaseRecord(aId, aData, aDataSize) { }
	/* TBaseRecord.Destroy */ inline __fastcall virtual ~TSetupRecord() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TPlsRecord : public TBaseRecord
{
	typedef TBaseRecord inherited;
	
private:
	Fmx::Tmsfncuflxmessages::TPrinterDriverSettings __fastcall GetPrinterDriverSettings();
	void __fastcall SetPrinterDriverSettings(const Fmx::Tmsfncuflxmessages::TPrinterDriverSettings &Value);
	
public:
	__fastcall TPlsRecord(const Fmx::Tmsfncuflxmessages::TPrinterDriverSettings &aPrinterData);
	__property Fmx::Tmsfncuflxmessages::TPrinterDriverSettings PrinterData = {read=GetPrinterDriverSettings, write=SetPrinterDriverSettings};
public:
	/* TBaseRecord.Create */ inline __fastcall virtual TPlsRecord(const System::Word aId, const Fmx::Tmsfncxlsmessages::PArrayOfByte aData, const int aDataSize) : TBaseRecord(aId, aData, aDataSize) { }
	/* TBaseRecord.Destroy */ inline __fastcall virtual ~TPlsRecord() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TPrintCenteredRecord : public TBaseRecord
{
	typedef TBaseRecord inherited;
	
private:
	bool __fastcall GetCentered();
	void __fastcall SetCentered(const bool Value);
	
public:
	__property bool Centered = {read=GetCentered, write=SetCentered, nodefault};
public:
	/* TBaseRecord.Create */ inline __fastcall virtual TPrintCenteredRecord(const System::Word aId, const Fmx::Tmsfncxlsmessages::PArrayOfByte aData, const int aDataSize) : TBaseRecord(aId, aData, aDataSize) { }
	/* TBaseRecord.Destroy */ inline __fastcall virtual ~TPrintCenteredRecord() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TWsBoolRecord : public TBaseRecord
{
	typedef TBaseRecord inherited;
	
private:
	System::Word __fastcall GetValue();
	void __fastcall SetValue(const System::Word Value);
	bool __fastcall GetFitToPage();
	void __fastcall SetFitToPage(const bool Value);
	bool __fastcall GetOutlineSummaryColsRightOfDetail();
	bool __fastcall GetOutlineSummaryRowsBelowDetail();
	bool __fastcall GetOutlineAutomaticStyles();
	void __fastcall SetOutlineRightOfDetail(const bool Value);
	void __fastcall SetOutlineSummaryRowsBelowDetail(const bool Value);
	void __fastcall SetOutlineAutomaticStyles(const bool Value);
	
public:
	__property System::Word Value = {read=GetValue, write=SetValue, nodefault};
	__property bool FitToPage = {read=GetFitToPage, write=SetFitToPage, nodefault};
	__property bool OutlineSummaryRowsBelowDetail = {read=GetOutlineSummaryRowsBelowDetail, write=SetOutlineSummaryRowsBelowDetail, nodefault};
	__property bool OutlineSummaryColsRightOfDetail = {read=GetOutlineSummaryColsRightOfDetail, write=SetOutlineRightOfDetail, nodefault};
	__property bool OutlineAutomaticStyles = {read=GetOutlineAutomaticStyles, write=SetOutlineAutomaticStyles, nodefault};
public:
	/* TBaseRecord.Create */ inline __fastcall virtual TWsBoolRecord(const System::Word aId, const Fmx::Tmsfncxlsmessages::PArrayOfByte aData, const int aDataSize) : TBaseRecord(aId, aData, aDataSize) { }
	/* TBaseRecord.Destroy */ inline __fastcall virtual ~TWsBoolRecord() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION T1904Record : public TBaseRecord
{
	typedef TBaseRecord inherited;
	
private:
	bool __fastcall GetIs1904();
	void __fastcall SetIs1904(const bool Value);
	
public:
	__property bool Is1904 = {read=GetIs1904, write=SetIs1904, nodefault};
public:
	/* TBaseRecord.Create */ inline __fastcall virtual T1904Record(const System::Word aId, const Fmx::Tmsfncxlsmessages::PArrayOfByte aData, const int aDataSize) : TBaseRecord(aId, aData, aDataSize) { }
	/* TBaseRecord.Destroy */ inline __fastcall virtual ~T1904Record() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TRefModeRecord : public TBaseRecord
{
	typedef TBaseRecord inherited;
	
private:
	bool __fastcall GetIsR1C1();
	void __fastcall SetIsR1C1(const bool Value);
	
public:
	__property bool IsR1C1 = {read=GetIsR1C1, write=SetIsR1C1, nodefault};
public:
	/* TBaseRecord.Create */ inline __fastcall virtual TRefModeRecord(const System::Word aId, const Fmx::Tmsfncxlsmessages::PArrayOfByte aData, const int aDataSize) : TBaseRecord(aId, aData, aDataSize) { }
	/* TBaseRecord.Destroy */ inline __fastcall virtual ~TRefModeRecord() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TPrecisionRecord : public TBaseRecord
{
	typedef TBaseRecord inherited;
	
private:
	bool __fastcall GetPrecisionAsDisplayed();
	void __fastcall SetPrecisionAsDisplayed(const bool Value);
	
public:
	__property bool PrecisionAsDisplayed = {read=GetPrecisionAsDisplayed, write=SetPrecisionAsDisplayed, nodefault};
public:
	/* TBaseRecord.Create */ inline __fastcall virtual TPrecisionRecord(const System::Word aId, const Fmx::Tmsfncxlsmessages::PArrayOfByte aData, const int aDataSize) : TBaseRecord(aId, aData, aDataSize) { }
	/* TBaseRecord.Destroy */ inline __fastcall virtual ~TPrecisionRecord() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TBookBoolRecord : public TBaseRecord
{
	typedef TBaseRecord inherited;
	
private:
	bool __fastcall GetSaveExternalLinkValues();
	void __fastcall SetSaveExternalLinkValues(const bool Value);
	
public:
	__property bool SaveExternalLinkValues = {read=GetSaveExternalLinkValues, write=SetSaveExternalLinkValues, nodefault};
public:
	/* TBaseRecord.Create */ inline __fastcall virtual TBookBoolRecord(const System::Word aId, const Fmx::Tmsfncxlsmessages::PArrayOfByte aData, const int aDataSize) : TBaseRecord(aId, aData, aDataSize) { }
	/* TBaseRecord.Destroy */ inline __fastcall virtual ~TBookBoolRecord() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TAutoFilterInfoRecord : public TBaseRecord
{
	typedef TBaseRecord inherited;
	
private:
	int __fastcall Get_DropDownCount();
	void __fastcall Set_DropDownCount(const int value);
	
public:
	__property int DropDownCount = {read=Get_DropDownCount, write=Set_DropDownCount, nodefault};
public:
	/* TBaseRecord.Create */ inline __fastcall virtual TAutoFilterInfoRecord(const System::Word aId, const Fmx::Tmsfncxlsmessages::PArrayOfByte aData, const int aDataSize) : TBaseRecord(aId, aData, aDataSize) { }
	/* TBaseRecord.Destroy */ inline __fastcall virtual ~TAutoFilterInfoRecord() { }
	
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
extern DELPHI_PACKAGE void __fastcall ReadMem(TBaseRecord* &aRecord, int &aPos, const int aSize, const void * pResult);
extern DELPHI_PACKAGE void __fastcall ReadStr(TBaseRecord* &aRecord, int &aPos, Fmx::Tmsfncuflxmessages::ByteArray &ShortData, System::UnicodeString &WideData, System::Byte &OptionFlags, System::Byte &ActualOptionFlags, int &DestPos, const int StrLen);
extern DELPHI_PACKAGE TBaseRecord* __fastcall LoadRecords(Fmx::Tmsfncuole2impl::TOle2File* const DataStream, Fmx::Tmsfncxlsmessages::TRecordHeader &RecordHeader);
}	/* namespace Tmsfncuxlsbaserecords */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCUXLSBASERECORDS)
using namespace Fmx::Tmsfncuxlsbaserecords;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncuxlsbaserecordsHPP
