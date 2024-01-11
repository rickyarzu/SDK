// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCCloudGoogleFireBaseObject.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfnccloudgooglefirebaseobjectHPP
#define Fmx_TmsfnccloudgooglefirebaseobjectHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <FMX.TMSFNCCloudBase.hpp>
#include <FMX.TMSFNCCloudGoogleFireBase.hpp>
#include <FMX.TMSFNCPersistence.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <System.Generics.Collections.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>
#include <System.Types.hpp>
#include <FMX.TMSFNCCloudGoogle.hpp>
#include <FMX.TMSFNCCloudOAuth.hpp>
#include <FMX.TMSFNCCustomComponent.hpp>
#include <FMX.Controls.hpp>
#include <FMX.Types.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfnccloudgooglefirebaseobject
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCCloudGoogleFireBaseObject;
class DELPHICLASS TTMSFNCCustomCloudGoogleFireBaseObjectDatabase;
class DELPHICLASS TTMSFNCCloudGoogleFireBaseObjectDatabase;
//-- type declarations -------------------------------------------------------
#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudGoogleFireBaseObject : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	System::UnicodeString FID;
	
public:
	__fastcall virtual TTMSFNCCloudGoogleFireBaseObject();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property System::UnicodeString ID = {read=FID, write=FID};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTMSFNCCloudGoogleFireBaseObject() { }
	
};

#pragma pack(pop)

_DECLARE_METACLASS(System::TMetaClass, TTMSFNCCloudGoogleFireBaseObjectClass);

typedef System::Generics::Collections::TObjectList__1<TTMSFNCCloudGoogleFireBaseObject*>* TTMSFNCCloudGoogleFireBaseObjectList;

typedef void __fastcall (__closure *TTMSFNCCloudGoogleFireBaseObjectMethod)(System::UnicodeString AID, System::UnicodeString AData);

typedef void __fastcall (__closure *TTMSFNCCloudGoogleFireBaseObjectOnReadDataListEvent)(System::TObject* Sender, System::Generics::Collections::TObjectList__1<TTMSFNCCloudGoogleFireBaseObject*>* const AList, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCustomCloudGoogleFireBaseObjectDatabase : public Fmx::Tmsfnccloudgooglefirebase::TTMSFNCCustomCloudGoogleFireBase
{
	typedef Fmx::Tmsfnccloudgooglefirebase::TTMSFNCCustomCloudGoogleFireBase inherited;
	
private:
	TTMSFNCCloudGoogleFireBaseObjectOnReadDataListEvent FOnReadDataList;
	
protected:
	virtual System::UnicodeString __fastcall GetVersion();
	void __fastcall ObjectToFireBase(TTMSFNCCloudGoogleFireBaseObject* AObject, bool AUpdate);
	TTMSFNCCloudGoogleFireBaseObject* __fastcall ParseJSON(System::UnicodeString AJSON);
	bool __fastcall ParseJSONList(System::UnicodeString AJSON, System::Generics::Collections::TObjectList__1<TTMSFNCCloudGoogleFireBaseObject*>* AList);
	virtual void __fastcall DoRequestReadData(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoReadDataList(System::Generics::Collections::TObjectList__1<TTMSFNCCloudGoogleFireBaseObject*>* const AList, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	__property TTMSFNCCloudGoogleFireBaseObjectOnReadDataListEvent OnReadDataList = {read=FOnReadDataList, write=FOnReadDataList};
	
public:
	HIDESBASE void __fastcall InsertObject(TTMSFNCCloudGoogleFireBaseObject* AObject);
	void __fastcall WriteObject(TTMSFNCCloudGoogleFireBaseObject* AObject);
	void __fastcall ReadObject(System::UnicodeString AID)/* overload */;
	void __fastcall ReadObject(System::UnicodeString AID, TTMSFNCCloudGoogleFireBaseObject* AObject)/* overload */;
	void __fastcall DeleteObject(System::UnicodeString AID)/* overload */;
	void __fastcall DeleteObject(TTMSFNCCloudGoogleFireBaseObject* AObject)/* overload */;
	void __fastcall InsertList(System::Generics::Collections::TObjectList__1<TTMSFNCCloudGoogleFireBaseObject*>* AList);
	void __fastcall WriteList(System::Generics::Collections::TObjectList__1<TTMSFNCCloudGoogleFireBaseObject*>* AList);
	void __fastcall ReadList()/* overload */;
	void __fastcall ReadList(System::Generics::Collections::TObjectList__1<TTMSFNCCloudGoogleFireBaseObject*>* AList)/* overload */;
	void __fastcall DeleteList(System::Generics::Collections::TObjectList__1<TTMSFNCCloudGoogleFireBaseObject*>* AList)/* overload */;
	void __fastcall QueryList(System::UnicodeString APropertyName, System::UnicodeString AKeyWord)/* overload */;
	void __fastcall QueryList(System::UnicodeString APropertyName, bool AKeyWord)/* overload */;
	void __fastcall QueryList(System::UnicodeString APropertyName, double AKeyValue)/* overload */;
	void __fastcall QueryList(System::UnicodeString APropertyName, System::UnicodeString AStartAt, System::UnicodeString AEndAt)/* overload */;
	void __fastcall QueryList(System::UnicodeString APropertyName, double AMinValue, double AMaxValue)/* overload */;
	void __fastcall QueryList(System::UnicodeString APropertyName, System::UnicodeString AKeyWord, System::Generics::Collections::TObjectList__1<TTMSFNCCloudGoogleFireBaseObject*>* AList)/* overload */;
	void __fastcall QueryList(System::UnicodeString APropertyName, bool AKeyWord, System::Generics::Collections::TObjectList__1<TTMSFNCCloudGoogleFireBaseObject*>* AList)/* overload */;
	void __fastcall QueryList(System::UnicodeString APropertyName, double AKeyValue, System::Generics::Collections::TObjectList__1<TTMSFNCCloudGoogleFireBaseObject*>* AList)/* overload */;
	void __fastcall QueryList(System::UnicodeString APropertyName, System::UnicodeString AStartAt, System::UnicodeString AEndAt, System::Generics::Collections::TObjectList__1<TTMSFNCCloudGoogleFireBaseObject*>* AList)/* overload */;
	void __fastcall QueryList(System::UnicodeString APropertyName, double AMinValue, double AMaxValue, System::Generics::Collections::TObjectList__1<TTMSFNCCloudGoogleFireBaseObject*>* AList)/* overload */;
public:
	/* TTMSFNCCustomCloudGoogleFireBase.Create */ inline __fastcall virtual TTMSFNCCustomCloudGoogleFireBaseObjectDatabase(System::Classes::TComponent* AOwner)/* overload */ : Fmx::Tmsfnccloudgooglefirebase::TTMSFNCCustomCloudGoogleFireBase(AOwner) { }
	/* TTMSFNCCustomCloudGoogleFireBase.Destroy */ inline __fastcall virtual ~TTMSFNCCustomCloudGoogleFireBaseObjectDatabase() { }
	
public:
	/* TTMSFNCCustomCloudOAuth.Create */ inline __fastcall virtual TTMSFNCCustomCloudGoogleFireBaseObjectDatabase()/* overload */ : Fmx::Tmsfnccloudgooglefirebase::TTMSFNCCustomCloudGoogleFireBase() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudGoogleFireBaseObjectDatabase : public TTMSFNCCustomCloudGoogleFireBaseObjectDatabase
{
	typedef TTMSFNCCustomCloudGoogleFireBaseObjectDatabase inherited;
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	
__published:
	__property OnReadDataList;
	__property DatabaseName = {default=0};
	__property TableName = {default=0};
	__property OnCreateObject;
	__property OnDeleteData;
	__property OnDeleteTable;
	__property OnReadData;
	__property OnQuery;
	__property OnUpdateData;
	__property OnInsertData;
	__property OnIDExists;
	__property OnGetRules;
	__property OnSetRules;
public:
	/* TTMSFNCCustomCloudGoogleFireBase.Create */ inline __fastcall virtual TTMSFNCCloudGoogleFireBaseObjectDatabase(System::Classes::TComponent* AOwner)/* overload */ : TTMSFNCCustomCloudGoogleFireBaseObjectDatabase(AOwner) { }
	/* TTMSFNCCustomCloudGoogleFireBase.Destroy */ inline __fastcall virtual ~TTMSFNCCloudGoogleFireBaseObjectDatabase() { }
	
public:
	/* TTMSFNCCustomCloudOAuth.Create */ inline __fastcall virtual TTMSFNCCloudGoogleFireBaseObjectDatabase()/* overload */ : TTMSFNCCustomCloudGoogleFireBaseObjectDatabase() { }
	
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x0);
static constexpr System::Int8 BLD_VER = System::Int8(0x0);
}	/* namespace Tmsfnccloudgooglefirebaseobject */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCCLOUDGOOGLEFIREBASEOBJECT)
using namespace Fmx::Tmsfnccloudgooglefirebaseobject;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfnccloudgooglefirebaseobjectHPP
