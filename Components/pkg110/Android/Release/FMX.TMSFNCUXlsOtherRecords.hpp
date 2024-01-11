// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCUXlsOtherRecords.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncuxlsotherrecordsHPP
#define Fmx_TmsfncuxlsotherrecordsHPP

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
#include <FMX.TMSFNCXlsMessages.hpp>
#include <FMX.TMSFNCUXlsStrings.hpp>
#include <FMX.TMSFNCUFlxMessages.hpp>
#include <FMX.TMSFNCUOle2Impl.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncuxlsotherrecords
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TBOFRecord;
class DELPHICLASS TEOFRecord;
class DELPHICLASS TTemplateRecord;
class DELPHICLASS TObjRecord;
class DELPHICLASS TTXORecord;
class DELPHICLASS TSSTRecord;
class DELPHICLASS TBoundSheetRecord;
class DELPHICLASS TCodeNameRecord;
class DELPHICLASS TObProjRecord;
class DELPHICLASS TRangeRecord;
class DELPHICLASS TCellMergingRecord;
class DELPHICLASS TDValRecord;
class DELPHICLASS TGutsRecord;
class DELPHICLASS TPaneRecord;
//-- type declarations -------------------------------------------------------
#pragma pack(push,4)
class PASCALIMPLEMENTATION TBOFRecord : public Fmx::Tmsfncuxlsbaserecords::TBaseRecord
{
	typedef Fmx::Tmsfncuxlsbaserecords::TBaseRecord inherited;
	
private:
	System::Word __fastcall GetBOFType();
	
public:
	__property System::Word BOFType = {read=GetBOFType, nodefault};
	__fastcall virtual TBOFRecord(const System::Word aId, const Fmx::Tmsfncxlsmessages::PArrayOfByte aData, const int aDataSize);
public:
	/* TBaseRecord.Destroy */ inline __fastcall virtual ~TBOFRecord() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TEOFRecord : public Fmx::Tmsfncuxlsbaserecords::TBaseRecord
{
	typedef Fmx::Tmsfncuxlsbaserecords::TBaseRecord inherited;
	
public:
	/* TBaseRecord.Create */ inline __fastcall virtual TEOFRecord(const System::Word aId, const Fmx::Tmsfncxlsmessages::PArrayOfByte aData, const int aDataSize) : Fmx::Tmsfncuxlsbaserecords::TBaseRecord(aId, aData, aDataSize) { }
	/* TBaseRecord.Destroy */ inline __fastcall virtual ~TEOFRecord() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTemplateRecord : public Fmx::Tmsfncuxlsbaserecords::TBaseRecord
{
	typedef Fmx::Tmsfncuxlsbaserecords::TBaseRecord inherited;
	
public:
	__classmethod void __fastcall SaveNewRecord(Fmx::Tmsfncuole2impl::TOle2File* const Workbook);
	__classmethod int __fastcall GetSize(const bool HasTemplate);
public:
	/* TBaseRecord.Create */ inline __fastcall virtual TTemplateRecord(const System::Word aId, const Fmx::Tmsfncxlsmessages::PArrayOfByte aData, const int aDataSize) : Fmx::Tmsfncuxlsbaserecords::TBaseRecord(aId, aData, aDataSize) { }
	/* TBaseRecord.Destroy */ inline __fastcall virtual ~TTemplateRecord() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TObjRecord : public Fmx::Tmsfncuxlsbaserecords::TBaseRecord
{
	typedef Fmx::Tmsfncuxlsbaserecords::TBaseRecord inherited;
	
public:
	System::Word ObjId;
	System::Word CmoId;
	__fastcall virtual TObjRecord(const System::Word aId, const Fmx::Tmsfncxlsmessages::PArrayOfByte aData, const int aDataSize);
public:
	/* TBaseRecord.Destroy */ inline __fastcall virtual ~TObjRecord() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTXORecord : public Fmx::Tmsfncuxlsbaserecords::TBaseRecord
{
	typedef Fmx::Tmsfncuxlsbaserecords::TBaseRecord inherited;
	
public:
	__fastcall TTXORecord();
public:
	/* TBaseRecord.Create */ inline __fastcall virtual TTXORecord(const System::Word aId, const Fmx::Tmsfncxlsmessages::PArrayOfByte aData, const int aDataSize) : Fmx::Tmsfncuxlsbaserecords::TBaseRecord(aId, aData, aDataSize) { }
	/* TBaseRecord.Destroy */ inline __fastcall virtual ~TTXORecord() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TSSTRecord : public Fmx::Tmsfncuxlsbaserecords::TBaseRecord
{
	typedef Fmx::Tmsfncuxlsbaserecords::TBaseRecord inherited;
	
public:
	unsigned Count;
	__fastcall virtual TSSTRecord(const System::Word aId, const Fmx::Tmsfncxlsmessages::PArrayOfByte aData, const int aDataSize);
public:
	/* TBaseRecord.Destroy */ inline __fastcall virtual ~TSSTRecord() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TBoundSheetRecord : public Fmx::Tmsfncuxlsbaserecords::TBaseRecord
{
	typedef Fmx::Tmsfncuxlsbaserecords::TBaseRecord inherited;
	
private:
	System::UnicodeString __fastcall GetSheetName();
	void __fastcall SetSheetName(const System::UnicodeString Value);
	System::Word __fastcall GetOptionFlags();
	void __fastcall SetOptionFlags(const System::Word Value);
	
public:
	__property System::Word OptionFlags = {read=GetOptionFlags, write=SetOptionFlags, nodefault};
	__property System::UnicodeString SheetName = {read=GetSheetName, write=SetSheetName};
	__fastcall TBoundSheetRecord(const System::Word aOptionFlags, const System::UnicodeString aName);
	void __fastcall SetOffset(unsigned aOffset);
public:
	/* TBaseRecord.Create */ inline __fastcall virtual TBoundSheetRecord(const System::Word aId, const Fmx::Tmsfncxlsmessages::PArrayOfByte aData, const int aDataSize) : Fmx::Tmsfncuxlsbaserecords::TBaseRecord(aId, aData, aDataSize) { }
	/* TBaseRecord.Destroy */ inline __fastcall virtual ~TBoundSheetRecord() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TCodeNameRecord : public Fmx::Tmsfncuxlsbaserecords::TBaseRecord
{
	typedef Fmx::Tmsfncuxlsbaserecords::TBaseRecord inherited;
	
private:
	System::UnicodeString __fastcall GetSheetName();
	void __fastcall SetSheetName(const System::UnicodeString Value);
	
public:
	__property System::UnicodeString SheetName = {read=GetSheetName, write=SetSheetName};
	__fastcall TCodeNameRecord(const System::UnicodeString aName);
public:
	/* TBaseRecord.Create */ inline __fastcall virtual TCodeNameRecord(const System::Word aId, const Fmx::Tmsfncxlsmessages::PArrayOfByte aData, const int aDataSize) : Fmx::Tmsfncuxlsbaserecords::TBaseRecord(aId, aData, aDataSize) { }
	/* TBaseRecord.Destroy */ inline __fastcall virtual ~TCodeNameRecord() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TObProjRecord : public Fmx::Tmsfncuxlsbaserecords::TBaseRecord
{
	typedef Fmx::Tmsfncuxlsbaserecords::TBaseRecord inherited;
	
public:
	/* TBaseRecord.Create */ inline __fastcall virtual TObProjRecord(const System::Word aId, const Fmx::Tmsfncxlsmessages::PArrayOfByte aData, const int aDataSize) : Fmx::Tmsfncuxlsbaserecords::TBaseRecord(aId, aData, aDataSize) { }
	/* TBaseRecord.Destroy */ inline __fastcall virtual ~TObProjRecord() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TRangeRecord : public Fmx::Tmsfncuxlsbaserecords::TBaseRecord
{
	typedef Fmx::Tmsfncuxlsbaserecords::TBaseRecord inherited;
	
public:
	/* TBaseRecord.Create */ inline __fastcall virtual TRangeRecord(const System::Word aId, const Fmx::Tmsfncxlsmessages::PArrayOfByte aData, const int aDataSize) : Fmx::Tmsfncuxlsbaserecords::TBaseRecord(aId, aData, aDataSize) { }
	/* TBaseRecord.Destroy */ inline __fastcall virtual ~TRangeRecord() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TCellMergingRecord : public TRangeRecord
{
	typedef TRangeRecord inherited;
	
public:
	/* TBaseRecord.Create */ inline __fastcall virtual TCellMergingRecord(const System::Word aId, const Fmx::Tmsfncxlsmessages::PArrayOfByte aData, const int aDataSize) : TRangeRecord(aId, aData, aDataSize) { }
	/* TBaseRecord.Destroy */ inline __fastcall virtual ~TCellMergingRecord() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TDValRecord : public TRangeRecord
{
	typedef TRangeRecord inherited;
	
public:
	/* TBaseRecord.Create */ inline __fastcall virtual TDValRecord(const System::Word aId, const Fmx::Tmsfncxlsmessages::PArrayOfByte aData, const int aDataSize) : TRangeRecord(aId, aData, aDataSize) { }
	/* TBaseRecord.Destroy */ inline __fastcall virtual ~TDValRecord() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TGutsRecord : public Fmx::Tmsfncuxlsbaserecords::TBaseRecord
{
	typedef Fmx::Tmsfncuxlsbaserecords::TBaseRecord inherited;
	
private:
	int __fastcall GetColLevel();
	int __fastcall GetRowLevel();
	void __fastcall SetColLevel(const int Value);
	void __fastcall SetRowLevel(const int Value);
	
public:
	bool RecalcNeeded;
	__fastcall virtual TGutsRecord(const System::Word aId, const Fmx::Tmsfncxlsmessages::PArrayOfByte aData, const int aDataSize);
	__property int RowLevel = {read=GetRowLevel, write=SetRowLevel, nodefault};
	__property int ColLevel = {read=GetColLevel, write=SetColLevel, nodefault};
	virtual Fmx::Tmsfncuxlsbaserecords::TBaseRecord* __fastcall DoCopyTo();
public:
	/* TBaseRecord.Destroy */ inline __fastcall virtual ~TGutsRecord() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TPaneRecord : public Fmx::Tmsfncuxlsbaserecords::TBaseRecord
{
	typedef Fmx::Tmsfncuxlsbaserecords::TBaseRecord inherited;
	
private:
	int __fastcall Get_RowSplit();
	void __fastcall Set_RowSplit(const int value);
	int __fastcall Get_ColSplit();
	void __fastcall Set_ColSplit(const int value);
	int __fastcall Get_FirstVisibleRow();
	void __fastcall Set_FirstVisibleRow(const int value);
	int __fastcall Get_FirstVisibleCol();
	void __fastcall Set_FirstVisibleCol(const int value);
	int __fastcall Get_ActivePane();
	void __fastcall Set_ActivePane(const int value);
	
public:
	void __fastcall EnsureSelectedVisible();
	__property int RowSplit = {read=Get_RowSplit, write=Set_RowSplit, nodefault};
	__property int ColSplit = {read=Get_ColSplit, write=Set_ColSplit, nodefault};
	__property int FirstVisibleRow = {read=Get_FirstVisibleRow, write=Set_FirstVisibleRow, nodefault};
	__property int FirstVisibleCol = {read=Get_FirstVisibleCol, write=Set_FirstVisibleCol, nodefault};
	__property int ActivePane = {read=Get_ActivePane, write=Set_ActivePane, nodefault};
public:
	/* TBaseRecord.Create */ inline __fastcall virtual TPaneRecord(const System::Word aId, const Fmx::Tmsfncxlsmessages::PArrayOfByte aData, const int aDataSize) : Fmx::Tmsfncuxlsbaserecords::TBaseRecord(aId, aData, aDataSize) { }
	/* TBaseRecord.Destroy */ inline __fastcall virtual ~TPaneRecord() { }
	
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
}	/* namespace Tmsfncuxlsotherrecords */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCUXLSOTHERRECORDS)
using namespace Fmx::Tmsfncuxlsotherrecords;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncuxlsotherrecordsHPP
