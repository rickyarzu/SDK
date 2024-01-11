// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCUXlsBaseRecordLists.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncuxlsbaserecordlistsHPP
#define Fmx_TmsfncuxlsbaserecordlistsHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.SysUtils.hpp>
#include <System.Classes.hpp>
#include <FMX.TMSFNCXlsMessages.hpp>
#include <FMX.TMSFNCUXlsBaseRecords.hpp>
#include <FMX.TMSFNCUXlsOtherRecords.hpp>
#include <FMX.TMSFNCUXlsFormula.hpp>
#include <FMX.TMSFNCUXlsBaseList.hpp>
#include <FMX.TMSFNCUFlxMessages.hpp>
#include <FMX.TMSFNCUOle2Impl.hpp>
#include <System.Generics.Collections.hpp>
#include <System.Generics.Defaults.hpp>
#include <System.Types.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncuxlsbaserecordlists
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TBaseRecordList;
class DELPHICLASS TBaseRowColRecordList;
class DELPHICLASS TNameRecordList;
class DELPHICLASS TBoundSheetRecordList;
class DELPHICLASS TCellRecordList;
class DELPHICLASS TRowRecordList;
class DELPHICLASS TShrFmlaRecordList;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TBaseRecordList : public Fmx::Tmsfncuxlsbaselist::TBaseList
{
	typedef Fmx::Tmsfncuxlsbaselist::TBaseList inherited;
	
public:
	HIDESBASE int __fastcall Add(Fmx::Tmsfncuxlsbaserecords::TBaseRecord* aRecord);
	HIDESBASE void __fastcall Insert(int Index, Fmx::Tmsfncuxlsbaserecords::TBaseRecord* aRecord);
	
private:
	__int64 FTotalSize;
	
protected:
	virtual void __fastcall Notify(System::TObject* const Ptr, System::Generics::Collections::TCollectionNotification Action);
	virtual __int64 __fastcall GetTotalSize();
	
public:
	void __fastcall AdaptSize(int Delta);
	void __fastcall CopyFrom(TBaseRecordList* const aBaseRecordList);
	__property __int64 TotalSize = {read=GetTotalSize};
	virtual void __fastcall SaveToStream(Fmx::Tmsfncuole2impl::TOle2File* const DataStream);
public:
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TBaseRecordList()/* overload */ : Fmx::Tmsfncuxlsbaselist::TBaseList() { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TBaseRecordList(bool AOwnsObjects)/* overload */ : Fmx::Tmsfncuxlsbaselist::TBaseList(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TBaseRecordList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<System::TObject*> > AComparer, bool AOwnsObjects)/* overload */ : Fmx::Tmsfncuxlsbaselist::TBaseList(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TBaseRecordList(System::Generics::Collections::TEnumerable__1<System::TObject*>* const Collection, bool AOwnsObjects)/* overload */ : Fmx::Tmsfncuxlsbaselist::TBaseList(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Destroy */ inline __fastcall virtual ~TBaseRecordList() { }
	
public:
	/* {System_Generics_Collections}TList<System_TObject>.Create */ inline __fastcall TBaseRecordList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<System::TObject*> > AComparer)/* overload */ : Fmx::Tmsfncuxlsbaselist::TBaseList(AComparer) { }
	/* {System_Generics_Collections}TList<System_TObject>.Create */ inline __fastcall TBaseRecordList(System::Generics::Collections::TEnumerable__1<System::TObject*>* const Collection)/* overload */ : Fmx::Tmsfncuxlsbaselist::TBaseList(Collection) { }
	/* {System_Generics_Collections}TList<System_TObject>.Create */ inline __fastcall TBaseRecordList(System::TObject* const *Values, const int Values_High)/* overload */ : Fmx::Tmsfncuxlsbaselist::TBaseList(Values, Values_High) { }
	
};


class PASCALIMPLEMENTATION TBaseRowColRecordList : public TBaseRecordList
{
	typedef TBaseRecordList inherited;
	
public:
	Fmx::Tmsfncuxlsbaserecords::TBaseRowColRecord* operator[](int index) { return this->Items[index]; }
	
private:
	Fmx::Tmsfncuxlsbaserecords::TBaseRowColRecord* __fastcall GetItems(int index);
	void __fastcall SetItems(int index, Fmx::Tmsfncuxlsbaserecords::TBaseRowColRecord* const Value);
	
public:
	__property Fmx::Tmsfncuxlsbaserecords::TBaseRowColRecord* Items[int index] = {read=GetItems, write=SetItems/*, default*/};
	HIDESBASE int __fastcall Add(Fmx::Tmsfncuxlsbaserecords::TBaseRowColRecord* aRecord);
	HIDESBASE void __fastcall Insert(int Index, Fmx::Tmsfncuxlsbaserecords::TBaseRowColRecord* aRecord);
	
private:
	bool Sorted;
	
public:
	bool __fastcall Find(const int aItem, int &Index);
	HIDESBASE void __fastcall Sort();
	void __fastcall ArrangeCopyRowsAndCols(const int RowOffset, const int ColOffset);
	void __fastcall ArrangeInsertRowsAndCols(const int aRowPos, const int aRowCount, const int aColPos, const int aColCount, const Fmx::Tmsfncxlsmessages::TSheetInfo &SheetInfo);
	virtual void __fastcall SaveRangeToStream(Fmx::Tmsfncuole2impl::TOle2File* const DataStream, const Fmx::Tmsfncuflxmessages::TXlsCellRange &CellRange);
	virtual __int64 __fastcall TotalRangeSize(const Fmx::Tmsfncuflxmessages::TXlsCellRange &CellRange, const bool NeedsRecalc);
public:
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TBaseRowColRecordList()/* overload */ : TBaseRecordList() { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TBaseRowColRecordList(bool AOwnsObjects)/* overload */ : TBaseRecordList(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TBaseRowColRecordList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<System::TObject*> > AComparer, bool AOwnsObjects)/* overload */ : TBaseRecordList(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TBaseRowColRecordList(System::Generics::Collections::TEnumerable__1<System::TObject*>* const Collection, bool AOwnsObjects)/* overload */ : TBaseRecordList(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Destroy */ inline __fastcall virtual ~TBaseRowColRecordList() { }
	
public:
	/* {System_Generics_Collections}TList<System_TObject>.Create */ inline __fastcall TBaseRowColRecordList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<System::TObject*> > AComparer)/* overload */ : TBaseRecordList(AComparer) { }
	/* {System_Generics_Collections}TList<System_TObject>.Create */ inline __fastcall TBaseRowColRecordList(System::Generics::Collections::TEnumerable__1<System::TObject*>* const Collection)/* overload */ : TBaseRecordList(Collection) { }
	/* {System_Generics_Collections}TList<System_TObject>.Create */ inline __fastcall TBaseRowColRecordList(System::TObject* const *Values, const int Values_High)/* overload */ : TBaseRecordList(Values, Values_High) { }
	
};


class PASCALIMPLEMENTATION TNameRecordList : public TBaseRecordList
{
	typedef TBaseRecordList inherited;
	
public:
	Fmx::Tmsfncuxlsformula::TNameRecord* operator[](int index) { return this->Items[index]; }
	
private:
	Fmx::Tmsfncuxlsformula::TNameRecord* __fastcall GetItems(int index);
	void __fastcall SetItems(int index, Fmx::Tmsfncuxlsformula::TNameRecord* const Value);
	
public:
	__property Fmx::Tmsfncuxlsformula::TNameRecord* Items[int index] = {read=GetItems, write=SetItems/*, default*/};
	HIDESBASE int __fastcall Add(Fmx::Tmsfncuxlsformula::TNameRecord* aRecord);
	HIDESBASE void __fastcall Insert(int Index, Fmx::Tmsfncuxlsformula::TNameRecord* aRecord);
	void __fastcall ArrangeInsertRowsAndCols(const int InsRow, const int aRowCount, const int InsCol, const int aColCount, const Fmx::Tmsfncxlsmessages::TSheetInfo &SheetInfo);
	void __fastcall InsertSheets(const int CopyFrom, const int BeforeSheet, int SheetCount, const Fmx::Tmsfncxlsmessages::TSheetInfo &SheetInfo);
	void __fastcall DeleteSheets(const int SheetIndex, const int SheetCount);
public:
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TNameRecordList()/* overload */ : TBaseRecordList() { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TNameRecordList(bool AOwnsObjects)/* overload */ : TBaseRecordList(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TNameRecordList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<System::TObject*> > AComparer, bool AOwnsObjects)/* overload */ : TBaseRecordList(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TNameRecordList(System::Generics::Collections::TEnumerable__1<System::TObject*>* const Collection, bool AOwnsObjects)/* overload */ : TBaseRecordList(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Destroy */ inline __fastcall virtual ~TNameRecordList() { }
	
public:
	/* {System_Generics_Collections}TList<System_TObject>.Create */ inline __fastcall TNameRecordList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<System::TObject*> > AComparer)/* overload */ : TBaseRecordList(AComparer) { }
	/* {System_Generics_Collections}TList<System_TObject>.Create */ inline __fastcall TNameRecordList(System::Generics::Collections::TEnumerable__1<System::TObject*>* const Collection)/* overload */ : TBaseRecordList(Collection) { }
	/* {System_Generics_Collections}TList<System_TObject>.Create */ inline __fastcall TNameRecordList(System::TObject* const *Values, const int Values_High)/* overload */ : TBaseRecordList(Values, Values_High) { }
	
};


class PASCALIMPLEMENTATION TBoundSheetRecordList : public TBaseRecordList
{
	typedef TBaseRecordList inherited;
	
public:
	Fmx::Tmsfncuxlsotherrecords::TBoundSheetRecord* operator[](int index) { return this->Items[index]; }
	
private:
	System::UnicodeString __fastcall GetSheetName(int index);
	void __fastcall SetSheetName(int index, const System::UnicodeString Value);
	Fmx::Tmsfncuflxmessages::TXlsSheetVisible __fastcall GetSheetVisible(int index);
	void __fastcall SetSheetVisible(int index, const Fmx::Tmsfncuflxmessages::TXlsSheetVisible Value);
	Fmx::Tmsfncuxlsotherrecords::TBoundSheetRecord* __fastcall GetItems(int index);
	void __fastcall SetItems(int index, Fmx::Tmsfncuxlsotherrecords::TBoundSheetRecord* const Value);
	
public:
	__property Fmx::Tmsfncuxlsotherrecords::TBoundSheetRecord* Items[int index] = {read=GetItems, write=SetItems/*, default*/};
	HIDESBASE int __fastcall Add(Fmx::Tmsfncuxlsotherrecords::TBoundSheetRecord* aRecord);
	HIDESBASE void __fastcall Insert(int Index, Fmx::Tmsfncuxlsotherrecords::TBoundSheetRecord* aRecord);
	__property System::UnicodeString SheetName[int index] = {read=GetSheetName, write=SetSheetName};
	__property Fmx::Tmsfncuflxmessages::TXlsSheetVisible SheetVisible[int index] = {read=GetSheetVisible, write=SetSheetVisible};
public:
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TBoundSheetRecordList()/* overload */ : TBaseRecordList() { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TBoundSheetRecordList(bool AOwnsObjects)/* overload */ : TBaseRecordList(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TBoundSheetRecordList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<System::TObject*> > AComparer, bool AOwnsObjects)/* overload */ : TBaseRecordList(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TBoundSheetRecordList(System::Generics::Collections::TEnumerable__1<System::TObject*>* const Collection, bool AOwnsObjects)/* overload */ : TBaseRecordList(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Destroy */ inline __fastcall virtual ~TBoundSheetRecordList() { }
	
public:
	/* {System_Generics_Collections}TList<System_TObject>.Create */ inline __fastcall TBoundSheetRecordList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<System::TObject*> > AComparer)/* overload */ : TBaseRecordList(AComparer) { }
	/* {System_Generics_Collections}TList<System_TObject>.Create */ inline __fastcall TBoundSheetRecordList(System::Generics::Collections::TEnumerable__1<System::TObject*>* const Collection)/* overload */ : TBaseRecordList(Collection) { }
	/* {System_Generics_Collections}TList<System_TObject>.Create */ inline __fastcall TBoundSheetRecordList(System::TObject* const *Values, const int Values_High)/* overload */ : TBaseRecordList(Values, Values_High) { }
	
};


class PASCALIMPLEMENTATION TCellRecordList : public TBaseRowColRecordList
{
	typedef TBaseRowColRecordList inherited;
	
public:
	Fmx::Tmsfncuxlsbaserecords::TCellRecord* operator[](int index) { return this->Items[index]; }
	
private:
	HIDESBASE Fmx::Tmsfncuxlsbaserecords::TCellRecord* __fastcall GetItems(int index);
	HIDESBASE void __fastcall SetItems(int index, Fmx::Tmsfncuxlsbaserecords::TCellRecord* const Value);
	
public:
	__property Fmx::Tmsfncuxlsbaserecords::TCellRecord* Items[int index] = {read=GetItems, write=SetItems/*, default*/};
	HIDESBASE int __fastcall Add(Fmx::Tmsfncuxlsbaserecords::TCellRecord* aRecord);
	HIDESBASE void __fastcall Insert(int Index, Fmx::Tmsfncuxlsbaserecords::TCellRecord* aRecord);
	
private:
	void __fastcall GoNext(int &i, const int aCount, Fmx::Tmsfncuxlsbaserecords::TCellRecord* &it, Fmx::Tmsfncuxlsbaserecords::TCellRecord* &NextRec);
	__int64 __fastcall SaveAndCalcRange(Fmx::Tmsfncuole2impl::TOle2File* const DataStream, const Fmx::Tmsfncuflxmessages::TXlsCellRange &CellRange, const bool NeedsRecalc);
	
public:
	virtual void __fastcall SaveRangeToStream(Fmx::Tmsfncuole2impl::TOle2File* const DataStream, const Fmx::Tmsfncuflxmessages::TXlsCellRange &CellRange);
	virtual __int64 __fastcall TotalRangeSize(const Fmx::Tmsfncuflxmessages::TXlsCellRange &CellRange, const bool NeedsRecalc);
	virtual void __fastcall SaveToStream(Fmx::Tmsfncuole2impl::TOle2File* const DataStream);
	virtual __int64 __fastcall GetTotalSize();
	__int64 __fastcall FixTotalSize(const bool NeedsRecalc);
public:
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TCellRecordList()/* overload */ : TBaseRowColRecordList() { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TCellRecordList(bool AOwnsObjects)/* overload */ : TBaseRowColRecordList(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TCellRecordList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<System::TObject*> > AComparer, bool AOwnsObjects)/* overload */ : TBaseRowColRecordList(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TCellRecordList(System::Generics::Collections::TEnumerable__1<System::TObject*>* const Collection, bool AOwnsObjects)/* overload */ : TBaseRowColRecordList(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Destroy */ inline __fastcall virtual ~TCellRecordList() { }
	
public:
	/* {System_Generics_Collections}TList<System_TObject>.Create */ inline __fastcall TCellRecordList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<System::TObject*> > AComparer)/* overload */ : TBaseRowColRecordList(AComparer) { }
	/* {System_Generics_Collections}TList<System_TObject>.Create */ inline __fastcall TCellRecordList(System::Generics::Collections::TEnumerable__1<System::TObject*>* const Collection)/* overload */ : TBaseRowColRecordList(Collection) { }
	/* {System_Generics_Collections}TList<System_TObject>.Create */ inline __fastcall TCellRecordList(System::TObject* const *Values, const int Values_High)/* overload */ : TBaseRowColRecordList(Values, Values_High) { }
	
};


class PASCALIMPLEMENTATION TRowRecordList : public TBaseRowColRecordList
{
	typedef TBaseRowColRecordList inherited;
	
public:
	Fmx::Tmsfncuxlsbaserecords::TRowRecord* operator[](int index) { return this->Items[index]; }
	
private:
	HIDESBASE Fmx::Tmsfncuxlsbaserecords::TRowRecord* __fastcall GetItems(int index);
	HIDESBASE void __fastcall SetItems(int index, Fmx::Tmsfncuxlsbaserecords::TRowRecord* const Value);
	
public:
	int __fastcall AddRecord(Fmx::Tmsfncuxlsbaserecords::TRowRecord* aRecord);
	__property Fmx::Tmsfncuxlsbaserecords::TRowRecord* Items[int index] = {read=GetItems, write=SetItems/*, default*/};
	bool __fastcall HasRow(const int Index);
	void __fastcall AddRow(const System::Word Index);
	void __fastcall InsertAndCopyRows(const int FirstRow, const int LastRow, const int DestRow, const int aCount, const Fmx::Tmsfncxlsmessages::TSheetInfo &SheetInfo);
	void __fastcall DeleteRows(const System::Word aRow, const System::Word aRowCount, const Fmx::Tmsfncxlsmessages::TSheetInfo &SheetInfo);
	int __fastcall RowHeight(const int aRow);
	void __fastcall SetRowHeight(const int aRow, const System::Word Height);
	void __fastcall AutoRowHeight(const int aRow, const bool Value);
	bool __fastcall IsAutoRowHeight(const int aRow);
	virtual __int64 __fastcall TotalRangeSize(const Fmx::Tmsfncuflxmessages::TXlsCellRange &CellRange, const bool NeedsRecalc);
	void __fastcall CalcGuts(Fmx::Tmsfncuxlsotherrecords::TGutsRecord* const Guts);
public:
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TRowRecordList()/* overload */ : TBaseRowColRecordList() { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TRowRecordList(bool AOwnsObjects)/* overload */ : TBaseRowColRecordList(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TRowRecordList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<System::TObject*> > AComparer, bool AOwnsObjects)/* overload */ : TBaseRowColRecordList(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TRowRecordList(System::Generics::Collections::TEnumerable__1<System::TObject*>* const Collection, bool AOwnsObjects)/* overload */ : TBaseRowColRecordList(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Destroy */ inline __fastcall virtual ~TRowRecordList() { }
	
public:
	/* {System_Generics_Collections}TList<System_TObject>.Create */ inline __fastcall TRowRecordList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<System::TObject*> > AComparer)/* overload */ : TBaseRowColRecordList(AComparer) { }
	/* {System_Generics_Collections}TList<System_TObject>.Create */ inline __fastcall TRowRecordList(System::Generics::Collections::TEnumerable__1<System::TObject*>* const Collection)/* overload */ : TBaseRowColRecordList(Collection) { }
	/* {System_Generics_Collections}TList<System_TObject>.Create */ inline __fastcall TRowRecordList(System::TObject* const *Values, const int Values_High)/* overload */ : TBaseRowColRecordList(Values, Values_High) { }
	
};


class PASCALIMPLEMENTATION TShrFmlaRecordList : public TBaseRecordList
{
	typedef TBaseRecordList inherited;
	
public:
	Fmx::Tmsfncuxlsformula::TShrFmlaRecord* operator[](int index) { return this->Items[index]; }
	
private:
	Fmx::Tmsfncuxlsformula::TShrFmlaRecord* __fastcall GetItems(int index);
	void __fastcall SetItems(int index, Fmx::Tmsfncuxlsformula::TShrFmlaRecord* const Value);
	
public:
	__property Fmx::Tmsfncuxlsformula::TShrFmlaRecord* Items[int index] = {read=GetItems, write=SetItems/*, default*/};
	HIDESBASE int __fastcall Add(Fmx::Tmsfncuxlsformula::TShrFmlaRecord* aRecord);
	HIDESBASE void __fastcall Insert(int Index, Fmx::Tmsfncuxlsformula::TShrFmlaRecord* aRecord);
	
private:
	bool Sorted;
	
public:
	bool __fastcall Find(const unsigned aItem, int &Index);
	HIDESBASE void __fastcall Sort();
public:
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TShrFmlaRecordList()/* overload */ : TBaseRecordList() { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TShrFmlaRecordList(bool AOwnsObjects)/* overload */ : TBaseRecordList(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TShrFmlaRecordList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<System::TObject*> > AComparer, bool AOwnsObjects)/* overload */ : TBaseRecordList(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TShrFmlaRecordList(System::Generics::Collections::TEnumerable__1<System::TObject*>* const Collection, bool AOwnsObjects)/* overload */ : TBaseRecordList(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Destroy */ inline __fastcall virtual ~TShrFmlaRecordList() { }
	
public:
	/* {System_Generics_Collections}TList<System_TObject>.Create */ inline __fastcall TShrFmlaRecordList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<System::TObject*> > AComparer)/* overload */ : TBaseRecordList(AComparer) { }
	/* {System_Generics_Collections}TList<System_TObject>.Create */ inline __fastcall TShrFmlaRecordList(System::Generics::Collections::TEnumerable__1<System::TObject*>* const Collection)/* overload */ : TBaseRecordList(Collection) { }
	/* {System_Generics_Collections}TList<System_TObject>.Create */ inline __fastcall TShrFmlaRecordList(System::TObject* const *Values, const int Values_High)/* overload */ : TBaseRecordList(Values, Values_High) { }
	
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Tmsfncuxlsbaserecordlists */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCUXLSBASERECORDLISTS)
using namespace Fmx::Tmsfncuxlsbaserecordlists;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncuxlsbaserecordlistsHPP
