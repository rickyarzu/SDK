// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCKanbanBoardDatabaseAdapter.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfnckanbanboarddatabaseadapterHPP
#define Fmx_TmsfnckanbanboarddatabaseadapterHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <FMX.TMSFNCKanbanBoard.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <System.SysUtils.hpp>
#include <Data.DB.hpp>
#include <FMX.TMSFNCCustomComponent.hpp>
#include <FMX.Controls.hpp>
#include <FMX.Types.hpp>
#include <System.Generics.Collections.hpp>
#include <System.Generics.Defaults.hpp>
#include <System.Types.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfnckanbanboarddatabaseadapter
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCKanbanBoardDatabaseAdapterItemDataLink;
class DELPHICLASS TTMSFNCKanbanBoardDatabaseAdapterItemSource;
class DELPHICLASS TTMSFNCKanbanBoardDatabaseAdapter;
//-- type declarations -------------------------------------------------------
#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCKanbanBoardDatabaseAdapterItemDataLink : public Data::Db::TDataLink
{
	typedef Data::Db::TDataLink inherited;
	
private:
	TTMSFNCKanbanBoardDatabaseAdapterItemSource* FItem;
	
protected:
	virtual void __fastcall ActiveChanged();
	virtual void __fastcall DataSetChanged();
	virtual void __fastcall DataSetScrolled(int Distance);
	virtual void __fastcall RecordChanged(Data::Db::TField* Field);
	Fmx::Tmsfnckanbanboard::TTMSFNCKanbanBoardAdapter* __fastcall Adapter();
	
public:
	__fastcall TTMSFNCKanbanBoardDatabaseAdapterItemDataLink(TTMSFNCKanbanBoardDatabaseAdapterItemSource* AItem);
	__fastcall virtual ~TTMSFNCKanbanBoardDatabaseAdapterItemDataLink();
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCKanbanBoardDatabaseAdapterItemSource : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	int FUpdateCount;
	TTMSFNCKanbanBoardDatabaseAdapterItemDataLink* FDataLink;
	Fmx::Tmsfnckanbanboard::TTMSFNCKanbanBoardAdapter* FAdapter;
	System::UnicodeString FTitle;
	System::UnicodeString FText;
	System::UnicodeString FDBKey;
	System::UnicodeString FColumn;
	bool FAutoIncrementDBKey;
	void __fastcall SetText(const System::UnicodeString Value);
	void __fastcall SetTitle(const System::UnicodeString Value);
	Data::Db::TDataSource* __fastcall GetDataSource();
	void __fastcall SetDataSource(Data::Db::TDataSource* const Value);
	void __fastcall SetDBKey(const System::UnicodeString Value);
	void __fastcall SetColumn(const System::UnicodeString Value);
	void __fastcall SetAutoIncrementDBKey(const bool Value);
	
protected:
	bool __fastcall CheckDataSet();
	void __fastcall ClearItems(System::UnicodeString ADBKey, Fmx::Tmsfnckanbanboard::TTMSFNCKanbanBoardItem* ADeleteItem = (Fmx::Tmsfnckanbanboard::TTMSFNCKanbanBoardItem*)(0x0));
	void __fastcall DeleteItem(Fmx::Tmsfnckanbanboard::TTMSFNCKanbanBoardItem* AItem);
	void __fastcall LocateItem(Data::Db::TDataSet* ADataSet, Fmx::Tmsfnckanbanboard::TTMSFNCKanbanBoardItem* AItem);
	void __fastcall InsertItem(Fmx::Tmsfnckanbanboard::TTMSFNCKanbanBoardItem* AItem);
	void __fastcall SelectItem(Fmx::Tmsfnckanbanboard::TTMSFNCKanbanBoardItem* AItem);
	void __fastcall ReadItem(Fmx::Tmsfnckanbanboard::TTMSFNCKanbanBoardItem* AItem);
	void __fastcall WriteItem(Fmx::Tmsfnckanbanboard::TTMSFNCKanbanBoardItem* AItem);
	virtual void __fastcall BeginUpdate();
	virtual void __fastcall EndUpdate();
	virtual bool __fastcall IsUpdating();
	
public:
	__fastcall TTMSFNCKanbanBoardDatabaseAdapterItemSource(Fmx::Tmsfnckanbanboard::TTMSFNCKanbanBoardAdapter* AAdapter);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual ~TTMSFNCKanbanBoardDatabaseAdapterItemSource();
	
__published:
	__property Data::Db::TDataSource* DataSource = {read=GetDataSource, write=SetDataSource};
	__property System::UnicodeString Title = {read=FTitle, write=SetTitle};
	__property System::UnicodeString Text = {read=FText, write=SetText};
	__property System::UnicodeString Column = {read=FColumn, write=SetColumn};
	__property System::UnicodeString DBKey = {read=FDBKey, write=SetDBKey};
	__property bool AutoIncrementDBKey = {read=FAutoIncrementDBKey, write=SetAutoIncrementDBKey, default=1};
};

#pragma pack(pop)

typedef void __fastcall (__closure *TTMSFNCKanbanBoardDatabaseAdapterItemLocateEvent)(System::TObject* Sender, Fmx::Tmsfnckanbanboard::TTMSFNCKanbanBoardItem* AItem);

typedef void __fastcall (__closure *TTMSFNCKanbanBoardDatabaseAdapterItemToFieldsEvent)(System::TObject* Sender, Fmx::Tmsfnckanbanboard::TTMSFNCKanbanBoardItem* AItem, Data::Db::TFields* AFields);

typedef void __fastcall (__closure *TTMSFNCKanbanBoardDatabaseAdapterFieldsToItemEvent)(System::TObject* Sender, Data::Db::TFields* AFields, Fmx::Tmsfnckanbanboard::TTMSFNCKanbanBoardItem* AItem);

typedef void __fastcall (__closure *TTMSFNCKanbanBoardDatabaseAdapterColumnToFieldsEvent)(System::TObject* Sender, int AColumn, Data::Db::TFields* AFields, Data::Db::TField* AColumnField);

typedef void __fastcall (__closure *TTMSFNCKanbanBoardDatabaseAdapterFieldsToColumnEvent)(System::TObject* Sender, Data::Db::TFields* AFields, Data::Db::TField* AColumnField, int &AColumn, bool &AAcceptItem);

typedef void __fastcall (__closure *TTMSFNCKanbanBoardDatabaseAdapterItemCreateDBKeyEvent)(System::TObject* Sender, Fmx::Tmsfnckanbanboard::TTMSFNCKanbanBoardItem* AItem, System::UnicodeString &ADBKey);

typedef void __fastcall (__closure *TTMSFNCKanbanBoardDatabaseAdapterItemEvent)(System::TObject* Sender, Fmx::Tmsfnckanbanboard::TTMSFNCKanbanBoardItem* AItem);

typedef System::Classes::TNotifyEvent TTMSFNCKanbanBoardDatabaseAdapterItemsLoadedEvent;

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCKanbanBoardDatabaseAdapter : public Fmx::Tmsfnckanbanboard::TTMSFNCKanbanBoardAdapter
{
	typedef Fmx::Tmsfnckanbanboard::TTMSFNCKanbanBoardAdapter inherited;
	
private:
	TTMSFNCKanbanBoardDatabaseAdapterItemSource* FItem;
	TTMSFNCKanbanBoardDatabaseAdapterFieldsToItemEvent FOnFieldsToItem;
	TTMSFNCKanbanBoardDatabaseAdapterItemToFieldsEvent FOnItemToFields;
	TTMSFNCKanbanBoardDatabaseAdapterItemCreateDBKeyEvent FOnItemCreateDBKey;
	TTMSFNCKanbanBoardDatabaseAdapterItemEvent FOnItemUpdated;
	System::Classes::TNotifyEvent FOnItemsLoaded;
	TTMSFNCKanbanBoardDatabaseAdapterItemEvent FOnItemInserted;
	TTMSFNCKanbanBoardDatabaseAdapterItemEvent FOnItemRead;
	TTMSFNCKanbanBoardDatabaseAdapterFieldsToColumnEvent FOnFieldsToColumn;
	TTMSFNCKanbanBoardDatabaseAdapterColumnToFieldsEvent FOnColumnToFields;
	TTMSFNCKanbanBoardDatabaseAdapterItemLocateEvent FOnItemLocate;
	void __fastcall SetItem(TTMSFNCKanbanBoardDatabaseAdapterItemSource* const Value);
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	virtual void __fastcall Notification(System::Classes::TComponent* AComponent, System::Classes::TOperation AOperation);
	virtual void __fastcall CreateOrReadDBItem(Fmx::Tmsfnckanbanboard::TTMSFNCKanbanBoardItem* AItem = (Fmx::Tmsfnckanbanboard::TTMSFNCKanbanBoardItem*)(0x0));
	void __fastcall ClearDBItems(System::UnicodeString ADBKey, Fmx::Tmsfnckanbanboard::TTMSFNCKanbanBoardItem* ADeleteItem = (Fmx::Tmsfnckanbanboard::TTMSFNCKanbanBoardItem*)(0x0));
	virtual void __fastcall ReadDBItem(Fmx::Tmsfnckanbanboard::TTMSFNCKanbanBoardItem* AItem);
	virtual void __fastcall WriteDBItem(Fmx::Tmsfnckanbanboard::TTMSFNCKanbanBoardItem* AItem);
	virtual void __fastcall DoItemToFields(Fmx::Tmsfnckanbanboard::TTMSFNCKanbanBoardItem* AItem, Data::Db::TFields* AFields);
	virtual void __fastcall DoColumnToFields(int AColumn, Data::Db::TFields* AFields, Data::Db::TField* AColumnField);
	virtual void __fastcall DoFieldsToItem(Data::Db::TFields* AFields, Fmx::Tmsfnckanbanboard::TTMSFNCKanbanBoardItem* AItem);
	virtual void __fastcall DoFieldsToColumn(Data::Db::TFields* AFields, Data::Db::TField* AColumnField, int &AColumn, bool &AAcceptItem);
	virtual void __fastcall DoItemCreateDBKey(Fmx::Tmsfnckanbanboard::TTMSFNCKanbanBoardItem* AItem, System::UnicodeString &ADBKey);
	virtual void __fastcall DoItemInserted(Fmx::Tmsfnckanbanboard::TTMSFNCKanbanBoardItem* AItem);
	virtual void __fastcall DoItemUpdated(Fmx::Tmsfnckanbanboard::TTMSFNCKanbanBoardItem* AItem);
	virtual void __fastcall DoItemRead(Fmx::Tmsfnckanbanboard::TTMSFNCKanbanBoardItem* AItem);
	virtual void __fastcall DoItemsLoaded();
	virtual System::UnicodeString __fastcall CreateKey();
	virtual System::UnicodeString __fastcall GetVersion();
	
public:
	virtual void __fastcall GetItems();
	virtual void __fastcall LoadItems();
	virtual void __fastcall DeleteItem(Fmx::Tmsfnckanbanboard::TTMSFNCKanbanBoardItem* AItem);
	virtual void __fastcall InsertItem(Fmx::Tmsfnckanbanboard::TTMSFNCKanbanBoardItem* AItem);
	virtual void __fastcall ReadItem(Fmx::Tmsfnckanbanboard::TTMSFNCKanbanBoardItem* AItem);
	virtual void __fastcall UpdateItem(Fmx::Tmsfnckanbanboard::TTMSFNCKanbanBoardItem* AItem);
	virtual void __fastcall AfterUpdateItem(Fmx::Tmsfnckanbanboard::TTMSFNCKanbanBoardItem* AItem);
	virtual void __fastcall SelectItem(Fmx::Tmsfnckanbanboard::TTMSFNCKanbanBoardItem* AItem);
	__fastcall virtual TTMSFNCKanbanBoardDatabaseAdapter(System::Classes::TComponent* AOwner);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual ~TTMSFNCKanbanBoardDatabaseAdapter();
	
__published:
	__property System::UnicodeString Version = {read=GetVersion};
	__property TTMSFNCKanbanBoardDatabaseAdapterItemSource* Item = {read=FItem, write=SetItem};
	__property TTMSFNCKanbanBoardDatabaseAdapterItemToFieldsEvent OnItemToFields = {read=FOnItemToFields, write=FOnItemToFields};
	__property TTMSFNCKanbanBoardDatabaseAdapterFieldsToItemEvent OnFieldsToItem = {read=FOnFieldsToItem, write=FOnFieldsToItem};
	__property TTMSFNCKanbanBoardDatabaseAdapterItemLocateEvent OnItemLocate = {read=FOnItemLocate, write=FOnItemLocate};
	__property TTMSFNCKanbanBoardDatabaseAdapterItemCreateDBKeyEvent OnItemCreateDBKey = {read=FOnItemCreateDBKey, write=FOnItemCreateDBKey};
	__property TTMSFNCKanbanBoardDatabaseAdapterItemEvent OnItemInserted = {read=FOnItemInserted, write=FOnItemInserted};
	__property TTMSFNCKanbanBoardDatabaseAdapterItemEvent OnItemUpdated = {read=FOnItemUpdated, write=FOnItemUpdated};
	__property TTMSFNCKanbanBoardDatabaseAdapterItemEvent OnItemRead = {read=FOnItemRead, write=FOnItemRead};
	__property System::Classes::TNotifyEvent OnItemsLoaded = {read=FOnItemsLoaded, write=FOnItemsLoaded};
	__property TTMSFNCKanbanBoardDatabaseAdapterColumnToFieldsEvent OnColumnToFields = {read=FOnColumnToFields, write=FOnColumnToFields};
	__property TTMSFNCKanbanBoardDatabaseAdapterFieldsToColumnEvent OnFieldsToColumn = {read=FOnFieldsToColumn, write=FOnFieldsToColumn};
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x0);
static constexpr System::Int8 BLD_VER = System::Int8(0x1);
}	/* namespace Tmsfnckanbanboarddatabaseadapter */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCKANBANBOARDDATABASEADAPTER)
using namespace Fmx::Tmsfnckanbanboarddatabaseadapter;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfnckanbanboarddatabaseadapterHPP
