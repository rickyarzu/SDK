// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCUXlsSST.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncuxlssstHPP
#define Fmx_TmsfncuxlssstHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.SysUtils.hpp>
#include <FMX.TMSFNCXlsMessages.hpp>
#include <FMX.TMSFNCUXlsBaseRecords.hpp>
#include <FMX.TMSFNCUXlsOtherRecords.hpp>
#include <FMX.TMSFNCUXlsStrings.hpp>
#include <System.Classes.hpp>
#include <FMX.TMSFNCUFlxMessages.hpp>
#include <System.Generics.Collections.hpp>
#include <FMX.TMSFNCUOle2Impl.hpp>
#include <System.Generics.Defaults.hpp>
#include <System.Types.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncuxlssst
{
//-- forward type declarations -----------------------------------------------
struct TExtraData;
struct TMemSST;
class DELPHICLASS TSST;
class DELPHICLASS TLabelSSTRecord;
class DELPHICLASS TLabelRecord;
class DELPHICLASS TRStringRecord;
//-- type declarations -------------------------------------------------------
#pragma pack(push,1)
struct DECLSPEC_DRECORD TExtraData
{
public:
	System::Word Refs;
	unsigned AbsStreamPos;
	System::Word RecordStreamPos;
	unsigned PosInTable;
};
#pragma pack(pop)


typedef TExtraData *PExtraData;

typedef int TiSSTEntry;

typedef Fmx::Tmsfncxlsmessages::PArrayOfByte PiSSTEntry;

struct DECLSPEC_DRECORD TMemSST
{
	
private:
	typedef System::DynamicArray<System::Byte> _TMemSST__1;
	
	
public:
	int UsedSize;
	_TMemSST__1 Buffer;
};


class PASCALIMPLEMENTATION TSST : public System::Generics::Collections::TList__1<int>
{
	typedef System::Generics::Collections::TList__1<int> inherited;
	
private:
	TMemSST MemSST;
	void __fastcall QuickSort(int L, int R);
	__int64 __fastcall SSTRecordSize();
	__int64 __fastcall ExtSSTRecordSize();
	
public:
	__fastcall TSST();
	bool __fastcall Find(const Fmx::Tmsfncxlsmessages::PArrayOfByte s, int &Index);
	void __fastcall Load(Fmx::Tmsfncuxlsotherrecords::TSSTRecord* const aSSTRecord);
	void __fastcall SaveToStream(Fmx::Tmsfncuole2impl::TOle2File* const DataStream);
	void __fastcall WriteExtSST(Fmx::Tmsfncuole2impl::TOle2File* const DataStream);
	int __fastcall AddString(const System::UnicodeString s, const Fmx::Tmsfncuflxmessages::TRTFRunList RTFRuns);
	HIDESBASE void __fastcall Sort();
	__int64 __fastcall TotalSize();
	void __fastcall FixRefs();
	Fmx::Tmsfncxlsmessages::PArrayOfByte __fastcall GetEntry(const int aEntry);
public:
	/* {System_Generics_Collections}TList<System_Integer>.Destroy */ inline __fastcall virtual ~TSST() { }
	
};


class PASCALIMPLEMENTATION TLabelSSTRecord : public Fmx::Tmsfncuxlsbaserecords::TCellRecord
{
	typedef Fmx::Tmsfncuxlsbaserecords::TCellRecord inherited;
	
private:
	int pSSTEntry;
	TSST* SST;
	System::UnicodeString __fastcall GetAsString();
	void __fastcall SetAsString(const System::UnicodeString Value);
	System::UnicodeString __fastcall GetAsRTF();
	void __fastcall SetAsRTF(const System::UnicodeString Value);
	Fmx::Tmsfncuflxmessages::TRichString __fastcall GetAsRichString();
	void __fastcall SetAsRichString(const Fmx::Tmsfncuflxmessages::TRichString &Value);
	
protected:
	virtual System::Variant __fastcall GetValue();
	virtual void __fastcall SetValue(const System::Variant &Value);
	virtual Fmx::Tmsfncuxlsbaserecords::TBaseRecord* __fastcall DoCopyTo();
	
public:
	__fastcall virtual TLabelSSTRecord(const System::Word aId, const Fmx::Tmsfncxlsmessages::PArrayOfByte aData, const int aDataSize);
	__fastcall TLabelSSTRecord(const System::Word aRow, const System::Word aCol, const System::Word aXF, TSST* const aSST);
	void __fastcall AttachToSST(TSST* const aSST);
	virtual void __fastcall SaveToStream(Fmx::Tmsfncuole2impl::TOle2File* const Workbook);
	__fastcall virtual ~TLabelSSTRecord();
	__property System::UnicodeString AsString = {read=GetAsString, write=SetAsString};
	__property Fmx::Tmsfncuflxmessages::TRichString AsRichString = {read=GetAsRichString, write=SetAsRichString};
	__property System::UnicodeString AsRTF = {read=GetAsRTF, write=SetAsRTF};
};


class PASCALIMPLEMENTATION TLabelRecord : public Fmx::Tmsfncuxlsbaserecords::TCellRecord
{
	typedef Fmx::Tmsfncuxlsbaserecords::TCellRecord inherited;
	
public:
	virtual System::Variant __fastcall GetValue();
public:
	/* TCellRecord.CreateFromData */ inline __fastcall TLabelRecord(const System::Word aId, const System::Word aDataSize, const System::Word aRow, const System::Word aCol, const System::Word aXF) : Fmx::Tmsfncuxlsbaserecords::TCellRecord(aId, aDataSize, aRow, aCol, aXF) { }
	
public:
	/* TBaseRowColRecord.Create */ inline __fastcall virtual TLabelRecord(const System::Word aId, const Fmx::Tmsfncxlsmessages::PArrayOfByte aData, const int aDataSize) : Fmx::Tmsfncuxlsbaserecords::TCellRecord(aId, aData, aDataSize) { }
	
public:
	/* TBaseRecord.Destroy */ inline __fastcall virtual ~TLabelRecord() { }
	
};


class PASCALIMPLEMENTATION TRStringRecord : public Fmx::Tmsfncuxlsbaserecords::TCellRecord
{
	typedef Fmx::Tmsfncuxlsbaserecords::TCellRecord inherited;
	
private:
	Fmx::Tmsfncuflxmessages::TRichString __fastcall GetAsRichString();
	
public:
	virtual System::Variant __fastcall GetValue();
	__property Fmx::Tmsfncuflxmessages::TRichString AsRichString = {read=GetAsRichString};
public:
	/* TCellRecord.CreateFromData */ inline __fastcall TRStringRecord(const System::Word aId, const System::Word aDataSize, const System::Word aRow, const System::Word aCol, const System::Word aXF) : Fmx::Tmsfncuxlsbaserecords::TCellRecord(aId, aDataSize, aRow, aCol, aXF) { }
	
public:
	/* TBaseRowColRecord.Create */ inline __fastcall virtual TRStringRecord(const System::Word aId, const Fmx::Tmsfncxlsmessages::PArrayOfByte aData, const int aDataSize) : Fmx::Tmsfncuxlsbaserecords::TCellRecord(aId, aData, aDataSize) { }
	
public:
	/* TBaseRecord.Destroy */ inline __fastcall virtual ~TRStringRecord() { }
	
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Tmsfncuxlssst */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCUXLSSST)
using namespace Fmx::Tmsfncuxlssst;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncuxlssstHPP
