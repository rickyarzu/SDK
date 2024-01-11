// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCCloudCloudKit.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfnccloudcloudkitHPP
#define Fmx_TmsfnccloudcloudkitHPP

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
#include <FMX.TMSFNCCloudDataStore.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.TMSFNCUtils.hpp>
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
namespace Tmsfnccloudcloudkit
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCCloudCloudKitMetaDataItem;
class DELPHICLASS TTMSFNCCloudCloudKitMetaData;
class DELPHICLASS TTMSFNCCloudCloudKitEntity;
class DELPHICLASS TTMSFNCCloudCloudKitEntities;
class DELPHICLASS TTMSFNCCustomCloudCloudKit;
class DELPHICLASS TTMSFNCCloudCloudKit;
//-- type declarations -------------------------------------------------------
enum DECLSPEC_DENUM TTMSFNCCloudCloudKitEnvironment : unsigned char { ceDevelopment, ceProduction };

enum DECLSPEC_DENUM TTMSFNCCloudCloudKitAccess : unsigned char { caPrivate, caPublic };

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudCloudKitMetaDataItem : public Fmx::Tmsfncclouddatastore::TTMSFNCCloudDataStoreMetaDataItem
{
	typedef Fmx::Tmsfncclouddatastore::TTMSFNCCloudDataStoreMetaDataItem inherited;
	
public:
	__fastcall virtual TTMSFNCCloudCloudKitMetaDataItem(System::Classes::TCollection* Collection);
	__fastcall virtual ~TTMSFNCCloudCloudKitMetaDataItem();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	virtual void __fastcall FromJSON(System::Json::TJSONValue* jo);
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudCloudKitMetaData : public Fmx::Tmsfncclouddatastore::TTMSFNCCloudDataStoreMetaData
{
	typedef Fmx::Tmsfncclouddatastore::TTMSFNCCloudDataStoreMetaData inherited;
	
public:
	TTMSFNCCloudCloudKitMetaDataItem* operator[](int Index) { return this->Items[Index]; }
	
private:
	HIDESBASE TTMSFNCCloudCloudKitMetaDataItem* __fastcall GetItems(int Index);
	HIDESBASE void __fastcall SetItems(int Index, TTMSFNCCloudCloudKitMetaDataItem* const Value);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall GetItemClass();
	
public:
	HIDESBASE TTMSFNCCloudCloudKitMetaDataItem* __fastcall Add();
	HIDESBASE TTMSFNCCloudCloudKitMetaDataItem* __fastcall Insert(int Index);
	__property TTMSFNCCloudCloudKitMetaDataItem* Items[int Index] = {read=GetItems, write=SetItems/*, default*/};
public:
	/* TTMSFNCCloudDataStoreMetaData.Create */ inline __fastcall TTMSFNCCloudCloudKitMetaData(Fmx::Tmsfncclouddatastore::TTMSFNCCustomCloudDataStore* AOwner) : Fmx::Tmsfncclouddatastore::TTMSFNCCloudDataStoreMetaData(AOwner) { }
	
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCCloudCloudKitMetaData() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudCloudKitEntity : public Fmx::Tmsfncclouddatastore::TTMSFNCCloudDataStoreEntity
{
	typedef Fmx::Tmsfncclouddatastore::TTMSFNCCloudDataStoreEntity inherited;
	
public:
	__fastcall virtual TTMSFNCCloudCloudKitEntity(System::Classes::TCollection* Collection);
	__fastcall virtual ~TTMSFNCCloudCloudKitEntity();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	virtual void __fastcall FromJSON(System::Json::TJSONValue* jo);
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudCloudKitEntities : public Fmx::Tmsfncclouddatastore::TTMSFNCCloudDataStoreEntities
{
	typedef Fmx::Tmsfncclouddatastore::TTMSFNCCloudDataStoreEntities inherited;
	
public:
	TTMSFNCCloudCloudKitEntity* operator[](int Index) { return this->Items[Index]; }
	
private:
	HIDESBASE TTMSFNCCloudCloudKitEntity* __fastcall GetItems(int Index);
	HIDESBASE void __fastcall SetItems(int Index, TTMSFNCCloudCloudKitEntity* const Value);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall GetItemClass();
	
public:
	HIDESBASE TTMSFNCCloudCloudKitEntity* __fastcall Add();
	HIDESBASE TTMSFNCCloudCloudKitEntity* __fastcall Insert(int Index);
	__property TTMSFNCCloudCloudKitEntity* Items[int Index] = {read=GetItems, write=SetItems/*, default*/};
public:
	/* TTMSFNCCloudDataStoreEntities.Create */ inline __fastcall TTMSFNCCloudCloudKitEntities(Fmx::Tmsfncclouddatastore::TTMSFNCCustomCloudDataStore* AOwner) : Fmx::Tmsfncclouddatastore::TTMSFNCCloudDataStoreEntities(AOwner) { }
	
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCCloudCloudKitEntities() { }
	
};

#pragma pack(pop)

typedef void __fastcall (__closure *TTMSFNCCloudCloudKitDeleteEvent)(System::TObject* Sender, const System::UnicodeString AID, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudCloudKitInsertEvent)(System::TObject* Sender, Fmx::Tmsfncclouddatastore::TTMSFNCCloudDataStoreEntity* const AEntity, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudCloudKitUpdateEvent)(System::TObject* Sender, Fmx::Tmsfncclouddatastore::TTMSFNCCloudDataStoreEntity* const AEntity, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudCloudKitQueryEvent)(System::TObject* Sender, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudCloudKitQueryCompleteEvent)(System::TObject* Sender, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCustomCloudCloudKit : public Fmx::Tmsfncclouddatastore::TTMSFNCCustomCloudDataStore
{
	typedef Fmx::Tmsfncclouddatastore::TTMSFNCCustomCloudDataStore inherited;
	
private:
	System::UnicodeString FPageID;
	System::UnicodeString FAuthURL;
	TTMSFNCCloudCloudKitEnvironment FEnvironment;
	TTMSFNCCloudCloudKitAccess FAccess;
	TTMSFNCCloudCloudKitUpdateEvent FOnUpdate;
	TTMSFNCCloudCloudKitDeleteEvent FOnDelete;
	TTMSFNCCloudCloudKitInsertEvent FOnInsert;
	TTMSFNCCloudCloudKitQueryEvent FOnQuery;
	TTMSFNCCloudCloudKitQueryCompleteEvent FOnQueryComplete;
	
protected:
	virtual System::UnicodeString __fastcall GetVersion();
	virtual System::UnicodeString __fastcall GetAuthenticationURL();
	virtual Fmx::Tmsfnccloudoauth::TTMSFNCCloudOAuthServiceStringArray __fastcall GetAuthenticationDetailsLabels();
	virtual Fmx::Tmsfnccloudoauth::TTMSFNCCloudOAuthServiceStringArray __fastcall GetAuthenticationDetailsValues();
	virtual System::UnicodeString __fastcall FindAccessToken(const System::UnicodeString ACallBackURLResult);
	System::UnicodeString __fastcall GetEnvironment();
	System::UnicodeString __fastcall GetAccess();
	virtual Fmx::Tmsfncclouddatastore::TTMSFNCCloudDataStoreEntities* __fastcall CreateDataStoreEntities();
	virtual Fmx::Tmsfncclouddatastore::TTMSFNCCloudDataStoreMetaData* __fastcall CreateDataStoreMetaData();
	virtual void __fastcall UpdateProperty(int AIndex, System::UnicodeString AValue);
	void __fastcall DoRequestDelete(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestInsert(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestUpdate(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestQuery(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoDelete(const System::UnicodeString AID, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoInsert(Fmx::Tmsfncclouddatastore::TTMSFNCCloudDataStoreEntity* const AEntity, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoUpdate(Fmx::Tmsfncclouddatastore::TTMSFNCCloudDataStoreEntity* const AEntity, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoQuery(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoQueryComplete(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall ProcessAuthentication();
	void __fastcall DoRequestProcessAuthentication(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall RetrieveAccessToken();
	void __fastcall QueryInt(System::UnicodeString APageID = System::UnicodeString());
	__property TTMSFNCCloudCloudKitEnvironment Environment = {read=FEnvironment, write=FEnvironment, default=0};
	__property TTMSFNCCloudCloudKitAccess Access = {read=FAccess, write=FAccess, default=1};
	__property TTMSFNCCloudCloudKitDeleteEvent OnDelete = {read=FOnDelete, write=FOnDelete};
	__property TTMSFNCCloudCloudKitInsertEvent OnInsert = {read=FOnInsert, write=FOnInsert};
	__property TTMSFNCCloudCloudKitUpdateEvent OnUpdate = {read=FOnUpdate, write=FOnUpdate};
	__property TTMSFNCCloudCloudKitQueryEvent OnQuery = {read=FOnQuery, write=FOnQuery};
	__property TTMSFNCCloudCloudKitQueryCompleteEvent OnQueryComplete = {read=FOnQueryComplete, write=FOnQueryComplete};
	
public:
	__fastcall virtual TTMSFNCCustomCloudCloudKit(System::Classes::TComponent* AOwner)/* overload */;
	__fastcall virtual ~TTMSFNCCustomCloudCloudKit();
	virtual bool __fastcall GetTestTokensResult(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall TestTokens(const Fmx::Tmsfnccloudbase::_di_TTMSFNCCloudBaseRequestResultEvent ATestTokensRequestResultEvent = Fmx::Tmsfnccloudbase::_di_TTMSFNCCloudBaseRequestResultEvent());
	virtual void __fastcall GetMetaData();
	virtual void __fastcall Insert(System::Classes::TStringList* AValues)/* overload */;
	virtual void __fastcall Query()/* overload */;
	virtual void __fastcall Update(Fmx::Tmsfncclouddatastore::TTMSFNCCloudDataStoreEntity* AEntity)/* overload */;
	virtual void __fastcall Delete(System::UnicodeString AID)/* overload */;
public:
	/* TTMSFNCCustomCloudOAuth.Create */ inline __fastcall virtual TTMSFNCCustomCloudCloudKit()/* overload */ : Fmx::Tmsfncclouddatastore::TTMSFNCCustomCloudDataStore() { }
	
	/* Hoisted overloads: */
	
public:
	inline void __fastcall  Query(System::UnicodeString AName){ Fmx::Tmsfncclouddatastore::TTMSFNCCustomCloudDataStore::Query(AName); }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudCloudKit : public TTMSFNCCustomCloudCloudKit
{
	typedef TTMSFNCCustomCloudCloudKit inherited;
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	
__published:
	__property OnDelete;
	__property OnInsert;
	__property OnUpdate;
	__property OnQuery;
	__property OnQueryComplete;
	__property Environment = {default=0};
	__property Access = {default=1};
	__property MetaData;
	__property Database = {default=0};
	__property Table = {default=0};
	__property Project = {default=0};
public:
	/* TTMSFNCCustomCloudCloudKit.Create */ inline __fastcall virtual TTMSFNCCloudCloudKit(System::Classes::TComponent* AOwner)/* overload */ : TTMSFNCCustomCloudCloudKit(AOwner) { }
	/* TTMSFNCCustomCloudCloudKit.Destroy */ inline __fastcall virtual ~TTMSFNCCloudCloudKit() { }
	
public:
	/* TTMSFNCCustomCloudOAuth.Create */ inline __fastcall virtual TTMSFNCCloudCloudKit()/* overload */ : TTMSFNCCustomCloudCloudKit() { }
	
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x0);
static constexpr System::Int8 BLD_VER = System::Int8(0x0);
}	/* namespace Tmsfnccloudcloudkit */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCCLOUDCLOUDKIT)
using namespace Fmx::Tmsfnccloudcloudkit;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfnccloudcloudkitHPP
