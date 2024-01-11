// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCCloudMicrosoftOutlookContacts.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfnccloudmicrosoftoutlookcontactsHPP
#define Fmx_TmsfnccloudmicrosoftoutlookcontactsHPP

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
namespace Tmsfnccloudmicrosoftoutlookcontacts
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCCloudMicrosoftOutlookContactsEmail;
class DELPHICLASS TTMSFNCCloudMicrosoftOutlookContactsEmails;
class DELPHICLASS TTMSFNCCloudMicrosoftOutlookContactsPostalAddress;
class DELPHICLASS TTMSFNCCloudMicrosoftOutlookContactsContact;
class DELPHICLASS TTMSFNCCloudMicrosoftOutlookContactsContacts;
class DELPHICLASS TTMSFNCCustomCloudMicrosoftOutlookContacts;
class DELPHICLASS TTMSFNCCloudMicrosoftOutlookContacts;
//-- type declarations -------------------------------------------------------
typedef void __fastcall (__closure *TTMSFNCCloudMicrosoftOutlookContactsContactsEvent)(System::TObject* Sender, TTMSFNCCloudMicrosoftOutlookContactsContacts* const AInfo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudMicrosoftOutlookContactsContactEvent)(System::TObject* Sender, TTMSFNCCloudMicrosoftOutlookContactsContact* const AInfo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

class PASCALIMPLEMENTATION TTMSFNCCloudMicrosoftOutlookContactsEmail : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	System::UnicodeString FAddress;
	System::UnicodeString FDisplayName;
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property System::UnicodeString Address = {read=FAddress, write=FAddress};
	__property System::UnicodeString DisplayName = {read=FDisplayName, write=FDisplayName};
public:
	/* TCollectionItem.Create */ inline __fastcall virtual TTMSFNCCloudMicrosoftOutlookContactsEmail(System::Classes::TCollection* Collection) : System::Classes::TCollectionItem(Collection) { }
	/* TCollectionItem.Destroy */ inline __fastcall virtual ~TTMSFNCCloudMicrosoftOutlookContactsEmail() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudMicrosoftOutlookContactsEmails : public System::Classes::TCollection
{
	typedef System::Classes::TCollection inherited;
	
public:
	TTMSFNCCloudMicrosoftOutlookContactsEmail* operator[](int Index) { return this->Items[Index]; }
	
private:
	HIDESBASE TTMSFNCCloudMicrosoftOutlookContactsEmail* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCCloudMicrosoftOutlookContactsEmail* const Value);
	
public:
	__fastcall TTMSFNCCloudMicrosoftOutlookContactsEmails();
	HIDESBASE TTMSFNCCloudMicrosoftOutlookContactsEmail* __fastcall Add();
	__property TTMSFNCCloudMicrosoftOutlookContactsEmail* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCCloudMicrosoftOutlookContactsEmails() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudMicrosoftOutlookContactsPostalAddress : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	System::UnicodeString FStreet;
	System::UnicodeString FCountry;
	System::UnicodeString FCity;
	System::UnicodeString FPostCode;
	System::UnicodeString FState;
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property System::UnicodeString Street = {read=FStreet, write=FStreet};
	__property System::UnicodeString PostCode = {read=FPostCode, write=FPostCode};
	__property System::UnicodeString City = {read=FCity, write=FCity};
	__property System::UnicodeString State = {read=FState, write=FState};
	__property System::UnicodeString Country = {read=FCountry, write=FCountry};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTMSFNCCloudMicrosoftOutlookContactsPostalAddress() { }
	
public:
	/* TObject.Create */ inline __fastcall TTMSFNCCloudMicrosoftOutlookContactsPostalAddress() : System::Classes::TPersistent() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudMicrosoftOutlookContactsContact : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	TTMSFNCCustomCloudMicrosoftOutlookContacts* FGContacts;
	System::UnicodeString FID;
	System::UnicodeString FDisplayName;
	TTMSFNCCloudMicrosoftOutlookContactsEmails* FEmailAddresses;
	System::UnicodeString FLastName;
	System::TDateTime FBirthDay;
	System::UnicodeString FCompanyName;
	TTMSFNCCloudMicrosoftOutlookContactsPostalAddress* FHomeAddress;
	System::UnicodeString FMobilePhone;
	System::UnicodeString FJobTitle;
	TTMSFNCCloudMicrosoftOutlookContactsPostalAddress* FBusinessAddress;
	System::UnicodeString FFirstName;
	Fmx::Tmsfnctypes::TTMSFNCBitmap* FImage;
	
protected:
	void __fastcall FromJSON(System::Json::TJSONValue* jo);
	System::UnicodeString __fastcall ToJSON();
	
public:
	__fastcall virtual TTMSFNCCloudMicrosoftOutlookContactsContact(System::Classes::TCollection* Collection);
	__fastcall virtual ~TTMSFNCCloudMicrosoftOutlookContactsContact();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property System::UnicodeString ID = {read=FID};
	__property System::UnicodeString FirstName = {read=FFirstName, write=FFirstName};
	__property System::UnicodeString LastName = {read=FLastName, write=FLastName};
	__property System::UnicodeString DisplayName = {read=FDisplayName, write=FDisplayName};
	__property System::TDateTime BirthDay = {read=FBirthDay, write=FBirthDay};
	__property TTMSFNCCloudMicrosoftOutlookContactsEmails* EmailAddresses = {read=FEmailAddresses, write=FEmailAddresses};
	__property System::UnicodeString MobilePhone = {read=FMobilePhone, write=FMobilePhone};
	__property TTMSFNCCloudMicrosoftOutlookContactsPostalAddress* HomeAddress = {read=FHomeAddress, write=FHomeAddress};
	__property TTMSFNCCloudMicrosoftOutlookContactsPostalAddress* BusinessAddress = {read=FBusinessAddress, write=FBusinessAddress};
	__property System::UnicodeString JobTitle = {read=FJobTitle, write=FJobTitle};
	__property System::UnicodeString CompanyName = {read=FCompanyName, write=FCompanyName};
	__property Fmx::Tmsfnctypes::TTMSFNCBitmap* Image = {read=FImage, write=FImage};
};


class PASCALIMPLEMENTATION TTMSFNCCloudMicrosoftOutlookContactsContacts : public System::Classes::TOwnedCollection
{
	typedef System::Classes::TOwnedCollection inherited;
	
public:
	TTMSFNCCloudMicrosoftOutlookContactsContact* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCCustomCloudMicrosoftOutlookContacts* FGContacts;
	HIDESBASE TTMSFNCCloudMicrosoftOutlookContactsContact* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCCloudMicrosoftOutlookContactsContact* const Value);
	
public:
	__fastcall TTMSFNCCloudMicrosoftOutlookContactsContacts(TTMSFNCCustomCloudMicrosoftOutlookContacts* AGContacts);
	HIDESBASE TTMSFNCCloudMicrosoftOutlookContactsContact* __fastcall Add();
	TTMSFNCCloudMicrosoftOutlookContactsContact* __fastcall Find(const System::UnicodeString ID);
	__property TTMSFNCCloudMicrosoftOutlookContactsContact* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCCloudMicrosoftOutlookContactsContacts() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCustomCloudMicrosoftOutlookContacts : public Fmx::Tmsfnccloudmicrosoft::TTMSFNCCustomCloudMicrosoft
{
	typedef Fmx::Tmsfnccloudmicrosoft::TTMSFNCCustomCloudMicrosoft inherited;
	
private:
	System::UnicodeString FBasePath;
	TTMSFNCCloudMicrosoftOutlookContactsContact* FContact;
	TTMSFNCCloudMicrosoftOutlookContactsContacts* FContacts;
	TTMSFNCCloudMicrosoftOutlookContactsContactsEvent FOnGetContacts;
	TTMSFNCCloudMicrosoftOutlookContactsContactEvent FOnCreateContact;
	TTMSFNCCloudMicrosoftOutlookContactsContactEvent FOnUpdateContact;
	Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseCompleteEvent FOnDeleteContact;
	TTMSFNCCloudMicrosoftOutlookContactsContactEvent FOnGetContactByID;
	TTMSFNCCloudMicrosoftOutlookContactsContactEvent FOnDownloadContactImage;
	TTMSFNCCloudMicrosoftOutlookContactsContactEvent FOnUploadContactImage;
	
protected:
	virtual System::UnicodeString __fastcall GetVersion();
	bool __fastcall HasError(System::UnicodeString AJSON);
	void __fastcall DoGetContacts(TTMSFNCCloudMicrosoftOutlookContactsContacts* const AInfo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoGetContactByID(TTMSFNCCloudMicrosoftOutlookContactsContact* const AInfo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoCreateContact(TTMSFNCCloudMicrosoftOutlookContactsContact* const AInfo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoUpdateContact(TTMSFNCCloudMicrosoftOutlookContactsContact* const AInfo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoDeleteContact(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoDownloadContactImage(TTMSFNCCloudMicrosoftOutlookContactsContact* const AInfo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoUploadContactImage(TTMSFNCCloudMicrosoftOutlookContactsContact* const AInfo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestGetContacts(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestGetContactByID(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestCreateContact(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestDeleteContact(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestUpdateContact(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestDownloadContactImage(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestUploadContactImage(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	__property TTMSFNCCloudMicrosoftOutlookContactsContactsEvent OnGetContacts = {read=FOnGetContacts, write=FOnGetContacts};
	__property TTMSFNCCloudMicrosoftOutlookContactsContactEvent OnGetContactByID = {read=FOnGetContactByID, write=FOnGetContactByID};
	__property TTMSFNCCloudMicrosoftOutlookContactsContactEvent OnCreateContact = {read=FOnCreateContact, write=FOnCreateContact};
	__property TTMSFNCCloudMicrosoftOutlookContactsContactEvent OnUpdateContact = {read=FOnUpdateContact, write=FOnUpdateContact};
	__property Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseCompleteEvent OnDeleteContact = {read=FOnDeleteContact, write=FOnDeleteContact};
	__property TTMSFNCCloudMicrosoftOutlookContactsContactEvent OnDownloadContactImage = {read=FOnDownloadContactImage, write=FOnDownloadContactImage};
	__property TTMSFNCCloudMicrosoftOutlookContactsContactEvent OnUploadContactImage = {read=FOnUploadContactImage, write=FOnUploadContactImage};
	
public:
	__fastcall virtual TTMSFNCCustomCloudMicrosoftOutlookContacts(System::Classes::TComponent* AOwner)/* overload */;
	__fastcall virtual ~TTMSFNCCustomCloudMicrosoftOutlookContacts();
	void __fastcall GetContacts(int APageSize = 0x64, int APageIndex = 0x0);
	void __fastcall GetContactByID(System::UnicodeString AContactID);
	void __fastcall CreateContact(TTMSFNCCloudMicrosoftOutlookContactsContact* AContact);
	void __fastcall DeleteContact(TTMSFNCCloudMicrosoftOutlookContactsContact* AContact)/* overload */;
	void __fastcall DeleteContact(System::UnicodeString AContactID)/* overload */;
	void __fastcall UpdateContact(TTMSFNCCloudMicrosoftOutlookContactsContact* AContact);
	void __fastcall DownloadContactImage(TTMSFNCCloudMicrosoftOutlookContactsContact* AContact);
	void __fastcall UploadContactImage(TTMSFNCCloudMicrosoftOutlookContactsContact* AContact, System::UnicodeString AFileName);
	__property TTMSFNCCloudMicrosoftOutlookContactsContacts* Contacts = {read=FContacts, write=FContacts};
public:
	/* TTMSFNCCustomCloudOAuth.Create */ inline __fastcall virtual TTMSFNCCustomCloudMicrosoftOutlookContacts()/* overload */ : Fmx::Tmsfnccloudmicrosoft::TTMSFNCCustomCloudMicrosoft() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudMicrosoftOutlookContacts : public TTMSFNCCustomCloudMicrosoftOutlookContacts
{
	typedef TTMSFNCCustomCloudMicrosoftOutlookContacts inherited;
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	
__published:
	__property OnGetContacts;
	__property OnGetContactByID;
	__property OnCreateContact;
	__property OnUpdateContact;
	__property OnDeleteContact;
	__property OnDownloadContactImage;
	__property OnUploadContactImage;
public:
	/* TTMSFNCCustomCloudMicrosoftOutlookContacts.Create */ inline __fastcall virtual TTMSFNCCloudMicrosoftOutlookContacts(System::Classes::TComponent* AOwner)/* overload */ : TTMSFNCCustomCloudMicrosoftOutlookContacts(AOwner) { }
	/* TTMSFNCCustomCloudMicrosoftOutlookContacts.Destroy */ inline __fastcall virtual ~TTMSFNCCloudMicrosoftOutlookContacts() { }
	
public:
	/* TTMSFNCCustomCloudOAuth.Create */ inline __fastcall virtual TTMSFNCCloudMicrosoftOutlookContacts()/* overload */ : TTMSFNCCustomCloudMicrosoftOutlookContacts() { }
	
};


//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x0);
static constexpr System::Int8 BLD_VER = System::Int8(0x0);
}	/* namespace Tmsfnccloudmicrosoftoutlookcontacts */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCCLOUDMICROSOFTOUTLOOKCONTACTS)
using namespace Fmx::Tmsfnccloudmicrosoftoutlookcontacts;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfnccloudmicrosoftoutlookcontactsHPP
