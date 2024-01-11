// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCCloudMicrosoftOutlookCalendar.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfnccloudmicrosoftoutlookcalendarHPP
#define Fmx_TmsfnccloudmicrosoftoutlookcalendarHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <FMX.TMSFNCCloudBase.hpp>
#include <FMX.TMSFNCUtils.hpp>
#include <FMX.TMSFNCCloudMicrosoft.hpp>
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
namespace Tmsfnccloudmicrosoftoutlookcalendar
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCCloudMicrosoftOutlookCal;
class DELPHICLASS TTMSFNCCloudMicrosoftOutlookCalendars;
class DELPHICLASS TTMSFNCCloudMicrosoftOutlookAttendee;
class DELPHICLASS TTMSFNCCloudMicrosoftOutlookAttendees;
class DELPHICLASS TTMSFNCCloudMicrosoftOutlookCalendarItem;
class DELPHICLASS TTMSFNCCloudMicrosoftOutlookCalendarItems;
class DELPHICLASS TTMSFNCCustomCloudMicrosoftOutlookCalendar;
class DELPHICLASS TTMSFNCCloudMicrosoftOutlookCalendar;
//-- type declarations -------------------------------------------------------
enum DECLSPEC_DENUM TTMSFNCCloudMicrosoftOutlookAttendeeResponse : unsigned char { asNone, asOrganizer, asTentative, asAccepted, asDeclined, asNotResponded };

enum DECLSPEC_DENUM TShowAs : unsigned char { saFree, saTentative, saBusy, saOutOfOffice, saWorkingElsewhere, saUnknown };

enum DECLSPEC_DENUM TSensitivity : unsigned char { seNormal, sePersonal, sePrivate, seConfidential };

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudMicrosoftOutlookCal : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	TTMSFNCCloudMicrosoftOutlookCalendarItems* FOwner;
	System::UnicodeString FSummary;
	System::UnicodeString FID;
	void __fastcall SetID(const System::UnicodeString Value);
	void __fastcall SetSummary(const System::UnicodeString Value);
	
public:
	__fastcall virtual TTMSFNCCloudMicrosoftOutlookCal(System::Classes::TCollection* Collection);
	__fastcall virtual ~TTMSFNCCloudMicrosoftOutlookCal();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	void __fastcall FromJSON(System::Json::TJSONValue* jo);
	
__published:
	__property System::UnicodeString ID = {read=FID, write=SetID};
	__property System::UnicodeString Summary = {read=FSummary, write=SetSummary};
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudMicrosoftOutlookCalendars : public System::Classes::TCollection
{
	typedef System::Classes::TCollection inherited;
	
public:
	TTMSFNCCloudMicrosoftOutlookCal* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCCustomCloudMicrosoftOutlookCalendar* FOwner;
	TTMSFNCCloudMicrosoftOutlookCal* __fastcall GetItems(int Index);
	void __fastcall SetItems(int Index, TTMSFNCCloudMicrosoftOutlookCal* const Value);
	
protected:
	virtual void __fastcall Update(System::Classes::TCollectionItem* Item);
	
public:
	__fastcall TTMSFNCCloudMicrosoftOutlookCalendars(TTMSFNCCustomCloudMicrosoftOutlookCalendar* AOwner);
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	HIDESBASE TTMSFNCCloudMicrosoftOutlookCal* __fastcall Add();
	HIDESBASE TTMSFNCCloudMicrosoftOutlookCal* __fastcall Insert(int Index);
	__property TTMSFNCCloudMicrosoftOutlookCal* Items[int Index] = {read=GetItems, write=SetItems/*, default*/};
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCCloudMicrosoftOutlookCalendars() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudMicrosoftOutlookAttendee : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	TTMSFNCCloudMicrosoftOutlookAttendees* FOwner;
	System::UnicodeString FSummary;
	System::UnicodeString FEmail;
	TTMSFNCCloudMicrosoftOutlookAttendeeResponse FStatus;
	void __fastcall SetEmail(const System::UnicodeString Value);
	void __fastcall SetStatus(const TTMSFNCCloudMicrosoftOutlookAttendeeResponse Value);
	void __fastcall SetSummary(const System::UnicodeString Value);
	
public:
	__fastcall virtual TTMSFNCCloudMicrosoftOutlookAttendee(System::Classes::TCollection* Collection);
	__fastcall virtual ~TTMSFNCCloudMicrosoftOutlookAttendee();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	
protected:
	virtual System::UnicodeString __fastcall GetDisplayName();
	
__published:
	__property System::UnicodeString Summary = {read=FSummary, write=SetSummary};
	__property System::UnicodeString Email = {read=FEmail, write=SetEmail};
	__property TTMSFNCCloudMicrosoftOutlookAttendeeResponse Status = {read=FStatus, write=SetStatus, default=0};
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudMicrosoftOutlookAttendees : public System::Classes::TCollection
{
	typedef System::Classes::TCollection inherited;
	
public:
	TTMSFNCCloudMicrosoftOutlookAttendee* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCCloudMicrosoftOutlookCalendarItem* FOwner;
	TTMSFNCCloudMicrosoftOutlookAttendee* __fastcall GetItems(int Index);
	void __fastcall SetItems(int Index, TTMSFNCCloudMicrosoftOutlookAttendee* const Value);
	
protected:
	virtual void __fastcall Update(System::Classes::TCollectionItem* Item);
	
public:
	__fastcall TTMSFNCCloudMicrosoftOutlookAttendees(TTMSFNCCloudMicrosoftOutlookCalendarItem* AOwner);
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	HIDESBASE TTMSFNCCloudMicrosoftOutlookAttendee* __fastcall Add();
	HIDESBASE TTMSFNCCloudMicrosoftOutlookAttendee* __fastcall Insert(int Index);
	__property TTMSFNCCloudMicrosoftOutlookAttendee* Items[int Index] = {read=GetItems, write=SetItems/*, default*/};
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCCloudMicrosoftOutlookAttendees() { }
	
};

#pragma pack(pop)

class PASCALIMPLEMENTATION TTMSFNCCloudMicrosoftOutlookCalendarItem : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	TTMSFNCCloudMicrosoftOutlookCalendarItems* FOwner;
	System::UnicodeString FLocation;
	System::UnicodeString FSummary;
	System::TDateTime FStartTime;
	bool FIsAllDay;
	System::TDateTime FEndTime;
	System::UnicodeString FDescription;
	System::UnicodeString FID;
	TSensitivity FSensitivity;
	TShowAs FShowAs;
	System::UnicodeString FRecurrence;
	bool FIsRecurrent;
	System::UnicodeString FMasterID;
	System::UnicodeString FCalendarID;
	System::TDateTime FUpdated;
	System::TDateTime FCreated;
	System::UnicodeString FStartTimeZone;
	System::UnicodeString FEndTimeZone;
	System::UnicodeString FETag;
	TTMSFNCCloudMicrosoftOutlookAttendees* FAttendees;
	bool FReminderEnabled;
	int FReminderMinutesBefore;
	void __fastcall SetDescription(const System::UnicodeString Value);
	void __fastcall SetEndTime(const System::TDateTime Value);
	void __fastcall SetIsAllDay(const bool Value);
	void __fastcall SetLocation(const System::UnicodeString Value);
	void __fastcall SetSummary(const System::UnicodeString Value);
	void __fastcall SetStartTime(const System::TDateTime Value);
	void __fastcall SetID(const System::UnicodeString Value);
	void __fastcall SetShowAs(const TShowAs Value);
	void __fastcall SetSensitivity(const TSensitivity Value);
	void __fastcall SetCalendarID(const System::UnicodeString Value);
	void __fastcall SetCreated(const System::TDateTime Value);
	void __fastcall SetUpdated(const System::TDateTime Value);
	void __fastcall SetEndTimeZone(const System::UnicodeString Value);
	void __fastcall SetStartTimeZone(const System::UnicodeString Value);
	System::UnicodeString __fastcall GetStrippedDescription();
	void __fastcall SetReminderEnabled(const bool Value);
	void __fastcall SetReminderMinutesBefore(const int Value);
	
public:
	__fastcall virtual TTMSFNCCloudMicrosoftOutlookCalendarItem(System::Classes::TCollection* Collection);
	__fastcall virtual ~TTMSFNCCloudMicrosoftOutlookCalendarItem();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	void __fastcall FromJSON(System::Json::TJSONValue* jo);
	
__published:
	__property System::UnicodeString ID = {read=FID, write=SetID};
	__property System::UnicodeString CalendarID = {read=FCalendarID, write=SetCalendarID};
	__property System::TDateTime Created = {read=FCreated, write=SetCreated};
	__property System::TDateTime Updated = {read=FUpdated, write=SetUpdated};
	__property System::UnicodeString Summary = {read=FSummary, write=SetSummary};
	__property System::UnicodeString Description = {read=FDescription, write=SetDescription};
	__property System::UnicodeString StrippedDescription = {read=GetStrippedDescription};
	__property System::TDateTime StartTime = {read=FStartTime, write=SetStartTime};
	__property System::UnicodeString StartTimeZone = {read=FStartTimeZone, write=SetStartTimeZone};
	__property System::TDateTime EndTime = {read=FEndTime, write=SetEndTime};
	__property System::UnicodeString EndTimeZone = {read=FEndTimeZone, write=SetEndTimeZone};
	__property System::UnicodeString Location = {read=FLocation, write=SetLocation};
	__property bool IsAllDay = {read=FIsAllDay, write=SetIsAllDay, default=0};
	__property TShowAs ShowAs = {read=FShowAs, write=SetShowAs, default=0};
	__property TSensitivity Sensitivity = {read=FSensitivity, write=SetSensitivity, default=0};
	__property bool IsRecurrent = {read=FIsRecurrent, default=0};
	__property System::UnicodeString MasterID = {read=FMasterID};
	__property System::UnicodeString ETag = {read=FETag};
	__property TTMSFNCCloudMicrosoftOutlookAttendees* Attendees = {read=FAttendees, write=FAttendees};
	__property bool ReminderEnabled = {read=FReminderEnabled, write=SetReminderEnabled, nodefault};
	__property int ReminderMinutesBefore = {read=FReminderMinutesBefore, write=SetReminderMinutesBefore, nodefault};
};


#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudMicrosoftOutlookCalendarItems : public System::Classes::TCollection
{
	typedef System::Classes::TCollection inherited;
	
public:
	TTMSFNCCloudMicrosoftOutlookCalendarItem* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCCustomCloudMicrosoftOutlookCalendar* FOwner;
	TTMSFNCCloudMicrosoftOutlookCalendarItem* __fastcall GetItems(int Index);
	void __fastcall SetItems(int Index, TTMSFNCCloudMicrosoftOutlookCalendarItem* const Value);
	
protected:
	virtual void __fastcall Update(System::Classes::TCollectionItem* Item);
	
public:
	__fastcall TTMSFNCCloudMicrosoftOutlookCalendarItems(TTMSFNCCustomCloudMicrosoftOutlookCalendar* AOwner);
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	HIDESBASE TTMSFNCCloudMicrosoftOutlookCalendarItem* __fastcall Add();
	TTMSFNCCloudMicrosoftOutlookCalendarItem* __fastcall Find(const int ID)/* overload */;
	TTMSFNCCloudMicrosoftOutlookCalendarItem* __fastcall Find(const System::UnicodeString ID)/* overload */;
	HIDESBASE TTMSFNCCloudMicrosoftOutlookCalendarItem* __fastcall Insert(int Index);
	__property TTMSFNCCloudMicrosoftOutlookCalendarItem* Items[int Index] = {read=GetItems, write=SetItems/*, default*/};
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCCloudMicrosoftOutlookCalendarItems() { }
	
};

#pragma pack(pop)

typedef void __fastcall (__closure *TTMSFNCCloudMicrosoftOutlookCalendarGetCalendarEvent)(System::TObject* Sender, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudMicrosoftOutlookCalendarGetCalendarsEvent)(System::TObject* Sender, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudMicrosoftOutlookCalendarAddCalendarEvent)(System::TObject* Sender, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudMicrosoftOutlookCalendarDeleteCalendarEvent)(System::TObject* Sender, TTMSFNCCloudMicrosoftOutlookCal* const ACalendar, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudMicrosoftOutlookCalendarUpdateCalendarEvent)(System::TObject* Sender, TTMSFNCCloudMicrosoftOutlookCal* const ACalendar, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudMicrosoftOutlookCalendarAddCalendarItemEvent)(System::TObject* Sender, TTMSFNCCloudMicrosoftOutlookCalendarItem* const AItem, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudMicrosoftOutlookCalendarGetCalendarItemEvent)(System::TObject* Sender, TTMSFNCCloudMicrosoftOutlookCalendarItem* const AItem, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudMicrosoftOutlookCalendarUpdateCalendarItemEvent)(System::TObject* Sender, TTMSFNCCloudMicrosoftOutlookCalendarItem* const AItem, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudMicrosoftOutlookCalendarDeleteCalendarItemEvent)(System::TObject* Sender, const System::UnicodeString AID, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCustomCloudMicrosoftOutlookCalendar : public Fmx::Tmsfnccloudmicrosoft::TTMSFNCCustomCloudMicrosoft
{
	typedef Fmx::Tmsfnccloudmicrosoft::TTMSFNCCustomCloudMicrosoft inherited;
	
private:
	TTMSFNCCloudMicrosoftOutlookCalendarItems* FItems;
	TTMSFNCCloudMicrosoftOutlookCalendarItems* FResult;
	TTMSFNCCloudMicrosoftOutlookCalendars* FCalendars;
	System::UnicodeString FTimeZone;
	Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseLocale FLocale;
	TTMSFNCCloudMicrosoftOutlookCalendarAddCalendarEvent FOnAddCalendar;
	TTMSFNCCloudMicrosoftOutlookCalendarGetCalendarItemEvent FOnGetCalendarItem;
	TTMSFNCCloudMicrosoftOutlookCalendarDeleteCalendarItemEvent FOnDeleteCalendarItem;
	TTMSFNCCloudMicrosoftOutlookCalendarUpdateCalendarItemEvent FOnUpdateCalendarItem;
	TTMSFNCCloudMicrosoftOutlookCalendarGetCalendarsEvent FOnGetCalendars;
	TTMSFNCCloudMicrosoftOutlookCalendarAddCalendarItemEvent FOnAddCalendarItem;
	TTMSFNCCloudMicrosoftOutlookCalendarGetCalendarEvent FOnGetCalendar;
	TTMSFNCCloudMicrosoftOutlookCalendarUpdateCalendarEvent FOnUpdateCalendar;
	TTMSFNCCloudMicrosoftOutlookCalendarDeleteCalendarEvent FOnDeleteCalendar;
	
protected:
	void __fastcall DoRequestGetCalendar(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestGetCalendars(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestAddCalendar(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestUpdateCalendar(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestDeleteCalendar(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestAddCalendarItem(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestDeleteCalendarItem(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestUpdateCalendarItem(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestGetCalendarItem(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoGetCalendar(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoGetCalendars(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoAddCalendar(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoUpdateCalendar(TTMSFNCCloudMicrosoftOutlookCal* const ACalendar, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoDeleteCalendar(TTMSFNCCloudMicrosoftOutlookCal* const ACalendar, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoAddCalendarItem(TTMSFNCCloudMicrosoftOutlookCalendarItem* const AItem, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoDeleteCalendarItem(const System::UnicodeString AID, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoUpdateCalendarItem(TTMSFNCCloudMicrosoftOutlookCalendarItem* const AItem, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoGetCalendarItem(TTMSFNCCloudMicrosoftOutlookCalendarItem* const AItem, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	System::UnicodeString __fastcall GetCalendarData(TTMSFNCCloudMicrosoftOutlookCalendarItem* AItem);
	virtual System::UnicodeString __fastcall GetVersion();
	__property TTMSFNCCloudMicrosoftOutlookCalendars* Calendars = {read=FCalendars, write=FCalendars};
	__property TTMSFNCCloudMicrosoftOutlookCalendarItems* Items = {read=FItems, write=FItems};
	__property System::UnicodeString TimeZone = {read=FTimeZone, write=FTimeZone};
	__property Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseLocale Locale = {read=FLocale, write=FLocale, default=0};
	__property TTMSFNCCloudMicrosoftOutlookCalendarGetCalendarEvent OnGetCalendar = {read=FOnGetCalendar, write=FOnGetCalendar};
	__property TTMSFNCCloudMicrosoftOutlookCalendarGetCalendarsEvent OnGetCalendars = {read=FOnGetCalendars, write=FOnGetCalendars};
	__property TTMSFNCCloudMicrosoftOutlookCalendarAddCalendarEvent OnAddCalendar = {read=FOnAddCalendar, write=FOnAddCalendar};
	__property TTMSFNCCloudMicrosoftOutlookCalendarDeleteCalendarEvent OnDeleteCalendar = {read=FOnDeleteCalendar, write=FOnDeleteCalendar};
	__property TTMSFNCCloudMicrosoftOutlookCalendarUpdateCalendarEvent OnUpdateCalendar = {read=FOnUpdateCalendar, write=FOnUpdateCalendar};
	__property TTMSFNCCloudMicrosoftOutlookCalendarAddCalendarItemEvent OnAddCalendarItem = {read=FOnAddCalendarItem, write=FOnAddCalendarItem};
	__property TTMSFNCCloudMicrosoftOutlookCalendarGetCalendarItemEvent OnGetCalendarItem = {read=FOnGetCalendarItem, write=FOnGetCalendarItem};
	__property TTMSFNCCloudMicrosoftOutlookCalendarUpdateCalendarItemEvent OnUpdateCalendarItem = {read=FOnUpdateCalendarItem, write=FOnUpdateCalendarItem};
	__property TTMSFNCCloudMicrosoftOutlookCalendarDeleteCalendarItemEvent OnDeleteCalendarItem = {read=FOnDeleteCalendarItem, write=FOnDeleteCalendarItem};
	
public:
	__fastcall virtual TTMSFNCCustomCloudMicrosoftOutlookCalendar(System::Classes::TComponent* AOwner)/* overload */;
	__fastcall virtual ~TTMSFNCCustomCloudMicrosoftOutlookCalendar();
	void __fastcall GetCalendars();
	void __fastcall GetCalendar(System::UnicodeString AID, System::TDate AFromDate, System::TDate AToDate, int APageSize = 0x64, int APageIndex = 0x0)/* overload */;
	void __fastcall GetCalendar(System::TDate AFromDate, System::TDate AToDate, int APageSize = 0x64, int APageIndex = 0x0)/* overload */;
	void __fastcall GetCalendar(System::UnicodeString AID, int APageSize = 0x64, int APageIndex = 0x0)/* overload */;
	void __fastcall GetCalendar(int APageSize = 0x64, int APageIndex = 0x0)/* overload */;
	void __fastcall AddCalendar(System::UnicodeString AName);
	void __fastcall UpdateCalendar(TTMSFNCCloudMicrosoftOutlookCal* ACalendar, System::UnicodeString AName);
	void __fastcall DeleteCalendar(TTMSFNCCloudMicrosoftOutlookCal* ACalendar);
	void __fastcall Add(TTMSFNCCloudMicrosoftOutlookCalendarItem* AItem);
	void __fastcall UpdateItem(TTMSFNCCloudMicrosoftOutlookCalendarItem* AItem);
	void __fastcall Delete(TTMSFNCCloudMicrosoftOutlookCalendarItem* AItem)/* overload */;
	void __fastcall Delete(System::UnicodeString AItemID)/* overload */;
	void __fastcall GetItemByID(System::UnicodeString AID);
public:
	/* TTMSFNCCustomCloudOAuth.Create */ inline __fastcall virtual TTMSFNCCustomCloudMicrosoftOutlookCalendar()/* overload */ : Fmx::Tmsfnccloudmicrosoft::TTMSFNCCustomCloudMicrosoft() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudMicrosoftOutlookCalendar : public TTMSFNCCustomCloudMicrosoftOutlookCalendar
{
	typedef TTMSFNCCustomCloudMicrosoftOutlookCalendar inherited;
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	
__published:
	__property OnGetCalendar;
	__property OnGetCalendars;
	__property OnAddCalendar;
	__property OnDeleteCalendar;
	__property OnUpdateCalendar;
	__property OnAddCalendarItem;
	__property OnGetCalendarItem;
	__property OnUpdateCalendarItem;
	__property OnDeleteCalendarItem;
	__property Calendars;
	__property Items;
	__property TimeZone = {default=0};
	__property Locale = {default=0};
public:
	/* TTMSFNCCustomCloudMicrosoftOutlookCalendar.Create */ inline __fastcall virtual TTMSFNCCloudMicrosoftOutlookCalendar(System::Classes::TComponent* AOwner)/* overload */ : TTMSFNCCustomCloudMicrosoftOutlookCalendar(AOwner) { }
	/* TTMSFNCCustomCloudMicrosoftOutlookCalendar.Destroy */ inline __fastcall virtual ~TTMSFNCCloudMicrosoftOutlookCalendar() { }
	
public:
	/* TTMSFNCCustomCloudOAuth.Create */ inline __fastcall virtual TTMSFNCCloudMicrosoftOutlookCalendar()/* overload */ : TTMSFNCCustomCloudMicrosoftOutlookCalendar() { }
	
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x0);
static constexpr System::Int8 BLD_VER = System::Int8(0x2);
}	/* namespace Tmsfnccloudmicrosoftoutlookcalendar */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCCLOUDMICROSOFTOUTLOOKCALENDAR)
using namespace Fmx::Tmsfnccloudmicrosoftoutlookcalendar;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfnccloudmicrosoftoutlookcalendarHPP
