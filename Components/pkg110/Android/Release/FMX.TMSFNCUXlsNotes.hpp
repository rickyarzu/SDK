// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCUXlsNotes.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncuxlsnotesHPP
#define Fmx_TmsfncuxlsnotesHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.SysUtils.hpp>
#include <FMX.TMSFNCUXlsBaseRecords.hpp>
#include <FMX.TMSFNCUXlsRowColEntries.hpp>
#include <FMX.TMSFNCUXlsBaseRecordLists.hpp>
#include <System.Classes.hpp>
#include <System.Types.hpp>
#include <FMX.TMSFNCUXlsEscher.hpp>
#include <FMX.TMSFNCUEscherRecords.hpp>
#include <FMX.TMSFNCXlsMessages.hpp>
#include <FMX.TMSFNCUFlxMessages.hpp>
#include <FMX.TMSFNCUXlsBaseList.hpp>
#include <System.Generics.Collections.hpp>
#include <System.Generics.Defaults.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncuxlsnotes
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TNoteRecord;
class DELPHICLASS TNoteRecordList;
class DELPHICLASS TNoteList;
//-- type declarations -------------------------------------------------------
#pragma pack(push,4)
class PASCALIMPLEMENTATION TNoteRecord : public Fmx::Tmsfncuxlsbaserecords::TBaseRowColRecord
{
	typedef Fmx::Tmsfncuxlsbaserecords::TBaseRowColRecord inherited;
	
private:
	Fmx::Tmsfncuescherrecords::TEscherClientDataRecord* Dwg;
	System::UnicodeString __fastcall GetText();
	void __fastcall SetText(const System::UnicodeString Value);
	
protected:
	virtual Fmx::Tmsfncuxlsbaserecords::TBaseRecord* __fastcall DoCopyTo();
	
public:
	__fastcall TNoteRecord(const int aRow, const int aCol, const System::UnicodeString aTxt, Fmx::Tmsfncuxlsescher::TDrawing* const Drawing, const Fmx::Tmsfncuflxmessages::TImageProperties &Properties, System::TObject* const sSheet);
	__fastcall virtual ~TNoteRecord();
	virtual void __fastcall ArrangeCopyRowsAndCols(const int RowOffset, const int ColOffset);
	virtual void __fastcall ArrangeInsertRowsAndCols(const int aRowPos, const int aRowCount, const int aColPos, const int aColCount, const Fmx::Tmsfncxlsmessages::TSheetInfo &SheetInfo);
	void __fastcall FixDwgIds(Fmx::Tmsfncuxlsescher::TDrawing* const Drawing);
	__property System::UnicodeString Text = {read=GetText, write=SetText};
public:
	/* TBaseRowColRecord.Create */ inline __fastcall virtual TNoteRecord(const System::Word aId, const Fmx::Tmsfncxlsmessages::PArrayOfByte aData, const int aDataSize) : Fmx::Tmsfncuxlsbaserecords::TBaseRowColRecord(aId, aData, aDataSize) { }
	
};

#pragma pack(pop)

class PASCALIMPLEMENTATION TNoteRecordList : public Fmx::Tmsfncuxlsbaserecordlists::TBaseRowColRecordList
{
	typedef Fmx::Tmsfncuxlsbaserecordlists::TBaseRowColRecordList inherited;
	
public:
	TNoteRecord* operator[](int index) { return this->Items[index]; }
	
private:
	HIDESBASE TNoteRecord* __fastcall GetItems(int index);
	HIDESBASE void __fastcall SetItems(int index, TNoteRecord* const Value);
	
public:
	__property TNoteRecord* Items[int index] = {read=GetItems, write=SetItems/*, default*/};
	HIDESBASE int __fastcall Add(TNoteRecord* aRecord);
	HIDESBASE void __fastcall Insert(int Index, TNoteRecord* aRecord);
	void __fastcall FixDwgIds(Fmx::Tmsfncuxlsescher::TDrawing* const Drawing);
public:
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TNoteRecordList()/* overload */ : Fmx::Tmsfncuxlsbaserecordlists::TBaseRowColRecordList() { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TNoteRecordList(bool AOwnsObjects)/* overload */ : Fmx::Tmsfncuxlsbaserecordlists::TBaseRowColRecordList(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TNoteRecordList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<System::TObject*> > AComparer, bool AOwnsObjects)/* overload */ : Fmx::Tmsfncuxlsbaserecordlists::TBaseRowColRecordList(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TNoteRecordList(System::Generics::Collections::TEnumerable__1<System::TObject*>* const Collection, bool AOwnsObjects)/* overload */ : Fmx::Tmsfncuxlsbaserecordlists::TBaseRowColRecordList(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Destroy */ inline __fastcall virtual ~TNoteRecordList() { }
	
public:
	/* {System_Generics_Collections}TList<System_TObject>.Create */ inline __fastcall TNoteRecordList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<System::TObject*> > AComparer)/* overload */ : Fmx::Tmsfncuxlsbaserecordlists::TBaseRowColRecordList(AComparer) { }
	/* {System_Generics_Collections}TList<System_TObject>.Create */ inline __fastcall TNoteRecordList(System::Generics::Collections::TEnumerable__1<System::TObject*>* const Collection)/* overload */ : Fmx::Tmsfncuxlsbaserecordlists::TBaseRowColRecordList(Collection) { }
	/* {System_Generics_Collections}TList<System_TObject>.Create */ inline __fastcall TNoteRecordList(System::TObject* const *Values, const int Values_High)/* overload */ : Fmx::Tmsfncuxlsbaserecordlists::TBaseRowColRecordList(Values, Values_High) { }
	
};


#pragma pack(push,4)
class PASCALIMPLEMENTATION TNoteList : public Fmx::Tmsfncuxlsrowcolentries::TBaseRowColList
{
	typedef Fmx::Tmsfncuxlsrowcolentries::TBaseRowColList inherited;
	
public:
	TNoteRecordList* operator[](int index) { return this->Items[index]; }
	
private:
	HIDESBASE TNoteRecordList* __fastcall GetItems(int index);
	HIDESBASE void __fastcall SetItems(int index, TNoteRecordList* const Value);
	
public:
	__property TNoteRecordList* Items[int index] = {read=GetItems, write=SetItems/*, default*/};
	HIDESBASE int __fastcall Add(TNoteRecordList* aRecord);
	HIDESBASE void __fastcall Insert(int Index, TNoteRecordList* aRecord);
	__fastcall TNoteList();
	void __fastcall FixDwgIds(Fmx::Tmsfncuxlsescher::TDrawing* const Drawing);
	void __fastcall AddNewComment(const int Row, const int Col, const System::UnicodeString Txt, Fmx::Tmsfncuxlsescher::TDrawing* const Drawing, const Fmx::Tmsfncuflxmessages::TImageProperties &Properties, System::TObject* const sSheet);
public:
	/* {System_Generics_Collections}TObjectList<System_TObject>.Destroy */ inline __fastcall virtual ~TNoteList() { }
	
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
}	/* namespace Tmsfncuxlsnotes */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCUXLSNOTES)
using namespace Fmx::Tmsfncuxlsnotes;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncuxlsnotesHPP
