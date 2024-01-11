// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCCloudGoogleFireBase.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfnccloudgooglefirebaseHPP
#define Fmx_TmsfnccloudgooglefirebaseHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <FMX.TMSFNCCloudBase.hpp>
#include <FMX.TMSFNCCloudGoogle.hpp>
#include <FMX.TMSFNCTypes.hpp>
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
namespace Tmsfnccloudgooglefirebase
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCCloudGoogleFireBaseQueryParams;
class DELPHICLASS TTMSFNCCloudGoogleFireBaseData;
class DELPHICLASS TTMSFNCCloudGoogleFireBaseInsertData;
class DELPHICLASS TTMSFNCCloudGoogleFireBaseUpdateData;
class DELPHICLASS TTMSFNCCloudGoogleFireBaseIndexRule;
class DELPHICLASS TTMSFNCCustomCloudGoogleFireBase;
class DELPHICLASS TTMSFNCCloudGoogleFireBase;
//-- type declarations -------------------------------------------------------
#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudGoogleFireBaseQueryParams : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	System::UnicodeString FMinValue;
	System::UnicodeString FPropertyName;
	System::UnicodeString FKeyWord;
	System::UnicodeString FEndAt;
	bool FEqualTo;
	System::UnicodeString FKeyValue;
	System::UnicodeString FMaxValue;
	System::UnicodeString FStartAt;
	
public:
	__fastcall virtual TTMSFNCCloudGoogleFireBaseQueryParams(System::UnicodeString APropertyName, System::UnicodeString AKeyWord, System::UnicodeString AKeyValue, System::UnicodeString AStartAt, System::UnicodeString AEndAt, System::UnicodeString AMinValue, System::UnicodeString AMaxValue, bool AEqualTo);
	__property System::UnicodeString PropertyName = {read=FPropertyName};
	__property System::UnicodeString KeyWord = {read=FKeyWord};
	__property System::UnicodeString KeyValue = {read=FKeyValue};
	__property System::UnicodeString StartAt = {read=FStartAt};
	__property System::UnicodeString EndAt = {read=FEndAt};
	__property System::UnicodeString MinValue = {read=FMinValue};
	__property System::UnicodeString MaxValue = {read=FMaxValue};
	__property bool EqualTo = {read=FEqualTo, nodefault};
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
	/* TObject.Destroy */ inline __fastcall virtual ~TTMSFNCCloudGoogleFireBaseQueryParams() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudGoogleFireBaseData : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	System::UnicodeString FID;
	System::UnicodeString FData;
	
public:
	__fastcall virtual TTMSFNCCloudGoogleFireBaseData(System::UnicodeString AData, System::UnicodeString AID);
	__property System::UnicodeString Data = {read=FData};
	__property System::UnicodeString ID = {read=FID};
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
	/* TObject.Destroy */ inline __fastcall virtual ~TTMSFNCCloudGoogleFireBaseData() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudGoogleFireBaseInsertData : public TTMSFNCCloudGoogleFireBaseData
{
	typedef TTMSFNCCloudGoogleFireBaseData inherited;
	
public:
	/* TTMSFNCCloudGoogleFireBaseData.Create */ inline __fastcall virtual TTMSFNCCloudGoogleFireBaseInsertData(System::UnicodeString AData, System::UnicodeString AID) : TTMSFNCCloudGoogleFireBaseData(AData, AID) { }
	
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TTMSFNCCloudGoogleFireBaseInsertData() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudGoogleFireBaseUpdateData : public TTMSFNCCloudGoogleFireBaseData
{
	typedef TTMSFNCCloudGoogleFireBaseData inherited;
	
private:
	System::UnicodeString FPropertyName;
	System::UnicodeString FPropertyValue;
	
public:
	__fastcall virtual TTMSFNCCloudGoogleFireBaseUpdateData(System::UnicodeString AData, System::UnicodeString AID, System::UnicodeString APropertyName, System::UnicodeString APropertyValue);
	__property System::UnicodeString PropertyName = {read=FPropertyName};
	__property System::UnicodeString PropertyValue = {read=FPropertyValue};
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TTMSFNCCloudGoogleFireBaseUpdateData() { }
	
};

#pragma pack(pop)

typedef void __fastcall (__closure *TTMSFNCCloudGoogleFireBaseOnCreateObjectEvent)(System::TObject* Sender, const System::UnicodeString AObjectName, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudGoogleFireBaseOnDeleteDataEvent)(System::TObject* Sender, const System::UnicodeString AID, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudGoogleFireBaseOnReadDataEvent)(System::TObject* Sender, const System::UnicodeString AID, const System::UnicodeString AResultData, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudGoogleFireBaseOnUpdateDataEvent)(System::TObject* Sender, TTMSFNCCloudGoogleFireBaseUpdateData* const AUpdateDataParams, const System::UnicodeString AResultData, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudGoogleFireBaseOnInsertDataEvent)(System::TObject* Sender, TTMSFNCCloudGoogleFireBaseInsertData* const AInsertDataParams, const System::UnicodeString AResultData, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudGoogleFireBaseOnIDExistsEvent)(System::TObject* Sender, const System::UnicodeString AID, const bool AIDExists, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequesResult);

typedef void __fastcall (__closure *TTMSFNCCloudGoogleFireBaseOnDeleteTableEvent)(System::TObject* Sender, const System::UnicodeString ATableName, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudGoogleFireBaseOnQueryEvent)(System::TObject* Sender, TTMSFNCCloudGoogleFireBaseQueryParams* const AQueryParams, const System::UnicodeString AResultData, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudGoogleFireBaseOnSetRulesEvent)(System::TObject* Sender, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudGoogleFireBaseOnGetRulesEvent)(System::TObject* Sender, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudGoogleFireBaseIndexRule : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	System::UnicodeString FTableName;
	System::Classes::TStringList* FFields;
	void __fastcall SetFields(System::Classes::TStringList* const Value);
	
public:
	__fastcall TTMSFNCCloudGoogleFireBaseIndexRule();
	__fastcall virtual ~TTMSFNCCloudGoogleFireBaseIndexRule();
	__property System::UnicodeString TableName = {read=FTableName, write=FTableName};
	__property System::Classes::TStringList* Fields = {read=FFields, write=SetFields};
};

#pragma pack(pop)

typedef System::Generics::Collections::TObjectList__1<TTMSFNCCloudGoogleFireBaseIndexRule*>* TTMSFNCCloudGoogleFireBaseIndexRules;

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCustomCloudGoogleFireBase : public Fmx::Tmsfnccloudgoogle::TTMSFNCCustomCloudGoogle
{
	typedef Fmx::Tmsfnccloudgoogle::TTMSFNCCustomCloudGoogle inherited;
	
private:
	System::UnicodeString FTableName;
	System::Generics::Collections::TObjectList__1<TTMSFNCCloudGoogleFireBaseIndexRule*>* FIndexRules;
	System::Classes::TStringList* FGeneralRules;
	System::UnicodeString FDatabaseName;
	TTMSFNCCloudGoogleFireBaseOnCreateObjectEvent FOnCreateObject;
	TTMSFNCCloudGoogleFireBaseOnDeleteDataEvent FOnDeleteData;
	TTMSFNCCloudGoogleFireBaseOnDeleteTableEvent FOnDeleteTable;
	TTMSFNCCloudGoogleFireBaseOnReadDataEvent FOnReadData;
	TTMSFNCCloudGoogleFireBaseOnIDExistsEvent FOnIDExists;
	TTMSFNCCloudGoogleFireBaseOnInsertDataEvent FOnInsertData;
	TTMSFNCCloudGoogleFireBaseOnUpdateDataEvent FOnUpdateData;
	TTMSFNCCloudGoogleFireBaseOnQueryEvent FOnQuery;
	TTMSFNCCloudGoogleFireBaseOnSetRulesEvent FOnSetRules;
	TTMSFNCCloudGoogleFireBaseOnGetRulesEvent FOnGetRules;
	
protected:
	virtual System::UnicodeString __fastcall GetVersion();
	System::UnicodeString __fastcall GetAPIBase();
	bool __fastcall HasError(System::UnicodeString AJSON);
	virtual void __fastcall QueryInt(System::UnicodeString APropertyName, System::UnicodeString AKeyWord, System::UnicodeString AKeyValue, System::UnicodeString AStartAt, System::UnicodeString AEndAt, System::UnicodeString AMinValue, System::UnicodeString AMaxValue, bool AEqualTo);
	virtual void __fastcall ReadDataInt(System::UnicodeString AID, bool ACheckID, System::TObject* AObject = (System::TObject*)(0x0));
	virtual void __fastcall DoCreateObject(const System::UnicodeString AObjectName, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoDeleteData(const System::UnicodeString AID, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoDeleteTable(const System::UnicodeString ATableName, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoReadData(const System::UnicodeString AID, const System::UnicodeString AResultData, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoUpdateData(TTMSFNCCloudGoogleFireBaseUpdateData* const AUpdateDataParams, const System::UnicodeString AResultData, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoInsertData(TTMSFNCCloudGoogleFireBaseInsertData* const AInsertDataParams, const System::UnicodeString AResultData, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoQuery(TTMSFNCCloudGoogleFireBaseQueryParams* const AQueryParams, const System::UnicodeString AResultData, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoIDExists(const System::UnicodeString AID, const bool AIDExists, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoSetRules(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoGetRules(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoRequestDeleteData(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoRequestDeleteTable(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoRequestInsertData(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoRequestUpdateData(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoRequestCreateObject(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoRequestQuery(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoRequestReadData(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoRequestSetRules(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoRequestGetRules(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	__property System::UnicodeString DatabaseName = {read=FDatabaseName, write=FDatabaseName};
	__property System::UnicodeString TableName = {read=FTableName, write=FTableName};
	__property TTMSFNCCloudGoogleFireBaseOnCreateObjectEvent OnCreateObject = {read=FOnCreateObject, write=FOnCreateObject};
	__property TTMSFNCCloudGoogleFireBaseOnDeleteDataEvent OnDeleteData = {read=FOnDeleteData, write=FOnDeleteData};
	__property TTMSFNCCloudGoogleFireBaseOnDeleteTableEvent OnDeleteTable = {read=FOnDeleteTable, write=FOnDeleteTable};
	__property TTMSFNCCloudGoogleFireBaseOnReadDataEvent OnReadData = {read=FOnReadData, write=FOnReadData};
	__property TTMSFNCCloudGoogleFireBaseOnQueryEvent OnQuery = {read=FOnQuery, write=FOnQuery};
	__property TTMSFNCCloudGoogleFireBaseOnUpdateDataEvent OnUpdateData = {read=FOnUpdateData, write=FOnUpdateData};
	__property TTMSFNCCloudGoogleFireBaseOnInsertDataEvent OnInsertData = {read=FOnInsertData, write=FOnInsertData};
	__property TTMSFNCCloudGoogleFireBaseOnIDExistsEvent OnIDExists = {read=FOnIDExists, write=FOnIDExists};
	__property TTMSFNCCloudGoogleFireBaseOnGetRulesEvent OnGetRules = {read=FOnGetRules, write=FOnGetRules};
	__property TTMSFNCCloudGoogleFireBaseOnSetRulesEvent OnSetRules = {read=FOnSetRules, write=FOnSetRules};
	
public:
	__fastcall virtual TTMSFNCCustomCloudGoogleFireBase(System::Classes::TComponent* AOwner)/* overload */;
	__fastcall virtual ~TTMSFNCCustomCloudGoogleFireBase();
	void __fastcall CreateObject();
	void __fastcall DeleteData(System::UnicodeString AID);
	void __fastcall DeleteTable(System::UnicodeString ATableName);
	void __fastcall IDExists(System::UnicodeString AID);
	void __fastcall InsertData(System::UnicodeString AID, System::UnicodeString AData);
	void __fastcall BulkInsertData(System::UnicodeString AData);
	void __fastcall ReadData(System::UnicodeString AID = System::UnicodeString());
	void __fastcall UpdateData(System::UnicodeString AID, System::UnicodeString AData)/* overload */;
	void __fastcall UpdateData(System::UnicodeString AID, System::UnicodeString APropertyName, System::UnicodeString APropertyValue)/* overload */;
	void __fastcall Query(System::UnicodeString APropertyName, System::UnicodeString AKeyWord)/* overload */;
	void __fastcall Query(System::UnicodeString APropertyName, bool AKeyWord)/* overload */;
	void __fastcall Query(System::UnicodeString APropertyName, double AKeyValue)/* overload */;
	void __fastcall Query(System::UnicodeString APropertyName, System::UnicodeString AStartAt, System::UnicodeString AEndAt)/* overload */;
	void __fastcall Query(System::UnicodeString APropertyName, double AMinValue, double AMaxValue)/* overload */;
	void __fastcall GetRules();
	void __fastcall SetRules();
	void __fastcall AddIndexRule(System::UnicodeString ATableName, System::UnicodeString APropertyName);
	__property System::Generics::Collections::TObjectList__1<TTMSFNCCloudGoogleFireBaseIndexRule*>* IndexRules = {read=FIndexRules, write=FIndexRules};
	__property System::Classes::TStringList* GeneralRules = {read=FGeneralRules, write=FGeneralRules};
public:
	/* TTMSFNCCustomCloudOAuth.Create */ inline __fastcall virtual TTMSFNCCustomCloudGoogleFireBase()/* overload */ : Fmx::Tmsfnccloudgoogle::TTMSFNCCustomCloudGoogle() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudGoogleFireBase : public TTMSFNCCustomCloudGoogleFireBase
{
	typedef TTMSFNCCustomCloudGoogleFireBase inherited;
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	
__published:
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
	/* TTMSFNCCustomCloudGoogleFireBase.Create */ inline __fastcall virtual TTMSFNCCloudGoogleFireBase(System::Classes::TComponent* AOwner)/* overload */ : TTMSFNCCustomCloudGoogleFireBase(AOwner) { }
	/* TTMSFNCCustomCloudGoogleFireBase.Destroy */ inline __fastcall virtual ~TTMSFNCCloudGoogleFireBase() { }
	
public:
	/* TTMSFNCCustomCloudOAuth.Create */ inline __fastcall virtual TTMSFNCCloudGoogleFireBase()/* overload */ : TTMSFNCCustomCloudGoogleFireBase() { }
	
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x0);
static constexpr System::Int8 BLD_VER = System::Int8(0x0);
}	/* namespace Tmsfnccloudgooglefirebase */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCCLOUDGOOGLEFIREBASE)
using namespace Fmx::Tmsfnccloudgooglefirebase;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfnccloudgooglefirebaseHPP
