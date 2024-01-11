// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCUEscherRecords.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncuescherrecordsHPP
#define Fmx_TmsfncuescherrecordsHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <FMX.TMSFNCXlsMessages.hpp>
#include <FMX.TMSFNCUFlxMessages.hpp>
#include <FMX.TMSFNCUXlsBaseRecords.hpp>
#include <System.Classes.hpp>
#include <System.SysUtils.hpp>
#include <FMX.TMSFNCUXlsBaseClientData.hpp>
#include <FMX.TMSFNCUBreakList.hpp>
#include <FMX.TMSFNCUXlsBaseList.hpp>
#include <System.Types.hpp>
#include <FMX.TMSFNCUOle2Impl.hpp>
#include <System.Generics.Collections.hpp>
#include <System.Generics.Defaults.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncuescherrecords
{
//-- forward type declarations -----------------------------------------------
struct TEscherRecordHeader;
class DELPHICLASS TEscherRecordCache;
class DELPHICLASS TEscherObjCache;
class DELPHICLASS TEscherAnchorCache;
class DELPHICLASS TEscherShapeCache;
class DELPHICLASS TEscherOPTCache;
struct TEscherDwgCache;
struct TEscherDwgGroupCache;
class DELPHICLASS TEscherRecord;
class DELPHICLASS TEscherRecordList;
class DELPHICLASS TEscherDataRecord;
class DELPHICLASS TEscherContainerRecord;
class DELPHICLASS TEscherSpContainerRecord;
class DELPHICLASS TEscherSpgrContainerRecord;
class DELPHICLASS TEscherClientDataRecord;
class DELPHICLASS TEscherSplitMenuRecord;
struct TAbsoluteAnchorRect;
class DELPHICLASS TEscherClientAnchorRecord;
class DELPHICLASS TEscherBStoreRecord;
class DELPHICLASS TEscherBSERecord;
struct TDg;
class DELPHICLASS TEscherDgRecord;
struct TDgg;
class DELPHICLASS TEscherDggRecord;
class DELPHICLASS TEscherSPRecord;
class DELPHICLASS TEscherSolverContainerRecord;
class DELPHICLASS TEscherOPTRecord;
//-- type declarations -------------------------------------------------------
#pragma pack(push,1)
struct DECLSPEC_DRECORD TEscherRecordHeader
{
public:
	System::Word Pre;
	System::Word Id;
	int Size;
};
#pragma pack(pop)


class PASCALIMPLEMENTATION TEscherRecordCache : public Fmx::Tmsfncuxlsbaselist::TBaseList
{
	typedef Fmx::Tmsfncuxlsbaselist::TBaseList inherited;
	
public:
	TEscherRecord* operator[](int index) { return this->Items[index]; }
	
private:
	TEscherRecord* __fastcall GetItems(int index);
	void __fastcall SetItems(int index, TEscherRecord* const Value);
	
public:
	__property TEscherRecord* Items[int index] = {read=GetItems, write=SetItems/*, default*/};
	HIDESBASE int __fastcall Add(TEscherRecord* aRecord);
	HIDESBASE void __fastcall Insert(int Index, TEscherRecord* aRecord);
	__fastcall TEscherRecordCache();
	void __fastcall ArrangeInsertRowsAndCols(const int aRowPos, const int aRowCount, const int aColPos, const int aColCount, const Fmx::Tmsfncxlsmessages::TSheetInfo &SheetInfo, const bool Forced, System::TObject* const dSheet);
public:
	/* {System_Generics_Collections}TObjectList<System_TObject>.Destroy */ inline __fastcall virtual ~TEscherRecordCache() { }
	
};


class PASCALIMPLEMENTATION TEscherObjCache : public TEscherRecordCache
{
	typedef TEscherRecordCache inherited;
	
public:
	TEscherClientDataRecord* operator[](int index) { return this->Items[index]; }
	
private:
	HIDESBASE TEscherClientDataRecord* __fastcall GetItems(int index);
	HIDESBASE void __fastcall SetItems(int index, TEscherClientDataRecord* const Value);
	
public:
	__property TEscherClientDataRecord* Items[int index] = {read=GetItems, write=SetItems/*, default*/};
	HIDESBASE int __fastcall Add(TEscherClientDataRecord* aRecord);
	HIDESBASE void __fastcall Insert(int Index, TEscherClientDataRecord* aRecord);
	void __fastcall ArrangeCopySheet(const Fmx::Tmsfncxlsmessages::TSheetInfo &SheetInfo);
public:
	/* TEscherRecordCache.Create */ inline __fastcall TEscherObjCache() : TEscherRecordCache() { }
	
public:
	/* {System_Generics_Collections}TObjectList<System_TObject>.Destroy */ inline __fastcall virtual ~TEscherObjCache() { }
	
};


class PASCALIMPLEMENTATION TEscherAnchorCache : public TEscherRecordCache
{
	typedef TEscherRecordCache inherited;
	
public:
	TEscherClientAnchorRecord* operator[](int index) { return this->Items[index]; }
	
private:
	HIDESBASE TEscherClientAnchorRecord* __fastcall GetItems(int index);
	HIDESBASE void __fastcall SetItems(int index, TEscherClientAnchorRecord* const Value);
	
public:
	__property TEscherClientAnchorRecord* Items[int index] = {read=GetItems, write=SetItems/*, default*/};
	HIDESBASE int __fastcall Add(TEscherClientAnchorRecord* aRecord);
	HIDESBASE void __fastcall Insert(int Index, TEscherClientAnchorRecord* aRecord);
public:
	/* TEscherRecordCache.Create */ inline __fastcall TEscherAnchorCache() : TEscherRecordCache() { }
	
public:
	/* {System_Generics_Collections}TObjectList<System_TObject>.Destroy */ inline __fastcall virtual ~TEscherAnchorCache() { }
	
};


class PASCALIMPLEMENTATION TEscherShapeCache : public TEscherRecordCache
{
	typedef TEscherRecordCache inherited;
	
public:
	TEscherSPRecord* operator[](int index) { return this->Items[index]; }
	
private:
	HIDESBASE TEscherSPRecord* __fastcall GetItems(int index);
	HIDESBASE void __fastcall SetItems(int index, TEscherSPRecord* const Value);
	
public:
	__property TEscherSPRecord* Items[int index] = {read=GetItems, write=SetItems/*, default*/};
	HIDESBASE int __fastcall Add(TEscherSPRecord* aRecord);
	HIDESBASE void __fastcall Insert(int Index, TEscherSPRecord* aRecord);
	
private:
	bool Sorted;
	
public:
	bool __fastcall Find(const unsigned aItem, int &Index);
	HIDESBASE void __fastcall Sort();
public:
	/* TEscherRecordCache.Create */ inline __fastcall TEscherShapeCache() : TEscherRecordCache() { }
	
public:
	/* {System_Generics_Collections}TObjectList<System_TObject>.Destroy */ inline __fastcall virtual ~TEscherShapeCache() { }
	
};


class PASCALIMPLEMENTATION TEscherOPTCache : public TEscherRecordCache
{
	typedef TEscherRecordCache inherited;
	
public:
	TEscherOPTRecord* operator[](int index) { return this->Items[index]; }
	
private:
	HIDESBASE TEscherOPTRecord* __fastcall GetItems(int index);
	HIDESBASE void __fastcall SetItems(int index, TEscherOPTRecord* const Value);
	
public:
	__property TEscherOPTRecord* Items[int index] = {read=GetItems, write=SetItems/*, default*/};
	HIDESBASE int __fastcall Add(TEscherOPTRecord* aRecord);
	HIDESBASE void __fastcall Insert(int Index, TEscherOPTRecord* aRecord);
	
private:
	bool Sorted;
	
public:
	bool __fastcall Find(const int aItem, int &Index);
	HIDESBASE void __fastcall Sort();
public:
	/* TEscherRecordCache.Create */ inline __fastcall TEscherOPTCache() : TEscherRecordCache() { }
	
public:
	/* {System_Generics_Collections}TObjectList<System_TObject>.Destroy */ inline __fastcall virtual ~TEscherOPTCache() { }
	
};


struct DECLSPEC_DRECORD TEscherDwgCache
{
public:
	bool Destroying;
	System::Word MaxObjId;
	TEscherDgRecord* Dg;
	TEscherSolverContainerRecord* Solver;
	TEscherSpgrContainerRecord* Patriarch;
	TEscherAnchorCache* Anchor;
	TEscherShapeCache* Shape;
	TEscherObjCache* Obj;
	TEscherOPTCache* Blip;
};


typedef TEscherDwgCache *PEscherDwgCache;

struct DECLSPEC_DRECORD TEscherDwgGroupCache
{
public:
	TEscherBStoreRecord* BStore;
	TEscherDggRecord* Dgg;
};


typedef TEscherDwgGroupCache *PEscherDwgGroupCache;

_DECLARE_METACLASS(System::TMetaClass, ClassOfTEscherRecord);

class PASCALIMPLEMENTATION TEscherRecord : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	TEscherContainerRecord* FParent;
	void __fastcall IncNextPos(int &NextPos, const int Size, int &RealSize, Fmx::Tmsfncubreaklist::TBreakList* const BreakList);
	void __fastcall CheckSplit(Fmx::Tmsfncuole2impl::TOle2File* const DataStream, Fmx::Tmsfncubreaklist::TBreakList* const BreakList);
	void __fastcall WriteNewRecord(Fmx::Tmsfncuole2impl::TOle2File* const DataStream, Fmx::Tmsfncubreaklist::TBreakList* const BreakList);
	
protected:
	TEscherDwgCache *DwgCache;
	TEscherDwgGroupCache *DwgGroupCache;
	
public:
	System::Word Pre;
	System::Word Id;
	int TotalDataSize;
	int LoadedDataSize;
	TEscherRecord* CopiedTo;
	
protected:
	virtual TEscherRecord* __fastcall DoCopyTo(const PEscherDwgCache NewDwgCache, const int RowOfs, const int ColOfs, System::TObject* const dSheet);
	System::Word __fastcall Instance();
	System::Word __fastcall Version();
	
public:
	__fastcall virtual TEscherRecord(const TEscherRecordHeader &aEscherHeader, const PEscherDwgGroupCache aDwgGroupCache, const PEscherDwgCache aDwgCache, TEscherContainerRecord* const aParent);
	virtual void __fastcall AfterCreate();
	virtual void __fastcall Load(Fmx::Tmsfncuxlsbaserecords::TBaseRecord* &aRecord, int &aPos) = 0 ;
	virtual void __fastcall SaveToStream(Fmx::Tmsfncuole2impl::TOle2File* const DataStream, Fmx::Tmsfncubreaklist::TBreakList* const BreakList);
	TEscherRecord* __fastcall CopyTo(const PEscherDwgCache NewDwgCache, const int RowOfs, const int ColOfs, System::TObject* const dSheet);
	virtual __int64 __fastcall TotalSizeNoSplit();
	virtual bool __fastcall Loaded();
	bool __fastcall IsContainer(const System::Word aPre);
	virtual bool __fastcall WaitingClientData(/* out */ Fmx::Tmsfncuxlsbaseclientdata::ClassOfTBaseClientData &ClientType);
	virtual void __fastcall AssignClientData(Fmx::Tmsfncuxlsbaseclientdata::TBaseClientData* const aClientData);
	virtual void __fastcall SplitRecords(int &NextPos, int &RealSize, int &NextDwg, Fmx::Tmsfncubreaklist::TBreakList* const BreakList);
	virtual void __fastcall ArrangeInsertRowsAndCols(const int aRowPos, const int aRowCount, const int aColPos, const int aColCount, const Fmx::Tmsfncxlsmessages::TSheetInfo &SheetInfo, const bool Forced, System::TObject* const dSheet);
	virtual void __fastcall ClearCopiedTo();
	TEscherRecord* __fastcall FindRoot();
	virtual TEscherRecord* __fastcall FindRec(const ClassOfTEscherRecord RecClass);
	TEscherSpgrContainerRecord* __fastcall Patriarch();
	TEscherRecord* __fastcall CopyDwg(const int RowOfs, const int ColOfs, System::TObject* const dSheet);
	virtual int __fastcall CompareRec(TEscherRecord* const aRecord);
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TEscherRecord() { }
	
};


class PASCALIMPLEMENTATION TEscherRecordList : public Fmx::Tmsfncuxlsbaselist::TBaseList
{
	typedef Fmx::Tmsfncuxlsbaselist::TBaseList inherited;
	
public:
	TEscherRecord* operator[](int index) { return this->Items[index]; }
	
private:
	TEscherRecord* __fastcall GetItems(int index);
	void __fastcall SetItems(int index, TEscherRecord* const Value);
	
public:
	__property TEscherRecord* Items[int index] = {read=GetItems, write=SetItems/*, default*/};
	HIDESBASE int __fastcall Add(TEscherRecord* aRecord);
	HIDESBASE void __fastcall Insert(int Index, TEscherRecord* aRecord);
	
private:
	bool Sorted;
	
public:
	bool __fastcall Find(TEscherRecord* const aItem, int &Index);
	HIDESBASE void __fastcall Sort();
	void __fastcall SaveToStream(Fmx::Tmsfncuole2impl::TOle2File* const DataStream, Fmx::Tmsfncubreaklist::TBreakList* const BreakList);
	void __fastcall CopyFrom(TEscherRecordList* const aEscherRecordList, const PEscherDwgCache NewDwgCache, const int RowOfs, const int ColOfs, System::TObject* const dSheet);
	__int64 __fastcall TotalSizeNoSplit();
public:
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TEscherRecordList()/* overload */ : Fmx::Tmsfncuxlsbaselist::TBaseList() { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TEscherRecordList(bool AOwnsObjects)/* overload */ : Fmx::Tmsfncuxlsbaselist::TBaseList(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TEscherRecordList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<System::TObject*> > AComparer, bool AOwnsObjects)/* overload */ : Fmx::Tmsfncuxlsbaselist::TBaseList(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TEscherRecordList(System::Generics::Collections::TEnumerable__1<System::TObject*>* const Collection, bool AOwnsObjects)/* overload */ : Fmx::Tmsfncuxlsbaselist::TBaseList(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Destroy */ inline __fastcall virtual ~TEscherRecordList() { }
	
public:
	/* {System_Generics_Collections}TList<System_TObject>.Create */ inline __fastcall TEscherRecordList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<System::TObject*> > AComparer)/* overload */ : Fmx::Tmsfncuxlsbaselist::TBaseList(AComparer) { }
	/* {System_Generics_Collections}TList<System_TObject>.Create */ inline __fastcall TEscherRecordList(System::Generics::Collections::TEnumerable__1<System::TObject*>* const Collection)/* overload */ : Fmx::Tmsfncuxlsbaselist::TBaseList(Collection) { }
	/* {System_Generics_Collections}TList<System_TObject>.Create */ inline __fastcall TEscherRecordList(System::TObject* const *Values, const int Values_High)/* overload */ : Fmx::Tmsfncuxlsbaselist::TBaseList(Values, Values_High) { }
	
};


class PASCALIMPLEMENTATION TEscherDataRecord : public TEscherRecord
{
	typedef TEscherRecord inherited;
	
protected:
	Fmx::Tmsfncxlsmessages::ArrayOfByte *Data;
	virtual TEscherRecord* __fastcall DoCopyTo(const PEscherDwgCache NewDwgCache, const int RowOfs, const int ColOfs, System::TObject* const dSheet);
	
public:
	__fastcall virtual TEscherDataRecord(const TEscherRecordHeader &aEscherHeader, const PEscherDwgGroupCache aDwgGroupCache, const PEscherDwgCache aDwgCache, TEscherContainerRecord* const aParent);
	__fastcall virtual ~TEscherDataRecord();
	virtual void __fastcall Load(Fmx::Tmsfncuxlsbaserecords::TBaseRecord* &aRecord, int &aPos);
	virtual void __fastcall SaveToStream(Fmx::Tmsfncuole2impl::TOle2File* const DataStream, Fmx::Tmsfncubreaklist::TBreakList* const BreakList);
	virtual __int64 __fastcall TotalSizeNoSplit();
	virtual void __fastcall SplitRecords(int &NextPos, int &RealSize, int &NextDwg, Fmx::Tmsfncubreaklist::TBreakList* const BreakList);
	virtual int __fastcall CompareRec(TEscherRecord* const aRecord);
	void __fastcall ClearData();
};


class PASCALIMPLEMENTATION TEscherContainerRecord : public TEscherRecord
{
	typedef TEscherRecord inherited;
	
protected:
	TEscherRecordList* FContainedRecords;
	virtual TEscherRecord* __fastcall DoCopyTo(const PEscherDwgCache NewDwgCache, const int RowOfs, const int ColOfs, System::TObject* const dSheet);
	
public:
	__property TEscherRecordList* ContainedRecords = {read=FContainedRecords};
	__fastcall virtual TEscherContainerRecord(const TEscherRecordHeader &aEscherHeader, const PEscherDwgGroupCache aDwgGroupCache, const PEscherDwgCache aDwgCache, TEscherContainerRecord* const aParent);
	__fastcall virtual ~TEscherContainerRecord();
	virtual void __fastcall Load(Fmx::Tmsfncuxlsbaserecords::TBaseRecord* &aRecord, int &aPos);
	virtual void __fastcall SaveToStream(Fmx::Tmsfncuole2impl::TOle2File* const DataStream, Fmx::Tmsfncubreaklist::TBreakList* const BreakList);
	virtual __int64 __fastcall TotalSizeNoSplit();
	virtual bool __fastcall WaitingClientData(/* out */ Fmx::Tmsfncuxlsbaseclientdata::ClassOfTBaseClientData &ClientType);
	virtual void __fastcall AssignClientData(Fmx::Tmsfncuxlsbaseclientdata::TBaseClientData* const aClientData);
	TEscherRecord* __fastcall LastRecord();
	virtual void __fastcall SplitRecords(int &NextPos, int &RealSize, int &NextDwg, Fmx::Tmsfncubreaklist::TBreakList* const BreakList);
	virtual void __fastcall ArrangeInsertRowsAndCols(const int aRowPos, const int aRowCount, const int aColPos, const int aColCount, const Fmx::Tmsfncxlsmessages::TSheetInfo &SheetInfo, const bool Forced, System::TObject* const dSheet);
	virtual void __fastcall ClearCopiedTo();
	virtual TEscherRecord* __fastcall FindRec(const ClassOfTEscherRecord RecClass);
};


class PASCALIMPLEMENTATION TEscherSpContainerRecord : public TEscherContainerRecord
{
	typedef TEscherContainerRecord inherited;
	
public:
	TEscherSPRecord* SP;
	TEscherOPTRecord* Opt;
	TEscherClientAnchorRecord* ClientAnchor;
	int __fastcall Row();
	int __fastcall Col();
public:
	/* TEscherContainerRecord.Create */ inline __fastcall virtual TEscherSpContainerRecord(const TEscherRecordHeader &aEscherHeader, const PEscherDwgGroupCache aDwgGroupCache, const PEscherDwgCache aDwgCache, TEscherContainerRecord* const aParent) : TEscherContainerRecord(aEscherHeader, aDwgGroupCache, aDwgCache, aParent) { }
	/* TEscherContainerRecord.Destroy */ inline __fastcall virtual ~TEscherSpContainerRecord() { }
	
};


class PASCALIMPLEMENTATION TEscherSpgrContainerRecord : public TEscherContainerRecord
{
	typedef TEscherContainerRecord inherited;
	
public:
	__fastcall virtual TEscherSpgrContainerRecord(const TEscherRecordHeader &aEscherHeader, const PEscherDwgGroupCache aDwgGroupCache, const PEscherDwgCache aDwgCache, TEscherContainerRecord* const aParent);
	__fastcall virtual ~TEscherSpgrContainerRecord();
};


class PASCALIMPLEMENTATION TEscherClientDataRecord : public TEscherDataRecord
{
	typedef TEscherDataRecord inherited;
	
public:
	Fmx::Tmsfncuxlsbaseclientdata::TBaseClientData* ClientData;
	
protected:
	virtual TEscherRecord* __fastcall DoCopyTo(const PEscherDwgCache NewDwgCache, const int RowOfs, const int ColOfs, System::TObject* const dSheet);
	
public:
	__fastcall virtual TEscherClientDataRecord(const TEscherRecordHeader &aEscherHeader, const PEscherDwgGroupCache aDwgGroupCache, const PEscherDwgCache aDwgCache, TEscherContainerRecord* const aParent);
	__fastcall TEscherClientDataRecord(const PEscherDwgGroupCache aDwgGroupCache, const PEscherDwgCache aDwgCache, TEscherContainerRecord* const aParent);
	__fastcall virtual ~TEscherClientDataRecord();
	virtual void __fastcall SaveToStream(Fmx::Tmsfncuole2impl::TOle2File* const DataStream, Fmx::Tmsfncubreaklist::TBreakList* const BreakList);
	virtual __int64 __fastcall TotalSizeNoSplit();
	virtual bool __fastcall Loaded();
	virtual bool __fastcall WaitingClientData(/* out */ Fmx::Tmsfncuxlsbaseclientdata::ClassOfTBaseClientData &ClientType);
	virtual void __fastcall SplitRecords(int &NextPos, int &RealSize, int &NextDwg, Fmx::Tmsfncubreaklist::TBreakList* const BreakList);
	virtual void __fastcall AssignClientData(Fmx::Tmsfncuxlsbaseclientdata::TBaseClientData* const aClientData);
	void __fastcall ArrangeCopyRowsAndCols(const int RowOfs, const int ColOfs);
	virtual void __fastcall ArrangeInsertRowsAndCols(const int aRowPos, const int aRowCount, const int aColPos, const int aColCount, const Fmx::Tmsfncxlsmessages::TSheetInfo &SheetInfo, const bool Forced, System::TObject* const dSheet);
	System::Word __fastcall ObjId();
};


class PASCALIMPLEMENTATION TEscherSplitMenuRecord : public TEscherDataRecord
{
	typedef TEscherDataRecord inherited;
	
public:
	__fastcall TEscherSplitMenuRecord(const PEscherDwgGroupCache aDwgGroupCache, const PEscherDwgCache aDwgCache, TEscherContainerRecord* const aParent);
public:
	/* TEscherDataRecord.Create */ inline __fastcall virtual TEscherSplitMenuRecord(const TEscherRecordHeader &aEscherHeader, const PEscherDwgGroupCache aDwgGroupCache, const PEscherDwgCache aDwgCache, TEscherContainerRecord* const aParent) : TEscherDataRecord(aEscherHeader, aDwgGroupCache, aDwgCache, aParent) { }
	/* TEscherDataRecord.Destroy */ inline __fastcall virtual ~TEscherSplitMenuRecord() { }
	
};


struct DECLSPEC_DRECORD TAbsoluteAnchorRect
{
public:
	int x1;
	int x2;
	int y1;
	int y2;
};


class PASCALIMPLEMENTATION TEscherClientAnchorRecord : public TEscherDataRecord
{
	typedef TEscherDataRecord inherited;
	
private:
	Fmx::Tmsfncuflxmessages::TClientAnchor *Anchor;
	TAbsoluteAnchorRect SaveRect;
	
public:
	__fastcall virtual TEscherClientAnchorRecord(const TEscherRecordHeader &aEscherHeader, const PEscherDwgGroupCache aDwgGroupCache, const PEscherDwgCache aDwgCache, TEscherContainerRecord* const aParent);
	__fastcall TEscherClientAnchorRecord(const Fmx::Tmsfncuflxmessages::TClientAnchor &aAnchor, const TEscherRecordHeader &aEscherHeader, const PEscherDwgGroupCache aDwgGroupCache, const PEscherDwgCache aDwgCache, TEscherContainerRecord* const aParent, System::TObject* const sSheet);
	__fastcall virtual ~TEscherClientAnchorRecord();
	virtual void __fastcall ArrangeInsertRowsAndCols(const int aRowPos, const int aRowCount, const int aColPos, const int aColCount, const Fmx::Tmsfncxlsmessages::TSheetInfo &SheetInfo, const bool Forced, System::TObject* const dSheet);
	bool __fastcall AllowCopy(const int FirstRow, const int LastRow, const int FirstCol, const int LastCol);
	bool __fastcall AllowDelete(const int FirstRow, const int LastRow, const int FirstCol, const int LastCol);
	virtual TEscherRecord* __fastcall DoCopyTo(const PEscherDwgCache NewDwgCache, const int RowOfs, const int ColOfs, System::TObject* const dSheet);
	int __fastcall Row();
	int __fastcall Col();
	Fmx::Tmsfncuflxmessages::TClientAnchor __fastcall GetAnchor();
	void __fastcall SetAnchor(const Fmx::Tmsfncuflxmessages::TClientAnchor &aAnchor, System::TObject* const sSheet);
	void __fastcall RestoreObjectCoords(System::TObject* const dSheet);
	void __fastcall SaveObjectCoords(System::TObject* const sSheet);
};


class PASCALIMPLEMENTATION TEscherBStoreRecord : public TEscherContainerRecord
{
	typedef TEscherContainerRecord inherited;
	
public:
	__fastcall virtual TEscherBStoreRecord(const TEscherRecordHeader &aEscherHeader, const PEscherDwgGroupCache aDwgGroupCache, const PEscherDwgCache aDwgCache, TEscherContainerRecord* const aParent);
	__fastcall virtual ~TEscherBStoreRecord();
	void __fastcall AddRef(const int BlipPos);
	void __fastcall Release(const int BlipPos);
	virtual void __fastcall SaveToStream(Fmx::Tmsfncuole2impl::TOle2File* const DataStream, Fmx::Tmsfncubreaklist::TBreakList* const BreakList);
};


class PASCALIMPLEMENTATION TEscherBSERecord : public TEscherDataRecord
{
	typedef TEscherDataRecord inherited;
	
public:
	int BStorePos;
	void __fastcall AddRef();
	void __fastcall Release();
	unsigned __fastcall References();
	virtual int __fastcall CompareRec(TEscherRecord* const aRecord);
	void __fastcall CopyFromData(const void * BSEHeader, const TEscherRecordHeader &BlipHeader, System::Classes::TMemoryStream* const BlipData);
	void __fastcall SaveGraphicToStream(System::Classes::TStream* const aData, /* out */ Fmx::Tmsfncuflxmessages::TXlsImgTypes &aDataType);
public:
	/* TEscherDataRecord.Create */ inline __fastcall virtual TEscherBSERecord(const TEscherRecordHeader &aEscherHeader, const PEscherDwgGroupCache aDwgGroupCache, const PEscherDwgCache aDwgCache, TEscherContainerRecord* const aParent) : TEscherDataRecord(aEscherHeader, aDwgGroupCache, aDwgCache, aParent) { }
	/* TEscherDataRecord.Destroy */ inline __fastcall virtual ~TEscherBSERecord() { }
	
};


#pragma pack(push,1)
struct DECLSPEC_DRECORD TDg
{
public:
	unsigned ShapeCount;
	unsigned MaxSpId;
};
#pragma pack(pop)


typedef TDg *PDg;

class PASCALIMPLEMENTATION TEscherDgRecord : public TEscherDataRecord
{
	typedef TEscherDataRecord inherited;
	
private:
	TDg *Dg;
	
public:
	__fastcall virtual TEscherDgRecord(const TEscherRecordHeader &aEscherHeader, const PEscherDwgGroupCache aDwgGroupCache, const PEscherDwgCache aDwgCache, TEscherContainerRecord* const aParent);
	__fastcall TEscherDgRecord(const unsigned csp, const unsigned cspidCur, const __int64 FirstShapeId, const PEscherDwgGroupCache aDwgGroupCache, const PEscherDwgCache aDwgCache, TEscherContainerRecord* const aParent);
	__fastcall virtual ~TEscherDgRecord();
	virtual TEscherRecord* __fastcall DoCopyTo(const PEscherDwgCache NewDwgCache, const int RowOfs, const int ColOfs, System::TObject* const dSheet);
	unsigned __fastcall IncMaxShapeId();
	void __fastcall DecShapeCount();
};


#pragma pack(push,1)
struct DECLSPEC_DRECORD TDgg
{
public:
	unsigned MaxShapeId;
	unsigned FIDclCount;
	unsigned ShapesSaved;
	unsigned DwgSaved;
};
#pragma pack(pop)


typedef TDgg *PDgg;

class PASCALIMPLEMENTATION TEscherDggRecord : public TEscherDataRecord
{
	typedef TEscherDataRecord inherited;
	
private:
	void __fastcall GetNewCluster(int &DgId, const bool GetNewId, const __int64 ShapeCount, /* out */ __int64 &FirstShapeId);
	
public:
	TDgg *FDgg;
	__fastcall virtual TEscherDggRecord(const TEscherRecordHeader &aEscherHeader, const PEscherDwgGroupCache aDwgGroupCache, const PEscherDwgCache aDwgCache, TEscherContainerRecord* const aParent);
	__fastcall TEscherDggRecord(const PEscherDwgGroupCache aDwgGroupCache, const PEscherDwgCache aDwgCache, TEscherContainerRecord* const aParent);
	__fastcall virtual ~TEscherDggRecord();
	__int64 __fastcall AddImage(const int DgId, const __int64 LastImageId);
	void __fastcall AddNewCluster(int DgId, const __int64 ShapeCount, /* out */ __int64 &FirstShapeId);
	void __fastcall DestroyClusters(const int DgId);
	void __fastcall GetNewDgIdAndCluster(/* out */ int &DgId, /* out */ __int64 &FirstShapeId);
	bool __fastcall IsEmpty();
	void __fastcall RemoveImage(const int DgId);
};


typedef unsigned *PUInt32;

class PASCALIMPLEMENTATION TEscherSPRecord : public TEscherDataRecord
{
	typedef TEscherDataRecord inherited;
	
public:
	unsigned *ShapeId;
	
protected:
	virtual TEscherRecord* __fastcall DoCopyTo(const PEscherDwgCache NewDwgCache, const int RowOfs, const int ColOfs, System::TObject* const dSheet);
	
public:
	__fastcall virtual TEscherSPRecord(const TEscherRecordHeader &aEscherHeader, const PEscherDwgGroupCache aDwgGroupCache, const PEscherDwgCache aDwgCache, TEscherContainerRecord* const aParent);
	__fastcall TEscherSPRecord(const unsigned Pre, const unsigned aShapeId, const unsigned Flags, const PEscherDwgGroupCache aDwgGroupCache, const PEscherDwgCache aDwgCache, TEscherContainerRecord* const aParent);
	__fastcall virtual ~TEscherSPRecord();
};


class PASCALIMPLEMENTATION TEscherSolverContainerRecord : public TEscherContainerRecord
{
	typedef TEscherContainerRecord inherited;
	
public:
	unsigned MaxRuleId;
	__fastcall virtual TEscherSolverContainerRecord(const TEscherRecordHeader &aEscherHeader, const PEscherDwgGroupCache aDwgGroupCache, const PEscherDwgCache aDwgCache, TEscherContainerRecord* const aParent);
	__fastcall virtual ~TEscherSolverContainerRecord();
	virtual void __fastcall SaveToStream(Fmx::Tmsfncuole2impl::TOle2File* const DataStream, Fmx::Tmsfncubreaklist::TBreakList* const BreakList);
	unsigned __fastcall IncMaxRuleId();
	void __fastcall CheckMax(const unsigned aRuleId);
	void __fastcall DeleteRef(TEscherSPRecord* const Shape);
	void __fastcall FixPointers();
	void __fastcall ArrangeCopyRowsAndCols(System::TObject* const dSheet);
};


class PASCALIMPLEMENTATION TEscherOPTRecord : public TEscherDataRecord
{
	typedef TEscherDataRecord inherited;
	
	
private:
	typedef System::DynamicArray<TEscherBSERecord*> _TEscherOPTRecord__1;
	
	typedef System::DynamicArray<unsigned> _TEscherOPTRecord__2;
	
	
private:
	_TEscherOPTRecord__1 BlipPtr;
	_TEscherOPTRecord__2 BlipPos;
	System::UnicodeString FShapeName;
	System::UnicodeString __fastcall GetShapeName();
	int __fastcall AddImg(const Fmx::Tmsfncuflxmessages::ByteArray Data, const Fmx::Tmsfncuflxmessages::TXlsImgTypes DataType);
	
protected:
	virtual TEscherRecord* __fastcall DoCopyTo(const PEscherDwgCache NewDwgCache, const int RowOfs, const int ColOfs, System::TObject* const dSheet);
	
public:
	__fastcall virtual TEscherOPTRecord(const TEscherRecordHeader &aEscherHeader, const PEscherDwgGroupCache aDwgGroupCache, const PEscherDwgCache aDwgCache, TEscherContainerRecord* const aParent);
	__fastcall TEscherOPTRecord(const Fmx::Tmsfncuflxmessages::ByteArray aPict, const Fmx::Tmsfncuflxmessages::TXlsImgTypes aPicType, const System::UnicodeString PicName, const PEscherDwgGroupCache aDwgGroupCache, const PEscherDwgCache aDwgCache, TEscherContainerRecord* const aParent);
	__fastcall TEscherOPTRecord(const PEscherDwgGroupCache aDwgGroupCache, const PEscherDwgCache aDwgCache, TEscherContainerRecord* const aParent, const int Dummy);
	__fastcall TEscherOPTRecord(const PEscherDwgGroupCache aDwgGroupCache, const PEscherDwgCache aDwgCache, TEscherContainerRecord* const aParent, const int Dummy1, int Dummy2);
	__fastcall TEscherOPTRecord(const PEscherDwgGroupCache aDwgGroupCache, const PEscherDwgCache aDwgCache, TEscherContainerRecord* const aParent);
	__fastcall virtual ~TEscherOPTRecord();
	virtual void __fastcall AfterCreate();
	__property System::UnicodeString ShapeName = {read=GetShapeName};
	virtual void __fastcall SaveToStream(Fmx::Tmsfncuole2impl::TOle2File* const DataStream, Fmx::Tmsfncubreaklist::TBreakList* const BreakList);
	int __fastcall Row();
	int __fastcall Col();
	Fmx::Tmsfncuflxmessages::TClientAnchor __fastcall GetAnchor();
	void __fastcall SetAnchor(const Fmx::Tmsfncuflxmessages::TClientAnchor &aAnchor, System::TObject* const sSheet);
	void __fastcall ChangeRef(TEscherBSERecord* const aBSE);
	void __fastcall ReplaceImg(const Fmx::Tmsfncuflxmessages::ByteArray Data, const Fmx::Tmsfncuflxmessages::TXlsImgTypes DataType);
	void __fastcall GetImageFromStream(System::Classes::TStream* const Data, /* out */ Fmx::Tmsfncuflxmessages::TXlsImgTypes &DataType);
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Tmsfncuescherrecords */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCUESCHERRECORDS)
using namespace Fmx::Tmsfncuescherrecords;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncuescherrecordsHPP
