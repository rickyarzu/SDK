// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCUXlsCellRecords.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncuxlscellrecordsHPP
#define Fmx_TmsfncuxlscellrecordsHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <FMX.TMSFNCUXlsBaseRecords.hpp>
#include <FMX.TMSFNCXlsMessages.hpp>
#include <FMX.TMSFNCUFlxMessages.hpp>
#include <System.Variants.hpp>
#include <System.SysUtils.hpp>
#include <System.Classes.hpp>
#include <FMX.TMSFNCUOle2Impl.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncuxlscellrecords
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TBlankRecord;
class DELPHICLASS TBoolErrRecord;
class DELPHICLASS TNumberRecord;
class DELPHICLASS TRKRecord;
class DELPHICLASS TMultipleValueRecord;
class DELPHICLASS TMulBlankRecord;
class DELPHICLASS TMulRKRecord;
//-- type declarations -------------------------------------------------------
#pragma pack(push,4)
class PASCALIMPLEMENTATION TBlankRecord : public Fmx::Tmsfncuxlsbaserecords::TCellRecord
{
	typedef Fmx::Tmsfncuxlsbaserecords::TCellRecord inherited;
	
public:
	__fastcall TBlankRecord(const System::Word aRow, const System::Word aCol, const System::Word aXF);
	virtual bool __fastcall CanJoinNext(Fmx::Tmsfncuxlsbaserecords::TCellRecord* const NextRecord, const int MaxCol);
	virtual void __fastcall SaveFirstMul(Fmx::Tmsfncuole2impl::TOle2File* const Workbook, const System::Word JoinedRecordSize);
	virtual void __fastcall SaveMidMul(Fmx::Tmsfncuole2impl::TOle2File* const Workbook);
	virtual void __fastcall SaveLastMul(Fmx::Tmsfncuole2impl::TOle2File* const Workbook);
	virtual int __fastcall TotalSizeFirst();
	virtual int __fastcall TotalSizeMid();
	virtual int __fastcall TotalSizeLast();
public:
	/* TBaseRowColRecord.Create */ inline __fastcall virtual TBlankRecord(const System::Word aId, const Fmx::Tmsfncxlsmessages::PArrayOfByte aData, const int aDataSize) : Fmx::Tmsfncuxlsbaserecords::TCellRecord(aId, aData, aDataSize) { }
	
public:
	/* TBaseRecord.Destroy */ inline __fastcall virtual ~TBlankRecord() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TBoolErrRecord : public Fmx::Tmsfncuxlsbaserecords::TCellRecord
{
	typedef Fmx::Tmsfncuxlsbaserecords::TCellRecord inherited;
	
protected:
	virtual System::Variant __fastcall GetValue();
	virtual void __fastcall SetValue(const System::Variant &Value);
	System::UnicodeString __fastcall ErrcodeToString(const int ErrCode);
	int __fastcall StringToErrcode(const System::UnicodeString ErrStr);
	
public:
	__fastcall TBoolErrRecord(const System::Word aRow, const System::Word aCol, const System::Word aXF);
public:
	/* TBaseRowColRecord.Create */ inline __fastcall virtual TBoolErrRecord(const System::Word aId, const Fmx::Tmsfncxlsmessages::PArrayOfByte aData, const int aDataSize) : Fmx::Tmsfncuxlsbaserecords::TCellRecord(aId, aData, aDataSize) { }
	
public:
	/* TBaseRecord.Destroy */ inline __fastcall virtual ~TBoolErrRecord() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TNumberRecord : public Fmx::Tmsfncuxlsbaserecords::TCellRecord
{
	typedef Fmx::Tmsfncuxlsbaserecords::TCellRecord inherited;
	
protected:
	virtual System::Variant __fastcall GetValue();
	virtual void __fastcall SetValue(const System::Variant &Value);
	
public:
	__fastcall TNumberRecord(const System::Word aRow, const System::Word aCol, const System::Word aXF);
public:
	/* TBaseRowColRecord.Create */ inline __fastcall virtual TNumberRecord(const System::Word aId, const Fmx::Tmsfncxlsmessages::PArrayOfByte aData, const int aDataSize) : Fmx::Tmsfncuxlsbaserecords::TCellRecord(aId, aData, aDataSize) { }
	
public:
	/* TBaseRecord.Destroy */ inline __fastcall virtual ~TNumberRecord() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TRKRecord : public Fmx::Tmsfncuxlsbaserecords::TCellRecord
{
	typedef Fmx::Tmsfncuxlsbaserecords::TCellRecord inherited;
	
protected:
	virtual System::Variant __fastcall GetValue();
	virtual void __fastcall SetValue(const System::Variant &Value);
	
public:
	__fastcall TRKRecord(const System::Word aRow, const System::Word aCol, const System::Word aXF);
	virtual bool __fastcall CanJoinNext(Fmx::Tmsfncuxlsbaserecords::TCellRecord* const NextRecord, const int MaxCol);
	virtual void __fastcall SaveFirstMul(Fmx::Tmsfncuole2impl::TOle2File* const Workbook, const System::Word JoinedRecordSize);
	virtual void __fastcall SaveMidMul(Fmx::Tmsfncuole2impl::TOle2File* const Workbook);
	virtual void __fastcall SaveLastMul(Fmx::Tmsfncuole2impl::TOle2File* const Workbook);
	virtual int __fastcall TotalSizeFirst();
	virtual int __fastcall TotalSizeMid();
	virtual int __fastcall TotalSizeLast();
public:
	/* TBaseRowColRecord.Create */ inline __fastcall virtual TRKRecord(const System::Word aId, const Fmx::Tmsfncxlsmessages::PArrayOfByte aData, const int aDataSize) : Fmx::Tmsfncuxlsbaserecords::TCellRecord(aId, aData, aDataSize) { }
	
public:
	/* TBaseRecord.Destroy */ inline __fastcall virtual ~TRKRecord() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TMultipleValueRecord : public Fmx::Tmsfncuxlsbaserecords::TBaseRecord
{
	typedef Fmx::Tmsfncuxlsbaserecords::TBaseRecord inherited;
	
public:
	virtual bool __fastcall Eof() = 0 ;
	virtual Fmx::Tmsfncuxlsbaserecords::TCellRecord* __fastcall ExtractOneRecord() = 0 ;
public:
	/* TBaseRecord.Create */ inline __fastcall virtual TMultipleValueRecord(const System::Word aId, const Fmx::Tmsfncxlsmessages::PArrayOfByte aData, const int aDataSize) : Fmx::Tmsfncuxlsbaserecords::TBaseRecord(aId, aData, aDataSize) { }
	/* TBaseRecord.Destroy */ inline __fastcall virtual ~TMultipleValueRecord() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TMulBlankRecord : public TMultipleValueRecord
{
	typedef TMultipleValueRecord inherited;
	
private:
	int CurrentCol;
	
public:
	virtual bool __fastcall Eof();
	virtual Fmx::Tmsfncuxlsbaserecords::TCellRecord* __fastcall ExtractOneRecord();
public:
	/* TBaseRecord.Create */ inline __fastcall virtual TMulBlankRecord(const System::Word aId, const Fmx::Tmsfncxlsmessages::PArrayOfByte aData, const int aDataSize) : TMultipleValueRecord(aId, aData, aDataSize) { }
	/* TBaseRecord.Destroy */ inline __fastcall virtual ~TMulBlankRecord() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TMulRKRecord : public TMultipleValueRecord
{
	typedef TMultipleValueRecord inherited;
	
private:
	int CurrentCol;
	
public:
	virtual bool __fastcall Eof();
	virtual Fmx::Tmsfncuxlsbaserecords::TCellRecord* __fastcall ExtractOneRecord();
public:
	/* TBaseRecord.Create */ inline __fastcall virtual TMulRKRecord(const System::Word aId, const Fmx::Tmsfncxlsmessages::PArrayOfByte aData, const int aDataSize) : TMultipleValueRecord(aId, aData, aDataSize) { }
	/* TBaseRecord.Destroy */ inline __fastcall virtual ~TMulRKRecord() { }
	
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
extern DELPHI_PACKAGE bool __fastcall EncodeRK(double Value, /* out */ int &RK);
extern DELPHI_PACKAGE bool __fastcall IsRK(const double Value);
}	/* namespace Tmsfncuxlscellrecords */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCUXLSCELLRECORDS)
using namespace Fmx::Tmsfncuxlscellrecords;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncuxlscellrecordsHPP
