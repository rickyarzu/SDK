// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCCloudGoogleGmail.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfnccloudgooglegmailHPP
#define Fmx_TmsfnccloudgooglegmailHPP

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
#include <FMX.TMSFNCUtils.hpp>
#include <System.JSON.hpp>
#include <System.Generics.Collections.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>
#include <System.Types.hpp>
#include <FMX.TMSFNCCloudOAuth.hpp>
#include <FMX.TMSFNCCustomComponent.hpp>
#include <FMX.Controls.hpp>
#include <FMX.Types.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfnccloudgooglegmail
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCCloudGoogleGmailHeader;
class DELPHICLASS TTMSFNCCloudGoogleGmailMessageAttachment;
class DELPHICLASS TTMSFNCCloudGoogleGmailMessageAttachments;
class DELPHICLASS TTMSFNCCloudGoogleGmailMessage;
class DELPHICLASS TTMSFNCCloudGoogleGmailMessages;
class DELPHICLASS TTMSFNCCloudGoogleGmailFile;
class DELPHICLASS TTMSFNCCloudGoogleGmailFiles;
class DELPHICLASS TTMSFNCCloudGoogleGmailLabel;
class DELPHICLASS TTMSFNCCloudGoogleGmailLabels;
class DELPHICLASS TTMSFNCCustomCloudGoogleGmail;
class DELPHICLASS TTMSFNCCloudGoogleGmail;
//-- type declarations -------------------------------------------------------
enum DECLSPEC_DENUM TTMSFNCCloudGoogleGmailMessageType : unsigned char { mtPlainText, mtHTML, mtOther };

class PASCALIMPLEMENTATION TTMSFNCCloudGoogleGmailHeader : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	System::UnicodeString FName;
	System::UnicodeString FValue;
	
public:
	__property System::UnicodeString Name = {read=FName, write=FName};
	__property System::UnicodeString Value = {read=FValue, write=FValue};
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
	/* TObject.Create */ inline __fastcall TTMSFNCCloudGoogleGmailHeader() : System::TObject() { }
	/* TObject.Destroy */ inline __fastcall virtual ~TTMSFNCCloudGoogleGmailHeader() { }
	
};


typedef System::Generics::Collections::TObjectList__1<TTMSFNCCloudGoogleGmailHeader*>* TTMSFNCCloudGoogleGmailHeaders;

class PASCALIMPLEMENTATION TTMSFNCCloudGoogleGmailMessageAttachment : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	System::UnicodeString FID;
	int FSize;
	System::UnicodeString FData;
	System::UnicodeString FFileName;
	TTMSFNCCloudGoogleGmailMessage* __fastcall GetMessage();
	
public:
	__fastcall virtual TTMSFNCCloudGoogleGmailMessageAttachment(System::Classes::TCollection* Collection);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual ~TTMSFNCCloudGoogleGmailMessageAttachment();
	void __fastcall SaveToFile(System::UnicodeString AFile);
	void __fastcall SaveToStream(System::Classes::TStream* AStream);
	__property TTMSFNCCloudGoogleGmailMessage* Message = {read=GetMessage};
	
__published:
	__property System::UnicodeString FileName = {read=FFileName, write=FFileName};
	__property System::UnicodeString ID = {read=FID, write=FID};
	__property System::UnicodeString Data = {read=FData, write=FData};
	__property int Size = {read=FSize, write=FSize, nodefault};
};


class PASCALIMPLEMENTATION TTMSFNCCloudGoogleGmailMessageAttachments : public System::Classes::TCollection
{
	typedef System::Classes::TCollection inherited;
	
public:
	TTMSFNCCloudGoogleGmailMessageAttachment* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCCloudGoogleGmailMessage* FOwner;
	HIDESBASE TTMSFNCCloudGoogleGmailMessageAttachment* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCCloudGoogleGmailMessageAttachment* const Value);
	
public:
	__fastcall TTMSFNCCloudGoogleGmailMessageAttachments(TTMSFNCCloudGoogleGmailMessage* AOwner);
	__fastcall virtual ~TTMSFNCCloudGoogleGmailMessageAttachments();
	HIDESBASE TTMSFNCCloudGoogleGmailMessageAttachment* __fastcall Add();
	__property TTMSFNCCloudGoogleGmailMessageAttachment* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
};


class PASCALIMPLEMENTATION TTMSFNCCloudGoogleGmailMessage : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	System::UnicodeString FID;
	System::UnicodeString FRaw;
	System::UnicodeString FThreadId;
	int FSize;
	System::UnicodeString FHistoryId;
	System::UnicodeString FInternalDate;
	System::UnicodeString FSubject;
	System::UnicodeString FBody;
	System::UnicodeString FHTMLBody;
	System::Classes::TStringList* FTo;
	TTMSFNCCloudGoogleGmailMessageType FMessageType;
	System::Classes::TStringList* FCC;
	System::Classes::TStringList* FBCC;
	System::UnicodeString FSnippet;
	System::Generics::Collections::TObjectList__1<TTMSFNCCloudGoogleGmailHeader*>* FHeaders;
	System::Classes::TStringList* FLabels;
	System::UnicodeString FDateTime;
	System::UnicodeString FFrom;
	TTMSFNCCloudGoogleGmailMessageAttachments* FAttachments;
	void __fastcall SetAttachments(TTMSFNCCloudGoogleGmailMessageAttachments* const Value);
	
protected:
	__property System::UnicodeString HistoryId = {read=FHistoryId, write=FHistoryId};
	__property System::UnicodeString InternalDate = {read=FInternalDate, write=FInternalDate};
	__property System::UnicodeString Raw = {read=FRaw, write=FRaw};
	__property int Size = {read=FSize, write=FSize, nodefault};
	__property System::UnicodeString ThreadId = {read=FThreadId, write=FThreadId};
	
public:
	__fastcall virtual TTMSFNCCloudGoogleGmailMessage(System::Classes::TCollection* Collection);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual ~TTMSFNCCloudGoogleGmailMessage();
	
__published:
	__property System::UnicodeString ID = {read=FID, write=FID};
	__property System::Classes::TStringList* BCCRecipients = {read=FBCC, write=FBCC};
	__property System::UnicodeString Body = {read=FBody, write=FBody};
	__property System::UnicodeString HTMLBody = {read=FHTMLBody, write=FHTMLBody};
	__property System::UnicodeString Date = {read=FDateTime, write=FDateTime};
	__property System::Classes::TStringList* CCRecipients = {read=FCC, write=FCC};
	__property System::UnicodeString From = {read=FFrom, write=FFrom};
	__property System::Generics::Collections::TObjectList__1<TTMSFNCCloudGoogleGmailHeader*>* Headers = {read=FHeaders, write=FHeaders};
	__property System::Classes::TStringList* Labels = {read=FLabels, write=FLabels};
	__property TTMSFNCCloudGoogleGmailMessageType MessageType = {read=FMessageType, write=FMessageType, default=0};
	__property System::UnicodeString Snippet = {read=FSnippet, write=FSnippet};
	__property System::UnicodeString Subject = {read=FSubject, write=FSubject};
	__property System::Classes::TStringList* ToRecipients = {read=FTo, write=FTo};
	__property TTMSFNCCloudGoogleGmailMessageAttachments* Attachments = {read=FAttachments, write=SetAttachments};
};


class PASCALIMPLEMENTATION TTMSFNCCloudGoogleGmailMessages : public System::Classes::TCollection
{
	typedef System::Classes::TCollection inherited;
	
public:
	TTMSFNCCloudGoogleGmailMessage* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCCustomCloudGoogleGmail* FOwner;
	HIDESBASE TTMSFNCCloudGoogleGmailMessage* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCCloudGoogleGmailMessage* const Value);
	
public:
	__fastcall TTMSFNCCloudGoogleGmailMessages(TTMSFNCCustomCloudGoogleGmail* AOwner);
	__fastcall virtual ~TTMSFNCCloudGoogleGmailMessages();
	HIDESBASE TTMSFNCCloudGoogleGmailMessage* __fastcall Add();
	__property TTMSFNCCloudGoogleGmailMessage* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
};


class PASCALIMPLEMENTATION TTMSFNCCloudGoogleGmailFile : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	System::UnicodeString FFile;
	
public:
	__fastcall virtual TTMSFNCCloudGoogleGmailFile(System::Classes::TCollection* Collection);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual ~TTMSFNCCloudGoogleGmailFile();
	
__published:
	__property System::UnicodeString File = {read=FFile, write=FFile};
};


class PASCALIMPLEMENTATION TTMSFNCCloudGoogleGmailFiles : public System::Classes::TCollection
{
	typedef System::Classes::TCollection inherited;
	
public:
	TTMSFNCCloudGoogleGmailFile* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCCustomCloudGoogleGmail* FOwner;
	HIDESBASE TTMSFNCCloudGoogleGmailFile* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCCloudGoogleGmailFile* const Value);
	
public:
	__fastcall TTMSFNCCloudGoogleGmailFiles(TTMSFNCCustomCloudGoogleGmail* AOwner);
	__fastcall virtual ~TTMSFNCCloudGoogleGmailFiles();
	HIDESBASE TTMSFNCCloudGoogleGmailFile* __fastcall Add();
	__property TTMSFNCCloudGoogleGmailFile* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
};


class PASCALIMPLEMENTATION TTMSFNCCloudGoogleGmailLabel : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	System::UnicodeString FID;
	System::UnicodeString FName;
	System::UnicodeString FType;
	
public:
	__fastcall virtual TTMSFNCCloudGoogleGmailLabel(System::Classes::TCollection* Collection);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual ~TTMSFNCCloudGoogleGmailLabel();
	
__published:
	__property System::UnicodeString ID = {read=FID, write=FID};
	__property System::UnicodeString Name = {read=FName, write=FName};
	__property System::UnicodeString LabelType = {read=FType, write=FType};
};


class PASCALIMPLEMENTATION TTMSFNCCloudGoogleGmailLabels : public System::Classes::TCollection
{
	typedef System::Classes::TCollection inherited;
	
public:
	TTMSFNCCloudGoogleGmailLabel* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCCustomCloudGoogleGmail* FOwner;
	HIDESBASE TTMSFNCCloudGoogleGmailLabel* __fastcall GetItem(int Index)/* overload */;
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCCloudGoogleGmailLabel* const Value);
	TTMSFNCCloudGoogleGmailLabel* __fastcall GetItemByName(System::UnicodeString AName)/* overload */;
	
public:
	__fastcall TTMSFNCCloudGoogleGmailLabels(TTMSFNCCustomCloudGoogleGmail* AOwner);
	HIDESBASE TTMSFNCCloudGoogleGmailLabel* __fastcall Add();
	__property TTMSFNCCloudGoogleGmailLabel* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCCloudGoogleGmailLabels() { }
	
};


typedef void __fastcall (__closure *TTMSFNCCloudGoogleGmailOnGetAttachmentEvent)(System::TObject* Sender, TTMSFNCCloudGoogleGmailMessage* const AMessage, TTMSFNCCloudGoogleGmailMessageAttachment* const AAttachment, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudGoogleGmailOnGetLabelsEvent)(System::TObject* Sender, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudGoogleGmailOnGetMailsEvent)(System::TObject* Sender, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudGoogleGmailOnGetMessageEvent)(System::TObject* Sender, TTMSFNCCloudGoogleGmailMessage* const AMessage, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudGoogleGmailOnSendMessageEvent)(System::TObject* Sender, TTMSFNCCloudGoogleGmailMessage* const AMessage, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudGoogleGmailOnGetMailsCompleteEvent)(System::TObject* Sender, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudGoogleGmailOnUpdateMessageLabelsEvent)(System::TObject* Sender, const System::UnicodeString AMessageID, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

class PASCALIMPLEMENTATION TTMSFNCCustomCloudGoogleGmail : public Fmx::Tmsfnccloudgoogle::TTMSFNCCustomCloudGoogle
{
	typedef Fmx::Tmsfnccloudgoogle::TTMSFNCCustomCloudGoogle inherited;
	
private:
	TTMSFNCCloudGoogleGmailLabels* FLabels;
	System::UnicodeString FPageToken;
	TTMSFNCCloudGoogleGmailFiles* FFiles;
	TTMSFNCCloudGoogleGmailMessages* FMails;
	TTMSFNCCloudGoogleGmailOnGetMessageEvent FOnGetMessage;
	TTMSFNCCloudGoogleGmailOnGetMailsEvent FOnGetMails;
	TTMSFNCCloudGoogleGmailOnGetMailsCompleteEvent FOnGetMailsComplete;
	TTMSFNCCloudGoogleGmailOnGetLabelsEvent FOnGetLabels;
	TTMSFNCCloudGoogleGmailOnUpdateMessageLabelsEvent FOnUpdateMessageLabels;
	TTMSFNCCloudGoogleGmailOnSendMessageEvent FOnSendMessage;
	TTMSFNCCloudGoogleGmailOnGetAttachmentEvent FOnGetAttachment;
	
protected:
	virtual System::UnicodeString __fastcall GetVersion();
	virtual System::UnicodeString __fastcall BuildRaw(TTMSFNCCloudGoogleGmailMessage* AMessage);
	virtual System::UnicodeString __fastcall BuildRawUpload(TTMSFNCCloudGoogleGmailMessage* AMessage);
	virtual void __fastcall RetrieveAccessToken();
	virtual void __fastcall GetMessage(System::UnicodeString AMessageID)/* overload */;
	void __fastcall DoGetAttachment(TTMSFNCCloudGoogleGmailMessage* const AMessage, TTMSFNCCloudGoogleGmailMessageAttachment* const AAttachment, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoGetLabels(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoGetMails(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoGetMailsComplete(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoGetMessage(TTMSFNCCloudGoogleGmailMessage* const AMessage, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoSendMessage(TTMSFNCCloudGoogleGmailMessage* const AMessage, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoUpdateMessageLabels(const System::UnicodeString AMessageID, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestGetAttachment(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestSendMessage(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestUpdateMessageLabels(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestGetLabels(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestGetMails(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestGetMessage(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	__property TTMSFNCCloudGoogleGmailMessages* Mails = {read=FMails, write=FMails};
	__property TTMSFNCCloudGoogleGmailOnGetAttachmentEvent OnGetAttachment = {read=FOnGetAttachment, write=FOnGetAttachment};
	__property TTMSFNCCloudGoogleGmailOnGetLabelsEvent OnGetLabels = {read=FOnGetLabels, write=FOnGetLabels};
	__property TTMSFNCCloudGoogleGmailOnGetMailsEvent OnGetMails = {read=FOnGetMails, write=FOnGetMails};
	__property TTMSFNCCloudGoogleGmailOnGetMessageEvent OnGetMessage = {read=FOnGetMessage, write=FOnGetMessage};
	__property TTMSFNCCloudGoogleGmailOnSendMessageEvent OnSendMessage = {read=FOnSendMessage, write=FOnSendMessage};
	__property TTMSFNCCloudGoogleGmailOnGetMailsCompleteEvent OnGetMailsComplete = {read=FOnGetMailsComplete, write=FOnGetMailsComplete};
	__property TTMSFNCCloudGoogleGmailOnUpdateMessageLabelsEvent OnUpdateMessageLabels = {read=FOnUpdateMessageLabels, write=FOnUpdateMessageLabels};
	
public:
	__fastcall virtual TTMSFNCCustomCloudGoogleGmail(System::Classes::TComponent* AOwner)/* overload */;
	__fastcall virtual ~TTMSFNCCustomCloudGoogleGmail();
	virtual bool __fastcall GetTestTokensResult(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall GetLabels();
	void __fastcall GetAttachment(TTMSFNCCloudGoogleGmailMessageAttachment* AAttachment);
	void __fastcall GetMails(System::UnicodeString Labels = u"INBOX", int AMaxResults = 0x32, bool GetNextPage = true);
	void __fastcall SendMessage(TTMSFNCCloudGoogleGmailMessage* AMessage);
	void __fastcall UpdateMessageLabels(System::UnicodeString AMessageID, System::UnicodeString ALabels);
	__property System::UnicodeString PageToken = {read=FPageToken, write=FPageToken};
	__property TTMSFNCCloudGoogleGmailFiles* Files = {read=FFiles};
	__property TTMSFNCCloudGoogleGmailLabels* Labels = {read=FLabels};
public:
	/* TTMSFNCCustomCloudOAuth.Create */ inline __fastcall virtual TTMSFNCCustomCloudGoogleGmail()/* overload */ : Fmx::Tmsfnccloudgoogle::TTMSFNCCustomCloudGoogle() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudGoogleGmail : public TTMSFNCCustomCloudGoogleGmail
{
	typedef TTMSFNCCustomCloudGoogleGmail inherited;
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	
__published:
	__property Mails;
	__property OnGetAttachment;
	__property OnGetLabels;
	__property OnGetMails;
	__property OnGetMessage;
	__property OnSendMessage;
	__property OnGetMailsComplete;
	__property OnUpdateMessageLabels;
public:
	/* TTMSFNCCustomCloudGoogleGmail.Create */ inline __fastcall virtual TTMSFNCCloudGoogleGmail(System::Classes::TComponent* AOwner)/* overload */ : TTMSFNCCustomCloudGoogleGmail(AOwner) { }
	/* TTMSFNCCustomCloudGoogleGmail.Destroy */ inline __fastcall virtual ~TTMSFNCCloudGoogleGmail() { }
	
public:
	/* TTMSFNCCustomCloudOAuth.Create */ inline __fastcall virtual TTMSFNCCloudGoogleGmail()/* overload */ : TTMSFNCCustomCloudGoogleGmail() { }
	
};


//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x1);
static constexpr System::Int8 REL_VER = System::Int8(0x0);
static constexpr System::Int8 BLD_VER = System::Int8(0x1);
}	/* namespace Tmsfnccloudgooglegmail */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCCLOUDGOOGLEGMAIL)
using namespace Fmx::Tmsfnccloudgooglegmail;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfnccloudgooglegmailHPP
