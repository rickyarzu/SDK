// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCUXlsSections.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncuxlssectionsHPP
#define Fmx_TmsfncuxlssectionsHPP

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
#include <FMX.TMSFNCUXlsSST.hpp>
#include <FMX.TMSFNCXlsMessages.hpp>
#include <FMX.TMSFNCUFlxMessages.hpp>
#include <FMX.TMSFNCUOle2Impl.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncuxlssections
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TBaseSection;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TBaseSection : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	Fmx::Tmsfncuxlsotherrecords::TBOFRecord* FBOF;
	Fmx::Tmsfncuxlsotherrecords::TEOFRecord* FEOF;
	
protected:
	__property Fmx::Tmsfncuxlsotherrecords::TBOFRecord* sBOF = {read=FBOF, write=FBOF};
	__property Fmx::Tmsfncuxlsotherrecords::TEOFRecord* sEOF = {read=FEOF, write=FEOF};
	
public:
	__fastcall TBaseSection();
	__fastcall virtual ~TBaseSection();
	virtual void __fastcall Clear();
	virtual __int64 __fastcall TotalSize();
	virtual __int64 __fastcall TotalRangeSize(const int SheetIndex, const Fmx::Tmsfncuflxmessages::TXlsCellRange &CellRange);
	virtual void __fastcall LoadFromStream(Fmx::Tmsfncuole2impl::TOle2File* const DataStream, Fmx::Tmsfncxlsmessages::TRecordHeader &RecordHeader, Fmx::Tmsfncuxlsotherrecords::TBOFRecord* const First, Fmx::Tmsfncuxlssst::TSST* const SST) = 0 ;
	virtual void __fastcall SaveToStream(Fmx::Tmsfncuole2impl::TOle2File* const DataStream) = 0 ;
	virtual void __fastcall SaveRangeToStream(Fmx::Tmsfncuole2impl::TOle2File* const DataStream, const int SheetIndex, const Fmx::Tmsfncuflxmessages::TXlsCellRange &CellRange) = 0 ;
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Tmsfncuxlssections */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCUXLSSECTIONS)
using namespace Fmx::Tmsfncuxlssections;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncuxlssectionsHPP
