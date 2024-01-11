// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCCloudMyCloudData.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfnccloudmyclouddataHPP
#define Fmx_TmsfnccloudmyclouddataHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <FMX.TMSFNCCloudBase.hpp>
#include <FMX.TMSFNCCloudDataStore.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.TMSFNCUtils.hpp>
#include <System.Variants.hpp>
#include <Data.DB.hpp>
#include <System.Rtti.hpp>
#include <System.JSON.hpp>
#include <System.Generics.Collections.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>
#include <System.Types.hpp>
#include <FMX.TMSFNCCloudOAuth.hpp>
#include <FMX.TMSFNCCustomComponent.hpp>
#include <FMX.Controls.hpp>
#include <FMX.Types.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfnccloudmyclouddata
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCCloudMyCloudDataSortOrderItem;
class DELPHICLASS TTMSFNCCloudMyCloudDataSortOrderList;
class DELPHICLASS TTMSFNCCloudMyCloudDataFilter;
class DELPHICLASS TTMSFNCCloudMyCloudDataFilters;
class DELPHICLASS TTMSFNCCloudMyCloudDataUser;
class DELPHICLASS TTMSFNCCloudMyCloudDataUsers;
struct TTMSFNCCloudMyCloudDataMetaDataTypedItem;
class DELPHICLASS TTMSFNCCloudMyCloudDataMetaDataItem;
class DELPHICLASS TTMSFNCCloudMyCloudDataMetaData;
class DELPHICLASS TTMSFNCCloudMyCloudDataBlob;
class DELPHICLASS TTMSFNCCloudMyCloudDataEntity;
class DELPHICLASS TTMSFNCCloudMyCloudDataEntities;
class DELPHICLASS TTMSFNCCloudMyCloudDataShare;
class DELPHICLASS TTMSFNCCloudMyCloudDataShares;
class DELPHICLASS TTMSFNCCloudMyCloudDataLookupFieldValue;
class DELPHICLASS TTMSFNCCloudMyCloudDataLookupFieldValues;
class DELPHICLASS TTMSFNCCloudMyCloudDataLookupField;
class DELPHICLASS TTMSFNCCloudMyCloudDataLookupFieldList;
class DELPHICLASS TTMSFNCCloudMyCloudDataTable;
class DELPHICLASS TTMSFNCCloudMyCloudDataTables;
class DELPHICLASS TTMSFNCCloudCustomMyCloudData;
class DELPHICLASS TTMSFNCCloudMyCloudData;
//-- type declarations -------------------------------------------------------
typedef void __fastcall (__closure *TTMSFNCCloudMyCloudDataTablesEvent)(System::TObject* Sender, TTMSFNCCloudMyCloudDataTables* const AInfo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudMyCloudDataTableEvent)(System::TObject* Sender, TTMSFNCCloudMyCloudDataTable* const AInfo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudMyCloudDataMetaDataEvent)(System::TObject* Sender, TTMSFNCCloudMyCloudDataMetaData* const AInfo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudMyCloudDataEntityEvent)(System::TObject* Sender, TTMSFNCCloudMyCloudDataEntity* const AInfo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudMyCloudDataEntitiesEvent)(System::TObject* Sender, TTMSFNCCloudMyCloudDataEntities* const AInfo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudMyCloudDataStreamEvent)(System::TObject* Sender, System::Classes::TStream* const AInfo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudMyCloudDataUsersEvent)(System::TObject* Sender, TTMSFNCCloudMyCloudDataUsers* const AInfo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudMyCloudDataUserEvent)(System::TObject* Sender, TTMSFNCCloudMyCloudDataUser* const AInfo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

enum DECLSPEC_DENUM TTMSFNCCLoudMyCloudDataPermission : unsigned char { pCreate, pRead, pUpdate, pDelete };

typedef System::Set<TTMSFNCCLoudMyCloudDataPermission, TTMSFNCCLoudMyCloudDataPermission::pCreate, TTMSFNCCLoudMyCloudDataPermission::pDelete> TTMSFNCCLoudMyCloudDataPermissions;

enum DECLSPEC_DENUM TTMSFNCCloudComparisonOperator : unsigned char { coEqual, coNotEqual, coLike, coGreater, coGreaterOrEqual, coLess, coLessOrEqual, coStartsWith, coEndsWith, coNull, coNotNull };

enum DECLSPEC_DENUM TTMSFNCCloudLogicalOperator : unsigned char { loAnd, loOr, loNone };

enum DECLSPEC_DENUM TTMSFNCCloudSortOrder : unsigned char { soAscending, soDescending };

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudMyCloudDataSortOrderItem : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	System::UnicodeString FFieldName;
	TTMSFNCCloudSortOrder FSortOrder;
	void __fastcall SetFieldName(const System::UnicodeString Value);
	void __fastcall SetSortOrder(const TTMSFNCCloudSortOrder Value);
	
public:
	__fastcall virtual TTMSFNCCloudMyCloudDataSortOrderItem(System::Classes::TCollection* Collection);
	__fastcall virtual ~TTMSFNCCloudMyCloudDataSortOrderItem();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property System::UnicodeString FieldName = {read=FFieldName, write=SetFieldName};
	__property TTMSFNCCloudSortOrder SortOrder = {read=FSortOrder, write=SetSortOrder, default=0};
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudMyCloudDataSortOrderList : public System::Classes::TCollection
{
	typedef System::Classes::TCollection inherited;
	
public:
	TTMSFNCCloudMyCloudDataSortOrderItem* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCCloudMyCloudDataSortOrderItem* __fastcall GetItems(int Index);
	void __fastcall SetItems(int Index, TTMSFNCCloudMyCloudDataSortOrderItem* const Value);
	
public:
	__fastcall TTMSFNCCloudMyCloudDataSortOrderList();
	HIDESBASE TTMSFNCCloudMyCloudDataSortOrderItem* __fastcall Add()/* overload */;
	HIDESBASE TTMSFNCCloudMyCloudDataSortOrderItem* __fastcall Add(System::UnicodeString AFieldName, TTMSFNCCloudSortOrder ASortOrder = (TTMSFNCCloudSortOrder)(0x0))/* overload */;
	HIDESBASE TTMSFNCCloudMyCloudDataSortOrderItem* __fastcall Insert(int Index);
	__property TTMSFNCCloudMyCloudDataSortOrderItem* Items[int Index] = {read=GetItems, write=SetItems/*, default*/};
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCCloudMyCloudDataSortOrderList() { }
	
};

#pragma pack(pop)

class PASCALIMPLEMENTATION TTMSFNCCloudMyCloudDataFilter : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	System::UnicodeString FFieldName;
	TTMSFNCCloudComparisonOperator FComparisonOperator;
	TTMSFNCCloudLogicalOperator FLogicalOperator;
	System::Rtti::TValue FValue;
	void __fastcall SetComparisonOperator(const TTMSFNCCloudComparisonOperator AValue);
	void __fastcall SetFieldName(const System::UnicodeString AValue);
	void __fastcall SetLogicalOperator(const TTMSFNCCloudLogicalOperator AValue);
	void __fastcall SetValue(const System::Rtti::TValue &AValue);
	System::UnicodeString __fastcall GetFieldValue();
	void __fastcall SetFieldValue(const System::UnicodeString AValue);
	
protected:
	virtual System::UnicodeString __fastcall GetDisplayName();
	
public:
	__fastcall virtual TTMSFNCCloudMyCloudDataFilter(System::Classes::TCollection* Collection);
	__fastcall virtual ~TTMSFNCCloudMyCloudDataFilter();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__property System::Rtti::TValue Value = {read=FValue, write=SetValue};
	
__published:
	__property System::UnicodeString FieldName = {read=FFieldName, write=SetFieldName};
	__property TTMSFNCCloudComparisonOperator ComparisonOperator = {read=FComparisonOperator, write=SetComparisonOperator, default=0};
	__property TTMSFNCCloudLogicalOperator LogicalOperator = {read=FLogicalOperator, write=SetLogicalOperator, default=0};
	__property System::UnicodeString FieldValue = {read=GetFieldValue, write=SetFieldValue};
};


#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudMyCloudDataFilters : public System::Classes::TOwnedCollection
{
	typedef System::Classes::TOwnedCollection inherited;
	
public:
	TTMSFNCCloudMyCloudDataFilter* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCCloudMyCloudDataFilter* __fastcall GetItems(int Index);
	void __fastcall SetItems(int Index, TTMSFNCCloudMyCloudDataFilter* const Value);
	
public:
	__fastcall TTMSFNCCloudMyCloudDataFilters(System::Classes::TPersistent* AOwner);
	HIDESBASE TTMSFNCCloudMyCloudDataFilter* __fastcall Add()/* overload */;
	HIDESBASE TTMSFNCCloudMyCloudDataFilter* __fastcall Add(System::UnicodeString AFieldName, const System::Rtti::TValue &AValue, TTMSFNCCloudComparisonOperator AComparisonOperator = (TTMSFNCCloudComparisonOperator)(0x0), TTMSFNCCloudLogicalOperator ALogicalOperator = (TTMSFNCCloudLogicalOperator)(0x0))/* overload */;
	HIDESBASE TTMSFNCCloudMyCloudDataFilter* __fastcall Insert(int Index);
	__property TTMSFNCCloudMyCloudDataFilter* Items[int Index] = {read=GetItems, write=SetItems/*, default*/};
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCCloudMyCloudDataFilters() { }
	
};

#pragma pack(pop)

enum DECLSPEC_DENUM TTMSFNCCloudMyCloudDataUserstatus : unsigned char { stAdmin, stFree, stSubscription };

class PASCALIMPLEMENTATION TTMSFNCCloudMyCloudDataUser : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	TTMSFNCCloudMyCloudDataUsers* FOwner;
	System::UnicodeString FLastName;
	__int64 FID;
	System::UnicodeString FFirstName;
	System::UnicodeString FEmail;
	TTMSFNCCLoudMyCloudDataPermissions FPermissions;
	TTMSFNCCloudMyCloudDataUserstatus FStatus;
	System::TDateTime FSubscrStart;
	System::UnicodeString FCompany;
	System::TDateTime FCreated;
	System::TDateTime FSubscrEnd;
	void __fastcall SetFirstName(const System::UnicodeString Value);
	void __fastcall SetLastName(const System::UnicodeString Value);
	void __fastcall SetEmail(const System::UnicodeString Value);
	
protected:
	virtual System::UnicodeString __fastcall GetDisplayName();
	
public:
	__fastcall virtual TTMSFNCCloudMyCloudDataUser(System::Classes::TCollection* Collection);
	__fastcall virtual ~TTMSFNCCloudMyCloudDataUser();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	void __fastcall GetFromJSON(System::Json::TJSONValue* jo);
	__property System::TDateTime Created = {read=FCreated, write=FCreated};
	__property System::UnicodeString Company = {read=FCompany, write=FCompany};
	__property __int64 ID = {read=FID};
	__property System::UnicodeString FirstName = {read=FFirstName, write=SetFirstName};
	__property System::UnicodeString LastName = {read=FLastName, write=SetLastName};
	__property System::UnicodeString Email = {read=FEmail, write=SetEmail};
	__property TTMSFNCCLoudMyCloudDataPermissions Permissions = {read=FPermissions, write=FPermissions, nodefault};
	__property TTMSFNCCloudMyCloudDataUserstatus Status = {read=FStatus, write=FStatus, nodefault};
	__property System::TDateTime SubscrStart = {read=FSubscrStart, write=FSubscrStart};
	__property System::TDateTime SubscrEnd = {read=FSubscrEnd, write=FSubscrEnd};
};


#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudMyCloudDataUsers : public System::Classes::TCollection
{
	typedef System::Classes::TCollection inherited;
	
public:
	TTMSFNCCloudMyCloudDataUser* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCCloudCustomMyCloudData* FOwner;
	TTMSFNCCloudMyCloudDataUser* __fastcall GetItems(int Index);
	void __fastcall SetItems(int Index, TTMSFNCCloudMyCloudDataUser* const Value);
	
protected:
	virtual void __fastcall Update(System::Classes::TCollectionItem* Item);
	
public:
	__fastcall TTMSFNCCloudMyCloudDataUsers(TTMSFNCCloudCustomMyCloudData* AOwner);
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	HIDESBASE TTMSFNCCloudMyCloudDataUser* __fastcall Add();
	HIDESBASE TTMSFNCCloudMyCloudDataUser* __fastcall Insert(int Index);
	__property TTMSFNCCloudMyCloudDataUser* Items[int Index] = {read=GetItems, write=SetItems/*, default*/};
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCCloudMyCloudDataUsers() { }
	
};

#pragma pack(pop)

struct DECLSPEC_DRECORD TTMSFNCCloudMyCloudDataMetaDataTypedItem
{
public:
	System::Rtti::TValue DataValue;
	System::Rtti::TValue DisplayValue;
};


enum DECLSPEC_DENUM TTMSFNCCloudMyCloudDataMetaDataTypedField : unsigned char { tfNone, tfRadioButton, tfComboBox, tfCheckBox };

typedef System::Generics::Collections::TList__1<TTMSFNCCloudMyCloudDataMetaDataTypedItem>* TTMSFNCCloudMyCloudDataMetaDataTypedValues;

class PASCALIMPLEMENTATION TTMSFNCCloudMyCloudDataMetaDataItem : public Fmx::Tmsfncclouddatastore::TTMSFNCCloudDataStoreMetaDataItem
{
	typedef Fmx::Tmsfncclouddatastore::TTMSFNCCloudDataStoreMetaDataItem inherited;
	
private:
	System::UnicodeString FFieldName;
	Data::Db::TFieldType FDataType;
	int FSize;
	bool FEnabled;
	System::UnicodeString FLabelText;
	__int64 FLookupTable;
	System::UnicodeString FMask;
	int FWidth;
	double FMaximum;
	int FOrder;
	System::TDateTime FMaximumDate;
	System::UnicodeString FLookupKeyField;
	System::UnicodeString FLookupField;
	bool FVisible;
	System::UnicodeString FDescription;
	double FMinimum;
	System::TDateTime FMinimumDate;
	System::Generics::Collections::TList__1<TTMSFNCCloudMyCloudDataMetaDataTypedItem>* FTypedValues;
	TTMSFNCCloudMyCloudDataMetaDataTypedField FTypedField;
	System::UnicodeString FDefaultValue;
	bool FRequired;
	
public:
	__fastcall virtual TTMSFNCCloudMyCloudDataMetaDataItem(System::Classes::TCollection* Collection);
	__fastcall virtual ~TTMSFNCCloudMyCloudDataMetaDataItem();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	virtual void __fastcall FromJSON(System::Json::TJSONValue* jo);
	__property System::Generics::Collections::TList__1<TTMSFNCCloudMyCloudDataMetaDataTypedItem>* TypedValues = {read=FTypedValues};
	
__published:
	__property System::UnicodeString FieldName = {read=FFieldName, write=FFieldName};
	__property System::UnicodeString LabelText = {read=FLabelText, write=FLabelText};
	__property System::UnicodeString DefaultValue = {read=FDefaultValue, write=FDefaultValue};
	__property int Width = {read=FWidth, write=FWidth, nodefault};
	__property int Order = {read=FOrder, write=FOrder, nodefault};
	__property System::UnicodeString Mask = {read=FMask, write=FMask};
	__property double Minimum = {read=FMinimum, write=FMinimum};
	__property double Maximum = {read=FMaximum, write=FMaximum};
	__property System::TDateTime MinimumDate = {read=FMinimumDate, write=FMinimumDate};
	__property System::TDateTime MaximumDate = {read=FMaximumDate, write=FMaximumDate};
	__property bool Visible = {read=FVisible, write=FVisible, default=1};
	__property bool Enabled = {read=FEnabled, write=FEnabled, default=1};
	__property bool Required = {read=FRequired, write=FRequired, default=0};
	__property System::UnicodeString Description = {read=FDescription, write=FDescription};
	__property __int64 LookupTable = {read=FLookupTable, write=FLookupTable};
	__property System::UnicodeString LookupField = {read=FLookupField, write=FLookupField};
	__property System::UnicodeString LookupKeyField = {read=FLookupKeyField, write=FLookupKeyField};
	__property TTMSFNCCloudMyCloudDataMetaDataTypedField TypedField = {read=FTypedField, write=FTypedField, nodefault};
};


#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudMyCloudDataMetaData : public Fmx::Tmsfncclouddatastore::TTMSFNCCloudDataStoreMetaData
{
	typedef Fmx::Tmsfncclouddatastore::TTMSFNCCloudDataStoreMetaData inherited;
	
public:
	TTMSFNCCloudMyCloudDataMetaDataItem* operator[](int Index) { return this->Items[Index]; }
	
private:
	HIDESBASE TTMSFNCCloudMyCloudDataMetaDataItem* __fastcall GetItems(int Index);
	HIDESBASE void __fastcall SetItems(int Index, TTMSFNCCloudMyCloudDataMetaDataItem* const Value);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall GetItemClass();
	virtual int __fastcall Compare(System::Classes::TCollectionItem* Item1, System::Classes::TCollectionItem* Item2);
	void __fastcall QuickSort(int L, int R);
	
public:
	HIDESBASE TTMSFNCCloudMyCloudDataMetaDataItem* __fastcall Add()/* overload */;
	HIDESBASE TTMSFNCCloudMyCloudDataMetaDataItem* __fastcall Add(System::UnicodeString PropertyName, Data::Db::TFieldType DataType, int Size = 0x0)/* overload */;
	HIDESBASE TTMSFNCCloudMyCloudDataMetaDataItem* __fastcall Insert(int Index);
	__property TTMSFNCCloudMyCloudDataMetaDataItem* Items[int Index] = {read=GetItems, write=SetItems/*, default*/};
	HIDESBASE TTMSFNCCloudMyCloudDataMetaDataItem* __fastcall GetMetaDataItemByName(System::UnicodeString AName);
	HIDESBASE void __fastcall Sort();
public:
	/* TTMSFNCCloudDataStoreMetaData.Create */ inline __fastcall TTMSFNCCloudMyCloudDataMetaData(Fmx::Tmsfncclouddatastore::TTMSFNCCustomCloudDataStore* AOwner) : Fmx::Tmsfncclouddatastore::TTMSFNCCloudDataStoreMetaData(AOwner) { }
	
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCCloudMyCloudDataMetaData() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudMyCloudDataBlob : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	TTMSFNCCloudCustomMyCloudData* FDataStore;
	TTMSFNCCloudMyCloudDataTable* FTable;
	TTMSFNCCloudMyCloudDataEntity* FEntity;
	System::UnicodeString FField;
	
public:
	__fastcall TTMSFNCCloudMyCloudDataBlob(Fmx::Tmsfncclouddatastore::TTMSFNCCustomCloudDataStore* ADataStore);
	__property TTMSFNCCloudMyCloudDataTable* Table = {read=FTable, write=FTable};
	__property TTMSFNCCloudMyCloudDataEntity* Entity = {read=FEntity, write=FEntity};
	__property System::UnicodeString Field = {read=FField, write=FField};
	void __fastcall LoadFromFile(System::UnicodeString AFileName);
	void __fastcall SaveToFile(System::UnicodeString AFileName);
	void __fastcall LoadFromStream(System::Classes::TStream* AStream);
	void __fastcall SaveToStream();
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTMSFNCCloudMyCloudDataBlob() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudMyCloudDataEntity : public Fmx::Tmsfncclouddatastore::TTMSFNCCloudDataStoreEntity
{
	typedef Fmx::Tmsfncclouddatastore::TTMSFNCCloudDataStoreEntity inherited;
	
private:
	TTMSFNCCloudMyCloudDataBlob* FBlob;
	System::Rtti::TValue __fastcall GetValue(System::UnicodeString AName);
	void __fastcall SetValue(System::UnicodeString AName, const System::Rtti::TValue &Value);
	TTMSFNCCloudMyCloudDataBlob* __fastcall GetBlob(System::UnicodeString AName);
	__int64 __fastcall GetIntID();
	System::UnicodeString __fastcall GetValueAsString(System::UnicodeString AName);
	
public:
	__fastcall virtual TTMSFNCCloudMyCloudDataEntity(System::Classes::TCollection* Collection);
	__fastcall virtual ~TTMSFNCCloudMyCloudDataEntity();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	virtual void __fastcall FromJSON(System::Json::TJSONValue* jo);
	__property System::Rtti::TValue Value[System::UnicodeString AName] = {read=GetValue, write=SetValue};
	__property System::UnicodeString ValueAsString[System::UnicodeString AName] = {read=GetValueAsString};
	__property TTMSFNCCloudMyCloudDataBlob* Blob[System::UnicodeString AName] = {read=GetBlob};
	void __fastcall Update();
	void __fastcall Insert();
	void __fastcall Delete();
	__property __int64 IntID = {read=GetIntID};
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudMyCloudDataEntities : public Fmx::Tmsfncclouddatastore::TTMSFNCCloudDataStoreEntities
{
	typedef Fmx::Tmsfncclouddatastore::TTMSFNCCloudDataStoreEntities inherited;
	
public:
	TTMSFNCCloudMyCloudDataEntity* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCCloudMyCloudDataTable* FTable;
	HIDESBASE TTMSFNCCloudMyCloudDataEntity* __fastcall GetItems(int Index);
	HIDESBASE void __fastcall SetItems(int Index, TTMSFNCCloudMyCloudDataEntity* const Value);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall GetItemClass();
	__property TTMSFNCCloudMyCloudDataTable* Table = {read=FTable, write=FTable};
	
public:
	HIDESBASE TTMSFNCCloudMyCloudDataEntity* __fastcall Add();
	HIDESBASE TTMSFNCCloudMyCloudDataEntity* __fastcall Insert(int Index);
	__property TTMSFNCCloudMyCloudDataEntity* Items[int Index] = {read=GetItems, write=SetItems/*, default*/};
public:
	/* TTMSFNCCloudDataStoreEntities.Create */ inline __fastcall TTMSFNCCloudMyCloudDataEntities(Fmx::Tmsfncclouddatastore::TTMSFNCCustomCloudDataStore* AOwner) : Fmx::Tmsfncclouddatastore::TTMSFNCCloudDataStoreEntities(AOwner) { }
	
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCCloudMyCloudDataEntities() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudMyCloudDataShare : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	System::UnicodeString FEmail;
	TTMSFNCCLoudMyCloudDataPermissions FPermissions;
	
public:
	__fastcall virtual TTMSFNCCloudMyCloudDataShare(System::Classes::TCollection* Collection);
	__fastcall virtual ~TTMSFNCCloudMyCloudDataShare();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	void __fastcall GetFromJSON(System::Json::TJSONObject* jo);
	__property System::UnicodeString Email = {read=FEmail};
	__property TTMSFNCCLoudMyCloudDataPermissions Permissions = {read=FPermissions, nodefault};
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudMyCloudDataShares : public System::Classes::TOwnedCollection
{
	typedef System::Classes::TOwnedCollection inherited;
	
public:
	TTMSFNCCloudMyCloudDataShare* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCCloudMyCloudDataTable* FTable;
	TTMSFNCCloudMyCloudDataShare* __fastcall GetItems(int Index);
	void __fastcall SetItems(int Index, TTMSFNCCloudMyCloudDataShare* const Value);
	
protected:
	__property TTMSFNCCloudMyCloudDataTable* Table = {read=FTable, write=FTable};
	TTMSFNCCloudMyCloudDataShare* __fastcall AddInt();
	
public:
	__fastcall TTMSFNCCloudMyCloudDataShares(System::Classes::TPersistent* AOwner);
	HIDESBASE TTMSFNCCloudMyCloudDataShare* __fastcall Add();
	HIDESBASE TTMSFNCCloudMyCloudDataShare* __fastcall Insert(int Index);
	__property TTMSFNCCloudMyCloudDataShare* Items[int Index] = {read=GetItems, write=SetItems/*, default*/};
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCCloudMyCloudDataShares() { }
	
};

#pragma pack(pop)

class PASCALIMPLEMENTATION TTMSFNCCloudMyCloudDataLookupFieldValue : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	System::Rtti::TValue FKeyValue;
	System::Rtti::TValue FLookupValue;
	int FTag;
	
public:
	__fastcall virtual TTMSFNCCloudMyCloudDataLookupFieldValue(System::Classes::TCollection* Collection);
	__fastcall virtual ~TTMSFNCCloudMyCloudDataLookupFieldValue();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__property System::Rtti::TValue KeyValue = {read=FKeyValue};
	__property System::Rtti::TValue LookupValue = {read=FLookupValue};
	__property int Tag = {read=FTag, write=FTag, nodefault};
};


#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudMyCloudDataLookupFieldValues : public System::Classes::TOwnedCollection
{
	typedef System::Classes::TOwnedCollection inherited;
	
public:
	TTMSFNCCloudMyCloudDataLookupFieldValue* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCCloudMyCloudDataLookupField* FLookupField;
	TTMSFNCCloudMyCloudDataLookupFieldValue* __fastcall GetItems(int Index);
	void __fastcall SetItems(int Index, TTMSFNCCloudMyCloudDataLookupFieldValue* const Value);
	System::Rtti::TValue __fastcall GetLookupValues(const System::Rtti::TValue &AKey);
	
protected:
	__property TTMSFNCCloudMyCloudDataLookupField* LookupField = {read=FLookupField, write=FLookupField};
	
public:
	__fastcall TTMSFNCCloudMyCloudDataLookupFieldValues(System::Classes::TPersistent* AOwner);
	HIDESBASE TTMSFNCCloudMyCloudDataLookupFieldValue* __fastcall Add();
	HIDESBASE TTMSFNCCloudMyCloudDataLookupFieldValue* __fastcall Insert(int Index);
	__property TTMSFNCCloudMyCloudDataLookupFieldValue* Items[int Index] = {read=GetItems, write=SetItems/*, default*/};
	__property System::Rtti::TValue LookupValues[System::Rtti::TValue AKey] = {read=GetLookupValues};
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCCloudMyCloudDataLookupFieldValues() { }
	
};

#pragma pack(pop)

class PASCALIMPLEMENTATION TTMSFNCCloudMyCloudDataLookupField : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	__int64 FTableID;
	System::UnicodeString FLookupField;
	TTMSFNCCloudMyCloudDataLookupFieldValues* FLookupFieldValues;
	
public:
	__fastcall virtual TTMSFNCCloudMyCloudDataLookupField(System::Classes::TCollection* Collection);
	__fastcall virtual ~TTMSFNCCloudMyCloudDataLookupField();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__property System::UnicodeString LookupField = {read=FLookupField, write=FLookupField};
	__property __int64 TableID = {read=FTableID, write=FTableID};
	__property TTMSFNCCloudMyCloudDataLookupFieldValues* LookupFieldValues = {read=FLookupFieldValues};
};


#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudMyCloudDataLookupFieldList : public System::Classes::TOwnedCollection
{
	typedef System::Classes::TOwnedCollection inherited;
	
public:
	TTMSFNCCloudMyCloudDataLookupField* operator[](int Index) { return this->Items[Index]; }
	
private:
	System::Classes::TStringList* FList;
	TTMSFNCCloudMyCloudDataTable* FTable;
	TTMSFNCCloudMyCloudDataLookupField* __fastcall GetItems(int Index);
	void __fastcall SetItems(int Index, TTMSFNCCloudMyCloudDataLookupField* const Value);
	TTMSFNCCloudMyCloudDataLookupFieldValues* __fastcall GetField(System::UnicodeString AFieldName);
	System::Classes::TStringList* __fastcall GetList(System::UnicodeString AFieldName);
	
protected:
	__property TTMSFNCCloudMyCloudDataTable* Table = {read=FTable, write=FTable};
	
public:
	__fastcall TTMSFNCCloudMyCloudDataLookupFieldList(System::Classes::TPersistent* AOwner);
	__fastcall virtual ~TTMSFNCCloudMyCloudDataLookupFieldList();
	HIDESBASE TTMSFNCCloudMyCloudDataLookupField* __fastcall Add();
	HIDESBASE TTMSFNCCloudMyCloudDataLookupField* __fastcall Insert(int Index);
	__property TTMSFNCCloudMyCloudDataLookupField* Items[int Index] = {read=GetItems, write=SetItems/*, default*/};
	__property TTMSFNCCloudMyCloudDataLookupFieldValues* Field[System::UnicodeString AFieldName] = {read=GetField};
	__property System::Classes::TStringList* List[System::UnicodeString AFieldName] = {read=GetList};
};

#pragma pack(pop)

typedef System::DynamicArray<System::UnicodeString> TStringArray;

class PASCALIMPLEMENTATION TTMSFNCCloudMyCloudDataTable : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	TTMSFNCCloudMyCloudDataTables* FOwner;
	TTMSFNCCLoudMyCloudDataPermissions FPermissions;
	__int64 FID;
	__int64 FOwnerID;
	bool FIsOwner;
	System::UnicodeString FName;
	TTMSFNCCloudMyCloudDataMetaData* FMetaData;
	TTMSFNCCloudMyCloudDataEntities* FEntities;
	TTMSFNCCloudMyCloudDataFilters* FFilters;
	TTMSFNCCloudMyCloudDataSortOrderList* FSortOrder;
	TTMSFNCCloudMyCloudDataShares* FShares;
	TTMSFNCCloudMyCloudDataLookupFieldList* FLookupFieldList;
	void __fastcall SetName(const System::UnicodeString Value);
	
protected:
	virtual System::UnicodeString __fastcall GetDisplayName();
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	TTMSFNCCloudCustomMyCloudData* __fastcall DataStore();
	
public:
	__fastcall virtual TTMSFNCCloudMyCloudDataTable(System::Classes::TCollection* Collection);
	__fastcall virtual ~TTMSFNCCloudMyCloudDataTable();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__property TTMSFNCCloudMyCloudDataMetaData* MetaData = {read=FMetaData};
	__property TTMSFNCCloudMyCloudDataEntities* Entities = {read=FEntities};
	__property TTMSFNCCloudMyCloudDataFilters* Filters = {read=FFilters};
	__property TTMSFNCCloudMyCloudDataSortOrderList* SortOrder = {read=FSortOrder};
	__property TTMSFNCCloudMyCloudDataLookupFieldList* LookupFieldList = {read=FLookupFieldList};
	void __fastcall GetMetaData();
	void __fastcall SetMetaData();
	void __fastcall GetLookupData();
	TTMSFNCCloudMyCloudDataEntity* __fastcall EntityByID(__int64 AID);
	void __fastcall Query(int APageSize = 0xffffffff, int APageIdx = 0xffffffff)/* overload */;
	void __fastcall Query(TStringArray AFields, int APageSize = 0xffffffff, int APageIdx = 0xffffffff)/* overload */;
	void __fastcall Query(System::Classes::TStringList* AFields, int APageSize = 0xffffffff, int APageIdx = 0xffffffff)/* overload */;
	void __fastcall Share(System::UnicodeString AEmail, TTMSFNCCLoudMyCloudDataPermissions APermissions);
	void __fastcall RemoveShare(System::UnicodeString AEmail);
	void __fastcall Delete();
	void __fastcall GetShares();
	__property TTMSFNCCLoudMyCloudDataPermissions Permissions = {read=FPermissions, nodefault};
	__property __int64 ID = {read=FID};
	__property __int64 OwnerID = {read=FOwnerID};
	__property bool IsOwner = {read=FIsOwner, nodefault};
	__property System::UnicodeString Name = {read=FName, write=SetName};
};


#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudMyCloudDataTables : public System::Classes::TCollection
{
	typedef System::Classes::TCollection inherited;
	
public:
	TTMSFNCCloudMyCloudDataTable* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCCloudCustomMyCloudData* FOwner;
	TTMSFNCCloudMyCloudDataTable* __fastcall GetItems(int Index);
	void __fastcall SetItems(int Index, TTMSFNCCloudMyCloudDataTable* const Value);
	Fmx::Tmsfncclouddatastore::TTMSFNCCustomCloudDataStore* __fastcall GetDataStore();
	
protected:
	virtual void __fastcall Update(System::Classes::TCollectionItem* Item);
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	
public:
	__fastcall TTMSFNCCloudMyCloudDataTables(TTMSFNCCloudCustomMyCloudData* AOwner);
	__fastcall virtual ~TTMSFNCCloudMyCloudDataTables();
	HIDESBASE TTMSFNCCloudMyCloudDataTable* __fastcall Add();
	HIDESBASE TTMSFNCCloudMyCloudDataTable* __fastcall Insert(int Index);
	__property TTMSFNCCloudMyCloudDataTable* Items[int Index] = {read=GetItems, write=SetItems/*, default*/};
	__property Fmx::Tmsfncclouddatastore::TTMSFNCCustomCloudDataStore* DataStore = {read=GetDataStore};
};

#pragma pack(pop)

typedef void __fastcall (__closure *TTMSFNCCloudMyCloudDataFiltersEvent)(System::TObject* Sender, TTMSFNCCloudMyCloudDataFilters* &AFilters);

class PASCALIMPLEMENTATION TTMSFNCCloudCustomMyCloudData : public Fmx::Tmsfncclouddatastore::TTMSFNCCustomCloudDataStore
{
	typedef Fmx::Tmsfncclouddatastore::TTMSFNCCustomCloudDataStore inherited;
	
private:
	System::UnicodeString FBasePath;
	System::UnicodeString FAPIVersion;
	int FPageIndex;
	TTMSFNCCloudMyCloudDataUsers* FUsers;
	TTMSFNCCloudMyCloudDataTables* FTables;
	__int64 FTableId;
	System::UnicodeString FTableIdStr;
	System::Classes::TStringList* FTableList;
	TTMSFNCCloudMyCloudDataFiltersEvent FOnGetFilter;
	TTMSFNCCloudMyCloudDataUser* FUser;
	TTMSFNCCloudMyCloudDataTablesEvent FOnGetTables;
	TTMSFNCCloudMyCloudDataTableEvent FOnAddTable;
	Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseCompleteEvent FOnDeleteTable;
	TTMSFNCCloudMyCloudDataTableEvent FOnUpdateTable;
	TTMSFNCCloudMyCloudDataTableEvent FOnShareTable;
	TTMSFNCCloudMyCloudDataTableEvent FOnGetTableShares;
	TTMSFNCCloudMyCloudDataMetaDataEvent FOnGetMetaData;
	Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseCompleteEvent FOnAddMetaData;
	Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseCompleteEvent FOnUpdateMetaData;
	Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseCompleteEvent FOnDeleteMetaData;
	TTMSFNCCloudMyCloudDataEntityEvent FOnInsert;
	TTMSFNCCloudMyCloudDataEntitiesEvent FOnQuery;
	Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseCompleteEvent FOnDelete;
	Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseCompleteEvent FOnDeleteAll;
	TTMSFNCCloudMyCloudDataEntityEvent FOnUpdate;
	Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseCompleteEvent FOnDownload;
	TTMSFNCCloudMyCloudDataTableEvent FOnGetLookupData;
	TTMSFNCCloudMyCloudDataStreamEvent FOnDownloadStream;
	TTMSFNCCloudMyCloudDataUsersEvent FOnGetUsers;
	TTMSFNCCloudMyCloudDataUserEvent FOngetUser;
	TTMSFNCCloudMyCloudDataUserEvent FOnAddUser;
	Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseCompleteEvent FOnDeleteUser;
	void __fastcall SetTableId(const __int64 Value);
	
protected:
	virtual System::UnicodeString __fastcall GetVersion();
	virtual void __fastcall RetrieveAccessToken();
	virtual System::UnicodeString __fastcall GetAuthenticationURL();
	void __fastcall DoGetTables(TTMSFNCCloudMyCloudDataTables* const AInfo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoAddTable(TTMSFNCCloudMyCloudDataTable* const AInfo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoUpdateTable(TTMSFNCCloudMyCloudDataTable* const AInfo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoShareTable(TTMSFNCCloudMyCloudDataTable* const AInfo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoGetTableShares(TTMSFNCCloudMyCloudDataTable* const AInfo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoDeleteTable(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoGetMetaData(TTMSFNCCloudMyCloudDataMetaData* const AInfo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoAddMetaData(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoUpdateMetaData(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoDeleteMetaData(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoInsert(TTMSFNCCloudMyCloudDataEntity* const AInfo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoQuery(TTMSFNCCloudMyCloudDataEntities* const AInfo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoDelete(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoDeleteAll(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoUpdate(TTMSFNCCloudMyCloudDataEntity* const AInfo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoUpdateAll(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoDownload(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoDownloadAsStream(System::Classes::TStream* const AInfo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoUpload(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoGetLookupData(TTMSFNCCloudMyCloudDataTable* const AInfo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoGetUsers(TTMSFNCCloudMyCloudDataUsers* const AInfo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoGetUser(TTMSFNCCloudMyCloudDataUser* const AInfo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoAddUser(TTMSFNCCloudMyCloudDataUser* const AInfo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoDeleteUser(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestGetTables(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestAddTable(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestDeleteTable(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestUpdateTable(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestShareTable(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestGetTableShares(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestGetMetaData(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestAddMetaData(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestUpdateMetaData(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestUpdateMetaDataItem(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestDeleteMetaData(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestInsert(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestQuery(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestDelete(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestDeleteAll(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestUpdate(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestUpdateAll(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestDownload(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestDownloadAsStream(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestUpload(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestGetLookupData(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestGetUsers(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestGetUser(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestAddUser(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestDeleteUser(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoGetFilters(TTMSFNCCloudMyCloudDataFilters* &AFilters);
	virtual Fmx::Tmsfncclouddatastore::TTMSFNCCloudDataStoreEntities* __fastcall CreateDataStoreEntities();
	virtual Fmx::Tmsfncclouddatastore::TTMSFNCCloudDataStoreMetaData* __fastcall CreateDataStoreMetaData();
	virtual void __fastcall SetTable(System::UnicodeString AValue);
	bool __fastcall HttpsResult(System::UnicodeString Data);
	void __fastcall UpdateInt(Fmx::Tmsfncclouddatastore::TTMSFNCCloudDataStoreEntity* AEntity, bool Partial = false);
	void __fastcall UpdateAllInt(System::Classes::TStringList* AIDList, System::Classes::TStringList* AFieldValues, bool UpdateAll);
	TTMSFNCCloudMyCloudDataTable* __fastcall TableByNameInt(System::UnicodeString AName);
	System::UnicodeString __fastcall GetTableID();
	
public:
	__fastcall virtual TTMSFNCCloudCustomMyCloudData(System::Classes::TComponent* AOwner)/* overload */;
	__fastcall virtual ~TTMSFNCCloudCustomMyCloudData();
	virtual void __fastcall TestTokens(const Fmx::Tmsfnccloudbase::_di_TTMSFNCCloudBaseRequestResultEvent ATestTokensRequestResultEvent = Fmx::Tmsfnccloudbase::_di_TTMSFNCCloudBaseRequestResultEvent());
	virtual bool __fastcall GetTestTokensResult(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	__classmethod System::UnicodeString __fastcall StrNumToJSON(System::UnicodeString s);
	__property __int64 TableId = {read=FTableId, write=SetTableId};
	void __fastcall GetTables();
	TTMSFNCCloudMyCloudDataTable* __fastcall ActiveTable();
	TTMSFNCCloudMyCloudDataTable* __fastcall TableByName(System::UnicodeString AName);
	TTMSFNCCloudMyCloudDataTable* __fastcall TableById(__int64 AId);
	System::Classes::TStrings* __fastcall TableList();
	void __fastcall AddTable(TTMSFNCCloudMyCloudDataTable* ATable);
	void __fastcall CreateTable(System::UnicodeString ATableName);
	void __fastcall DeleteTable(__int64 AID)/* overload */;
	void __fastcall DeleteTable(TTMSFNCCloudMyCloudDataTable* ATable)/* overload */;
	void __fastcall UpdateTable(TTMSFNCCloudMyCloudDataTable* ATable);
	void __fastcall ShareTable(TTMSFNCCloudMyCloudDataTable* ATable, System::UnicodeString AEmail, System::UnicodeString APermissions);
	void __fastcall GetTableShares(TTMSFNCCloudMyCloudDataTable* ATable);
	void __fastcall GetLookupData(TTMSFNCCloudMyCloudDataTable* ATable);
	virtual void __fastcall GetMetaData();
	void __fastcall AddMetaData(TTMSFNCCloudMyCloudDataMetaDataItem* AMetaData);
	void __fastcall UpdateMetaData(System::UnicodeString AOldFieldName, System::UnicodeString ANewFieldName, Data::Db::TFieldType ADataType = (Data::Db::TFieldType)(0x0), int ASize = 0xffffffff)/* overload */;
	void __fastcall UpdateMetaData(TTMSFNCCloudMyCloudDataMetaDataItem* AMetaData)/* overload */;
	void __fastcall DeleteMetaData(System::UnicodeString APropertyName);
	virtual void __fastcall Insert(System::Classes::TStringList* AValues)/* overload */;
	virtual void __fastcall Query(System::UnicodeString AName = System::UnicodeString())/* overload */;
	HIDESBASE void __fastcall Query(System::Classes::TStringList* AFields, System::UnicodeString AName = System::UnicodeString())/* overload */;
	HIDESBASE void __fastcall Query(System::Classes::TStringList* AFields, TTMSFNCCloudMyCloudDataFilters* AFilters, System::UnicodeString AName = System::UnicodeString())/* overload */;
	HIDESBASE void __fastcall Query(System::Classes::TStringList* AFields, TTMSFNCCloudMyCloudDataSortOrderList* ASortOrder, System::UnicodeString AName = System::UnicodeString())/* overload */;
	HIDESBASE void __fastcall Query(System::Classes::TStringList* AFields, TTMSFNCCloudMyCloudDataFilters* AFilters, TTMSFNCCloudMyCloudDataSortOrderList* ASortOrder, System::UnicodeString AName = System::UnicodeString())/* overload */;
	virtual void __fastcall Delete(System::UnicodeString AID)/* overload */;
	HIDESBASE void __fastcall Delete(System::Classes::TStringList* AIDList)/* overload */;
	void __fastcall DeleteAll();
	virtual void __fastcall Update(Fmx::Tmsfncclouddatastore::TTMSFNCCloudDataStoreEntity* AEntity)/* overload */;
	HIDESBASE void __fastcall Update(System::Classes::TStringList* AIDList, System::Classes::TStringList* AFieldValues)/* overload */;
	void __fastcall UpdateAll(System::Classes::TStringList* AFieldValues);
	void __fastcall Download(__int64 ATableID, __int64 AEntityId, System::UnicodeString AFieldName, const System::UnicodeString ATargetFile)/* overload */;
	void __fastcall DownloadAsStream(__int64 ATableID, __int64 AEntityId, System::UnicodeString AFieldName)/* overload */;
	void __fastcall Upload(__int64 ATableID, __int64 AEntityId, System::UnicodeString AFieldName, System::UnicodeString AFileName)/* overload */;
	void __fastcall Upload(__int64 ATableID, __int64 AEntityId, System::UnicodeString AFieldName, System::Classes::TStream* AStream)/* overload */;
	void __fastcall GetUsers();
	void __fastcall GetUser();
	void __fastcall AddUser(TTMSFNCCloudMyCloudDataUser* AUser);
	void __fastcall DeleteUser(__int64 AID);
	__property TTMSFNCCloudMyCloudDataUsers* Users = {read=FUsers, write=FUsers};
	__property TTMSFNCCloudMyCloudDataTables* Tables = {read=FTables, write=FTables};
	__property TTMSFNCCloudMyCloudDataUser* User = {read=FUser, write=FUser};
	__property int PageIndex = {read=FPageIndex, write=FPageIndex, default=-1};
	
__published:
	__property TTMSFNCCloudMyCloudDataFiltersEvent OnGetFilter = {read=FOnGetFilter, write=FOnGetFilter};
	__property TTMSFNCCloudMyCloudDataTablesEvent OnGetTables = {read=FOnGetTables, write=FOnGetTables};
	__property TTMSFNCCloudMyCloudDataTableEvent OnAddTable = {read=FOnAddTable, write=FOnAddTable};
	__property TTMSFNCCloudMyCloudDataTableEvent OnUpdateTable = {read=FOnUpdateTable, write=FOnUpdateTable};
	__property TTMSFNCCloudMyCloudDataTableEvent OnShareTable = {read=FOnShareTable, write=FOnShareTable};
	__property Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseCompleteEvent OnDeleteTable = {read=FOnDeleteTable, write=FOnDeleteTable};
	__property TTMSFNCCloudMyCloudDataTableEvent OnGetTableShares = {read=FOnGetTableShares, write=FOnGetTableShares};
	__property TTMSFNCCloudMyCloudDataMetaDataEvent OnGetMetaData = {read=FOnGetMetaData, write=FOnGetMetaData};
	__property Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseCompleteEvent OnAddMetaData = {read=FOnAddMetaData, write=FOnAddMetaData};
	__property Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseCompleteEvent OnUpdateMetaData = {read=FOnUpdateMetaData, write=FOnUpdateMetaData};
	__property Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseCompleteEvent OnDeleteMetaData = {read=FOnDeleteMetaData, write=FOnDeleteMetaData};
	__property TTMSFNCCloudMyCloudDataEntityEvent OnInsert = {read=FOnInsert, write=FOnInsert};
	__property TTMSFNCCloudMyCloudDataEntitiesEvent OnQuery = {read=FOnQuery, write=FOnQuery};
	__property Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseCompleteEvent OnDelete = {read=FOnDelete, write=FOnDelete};
	__property Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseCompleteEvent OnDeleteAll = {read=FOnDeleteAll, write=FOnDeleteAll};
	__property TTMSFNCCloudMyCloudDataEntityEvent OnUpdate = {read=FOnUpdate, write=FOnUpdate};
	__property Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseCompleteEvent OnUpdateAll = {read=FOnDelete, write=FOnDelete};
	__property Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseCompleteEvent OnDownload = {read=FOnDownload, write=FOnDownload};
	__property TTMSFNCCloudMyCloudDataStreamEvent OnDownloadStream = {read=FOnDownloadStream, write=FOnDownloadStream};
	__property Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseCompleteEvent OnUpload = {read=FOnDownload, write=FOnDownload};
	__property TTMSFNCCloudMyCloudDataTableEvent OnGetLookupData = {read=FOnGetLookupData, write=FOnGetLookupData};
	__property TTMSFNCCloudMyCloudDataUsersEvent OnGetUsers = {read=FOnGetUsers, write=FOnGetUsers};
	__property TTMSFNCCloudMyCloudDataUserEvent OnGetUser = {read=FOngetUser, write=FOngetUser};
	__property TTMSFNCCloudMyCloudDataUserEvent OnAddUser = {read=FOnAddUser, write=FOnAddUser};
	__property Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseCompleteEvent OnDeleteUser = {read=FOnDeleteUser, write=FOnDeleteUser};
public:
	/* TTMSFNCCustomCloudOAuth.Create */ inline __fastcall virtual TTMSFNCCloudCustomMyCloudData()/* overload */ : Fmx::Tmsfncclouddatastore::TTMSFNCCustomCloudDataStore() { }
	
	/* Hoisted overloads: */
	
public:
	inline void __fastcall  Query(){ Fmx::Tmsfncclouddatastore::TTMSFNCCustomCloudDataStore::Query(); }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudMyCloudData : public TTMSFNCCloudCustomMyCloudData
{
	typedef TTMSFNCCloudCustomMyCloudData inherited;
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
public:
	/* TTMSFNCCloudCustomMyCloudData.Create */ inline __fastcall virtual TTMSFNCCloudMyCloudData(System::Classes::TComponent* AOwner)/* overload */ : TTMSFNCCloudCustomMyCloudData(AOwner) { }
	/* TTMSFNCCloudCustomMyCloudData.Destroy */ inline __fastcall virtual ~TTMSFNCCloudMyCloudData() { }
	
public:
	/* TTMSFNCCustomCloudOAuth.Create */ inline __fastcall virtual TTMSFNCCloudMyCloudData()/* overload */ : TTMSFNCCloudCustomMyCloudData() { }
	
};


//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x0);
static constexpr System::Int8 BLD_VER = System::Int8(0x0);
#define TMyCloudDataPermissionsAll (System::Set<TTMSFNCCLoudMyCloudDataPermission, TTMSFNCCLoudMyCloudDataPermission::pCreate, TTMSFNCCLoudMyCloudDataPermission::pDelete>() << TTMSFNCCLoudMyCloudDataPermission::pCreate << TTMSFNCCLoudMyCloudDataPermission::pRead << TTMSFNCCLoudMyCloudDataPermission::pUpdate << TTMSFNCCLoudMyCloudDataPermission::pDelete )
extern DELPHI_PACKAGE System::UnicodeString __fastcall ValueToString(const System::Rtti::TValue &Value);
extern DELPHI_PACKAGE System::UnicodeString __fastcall PermissionsToString(TTMSFNCCLoudMyCloudDataPermissions Permissions);
extern DELPHI_PACKAGE TTMSFNCCLoudMyCloudDataPermissions __fastcall StringToPermissions(System::UnicodeString Permissions);
}	/* namespace Tmsfnccloudmyclouddata */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCCLOUDMYCLOUDDATA)
using namespace Fmx::Tmsfnccloudmyclouddata;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfnccloudmyclouddataHPP
