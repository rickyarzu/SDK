// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCPlannerDatabaseAdapter.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncplannerdatabaseadapterHPP
#define Fmx_TmsfncplannerdatabaseadapterHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <FMX.TMSFNCPlanner.hpp>
#include <FMX.TMSFNCPlannerData.hpp>
#include <FMX.TMSFNCRecurrencyHandler.hpp>
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
namespace Tmsfncplannerdatabaseadapter
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCPlannerDatabaseAdapterItemDataLink;
class DELPHICLASS TTMSFNCPlannerDatabaseAdapterItemSource;
class DELPHICLASS TTMSFNCPlannerDatabaseAdapter;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TTMSFNCPlannerDatabaseAdapterItemDataLink : public Data::Db::TDataLink
{
	typedef Data::Db::TDataLink inherited;
	
private:
	TTMSFNCPlannerDatabaseAdapterItemSource* FItem;
	
protected:
	virtual void __fastcall ActiveChanged();
	virtual void __fastcall DataSetChanged();
	virtual void __fastcall DataSetScrolled(int Distance);
	virtual void __fastcall RecordChanged(Data::Db::TField* Field);
	Fmx::Tmsfncplanner::TTMSFNCPlannerAdapter* __fastcall Adapter();
	
public:
	__fastcall TTMSFNCPlannerDatabaseAdapterItemDataLink(TTMSFNCPlannerDatabaseAdapterItemSource* AItem);
	__fastcall virtual ~TTMSFNCPlannerDatabaseAdapterItemDataLink();
};


class PASCALIMPLEMENTATION TTMSFNCPlannerDatabaseAdapterItemSource : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	Fmx::Tmsfncrecurrencyhandler::TTMSFNCRecurrencyHandler* FRecurrencyHandler;
	int FUpdateCount;
	TTMSFNCPlannerDatabaseAdapterItemDataLink* FDataLink;
	Fmx::Tmsfncplanner::TTMSFNCPlannerAdapter* FAdapter;
	System::UnicodeString FTitle;
	System::UnicodeString FText;
	System::UnicodeString FDBKey;
	System::UnicodeString FStartTime;
	System::UnicodeString FEndTime;
	System::UnicodeString FResource;
	bool FAutoIncrementDBKey;
	System::UnicodeString FRecurrency;
	void __fastcall SetText(const System::UnicodeString Value);
	void __fastcall SetTitle(const System::UnicodeString Value);
	Data::Db::TDataSource* __fastcall GetDataSource();
	void __fastcall SetDataSource(Data::Db::TDataSource* const Value);
	void __fastcall SetDBKey(const System::UnicodeString Value);
	void __fastcall SetEndTime(const System::UnicodeString Value);
	void __fastcall SetStartTime(const System::UnicodeString Value);
	void __fastcall SetResource(const System::UnicodeString Value);
	void __fastcall SetAutoIncrementDBKey(const bool Value);
	void __fastcall SetRecurrency(const System::UnicodeString Value);
	
protected:
	bool __fastcall CheckDataSet();
	void __fastcall ClearItems(System::UnicodeString ADBKey, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* ADeleteItem = (Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem*)(0x0));
	void __fastcall DeleteItem(Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem);
	void __fastcall LocateItem(Data::Db::TDataSet* ADataSet, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem);
	void __fastcall InsertItem(Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem);
	void __fastcall SelectItem(Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem);
	void __fastcall ReadItem(Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem);
	void __fastcall WriteItem(Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem);
	virtual void __fastcall BeginUpdate();
	virtual void __fastcall EndUpdate();
	virtual bool __fastcall IsUpdating();
	
public:
	__fastcall TTMSFNCPlannerDatabaseAdapterItemSource(Fmx::Tmsfncplanner::TTMSFNCPlannerAdapter* AAdapter);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual ~TTMSFNCPlannerDatabaseAdapterItemSource();
	
__published:
	__property Data::Db::TDataSource* DataSource = {read=GetDataSource, write=SetDataSource};
	__property System::UnicodeString Title = {read=FTitle, write=SetTitle};
	__property System::UnicodeString Text = {read=FText, write=SetText};
	__property System::UnicodeString StartTime = {read=FStartTime, write=SetStartTime};
	__property System::UnicodeString EndTime = {read=FEndTime, write=SetEndTime};
	__property System::UnicodeString Resource = {read=FResource, write=SetResource};
	__property System::UnicodeString DBKey = {read=FDBKey, write=SetDBKey};
	__property System::UnicodeString Recurrency = {read=FRecurrency, write=SetRecurrency};
	__property bool AutoIncrementDBKey = {read=FAutoIncrementDBKey, write=SetAutoIncrementDBKey, default=1};
};


typedef void __fastcall (__closure *TTMSFNCPlannerDatabaseAdapterItemLocateEvent)(System::TObject* Sender, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem);

typedef void __fastcall (__closure *TTMSFNCPlannerDatabaseAdapterItemToFields)(System::TObject* Sender, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, Data::Db::TFields* AFields);

typedef void __fastcall (__closure *TTMSFNCPlannerDatabaseAdapterFieldsToItem)(System::TObject* Sender, Data::Db::TFields* AFields, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem);

typedef void __fastcall (__closure *TTMSFNCPlannerDatabaseAdapterResourceToFieldsEvent)(System::TObject* Sender, int AResource, Data::Db::TFields* AFields, Data::Db::TField* AColumnField);

typedef void __fastcall (__closure *TTMSFNCPlannerDatabaseAdapterFieldsToResourceEvent)(System::TObject* Sender, Data::Db::TFields* AFields, Data::Db::TField* AColumnField, int &AResource, bool &AAcceptItem);

typedef void __fastcall (__closure *TTMSFNCPlannerDatabaseAdapterItemCreateDBKeyEvent)(System::TObject* Sender, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, System::UnicodeString &ADBKey);

typedef void __fastcall (__closure *TTMSFNCPlannerDatabaseAdapterItemEvent)(System::TObject* Sender, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem);

typedef System::Classes::TNotifyEvent TTMSFNCPlannerDatabaseAdapterItemsLoadedEvent;

class PASCALIMPLEMENTATION TTMSFNCPlannerDatabaseAdapter : public Fmx::Tmsfncplanner::TTMSFNCPlannerAdapter
{
	typedef Fmx::Tmsfncplanner::TTMSFNCPlannerAdapter inherited;
	
private:
	TTMSFNCPlannerDatabaseAdapterItemSource* FItem;
	TTMSFNCPlannerDatabaseAdapterFieldsToItem FOnFieldsToItem;
	TTMSFNCPlannerDatabaseAdapterItemToFields FOnItemToFields;
	TTMSFNCPlannerDatabaseAdapterItemCreateDBKeyEvent FOnItemCreateDBKey;
	TTMSFNCPlannerDatabaseAdapterItemEvent FOnItemUpdated;
	System::Classes::TNotifyEvent FOnItemsLoaded;
	TTMSFNCPlannerDatabaseAdapterItemEvent FOnItemInserted;
	TTMSFNCPlannerDatabaseAdapterItemEvent FOnItemRead;
	TTMSFNCPlannerDatabaseAdapterFieldsToResourceEvent FOnFieldsToResource;
	TTMSFNCPlannerDatabaseAdapterResourceToFieldsEvent FOnResourceToFields;
	TTMSFNCPlannerDatabaseAdapterItemLocateEvent FOnItemLocate;
	void __fastcall SetItem(TTMSFNCPlannerDatabaseAdapterItemSource* const Value);
	
protected:
	virtual System::UnicodeString __fastcall GetDocURL();
	virtual void __fastcall RegisterRuntimeClasses();
	virtual void __fastcall Notification(System::Classes::TComponent* AComponent, System::Classes::TOperation AOperation);
	virtual void __fastcall CreateOrReadDBItem(System::TDateTime AStartTime, System::TDateTime AEndTime, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem = (Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem*)(0x0));
	void __fastcall ClearDBItems(System::UnicodeString ADBKey, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* ADeleteItem = (Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem*)(0x0));
	virtual void __fastcall ReadDBItem(Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem);
	virtual void __fastcall WriteDBItem(Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem);
	virtual void __fastcall DoItemToFields(Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, Data::Db::TFields* AFields);
	virtual void __fastcall DoResourceToFields(int AResource, Data::Db::TFields* AFields, Data::Db::TField* AColumnField);
	virtual void __fastcall DoFieldsToItem(Data::Db::TFields* AFields, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem);
	virtual void __fastcall DoFieldsToResource(Data::Db::TFields* AFields, Data::Db::TField* AColumnField, int &AResource, bool &AAcceptItem);
	virtual void __fastcall DoItemCreateDBKey(Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, System::UnicodeString &ADBKey);
	virtual void __fastcall DoItemInserted(Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem);
	virtual void __fastcall DoItemUpdated(Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem);
	virtual void __fastcall DoItemRead(Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem);
	virtual void __fastcall DoItemsLoaded();
	virtual System::UnicodeString __fastcall CreateKey();
	virtual System::UnicodeString __fastcall GetVersion();
	
public:
	virtual void __fastcall GetItems(System::TDateTime PeriodFrom, System::TDateTime PeriodTo);
	virtual void __fastcall LoadItems();
	virtual void __fastcall DeleteItem(Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem);
	virtual void __fastcall InsertItem(Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem);
	virtual void __fastcall ReadItem(Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem);
	virtual void __fastcall UpdateItem(Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem);
	virtual void __fastcall AfterUpdateItem(Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem);
	virtual void __fastcall SelectItem(Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem);
	__fastcall virtual TTMSFNCPlannerDatabaseAdapter(System::Classes::TComponent* AOwner);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual ~TTMSFNCPlannerDatabaseAdapter();
	
__published:
	__property System::UnicodeString Version = {read=GetVersion};
	__property TTMSFNCPlannerDatabaseAdapterItemSource* Item = {read=FItem, write=SetItem};
	__property TTMSFNCPlannerDatabaseAdapterItemToFields OnItemToFields = {read=FOnItemToFields, write=FOnItemToFields};
	__property TTMSFNCPlannerDatabaseAdapterFieldsToItem OnFieldsToItem = {read=FOnFieldsToItem, write=FOnFieldsToItem};
	__property TTMSFNCPlannerDatabaseAdapterItemLocateEvent OnItemLocate = {read=FOnItemLocate, write=FOnItemLocate};
	__property TTMSFNCPlannerDatabaseAdapterItemCreateDBKeyEvent OnItemCreateDBKey = {read=FOnItemCreateDBKey, write=FOnItemCreateDBKey};
	__property TTMSFNCPlannerDatabaseAdapterItemEvent OnItemInserted = {read=FOnItemInserted, write=FOnItemInserted};
	__property TTMSFNCPlannerDatabaseAdapterItemEvent OnItemUpdated = {read=FOnItemUpdated, write=FOnItemUpdated};
	__property TTMSFNCPlannerDatabaseAdapterItemEvent OnItemRead = {read=FOnItemRead, write=FOnItemRead};
	__property System::Classes::TNotifyEvent OnItemsLoaded = {read=FOnItemsLoaded, write=FOnItemsLoaded};
	__property TTMSFNCPlannerDatabaseAdapterResourceToFieldsEvent OnResourceToFields = {read=FOnResourceToFields, write=FOnResourceToFields};
	__property TTMSFNCPlannerDatabaseAdapterFieldsToResourceEvent OnFieldsToResource = {read=FOnFieldsToResource, write=FOnFieldsToResource};
};


//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x1);
static constexpr System::Int8 BLD_VER = System::Int8(0x1);
}	/* namespace Tmsfncplannerdatabaseadapter */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCPLANNERDATABASEADAPTER)
using namespace Fmx::Tmsfncplannerdatabaseadapter;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncplannerdatabaseadapterHPP
