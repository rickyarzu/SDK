// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCUXlsCondFmt.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncuxlscondfmtHPP
#define Fmx_TmsfncuxlscondfmtHPP

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
#include <FMX.TMSFNCUXlsRangeRecords.hpp>
#include <FMX.TMSFNCUXlsTokenArray.hpp>
#include <FMX.TMSFNCUFlxMessages.hpp>
#include <FMX.TMSFNCUOle2Impl.hpp>
#include <System.Generics.Collections.hpp>
#include <FMX.TMSFNCUXlsBaseList.hpp>
#include <System.Generics.Defaults.hpp>
#include <System.Types.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncuxlscondfmt
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TCondFmtRecord;
class DELPHICLASS TCFRecord;
class DELPHICLASS TCFRecordList;
class DELPHICLASS TCondFmt;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TCondFmtRecord : public Fmx::Tmsfncuxlsotherrecords::TRangeRecord
{
	typedef Fmx::Tmsfncuxlsotherrecords::TRangeRecord inherited;
	
public:
	/* TBaseRecord.Create */ inline __fastcall virtual TCondFmtRecord(const System::Word aId, const Fmx::Tmsfncxlsmessages::PArrayOfByte aData, const int aDataSize) : Fmx::Tmsfncuxlsotherrecords::TRangeRecord(aId, aData, aDataSize) { }
	/* TBaseRecord.Destroy */ inline __fastcall virtual ~TCondFmtRecord() { }
	
};


class PASCALIMPLEMENTATION TCFRecord : public Fmx::Tmsfncuxlsbaserecords::TBaseRecord
{
	typedef Fmx::Tmsfncuxlsbaserecords::TBaseRecord inherited;
	
private:
	System::Byte CfType;
	System::Byte Op;
	System::Word Cce1;
	System::Word Cce2;
	void __fastcall ArrangeTokensInsertRowsAndCols(const int atPos, const int fPos, const int InsRowPos, const int InsRowOffset, const int CopyRowOffset, const int InsColPos, const int InsColOffset, const int CopyColOffset, const Fmx::Tmsfncxlsmessages::TSheetInfo &SheetInfo);
	
public:
	__fastcall virtual TCFRecord(const System::Word aId, const Fmx::Tmsfncxlsmessages::PArrayOfByte aData, const int aDataSize);
	void __fastcall ArrangeInsertRowsAndCols(const int aRowPos, const int aRowCount, const int aColPos, const int aColCount, const Fmx::Tmsfncxlsmessages::TSheetInfo &SheetInfo);
	void __fastcall ArrangeCopyRowsAndCols(const int RowOffset, const int ColOffset);
public:
	/* TBaseRecord.Destroy */ inline __fastcall virtual ~TCFRecord() { }
	
};


class PASCALIMPLEMENTATION TCFRecordList : public Fmx::Tmsfncuxlsbaserecordlists::TBaseRecordList
{
	typedef Fmx::Tmsfncuxlsbaserecordlists::TBaseRecordList inherited;
	
public:
	TCFRecord* operator[](int index) { return this->Items[index]; }
	
private:
	TCFRecord* __fastcall GetItems(int index);
	void __fastcall SetItems(int index, TCFRecord* const Value);
	
public:
	__property TCFRecord* Items[int index] = {read=GetItems, write=SetItems/*, default*/};
	HIDESBASE int __fastcall Add(TCFRecord* aRecord);
	HIDESBASE void __fastcall Insert(int Index, TCFRecord* aRecord);
	void __fastcall ArrangeInsertRowsAndCols(const int aRowPos, const int aRowCount, const int aColPos, const int aColCount, const Fmx::Tmsfncxlsmessages::TSheetInfo &SheetInfo);
public:
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TCFRecordList()/* overload */ : Fmx::Tmsfncuxlsbaserecordlists::TBaseRecordList() { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TCFRecordList(bool AOwnsObjects)/* overload */ : Fmx::Tmsfncuxlsbaserecordlists::TBaseRecordList(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TCFRecordList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<System::TObject*> > AComparer, bool AOwnsObjects)/* overload */ : Fmx::Tmsfncuxlsbaserecordlists::TBaseRecordList(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TCFRecordList(System::Generics::Collections::TEnumerable__1<System::TObject*>* const Collection, bool AOwnsObjects)/* overload */ : Fmx::Tmsfncuxlsbaserecordlists::TBaseRecordList(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Destroy */ inline __fastcall virtual ~TCFRecordList() { }
	
public:
	/* {System_Generics_Collections}TList<System_TObject>.Create */ inline __fastcall TCFRecordList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<System::TObject*> > AComparer)/* overload */ : Fmx::Tmsfncuxlsbaserecordlists::TBaseRecordList(AComparer) { }
	/* {System_Generics_Collections}TList<System_TObject>.Create */ inline __fastcall TCFRecordList(System::Generics::Collections::TEnumerable__1<System::TObject*>* const Collection)/* overload */ : Fmx::Tmsfncuxlsbaserecordlists::TBaseRecordList(Collection) { }
	/* {System_Generics_Collections}TList<System_TObject>.Create */ inline __fastcall TCFRecordList(System::TObject* const *Values, const int Values_High)/* overload */ : Fmx::Tmsfncuxlsbaserecordlists::TBaseRecordList(Values, Values_High) { }
	
};


class PASCALIMPLEMENTATION TCondFmt : public Fmx::Tmsfncuxlsrangerecords::TRangeEntry
{
	typedef Fmx::Tmsfncuxlsrangerecords::TRangeEntry inherited;
	
private:
	System::Word Flag;
	Fmx::Tmsfncuxlsrangerecords::TExcelRange AllRange;
	TCFRecordList* CFs;
	
protected:
	virtual Fmx::Tmsfncuxlsrangerecords::TRangeEntry* __fastcall DoCopyTo();
	
public:
	__fastcall virtual TCondFmt();
	__fastcall virtual ~TCondFmt();
	void __fastcall Clear();
	virtual void __fastcall LoadFromStream(Fmx::Tmsfncuole2impl::TOle2File* const DataStream, Fmx::Tmsfncxlsmessages::TRecordHeader &RecordHeader, Fmx::Tmsfncuxlsotherrecords::TRangeRecord* const First);
	virtual void __fastcall SaveToStream(Fmx::Tmsfncuole2impl::TOle2File* const DataStream);
	virtual void __fastcall SaveRangeToStream(Fmx::Tmsfncuole2impl::TOle2File* const DataStream, const Fmx::Tmsfncuflxmessages::TXlsCellRange &CellRange);
	virtual __int64 __fastcall TotalSize();
	virtual __int64 __fastcall TotalRangeSize(const Fmx::Tmsfncuflxmessages::TXlsCellRange &CellRange);
	virtual void __fastcall ArrangeInsertRowsAndCols(const int aRowPos, const int aRowCount, const int aColPos, const int aColCount, const Fmx::Tmsfncxlsmessages::TSheetInfo &SheetInfo);
	virtual void __fastcall InsertAndCopyRowsOrCols(const int FirstRow, const int LastRow, const int DestRow, const int aCount, const Fmx::Tmsfncxlsmessages::TSheetInfo &SheetInfo, const bool UseCols);
	virtual void __fastcall DeleteRowsOrCols(const System::Word aRow, const System::Word aCount, const Fmx::Tmsfncxlsmessages::TSheetInfo &SheetInfo, const bool UseCols);
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Tmsfncuxlscondfmt */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCUXLSCONDFMT)
using namespace Fmx::Tmsfncuxlscondfmt;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncuxlscondfmtHPP
