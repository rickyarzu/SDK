// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCUXlsColInfo.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncuxlscolinfoHPP
#define Fmx_TmsfncuxlscolinfoHPP

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
#include <FMX.TMSFNCUXlsBaseList.hpp>
#include <FMX.TMSFNCXlsMessages.hpp>
#include <FMX.TMSFNCUFlxMessages.hpp>
#include <FMX.TMSFNCUXlsOtherRecords.hpp>
#include <FMX.TMSFNCUOle2Impl.hpp>
#include <System.Generics.Collections.hpp>
#include <System.Generics.Defaults.hpp>
#include <System.Types.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncuxlscolinfo
{
//-- forward type declarations -----------------------------------------------
struct TColInfoDat;
class DELPHICLASS TColInfo;
class DELPHICLASS TColInfoRecord;
class DELPHICLASS TColInfoList;
//-- type declarations -------------------------------------------------------
#pragma pack(push,1)
struct DECLSPEC_DRECORD TColInfoDat
{
public:
	System::Word FirstColumn;
	System::Word LastColumn;
	System::Word Width;
	System::Word XF;
	System::Word Options;
	System::Word Reserved;
};
#pragma pack(pop)


typedef TColInfoDat *PColInfoDat;

#pragma pack(push,4)
class PASCALIMPLEMENTATION TColInfo : public System::TObject
{
	typedef System::TObject inherited;
	
public:
	System::Word Column;
	System::Word Width;
	System::Word XF;
	System::Word Options;
	__fastcall TColInfo(const System::Word aColumn, const System::Word aWidth, const System::Word aXF, const System::Word aOptions);
	bool __fastcall IsEqual(TColInfo* const aColInfo);
	void __fastcall SetColOutlineLevel(int Level);
	int __fastcall GetColOutlineLevel();
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TColInfo() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TColInfoRecord : public Fmx::Tmsfncuxlsbaserecords::TBaseRecord
{
	typedef Fmx::Tmsfncuxlsbaserecords::TBaseRecord inherited;
	
public:
	TColInfoDat __fastcall D();
public:
	/* TBaseRecord.Create */ inline __fastcall virtual TColInfoRecord(const System::Word aId, const Fmx::Tmsfncxlsmessages::PArrayOfByte aData, const int aDataSize) : Fmx::Tmsfncuxlsbaserecords::TBaseRecord(aId, aData, aDataSize) { }
	/* TBaseRecord.Destroy */ inline __fastcall virtual ~TColInfoRecord() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TColInfoList : public Fmx::Tmsfncuxlsbaselist::TBaseList
{
	typedef Fmx::Tmsfncuxlsbaselist::TBaseList inherited;
	
public:
	TColInfo* operator[](int index) { return this->Items[index]; }
	
private:
	TColInfo* __fastcall GetItems(int index);
	void __fastcall SetItems(int index, TColInfo* const Value);
	
public:
	__property TColInfo* Items[int index] = {read=GetItems, write=SetItems/*, default*/};
	HIDESBASE int __fastcall Add(TColInfo* aRecord);
	HIDESBASE void __fastcall Insert(int Index, TColInfo* aRecord);
	
private:
	bool Sorted;
	
public:
	bool __fastcall Find(const int aItem, int &Index);
	HIDESBASE void __fastcall Sort();
	
private:
	void __fastcall SaveOneRecord(const int i, const int k, Fmx::Tmsfncuole2impl::TOle2File* const DataStream);
	void __fastcall SaveToStreamExt(Fmx::Tmsfncuole2impl::TOle2File* const DataStream, const int FirstRecord, const int RecordCount);
	void __fastcall CalcIncludedRangeRecords(const Fmx::Tmsfncuflxmessages::TXlsCellRange &CellRange, int &FirstRecord, int &RecordCount);
	__int64 __fastcall TotalSizeExt(const int FirstRecord, const int RecordCount);
	
public:
	void __fastcall CopyFrom(TColInfoList* const aColInfoList);
	void __fastcall AddRecord(TColInfoRecord* const R);
	void __fastcall SaveToStream(Fmx::Tmsfncuole2impl::TOle2File* const DataStream);
	void __fastcall SaveRangeToStream(Fmx::Tmsfncuole2impl::TOle2File* const DataStream, const Fmx::Tmsfncuflxmessages::TXlsCellRange &CellRange);
	__int64 __fastcall TotalSize();
	__int64 __fastcall TotalRangeSize(const Fmx::Tmsfncuflxmessages::TXlsCellRange &CellRange);
	void __fastcall ArrangeInsertCols(const int DestCol, const int aColCount, const Fmx::Tmsfncxlsmessages::TSheetInfo &SheetInfo);
	void __fastcall CopyCols(const int FirstCol, const int LastCol, const int DestCol, const int aColCount, const Fmx::Tmsfncxlsmessages::TSheetInfo &SheetInfo);
	void __fastcall CalcGuts(Fmx::Tmsfncuxlsotherrecords::TGutsRecord* const Guts);
public:
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TColInfoList()/* overload */ : Fmx::Tmsfncuxlsbaselist::TBaseList() { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TColInfoList(bool AOwnsObjects)/* overload */ : Fmx::Tmsfncuxlsbaselist::TBaseList(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TColInfoList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<System::TObject*> > AComparer, bool AOwnsObjects)/* overload */ : Fmx::Tmsfncuxlsbaselist::TBaseList(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TColInfoList(System::Generics::Collections::TEnumerable__1<System::TObject*>* const Collection, bool AOwnsObjects)/* overload */ : Fmx::Tmsfncuxlsbaselist::TBaseList(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Destroy */ inline __fastcall virtual ~TColInfoList() { }
	
public:
	/* {System_Generics_Collections}TList<System_TObject>.Create */ inline __fastcall TColInfoList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<System::TObject*> > AComparer)/* overload */ : Fmx::Tmsfncuxlsbaselist::TBaseList(AComparer) { }
	/* {System_Generics_Collections}TList<System_TObject>.Create */ inline __fastcall TColInfoList(System::Generics::Collections::TEnumerable__1<System::TObject*>* const Collection)/* overload */ : Fmx::Tmsfncuxlsbaselist::TBaseList(Collection) { }
	/* {System_Generics_Collections}TList<System_TObject>.Create */ inline __fastcall TColInfoList(System::TObject* const *Values, const int Values_High)/* overload */ : Fmx::Tmsfncuxlsbaselist::TBaseList(Values, Values_High) { }
	
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
}	/* namespace Tmsfncuxlscolinfo */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCUXLSCOLINFO)
using namespace Fmx::Tmsfncuxlscolinfo;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncuxlscolinfoHPP
