// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCUXlsChart.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncuxlschartHPP
#define Fmx_TmsfncuxlschartHPP

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
#include <FMX.TMSFNCUXlsTokenArray.hpp>
#include <System.Classes.hpp>
#include <System.SysUtils.hpp>
#include <FMX.TMSFNCUXlsBaseList.hpp>
#include <System.Generics.Collections.hpp>
#include <System.Generics.Defaults.hpp>
#include <System.Types.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncuxlschart
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TChartRecord;
class DELPHICLASS TBeginRecord;
class DELPHICLASS TEndRecord;
class DELPHICLASS TChartAIRecord;
class DELPHICLASS TChartAIRecordCache;
class DELPHICLASS TChartRecordList;
//-- type declarations -------------------------------------------------------
#pragma pack(push,4)
class PASCALIMPLEMENTATION TChartRecord : public Fmx::Tmsfncuxlsbaserecords::TBaseRecord
{
	typedef Fmx::Tmsfncuxlsbaserecords::TBaseRecord inherited;
	
public:
	/* TBaseRecord.Create */ inline __fastcall virtual TChartRecord(const System::Word aId, const Fmx::Tmsfncxlsmessages::PArrayOfByte aData, const int aDataSize) : Fmx::Tmsfncuxlsbaserecords::TBaseRecord(aId, aData, aDataSize) { }
	/* TBaseRecord.Destroy */ inline __fastcall virtual ~TChartRecord() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TBeginRecord : public TChartRecord
{
	typedef TChartRecord inherited;
	
public:
	/* TBaseRecord.Create */ inline __fastcall virtual TBeginRecord(const System::Word aId, const Fmx::Tmsfncxlsmessages::PArrayOfByte aData, const int aDataSize) : TChartRecord(aId, aData, aDataSize) { }
	/* TBaseRecord.Destroy */ inline __fastcall virtual ~TBeginRecord() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TEndRecord : public TChartRecord
{
	typedef TChartRecord inherited;
	
public:
	/* TBaseRecord.Create */ inline __fastcall virtual TEndRecord(const System::Word aId, const Fmx::Tmsfncxlsmessages::PArrayOfByte aData, const int aDataSize) : TChartRecord(aId, aData, aDataSize) { }
	/* TBaseRecord.Destroy */ inline __fastcall virtual ~TEndRecord() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TChartAIRecord : public TChartRecord
{
	typedef TChartRecord inherited;
	
private:
	System::Word Flags;
	System::Word FLen;
	void __fastcall ArrangeTokensInsertRowsAndCols(const int InsRowPos, const int InsRowOffset, const int CopyRowOffset, const int InsColPos, const int InsColOffset, const int CopyColOffset, const Fmx::Tmsfncxlsmessages::TSheetInfo &SheetInfo);
	
public:
	__fastcall virtual TChartAIRecord(const System::Word aId, const Fmx::Tmsfncxlsmessages::PArrayOfByte aData, const int aDataSize);
	void __fastcall ArrangeInsertRowsAndCols(const int aRowPos, const int aRowCount, const int aColPos, const int aColCount, const Fmx::Tmsfncxlsmessages::TSheetInfo &SheetInfo);
	void __fastcall ArrangeCopySheet(const Fmx::Tmsfncxlsmessages::TSheetInfo &SheetInfo);
	void __fastcall ArrangeCopyRowsAndCols(const int RowOffset, const int ColOffset);
public:
	/* TBaseRecord.Destroy */ inline __fastcall virtual ~TChartAIRecord() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TChartAIRecordCache : public Fmx::Tmsfncuxlsbaselist::TBaseList
{
	typedef Fmx::Tmsfncuxlsbaselist::TBaseList inherited;
	
public:
	TChartAIRecord* operator[](int index) { return this->Items[index]; }
	
private:
	TChartAIRecord* __fastcall GetItems(int index);
	void __fastcall SetItems(int index, TChartAIRecord* const Value);
	
public:
	__property TChartAIRecord* Items[int index] = {read=GetItems, write=SetItems/*, default*/};
	HIDESBASE int __fastcall Add(TChartAIRecord* aRecord);
	HIDESBASE void __fastcall Insert(int Index, TChartAIRecord* aRecord);
	__fastcall TChartAIRecordCache();
	void __fastcall ArrangeCopyRowsAndCols(const int RowOffset, const int ColOffset);
	void __fastcall ArrangeInsertRowsAndCols(const int aRowPos, const int aRowCount, const int aColPos, const int aColCount, const Fmx::Tmsfncxlsmessages::TSheetInfo &SheetInfo);
	void __fastcall ArrangeCopySheet(const Fmx::Tmsfncxlsmessages::TSheetInfo &SheetInfo);
public:
	/* {System_Generics_Collections}TObjectList<System_TObject>.Destroy */ inline __fastcall virtual ~TChartAIRecordCache() { }
	
};

#pragma pack(pop)

class PASCALIMPLEMENTATION TChartRecordList : public Fmx::Tmsfncuxlsbaserecordlists::TBaseRecordList
{
	typedef Fmx::Tmsfncuxlsbaserecordlists::TBaseRecordList inherited;
	
private:
	TChartAIRecordCache* AICache;
	
protected:
	virtual void __fastcall Notify(System::TObject* const Ptr, System::Generics::Collections::TCollectionNotification Action);
	
public:
	__fastcall TChartRecordList();
	__fastcall virtual ~TChartRecordList();
	void __fastcall ArrangeCopyRowsAndCols(const int RowOffset, const int ColOffset);
	void __fastcall ArrangeInsertRowsAndCols(const int aRowPos, const int aRowCount, const int aColPos, const int aColCount, const Fmx::Tmsfncxlsmessages::TSheetInfo &SheetInfo);
	void __fastcall ArrangeCopySheet(const Fmx::Tmsfncxlsmessages::TSheetInfo &SheetInfo);
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Tmsfncuxlschart */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCUXLSCHART)
using namespace Fmx::Tmsfncuxlschart;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncuxlschartHPP
