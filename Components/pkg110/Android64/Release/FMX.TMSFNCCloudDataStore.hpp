// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCCloudDataStore.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncclouddatastoreHPP
#define Fmx_TmsfncclouddatastoreHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <FMX.TMSFNCCloudBase.hpp>
#include <FMX.TMSFNCCloudOAuth.hpp>
#include <Data.DB.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <System.JSON.hpp>
#include <FMX.TMSFNCCustomComponent.hpp>
#include <FMX.Controls.hpp>
#include <FMX.Types.hpp>
#include <System.Generics.Collections.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>
#include <System.Types.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncclouddatastore
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCCloudDataStoreMetaDataObject;
class DELPHICLASS TTMSFNCCloudDataStoreMetaDataItem;
class DELPHICLASS TTMSFNCCloudDataStoreMetaData;
class DELPHICLASS TTMSFNCCloudDataStoreEntity;
class DELPHICLASS TTMSFNCCloudDataStoreEntities;
class DELPHICLASS TTMSFNCCustomCloudDataStore;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TTMSFNCCloudDataStoreMetaDataObject : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	int FIndex;
	
public:
	__fastcall TTMSFNCCloudDataStoreMetaDataObject(int AIndex);
	__property int Index = {read=FIndex, write=FIndex, nodefault};
	System::UnicodeString __fastcall ToJSON()/* overload */;
	void __fastcall FromJSON(const System::UnicodeString Value);
	__property System::UnicodeString JSON = {read=ToJSON, write=FromJSON};
	System::UnicodeString __fastcall ToJSON(Fmx::Tmsfnctypes::TTMSFNCObjectExcludePropertyListArray AExcludedProperties)/* overload */;
	void __fastcall Log();
	void __fastcall SaveToJSONFile(const System::UnicodeString AFileName);
	void __fastcall LoadFromJSONFile(const System::UnicodeString AFileName);
	void __fastcall SaveToJSONStream(System::Classes::TStream* const AStream);
	void __fastcall LoadFromJSONStream(System::Classes::TStream* const AStream);
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TTMSFNCCloudDataStoreMetaDataObject() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudDataStoreMetaDataItem : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	System::UnicodeString FKind;
	System::UnicodeString FNamespace;
	System::UnicodeString FPropertyName;
	Data::Db::TFieldType FDataType;
	bool FData;
	int FSize;
	bool FReadOnly;
	TTMSFNCCustomCloudDataStore* __fastcall GetDataStore();
	
protected:
	virtual System::UnicodeString __fastcall GetDisplayName();
	
public:
	__fastcall virtual TTMSFNCCloudDataStoreMetaDataItem(System::Classes::TCollection* Collection);
	__fastcall virtual ~TTMSFNCCloudDataStoreMetaDataItem();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	virtual void __fastcall FromJSON(System::Json::TJSONValue* jo) = 0 ;
	__property TTMSFNCCustomCloudDataStore* DataStore = {read=GetDataStore};
	
__published:
	__property System::UnicodeString Namespace = {read=FNamespace, write=FNamespace};
	__property System::UnicodeString Kind = {read=FKind, write=FKind};
	__property System::UnicodeString PropertyName = {read=FPropertyName, write=FPropertyName};
	__property Data::Db::TFieldType DataType = {read=FDataType, write=FDataType, default=1};
	__property bool ReadOnly = {read=FReadOnly, write=FReadOnly, default=0};
	__property bool Data = {read=FData, write=FData, default=1};
	__property int Size = {read=FSize, write=FSize, default=255};
};


class PASCALIMPLEMENTATION TTMSFNCCloudDataStoreMetaData : public System::Classes::TOwnedCollection
{
	typedef System::Classes::TOwnedCollection inherited;
	
public:
	TTMSFNCCloudDataStoreMetaDataItem* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCCloudDataStoreMetaDataItem* __fastcall GetItems(int Index);
	void __fastcall SetItems(int Index, TTMSFNCCloudDataStoreMetaDataItem* const Value);
	TTMSFNCCustomCloudDataStore* __fastcall GetDataStore();
	
protected:
	virtual void __fastcall Update(System::Classes::TCollectionItem* Item);
	virtual System::Classes::TCollectionItemClass __fastcall GetItemClass();
	
public:
	__fastcall TTMSFNCCloudDataStoreMetaData(TTMSFNCCustomCloudDataStore* AOwner);
	TTMSFNCCloudDataStoreMetaDataItem* __fastcall GetMetaDataItemByName(System::UnicodeString AName);
	HIDESBASE TTMSFNCCloudDataStoreMetaDataItem* __fastcall Add();
	HIDESBASE TTMSFNCCloudDataStoreMetaDataItem* __fastcall Insert(int Index);
	__property TTMSFNCCustomCloudDataStore* DataStore = {read=GetDataStore};
	__property TTMSFNCCloudDataStoreMetaDataItem* Items[int Index] = {read=GetItems, write=SetItems/*, default*/};
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCCloudDataStoreMetaData() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudDataStoreEntity : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	System::UnicodeString FID;
	System::UnicodeString FKind;
	System::UnicodeString FNamespace;
	System::Classes::TStringList* FValues;
	TTMSFNCCustomCloudDataStore* __fastcall GetDataStore();
	
protected:
	virtual System::UnicodeString __fastcall GetDisplayName();
	
public:
	__fastcall virtual TTMSFNCCloudDataStoreEntity(System::Classes::TCollection* Collection);
	__fastcall virtual ~TTMSFNCCloudDataStoreEntity();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	virtual void __fastcall FromJSON(System::Json::TJSONValue* jo) = 0 ;
	__property TTMSFNCCustomCloudDataStore* DataStore = {read=GetDataStore};
	
__published:
	__property System::UnicodeString ID = {read=FID, write=FID};
	__property System::UnicodeString Namespace = {read=FNamespace, write=FNamespace};
	__property System::UnicodeString Kind = {read=FKind, write=FKind};
	__property System::Classes::TStringList* Values = {read=FValues, write=FValues};
};


class PASCALIMPLEMENTATION TTMSFNCCloudDataStoreEntities : public System::Classes::TOwnedCollection
{
	typedef System::Classes::TOwnedCollection inherited;
	
public:
	TTMSFNCCloudDataStoreEntity* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCCloudDataStoreEntity* __fastcall GetItems(int Index);
	void __fastcall SetItems(int Index, TTMSFNCCloudDataStoreEntity* const Value);
	TTMSFNCCustomCloudDataStore* __fastcall GetDataStore();
	
protected:
	virtual void __fastcall Update(System::Classes::TCollectionItem* Item);
	virtual System::Classes::TCollectionItemClass __fastcall GetItemClass();
	
public:
	__property TTMSFNCCustomCloudDataStore* DataStore = {read=GetDataStore};
	__fastcall TTMSFNCCloudDataStoreEntities(TTMSFNCCustomCloudDataStore* AOwner);
	HIDESBASE TTMSFNCCloudDataStoreEntity* __fastcall Add();
	HIDESBASE TTMSFNCCloudDataStoreEntity* __fastcall Insert(int Index);
	__property TTMSFNCCloudDataStoreEntity* Items[int Index] = {read=GetItems, write=SetItems/*, default*/};
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCCloudDataStoreEntities() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCustomCloudDataStore : public Fmx::Tmsfnccloudoauth::TTMSFNCCloudOAuth
{
	typedef Fmx::Tmsfnccloudoauth::TTMSFNCCloudOAuth inherited;
	
private:
	TTMSFNCCloudDataStoreEntities* FEntities;
	TTMSFNCCloudDataStoreMetaData* FMetaData;
	System::UnicodeString FTable;
	System::UnicodeString FProject;
	System::UnicodeString FDataBase;
	int FPageSize;
	
protected:
	virtual TTMSFNCCloudDataStoreEntities* __fastcall CreateDataStoreEntities();
	virtual TTMSFNCCloudDataStoreMetaData* __fastcall CreateDataStoreMetaData();
	virtual void __fastcall SetTable(System::UnicodeString AValue);
	__property System::UnicodeString Database = {read=FDataBase, write=FDataBase};
	__property System::UnicodeString Table = {read=FTable, write=SetTable};
	__property System::UnicodeString Project = {read=FProject, write=FProject};
	
public:
	__fastcall virtual TTMSFNCCustomCloudDataStore(System::Classes::TComponent* AOwner)/* overload */;
	__fastcall virtual ~TTMSFNCCustomCloudDataStore();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	virtual void __fastcall GetMetaData();
	HIDESBASE virtual void __fastcall Insert(System::Classes::TStringList* AValues)/* overload */;
	virtual void __fastcall Query()/* overload */;
	virtual void __fastcall Query(System::UnicodeString AName = System::UnicodeString())/* overload */;
	virtual void __fastcall Delete(System::UnicodeString AID)/* overload */;
	virtual void __fastcall Update(TTMSFNCCloudDataStoreEntity* AEntity)/* overload */;
	__property int PageSize = {read=FPageSize, write=FPageSize, default=-1};
	__property TTMSFNCCloudDataStoreEntities* Entities = {read=FEntities, write=FEntities};
	__property TTMSFNCCloudDataStoreMetaData* MetaData = {read=FMetaData, write=FMetaData};
public:
	/* TTMSFNCCustomCloudOAuth.Create */ inline __fastcall virtual TTMSFNCCustomCloudDataStore()/* overload */ : Fmx::Tmsfnccloudoauth::TTMSFNCCloudOAuth() { }
	
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Tmsfncclouddatastore */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCCLOUDDATASTORE)
using namespace Fmx::Tmsfncclouddatastore;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncclouddatastoreHPP
