// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCUXlsEscher.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncuxlsescherHPP
#define Fmx_TmsfncuxlsescherHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <FMX.TMSFNCUXlsBaseRecords.hpp>
#include <FMX.TMSFNCUXlsBaseRecordLists.hpp>
#include <FMX.TMSFNCUXlsOtherRecords.hpp>
#include <FMX.TMSFNCXlsMessages.hpp>
#include <FMX.TMSFNCUFlxMessages.hpp>
#include <System.Classes.hpp>
#include <System.SysUtils.hpp>
#include <FMX.TMSFNCUEscherRecords.hpp>
#include <FMX.TMSFNCUXlsSST.hpp>
#include <FMX.TMSFNCUBreakList.hpp>
#include <System.Types.hpp>
#include <FMX.TMSFNCUEscherOtherRecords.hpp>
#include <FMX.TMSFNCUOle2Impl.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncuxlsescher
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TXlsEscherRecord;
class DELPHICLASS TDrawingGroupRecord;
class DELPHICLASS TDrawingRecord;
class DELPHICLASS TDrawingSelectionRecord;
class DELPHICLASS TDrawingGroup;
class DELPHICLASS TDrawing;
//-- type declarations -------------------------------------------------------
#pragma pack(push,4)
class PASCALIMPLEMENTATION TXlsEscherRecord : public Fmx::Tmsfncuxlsbaserecords::TBaseRecord
{
	typedef Fmx::Tmsfncuxlsbaserecords::TBaseRecord inherited;
	
public:
	/* TBaseRecord.Create */ inline __fastcall virtual TXlsEscherRecord(const System::Word aId, const Fmx::Tmsfncxlsmessages::PArrayOfByte aData, const int aDataSize) : Fmx::Tmsfncuxlsbaserecords::TBaseRecord(aId, aData, aDataSize) { }
	/* TBaseRecord.Destroy */ inline __fastcall virtual ~TXlsEscherRecord() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TDrawingGroupRecord : public TXlsEscherRecord
{
	typedef TXlsEscherRecord inherited;
	
public:
	/* TBaseRecord.Create */ inline __fastcall virtual TDrawingGroupRecord(const System::Word aId, const Fmx::Tmsfncxlsmessages::PArrayOfByte aData, const int aDataSize) : TXlsEscherRecord(aId, aData, aDataSize) { }
	/* TBaseRecord.Destroy */ inline __fastcall virtual ~TDrawingGroupRecord() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TDrawingRecord : public TXlsEscherRecord
{
	typedef TXlsEscherRecord inherited;
	
public:
	/* TBaseRecord.Create */ inline __fastcall virtual TDrawingRecord(const System::Word aId, const Fmx::Tmsfncxlsmessages::PArrayOfByte aData, const int aDataSize) : TXlsEscherRecord(aId, aData, aDataSize) { }
	/* TBaseRecord.Destroy */ inline __fastcall virtual ~TDrawingRecord() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TDrawingSelectionRecord : public TXlsEscherRecord
{
	typedef TXlsEscherRecord inherited;
	
public:
	/* TBaseRecord.Create */ inline __fastcall virtual TDrawingSelectionRecord(const System::Word aId, const Fmx::Tmsfncxlsmessages::PArrayOfByte aData, const int aDataSize) : TXlsEscherRecord(aId, aData, aDataSize) { }
	/* TBaseRecord.Destroy */ inline __fastcall virtual ~TDrawingSelectionRecord() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TDrawingGroup : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	Fmx::Tmsfncuescherrecords::TEscherContainerRecord* FDggContainer;
	Fmx::Tmsfncuescherrecords::TEscherDwgGroupCache FRecordCache;
	Fmx::Tmsfncuescherrecords::PEscherDwgGroupCache __fastcall GetRecordCache();
	
public:
	__property Fmx::Tmsfncuescherrecords::PEscherDwgGroupCache RecordCache = {read=GetRecordCache};
	__fastcall TDrawingGroup();
	void __fastcall Clear();
	__fastcall virtual ~TDrawingGroup();
	void __fastcall LoadFromStream(Fmx::Tmsfncuole2impl::TOle2File* const DataStream, Fmx::Tmsfncxlsmessages::TRecordHeader &RecordHeader, TDrawingGroupRecord* const First);
	void __fastcall SaveToStream(Fmx::Tmsfncuole2impl::TOle2File* const DataStream);
	__int64 __fastcall TotalSize();
	void __fastcall AddDwg();
	void __fastcall EnsureDwgGroup();
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TDrawing : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	Fmx::Tmsfncuescherrecords::TEscherContainerRecord* FDgContainer;
	Fmx::Tmsfncuescherrecords::TEscherDwgCache FRecordCache;
	TDrawingGroup* FDrawingGroup;
	System::UnicodeString __fastcall GetDrawingName(int index);
	int __fastcall GetDrawingRow(int index);
	void __fastcall CreateBasicDrawingInfo();
	
public:
	void __fastcall Clear();
	__fastcall TDrawing(TDrawingGroup* const aDrawingGroup);
	__fastcall virtual ~TDrawing();
	void __fastcall CopyFrom(TDrawing* const aDrawing, System::TObject* const dSheet);
	void __fastcall LoadFromStream(Fmx::Tmsfncuole2impl::TOle2File* const DataStream, Fmx::Tmsfncxlsmessages::TRecordHeader &RecordHeader, TDrawingRecord* const First, Fmx::Tmsfncuxlssst::TSST* const SST);
	void __fastcall SaveToStream(Fmx::Tmsfncuole2impl::TOle2File* const DataStream);
	__int64 __fastcall TotalSize();
	void __fastcall ArrangeInsertRowsAndCols(const int aRowPos, const int aRowCount, const int aColPos, const int aColCount, const Fmx::Tmsfncxlsmessages::TSheetInfo &SheetInfo, System::TObject* const dSheet);
	void __fastcall ArrangeCopySheet(const Fmx::Tmsfncxlsmessages::TSheetInfo &SheetInfo);
	void __fastcall InsertAndCopyRowsAndCols(const int FirstRow, const int LastRow, const int DestRow, const int RowCount, const int FirstCol, const int LastCol, const int DestCol, const int ColCount, const Fmx::Tmsfncxlsmessages::TSheetInfo &SheetInfo, System::TObject* const dSheet);
	void __fastcall DeleteRows(const System::Word aRow, const System::Word aCount, const Fmx::Tmsfncxlsmessages::TSheetInfo &SheetInfo, System::TObject* const dSheet);
	void __fastcall DeleteCols(const System::Word aCol, const System::Word aCount, const Fmx::Tmsfncxlsmessages::TSheetInfo &SheetInfo, System::TObject* const dSheet);
	Fmx::Tmsfncuescherrecords::TEscherClientDataRecord* __fastcall FindObjId(const System::Word ObjId);
	int __fastcall DrawingCount();
	void __fastcall AssignDrawing(const int Index, const Fmx::Tmsfncuflxmessages::ByteArray Data, const Fmx::Tmsfncuflxmessages::TXlsImgTypes DataType);
	Fmx::Tmsfncuflxmessages::TClientAnchor __fastcall GetAnchor(const int Index);
	void __fastcall SetAnchor(const int Index, const Fmx::Tmsfncuflxmessages::TClientAnchor &aAnchor, System::TObject* const sSheet);
	void __fastcall GetDrawingFromStream(const int Index, System::Classes::TStream* const Data, /* out */ Fmx::Tmsfncuflxmessages::TXlsImgTypes &DataType);
	__property int DrawingRow[int index] = {read=GetDrawingRow};
	__property System::UnicodeString DrawingName[int index] = {read=GetDrawingName};
	void __fastcall DeleteImage(const int Index);
	void __fastcall ClearImage(const int Index);
	void __fastcall AddImage(Fmx::Tmsfncuflxmessages::ByteArray Data, Fmx::Tmsfncuflxmessages::TXlsImgTypes DataType, const Fmx::Tmsfncuflxmessages::TImageProperties &Properties, const Fmx::Tmsfncuflxmessages::TFlxAnchorType Anchor, System::TObject* const sSheet);
	void __fastcall RemoveAutoFilter();
	void __fastcall AddAutoFilter(const int Row, const int Col1, const int Col2, System::TObject* const sSheet)/* overload */;
	void __fastcall AddAutoFilter(const int Row, const int Col, System::TObject* const sSheet)/* overload */;
	Fmx::Tmsfncuescherrecords::TEscherClientDataRecord* __fastcall AddNewComment(const Fmx::Tmsfncuflxmessages::TImageProperties &Properties, System::TObject* const sSheet);
	void __fastcall SaveObjectCoords(System::TObject* const sSheet);
	void __fastcall RestoreObjectCoords(System::TObject* const dSheet);
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
}	/* namespace Tmsfncuxlsescher */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCUXLSESCHER)
using namespace Fmx::Tmsfncuxlsescher;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncuxlsescherHPP
