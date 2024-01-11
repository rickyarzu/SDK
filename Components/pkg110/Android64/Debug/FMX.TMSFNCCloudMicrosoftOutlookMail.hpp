// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCCloudMicrosoftOutlookMail.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfnccloudmicrosoftoutlookmailHPP
#define Fmx_TmsfnccloudmicrosoftoutlookmailHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <FMX.TMSFNCCloudMicrosoft.hpp>
#include <FMX.TMSFNCCloudBase.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.TMSFNCUtils.hpp>
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
namespace Tmsfnccloudmicrosoftoutlookmail
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCCloudMicrosoftOutlookMailFolder;
class DELPHICLASS TTMSFNCCloudMicrosoftOutlookMailFolders;
class DELPHICLASS TTMSFNCCloudMicrosoftOutlookMailFile;
class DELPHICLASS TTMSFNCCloudMicrosoftOutlookMailFiles;
class DELPHICLASS TTMSFNCCloudMicrosoftOutlookMailAttachment;
class DELPHICLASS TTMSFNCCloudMicrosoftOutlookMailAttachments;
class DELPHICLASS TTMSFNCCloudMicrosoftOutlookMailItem;
class DELPHICLASS TTMSFNCCloudMicrosoftOutlookMailItems;
class DELPHICLASS TTMSFNCCustomCloudMicrosoftOutlookMail;
class DELPHICLASS TTMSFNCCloudMicrosoftOutlookMail;
//-- type declarations -------------------------------------------------------
enum DECLSPEC_DENUM TTMSFNCCloudMicrosoftOutlookMailType : unsigned char { mtPlainText, mtHTML };

class PASCALIMPLEMENTATION TTMSFNCCloudMicrosoftOutlookMailFolder : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	TTMSFNCCloudMicrosoftOutlookMailFolders* FOwner;
	System::UnicodeString FID;
	System::UnicodeString FDisplayName;
	int FItemCount;
	
public:
	__fastcall virtual TTMSFNCCloudMicrosoftOutlookMailFolder(System::Classes::TCollection* Collection);
	__fastcall virtual ~TTMSFNCCloudMicrosoftOutlookMailFolder();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	void __fastcall FromJSON(System::Json::TJSONValue* jo);
	
__published:
	__property System::UnicodeString ID = {read=FID};
	__property System::UnicodeString DisplayName = {read=FDisplayName};
	__property int ItemCount = {read=FItemCount, nodefault};
};


class PASCALIMPLEMENTATION TTMSFNCCloudMicrosoftOutlookMailFolders : public System::Classes::TCollection
{
	typedef System::Classes::TCollection inherited;
	
public:
	TTMSFNCCloudMicrosoftOutlookMailFolder* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCCustomCloudMicrosoftOutlookMail* FOwner;
	TTMSFNCCloudMicrosoftOutlookMailFolder* __fastcall GetItems(int Index);
	void __fastcall SetItems(int Index, TTMSFNCCloudMicrosoftOutlookMailFolder* const Value);
	
protected:
	virtual void __fastcall Update(System::Classes::TCollectionItem* Item);
	
public:
	__fastcall TTMSFNCCloudMicrosoftOutlookMailFolders(TTMSFNCCustomCloudMicrosoftOutlookMail* AOwner);
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	HIDESBASE TTMSFNCCloudMicrosoftOutlookMailFolder* __fastcall Add();
	HIDESBASE TTMSFNCCloudMicrosoftOutlookMailFolder* __fastcall Insert(int Index);
	__property TTMSFNCCloudMicrosoftOutlookMailFolder* Items[int Index] = {read=GetItems, write=SetItems/*, default*/};
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCCloudMicrosoftOutlookMailFolders() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudMicrosoftOutlookMailFile : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	System::UnicodeString FFile;
	
public:
	__fastcall virtual TTMSFNCCloudMicrosoftOutlookMailFile(System::Classes::TCollection* Collection);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual ~TTMSFNCCloudMicrosoftOutlookMailFile();
	
__published:
	__property System::UnicodeString File = {read=FFile, write=FFile};
};


class PASCALIMPLEMENTATION TTMSFNCCloudMicrosoftOutlookMailFiles : public System::Classes::TCollection
{
	typedef System::Classes::TCollection inherited;
	
public:
	TTMSFNCCloudMicrosoftOutlookMailFile* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCCloudMicrosoftOutlookMailItem* FOwner;
	HIDESBASE TTMSFNCCloudMicrosoftOutlookMailFile* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCCloudMicrosoftOutlookMailFile* const Value);
	
public:
	__fastcall TTMSFNCCloudMicrosoftOutlookMailFiles(TTMSFNCCloudMicrosoftOutlookMailItem* AOwner);
	__fastcall virtual ~TTMSFNCCloudMicrosoftOutlookMailFiles();
	HIDESBASE TTMSFNCCloudMicrosoftOutlookMailFile* __fastcall Add();
	__property TTMSFNCCloudMicrosoftOutlookMailFile* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
};


class PASCALIMPLEMENTATION TTMSFNCCloudMicrosoftOutlookMailAttachment : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	System::UnicodeString FName;
	System::UnicodeString FID;
	int FSize;
	System::UnicodeString FContentBytes;
	TTMSFNCCloudMicrosoftOutlookMailItem* __fastcall GetMail();
	
public:
	__fastcall virtual TTMSFNCCloudMicrosoftOutlookMailAttachment(System::Classes::TCollection* Collection);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual ~TTMSFNCCloudMicrosoftOutlookMailAttachment();
	void __fastcall SaveToFile(System::UnicodeString AFile);
	void __fastcall SaveToStream(System::Classes::TStream* AStream);
	void __fastcall FromJSON(System::Json::TJSONValue* jo);
	__property TTMSFNCCloudMicrosoftOutlookMailItem* Mail = {read=GetMail};
	
__published:
	__property System::UnicodeString ContentBytes = {read=FContentBytes, write=FContentBytes};
	__property int Size = {read=FSize, write=FSize, nodefault};
	__property System::UnicodeString Name = {read=FName, write=FName};
	__property System::UnicodeString ID = {read=FID, write=FID};
};


class PASCALIMPLEMENTATION TTMSFNCCloudMicrosoftOutlookMailAttachments : public System::Classes::TCollection
{
	typedef System::Classes::TCollection inherited;
	
public:
	TTMSFNCCloudMicrosoftOutlookMailAttachment* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCCloudMicrosoftOutlookMailItem* FOwner;
	HIDESBASE TTMSFNCCloudMicrosoftOutlookMailAttachment* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCCloudMicrosoftOutlookMailAttachment* const Value);
	
public:
	__fastcall TTMSFNCCloudMicrosoftOutlookMailAttachments(TTMSFNCCloudMicrosoftOutlookMailItem* AOwner);
	__fastcall virtual ~TTMSFNCCloudMicrosoftOutlookMailAttachments();
	HIDESBASE TTMSFNCCloudMicrosoftOutlookMailAttachment* __fastcall Add();
	__property TTMSFNCCloudMicrosoftOutlookMailAttachment* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
};


class PASCALIMPLEMENTATION TTMSFNCCloudMicrosoftOutlookMailItem : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	TTMSFNCCloudMicrosoftOutlookMailItems* FOwner;
	System::UnicodeString FSenderEmail;
	System::UnicodeString FSubject;
	System::UnicodeString FID;
	System::UnicodeString FSenderName;
	System::UnicodeString FBody;
	System::TDateTime FReceivedDateTime;
	System::Classes::TStringList* FCcRecipientNames;
	System::Classes::TStringList* FBccRecipientNames;
	System::Classes::TStringList* FRecipientNames;
	System::Classes::TStringList* FCcRecipientEmails;
	System::Classes::TStringList* FBccRecipientEmails;
	System::Classes::TStringList* FRecipientEmails;
	TTMSFNCCloudMicrosoftOutlookMailFiles* FFiles;
	System::UnicodeString FFromName;
	System::UnicodeString FFromEmail;
	bool FHasAttachments;
	TTMSFNCCloudMicrosoftOutlookMailType FMailType;
	bool FIsDraft;
	bool FIsread;
	TTMSFNCCloudMicrosoftOutlookMailAttachments* FAttachments;
	
public:
	__fastcall TTMSFNCCloudMicrosoftOutlookMailItem()/* overload */;
	__fastcall virtual TTMSFNCCloudMicrosoftOutlookMailItem(System::Classes::TCollection* Collection)/* overload */;
	__fastcall virtual ~TTMSFNCCloudMicrosoftOutlookMailItem();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	void __fastcall FromJSON(System::Json::TJSONValue* jo);
	
__published:
	__property System::UnicodeString ID = {read=FID};
	__property System::UnicodeString Body = {read=FBody, write=FBody};
	__property TTMSFNCCloudMicrosoftOutlookMailType MailType = {read=FMailType, write=FMailType, default=0};
	__property System::TDateTime ReceivedDateTime = {read=FReceivedDateTime};
	__property System::UnicodeString Subject = {read=FSubject, write=FSubject};
	__property System::UnicodeString FromName = {read=FFromName};
	__property System::UnicodeString FromEmail = {read=FFromEmail};
	__property System::UnicodeString SenderName = {read=FSenderName};
	__property System::UnicodeString SenderEmail = {read=FSenderEmail};
	__property System::Classes::TStringList* RecipientNames = {read=FRecipientNames, write=FRecipientNames};
	__property System::Classes::TStringList* CcRecipientNames = {read=FCcRecipientNames, write=FCcRecipientNames};
	__property System::Classes::TStringList* BccRecipientNames = {read=FBccRecipientNames, write=FBccRecipientNames};
	__property System::Classes::TStringList* RecipientEmails = {read=FRecipientEmails, write=FRecipientEmails};
	__property System::Classes::TStringList* CcRecipientEmails = {read=FCcRecipientEmails, write=FCcRecipientEmails};
	__property System::Classes::TStringList* BccRecipientEmails = {read=FBccRecipientEmails, write=FBccRecipientEmails};
	__property TTMSFNCCloudMicrosoftOutlookMailFiles* Files = {read=FFiles, write=FFiles};
	__property TTMSFNCCloudMicrosoftOutlookMailAttachments* Attachments = {read=FAttachments, write=FAttachments};
	__property bool HasAttachments = {read=FHasAttachments, default=0};
	__property bool IsRead = {read=FIsread, default=0};
	__property bool IsDraft = {read=FIsDraft, default=0};
};


class PASCALIMPLEMENTATION TTMSFNCCloudMicrosoftOutlookMailItems : public System::Classes::TCollection
{
	typedef System::Classes::TCollection inherited;
	
public:
	TTMSFNCCloudMicrosoftOutlookMailItem* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCCustomCloudMicrosoftOutlookMail* FOwner;
	TTMSFNCCloudMicrosoftOutlookMailItem* __fastcall GetItems(int Index);
	void __fastcall SetItems(int Index, TTMSFNCCloudMicrosoftOutlookMailItem* const Value);
	
protected:
	virtual void __fastcall Update(System::Classes::TCollectionItem* Item);
	
public:
	__fastcall TTMSFNCCloudMicrosoftOutlookMailItems(TTMSFNCCustomCloudMicrosoftOutlookMail* AOwner);
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	HIDESBASE TTMSFNCCloudMicrosoftOutlookMailItem* __fastcall Add();
	HIDESBASE TTMSFNCCloudMicrosoftOutlookMailItem* __fastcall Insert(int Index);
	__property TTMSFNCCloudMicrosoftOutlookMailItem* Items[int Index] = {read=GetItems, write=SetItems/*, default*/};
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCCloudMicrosoftOutlookMailItems() { }
	
};


typedef void __fastcall (__closure *TTMSFNCCloudMicrosoftOutlookMailOnGetAttachmentsEvent)(System::TObject* Sender, TTMSFNCCloudMicrosoftOutlookMailItem* const AMail, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudMicrosoftOutlookMailGetFoldersEvent)(System::TObject* Sender, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudMicrosoftOutlookMailGetMailsEvent)(System::TObject* Sender, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudMicrosoftOutlookMailSendMessageEvent)(System::TObject* Sender, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

class PASCALIMPLEMENTATION TTMSFNCCustomCloudMicrosoftOutlookMail : public Fmx::Tmsfnccloudmicrosoft::TTMSFNCCustomCloudMicrosoft
{
	typedef Fmx::Tmsfnccloudmicrosoft::TTMSFNCCustomCloudMicrosoft inherited;
	
private:
	TTMSFNCCloudMicrosoftOutlookMailItems* FMails;
	TTMSFNCCloudMicrosoftOutlookMailFolders* FFolders;
	TTMSFNCCloudMicrosoftOutlookMailSendMessageEvent FOnSendMessage;
	TTMSFNCCloudMicrosoftOutlookMailGetMailsEvent FOnGetMails;
	TTMSFNCCloudMicrosoftOutlookMailGetFoldersEvent FOnGetFolders;
	TTMSFNCCloudMicrosoftOutlookMailOnGetAttachmentsEvent FOnGetAttachments;
	
protected:
	virtual System::UnicodeString __fastcall GetVersion();
	System::UnicodeString __fastcall GetMailData(System::UnicodeString ASubject, System::UnicodeString ABody, System::Classes::TStringList* ARecipients, System::Classes::TStringList* ACcRecipients = (System::Classes::TStringList*)(0x0), System::Classes::TStringList* ABccRecipients = (System::Classes::TStringList*)(0x0), TTMSFNCCloudMicrosoftOutlookMailType AMailType = (TTMSFNCCloudMicrosoftOutlookMailType)(0x0), TTMSFNCCloudMicrosoftOutlookMailFiles* AAttachments = (TTMSFNCCloudMicrosoftOutlookMailFiles*)(0x0));
	void __fastcall DoSendMessage(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoGetFolders(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoGetAttachments(TTMSFNCCloudMicrosoftOutlookMailItem* const AMessage, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoGetMails(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestSendMessage(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestGetFolders(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestGetAttachments(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestGetMails(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	__property TTMSFNCCloudMicrosoftOutlookMailGetFoldersEvent OnGetFolders = {read=FOnGetFolders, write=FOnGetFolders};
	__property TTMSFNCCloudMicrosoftOutlookMailSendMessageEvent OnSendMessage = {read=FOnSendMessage, write=FOnSendMessage};
	__property TTMSFNCCloudMicrosoftOutlookMailGetMailsEvent OnGetMails = {read=FOnGetMails, write=FOnGetMails};
	__property TTMSFNCCloudMicrosoftOutlookMailOnGetAttachmentsEvent OnGetAttachments = {read=FOnGetAttachments, write=FOnGetAttachments};
	
public:
	__fastcall virtual TTMSFNCCustomCloudMicrosoftOutlookMail(System::Classes::TComponent* AOwner)/* overload */;
	__fastcall virtual ~TTMSFNCCustomCloudMicrosoftOutlookMail();
	void __fastcall SendMessage(System::UnicodeString ASubject, System::UnicodeString ABody, System::Classes::TStringList* ARecipients, System::Classes::TStringList* ACcRecipients = (System::Classes::TStringList*)(0x0), System::Classes::TStringList* ABccRecipients = (System::Classes::TStringList*)(0x0), TTMSFNCCloudMicrosoftOutlookMailType AMailType = (TTMSFNCCloudMicrosoftOutlookMailType)(0x0), TTMSFNCCloudMicrosoftOutlookMailFiles* AAttachments = (TTMSFNCCloudMicrosoftOutlookMailFiles*)(0x0))/* overload */;
	void __fastcall SendMessage(TTMSFNCCloudMicrosoftOutlookMailItem* AOutlookMailItem)/* overload */;
	void __fastcall GetFolders();
	void __fastcall GetAttachments(TTMSFNCCloudMicrosoftOutlookMailItem* AOutlookMailItem);
	void __fastcall GetMails(System::UnicodeString AFolderID = u"Inbox", int APageSize = 0x64, int APageIndex = 0x0);
	__property TTMSFNCCloudMicrosoftOutlookMailItems* Mails = {read=FMails, write=FMails};
	__property TTMSFNCCloudMicrosoftOutlookMailFolders* Folders = {read=FFolders, write=FFolders};
public:
	/* TTMSFNCCustomCloudOAuth.Create */ inline __fastcall virtual TTMSFNCCustomCloudMicrosoftOutlookMail()/* overload */ : Fmx::Tmsfnccloudmicrosoft::TTMSFNCCustomCloudMicrosoft() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudMicrosoftOutlookMail : public TTMSFNCCustomCloudMicrosoftOutlookMail
{
	typedef TTMSFNCCustomCloudMicrosoftOutlookMail inherited;
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	
__published:
	__property OnGetFolders;
	__property OnGetAttachments;
	__property OnGetMails;
	__property OnSendMessage;
	__property Mails;
	__property Folders;
public:
	/* TTMSFNCCustomCloudMicrosoftOutlookMail.Create */ inline __fastcall virtual TTMSFNCCloudMicrosoftOutlookMail(System::Classes::TComponent* AOwner)/* overload */ : TTMSFNCCustomCloudMicrosoftOutlookMail(AOwner) { }
	/* TTMSFNCCustomCloudMicrosoftOutlookMail.Destroy */ inline __fastcall virtual ~TTMSFNCCloudMicrosoftOutlookMail() { }
	
public:
	/* TTMSFNCCustomCloudOAuth.Create */ inline __fastcall virtual TTMSFNCCloudMicrosoftOutlookMail()/* overload */ : TTMSFNCCustomCloudMicrosoftOutlookMail() { }
	
};


//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x0);
static constexpr System::Int8 BLD_VER = System::Int8(0x0);
}	/* namespace Tmsfnccloudmicrosoftoutlookmail */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCCLOUDMICROSOFTOUTLOOKMAIL)
using namespace Fmx::Tmsfnccloudmicrosoftoutlookmail;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfnccloudmicrosoftoutlookmailHPP
