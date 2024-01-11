// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCCloudMailChimp.Marketing.pas' rev: 35.00 (Android)

#ifndef Fmx_Tmsfnccloudmailchimp_MarketingHPP
#define Fmx_Tmsfnccloudmailchimp_MarketingHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <FMX.TMSFNCCloudBase.hpp>
#include <FMX.TMSFNCCloudOAuth.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.TMSFNCUtils.hpp>
#include <FMX.TMSFNCGraphicsTypes.hpp>
#include <FMX.TMSFNCGraphics.hpp>
#include <System.SysUtils.hpp>
#include <System.StrUtils.hpp>
#include <System.TypInfo.hpp>
#include <FMX.TMSFNCPersistence.hpp>
#include <System.JSON.hpp>
#include <System.Generics.Collections.hpp>
#include <System.Hash.hpp>
#include <System.Generics.Defaults.hpp>
#include <System.Types.hpp>
#include <FMX.TMSFNCCustomComponent.hpp>
#include <FMX.Controls.hpp>
#include <FMX.Types.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfnccloudmailchimp
{
namespace Marketing
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCCloudMailChimpSubscriberListContact;
class DELPHICLASS TTMSFNCCloudMailChimpSubscriberListCampaignDefaults;
class DELPHICLASS TTMSFNCCloudMailChimpSubscriberListStats;
class DELPHICLASS TTMSFNCCloudMailChimpSubscriberList;
class DELPHICLASS TTMSFNCCloudMailChimpSubscriberLists;
class DELPHICLASS TTMSFNCCloudMailChimpListMemberLocation;
class DELPHICLASS TTMSFNCCloudMailChimpListMember;
class DELPHICLASS TTMSFNCCloudMailChimpListMembers;
class DELPHICLASS TTMSFNCCloudMailChimpCampaignSettings;
class DELPHICLASS TTMSFNCCloudMailChimpCampaign;
class DELPHICLASS TTMSFNCCloudMailChimpCampaigns;
class DELPHICLASS TTMSFNCCloudCustomMailChimpMarketing;
class DELPHICLASS TTMSFNCCloudMailChimpMarketing;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TTMSFNCCloudMailChimpSubscriberListContact : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	System::UnicodeString FZip;
	System::UnicodeString FState;
	System::UnicodeString FCompany;
	System::UnicodeString FPhone;
	System::UnicodeString FAddress2;
	System::UnicodeString FCountry;
	System::UnicodeString FAddress1;
	System::UnicodeString FCity;
	void __fastcall SetAddress1(const System::UnicodeString Value);
	void __fastcall SetAddress2(const System::UnicodeString Value);
	void __fastcall SetCity(const System::UnicodeString Value);
	void __fastcall SetCompany(const System::UnicodeString Value);
	void __fastcall SetCountry(const System::UnicodeString Value);
	void __fastcall SetPhone(const System::UnicodeString Value);
	void __fastcall SetState(const System::UnicodeString Value);
	void __fastcall SetZip(const System::UnicodeString Value);
	
__published:
	__property System::UnicodeString Company = {read=FCompany, write=SetCompany};
	__property System::UnicodeString Address1 = {read=FAddress1, write=SetAddress1};
	__property System::UnicodeString Address2 = {read=FAddress2, write=SetAddress2};
	__property System::UnicodeString City = {read=FCity, write=SetCity};
	__property System::UnicodeString State = {read=FState, write=SetState};
	__property System::UnicodeString Zip = {read=FZip, write=SetZip};
	__property System::UnicodeString Country = {read=FCountry, write=SetCountry};
	__property System::UnicodeString Phone = {read=FPhone, write=SetPhone};
	
public:
	void __fastcall FromJSON(System::Json::TJSONValue* AJSON);
	System::UnicodeString __fastcall ToJSON();
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTMSFNCCloudMailChimpSubscriberListContact() { }
	
public:
	/* TObject.Create */ inline __fastcall TTMSFNCCloudMailChimpSubscriberListContact() : System::Classes::TPersistent() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudMailChimpSubscriberListCampaignDefaults : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	System::UnicodeString FLanguage;
	System::UnicodeString FFromName;
	System::UnicodeString FSubject;
	System::UnicodeString FFromEmail;
	void __fastcall SetFromEmail(const System::UnicodeString Value);
	void __fastcall SetFromName(const System::UnicodeString Value);
	void __fastcall SetLanguage(const System::UnicodeString Value);
	void __fastcall SetSubject(const System::UnicodeString Value);
	
__published:
	__property System::UnicodeString FromName = {read=FFromName, write=SetFromName};
	__property System::UnicodeString FromEmail = {read=FFromEmail, write=SetFromEmail};
	__property System::UnicodeString Subject = {read=FSubject, write=SetSubject};
	__property System::UnicodeString Language = {read=FLanguage, write=SetLanguage};
	
public:
	void __fastcall FromJSON(System::Json::TJSONValue* AJSON);
	System::UnicodeString __fastcall ToJSON();
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTMSFNCCloudMailChimpSubscriberListCampaignDefaults() { }
	
public:
	/* TObject.Create */ inline __fastcall TTMSFNCCloudMailChimpSubscriberListCampaignDefaults() : System::Classes::TPersistent() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudMailChimpSubscriberListStats : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	int FTotalContacts;
	System::UnicodeString FLastSubDate;
	double FClickRate;
	System::UnicodeString FLastUnsubDate;
	System::UnicodeString FCampaignLastSend;
	int FCleanedCount;
	int FMemberCount;
	int FCampaignCount;
	int FCleanedCountSinceSend;
	int FUnsubscribeCount;
	int FMemberCountSinceSend;
	double FOpenRate;
	double FAvgSubRate;
	double FAvgUnsubRate;
	int FMergeFieldCount;
	double FTargetSubRate;
	int FUnsubscribeCountSinceSend;
	
__published:
	__property int MemberCount = {read=FMemberCount, nodefault};
	__property int TotalContacts = {read=FTotalContacts, nodefault};
	__property int UnsubscribeCount = {read=FUnsubscribeCount, nodefault};
	__property int CleanedCount = {read=FCleanedCount, nodefault};
	__property int MemberCountSinceSend = {read=FMemberCountSinceSend, nodefault};
	__property int UnsubscribeCountSinceSend = {read=FUnsubscribeCountSinceSend, nodefault};
	__property int CleanedCountSinceSend = {read=FCleanedCountSinceSend, nodefault};
	__property int CampaignCount = {read=FCampaignCount, nodefault};
	__property System::UnicodeString CampaignLastSend = {read=FCampaignLastSend};
	__property int MergeFieldCount = {read=FMergeFieldCount, nodefault};
	__property double AvgSubRate = {read=FAvgSubRate};
	__property double AvgUnsubRate = {read=FAvgUnsubRate};
	__property double TargetSubRate = {read=FTargetSubRate};
	__property double OpenRate = {read=FOpenRate};
	__property double ClickRate = {read=FClickRate};
	__property System::UnicodeString LastSubDate = {read=FLastSubDate};
	__property System::UnicodeString LastUnsubDate = {read=FLastUnsubDate};
	
public:
	void __fastcall FromJSON(System::Json::TJSONValue* AJSON);
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTMSFNCCloudMailChimpSubscriberListStats() { }
	
public:
	/* TObject.Create */ inline __fastcall TTMSFNCCloudMailChimpSubscriberListStats() : System::Classes::TPersistent() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudMailChimpSubscriberList : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	System::Classes::TStringList* FModules;
	System::UnicodeString FBeamerAddress;
	int FListRating;
	System::UnicodeString FDateCreated;
	bool FHasWelcome;
	TTMSFNCCloudMailChimpSubscriberListStats* FStats;
	int FWeb_ID;
	System::UnicodeString FSubscribeURLShort;
	System::UnicodeString FSubscribeURLLong;
	bool FUseArchiveBar;
	System::UnicodeString FPermissionReminder;
	bool FDoubleOptin;
	System::UnicodeString FNotyifyOnUnsubscribe;
	System::UnicodeString FId;
	TTMSFNCCloudMailChimpSubscriberListCampaignDefaults* FCampaignDefaults;
	System::UnicodeString FNotifyOnSubscribe;
	bool FMarketingPermissions;
	TTMSFNCCloudMailChimpSubscriberListContact* FContact;
	System::UnicodeString FListName;
	bool FEmailTypeOption;
	void __fastcall SetCampaignDefaults(TTMSFNCCloudMailChimpSubscriberListCampaignDefaults* const Value);
	void __fastcall SetContact(TTMSFNCCloudMailChimpSubscriberListContact* const Value);
	void __fastcall SetDoubleOptin(const bool Value);
	void __fastcall SetEmailTypeOption(const bool Value);
	void __fastcall SetId(const System::UnicodeString Value);
	void __fastcall SetListName(const System::UnicodeString Value);
	void __fastcall SetMarketingPermissions(const bool Value);
	void __fastcall SetNotifyOnSubscribe(const System::UnicodeString Value);
	void __fastcall SetNotyifyOnUnsubscribe(const System::UnicodeString Value);
	void __fastcall SetPermissionReminder(const System::UnicodeString Value);
	void __fastcall SetUseArchiveBar(const bool Value);
	
__published:
	__property System::UnicodeString Id = {read=FId, write=SetId};
	__property System::UnicodeString ListName = {read=FListName, write=SetListName};
	__property TTMSFNCCloudMailChimpSubscriberListContact* Contact = {read=FContact, write=SetContact};
	__property System::UnicodeString PermissionReminder = {read=FPermissionReminder, write=SetPermissionReminder};
	__property bool UseArchiveBar = {read=FUseArchiveBar, write=SetUseArchiveBar, nodefault};
	__property TTMSFNCCloudMailChimpSubscriberListCampaignDefaults* CampaignDefaults = {read=FCampaignDefaults, write=SetCampaignDefaults};
	__property System::UnicodeString NotifyOnSubscribe = {read=FNotifyOnSubscribe, write=SetNotifyOnSubscribe};
	__property System::UnicodeString NotyifyOnUnsubscribe = {read=FNotyifyOnUnsubscribe, write=SetNotyifyOnUnsubscribe};
	__property bool EmailTypeOption = {read=FEmailTypeOption, write=SetEmailTypeOption, nodefault};
	__property bool DoubleOptin = {read=FDoubleOptin, write=SetDoubleOptin, nodefault};
	__property bool MarketingPermissions = {read=FMarketingPermissions, write=SetMarketingPermissions, nodefault};
	__property int Web_ID = {read=FWeb_ID, nodefault};
	__property System::UnicodeString DateCreated = {read=FDateCreated};
	__property int ListRating = {read=FListRating, nodefault};
	__property System::UnicodeString SubscribeURLShort = {read=FSubscribeURLShort};
	__property System::UnicodeString SubscribeURLLong = {read=FSubscribeURLLong};
	__property System::UnicodeString BeamerAddress = {read=FBeamerAddress};
	__property bool HasWelcome = {read=FHasWelcome, nodefault};
	__property System::Classes::TStringList* Modules = {read=FModules};
	__property TTMSFNCCloudMailChimpSubscriberListStats* Stats = {read=FStats};
	
public:
	void __fastcall FromJSON(System::Json::TJSONValue* AJSON);
	System::UnicodeString __fastcall ToJSON();
	__fastcall virtual TTMSFNCCloudMailChimpSubscriberList();
	__fastcall virtual ~TTMSFNCCloudMailChimpSubscriberList();
};


class PASCALIMPLEMENTATION TTMSFNCCloudMailChimpSubscriberLists : public System::Generics::Collections::TObjectList__1<TTMSFNCCloudMailChimpSubscriberList*>
{
	typedef System::Generics::Collections::TObjectList__1<TTMSFNCCloudMailChimpSubscriberList*> inherited;
	
public:
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudMailChimp_Marketing_TTMSFNCCloudMailChimpSubscriberList>.Create */ inline __fastcall TTMSFNCCloudMailChimpSubscriberLists()/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudMailChimpSubscriberList*>() { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudMailChimp_Marketing_TTMSFNCCloudMailChimpSubscriberList>.Create */ inline __fastcall TTMSFNCCloudMailChimpSubscriberLists(bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudMailChimpSubscriberList*>(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudMailChimp_Marketing_TTMSFNCCloudMailChimpSubscriberList>.Create */ inline __fastcall TTMSFNCCloudMailChimpSubscriberLists(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCloudMailChimpSubscriberList*> > AComparer, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudMailChimpSubscriberList*>(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudMailChimp_Marketing_TTMSFNCCloudMailChimpSubscriberList>.Create */ inline __fastcall TTMSFNCCloudMailChimpSubscriberLists(System::Generics::Collections::TEnumerable__1<TTMSFNCCloudMailChimpSubscriberList*>* const Collection, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudMailChimpSubscriberList*>(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudMailChimp_Marketing_TTMSFNCCloudMailChimpSubscriberList>.Destroy */ inline __fastcall virtual ~TTMSFNCCloudMailChimpSubscriberLists() { }
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudMailChimp_Marketing_TTMSFNCCloudMailChimpSubscriberList>.Create */ inline __fastcall TTMSFNCCloudMailChimpSubscriberLists(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCloudMailChimpSubscriberList*> > AComparer)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudMailChimpSubscriberList*>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudMailChimp_Marketing_TTMSFNCCloudMailChimpSubscriberList>.Create */ inline __fastcall TTMSFNCCloudMailChimpSubscriberLists(System::Generics::Collections::TEnumerable__1<TTMSFNCCloudMailChimpSubscriberList*>* const Collection)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudMailChimpSubscriberList*>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudMailChimp_Marketing_TTMSFNCCloudMailChimpSubscriberList>.Create */ inline __fastcall TTMSFNCCloudMailChimpSubscriberLists(TTMSFNCCloudMailChimpSubscriberList* const *Values, const int Values_High)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudMailChimpSubscriberList*>(Values, Values_High) { }
	
};


enum DECLSPEC_DENUM TTMSFNCCloudMailChimpListMemberStatus : unsigned char { msUnsubscribed, msCleaned, msPending, msTransactional, msSubscribed, msArchived };

class PASCALIMPLEMENTATION TTMSFNCCloudMailChimpListMemberLocation : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	double FLatitude;
	double FLongtitude;
	void __fastcall SetLatitude(const double Value);
	void __fastcall SetLongtitude(const double Value);
	
__published:
	__property double Latitude = {read=FLatitude, write=SetLatitude};
	__property double Longitude = {read=FLongtitude, write=SetLongtitude};
	
public:
	void __fastcall FromJSON(System::Json::TJSONValue* AJSON);
	System::UnicodeString __fastcall ToJSON();
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTMSFNCCloudMailChimpListMemberLocation() { }
	
public:
	/* TObject.Create */ inline __fastcall TTMSFNCCloudMailChimpListMemberLocation() : System::Classes::TPersistent() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudMailChimpListMember : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	int FWebID;
	System::UnicodeString FLastChanged;
	bool FConsentsToOneToOneMessaging;
	System::UnicodeString FContactID;
	System::UnicodeString FListID;
	System::UnicodeString FID;
	System::UnicodeString FTimeStampSignup;
	System::UnicodeString FFullName;
	int FMemberRating;
	System::UnicodeString FUnsubscribeReason;
	System::UnicodeString FIpSignup;
	System::UnicodeString FUniqueEmailID;
	System::UnicodeString FLanguage;
	TTMSFNCCloudMailChimpListMemberLocation* FLocation;
	System::Classes::TStringList* FMergeFields;
	System::UnicodeString FTimeStampOpt;
	TTMSFNCCloudMailChimpListMemberStatus FStatus;
	System::UnicodeString FIpOpt;
	bool FVIP;
	System::UnicodeString FEmailType;
	System::UnicodeString FEmailAddress;
	void __fastcall SetEmailAddress(const System::UnicodeString Value);
	void __fastcall SetEmailType(const System::UnicodeString Value);
	void __fastcall SetIpOpt(const System::UnicodeString Value);
	void __fastcall SetIpSignup(const System::UnicodeString Value);
	void __fastcall SetLanguage(const System::UnicodeString Value);
	void __fastcall SetLocation(TTMSFNCCloudMailChimpListMemberLocation* const Value);
	void __fastcall SetMergeFields(System::Classes::TStringList* const Value);
	void __fastcall SetStatus(const TTMSFNCCloudMailChimpListMemberStatus Value);
	void __fastcall SetTimeStampOpt(const System::UnicodeString Value);
	void __fastcall SetTimestampSignUp(const System::UnicodeString Value);
	void __fastcall SetVIP(const bool Value);
	
__published:
	__property System::UnicodeString EmailAddress = {read=FEmailAddress, write=SetEmailAddress};
	__property System::UnicodeString EmailType = {read=FEmailType, write=SetEmailType};
	__property TTMSFNCCloudMailChimpListMemberStatus Status = {read=FStatus, write=SetStatus, nodefault};
	__property System::UnicodeString Language = {read=FLanguage, write=SetLanguage};
	__property bool VIP = {read=FVIP, write=SetVIP, nodefault};
	__property TTMSFNCCloudMailChimpListMemberLocation* Location = {read=FLocation, write=SetLocation};
	__property System::UnicodeString IpSignup = {read=FIpSignup, write=SetIpSignup};
	__property System::UnicodeString TimestampSignUp = {read=FTimeStampSignup, write=SetTimestampSignUp};
	__property System::UnicodeString IpOpt = {read=FIpOpt, write=SetIpOpt};
	__property System::UnicodeString TimeStampOpt = {read=FTimeStampOpt, write=SetTimeStampOpt};
	__property System::Classes::TStringList* MergeFields = {read=FMergeFields, write=SetMergeFields};
	__property System::UnicodeString ID = {read=FID};
	__property System::UnicodeString UniqueEmailID = {read=FUniqueEmailID};
	__property System::UnicodeString ContactID = {read=FContactID};
	__property System::UnicodeString FullName = {read=FFullName};
	__property int WebID = {read=FWebID, nodefault};
	__property System::UnicodeString UnsubscribeReason = {read=FUnsubscribeReason};
	__property bool ConsentsToOneToOneMessaging = {read=FConsentsToOneToOneMessaging, nodefault};
	__property int MemberRating = {read=FMemberRating, nodefault};
	__property System::UnicodeString LastChanged = {read=FLastChanged};
	__property System::UnicodeString ListID = {read=FListID};
	
public:
	void __fastcall FromJSON(System::Json::TJSONValue* AJSON);
	System::UnicodeString __fastcall ToJSON();
	__fastcall TTMSFNCCloudMailChimpListMember();
	__fastcall virtual ~TTMSFNCCloudMailChimpListMember();
};


class PASCALIMPLEMENTATION TTMSFNCCloudMailChimpListMembers : public System::Generics::Collections::TObjectList__1<TTMSFNCCloudMailChimpListMember*>
{
	typedef System::Generics::Collections::TObjectList__1<TTMSFNCCloudMailChimpListMember*> inherited;
	
public:
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudMailChimp_Marketing_TTMSFNCCloudMailChimpListMember>.Create */ inline __fastcall TTMSFNCCloudMailChimpListMembers()/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudMailChimpListMember*>() { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudMailChimp_Marketing_TTMSFNCCloudMailChimpListMember>.Create */ inline __fastcall TTMSFNCCloudMailChimpListMembers(bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudMailChimpListMember*>(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudMailChimp_Marketing_TTMSFNCCloudMailChimpListMember>.Create */ inline __fastcall TTMSFNCCloudMailChimpListMembers(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCloudMailChimpListMember*> > AComparer, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudMailChimpListMember*>(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudMailChimp_Marketing_TTMSFNCCloudMailChimpListMember>.Create */ inline __fastcall TTMSFNCCloudMailChimpListMembers(System::Generics::Collections::TEnumerable__1<TTMSFNCCloudMailChimpListMember*>* const Collection, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudMailChimpListMember*>(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudMailChimp_Marketing_TTMSFNCCloudMailChimpListMember>.Destroy */ inline __fastcall virtual ~TTMSFNCCloudMailChimpListMembers() { }
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudMailChimp_Marketing_TTMSFNCCloudMailChimpListMember>.Create */ inline __fastcall TTMSFNCCloudMailChimpListMembers(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCloudMailChimpListMember*> > AComparer)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudMailChimpListMember*>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudMailChimp_Marketing_TTMSFNCCloudMailChimpListMember>.Create */ inline __fastcall TTMSFNCCloudMailChimpListMembers(System::Generics::Collections::TEnumerable__1<TTMSFNCCloudMailChimpListMember*>* const Collection)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudMailChimpListMember*>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudMailChimp_Marketing_TTMSFNCCloudMailChimpListMember>.Create */ inline __fastcall TTMSFNCCloudMailChimpListMembers(TTMSFNCCloudMailChimpListMember* const *Values, const int Values_High)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudMailChimpListMember*>(Values, Values_High) { }
	
};


enum DECLSPEC_DENUM TTMSFNCCloudMailChimpCampaignType : unsigned char { ctRegular, ctPlainText, ctAbsplit, ctRSS, ctVariate };

class PASCALIMPLEMENTATION TTMSFNCCloudMailChimpCampaignSettings : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	System::UnicodeString FToName;
	System::UnicodeString FSubjectLine;
	System::Classes::TStringList* FAutoFBPost;
	System::UnicodeString FFromName;
	System::UnicodeString FTitle;
	bool FFBComments;
	int FTemplateID;
	bool FAuthenticate;
	bool FinlineCSS;
	System::UnicodeString FFolderId;
	System::UnicodeString FReplyTo;
	bool FAutoTweet;
	bool FUseConversation;
	bool FAutoFooter;
	System::UnicodeString FPreviewText;
	void __fastcall SetAuthenticate(const bool Value);
	void __fastcall SetAutoFBPost(System::Classes::TStringList* const Value);
	void __fastcall SetAutoFooter(const bool Value);
	void __fastcall SetAutoTweet(const bool Value);
	void __fastcall SetFBComments(const bool Value);
	void __fastcall SetFolderId(const System::UnicodeString Value);
	void __fastcall SetFromName(const System::UnicodeString Value);
	void __fastcall SetinlineCSS(const bool Value);
	void __fastcall SetPreviewText(const System::UnicodeString Value);
	void __fastcall SetReplyTo(const System::UnicodeString Value);
	void __fastcall SetSubjectLine(const System::UnicodeString Value);
	void __fastcall SetTemplateID(const int Value);
	void __fastcall SetTitle(const System::UnicodeString Value);
	void __fastcall SetToName(const System::UnicodeString Value);
	void __fastcall SetUseConversation(const bool Value);
	
__published:
	__property System::UnicodeString SubjectLine = {read=FSubjectLine, write=SetSubjectLine};
	__property System::UnicodeString PreviewText = {read=FPreviewText, write=SetPreviewText};
	__property System::UnicodeString Title = {read=FTitle, write=SetTitle};
	__property System::UnicodeString FromName = {read=FFromName, write=SetFromName};
	__property System::UnicodeString ReplyTo = {read=FReplyTo, write=SetReplyTo};
	__property bool UseConversation = {read=FUseConversation, write=SetUseConversation, nodefault};
	__property System::UnicodeString ToName = {read=FToName, write=SetToName};
	__property System::UnicodeString FolderId = {read=FFolderId, write=SetFolderId};
	__property bool Authenticate = {read=FAuthenticate, write=SetAuthenticate, nodefault};
	__property bool AutoFooter = {read=FAutoFooter, write=SetAutoFooter, nodefault};
	__property bool inlineCSS = {read=FinlineCSS, write=SetinlineCSS, nodefault};
	__property bool AutoTweet = {read=FAutoTweet, write=SetAutoTweet, nodefault};
	__property System::Classes::TStringList* AutoFBPost = {read=FAutoFBPost, write=SetAutoFBPost};
	__property bool FBComments = {read=FFBComments, write=SetFBComments, nodefault};
	__property int TemplateID = {read=FTemplateID, write=SetTemplateID, nodefault};
	
public:
	void __fastcall FromJSON(System::Json::TJSONValue* AJSON);
	__fastcall virtual TTMSFNCCloudMailChimpCampaignSettings();
	__fastcall virtual ~TTMSFNCCloudMailChimpCampaignSettings();
	System::UnicodeString __fastcall ToJSON();
};


enum DECLSPEC_DENUM TTMSFNCCloudMailChimpCampaignContentType : unsigned char { cctTemplate, cctMultiChannel, cctHTML, cctURL };

class PASCALIMPLEMENTATION TTMSFNCCloudMailChimpCampaign : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	int FWebID;
	int FEmailsSent;
	System::UnicodeString FParentCampaignID;
	System::UnicodeString FLongArchiveURL;
	System::UnicodeString FSendTime;
	System::UnicodeString FArchiveURL;
	System::UnicodeString FId;
	bool FNeedBlockRefresh;
	System::UnicodeString FStatus;
	System::UnicodeString FCreateTime;
	bool FResendable;
	TTMSFNCCloudMailChimpCampaignType FCampaignType;
	TTMSFNCCloudMailChimpCampaignSettings* FSettings;
	System::UnicodeString FListID;
	TTMSFNCCloudMailChimpCampaignContentType FContentType;
	void __fastcall SetCampaignType(const TTMSFNCCloudMailChimpCampaignType Value);
	void __fastcall SetContentType(const TTMSFNCCloudMailChimpCampaignContentType Value);
	void __fastcall SetListID(const System::UnicodeString Value);
	void __fastcall SetSettings(TTMSFNCCloudMailChimpCampaignSettings* const Value);
	
__published:
	__property TTMSFNCCloudMailChimpCampaignType CampaignType = {read=FCampaignType, write=SetCampaignType, nodefault};
	__property TTMSFNCCloudMailChimpCampaignSettings* Settings = {read=FSettings, write=SetSettings};
	__property TTMSFNCCloudMailChimpCampaignContentType ContentType = {read=FContentType, write=SetContentType, nodefault};
	__property System::UnicodeString ListID = {read=FListID, write=SetListID};
	__property System::UnicodeString Id = {read=FId};
	__property int WebID = {read=FWebID, nodefault};
	__property System::UnicodeString ParentCampaignID = {read=FParentCampaignID};
	__property System::UnicodeString CreateTime = {read=FCreateTime};
	__property System::UnicodeString ArchiveURL = {read=FArchiveURL};
	__property System::UnicodeString LongArchiveURL = {read=FLongArchiveURL};
	__property System::UnicodeString Status = {read=FStatus};
	__property int EmailsSent = {read=FEmailsSent, nodefault};
	__property System::UnicodeString SendTime = {read=FSendTime};
	__property bool NeedBlockRefresh = {read=FNeedBlockRefresh, nodefault};
	__property bool Resendable = {read=FResendable, nodefault};
	
public:
	System::UnicodeString __fastcall ToJSON();
	__fastcall virtual TTMSFNCCloudMailChimpCampaign();
	__fastcall virtual ~TTMSFNCCloudMailChimpCampaign();
	void __fastcall FromJSON(System::Json::TJSONValue* AJSON);
};


class PASCALIMPLEMENTATION TTMSFNCCloudMailChimpCampaigns : public System::Generics::Collections::TObjectList__1<TTMSFNCCloudMailChimpCampaign*>
{
	typedef System::Generics::Collections::TObjectList__1<TTMSFNCCloudMailChimpCampaign*> inherited;
	
public:
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudMailChimp_Marketing_TTMSFNCCloudMailChimpCampaign>.Create */ inline __fastcall TTMSFNCCloudMailChimpCampaigns()/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudMailChimpCampaign*>() { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudMailChimp_Marketing_TTMSFNCCloudMailChimpCampaign>.Create */ inline __fastcall TTMSFNCCloudMailChimpCampaigns(bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudMailChimpCampaign*>(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudMailChimp_Marketing_TTMSFNCCloudMailChimpCampaign>.Create */ inline __fastcall TTMSFNCCloudMailChimpCampaigns(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCloudMailChimpCampaign*> > AComparer, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudMailChimpCampaign*>(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudMailChimp_Marketing_TTMSFNCCloudMailChimpCampaign>.Create */ inline __fastcall TTMSFNCCloudMailChimpCampaigns(System::Generics::Collections::TEnumerable__1<TTMSFNCCloudMailChimpCampaign*>* const Collection, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudMailChimpCampaign*>(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudMailChimp_Marketing_TTMSFNCCloudMailChimpCampaign>.Destroy */ inline __fastcall virtual ~TTMSFNCCloudMailChimpCampaigns() { }
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudMailChimp_Marketing_TTMSFNCCloudMailChimpCampaign>.Create */ inline __fastcall TTMSFNCCloudMailChimpCampaigns(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCloudMailChimpCampaign*> > AComparer)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudMailChimpCampaign*>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudMailChimp_Marketing_TTMSFNCCloudMailChimpCampaign>.Create */ inline __fastcall TTMSFNCCloudMailChimpCampaigns(System::Generics::Collections::TEnumerable__1<TTMSFNCCloudMailChimpCampaign*>* const Collection)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudMailChimpCampaign*>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudMailChimp_Marketing_TTMSFNCCloudMailChimpCampaign>.Create */ inline __fastcall TTMSFNCCloudMailChimpCampaigns(TTMSFNCCloudMailChimpCampaign* const *Values, const int Values_High)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudMailChimpCampaign*>(Values, Values_High) { }
	
};


typedef void __fastcall (__closure *TTMSFNCCloudMailChimpListEvent)(System::TObject* Sender, TTMSFNCCloudMailChimpSubscriberList* AList);

typedef void __fastcall (__closure *TTMSFNCCloudMailChimpListsEvent)(System::TObject* Sender, TTMSFNCCloudMailChimpSubscriberLists* ALists);

typedef void __fastcall (__closure *TTMSFNCCloudMailChimpMemberEvent)(System::TObject* Sender, TTMSFNCCloudMailChimpListMember* AMember);

typedef void __fastcall (__closure *TTMSFNCCloudMailChimpMembersEvent)(System::TObject* Sender, TTMSFNCCloudMailChimpListMembers* AMembers);

typedef void __fastcall (__closure *TTMSFNCCloudMailChimpCampaignEvent)(System::TObject* Sender, TTMSFNCCloudMailChimpCampaign* ACampaign);

typedef void __fastcall (__closure *TTMSFNCCloudMailChimpCampaignsEvent)(System::TObject* Sender, TTMSFNCCloudMailChimpCampaigns* ACampaigns);

typedef void __fastcall (__closure *TTMSFNCCloudMailChimpErrorEvent)(System::TObject* Sender, System::UnicodeString AErrorMessage);

typedef void __fastcall (__closure *TTMSFNCCloudMailChimpCampaignContentEvent)(System::TObject* Sender, TTMSFNCCloudMailChimpCampaign* ACampaign, System::UnicodeString AHTML, System::UnicodeString APlainText);

class PASCALIMPLEMENTATION TTMSFNCCloudCustomMailChimpMarketing : public Fmx::Tmsfnccloudbase::TTMSFNCCloudBase
{
	typedef Fmx::Tmsfnccloudbase::TTMSFNCCloudBase inherited;
	
private:
	System::UnicodeString FAPIKey;
	int FMembersOffset;
	int FListsOffset;
	int FCampaignsOffset;
	TTMSFNCCloudMailChimpCampaignsEvent FOnGetCampaigns;
	TTMSFNCCloudMailChimpMemberEvent FOnArchiveMember;
	TTMSFNCCloudMailChimpMemberEvent FOnDeleteMember;
	TTMSFNCCloudMailChimpMemberEvent FOnUpdateMember;
	TTMSFNCCloudMailChimpListEvent FOnAddList;
	TTMSFNCCloudMailChimpCampaignEvent FOnSendCampaign;
	TTMSFNCCloudMailChimpCampaignEvent FOnDeleteCampaign;
	TTMSFNCCloudMailChimpListEvent FOnGetListInfo;
	TTMSFNCCloudMailChimpMemberEvent FOnAddMember;
	TTMSFNCCloudMailChimpListsEvent FOnGetLists;
	TTMSFNCCloudMailChimpCampaignEvent FOnUpdateCampaignSettings;
	TTMSFNCCloudMailChimpCampaignEvent FOnAddCampaign;
	TTMSFNCCloudMailChimpMemberEvent FOnGetMemberInfo;
	TTMSFNCCloudMailChimpMembersEvent FOnGetMembers;
	TTMSFNCCloudMailChimpListEvent FonDeleteList;
	TTMSFNCCloudMailChimpListEvent FOnUpdateList;
	TTMSFNCCloudMailChimpCampaignEvent FOnGetCampaignInfo;
	TTMSFNCCloudMailChimpCampaigns* FCampaigns;
	TTMSFNCCloudMailChimpSubscriberLists* FLists;
	TTMSFNCCloudMailChimpListMembers* FMembers;
	bool FHasMoreMembers;
	bool FHasMoreLists;
	bool FHasMoreCampaigns;
	TTMSFNCCloudMailChimpCampaignContentEvent FOnGetCampaignContent;
	System::Classes::TNotifyEvent FOnSetCampaignContent;
	TTMSFNCCloudMailChimpErrorEvent FOnError;
	System::UnicodeString FDataCenter;
	void __fastcall SetAPIKey(const System::UnicodeString Value);
	void __fastcall SetCampaigns(TTMSFNCCloudMailChimpCampaigns* const Value);
	void __fastcall SetLists(TTMSFNCCloudMailChimpSubscriberLists* const Value);
	void __fastcall SetMembers(TTMSFNCCloudMailChimpListMembers* const Value);
	void __fastcall SetDataCenter(const System::UnicodeString Value);
	
public:
	__fastcall virtual TTMSFNCCloudCustomMailChimpMarketing(System::Classes::TComponent* AOwner)/* overload */;
	__fastcall virtual ~TTMSFNCCloudCustomMailChimpMarketing();
	__property TTMSFNCCloudMailChimpSubscriberLists* Lists = {read=FLists, write=SetLists};
	__property TTMSFNCCloudMailChimpListMembers* Members = {read=FMembers, write=SetMembers};
	__property TTMSFNCCloudMailChimpCampaigns* Campaigns = {read=FCampaigns, write=SetCampaigns};
	void __fastcall GetLists(int ACount = 0x64, bool ANextPage = true);
	void __fastcall GetListInfo(System::UnicodeString AListID);
	void __fastcall AddList(TTMSFNCCloudMailChimpSubscriberList* AList);
	void __fastcall UpdateList(TTMSFNCCloudMailChimpSubscriberList* AList);
	void __fastcall DeleteList(TTMSFNCCloudMailChimpSubscriberList* Alist);
	void __fastcall GetMembers(TTMSFNCCloudMailChimpSubscriberList* AList, int ACount = 0x64, int AOffset = 0x0);
	void __fastcall GetAllMembers(TTMSFNCCloudMailChimpSubscriberList* AList, int ACount = 0x64, bool ANextPage = true);
	void __fastcall GetNextMembers(TTMSFNCCloudMailChimpSubscriberList* AList, int ACount = 0x64);
	void __fastcall GetPreviousMembers(TTMSFNCCloudMailChimpSubscriberList* AList, int ACount = 0x64);
	void __fastcall GetCurrentMembers(TTMSFNCCloudMailChimpSubscriberList* AList, int ACount = 0x64);
	void __fastcall GetFirstMembers(TTMSFNCCloudMailChimpSubscriberList* Alist, int ACount = 0x64);
	void __fastcall GetMemberInfo(System::UnicodeString AListID, System::UnicodeString AMemberEmail);
	void __fastcall AddMember(System::UnicodeString AListID, TTMSFNCCloudMailChimpListMember* AMember, bool ASkipMergeValidation = false);
	void __fastcall UpdateMember(TTMSFNCCloudMailChimpListMember* AMember, bool ASkipMergeValidation = false);
	void __fastcall ArchiveMember(TTMSFNCCloudMailChimpListMember* AMember);
	void __fastcall DeleteMember(TTMSFNCCloudMailChimpListMember* AMember);
	void __fastcall GetCampaigns(int ACount = 0x64, TTMSFNCCloudMailChimpSubscriberList* AList = (TTMSFNCCloudMailChimpSubscriberList*)(0x0), bool ANextPage = true);
	void __fastcall AddCampaign(TTMSFNCCloudMailChimpCampaign* ACampaign);
	void __fastcall GetCampaignInfo(System::UnicodeString ACampaignID);
	void __fastcall GetCampaignContent(TTMSFNCCloudMailChimpCampaign* ACampaign);
	void __fastcall SetCampaignContent(TTMSFNCCloudMailChimpCampaign* ACampaign, System::UnicodeString AHTML, System::UnicodeString APlainText = System::UnicodeString());
	void __fastcall UpdateCampaignSettings(TTMSFNCCloudMailChimpCampaign* ACampaign);
	void __fastcall DeleteCampaign(TTMSFNCCloudMailChimpCampaign* ACampaign);
	void __fastcall SendCampaign(TTMSFNCCloudMailChimpCampaign* ACampaign);
	__property bool HasMoreMembers = {read=FHasMoreMembers, nodefault};
	__property bool HasMoreLIsts = {read=FHasMoreLists, nodefault};
	__property bool HasMoreCampaigns = {read=FHasMoreCampaigns, nodefault};
	
protected:
	virtual NativeUInt __fastcall GetInstance();
	virtual System::UnicodeString __fastcall GetVersion();
	void __fastcall DoGetLists(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoGetListInfo(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoAddList(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoUpdateList(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoDeleteList(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoGetMemberInfo(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoAddMember(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoArchiveMember(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoDeleteMember(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoUpdateMember(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoGetMembers(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoGetCampaigns(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoAddCampaign(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoGetCampaignInfo(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoUpdateCampaignSettings(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoDeleteCampaign(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoSendCampaign(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoGetCampaignContent(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoSetCampaignContent(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	__property System::UnicodeString APIKey = {read=FAPIKey, write=SetAPIKey};
	__property System::UnicodeString DataCenter = {read=FDataCenter, write=SetDataCenter};
	__property TTMSFNCCloudMailChimpListsEvent OnGetLists = {read=FOnGetLists, write=FOnGetLists};
	__property TTMSFNCCloudMailChimpListEvent OnGetListInfo = {read=FOnGetListInfo, write=FOnGetListInfo};
	__property TTMSFNCCloudMailChimpListEvent OnAddList = {read=FOnAddList, write=FOnAddList};
	__property TTMSFNCCloudMailChimpListEvent OnUpdateList = {read=FOnUpdateList, write=FOnUpdateList};
	__property TTMSFNCCloudMailChimpListEvent OnDeleteList = {read=FonDeleteList, write=FonDeleteList};
	__property TTMSFNCCloudMailChimpMembersEvent OnGetMembers = {read=FOnGetMembers, write=FOnGetMembers};
	__property TTMSFNCCloudMailChimpMemberEvent OnGetMemberInfo = {read=FOnGetMemberInfo, write=FOnGetMemberInfo};
	__property TTMSFNCCloudMailChimpMemberEvent OnAddMember = {read=FOnAddMember, write=FOnAddMember};
	__property TTMSFNCCloudMailChimpMemberEvent OnUpdateMember = {read=FOnUpdateMember, write=FOnUpdateMember};
	__property TTMSFNCCloudMailChimpMemberEvent OnArchiveMember = {read=FOnArchiveMember, write=FOnArchiveMember};
	__property TTMSFNCCloudMailChimpMemberEvent OnDeleteMember = {read=FOnDeleteMember, write=FOnDeleteMember};
	__property TTMSFNCCloudMailChimpCampaignsEvent OnGetCampaigns = {read=FOnGetCampaigns, write=FOnGetCampaigns};
	__property TTMSFNCCloudMailChimpCampaignEvent OnGetCampaignInfo = {read=FOnGetCampaignInfo, write=FOnGetCampaignInfo};
	__property TTMSFNCCloudMailChimpCampaignEvent OnAddCampaign = {read=FOnAddCampaign, write=FOnAddCampaign};
	__property TTMSFNCCloudMailChimpCampaignEvent OnUpdateCampaignSettings = {read=FOnUpdateCampaignSettings, write=FOnUpdateCampaignSettings};
	__property TTMSFNCCloudMailChimpCampaignEvent OnDeleteCampaign = {read=FOnDeleteCampaign, write=FOnDeleteCampaign};
	__property TTMSFNCCloudMailChimpCampaignEvent OnSendCampaign = {read=FOnSendCampaign, write=FOnSendCampaign};
	__property TTMSFNCCloudMailChimpCampaignContentEvent OnGetCampaignContent = {read=FOnGetCampaignContent, write=FOnGetCampaignContent};
	__property System::Classes::TNotifyEvent OnSetCampaignContent = {read=FOnSetCampaignContent, write=FOnSetCampaignContent};
	__property TTMSFNCCloudMailChimpErrorEvent OnError = {read=FOnError, write=FOnError};
public:
	/* TTMSFNCCustomCloudBase.Create */ inline __fastcall virtual TTMSFNCCloudCustomMailChimpMarketing()/* overload */ : Fmx::Tmsfnccloudbase::TTMSFNCCloudBase() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudMailChimpMarketing : public TTMSFNCCloudCustomMailChimpMarketing
{
	typedef TTMSFNCCloudCustomMailChimpMarketing inherited;
	
__published:
	__property APIKey = {default=0};
	__property OnGetLists;
	__property OnGetListInfo;
	__property OnAddList;
	__property OnUpdateList;
	__property OnDeleteList;
	__property OnGetMembers;
	__property OnGetMemberInfo;
	__property OnAddMember;
	__property OnUpdateMember;
	__property OnArchiveMember;
	__property OnDeleteMember;
	__property OnGetCampaigns;
	__property OnGetCampaignInfo;
	__property OnAddCampaign;
	__property OnUpdateCampaignSettings;
	__property OnDeleteCampaign;
	__property OnSendCampaign;
	__property OnGetCampaignContent;
	__property OnSetCampaignContent;
	__property OnError;
	__property DataCenter = {default=0};
public:
	/* TTMSFNCCloudCustomMailChimpMarketing.Create */ inline __fastcall virtual TTMSFNCCloudMailChimpMarketing(System::Classes::TComponent* AOwner)/* overload */ : TTMSFNCCloudCustomMailChimpMarketing(AOwner) { }
	/* TTMSFNCCloudCustomMailChimpMarketing.Destroy */ inline __fastcall virtual ~TTMSFNCCloudMailChimpMarketing() { }
	
public:
	/* TTMSFNCCustomCloudBase.Create */ inline __fastcall virtual TTMSFNCCloudMailChimpMarketing()/* overload */ : TTMSFNCCloudCustomMailChimpMarketing() { }
	
};


//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x0);
static constexpr System::Int8 BLD_VER = System::Int8(0x0);
}	/* namespace Marketing */
}	/* namespace Tmsfnccloudmailchimp */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCCLOUDMAILCHIMP_MARKETING)
using namespace Fmx::Tmsfnccloudmailchimp::Marketing;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCCLOUDMAILCHIMP)
using namespace Fmx::Tmsfnccloudmailchimp;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_Tmsfnccloudmailchimp_MarketingHPP
