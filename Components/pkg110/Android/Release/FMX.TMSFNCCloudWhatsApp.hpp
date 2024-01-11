// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCCloudWhatsApp.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfnccloudwhatsappHPP
#define Fmx_TmsfnccloudwhatsappHPP

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
#include <System.SysUtils.hpp>
#include <FMX.TMSFNCUtils.hpp>
#include <System.JSON.hpp>
#include <System.Generics.Collections.hpp>
#include <System.Generics.Defaults.hpp>
#include <System.Types.hpp>
#include <FMX.TMSFNCCustomComponent.hpp>
#include <FMX.Controls.hpp>
#include <FMX.Types.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfnccloudwhatsapp
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCCloudWhatsAppContactAddress;
class DELPHICLASS TTMSFNCCloudWhatsAppContactEmail;
class DELPHICLASS TTMSFNCCloudWhatsAppContactPhone;
class DELPHICLASS TTMSFNCCloudWhatsAppContactURL;
class DELPHICLASS TTMSFNCCloudWhatsAppContactName;
class DELPHICLASS TTMSFNCCloudWhatsAppContactOrganization;
class DELPHICLASS TTMSFNCCloudWhatsAppContactAddresses;
class DELPHICLASS TTMSFNCCloudWhatsAppContactEmails;
class DELPHICLASS TTMSFNCCloudWhatsAppContactPhones;
class DELPHICLASS TTMSFNCCloudWhatsAppContactURLs;
class DELPHICLASS TTMSFNCCloudWhatsAppContact;
class DELPHICLASS TTMSFNCCloudWhatsAppContacts;
class DELPHICLASS TTMSFNCCloudWhatsAppText;
class DELPHICLASS TTMSFNCCloudWhatsAppMedia;
class DELPHICLASS TTMSFNCCloudWhatsAppLocation;
class DELPHICLASS TTMSFNCCloudWhatsAppMessage;
class DELPHICLASS TTMSFNCCloudWhatsAppFiles;
class DELPHICLASS TTMSFNCCloudWhatsAppMessages;
class DELPHICLASS TTMSFNCCloudCustomWhatsApp;
class DELPHICLASS TTMSFNCCloudWhatsApp;
//-- type declarations -------------------------------------------------------
enum DECLSPEC_DENUM TTMSFNCCloudWhatsAppMessageType : unsigned char { mtText, mtAudio, mtContacts, mtDocument, mtVideo, mtImage, mtLocation, mtSticker };

typedef void __fastcall (__closure *TTMSFNCCloudWhatsAppErrorEvent)(System::TObject* Sender, System::UnicodeString AErrorMessage);

typedef void __fastcall (__closure *TTMSFNCCloudWhatsAppURLEvent)(System::TObject* Sender, System::UnicodeString AURL);

typedef void __fastcall (__closure *TTMSFNCCloudWhatsAppSendSuccessEvent)(System::TObject* Sender, TTMSFNCCloudWhatsAppMessage* AMessage);

typedef void __fastcall (__closure *TTMSFNCCloudWhatsAppUploadSuccessEvent)(System::TObject* Sender, TTMSFNCCloudWhatsAppMedia* AMedia);

typedef void __fastcall (__closure *TTMSFNCCloudWhatsAppDownloadEvent)(System::TObject* Sender, System::Classes::TMemoryStream* AStream, System::UnicodeString AFileName, System::UnicodeString AMimeType);

enum DECLSPEC_DENUM TTMSFNCCloudWhatsAppContactType : unsigned char { ctHome, ctWork };

enum DECLSPEC_DENUM TTMSFNCCloudWhatsAppContactPhoneType : unsigned char { ptHome, ptWork, ptCell, ptMain, ptIphone };

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudWhatsAppContactAddress : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	System::UnicodeString FStreet;
	System::UnicodeString FZIP;
	System::UnicodeString FState;
	System::UnicodeString FCountryCode;
	TTMSFNCCloudWhatsAppContactType FAddressType;
	System::UnicodeString FCountry;
	System::UnicodeString FCity;
	void __fastcall SetAddressType(const TTMSFNCCloudWhatsAppContactType Value);
	void __fastcall SetCity(const System::UnicodeString Value);
	void __fastcall SetCountry(const System::UnicodeString Value);
	void __fastcall SetCountryCode(const System::UnicodeString Value);
	void __fastcall SetState(const System::UnicodeString Value);
	void __fastcall SetStreet(const System::UnicodeString Value);
	void __fastcall SetZIP(const System::UnicodeString Value);
	
public:
	System::UnicodeString __fastcall ToJSON();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property System::UnicodeString Street = {read=FStreet, write=SetStreet};
	__property System::UnicodeString City = {read=FCity, write=SetCity};
	__property System::UnicodeString State = {read=FState, write=SetState};
	__property System::UnicodeString ZIP = {read=FZIP, write=SetZIP};
	__property System::UnicodeString Country = {read=FCountry, write=SetCountry};
	__property System::UnicodeString CountryCode = {read=FCountryCode, write=SetCountryCode};
	__property TTMSFNCCloudWhatsAppContactType AddressType = {read=FAddressType, write=SetAddressType, nodefault};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTMSFNCCloudWhatsAppContactAddress() { }
	
public:
	/* TObject.Create */ inline __fastcall TTMSFNCCloudWhatsAppContactAddress() : System::Classes::TPersistent() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudWhatsAppContactEmail : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	System::UnicodeString FEmail;
	TTMSFNCCloudWhatsAppContactType FEmailType;
	void __fastcall SetEmail(const System::UnicodeString Value);
	void __fastcall SetEmailType(const TTMSFNCCloudWhatsAppContactType Value);
	
public:
	System::UnicodeString __fastcall ToJSON();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property System::UnicodeString Email = {read=FEmail, write=SetEmail};
	__property TTMSFNCCloudWhatsAppContactType EmailType = {read=FEmailType, write=SetEmailType, nodefault};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTMSFNCCloudWhatsAppContactEmail() { }
	
public:
	/* TObject.Create */ inline __fastcall TTMSFNCCloudWhatsAppContactEmail() : System::Classes::TPersistent() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudWhatsAppContactPhone : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	TTMSFNCCloudWhatsAppContactPhoneType FPhoneType;
	System::UnicodeString FPhone;
	System::UnicodeString FWaID;
	void __fastcall SetPhone(const System::UnicodeString Value);
	void __fastcall SetPhoneType(const TTMSFNCCloudWhatsAppContactPhoneType Value);
	void __fastcall SetWaID(const System::UnicodeString Value);
	
public:
	System::UnicodeString __fastcall ToJSON();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property System::UnicodeString Phone = {read=FPhone, write=SetPhone};
	__property TTMSFNCCloudWhatsAppContactPhoneType PhoneType = {read=FPhoneType, write=SetPhoneType, nodefault};
	__property System::UnicodeString WhatsAppID = {read=FWaID, write=SetWaID};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTMSFNCCloudWhatsAppContactPhone() { }
	
public:
	/* TObject.Create */ inline __fastcall TTMSFNCCloudWhatsAppContactPhone() : System::Classes::TPersistent() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudWhatsAppContactURL : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	TTMSFNCCloudWhatsAppContactType FURLType;
	System::UnicodeString FURL;
	void __fastcall SetURL(const System::UnicodeString Value);
	void __fastcall SetURLType(const TTMSFNCCloudWhatsAppContactType Value);
	
public:
	System::UnicodeString __fastcall ToJSON();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property System::UnicodeString URL = {read=FURL, write=SetURL};
	__property TTMSFNCCloudWhatsAppContactType URLType = {read=FURLType, write=SetURLType, nodefault};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTMSFNCCloudWhatsAppContactURL() { }
	
public:
	/* TObject.Create */ inline __fastcall TTMSFNCCloudWhatsAppContactURL() : System::Classes::TPersistent() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudWhatsAppContactName : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	System::UnicodeString FLastName;
	System::UnicodeString FFormattedName;
	System::UnicodeString FMiddleName;
	System::UnicodeString FFirstName;
	System::UnicodeString FPrefix;
	System::UnicodeString FSuffix;
	void __fastcall SetFirstName(const System::UnicodeString Value);
	void __fastcall SetFormattedName(const System::UnicodeString Value);
	void __fastcall SetLastName(const System::UnicodeString Value);
	void __fastcall SetMiddleName(const System::UnicodeString Value);
	void __fastcall SetPrefix(const System::UnicodeString Value);
	void __fastcall SetSuffix(const System::UnicodeString Value);
	
public:
	System::UnicodeString __fastcall ToJSON();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property System::UnicodeString FormattedName = {read=FFormattedName, write=SetFormattedName};
	__property System::UnicodeString FirstName = {read=FFirstName, write=SetFirstName};
	__property System::UnicodeString LastName = {read=FLastName, write=SetLastName};
	__property System::UnicodeString MiddleName = {read=FMiddleName, write=SetMiddleName};
	__property System::UnicodeString Suffix = {read=FSuffix, write=SetSuffix};
	__property System::UnicodeString Prefix = {read=FPrefix, write=SetPrefix};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTMSFNCCloudWhatsAppContactName() { }
	
public:
	/* TObject.Create */ inline __fastcall TTMSFNCCloudWhatsAppContactName() : System::Classes::TPersistent() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudWhatsAppContactOrganization : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	System::UnicodeString FDepartment;
	System::UnicodeString FCompany;
	System::UnicodeString FTitle;
	void __fastcall SetCompany(const System::UnicodeString Value);
	void __fastcall SetDepartment(const System::UnicodeString Value);
	void __fastcall SetTitle(const System::UnicodeString Value);
	
public:
	System::UnicodeString __fastcall ToJSON();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property System::UnicodeString Company = {read=FCompany, write=SetCompany};
	__property System::UnicodeString Department = {read=FDepartment, write=SetDepartment};
	__property System::UnicodeString Title = {read=FTitle, write=SetTitle};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTMSFNCCloudWhatsAppContactOrganization() { }
	
public:
	/* TObject.Create */ inline __fastcall TTMSFNCCloudWhatsAppContactOrganization() : System::Classes::TPersistent() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudWhatsAppContactAddresses : public System::Generics::Collections::TObjectList__1<TTMSFNCCloudWhatsAppContactAddress*>
{
	typedef System::Generics::Collections::TObjectList__1<TTMSFNCCloudWhatsAppContactAddress*> inherited;
	
public:
	System::UnicodeString __fastcall ToJSON();
public:
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudWhatsApp_TTMSFNCCloudWhatsAppContactAddress>.Create */ inline __fastcall TTMSFNCCloudWhatsAppContactAddresses()/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudWhatsAppContactAddress*>() { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudWhatsApp_TTMSFNCCloudWhatsAppContactAddress>.Create */ inline __fastcall TTMSFNCCloudWhatsAppContactAddresses(bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudWhatsAppContactAddress*>(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudWhatsApp_TTMSFNCCloudWhatsAppContactAddress>.Create */ inline __fastcall TTMSFNCCloudWhatsAppContactAddresses(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCloudWhatsAppContactAddress*> > AComparer, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudWhatsAppContactAddress*>(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudWhatsApp_TTMSFNCCloudWhatsAppContactAddress>.Create */ inline __fastcall TTMSFNCCloudWhatsAppContactAddresses(System::Generics::Collections::TEnumerable__1<TTMSFNCCloudWhatsAppContactAddress*>* const Collection, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudWhatsAppContactAddress*>(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudWhatsApp_TTMSFNCCloudWhatsAppContactAddress>.Destroy */ inline __fastcall virtual ~TTMSFNCCloudWhatsAppContactAddresses() { }
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudWhatsApp_TTMSFNCCloudWhatsAppContactAddress>.Create */ inline __fastcall TTMSFNCCloudWhatsAppContactAddresses(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCloudWhatsAppContactAddress*> > AComparer)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudWhatsAppContactAddress*>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudWhatsApp_TTMSFNCCloudWhatsAppContactAddress>.Create */ inline __fastcall TTMSFNCCloudWhatsAppContactAddresses(System::Generics::Collections::TEnumerable__1<TTMSFNCCloudWhatsAppContactAddress*>* const Collection)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudWhatsAppContactAddress*>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudWhatsApp_TTMSFNCCloudWhatsAppContactAddress>.Create */ inline __fastcall TTMSFNCCloudWhatsAppContactAddresses(TTMSFNCCloudWhatsAppContactAddress* const *Values, const int Values_High)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudWhatsAppContactAddress*>(Values, Values_High) { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudWhatsAppContactEmails : public System::Generics::Collections::TObjectList__1<TTMSFNCCloudWhatsAppContactEmail*>
{
	typedef System::Generics::Collections::TObjectList__1<TTMSFNCCloudWhatsAppContactEmail*> inherited;
	
public:
	System::UnicodeString __fastcall ToJSON();
public:
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudWhatsApp_TTMSFNCCloudWhatsAppContactEmail>.Create */ inline __fastcall TTMSFNCCloudWhatsAppContactEmails()/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudWhatsAppContactEmail*>() { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudWhatsApp_TTMSFNCCloudWhatsAppContactEmail>.Create */ inline __fastcall TTMSFNCCloudWhatsAppContactEmails(bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudWhatsAppContactEmail*>(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudWhatsApp_TTMSFNCCloudWhatsAppContactEmail>.Create */ inline __fastcall TTMSFNCCloudWhatsAppContactEmails(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCloudWhatsAppContactEmail*> > AComparer, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudWhatsAppContactEmail*>(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudWhatsApp_TTMSFNCCloudWhatsAppContactEmail>.Create */ inline __fastcall TTMSFNCCloudWhatsAppContactEmails(System::Generics::Collections::TEnumerable__1<TTMSFNCCloudWhatsAppContactEmail*>* const Collection, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudWhatsAppContactEmail*>(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudWhatsApp_TTMSFNCCloudWhatsAppContactEmail>.Destroy */ inline __fastcall virtual ~TTMSFNCCloudWhatsAppContactEmails() { }
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudWhatsApp_TTMSFNCCloudWhatsAppContactEmail>.Create */ inline __fastcall TTMSFNCCloudWhatsAppContactEmails(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCloudWhatsAppContactEmail*> > AComparer)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudWhatsAppContactEmail*>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudWhatsApp_TTMSFNCCloudWhatsAppContactEmail>.Create */ inline __fastcall TTMSFNCCloudWhatsAppContactEmails(System::Generics::Collections::TEnumerable__1<TTMSFNCCloudWhatsAppContactEmail*>* const Collection)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudWhatsAppContactEmail*>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudWhatsApp_TTMSFNCCloudWhatsAppContactEmail>.Create */ inline __fastcall TTMSFNCCloudWhatsAppContactEmails(TTMSFNCCloudWhatsAppContactEmail* const *Values, const int Values_High)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudWhatsAppContactEmail*>(Values, Values_High) { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudWhatsAppContactPhones : public System::Generics::Collections::TObjectList__1<TTMSFNCCloudWhatsAppContactPhone*>
{
	typedef System::Generics::Collections::TObjectList__1<TTMSFNCCloudWhatsAppContactPhone*> inherited;
	
public:
	System::UnicodeString __fastcall ToJSON();
public:
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudWhatsApp_TTMSFNCCloudWhatsAppContactPhone>.Create */ inline __fastcall TTMSFNCCloudWhatsAppContactPhones()/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudWhatsAppContactPhone*>() { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudWhatsApp_TTMSFNCCloudWhatsAppContactPhone>.Create */ inline __fastcall TTMSFNCCloudWhatsAppContactPhones(bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudWhatsAppContactPhone*>(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudWhatsApp_TTMSFNCCloudWhatsAppContactPhone>.Create */ inline __fastcall TTMSFNCCloudWhatsAppContactPhones(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCloudWhatsAppContactPhone*> > AComparer, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudWhatsAppContactPhone*>(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudWhatsApp_TTMSFNCCloudWhatsAppContactPhone>.Create */ inline __fastcall TTMSFNCCloudWhatsAppContactPhones(System::Generics::Collections::TEnumerable__1<TTMSFNCCloudWhatsAppContactPhone*>* const Collection, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudWhatsAppContactPhone*>(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudWhatsApp_TTMSFNCCloudWhatsAppContactPhone>.Destroy */ inline __fastcall virtual ~TTMSFNCCloudWhatsAppContactPhones() { }
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudWhatsApp_TTMSFNCCloudWhatsAppContactPhone>.Create */ inline __fastcall TTMSFNCCloudWhatsAppContactPhones(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCloudWhatsAppContactPhone*> > AComparer)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudWhatsAppContactPhone*>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudWhatsApp_TTMSFNCCloudWhatsAppContactPhone>.Create */ inline __fastcall TTMSFNCCloudWhatsAppContactPhones(System::Generics::Collections::TEnumerable__1<TTMSFNCCloudWhatsAppContactPhone*>* const Collection)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudWhatsAppContactPhone*>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudWhatsApp_TTMSFNCCloudWhatsAppContactPhone>.Create */ inline __fastcall TTMSFNCCloudWhatsAppContactPhones(TTMSFNCCloudWhatsAppContactPhone* const *Values, const int Values_High)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudWhatsAppContactPhone*>(Values, Values_High) { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudWhatsAppContactURLs : public System::Generics::Collections::TObjectList__1<TTMSFNCCloudWhatsAppContactURL*>
{
	typedef System::Generics::Collections::TObjectList__1<TTMSFNCCloudWhatsAppContactURL*> inherited;
	
public:
	System::UnicodeString __fastcall ToJSON();
public:
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudWhatsApp_TTMSFNCCloudWhatsAppContactURL>.Create */ inline __fastcall TTMSFNCCloudWhatsAppContactURLs()/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudWhatsAppContactURL*>() { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudWhatsApp_TTMSFNCCloudWhatsAppContactURL>.Create */ inline __fastcall TTMSFNCCloudWhatsAppContactURLs(bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudWhatsAppContactURL*>(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudWhatsApp_TTMSFNCCloudWhatsAppContactURL>.Create */ inline __fastcall TTMSFNCCloudWhatsAppContactURLs(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCloudWhatsAppContactURL*> > AComparer, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudWhatsAppContactURL*>(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudWhatsApp_TTMSFNCCloudWhatsAppContactURL>.Create */ inline __fastcall TTMSFNCCloudWhatsAppContactURLs(System::Generics::Collections::TEnumerable__1<TTMSFNCCloudWhatsAppContactURL*>* const Collection, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudWhatsAppContactURL*>(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudWhatsApp_TTMSFNCCloudWhatsAppContactURL>.Destroy */ inline __fastcall virtual ~TTMSFNCCloudWhatsAppContactURLs() { }
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudWhatsApp_TTMSFNCCloudWhatsAppContactURL>.Create */ inline __fastcall TTMSFNCCloudWhatsAppContactURLs(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCloudWhatsAppContactURL*> > AComparer)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudWhatsAppContactURL*>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudWhatsApp_TTMSFNCCloudWhatsAppContactURL>.Create */ inline __fastcall TTMSFNCCloudWhatsAppContactURLs(System::Generics::Collections::TEnumerable__1<TTMSFNCCloudWhatsAppContactURL*>* const Collection)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudWhatsAppContactURL*>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudWhatsApp_TTMSFNCCloudWhatsAppContactURL>.Create */ inline __fastcall TTMSFNCCloudWhatsAppContactURLs(TTMSFNCCloudWhatsAppContactURL* const *Values, const int Values_High)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudWhatsAppContactURL*>(Values, Values_High) { }
	
};

#pragma pack(pop)

class PASCALIMPLEMENTATION TTMSFNCCloudWhatsAppContact : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	TTMSFNCCloudWhatsAppContactPhones* FPhones;
	System::TDateTime FBirthday;
	TTMSFNCCloudWhatsAppContactURLs* FURLs;
	TTMSFNCCloudWhatsAppContactOrganization* FOrganization;
	TTMSFNCCloudWhatsAppContactName* FContactName;
	TTMSFNCCloudWhatsAppContactEmails* FEmails;
	TTMSFNCCloudWhatsAppContactAddresses* FAddresses;
	void __fastcall SetAddresses(TTMSFNCCloudWhatsAppContactAddresses* const Value);
	void __fastcall SetBirthday(const System::TDateTime Value);
	void __fastcall SetContactName(TTMSFNCCloudWhatsAppContactName* const Value);
	void __fastcall SetEmails(TTMSFNCCloudWhatsAppContactEmails* const Value);
	void __fastcall SetOrganization(TTMSFNCCloudWhatsAppContactOrganization* const Value);
	void __fastcall SetPhones(TTMSFNCCloudWhatsAppContactPhones* const Value);
	void __fastcall SetURLs(TTMSFNCCloudWhatsAppContactURLs* const Value);
	
public:
	__fastcall TTMSFNCCloudWhatsAppContact();
	__fastcall virtual ~TTMSFNCCloudWhatsAppContact();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	System::UnicodeString __fastcall ToJSON();
	TTMSFNCCloudWhatsAppContactAddress* __fastcall AddAddress(System::UnicodeString AStreet = System::UnicodeString(), System::UnicodeString ACity = System::UnicodeString(), System::UnicodeString AState = System::UnicodeString(), System::UnicodeString AZIP = System::UnicodeString(), System::UnicodeString ACountry = System::UnicodeString(), System::UnicodeString ACountryCode = System::UnicodeString(), TTMSFNCCloudWhatsAppContactType AType = (TTMSFNCCloudWhatsAppContactType)(0x0));
	TTMSFNCCloudWhatsAppContactPhone* __fastcall AddPhone(System::UnicodeString ANumber = System::UnicodeString(), TTMSFNCCloudWhatsAppContactPhoneType AType = (TTMSFNCCloudWhatsAppContactPhoneType)(0x0), System::UnicodeString AWhatsAppID = System::UnicodeString());
	TTMSFNCCloudWhatsAppContactEmail* __fastcall AddEmail(System::UnicodeString AEmail = System::UnicodeString(), TTMSFNCCloudWhatsAppContactType AType = (TTMSFNCCloudWhatsAppContactType)(0x0));
	TTMSFNCCloudWhatsAppContactURL* __fastcall AddURL(System::UnicodeString AURL = System::UnicodeString(), TTMSFNCCloudWhatsAppContactType AType = (TTMSFNCCloudWhatsAppContactType)(0x0));
	
__published:
	__property TTMSFNCCloudWhatsAppContactAddresses* Addresses = {read=FAddresses, write=SetAddresses};
	__property System::TDateTime Birthday = {read=FBirthday, write=SetBirthday};
	__property TTMSFNCCloudWhatsAppContactEmails* Emails = {read=FEmails, write=SetEmails};
	__property TTMSFNCCloudWhatsAppContactName* ContactName = {read=FContactName, write=SetContactName};
	__property TTMSFNCCloudWhatsAppContactOrganization* Organization = {read=FOrganization, write=SetOrganization};
	__property TTMSFNCCloudWhatsAppContactPhones* Phones = {read=FPhones, write=SetPhones};
	__property TTMSFNCCloudWhatsAppContactURLs* URLs = {read=FURLs, write=SetURLs};
};


#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudWhatsAppContacts : public System::Generics::Collections::TObjectList__1<TTMSFNCCloudWhatsAppContact*>
{
	typedef System::Generics::Collections::TObjectList__1<TTMSFNCCloudWhatsAppContact*> inherited;
	
public:
	System::UnicodeString __fastcall ToJSON();
public:
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudWhatsApp_TTMSFNCCloudWhatsAppContact>.Create */ inline __fastcall TTMSFNCCloudWhatsAppContacts()/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudWhatsAppContact*>() { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudWhatsApp_TTMSFNCCloudWhatsAppContact>.Create */ inline __fastcall TTMSFNCCloudWhatsAppContacts(bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudWhatsAppContact*>(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudWhatsApp_TTMSFNCCloudWhatsAppContact>.Create */ inline __fastcall TTMSFNCCloudWhatsAppContacts(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCloudWhatsAppContact*> > AComparer, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudWhatsAppContact*>(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudWhatsApp_TTMSFNCCloudWhatsAppContact>.Create */ inline __fastcall TTMSFNCCloudWhatsAppContacts(System::Generics::Collections::TEnumerable__1<TTMSFNCCloudWhatsAppContact*>* const Collection, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudWhatsAppContact*>(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudWhatsApp_TTMSFNCCloudWhatsAppContact>.Destroy */ inline __fastcall virtual ~TTMSFNCCloudWhatsAppContacts() { }
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudWhatsApp_TTMSFNCCloudWhatsAppContact>.Create */ inline __fastcall TTMSFNCCloudWhatsAppContacts(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCloudWhatsAppContact*> > AComparer)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudWhatsAppContact*>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudWhatsApp_TTMSFNCCloudWhatsAppContact>.Create */ inline __fastcall TTMSFNCCloudWhatsAppContacts(System::Generics::Collections::TEnumerable__1<TTMSFNCCloudWhatsAppContact*>* const Collection)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudWhatsAppContact*>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudWhatsApp_TTMSFNCCloudWhatsAppContact>.Create */ inline __fastcall TTMSFNCCloudWhatsAppContacts(TTMSFNCCloudWhatsAppContact* const *Values, const int Values_High)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudWhatsAppContact*>(Values, Values_High) { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudWhatsAppText : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	System::UnicodeString FBody;
	bool FPreviewURL;
	void __fastcall SetBody(const System::UnicodeString Value);
	void __fastcall SetPreviewURL(const bool Value);
	
public:
	System::UnicodeString __fastcall ToJSON();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property System::UnicodeString Body = {read=FBody, write=SetBody};
	__property bool PreviewURL = {read=FPreviewURL, write=SetPreviewURL, nodefault};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTMSFNCCloudWhatsAppText() { }
	
public:
	/* TObject.Create */ inline __fastcall TTMSFNCCloudWhatsAppText() : System::Classes::TPersistent() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudWhatsAppMedia : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	TTMSFNCCloudWhatsAppMessageType FFileType;
	System::UnicodeString FFilename;
	System::UnicodeString FLink;
	System::UnicodeString FID;
	System::UnicodeString FCaption;
	void __fastcall SetCaption(const System::UnicodeString Value);
	void __fastcall SetFilename(const System::UnicodeString Value);
	void __fastcall SetID(const System::UnicodeString Value);
	void __fastcall SetLink(const System::UnicodeString Value);
	void __fastcall SetFileType(const TTMSFNCCloudWhatsAppMessageType Value);
	
public:
	System::UnicodeString __fastcall ToJSON();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property TTMSFNCCloudWhatsAppMessageType FileType = {read=FFileType, write=SetFileType, nodefault};
	__property System::UnicodeString ID = {read=FID, write=SetID};
	__property System::UnicodeString Link = {read=FLink, write=SetLink};
	__property System::UnicodeString Caption = {read=FCaption, write=SetCaption};
	__property System::UnicodeString Filename = {read=FFilename, write=SetFilename};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTMSFNCCloudWhatsAppMedia() { }
	
public:
	/* TObject.Create */ inline __fastcall TTMSFNCCloudWhatsAppMedia() : System::Classes::TPersistent() { }
	
};

#pragma pack(pop)

class PASCALIMPLEMENTATION TTMSFNCCloudWhatsAppLocation : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	System::UnicodeString FLocationName;
	double FLatitude;
	double FLongitude;
	System::UnicodeString FAddress;
	void __fastcall SetAddress(const System::UnicodeString Value);
	void __fastcall SetLatitude(const double Value);
	void __fastcall SetLocationName(const System::UnicodeString Value);
	void __fastcall SetLongitude(const double Value);
	
public:
	System::UnicodeString __fastcall ToJSON();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property double Longitude = {read=FLongitude, write=SetLongitude};
	__property double Latitude = {read=FLatitude, write=SetLatitude};
	__property System::UnicodeString LocationName = {read=FLocationName, write=SetLocationName};
	__property System::UnicodeString Address = {read=FAddress, write=SetAddress};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTMSFNCCloudWhatsAppLocation() { }
	
public:
	/* TObject.Create */ inline __fastcall TTMSFNCCloudWhatsAppLocation() : System::Classes::TPersistent() { }
	
};


#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudWhatsAppMessage : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	System::UnicodeString FSendTo;
	TTMSFNCCloudWhatsAppText* FText;
	TTMSFNCCloudWhatsAppMessageType FMessageType;
	TTMSFNCCloudWhatsAppMedia* FMedia;
	TTMSFNCCloudWhatsAppLocation* FLocation;
	TTMSFNCCloudWhatsAppContacts* FContacts;
	System::UnicodeString FID;
	System::UnicodeString FReplyToID;
	void __fastcall SetMessageType(const TTMSFNCCloudWhatsAppMessageType Value);
	void __fastcall SetSendTo(const System::UnicodeString Value);
	void __fastcall SetText(TTMSFNCCloudWhatsAppText* const Value);
	void __fastcall SetMedia(TTMSFNCCloudWhatsAppMedia* const Value);
	void __fastcall SetLocation(TTMSFNCCloudWhatsAppLocation* const Value);
	void __fastcall SetContacts(TTMSFNCCloudWhatsAppContacts* const Value);
	void __fastcall SetReplyToID(const System::UnicodeString Value);
	
public:
	__fastcall TTMSFNCCloudWhatsAppMessage();
	__fastcall virtual ~TTMSFNCCloudWhatsAppMessage();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	System::UnicodeString __fastcall ToJSON();
	
__published:
	__property System::UnicodeString ReplyToID = {read=FReplyToID, write=SetReplyToID};
	__property System::UnicodeString ID = {read=FID};
	__property TTMSFNCCloudWhatsAppContacts* Contacts = {read=FContacts, write=SetContacts};
	__property TTMSFNCCloudWhatsAppLocation* Location = {read=FLocation, write=SetLocation};
	__property TTMSFNCCloudWhatsAppMedia* Media = {read=FMedia, write=SetMedia};
	__property TTMSFNCCloudWhatsAppText* Text = {read=FText, write=SetText};
	__property System::UnicodeString SendTo = {read=FSendTo, write=SetSendTo};
	__property TTMSFNCCloudWhatsAppMessageType MessageType = {read=FMessageType, write=SetMessageType, nodefault};
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudWhatsAppFiles : public System::Generics::Collections::TObjectList__1<TTMSFNCCloudWhatsAppMedia*>
{
	typedef System::Generics::Collections::TObjectList__1<TTMSFNCCloudWhatsAppMedia*> inherited;
	
public:
	int __fastcall GetFileIndex(System::UnicodeString AFileName);
	TTMSFNCCloudWhatsAppMedia* __fastcall GetFileByID(System::UnicodeString AFileID);
public:
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudWhatsApp_TTMSFNCCloudWhatsAppMedia>.Create */ inline __fastcall TTMSFNCCloudWhatsAppFiles()/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudWhatsAppMedia*>() { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudWhatsApp_TTMSFNCCloudWhatsAppMedia>.Create */ inline __fastcall TTMSFNCCloudWhatsAppFiles(bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudWhatsAppMedia*>(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudWhatsApp_TTMSFNCCloudWhatsAppMedia>.Create */ inline __fastcall TTMSFNCCloudWhatsAppFiles(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCloudWhatsAppMedia*> > AComparer, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudWhatsAppMedia*>(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudWhatsApp_TTMSFNCCloudWhatsAppMedia>.Create */ inline __fastcall TTMSFNCCloudWhatsAppFiles(System::Generics::Collections::TEnumerable__1<TTMSFNCCloudWhatsAppMedia*>* const Collection, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudWhatsAppMedia*>(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudWhatsApp_TTMSFNCCloudWhatsAppMedia>.Destroy */ inline __fastcall virtual ~TTMSFNCCloudWhatsAppFiles() { }
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudWhatsApp_TTMSFNCCloudWhatsAppMedia>.Create */ inline __fastcall TTMSFNCCloudWhatsAppFiles(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCloudWhatsAppMedia*> > AComparer)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudWhatsAppMedia*>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudWhatsApp_TTMSFNCCloudWhatsAppMedia>.Create */ inline __fastcall TTMSFNCCloudWhatsAppFiles(System::Generics::Collections::TEnumerable__1<TTMSFNCCloudWhatsAppMedia*>* const Collection)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudWhatsAppMedia*>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudWhatsApp_TTMSFNCCloudWhatsAppMedia>.Create */ inline __fastcall TTMSFNCCloudWhatsAppFiles(TTMSFNCCloudWhatsAppMedia* const *Values, const int Values_High)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudWhatsAppMedia*>(Values, Values_High) { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudWhatsAppMessages : public System::Generics::Collections::TObjectList__1<TTMSFNCCloudWhatsAppMessage*>
{
	typedef System::Generics::Collections::TObjectList__1<TTMSFNCCloudWhatsAppMessage*> inherited;
	
public:
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudWhatsApp_TTMSFNCCloudWhatsAppMessage>.Create */ inline __fastcall TTMSFNCCloudWhatsAppMessages()/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudWhatsAppMessage*>() { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudWhatsApp_TTMSFNCCloudWhatsAppMessage>.Create */ inline __fastcall TTMSFNCCloudWhatsAppMessages(bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudWhatsAppMessage*>(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudWhatsApp_TTMSFNCCloudWhatsAppMessage>.Create */ inline __fastcall TTMSFNCCloudWhatsAppMessages(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCloudWhatsAppMessage*> > AComparer, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudWhatsAppMessage*>(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudWhatsApp_TTMSFNCCloudWhatsAppMessage>.Create */ inline __fastcall TTMSFNCCloudWhatsAppMessages(System::Generics::Collections::TEnumerable__1<TTMSFNCCloudWhatsAppMessage*>* const Collection, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudWhatsAppMessage*>(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudWhatsApp_TTMSFNCCloudWhatsAppMessage>.Destroy */ inline __fastcall virtual ~TTMSFNCCloudWhatsAppMessages() { }
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudWhatsApp_TTMSFNCCloudWhatsAppMessage>.Create */ inline __fastcall TTMSFNCCloudWhatsAppMessages(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCloudWhatsAppMessage*> > AComparer)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudWhatsAppMessage*>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudWhatsApp_TTMSFNCCloudWhatsAppMessage>.Create */ inline __fastcall TTMSFNCCloudWhatsAppMessages(System::Generics::Collections::TEnumerable__1<TTMSFNCCloudWhatsAppMessage*>* const Collection)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudWhatsAppMessage*>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudWhatsApp_TTMSFNCCloudWhatsAppMessage>.Create */ inline __fastcall TTMSFNCCloudWhatsAppMessages(TTMSFNCCloudWhatsAppMessage* const *Values, const int Values_High)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudWhatsAppMessage*>(Values, Values_High) { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudCustomWhatsApp : public Fmx::Tmsfnccloudoauth::TTMSFNCSimpleCloudOAuth
{
	typedef Fmx::Tmsfnccloudoauth::TTMSFNCSimpleCloudOAuth inherited;
	
private:
	TTMSFNCCloudWhatsAppErrorEvent FOnError;
	System::UnicodeString FPhoneNumberID;
	TTMSFNCCloudWhatsAppFiles* FFiles;
	TTMSFNCCloudWhatsAppSendSuccessEvent FOnSendSuccess;
	TTMSFNCCloudWhatsAppUploadSuccessEvent FOnUploadSuccess;
	TTMSFNCCloudWhatsAppMessages* FMessages;
	TTMSFNCCloudWhatsAppDownloadEvent FOnDownloadFileSuccess;
	TTMSFNCCloudWhatsAppURLEvent FOnGetDownloadURL;
	void __fastcall SetPhoneNumberID(const System::UnicodeString Value);
	
protected:
	__property TTMSFNCCloudWhatsAppFiles* Files = {read=FFiles};
	__property System::UnicodeString PhoneNumberID = {read=FPhoneNumberID, write=SetPhoneNumberID};
	__property TTMSFNCCloudWhatsAppErrorEvent OnError = {read=FOnError, write=FOnError};
	__property TTMSFNCCloudWhatsAppSendSuccessEvent OnSendSuccess = {read=FOnSendSuccess, write=FOnSendSuccess};
	__property TTMSFNCCloudWhatsAppUploadSuccessEvent OnUploadSuccess = {read=FOnUploadSuccess, write=FOnUploadSuccess};
	__property TTMSFNCCloudWhatsAppDownloadEvent OnDownloadFileSuccess = {read=FOnDownloadFileSuccess, write=FOnDownloadFileSuccess};
	__property TTMSFNCCloudWhatsAppURLEvent OnGetDownloadURL = {read=FOnGetDownloadURL, write=FOnGetDownloadURL};
	int __fastcall HandleUploadFile(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	System::UnicodeString __fastcall HandleGetMediaURL(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoSendMessage(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoUploadFile(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoGetMediaURL(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoDownloadFile(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall SendMessage(TTMSFNCCloudWhatsAppMessage* AMessage);
	virtual System::UnicodeString __fastcall GetVersion();
	virtual NativeUInt __fastcall GetInstance();
	int __fastcall UploadMedia(System::UnicodeString AMedia, TTMSFNCCloudWhatsAppMessageType AFileType, bool AAsync = true)/* overload */;
	int __fastcall UploadMedia(System::Classes::TStream* AMediaStream, System::UnicodeString AFileName, TTMSFNCCloudWhatsAppMessageType AFileType, bool AAsync = true)/* overload */;
	System::UnicodeString __fastcall ExtractFileNameEx(System::UnicodeString AFile);
	void __fastcall DoError(System::UnicodeString AErrorMessage);
	
public:
	__property TTMSFNCCloudWhatsAppMessages* Messages = {read=FMessages};
	__fastcall virtual TTMSFNCCloudCustomWhatsApp(System::Classes::TComponent* AOwner)/* overload */;
	__fastcall virtual ~TTMSFNCCloudCustomWhatsApp();
	TTMSFNCCloudWhatsAppContact* __fastcall CreateContact(System::UnicodeString AFirstName, System::UnicodeString ALastName, System::UnicodeString ANumber = System::UnicodeString(), System::UnicodeString AEmail = System::UnicodeString())/* overload */;
	System::UnicodeString __fastcall GetMediaURL(System::UnicodeString AMediaID, bool AAsync = true)/* overload */;
	System::UnicodeString __fastcall GetMediaURL(TTMSFNCCloudWhatsAppMedia* AMedia, bool AAsync = true)/* overload */;
	void __fastcall DownloadFileByURL(System::UnicodeString AMediaURL, System::UnicodeString AFileName);
	void __fastcall DownloadFile(TTMSFNCCloudWhatsAppMedia* AMedia)/* overload */;
	void __fastcall DownloadFile(System::UnicodeString AMediaID, System::UnicodeString AFileName)/* overload */;
	int __fastcall UploadAudio(System::UnicodeString AMedia, bool AAsync = true)/* overload */;
	int __fastcall UploadAudio(System::Classes::TStream* AMediaStream, System::UnicodeString AFileName, bool AAsync = true)/* overload */;
	int __fastcall UploadDocument(System::UnicodeString AMedia, bool AAsync = true)/* overload */;
	int __fastcall UploadDocument(System::Classes::TStream* AMediaStream, System::UnicodeString AFileName, bool AAsync = true)/* overload */;
	int __fastcall UploadSticker(System::UnicodeString AMedia, bool AAsync = true)/* overload */;
	int __fastcall UploadSticker(System::Classes::TStream* AMediaStream, System::UnicodeString AFileName, bool AAsync = true)/* overload */;
	int __fastcall UploadImage(System::UnicodeString AMedia, bool AAsync = true)/* overload */;
	int __fastcall UploadImage(System::Classes::TStream* AMediaStream, System::UnicodeString AFileName, bool AAsync = true)/* overload */;
	int __fastcall UploadVideo(System::UnicodeString AMedia, bool AAsync = true)/* overload */;
	int __fastcall UploadVideo(System::Classes::TStream* AMediaStream, System::UnicodeString AFileName, bool AAsync = true)/* overload */;
	void __fastcall SendContacts(System::UnicodeString ANumber, TTMSFNCCloudWhatsAppContact* AContact, System::UnicodeString AReplyToID = System::UnicodeString())/* overload */;
	void __fastcall SendContacts(System::UnicodeString ANumber, TTMSFNCCloudWhatsAppContact* *AContacts, const int AContacts_High, System::UnicodeString AReplyToID = System::UnicodeString())/* overload */;
	void __fastcall SendLocation(System::UnicodeString ANumber, double ALatitude, double ALongitude, System::UnicodeString AName = System::UnicodeString(), System::UnicodeString AAddress = System::UnicodeString(), System::UnicodeString AReplyToID = System::UnicodeString());
	void __fastcall SendMedia(System::UnicodeString ANumber, System::UnicodeString AMediaID, System::UnicodeString AReplyToID = System::UnicodeString())/* overload */;
	void __fastcall SendMedia(System::UnicodeString ANumber, int AMediaIndex, System::UnicodeString AReplyToID = System::UnicodeString())/* overload */;
	void __fastcall SendTextMessage(System::UnicodeString ANumber, System::UnicodeString AMessage, bool APreviewText = false, System::UnicodeString AReplyToID = System::UnicodeString());
	void __fastcall SendImage(System::UnicodeString ANumber, System::UnicodeString AFile, System::UnicodeString AReplyToID = System::UnicodeString())/* overload */;
	void __fastcall SendImage(System::UnicodeString ANumber, System::Classes::TStream* AMediaStream, System::UnicodeString AFileName, System::UnicodeString AReplyToID = System::UnicodeString())/* overload */;
	void __fastcall SendAudio(System::UnicodeString ANumber, System::UnicodeString AFile, System::UnicodeString AReplyToID = System::UnicodeString())/* overload */;
	void __fastcall SendAudio(System::UnicodeString ANumber, System::Classes::TStream* AMediaStream, System::UnicodeString AFileName, System::UnicodeString AReplyToID = System::UnicodeString())/* overload */;
	void __fastcall SendDocument(System::UnicodeString ANumber, System::UnicodeString AFile, System::UnicodeString AReplyToID = System::UnicodeString())/* overload */;
	void __fastcall SendDocument(System::UnicodeString ANumber, System::Classes::TStream* AMediaStream, System::UnicodeString AFileName, System::UnicodeString AReplyToID = System::UnicodeString())/* overload */;
	void __fastcall SendSticker(System::UnicodeString ANumber, System::UnicodeString AFile, System::UnicodeString AReplyToID = System::UnicodeString())/* overload */;
	void __fastcall SendSticker(System::UnicodeString ANumber, System::Classes::TStream* AMediaStream, System::UnicodeString AFileName, System::UnicodeString AReplyToID = System::UnicodeString())/* overload */;
	void __fastcall SendVideo(System::UnicodeString ANumber, System::UnicodeString AFile, System::UnicodeString AReplyToID = System::UnicodeString())/* overload */;
	void __fastcall SendVideo(System::UnicodeString ANumber, System::Classes::TStream* AMediaStream, System::UnicodeString AFileName, System::UnicodeString AReplyToID = System::UnicodeString())/* overload */;
public:
	/* TTMSFNCCustomCloudOAuth.Create */ inline __fastcall virtual TTMSFNCCloudCustomWhatsApp()/* overload */ : Fmx::Tmsfnccloudoauth::TTMSFNCSimpleCloudOAuth() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudWhatsApp : public TTMSFNCCloudCustomWhatsApp
{
	typedef TTMSFNCCloudCustomWhatsApp inherited;
	
__published:
	__property Files;
	__property OnError;
	__property OnSendSuccess;
	__property OnUploadSuccess;
	__property PhoneNumberID = {default=0};
	__property OnDownloadFileSuccess;
public:
	/* TTMSFNCCloudCustomWhatsApp.Create */ inline __fastcall virtual TTMSFNCCloudWhatsApp(System::Classes::TComponent* AOwner)/* overload */ : TTMSFNCCloudCustomWhatsApp(AOwner) { }
	/* TTMSFNCCloudCustomWhatsApp.Destroy */ inline __fastcall virtual ~TTMSFNCCloudWhatsApp() { }
	
public:
	/* TTMSFNCCustomCloudOAuth.Create */ inline __fastcall virtual TTMSFNCCloudWhatsApp()/* overload */ : TTMSFNCCloudCustomWhatsApp() { }
	
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x0);
static constexpr System::Int8 BLD_VER = System::Int8(0x0);
#define APIVERSION u"v14.0"
}	/* namespace Tmsfnccloudwhatsapp */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCCLOUDWHATSAPP)
using namespace Fmx::Tmsfnccloudwhatsapp;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfnccloudwhatsappHPP
