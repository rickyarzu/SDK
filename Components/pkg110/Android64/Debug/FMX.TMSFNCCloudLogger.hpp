// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCCloudLogger.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfnccloudloggerHPP
#define Fmx_TmsfnccloudloggerHPP

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
#include <FMX.TMSFNCCustomComponent.hpp>
#include <FMX.TMSFNCCloudExceptionless.hpp>
#include <FMX.TMSFNCCloudSentry.hpp>
#include <FMX.TMSFNCCloudRollbar.hpp>
#include <System.JSON.hpp>
#include <System.Generics.Collections.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>
#include <System.Types.hpp>
#include <FMX.Controls.hpp>
#include <FMX.Types.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfnccloudlogger
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCCloudLoggerExceptionless;
class DELPHICLASS TTMSFNCCloudLoggerSentry;
class DELPHICLASS TTMSFNCCloudLoggerRollbar;
class DELPHICLASS TTMSFNCCloudLoggerEvent;
class DELPHICLASS TTMSFNCCloudLoggerEvents;
class DELPHICLASS TTMSFNCCloudLoggerStack;
class DELPHICLASS TTMSFNCCloudLoggerStacks;
class DELPHICLASS TTMSFNCCloudLoggerProject;
class DELPHICLASS TTMSFNCCloudLoggerProjects;
class DELPHICLASS TTMSFNCCustomCloudLogger;
class DELPHICLASS TTMSFNCCloudLogger;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TTMSFNCCloudLoggerExceptionless : public Fmx::Tmsfnccloudexceptionless::TTMSFNCCloudExceptionless
{
	typedef Fmx::Tmsfnccloudexceptionless::TTMSFNCCloudExceptionless inherited;
	
public:
	/* TTMSFNCCustomCloudExceptionless.Create */ inline __fastcall virtual TTMSFNCCloudLoggerExceptionless(System::Classes::TComponent* AOwner)/* overload */ : Fmx::Tmsfnccloudexceptionless::TTMSFNCCloudExceptionless(AOwner) { }
	/* TTMSFNCCustomCloudExceptionless.Destroy */ inline __fastcall virtual ~TTMSFNCCloudLoggerExceptionless() { }
	
public:
	/* TTMSFNCCustomCloudBase.Create */ inline __fastcall virtual TTMSFNCCloudLoggerExceptionless()/* overload */ : Fmx::Tmsfnccloudexceptionless::TTMSFNCCloudExceptionless() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudLoggerSentry : public Fmx::Tmsfnccloudsentry::TTMSFNCCloudSentry
{
	typedef Fmx::Tmsfnccloudsentry::TTMSFNCCloudSentry inherited;
	
public:
	/* TTMSFNCCustomCloudSentry.Create */ inline __fastcall virtual TTMSFNCCloudLoggerSentry(System::Classes::TComponent* AOwner)/* overload */ : Fmx::Tmsfnccloudsentry::TTMSFNCCloudSentry(AOwner) { }
	/* TTMSFNCCustomCloudSentry.Destroy */ inline __fastcall virtual ~TTMSFNCCloudLoggerSentry() { }
	
public:
	/* TTMSFNCCustomCloudBase.Create */ inline __fastcall virtual TTMSFNCCloudLoggerSentry()/* overload */ : Fmx::Tmsfnccloudsentry::TTMSFNCCloudSentry() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudLoggerRollbar : public Fmx::Tmsfnccloudrollbar::TTMSFNCCloudRollBar
{
	typedef Fmx::Tmsfnccloudrollbar::TTMSFNCCloudRollBar inherited;
	
public:
	/* TTMSFNCCustomCloudRollBar.Create */ inline __fastcall virtual TTMSFNCCloudLoggerRollbar(System::Classes::TComponent* AOwner)/* overload */ : Fmx::Tmsfnccloudrollbar::TTMSFNCCloudRollBar(AOwner) { }
	/* TTMSFNCCustomCloudRollBar.Destroy */ inline __fastcall virtual ~TTMSFNCCloudLoggerRollbar() { }
	
public:
	/* TTMSFNCCustomCloudBase.Create */ inline __fastcall virtual TTMSFNCCloudLoggerRollbar()/* overload */ : Fmx::Tmsfnccloudrollbar::TTMSFNCCloudRollBar() { }
	
};


enum DECLSPEC_DENUM TTMSFNCCloudLoggerLogLevel : unsigned char { llDebug, llInfo, llWarning, llError, llFatal, llTrace, llOff, llUnknown };

enum DECLSPEC_DENUM TTMSFNCCloudLoggerService : unsigned char { lsExceptionless, lsSentry, lsRollbar };

enum DECLSPEC_DENUM TTMSFNCCloudLoggerStatus : unsigned char { lstUnresolved, lstResolved, lstMuted, lstIgnored, lstDiscarded };

class PASCALIMPLEMENTATION TTMSFNCCloudLoggerEvent : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	System::TDateTime FDateCreated;
	System::UnicodeString FErrorType;
	System::UnicodeString FID;
	System::UnicodeString FIPAddress;
	TTMSFNCCloudLoggerLogLevel FLevel;
	System::UnicodeString FMessage;
	TTMSFNCCloudLoggerStack* FOwner;
	System::UnicodeString FProjectID;
	System::UnicodeString FSource;
	System::UnicodeString FStackTrace;
	System::UnicodeString FTitle;
	
public:
	__fastcall virtual TTMSFNCCloudLoggerEvent(TTMSFNCCloudLoggerStack* AStack);
	void __fastcall Assign(System::TObject* Source);
	__property System::TDateTime DateCreated = {read=FDateCreated};
	__property System::UnicodeString ErrorType = {read=FErrorType};
	__property System::UnicodeString ID = {read=FID};
	__property System::UnicodeString IPAddress = {read=FIPAddress};
	__property TTMSFNCCloudLoggerLogLevel Level = {read=FLevel, nodefault};
	__property System::UnicodeString Message = {read=FMessage};
	__property TTMSFNCCloudLoggerStack* Owner = {read=FOwner};
	__property System::UnicodeString ProjectID = {read=FProjectID};
	__property System::UnicodeString Source = {read=FSource};
	__property System::UnicodeString StackTrace = {read=FStackTrace};
	__property System::UnicodeString Title = {read=FTitle};
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
	/* TObject.Create */ inline __fastcall TTMSFNCCloudLoggerEvent() : System::TObject() { }
	/* TObject.Destroy */ inline __fastcall virtual ~TTMSFNCCloudLoggerEvent() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudLoggerEvents : public System::Generics::Collections::TObjectList__1<TTMSFNCCloudLoggerEvent*>
{
	typedef System::Generics::Collections::TObjectList__1<TTMSFNCCloudLoggerEvent*> inherited;
	
public:
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudLogger_TTMSFNCCloudLoggerEvent>.Create */ inline __fastcall TTMSFNCCloudLoggerEvents()/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudLoggerEvent*>() { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudLogger_TTMSFNCCloudLoggerEvent>.Create */ inline __fastcall TTMSFNCCloudLoggerEvents(bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudLoggerEvent*>(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudLogger_TTMSFNCCloudLoggerEvent>.Create */ inline __fastcall TTMSFNCCloudLoggerEvents(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCloudLoggerEvent*> > AComparer, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudLoggerEvent*>(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudLogger_TTMSFNCCloudLoggerEvent>.Create */ inline __fastcall TTMSFNCCloudLoggerEvents(System::Generics::Collections::TEnumerable__1<TTMSFNCCloudLoggerEvent*>* const Collection, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudLoggerEvent*>(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudLogger_TTMSFNCCloudLoggerEvent>.Destroy */ inline __fastcall virtual ~TTMSFNCCloudLoggerEvents() { }
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudLogger_TTMSFNCCloudLoggerEvent>.Create */ inline __fastcall TTMSFNCCloudLoggerEvents(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCloudLoggerEvent*> > AComparer)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudLoggerEvent*>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudLogger_TTMSFNCCloudLoggerEvent>.Create */ inline __fastcall TTMSFNCCloudLoggerEvents(System::Generics::Collections::TEnumerable__1<TTMSFNCCloudLoggerEvent*>* const Collection)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudLoggerEvent*>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudLogger_TTMSFNCCloudLoggerEvent>.Create */ inline __fastcall TTMSFNCCloudLoggerEvents(TTMSFNCCloudLoggerEvent* const *Values, const int Values_High)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudLoggerEvent*>(Values, Values_High) { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudLoggerStack : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	TTMSFNCCloudLoggerProject* FOwner;
	System::UnicodeString FID;
	System::UnicodeString FProjectID;
	System::TDateTime FFirstOccurrence;
	System::TDateTime FLastOccurrence;
	System::UnicodeString FTitle;
	int FTotalOccurrences;
	TTMSFNCCloudLoggerStatus FStatus;
	TTMSFNCCloudLoggerLogLevel FLevel;
	TTMSFNCCloudLoggerEvents* FEvents;
	
public:
	__fastcall virtual TTMSFNCCloudLoggerStack(TTMSFNCCloudLoggerProject* AProject);
	__fastcall virtual ~TTMSFNCCloudLoggerStack();
	void __fastcall Assign(System::TObject* Source);
	void __fastcall GetAllEvents();
	void __fastcall GetEvents();
	TTMSFNCCloudLoggerStatus __fastcall ServiceToLoggerStatus(Fmx::Tmsfnccloudexceptionless::TTMSFNCCloudExceptionlessStatus AStatus)/* overload */;
	TTMSFNCCloudLoggerStatus __fastcall ServiceToLoggerStatus(Fmx::Tmsfnccloudrollbar::TTMSFNCCloudRollBarItemStatus AStatus)/* overload */;
	TTMSFNCCloudLoggerStatus __fastcall ServiceToLoggerStatus(Fmx::Tmsfnccloudsentry::TTMSFNCCloudSentryIssueStatus AStatus)/* overload */;
	__property System::TDateTime FirstOccurrence = {read=FFirstOccurrence};
	__property TTMSFNCCloudLoggerEvents* Events = {read=FEvents};
	__property System::UnicodeString ID = {read=FID};
	__property System::TDateTime LastOccurrence = {read=FLastOccurrence};
	__property TTMSFNCCloudLoggerLogLevel Level = {read=FLevel, nodefault};
	__property TTMSFNCCloudLoggerProject* Owner = {read=FOwner};
	__property System::UnicodeString ProjectID = {read=FProjectID};
	__property TTMSFNCCloudLoggerStatus Status = {read=FStatus, nodefault};
	__property System::UnicodeString Title = {read=FTitle};
	__property int TotalOccurrences = {read=FTotalOccurrences, nodefault};
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
	/* TObject.Create */ inline __fastcall TTMSFNCCloudLoggerStack() : System::TObject() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudLoggerStacks : public System::Generics::Collections::TObjectList__1<TTMSFNCCloudLoggerStack*>
{
	typedef System::Generics::Collections::TObjectList__1<TTMSFNCCloudLoggerStack*> inherited;
	
public:
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudLogger_TTMSFNCCloudLoggerStack>.Create */ inline __fastcall TTMSFNCCloudLoggerStacks()/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudLoggerStack*>() { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudLogger_TTMSFNCCloudLoggerStack>.Create */ inline __fastcall TTMSFNCCloudLoggerStacks(bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudLoggerStack*>(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudLogger_TTMSFNCCloudLoggerStack>.Create */ inline __fastcall TTMSFNCCloudLoggerStacks(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCloudLoggerStack*> > AComparer, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudLoggerStack*>(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudLogger_TTMSFNCCloudLoggerStack>.Create */ inline __fastcall TTMSFNCCloudLoggerStacks(System::Generics::Collections::TEnumerable__1<TTMSFNCCloudLoggerStack*>* const Collection, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudLoggerStack*>(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudLogger_TTMSFNCCloudLoggerStack>.Destroy */ inline __fastcall virtual ~TTMSFNCCloudLoggerStacks() { }
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudLogger_TTMSFNCCloudLoggerStack>.Create */ inline __fastcall TTMSFNCCloudLoggerStacks(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCloudLoggerStack*> > AComparer)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudLoggerStack*>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudLogger_TTMSFNCCloudLoggerStack>.Create */ inline __fastcall TTMSFNCCloudLoggerStacks(System::Generics::Collections::TEnumerable__1<TTMSFNCCloudLoggerStack*>* const Collection)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudLoggerStack*>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudLogger_TTMSFNCCloudLoggerStack>.Create */ inline __fastcall TTMSFNCCloudLoggerStacks(TTMSFNCCloudLoggerStack* const *Values, const int Values_High)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudLoggerStack*>(Values, Values_High) { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudLoggerProject : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	TTMSFNCCustomCloudLogger* FOwner;
	System::UnicodeString FID;
	System::TDateTime FDateCreated;
	TTMSFNCCloudLoggerService FService;
	TTMSFNCCloudLoggerStacks* FStacks;
	System::UnicodeString FName;
	System::UnicodeString FOrganizationID;
	System::UnicodeString FNextStackPage;
	
public:
	__fastcall virtual TTMSFNCCloudLoggerProject(TTMSFNCCustomCloudLogger* ACloudLogger);
	__fastcall virtual ~TTMSFNCCloudLoggerProject();
	void __fastcall Assign(System::TObject* Source);
	void __fastcall GetAllStacks();
	void __fastcall GetStacks();
	virtual void __fastcall LogException(System::UnicodeString AMessage, System::UnicodeString AErrorType, System::UnicodeString ASource, System::UnicodeString AStackTrace = System::UnicodeString(), TTMSFNCCloudLoggerLogLevel ALevel = (TTMSFNCCloudLoggerLogLevel)(0x3), System::TDateTime ATimeStamp = 0.000000E+00);
	void __fastcall LogMessage(System::UnicodeString AMessage, TTMSFNCCloudLoggerLogLevel ALevel = (TTMSFNCCloudLoggerLogLevel)(0x1), System::UnicodeString ASource = System::UnicodeString(), System::TDateTime ATimeStamp = 0.000000E+00);
	__property System::TDateTime DateCreated = {read=FDateCreated};
	__property System::UnicodeString ID = {read=FID};
	__property System::UnicodeString Name = {read=FName};
	__property System::UnicodeString NextStackPage = {read=FNextStackPage};
	__property System::UnicodeString OrganizationID = {read=FOrganizationID};
	__property TTMSFNCCustomCloudLogger* Owner = {read=FOwner};
	__property TTMSFNCCloudLoggerService Service = {read=FService, nodefault};
	__property TTMSFNCCloudLoggerStacks* Stacks = {read=FStacks};
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
	/* TObject.Create */ inline __fastcall TTMSFNCCloudLoggerProject() : System::TObject() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudLoggerProjects : public System::Generics::Collections::TObjectList__1<TTMSFNCCloudLoggerProject*>
{
	typedef System::Generics::Collections::TObjectList__1<TTMSFNCCloudLoggerProject*> inherited;
	
public:
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudLogger_TTMSFNCCloudLoggerProject>.Create */ inline __fastcall TTMSFNCCloudLoggerProjects()/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudLoggerProject*>() { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudLogger_TTMSFNCCloudLoggerProject>.Create */ inline __fastcall TTMSFNCCloudLoggerProjects(bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudLoggerProject*>(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudLogger_TTMSFNCCloudLoggerProject>.Create */ inline __fastcall TTMSFNCCloudLoggerProjects(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCloudLoggerProject*> > AComparer, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudLoggerProject*>(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudLogger_TTMSFNCCloudLoggerProject>.Create */ inline __fastcall TTMSFNCCloudLoggerProjects(System::Generics::Collections::TEnumerable__1<TTMSFNCCloudLoggerProject*>* const Collection, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudLoggerProject*>(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudLogger_TTMSFNCCloudLoggerProject>.Destroy */ inline __fastcall virtual ~TTMSFNCCloudLoggerProjects() { }
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudLogger_TTMSFNCCloudLoggerProject>.Create */ inline __fastcall TTMSFNCCloudLoggerProjects(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCloudLoggerProject*> > AComparer)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudLoggerProject*>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudLogger_TTMSFNCCloudLoggerProject>.Create */ inline __fastcall TTMSFNCCloudLoggerProjects(System::Generics::Collections::TEnumerable__1<TTMSFNCCloudLoggerProject*>* const Collection)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudLoggerProject*>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudLogger_TTMSFNCCloudLoggerProject>.Create */ inline __fastcall TTMSFNCCloudLoggerProjects(TTMSFNCCloudLoggerProject* const *Values, const int Values_High)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudLoggerProject*>(Values, Values_High) { }
	
};


typedef void __fastcall (__closure *TTMSFNCCloudLoggerGetEventsEvent)(System::TObject* Sender, TTMSFNCCloudLoggerStack* AStack, TTMSFNCCloudLoggerEvents* AEvents, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudLoggerGetProjectsEvent)(System::TObject* Sender, TTMSFNCCloudLoggerProjects* AProjects, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudLoggerGetStacksEvent)(System::TObject* Sender, TTMSFNCCloudLoggerProject* AProject, TTMSFNCCloudLoggerStacks* AStacks, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudLoggerLogEvent)(System::TObject* Sender, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

class PASCALIMPLEMENTATION TTMSFNCCustomCloudLogger : public Fmx::Tmsfnccustomcomponent::TTMSFNCCustomComponent
{
	typedef Fmx::Tmsfnccustomcomponent::TTMSFNCCustomComponent inherited;
	
private:
	TTMSFNCCloudLoggerService FService;
	TTMSFNCCloudLoggerExceptionless* FTMSFNCCloudExceptionless;
	TTMSFNCCloudLoggerSentry* FTMSFNCCloudSentry;
	TTMSFNCCloudLoggerRollbar* FTMSFNCCloudRollbar;
	TTMSFNCCloudLoggerProjects* FProjects;
	System::UnicodeString FToken;
	System::UnicodeString FPassword;
	System::UnicodeString FEmailAddress;
	System::Classes::TNotifyEvent FOnConnected;
	TTMSFNCCloudLoggerGetProjectsEvent FOnGetAllProjects;
	TTMSFNCCloudLoggerLogEvent FOnLogMessage;
	TTMSFNCCloudLoggerLogEvent FOnLogException;
	TTMSFNCCloudLoggerGetStacksEvent FOnGetAllStacks;
	TTMSFNCCloudLoggerGetEventsEvent FOnGetAllEvents;
	TTMSFNCCloudLoggerGetEventsEvent FOnGetEvents;
	TTMSFNCCloudLoggerGetStacksEvent FOnGetStacks;
	TTMSFNCCloudLoggerGetProjectsEvent FOnGetProjects;
	void __fastcall InitExceptionless();
	void __fastcall InitRollbar();
	void __fastcall InitSentry();
	void __fastcall SetService(const TTMSFNCCloudLoggerService Value);
	void __fastcall SetEmailAddress(const System::UnicodeString Value);
	void __fastcall SetPassword(const System::UnicodeString Value);
	void __fastcall SetToken(const System::UnicodeString Value);
	TTMSFNCCloudLoggerLogLevel __fastcall ServiceToLoggerLevel(Fmx::Tmsfnccloudexceptionless::TTMSFNCCloudExceptionlessLogLevel ALevel)/* overload */;
	TTMSFNCCloudLoggerLogLevel __fastcall ServiceToLoggerLevel(Fmx::Tmsfnccloudrollbar::TTMSFNCCloudRollBarLogLevel ALevel)/* overload */;
	TTMSFNCCloudLoggerLogLevel __fastcall ServiceToLoggerLevel(Fmx::Tmsfnccloudsentry::TTMSFNCCloudSentryLogLevel ALevel)/* overload */;
	Fmx::Tmsfnccloudexceptionless::TTMSFNCCloudExceptionlessLogLevel __fastcall LoggerToExceptionlessLevel(TTMSFNCCloudLoggerLogLevel ALevel)/* overload */;
	Fmx::Tmsfnccloudrollbar::TTMSFNCCloudRollBarLogLevel __fastcall LoggerToRollbarLevel(TTMSFNCCloudLoggerLogLevel ALevel)/* overload */;
	Fmx::Tmsfnccloudsentry::TTMSFNCCloudSentryLogLevel __fastcall LoggerToSentryLevel(TTMSFNCCloudLoggerLogLevel ALevel)/* overload */;
	
protected:
	virtual void __fastcall DoConnected(System::TObject* Sender);
	virtual void __fastcall DoGetAllExceptionlessProjects(System::TObject* Sender, Fmx::Tmsfnccloudexceptionless::TTMSFNCCloudExceptionlessProjects* AProjects, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoGetAllSentryProjects(System::TObject* Sender, Fmx::Tmsfnccloudsentry::TTMSFNCCloudSentryProjects* AProjects, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoGetAllRollbarProjects(System::TObject* Sender, Fmx::Tmsfnccloudrollbar::TTMSFNCCloudRollBarProjects* AProjects, System::UnicodeString AErrorMessage, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoGetAllProjects(TTMSFNCCloudLoggerProjects* AProjects, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoGetExceptionlessProjects(System::TObject* Sender, Fmx::Tmsfnccloudexceptionless::TTMSFNCCloudExceptionlessProjects* AProjects, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoGetSentryProjects(System::TObject* Sender, Fmx::Tmsfnccloudsentry::TTMSFNCCloudSentryProjects* AProjects, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoGetRollbarProjects(System::TObject* Sender, Fmx::Tmsfnccloudrollbar::TTMSFNCCloudRollBarProjects* AProjects, System::UnicodeString AErrorMessage, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoGetProjects(TTMSFNCCloudLoggerProjects* AProjects, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoGetAllRollbarStacks(System::TObject* Sender, Fmx::Tmsfnccloudrollbar::TTMSFNCCloudRollBarProject* AProject, Fmx::Tmsfnccloudrollbar::TTMSFNCCloudRollBarItems* AItems, System::UnicodeString AErrorMessage, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoGetAllSentryStacks(System::TObject* Sender, Fmx::Tmsfnccloudsentry::TTMSFNCCloudSentryProject* AProject, Fmx::Tmsfnccloudsentry::TTMSFNCCloudSentryIssues* AIssues, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoGetAllExceptionlessStacks(System::TObject* Sender, Fmx::Tmsfnccloudexceptionless::TTMSFNCCloudExceptionlessProject* AProject, Fmx::Tmsfnccloudexceptionless::TTMSFNCCloudExceptionlessStacks* AStacks, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoGetAllStacks(TTMSFNCCloudLoggerProject* AProject, TTMSFNCCloudLoggerStacks* AStacks, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoGetRollbarStacks(System::TObject* Sender, Fmx::Tmsfnccloudrollbar::TTMSFNCCloudRollBarProject* AProject, Fmx::Tmsfnccloudrollbar::TTMSFNCCloudRollBarItems* AItems, System::UnicodeString AErrorMessage, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoGetSentryStacks(System::TObject* Sender, Fmx::Tmsfnccloudsentry::TTMSFNCCloudSentryProject* AProject, Fmx::Tmsfnccloudsentry::TTMSFNCCloudSentryIssues* AIssues, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoGetExceptionlessStacks(System::TObject* Sender, Fmx::Tmsfnccloudexceptionless::TTMSFNCCloudExceptionlessProject* AProject, Fmx::Tmsfnccloudexceptionless::TTMSFNCCloudExceptionlessStacks* AStacks, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoGetStacks(TTMSFNCCloudLoggerProject* AProject, TTMSFNCCloudLoggerStacks* AStacks, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoGetAllExceptionlessEvents(System::TObject* Sender, Fmx::Tmsfnccloudexceptionless::TTMSFNCCloudExceptionlessStack* AStack, Fmx::Tmsfnccloudexceptionless::TTMSFNCCloudExceptionlessEvents* AEvents, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoGetAllRollbarEvents(System::TObject* Sender, Fmx::Tmsfnccloudrollbar::TTMSFNCCloudRollBarItem* AItem, Fmx::Tmsfnccloudrollbar::TTMSFNCCloudRollBarOccurrences* AOccurrences, System::UnicodeString AErrorMessage, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoGetAllSentryEvents(System::TObject* Sender, Fmx::Tmsfnccloudsentry::TTMSFNCCloudSentryIssue* AIssue, Fmx::Tmsfnccloudsentry::TTMSFNCCloudSentryEvents* AEvents, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoGetAllEvents(TTMSFNCCloudLoggerStack* AStack, TTMSFNCCloudLoggerEvents* AEvents, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoGetExceptionlessEvents(System::TObject* Sender, Fmx::Tmsfnccloudexceptionless::TTMSFNCCloudExceptionlessStack* AStack, Fmx::Tmsfnccloudexceptionless::TTMSFNCCloudExceptionlessEvents* AEvents, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoGetRollbarEvents(System::TObject* Sender, Fmx::Tmsfnccloudrollbar::TTMSFNCCloudRollBarItem* AItem, Fmx::Tmsfnccloudrollbar::TTMSFNCCloudRollBarOccurrences* AOccurrences, System::UnicodeString AErrorMessage, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoGetSentryEvents(System::TObject* Sender, Fmx::Tmsfnccloudsentry::TTMSFNCCloudSentryIssue* AIssue, Fmx::Tmsfnccloudsentry::TTMSFNCCloudSentryEvents* AEvents, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoGetEvents(TTMSFNCCloudLoggerStack* AStack, TTMSFNCCloudLoggerEvents* AEvents, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoLogException(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoLogExceptionlessException(System::TObject* Sender, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoLogRollbarException(System::TObject* Sender, Fmx::Tmsfnccloudrollbar::TTMSFNCCloudRollBarProject* AProject, System::UnicodeString AErrorMessage, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoLogSentryException(System::TObject* Sender, System::UnicodeString AEventID, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoLogExceptionlessMessage(System::TObject* Sender, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoLogRollbarMessage(System::TObject* Sender, Fmx::Tmsfnccloudrollbar::TTMSFNCCloudRollBarProject* AProject, System::UnicodeString AErrorMessage, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoLogSentryMessage(System::TObject* Sender, System::UnicodeString AEventID, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoLogMessage(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall GetAllEvents(System::UnicodeString AStackID);
	void __fastcall GetAllStacks(System::UnicodeString AProjectID);
	virtual NativeUInt __fastcall GetInstance();
	virtual System::UnicodeString __fastcall GetVersion();
	__property System::UnicodeString EmailAddress = {read=FEmailAddress, write=SetEmailAddress};
	__property System::UnicodeString Password = {read=FPassword, write=SetPassword};
	__property System::UnicodeString Token = {read=FToken, write=SetToken};
	__property TTMSFNCCloudLoggerService Service = {read=FService, write=SetService, nodefault};
	__property System::Classes::TNotifyEvent OnConnected = {read=FOnConnected, write=FOnConnected};
	__property TTMSFNCCloudLoggerGetEventsEvent OnGetAllEvents = {read=FOnGetAllEvents, write=FOnGetAllEvents};
	__property TTMSFNCCloudLoggerGetProjectsEvent OnGetAllProjects = {read=FOnGetAllProjects, write=FOnGetAllProjects};
	__property TTMSFNCCloudLoggerGetStacksEvent OnGetAllStacks = {read=FOnGetAllStacks, write=FOnGetAllStacks};
	__property TTMSFNCCloudLoggerGetEventsEvent OnGetEvents = {read=FOnGetEvents, write=FOnGetEvents};
	__property TTMSFNCCloudLoggerGetProjectsEvent OnGetProjects = {read=FOnGetProjects, write=FOnGetProjects};
	__property TTMSFNCCloudLoggerGetStacksEvent OnGetStacks = {read=FOnGetStacks, write=FOnGetStacks};
	__property TTMSFNCCloudLoggerLogEvent OnLogException = {read=FOnLogException, write=FOnLogException};
	__property TTMSFNCCloudLoggerLogEvent OnLogMessage = {read=FOnLogMessage, write=FOnLogMessage};
	
public:
	__fastcall virtual TTMSFNCCustomCloudLogger(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCCustomCloudLogger();
	void __fastcall Connect(System::UnicodeString AEmailAddress, System::UnicodeString APassword)/* overload */;
	void __fastcall Connect(System::UnicodeString AToken)/* overload */;
	void __fastcall Connect()/* overload */;
	void __fastcall GetAllProjects();
	TTMSFNCCloudLoggerProject* __fastcall GetProjectByID(System::UnicodeString AProjectID);
	TTMSFNCCloudLoggerProject* __fastcall GetProjectByName(System::UnicodeString AProjectName);
	void __fastcall GetProjects();
	TTMSFNCCloudLoggerStack* __fastcall GetStackByID(System::UnicodeString AStackID);
	virtual void __fastcall LogException(System::UnicodeString AProjectID, System::UnicodeString AMessage, System::UnicodeString AErrorType, System::UnicodeString ASource, System::UnicodeString AStackTrace = System::UnicodeString(), TTMSFNCCloudLoggerLogLevel ALevel = (TTMSFNCCloudLoggerLogLevel)(0x3), System::TDateTime ATimeStamp = 0.000000E+00);
	virtual void __fastcall LogMessage(System::UnicodeString AProjectID, System::UnicodeString AMessage, TTMSFNCCloudLoggerLogLevel ALevel = (TTMSFNCCloudLoggerLogLevel)(0x1), System::UnicodeString ASource = System::UnicodeString(), System::TDateTime ATimeStamp = 0.000000E+00);
	__property TTMSFNCCloudLoggerProjects* Projects = {read=FProjects};
};


class PASCALIMPLEMENTATION TTMSFNCCloudLogger : public TTMSFNCCustomCloudLogger
{
	typedef TTMSFNCCustomCloudLogger inherited;
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	
__published:
	__property Service;
	__property EmailAddress = {default=0};
	__property Password = {default=0};
	__property Token = {default=0};
	__property OnConnected;
	__property OnGetAllEvents;
	__property OnGetAllProjects;
	__property OnGetAllStacks;
	__property OnGetEvents;
	__property OnGetProjects;
	__property OnGetStacks;
	__property OnLogException;
	__property OnLogMessage;
public:
	/* TTMSFNCCustomCloudLogger.Create */ inline __fastcall virtual TTMSFNCCloudLogger(System::Classes::TComponent* AOwner) : TTMSFNCCustomCloudLogger(AOwner) { }
	/* TTMSFNCCustomCloudLogger.Destroy */ inline __fastcall virtual ~TTMSFNCCloudLogger() { }
	
};


//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x0);
static constexpr System::Int8 BLD_VER = System::Int8(0x0);
}	/* namespace Tmsfnccloudlogger */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCCLOUDLOGGER)
using namespace Fmx::Tmsfnccloudlogger;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfnccloudloggerHPP
