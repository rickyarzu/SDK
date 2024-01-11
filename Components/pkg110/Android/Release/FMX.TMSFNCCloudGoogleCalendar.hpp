// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCCloudGoogleCalendar.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfnccloudgooglecalendarHPP
#define Fmx_TmsfnccloudgooglecalendarHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <FMX.TMSFNCCloudBase.hpp>
#include <FMX.TMSFNCGraphicsTypes.hpp>
#include <FMX.TMSFNCCloudStorage.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.TMSFNCCloudGoogle.hpp>
#include <System.JSON.hpp>
#include <System.UITypes.hpp>
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
namespace Tmsfnccloudgooglecalendar
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCCloudGoogleCalendarReminder;
class DELPHICLASS TTMSFNCCloudGoogleCalendarReminders;
class DELPHICLASS TTMSFNCCloudGoogleCalendarDefaultReminders;
class DELPHICLASS TTMSFNCCloudGoogleCalendarAttendee;
class DELPHICLASS TTMSFNCCloudGoogleCalendarAttendees;
class DELPHICLASS TTMSFNCCloudGoogleCal;
class DELPHICLASS TTMSFNCCloudGoogleCalendars;
class DELPHICLASS TTMSFNCCloudGoogleCalendarItem;
class DELPHICLASS TTMSFNCCloudGoogleCalendarItems;
class DELPHICLASS TTMSFNCCloudGoogleCalendarColor;
class DELPHICLASS TTMSFNCCloudGoogleCalendarColors;
class DELPHICLASS TTMSFNCCustomCloudGoogleCalendar;
class DELPHICLASS TTMSFNCCloudGoogleCalendar;
//-- type declarations -------------------------------------------------------
enum DECLSPEC_DENUM TTMSFNCCloudGoogleCalendarStatus : unsigned char { stConfirmed, stTentative, stCancelled };

enum DECLSPEC_DENUM TTMSFNCCloudGoogleCalendarVisibility : unsigned char { viDefault, viPublic, viPrivate };

enum DECLSPEC_DENUM TTMSFNCCloudGoogleCalendarResponseStatus : unsigned char { rsNeedsAction, rsDeclined, rsTentative, rsAccepted };

enum DECLSPEC_DENUM TTMSFNCCloudGoogleCalendarReminderMethod : unsigned char { rmPopup, rmEmail, rmSMS };

enum DECLSPEC_DENUM TTMSFNCCloudGoogleCalendarItemColorValue : unsigned char { icDefault, icBlue, icGreen, icPurple, icRed, icYellow, icOrange, icTurquoise, icGray, icBoldBlue, icBoldGreen, icBoldRed };

enum DECLSPEC_DENUM TTMSFNCCloudGoogleCalendarColorValue : unsigned char { ccBoldBrown, ccBrown, ccBoldRed, ccBoldOrange, ccBoldYellow, ccMediumGreen, ccDarkGreen, ccBoldGreen, ccLimeGreen, ccLightGreen, ccYellow, ccOrange, ccGreen, ccTurquoise, ccBlue, ccBoldBlue, ccBoldPurple, ccPurple, ccGray, ccLightGray, ccBoldGray, ccPink, ccBoldPing, ccDarkPurple };

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudGoogleCalendarReminder : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	TTMSFNCCloudGoogleCalendarReminders* FOwner;
	TTMSFNCCloudGoogleCalendarReminderMethod FMethod;
	int FMinutes;
	void __fastcall SetMethod(const TTMSFNCCloudGoogleCalendarReminderMethod Value);
	void __fastcall SetMinutes(const int Value);
	
public:
	__fastcall virtual TTMSFNCCloudGoogleCalendarReminder(System::Classes::TCollection* Collection);
	__fastcall virtual ~TTMSFNCCloudGoogleCalendarReminder();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	
protected:
	virtual System::UnicodeString __fastcall GetDisplayName();
	
__published:
	__property int Minutes = {read=FMinutes, write=SetMinutes, default=10};
	__property TTMSFNCCloudGoogleCalendarReminderMethod Method = {read=FMethod, write=SetMethod, default=0};
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudGoogleCalendarReminders : public System::Classes::TCollection
{
	typedef System::Classes::TCollection inherited;
	
public:
	TTMSFNCCloudGoogleCalendarReminder* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCCloudGoogleCalendarItem* FOwner;
	TTMSFNCCloudGoogleCalendarReminder* __fastcall GetItems(int Index);
	void __fastcall SetItems(int Index, TTMSFNCCloudGoogleCalendarReminder* const Value);
	
protected:
	virtual void __fastcall Update(System::Classes::TCollectionItem* Item);
	
public:
	__fastcall TTMSFNCCloudGoogleCalendarReminders(TTMSFNCCloudGoogleCalendarItem* AOwner);
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	HIDESBASE TTMSFNCCloudGoogleCalendarReminder* __fastcall Add();
	HIDESBASE TTMSFNCCloudGoogleCalendarReminder* __fastcall Insert(int Index);
	__property TTMSFNCCloudGoogleCalendarReminder* Items[int Index] = {read=GetItems, write=SetItems/*, default*/};
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCCloudGoogleCalendarReminders() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudGoogleCalendarDefaultReminders : public System::Classes::TCollection
{
	typedef System::Classes::TCollection inherited;
	
public:
	TTMSFNCCloudGoogleCalendarReminder* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCCloudGoogleCal* FOwner;
	TTMSFNCCloudGoogleCalendarReminder* __fastcall GetItems(int Index);
	void __fastcall SetItems(int Index, TTMSFNCCloudGoogleCalendarReminder* const Value);
	
protected:
	virtual void __fastcall Update(System::Classes::TCollectionItem* Item);
	
public:
	__fastcall TTMSFNCCloudGoogleCalendarDefaultReminders(TTMSFNCCloudGoogleCal* AOwner);
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	HIDESBASE TTMSFNCCloudGoogleCalendarReminder* __fastcall Add();
	HIDESBASE TTMSFNCCloudGoogleCalendarReminder* __fastcall Insert(int Index);
	__property TTMSFNCCloudGoogleCalendarReminder* Items[int Index] = {read=GetItems, write=SetItems/*, default*/};
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCCloudGoogleCalendarDefaultReminders() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudGoogleCalendarAttendee : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	TTMSFNCCloudGoogleCalendarAttendees* FOwner;
	System::UnicodeString FSummary;
	System::UnicodeString FEmail;
	TTMSFNCCloudGoogleCalendarResponseStatus FStatus;
	void __fastcall SetEmail(const System::UnicodeString Value);
	void __fastcall SeTTMSFNCCloudGoogleCalendarStatus(const TTMSFNCCloudGoogleCalendarResponseStatus Value);
	void __fastcall SetSummary(const System::UnicodeString Value);
	
public:
	__fastcall virtual TTMSFNCCloudGoogleCalendarAttendee(System::Classes::TCollection* Collection);
	__fastcall virtual ~TTMSFNCCloudGoogleCalendarAttendee();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	
protected:
	virtual System::UnicodeString __fastcall GetDisplayName();
	
__published:
	__property System::UnicodeString Summary = {read=FSummary, write=SetSummary};
	__property System::UnicodeString Email = {read=FEmail, write=SetEmail};
	__property TTMSFNCCloudGoogleCalendarResponseStatus Status = {read=FStatus, write=SeTTMSFNCCloudGoogleCalendarStatus, default=0};
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudGoogleCalendarAttendees : public System::Classes::TCollection
{
	typedef System::Classes::TCollection inherited;
	
public:
	TTMSFNCCloudGoogleCalendarAttendee* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCCloudGoogleCalendarItem* FOwner;
	TTMSFNCCloudGoogleCalendarAttendee* __fastcall GetItems(int Index);
	void __fastcall SetItems(int Index, TTMSFNCCloudGoogleCalendarAttendee* const Value);
	
protected:
	virtual void __fastcall Update(System::Classes::TCollectionItem* Item);
	
public:
	__fastcall TTMSFNCCloudGoogleCalendarAttendees(TTMSFNCCloudGoogleCalendarItem* AOwner);
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	HIDESBASE TTMSFNCCloudGoogleCalendarAttendee* __fastcall Add();
	HIDESBASE TTMSFNCCloudGoogleCalendarAttendee* __fastcall Insert(int Index);
	__property TTMSFNCCloudGoogleCalendarAttendee* Items[int Index] = {read=GetItems, write=SetItems/*, default*/};
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCCloudGoogleCalendarAttendees() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudGoogleCal : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	TTMSFNCCloudGoogleCalendars* FOwner;
	System::UnicodeString FSummary;
	System::UnicodeString FDescription;
	System::UnicodeString FID;
	System::UnicodeString FLocation;
	System::UnicodeString FTimeZone;
	bool FPrimary;
	TTMSFNCCloudGoogleCalendarColorValue FColor;
	System::Uitypes::TAlphaColor FForegroundColor;
	System::Uitypes::TAlphaColor FBackgroundColor;
	TTMSFNCCloudGoogleCalendarDefaultReminders* FDefaultReminders;
	void __fastcall SetDescription(const System::UnicodeString Value);
	void __fastcall SetID(const System::UnicodeString Value);
	void __fastcall SetSummary(const System::UnicodeString Value);
	void __fastcall SetLocation(const System::UnicodeString Value);
	void __fastcall SetTimeZone(const System::UnicodeString Value);
	void __fastcall SetPrimary(const bool Value);
	
public:
	__fastcall virtual TTMSFNCCloudGoogleCal(System::Classes::TCollection* Collection);
	__fastcall virtual ~TTMSFNCCloudGoogleCal();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	
protected:
	virtual System::UnicodeString __fastcall GetDisplayName();
	
__published:
	__property System::UnicodeString ID = {read=FID, write=SetID};
	__property System::UnicodeString Description = {read=FDescription, write=SetDescription};
	__property System::UnicodeString Location = {read=FLocation, write=SetLocation};
	__property bool Primary = {read=FPrimary, write=SetPrimary, default=0};
	__property System::UnicodeString Summary = {read=FSummary, write=SetSummary};
	__property System::UnicodeString TimeZone = {read=FTimeZone, write=SetTimeZone};
	__property TTMSFNCCloudGoogleCalendarColorValue Color = {read=FColor, write=FColor, default=18};
	__property System::Uitypes::TAlphaColor BackgroundColor = {read=FBackgroundColor, write=FBackgroundColor, default=0};
	__property System::Uitypes::TAlphaColor ForeGroundColor = {read=FForegroundColor, write=FForegroundColor, default=0};
	__property TTMSFNCCloudGoogleCalendarDefaultReminders* DefaultReminders = {read=FDefaultReminders, write=FDefaultReminders};
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudGoogleCalendars : public System::Classes::TCollection
{
	typedef System::Classes::TCollection inherited;
	
public:
	TTMSFNCCloudGoogleCal* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCCustomCloudGoogleCalendar* FOwner;
	TTMSFNCCloudGoogleCal* __fastcall GetItems(int Index);
	void __fastcall SetItems(int Index, TTMSFNCCloudGoogleCal* const Value);
	
protected:
	virtual void __fastcall Update(System::Classes::TCollectionItem* Item);
	
public:
	__fastcall TTMSFNCCloudGoogleCalendars(TTMSFNCCustomCloudGoogleCalendar* AOwner);
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	HIDESBASE TTMSFNCCloudGoogleCal* __fastcall Add();
	HIDESBASE TTMSFNCCloudGoogleCal* __fastcall Insert(int Index);
	__property TTMSFNCCloudGoogleCal* Items[int Index] = {read=GetItems, write=SetItems/*, default*/};
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCCloudGoogleCalendars() { }
	
};

#pragma pack(pop)

class PASCALIMPLEMENTATION TTMSFNCCloudGoogleCalendarItem : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	TTMSFNCCloudGoogleCalendarItems* FOwner;
	System::UnicodeString FLocation;
	System::UnicodeString FSummary;
	System::TDateTime FStartTime;
	System::TDateTime FEndTime;
	System::UnicodeString FDescription;
	System::UnicodeString FID;
	TTMSFNCCloudGoogleCalendarVisibility FVisibility;
	TTMSFNCCloudGoogleCalendarStatus FStatus;
	System::UnicodeString FRecurrence;
	System::UnicodeString FCalendarID;
	TTMSFNCCloudGoogleCalendarAttendees* FAttendees;
	bool FIsAllDay;
	System::UnicodeString FRecurringID;
	System::UnicodeString FETag;
	int FSequence;
	System::TDateTime FUpdated;
	System::TDateTime FCreated;
	System::UnicodeString FTimeZone;
	bool FUseDefaultReminders;
	TTMSFNCCloudGoogleCalendarReminders* FReminders;
	TTMSFNCCloudGoogleCalendarItemColorValue FColor;
	bool FSendNotifications;
	void __fastcall SetDescription(const System::UnicodeString Value);
	void __fastcall SetEndTime(const System::TDateTime Value);
	void __fastcall SetLocation(const System::UnicodeString Value);
	void __fastcall SetSummary(const System::UnicodeString Value);
	void __fastcall SetStartTime(const System::TDateTime Value);
	void __fastcall SetID(const System::UnicodeString Value);
	void __fastcall SetVisibility(const TTMSFNCCloudGoogleCalendarVisibility Value);
	void __fastcall SetCalendarID(const System::UnicodeString Value);
	void __fastcall SetIsAllDay(const bool Value);
	void __fastcall SetRecurrence(const System::UnicodeString Value);
	void __fastcall SetRecurringID(const System::UnicodeString Value);
	void __fastcall SetSequence(const int Value);
	void __fastcall SetCreated(const System::TDateTime Value);
	void __fastcall SetUpdated(const System::TDateTime Value);
	
public:
	__fastcall virtual TTMSFNCCloudGoogleCalendarItem(System::Classes::TCollection* Collection);
	__fastcall virtual ~TTMSFNCCloudGoogleCalendarItem();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	
protected:
	virtual System::UnicodeString __fastcall GetDisplayName();
	
__published:
	__property System::UnicodeString ID = {read=FID, write=SetID};
	__property System::UnicodeString ETag = {read=FETag, write=FETag};
	__property System::UnicodeString CalendarID = {read=FCalendarID, write=SetCalendarID};
	__property System::UnicodeString Summary = {read=FSummary, write=SetSummary};
	__property System::UnicodeString Description = {read=FDescription, write=SetDescription};
	__property System::TDateTime StartTime = {read=FStartTime, write=SetStartTime};
	__property System::TDateTime EndTime = {read=FEndTime, write=SetEndTime};
	__property System::TDateTime Created = {read=FCreated, write=SetCreated};
	__property System::TDateTime Updated = {read=FUpdated, write=SetUpdated};
	__property bool IsAllDay = {read=FIsAllDay, write=SetIsAllDay, default=0};
	__property System::UnicodeString Location = {read=FLocation, write=SetLocation};
	__property TTMSFNCCloudGoogleCalendarStatus Status = {read=FStatus, default=0};
	__property TTMSFNCCloudGoogleCalendarVisibility Visibility = {read=FVisibility, write=SetVisibility, default=1};
	__property System::UnicodeString Recurrence = {read=FRecurrence, write=SetRecurrence};
	__property System::UnicodeString RecurringID = {read=FRecurringID, write=SetRecurringID};
	__property int Sequence = {read=FSequence, write=SetSequence, nodefault};
	__property TTMSFNCCloudGoogleCalendarAttendees* Attendees = {read=FAttendees, write=FAttendees};
	__property TTMSFNCCloudGoogleCalendarReminders* Reminders = {read=FReminders, write=FReminders};
	__property bool UseDefaultReminders = {read=FUseDefaultReminders, write=FUseDefaultReminders, default=1};
	__property System::UnicodeString TimeZone = {read=FTimeZone, write=FTimeZone};
	__property TTMSFNCCloudGoogleCalendarItemColorValue Color = {read=FColor, write=FColor, default=0};
	__property bool SendNotifications = {read=FSendNotifications, write=FSendNotifications, default=0};
};


#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudGoogleCalendarItems : public System::Classes::TCollection
{
	typedef System::Classes::TCollection inherited;
	
public:
	TTMSFNCCloudGoogleCalendarItem* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCCustomCloudGoogleCalendar* FOwner;
	TTMSFNCCloudGoogleCalendarItem* __fastcall GetItems(int Index);
	void __fastcall SetItems(int Index, TTMSFNCCloudGoogleCalendarItem* const Value);
	
protected:
	virtual void __fastcall Update(System::Classes::TCollectionItem* Item);
	
public:
	__fastcall TTMSFNCCloudGoogleCalendarItems(TTMSFNCCustomCloudGoogleCalendar* AOwner);
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	HIDESBASE TTMSFNCCloudGoogleCalendarItem* __fastcall Add();
	TTMSFNCCloudGoogleCalendarItem* __fastcall Find(const int ID)/* overload */;
	TTMSFNCCloudGoogleCalendarItem* __fastcall Find(const System::UnicodeString ID)/* overload */;
	HIDESBASE TTMSFNCCloudGoogleCalendarItem* __fastcall Insert(int Index);
	TTMSFNCCloudGoogleCalendarItem* __fastcall GetItemByID(const System::UnicodeString ID);
	__property TTMSFNCCloudGoogleCalendarItem* Items[int Index] = {read=GetItems, write=SetItems/*, default*/};
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCCloudGoogleCalendarItems() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudGoogleCalendarColor : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	TTMSFNCCloudGoogleCalendarColors* FOwner;
	System::Uitypes::TAlphaColor FForegroundColor;
	System::Uitypes::TAlphaColor FBackgroundColor;
	int FID;
	void __fastcall SetBackGroundColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetForeGroundColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetID(const int Value);
	
public:
	__fastcall virtual TTMSFNCCloudGoogleCalendarColor(System::Classes::TCollection* Collection);
	__fastcall virtual ~TTMSFNCCloudGoogleCalendarColor();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	
protected:
	virtual System::UnicodeString __fastcall GetDisplayName();
	
__published:
	__property int ID = {read=FID, write=SetID, default=-1};
	__property System::Uitypes::TAlphaColor BackgroundColor = {read=FBackgroundColor, write=SetBackGroundColor, default=0};
	__property System::Uitypes::TAlphaColor ForegroundColor = {read=FForegroundColor, write=SetForeGroundColor, default=0};
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudGoogleCalendarColors : public System::Classes::TCollection
{
	typedef System::Classes::TCollection inherited;
	
public:
	TTMSFNCCloudGoogleCalendarColor* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCCustomCloudGoogleCalendar* FOwner;
	TTMSFNCCloudGoogleCalendarColor* __fastcall GetItems(int Index);
	void __fastcall SetItems(int Index, TTMSFNCCloudGoogleCalendarColor* const Value);
	
protected:
	virtual void __fastcall Update(System::Classes::TCollectionItem* Item);
	
public:
	__fastcall TTMSFNCCloudGoogleCalendarColors(TTMSFNCCustomCloudGoogleCalendar* AOwner);
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	HIDESBASE TTMSFNCCloudGoogleCalendarColor* __fastcall Add();
	HIDESBASE TTMSFNCCloudGoogleCalendarColor* __fastcall Insert(int Index);
	__property TTMSFNCCloudGoogleCalendarColor* Items[int Index] = {read=GetItems, write=SetItems/*, default*/};
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCCloudGoogleCalendarColors() { }
	
};

#pragma pack(pop)

typedef void __fastcall (__closure *TTMSFNCCloudGoogleCalendarGetCalendarEvent)(System::TObject* Sender, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudGoogleCalendarGetCalendarsEvent)(System::TObject* Sender, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudGoogleCalendarGetColorsEvent)(System::TObject* Sender, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudGoogleCalendarGetCalendarItemByIDEvent)(System::TObject* Sender, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult, TTMSFNCCloudGoogleCalendarItem* const ACalendarItem);

typedef void __fastcall (__closure *TTMSFNCCloudGoogleCalendarAddCalendarItemEvent)(System::TObject* Sender, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult, TTMSFNCCloudGoogleCalendarItem* const ACalendarItem);

typedef void __fastcall (__closure *TTMSFNCCloudGoogleCalendarAddCalendarEvent)(System::TObject* Sender, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult, TTMSFNCCloudGoogleCal* const ACalendar);

typedef void __fastcall (__closure *TTMSFNCCloudGoogleCalendarUpdateCalendarItemEvent)(System::TObject* Sender, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult, TTMSFNCCloudGoogleCalendarItem* const ACalendarItem);

typedef void __fastcall (__closure *TTMSFNCCloudGoogleCalendarUpdateCalendarEvent)(System::TObject* Sender, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult, TTMSFNCCloudGoogleCal* const ACalendar);

typedef void __fastcall (__closure *TTMSFNCCloudGoogleCalendarDeleteCalendarItemEvent)(System::TObject* Sender, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult, TTMSFNCCloudGoogleCalendarItem* const ACalendarItem);

typedef void __fastcall (__closure *TTMSFNCCloudGoogleCalendarDeleteCalendarEvent)(System::TObject* Sender, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult, TTMSFNCCloudGoogleCal* const ACalendar);

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCustomCloudGoogleCalendar : public Fmx::Tmsfnccloudgoogle::TTMSFNCCustomCloudGoogle
{
	typedef Fmx::Tmsfnccloudgoogle::TTMSFNCCustomCloudGoogle inherited;
	
private:
	TTMSFNCCloudGoogleCalendarItems* FItems;
	TTMSFNCCloudGoogleCalendarItems* FResult;
	TTMSFNCCloudGoogleCalendars* FCalendars;
	TTMSFNCCloudGoogleCalendarColors* FItemColors;
	TTMSFNCCloudGoogleCalendarColors* FCalendarColors;
	TTMSFNCCloudGoogleCalendarAddCalendarEvent FOnAddCalendar;
	TTMSFNCCloudGoogleCalendarGetColorsEvent FOnGetColors;
	TTMSFNCCloudGoogleCalendarUpdateCalendarItemEvent FOnUpdateCalendarItem;
	TTMSFNCCloudGoogleCalendarDeleteCalendarItemEvent FOnDeleteCalendarItem;
	TTMSFNCCloudGoogleCalendarGetCalendarsEvent FOnGetCalendars;
	TTMSFNCCloudGoogleCalendarGetCalendarItemByIDEvent FOnGetCalendarByID;
	TTMSFNCCloudGoogleCalendarAddCalendarItemEvent FOnAddCalendarItem;
	TTMSFNCCloudGoogleCalendarGetCalendarEvent FOnGetCalendar;
	TTMSFNCCloudGoogleCalendarUpdateCalendarEvent FOnUpdateCalendar;
	TTMSFNCCloudGoogleCalendarDeleteCalendarEvent FOnDeleteCalendar;
	
protected:
	virtual System::UnicodeString __fastcall GetVersion();
	System::UnicodeString __fastcall GetCalendarData(TTMSFNCCloudGoogleCalendarItem* AItem);
	void __fastcall DoGetCalendars(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoGetColors(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoGetCalendarItemByID(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult, TTMSFNCCloudGoogleCalendarItem* const ACalendarItem);
	void __fastcall DoAddCalendarItem(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult, TTMSFNCCloudGoogleCalendarItem* const ACalendarItem);
	void __fastcall DoUpdateCalendarItem(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult, TTMSFNCCloudGoogleCalendarItem* const ACalendarItem);
	void __fastcall DoAddCalendar(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult, TTMSFNCCloudGoogleCal* const ACalendar);
	void __fastcall DoUpdateCalendar(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult, TTMSFNCCloudGoogleCal* const ACalendar);
	void __fastcall DoDeleteCalendarItem(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult, TTMSFNCCloudGoogleCalendarItem* const ACalendarItem);
	void __fastcall DoDeleteCalendar(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult, TTMSFNCCloudGoogleCal* const ACalendar);
	void __fastcall DoGetCalendar(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestGetCalendars(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestGetColors(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestGetCalendarItemByID(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestAddCalendarItem(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestUpdateCalendarItem(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestAddCalendar(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestUpdateCalendar(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestDeleteCalendarItem(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestDeleteCalendar(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestGetCalendar(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall GetCalendarInt(System::UnicodeString AID, System::TDate AFromDate, System::TDate AToDate, System::TDateTime AChangedSince, int AMaxResults = 0xfa);
	void __fastcall ParseCalendar(System::Json::TJSONValue* AJSONValue, TTMSFNCCloudGoogleCal* AItem);
	void __fastcall ParseCalendarItem(System::UnicodeString ACalendarID, System::Json::TJSONValue* AJSONValue, TTMSFNCCloudGoogleCalendarItem* AItem);
	void __fastcall ParseColor(System::Json::TJSONValue* AJSONValue, System::UnicodeString AColorType);
	__property TTMSFNCCloudGoogleCalendars* Calendars = {read=FCalendars, write=FCalendars};
	__property TTMSFNCCloudGoogleCalendarItems* Items = {read=FItems, write=FItems};
	__property TTMSFNCCloudGoogleCalendarGetCalendarsEvent OnGetCalendars = {read=FOnGetCalendars, write=FOnGetCalendars};
	__property TTMSFNCCloudGoogleCalendarGetColorsEvent OnGetColors = {read=FOnGetColors, write=FOnGetColors};
	__property TTMSFNCCloudGoogleCalendarGetCalendarEvent OnGetCalendar = {read=FOnGetCalendar, write=FOnGetCalendar};
	__property TTMSFNCCloudGoogleCalendarGetCalendarItemByIDEvent OnGetCalendarItemByID = {read=FOnGetCalendarByID, write=FOnGetCalendarByID};
	__property TTMSFNCCloudGoogleCalendarAddCalendarEvent OnAddCalendar = {read=FOnAddCalendar, write=FOnAddCalendar};
	__property TTMSFNCCloudGoogleCalendarDeleteCalendarEvent OnDeleteCalendar = {read=FOnDeleteCalendar, write=FOnDeleteCalendar};
	__property TTMSFNCCloudGoogleCalendarUpdateCalendarEvent OnUpdateCalendar = {read=FOnUpdateCalendar, write=FOnUpdateCalendar};
	__property TTMSFNCCloudGoogleCalendarAddCalendarItemEvent OnAddCalendarItem = {read=FOnAddCalendarItem, write=FOnAddCalendarItem};
	__property TTMSFNCCloudGoogleCalendarDeleteCalendarItemEvent OnDeleteCalendarItem = {read=FOnDeleteCalendarItem, write=FOnDeleteCalendarItem};
	__property TTMSFNCCloudGoogleCalendarUpdateCalendarItemEvent OnUpdateCalendarItem = {read=FOnUpdateCalendarItem, write=FOnUpdateCalendarItem};
	
public:
	__fastcall virtual TTMSFNCCustomCloudGoogleCalendar(System::Classes::TComponent* AOwner)/* overload */;
	__fastcall virtual ~TTMSFNCCustomCloudGoogleCalendar();
	void __fastcall AddCalendar(TTMSFNCCloudGoogleCal* ACalendar);
	void __fastcall DeleteCalendar(TTMSFNCCloudGoogleCal* ACalendar);
	void __fastcall UpdateCalendar(TTMSFNCCloudGoogleCal* ACalendar);
	void __fastcall GetCalendars();
	void __fastcall GetCalendar(System::UnicodeString AID, System::TDate AFromDate, System::TDate AToDate, int AMaxResults = 0xfa)/* overload */;
	void __fastcall GetCalendar(System::TDate AFromDate, System::TDate AToDate, int AMaxResults = 0xfa)/* overload */;
	void __fastcall GetCalendar(System::UnicodeString AID, System::TDateTime AChangedSince, int AMaxResults = 0xfa)/* overload */;
	void __fastcall GetCalendar(System::UnicodeString AID, int AMaxResults = 0xfa)/* overload */;
	void __fastcall GetColors();
	void __fastcall GetItemByID(System::UnicodeString ACalendarID, System::UnicodeString AItemID);
	void __fastcall Add(TTMSFNCCloudGoogleCalendarItem* AItem);
	void __fastcall Update(TTMSFNCCloudGoogleCalendarItem* AItem);
	void __fastcall Delete(TTMSFNCCloudGoogleCalendarItem* AItem);
	__property TTMSFNCCloudGoogleCalendarColors* ItemColors = {read=FItemColors, write=FItemColors};
	__property TTMSFNCCloudGoogleCalendarColors* CalendarColors = {read=FCalendarColors, write=FCalendarColors};
public:
	/* TTMSFNCCustomCloudOAuth.Create */ inline __fastcall virtual TTMSFNCCustomCloudGoogleCalendar()/* overload */ : Fmx::Tmsfnccloudgoogle::TTMSFNCCustomCloudGoogle() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudGoogleCalendar : public TTMSFNCCustomCloudGoogleCalendar
{
	typedef TTMSFNCCustomCloudGoogleCalendar inherited;
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	
__published:
	__property OnGetCalendars;
	__property OnGetColors;
	__property OnGetCalendar;
	__property OnGetCalendarItemByID;
	__property OnAddCalendar;
	__property OnDeleteCalendar;
	__property OnUpdateCalendar;
	__property OnAddCalendarItem;
	__property OnDeleteCalendarItem;
	__property OnUpdateCalendarItem;
	__property Calendars;
	__property Items;
public:
	/* TTMSFNCCustomCloudGoogleCalendar.Create */ inline __fastcall virtual TTMSFNCCloudGoogleCalendar(System::Classes::TComponent* AOwner)/* overload */ : TTMSFNCCustomCloudGoogleCalendar(AOwner) { }
	/* TTMSFNCCustomCloudGoogleCalendar.Destroy */ inline __fastcall virtual ~TTMSFNCCloudGoogleCalendar() { }
	
public:
	/* TTMSFNCCustomCloudOAuth.Create */ inline __fastcall virtual TTMSFNCCloudGoogleCalendar()/* overload */ : TTMSFNCCustomCloudGoogleCalendar() { }
	
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x0);
static constexpr System::Int8 BLD_VER = System::Int8(0x0);
}	/* namespace Tmsfnccloudgooglecalendar */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCCLOUDGOOGLECALENDAR)
using namespace Fmx::Tmsfnccloudgooglecalendar;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfnccloudgooglecalendarHPP
