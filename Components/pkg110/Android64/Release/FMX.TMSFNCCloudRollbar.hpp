// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCCloudRollbar.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfnccloudrollbarHPP
#define Fmx_TmsfnccloudrollbarHPP

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
namespace Tmsfnccloudrollbar
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCCloudRollBarOccurrence;
class DELPHICLASS TTMSFNCCloudRollBarOccurrences;
class DELPHICLASS TTMSFNCCloudRollBarItem;
class DELPHICLASS TTMSFNCCloudRollBarItems;
class DELPHICLASS TTMSFNCCloudRollBarProject;
class DELPHICLASS TTMSFNCCloudRollBarProjects;
class DELPHICLASS TTMSFNCCustomCloudRollBar;
class DELPHICLASS TTMSFNCCloudRollBar;
//-- type declarations -------------------------------------------------------
enum DECLSPEC_DENUM TTMSFNCCloudRollBarLogLevel : unsigned char { rllDebug, rllInfo, rllWarning, rllError, rllCritical };

enum DECLSPEC_DENUM TTMSFNCCloudRollBarItemStatus : unsigned char { risActive, risResolved, risMuted, risArchived };

class PASCALIMPLEMENTATION TTMSFNCCloudRollBarOccurrence : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	System::TDateTime FDate;
	System::UnicodeString FDescription;
	System::UnicodeString FEnvironment;
	System::UnicodeString FErrorType;
	System::UnicodeString FID;
	System::UnicodeString FItemID;
	TTMSFNCCloudRollBarLogLevel FLevel;
	System::UnicodeString FMessage;
	TTMSFNCCloudRollBarItem* FOwner;
	System::UnicodeString FPlatform;
	System::UnicodeString FProjectID;
	System::UnicodeString FSource;
	System::UnicodeString FStacktrace;
	System::UnicodeString FUserIP;
	
protected:
	virtual void __fastcall ParseJSONOccurrence(System::Json::TJSONValue* AJSONOccurrence);
	
public:
	__fastcall virtual TTMSFNCCloudRollBarOccurrence(TTMSFNCCloudRollBarItem* AItem);
	__property System::TDateTime Date = {read=FDate};
	__property System::UnicodeString Description = {read=FDescription};
	__property System::UnicodeString Environment = {read=FEnvironment};
	__property System::UnicodeString ErrorType = {read=FErrorType};
	__property System::UnicodeString ID = {read=FID};
	__property TTMSFNCCloudRollBarLogLevel Level = {read=FLevel, nodefault};
	__property System::UnicodeString Message = {read=FMessage};
	__property TTMSFNCCloudRollBarItem* Owner = {read=FOwner};
	__property System::UnicodeString Platform = {read=FPlatform};
	__property System::UnicodeString ProjectID = {read=FProjectID};
	__property System::UnicodeString ItemID = {read=FItemID};
	__property System::UnicodeString Source = {read=FSource};
	__property System::UnicodeString Stacktrace = {read=FStacktrace};
	__property System::UnicodeString UserIP = {read=FUserIP};
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
	/* TObject.Create */ inline __fastcall TTMSFNCCloudRollBarOccurrence() : System::TObject() { }
	/* TObject.Destroy */ inline __fastcall virtual ~TTMSFNCCloudRollBarOccurrence() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudRollBarOccurrences : public System::Generics::Collections::TObjectList__1<TTMSFNCCloudRollBarOccurrence*>
{
	typedef System::Generics::Collections::TObjectList__1<TTMSFNCCloudRollBarOccurrence*> inherited;
	
public:
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudRollbar_TTMSFNCCloudRollBarOccurrence>.Create */ inline __fastcall TTMSFNCCloudRollBarOccurrences()/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudRollBarOccurrence*>() { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudRollbar_TTMSFNCCloudRollBarOccurrence>.Create */ inline __fastcall TTMSFNCCloudRollBarOccurrences(bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudRollBarOccurrence*>(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudRollbar_TTMSFNCCloudRollBarOccurrence>.Create */ inline __fastcall TTMSFNCCloudRollBarOccurrences(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCloudRollBarOccurrence*> > AComparer, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudRollBarOccurrence*>(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudRollbar_TTMSFNCCloudRollBarOccurrence>.Create */ inline __fastcall TTMSFNCCloudRollBarOccurrences(System::Generics::Collections::TEnumerable__1<TTMSFNCCloudRollBarOccurrence*>* const Collection, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudRollBarOccurrence*>(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudRollbar_TTMSFNCCloudRollBarOccurrence>.Destroy */ inline __fastcall virtual ~TTMSFNCCloudRollBarOccurrences() { }
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudRollbar_TTMSFNCCloudRollBarOccurrence>.Create */ inline __fastcall TTMSFNCCloudRollBarOccurrences(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCloudRollBarOccurrence*> > AComparer)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudRollBarOccurrence*>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudRollbar_TTMSFNCCloudRollBarOccurrence>.Create */ inline __fastcall TTMSFNCCloudRollBarOccurrences(System::Generics::Collections::TEnumerable__1<TTMSFNCCloudRollBarOccurrence*>* const Collection)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudRollBarOccurrence*>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudRollbar_TTMSFNCCloudRollBarOccurrence>.Create */ inline __fastcall TTMSFNCCloudRollBarOccurrences(TTMSFNCCloudRollBarOccurrence* const *Values, const int Values_High)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudRollBarOccurrence*>(Values, Values_High) { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudRollBarItem : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	int FCounter;
	System::UnicodeString FEnvironment;
	TTMSFNCCloudRollBarLogLevel FLevel;
	System::UnicodeString FLastOccurrenceID;
	System::TDateTime FFirstOccurrence;
	System::UnicodeString FFirstOccurrenceID;
	System::UnicodeString FFramework;
	bool FGetAllOccurrences;
	System::UnicodeString FTitle;
	System::UnicodeString FID;
	System::TDateTime FLastOccurrence;
	int FOccurrencePage;
	TTMSFNCCloudRollBarOccurrences* FOccurrences;
	TTMSFNCCloudRollBarProject* FOwner;
	System::UnicodeString FPlatform;
	System::UnicodeString FProjectID;
	TTMSFNCCloudRollBarItemStatus FStatus;
	int FTotalOccurrences;
	
protected:
	virtual void __fastcall ParseJSONItem(System::Json::TJSONValue* AJSONItem);
	
public:
	__fastcall virtual TTMSFNCCloudRollBarItem(TTMSFNCCloudRollBarProject* AProject);
	__fastcall virtual ~TTMSFNCCloudRollBarItem();
	void __fastcall GetAllOccurrences();
	void __fastcall GetOccurrences(int APage = 0x1);
	__property int Counter = {read=FCounter, nodefault};
	__property System::UnicodeString Environment = {read=FEnvironment};
	__property System::TDateTime FirstOccurrence = {read=FFirstOccurrence};
	__property System::UnicodeString FirstOccurrenceID = {read=FFirstOccurrenceID};
	__property System::UnicodeString Framework = {read=FFramework};
	__property System::UnicodeString ID = {read=FID};
	__property System::TDateTime LastOccurrence = {read=FLastOccurrence};
	__property System::UnicodeString LastOccurrenceID = {read=FLastOccurrenceID};
	__property TTMSFNCCloudRollBarLogLevel Level = {read=FLevel, nodefault};
	__property int OccurrencePage = {read=FOccurrencePage, write=FOccurrencePage, default=1};
	__property TTMSFNCCloudRollBarOccurrences* Occurrences = {read=FOccurrences};
	__property TTMSFNCCloudRollBarProject* Owner = {read=FOwner};
	__property System::UnicodeString Platform = {read=FPlatform};
	__property System::UnicodeString ProjectID = {read=FProjectID};
	__property System::UnicodeString Title = {read=FTitle};
	__property int TotalOccurrences = {read=FTotalOccurrences, nodefault};
	__property TTMSFNCCloudRollBarItemStatus Status = {read=FStatus, nodefault};
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
	/* TObject.Create */ inline __fastcall TTMSFNCCloudRollBarItem() : System::TObject() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudRollBarItems : public System::Generics::Collections::TObjectList__1<TTMSFNCCloudRollBarItem*>
{
	typedef System::Generics::Collections::TObjectList__1<TTMSFNCCloudRollBarItem*> inherited;
	
public:
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudRollbar_TTMSFNCCloudRollBarItem>.Create */ inline __fastcall TTMSFNCCloudRollBarItems()/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudRollBarItem*>() { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudRollbar_TTMSFNCCloudRollBarItem>.Create */ inline __fastcall TTMSFNCCloudRollBarItems(bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudRollBarItem*>(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudRollbar_TTMSFNCCloudRollBarItem>.Create */ inline __fastcall TTMSFNCCloudRollBarItems(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCloudRollBarItem*> > AComparer, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudRollBarItem*>(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudRollbar_TTMSFNCCloudRollBarItem>.Create */ inline __fastcall TTMSFNCCloudRollBarItems(System::Generics::Collections::TEnumerable__1<TTMSFNCCloudRollBarItem*>* const Collection, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudRollBarItem*>(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudRollbar_TTMSFNCCloudRollBarItem>.Destroy */ inline __fastcall virtual ~TTMSFNCCloudRollBarItems() { }
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudRollbar_TTMSFNCCloudRollBarItem>.Create */ inline __fastcall TTMSFNCCloudRollBarItems(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCloudRollBarItem*> > AComparer)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudRollBarItem*>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudRollbar_TTMSFNCCloudRollBarItem>.Create */ inline __fastcall TTMSFNCCloudRollBarItems(System::Generics::Collections::TEnumerable__1<TTMSFNCCloudRollBarItem*>* const Collection)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudRollBarItem*>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudRollbar_TTMSFNCCloudRollBarItem>.Create */ inline __fastcall TTMSFNCCloudRollBarItems(TTMSFNCCloudRollBarItem* const *Values, const int Values_High)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudRollBarItem*>(Values, Values_High) { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudRollBarProject : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	System::UnicodeString FName;
	System::UnicodeString FAccountID;
	System::TDateTime FDateCreated;
	System::TDateTime FDateModified;
	bool FEnabled;
	bool FGetAllItems;
	System::UnicodeString FID;
	int FItemPage;
	TTMSFNCCloudRollBarItems* FItems;
	TTMSFNCCustomCloudRollBar* FOwner;
	System::UnicodeString FProjectTokenRead;
	System::UnicodeString FProjectTokenWrite;
	
protected:
	virtual void __fastcall ParseJSONProject(System::Json::TJSONValue* AJSONProject);
	
public:
	__fastcall virtual TTMSFNCCloudRollBarProject(TTMSFNCCustomCloudRollBar* ARollBar);
	__fastcall virtual ~TTMSFNCCloudRollBarProject();
	void __fastcall GetAllItems();
	void __fastcall GetItems(int APage = 0x1);
	void __fastcall LogException(System::UnicodeString AMessage, System::UnicodeString AErrorType, System::UnicodeString ASource, System::UnicodeString AStackTrace = System::UnicodeString(), TTMSFNCCloudRollBarLogLevel ALevel = (TTMSFNCCloudRollBarLogLevel)(0x3), System::TDateTime ATimestamp = 0.000000E+00, System::UnicodeString ADescription = System::UnicodeString(), System::UnicodeString AEnvironment = u"production");
	virtual void __fastcall LogMessage(System::UnicodeString AMessage, TTMSFNCCloudRollBarLogLevel ALevel = (TTMSFNCCloudRollBarLogLevel)(0x1), System::TDateTime ATimeStamp = 0.000000E+00, System::UnicodeString ASource = System::UnicodeString(), System::UnicodeString AEnvironment = u"production");
	__property System::UnicodeString AccountID = {read=FAccountID};
	__property System::TDateTime DateCreated = {read=FDateCreated};
	__property System::TDateTime DateModified = {read=FDateModified};
	__property bool Enabled = {read=FEnabled, nodefault};
	__property System::UnicodeString ID = {read=FID};
	__property TTMSFNCCloudRollBarItems* Items = {read=FItems};
	__property int ItemPage = {read=FItemPage, write=FItemPage, default=1};
	__property System::UnicodeString Name = {read=FName};
	__property TTMSFNCCustomCloudRollBar* Owner = {read=FOwner};
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
	/* TObject.Create */ inline __fastcall TTMSFNCCloudRollBarProject() : System::TObject() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudRollBarProjects : public System::Generics::Collections::TObjectList__1<TTMSFNCCloudRollBarProject*>
{
	typedef System::Generics::Collections::TObjectList__1<TTMSFNCCloudRollBarProject*> inherited;
	
public:
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudRollbar_TTMSFNCCloudRollBarProject>.Create */ inline __fastcall TTMSFNCCloudRollBarProjects()/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudRollBarProject*>() { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudRollbar_TTMSFNCCloudRollBarProject>.Create */ inline __fastcall TTMSFNCCloudRollBarProjects(bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudRollBarProject*>(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudRollbar_TTMSFNCCloudRollBarProject>.Create */ inline __fastcall TTMSFNCCloudRollBarProjects(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCloudRollBarProject*> > AComparer, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudRollBarProject*>(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudRollbar_TTMSFNCCloudRollBarProject>.Create */ inline __fastcall TTMSFNCCloudRollBarProjects(System::Generics::Collections::TEnumerable__1<TTMSFNCCloudRollBarProject*>* const Collection, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudRollBarProject*>(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudRollbar_TTMSFNCCloudRollBarProject>.Destroy */ inline __fastcall virtual ~TTMSFNCCloudRollBarProjects() { }
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudRollbar_TTMSFNCCloudRollBarProject>.Create */ inline __fastcall TTMSFNCCloudRollBarProjects(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCloudRollBarProject*> > AComparer)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudRollBarProject*>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudRollbar_TTMSFNCCloudRollBarProject>.Create */ inline __fastcall TTMSFNCCloudRollBarProjects(System::Generics::Collections::TEnumerable__1<TTMSFNCCloudRollBarProject*>* const Collection)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudRollBarProject*>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudRollbar_TTMSFNCCloudRollBarProject>.Create */ inline __fastcall TTMSFNCCloudRollBarProjects(TTMSFNCCloudRollBarProject* const *Values, const int Values_High)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudRollBarProject*>(Values, Values_High) { }
	
};


typedef void __fastcall (__closure *TTMSFNCCloudRollBarGetOccurrencesEvent)(System::TObject* Sender, TTMSFNCCloudRollBarItem* AItem, TTMSFNCCloudRollBarOccurrences* AOccurrences, System::UnicodeString AErrorMessage, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudRollBarGetProjectsEvent)(System::TObject* Sender, TTMSFNCCloudRollBarProjects* AProjects, System::UnicodeString AErrorMessage, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudRollBarGetItemsEvent)(System::TObject* Sender, TTMSFNCCloudRollBarProject* AProject, TTMSFNCCloudRollBarItems* AItems, System::UnicodeString AErrorMessage, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudRollBarLogEvent)(System::TObject* Sender, TTMSFNCCloudRollBarProject* AProject, System::UnicodeString AErrorMessage, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

class PASCALIMPLEMENTATION TTMSFNCCustomCloudRollBar : public Fmx::Tmsfnccloudbase::TTMSFNCCloudBase
{
	typedef Fmx::Tmsfnccloudbase::TTMSFNCCloudBase inherited;
	
private:
	bool FConnect;
	TTMSFNCCloudRollBarProjects* FProjects;
	System::UnicodeString FAccountTokenRead;
	bool FGetAllProjects;
	TTMSFNCCloudRollBarGetProjectsEvent FOnGetProjects;
	TTMSFNCCloudRollBarGetItemsEvent FOnGetItems;
	TTMSFNCCloudRollBarGetOccurrencesEvent FOnGetOccurrences;
	TTMSFNCCloudRollBarGetProjectsEvent FOnGetAllProjects;
	TTMSFNCCloudRollBarGetItemsEvent FOnGetAllItems;
	TTMSFNCCloudRollBarGetOccurrencesEvent FOnGetAllOccurrences;
	TTMSFNCCloudRollBarLogEvent FOnLogMessage;
	TTMSFNCCloudRollBarLogEvent FOnLogException;
	System::Classes::TNotifyEvent FOnConnected;
	
protected:
	virtual NativeUInt __fastcall GetInstance();
	virtual void __fastcall DoConnected();
	virtual void __fastcall DoGetAllOccurrences(TTMSFNCCloudRollBarItem* AItem, TTMSFNCCloudRollBarOccurrences* AOccurrences, System::UnicodeString AErrorMessage, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoGetAllProjects(TTMSFNCCloudRollBarProjects* AProjects, System::UnicodeString AErrorMessage, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoGetAllItems(TTMSFNCCloudRollBarProject* AProject, TTMSFNCCloudRollBarItems* AItems, System::UnicodeString AErrorMessage, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoGetItems(TTMSFNCCloudRollBarProject* AProject, TTMSFNCCloudRollBarItems* AItems, System::UnicodeString AErrorMessage, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoGetOccurrences(TTMSFNCCloudRollBarItem* AItem, TTMSFNCCloudRollBarOccurrences* AOccurrences, System::UnicodeString AErrorMessage, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoGetProjects(TTMSFNCCloudRollBarProjects* AProjects, System::UnicodeString AErrorMessage, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoLogMessage(TTMSFNCCloudRollBarProject* AProject, System::UnicodeString AErrorMessage, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoLogException(TTMSFNCCloudRollBarProject* AProject, System::UnicodeString AErrorMessage, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestGetOccurrences(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestGetProjects(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestGetItems(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestGetProjectAccessTokens(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestLogException(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall GetAllItems(System::UnicodeString AProjectID);
	void __fastcall GetAllOccurrences(System::UnicodeString AItemID);
	virtual void __fastcall GetOccurrences(TTMSFNCCloudRollBarItem* AItem, int APage = 0x1)/* overload */;
	virtual void __fastcall GetOccurrences(System::UnicodeString AItemID, int APage = 0x1)/* overload */;
	virtual void __fastcall GetItems(TTMSFNCCloudRollBarProject* AProject, int APage = 0x1)/* overload */;
	virtual void __fastcall GetItems(System::UnicodeString AProjectID, int APage = 0x1)/* overload */;
	void __fastcall GetProjectAccessTokens(TTMSFNCCloudRollBarProject* AProject);
	virtual System::UnicodeString __fastcall GetVersion();
	__property System::UnicodeString AccountTokenRead = {read=FAccountTokenRead, write=FAccountTokenRead};
	__property System::Classes::TNotifyEvent OnConnected = {read=FOnConnected, write=FOnConnected};
	__property TTMSFNCCloudRollBarGetOccurrencesEvent OnGetAllOccurrences = {read=FOnGetAllOccurrences, write=FOnGetAllOccurrences};
	__property TTMSFNCCloudRollBarGetItemsEvent OnGetAllItems = {read=FOnGetAllItems, write=FOnGetAllItems};
	__property TTMSFNCCloudRollBarGetProjectsEvent OnGetAllProjects = {read=FOnGetAllProjects, write=FOnGetAllProjects};
	__property TTMSFNCCloudRollBarGetOccurrencesEvent OnGetOccurrences = {read=FOnGetOccurrences, write=FOnGetOccurrences};
	__property TTMSFNCCloudRollBarGetProjectsEvent OnGetProjects = {read=FOnGetProjects, write=FOnGetProjects};
	__property TTMSFNCCloudRollBarGetItemsEvent OnGetItems = {read=FOnGetItems, write=FOnGetItems};
	__property TTMSFNCCloudRollBarLogEvent OnLogException = {read=FOnLogException, write=FOnLogException};
	__property TTMSFNCCloudRollBarLogEvent OnLogMessage = {read=FOnLogMessage, write=FOnLogMessage};
	
public:
	__fastcall virtual TTMSFNCCustomCloudRollBar(System::Classes::TComponent* AOwner)/* overload */;
	__fastcall virtual ~TTMSFNCCustomCloudRollBar();
	void __fastcall Connect(System::UnicodeString AAccountTokenRead = System::UnicodeString());
	void __fastcall GetAllProjects();
	TTMSFNCCloudRollBarProject* __fastcall GetProjectByID(System::UnicodeString AProjectID);
	TTMSFNCCloudRollBarProject* __fastcall GetProjectByName(System::UnicodeString AProjectName);
	virtual void __fastcall GetProjects();
	TTMSFNCCloudRollBarItem* __fastcall GetItemByID(System::UnicodeString AItemID);
	void __fastcall LogException(TTMSFNCCloudRollBarProject* AProject, System::UnicodeString AMessage, System::UnicodeString AErrorType, System::UnicodeString ASource, System::UnicodeString AStackTrace = System::UnicodeString(), TTMSFNCCloudRollBarLogLevel ALevel = (TTMSFNCCloudRollBarLogLevel)(0x3), System::TDateTime ATimestamp = 0.000000E+00, System::UnicodeString ADescription = System::UnicodeString(), System::UnicodeString AEnvironment = u"production")/* overload */;
	void __fastcall LogException(System::UnicodeString AProjectID, System::UnicodeString AMessage, System::UnicodeString AErrorType, System::UnicodeString ASource, System::UnicodeString AStackTrace = System::UnicodeString(), TTMSFNCCloudRollBarLogLevel ALevel = (TTMSFNCCloudRollBarLogLevel)(0x3), System::TDateTime ATimestamp = 0.000000E+00, System::UnicodeString ADescription = System::UnicodeString(), System::UnicodeString AEnvironment = u"production")/* overload */;
	void __fastcall LogMessage(TTMSFNCCloudRollBarProject* AProject, System::UnicodeString AMessage, TTMSFNCCloudRollBarLogLevel ALevel = (TTMSFNCCloudRollBarLogLevel)(0x1), System::TDateTime ATimeStamp = 0.000000E+00, System::UnicodeString ASource = System::UnicodeString(), System::UnicodeString AEnvironment = u"production")/* overload */;
	void __fastcall LogMessage(System::UnicodeString AProjectID, System::UnicodeString AMessage, TTMSFNCCloudRollBarLogLevel ALevel = (TTMSFNCCloudRollBarLogLevel)(0x1), System::TDateTime ATimeStamp = 0.000000E+00, System::UnicodeString ASource = System::UnicodeString(), System::UnicodeString AEnvironment = u"production")/* overload */;
	__property TTMSFNCCloudRollBarProjects* Projects = {read=FProjects};
public:
	/* TTMSFNCCustomCloudBase.Create */ inline __fastcall virtual TTMSFNCCustomCloudRollBar()/* overload */ : Fmx::Tmsfnccloudbase::TTMSFNCCloudBase() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudRollBar : public TTMSFNCCustomCloudRollBar
{
	typedef TTMSFNCCustomCloudRollBar inherited;
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	
__published:
	__property AccountTokenRead = {default=0};
	__property OnConnected;
	__property OnGetAllItems;
	__property OnGetAllOccurrences;
	__property OnGetAllProjects;
	__property OnGetItems;
	__property OnGetOccurrences;
	__property OnGetProjects;
	__property OnLogException;
	__property OnLogMessage;
public:
	/* TTMSFNCCustomCloudRollBar.Create */ inline __fastcall virtual TTMSFNCCloudRollBar(System::Classes::TComponent* AOwner)/* overload */ : TTMSFNCCustomCloudRollBar(AOwner) { }
	/* TTMSFNCCustomCloudRollBar.Destroy */ inline __fastcall virtual ~TTMSFNCCloudRollBar() { }
	
public:
	/* TTMSFNCCustomCloudBase.Create */ inline __fastcall virtual TTMSFNCCloudRollBar()/* overload */ : TTMSFNCCustomCloudRollBar() { }
	
};


//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x0);
static constexpr System::Int8 BLD_VER = System::Int8(0x0);
}	/* namespace Tmsfnccloudrollbar */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCCLOUDROLLBAR)
using namespace Fmx::Tmsfnccloudrollbar;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfnccloudrollbarHPP
