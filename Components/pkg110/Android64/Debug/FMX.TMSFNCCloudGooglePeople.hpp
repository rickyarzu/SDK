// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCCloudGooglePeople.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfnccloudgooglepeopleHPP
#define Fmx_TmsfnccloudgooglepeopleHPP

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
namespace Tmsfnccloudgooglepeople
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCCloudGooglePeopleWebsite;
class DELPHICLASS TTMSFNCCloudGooglePeopleWebsites;
class DELPHICLASS TTMSFNCCloudGooglePeopleInstantMessenger;
class DELPHICLASS TTMSFNCCloudGooglePeopleInstantMessengers;
class DELPHICLASS TTMSFNCCloudGooglePeopleContactGroup;
class DELPHICLASS TTMSFNCCloudGooglePeopleContactGroups;
class DELPHICLASS TTMSFNCCloudGooglePeopleEmail;
class DELPHICLASS TTMSFNCCloudGooglePeopleEmails;
class DELPHICLASS TTMSFNCCloudGooglePeoplePhoneNumber;
class DELPHICLASS TTMSFNCCloudGooglePeoplePhoneNumbers;
class DELPHICLASS TTMSFNCCloudGooglePeoplePostalAddress;
class DELPHICLASS TTMSFNCCloudGooglePeoplePostalAddresses;
class DELPHICLASS TTMSFNCCloudGooglePeopleCustomData;
class DELPHICLASS TTMSFNCCloudGooglePeopleCustomItems;
class DELPHICLASS TTMSFNCCloudGooglePeopleRelation;
class DELPHICLASS TTMSFNCCloudGooglePeopleRelations;
class DELPHICLASS TTMSFNCCloudGooglePeopleNickname;
class DELPHICLASS TTMSFNCCloudGooglePeopleNicknames;
class DELPHICLASS TTMSFNCCloudGooglePeopleDate;
class DELPHICLASS TTMSFNCCloudGooglePeopleOrganization;
class DELPHICLASS TTMSFNCCloudGooglePeopleOrganizations;
class DELPHICLASS TGBirthDay;
class DELPHICLASS TTMSFNCCloudGooglePeopleNames;
class DELPHICLASS TTMSFNCCloudGooglePeopleContact;
class DELPHICLASS TTMSFNCCloudGooglePeopleContacts;
class DELPHICLASS TTMSFNCCloudGooglePeopleGroup;
class DELPHICLASS TTMSFNCCloudGooglePeopleGroups;
class DELPHICLASS TTMSFNCCustomCloudGooglePeople;
class DELPHICLASS TTMSFNCCloudGooglePeople;
//-- type declarations -------------------------------------------------------
typedef void __fastcall (__closure *TTMSFNCCloudGooglePeopleContactsEvent)(System::TObject* Sender, TTMSFNCCloudGooglePeopleContacts* const AInfo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudGooglePeopleContactEvent)(System::TObject* Sender, TTMSFNCCloudGooglePeopleContact* const AInfo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudGooglePeopleGroupEvent)(System::TObject* Sender, TTMSFNCCloudGooglePeopleGroup* const AInfo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudGooglePeopleGroupsEvent)(System::TObject* Sender, TTMSFNCCloudGooglePeopleGroups* const AInfo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

enum DECLSPEC_DENUM TTMSFNCCloudGooglePeopleFieldType : unsigned char { ftWork, ftHome, ftOther };

enum DECLSPEC_DENUM TTMSFNCCloudGooglePeoplePhoneType : unsigned char { ptHome, ptWork, ptMobile, ptHomeFax, ptWorkFax, ptOtherFax, ptPager, ptWorkMobile, ptWorkPager, ptMain, ptGoogleVoice, ptOther };

enum DECLSPEC_DENUM TTMSFNCCloudGooglePeopleIMType : unsigned char { itAIM, itMSN, itYahoo, itSkype, itQQ, itGoogleTalk, itICQ, itJabber, itNetMeeting };

enum DECLSPEC_DENUM TTMSFNCCloudGooglePeopleWebsiteType : unsigned char { wtHome, wtWork, wtBlog, wtProfile, wtHomePage, wtFTP, wtReservations, wtAppInstallPage, wtOther };

enum DECLSPEC_DENUM TTMSFNCCloudGooglePeopleRelationType : unsigned char { grSpouse, grChild, grMother, grFather, grParent, grBrother, grSister, grFriend, grRelative, grDomesticPartner, grManager, grAssistant, grReferredBy, grPartner };

enum DECLSPEC_DENUM TTMSFNCCloudGooglePeopelNickNameType : unsigned char { ntDefault, ntMaidenName, ntInitials, ntGPlus, ntOther };

class PASCALIMPLEMENTATION TTMSFNCCloudGooglePeopleWebsite : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	System::UnicodeString FURL;
	System::UnicodeString FCustomType;
	TTMSFNCCloudGooglePeopleWebsiteType FWebsiteType;
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property System::UnicodeString URL = {read=FURL, write=FURL};
	__property TTMSFNCCloudGooglePeopleWebsiteType WebsiteType = {read=FWebsiteType, write=FWebsiteType, nodefault};
	__property System::UnicodeString CustomType = {read=FCustomType, write=FCustomType};
public:
	/* TCollectionItem.Create */ inline __fastcall virtual TTMSFNCCloudGooglePeopleWebsite(System::Classes::TCollection* Collection) : System::Classes::TCollectionItem(Collection) { }
	/* TCollectionItem.Destroy */ inline __fastcall virtual ~TTMSFNCCloudGooglePeopleWebsite() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudGooglePeopleWebsites : public System::Classes::TCollection
{
	typedef System::Classes::TCollection inherited;
	
public:
	TTMSFNCCloudGooglePeopleWebsite* operator[](int Index) { return this->Items[Index]; }
	
private:
	HIDESBASE TTMSFNCCloudGooglePeopleWebsite* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCCloudGooglePeopleWebsite* const Value);
	
public:
	__fastcall TTMSFNCCloudGooglePeopleWebsites();
	HIDESBASE TTMSFNCCloudGooglePeopleWebsite* __fastcall Add();
	__property TTMSFNCCloudGooglePeopleWebsite* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCCloudGooglePeopleWebsites() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudGooglePeopleInstantMessenger : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	System::UnicodeString FID;
	TTMSFNCCloudGooglePeopleFieldType FInstantMessengerType;
	TTMSFNCCloudGooglePeopleIMType FProtocol;
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property System::UnicodeString ID = {read=FID, write=FID};
	__property TTMSFNCCloudGooglePeopleIMType Protocol = {read=FProtocol, write=FProtocol, nodefault};
	__property TTMSFNCCloudGooglePeopleFieldType InstantMessengerType = {read=FInstantMessengerType, write=FInstantMessengerType, nodefault};
public:
	/* TCollectionItem.Create */ inline __fastcall virtual TTMSFNCCloudGooglePeopleInstantMessenger(System::Classes::TCollection* Collection) : System::Classes::TCollectionItem(Collection) { }
	/* TCollectionItem.Destroy */ inline __fastcall virtual ~TTMSFNCCloudGooglePeopleInstantMessenger() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudGooglePeopleInstantMessengers : public System::Classes::TCollection
{
	typedef System::Classes::TCollection inherited;
	
public:
	TTMSFNCCloudGooglePeopleInstantMessenger* operator[](int Index) { return this->Items[Index]; }
	
private:
	HIDESBASE TTMSFNCCloudGooglePeopleInstantMessenger* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCCloudGooglePeopleInstantMessenger* const Value);
	
public:
	__fastcall TTMSFNCCloudGooglePeopleInstantMessengers();
	HIDESBASE TTMSFNCCloudGooglePeopleInstantMessenger* __fastcall Add();
	__property TTMSFNCCloudGooglePeopleInstantMessenger* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCCloudGooglePeopleInstantMessengers() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudGooglePeopleContactGroup : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	System::UnicodeString FID;
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property System::UnicodeString ID = {read=FID, write=FID};
public:
	/* TCollectionItem.Create */ inline __fastcall virtual TTMSFNCCloudGooglePeopleContactGroup(System::Classes::TCollection* Collection) : System::Classes::TCollectionItem(Collection) { }
	/* TCollectionItem.Destroy */ inline __fastcall virtual ~TTMSFNCCloudGooglePeopleContactGroup() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudGooglePeopleContactGroups : public System::Classes::TCollection
{
	typedef System::Classes::TCollection inherited;
	
public:
	TTMSFNCCloudGooglePeopleContactGroup* operator[](int Index) { return this->Items[Index]; }
	
private:
	HIDESBASE TTMSFNCCloudGooglePeopleContactGroup* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCCloudGooglePeopleContactGroup* const Value);
	
public:
	__fastcall TTMSFNCCloudGooglePeopleContactGroups();
	HIDESBASE TTMSFNCCloudGooglePeopleContactGroup* __fastcall Add();
	__property TTMSFNCCloudGooglePeopleContactGroup* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCCloudGooglePeopleContactGroups() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudGooglePeopleEmail : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	System::UnicodeString FAddress;
	TTMSFNCCloudGooglePeopleFieldType FEmailType;
	System::UnicodeString FName;
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property System::UnicodeString Address = {read=FAddress, write=FAddress};
	__property TTMSFNCCloudGooglePeopleFieldType EmailType = {read=FEmailType, write=FEmailType, default=1};
	__property System::UnicodeString Name = {read=FName, write=FName};
public:
	/* TCollectionItem.Create */ inline __fastcall virtual TTMSFNCCloudGooglePeopleEmail(System::Classes::TCollection* Collection) : System::Classes::TCollectionItem(Collection) { }
	/* TCollectionItem.Destroy */ inline __fastcall virtual ~TTMSFNCCloudGooglePeopleEmail() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudGooglePeopleEmails : public System::Classes::TCollection
{
	typedef System::Classes::TCollection inherited;
	
public:
	TTMSFNCCloudGooglePeopleEmail* operator[](int Index) { return this->Items[Index]; }
	
private:
	HIDESBASE TTMSFNCCloudGooglePeopleEmail* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCCloudGooglePeopleEmail* const Value);
	
public:
	__fastcall TTMSFNCCloudGooglePeopleEmails();
	HIDESBASE TTMSFNCCloudGooglePeopleEmail* __fastcall Add();
	__property TTMSFNCCloudGooglePeopleEmail* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCCloudGooglePeopleEmails() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudGooglePeoplePhoneNumber : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	System::UnicodeString FNumber;
	TTMSFNCCloudGooglePeoplePhoneType FPhoneType;
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property System::UnicodeString Number = {read=FNumber, write=FNumber};
	__property TTMSFNCCloudGooglePeoplePhoneType PhoneType = {read=FPhoneType, write=FPhoneType, default=2};
public:
	/* TCollectionItem.Create */ inline __fastcall virtual TTMSFNCCloudGooglePeoplePhoneNumber(System::Classes::TCollection* Collection) : System::Classes::TCollectionItem(Collection) { }
	/* TCollectionItem.Destroy */ inline __fastcall virtual ~TTMSFNCCloudGooglePeoplePhoneNumber() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudGooglePeoplePhoneNumbers : public System::Classes::TCollection
{
	typedef System::Classes::TCollection inherited;
	
public:
	TTMSFNCCloudGooglePeoplePhoneNumber* operator[](int Index) { return this->Items[Index]; }
	
private:
	HIDESBASE TTMSFNCCloudGooglePeoplePhoneNumber* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCCloudGooglePeoplePhoneNumber* const Value);
	
public:
	__fastcall TTMSFNCCloudGooglePeoplePhoneNumbers();
	HIDESBASE TTMSFNCCloudGooglePeoplePhoneNumber* __fastcall Add();
	__property TTMSFNCCloudGooglePeoplePhoneNumber* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCCloudGooglePeoplePhoneNumbers() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudGooglePeoplePostalAddress : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	System::UnicodeString FAddress;
	TTMSFNCCloudGooglePeopleFieldType FAddressType;
	System::UnicodeString FStreet;
	System::UnicodeString FCountry;
	System::UnicodeString FCountryCode;
	System::UnicodeString FCity;
	System::UnicodeString FPostCode;
	System::UnicodeString FPOBox;
	System::UnicodeString FRegion;
	System::UnicodeString FExtended;
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property System::UnicodeString Address = {read=FAddress, write=FAddress};
	__property TTMSFNCCloudGooglePeopleFieldType AddressType = {read=FAddressType, write=FAddressType, default=1};
	__property System::UnicodeString Street = {read=FStreet, write=FStreet};
	__property System::UnicodeString Extended = {read=FExtended, write=FExtended};
	__property System::UnicodeString PostCode = {read=FPostCode, write=FPostCode};
	__property System::UnicodeString City = {read=FCity, write=FCity};
	__property System::UnicodeString Country = {read=FCountry, write=FCountry};
	__property System::UnicodeString CountryCode = {read=FCountryCode, write=FCountryCode};
	__property System::UnicodeString POBox = {read=FPOBox, write=FPOBox};
	__property System::UnicodeString Region = {read=FRegion, write=FRegion};
public:
	/* TCollectionItem.Create */ inline __fastcall virtual TTMSFNCCloudGooglePeoplePostalAddress(System::Classes::TCollection* Collection) : System::Classes::TCollectionItem(Collection) { }
	/* TCollectionItem.Destroy */ inline __fastcall virtual ~TTMSFNCCloudGooglePeoplePostalAddress() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudGooglePeoplePostalAddresses : public System::Classes::TCollection
{
	typedef System::Classes::TCollection inherited;
	
public:
	TTMSFNCCloudGooglePeoplePostalAddress* operator[](int Index) { return this->Items[Index]; }
	
private:
	HIDESBASE TTMSFNCCloudGooglePeoplePostalAddress* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCCloudGooglePeoplePostalAddress* const Value);
	
public:
	__fastcall TTMSFNCCloudGooglePeoplePostalAddresses();
	HIDESBASE TTMSFNCCloudGooglePeoplePostalAddress* __fastcall Add();
	__property TTMSFNCCloudGooglePeoplePostalAddress* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCCloudGooglePeoplePostalAddresses() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudGooglePeopleCustomData : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	System::UnicodeString FKey;
	System::UnicodeString FValue;
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property System::UnicodeString Key = {read=FKey, write=FKey};
	__property System::UnicodeString Value = {read=FValue, write=FValue};
public:
	/* TCollectionItem.Create */ inline __fastcall virtual TTMSFNCCloudGooglePeopleCustomData(System::Classes::TCollection* Collection) : System::Classes::TCollectionItem(Collection) { }
	/* TCollectionItem.Destroy */ inline __fastcall virtual ~TTMSFNCCloudGooglePeopleCustomData() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudGooglePeopleCustomItems : public System::Classes::TCollection
{
	typedef System::Classes::TCollection inherited;
	
public:
	TTMSFNCCloudGooglePeopleCustomData* operator[](int Index) { return this->Items[Index]; }
	
private:
	HIDESBASE TTMSFNCCloudGooglePeopleCustomData* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCCloudGooglePeopleCustomData* const Value);
	
public:
	__fastcall TTMSFNCCloudGooglePeopleCustomItems();
	HIDESBASE TTMSFNCCloudGooglePeopleCustomData* __fastcall Add();
	__property TTMSFNCCloudGooglePeopleCustomData* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCCloudGooglePeopleCustomItems() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudGooglePeopleRelation : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	TTMSFNCCloudGooglePeopleRelationType FRelation;
	System::UnicodeString FPerson;
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property TTMSFNCCloudGooglePeopleRelationType Relation = {read=FRelation, write=FRelation, nodefault};
	__property System::UnicodeString Person = {read=FPerson, write=FPerson};
public:
	/* TCollectionItem.Create */ inline __fastcall virtual TTMSFNCCloudGooglePeopleRelation(System::Classes::TCollection* Collection) : System::Classes::TCollectionItem(Collection) { }
	/* TCollectionItem.Destroy */ inline __fastcall virtual ~TTMSFNCCloudGooglePeopleRelation() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudGooglePeopleRelations : public System::Classes::TCollection
{
	typedef System::Classes::TCollection inherited;
	
public:
	TTMSFNCCloudGooglePeopleRelation* operator[](int Index) { return this->Items[Index]; }
	
private:
	HIDESBASE TTMSFNCCloudGooglePeopleRelation* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCCloudGooglePeopleRelation* const Value);
	
public:
	__fastcall TTMSFNCCloudGooglePeopleRelations();
	HIDESBASE TTMSFNCCloudGooglePeopleRelation* __fastcall Add();
	__property TTMSFNCCloudGooglePeopleRelation* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCCloudGooglePeopleRelations() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudGooglePeopleNickname : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	TTMSFNCCloudGooglePeopelNickNameType FNicknameType;
	System::UnicodeString FNickname;
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property TTMSFNCCloudGooglePeopelNickNameType NicknameType = {read=FNicknameType, write=FNicknameType, nodefault};
	__property System::UnicodeString Nickname = {read=FNickname, write=FNickname};
public:
	/* TCollectionItem.Create */ inline __fastcall virtual TTMSFNCCloudGooglePeopleNickname(System::Classes::TCollection* Collection) : System::Classes::TCollectionItem(Collection) { }
	/* TCollectionItem.Destroy */ inline __fastcall virtual ~TTMSFNCCloudGooglePeopleNickname() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudGooglePeopleNicknames : public System::Classes::TCollection
{
	typedef System::Classes::TCollection inherited;
	
public:
	TTMSFNCCloudGooglePeopleNickname* operator[](int Index) { return this->Items[Index]; }
	
private:
	HIDESBASE TTMSFNCCloudGooglePeopleNickname* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCCloudGooglePeopleNickname* const Value);
	
public:
	__fastcall TTMSFNCCloudGooglePeopleNicknames();
	HIDESBASE TTMSFNCCloudGooglePeopleNickname* __fastcall Add();
	__property TTMSFNCCloudGooglePeopleNickname* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCCloudGooglePeopleNicknames() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudGooglePeopleDate : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	int FYear;
	int FDay;
	int FMonth;
	
public:
	__property int Day = {read=FDay, write=FDay, nodefault};
	__property int Month = {read=FMonth, write=FMonth, nodefault};
	__property int Year = {read=FYear, write=FYear, nodefault};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTMSFNCCloudGooglePeopleDate() { }
	
public:
	/* TObject.Create */ inline __fastcall TTMSFNCCloudGooglePeopleDate() : System::Classes::TPersistent() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudGooglePeopleOrganization : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	System::UnicodeString FSymbol;
	TTMSFNCCloudGooglePeopleDate* FEndDate;
	System::UnicodeString FLocation;
	System::UnicodeString FName;
	bool FCurrent;
	System::UnicodeString FDomain;
	System::UnicodeString FDepartment;
	System::UnicodeString FOrganizationType;
	TTMSFNCCloudGooglePeopleDate* FStartDate;
	System::UnicodeString FPhoneticName;
	System::UnicodeString FJobTitle;
	System::UnicodeString FJobDescription;
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual TTMSFNCCloudGooglePeopleOrganization(System::Classes::TCollection* Collection);
	__fastcall virtual ~TTMSFNCCloudGooglePeopleOrganization();
	
__published:
	__property System::UnicodeString OrganizationType = {read=FOrganizationType, write=FOrganizationType};
	__property TTMSFNCCloudGooglePeopleDate* StartDate = {read=FStartDate, write=FStartDate};
	__property TTMSFNCCloudGooglePeopleDate* EndDate = {read=FEndDate, write=FEndDate};
	__property bool Current = {read=FCurrent, write=FCurrent, nodefault};
	__property System::UnicodeString Name = {read=FName, write=FName};
	__property System::UnicodeString PhoneticName = {read=FPhoneticName, write=FPhoneticName};
	__property System::UnicodeString Department = {read=FDepartment, write=FDepartment};
	__property System::UnicodeString JobTitle = {read=FJobTitle, write=FJobTitle};
	__property System::UnicodeString JobDescription = {read=FJobDescription, write=FJobDescription};
	__property System::UnicodeString Symbol = {read=FSymbol, write=FSymbol};
	__property System::UnicodeString Domain = {read=FDomain, write=FDomain};
	__property System::UnicodeString Location = {read=FLocation, write=FLocation};
};


class PASCALIMPLEMENTATION TTMSFNCCloudGooglePeopleOrganizations : public System::Classes::TCollection
{
	typedef System::Classes::TCollection inherited;
	
public:
	TTMSFNCCloudGooglePeopleOrganization* operator[](int Index) { return this->Items[Index]; }
	
private:
	HIDESBASE TTMSFNCCloudGooglePeopleOrganization* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCCloudGooglePeopleOrganization* const Value);
	
public:
	__fastcall TTMSFNCCloudGooglePeopleOrganizations();
	HIDESBASE TTMSFNCCloudGooglePeopleOrganization* __fastcall Add();
	__property TTMSFNCCloudGooglePeopleOrganization* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCCloudGooglePeopleOrganizations() { }
	
};


class PASCALIMPLEMENTATION TGBirthDay : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	System::UnicodeString FSummary;
	TTMSFNCCloudGooglePeopleDate* FDate;
	
public:
	__fastcall TGBirthDay();
	__fastcall virtual ~TGBirthDay();
	__property TTMSFNCCloudGooglePeopleDate* Date = {read=FDate, write=FDate};
	__property System::UnicodeString Summary = {read=FSummary, write=FSummary};
};


class PASCALIMPLEMENTATION TTMSFNCCloudGooglePeopleNames : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	System::UnicodeString FName;
	System::UnicodeString FLastName;
	System::UnicodeString FPhoneticFullName;
	System::UnicodeString FPhoneticMiddleName;
	System::UnicodeString FPhoneticFirstName;
	System::UnicodeString FPhoneticPrefix;
	System::UnicodeString FPhoneticSuffix;
	System::UnicodeString FMiddleName;
	System::UnicodeString FFirstName;
	System::UnicodeString FPhoneticLastName;
	System::UnicodeString FPrefix;
	System::UnicodeString FSuffix;
	
public:
	__property System::UnicodeString Name = {read=FName};
	__property System::UnicodeString LastName = {read=FLastName, write=FLastName};
	__property System::UnicodeString FirstName = {read=FFirstName, write=FFirstName};
	__property System::UnicodeString MiddleName = {read=FMiddleName, write=FMiddleName};
	__property System::UnicodeString Prefix = {read=FPrefix, write=FPrefix};
	__property System::UnicodeString Suffix = {read=FSuffix, write=FSuffix};
	__property System::UnicodeString PhoneticFullName = {read=FPhoneticFullName, write=FPhoneticFullName};
	__property System::UnicodeString PhoneticLastName = {read=FPhoneticLastName, write=FPhoneticLastName};
	__property System::UnicodeString PhoneticFirstName = {read=FPhoneticFirstName, write=FPhoneticFirstName};
	__property System::UnicodeString PhoneticMiddleName = {read=FPhoneticMiddleName, write=FPhoneticMiddleName};
	__property System::UnicodeString PhoneticPrefix = {read=FPhoneticPrefix, write=FPhoneticPrefix};
	__property System::UnicodeString PhoneticSuffix = {read=FPhoneticSuffix, write=FPhoneticSuffix};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTMSFNCCloudGooglePeopleNames() { }
	
public:
	/* TObject.Create */ inline __fastcall TTMSFNCCloudGooglePeopleNames() : System::Classes::TPersistent() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudGooglePeopleContact : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	TTMSFNCCustomCloudGooglePeople* FGContacts;
	System::UnicodeString FID;
	System::UnicodeString FImageURL;
	TTMSFNCCloudGooglePeopleEmails* FEmails;
	TTMSFNCCloudGooglePeoplePhoneNumbers* FPhoneNumbers;
	TTMSFNCCloudGooglePeoplePostalAddresses* FPostalAddresses;
	TGBirthDay* FBirthDay;
	TTMSFNCCloudGooglePeopleNicknames* FNicknames;
	TTMSFNCCloudGooglePeopleCustomItems* FCustomItems;
	TTMSFNCCloudGooglePeopleRelations* FRelations;
	TTMSFNCCloudGooglePeopleContactGroups* FGroups;
	TTMSFNCCloudGooglePeopleInstantMessengers* FInstantMessengers;
	TTMSFNCCloudGooglePeopleWebsites* FWebsites;
	System::UnicodeString FETag;
	TTMSFNCCloudGooglePeopleNames* FNames;
	TTMSFNCCloudGooglePeopleOrganizations* FOrganizations;
	
protected:
	void __fastcall FromJSON(System::Json::TJSONValue* jo);
	System::UnicodeString __fastcall ToJSON();
	
public:
	__fastcall virtual TTMSFNCCloudGooglePeopleContact(System::Classes::TCollection* Collection);
	__fastcall virtual ~TTMSFNCCloudGooglePeopleContact();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property System::UnicodeString ID = {read=FID, write=FID};
	__property System::UnicodeString ETag = {read=FETag, write=FETag};
	__property TTMSFNCCloudGooglePeopleNames* Names = {read=FNames, write=FNames};
	__property TTMSFNCCloudGooglePeopleOrganizations* Organizations = {read=FOrganizations, write=FOrganizations};
	__property System::UnicodeString ImageURL = {read=FImageURL, write=FImageURL};
	__property TTMSFNCCloudGooglePeopleEmails* Emails = {read=FEmails, write=FEmails};
	__property TTMSFNCCloudGooglePeoplePhoneNumbers* PhoneNumbers = {read=FPhoneNumbers, write=FPhoneNumbers};
	__property TTMSFNCCloudGooglePeoplePostalAddresses* PostalAddresses = {read=FPostalAddresses, write=FPostalAddresses};
	__property TGBirthDay* BirthDay = {read=FBirthDay, write=FBirthDay};
	__property TTMSFNCCloudGooglePeopleNicknames* Nicknames = {read=FNicknames, write=FNicknames};
	__property TTMSFNCCloudGooglePeopleCustomItems* CustomItems = {read=FCustomItems, write=FCustomItems};
	__property TTMSFNCCloudGooglePeopleRelations* Relations = {read=FRelations, write=FRelations};
	__property TTMSFNCCloudGooglePeopleContactGroups* Groups = {read=FGroups, write=FGroups};
	__property TTMSFNCCloudGooglePeopleInstantMessengers* InstantMessengers = {read=FInstantMessengers, write=FInstantMessengers};
	__property TTMSFNCCloudGooglePeopleWebsites* Websites = {read=FWebsites, write=FWebsites};
};


class PASCALIMPLEMENTATION TTMSFNCCloudGooglePeopleContacts : public System::Classes::TOwnedCollection
{
	typedef System::Classes::TOwnedCollection inherited;
	
public:
	TTMSFNCCloudGooglePeopleContact* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCCustomCloudGooglePeople* FGContacts;
	HIDESBASE TTMSFNCCloudGooglePeopleContact* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCCloudGooglePeopleContact* const Value);
	
public:
	__fastcall TTMSFNCCloudGooglePeopleContacts(TTMSFNCCustomCloudGooglePeople* AGContacts);
	HIDESBASE TTMSFNCCloudGooglePeopleContact* __fastcall Add();
	TTMSFNCCloudGooglePeopleContact* __fastcall Find(const System::UnicodeString ID);
	__property TTMSFNCCloudGooglePeopleContact* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCCloudGooglePeopleContacts() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudGooglePeopleGroup : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	System::UnicodeString FID;
	System::UnicodeString FSummary;
	System::UnicodeString FETag;
	
protected:
	void __fastcall FromJSON(System::Json::TJSONValue* jo);
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property System::UnicodeString ID = {read=FID, write=FID};
	__property System::UnicodeString ETag = {read=FETag, write=FETag};
	__property System::UnicodeString Summary = {read=FSummary, write=FSummary};
public:
	/* TCollectionItem.Create */ inline __fastcall virtual TTMSFNCCloudGooglePeopleGroup(System::Classes::TCollection* Collection) : System::Classes::TCollectionItem(Collection) { }
	/* TCollectionItem.Destroy */ inline __fastcall virtual ~TTMSFNCCloudGooglePeopleGroup() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudGooglePeopleGroups : public System::Classes::TCollection
{
	typedef System::Classes::TCollection inherited;
	
public:
	TTMSFNCCloudGooglePeopleGroup* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCCustomCloudGooglePeople* FGContacts;
	HIDESBASE TTMSFNCCloudGooglePeopleGroup* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCCloudGooglePeopleGroup* const Value);
	
public:
	__fastcall TTMSFNCCloudGooglePeopleGroups(TTMSFNCCustomCloudGooglePeople* AGContacts);
	HIDESBASE TTMSFNCCloudGooglePeopleGroup* __fastcall Add();
	TTMSFNCCloudGooglePeopleGroup* __fastcall Find(const System::UnicodeString ID);
	int __fastcall IndexOf(TTMSFNCCloudGooglePeopleGroup* Item);
	__property TTMSFNCCloudGooglePeopleGroup* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCCloudGooglePeopleGroups() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCustomCloudGooglePeople : public Fmx::Tmsfnccloudgoogle::TTMSFNCCustomCloudGoogle
{
	typedef Fmx::Tmsfnccloudgoogle::TTMSFNCCustomCloudGoogle inherited;
	
private:
	TTMSFNCCloudGooglePeopleContact* FContact;
	TTMSFNCCloudGooglePeopleContacts* FContacts;
	TTMSFNCCloudGooglePeopleGroup* FGroup;
	TTMSFNCCloudGooglePeopleGroups* FGroups;
	TTMSFNCCloudGooglePeopleContactsEvent FOnGetContacts;
	TTMSFNCCloudGooglePeopleGroupsEvent FOnGetGroups;
	TTMSFNCCloudGooglePeopleContactEvent FOnCreateContact;
	TTMSFNCCloudGooglePeopleContactEvent FOnUpdateContact;
	Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseCompleteEvent FOnDeleteContact;
	TTMSFNCCloudGooglePeopleGroupEvent FOnCreateGroup;
	TTMSFNCCloudGooglePeopleGroupEvent FOnUpdateGroup;
	Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseCompleteEvent FOnDeleteGroup;
	TTMSFNCCloudGooglePeopleContactEvent FOnGetContactByID;
	TTMSFNCCloudGooglePeopleGroupEvent FOnGetGroupByID;
	TTMSFNCCloudGooglePeopleContactEvent FOnDeleteContactFromGroup;
	TTMSFNCCloudGooglePeopleContactEvent FOnAddContactToGroup;
	
protected:
	virtual System::UnicodeString __fastcall GetVersion();
	bool __fastcall HasError(System::UnicodeString AJSON);
	void __fastcall DoGetContacts(TTMSFNCCloudGooglePeopleContacts* const AInfo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoGetContactByID(TTMSFNCCloudGooglePeopleContact* const AInfo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoGetGroupByID(TTMSFNCCloudGooglePeopleGroup* const AInfo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoGetGroups(TTMSFNCCloudGooglePeopleGroups* const AInfo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoCreateContact(TTMSFNCCloudGooglePeopleContact* const AInfo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoCreateGroup(TTMSFNCCloudGooglePeopleGroup* const AInfo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoUpdateContact(TTMSFNCCloudGooglePeopleContact* const AInfo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoUpdateGroup(TTMSFNCCloudGooglePeopleGroup* const AInfo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoDeleteContact(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoDeleteGroup(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoAddContactToGroup(TTMSFNCCloudGooglePeopleContact* const AInfo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoDeleteContactFromGroup(TTMSFNCCloudGooglePeopleContact* const AInfo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestGetContacts(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestGetContactByID(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestGetGroupByID(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestGetGroups(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestCreateContact(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestCreateGroup(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestDeleteContact(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestDeleteGroup(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestUpdateContact(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestUpdateGroup(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestAddContactToGroup(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestDeleteContactFromGroup(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	
public:
	__fastcall virtual TTMSFNCCustomCloudGooglePeople(System::Classes::TComponent* AOwner)/* overload */;
	__fastcall virtual ~TTMSFNCCustomCloudGooglePeople();
	void __fastcall GetContacts();
	void __fastcall GetContactByID(System::UnicodeString AContactID);
	void __fastcall GetGroups();
	void __fastcall GetGroupByID(System::UnicodeString AGroupID);
	void __fastcall CreateContact(TTMSFNCCloudGooglePeopleContact* AContact);
	void __fastcall CreateGroup(TTMSFNCCloudGooglePeopleGroup* AGroup);
	void __fastcall DeleteContact(TTMSFNCCloudGooglePeopleContact* AContact);
	void __fastcall DeleteGroup(TTMSFNCCloudGooglePeopleGroup* AGroup);
	void __fastcall UpdateContact(TTMSFNCCloudGooglePeopleContact* AContact);
	void __fastcall UpdateGroup(TTMSFNCCloudGooglePeopleGroup* AGroup);
	void __fastcall AddContactToGroup(TTMSFNCCloudGooglePeopleGroup* AGroup, TTMSFNCCloudGooglePeopleContact* AContact);
	void __fastcall DeleteContactFromGroup(TTMSFNCCloudGooglePeopleGroup* AGroup, TTMSFNCCloudGooglePeopleContact* AContact);
	__property TTMSFNCCloudGooglePeopleContacts* Contacts = {read=FContacts, write=FContacts};
	__property TTMSFNCCloudGooglePeopleGroups* Groups = {read=FGroups, write=FGroups};
	
__published:
	__property TTMSFNCCloudGooglePeopleContactsEvent OnGetContacts = {read=FOnGetContacts, write=FOnGetContacts};
	__property TTMSFNCCloudGooglePeopleContactEvent OnGetContactByID = {read=FOnGetContactByID, write=FOnGetContactByID};
	__property TTMSFNCCloudGooglePeopleGroupEvent OnGetGroupByID = {read=FOnGetGroupByID, write=FOnGetGroupByID};
	__property TTMSFNCCloudGooglePeopleGroupsEvent OnGetGroups = {read=FOnGetGroups, write=FOnGetGroups};
	__property TTMSFNCCloudGooglePeopleContactEvent OnCreateContact = {read=FOnCreateContact, write=FOnCreateContact};
	__property TTMSFNCCloudGooglePeopleContactEvent OnAddContactToGroup = {read=FOnAddContactToGroup, write=FOnAddContactToGroup};
	__property TTMSFNCCloudGooglePeopleContactEvent OnDeleteContactFromGroup = {read=FOnDeleteContactFromGroup, write=FOnDeleteContactFromGroup};
	__property TTMSFNCCloudGooglePeopleGroupEvent OnCreateGroup = {read=FOnCreateGroup, write=FOnCreateGroup};
	__property TTMSFNCCloudGooglePeopleContactEvent OnUpdateContact = {read=FOnUpdateContact, write=FOnUpdateContact};
	__property TTMSFNCCloudGooglePeopleGroupEvent OnUpdateGroup = {read=FOnUpdateGroup, write=FOnUpdateGroup};
	__property Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseCompleteEvent OnDeleteContact = {read=FOnDeleteContact, write=FOnDeleteContact};
	__property Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseCompleteEvent OnDeleteGroup = {read=FOnDeleteGroup, write=FOnDeleteGroup};
public:
	/* TTMSFNCCustomCloudOAuth.Create */ inline __fastcall virtual TTMSFNCCustomCloudGooglePeople()/* overload */ : Fmx::Tmsfnccloudgoogle::TTMSFNCCustomCloudGoogle() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudGooglePeople : public TTMSFNCCustomCloudGooglePeople
{
	typedef TTMSFNCCustomCloudGooglePeople inherited;
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	
__published:
	__property OnGetContacts;
	__property OnGetContactByID;
	__property OnGetGroupByID;
	__property OnGetGroups;
	__property OnCreateContact;
	__property OnAddContactToGroup;
	__property OnDeleteContactFromGroup;
	__property OnCreateGroup;
	__property OnUpdateContact;
	__property OnUpdateGroup;
	__property OnDeleteContact;
	__property OnDeleteGroup;
public:
	/* TTMSFNCCustomCloudGooglePeople.Create */ inline __fastcall virtual TTMSFNCCloudGooglePeople(System::Classes::TComponent* AOwner)/* overload */ : TTMSFNCCustomCloudGooglePeople(AOwner) { }
	/* TTMSFNCCustomCloudGooglePeople.Destroy */ inline __fastcall virtual ~TTMSFNCCloudGooglePeople() { }
	
public:
	/* TTMSFNCCustomCloudOAuth.Create */ inline __fastcall virtual TTMSFNCCloudGooglePeople()/* overload */ : TTMSFNCCustomCloudGooglePeople() { }
	
};


//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x0);
static constexpr System::Int8 BLD_VER = System::Int8(0x1);
}	/* namespace Tmsfnccloudgooglepeople */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCCLOUDGOOGLEPEOPLE)
using namespace Fmx::Tmsfnccloudgooglepeople;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfnccloudgooglepeopleHPP
