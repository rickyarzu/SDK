// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCCloudSlack.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfnccloudslackHPP
#define Fmx_TmsfnccloudslackHPP

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
#include <System.JSON.hpp>
#include <System.Generics.Collections.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>
#include <System.Types.hpp>
#include <System.UITypes.hpp>
#include <FMX.TMSFNCCustomComponent.hpp>
#include <FMX.Controls.hpp>
#include <FMX.Types.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfnccloudslack
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCCloudSlackReaction;
class DELPHICLASS TTMSFNCCloudSlackReactions;
class DELPHICLASS TTMSFNCCloudSlackReply;
class DELPHICLASS TTMSFNCCloudSlackReplies;
class DELPHICLASS TTMSFNCCloudSlackProfile;
class DELPHICLASS TTMSFNCCloudSlackUser;
class DELPHICLASS TTMSFNCCloudSlackUsers;
class DELPHICLASS TTMSFNCCloudSlackFile;
class DELPHICLASS TTMSFNCCloudSlackFiles;
class DELPHICLASS TTMSFNCCloudSlackMessage;
class DELPHICLASS TTMSFNCCloudSlackMessages;
class DELPHICLASS TTMSFNCCloudSlackConversation;
class DELPHICLASS TTMSFNCCloudSlackPublicChannel;
class DELPHICLASS TTMSFNCCloudSlackPrivateChannel;
class DELPHICLASS TTMSFNCCloudSlackInstantMessage;
class DELPHICLASS TTMSFNCCloudSlackMultiPartyInstantMessage;
class DELPHICLASS TTMSFNCCloudSlackConversations;
class DELPHICLASS TTMSFNCCloudSlackPublicChannels;
class DELPHICLASS TTMSFNCCloudSlackPrivateChannels;
class DELPHICLASS TTMSFNCCloudSlackInstantMessages;
class DELPHICLASS TTMSFNCCloudSlackMultiPartyInstantMessages;
class DELPHICLASS TTMSFNCCustomCloudSlack;
class DELPHICLASS TTMSFNCCloudSlack;
//-- type declarations -------------------------------------------------------
enum DECLSPEC_DENUM TTMSFNCCloudSlackConversationType : unsigned char { sctPublicChannel, sctPrivateChannel, sctInstantMessage, sctMultiPartyInstantMessage, sctUnknown };

typedef System::Set<TTMSFNCCloudSlackConversationType, TTMSFNCCloudSlackConversationType::sctPublicChannel, TTMSFNCCloudSlackConversationType::sctUnknown> TTMSFNCCloudSlackConversationTypes;

enum DECLSPEC_DENUM TTMSFNCCloudSlack2FactorAuth : unsigned char { sfaNone, sfaSMS, sfaApp };

enum DECLSPEC_DENUM TTMSFNCCloudSlackProfileImageSizes : unsigned char { sizOriginal, siz24, siz32, siz48, siz72, siz192, siz512 };

typedef void __fastcall (__closure *TTMSFNCCloudSlackGetConversationsEvent)(System::TObject* Sender, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult, TTMSFNCCloudSlackConversations* Conversations, System::UnicodeString ErrorMessage);

typedef void __fastcall (__closure *TTMSFNCCloudSlackGetConversationHistoryEvent)(System::TObject* Sender, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult, TTMSFNCCloudSlackConversation* AConversation, TTMSFNCCloudSlackMessages* Messages, System::UnicodeString ErrorMessage);

typedef void __fastcall (__closure *TTMSFNCCloudSlackGetFileEvent)(System::TObject* Sender, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult, TTMSFNCCloudSlackMessage* AMessage, TTMSFNCCloudSlackFile* AFile, System::Classes::TMemoryStream* AStream);

typedef void __fastcall (__closure *TTMSFNCCloudSlackGetUsersEvent)(System::TObject* Sender, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult, TTMSFNCCloudSlackUsers* Users, System::UnicodeString ErrorMessage);

typedef void __fastcall (__closure *TTMSFNCCloudSlackUploadFileEvent)(System::TObject* Sender, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult, TTMSFNCCloudSlackFile* AFile, System::UnicodeString ErrorMessage);

typedef void __fastcall (__closure *TTMSFNCCloudSlackPostMessageEvent)(System::TObject* Sender, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult, TTMSFNCCloudSlackConversation* AConversation, TTMSFNCCloudSlackMessage* AMessage, System::UnicodeString ErrorMessage);

typedef void __fastcall (__closure *TTMSFNCCloudSlackPostReplyEvent)(System::TObject* Sender, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult, TTMSFNCCloudSlackMessage* AMessage, TTMSFNCCloudSlackReply* AReply, System::UnicodeString ErrorMessage);

typedef void __fastcall (__closure *TTMSFNCCloudSlackJoinConversationEvent)(System::TObject* Sender, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult, bool JoinedConversation, TTMSFNCCloudSlackConversation* AConversation, System::UnicodeString WarningMessage, System::UnicodeString ErrorMessage);

typedef void __fastcall (__closure *TTMSFNCCloudSlackGetProfilePictureEvent)(System::TObject* Sender, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult, TTMSFNCCloudSlackUser* AUser, TTMSFNCCloudSlackProfile* AProfile, System::Classes::TMemoryStream* AProfilePictureStream);

typedef void __fastcall (__closure *TTMSFNCCloudSlackGetUserConversationsEvent)(System::TObject* Sender, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult, TTMSFNCCloudSlackConversations* Conversations, TTMSFNCCloudSlackUser* AUser, System::UnicodeString ErrorMessage);

typedef void __fastcall (__closure *TTMSFNCCloudSlackDeleteMessageEvent)(System::TObject* Sender, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult, bool MessageDeleted, TTMSFNCCloudSlackConversation* AConversation, System::UnicodeString ErrorMessage);

typedef void __fastcall (__closure *TTMSFNCCloudSlackGetMessageRepliesEvent)(System::TObject* Sender, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult, TTMSFNCCloudSlackMessage* AMessage, System::UnicodeString ErrorMessage);

typedef void __fastcall (__closure *TTMSFNCCloudSlackGetUserInformationEvent)(System::TObject* Sender, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult, TTMSFNCCloudSlackUser* AUser, System::UnicodeString ErrorMessage);

class PASCALIMPLEMENTATION TTMSFNCCloudSlackReaction : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	System::UnicodeString FName;
	int FCount;
	System::Classes::TStringList* FUserList;
	TTMSFNCCloudSlackMessage* FMessage;
	
protected:
	virtual void __fastcall ParseJSONReaction(System::Json::TJSONValue* AJSONReaction);
	
public:
	__fastcall virtual TTMSFNCCloudSlackReaction(TTMSFNCCloudSlackMessage* AMessage);
	__fastcall virtual ~TTMSFNCCloudSlackReaction();
	__property TTMSFNCCloudSlackMessage* Message = {read=FMessage};
	__property System::Classes::TStringList* UserList = {read=FUserList};
	__property System::UnicodeString Name = {read=FName};
	__property int Count = {read=FCount, nodefault};
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
	/* TObject.Create */ inline __fastcall TTMSFNCCloudSlackReaction() : System::TObject() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudSlackReactions : public System::Generics::Collections::TObjectList__1<TTMSFNCCloudSlackReaction*>
{
	typedef System::Generics::Collections::TObjectList__1<TTMSFNCCloudSlackReaction*> inherited;
	
public:
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudSlack_TTMSFNCCloudSlackReaction>.Create */ inline __fastcall TTMSFNCCloudSlackReactions()/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudSlackReaction*>() { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudSlack_TTMSFNCCloudSlackReaction>.Create */ inline __fastcall TTMSFNCCloudSlackReactions(bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudSlackReaction*>(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudSlack_TTMSFNCCloudSlackReaction>.Create */ inline __fastcall TTMSFNCCloudSlackReactions(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCloudSlackReaction*> > AComparer, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudSlackReaction*>(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudSlack_TTMSFNCCloudSlackReaction>.Create */ inline __fastcall TTMSFNCCloudSlackReactions(System::Generics::Collections::TEnumerable__1<TTMSFNCCloudSlackReaction*>* const Collection, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudSlackReaction*>(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudSlack_TTMSFNCCloudSlackReaction>.Destroy */ inline __fastcall virtual ~TTMSFNCCloudSlackReactions() { }
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudSlack_TTMSFNCCloudSlackReaction>.Create */ inline __fastcall TTMSFNCCloudSlackReactions(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCloudSlackReaction*> > AComparer)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudSlackReaction*>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudSlack_TTMSFNCCloudSlackReaction>.Create */ inline __fastcall TTMSFNCCloudSlackReactions(System::Generics::Collections::TEnumerable__1<TTMSFNCCloudSlackReaction*>* const Collection)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudSlackReaction*>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudSlack_TTMSFNCCloudSlackReaction>.Create */ inline __fastcall TTMSFNCCloudSlackReactions(TTMSFNCCloudSlackReaction* const *Values, const int Values_High)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudSlackReaction*>(Values, Values_High) { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudSlackReply : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	TTMSFNCCloudSlackMessage* FMessage;
	System::TDateTime FTimeStamp;
	System::UnicodeString FUserID;
	System::UnicodeString FText;
	System::UnicodeString FClientMessageID;
	System::UnicodeString FType;
	System::UnicodeString FTeam;
	System::UnicodeString FParentUserID;
	System::UnicodeString FBotID;
	System::TDateTime FThreadTimeStamp;
	
protected:
	virtual void __fastcall ParseJSONReply(System::Json::TJSONValue* AJSONReply);
	
public:
	__fastcall virtual TTMSFNCCloudSlackReply(TTMSFNCCloudSlackMessage* AMessage);
	__property TTMSFNCCloudSlackMessage* Message = {read=FMessage};
	__property System::UnicodeString UserID = {read=FUserID};
	__property System::UnicodeString ParentUserID = {read=FParentUserID};
	__property System::TDateTime TimeStamp = {read=FTimeStamp};
	__property System::TDateTime ThreadTimeStamp = {read=FThreadTimeStamp};
	__property System::UnicodeString Text = {read=FText};
	__property System::UnicodeString ClientMessageID = {read=FClientMessageID};
	__property System::UnicodeString BotID = {read=FBotID};
	__property System::UnicodeString Type = {read=FType};
	__property System::UnicodeString Team = {read=FTeam};
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
	/* TObject.Create */ inline __fastcall TTMSFNCCloudSlackReply() : System::TObject() { }
	/* TObject.Destroy */ inline __fastcall virtual ~TTMSFNCCloudSlackReply() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudSlackReplies : public System::Generics::Collections::TObjectList__1<TTMSFNCCloudSlackReply*>
{
	typedef System::Generics::Collections::TObjectList__1<TTMSFNCCloudSlackReply*> inherited;
	
private:
	System::UnicodeString FNextCursor;
	
public:
	__property System::UnicodeString NextCursor = {read=FNextCursor};
public:
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudSlack_TTMSFNCCloudSlackReply>.Create */ inline __fastcall TTMSFNCCloudSlackReplies()/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudSlackReply*>() { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudSlack_TTMSFNCCloudSlackReply>.Create */ inline __fastcall TTMSFNCCloudSlackReplies(bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudSlackReply*>(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudSlack_TTMSFNCCloudSlackReply>.Create */ inline __fastcall TTMSFNCCloudSlackReplies(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCloudSlackReply*> > AComparer, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudSlackReply*>(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudSlack_TTMSFNCCloudSlackReply>.Create */ inline __fastcall TTMSFNCCloudSlackReplies(System::Generics::Collections::TEnumerable__1<TTMSFNCCloudSlackReply*>* const Collection, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudSlackReply*>(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudSlack_TTMSFNCCloudSlackReply>.Destroy */ inline __fastcall virtual ~TTMSFNCCloudSlackReplies() { }
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudSlack_TTMSFNCCloudSlackReply>.Create */ inline __fastcall TTMSFNCCloudSlackReplies(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCloudSlackReply*> > AComparer)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudSlackReply*>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudSlack_TTMSFNCCloudSlackReply>.Create */ inline __fastcall TTMSFNCCloudSlackReplies(System::Generics::Collections::TEnumerable__1<TTMSFNCCloudSlackReply*>* const Collection)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudSlackReply*>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudSlack_TTMSFNCCloudSlackReply>.Create */ inline __fastcall TTMSFNCCloudSlackReplies(TTMSFNCCloudSlackReply* const *Values, const int Values_High)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudSlackReply*>(Values, Values_High) { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudSlackProfile : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	System::Classes::TMemoryStream* FProfilePictureStream;
	System::UnicodeString FDisplayName;
	System::UnicodeString FEMail;
	System::UnicodeString FImageUrl;
	System::UnicodeString FTeamID;
	System::UnicodeString FStatusEmoji;
	System::UnicodeString FStatusText;
	System::UnicodeString FAvatarHash;
	System::UnicodeString FRealName;
	System::UnicodeString FLastName;
	System::UnicodeString FPhone;
	System::UnicodeString FTitle;
	System::UnicodeString FSkype;
	System::UnicodeString FFirstName;
	TTMSFNCCloudSlackUser* FUser;
	bool FIsCustomImage;
	bool FIsAlwaysActive;
	System::UnicodeString FAPIAppID;
	System::UnicodeString FBotID;
	
protected:
	virtual void __fastcall ParseJSONProfile(System::Json::TJSONValue* AJSONProfile);
	
public:
	__fastcall virtual TTMSFNCCloudSlackProfile(TTMSFNCCloudSlackUser* AUser);
	__fastcall virtual ~TTMSFNCCloudSlackProfile();
	virtual void __fastcall DownloadProfilePicture();
	__property TTMSFNCCloudSlackUser* User = {read=FUser};
	__property System::UnicodeString AvatarHash = {read=FAvatarHash};
	__property System::UnicodeString StatusText = {read=FStatusText};
	__property System::UnicodeString StatusEmoji = {read=FStatusEmoji};
	__property System::UnicodeString RealName = {read=FRealName};
	__property System::UnicodeString DisplayName = {read=FDisplayName};
	__property System::UnicodeString Email = {read=FEMail};
	__property System::UnicodeString ImageUrl = {read=FImageUrl};
	__property System::UnicodeString TeamID = {read=FTeamID};
	__property System::UnicodeString FirstName = {read=FFirstName};
	__property System::UnicodeString LastName = {read=FLastName};
	__property System::UnicodeString Title = {read=FTitle};
	__property System::UnicodeString Skype = {read=FSkype};
	__property System::UnicodeString Phone = {read=FPhone};
	__property System::Classes::TMemoryStream* ProfilePictureStream = {read=FProfilePictureStream};
	__property bool IsCustomImage = {read=FIsCustomImage, nodefault};
	__property bool IsAlwaysActive = {read=FIsAlwaysActive, nodefault};
	__property System::UnicodeString BotID = {read=FBotID};
	__property System::UnicodeString APIAppID = {read=FAPIAppID};
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
	/* TObject.Create */ inline __fastcall TTMSFNCCloudSlackProfile() : System::TObject() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudSlackUser : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	System::UnicodeString FTimeZoneLabel;
	bool FIsDeleted;
	bool FIsBot;
	bool FIsOwner;
	bool FIsStranger;
	System::UnicodeString FTeamID;
	System::UnicodeString FUserID;
	bool FIsRestricted;
	bool FIsPrimaryOwner;
	System::UnicodeString FLocale;
	bool FIsUltraRestricted;
	bool FIsInvitedUser;
	bool FIsAppUser;
	TTMSFNCCloudSlackProfile* FProfile;
	int FTimeZoneOffset;
	System::UnicodeString FRealName;
	System::UnicodeString FTimeZone;
	TTMSFNCCloudSlack2FactorAuth FTwoFactorAuth;
	bool FIsAdmin;
	System::UnicodeString FUserName;
	TTMSFNCCustomCloudSlack* FSlack;
	System::TDateTime FUpdateTimeStamp;
	System::Uitypes::TAlphaColor FColor;
	System::UnicodeString __fastcall GetHTMLColor();
	
protected:
	virtual void __fastcall ParseJSONUser(System::Json::TJSONValue* AJSONUser);
	
public:
	__fastcall virtual TTMSFNCCloudSlackUser(TTMSFNCCustomCloudSlack* ASlack);
	__fastcall virtual ~TTMSFNCCloudSlackUser();
	virtual void __fastcall GetConversations(int ALimit = 0x64, TTMSFNCCloudSlackConversationTypes ATypes = (TTMSFNCCloudSlackConversationTypes() << TTMSFNCCloudSlackConversationType::sctPublicChannel ), bool ExcludeArchived = false, System::UnicodeString ANextCursor = System::UnicodeString());
	virtual void __fastcall GetAllConversations();
	__property TTMSFNCCustomCloudSlack* Slack = {read=FSlack};
	__property System::UnicodeString UserID = {read=FUserID};
	__property System::UnicodeString TeamID = {read=FTeamID};
	__property System::UnicodeString UserName = {read=FUserName};
	__property bool IsDeleted = {read=FIsDeleted, nodefault};
	__property System::Uitypes::TAlphaColor Color = {read=FColor, nodefault};
	__property System::UnicodeString RealName = {read=FRealName};
	__property System::UnicodeString TimeZone = {read=FTimeZone};
	__property System::UnicodeString TimeZoneLabel = {read=FTimeZoneLabel};
	__property int TimeZoneOffset = {read=FTimeZoneOffset, nodefault};
	__property bool IsAdmin = {read=FIsAdmin, nodefault};
	__property bool IsOwner = {read=FIsOwner, nodefault};
	__property bool IsPrimaryOwner = {read=FIsPrimaryOwner, nodefault};
	__property bool IsRestricted = {read=FIsRestricted, nodefault};
	__property bool IsUltraRestricted = {read=FIsUltraRestricted, nodefault};
	__property bool IsBot = {read=FIsBot, nodefault};
	__property bool IsAppUser = {read=FIsAppUser, nodefault};
	__property bool IsInvitedUser = {read=FIsInvitedUser, nodefault};
	__property TTMSFNCCloudSlack2FactorAuth TwoFactorAuth = {read=FTwoFactorAuth, nodefault};
	__property bool IsStranger = {read=FIsStranger, nodefault};
	__property System::UnicodeString Locale = {read=FLocale};
	__property System::TDateTime UpdateTimeStamp = {read=FUpdateTimeStamp};
	__property TTMSFNCCloudSlackProfile* Profile = {read=FProfile};
	__property System::UnicodeString HTMLColor = {read=GetHTMLColor};
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
	/* TObject.Create */ inline __fastcall TTMSFNCCloudSlackUser() : System::TObject() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudSlackUsers : public System::Generics::Collections::TObjectList__1<TTMSFNCCloudSlackUser*>
{
	typedef System::Generics::Collections::TObjectList__1<TTMSFNCCloudSlackUser*> inherited;
	
private:
	System::UnicodeString FNextCursor;
	
public:
	__property System::UnicodeString NextCursor = {read=FNextCursor};
	TTMSFNCCloudSlackUser* __fastcall GetUserByID(const System::UnicodeString AID);
public:
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudSlack_TTMSFNCCloudSlackUser>.Create */ inline __fastcall TTMSFNCCloudSlackUsers()/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudSlackUser*>() { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudSlack_TTMSFNCCloudSlackUser>.Create */ inline __fastcall TTMSFNCCloudSlackUsers(bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudSlackUser*>(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudSlack_TTMSFNCCloudSlackUser>.Create */ inline __fastcall TTMSFNCCloudSlackUsers(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCloudSlackUser*> > AComparer, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudSlackUser*>(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudSlack_TTMSFNCCloudSlackUser>.Create */ inline __fastcall TTMSFNCCloudSlackUsers(System::Generics::Collections::TEnumerable__1<TTMSFNCCloudSlackUser*>* const Collection, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudSlackUser*>(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudSlack_TTMSFNCCloudSlackUser>.Destroy */ inline __fastcall virtual ~TTMSFNCCloudSlackUsers() { }
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudSlack_TTMSFNCCloudSlackUser>.Create */ inline __fastcall TTMSFNCCloudSlackUsers(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCloudSlackUser*> > AComparer)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudSlackUser*>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudSlack_TTMSFNCCloudSlackUser>.Create */ inline __fastcall TTMSFNCCloudSlackUsers(System::Generics::Collections::TEnumerable__1<TTMSFNCCloudSlackUser*>* const Collection)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudSlackUser*>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudSlack_TTMSFNCCloudSlackUser>.Create */ inline __fastcall TTMSFNCCloudSlackUsers(TTMSFNCCloudSlackUser* const *Values, const int Values_High)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudSlackUser*>(Values, Values_High) { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudSlackFile : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	System::Classes::TMemoryStream* FFileStream;
	TTMSFNCCloudSlackMessage* FMessage;
	bool FIsDisplayedAsBot;
	System::UnicodeString FName;
	bool FIsStarred;
	System::UnicodeString FMode;
	int FOriginalWidth;
	bool FIsPublic;
	System::UnicodeString FURLPrivateDownload;
	bool FIsExternal;
	System::TDateTime FCreated;
	System::UnicodeString FTitle;
	System::UnicodeString FID;
	System::TDateTime FTimeStamp;
	System::UnicodeString FMimeType;
	System::UnicodeString FFileType;
	int FSize;
	int FOriginalHeight;
	bool FIsEditable;
	System::UnicodeString FUser;
	System::UnicodeString FURLPrivate;
	System::UnicodeString FPreview;
	System::UnicodeString FPreviewHighlight;
	int FCommentsCount;
	int FLines;
	bool FIsPreviewTruncated;
	
protected:
	virtual void __fastcall ParseJSONFile(System::Json::TJSONValue* AJSONFile);
	
public:
	__fastcall virtual TTMSFNCCloudSlackFile(TTMSFNCCloudSlackMessage* AMessage);
	__fastcall virtual ~TTMSFNCCloudSlackFile();
	void __fastcall Download();
	__property TTMSFNCCloudSlackMessage* Message = {read=FMessage};
	__property System::UnicodeString ID = {read=FID};
	__property System::UnicodeString Title = {read=FTitle};
	__property System::TDateTime Created = {read=FCreated};
	__property System::TDateTime TimeStamp = {read=FTimeStamp};
	__property System::UnicodeString Name = {read=FName};
	__property System::UnicodeString MimeType = {read=FMimeType};
	__property System::UnicodeString FileType = {read=FFileType};
	__property System::UnicodeString User = {read=FUser};
	__property System::UnicodeString URLPrivateDownload = {read=FURLPrivateDownload};
	__property System::UnicodeString URLPrivate = {read=FURLPrivate};
	__property int Size = {read=FSize, nodefault};
	__property System::UnicodeString Mode = {read=FMode};
	__property bool IsEditable = {read=FIsEditable, nodefault};
	__property bool IsStarred = {read=FIsStarred, nodefault};
	__property bool IsExternal = {read=FIsExternal, nodefault};
	__property bool IsPublic = {read=FIsPublic, nodefault};
	__property bool IsDisplayedAsBot = {read=FIsDisplayedAsBot, nodefault};
	__property int OriginalWidth = {read=FOriginalWidth, nodefault};
	__property int OriginalHeight = {read=FOriginalHeight, nodefault};
	__property System::UnicodeString Preview = {read=FPreview};
	__property System::UnicodeString PreviewHighlight = {read=FPreviewHighlight};
	__property int Lines = {read=FLines, nodefault};
	__property bool IsPreviewTruncated = {read=FIsPreviewTruncated, nodefault};
	__property int CommentsCount = {read=FCommentsCount, nodefault};
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
	/* TObject.Create */ inline __fastcall TTMSFNCCloudSlackFile() : System::TObject() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudSlackFiles : public System::Generics::Collections::TObjectList__1<TTMSFNCCloudSlackFile*>
{
	typedef System::Generics::Collections::TObjectList__1<TTMSFNCCloudSlackFile*> inherited;
	
public:
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudSlack_TTMSFNCCloudSlackFile>.Create */ inline __fastcall TTMSFNCCloudSlackFiles()/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudSlackFile*>() { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudSlack_TTMSFNCCloudSlackFile>.Create */ inline __fastcall TTMSFNCCloudSlackFiles(bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudSlackFile*>(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudSlack_TTMSFNCCloudSlackFile>.Create */ inline __fastcall TTMSFNCCloudSlackFiles(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCloudSlackFile*> > AComparer, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudSlackFile*>(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudSlack_TTMSFNCCloudSlackFile>.Create */ inline __fastcall TTMSFNCCloudSlackFiles(System::Generics::Collections::TEnumerable__1<TTMSFNCCloudSlackFile*>* const Collection, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudSlackFile*>(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudSlack_TTMSFNCCloudSlackFile>.Destroy */ inline __fastcall virtual ~TTMSFNCCloudSlackFiles() { }
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudSlack_TTMSFNCCloudSlackFile>.Create */ inline __fastcall TTMSFNCCloudSlackFiles(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCloudSlackFile*> > AComparer)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudSlackFile*>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudSlack_TTMSFNCCloudSlackFile>.Create */ inline __fastcall TTMSFNCCloudSlackFiles(System::Generics::Collections::TEnumerable__1<TTMSFNCCloudSlackFile*>* const Collection)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudSlackFile*>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudSlack_TTMSFNCCloudSlackFile>.Create */ inline __fastcall TTMSFNCCloudSlackFiles(TTMSFNCCloudSlackFile* const *Values, const int Values_High)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudSlackFile*>(Values, Values_High) { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudSlackMessage : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	bool FGetAllReplies;
	TTMSFNCCloudSlackConversation* FConversation;
	bool FIsStarred;
	System::UnicodeString FUserID;
	System::TDateTime FTimeStamp;
	System::UnicodeString FSubType;
	System::UnicodeString FText;
	bool FIsHidden;
	TTMSFNCCloudSlackFiles* FFiles;
	System::UnicodeString FClientMessageID;
	System::UnicodeString FType;
	System::UnicodeString FTeamID;
	System::TDateTime FEditTimeStamp;
	bool FIsEdited;
	System::UnicodeString FEditUser;
	System::TDateTime FLatestReply;
	TTMSFNCCloudSlackReplies* FReplies;
	bool FHasReplies;
	System::TDateTime FThreadTimeStamp;
	int FReplyUsersCount;
	int FReplyCount;
	System::TDateTime FLastRead;
	bool FSubscribed;
	TTMSFNCCloudSlackReactions* FReactions;
	
protected:
	TTMSFNCCloudSlackUser* __fastcall GetUser();
	virtual void __fastcall ParseJSONMessage(System::Json::TJSONValue* AJSONMessage);
	
public:
	__fastcall virtual TTMSFNCCloudSlackMessage(TTMSFNCCloudSlackConversation* AConversation);
	__fastcall virtual ~TTMSFNCCloudSlackMessage();
	virtual void __fastcall Reply(System::UnicodeString AText, System::UnicodeString IconURL = System::UnicodeString(), bool LinkNames = false, bool MarkUpParsing = false, bool ReplyBroadcast = false);
	virtual void __fastcall DeleteMessage();
	virtual void __fastcall GetAllReplies();
	virtual void __fastcall GetReplies(int ALimit = 0xa, System::UnicodeString ANextCursor = System::UnicodeString(), System::TDateTime Latest = 0.000000E+00, System::TDateTime Oldest = 0.000000E+00, bool Inclusive = false);
	__property TTMSFNCCloudSlackConversation* Conversation = {read=FConversation};
	__property System::UnicodeString ClientMessageID = {read=FClientMessageID};
	__property TTMSFNCCloudSlackUser* User = {read=GetUser};
	__property System::UnicodeString Type = {read=FType};
	__property System::UnicodeString SubType = {read=FSubType};
	__property System::UnicodeString UserID = {read=FUserID};
	__property System::TDateTime TimeStamp = {read=FTimeStamp};
	__property System::UnicodeString TeamID = {read=FTeamID};
	__property bool IsStarred = {read=FIsStarred, nodefault};
	__property System::UnicodeString Text = {read=FText};
	__property bool IsHidden = {read=FIsHidden, nodefault};
	__property bool IsEdited = {read=FIsEdited, nodefault};
	__property System::UnicodeString EditUser = {read=FEditUser};
	__property System::TDateTime EditTimeStamp = {read=FEditTimeStamp};
	__property TTMSFNCCloudSlackFiles* Files = {read=FFiles};
	__property bool HasReplies = {read=FHasReplies, nodefault};
	__property System::TDateTime ThreadTimeStamp = {read=FThreadTimeStamp};
	__property int ReplyCount = {read=FReplyCount, nodefault};
	__property int ReplyUsersCount = {read=FReplyUsersCount, nodefault};
	__property System::TDateTime LatestReply = {read=FLatestReply};
	__property TTMSFNCCloudSlackReplies* Replies = {read=FReplies};
	__property bool Subscribed = {read=FSubscribed, nodefault};
	__property System::TDateTime LastRead = {read=FLastRead};
	__property TTMSFNCCloudSlackReactions* Reactions = {read=FReactions};
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
	/* TObject.Create */ inline __fastcall TTMSFNCCloudSlackMessage() : System::TObject() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudSlackMessages : public System::Generics::Collections::TObjectList__1<TTMSFNCCloudSlackMessage*>
{
	typedef System::Generics::Collections::TObjectList__1<TTMSFNCCloudSlackMessage*> inherited;
	
private:
	System::UnicodeString FNextCursor;
	
public:
	__property System::UnicodeString NextCursor = {read=FNextCursor};
public:
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudSlack_TTMSFNCCloudSlackMessage>.Create */ inline __fastcall TTMSFNCCloudSlackMessages()/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudSlackMessage*>() { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudSlack_TTMSFNCCloudSlackMessage>.Create */ inline __fastcall TTMSFNCCloudSlackMessages(bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudSlackMessage*>(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudSlack_TTMSFNCCloudSlackMessage>.Create */ inline __fastcall TTMSFNCCloudSlackMessages(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCloudSlackMessage*> > AComparer, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudSlackMessage*>(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudSlack_TTMSFNCCloudSlackMessage>.Create */ inline __fastcall TTMSFNCCloudSlackMessages(System::Generics::Collections::TEnumerable__1<TTMSFNCCloudSlackMessage*>* const Collection, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudSlackMessage*>(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudSlack_TTMSFNCCloudSlackMessage>.Destroy */ inline __fastcall virtual ~TTMSFNCCloudSlackMessages() { }
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudSlack_TTMSFNCCloudSlackMessage>.Create */ inline __fastcall TTMSFNCCloudSlackMessages(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCloudSlackMessage*> > AComparer)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudSlackMessage*>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudSlack_TTMSFNCCloudSlackMessage>.Create */ inline __fastcall TTMSFNCCloudSlackMessages(System::Generics::Collections::TEnumerable__1<TTMSFNCCloudSlackMessage*>* const Collection)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudSlackMessage*>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudSlack_TTMSFNCCloudSlackMessage>.Create */ inline __fastcall TTMSFNCCloudSlackMessages(TTMSFNCCloudSlackMessage* const *Values, const int Values_High)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudSlackMessage*>(Values, Values_High) { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudSlackConversation : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	bool FGetAllMessages;
	TTMSFNCCustomCloudSlack* FSlack;
	System::UnicodeString FID;
	TTMSFNCCloudSlackConversationType FType;
	System::UnicodeString FName;
	bool FIsPrivate;
	bool FIsArchived;
	System::TDateTime FCreated;
	bool FIsOrganizationShared;
	TTMSFNCCloudSlackMessages* FMessages;
	bool FIsMember;
	bool FIsExternalShared;
	System::UnicodeString FTopic;
	bool FIsPendingExternalShared;
	System::UnicodeString FCreator;
	bool FIsShared;
	System::UnicodeString FPurpose;
	bool FIsGeneral;
	int FMembersCount;
	bool FIsReadOnly;
	void __fastcall SetFID(const System::UnicodeString Value);
	
protected:
	virtual void __fastcall ParseJSONConversation(System::Json::TJSONValue* AJSONConv);
	
public:
	__fastcall virtual TTMSFNCCloudSlackConversation(TTMSFNCCustomCloudSlack* ASlack);
	__fastcall virtual ~TTMSFNCCloudSlackConversation();
	void __fastcall GetMessages(int ALimit = 0x64, System::TDateTime Latest = 0.000000E+00, System::TDateTime Oldest = 0.000000E+00, bool Inclusive = false, System::UnicodeString ANextCursor = System::UnicodeString());
	void __fastcall GetAllMessages();
	void __fastcall PostMessage(System::UnicodeString AText, System::TDateTime AThreadTimeStamp = 0.000000E+00, System::UnicodeString IconURL = System::UnicodeString(), bool LinkNames = false, bool MarkUpParsing = false, bool ReplyBroadcast = false);
	void __fastcall UploadFile(const System::UnicodeString AFileName, System::UnicodeString AInitialComment = System::UnicodeString(), System::UnicodeString ATitle = System::UnicodeString());
	void __fastcall JoinConversation(bool UpdateConversation = false);
	__property System::UnicodeString ID = {read=FID, write=SetFID};
	__property System::UnicodeString Name = {read=FName};
	__property TTMSFNCCloudSlackConversationType Type = {read=FType, default=4};
	__property bool IsPrivate = {read=FIsPrivate, default=0};
	__property bool IsArchived = {read=FIsArchived, default=0};
	__property System::TDateTime Created = {read=FCreated};
	__property bool IsOrganizationShared = {read=FIsOrganizationShared, default=0};
	__property TTMSFNCCloudSlackMessages* Messages = {read=FMessages};
	__property bool IsMember = {read=FIsMember, default=0};
	__property System::UnicodeString Topic = {read=FTopic};
	__property System::UnicodeString Purpose = {read=FPurpose};
	__property bool IsPendingExternalShared = {read=FIsPendingExternalShared, nodefault};
	__property bool IsExternalShared = {read=FIsExternalShared, default=0};
	__property bool IsShared = {read=FIsShared, default=0};
	__property bool IsGeneral = {read=FIsGeneral, default=0};
	__property bool IsReadOnly = {read=FIsReadOnly, default=0};
	__property System::UnicodeString Creator = {read=FCreator};
	__property int MembersCount = {read=FMembersCount, nodefault};
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
	/* TObject.Create */ inline __fastcall TTMSFNCCloudSlackConversation() : System::TObject() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudSlackPublicChannel : public TTMSFNCCloudSlackConversation
{
	typedef TTMSFNCCloudSlackConversation inherited;
	
public:
	__fastcall virtual TTMSFNCCloudSlackPublicChannel(TTMSFNCCustomCloudSlack* ASlack);
public:
	/* TTMSFNCCloudSlackConversation.Destroy */ inline __fastcall virtual ~TTMSFNCCloudSlackPublicChannel() { }
	
public:
	/* TObject.Create */ inline __fastcall TTMSFNCCloudSlackPublicChannel() : TTMSFNCCloudSlackConversation() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudSlackPrivateChannel : public TTMSFNCCloudSlackConversation
{
	typedef TTMSFNCCloudSlackConversation inherited;
	
public:
	__fastcall virtual TTMSFNCCloudSlackPrivateChannel(TTMSFNCCustomCloudSlack* ASlack);
public:
	/* TTMSFNCCloudSlackConversation.Destroy */ inline __fastcall virtual ~TTMSFNCCloudSlackPrivateChannel() { }
	
public:
	/* TObject.Create */ inline __fastcall TTMSFNCCloudSlackPrivateChannel() : TTMSFNCCloudSlackConversation() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudSlackInstantMessage : public TTMSFNCCloudSlackConversation
{
	typedef TTMSFNCCloudSlackConversation inherited;
	
private:
	bool FIsUserDeleted;
	int FPriority;
	
public:
	__fastcall virtual TTMSFNCCloudSlackInstantMessage(TTMSFNCCustomCloudSlack* ASlack);
	__property int Priority = {read=FPriority, default=0};
	__property bool IsUserDeleted = {read=FIsUserDeleted, default=0};
public:
	/* TTMSFNCCloudSlackConversation.Destroy */ inline __fastcall virtual ~TTMSFNCCloudSlackInstantMessage() { }
	
public:
	/* TObject.Create */ inline __fastcall TTMSFNCCloudSlackInstantMessage() : TTMSFNCCloudSlackConversation() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudSlackMultiPartyInstantMessage : public TTMSFNCCloudSlackConversation
{
	typedef TTMSFNCCloudSlackConversation inherited;
	
public:
	__fastcall virtual TTMSFNCCloudSlackMultiPartyInstantMessage(TTMSFNCCustomCloudSlack* ASlack);
public:
	/* TTMSFNCCloudSlackConversation.Destroy */ inline __fastcall virtual ~TTMSFNCCloudSlackMultiPartyInstantMessage() { }
	
public:
	/* TObject.Create */ inline __fastcall TTMSFNCCloudSlackMultiPartyInstantMessage() : TTMSFNCCloudSlackConversation() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudSlackConversations : public System::Generics::Collections::TObjectList__1<TTMSFNCCloudSlackConversation*>
{
	typedef System::Generics::Collections::TObjectList__1<TTMSFNCCloudSlackConversation*> inherited;
	
private:
	System::UnicodeString FNextCursor;
	
public:
	__property System::UnicodeString NextCursor = {read=FNextCursor};
	TTMSFNCCloudSlackConversation* __fastcall GetConversationByID(const System::UnicodeString AID);
public:
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudSlack_TTMSFNCCloudSlackConversation>.Create */ inline __fastcall TTMSFNCCloudSlackConversations()/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudSlackConversation*>() { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudSlack_TTMSFNCCloudSlackConversation>.Create */ inline __fastcall TTMSFNCCloudSlackConversations(bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudSlackConversation*>(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudSlack_TTMSFNCCloudSlackConversation>.Create */ inline __fastcall TTMSFNCCloudSlackConversations(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCloudSlackConversation*> > AComparer, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudSlackConversation*>(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudSlack_TTMSFNCCloudSlackConversation>.Create */ inline __fastcall TTMSFNCCloudSlackConversations(System::Generics::Collections::TEnumerable__1<TTMSFNCCloudSlackConversation*>* const Collection, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudSlackConversation*>(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudSlack_TTMSFNCCloudSlackConversation>.Destroy */ inline __fastcall virtual ~TTMSFNCCloudSlackConversations() { }
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudSlack_TTMSFNCCloudSlackConversation>.Create */ inline __fastcall TTMSFNCCloudSlackConversations(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCloudSlackConversation*> > AComparer)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudSlackConversation*>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudSlack_TTMSFNCCloudSlackConversation>.Create */ inline __fastcall TTMSFNCCloudSlackConversations(System::Generics::Collections::TEnumerable__1<TTMSFNCCloudSlackConversation*>* const Collection)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudSlackConversation*>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudSlack_TTMSFNCCloudSlackConversation>.Create */ inline __fastcall TTMSFNCCloudSlackConversations(TTMSFNCCloudSlackConversation* const *Values, const int Values_High)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudSlackConversation*>(Values, Values_High) { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudSlackPublicChannels : public TTMSFNCCloudSlackConversations
{
	typedef TTMSFNCCloudSlackConversations inherited;
	
public:
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudSlack_TTMSFNCCloudSlackConversation>.Create */ inline __fastcall TTMSFNCCloudSlackPublicChannels()/* overload */ : TTMSFNCCloudSlackConversations() { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudSlack_TTMSFNCCloudSlackConversation>.Create */ inline __fastcall TTMSFNCCloudSlackPublicChannels(bool AOwnsObjects)/* overload */ : TTMSFNCCloudSlackConversations(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudSlack_TTMSFNCCloudSlackConversation>.Create */ inline __fastcall TTMSFNCCloudSlackPublicChannels(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCloudSlackConversation*> > AComparer, bool AOwnsObjects)/* overload */ : TTMSFNCCloudSlackConversations(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudSlack_TTMSFNCCloudSlackConversation>.Create */ inline __fastcall TTMSFNCCloudSlackPublicChannels(System::Generics::Collections::TEnumerable__1<TTMSFNCCloudSlackConversation*>* const Collection, bool AOwnsObjects)/* overload */ : TTMSFNCCloudSlackConversations(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudSlack_TTMSFNCCloudSlackConversation>.Destroy */ inline __fastcall virtual ~TTMSFNCCloudSlackPublicChannels() { }
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudSlack_TTMSFNCCloudSlackConversation>.Create */ inline __fastcall TTMSFNCCloudSlackPublicChannels(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCloudSlackConversation*> > AComparer)/* overload */ : TTMSFNCCloudSlackConversations(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudSlack_TTMSFNCCloudSlackConversation>.Create */ inline __fastcall TTMSFNCCloudSlackPublicChannels(System::Generics::Collections::TEnumerable__1<TTMSFNCCloudSlackConversation*>* const Collection)/* overload */ : TTMSFNCCloudSlackConversations(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudSlack_TTMSFNCCloudSlackConversation>.Create */ inline __fastcall TTMSFNCCloudSlackPublicChannels(TTMSFNCCloudSlackConversation* const *Values, const int Values_High)/* overload */ : TTMSFNCCloudSlackConversations(Values, Values_High) { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudSlackPrivateChannels : public TTMSFNCCloudSlackConversations
{
	typedef TTMSFNCCloudSlackConversations inherited;
	
public:
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudSlack_TTMSFNCCloudSlackConversation>.Create */ inline __fastcall TTMSFNCCloudSlackPrivateChannels()/* overload */ : TTMSFNCCloudSlackConversations() { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudSlack_TTMSFNCCloudSlackConversation>.Create */ inline __fastcall TTMSFNCCloudSlackPrivateChannels(bool AOwnsObjects)/* overload */ : TTMSFNCCloudSlackConversations(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudSlack_TTMSFNCCloudSlackConversation>.Create */ inline __fastcall TTMSFNCCloudSlackPrivateChannels(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCloudSlackConversation*> > AComparer, bool AOwnsObjects)/* overload */ : TTMSFNCCloudSlackConversations(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudSlack_TTMSFNCCloudSlackConversation>.Create */ inline __fastcall TTMSFNCCloudSlackPrivateChannels(System::Generics::Collections::TEnumerable__1<TTMSFNCCloudSlackConversation*>* const Collection, bool AOwnsObjects)/* overload */ : TTMSFNCCloudSlackConversations(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudSlack_TTMSFNCCloudSlackConversation>.Destroy */ inline __fastcall virtual ~TTMSFNCCloudSlackPrivateChannels() { }
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudSlack_TTMSFNCCloudSlackConversation>.Create */ inline __fastcall TTMSFNCCloudSlackPrivateChannels(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCloudSlackConversation*> > AComparer)/* overload */ : TTMSFNCCloudSlackConversations(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudSlack_TTMSFNCCloudSlackConversation>.Create */ inline __fastcall TTMSFNCCloudSlackPrivateChannels(System::Generics::Collections::TEnumerable__1<TTMSFNCCloudSlackConversation*>* const Collection)/* overload */ : TTMSFNCCloudSlackConversations(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudSlack_TTMSFNCCloudSlackConversation>.Create */ inline __fastcall TTMSFNCCloudSlackPrivateChannels(TTMSFNCCloudSlackConversation* const *Values, const int Values_High)/* overload */ : TTMSFNCCloudSlackConversations(Values, Values_High) { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudSlackInstantMessages : public TTMSFNCCloudSlackConversations
{
	typedef TTMSFNCCloudSlackConversations inherited;
	
public:
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudSlack_TTMSFNCCloudSlackConversation>.Create */ inline __fastcall TTMSFNCCloudSlackInstantMessages()/* overload */ : TTMSFNCCloudSlackConversations() { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudSlack_TTMSFNCCloudSlackConversation>.Create */ inline __fastcall TTMSFNCCloudSlackInstantMessages(bool AOwnsObjects)/* overload */ : TTMSFNCCloudSlackConversations(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudSlack_TTMSFNCCloudSlackConversation>.Create */ inline __fastcall TTMSFNCCloudSlackInstantMessages(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCloudSlackConversation*> > AComparer, bool AOwnsObjects)/* overload */ : TTMSFNCCloudSlackConversations(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudSlack_TTMSFNCCloudSlackConversation>.Create */ inline __fastcall TTMSFNCCloudSlackInstantMessages(System::Generics::Collections::TEnumerable__1<TTMSFNCCloudSlackConversation*>* const Collection, bool AOwnsObjects)/* overload */ : TTMSFNCCloudSlackConversations(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudSlack_TTMSFNCCloudSlackConversation>.Destroy */ inline __fastcall virtual ~TTMSFNCCloudSlackInstantMessages() { }
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudSlack_TTMSFNCCloudSlackConversation>.Create */ inline __fastcall TTMSFNCCloudSlackInstantMessages(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCloudSlackConversation*> > AComparer)/* overload */ : TTMSFNCCloudSlackConversations(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudSlack_TTMSFNCCloudSlackConversation>.Create */ inline __fastcall TTMSFNCCloudSlackInstantMessages(System::Generics::Collections::TEnumerable__1<TTMSFNCCloudSlackConversation*>* const Collection)/* overload */ : TTMSFNCCloudSlackConversations(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudSlack_TTMSFNCCloudSlackConversation>.Create */ inline __fastcall TTMSFNCCloudSlackInstantMessages(TTMSFNCCloudSlackConversation* const *Values, const int Values_High)/* overload */ : TTMSFNCCloudSlackConversations(Values, Values_High) { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudSlackMultiPartyInstantMessages : public TTMSFNCCloudSlackConversations
{
	typedef TTMSFNCCloudSlackConversations inherited;
	
public:
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudSlack_TTMSFNCCloudSlackConversation>.Create */ inline __fastcall TTMSFNCCloudSlackMultiPartyInstantMessages()/* overload */ : TTMSFNCCloudSlackConversations() { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudSlack_TTMSFNCCloudSlackConversation>.Create */ inline __fastcall TTMSFNCCloudSlackMultiPartyInstantMessages(bool AOwnsObjects)/* overload */ : TTMSFNCCloudSlackConversations(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudSlack_TTMSFNCCloudSlackConversation>.Create */ inline __fastcall TTMSFNCCloudSlackMultiPartyInstantMessages(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCloudSlackConversation*> > AComparer, bool AOwnsObjects)/* overload */ : TTMSFNCCloudSlackConversations(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudSlack_TTMSFNCCloudSlackConversation>.Create */ inline __fastcall TTMSFNCCloudSlackMultiPartyInstantMessages(System::Generics::Collections::TEnumerable__1<TTMSFNCCloudSlackConversation*>* const Collection, bool AOwnsObjects)/* overload */ : TTMSFNCCloudSlackConversations(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudSlack_TTMSFNCCloudSlackConversation>.Destroy */ inline __fastcall virtual ~TTMSFNCCloudSlackMultiPartyInstantMessages() { }
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudSlack_TTMSFNCCloudSlackConversation>.Create */ inline __fastcall TTMSFNCCloudSlackMultiPartyInstantMessages(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCloudSlackConversation*> > AComparer)/* overload */ : TTMSFNCCloudSlackConversations(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudSlack_TTMSFNCCloudSlackConversation>.Create */ inline __fastcall TTMSFNCCloudSlackMultiPartyInstantMessages(System::Generics::Collections::TEnumerable__1<TTMSFNCCloudSlackConversation*>* const Collection)/* overload */ : TTMSFNCCloudSlackConversations(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudSlack_TTMSFNCCloudSlackConversation>.Create */ inline __fastcall TTMSFNCCloudSlackMultiPartyInstantMessages(TTMSFNCCloudSlackConversation* const *Values, const int Values_High)/* overload */ : TTMSFNCCloudSlackConversations(Values, Values_High) { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCustomCloudSlack : public Fmx::Tmsfnccloudoauth::TTMSFNCCloudOAuth
{
	typedef Fmx::Tmsfnccloudoauth::TTMSFNCCloudOAuth inherited;
	
private:
	bool FGetAllConversations;
	bool FGetAllUsers;
	System::UnicodeString FCurrentUserName;
	System::UnicodeString FCurrentUserID;
	TTMSFNCCloudSlackConversations* FConversations;
	TTMSFNCCloudSlackGetConversationsEvent FOnGetConversations;
	TTMSFNCCloudSlackGetConversationsEvent FOnGetAllConversations;
	TTMSFNCCloudSlackGetConversationHistoryEvent FOnGetConversationHistory;
	TTMSFNCCloudSlackGetFileEvent FOnGetFile;
	TTMSFNCCloudSlackGetUsersEvent FOnGetUsers;
	TTMSFNCCloudSlackGetUsersEvent FOnGetAllUsers;
	TTMSFNCCloudSlackUsers* FUsers;
	TTMSFNCCloudSlackUploadFileEvent FOnUploadFile;
	TTMSFNCCloudSlackPostMessageEvent FOnPostMessage;
	TTMSFNCCloudSlackJoinConversationEvent FOnJoinConversation;
	TTMSFNCCloudSlackProfileImageSizes FProfileImageSize;
	TTMSFNCCloudSlackGetProfilePictureEvent FOnGetProfilePicture;
	TTMSFNCCloudSlackGetUserConversationsEvent FOnGetUserConversations;
	TTMSFNCCloudSlackGetUserConversationsEvent FOnGetAllUserConversations;
	TTMSFNCCloudSlackDeleteMessageEvent FOnDeleteMessage;
	TTMSFNCCloudSlackGetMessageRepliesEvent FOnGetMessageReplies;
	TTMSFNCCloudSlackGetMessageRepliesEvent FOnGetAllMessageReplies;
	TTMSFNCCloudSlackPostReplyEvent FOnPostReply;
	TTMSFNCCloudSlackGetUserInformationEvent FOnGetUserInformation;
	void __fastcall SetProfileImageSize(const TTMSFNCCloudSlackProfileImageSizes Value);
	
protected:
	virtual System::UnicodeString __fastcall GetVersion();
	virtual System::UnicodeString __fastcall GetAuthenticationURL();
	virtual void __fastcall RetrieveAccessToken();
	virtual System::UnicodeString __fastcall GetAccessToken(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	TTMSFNCCloudSlackPublicChannels* __fastcall GetPublicChannels();
	void __fastcall DoRequestGetConversations(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoGetConversations(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult, TTMSFNCCloudSlackConversations* Conversations, System::UnicodeString ErrorMessage);
	virtual void __fastcall DoGetAllConversations(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult, TTMSFNCCloudSlackConversations* Conversations, System::UnicodeString ErrorMessage);
	void __fastcall DoRequestGetConversationHistory(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoGetConversationHistory(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult, TTMSFNCCloudSlackConversation* AConversation, TTMSFNCCloudSlackMessages* Messages, System::UnicodeString ErrorMessage);
	virtual void __fastcall DoGetAllConversationHistory(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult, TTMSFNCCloudSlackConversation* AConversation, TTMSFNCCloudSlackMessages* Messages, System::UnicodeString ErrorMessage);
	virtual void __fastcall DoGetFile(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult, TTMSFNCCloudSlackMessage* AMessage, TTMSFNCCloudSlackFile* AFile, System::Classes::TMemoryStream* AFileStream);
	void __fastcall DoRequestGetFile(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoGetUsers(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult, TTMSFNCCloudSlackUsers* AUsers, System::UnicodeString ErrorMessage);
	virtual void __fastcall DoGetAllUsers(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult, TTMSFNCCloudSlackUsers* AUsers, System::UnicodeString ErrorMessage);
	void __fastcall DoRequestGetUsers(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoUploadFile(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult, TTMSFNCCloudSlackFile* AFile, System::UnicodeString ErrorMessage);
	void __fastcall DoRequestUploadFile(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoPostMessage(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult, TTMSFNCCloudSlackConversation* AConversation, TTMSFNCCloudSlackMessage* AMessage, System::UnicodeString ErrorMessage);
	void __fastcall DoPostReply(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult, TTMSFNCCloudSlackMessage* AMessage, TTMSFNCCloudSlackReply* AReply, System::UnicodeString ErrorMessage);
	void __fastcall DoRequestPostMessage(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoJoinConversation(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult, bool JoinedConversation, TTMSFNCCloudSlackConversation* AConversation, System::UnicodeString WarningMessage, System::UnicodeString ErrorMessage);
	void __fastcall DoRequestJoinConversation(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoGetProfilePicture(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult, TTMSFNCCloudSlackUser* AUser, TTMSFNCCloudSlackProfile* AProfile, System::Classes::TMemoryStream* AProfilePictureStream);
	void __fastcall DoRequestGetProfilePicture(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestGetUserConversations(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoGetUserConversations(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult, TTMSFNCCloudSlackConversations* Conversations, TTMSFNCCloudSlackUser* AUser, System::UnicodeString ErrorMessage);
	virtual void __fastcall DoGetAllUserConversations(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult, TTMSFNCCloudSlackConversations* Conversations, TTMSFNCCloudSlackUser* AUser, System::UnicodeString ErrorMessage);
	void __fastcall DoRequestDeleteMessage(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoDeleteMessage(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult, bool MessageDeleted, TTMSFNCCloudSlackConversation* AConversation, System::UnicodeString ErrorMessage);
	void __fastcall DoRequestGetMessageReplies(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoGetMessageReplies(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult, TTMSFNCCloudSlackMessage* AMessage, System::UnicodeString ErrorMessage);
	virtual void __fastcall DoGetAllMessageReplies(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult, TTMSFNCCloudSlackMessage* AMessage, System::UnicodeString ErrorMessage);
	void __fastcall DoRequestGetUserInformation(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoGetUserInformation(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult, TTMSFNCCloudSlackUser* AUser, System::UnicodeString ErrorMessage);
	__property TTMSFNCCloudSlackGetConversationsEvent OnGetConversations = {read=FOnGetConversations, write=FOnGetConversations};
	__property TTMSFNCCloudSlackGetConversationsEvent OnGetAllConversations = {read=FOnGetAllConversations, write=FOnGetAllConversations};
	__property TTMSFNCCloudSlackGetConversationHistoryEvent OnGetConversationHistory = {read=FOnGetConversationHistory, write=FOnGetConversationHistory};
	__property TTMSFNCCloudSlackGetConversationHistoryEvent OnGetAllConversationHistory = {read=FOnGetConversationHistory, write=FOnGetConversationHistory};
	__property TTMSFNCCloudSlackGetFileEvent OnGetFile = {read=FOnGetFile, write=FOnGetFile};
	__property TTMSFNCCloudSlackGetUsersEvent OnGetUsers = {read=FOnGetUsers, write=FOnGetUsers};
	__property TTMSFNCCloudSlackGetUsersEvent OnGetAllUsers = {read=FOnGetAllUsers, write=FOnGetAllUsers};
	__property TTMSFNCCloudSlackUploadFileEvent OnUploadFile = {read=FOnUploadFile, write=FOnUploadFile};
	__property TTMSFNCCloudSlackPostMessageEvent OnPostMessage = {read=FOnPostMessage, write=FOnPostMessage};
	__property TTMSFNCCloudSlackPostReplyEvent OnPostReply = {read=FOnPostReply, write=FOnPostReply};
	__property TTMSFNCCloudSlackJoinConversationEvent OnJoinConversation = {read=FOnJoinConversation, write=FOnJoinConversation};
	__property TTMSFNCCloudSlackGetProfilePictureEvent OnGetProfilePicture = {read=FOnGetProfilePicture, write=FOnGetProfilePicture};
	__property TTMSFNCCloudSlackGetUserConversationsEvent OnGetUserConversations = {read=FOnGetUserConversations, write=FOnGetUserConversations};
	__property TTMSFNCCloudSlackGetUserConversationsEvent OnGetAllUserConversations = {read=FOnGetAllUserConversations, write=FOnGetAllUserConversations};
	__property TTMSFNCCloudSlackDeleteMessageEvent OnDeleteMessage = {read=FOnDeleteMessage, write=FOnDeleteMessage};
	__property TTMSFNCCloudSlackGetMessageRepliesEvent OnGetMessageReplies = {read=FOnGetMessageReplies, write=FOnGetMessageReplies};
	__property TTMSFNCCloudSlackGetMessageRepliesEvent OnGetAllMessageReplies = {read=FOnGetAllMessageReplies, write=FOnGetAllMessageReplies};
	__property TTMSFNCCloudSlackGetUserInformationEvent OnGetUserInformation = {read=FOnGetUserInformation, write=FOnGetUserInformation};
	__property TTMSFNCCloudSlackConversations* Conversations = {read=FConversations, write=FConversations};
	__property System::UnicodeString CurrentUserName = {read=FCurrentUserName};
	__property System::UnicodeString CurrentUserID = {read=FCurrentUserID};
	__property TTMSFNCCloudSlackUsers* Users = {read=FUsers};
	__property TTMSFNCCloudSlackProfileImageSizes ProfileImageSize = {read=FProfileImageSize, write=SetProfileImageSize, default=0};
	
public:
	__fastcall virtual TTMSFNCCustomCloudSlack(System::Classes::TComponent* AOwner)/* overload */;
	__fastcall virtual ~TTMSFNCCustomCloudSlack();
	virtual void __fastcall TestTokens(const Fmx::Tmsfnccloudbase::_di_TTMSFNCCloudBaseRequestResultEvent ATestTokensRequestResultEvent = Fmx::Tmsfnccloudbase::_di_TTMSFNCCloudBaseRequestResultEvent());
	virtual bool __fastcall GetTestTokensResult(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall GetAllConversations();
	virtual void __fastcall GetConversations(int ALimit = 0x64, TTMSFNCCloudSlackConversationTypes ATypes = (TTMSFNCCloudSlackConversationTypes() << TTMSFNCCloudSlackConversationType::sctPublicChannel ), bool ExcludeArchived = false, System::UnicodeString ANextCursor = System::UnicodeString());
	virtual void __fastcall GetConversationHistory(System::UnicodeString AConversationID, int ALimit = 0x64, System::TDateTime Latest = 0.000000E+00, System::TDateTime Oldest = 0.000000E+00, bool Inclusive = false, System::UnicodeString ANextCursor = System::UnicodeString())/* overload */;
	virtual void __fastcall GetConversationHistory(TTMSFNCCloudSlackConversation* AConversation, int ALimit = 0x64, System::TDateTime Latest = 0.000000E+00, System::TDateTime Oldest = 0.000000E+00, bool Inclusive = false, System::UnicodeString ANextCursor = System::UnicodeString())/* overload */;
	virtual void __fastcall GetAllConversationHistory(System::UnicodeString AConversationID)/* overload */;
	virtual void __fastcall GetAllConversationHistory(TTMSFNCCloudSlackConversation* AConversation)/* overload */;
	virtual void __fastcall GetUserInformation(System::UnicodeString AUserID, bool IncludeLocale = false);
	virtual void __fastcall GetUsers(int ALimit = 0x64, bool IncludeLocale = false, System::UnicodeString ANextCursor = System::UnicodeString());
	virtual void __fastcall GetAllUsers();
	virtual void __fastcall UploadFile(const System::UnicodeString AFileName, TTMSFNCCloudSlackConversations* AConversations = (TTMSFNCCloudSlackConversations*)(0x0), System::UnicodeString ATitle = System::UnicodeString(), System::UnicodeString AInitialComment = System::UnicodeString());
	virtual void __fastcall PostMessage(TTMSFNCCloudSlackConversation* AConversation, System::UnicodeString AText, System::TDateTime AThreadTimeStamp = 0.000000E+00, System::UnicodeString IconURL = System::UnicodeString(), bool LinkNames = false, bool MarkUpParsing = false, bool ReplyBroadcast = false)/* overload */;
	virtual void __fastcall PostMessage(System::UnicodeString AConversationID, System::UnicodeString AText, System::TDateTime AThreadTimeStamp = 0.000000E+00, System::UnicodeString IconURL = System::UnicodeString(), bool LinkNames = false, bool MarkUpParsing = false, bool ReplyBroadcast = false)/* overload */;
	virtual void __fastcall JoinConversation(TTMSFNCCloudSlackConversation* AConversation, bool UpdateConversation = false)/* overload */;
	virtual void __fastcall JoinConversation(System::UnicodeString AConversationID, bool UpdateConversation = false)/* overload */;
	virtual void __fastcall GetAllUserConversations(TTMSFNCCloudSlackUser* AUser = (TTMSFNCCloudSlackUser*)(0x0));
	virtual void __fastcall GetUserConversations(TTMSFNCCloudSlackUser* AUser = (TTMSFNCCloudSlackUser*)(0x0), int ALimit = 0x64, TTMSFNCCloudSlackConversationTypes ATypes = (TTMSFNCCloudSlackConversationTypes() << TTMSFNCCloudSlackConversationType::sctPublicChannel ), bool ExcludeArchived = false, System::UnicodeString ANextCursor = System::UnicodeString())/* overload */;
	virtual void __fastcall GetUserConversations(System::UnicodeString AUserID = System::UnicodeString(), int ALimit = 0x64, TTMSFNCCloudSlackConversationTypes ATypes = (TTMSFNCCloudSlackConversationTypes() << TTMSFNCCloudSlackConversationType::sctPublicChannel ), bool ExcludeArchived = false, System::UnicodeString ANextCursor = System::UnicodeString())/* overload */;
	virtual void __fastcall DeleteMessage(TTMSFNCCloudSlackMessage* AMessage);
	void __fastcall GetAllMessageReplies(TTMSFNCCloudSlackMessage* AMessage);
	virtual void __fastcall GetMessageReplies(TTMSFNCCloudSlackMessage* AMessage, int ALimit = 0xa, System::UnicodeString ANextCursor = System::UnicodeString(), System::TDateTime Latest = 0.000000E+00, System::TDateTime Oldest = 0.000000E+00, bool Inclusive = false);
	virtual void __fastcall DownloadFile(TTMSFNCCloudSlackFile* AFile);
	virtual void __fastcall PostReply(TTMSFNCCloudSlackMessage* AMessage, System::UnicodeString AText, System::UnicodeString IconURL = System::UnicodeString(), bool LinkNames = false, bool MarkUpParsing = false, bool ReplyBroadcast = false);
	virtual void __fastcall DownloadProfilePicture(TTMSFNCCloudSlackUser* AUser)/* overload */;
	virtual void __fastcall DownloadProfilePicture(System::UnicodeString AUserID)/* overload */;
	virtual void __fastcall DownloadProfilePicture(TTMSFNCCloudSlackProfile* AUserProfile)/* overload */;
public:
	/* TTMSFNCCustomCloudOAuth.Create */ inline __fastcall virtual TTMSFNCCustomCloudSlack()/* overload */ : Fmx::Tmsfnccloudoauth::TTMSFNCCloudOAuth() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudSlack : public TTMSFNCCustomCloudSlack
{
	typedef TTMSFNCCustomCloudSlack inherited;
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	
public:
	__property CurrentUserName = {default=0};
	__property CurrentUserID = {default=0};
	__property Users;
	__property Conversations;
	__property ProfileImageSize = {default=0};
	
__published:
	__property OnGetConversations;
	__property OnGetAllConversations;
	__property OnGetConversationHistory;
	__property OnGetAllConversationHistory;
	__property OnGetUsers;
	__property OnGetAllUsers;
	__property OnGetFile;
	__property OnPostMessage;
	__property OnUploadFile;
	__property OnJoinConversation;
	__property OnGetProfilePicture;
	__property OnGetUserConversations;
	__property OnGetAllUserConversations;
	__property OnDeleteMessage;
	__property OnGetMessageReplies;
	__property OnGetAllMessageReplies;
	__property OnPostReply;
	__property OnGetUserInformation;
public:
	/* TTMSFNCCustomCloudSlack.Create */ inline __fastcall virtual TTMSFNCCloudSlack(System::Classes::TComponent* AOwner)/* overload */ : TTMSFNCCustomCloudSlack(AOwner) { }
	/* TTMSFNCCustomCloudSlack.Destroy */ inline __fastcall virtual ~TTMSFNCCloudSlack() { }
	
public:
	/* TTMSFNCCustomCloudOAuth.Create */ inline __fastcall virtual TTMSFNCCloudSlack()/* overload */ : TTMSFNCCustomCloudSlack() { }
	
};


//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x0);
static constexpr System::Int8 BLD_VER = System::Int8(0x0);
}	/* namespace Tmsfnccloudslack */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCCLOUDSLACK)
using namespace Fmx::Tmsfnccloudslack;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfnccloudslackHPP
