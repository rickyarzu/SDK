// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCUXlsRangeRecords.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncuxlsrangerecordsHPP
#define Fmx_TmsfncuxlsrangerecordsHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <FMX.TMSFNCUXlsBaseRecords.hpp>
#include <FMX.TMSFNCUXlsBaseRecordLists.hpp>
#include <FMX.TMSFNCUXlsOtherRecords.hpp>
#include <FMX.TMSFNCXlsMessages.hpp>
#include <System.Classes.hpp>
#include <System.SysUtils.hpp>
#include <FMX.TMSFNCUFlxMessages.hpp>
#include <System.Math.hpp>
#include <FMX.TMSFNCUOle2Impl.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncuxlsrangerecords
{
//-- forward type declarations -----------------------------------------------
struct TExcelRange;
class DELPHICLASS TRangeValuesList;
class DELPHICLASS TRangeEntry;
class DELPHICLASS TMergedCells;
//-- type declarations -------------------------------------------------------
#pragma pack(push,1)
struct DECLSPEC_DRECORD TExcelRange
{
public:
	System::Word R1;
	System::Word R2;
	System::Word C1;
	System::Word C2;
};
#pragma pack(pop)


typedef TExcelRange *PExcelRange;

class PASCALIMPLEMENTATION TRangeValuesList : public System::Classes::TList
{
	typedef System::Classes::TList inherited;
	
private:
	System::Word FOtherDataLen;
	int MaxRangesPerRecord;
	void __fastcall CopyIntersectRange(const PExcelRange R, const PExcelRange Rx, const int NewFirstRow, const int NewLastRow, const int DestRow, const int aCount, System::Word &MinR1, System::Word &MaxR2);
	int __fastcall NextInRange(const Fmx::Tmsfncuflxmessages::TXlsCellRange &Range, const int k);
	
protected:
	virtual void __fastcall Notify(void * Ptr, System::Classes::TListNotification Action);
	
public:
	__fastcall TRangeValuesList(const int aMaxRangesPerRecord, const System::Word aOtherDataLen);
	void __fastcall Load(Fmx::Tmsfncuxlsbaserecords::TBaseRecord* const aRecord, const int aPos);
	void __fastcall SaveToStreamR(Fmx::Tmsfncuole2impl::TOle2File* const DataStream, const int Line);
	void __fastcall SaveRangeToStreamR(Fmx::Tmsfncuole2impl::TOle2File* const DataStream, const int Line, const int aCount, const Fmx::Tmsfncuflxmessages::TXlsCellRange &Range);
	__int64 __fastcall TotalSizeR(const int aCount);
	int __fastcall RepeatCountR(const int aCount);
	int __fastcall RecordSizeR(const int Line, const int aCount);
	int __fastcall CountRangeRecords(const Fmx::Tmsfncuflxmessages::TXlsCellRange &Range);
	void __fastcall CopyFrom(TRangeValuesList* const RVL);
	void __fastcall ArrangeInsertRowsAndCols(const int aRowPos, const int aRowCount, const int aColPos, const int aColCount);
	void __fastcall CopyRowsInclusive(const int FirstRow, const int LastRow, const int DestRow, const int aCount, System::Word &MinR1, System::Word &MaxR2, const bool UseCols);
	void __fastcall CopyRowsExclusive(const int FirstRow, const int LastRow, const int DestRow, const int aCount, const bool UseCols);
	void __fastcall DeleteRows(const int aRow, const int aCount, const bool Allow1Cell, const bool UseCols);
	void __fastcall PreAddNewRange(int &R1, int &C1, int &R2, int &C2);
	void __fastcall AddNewRange(const int FirstRow, const int FirstCol, const int LastRow, const int LastCol);
public:
	/* TList.Destroy */ inline __fastcall virtual ~TRangeValuesList() { }
	
};


class PASCALIMPLEMENTATION TRangeEntry : public System::TObject
{
	typedef System::TObject inherited;
	
protected:
	TRangeValuesList* RangeValuesList;
	virtual TRangeEntry* __fastcall DoCopyTo();
	
public:
	__fastcall virtual TRangeEntry();
	__fastcall virtual ~TRangeEntry();
	TRangeEntry* __fastcall CopyTo();
	virtual void __fastcall LoadFromStream(Fmx::Tmsfncuole2impl::TOle2File* const DataStream, Fmx::Tmsfncxlsmessages::TRecordHeader &RecordHeader, Fmx::Tmsfncuxlsotherrecords::TRangeRecord* const First) = 0 ;
	virtual void __fastcall SaveToStream(Fmx::Tmsfncuole2impl::TOle2File* const DataStream) = 0 ;
	virtual void __fastcall SaveRangeToStream(Fmx::Tmsfncuole2impl::TOle2File* const DataStream, const Fmx::Tmsfncuflxmessages::TXlsCellRange &CellRange) = 0 ;
	virtual __int64 __fastcall TotalSize() = 0 ;
	virtual __int64 __fastcall TotalRangeSize(const Fmx::Tmsfncuflxmessages::TXlsCellRange &CellRange) = 0 ;
	virtual void __fastcall ArrangeInsertRowsAndCols(const int aRowPos, const int aRowCount, const int aColPos, const int aColCount, const Fmx::Tmsfncxlsmessages::TSheetInfo &SheetInfo);
	virtual void __fastcall InsertAndCopyRowsOrCols(const int FirstRow, const int LastRow, const int DestRow, const int aCount, const Fmx::Tmsfncxlsmessages::TSheetInfo &SheetInfo, const bool UseCols);
	virtual void __fastcall DeleteRowsOrCols(const System::Word aRow, const System::Word aCount, const Fmx::Tmsfncxlsmessages::TSheetInfo &SheetInfo, const bool UseCols);
};


class PASCALIMPLEMENTATION TMergedCells : public TRangeEntry
{
	typedef TRangeEntry inherited;
	
public:
	__fastcall virtual TMergedCells();
	void __fastcall Clear();
	virtual void __fastcall LoadFromStream(Fmx::Tmsfncuole2impl::TOle2File* const DataStream, Fmx::Tmsfncxlsmessages::TRecordHeader &RecordHeader, Fmx::Tmsfncuxlsotherrecords::TRangeRecord* const First);
	virtual void __fastcall SaveToStream(Fmx::Tmsfncuole2impl::TOle2File* const DataStream);
	virtual void __fastcall SaveRangeToStream(Fmx::Tmsfncuole2impl::TOle2File* const DataStream, const Fmx::Tmsfncuflxmessages::TXlsCellRange &CellRange);
	virtual __int64 __fastcall TotalSize();
	virtual __int64 __fastcall TotalRangeSize(const Fmx::Tmsfncuflxmessages::TXlsCellRange &CellRange);
	virtual void __fastcall InsertAndCopyRowsOrCols(const int FirstRow, const int LastRow, const int DestRow, const int aCount, const Fmx::Tmsfncxlsmessages::TSheetInfo &SheetInfo, const bool UseCols);
	virtual void __fastcall DeleteRowsOrCols(const System::Word aRow, const System::Word aCount, const Fmx::Tmsfncxlsmessages::TSheetInfo &SheetInfo, const bool UseCols);
	bool __fastcall CheckCell(const int aRow, const int aCol, Fmx::Tmsfncuflxmessages::TXlsCellRange &CellBounds);
	int __fastcall MergedCount();
	Fmx::Tmsfncuflxmessages::TXlsCellRange __fastcall MergedCell(const int i);
	void __fastcall PreMerge(int &R1, int &C1, int &R2, int &C2);
	void __fastcall MergeCells(const int FirstRow, const int FirstCol, const int LastRow, const int LastCol);
	void __fastcall UnMergeCells(const int FirstRow, const int FirstCol, const int LastRow, const int LastCol);
public:
	/* TRangeEntry.Destroy */ inline __fastcall virtual ~TMergedCells() { }
	
};


_DECLARE_METACLASS(System::TMetaClass, ClassOfTRangeEntry);

//-- var, const, procedure ---------------------------------------------------
}	/* namespace Tmsfncuxlsrangerecords */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCUXLSRANGERECORDS)
using namespace Fmx::Tmsfncuxlsrangerecords;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncuxlsrangerecordsHPP
