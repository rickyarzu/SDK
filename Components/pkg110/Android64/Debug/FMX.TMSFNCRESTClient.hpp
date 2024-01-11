// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCRESTClient.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncrestclientHPP
#define Fmx_TmsfncrestclientHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <System.Types.hpp>
#include <FMX.TMSFNCCustomComponent.hpp>
#include <FMX.TMSFNCCloudBase.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.TMSFNCUtils.hpp>
#include <System.SysUtils.hpp>
#include <System.JSON.hpp>
#include <System.Generics.Collections.hpp>
#include <FMX.Controls.hpp>
#include <FMX.Types.hpp>
#include <System.Generics.Defaults.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncrestclient
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTimerThread;
__interface DELPHIINTERFACE TTMSFNCRESTClientGetResponseCallBack;
typedef System::DelphiInterface<TTMSFNCRESTClientGetResponseCallBack> _di_TTMSFNCRESTClientGetResponseCallBack;
__interface DELPHIINTERFACE TTMSFNCRESTClientGetResponseStringCallBack;
typedef System::DelphiInterface<TTMSFNCRESTClientGetResponseStringCallBack> _di_TTMSFNCRESTClientGetResponseStringCallBack;
__interface DELPHIINTERFACE TTMSFNCRESTClientGetResponseStreamCallBack;
typedef System::DelphiInterface<TTMSFNCRESTClientGetResponseStreamCallBack> _di_TTMSFNCRESTClientGetResponseStreamCallBack;
__interface DELPHIINTERFACE TTMSFNCRESTClientGetResponseFileCallBack;
typedef System::DelphiInterface<TTMSFNCRESTClientGetResponseFileCallBack> _di_TTMSFNCRESTClientGetResponseFileCallBack;
class DELPHICLASS TTMSFNCRESTClientGetResponseCallBackWrapper;
class DELPHICLASS TTMSFNCRESTClientGetResponseStringCallBackWrapper;
class DELPHICLASS TTMSFNCRESTClientGetResponseStreamCallBackWrapper;
class DELPHICLASS TTMSFNCRESTClientGetResponseFileCallBackWrapper;
class DELPHICLASS TTMSFNCRESTClientRequestQueryParameter;
class DELPHICLASS TTMSFNCRESTClientRequestQueryParameters;
class DELPHICLASS TTMSFNCRESTClientRequestHeader;
class DELPHICLASS TTMSFNCRESTClientRequestHeaders;
class DELPHICLASS TTMSFNCRESTClientAuthorizationOptions;
class DELPHICLASS TTMSFNCRESTClientRequest;
class DELPHICLASS TTMSFNCRESTClientResponse;
class DELPHICLASS TTMSFNCRESTClientExecutedRequest;
class DELPHICLASS TTMSFNCRESTClientExecutedRequests;
class DELPHICLASS TTMSFNCCustomRESTClient;
class DELPHICLASS TTMSFNCRESTClient;
//-- type declarations -------------------------------------------------------
enum DECLSPEC_DENUM TTMSFNCRESTClientAuthorizationType : unsigned char { atNone, atKeyHeader, atKeyQuery, atBearerToken, atBasic, atCustomHeader };

class PASCALIMPLEMENTATION TTimerThread : public System::Classes::TThread
{
	typedef System::Classes::TThread inherited;
	
private:
	System::Classes::TNotifyEvent FOnTimer;
	bool FEnabled;
	int FInterval;
	void __fastcall SetEnabled(const bool Value);
	
protected:
	void __fastcall TimerTick();
	virtual void __fastcall Execute();
	void __fastcall SyncTick();
	
public:
	__fastcall TTimerThread(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTimerThread();
	__property System::Classes::TNotifyEvent OnTimer = {read=FOnTimer, write=FOnTimer};
	__property bool Enabled = {read=FEnabled, write=SetEnabled, default=0};
	__property int Interval = {read=FInterval, write=FInterval, default=1000};
};


__interface TTMSFNCRESTClientGetResponseCallBack  : public System::IInterface 
{
	virtual void __fastcall Invoke(System::UnicodeString AResponseString, System::Classes::TMemoryStream* AResponseStream, System::UnicodeString AResponseFile) = 0 ;
};

__interface TTMSFNCRESTClientGetResponseStringCallBack  : public System::IInterface 
{
	virtual void __fastcall Invoke(System::UnicodeString AResponseString) = 0 ;
};

__interface TTMSFNCRESTClientGetResponseStreamCallBack  : public System::IInterface 
{
	virtual void __fastcall Invoke(System::Classes::TMemoryStream* AResponseStream) = 0 ;
};

__interface TTMSFNCRESTClientGetResponseFileCallBack  : public System::IInterface 
{
	virtual void __fastcall Invoke(System::UnicodeString AResponseFile, int AResponseFileSize) = 0 ;
};

class PASCALIMPLEMENTATION TTMSFNCRESTClientGetResponseCallBackWrapper : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	_di_TTMSFNCRESTClientGetResponseCallBack FCallback;
	
public:
	__fastcall TTMSFNCRESTClientGetResponseCallBackWrapper(_di_TTMSFNCRESTClientGetResponseCallBack ACallback);
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
	/* TObject.Destroy */ inline __fastcall virtual ~TTMSFNCRESTClientGetResponseCallBackWrapper() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCRESTClientGetResponseStringCallBackWrapper : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	_di_TTMSFNCRESTClientGetResponseStringCallBack FCallback;
	
public:
	__fastcall TTMSFNCRESTClientGetResponseStringCallBackWrapper(_di_TTMSFNCRESTClientGetResponseStringCallBack ACallback);
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
	/* TObject.Destroy */ inline __fastcall virtual ~TTMSFNCRESTClientGetResponseStringCallBackWrapper() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCRESTClientGetResponseStreamCallBackWrapper : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	_di_TTMSFNCRESTClientGetResponseStreamCallBack FCallback;
	
public:
	__fastcall TTMSFNCRESTClientGetResponseStreamCallBackWrapper(_di_TTMSFNCRESTClientGetResponseStreamCallBack ACallback);
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
	/* TObject.Destroy */ inline __fastcall virtual ~TTMSFNCRESTClientGetResponseStreamCallBackWrapper() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCRESTClientGetResponseFileCallBackWrapper : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	_di_TTMSFNCRESTClientGetResponseFileCallBack FCallback;
	
public:
	__fastcall TTMSFNCRESTClientGetResponseFileCallBackWrapper(_di_TTMSFNCRESTClientGetResponseFileCallBack ACallback);
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
	/* TObject.Destroy */ inline __fastcall virtual ~TTMSFNCRESTClientGetResponseFileCallBackWrapper() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCRESTClientRequestQueryParameter : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	System::UnicodeString FValue;
	System::UnicodeString FKey;
	void __fastcall SetKey(const System::UnicodeString AValue);
	void __fastcall SetValue(const System::UnicodeString AValue);
	virtual void __fastcall DoChanged();
	
public:
	__fastcall virtual TTMSFNCRESTClientRequestQueryParameter(System::Classes::TCollection* Collection);
	__fastcall virtual ~TTMSFNCRESTClientRequestQueryParameter();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property System::UnicodeString Value = {read=FValue, write=SetValue};
	__property System::UnicodeString Key = {read=FKey, write=SetKey};
};


class PASCALIMPLEMENTATION TTMSFNCRESTClientRequestQueryParameters : public Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCRESTClientRequestQueryParameter*>
{
	typedef Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCRESTClientRequestQueryParameter*> inherited;
	
public:
	TTMSFNCRESTClientRequestQueryParameter* operator[](int Index) { return this->Items[Index]; }
	
private:
	System::Classes::TPersistent* FOwner;
	System::Classes::TNotifyEvent FOnChanged;
	HIDESBASE TTMSFNCRESTClientRequestQueryParameter* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCRESTClientRequestQueryParameter* const Value);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall CreateItemClass();
	virtual void __fastcall DoChanged();
	__property System::Classes::TNotifyEvent OnChanged = {read=FOnChanged, write=FOnChanged};
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	
public:
	__fastcall virtual TTMSFNCRESTClientRequestQueryParameters(System::Classes::TPersistent* AOwner);
	__property TTMSFNCRESTClientRequestQueryParameter* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	HIDESBASE TTMSFNCRESTClientRequestQueryParameter* __fastcall Add();
	HIDESBASE TTMSFNCRESTClientRequestQueryParameter* __fastcall Insert(int Index);
	TTMSFNCRESTClientRequestQueryParameter* __fastcall AddParameter(System::UnicodeString AKey, System::UnicodeString AValue, bool ATriggerChanged = true);
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCRESTClientRequestQueryParameters() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCRESTClientRequestHeader : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	System::UnicodeString FValue;
	System::UnicodeString FKey;
	void __fastcall SetKey(const System::UnicodeString AValue);
	void __fastcall SetValue(const System::UnicodeString AValue);
	virtual void __fastcall DoChanged();
	
public:
	__fastcall virtual TTMSFNCRESTClientRequestHeader(System::Classes::TCollection* Collection);
	__fastcall virtual ~TTMSFNCRESTClientRequestHeader();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property System::UnicodeString Value = {read=FValue, write=SetValue};
	__property System::UnicodeString Key = {read=FKey, write=SetKey};
};


class PASCALIMPLEMENTATION TTMSFNCRESTClientRequestHeaders : public Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCRESTClientRequestHeader*>
{
	typedef Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCRESTClientRequestHeader*> inherited;
	
public:
	TTMSFNCRESTClientRequestHeader* operator[](int Index) { return this->Items[Index]; }
	
private:
	System::Classes::TPersistent* FOwner;
	System::Classes::TNotifyEvent FOnChanged;
	HIDESBASE TTMSFNCRESTClientRequestHeader* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCRESTClientRequestHeader* const Value);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall CreateItemClass();
	virtual void __fastcall DoChanged();
	__property System::Classes::TNotifyEvent OnChanged = {read=FOnChanged, write=FOnChanged};
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	
public:
	System::UnicodeString __fastcall GetHeadersText();
	__fastcall virtual TTMSFNCRESTClientRequestHeaders(System::Classes::TPersistent* AOwner);
	__property TTMSFNCRESTClientRequestHeader* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	HIDESBASE TTMSFNCRESTClientRequestHeader* __fastcall Add();
	HIDESBASE TTMSFNCRESTClientRequestHeader* __fastcall Insert(int Index);
	TTMSFNCRESTClientRequestHeader* __fastcall AddHeader(System::UnicodeString AKey, System::UnicodeString AValue, bool ATriggerChanged = true);
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCRESTClientRequestHeaders() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCRESTClientAuthorizationOptions : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	TTMSFNCRESTClientRequest* FOwner;
	TTMSFNCRESTClientAuthorizationType FAuthorizationType;
	System::UnicodeString FBasicUsername;
	System::UnicodeString FBasicPassword;
	System::Classes::TNotifyEvent FOnChanged;
	System::UnicodeString FAuthorizationValue;
	System::UnicodeString FAuthorizationKey;
	void __fastcall SetAuthorizationType(const TTMSFNCRESTClientAuthorizationType Value);
	void __fastcall SetBasicPassword(const System::UnicodeString Value);
	void __fastcall SetBasicUsername(const System::UnicodeString Value);
	void __fastcall SetAuthorizationKey(const System::UnicodeString Value);
	void __fastcall SetAuthorizationValue(const System::UnicodeString Value);
	
protected:
	void __fastcall UpdateAuthorizationFields();
	virtual void __fastcall DoChanged();
	__property System::Classes::TNotifyEvent OnChanged = {read=FOnChanged, write=FOnChanged};
	
public:
	__fastcall virtual TTMSFNCRESTClientAuthorizationOptions(TTMSFNCRESTClientRequest* AOwner);
	__fastcall virtual ~TTMSFNCRESTClientAuthorizationOptions();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__property TTMSFNCRESTClientRequest* Owner = {read=FOwner};
	
__published:
	__property TTMSFNCRESTClientAuthorizationType AuthorizationType = {read=FAuthorizationType, write=SetAuthorizationType, default=0};
	__property System::UnicodeString AuthorizationKey = {read=FAuthorizationKey, write=SetAuthorizationKey};
	__property System::UnicodeString AuthorizationValue = {read=FAuthorizationValue, write=SetAuthorizationValue};
	__property System::UnicodeString BasicUsername = {read=FBasicUsername, write=SetBasicUsername};
	__property System::UnicodeString BasicPassword = {read=FBasicPassword, write=SetBasicPassword};
};


class PASCALIMPLEMENTATION TTMSFNCRESTClientRequest : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	System::Classes::TPersistent* FOwner;
	System::UnicodeString FPath;
	System::UnicodeString FHost;
	Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestMethod FMethod;
	int FPort;
	TTMSFNCRESTClientRequestHeaders* FHeaders;
	System::UnicodeString FPostData;
	TTMSFNCRESTClientRequestQueryParameters* FQueryParameters;
	bool FAsync;
	TTMSFNCRESTClientAuthorizationOptions* FAuthorizationOptions;
	Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResultType FResultType;
	System::UnicodeString FResultFile;
	System::UnicodeString __fastcall GetURL();
	System::UnicodeString __fastcall GetQuery();
	void __fastcall SetQuery(const System::UnicodeString Value);
	void __fastcall SetURL(const System::UnicodeString Value);
	void __fastcall SetHeaders(TTMSFNCRESTClientRequestHeaders* const Value);
	void __fastcall SetHost(const System::UnicodeString Value);
	void __fastcall SetMethod(const Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestMethod Value);
	void __fastcall SetQueryParameters(TTMSFNCRESTClientRequestQueryParameters* const Value);
	void __fastcall SetPath(System::UnicodeString Value);
	void __fastcall SetPort(const int Value);
	void __fastcall SetPostData(const System::UnicodeString Value);
	void __fastcall SetAsync(const bool Value);
	void __fastcall SetAuthorizationOptions(TTMSFNCRESTClientAuthorizationOptions* const Value);
	void __fastcall SetResultType(const Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResultType Value);
	TTMSFNCCustomRESTClient* __fastcall GetRESTClient();
	void __fastcall SetResultFile(const System::UnicodeString Value);
	
protected:
	void __fastcall AddAuthorization(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequest* ARequest);
	void __fastcall SetCloudBaseRequest(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequest* ARequest);
	void __fastcall SetCloudBaseHeaders(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestHeaders* AHeaders);
	virtual void __fastcall DoURLChanged();
	void __fastcall SplitURL(System::UnicodeString AURL);
	void __fastcall SplitQuery(System::UnicodeString AQuery);
	virtual void __fastcall DoQueryParametersChanged(System::TObject* Sender);
	virtual void __fastcall DoHeadersChanged(System::TObject* Sender);
	virtual void __fastcall DoAuthorizationChanged(System::TObject* Sender);
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	
public:
	__fastcall TTMSFNCRESTClientRequest(System::Classes::TPersistent* AOwner);
	__fastcall virtual ~TTMSFNCRESTClientRequest();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	TTMSFNCRESTClientExecutedRequest* __fastcall ExecuteRequest(_di_TTMSFNCRESTClientGetResponseCallBack ACallback = _di_TTMSFNCRESTClientGetResponseCallBack());
	TTMSFNCRESTClientExecutedRequest* __fastcall ExecuteRequestWithResultString(_di_TTMSFNCRESTClientGetResponseStringCallBack ACallback = _di_TTMSFNCRESTClientGetResponseStringCallBack());
	TTMSFNCRESTClientExecutedRequest* __fastcall ExecuteRequestWithResultStream(_di_TTMSFNCRESTClientGetResponseStreamCallBack ACallback = _di_TTMSFNCRESTClientGetResponseStreamCallBack());
	TTMSFNCRESTClientExecutedRequest* __fastcall ExecuteRequestWithResultFile(_di_TTMSFNCRESTClientGetResponseFileCallBack ACallback = _di_TTMSFNCRESTClientGetResponseFileCallBack());
	void __fastcall Clear();
	System::UnicodeString __fastcall GetMethodString();
	__property System::Classes::TPersistent* Owner = {read=FOwner};
	
__published:
	__property System::UnicodeString Host = {read=FHost, write=SetHost};
	__property System::UnicodeString Path = {read=FPath, write=SetPath};
	__property int Port = {read=FPort, write=SetPort, nodefault};
	__property System::UnicodeString Query = {read=GetQuery, write=SetQuery};
	__property Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestMethod Method = {read=FMethod, write=SetMethod, nodefault};
	__property TTMSFNCRESTClientRequestQueryParameters* QueryParameters = {read=FQueryParameters, write=SetQueryParameters};
	__property System::UnicodeString URL = {read=GetURL, write=SetURL};
	__property TTMSFNCRESTClientRequestHeaders* Headers = {read=FHeaders, write=SetHeaders};
	__property System::UnicodeString PostData = {read=FPostData, write=SetPostData};
	__property bool Async = {read=FAsync, write=SetAsync, default=1};
	__property TTMSFNCRESTClientAuthorizationOptions* AuthorizationOptions = {read=FAuthorizationOptions, write=SetAuthorizationOptions};
	__property Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResultType ResultType = {read=FResultType, write=SetResultType, default=0};
	__property System::UnicodeString ResultFile = {read=FResultFile, write=SetResultFile};
};


class PASCALIMPLEMENTATION TTMSFNCRESTClientResponse : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	System::UnicodeString FResponseString;
	bool FResponseSuccess;
	int FResponseCode;
	int FResponseTime;
	int FResponseSize;
	TTMSFNCRESTClientRequestHeaders* FResponseHeaders;
	
protected:
	void __fastcall SetResponseFromCloudBase(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* ARequestResult);
	
public:
	__fastcall TTMSFNCRESTClientResponse(System::Classes::TPersistent* AOwner);
	__fastcall virtual ~TTMSFNCRESTClientResponse();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__property bool ResponseSuccess = {read=FResponseSuccess, nodefault};
	__property int ResponseCode = {read=FResponseCode, nodefault};
	__property System::UnicodeString ResponseString = {read=FResponseString};
	__property int ResponseTime = {read=FResponseTime, nodefault};
	__property int ResponseSize = {read=FResponseSize, nodefault};
	__property TTMSFNCRESTClientRequestHeaders* ResponseHeaders = {read=FResponseHeaders};
};


class PASCALIMPLEMENTATION TTMSFNCRESTClientExecutedRequest : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	System::TDateTime FTempTime;
	TTMSFNCCustomRESTClient* FRESTClient;
	TTMSFNCRESTClientRequest* FRequest;
	TTMSFNCRESTClientResponse* FResponse;
	void *FDataPointer;
	bool FDataBoolean;
	System::UnicodeString FDataUpload;
	System::UnicodeString FDataString;
	System::TObject* FDataObject;
	NativeInt FDataInteger;
	
public:
	__fastcall virtual TTMSFNCRESTClientExecutedRequest(System::Classes::TCollection* Collection);
	__fastcall virtual ~TTMSFNCRESTClientExecutedRequest();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__property TTMSFNCCustomRESTClient* RESTClient = {read=FRESTClient};
	__property TTMSFNCRESTClientResponse* Response = {read=FResponse};
	__property System::UnicodeString DataUpload = {read=FDataUpload, write=FDataUpload};
	__property void * DataPointer = {read=FDataPointer, write=FDataPointer};
	__property bool DataBoolean = {read=FDataBoolean, write=FDataBoolean, nodefault};
	__property System::TObject* DataObject = {read=FDataObject, write=FDataObject};
	__property System::UnicodeString DataString = {read=FDataString, write=FDataString};
	__property NativeInt DataInteger = {read=FDataInteger, write=FDataInteger};
	
__published:
	__property TTMSFNCRESTClientRequest* Request = {read=FRequest};
};


class PASCALIMPLEMENTATION TTMSFNCRESTClientExecutedRequests : public Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCRESTClientExecutedRequest*>
{
	typedef Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCRESTClientExecutedRequest*> inherited;
	
public:
	TTMSFNCRESTClientExecutedRequest* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCCustomRESTClient* FOwner;
	HIDESBASE TTMSFNCRESTClientExecutedRequest* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCRESTClientExecutedRequest* const Value);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall CreateItemClass();
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	
public:
	__fastcall virtual TTMSFNCRESTClientExecutedRequests(TTMSFNCCustomRESTClient* AOwner);
	__property TTMSFNCRESTClientExecutedRequest* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	HIDESBASE TTMSFNCRESTClientExecutedRequest* __fastcall Add();
	HIDESBASE TTMSFNCRESTClientExecutedRequest* __fastcall Insert(int Index);
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCRESTClientExecutedRequests() { }
	
};


typedef void __fastcall (__closure *TTMSFNCRESTClientURLChangedEvent)(System::TObject* Sender, System::UnicodeString &AURL);

typedef void __fastcall (__closure *TTMSFNCRESTClientResponseRetrievedEvent)(System::TObject* Sender, TTMSFNCRESTClientExecutedRequest* ARequest, System::UnicodeString AResultString, System::Classes::TMemoryStream* AResultStream, System::UnicodeString AResultFile);

typedef void __fastcall (__closure *TTMSFNCRESTClientResponseStringRetrievedEvent)(System::TObject* Sender, TTMSFNCRESTClientExecutedRequest* ARequest, System::UnicodeString AResultString);

typedef void __fastcall (__closure *TTMSFNCRESTClientResponseStreamRetrievedEvent)(System::TObject* Sender, TTMSFNCRESTClientExecutedRequest* ARequest, System::Classes::TMemoryStream* AResultStream);

typedef void __fastcall (__closure *TTMSFNCRESTClientResponseFileRetrievedEvent)(System::TObject* Sender, TTMSFNCRESTClientExecutedRequest* ARequest, System::UnicodeString AResultFile, int AResultFileSize);

typedef void __fastcall (__closure *TTMSFNCRESTClientExecuteRequestEvent)(System::TObject* Sender, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequest* ACloudBaseRequest);

class PASCALIMPLEMENTATION TTMSFNCCustomRESTClient : public Fmx::Tmsfnccustomcomponent::TTMSFNCCustomComponent
{
	typedef Fmx::Tmsfnccustomcomponent::TTMSFNCCustomComponent inherited;
	
private:
	Fmx::Tmsfnccloudbase::TTMSFNCCustomCloudBase* FCloudBase;
	TTMSFNCRESTClientExecutedRequests* FExecutedRequests;
	TTMSFNCRESTClientResponseRetrievedEvent FOnRequestResponseRetrieved;
	TTMSFNCRESTClientRequest* FRequest;
	TTMSFNCRESTClientURLChangedEvent FOnRequestURLChanged;
	System::Classes::TNotifyEvent FOnRequestHeadersChanged;
	TTMSFNCRESTClientResponseStringRetrievedEvent FOnRequestResponseStringRetrieved;
	TTMSFNCRESTClientResponseFileRetrievedEvent FOnRequestResponseFileRetrieved;
	TTMSFNCRESTClientResponseStreamRetrievedEvent FOnRequestResponseStreamRetrieved;
	TTMSFNCRESTClientExecuteRequestEvent FOnExecuteRequest;
	void __fastcall SetRequest(TTMSFNCRESTClientRequest* const Value);
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	virtual NativeUInt __fastcall GetInstance();
	virtual System::UnicodeString __fastcall GetVersion();
	virtual System::UnicodeString __fastcall GetDocURL();
	bool __fastcall CheckProtocol(System::UnicodeString AURL);
	virtual void __fastcall DoGetRequestEvent(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoRequestResponseRetrieved(TTMSFNCRESTClientExecutedRequest* ARequest, System::UnicodeString AResultSting, System::Classes::TMemoryStream* AResultStream, System::UnicodeString AResultFile);
	virtual void __fastcall DoRequestResponseStringRetrieved(TTMSFNCRESTClientExecutedRequest* ARequest, System::UnicodeString AResultSting);
	virtual void __fastcall DoRequestResponseStreamRetrieved(TTMSFNCRESTClientExecutedRequest* ARequest, System::Classes::TMemoryStream* AResultStream);
	virtual void __fastcall DoRequestResponseFileRetrieved(TTMSFNCRESTClientExecutedRequest* ARequest, System::UnicodeString AResultFile, int AResultFileSize);
	virtual void __fastcall DoRequestURLChanged();
	virtual void __fastcall DoRequestHeadersChanged();
	virtual TTMSFNCRESTClientExecutedRequest* __fastcall InternalExecuteRequest(_di_TTMSFNCRESTClientGetResponseCallBack ACallback = _di_TTMSFNCRESTClientGetResponseCallBack(), _di_TTMSFNCRESTClientGetResponseStringCallBack ACallbackString = _di_TTMSFNCRESTClientGetResponseStringCallBack(), _di_TTMSFNCRESTClientGetResponseStreamCallBack ACallbackStream = _di_TTMSFNCRESTClientGetResponseStreamCallBack(), _di_TTMSFNCRESTClientGetResponseFileCallBack ACallbackFile = _di_TTMSFNCRESTClientGetResponseFileCallBack());
	void __fastcall DoExecuteRequest(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequest* ARequest);
	
public:
	__fastcall virtual TTMSFNCCustomRESTClient(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCCustomRESTClient();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	void __fastcall LoadRequest();
	void __fastcall Clear();
	TTMSFNCRESTClientExecutedRequest* __fastcall ExecuteRequest(_di_TTMSFNCRESTClientGetResponseCallBack ACallback = _di_TTMSFNCRESTClientGetResponseCallBack());
	TTMSFNCRESTClientExecutedRequest* __fastcall ExecuteRequestWithResultString(_di_TTMSFNCRESTClientGetResponseStringCallBack ACallback = _di_TTMSFNCRESTClientGetResponseStringCallBack());
	TTMSFNCRESTClientExecutedRequest* __fastcall ExecuteRequestWithResultStream(_di_TTMSFNCRESTClientGetResponseStreamCallBack ACallback = _di_TTMSFNCRESTClientGetResponseStreamCallBack());
	TTMSFNCRESTClientExecutedRequest* __fastcall ExecuteRequestWithResultFile(_di_TTMSFNCRESTClientGetResponseFileCallBack ACallback = _di_TTMSFNCRESTClientGetResponseFileCallBack());
	TTMSFNCRESTClientExecutedRequest* __fastcall GetExecutedRequestByURL(System::UnicodeString AURL);
	__property TTMSFNCRESTClientExecutedRequests* ExecutedRequests = {read=FExecutedRequests, write=FExecutedRequests};
	
__published:
	__property TTMSFNCRESTClientRequest* Request = {read=FRequest, write=SetRequest};
	__property TTMSFNCRESTClientResponseRetrievedEvent OnRequestResponseRetrieved = {read=FOnRequestResponseRetrieved, write=FOnRequestResponseRetrieved};
	__property TTMSFNCRESTClientResponseStringRetrievedEvent OnRequestResponseStringRetrieved = {read=FOnRequestResponseStringRetrieved, write=FOnRequestResponseStringRetrieved};
	__property TTMSFNCRESTClientResponseStreamRetrievedEvent OnRequestResponseStreamRetrieved = {read=FOnRequestResponseStreamRetrieved, write=FOnRequestResponseStreamRetrieved};
	__property TTMSFNCRESTClientResponseFileRetrievedEvent OnRequestResponseFileRetrieved = {read=FOnRequestResponseFileRetrieved, write=FOnRequestResponseFileRetrieved};
	__property System::UnicodeString Version = {read=GetVersion};
	__property TTMSFNCRESTClientURLChangedEvent OnRequestURLChanged = {read=FOnRequestURLChanged, write=FOnRequestURLChanged};
	__property System::Classes::TNotifyEvent OnRequestHeadersChanged = {read=FOnRequestHeadersChanged, write=FOnRequestHeadersChanged};
	__property TTMSFNCRESTClientExecuteRequestEvent OnExecuteRequest = {read=FOnExecuteRequest, write=FOnExecuteRequest};
};


class PASCALIMPLEMENTATION TTMSFNCRESTClient : public TTMSFNCCustomRESTClient
{
	typedef TTMSFNCCustomRESTClient inherited;
	
__published:
	__property Request;
	__property OnRequestResponseRetrieved;
	__property OnRequestResponseStringRetrieved;
	__property OnRequestResponseStreamRetrieved;
	__property OnRequestResponseFileRetrieved;
	__property Version = {default=0};
	__property OnRequestURLChanged;
	__property OnRequestHeadersChanged;
public:
	/* TTMSFNCCustomRESTClient.Create */ inline __fastcall virtual TTMSFNCRESTClient(System::Classes::TComponent* AOwner) : TTMSFNCCustomRESTClient(AOwner) { }
	/* TTMSFNCCustomRESTClient.Destroy */ inline __fastcall virtual ~TTMSFNCRESTClient() { }
	
};


//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x0);
static constexpr System::Int8 BLD_VER = System::Int8(0x0);
}	/* namespace Tmsfncrestclient */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCRESTCLIENT)
using namespace Fmx::Tmsfncrestclient;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncrestclientHPP
