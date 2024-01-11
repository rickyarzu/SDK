// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCUXlsFormula.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncuxlsformulaHPP
#define Fmx_TmsfncuxlsformulaHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Variants.hpp>
#include <System.Classes.hpp>
#include <System.SysUtils.hpp>
#include <FMX.TMSFNCUXlsBaseRecords.hpp>
#include <FMX.TMSFNCXlsMessages.hpp>
#include <FMX.TMSFNCUXlsTokenArray.hpp>
#include <FMX.TMSFNCXlsFormulaMessages.hpp>
#include <FMX.TMSFNCUFlxMessages.hpp>
#include <FMX.TMSFNCUXlsStrings.hpp>
#include <FMX.TMSFNCUOle2Impl.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncuxlsformula
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTableRecord;
class DELPHICLASS TArrayRecord;
class DELPHICLASS TFormulaRecord;
class DELPHICLASS TNameRecord;
class DELPHICLASS TShrFmlaRecord;
//-- type declarations -------------------------------------------------------
#pragma pack(push,4)
class PASCALIMPLEMENTATION TTableRecord : public Fmx::Tmsfncuxlsbaserecords::TBaseRecord
{
	typedef Fmx::Tmsfncuxlsbaserecords::TBaseRecord inherited;
	
private:
	void __fastcall IncRowToMax(const Fmx::Tmsfncxlsmessages::PArrayOfByte Pdata, const int rowPos, const int colPos, const int Offset, const int Max);
	void __fastcall IncColToMax(const Fmx::Tmsfncxlsmessages::PArrayOfByte Pdata, const int rowPos, const int colPos, const int Offset, const int Max);
	
public:
	__fastcall virtual TTableRecord(const System::Word aId, const Fmx::Tmsfncxlsmessages::PArrayOfByte aData, const int aDataSize);
	void __fastcall ArrangeInsertRowsAndCols(const int aRowPos, const int aRowCount, const int aColPos, const int aColCount);
	void __fastcall ArrangeCopyRowsAndCols(const int DeltaRow, const int DeltaCol);
public:
	/* TBaseRecord.Destroy */ inline __fastcall virtual ~TTableRecord() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TArrayRecord : public Fmx::Tmsfncuxlsbaserecords::TBaseRecord
{
	typedef Fmx::Tmsfncuxlsbaserecords::TBaseRecord inherited;
	
public:
	void __fastcall ArrangeInsertRowsAndCols(const int aRowPos, const int aRowCount, const int aColPos, const int aColCount);
	void __fastcall ArrangeCopyRowsAndCols(const int DeltaRow, const int DeltaCol);
public:
	/* TBaseRecord.Create */ inline __fastcall virtual TArrayRecord(const System::Word aId, const Fmx::Tmsfncxlsmessages::PArrayOfByte aData, const int aDataSize) : Fmx::Tmsfncuxlsbaserecords::TBaseRecord(aId, aData, aDataSize) { }
	/* TBaseRecord.Destroy */ inline __fastcall virtual ~TArrayRecord() { }
	
};

#pragma pack(pop)

class PASCALIMPLEMENTATION TFormulaRecord : public Fmx::Tmsfncuxlsbaserecords::TCellRecord
{
	typedef Fmx::Tmsfncuxlsbaserecords::TCellRecord inherited;
	
private:
	System::Variant FormulaValue;
	TTableRecord* FTableRecord;
	TArrayRecord* FArrayRecord;
	void __fastcall ArrangeTokensInsertRowsAndCols(const int InsRowPos, const int InsRowOffset, const int CopyRowOffset, const int InsColPos, const int InsColOffset, const int CopyColOffset, const Fmx::Tmsfncxlsmessages::TSheetInfo &SheetInfo);
	void __fastcall ArrangeSharedTokens();
	void __fastcall SetTableRecord(TTableRecord* const Value);
	void __fastcall SetArrayRecord(TArrayRecord* const Value);
	void __fastcall ClearResult();
	int __fastcall SaveStringRecord(Fmx::Tmsfncuole2impl::TOle2File* const Workbook, const bool IncludeHeaders);
	
protected:
	virtual Fmx::Tmsfncuxlsbaserecords::TBaseRecord* __fastcall DoCopyTo();
	
public:
	__fastcall virtual TFormulaRecord(const System::Word aId, const Fmx::Tmsfncxlsmessages::PArrayOfByte aData, const int aDataSize);
	__fastcall TFormulaRecord(const System::Word aId, const System::Word aDataSize, const System::Word aRow, const System::Word aCol, const System::Word aXF, const System::Variant &aValue, const bool Options1904);
	__fastcall virtual ~TFormulaRecord();
	virtual void __fastcall ArrangeInsertRowsAndCols(const int aRowPos, const int aRowCount, const int aColPos, const int aColCount, const Fmx::Tmsfncxlsmessages::TSheetInfo &SheetInfo);
	virtual void __fastcall ArrangeCopyRowsAndCols(const int RowOffset, const int ColOffset);
	virtual void __fastcall SaveToStream(Fmx::Tmsfncuole2impl::TOle2File* const Workbook);
	virtual int __fastcall TotalSize();
	virtual __int64 __fastcall FixTotalSize(const bool NeedsRecalc);
	virtual int __fastcall TotalSizeNoHeaders();
	__property TTableRecord* TableRecord = {read=FTableRecord, write=SetTableRecord};
	__property TArrayRecord* ArrayRecord = {read=FArrayRecord, write=SetArrayRecord};
	bool __fastcall IsExp(unsigned &Key);
	void __fastcall MixShared(const Fmx::Tmsfncxlsmessages::PArrayOfByte PData, const int aDataSize);
	virtual System::Variant __fastcall GetValue();
	void __fastcall SetFormulaValue(const System::Variant &v);
};


#pragma pack(push,4)
class PASCALIMPLEMENTATION TNameRecord : public Fmx::Tmsfncuxlsbaserecords::TBaseRecord
{
	typedef Fmx::Tmsfncuxlsbaserecords::TBaseRecord inherited;
	
private:
	void __fastcall ArrangeTokensInsertRowsAndCols(const int InsRowPos, const int InsRowOffset, const int CopyRowOffset, const int InsColPos, const int InsColOffset, const int CopyColOffset, const Fmx::Tmsfncxlsmessages::TSheetInfo &SheetInfo);
	System::Byte __fastcall NameLength();
	int __fastcall NameSize();
	System::Byte __fastcall NameOptionFlags();
	void __fastcall ChangeRefToArea();
	
public:
	__fastcall virtual TNameRecord(const System::Word aId, const Fmx::Tmsfncxlsmessages::PArrayOfByte aData, const int aDataSize);
	__fastcall TNameRecord(const Fmx::Tmsfncuflxmessages::TXlsNamedRange &Range, const void * Globals, const void * CellList);
	void __fastcall ArrangeInsertRowsAndCols(int aRowPos, int aRowCount, int aColPos, int aColCount, const Fmx::Tmsfncxlsmessages::TSheetInfo &SheetInfo);
	void __fastcall ArrangeInsertSheets(const int FirstSheet, const int SheetCount);
	TNameRecord* __fastcall ArrangeCopySheet(const Fmx::Tmsfncxlsmessages::TSheetInfo &SheetInfo);
	int __fastcall RangeSheet();
	int __fastcall RefersToSheet(const Fmx::Tmsfncxlsmessages::TGetSheet GetSheet);
	System::UnicodeString __fastcall Name();
	int __fastcall GetR1();
	int __fastcall GetR2();
	int __fastcall GetC1();
	int __fastcall GetC2();
	void __fastcall SetR1(int value);
	void __fastcall SetR2(int value);
	void __fastcall SetC1(int value);
	void __fastcall SetC2(int value);
public:
	/* TBaseRecord.Destroy */ inline __fastcall virtual ~TNameRecord() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TShrFmlaRecord : public Fmx::Tmsfncuxlsbaserecords::TBaseRecord
{
	typedef Fmx::Tmsfncuxlsbaserecords::TBaseRecord inherited;
	
public:
	unsigned Key;
	
protected:
	virtual Fmx::Tmsfncuxlsbaserecords::TBaseRecord* __fastcall DoCopyTo();
	
public:
	int __fastcall FirstRow();
	int __fastcall LastRow();
	int __fastcall FirstCol();
	int __fastcall LastCol();
public:
	/* TBaseRecord.Create */ inline __fastcall virtual TShrFmlaRecord(const System::Word aId, const Fmx::Tmsfncxlsmessages::PArrayOfByte aData, const int aDataSize) : Fmx::Tmsfncuxlsbaserecords::TBaseRecord(aId, aData, aDataSize) { }
	/* TBaseRecord.Destroy */ inline __fastcall virtual ~TShrFmlaRecord() { }
	
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
}	/* namespace Tmsfncuxlsformula */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCUXLSFORMULA)
using namespace Fmx::Tmsfncuxlsformula;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncuxlsformulaHPP
