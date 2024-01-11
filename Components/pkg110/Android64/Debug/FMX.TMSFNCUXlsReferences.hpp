// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCUXlsReferences.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncuxlsreferencesHPP
#define Fmx_TmsfncuxlsreferencesHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <System.SysUtils.hpp>
#include <FMX.TMSFNCXlsMessages.hpp>
#include <FMX.TMSFNCUXlsBaseRecords.hpp>
#include <FMX.TMSFNCUXlsBaseRecordLists.hpp>
#include <FMX.TMSFNCUXlsBaseList.hpp>
#include <FMX.TMSFNCUXlsStrings.hpp>
#include <FMX.TMSFNCXlsFormulaMessages.hpp>
#include <FMX.TMSFNCUFlxMessages.hpp>
#include <FMX.TMSFNCUOle2Impl.hpp>
#include <System.Generics.Collections.hpp>
#include <System.Generics.Defaults.hpp>
#include <System.Types.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncuxlsreferences
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TExternNameRecord;
class DELPHICLASS TExternNameRecordList;
class DELPHICLASS TSupBookRecord;
class DELPHICLASS TExternSheetRecord;
class DELPHICLASS TExternRef;
class DELPHICLASS TSupBookRecordList;
class DELPHICLASS TExternRefList;
class DELPHICLASS TReferences;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TExternNameRecord : public Fmx::Tmsfncuxlsbaserecords::TBaseRecord
{
	typedef Fmx::Tmsfncuxlsbaserecords::TBaseRecord inherited;
	
public:
	System::UnicodeString __fastcall Name();
	System::Byte __fastcall NameLength();
public:
	/* TBaseRecord.Create */ inline __fastcall virtual TExternNameRecord(const System::Word aId, const Fmx::Tmsfncxlsmessages::PArrayOfByte aData, const int aDataSize) : Fmx::Tmsfncuxlsbaserecords::TBaseRecord(aId, aData, aDataSize) { }
	/* TBaseRecord.Destroy */ inline __fastcall virtual ~TExternNameRecord() { }
	
};


class PASCALIMPLEMENTATION TExternNameRecordList : public Fmx::Tmsfncuxlsbaserecordlists::TBaseRecordList
{
	typedef Fmx::Tmsfncuxlsbaserecordlists::TBaseRecordList inherited;
	
public:
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TExternNameRecordList()/* overload */ : Fmx::Tmsfncuxlsbaserecordlists::TBaseRecordList() { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TExternNameRecordList(bool AOwnsObjects)/* overload */ : Fmx::Tmsfncuxlsbaserecordlists::TBaseRecordList(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TExternNameRecordList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<System::TObject*> > AComparer, bool AOwnsObjects)/* overload */ : Fmx::Tmsfncuxlsbaserecordlists::TBaseRecordList(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TExternNameRecordList(System::Generics::Collections::TEnumerable__1<System::TObject*>* const Collection, bool AOwnsObjects)/* overload */ : Fmx::Tmsfncuxlsbaserecordlists::TBaseRecordList(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Destroy */ inline __fastcall virtual ~TExternNameRecordList() { }
	
public:
	/* {System_Generics_Collections}TList<System_TObject>.Create */ inline __fastcall TExternNameRecordList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<System::TObject*> > AComparer)/* overload */ : Fmx::Tmsfncuxlsbaserecordlists::TBaseRecordList(AComparer) { }
	/* {System_Generics_Collections}TList<System_TObject>.Create */ inline __fastcall TExternNameRecordList(System::Generics::Collections::TEnumerable__1<System::TObject*>* const Collection)/* overload */ : Fmx::Tmsfncuxlsbaserecordlists::TBaseRecordList(Collection) { }
	/* {System_Generics_Collections}TList<System_TObject>.Create */ inline __fastcall TExternNameRecordList(System::TObject* const *Values, const int Values_High)/* overload */ : Fmx::Tmsfncuxlsbaserecordlists::TBaseRecordList(Values, Values_High) { }
	
};


class PASCALIMPLEMENTATION TSupBookRecord : public Fmx::Tmsfncuxlsbaserecords::TBaseRecord
{
	typedef Fmx::Tmsfncuxlsbaserecords::TBaseRecord inherited;
	
private:
	TExternNameRecordList* FExternNameList;
	
public:
	bool __fastcall IsLocal();
	bool __fastcall IsAddIn();
	void __fastcall InsertSheets(const int SheetCount);
	System::UnicodeString __fastcall BookName();
	System::UnicodeString __fastcall SheetName(const int SheetIndex, System::TObject* const Globals);
	void __fastcall AddExternName(TExternNameRecord* const ExternNameRecord);
	
protected:
	virtual Fmx::Tmsfncuxlsbaserecords::TBaseRecord* __fastcall DoCopyTo();
	
public:
	__fastcall virtual TSupBookRecord(const System::Word aId, const Fmx::Tmsfncxlsmessages::PArrayOfByte aData, const int aDataSize);
	__fastcall TSupBookRecord(const int SheetCount);
	__fastcall virtual ~TSupBookRecord();
	virtual void __fastcall SaveToStream(Fmx::Tmsfncuole2impl::TOle2File* const Workbook);
	virtual int __fastcall TotalSize();
	virtual int __fastcall TotalSizeNoHeaders();
};


class PASCALIMPLEMENTATION TExternSheetRecord : public Fmx::Tmsfncuxlsbaserecords::TBaseRecord
{
	typedef Fmx::Tmsfncuxlsbaserecords::TBaseRecord inherited;
	
public:
	/* TBaseRecord.Create */ inline __fastcall virtual TExternSheetRecord(const System::Word aId, const Fmx::Tmsfncxlsmessages::PArrayOfByte aData, const int aDataSize) : Fmx::Tmsfncuxlsbaserecords::TBaseRecord(aId, aData, aDataSize) { }
	/* TBaseRecord.Destroy */ inline __fastcall virtual ~TExternSheetRecord() { }
	
};


class PASCALIMPLEMENTATION TExternRef : public System::TObject
{
	typedef System::TObject inherited;
	
public:
	System::Word SupBookRecord;
	System::Word FirstSheet;
	System::Word LastSheet;
	__fastcall TExternRef(const System::Word aSupBookRecord, const System::Word aFirstSheet, const System::Word aLastSheet);
	void __fastcall SaveToStream(Fmx::Tmsfncuole2impl::TOle2File* const DataStream);
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TExternRef() { }
	
};


class PASCALIMPLEMENTATION TSupBookRecordList : public Fmx::Tmsfncuxlsbaserecordlists::TBaseRecordList
{
	typedef Fmx::Tmsfncuxlsbaserecordlists::TBaseRecordList inherited;
	
public:
	TSupBookRecord* operator[](int index) { return this->Items[index]; }
	
private:
	TSupBookRecord* __fastcall GetItems(int index);
	void __fastcall SetItems(int index, TSupBookRecord* const Value);
	
public:
	__property TSupBookRecord* Items[int index] = {read=GetItems, write=SetItems/*, default*/};
	HIDESBASE int __fastcall Add(TSupBookRecord* aRecord);
	HIDESBASE void __fastcall Insert(int Index, TSupBookRecord* aRecord);
	HIDESBASE __int64 __fastcall TotalSize();
public:
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TSupBookRecordList()/* overload */ : Fmx::Tmsfncuxlsbaserecordlists::TBaseRecordList() { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TSupBookRecordList(bool AOwnsObjects)/* overload */ : Fmx::Tmsfncuxlsbaserecordlists::TBaseRecordList(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TSupBookRecordList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<System::TObject*> > AComparer, bool AOwnsObjects)/* overload */ : Fmx::Tmsfncuxlsbaserecordlists::TBaseRecordList(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TSupBookRecordList(System::Generics::Collections::TEnumerable__1<System::TObject*>* const Collection, bool AOwnsObjects)/* overload */ : Fmx::Tmsfncuxlsbaserecordlists::TBaseRecordList(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Destroy */ inline __fastcall virtual ~TSupBookRecordList() { }
	
public:
	/* {System_Generics_Collections}TList<System_TObject>.Create */ inline __fastcall TSupBookRecordList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<System::TObject*> > AComparer)/* overload */ : Fmx::Tmsfncuxlsbaserecordlists::TBaseRecordList(AComparer) { }
	/* {System_Generics_Collections}TList<System_TObject>.Create */ inline __fastcall TSupBookRecordList(System::Generics::Collections::TEnumerable__1<System::TObject*>* const Collection)/* overload */ : Fmx::Tmsfncuxlsbaserecordlists::TBaseRecordList(Collection) { }
	/* {System_Generics_Collections}TList<System_TObject>.Create */ inline __fastcall TSupBookRecordList(System::TObject* const *Values, const int Values_High)/* overload */ : Fmx::Tmsfncuxlsbaserecordlists::TBaseRecordList(Values, Values_High) { }
	
};


class PASCALIMPLEMENTATION TExternRefList : public Fmx::Tmsfncuxlsbaselist::TBaseList
{
	typedef Fmx::Tmsfncuxlsbaselist::TBaseList inherited;
	
public:
	TExternRef* operator[](int index) { return this->Items[index]; }
	
private:
	TExternRef* __fastcall GetItems(int index);
	void __fastcall SetItems(int index, TExternRef* const Value);
	
public:
	__property TExternRef* Items[int index] = {read=GetItems, write=SetItems/*, default*/};
	HIDESBASE int __fastcall Add(TExternRef* aRecord);
	HIDESBASE void __fastcall Insert(int Index, TExternRef* aRecord);
	void __fastcall Load(TExternSheetRecord* const aRecord);
	void __fastcall SaveToStream(Fmx::Tmsfncuole2impl::TOle2File* const DataStream);
	__int64 __fastcall TotalSize();
	void __fastcall InsertSheets(const int BeforeSheet, const int SheetCount, int LocalSupBook);
public:
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TExternRefList()/* overload */ : Fmx::Tmsfncuxlsbaselist::TBaseList() { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TExternRefList(bool AOwnsObjects)/* overload */ : Fmx::Tmsfncuxlsbaselist::TBaseList(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TExternRefList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<System::TObject*> > AComparer, bool AOwnsObjects)/* overload */ : Fmx::Tmsfncuxlsbaselist::TBaseList(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TExternRefList(System::Generics::Collections::TEnumerable__1<System::TObject*>* const Collection, bool AOwnsObjects)/* overload */ : Fmx::Tmsfncuxlsbaselist::TBaseList(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Destroy */ inline __fastcall virtual ~TExternRefList() { }
	
public:
	/* {System_Generics_Collections}TList<System_TObject>.Create */ inline __fastcall TExternRefList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<System::TObject*> > AComparer)/* overload */ : Fmx::Tmsfncuxlsbaselist::TBaseList(AComparer) { }
	/* {System_Generics_Collections}TList<System_TObject>.Create */ inline __fastcall TExternRefList(System::Generics::Collections::TEnumerable__1<System::TObject*>* const Collection)/* overload */ : Fmx::Tmsfncuxlsbaselist::TBaseList(Collection) { }
	/* {System_Generics_Collections}TList<System_TObject>.Create */ inline __fastcall TExternRefList(System::TObject* const *Values, const int Values_High)/* overload */ : Fmx::Tmsfncuxlsbaselist::TBaseList(Values, Values_High) { }
	
};


class PASCALIMPLEMENTATION TReferences : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	TSupBookRecordList* FSupBooks;
	TExternRefList* FExternRefs;
	int LocalSupBook;
	
public:
	__fastcall TReferences();
	__fastcall virtual ~TReferences();
	__int64 __fastcall TotalSize();
	void __fastcall Clear();
	void __fastcall SaveToStream(Fmx::Tmsfncuole2impl::TOle2File* const DataStream);
	void __fastcall AddSupBook(TSupBookRecord* const aRecord);
	void __fastcall AddExternRef(TExternSheetRecord* const aRecord);
	void __fastcall AddExternName(TExternNameRecord* const aRecord);
	void __fastcall InsertSheets(const int BeforeSheet, const int SheetCount);
	int __fastcall GetSheet(const System::Word SheetRef);
	int __fastcall SetSheet(const System::Word Sheet);
	int __fastcall AddSheet(int SheetCount, int FirstSheet, int LastSheet);
	System::UnicodeString __fastcall GetSheetName(const System::Word SheetRef, System::TObject* const Globals);
	System::UnicodeString __fastcall GetName(const int SheetRef, const int NameIndex, System::TObject* const Globals);
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Tmsfncuxlsreferences */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCUXLSREFERENCES)
using namespace Fmx::Tmsfncuxlsreferences;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncuxlsreferencesHPP
