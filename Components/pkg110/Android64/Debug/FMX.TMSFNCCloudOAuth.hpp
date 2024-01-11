// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCCloudOAuth.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfnccloudoauthHPP
#define Fmx_TmsfnccloudoauthHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <System.Types.hpp>
#include <FMX.TMSFNCCloudBase.hpp>
#include <FMX.TMSFNCUtils.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <System.SysUtils.hpp>
#include <Data.DB.hpp>
#include <IdCustomHTTPServer.hpp>
#include <IdContext.hpp>
#include <IdHTTPServer.hpp>
#include <IdSSLOpenSSLHeaders.hpp>
#include <IdServerIOHandler.hpp>
#include <IdSSLOpenSSL.hpp>
#include <System.Generics.Collections.hpp>
#include <System.Threading.hpp>
#include <IdGlobal.hpp>
#include <IdComponent.hpp>
#include <IdCustomTCPServer.hpp>
#include <IdBaseComponent.hpp>
#include <FMX.TMSFNCCustomComponent.hpp>
#include <FMX.Controls.hpp>
#include <FMX.Types.hpp>
#include <System.Generics.Defaults.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfnccloudoauth
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS THTTPServer;
class DELPHICLASS TTMSFNCCloudOAuthPersistTokens;
class DELPHICLASS TTMSFNCCloudOAuthAuthentication;
__interface DELPHIINTERFACE TTMSFNCCloudOAuthAuthenticationResultEvent;
typedef System::DelphiInterface<TTMSFNCCloudOAuthAuthenticationResultEvent> _di_TTMSFNCCloudOAuthAuthenticationResultEvent;
__interface DELPHIINTERFACE TTMSFNCCloudOAuthConnectResultEvent;
typedef System::DelphiInterface<TTMSFNCCloudOAuthConnectResultEvent> _di_TTMSFNCCloudOAuthConnectResultEvent;
class DELPHICLASS TTMSFNCCustomCloudOAuth;
class DELPHICLASS TTMSFNCCloudOAuth;
class DELPHICLASS TTMSFNCSimpleCloudOAuth;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION THTTPServer : public Idcustomhttpserver::TIdCustomHTTPServer
{
	typedef Idcustomhttpserver::TIdCustomHTTPServer inherited;
	
protected:
	virtual void __fastcall SetActive(bool AValue);
public:
	/* TIdCustomHTTPServer.Create */ inline __fastcall THTTPServer(System::Classes::TComponent* AOwner)/* overload */ : Idcustomhttpserver::TIdCustomHTTPServer(AOwner) { }
	/* TIdCustomHTTPServer.Destroy */ inline __fastcall virtual ~THTTPServer() { }
	
public:
	/* TIdInitializerComponent.Create */ inline __fastcall THTTPServer()/* overload */ : Idcustomhttpserver::TIdCustomHTTPServer() { }
	
};


typedef Idsslopenssl::TIdServerIOHandlerSSLOpenSSL THTTPServerSSLHandler;

enum DECLSPEC_DENUM TTMSFNCCloudOAuthPersistLocation : unsigned char { plIniFile, plRegistry, plDatabase };

class PASCALIMPLEMENTATION TTMSFNCCloudOAuthPersistTokens : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	TTMSFNCCustomCloudOAuth* FOwner;
	TTMSFNCCloudOAuthPersistLocation FLocation;
	System::UnicodeString FSection;
	System::UnicodeString FKey;
	Data::Db::TDataSource* FDataSource;
	bool FSaveCallBack;
	bool FSaveClientID;
	bool FSaveSecret;
	bool FSaveKey;
	bool FSaveExtra;
	System::UnicodeString FExtra;
	bool __fastcall IsSectionStored();
	
public:
	__fastcall virtual TTMSFNCCloudOAuthPersistTokens(TTMSFNCCustomCloudOAuth* AOwner);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__property System::UnicodeString Extra = {read=FExtra, write=FExtra};
	__property bool SaveExtra = {read=FSaveExtra, write=FSaveExtra, default=0};
	
__published:
	__property Data::Db::TDataSource* DataSource = {read=FDataSource, write=FDataSource};
	__property TTMSFNCCloudOAuthPersistLocation Location = {read=FLocation, write=FLocation, default=0};
	__property System::UnicodeString Section = {read=FSection, write=FSection, stored=IsSectionStored};
	__property System::UnicodeString Key = {read=FKey, write=FKey};
	__property bool SaveClientID = {read=FSaveClientID, write=FSaveClientID, default=0};
	__property bool SaveSecret = {read=FSaveSecret, write=FSaveSecret, default=0};
	__property bool SaveKey = {read=FSaveKey, write=FSaveKey, default=0};
	__property bool SaveCallBack = {read=FSaveCallBack, write=FSaveCallBack, default=0};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTMSFNCCloudOAuthPersistTokens() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudOAuthAuthentication : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	System::UnicodeString FKey;
	System::UnicodeString FCallBackURL;
	System::UnicodeString FSecret;
	System::UnicodeString FAuthenticationToken;
	System::UnicodeString FAccessToken;
	System::UnicodeString FAuthenticationTokenSecret;
	System::UnicodeString FAccessTokenRefresh;
	System::UnicodeString FAccessTokenSecret;
	System::UnicodeString FClientID;
	System::UnicodeString FLocale;
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	int __fastcall CallBackPort();
	bool __fastcall IsHTTPS();
	void __fastcall ClearTokens();
	__property System::UnicodeString AuthenticationToken = {read=FAuthenticationToken, write=FAuthenticationToken};
	__property System::UnicodeString AuthenticationTokenSecret = {read=FAuthenticationTokenSecret, write=FAuthenticationTokenSecret};
	__property System::UnicodeString AccessToken = {read=FAccessToken, write=FAccessToken};
	__property System::UnicodeString AccessTokenSecret = {read=FAccessTokenSecret, write=FAccessTokenSecret};
	__property System::UnicodeString AccessTokenRefresh = {read=FAccessTokenRefresh, write=FAccessTokenRefresh};
	
__published:
	__property System::UnicodeString CallBackURL = {read=FCallBackURL, write=FCallBackURL};
	__property System::UnicodeString Key = {read=FKey, write=FKey};
	__property System::UnicodeString ClientID = {read=FClientID, write=FClientID};
	__property System::UnicodeString Secret = {read=FSecret, write=FSecret};
	__property System::UnicodeString Locale = {read=FLocale, write=FLocale};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTMSFNCCloudOAuthAuthentication() { }
	
public:
	/* TObject.Create */ inline __fastcall TTMSFNCCloudOAuthAuthentication() : System::Classes::TPersistent() { }
	
};


__interface TTMSFNCCloudOAuthAuthenticationResultEvent  : public System::IInterface 
{
	virtual void __fastcall Invoke() = 0 ;
};

__interface TTMSFNCCloudOAuthConnectResultEvent  : public System::IInterface 
{
	virtual void __fastcall Invoke() = 0 ;
};

typedef void __fastcall (__closure *TTMSFNCCloudOAuthTestTokensResultEvent)(System::TObject* Sender, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult, bool ATestTokensResult, bool &AAuthenticate);

typedef void __fastcall (__closure *TTMSFNCCloudOAuthBeforeRunExternalBrowserEvent)(System::TObject* Sender, System::UnicodeString &AURL, bool &ACanRun);

typedef void __fastcall (__closure *TTMSFNCCloudOAuthAuthenticatedEvent)(System::TObject* Sender, bool &ATestTokens);

typedef void __fastcall (__closure *TTMSFNCCloudOAuthGetAuthorizationPageHTML)(System::TObject* Sender, const bool ASuccess, System::UnicodeString &AHTML);

typedef void __fastcall (__closure *TTMSFNCCloudOAuthConfigureHTTPServerEvent)(System::TObject* Sender, THTTPServer* const AHTTPServer);

typedef void __fastcall (__closure *TTMSFNCCloudOAuthConfigureHTTPServerSSLHandlerEvent)(System::TObject* Sender, Idsslopenssl::TIdServerIOHandlerSSLOpenSSL* const AHTTPServerSSLHandler);

typedef void __fastcall (__closure *TTMSFNCCloudOAuthAccessDeniedEvent)(System::TObject* Sender, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef System::DynamicArray<System::UnicodeString> TTMSFNCCloudOAuthServiceStringArray;

class PASCALIMPLEMENTATION TTMSFNCCustomCloudOAuth : public Fmx::Tmsfnccloudbase::TTMSFNCCustomCloudBase
{
	typedef Fmx::Tmsfnccloudbase::TTMSFNCCustomCloudBase inherited;
	
private:
	THTTPServer* FHTTPServer;
	Idsslopenssl::TIdServerIOHandlerSSLOpenSSL* FSSLHandler;
	_di_TTMSFNCCloudOAuthAuthenticationResultEvent FAuthenticationProc;
	_di_TTMSFNCCloudOAuthConnectResultEvent FConnectProc;
	TTMSFNCCloudOAuthAuthentication* FAuthentication;
	TTMSFNCCloudOAuthPersistTokens* FPersistTokens;
	System::Classes::TNotifyEvent FOnConnected;
	TTMSFNCCloudOAuthAuthenticatedEvent FOnAuthenticated;
	TTMSFNCCloudOAuthTestTokensResultEvent FOnRequestTestTokensResult;
	TTMSFNCCloudOAuthGetAuthorizationPageHTML FOnGetAuthorizationPageHTML;
	TTMSFNCCloudOAuthAccessDeniedEvent FOnAccessDenied;
	TTMSFNCCloudOAuthBeforeRunExternalBrowserEvent FOnBeforeRunExternalBrowser;
	TTMSFNCCloudOAuthConfigureHTTPServerEvent FOnConfigureHTTPServer;
	TTMSFNCCloudOAuthConfigureHTTPServerSSLHandlerEvent FOnConfigureHTTPServerSSLHandler;
	void __fastcall SetAuthentication(TTMSFNCCloudOAuthAuthentication* const Value);
	void __fastcall SetPersistTokens(TTMSFNCCloudOAuthPersistTokens* const Value);
	
protected:
	virtual TTMSFNCCloudOAuthServiceStringArray __fastcall GetAuthenticationDetailsLabels();
	virtual TTMSFNCCloudOAuthServiceStringArray __fastcall GetAuthenticationDetailsValues();
	virtual NativeUInt __fastcall GetInstance();
	virtual System::UnicodeString __fastcall GetVersion();
	System::UnicodeString __fastcall GetAuthorizationPageHTML(const bool AAuthorizationSuccess);
	virtual System::UnicodeString __fastcall GetAuthenticationToken(const System::UnicodeString ACallBackURLResult);
	virtual System::UnicodeString __fastcall ParseTokenFromCallBackURL(const System::UnicodeString ACallBackURLResult, const System::WideChar ADelimiter, const System::UnicodeString AKey);
	virtual System::UnicodeString __fastcall GetAccessToken(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual System::UnicodeString __fastcall GetRefreshToken(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual System::UnicodeString __fastcall GetAuthenticationURL() = 0 ;
	virtual bool __fastcall ProcessAuthenticateResult();
	virtual bool __fastcall ParseAccessTokenRequest(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual bool __fastcall ProcessAuthenticationCallbackURL(const System::UnicodeString ACallBackURLResult);
	virtual System::UnicodeString __fastcall FindAccessToken(const System::UnicodeString ACallBackURLResult);
	virtual void __fastcall UpdateProperty(int AIndex, System::UnicodeString AValue);
	virtual void __fastcall DoConnected();
	void __fastcall DoGetAuthorizationPageHTML(const bool ASuccess, System::UnicodeString &AHTML);
	virtual void __fastcall DoRetrieveAccessToken(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoRetrieveRefreshToken(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoTestTokensResult(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoTestTokensResultNoAuth(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoTestTokensResultNoRefresh(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoExternalBrowserCallBack(const System::UnicodeString ACallBackURLResult);
	virtual void __fastcall DoAuthenticateResult();
	virtual void __fastcall DoAccessDenied(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoRefreshTokensResult();
	virtual void __fastcall CallRetrieveAccessToken();
	virtual void __fastcall CallRetrieveRefreshToken();
	virtual void __fastcall ProcessAuthentication();
	void __fastcall ProcessTestTokensResult(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult, bool ACallAuthentication, bool ACallRefreshToken);
	virtual void __fastcall RetrieveAccessToken() = 0 ;
	virtual void __fastcall RetrieveRefreshToken();
	virtual void __fastcall DoBeforeRunExternalBrowser(System::UnicodeString &AURL, bool &ACanRun);
	void __fastcall DoCommandGet(Idcontext::TIdContext* AContext, Idcustomhttpserver::TIdHTTPRequestInfo* ARequestInfo, Idcustomhttpserver::TIdHTTPResponseInfo* AResponseInfo);
	void __fastcall ConfigureSSL();
	void __fastcall DoGetCertificatePassword(System::UnicodeString &Password);
	void __fastcall DoQuerySSLPort(System::Word APort, bool &VUseSSL);
	virtual void __fastcall DoConfigureHTTPServer(THTTPServer* const AHTTPServer);
	virtual void __fastcall DoConfigureHTTPServerSSLHandler(Idsslopenssl::TIdServerIOHandlerSSLOpenSSL* const AHTTPServerSSLHandler);
	void __fastcall InternalAuthenticate(const bool AWithCallBack = true, const _di_TTMSFNCCloudOAuthAuthenticationResultEvent AAuthenticateRequestResultEvent = _di_TTMSFNCCloudOAuthAuthenticationResultEvent());
	__property TTMSFNCCloudOAuthAuthentication* Authentication = {read=FAuthentication, write=SetAuthentication};
	__property TTMSFNCCloudOAuthPersistTokens* PersistTokens = {read=FPersistTokens, write=SetPersistTokens};
	__property System::Classes::TNotifyEvent OnConnected = {read=FOnConnected, write=FOnConnected};
	__property TTMSFNCCloudOAuthAuthenticatedEvent OnAuthenticated = {read=FOnAuthenticated, write=FOnAuthenticated};
	__property TTMSFNCCloudOAuthGetAuthorizationPageHTML OnGetAuthorizationPageHTML = {read=FOnGetAuthorizationPageHTML, write=FOnGetAuthorizationPageHTML};
	__property TTMSFNCCloudOAuthAccessDeniedEvent OnAccessDenied = {read=FOnAccessDenied, write=FOnAccessDenied};
	__property TTMSFNCCloudOAuthTestTokensResultEvent OnRequestTestTokensResult = {read=FOnRequestTestTokensResult, write=FOnRequestTestTokensResult};
	__property TTMSFNCCloudOAuthBeforeRunExternalBrowserEvent OnBeforeRunExternalBrowser = {read=FOnBeforeRunExternalBrowser, write=FOnBeforeRunExternalBrowser};
	__property TTMSFNCCloudOAuthConfigureHTTPServerEvent OnConfigureHTTPServer = {read=FOnConfigureHTTPServer, write=FOnConfigureHTTPServer};
	__property TTMSFNCCloudOAuthConfigureHTTPServerSSLHandlerEvent OnConfigureHTTPServerSSLHandler = {read=FOnConfigureHTTPServerSSLHandler, write=FOnConfigureHTTPServerSSLHandler};
	
public:
	__fastcall virtual TTMSFNCCustomCloudOAuth()/* overload */;
	__fastcall virtual TTMSFNCCustomCloudOAuth(System::Classes::TComponent* AOwner)/* overload */;
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual ~TTMSFNCCustomCloudOAuth();
	virtual void __fastcall DestroyHTTPServer();
	virtual void __fastcall Authenticate(const _di_TTMSFNCCloudOAuthAuthenticationResultEvent AAuthenticateRequestResultEvent = _di_TTMSFNCCloudOAuthAuthenticationResultEvent());
	virtual void __fastcall Connect(const _di_TTMSFNCCloudOAuthConnectResultEvent AConnectRequestResultEvent = _di_TTMSFNCCloudOAuthConnectResultEvent());
	virtual void __fastcall TestTokens(const Fmx::Tmsfnccloudbase::_di_TTMSFNCCloudBaseRequestResultEvent ATestTokensRequestResultEvent = Fmx::Tmsfnccloudbase::_di_TTMSFNCCloudBaseRequestResultEvent()) = 0 ;
	virtual void __fastcall LoadTokens();
	virtual void __fastcall SaveTokens();
	virtual void __fastcall ClearTokens();
	virtual bool __fastcall GetTestTokensResult(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult) = 0 ;
};


class PASCALIMPLEMENTATION TTMSFNCCloudOAuth : public TTMSFNCCustomCloudOAuth
{
	typedef TTMSFNCCustomCloudOAuth inherited;
	
__published:
	__property Logging = {default=0};
	__property LogFileName;
	__property Version = {default=0};
	__property Authentication;
	__property PersistTokens;
	__property OnAuthenticated;
	__property OnAccessDenied;
	__property OnGetAuthorizationPageHTML;
	__property OnRequestsComplete;
	__property OnRequestLog;
	__property OnRequestComplete;
	__property OnRequestCancelled;
	__property OnRequestStarted;
	__property OnRequestProgress;
	__property OnRequestTestTokensResult;
	__property OnConnected;
	__property OnBeforeRunExternalBrowser;
	__property OnConfigureHTTPServer;
	__property OnConfigureHTTPServerSSLHandler;
public:
	/* TTMSFNCCustomCloudOAuth.Create */ inline __fastcall virtual TTMSFNCCloudOAuth()/* overload */ : TTMSFNCCustomCloudOAuth() { }
	/* TTMSFNCCustomCloudOAuth.Create */ inline __fastcall virtual TTMSFNCCloudOAuth(System::Classes::TComponent* AOwner)/* overload */ : TTMSFNCCustomCloudOAuth(AOwner) { }
	/* TTMSFNCCustomCloudOAuth.Destroy */ inline __fastcall virtual ~TTMSFNCCloudOAuth() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCSimpleCloudOAuth : public TTMSFNCCloudOAuth
{
	typedef TTMSFNCCloudOAuth inherited;
	
protected:
	virtual System::UnicodeString __fastcall GetAuthenticationURL();
	virtual void __fastcall RetrieveAccessToken();
	
public:
	virtual void __fastcall TestTokens(const Fmx::Tmsfnccloudbase::_di_TTMSFNCCloudBaseRequestResultEvent ATestTokensRequestResultEvent = Fmx::Tmsfnccloudbase::_di_TTMSFNCCloudBaseRequestResultEvent());
	virtual bool __fastcall GetTestTokensResult(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
public:
	/* TTMSFNCCustomCloudOAuth.Create */ inline __fastcall virtual TTMSFNCSimpleCloudOAuth()/* overload */ : TTMSFNCCloudOAuth() { }
	/* TTMSFNCCustomCloudOAuth.Create */ inline __fastcall virtual TTMSFNCSimpleCloudOAuth(System::Classes::TComponent* AOwner)/* overload */ : TTMSFNCCloudOAuth(AOwner) { }
	/* TTMSFNCCustomCloudOAuth.Destroy */ inline __fastcall virtual ~TTMSFNCSimpleCloudOAuth() { }
	
};


_DECLARE_METACLASS(System::TMetaClass, TTMSFNCCloudOAuthClass);

//-- var, const, procedure ---------------------------------------------------
extern DELPHI_PACKAGE System::ResourceString _sExternalBrowserAuthorizationOK;
#define Fmx_Tmsfnccloudoauth_sExternalBrowserAuthorizationOK System::LoadResourceString(&Fmx::Tmsfnccloudoauth::_sExternalBrowserAuthorizationOK)
extern DELPHI_PACKAGE System::ResourceString _sExternalBrowserAuthorizationFailed;
#define Fmx_Tmsfnccloudoauth_sExternalBrowserAuthorizationFailed System::LoadResourceString(&Fmx::Tmsfnccloudoauth::_sExternalBrowserAuthorizationFailed)
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x1);
static constexpr System::Int8 BLD_VER = System::Int8(0x0);
}	/* namespace Tmsfnccloudoauth */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCCLOUDOAUTH)
using namespace Fmx::Tmsfnccloudoauth;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfnccloudoauthHPP
