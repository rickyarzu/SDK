// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCUExcelRecords.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncuexcelrecordsHPP
#define Fmx_TmsfncuexcelrecordsHPP

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
#include <FMX.TMSFNCUXlsBaseRecordLists.hpp>
#include <FMX.TMSFNCUXlsOtherRecords.hpp>
#include <FMX.TMSFNCUXlsSST.hpp>
#include <FMX.TMSFNCUXlsReferences.hpp>
#include <FMX.TMSFNCUSheetNameList.hpp>
#include <FMX.TMSFNCUXlsFormula.hpp>
#include <FMX.TMSFNCUXlsEscher.hpp>
#include <FMX.TMSFNCUXlsClientData.hpp>
#include <FMX.TMSFNCUXlsSheet.hpp>
#include <FMX.TMSFNCUXlsWorkbookGlobals.hpp>
#include <FMX.TMSFNCUXlsBaseList.hpp>
#include <FMX.TMSFNCUFlxMessages.hpp>
#include <FMX.TMSFNCUOle2Impl.hpp>
#include <System.Generics.Collections.hpp>
#include <System.Generics.Defaults.hpp>
#include <System.Types.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncuexcelrecords
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TSheetList;
class DELPHICLASS TWorkbook;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TSheetList : public Fmx::Tmsfncuxlsbaselist::TBaseList
{
	typedef Fmx::Tmsfncuxlsbaselist::TBaseList inherited;
	
public:
	Fmx::Tmsfncuxlssheet::TSheet* operator[](int index) { return this->Items[index]; }
	
private:
	Fmx::Tmsfncuxlssheet::TSheet* __fastcall GetItems(int index);
	void __fastcall SetItems(int index, Fmx::Tmsfncuxlssheet::TSheet* const Value);
	
public:
	__property Fmx::Tmsfncuxlssheet::TSheet* Items[int index] = {read=GetItems, write=SetItems/*, default*/};
	HIDESBASE int __fastcall Add(Fmx::Tmsfncuxlssheet::TSheet* aRecord);
	HIDESBASE void __fastcall Insert(int Index, Fmx::Tmsfncuxlssheet::TSheet* aRecord);
	void __fastcall SaveToStream(Fmx::Tmsfncuole2impl::TOle2File* const DataStream);
	void __fastcall InsertAndCopyRowsAndCols(const int FirstRow, const int LastRow, const int DestRow, const int aRowCount, const int FirstCol, const int LastCol, const int DestCol, const int aColCount, const Fmx::Tmsfncxlsmessages::TSheetInfo &SheetInfo, const bool OnlyFormulas);
	void __fastcall DeleteRowsAndCols(const System::Word aRow, const System::Word aRowCount, const System::Word aCol, const System::Word aColCount, const Fmx::Tmsfncxlsmessages::TSheetInfo &SheetInfo);
	void __fastcall DeleteSheets(const int SheetIndex, const int SheetCount);
public:
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TSheetList()/* overload */ : Fmx::Tmsfncuxlsbaselist::TBaseList() { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TSheetList(bool AOwnsObjects)/* overload */ : Fmx::Tmsfncuxlsbaselist::TBaseList(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TSheetList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<System::TObject*> > AComparer, bool AOwnsObjects)/* overload */ : Fmx::Tmsfncuxlsbaselist::TBaseList(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TSheetList(System::Generics::Collections::TEnumerable__1<System::TObject*>* const Collection, bool AOwnsObjects)/* overload */ : Fmx::Tmsfncuxlsbaselist::TBaseList(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Destroy */ inline __fastcall virtual ~TSheetList() { }
	
public:
	/* {System_Generics_Collections}TList<System_TObject>.Create */ inline __fastcall TSheetList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<System::TObject*> > AComparer)/* overload */ : Fmx::Tmsfncuxlsbaselist::TBaseList(AComparer) { }
	/* {System_Generics_Collections}TList<System_TObject>.Create */ inline __fastcall TSheetList(System::Generics::Collections::TEnumerable__1<System::TObject*>* const Collection)/* overload */ : Fmx::Tmsfncuxlsbaselist::TBaseList(Collection) { }
	/* {System_Generics_Collections}TList<System_TObject>.Create */ inline __fastcall TSheetList(System::TObject* const *Values, const int Values_High)/* overload */ : Fmx::Tmsfncuxlsbaselist::TBaseList(Values, Values_High) { }
	
};


class PASCALIMPLEMENTATION TWorkbook : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	Fmx::Tmsfncuxlsworkbookglobals::TWorkbookGlobals* FGlobals;
	TSheetList* FSheets;
	void __fastcall FixBoundSheetsOffset(const bool NeedsRecalc);
	void __fastcall FixRows();
	Fmx::Tmsfncuxlssheet::TWorkSheet* __fastcall GetWorkSheets(int index);
	int __fastcall GetActiveSheet();
	void __fastcall SetActiveSheet(const int Value);
	void __fastcall FixRangeBoundSheetsOffset(const int SheetIndex, const Fmx::Tmsfncuflxmessages::TXlsCellRange &CellRange, const bool NeedsRecalc);
	void __fastcall FixCodeNames();
	bool __fastcall GetIsXltTemplate();
	void __fastcall SetIsXltTemplate(const bool Value);
	
public:
	__property Fmx::Tmsfncuxlsworkbookglobals::TWorkbookGlobals* Globals = {read=FGlobals, write=FGlobals};
	__property TSheetList* Sheets = {read=FSheets, write=FSheets};
	bool __fastcall IsWorksheet(const int Index);
	__property Fmx::Tmsfncuxlssheet::TWorkSheet* WorkSheets[int index] = {read=GetWorkSheets};
	__property bool IsXltTemplate = {read=GetIsXltTemplate, write=SetIsXltTemplate, nodefault};
	__property int ActiveSheet = {read=GetActiveSheet, write=SetActiveSheet, nodefault};
	__fastcall TWorkbook();
	__fastcall virtual ~TWorkbook();
	void __fastcall LoadFromStream(Fmx::Tmsfncuole2impl::TOle2File* const DataStream);
	void __fastcall SaveToStream(Fmx::Tmsfncuole2impl::TOle2File* const DataStream, const bool NeedsRecalc);
	void __fastcall SaveRangeToStream(Fmx::Tmsfncuole2impl::TOle2File* const DataStream, const int SheetIndex, const Fmx::Tmsfncuflxmessages::TXlsCellRange &CellRange, const bool NeedsRecalc);
	void __fastcall InsertAndCopyRowsAndCols(const int SheetNo, const int FirstRow, const int LastRow, const int DestRow, const int aRowCount, const int FirstCol, const int LastCol, const int DestCol, const int aColCount, const bool OnlyFormulas);
	void __fastcall DeleteRowsAndCols(const int SheetNo, const System::Word aRow, const System::Word aRowCount, const System::Word aCol, const System::Word aColCount);
	void __fastcall InsertSheets(const int CopyFrom, const int InsertBefore, int SheetCount);
	void __fastcall DeleteSheets(const int SheetPos, const int SheetCount);
	void __fastcall InsertHPageBreak(const int SheetNo, const System::Word aRow);
	void __fastcall InsertVPageBreak(const int SheetNo, const System::Word aCol);
	void __fastcall RestoreObjectCoords(int dSheet);
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Tmsfncuexcelrecords */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCUEXCELRECORDS)
using namespace Fmx::Tmsfncuexcelrecords;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncuexcelrecordsHPP
