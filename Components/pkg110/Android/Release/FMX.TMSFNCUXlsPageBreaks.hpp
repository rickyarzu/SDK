// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCUXlsPageBreaks.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncuxlspagebreaksHPP
#define Fmx_TmsfncuxlspagebreaksHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <FMX.TMSFNCUXlsBaseRecords.hpp>
#include <FMX.TMSFNCUXlsBaseList.hpp>
#include <FMX.TMSFNCXlsMessages.hpp>
#include <System.Classes.hpp>
#include <System.SysUtils.hpp>
#include <FMX.TMSFNCUFlxMessages.hpp>
#include <FMX.TMSFNCUOle2Impl.hpp>
#include <System.Generics.Collections.hpp>
#include <System.Generics.Defaults.hpp>
#include <System.Types.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncuxlspagebreaks
{
//-- forward type declarations -----------------------------------------------
struct THBreakData;
struct TVBreakData;
class DELPHICLASS THPageBreakRecord;
class DELPHICLASS TVPageBreakRecord;
class DELPHICLASS THPageBreak;
class DELPHICLASS TVPageBreak;
class DELPHICLASS THPageBreakList;
class DELPHICLASS TVPageBreakList;
//-- type declarations -------------------------------------------------------
#pragma pack(push,1)
struct DECLSPEC_DRECORD THBreakData
{
public:
	System::Word Row;
	System::Word Col1;
	System::Word Col2;
};
#pragma pack(pop)


#pragma pack(push,1)
struct DECLSPEC_DRECORD TVBreakData
{
public:
	System::Word Col;
	System::Word Row1;
	System::Word Row2;
};
#pragma pack(pop)


#pragma pack(push,4)
class PASCALIMPLEMENTATION THPageBreakRecord : public Fmx::Tmsfncuxlsbaserecords::TBaseRecord
{
	typedef Fmx::Tmsfncuxlsbaserecords::TBaseRecord inherited;
	
public:
	System::Word __fastcall Count();
	THBreakData __fastcall BreakData(const int index);
public:
	/* TBaseRecord.Create */ inline __fastcall virtual THPageBreakRecord(const System::Word aId, const Fmx::Tmsfncxlsmessages::PArrayOfByte aData, const int aDataSize) : Fmx::Tmsfncuxlsbaserecords::TBaseRecord(aId, aData, aDataSize) { }
	/* TBaseRecord.Destroy */ inline __fastcall virtual ~THPageBreakRecord() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TVPageBreakRecord : public Fmx::Tmsfncuxlsbaserecords::TBaseRecord
{
	typedef Fmx::Tmsfncuxlsbaserecords::TBaseRecord inherited;
	
public:
	System::Word __fastcall Count();
	TVBreakData __fastcall BreakData(const int index);
public:
	/* TBaseRecord.Create */ inline __fastcall virtual TVPageBreakRecord(const System::Word aId, const Fmx::Tmsfncxlsmessages::PArrayOfByte aData, const int aDataSize) : Fmx::Tmsfncuxlsbaserecords::TBaseRecord(aId, aData, aDataSize) { }
	/* TBaseRecord.Destroy */ inline __fastcall virtual ~TVPageBreakRecord() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION THPageBreak : public System::TObject
{
	typedef System::TObject inherited;
	
public:
	THBreakData BreakData;
	__fastcall THPageBreak(const THBreakData &aBreakData);
	THPageBreak* __fastcall CopyTo();
public:
	/* TObject.Destroy */ inline __fastcall virtual ~THPageBreak() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TVPageBreak : public System::TObject
{
	typedef System::TObject inherited;
	
public:
	TVBreakData BreakData;
	__fastcall TVPageBreak(const TVBreakData &aBreakData);
	TVPageBreak* __fastcall CopyTo();
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TVPageBreak() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION THPageBreakList : public Fmx::Tmsfncuxlsbaselist::TBaseList
{
	typedef Fmx::Tmsfncuxlsbaselist::TBaseList inherited;
	
public:
	THPageBreak* operator[](int index) { return this->Items[index]; }
	
private:
	void __fastcall SaveToStreamExt(Fmx::Tmsfncuole2impl::TOle2File* const DataStream, const int FirstRecord, const int RecordCount);
	void __fastcall CalcIncludedRangeRecords(const Fmx::Tmsfncuflxmessages::TXlsCellRange &CellRange, /* out */ int &FirstRecord, /* out */ int &RecordCount);
	__int64 __fastcall TotalSizeExt(const int RecordCount);
	THPageBreak* __fastcall GetItems(int index);
	void __fastcall SetItems(int index, THPageBreak* const Value);
	
public:
	__property THPageBreak* Items[int index] = {read=GetItems, write=SetItems/*, default*/};
	HIDESBASE int __fastcall Add(THPageBreak* aRecord);
	HIDESBASE void __fastcall Insert(int Index, THPageBreak* aRecord);
	
private:
	bool Sorted;
	
public:
	bool __fastcall Find(const int aItem, int &Index);
	HIDESBASE void __fastcall Sort();
	void __fastcall AddRecord(THPageBreakRecord* const aRecord);
	void __fastcall AddBreak(const int aRow);
	void __fastcall DeleteBreak(const int aRow);
	void __fastcall CopyFrom(THPageBreakList* const aBreakList);
	void __fastcall SaveToStream(Fmx::Tmsfncuole2impl::TOle2File* const DataStream);
	void __fastcall SaveRangeToStream(Fmx::Tmsfncuole2impl::TOle2File* const DataStream, const Fmx::Tmsfncuflxmessages::TXlsCellRange &CellRange);
	__int64 __fastcall TotalSize();
	__int64 __fastcall TotalRangeSize(const Fmx::Tmsfncuflxmessages::TXlsCellRange &CellRange);
	void __fastcall InsertRows(const int DestRow, const int aCount);
	void __fastcall DeleteRows(const int DestRow, const int aCount);
	bool __fastcall HasPageBreak(const int Row);
public:
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall THPageBreakList()/* overload */ : Fmx::Tmsfncuxlsbaselist::TBaseList() { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall THPageBreakList(bool AOwnsObjects)/* overload */ : Fmx::Tmsfncuxlsbaselist::TBaseList(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall THPageBreakList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<System::TObject*> > AComparer, bool AOwnsObjects)/* overload */ : Fmx::Tmsfncuxlsbaselist::TBaseList(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall THPageBreakList(System::Generics::Collections::TEnumerable__1<System::TObject*>* const Collection, bool AOwnsObjects)/* overload */ : Fmx::Tmsfncuxlsbaselist::TBaseList(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Destroy */ inline __fastcall virtual ~THPageBreakList() { }
	
public:
	/* {System_Generics_Collections}TList<System_TObject>.Create */ inline __fastcall THPageBreakList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<System::TObject*> > AComparer)/* overload */ : Fmx::Tmsfncuxlsbaselist::TBaseList(AComparer) { }
	/* {System_Generics_Collections}TList<System_TObject>.Create */ inline __fastcall THPageBreakList(System::Generics::Collections::TEnumerable__1<System::TObject*>* const Collection)/* overload */ : Fmx::Tmsfncuxlsbaselist::TBaseList(Collection) { }
	/* {System_Generics_Collections}TList<System_TObject>.Create */ inline __fastcall THPageBreakList(System::TObject* const *Values, const int Values_High)/* overload */ : Fmx::Tmsfncuxlsbaselist::TBaseList(Values, Values_High) { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TVPageBreakList : public Fmx::Tmsfncuxlsbaselist::TBaseList
{
	typedef Fmx::Tmsfncuxlsbaselist::TBaseList inherited;
	
public:
	TVPageBreak* operator[](int index) { return this->Items[index]; }
	
private:
	void __fastcall SaveToStreamExt(Fmx::Tmsfncuole2impl::TOle2File* const DataStream, const int FirstRecord, const int RecordCount);
	void __fastcall CalcIncludedRangeRecords(const Fmx::Tmsfncuflxmessages::TXlsCellRange &CellRange, /* out */ int &FirstRecord, /* out */ int &RecordCount);
	__int64 __fastcall TotalSizeExt(const int RecordCount);
	TVPageBreak* __fastcall GetItems(int index);
	void __fastcall SetItems(int index, TVPageBreak* const Value);
	
public:
	__property TVPageBreak* Items[int index] = {read=GetItems, write=SetItems/*, default*/};
	HIDESBASE int __fastcall Add(TVPageBreak* aRecord);
	HIDESBASE void __fastcall Insert(int Index, TVPageBreak* aRecord);
	
private:
	bool Sorted;
	
public:
	bool __fastcall Find(const int aItem, int &Index);
	HIDESBASE void __fastcall Sort();
	void __fastcall AddRecord(TVPageBreakRecord* const aRecord);
	void __fastcall AddBreak(const int aCol);
	void __fastcall DeleteBreak(const int aCol);
	void __fastcall CopyFrom(TVPageBreakList* const aBreakList);
	void __fastcall SaveToStream(Fmx::Tmsfncuole2impl::TOle2File* const DataStream);
	void __fastcall SaveRangeToStream(Fmx::Tmsfncuole2impl::TOle2File* const DataStream, const Fmx::Tmsfncuflxmessages::TXlsCellRange &CellRange);
	__int64 __fastcall TotalSize();
	__int64 __fastcall TotalRangeSize(const Fmx::Tmsfncuflxmessages::TXlsCellRange &CellRange);
	void __fastcall InsertCols(const int DestCol, const int aCount);
	void __fastcall DeleteCols(const int DestCol, const int aCount);
	bool __fastcall HasPageBreak(const int Col);
public:
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TVPageBreakList()/* overload */ : Fmx::Tmsfncuxlsbaselist::TBaseList() { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TVPageBreakList(bool AOwnsObjects)/* overload */ : Fmx::Tmsfncuxlsbaselist::TBaseList(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TVPageBreakList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<System::TObject*> > AComparer, bool AOwnsObjects)/* overload */ : Fmx::Tmsfncuxlsbaselist::TBaseList(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TVPageBreakList(System::Generics::Collections::TEnumerable__1<System::TObject*>* const Collection, bool AOwnsObjects)/* overload */ : Fmx::Tmsfncuxlsbaselist::TBaseList(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Destroy */ inline __fastcall virtual ~TVPageBreakList() { }
	
public:
	/* {System_Generics_Collections}TList<System_TObject>.Create */ inline __fastcall TVPageBreakList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<System::TObject*> > AComparer)/* overload */ : Fmx::Tmsfncuxlsbaselist::TBaseList(AComparer) { }
	/* {System_Generics_Collections}TList<System_TObject>.Create */ inline __fastcall TVPageBreakList(System::Generics::Collections::TEnumerable__1<System::TObject*>* const Collection)/* overload */ : Fmx::Tmsfncuxlsbaselist::TBaseList(Collection) { }
	/* {System_Generics_Collections}TList<System_TObject>.Create */ inline __fastcall TVPageBreakList(System::TObject* const *Values, const int Values_High)/* overload */ : Fmx::Tmsfncuxlsbaselist::TBaseList(Values, Values_High) { }
	
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
}	/* namespace Tmsfncuxlspagebreaks */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCUXLSPAGEBREAKS)
using namespace Fmx::Tmsfncuxlspagebreaks;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncuxlspagebreaksHPP
