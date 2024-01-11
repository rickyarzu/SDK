// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCUEscherOtherRecords.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncuescherotherrecordsHPP
#define Fmx_TmsfncuescherotherrecordsHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.SysUtils.hpp>
#include <System.Classes.hpp>
#include <FMX.TMSFNCUBreakList.hpp>
#include <FMX.TMSFNCUEscherRecords.hpp>
#include <FMX.TMSFNCXlsMessages.hpp>
#include <FMX.TMSFNCUXlsBaseClientData.hpp>
#include <FMX.TMSFNCUFlxMessages.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncuescherotherrecords
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TEscherRegroupRecord;
class DELPHICLASS TRuleRecord;
struct TConnectorRule;
class DELPHICLASS TEscherConnectorRuleRecord;
struct TAlignRule;
class DELPHICLASS TEscherAlignRuleRecord;
struct TArcRule;
class DELPHICLASS TEscherArcRuleRecord;
struct TCalloutRule;
class DELPHICLASS TEscherCalloutRuleRecord;
class DELPHICLASS TEscherClientTextBoxRecord;
//-- type declarations -------------------------------------------------------
#pragma pack(push,4)
class PASCALIMPLEMENTATION TEscherRegroupRecord : public Fmx::Tmsfncuescherrecords::TEscherDataRecord
{
	typedef Fmx::Tmsfncuescherrecords::TEscherDataRecord inherited;
	
public:
	/* TEscherDataRecord.Create */ inline __fastcall virtual TEscherRegroupRecord(const Fmx::Tmsfncuescherrecords::TEscherRecordHeader &aEscherHeader, const Fmx::Tmsfncuescherrecords::PEscherDwgGroupCache aDwgGroupCache, const Fmx::Tmsfncuescherrecords::PEscherDwgCache aDwgCache, Fmx::Tmsfncuescherrecords::TEscherContainerRecord* const aParent) : Fmx::Tmsfncuescherrecords::TEscherDataRecord(aEscherHeader, aDwgGroupCache, aDwgCache, aParent) { }
	/* TEscherDataRecord.Destroy */ inline __fastcall virtual ~TEscherRegroupRecord() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TRuleRecord : public Fmx::Tmsfncuescherrecords::TEscherDataRecord
{
	typedef Fmx::Tmsfncuescherrecords::TEscherDataRecord inherited;
	
public:
	virtual bool __fastcall DeleteRef(Fmx::Tmsfncuescherrecords::TEscherSPRecord* const aShape) = 0 ;
	virtual void __fastcall FixPointers() = 0 ;
	virtual void __fastcall ArrangeCopyRowsAndCols(System::TObject* const dSheet) = 0 ;
public:
	/* TEscherDataRecord.Create */ inline __fastcall virtual TRuleRecord(const Fmx::Tmsfncuescherrecords::TEscherRecordHeader &aEscherHeader, const Fmx::Tmsfncuescherrecords::PEscherDwgGroupCache aDwgGroupCache, const Fmx::Tmsfncuescherrecords::PEscherDwgCache aDwgCache, Fmx::Tmsfncuescherrecords::TEscherContainerRecord* const aParent) : Fmx::Tmsfncuescherrecords::TEscherDataRecord(aEscherHeader, aDwgGroupCache, aDwgCache, aParent) { }
	/* TEscherDataRecord.Destroy */ inline __fastcall virtual ~TRuleRecord() { }
	
};

#pragma pack(pop)

#pragma pack(push,1)
struct DECLSPEC_DRECORD TConnectorRule
{
public:
	unsigned RuleId;
	System::StaticArray<unsigned, 3> SpIds;
	unsigned CpA;
	unsigned CpB;
};
#pragma pack(pop)


typedef TConnectorRule *PConnectorRule;

#pragma pack(push,4)
class PASCALIMPLEMENTATION TEscherConnectorRuleRecord : public TRuleRecord
{
	typedef TRuleRecord inherited;
	
private:
	TConnectorRule *FConnectorRule;
	System::StaticArray<Fmx::Tmsfncuescherrecords::TEscherSPRecord*, 3> Shapes;
	
protected:
	virtual Fmx::Tmsfncuescherrecords::TEscherRecord* __fastcall DoCopyTo(const Fmx::Tmsfncuescherrecords::PEscherDwgCache NewDwgCache, const int RowOfs, const int ColOfs, System::TObject* const dSheet);
	
public:
	__fastcall virtual TEscherConnectorRuleRecord(const Fmx::Tmsfncuescherrecords::TEscherRecordHeader &aEscherHeader, const Fmx::Tmsfncuescherrecords::PEscherDwgGroupCache aDwgGroupCache, const Fmx::Tmsfncuescherrecords::PEscherDwgCache aDwgCache, Fmx::Tmsfncuescherrecords::TEscherContainerRecord* const aParent);
	virtual bool __fastcall DeleteRef(Fmx::Tmsfncuescherrecords::TEscherSPRecord* const aShape);
	virtual void __fastcall FixPointers();
	virtual void __fastcall ArrangeCopyRowsAndCols(System::TObject* const dSheet);
public:
	/* TEscherDataRecord.Destroy */ inline __fastcall virtual ~TEscherConnectorRuleRecord() { }
	
};

#pragma pack(pop)

#pragma pack(push,1)
struct DECLSPEC_DRECORD TAlignRule
{
public:
	unsigned RuleId;
	unsigned Align;
	unsigned nProxies;
};
#pragma pack(pop)


typedef TAlignRule *PAlignRule;

#pragma pack(push,4)
class PASCALIMPLEMENTATION TEscherAlignRuleRecord : public TRuleRecord
{
	typedef TRuleRecord inherited;
	
private:
	TAlignRule *FAlignRule;
	
protected:
	virtual Fmx::Tmsfncuescherrecords::TEscherRecord* __fastcall DoCopyTo(const Fmx::Tmsfncuescherrecords::PEscherDwgCache NewDwgCache, const int RowOfs, const int ColOfs, System::TObject* const dSheet);
	
public:
	__fastcall virtual TEscherAlignRuleRecord(const Fmx::Tmsfncuescherrecords::TEscherRecordHeader &aEscherHeader, const Fmx::Tmsfncuescherrecords::PEscherDwgGroupCache aDwgGroupCache, const Fmx::Tmsfncuescherrecords::PEscherDwgCache aDwgCache, Fmx::Tmsfncuescherrecords::TEscherContainerRecord* const aParent);
	virtual bool __fastcall DeleteRef(Fmx::Tmsfncuescherrecords::TEscherSPRecord* const aShape);
	virtual void __fastcall FixPointers();
	virtual void __fastcall ArrangeCopyRowsAndCols(System::TObject* const dSheet);
public:
	/* TEscherDataRecord.Destroy */ inline __fastcall virtual ~TEscherAlignRuleRecord() { }
	
};

#pragma pack(pop)

#pragma pack(push,1)
struct DECLSPEC_DRECORD TArcRule
{
public:
	unsigned RuleId;
	unsigned SpId;
};
#pragma pack(pop)


typedef TArcRule *PArcRule;

#pragma pack(push,4)
class PASCALIMPLEMENTATION TEscherArcRuleRecord : public TRuleRecord
{
	typedef TRuleRecord inherited;
	
private:
	TArcRule *FArcRule;
	Fmx::Tmsfncuescherrecords::TEscherSPRecord* Shape;
	
protected:
	virtual Fmx::Tmsfncuescherrecords::TEscherRecord* __fastcall DoCopyTo(const Fmx::Tmsfncuescherrecords::PEscherDwgCache NewDwgCache, const int RowOfs, const int ColOfs, System::TObject* const dSheet);
	
public:
	__fastcall virtual TEscherArcRuleRecord(const Fmx::Tmsfncuescherrecords::TEscherRecordHeader &aEscherHeader, const Fmx::Tmsfncuescherrecords::PEscherDwgGroupCache aDwgGroupCache, const Fmx::Tmsfncuescherrecords::PEscherDwgCache aDwgCache, Fmx::Tmsfncuescherrecords::TEscherContainerRecord* const aParent);
	virtual bool __fastcall DeleteRef(Fmx::Tmsfncuescherrecords::TEscherSPRecord* const aShape);
	virtual void __fastcall FixPointers();
	virtual void __fastcall ArrangeCopyRowsAndCols(System::TObject* const dSheet);
public:
	/* TEscherDataRecord.Destroy */ inline __fastcall virtual ~TEscherArcRuleRecord() { }
	
};

#pragma pack(pop)

#pragma pack(push,1)
struct DECLSPEC_DRECORD TCalloutRule
{
public:
	unsigned RuleId;
	unsigned SpId;
};
#pragma pack(pop)


typedef TCalloutRule *PCalloutRule;

#pragma pack(push,4)
class PASCALIMPLEMENTATION TEscherCalloutRuleRecord : public TRuleRecord
{
	typedef TRuleRecord inherited;
	
private:
	TCalloutRule *FCalloutRule;
	Fmx::Tmsfncuescherrecords::TEscherSPRecord* Shape;
	
protected:
	virtual Fmx::Tmsfncuescherrecords::TEscherRecord* __fastcall DoCopyTo(const Fmx::Tmsfncuescherrecords::PEscherDwgCache NewDwgCache, const int RowOfs, const int ColOfs, System::TObject* const dSheet);
	
public:
	__fastcall virtual TEscherCalloutRuleRecord(const Fmx::Tmsfncuescherrecords::TEscherRecordHeader &aEscherHeader, const Fmx::Tmsfncuescherrecords::PEscherDwgGroupCache aDwgGroupCache, const Fmx::Tmsfncuescherrecords::PEscherDwgCache aDwgCache, Fmx::Tmsfncuescherrecords::TEscherContainerRecord* const aParent);
	virtual bool __fastcall DeleteRef(Fmx::Tmsfncuescherrecords::TEscherSPRecord* const aShape);
	virtual void __fastcall FixPointers();
	virtual void __fastcall ArrangeCopyRowsAndCols(System::TObject* const dSheet);
public:
	/* TEscherDataRecord.Destroy */ inline __fastcall virtual ~TEscherCalloutRuleRecord() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TEscherClientTextBoxRecord : public Fmx::Tmsfncuescherrecords::TEscherClientDataRecord
{
	typedef Fmx::Tmsfncuescherrecords::TEscherClientDataRecord inherited;
	
private:
	System::UnicodeString __fastcall GetValue();
	void __fastcall SetValue(const System::UnicodeString aValue);
	
public:
	__property System::UnicodeString Value = {read=GetValue, write=SetValue};
	virtual bool __fastcall WaitingClientData(/* out */ Fmx::Tmsfncuxlsbaseclientdata::ClassOfTBaseClientData &ClientType);
	__fastcall TEscherClientTextBoxRecord(const Fmx::Tmsfncuescherrecords::PEscherDwgGroupCache aDwgGroupCache, const Fmx::Tmsfncuescherrecords::PEscherDwgCache aDwgCache, Fmx::Tmsfncuescherrecords::TEscherContainerRecord* const aParent);
public:
	/* TEscherClientDataRecord.Create */ inline __fastcall virtual TEscherClientTextBoxRecord(const Fmx::Tmsfncuescherrecords::TEscherRecordHeader &aEscherHeader, const Fmx::Tmsfncuescherrecords::PEscherDwgGroupCache aDwgGroupCache, const Fmx::Tmsfncuescherrecords::PEscherDwgCache aDwgCache, Fmx::Tmsfncuescherrecords::TEscherContainerRecord* const aParent) : Fmx::Tmsfncuescherrecords::TEscherClientDataRecord(aEscherHeader, aDwgGroupCache, aDwgCache, aParent) { }
	/* TEscherClientDataRecord.Destroy */ inline __fastcall virtual ~TEscherClientTextBoxRecord() { }
	
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
}	/* namespace Tmsfncuescherotherrecords */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCUESCHEROTHERRECORDS)
using namespace Fmx::Tmsfncuescherotherrecords;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncuescherotherrecordsHPP
