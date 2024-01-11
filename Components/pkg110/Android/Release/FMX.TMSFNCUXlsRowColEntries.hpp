// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCUXlsRowColEntries.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncuxlsrowcolentriesHPP
#define Fmx_TmsfncuxlsrowcolentriesHPP

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
#include <FMX.TMSFNCUXlsBaseRecordLists.hpp>
#include <FMX.TMSFNCUXlsOtherRecords.hpp>
#include <FMX.TMSFNCXlsMessages.hpp>
#include <FMX.TMSFNCUXlsRangeRecords.hpp>
#include <FMX.TMSFNCUXlsBaseList.hpp>
#include <FMX.TMSFNCUXlsCellRecords.hpp>
#include <FMX.TMSFNCUXlsFormula.hpp>
#include <System.Variants.hpp>
#include <System.Types.hpp>
#include <System.UITypes.hpp>
#include <FMX.TMSFNCUXlsSST.hpp>
#include <FMX.TMSFNCUFlxMessages.hpp>
#include <FMX.TMSFNCUXlsColInfo.hpp>
#include <FMX.TMSFNCUXlsReferences.hpp>
#include <FMX.TMSFNCUXlsWorkbookGlobals.hpp>
#include <FMX.TMSFNCUXlsTokenArray.hpp>
#include <FMX.TMSFNCXlsFormulaMessages.hpp>
#include <FMX.TMSFNCUFlxNumberFormat.hpp>
#include <FMX.Types.hpp>
#include <FMX.TMSFNCUFlxFormats.hpp>
#include <FMX.TMSFNCUOle2Impl.hpp>
#include <System.Generics.Collections.hpp>
#include <System.Generics.Defaults.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncuxlsrowcolentries
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TColWidthCalc;
class DELPHICLASS TBaseRowColList;
class DELPHICLASS TCellList;
class DELPHICLASS TCells;
class DELPHICLASS TRangeList;
//-- type declarations -------------------------------------------------------
_DECLARE_METACLASS(System::TMetaClass, TListClass);

typedef System::DynamicArray<Fmx::Tmsfncuflxformats::TFlxFont> TFlxFontArray;

typedef System::DynamicArray<int> TIntegerArray;

#pragma pack(push,4)
class PASCALIMPLEMENTATION TColWidthCalc : public System::TObject
{
	typedef System::TObject inherited;
	
public:
	__fastcall TColWidthCalc(Fmx::Tmsfncuxlsworkbookglobals::TWorkbookGlobals* const aWg);
	int __fastcall CalcCellWidth(const int Row, const int Col, const Fmx::Tmsfncuflxmessages::TRichString &val, const int XF, const void * Workbook, const System::Extended RowMultDisplay, const System::Extended ColMultDisplay);
	__fastcall virtual ~TColWidthCalc();
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TBaseRowColList : public Fmx::Tmsfncuxlsbaselist::TBaseList
{
	typedef Fmx::Tmsfncuxlsbaselist::TBaseList inherited;
	
public:
	Fmx::Tmsfncuxlsbaserecordlists::TBaseRowColRecordList* operator[](int index) { return this->Items[index]; }
	
private:
	Fmx::Tmsfncuxlsbaserecordlists::TBaseRowColRecordList* __fastcall GetItems(int index);
	void __fastcall SetItems(int index, Fmx::Tmsfncuxlsbaserecordlists::TBaseRowColRecordList* const Value);
	
public:
	__property Fmx::Tmsfncuxlsbaserecordlists::TBaseRowColRecordList* Items[int index] = {read=GetItems, write=SetItems/*, default*/};
	HIDESBASE int __fastcall Add(Fmx::Tmsfncuxlsbaserecordlists::TBaseRowColRecordList* aRecord);
	HIDESBASE void __fastcall Insert(int Index, Fmx::Tmsfncuxlsbaserecordlists::TBaseRowColRecordList* aRecord);
	
protected:
	TListClass ListClass;
	
public:
	void __fastcall AddRecord(Fmx::Tmsfncuxlsbaserecords::TBaseRowColRecord* const aRecord, const int aRow);
	void __fastcall CopyFrom(TBaseRowColList* const aList);
	void __fastcall SaveToStream(Fmx::Tmsfncuole2impl::TOle2File* const DataStream);
	void __fastcall SaveRangeToStream(Fmx::Tmsfncuole2impl::TOle2File* const DataStream, const Fmx::Tmsfncuflxmessages::TXlsCellRange &CellRange);
	__int64 __fastcall TotalSize();
	__int64 __fastcall TotalRangeSize(const Fmx::Tmsfncuflxmessages::TXlsCellRange &CellRange);
	void __fastcall InsertAndCopyRows(const int FirstRow, const int LastRow, const int DestRow, const int aCount, const Fmx::Tmsfncxlsmessages::TSheetInfo &SheetInfo, const bool OnlyFormulas);
	virtual void __fastcall InsertAndCopyCols(const int FirstCol, const int LastCol, const int DestCol, const int aCount, const Fmx::Tmsfncxlsmessages::TSheetInfo &SheetInfo, const bool OnlyFormulas);
	void __fastcall DeleteRows(const System::Word aRow, const System::Word aCount, const Fmx::Tmsfncxlsmessages::TSheetInfo &SheetInfo);
	void __fastcall DeleteCols(const System::Word aCol, const System::Word aCount, const Fmx::Tmsfncxlsmessages::TSheetInfo &SheetInfo);
	virtual void __fastcall ArrangeInsertRowsAndCols(const int InsRowPos, const int InsRowCount, const int InsColPos, const int InsColCount, const Fmx::Tmsfncxlsmessages::TSheetInfo &SheetInfo);
	__fastcall TBaseRowColList(const TListClass aListClass);
public:
	/* {System_Generics_Collections}TObjectList<System_TObject>.Destroy */ inline __fastcall virtual ~TBaseRowColList() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TCellList : public TBaseRowColList
{
	typedef TBaseRowColList inherited;
	
public:
	Fmx::Tmsfncuxlsbaserecordlists::TCellRecordList* operator[](int index) { return this->Items[index]; }
	
private:
	Fmx::Tmsfncuxlsworkbookglobals::TWorkbookGlobals* FGlobals;
	Fmx::Tmsfncuxlsbaserecordlists::TRowRecordList* FRowRecordList;
	Fmx::Tmsfncuxlscolinfo::TColInfoList* FColInfoList;
	Fmx::Tmsfncuflxmessages::TXlsCellValue __fastcall GetValue(int Row, int Col);
	void __fastcall FixFormulaTokens(Fmx::Tmsfncuxlsformula::TFormulaRecord* const Formula, Fmx::Tmsfncuxlsbaserecordlists::TShrFmlaRecordList* const ShrFmlas);
	System::UnicodeString __fastcall GetFormula(int Row, int Col);
	void __fastcall SetFormula(int Row, int Col, const System::UnicodeString Value);
	void __fastcall AutofitColumn(const void * Workbook, const int Column, TColWidthCalc* const ColCalc, const System::Extended RowMultDisplay, const System::Extended ColMultDisplay, const bool IgnoreStrings, const System::Extended Adjustment);
	HIDESBASE Fmx::Tmsfncuxlsbaserecordlists::TCellRecordList* __fastcall GetItems(int index);
	HIDESBASE void __fastcall SetItems(int index, Fmx::Tmsfncuxlsbaserecordlists::TCellRecordList* const Value);
	
public:
	__property Fmx::Tmsfncuxlsbaserecordlists::TCellRecordList* Items[int index] = {read=GetItems, write=SetItems/*, default*/};
	HIDESBASE int __fastcall Add(Fmx::Tmsfncuxlsbaserecordlists::TCellRecordList* aRecord);
	HIDESBASE void __fastcall Insert(int Index, Fmx::Tmsfncuxlsbaserecordlists::TCellRecordList* aRecord);
	__fastcall TCellList(Fmx::Tmsfncuxlsworkbookglobals::TWorkbookGlobals* const aGlobals, Fmx::Tmsfncuxlsbaserecordlists::TRowRecordList* const aRowRecordList, Fmx::Tmsfncuxlscolinfo::TColInfoList* const aColInfoList);
	__property Fmx::Tmsfncuflxmessages::TXlsCellValue Value[int Row][int Col] = {read=GetValue};
	void __fastcall SetValueX2(const int Row, const int Col, const Fmx::Tmsfncuflxmessages::TXlsCellValue &Value, const Fmx::Tmsfncuflxmessages::TRTFRunList RTFRuns, const bool Options1904);
	void __fastcall GetValueX2(const int Row, const int Col, /* out */ Fmx::Tmsfncuflxmessages::TXlsCellValue &V, /* out */ Fmx::Tmsfncuflxmessages::TRTFRunList &RTFRuns);
	void __fastcall SetFormat(const int Row, const int Col, const int XF);
	__property System::UnicodeString Formula[int Row][int Col] = {read=GetFormula, write=SetFormula};
	void __fastcall AssignFormulaX(const int Row, const int Col, const System::UnicodeString Formula, const System::Variant &Value, const bool Options1904);
	Fmx::Tmsfncxlsmessages::PArrayOfByte __fastcall ArrayFormula(const int Row, const int Col);
	Fmx::Tmsfncxlsmessages::PArrayOfByte __fastcall TableFormula(const int Row, const int Col);
	void __fastcall FixFormulas(Fmx::Tmsfncuxlsbaserecordlists::TShrFmlaRecordList* const ShrFmlas);
	System::UnicodeString __fastcall GetSheetName(const int SheetNumber);
	int __fastcall AddExternSheet(const int FirstSheet, const int LastSheet);
	bool __fastcall FindSheet(System::UnicodeString SheetName, /* out */ int &SheetIndex);
	virtual void __fastcall InsertAndCopyCols(const int FirstCol, const int LastCol, const int DestCol, const int aCount, const Fmx::Tmsfncxlsmessages::TSheetInfo &SheetInfo, const bool OnlyFormulas);
	virtual void __fastcall ArrangeInsertRowsAndCols(const int InsRowPos, const int InsRowCount, const int InsColPos, const int InsColCount, const Fmx::Tmsfncxlsmessages::TSheetInfo &SheetInfo);
	void __fastcall ArrangeInsertSheet(const Fmx::Tmsfncxlsmessages::TSheetInfo &SheetInfo);
	System::UnicodeString __fastcall GetName(const int ExternSheet, const int NameId);
	void __fastcall RecalcColWidths(const void * Workbook, const int Col1, const int Col2, const bool IgnoreStrings, const System::Extended Adjustment);
	void __fastcall RecalcRowHeights(const void * Workbook, const int Row1, const int Row2, const bool Forced, const bool KeepAutofit, const System::Extended Adjustment);
	__int64 __fastcall FixTotalSize(const bool NeedsRecalc);
public:
	/* {System_Generics_Collections}TObjectList<System_TObject>.Destroy */ inline __fastcall virtual ~TCellList() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TCells : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	Fmx::Tmsfncuxlsbaserecordlists::TRowRecordList* FRowList;
	TCellList* FCellList;
	void __fastcall WriteDimensions(Fmx::Tmsfncuole2impl::TOle2File* const DataStream, const Fmx::Tmsfncuflxmessages::TXlsCellRange &CellRange);
	int __fastcall DimensionsSize();
	void __fastcall CalcUsedRange(Fmx::Tmsfncuflxmessages::TXlsCellRange &CellRange);
	void __fastcall ArrangeCols();
	
public:
	__fastcall TCells(Fmx::Tmsfncuxlsworkbookglobals::TWorkbookGlobals* const aGlobals, Fmx::Tmsfncuxlscolinfo::TColInfoList* const aColInfoList);
	__fastcall virtual ~TCells();
	void __fastcall Clear();
	void __fastcall CopyFrom(TCells* const aList);
	void __fastcall SaveToStream(Fmx::Tmsfncuole2impl::TOle2File* const DataStream);
	void __fastcall SaveRangeToStream(Fmx::Tmsfncuole2impl::TOle2File* const DataStream, const Fmx::Tmsfncuflxmessages::TXlsCellRange &CellRange);
	__int64 __fastcall TotalSize();
	__int64 __fastcall FixTotalSize(const bool NeedsRecalc);
	__int64 __fastcall TotalRangeSize(const Fmx::Tmsfncuflxmessages::TXlsCellRange &CellRange);
	void __fastcall FixRows();
	void __fastcall InsertAndCopyRows(const int FirstRow, const int LastRow, const int DestRow, const int aCount, const Fmx::Tmsfncxlsmessages::TSheetInfo &SheetInfo, const bool OnlyFormulas);
	void __fastcall InsertAndCopyCols(const int FirstCol, const int LastCol, const int DestCol, const int aCount, const Fmx::Tmsfncxlsmessages::TSheetInfo &SheetInfo, const bool OnlyFormulas);
	void __fastcall DeleteRows(const System::Word aRow, const System::Word aCount, const Fmx::Tmsfncxlsmessages::TSheetInfo &SheetInfo);
	void __fastcall DeleteCols(const System::Word aCol, const System::Word aCount, const Fmx::Tmsfncxlsmessages::TSheetInfo &SheetInfo);
	void __fastcall ArrangeInsertRowsAndCols(const int InsRowPos, const int InsRowCount, const int InsColPos, const int InsColCount, const Fmx::Tmsfncxlsmessages::TSheetInfo &SheetInfo);
	void __fastcall ArrangeInsertSheet(const Fmx::Tmsfncxlsmessages::TSheetInfo &SheetInfo);
	void __fastcall AddRow(Fmx::Tmsfncuxlsbaserecords::TRowRecord* const aRecord);
	void __fastcall AddCell(Fmx::Tmsfncuxlsbaserecords::TCellRecord* const aRecord, const int aRow);
	void __fastcall AddMultipleCells(Fmx::Tmsfncuxlscellrecords::TMultipleValueRecord* const aRecord);
	__property TCellList* CellList = {read=FCellList};
	__property Fmx::Tmsfncuxlsbaserecordlists::TRowRecordList* RowList = {read=FRowList};
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TRangeList : public Fmx::Tmsfncuxlsbaselist::TBaseList
{
	typedef Fmx::Tmsfncuxlsbaselist::TBaseList inherited;
	
public:
	Fmx::Tmsfncuxlsrangerecords::TRangeEntry* operator[](int index) { return this->Items[index]; }
	
private:
	Fmx::Tmsfncuxlsrangerecords::TRangeEntry* __fastcall GetItems(int index);
	void __fastcall SetItems(int index, Fmx::Tmsfncuxlsrangerecords::TRangeEntry* const Value);
	
public:
	__property Fmx::Tmsfncuxlsrangerecords::TRangeEntry* Items[int index] = {read=GetItems, write=SetItems/*, default*/};
	HIDESBASE int __fastcall Add(Fmx::Tmsfncuxlsrangerecords::TRangeEntry* aRecord);
	HIDESBASE void __fastcall Insert(int Index, Fmx::Tmsfncuxlsrangerecords::TRangeEntry* aRecord);
	void __fastcall CopyFrom(TRangeList* const aRangeList);
	void __fastcall SaveToStream(Fmx::Tmsfncuole2impl::TOle2File* const DataStream);
	void __fastcall SaveRangeToStream(Fmx::Tmsfncuole2impl::TOle2File* const DataStream, const Fmx::Tmsfncuflxmessages::TXlsCellRange &CellRange);
	__int64 __fastcall TotalSize();
	__int64 __fastcall TotalRangeSize(const Fmx::Tmsfncuflxmessages::TXlsCellRange &CellRange);
	void __fastcall InsertAndCopyRowsOrCols(const int FirstRow, const int LastRow, const int DestRow, const int aCount, const Fmx::Tmsfncxlsmessages::TSheetInfo &SheetInfo, const bool UseCols);
	void __fastcall DeleteRowsOrCols(const System::Word aRow, const System::Word aCount, const Fmx::Tmsfncxlsmessages::TSheetInfo &SheetInfo, const bool UseCols);
public:
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TRangeList()/* overload */ : Fmx::Tmsfncuxlsbaselist::TBaseList() { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TRangeList(bool AOwnsObjects)/* overload */ : Fmx::Tmsfncuxlsbaselist::TBaseList(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TRangeList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<System::TObject*> > AComparer, bool AOwnsObjects)/* overload */ : Fmx::Tmsfncuxlsbaselist::TBaseList(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TRangeList(System::Generics::Collections::TEnumerable__1<System::TObject*>* const Collection, bool AOwnsObjects)/* overload */ : Fmx::Tmsfncuxlsbaselist::TBaseList(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Destroy */ inline __fastcall virtual ~TRangeList() { }
	
public:
	/* {System_Generics_Collections}TList<System_TObject>.Create */ inline __fastcall TRangeList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<System::TObject*> > AComparer)/* overload */ : Fmx::Tmsfncuxlsbaselist::TBaseList(AComparer) { }
	/* {System_Generics_Collections}TList<System_TObject>.Create */ inline __fastcall TRangeList(System::Generics::Collections::TEnumerable__1<System::TObject*>* const Collection)/* overload */ : Fmx::Tmsfncuxlsbaselist::TBaseList(Collection) { }
	/* {System_Generics_Collections}TList<System_TObject>.Create */ inline __fastcall TRangeList(System::TObject* const *Values, const int Values_High)/* overload */ : Fmx::Tmsfncuxlsbaselist::TBaseList(Values, Values_High) { }
	
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
}	/* namespace Tmsfncuxlsrowcolentries */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCUXLSROWCOLENTRIES)
using namespace Fmx::Tmsfncuxlsrowcolentries;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncuxlsrowcolentriesHPP
