// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCCloudSentry.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfnccloudsentryHPP
#define Fmx_TmsfnccloudsentryHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <FMX.TMSFNCCloudBase.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.TMSFNCUtils.hpp>
#include <System.JSON.hpp>
#include <System.Generics.Collections.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>
#include <System.Types.hpp>
#include <FMX.TMSFNCCustomComponent.hpp>
#include <FMX.Controls.hpp>
#include <FMX.Types.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfnccloudsentry
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCCloudSentryEvent;
class DELPHICLASS TTMSFNCCloudSentryEvents;
class DELPHICLASS TTMSFNCCloudSentryIssue;
class DELPHICLASS TTMSFNCCloudSentryIssues;
class DELPHICLASS TTMSFNCCloudSentryProject;
class DELPHICLASS TTMSFNCCloudSentryProjects;
class DELPHICLASS TTMSFNCCustomCloudSentry;
class DELPHICLASS TTMSFNCCloudSentry;
//-- type declarations -------------------------------------------------------
enum DECLSPEC_DENUM TTMSFNCCloudSentryLogLevel : unsigned char { sllDebug, sllInfo, sllWarning, sllError, sllFatal };

enum DECLSPEC_DENUM TTMSFNCCloudSentryPlatform : unsigned char { spOther, spAS3, spC, spCFML, spCocoa, spCSharp, spElixir, SPHaskell, spGo, spGroovy, spJava, spJavaScript, spNative, spNode, spObjC, spPerl, spPHP, spPython, spRuby };

enum DECLSPEC_DENUM TTMSFNCCloudSentryIssueStatus : unsigned char { sisUnresolved, sisResolved, sisMuted, sisIgnored };

class PASCALIMPLEMENTATION TTMSFNCCloudSentryEvent : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	System::UnicodeString FCulprit;
	System::TDateTime FDateCreated;
	System::UnicodeString FEventID;
	System::UnicodeString FGroupID;
	System::UnicodeString FID;
	System::UnicodeString FIPAddress;
	TTMSFNCCloudSentryLogLevel FLevel;
	System::UnicodeString FMessage;
	TTMSFNCCloudSentryIssue* FOwner;
	TTMSFNCCloudSentryPlatform FPlatform;
	System::UnicodeString FSource;
	System::UnicodeString FTitle;
	System::UnicodeString FType;
	System::UnicodeString FUsername;
	
protected:
	virtual void __fastcall ParseJSONEvent(System::Json::TJSONValue* AJSONEvent);
	
public:
	__fastcall virtual TTMSFNCCloudSentryEvent(TTMSFNCCloudSentryIssue* AIssue);
	__property System::UnicodeString Culprit = {read=FCulprit};
	__property System::TDateTime DateCreated = {read=FDateCreated};
	__property System::UnicodeString EventID = {read=FEventID};
	__property System::UnicodeString GroupID = {read=FGroupID};
	__property System::UnicodeString ID = {read=FID};
	__property System::UnicodeString IPAddress = {read=FIPAddress};
	__property TTMSFNCCloudSentryLogLevel Level = {read=FLevel, nodefault};
	__property System::UnicodeString Message = {read=FMessage};
	__property TTMSFNCCloudSentryIssue* Owner = {read=FOwner};
	__property TTMSFNCCloudSentryPlatform Platform = {read=FPlatform, nodefault};
	__property System::UnicodeString Source = {read=FSource};
	__property System::UnicodeString Title = {read=FTitle};
	__property System::UnicodeString Type = {read=FType};
	__property System::UnicodeString Username = {read=FUsername};
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
	/* TObject.Create */ inline __fastcall TTMSFNCCloudSentryEvent() : System::TObject() { }
	/* TObject.Destroy */ inline __fastcall virtual ~TTMSFNCCloudSentryEvent() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudSentryEvents : public System::Generics::Collections::TObjectList__1<TTMSFNCCloudSentryEvent*>
{
	typedef System::Generics::Collections::TObjectList__1<TTMSFNCCloudSentryEvent*> inherited;
	
public:
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudSentry_TTMSFNCCloudSentryEvent>.Create */ inline __fastcall TTMSFNCCloudSentryEvents()/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudSentryEvent*>() { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudSentry_TTMSFNCCloudSentryEvent>.Create */ inline __fastcall TTMSFNCCloudSentryEvents(bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudSentryEvent*>(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudSentry_TTMSFNCCloudSentryEvent>.Create */ inline __fastcall TTMSFNCCloudSentryEvents(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCloudSentryEvent*> > AComparer, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudSentryEvent*>(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudSentry_TTMSFNCCloudSentryEvent>.Create */ inline __fastcall TTMSFNCCloudSentryEvents(System::Generics::Collections::TEnumerable__1<TTMSFNCCloudSentryEvent*>* const Collection, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudSentryEvent*>(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudSentry_TTMSFNCCloudSentryEvent>.Destroy */ inline __fastcall virtual ~TTMSFNCCloudSentryEvents() { }
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudSentry_TTMSFNCCloudSentryEvent>.Create */ inline __fastcall TTMSFNCCloudSentryEvents(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCloudSentryEvent*> > AComparer)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudSentryEvent*>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudSentry_TTMSFNCCloudSentryEvent>.Create */ inline __fastcall TTMSFNCCloudSentryEvents(System::Generics::Collections::TEnumerable__1<TTMSFNCCloudSentryEvent*>* const Collection)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudSentryEvent*>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudSentry_TTMSFNCCloudSentryEvent>.Create */ inline __fastcall TTMSFNCCloudSentryEvents(TTMSFNCCloudSentryEvent* const *Values, const int Values_High)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudSentryEvent*>(Values, Values_High) { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudSentryIssue : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	int FCount;
	System::UnicodeString FCulprit;
	TTMSFNCCloudSentryEvents* FEvents;
	System::TDateTime FFirstSeen;
	bool FGetAllEvents;
	System::UnicodeString FID;
	bool FIsPublic;
	bool FIsSeen;
	bool FIsUnhandled;
	System::TDateTime FLastSeen;
	TTMSFNCCloudSentryLogLevel FLevel;
	System::UnicodeString FLink;
	TTMSFNCCloudSentryProject* FOwner;
	TTMSFNCCloudSentryPlatform FPlatform;
	TTMSFNCCloudSentryIssueStatus FStatus;
	System::UnicodeString FTitle;
	int FUserCount;
	System::UnicodeString FEventsCursor;
	System::UnicodeString FProjectID;
	
protected:
	virtual void __fastcall ParseJSONIssue(System::Json::TJSONValue* AJSONIssue);
	
public:
	__fastcall virtual TTMSFNCCloudSentryIssue(TTMSFNCCloudSentryProject* AProject);
	__fastcall virtual ~TTMSFNCCloudSentryIssue();
	void __fastcall GetAllEvents();
	void __fastcall GetEvents(System::UnicodeString ACursor = System::UnicodeString());
	__property int Count = {read=FCount, nodefault};
	__property System::UnicodeString Culprit = {read=FCulprit};
	__property TTMSFNCCloudSentryEvents* Events = {read=FEvents};
	__property System::UnicodeString EventsCursor = {read=FEventsCursor};
	__property System::TDateTime FirstSeen = {read=FFirstSeen};
	__property System::UnicodeString ID = {read=FID};
	__property bool IsPublic = {read=FIsPublic, nodefault};
	__property bool IsSeen = {read=FIsSeen, nodefault};
	__property bool IsUnhandled = {read=FIsUnhandled, nodefault};
	__property System::TDateTime LastSeen = {read=FLastSeen};
	__property TTMSFNCCloudSentryLogLevel Level = {read=FLevel, nodefault};
	__property System::UnicodeString Link = {read=FLink};
	__property TTMSFNCCloudSentryProject* Owner = {read=FOwner};
	__property TTMSFNCCloudSentryPlatform Platform = {read=FPlatform, nodefault};
	__property System::UnicodeString ProjectID = {read=FProjectID};
	__property TTMSFNCCloudSentryIssueStatus Status = {read=FStatus, nodefault};
	__property System::UnicodeString Title = {read=FTitle};
	__property int UserCount = {read=FUserCount, nodefault};
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
	/* TObject.Create */ inline __fastcall TTMSFNCCloudSentryIssue() : System::TObject() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudSentryIssues : public System::Generics::Collections::TObjectList__1<TTMSFNCCloudSentryIssue*>
{
	typedef System::Generics::Collections::TObjectList__1<TTMSFNCCloudSentryIssue*> inherited;
	
public:
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudSentry_TTMSFNCCloudSentryIssue>.Create */ inline __fastcall TTMSFNCCloudSentryIssues()/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudSentryIssue*>() { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudSentry_TTMSFNCCloudSentryIssue>.Create */ inline __fastcall TTMSFNCCloudSentryIssues(bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudSentryIssue*>(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudSentry_TTMSFNCCloudSentryIssue>.Create */ inline __fastcall TTMSFNCCloudSentryIssues(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCloudSentryIssue*> > AComparer, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudSentryIssue*>(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudSentry_TTMSFNCCloudSentryIssue>.Create */ inline __fastcall TTMSFNCCloudSentryIssues(System::Generics::Collections::TEnumerable__1<TTMSFNCCloudSentryIssue*>* const Collection, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudSentryIssue*>(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudSentry_TTMSFNCCloudSentryIssue>.Destroy */ inline __fastcall virtual ~TTMSFNCCloudSentryIssues() { }
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudSentry_TTMSFNCCloudSentryIssue>.Create */ inline __fastcall TTMSFNCCloudSentryIssues(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCloudSentryIssue*> > AComparer)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudSentryIssue*>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudSentry_TTMSFNCCloudSentryIssue>.Create */ inline __fastcall TTMSFNCCloudSentryIssues(System::Generics::Collections::TEnumerable__1<TTMSFNCCloudSentryIssue*>* const Collection)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudSentryIssue*>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudSentry_TTMSFNCCloudSentryIssue>.Create */ inline __fastcall TTMSFNCCloudSentryIssues(TTMSFNCCloudSentryIssue* const *Values, const int Values_High)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudSentryIssue*>(Values, Values_High) { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudSentryProject : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	System::UnicodeString FSubmitLink;
	System::TDateTime FDateCreated;
	TTMSFNCCloudSentryEvents* FEvents;
	System::TDateTime FFirstEvent;
	bool FGetAllIssues;
	System::UnicodeString FID;
	bool FIsInternal;
	bool FIsMember;
	bool FIsPublic;
	TTMSFNCCloudSentryIssues* FIssues;
	System::UnicodeString FIssuesCursor;
	System::UnicodeString FName;
	System::UnicodeString FOrganizationID;
	System::UnicodeString FOrganizationName;
	System::UnicodeString FOrganizationSlug;
	TTMSFNCCustomCloudSentry* FOwner;
	System::UnicodeString FSlug;
	System::UnicodeString FStatus;
	
protected:
	virtual void __fastcall ParseJSONProject(System::Json::TJSONValue* AJSONProject);
	
public:
	__fastcall virtual TTMSFNCCloudSentryProject(TTMSFNCCustomCloudSentry* ASentry);
	__fastcall virtual ~TTMSFNCCloudSentryProject();
	void __fastcall GetAllIssues();
	void __fastcall GetIssues(System::UnicodeString ACursor = System::UnicodeString());
	void __fastcall LogException(System::UnicodeString AMessage, System::UnicodeString AErrorType, System::UnicodeString ASource, System::UnicodeString AStackTrace = System::UnicodeString(), TTMSFNCCloudSentryLogLevel ALevel = (TTMSFNCCloudSentryLogLevel)(0x3), System::TDateTime ATimestamp = 0.000000E+00, System::UnicodeString AValue = System::UnicodeString())/* overload */;
	void __fastcall LogMessage(System::UnicodeString AMessage, TTMSFNCCloudSentryLogLevel ALevel = (TTMSFNCCloudSentryLogLevel)(0x0), System::TDateTime ATimeStamp = 0.000000E+00, System::UnicodeString ASource = System::UnicodeString(), System::UnicodeString AStackTrace = System::UnicodeString());
	__property System::TDateTime DateCreated = {read=FDateCreated};
	__property System::TDateTime FirstEvent = {read=FFirstEvent};
	__property System::UnicodeString ID = {read=FID};
	__property bool IsInternal = {read=FIsInternal, nodefault};
	__property bool IsMember = {read=FIsMember, nodefault};
	__property bool IsPublic = {read=FIsPublic, nodefault};
	__property TTMSFNCCloudSentryIssues* Issues = {read=FIssues};
	__property System::UnicodeString IssuesCursor = {read=FIssuesCursor};
	__property System::UnicodeString Name = {read=FName};
	__property System::UnicodeString OrganizationID = {read=FOrganizationID};
	__property System::UnicodeString OrganizationName = {read=FOrganizationName};
	__property System::UnicodeString OrganizationSlug = {read=FOrganizationSlug};
	__property TTMSFNCCustomCloudSentry* Owner = {read=FOwner};
	__property System::UnicodeString Slug = {read=FSlug};
	__property System::UnicodeString Status = {read=FStatus};
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
	/* TObject.Create */ inline __fastcall TTMSFNCCloudSentryProject() : System::TObject() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudSentryProjects : public System::Generics::Collections::TObjectList__1<TTMSFNCCloudSentryProject*>
{
	typedef System::Generics::Collections::TObjectList__1<TTMSFNCCloudSentryProject*> inherited;
	
public:
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudSentry_TTMSFNCCloudSentryProject>.Create */ inline __fastcall TTMSFNCCloudSentryProjects()/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudSentryProject*>() { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudSentry_TTMSFNCCloudSentryProject>.Create */ inline __fastcall TTMSFNCCloudSentryProjects(bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudSentryProject*>(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudSentry_TTMSFNCCloudSentryProject>.Create */ inline __fastcall TTMSFNCCloudSentryProjects(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCloudSentryProject*> > AComparer, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudSentryProject*>(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudSentry_TTMSFNCCloudSentryProject>.Create */ inline __fastcall TTMSFNCCloudSentryProjects(System::Generics::Collections::TEnumerable__1<TTMSFNCCloudSentryProject*>* const Collection, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudSentryProject*>(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudSentry_TTMSFNCCloudSentryProject>.Destroy */ inline __fastcall virtual ~TTMSFNCCloudSentryProjects() { }
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudSentry_TTMSFNCCloudSentryProject>.Create */ inline __fastcall TTMSFNCCloudSentryProjects(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCloudSentryProject*> > AComparer)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudSentryProject*>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudSentry_TTMSFNCCloudSentryProject>.Create */ inline __fastcall TTMSFNCCloudSentryProjects(System::Generics::Collections::TEnumerable__1<TTMSFNCCloudSentryProject*>* const Collection)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudSentryProject*>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudSentry_TTMSFNCCloudSentryProject>.Create */ inline __fastcall TTMSFNCCloudSentryProjects(TTMSFNCCloudSentryProject* const *Values, const int Values_High)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudSentryProject*>(Values, Values_High) { }
	
};


typedef void __fastcall (__closure *TTMSFNCCloudSentryGetEventsEvent)(System::TObject* Sender, TTMSFNCCloudSentryIssue* AIssue, TTMSFNCCloudSentryEvents* AEvents, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudSentryGetIssuesEvent)(System::TObject* Sender, TTMSFNCCloudSentryProject* AProject, TTMSFNCCloudSentryIssues* AIssues, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudSentryGetProjectsEvent)(System::TObject* Sender, TTMSFNCCloudSentryProjects* AProjects, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudSentryLogEvent)(System::TObject* Sender, System::UnicodeString AEventID, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

class PASCALIMPLEMENTATION TTMSFNCCustomCloudSentry : public Fmx::Tmsfnccloudbase::TTMSFNCCloudBase
{
	typedef Fmx::Tmsfnccloudbase::TTMSFNCCloudBase inherited;
	
private:
	System::UnicodeString FAuthenticationToken;
	bool FConnect;
	bool FGetAllProjects;
	TTMSFNCCloudSentryProjects* FProjects;
	System::UnicodeString FProjectsCursor;
	System::Classes::TNotifyEvent FOnConnected;
	TTMSFNCCloudSentryGetEventsEvent FOnGetEvents;
	TTMSFNCCloudSentryGetIssuesEvent FOnGetIssues;
	TTMSFNCCloudSentryGetProjectsEvent FOnGetProjects;
	TTMSFNCCloudSentryLogEvent FOnLogMessage;
	TTMSFNCCloudSentryLogEvent FOnLogException;
	TTMSFNCCloudSentryGetProjectsEvent FOnGetAllProjects;
	TTMSFNCCloudSentryGetIssuesEvent FOnGetAllIssues;
	TTMSFNCCloudSentryGetEventsEvent FOnGetAllEvents;
	
protected:
	virtual NativeUInt __fastcall GetInstance();
	virtual void __fastcall DoConnected();
	virtual void __fastcall DoGetAllEvents(TTMSFNCCloudSentryIssue* AIssue, TTMSFNCCloudSentryEvents* AEvents, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoGetAllIssues(TTMSFNCCloudSentryProject* AProject, TTMSFNCCloudSentryIssues* AIssues, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoGetAllProjects(TTMSFNCCloudSentryProjects* AProjects, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoGetIssues(TTMSFNCCloudSentryProject* AProject, TTMSFNCCloudSentryIssues* AIssues, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoGetEvents(TTMSFNCCloudSentryIssue* AIssue, TTMSFNCCloudSentryEvents* AEvents, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoGetProjects(TTMSFNCCloudSentryProjects* AProjects, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoLogMessage(System::UnicodeString AEventID, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoLogException(System::UnicodeString AEventID, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestGetEvents(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestGetIssues(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestGetKeys(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestGetProjects(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestLogException(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	System::UnicodeString __fastcall GetCursorFromHeaders(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestHeaders* const AHeaders);
	void __fastcall GetAllEvents(System::UnicodeString AIssueID);
	void __fastcall GetAllIssues(System::UnicodeString AProjectID);
	virtual void __fastcall GetEvents(TTMSFNCCloudSentryIssue* AIssue, System::UnicodeString ACursor = System::UnicodeString())/* overload */;
	virtual void __fastcall GetEvents(System::UnicodeString AIssueID, System::UnicodeString ACursor = System::UnicodeString())/* overload */;
	virtual void __fastcall GetIssues(TTMSFNCCloudSentryProject* AProject, System::UnicodeString ACursor = System::UnicodeString())/* overload */;
	virtual void __fastcall GetIssues(System::UnicodeString AProjectID, System::UnicodeString ACursor = System::UnicodeString())/* overload */;
	virtual void __fastcall GetKeys(TTMSFNCCloudSentryProject* AProject, System::UnicodeString ACursor = System::UnicodeString())/* overload */;
	virtual void __fastcall GetKeys(System::UnicodeString AProjectID, System::UnicodeString ACursor = System::UnicodeString())/* overload */;
	virtual System::UnicodeString __fastcall GetVersion();
	__property System::UnicodeString AuthenticationToken = {read=FAuthenticationToken, write=FAuthenticationToken};
	__property System::Classes::TNotifyEvent OnConnected = {read=FOnConnected, write=FOnConnected};
	__property TTMSFNCCloudSentryGetEventsEvent OnGetAllEvents = {read=FOnGetAllEvents, write=FOnGetAllEvents};
	__property TTMSFNCCloudSentryGetIssuesEvent OnGetAllIssues = {read=FOnGetAllIssues, write=FOnGetAllIssues};
	__property TTMSFNCCloudSentryGetProjectsEvent OnGetAllProjects = {read=FOnGetAllProjects, write=FOnGetAllProjects};
	__property TTMSFNCCloudSentryGetEventsEvent OnGetEvents = {read=FOnGetEvents, write=FOnGetEvents};
	__property TTMSFNCCloudSentryGetIssuesEvent OnGetIssues = {read=FOnGetIssues, write=FOnGetIssues};
	__property TTMSFNCCloudSentryGetProjectsEvent OnGetProjects = {read=FOnGetProjects, write=FOnGetProjects};
	__property TTMSFNCCloudSentryLogEvent OnLogException = {read=FOnLogException, write=FOnLogException};
	__property TTMSFNCCloudSentryLogEvent OnLogMessage = {read=FOnLogMessage, write=FOnLogMessage};
	
public:
	__fastcall virtual TTMSFNCCustomCloudSentry(System::Classes::TComponent* AOwner)/* overload */;
	__fastcall virtual ~TTMSFNCCustomCloudSentry();
	void __fastcall Connect(System::UnicodeString AAuthenticationToken = System::UnicodeString());
	void __fastcall GetAllProjects();
	TTMSFNCCloudSentryIssue* __fastcall GetIssueByID(System::UnicodeString AIssueID);
	TTMSFNCCloudSentryProject* __fastcall GetProjectByID(System::UnicodeString AProjectID);
	TTMSFNCCloudSentryProject* __fastcall GetProjectByName(System::UnicodeString AProjectName);
	void __fastcall GetProjects(System::UnicodeString ACursor = System::UnicodeString());
	void __fastcall LogException(TTMSFNCCloudSentryProject* AProject, System::UnicodeString AMessage, System::UnicodeString AErrorType, System::UnicodeString ASource, System::UnicodeString AStackTrace = System::UnicodeString(), TTMSFNCCloudSentryLogLevel ALevel = (TTMSFNCCloudSentryLogLevel)(0x3), System::TDateTime ATimestamp = 0.000000E+00, System::UnicodeString AValue = System::UnicodeString())/* overload */;
	void __fastcall LogException(System::UnicodeString AProjectID, System::UnicodeString AMessage, System::UnicodeString AErrorType, System::UnicodeString ASource, System::UnicodeString AStackTrace = System::UnicodeString(), TTMSFNCCloudSentryLogLevel ALevel = (TTMSFNCCloudSentryLogLevel)(0x3), System::TDateTime ATimestamp = 0.000000E+00, System::UnicodeString AValue = System::UnicodeString())/* overload */;
	void __fastcall LogMessage(TTMSFNCCloudSentryProject* AProject, System::UnicodeString AMessage, TTMSFNCCloudSentryLogLevel ALevel = (TTMSFNCCloudSentryLogLevel)(0x0), System::TDateTime ATimeStamp = 0.000000E+00, System::UnicodeString ASource = System::UnicodeString(), System::UnicodeString AStackTrace = System::UnicodeString())/* overload */;
	void __fastcall LogMessage(System::UnicodeString AProjectID, System::UnicodeString AMessage, TTMSFNCCloudSentryLogLevel ALevel = (TTMSFNCCloudSentryLogLevel)(0x0), System::TDateTime ATimeStamp = 0.000000E+00, System::UnicodeString ASource = System::UnicodeString(), System::UnicodeString AStackTrace = System::UnicodeString())/* overload */;
	__property TTMSFNCCloudSentryProjects* Projects = {read=FProjects};
	__property System::UnicodeString ProjectsCursor = {read=FProjectsCursor};
public:
	/* TTMSFNCCustomCloudBase.Create */ inline __fastcall virtual TTMSFNCCustomCloudSentry()/* overload */ : Fmx::Tmsfnccloudbase::TTMSFNCCloudBase() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudSentry : public TTMSFNCCustomCloudSentry
{
	typedef TTMSFNCCustomCloudSentry inherited;
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	
__published:
	__property AuthenticationToken = {default=0};
	__property OnConnected;
	__property OnGetAllEvents;
	__property OnGetAllIssues;
	__property OnGetAllProjects;
	__property OnGetEvents;
	__property OnGetIssues;
	__property OnGetProjects;
	__property OnLogException;
	__property OnLogMessage;
public:
	/* TTMSFNCCustomCloudSentry.Create */ inline __fastcall virtual TTMSFNCCloudSentry(System::Classes::TComponent* AOwner)/* overload */ : TTMSFNCCustomCloudSentry(AOwner) { }
	/* TTMSFNCCustomCloudSentry.Destroy */ inline __fastcall virtual ~TTMSFNCCloudSentry() { }
	
public:
	/* TTMSFNCCustomCloudBase.Create */ inline __fastcall virtual TTMSFNCCloudSentry()/* overload */ : TTMSFNCCustomCloudSentry() { }
	
};


//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x0);
static constexpr System::Int8 BLD_VER = System::Int8(0x0);
}	/* namespace Tmsfnccloudsentry */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCCLOUDSENTRY)
using namespace Fmx::Tmsfnccloudsentry;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfnccloudsentryHPP
