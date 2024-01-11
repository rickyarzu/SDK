// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCUXlsHyperLink.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncuxlshyperlinkHPP
#define Fmx_TmsfncuxlshyperlinkHPP

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
#include <FMX.TMSFNCUFlxMessages.hpp>
#include <FMX.TMSFNCUXlsBaseList.hpp>
#include <FMX.TMSFNCUOle2Impl.hpp>
#include <System.Generics.Collections.hpp>
#include <System.Generics.Defaults.hpp>
#include <System.Types.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncuxlshyperlink
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS THLinkRecord;
class DELPHICLASS TScreenTipRecord;
class DELPHICLASS THLinkList;
//-- type declarations -------------------------------------------------------
#pragma pack(push,4)
class PASCALIMPLEMENTATION THLinkRecord : public Fmx::Tmsfncuxlsbaserecords::TBaseRecord
{
	typedef Fmx::Tmsfncuxlsbaserecords::TBaseRecord inherited;
	
private:
	TScreenTipRecord* Hint;
	System::UnicodeString __fastcall ReadString(int &Pos, const int OptMask, const int ByteSize);
	System::UnicodeString __fastcall ReadLocalFile(int &Pos);
	void __fastcall SetString(int &Pos, const int OptMask, const System::UnicodeString value);
	void __fastcall SetString2(int &Pos, const Fmx::Tmsfncxlsmessages::PArrayOfByte GUID, const System::UnicodeString value, const int ByteCount);
	void __fastcall SetLocalFile(int &Pos, const System::UnicodeString value);
	bool __fastcall IsUrl(int pos);
	bool __fastcall IsFile(int pos);
	bool __fastcall IsUNC(int pos);
	System::UnicodeString __fastcall GetText(int &pos, Fmx::Tmsfncuflxmessages::THyperLinkType &HType);
	void __fastcall SetText(int &pos, System::UnicodeString Text, Fmx::Tmsfncuflxmessages::THyperLinkType HType);
	void __fastcall ClearData();
	int __fastcall GetFirstRow();
	int __fastcall GetLastRow();
	int __fastcall GetFirstCol();
	int __fastcall GetLastCol();
	int __fastcall GetOptionFlags();
	void __fastcall SetFirstRow(int Value);
	void __fastcall SetLastRow(int Value);
	void __fastcall SetFirstCol(int Value);
	void __fastcall SetLastCol(int Value);
	void __fastcall SetOptionFlags(int Value);
	
protected:
	virtual Fmx::Tmsfncuxlsbaserecords::TBaseRecord* __fastcall DoCopyTo();
	
public:
	void __fastcall AddHint(TScreenTipRecord* const aHint);
	__fastcall virtual THLinkRecord(const System::Word aId, const Fmx::Tmsfncxlsmessages::PArrayOfByte aData, const int aDataSize);
	__fastcall THLinkRecord(const Fmx::Tmsfncuflxmessages::TXlsCellRange &CellRange, const Fmx::Tmsfncuflxmessages::THyperLink &HLink);
	__fastcall virtual ~THLinkRecord();
	__property int FirstRow = {read=GetFirstRow, write=SetFirstRow, nodefault};
	__property int LastRow = {read=GetLastRow, write=SetLastRow, nodefault};
	__property int FirstCol = {read=GetFirstCol, write=SetFirstCol, nodefault};
	__property int LastCol = {read=GetLastCol, write=SetLastCol, nodefault};
	__property int OptionFlags = {read=GetOptionFlags, write=SetOptionFlags, nodefault};
	virtual void __fastcall SaveToStream(Fmx::Tmsfncuole2impl::TOle2File* const Workbook);
	void __fastcall SaveRangeToStream(Fmx::Tmsfncuole2impl::TOle2File* const Workbook, const Fmx::Tmsfncuflxmessages::TXlsCellRange &CellRange);
	int __fastcall TotalRangeSize(const Fmx::Tmsfncuflxmessages::TXlsCellRange &CellRange);
	virtual int __fastcall TotalSize();
	virtual int __fastcall TotalSizeNoHeaders();
	Fmx::Tmsfncuflxmessages::THyperLink __fastcall GetProperties();
	void __fastcall SetProperties(const Fmx::Tmsfncuflxmessages::THyperLink &value);
	Fmx::Tmsfncuflxmessages::TXlsCellRange __fastcall GetCellRange();
	void __fastcall SetCellRange(const Fmx::Tmsfncuflxmessages::TXlsCellRange &CellRange);
	void __fastcall ArrangeInsertRange(const Fmx::Tmsfncuflxmessages::TXlsCellRange &CellRange, int aRowCount, int aColCount, const Fmx::Tmsfncxlsmessages::TSheetInfo &SheetInfo);
	THLinkRecord* __fastcall Offset(int DeltaRow, int DeltaCol);
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TScreenTipRecord : public Fmx::Tmsfncuxlsbaserecords::TBaseRecord
{
	typedef Fmx::Tmsfncuxlsbaserecords::TBaseRecord inherited;
	
protected:
	int __fastcall GetFirstRow();
	int __fastcall GetLastRow();
	int __fastcall GetFirstCol();
	int __fastcall GetLastCol();
	System::UnicodeString __fastcall GetText();
	void __fastcall SetFirstRow(int Value);
	void __fastcall SetLastRow(int Value);
	void __fastcall SetFirstCol(int Value);
	void __fastcall SetLastCol(int Value);
	void __fastcall SetText(System::UnicodeString Value);
	
public:
	__fastcall virtual TScreenTipRecord(const System::Word aId, const Fmx::Tmsfncxlsmessages::PArrayOfByte aData, const int aDataSize);
	__fastcall TScreenTipRecord(System::UnicodeString aDescription);
	__property int FirstRow = {read=GetFirstRow, write=SetFirstRow, nodefault};
	__property int LastRow = {read=GetLastRow, write=SetLastRow, nodefault};
	__property int FirstCol = {read=GetFirstCol, write=SetFirstCol, nodefault};
	__property int LastCol = {read=GetLastCol, write=SetLastCol, nodefault};
	__property System::UnicodeString Text = {read=GetText, write=SetText};
public:
	/* TBaseRecord.Destroy */ inline __fastcall virtual ~TScreenTipRecord() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION THLinkList : public Fmx::Tmsfncuxlsbaselist::TBaseList
{
	typedef Fmx::Tmsfncuxlsbaselist::TBaseList inherited;
	
public:
	THLinkRecord* operator[](int index) { return this->Items[index]; }
	
private:
	THLinkRecord* __fastcall GetItems(int index);
	void __fastcall SetItems(int index, THLinkRecord* const Value);
	
public:
	__property THLinkRecord* Items[int index] = {read=GetItems, write=SetItems/*, default*/};
	HIDESBASE int __fastcall Add(THLinkRecord* aRecord);
	HIDESBASE void __fastcall Insert(int Index, THLinkRecord* aRecord);
	
private:
	bool Sorted;
	
public:
	HIDESBASE void __fastcall Sort();
	void __fastcall CopyFrom(THLinkList* aHLinkList);
	void __fastcall CopyObjectsFrom(THLinkList* aHLinkList, const Fmx::Tmsfncuflxmessages::TXlsCellRange &CopyRange, int RowOfs, int ColOfs);
	void __fastcall SaveToStream(Fmx::Tmsfncuole2impl::TOle2File* DataStream);
	void __fastcall SaveRangeToStream(Fmx::Tmsfncuole2impl::TOle2File* DataStream, const Fmx::Tmsfncuflxmessages::TXlsCellRange &CellRange);
	__int64 __fastcall TotalSize();
	__int64 __fastcall TotalRangeSize(const Fmx::Tmsfncuflxmessages::TXlsCellRange &CellRange);
	void __fastcall InsertAndCopyRange(const Fmx::Tmsfncuflxmessages::TXlsCellRange &SourceRange, int DestRow, int DestCol, int aRowCount, int aColCount, const Fmx::Tmsfncxlsmessages::TSheetInfo &SheetInfo);
	HIDESBASE void __fastcall DeleteRange(const Fmx::Tmsfncuflxmessages::TXlsCellRange &CellRange, int aRowCount, int aColCount, const Fmx::Tmsfncxlsmessages::TSheetInfo &SheetInfo);
public:
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall THLinkList()/* overload */ : Fmx::Tmsfncuxlsbaselist::TBaseList() { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall THLinkList(bool AOwnsObjects)/* overload */ : Fmx::Tmsfncuxlsbaselist::TBaseList(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall THLinkList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<System::TObject*> > AComparer, bool AOwnsObjects)/* overload */ : Fmx::Tmsfncuxlsbaselist::TBaseList(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall THLinkList(System::Generics::Collections::TEnumerable__1<System::TObject*>* const Collection, bool AOwnsObjects)/* overload */ : Fmx::Tmsfncuxlsbaselist::TBaseList(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Destroy */ inline __fastcall virtual ~THLinkList() { }
	
public:
	/* {System_Generics_Collections}TList<System_TObject>.Create */ inline __fastcall THLinkList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<System::TObject*> > AComparer)/* overload */ : Fmx::Tmsfncuxlsbaselist::TBaseList(AComparer) { }
	/* {System_Generics_Collections}TList<System_TObject>.Create */ inline __fastcall THLinkList(System::Generics::Collections::TEnumerable__1<System::TObject*>* const Collection)/* overload */ : Fmx::Tmsfncuxlsbaselist::TBaseList(Collection) { }
	/* {System_Generics_Collections}TList<System_TObject>.Create */ inline __fastcall THLinkList(System::TObject* const *Values, const int Values_High)/* overload */ : Fmx::Tmsfncuxlsbaselist::TBaseList(Values, Values_High) { }
	
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
}	/* namespace Tmsfncuxlshyperlink */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCUXLSHYPERLINK)
using namespace Fmx::Tmsfncuxlshyperlink;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncuxlshyperlinkHPP
