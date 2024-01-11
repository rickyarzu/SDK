// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCUXlsClientData.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncuxlsclientdataHPP
#define Fmx_TmsfncuxlsclientdataHPP

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
#include <FMX.TMSFNCUXlsSheet.hpp>
#include <FMX.TMSFNCUXlsBaseClientData.hpp>
#include <FMX.TMSFNCUFlxMessages.hpp>
#include <FMX.TMSFNCUOle2Impl.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncuxlsclientdata
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TMsObj;
class DELPHICLASS TTXO;
//-- type declarations -------------------------------------------------------
#pragma pack(push,4)
class PASCALIMPLEMENTATION TMsObj : public Fmx::Tmsfncuxlsbaseclientdata::TBaseClientData
{
	typedef Fmx::Tmsfncuxlsbaseclientdata::TBaseClientData inherited;
	
private:
	Fmx::Tmsfncuxlsotherrecords::TObjRecord* FObjRecord;
	Fmx::Tmsfncuxlssheet::TFlxChart* FChart;
	Fmx::Tmsfncuxlsbaserecords::TBaseRecord* FImData;
	bool HasPictFmla;
	bool __fastcall Get_IsAutoFilter();
	
protected:
	virtual System::Word __fastcall GetId();
	virtual void __fastcall SetId(const System::Word Value);
	void __fastcall ScanRecord(Fmx::Tmsfncuxlsbaserecords::TBaseRecord* myRecord);
	
public:
	virtual void __fastcall ArrangeId(System::Word &MaxId);
	__fastcall TMsObj();
	__fastcall TMsObj(System::Word &MaxId, const System::Byte *data, const int data_High);
	__classmethod TMsObj* __fastcall CreateEmptyImg(System::Word &MaxId);
	__classmethod TMsObj* __fastcall CreateEmptyNote(System::Word &MaxId);
	__classmethod TMsObj* __fastcall CreateEmptyAutoFilter(System::Word &MaxId);
	__fastcall virtual ~TMsObj();
	virtual void __fastcall Clear();
	virtual Fmx::Tmsfncuxlsbaseclientdata::TBaseClientData* __fastcall CopyTo();
	virtual void __fastcall LoadFromStream(Fmx::Tmsfncuole2impl::TOle2File* const DataStream, Fmx::Tmsfncxlsmessages::TRecordHeader &RecordHeader, Fmx::Tmsfncuxlsbaserecords::TBaseRecord* const First, Fmx::Tmsfncuxlssst::TSST* const SST);
	virtual void __fastcall SaveToStream(Fmx::Tmsfncuole2impl::TOle2File* const DataStream);
	virtual __int64 __fastcall TotalSize();
	virtual void __fastcall ArrangeCopyRowsAndCols(const int RowOfs, const int ColOfs);
	virtual void __fastcall ArrangeInsertRowsAndCols(const int aRowPos, const int aRowCount, const int aColPos, const int aColCount, const Fmx::Tmsfncxlsmessages::TSheetInfo &SheetInfo);
	virtual void __fastcall ArrangeCopySheet(const Fmx::Tmsfncxlsmessages::TSheetInfo &SheetInfo);
	__classmethod virtual Fmx::Tmsfncuxlsbaserecords::ClassOfTBaseRecord __fastcall ObjRecord();
	__property bool IsAutoFilter = {read=Get_IsAutoFilter, nodefault};
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTXO : public Fmx::Tmsfncuxlsbaseclientdata::TBaseClientData
{
	typedef Fmx::Tmsfncuxlsbaseclientdata::TBaseClientData inherited;
	
private:
	Fmx::Tmsfncuxlsotherrecords::TTXORecord* FTXO;
	System::UnicodeString __fastcall GetValue();
	void __fastcall SetValue(const System::UnicodeString aValue);
	void __fastcall ScanRecord(System::UnicodeString &Value, Fmx::Tmsfncuflxmessages::TRTFRunList &RTFRuns);
	
public:
	__fastcall TTXO();
	__fastcall TTXO(const int Dummy);
	__fastcall virtual ~TTXO();
	virtual void __fastcall Clear();
	virtual Fmx::Tmsfncuxlsbaseclientdata::TBaseClientData* __fastcall CopyTo();
	virtual void __fastcall LoadFromStream(Fmx::Tmsfncuole2impl::TOle2File* const DataStream, Fmx::Tmsfncxlsmessages::TRecordHeader &RecordHeader, Fmx::Tmsfncuxlsbaserecords::TBaseRecord* const First, Fmx::Tmsfncuxlssst::TSST* const SST);
	virtual void __fastcall SaveToStream(Fmx::Tmsfncuole2impl::TOle2File* const DataStream);
	virtual __int64 __fastcall TotalSize();
	virtual void __fastcall ArrangeInsertRowsAndCols(const int aRowPos, const int aRowCount, const int aColPos, const int aColCount, const Fmx::Tmsfncxlsmessages::TSheetInfo &SheetInfo);
	virtual void __fastcall ArrangeCopySheet(const Fmx::Tmsfncxlsmessages::TSheetInfo &SheetInfo);
	__classmethod virtual Fmx::Tmsfncuxlsbaserecords::ClassOfTBaseRecord __fastcall ObjRecord();
	__property System::UnicodeString Value = {read=GetValue, write=SetValue};
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
}	/* namespace Tmsfncuxlsclientdata */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCUXLSCLIENTDATA)
using namespace Fmx::Tmsfncuxlsclientdata;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncuxlsclientdataHPP
