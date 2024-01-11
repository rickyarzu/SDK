// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCCloudGoogleTasks.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfnccloudgoogletasksHPP
#define Fmx_TmsfnccloudgoogletasksHPP

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
#include <System.JSON.hpp>
#include <FMX.TMSFNCCloudOAuth.hpp>
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
namespace Tmsfnccloudgoogletasks
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCCloudGoogleTasksTask;
class DELPHICLASS TTMSFNCCloudGoogleTasksTasks;
class DELPHICLASS TTMSFNCCloudGoogleTasksTaskList;
class DELPHICLASS TTMSFNCCloudGoogleTasksTaskLists;
class DELPHICLASS TTMSFNCCustomCloudGoogleTasks;
class DELPHICLASS TTMSFNCCloudGoogleTasks;
//-- type declarations -------------------------------------------------------
typedef void __fastcall (__closure *TTMSFNCCloudGoogleTasksTaskListsEvent)(System::TObject* Sender, TTMSFNCCloudGoogleTasksTaskLists* const AInfo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudGoogleTasksTaskListEvent)(System::TObject* Sender, TTMSFNCCloudGoogleTasksTaskList* const AInfo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudGoogleTasksTasksEvent)(System::TObject* Sender, TTMSFNCCloudGoogleTasksTasks* const AInfo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudGoogleTasksTaskEvent)(System::TObject* Sender, TTMSFNCCloudGoogleTasksTask* const AInfo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

class PASCALIMPLEMENTATION TTMSFNCCloudGoogleTasksTask : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	TTMSFNCCloudGoogleTasksTasks* FOwner;
	System::UnicodeString FID;
	bool FDeleted;
	System::TDateTime FUpdated;
	System::UnicodeString FParent;
	System::UnicodeString FNotes;
	System::UnicodeString FLink;
	bool FHidden;
	System::UnicodeString FTitle;
	System::UnicodeString FStatus;
	System::TDateTime FDue;
	System::UnicodeString FPosition;
	
protected:
	virtual System::UnicodeString __fastcall GetDisplayName();
	TTMSFNCCloudGoogleTasksTaskList* __fastcall GetTaskList();
	
public:
	__fastcall virtual TTMSFNCCloudGoogleTasksTask(System::Classes::TCollection* Collection);
	__fastcall virtual ~TTMSFNCCloudGoogleTasksTask();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	void __fastcall FromJSON(System::Json::TJSONValue* jo);
	
__published:
	__property System::UnicodeString ID = {read=FID, write=FID};
	__property System::UnicodeString Title = {read=FTitle, write=FTitle};
	__property System::TDateTime Updated = {read=FUpdated, write=FUpdated};
	__property System::UnicodeString Link = {read=FLink, write=FLink};
	__property System::UnicodeString Parent = {read=FParent, write=FParent};
	__property System::UnicodeString Position = {read=FPosition, write=FPosition};
	__property System::UnicodeString Notes = {read=FNotes, write=FNotes};
	__property System::UnicodeString Status = {read=FStatus, write=FStatus};
	__property System::TDateTime Due = {read=FDue, write=FDue};
	__property bool Deleted = {read=FDeleted, write=FDeleted, nodefault};
	__property bool Hidden = {read=FHidden, write=FHidden, nodefault};
};


class PASCALIMPLEMENTATION TTMSFNCCloudGoogleTasksTasks : public System::Classes::TCollection
{
	typedef System::Classes::TCollection inherited;
	
public:
	TTMSFNCCloudGoogleTasksTask* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCCloudGoogleTasksTaskList* FOwner;
	TTMSFNCCloudGoogleTasksTask* __fastcall GetItems(int Index);
	void __fastcall SetItems(int Index, TTMSFNCCloudGoogleTasksTask* const Value);
	
protected:
	virtual void __fastcall Update(System::Classes::TCollectionItem* Item);
	
public:
	__fastcall TTMSFNCCloudGoogleTasksTasks(TTMSFNCCloudGoogleTasksTaskList* AOwner);
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	HIDESBASE TTMSFNCCloudGoogleTasksTask* __fastcall Add();
	HIDESBASE TTMSFNCCloudGoogleTasksTask* __fastcall Insert(int Index);
	__property TTMSFNCCloudGoogleTasksTask* Items[int Index] = {read=GetItems, write=SetItems/*, default*/};
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCCloudGoogleTasksTasks() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudGoogleTasksTaskList : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	TTMSFNCCloudGoogleTasksTaskLists* FOwner;
	System::UnicodeString FID;
	System::UnicodeString FTitle;
	System::TDateTime FUpdated;
	TTMSFNCCloudGoogleTasksTasks* FTasks;
	
protected:
	virtual System::UnicodeString __fastcall GetDisplayName();
	
public:
	__fastcall virtual TTMSFNCCloudGoogleTasksTaskList(System::Classes::TCollection* Collection);
	__fastcall virtual ~TTMSFNCCloudGoogleTasksTaskList();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	void __fastcall FromJSON(System::Json::TJSONValue* jo);
	void __fastcall GetTasks(int AMaxResults = 0x64, bool AShowCompleted = false, bool AShowDeleted = false, bool AShowHidden = false)/* overload */;
	
__published:
	__property System::UnicodeString ID = {read=FID, write=FID};
	__property System::UnicodeString Title = {read=FTitle, write=FTitle};
	__property System::TDateTime Updated = {read=FUpdated, write=FUpdated};
	__property TTMSFNCCloudGoogleTasksTasks* Tasks = {read=FTasks, write=FTasks};
};


class PASCALIMPLEMENTATION TTMSFNCCloudGoogleTasksTaskLists : public System::Classes::TCollection
{
	typedef System::Classes::TCollection inherited;
	
public:
	TTMSFNCCloudGoogleTasksTaskList* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCCustomCloudGoogleTasks* FOwner;
	TTMSFNCCloudGoogleTasksTaskList* __fastcall GetItems(int Index);
	void __fastcall SetItems(int Index, TTMSFNCCloudGoogleTasksTaskList* const Value);
	
protected:
	virtual void __fastcall Update(System::Classes::TCollectionItem* Item);
	
public:
	__fastcall TTMSFNCCloudGoogleTasksTaskLists(TTMSFNCCustomCloudGoogleTasks* AOwner);
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	HIDESBASE TTMSFNCCloudGoogleTasksTaskList* __fastcall Add();
	HIDESBASE TTMSFNCCloudGoogleTasksTaskList* __fastcall Insert(int Index);
	__property TTMSFNCCloudGoogleTasksTaskList* Items[int Index] = {read=GetItems, write=SetItems/*, default*/};
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCCloudGoogleTasksTaskLists() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCustomCloudGoogleTasks : public Fmx::Tmsfnccloudgoogle::TTMSFNCCustomCloudGoogle
{
	typedef Fmx::Tmsfnccloudgoogle::TTMSFNCCustomCloudGoogle inherited;
	
private:
	System::UnicodeString FNextTasksToken;
	System::UnicodeString FNextTaskListsToken;
	TTMSFNCCloudGoogleTasksTaskLists* FTaskLists;
	TTMSFNCCloudGoogleTasksTaskListsEvent FOnGetTaskLists;
	TTMSFNCCloudGoogleTasksTasksEvent FOnGetTasks;
	Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseCompleteEvent FOnDeleteTaskList;
	Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseCompleteEvent FOnDeleteTask;
	TTMSFNCCloudGoogleTasksTaskListEvent FOnAddTaskList;
	TTMSFNCCloudGoogleTasksTaskListEvent FOnUpdateTaskList;
	TTMSFNCCloudGoogleTasksTaskEvent FOnAddTask;
	TTMSFNCCloudGoogleTasksTaskEvent FOnUpdateTask;
	bool __fastcall GetHasNextTaskLists();
	bool __fastcall GetHasNextTasks();
	
protected:
	virtual System::UnicodeString __fastcall GetVersion();
	void __fastcall DoGetTaskLists(TTMSFNCCloudGoogleTasksTaskLists* const AInfo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoAddTaskList(TTMSFNCCloudGoogleTasksTaskList* const AInfo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoUpdateTaskList(TTMSFNCCloudGoogleTasksTaskList* const AInfo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoDeleteTaskList(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoGetTasks(TTMSFNCCloudGoogleTasksTasks* const AInfo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoAddTask(TTMSFNCCloudGoogleTasksTask* const AInfo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoUpdateTask(TTMSFNCCloudGoogleTasksTask* const AInfo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoDeleteTask(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestGetTaskLists(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestAddTaskList(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestUpdateTaskList(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestDeleteTaskList(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestGetTasks(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestAddTask(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestUpdateTask(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestDeleteTask(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	__property TTMSFNCCloudGoogleTasksTaskListsEvent OnGetTaskLists = {read=FOnGetTaskLists, write=FOnGetTaskLists};
	__property TTMSFNCCloudGoogleTasksTaskListEvent OnAddTaskList = {read=FOnAddTaskList, write=FOnAddTaskList};
	__property TTMSFNCCloudGoogleTasksTaskListEvent OnUpdateTaskList = {read=FOnUpdateTaskList, write=FOnUpdateTaskList};
	__property TTMSFNCCloudGoogleTasksTasksEvent OnGetTasks = {read=FOnGetTasks, write=FOnGetTasks};
	__property Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseCompleteEvent OnDeleteTaskList = {read=FOnDeleteTaskList, write=FOnDeleteTaskList};
	__property TTMSFNCCloudGoogleTasksTaskEvent OnAddTask = {read=FOnAddTask, write=FOnAddTask};
	__property TTMSFNCCloudGoogleTasksTaskEvent OnUpdateTask = {read=FOnUpdateTask, write=FOnUpdateTask};
	__property Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseCompleteEvent OnDeleteTask = {read=FOnDeleteTask, write=FOnDeleteTask};
	
public:
	__fastcall virtual TTMSFNCCustomCloudGoogleTasks(System::Classes::TComponent* AOwner)/* overload */;
	__fastcall virtual ~TTMSFNCCustomCloudGoogleTasks();
	void __fastcall GetTaskLists(int AMaxResults = 0x64);
	void __fastcall GetNextTaskLists(int AMaxResults = 0x64);
	void __fastcall GetTasks(TTMSFNCCloudGoogleTasksTaskList* ATaskList, int AMaxResults = 0x64, bool AShowCompleted = false, bool AShowDeleted = false, bool AShowHidden = false)/* overload */;
	void __fastcall GetTasks(TTMSFNCCloudGoogleTasksTaskList* ATaskList, System::TDateTime ACompletedMin, System::TDateTime ACompletedMax, System::TDateTime ADueMin, System::TDateTime ADueMax, System::TDateTime AUpdatedMin, int AMaxResults = 0x64)/* overload */;
	void __fastcall GetNextTasks(TTMSFNCCloudGoogleTasksTaskList* ATaskList, int AMaxResults = 0x64);
	void __fastcall AddTaskList(System::UnicodeString ATitle);
	void __fastcall AddTaskToList(TTMSFNCCloudGoogleTasksTaskList* ATaskList, TTMSFNCCloudGoogleTasksTask* ATask);
	void __fastcall UpdateTaskList(TTMSFNCCloudGoogleTasksTaskList* ATaskList);
	void __fastcall UpdateTask(TTMSFNCCloudGoogleTasksTask* ATask);
	void __fastcall DeleteTask(TTMSFNCCloudGoogleTasksTask* ATask);
	void __fastcall DeleteTaskList(TTMSFNCCloudGoogleTasksTaskList* ATaskList);
	__property bool HasNextTaskLists = {read=GetHasNextTaskLists, nodefault};
	__property bool HasNextTasks = {read=GetHasNextTasks, nodefault};
	__property TTMSFNCCloudGoogleTasksTaskLists* TaskLists = {read=FTaskLists, write=FTaskLists};
public:
	/* TTMSFNCCustomCloudOAuth.Create */ inline __fastcall virtual TTMSFNCCustomCloudGoogleTasks()/* overload */ : Fmx::Tmsfnccloudgoogle::TTMSFNCCustomCloudGoogle() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudGoogleTasks : public TTMSFNCCustomCloudGoogleTasks
{
	typedef TTMSFNCCustomCloudGoogleTasks inherited;
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	
__published:
	__property OnGetTaskLists;
	__property OnAddTaskList;
	__property OnUpdateTaskList;
	__property OnGetTasks;
	__property OnDeleteTaskList;
	__property OnAddTask;
	__property OnUpdateTask;
	__property OnDeleteTask;
public:
	/* TTMSFNCCustomCloudGoogleTasks.Create */ inline __fastcall virtual TTMSFNCCloudGoogleTasks(System::Classes::TComponent* AOwner)/* overload */ : TTMSFNCCustomCloudGoogleTasks(AOwner) { }
	/* TTMSFNCCustomCloudGoogleTasks.Destroy */ inline __fastcall virtual ~TTMSFNCCloudGoogleTasks() { }
	
public:
	/* TTMSFNCCustomCloudOAuth.Create */ inline __fastcall virtual TTMSFNCCloudGoogleTasks()/* overload */ : TTMSFNCCustomCloudGoogleTasks() { }
	
};


//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x0);
static constexpr System::Int8 BLD_VER = System::Int8(0x1);
}	/* namespace Tmsfnccloudgoogletasks */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCCLOUDGOOGLETASKS)
using namespace Fmx::Tmsfnccloudgoogletasks;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfnccloudgoogletasksHPP
