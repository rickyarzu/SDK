// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCCloudExceptionless.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfnccloudexceptionlessHPP
#define Fmx_TmsfnccloudexceptionlessHPP

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
namespace Tmsfnccloudexceptionless
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCCloudExceptionlessEvent;
class DELPHICLASS TTMSFNCCloudExceptionlessEvents;
class DELPHICLASS TTMSFNCCloudExceptionlessStack;
class DELPHICLASS TTMSFNCCloudExceptionlessStacks;
class DELPHICLASS TTMSFNCCloudExceptionlessProject;
class DELPHICLASS TTMSFNCCloudExceptionlessProjects;
class DELPHICLASS TTMSFNCCustomCloudExceptionless;
class DELPHICLASS TTMSFNCCloudExceptionless;
//-- type declarations -------------------------------------------------------
enum DECLSPEC_DENUM TTMSFNCCloudExceptionlessLogLevel : unsigned char { ellOther, ellTrace, ellDebug, ellInfo, ellWarning, ellError, ellFatal, ellOff };

enum DECLSPEC_DENUM TTMSFNCCloudExceptionlessStatus : unsigned char { esOpen, esFixed, esSnoozed, esIgnored, esDiscarded };

enum DECLSPEC_DENUM TTMSFNCCloudExceptionlessType : unsigned char { etLog, etError, etUsage, et404, etSession };

class PASCALIMPLEMENTATION TTMSFNCCloudExceptionlessEvent : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	int FCount;
	System::TDateTime FCreationDate;
	System::TDateTime FDate;
	System::UnicodeString FErrorType;
	bool FFirstOccurrence;
	System::UnicodeString FID;
	TTMSFNCCloudExceptionlessLogLevel FLevel;
	System::UnicodeString FMessage;
	System::UnicodeString FOrganizationID;
	TTMSFNCCloudExceptionlessStack* FOwner;
	System::UnicodeString FProjectID;
	System::UnicodeString FStackID;
	System::UnicodeString FSource;
	System::UnicodeString FStackTrace;
	System::UnicodeString FSubmissionIP;
	TTMSFNCCloudExceptionlessType FType;
	int FValue;
	
protected:
	virtual void __fastcall ParseJSONEvent(System::Json::TJSONValue* AJSONEvent);
	
public:
	__fastcall virtual TTMSFNCCloudExceptionlessEvent(TTMSFNCCloudExceptionlessStack* AStack);
	__property System::TDateTime CreationDate = {read=FCreationDate};
	__property int Count = {read=FCount, nodefault};
	__property System::TDateTime Date = {read=FDate};
	__property System::UnicodeString ErrorType = {read=FErrorType};
	__property bool FirstOccurrence = {read=FFirstOccurrence, nodefault};
	__property System::UnicodeString ID = {read=FID};
	__property TTMSFNCCloudExceptionlessLogLevel Level = {read=FLevel, nodefault};
	__property System::UnicodeString Message = {read=FMessage};
	__property System::UnicodeString OrganizationID = {read=FOrganizationID};
	__property TTMSFNCCloudExceptionlessStack* Owner = {read=FOwner};
	__property System::UnicodeString ProjectID = {read=FProjectID};
	__property System::UnicodeString StackID = {read=FStackID};
	__property System::UnicodeString StackTrace = {read=FStackTrace};
	__property System::UnicodeString Source = {read=FSource};
	__property System::UnicodeString SubmissionIP = {read=FSubmissionIP};
	__property TTMSFNCCloudExceptionlessType Type = {read=FType, nodefault};
	__property int Value = {read=FValue, nodefault};
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
	/* TObject.Create */ inline __fastcall TTMSFNCCloudExceptionlessEvent() : System::TObject() { }
	/* TObject.Destroy */ inline __fastcall virtual ~TTMSFNCCloudExceptionlessEvent() { }
	
};


#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudExceptionlessEvents : public System::Generics::Collections::TObjectList__1<TTMSFNCCloudExceptionlessEvent*>
{
	typedef System::Generics::Collections::TObjectList__1<TTMSFNCCloudExceptionlessEvent*> inherited;
	
public:
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudExceptionless_TTMSFNCCloudExceptionlessEvent>.Create */ inline __fastcall TTMSFNCCloudExceptionlessEvents()/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudExceptionlessEvent*>() { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudExceptionless_TTMSFNCCloudExceptionlessEvent>.Create */ inline __fastcall TTMSFNCCloudExceptionlessEvents(bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudExceptionlessEvent*>(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudExceptionless_TTMSFNCCloudExceptionlessEvent>.Create */ inline __fastcall TTMSFNCCloudExceptionlessEvents(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCloudExceptionlessEvent*> > AComparer, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudExceptionlessEvent*>(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudExceptionless_TTMSFNCCloudExceptionlessEvent>.Create */ inline __fastcall TTMSFNCCloudExceptionlessEvents(System::Generics::Collections::TEnumerable__1<TTMSFNCCloudExceptionlessEvent*>* const Collection, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudExceptionlessEvent*>(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudExceptionless_TTMSFNCCloudExceptionlessEvent>.Destroy */ inline __fastcall virtual ~TTMSFNCCloudExceptionlessEvents() { }
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudExceptionless_TTMSFNCCloudExceptionlessEvent>.Create */ inline __fastcall TTMSFNCCloudExceptionlessEvents(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCloudExceptionlessEvent*> > AComparer)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudExceptionlessEvent*>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudExceptionless_TTMSFNCCloudExceptionlessEvent>.Create */ inline __fastcall TTMSFNCCloudExceptionlessEvents(System::Generics::Collections::TEnumerable__1<TTMSFNCCloudExceptionlessEvent*>* const Collection)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudExceptionlessEvent*>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudExceptionless_TTMSFNCCloudExceptionlessEvent>.Create */ inline __fastcall TTMSFNCCloudExceptionlessEvents(TTMSFNCCloudExceptionlessEvent* const *Values, const int Values_High)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudExceptionlessEvent*>(Values, Values_High) { }
	
};

#pragma pack(pop)

class PASCALIMPLEMENTATION TTMSFNCCloudExceptionlessStack : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	bool FAAllowNotifications;
	System::TDateTime FCreationDate;
	bool FCriticalOccurrences;
	bool FDeleted;
	System::UnicodeString FDescription;
	System::TDateTime FFirstOccurrence;
	bool FGetAllEvents;
	System::UnicodeString FID;
	System::TDateTime FLastOccurrence;
	System::UnicodeString FOrganizationID;
	TTMSFNCCloudExceptionlessProject* FOwner;
	System::UnicodeString FProjectID;
	System::UnicodeString FTitle;
	int FTotalOccurrences;
	TTMSFNCCloudExceptionlessType FType;
	System::TDateTime FUpdatedDate;
	TTMSFNCCloudExceptionlessEvents* FEvents;
	int FEventPage;
	TTMSFNCCloudExceptionlessStatus FStatus;
	
protected:
	virtual void __fastcall ParseJSONStack(System::Json::TJSONValue* AJSONStack);
	
public:
	__fastcall virtual TTMSFNCCloudExceptionlessStack(TTMSFNCCloudExceptionlessProject* AProject);
	__fastcall virtual ~TTMSFNCCloudExceptionlessStack();
	void __fastcall GetAllEvents();
	void __fastcall GetEvents(int ALimit = 0x32, int APage = 0x1);
	__property bool AllowNotifications = {read=FAAllowNotifications, nodefault};
	__property System::TDateTime CreationDate = {read=FCreationDate};
	__property bool CriticalOccurrences = {read=FCriticalOccurrences, nodefault};
	__property bool Deleted = {read=FDeleted, nodefault};
	__property System::UnicodeString Description = {read=FDescription};
	__property int EventPage = {read=FEventPage, nodefault};
	__property TTMSFNCCloudExceptionlessEvents* Events = {read=FEvents};
	__property System::TDateTime FirstOccurrence = {read=FFirstOccurrence};
	__property System::UnicodeString ID = {read=FID};
	__property System::TDateTime LastOccurrence = {read=FLastOccurrence};
	__property System::UnicodeString OrganizationID = {read=FOrganizationID};
	__property TTMSFNCCloudExceptionlessProject* Owner = {read=FOwner};
	__property System::UnicodeString ProjectID = {read=FProjectID};
	__property TTMSFNCCloudExceptionlessStatus Status = {read=FStatus, nodefault};
	__property System::UnicodeString Title = {read=FTitle};
	__property int TotalOccurrences = {read=FTotalOccurrences, nodefault};
	__property TTMSFNCCloudExceptionlessType Type = {read=FType, nodefault};
	__property System::TDateTime UpdatedDate = {read=FUpdatedDate};
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
	/* TObject.Create */ inline __fastcall TTMSFNCCloudExceptionlessStack() : System::TObject() { }
	
};


#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudExceptionlessStacks : public System::Generics::Collections::TObjectList__1<TTMSFNCCloudExceptionlessStack*>
{
	typedef System::Generics::Collections::TObjectList__1<TTMSFNCCloudExceptionlessStack*> inherited;
	
public:
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudExceptionless_TTMSFNCCloudExceptionlessStack>.Create */ inline __fastcall TTMSFNCCloudExceptionlessStacks()/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudExceptionlessStack*>() { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudExceptionless_TTMSFNCCloudExceptionlessStack>.Create */ inline __fastcall TTMSFNCCloudExceptionlessStacks(bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudExceptionlessStack*>(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudExceptionless_TTMSFNCCloudExceptionlessStack>.Create */ inline __fastcall TTMSFNCCloudExceptionlessStacks(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCloudExceptionlessStack*> > AComparer, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudExceptionlessStack*>(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudExceptionless_TTMSFNCCloudExceptionlessStack>.Create */ inline __fastcall TTMSFNCCloudExceptionlessStacks(System::Generics::Collections::TEnumerable__1<TTMSFNCCloudExceptionlessStack*>* const Collection, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudExceptionlessStack*>(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudExceptionless_TTMSFNCCloudExceptionlessStack>.Destroy */ inline __fastcall virtual ~TTMSFNCCloudExceptionlessStacks() { }
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudExceptionless_TTMSFNCCloudExceptionlessStack>.Create */ inline __fastcall TTMSFNCCloudExceptionlessStacks(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCloudExceptionlessStack*> > AComparer)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudExceptionlessStack*>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudExceptionless_TTMSFNCCloudExceptionlessStack>.Create */ inline __fastcall TTMSFNCCloudExceptionlessStacks(System::Generics::Collections::TEnumerable__1<TTMSFNCCloudExceptionlessStack*>* const Collection)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudExceptionlessStack*>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudExceptionless_TTMSFNCCloudExceptionlessStack>.Create */ inline __fastcall TTMSFNCCloudExceptionlessStacks(TTMSFNCCloudExceptionlessStack* const *Values, const int Values_High)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudExceptionlessStack*>(Values, Values_High) { }
	
};

#pragma pack(pop)

class PASCALIMPLEMENTATION TTMSFNCCloudExceptionlessProject : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	System::TDateTime FCreationDate;
	bool FDeleteBotData;
	int FEventCount;
	bool FGetAllStacks;
	System::UnicodeString FID;
	bool FIsConfigured;
	System::UnicodeString FName;
	System::UnicodeString FOrganizationID;
	System::UnicodeString FOrganizationName;
	TTMSFNCCustomCloudExceptionless* FOwner;
	bool FPermiumFeatures;
	bool FSlackIntegration;
	int FStackCount;
	int FStackPage;
	TTMSFNCCloudExceptionlessStacks* FStacks;
	
protected:
	virtual void __fastcall ParseJSONProject(System::Json::TJSONValue* AJSONProject);
	
public:
	__fastcall virtual TTMSFNCCloudExceptionlessProject(TTMSFNCCustomCloudExceptionless* AExceptionless);
	__fastcall virtual ~TTMSFNCCloudExceptionlessProject();
	void __fastcall GetAllStacks();
	void __fastcall GetStacks(int ALimit = 0x32, int APage = 0x1);
	void __fastcall LogMessage(System::UnicodeString AMessage, System::UnicodeString ASource = System::UnicodeString(), System::TDateTime ATimeStamp = 0.000000E+00, TTMSFNCCloudExceptionlessLogLevel ALevel = (TTMSFNCCloudExceptionlessLogLevel)(0x3));
	void __fastcall LogException(System::UnicodeString AMessage, System::UnicodeString AErrorType, System::UnicodeString ASource = System::UnicodeString(), System::UnicodeString AStackTrace = System::UnicodeString(), TTMSFNCCloudExceptionlessLogLevel ALevel = (TTMSFNCCloudExceptionlessLogLevel)(0x5), System::TDateTime ATimeStamp = 0.000000E+00);
	__property System::TDateTime CreationDate = {read=FCreationDate};
	__property bool DeleteBotData = {read=FDeleteBotData, nodefault};
	__property int EventCount = {read=FEventCount, nodefault};
	__property System::UnicodeString ID = {read=FID};
	__property bool IsConfigured = {read=FIsConfigured, nodefault};
	__property System::UnicodeString Name = {read=FName};
	__property System::UnicodeString OrganizationID = {read=FOrganizationID};
	__property System::UnicodeString OrganizationName = {read=FOrganizationName};
	__property TTMSFNCCustomCloudExceptionless* Owner = {read=FOwner};
	__property bool PermiumFeatures = {read=FPermiumFeatures, nodefault};
	__property bool SlackIntegration = {read=FSlackIntegration, nodefault};
	__property int StackCount = {read=FStackCount, nodefault};
	__property int StackPage = {read=FStackPage, nodefault};
	__property TTMSFNCCloudExceptionlessStacks* Stacks = {read=FStacks};
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
	/* TObject.Create */ inline __fastcall TTMSFNCCloudExceptionlessProject() : System::TObject() { }
	
};


#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudExceptionlessProjects : public System::Generics::Collections::TObjectList__1<TTMSFNCCloudExceptionlessProject*>
{
	typedef System::Generics::Collections::TObjectList__1<TTMSFNCCloudExceptionlessProject*> inherited;
	
public:
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudExceptionless_TTMSFNCCloudExceptionlessProject>.Create */ inline __fastcall TTMSFNCCloudExceptionlessProjects()/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudExceptionlessProject*>() { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudExceptionless_TTMSFNCCloudExceptionlessProject>.Create */ inline __fastcall TTMSFNCCloudExceptionlessProjects(bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudExceptionlessProject*>(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudExceptionless_TTMSFNCCloudExceptionlessProject>.Create */ inline __fastcall TTMSFNCCloudExceptionlessProjects(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCloudExceptionlessProject*> > AComparer, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudExceptionlessProject*>(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudExceptionless_TTMSFNCCloudExceptionlessProject>.Create */ inline __fastcall TTMSFNCCloudExceptionlessProjects(System::Generics::Collections::TEnumerable__1<TTMSFNCCloudExceptionlessProject*>* const Collection, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudExceptionlessProject*>(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudExceptionless_TTMSFNCCloudExceptionlessProject>.Destroy */ inline __fastcall virtual ~TTMSFNCCloudExceptionlessProjects() { }
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudExceptionless_TTMSFNCCloudExceptionlessProject>.Create */ inline __fastcall TTMSFNCCloudExceptionlessProjects(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCloudExceptionlessProject*> > AComparer)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudExceptionlessProject*>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudExceptionless_TTMSFNCCloudExceptionlessProject>.Create */ inline __fastcall TTMSFNCCloudExceptionlessProjects(System::Generics::Collections::TEnumerable__1<TTMSFNCCloudExceptionlessProject*>* const Collection)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudExceptionlessProject*>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudExceptionless_TTMSFNCCloudExceptionlessProject>.Create */ inline __fastcall TTMSFNCCloudExceptionlessProjects(TTMSFNCCloudExceptionlessProject* const *Values, const int Values_High)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudExceptionlessProject*>(Values, Values_High) { }
	
};

#pragma pack(pop)

typedef void __fastcall (__closure *TTMSFNCCloudExceptionlessGetEventsEvent)(System::TObject* Sender, TTMSFNCCloudExceptionlessStack* AStack, TTMSFNCCloudExceptionlessEvents* AEvents, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudExceptionlessGetProjectsEvent)(System::TObject* Sender, TTMSFNCCloudExceptionlessProjects* AProjects, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudExceptionlessGetStacksEvent)(System::TObject* Sender, TTMSFNCCloudExceptionlessProject* AProject, TTMSFNCCloudExceptionlessStacks* AStacks, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudExceptionlessLogEvent)(System::TObject* Sender, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCustomCloudExceptionless : public Fmx::Tmsfnccloudbase::TTMSFNCCloudBase
{
	typedef Fmx::Tmsfnccloudbase::TTMSFNCCloudBase inherited;
	
private:
	System::UnicodeString FAuthenticationToken;
	System::UnicodeString FEmailAddress;
	bool FGetAllProjects;
	System::UnicodeString FPassword;
	int FProjectPage;
	TTMSFNCCloudExceptionlessProjects* FProjects;
	System::Classes::TNotifyEvent FOnConnected;
	TTMSFNCCloudExceptionlessGetEventsEvent FOnGetAllEvents;
	TTMSFNCCloudExceptionlessGetProjectsEvent FOnGetAllProjects;
	TTMSFNCCloudExceptionlessGetStacksEvent FOnGetAllStacks;
	TTMSFNCCloudExceptionlessGetEventsEvent FOnGetEvents;
	TTMSFNCCloudExceptionlessGetProjectsEvent FOnGetProjects;
	TTMSFNCCloudExceptionlessGetStacksEvent FOnGetStacks;
	TTMSFNCCloudExceptionlessLogEvent FOnLogException;
	TTMSFNCCloudExceptionlessLogEvent FOnLogMessage;
	void __fastcall SetEmailAddress(const System::UnicodeString Value);
	void __fastcall SetPassword(const System::UnicodeString Value);
	
protected:
	virtual NativeUInt __fastcall GetInstance();
	virtual void __fastcall DoConnected();
	virtual void __fastcall DoGetAllEvents(TTMSFNCCloudExceptionlessStack* AStack, TTMSFNCCloudExceptionlessEvents* AEvents, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoGetAllProjects(TTMSFNCCloudExceptionlessProjects* AProjects, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoGetAllStacks(TTMSFNCCloudExceptionlessProject* AProject, TTMSFNCCloudExceptionlessStacks* AStacks, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoGetStacks(TTMSFNCCloudExceptionlessProject* AProject, TTMSFNCCloudExceptionlessStacks* AStacks, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoGetEvents(TTMSFNCCloudExceptionlessStack* AStack, TTMSFNCCloudExceptionlessEvents* AEvents, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoGetProjects(TTMSFNCCloudExceptionlessProjects* AProjects, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoLogMessage(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoLogException(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestConnect(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestGetEvents(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestGetProjects(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestGetStacks(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestLogException(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestLogMessage(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall GetAllEvents(System::UnicodeString AStackID);
	void __fastcall GetAllStacks(System::UnicodeString AProjectID);
	virtual void __fastcall GetEvents(TTMSFNCCloudExceptionlessStack* AStack, int ALimit = 0x32, int APage = 0x1)/* overload */;
	virtual void __fastcall GetEvents(System::UnicodeString AStackID, int ALimit = 0x32, int APage = 0x1)/* overload */;
	virtual void __fastcall GetStacks(TTMSFNCCloudExceptionlessProject* AProject, int ALimit = 0x32, int APage = 0x1)/* overload */;
	virtual void __fastcall GetStacks(System::UnicodeString AProjectID, int ALimit = 0x32, int APage = 0x1)/* overload */;
	virtual System::UnicodeString __fastcall GetVersion();
	__property System::UnicodeString EmailAddress = {read=FEmailAddress, write=SetEmailAddress};
	__property System::UnicodeString Password = {read=FPassword, write=SetPassword};
	__property System::Classes::TNotifyEvent OnConnected = {read=FOnConnected, write=FOnConnected};
	__property TTMSFNCCloudExceptionlessGetEventsEvent OnGetAllEvents = {read=FOnGetAllEvents, write=FOnGetAllEvents};
	__property TTMSFNCCloudExceptionlessGetProjectsEvent OnGetAllProjects = {read=FOnGetAllProjects, write=FOnGetAllProjects};
	__property TTMSFNCCloudExceptionlessGetStacksEvent OnGetAllStacks = {read=FOnGetAllStacks, write=FOnGetAllStacks};
	__property TTMSFNCCloudExceptionlessGetEventsEvent OnGetEvents = {read=FOnGetEvents, write=FOnGetEvents};
	__property TTMSFNCCloudExceptionlessGetProjectsEvent OnGetProjects = {read=FOnGetProjects, write=FOnGetProjects};
	__property TTMSFNCCloudExceptionlessGetStacksEvent OnGetStacks = {read=FOnGetStacks, write=FOnGetStacks};
	__property TTMSFNCCloudExceptionlessLogEvent OnLogException = {read=FOnLogException, write=FOnLogException};
	__property TTMSFNCCloudExceptionlessLogEvent OnLogMessage = {read=FOnLogMessage, write=FOnLogMessage};
	
public:
	__fastcall virtual TTMSFNCCustomCloudExceptionless(System::Classes::TComponent* AOwner)/* overload */;
	__fastcall virtual ~TTMSFNCCustomCloudExceptionless();
	void __fastcall Connect(System::UnicodeString AEmailAddress = System::UnicodeString(), System::UnicodeString APassword = System::UnicodeString());
	void __fastcall GetAllProjects();
	TTMSFNCCloudExceptionlessProject* __fastcall GetProjectByID(System::UnicodeString AProjectID);
	TTMSFNCCloudExceptionlessProject* __fastcall GetProjectByName(System::UnicodeString AProjectName);
	virtual void __fastcall GetProjects(int ALimit = 0x64, int APage = 0x1);
	TTMSFNCCloudExceptionlessStack* __fastcall GetStackByID(System::UnicodeString AStackID);
	virtual void __fastcall LogException(System::UnicodeString AProjectID, System::UnicodeString AMessage, System::UnicodeString AErrorType, System::UnicodeString ASource = System::UnicodeString(), System::UnicodeString AStackTrace = System::UnicodeString(), TTMSFNCCloudExceptionlessLogLevel ALevel = (TTMSFNCCloudExceptionlessLogLevel)(0x5), System::TDateTime ATimeStamp = 0.000000E+00);
	virtual void __fastcall LogMessage(System::UnicodeString AProjectID, System::UnicodeString AMessage, System::UnicodeString ASource = System::UnicodeString(), System::TDateTime ATimeStamp = 0.000000E+00, TTMSFNCCloudExceptionlessLogLevel ALevel = (TTMSFNCCloudExceptionlessLogLevel)(0x3));
	__property int ProjectPage = {read=FProjectPage, nodefault};
	__property TTMSFNCCloudExceptionlessProjects* Projects = {read=FProjects};
public:
	/* TTMSFNCCustomCloudBase.Create */ inline __fastcall virtual TTMSFNCCustomCloudExceptionless()/* overload */ : Fmx::Tmsfnccloudbase::TTMSFNCCloudBase() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudExceptionless : public TTMSFNCCustomCloudExceptionless
{
	typedef TTMSFNCCustomCloudExceptionless inherited;
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	
__published:
	__property EmailAddress = {default=0};
	__property Password = {default=0};
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
	/* TTMSFNCCustomCloudExceptionless.Create */ inline __fastcall virtual TTMSFNCCloudExceptionless(System::Classes::TComponent* AOwner)/* overload */ : TTMSFNCCustomCloudExceptionless(AOwner) { }
	/* TTMSFNCCustomCloudExceptionless.Destroy */ inline __fastcall virtual ~TTMSFNCCloudExceptionless() { }
	
public:
	/* TTMSFNCCustomCloudBase.Create */ inline __fastcall virtual TTMSFNCCloudExceptionless()/* overload */ : TTMSFNCCustomCloudExceptionless() { }
	
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x0);
static constexpr System::Int8 BLD_VER = System::Int8(0x0);
}	/* namespace Tmsfnccloudexceptionless */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCCLOUDEXCEPTIONLESS)
using namespace Fmx::Tmsfnccloudexceptionless;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfnccloudexceptionlessHPP
