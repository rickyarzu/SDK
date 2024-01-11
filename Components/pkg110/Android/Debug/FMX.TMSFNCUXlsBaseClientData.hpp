// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCUXlsBaseClientData.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncuxlsbaseclientdataHPP
#define Fmx_TmsfncuxlsbaseclientdataHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <FMX.TMSFNCUXlsBaseRecords.hpp>
#include <FMX.TMSFNCUXlsSST.hpp>
#include <FMX.TMSFNCXlsMessages.hpp>
#include <FMX.TMSFNCUOle2Impl.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncuxlsbaseclientdata
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TBaseClientData;
//-- type declarations -------------------------------------------------------
#pragma pack(push,4)
class PASCALIMPLEMENTATION TBaseClientData : public System::TObject
{
	typedef System::TObject inherited;
	
protected:
	virtual System::Word __fastcall GetId();
	virtual void __fastcall SetId(const System::Word Value);
	
public:
	Fmx::Tmsfncuxlsbaserecords::TBaseRecord* RemainingData;
	__property System::Word Id = {read=GetId, write=SetId, nodefault};
	virtual void __fastcall ArrangeId(System::Word &MaxId);
	virtual void __fastcall Clear() = 0 ;
	virtual TBaseClientData* __fastcall CopyTo() = 0 ;
	virtual void __fastcall LoadFromStream(Fmx::Tmsfncuole2impl::TOle2File* const DataStream, Fmx::Tmsfncxlsmessages::TRecordHeader &RecordHeader, Fmx::Tmsfncuxlsbaserecords::TBaseRecord* const First, Fmx::Tmsfncuxlssst::TSST* const SST) = 0 ;
	virtual void __fastcall SaveToStream(Fmx::Tmsfncuole2impl::TOle2File* const DataStream) = 0 ;
	virtual __int64 __fastcall TotalSize() = 0 ;
	virtual void __fastcall ArrangeCopyRowsAndCols(const int RowOfs, const int ColOfs);
	virtual void __fastcall ArrangeInsertRowsAndCols(const int aRowPos, const int aRowCount, const int aColPos, const int aColCount, const Fmx::Tmsfncxlsmessages::TSheetInfo &SheetInfo) = 0 ;
	virtual void __fastcall ArrangeCopySheet(const Fmx::Tmsfncxlsmessages::TSheetInfo &SheetInfo) = 0 ;
	__classmethod virtual Fmx::Tmsfncuxlsbaserecords::ClassOfTBaseRecord __fastcall ObjRecord();
public:
	/* TObject.Create */ inline __fastcall TBaseClientData() : System::TObject() { }
	/* TObject.Destroy */ inline __fastcall virtual ~TBaseClientData() { }
	
};

#pragma pack(pop)

_DECLARE_METACLASS(System::TMetaClass, ClassOfTBaseClientData);

//-- var, const, procedure ---------------------------------------------------
}	/* namespace Tmsfncuxlsbaseclientdata */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCUXLSBASECLIENTDATA)
using namespace Fmx::Tmsfncuxlsbaseclientdata;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncuxlsbaseclientdataHPP
