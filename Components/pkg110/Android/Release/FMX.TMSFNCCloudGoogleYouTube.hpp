// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCCloudGoogleYouTube.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfnccloudgoogleyoutubeHPP
#define Fmx_TmsfnccloudgoogleyoutubeHPP

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
namespace Tmsfnccloudgoogleyoutube
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCCloudGoogleYouTubeVideo;
class DELPHICLASS TTMSFNCCloudGoogleYouTubeVideos;
class DELPHICLASS TTMSFNCCloudGoogleYouTubeCommentThread;
class DELPHICLASS TTMSFNCCloudGoogleYouTubeCommentThreads;
class DELPHICLASS TTMSFNCCloudGoogleYouTubeReply;
class DELPHICLASS TTMSFNCCloudGoogleYouTubeReplies;
class DELPHICLASS TTMSFNCCustomCloudGoogleYouTube;
class DELPHICLASS TTMSFNCCloudGoogleYouTube;
//-- type declarations -------------------------------------------------------
enum DECLSPEC_DENUM TTMSFNCCloudGoogleYouTubeRating : unsigned char { yrDislike, yrLike, yrNone, yrUnspecified };

class PASCALIMPLEMENTATION TTMSFNCCloudGoogleYouTubeVideo : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	TTMSFNCCloudGoogleYouTubeVideos* FOwner;
	System::UnicodeString FID;
	System::UnicodeString FTitle;
	System::UnicodeString FImageURL;
	System::UnicodeString FDescription;
	System::UnicodeString FChannelID;
	System::TDateTime FPublishDate;
	TTMSFNCCloudGoogleYouTubeRating FRating;
	System::UnicodeString FLink;
	int FCategoryID;
	System::UnicodeString FChannelTitle;
	void __fastcall SetID(const System::UnicodeString Value);
	void __fastcall SetTitle(const System::UnicodeString Value);
	void __fastcall SetChannelID(const System::UnicodeString Value);
	void __fastcall SetDescription(const System::UnicodeString Value);
	void __fastcall SetImageURL(const System::UnicodeString Value);
	void __fastcall SetPublishDate(const System::TDateTime Value);
	void __fastcall SetRating(const TTMSFNCCloudGoogleYouTubeRating Value);
	void __fastcall SetLink(const System::UnicodeString Value);
	void __fastcall SetCategoryID(const int Value);
	void __fastcall SetChannelTitle(const System::UnicodeString Value);
	
public:
	__fastcall virtual TTMSFNCCloudGoogleYouTubeVideo(System::Classes::TCollection* Collection);
	__fastcall virtual ~TTMSFNCCloudGoogleYouTubeVideo();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	void __fastcall FromJSON(System::Json::TJSONValue* jo);
	void __fastcall GetCommentThreads();
	
protected:
	virtual System::UnicodeString __fastcall GetDisplayName();
	
__published:
	__property System::UnicodeString ID = {read=FID, write=SetID};
	__property int CategoryID = {read=FCategoryID, write=SetCategoryID, nodefault};
	__property System::UnicodeString Title = {read=FTitle, write=SetTitle};
	__property System::UnicodeString Description = {read=FDescription, write=SetDescription};
	__property System::TDateTime PublishDate = {read=FPublishDate, write=SetPublishDate};
	__property System::UnicodeString ChannelID = {read=FChannelID, write=SetChannelID};
	__property System::UnicodeString ChannelTitle = {read=FChannelTitle, write=SetChannelTitle};
	__property System::UnicodeString ImageURL = {read=FImageURL, write=SetImageURL};
	__property System::UnicodeString Link = {read=FLink, write=SetLink};
	__property TTMSFNCCloudGoogleYouTubeRating Rating = {read=FRating, write=SetRating, nodefault};
};


#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudGoogleYouTubeVideos : public System::Classes::TCollection
{
	typedef System::Classes::TCollection inherited;
	
public:
	TTMSFNCCloudGoogleYouTubeVideo* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCCustomCloudGoogleYouTube* FOwner;
	System::UnicodeString FNextPageToken;
	TTMSFNCCloudGoogleYouTubeVideo* __fastcall GetItems(int Index);
	void __fastcall SetItems(int Index, TTMSFNCCloudGoogleYouTubeVideo* const Value);
	
protected:
	virtual void __fastcall Update(System::Classes::TCollectionItem* Item);
	
public:
	__fastcall TTMSFNCCloudGoogleYouTubeVideos(TTMSFNCCustomCloudGoogleYouTube* AOwner);
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	HIDESBASE TTMSFNCCloudGoogleYouTubeVideo* __fastcall Add();
	HIDESBASE TTMSFNCCloudGoogleYouTubeVideo* __fastcall Insert(int Index);
	__property TTMSFNCCloudGoogleYouTubeVideo* Items[int Index] = {read=GetItems, write=SetItems/*, default*/};
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCCloudGoogleYouTubeVideos() { }
	
};

#pragma pack(pop)

class PASCALIMPLEMENTATION TTMSFNCCloudGoogleYouTubeCommentThread : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	TTMSFNCCloudGoogleYouTubeCommentThreads* FOwner;
	System::TDateTime FPublishDate;
	bool FCanRate;
	bool FIsPublic;
	bool FCanReply;
	System::UnicodeString FVideoID;
	int FTotalReplyCount;
	System::UnicodeString FID;
	System::UnicodeString FTextOriginal;
	System::UnicodeString FTextDisplay;
	System::TDateTime FUpdateDate;
	int FLikeCount;
	TTMSFNCCloudGoogleYouTubeReplies* FReplies;
	System::UnicodeString FAuthorDisplayName;
	System::UnicodeString FAuthorChannelUrl;
	System::UnicodeString FAuthorImageUrl;
	System::UnicodeString FAuthorChannelId;
	TTMSFNCCloudGoogleYouTubeRating FViewerRating;
	void __fastcall SetCanRate(const bool Value);
	void __fastcall SetCanReply(const bool Value);
	void __fastcall SetID(const System::UnicodeString Value);
	void __fastcall SetIsPublic(const bool Value);
	void __fastcall SetLikeCount(const int Value);
	void __fastcall SetPublishDate(const System::TDateTime Value);
	void __fastcall SetTextDisplay(const System::UnicodeString Value);
	void __fastcall SetTextOriginal(const System::UnicodeString Value);
	void __fastcall SetTotalReplyCount(const int Value);
	void __fastcall SetUpdateDate(const System::TDateTime Value);
	void __fastcall SetVideoID(const System::UnicodeString Value);
	void __fastcall SetViewerRating(const TTMSFNCCloudGoogleYouTubeRating Value);
	void __fastcall SetReplies(TTMSFNCCloudGoogleYouTubeReplies* const Value);
	void __fastcall SetAuthorDisplayName(const System::UnicodeString Value);
	void __fastcall SetAuthorChannelId(const System::UnicodeString Value);
	void __fastcall SetAuthorChannelUrl(const System::UnicodeString Value);
	void __fastcall SetAuthorImageUrl(const System::UnicodeString Value);
	
public:
	__fastcall virtual TTMSFNCCloudGoogleYouTubeCommentThread(System::Classes::TCollection* Collection);
	__fastcall virtual ~TTMSFNCCloudGoogleYouTubeCommentThread();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	void __fastcall FromJSON(System::Json::TJSONValue* jo);
	
__published:
	__property System::UnicodeString ID = {read=FID, write=SetID};
	__property System::UnicodeString VideoID = {read=FVideoID, write=SetVideoID};
	__property System::UnicodeString TextDisplay = {read=FTextDisplay, write=SetTextDisplay};
	__property System::UnicodeString TextOriginal = {read=FTextOriginal, write=SetTextOriginal};
	__property bool CanRate = {read=FCanRate, write=SetCanRate, nodefault};
	__property TTMSFNCCloudGoogleYouTubeRating ViewerRating = {read=FViewerRating, write=SetViewerRating, nodefault};
	__property int LikeCount = {read=FLikeCount, write=SetLikeCount, nodefault};
	__property System::TDateTime PublishDate = {read=FPublishDate, write=SetPublishDate};
	__property System::TDateTime UpdateDate = {read=FUpdateDate, write=SetUpdateDate};
	__property bool CanReply = {read=FCanReply, write=SetCanReply, nodefault};
	__property int TotalReplyCount = {read=FTotalReplyCount, write=SetTotalReplyCount, nodefault};
	__property bool IsPublic = {read=FIsPublic, write=SetIsPublic, nodefault};
	__property TTMSFNCCloudGoogleYouTubeReplies* Replies = {read=FReplies, write=SetReplies};
	__property System::UnicodeString AuthorDisplayName = {read=FAuthorDisplayName, write=SetAuthorDisplayName};
	__property System::UnicodeString AuthorImageUrl = {read=FAuthorImageUrl, write=SetAuthorImageUrl};
	__property System::UnicodeString AuthorChannelUrl = {read=FAuthorChannelUrl, write=SetAuthorChannelUrl};
	__property System::UnicodeString AuthorChannelId = {read=FAuthorChannelId, write=SetAuthorChannelId};
};


#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudGoogleYouTubeCommentThreads : public System::Classes::TCollection
{
	typedef System::Classes::TCollection inherited;
	
public:
	TTMSFNCCloudGoogleYouTubeCommentThread* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCCustomCloudGoogleYouTube* FOwner;
	System::UnicodeString FNextPageToken;
	TTMSFNCCloudGoogleYouTubeCommentThread* __fastcall GetItems(int Index);
	void __fastcall SetItems(int Index, TTMSFNCCloudGoogleYouTubeCommentThread* const Value);
	
protected:
	virtual void __fastcall Update(System::Classes::TCollectionItem* Item);
	
public:
	__fastcall TTMSFNCCloudGoogleYouTubeCommentThreads(TTMSFNCCustomCloudGoogleYouTube* AOwner);
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	HIDESBASE TTMSFNCCloudGoogleYouTubeCommentThread* __fastcall Add();
	HIDESBASE TTMSFNCCloudGoogleYouTubeCommentThread* __fastcall Insert(int Index);
	__property TTMSFNCCloudGoogleYouTubeCommentThread* Items[int Index] = {read=GetItems, write=SetItems/*, default*/};
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCCloudGoogleYouTubeCommentThreads() { }
	
};

#pragma pack(pop)

class PASCALIMPLEMENTATION TTMSFNCCloudGoogleYouTubeReply : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	TTMSFNCCloudGoogleYouTubeReplies* FOwner;
	System::TDateTime FPublishDate;
	bool FCanRate;
	System::UnicodeString FVideoID;
	System::UnicodeString FID;
	System::UnicodeString FTextOriginal;
	System::UnicodeString FParentID;
	System::UnicodeString FTextDisplay;
	System::TDateTime FUpdateDate;
	TTMSFNCCloudGoogleYouTubeRating FViewerRating;
	int FLikeCount;
	System::UnicodeString FAuthorDisplayName;
	System::UnicodeString FAuthorChannelUrl;
	System::UnicodeString FAuthorImageUrl;
	System::UnicodeString FAuthorChannelId;
	void __fastcall SetCanRate(const bool Value);
	void __fastcall SetID(const System::UnicodeString Value);
	void __fastcall SetLikeCount(const int Value);
	void __fastcall SetParentID(const System::UnicodeString Value);
	void __fastcall SetPublishDate(const System::TDateTime Value);
	void __fastcall SetTextDisplay(const System::UnicodeString Value);
	void __fastcall SetTextOriginal(const System::UnicodeString Value);
	void __fastcall SetUpdateDate(const System::TDateTime Value);
	void __fastcall SetVideoID(const System::UnicodeString Value);
	void __fastcall SetViewerRating(const TTMSFNCCloudGoogleYouTubeRating Value);
	void __fastcall SetAuthorChannelId(const System::UnicodeString Value);
	void __fastcall SetAuthorChannelUrl(const System::UnicodeString Value);
	void __fastcall SetAuthorDisplayName(const System::UnicodeString Value);
	void __fastcall SetAuthorImageUrl(const System::UnicodeString Value);
	
public:
	__fastcall virtual TTMSFNCCloudGoogleYouTubeReply(System::Classes::TCollection* Collection);
	__fastcall virtual ~TTMSFNCCloudGoogleYouTubeReply();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	void __fastcall FromJSON(System::Json::TJSONValue* jo);
	
__published:
	__property System::UnicodeString ID = {read=FID, write=SetID};
	__property System::UnicodeString VideoID = {read=FVideoID, write=SetVideoID};
	__property System::UnicodeString TextDisplay = {read=FTextDisplay, write=SetTextDisplay};
	__property System::UnicodeString TextOriginal = {read=FTextOriginal, write=SetTextOriginal};
	__property System::UnicodeString ParentID = {read=FParentID, write=SetParentID};
	__property bool CanRate = {read=FCanRate, write=SetCanRate, nodefault};
	__property TTMSFNCCloudGoogleYouTubeRating ViewerRating = {read=FViewerRating, write=SetViewerRating, nodefault};
	__property int LikeCount = {read=FLikeCount, write=SetLikeCount, nodefault};
	__property System::TDateTime PublishDate = {read=FPublishDate, write=SetPublishDate};
	__property System::TDateTime UpdateDate = {read=FUpdateDate, write=SetUpdateDate};
	__property System::UnicodeString AuthorDisplayName = {read=FAuthorDisplayName, write=SetAuthorDisplayName};
	__property System::UnicodeString AuthorImageUrl = {read=FAuthorImageUrl, write=SetAuthorImageUrl};
	__property System::UnicodeString AuthorChannelUrl = {read=FAuthorChannelUrl, write=SetAuthorChannelUrl};
	__property System::UnicodeString AuthorChannelId = {read=FAuthorChannelId, write=SetAuthorChannelId};
};


#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudGoogleYouTubeReplies : public System::Classes::TCollection
{
	typedef System::Classes::TCollection inherited;
	
public:
	TTMSFNCCloudGoogleYouTubeReply* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCCloudGoogleYouTubeCommentThread* FOwner;
	TTMSFNCCloudGoogleYouTubeReply* __fastcall GetItems(int Index);
	void __fastcall SetItems(int Index, TTMSFNCCloudGoogleYouTubeReply* const Value);
	
protected:
	virtual void __fastcall Update(System::Classes::TCollectionItem* Item);
	
public:
	__fastcall TTMSFNCCloudGoogleYouTubeReplies(TTMSFNCCloudGoogleYouTubeCommentThread* AOwner);
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	HIDESBASE TTMSFNCCloudGoogleYouTubeReply* __fastcall Add();
	HIDESBASE TTMSFNCCloudGoogleYouTubeReply* __fastcall Insert(int Index);
	__property TTMSFNCCloudGoogleYouTubeReply* Items[int Index] = {read=GetItems, write=SetItems/*, default*/};
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCCloudGoogleYouTubeReplies() { }
	
};

#pragma pack(pop)

typedef void __fastcall (__closure *TTMSFNCCloudGoogleYouTubeBeforeAddVideoEvent)(System::TObject* Sender, System::UnicodeString AFileName, bool &allow);

typedef void __fastcall (__closure *TTMSFNCCloudGoogleYouTubeAfterAddVideoEvent)(System::TObject* Sender, System::UnicodeString AFileName, TTMSFNCCloudGoogleYouTubeVideo* AVideo);

typedef void __fastcall (__closure *TTMSFNCCloudGoogleYouTubeGetVideoDetailsEvent)(System::TObject* Sender, TTMSFNCCloudGoogleYouTubeVideo* const AVideo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudGoogleYouTubeDeleteVideoEvent)(System::TObject* Sender, TTMSFNCCloudGoogleYouTubeVideo* const AVideo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudGoogleYouTubeUpdateVideoEvent)(System::TObject* Sender, TTMSFNCCloudGoogleYouTubeVideo* const AVideo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudGoogleYouTubeUploadVideoEvent)(System::TObject* Sender, TTMSFNCCloudGoogleYouTubeVideo* const AVideo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudGoogleYouTubeUploadVideoProgressEvent)(System::TObject* Sender, const System::UnicodeString AFileName, float AProgress, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudGoogleYouTubeGetVideosEvent)(System::TObject* Sender, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudGoogleYouTubeGetVideosCompleteEvent)(System::TObject* Sender, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudGoogleYouTubeGetVideoRatingEvent)(System::TObject* Sender, const TTMSFNCCloudGoogleYouTubeRating ARating, TTMSFNCCloudGoogleYouTubeVideo* const AVideo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudGoogleYouTubeSetVideoRatingEvent)(System::TObject* Sender, TTMSFNCCloudGoogleYouTubeVideo* const AVideo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudGoogleYouTubeGetCommentThreadsEvent)(System::TObject* Sender, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudGoogleYouTubeGetCommentThreadsCompleteEvent)(System::TObject* Sender, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCustomCloudGoogleYouTube : public Fmx::Tmsfnccloudgoogle::TTMSFNCCustomCloudGoogle
{
	typedef Fmx::Tmsfnccloudgoogle::TTMSFNCCustomCloudGoogle inherited;
	
private:
	System::UnicodeString APIBase;
	TTMSFNCCloudGoogleYouTubeVideos* FVideos;
	TTMSFNCCloudGoogleYouTubeBeforeAddVideoEvent FOnBeforeAddVideo;
	TTMSFNCCloudGoogleYouTubeAfterAddVideoEvent FOnAfterAddVideo;
	TTMSFNCCloudGoogleYouTubeGetVideosEvent FOnGetVideos;
	TTMSFNCCloudGoogleYouTubeGetVideosCompleteEvent FOnGetVideosComplete;
	TTMSFNCCloudGoogleYouTubeGetVideoRatingEvent FOnGetVideoRating;
	TTMSFNCCloudGoogleYouTubeSetVideoRatingEvent FOnSetVideoRating;
	TTMSFNCCloudGoogleYouTubeUploadVideoEvent FOnUploadVideo;
	TTMSFNCCloudGoogleYouTubeGetVideoDetailsEvent FOnGetVideoDetails;
	TTMSFNCCloudGoogleYouTubeUpdateVideoEvent FOnUpdateVideo;
	TTMSFNCCloudGoogleYouTubeDeleteVideoEvent FOnDeleteVideo;
	TTMSFNCCloudGoogleYouTubeUploadVideoProgressEvent FOnUploadVideoProgress;
	TTMSFNCCloudGoogleYouTubeCommentThreads* FCommentThreads;
	TTMSFNCCloudGoogleYouTubeGetCommentThreadsEvent FOnGetCommentThreads;
	TTMSFNCCloudGoogleYouTubeGetCommentThreadsCompleteEvent FOnGetCommentThreadsComplete;
	
protected:
	virtual System::UnicodeString __fastcall GetVersion();
	virtual bool __fastcall DoBeforeAddVideo(const System::UnicodeString AFileName);
	virtual void __fastcall DoAfterAddVideo(const System::UnicodeString AFileName, TTMSFNCCloudGoogleYouTubeVideo* AVideo);
	void __fastcall GetVideos(int AMaxResults = 0x32, System::UnicodeString APageToken = System::UnicodeString(), int AMode = 0x0);
	void __fastcall GetCommentThreads(System::UnicodeString AVideoId, int AMaxResults = 0x32, System::UnicodeString APageToken = System::UnicodeString(), int AMode = 0x0);
	void __fastcall DoRequestGetVideos(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestGetCommentThreads(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestDeleteVideo(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestGetVideoDetails(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestUploadVideo(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestUploadVideoProgress(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult, float AProgress);
	void __fastcall DoRequestUpdateVideo(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestGetVideoRating(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestSetVideoRating(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoGetVideoRating(const TTMSFNCCloudGoogleYouTubeRating ARating, TTMSFNCCloudGoogleYouTubeVideo* const AVideo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoSetVideoRating(TTMSFNCCloudGoogleYouTubeVideo* const AVideo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoDeleteVideo(TTMSFNCCloudGoogleYouTubeVideo* const AVideo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoGetVideoDetails(TTMSFNCCloudGoogleYouTubeVideo* const AVideo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoUpdateVideo(TTMSFNCCloudGoogleYouTubeVideo* const AVideo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoUploadVideoProgress(const System::UnicodeString AFileName, float AProgress, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoUploadVideo(TTMSFNCCloudGoogleYouTubeVideo* const AVideo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoGetVideos(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoGetVideosComplete(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoGetCommentThreads(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoGetCommentThreadsComplete(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	__property TTMSFNCCloudGoogleYouTubeBeforeAddVideoEvent OnBeforeAddVideo = {read=FOnBeforeAddVideo, write=FOnBeforeAddVideo};
	__property TTMSFNCCloudGoogleYouTubeAfterAddVideoEvent OnAfterAddVideo = {read=FOnAfterAddVideo, write=FOnAfterAddVideo};
	__property TTMSFNCCloudGoogleYouTubeGetVideosEvent OnGetVideos = {read=FOnGetVideos, write=FOnGetVideos};
	__property TTMSFNCCloudGoogleYouTubeDeleteVideoEvent OnDeleteVideo = {read=FOnDeleteVideo, write=FOnDeleteVideo};
	__property TTMSFNCCloudGoogleYouTubeGetVideoDetailsEvent OnGetVideoDetails = {read=FOnGetVideoDetails, write=FOnGetVideoDetails};
	__property TTMSFNCCloudGoogleYouTubeUpdateVideoEvent OnUpdateVideo = {read=FOnUpdateVideo, write=FOnUpdateVideo};
	__property TTMSFNCCloudGoogleYouTubeUploadVideoEvent OnUploadVideo = {read=FOnUploadVideo, write=FOnUploadVideo};
	__property TTMSFNCCloudGoogleYouTubeUploadVideoProgressEvent OnUploadVideoProgress = {read=FOnUploadVideoProgress, write=FOnUploadVideoProgress};
	__property TTMSFNCCloudGoogleYouTubeGetVideoRatingEvent OnGetVideoRating = {read=FOnGetVideoRating, write=FOnGetVideoRating};
	__property TTMSFNCCloudGoogleYouTubeSetVideoRatingEvent OnSetVideoRating = {read=FOnSetVideoRating, write=FOnSetVideoRating};
	__property TTMSFNCCloudGoogleYouTubeGetVideosCompleteEvent OnGetVideosComplete = {read=FOnGetVideosComplete, write=FOnGetVideosComplete};
	__property TTMSFNCCloudGoogleYouTubeGetCommentThreadsEvent OnGetCommentThreads = {read=FOnGetCommentThreads, write=FOnGetCommentThreads};
	__property TTMSFNCCloudGoogleYouTubeGetCommentThreadsCompleteEvent OnGetCommentThreadsComplete = {read=FOnGetCommentThreadsComplete, write=FOnGetCommentThreadsComplete};
	
public:
	__fastcall virtual TTMSFNCCustomCloudGoogleYouTube(System::Classes::TComponent* AOwner)/* overload */;
	__fastcall virtual ~TTMSFNCCustomCloudGoogleYouTube();
	void __fastcall DeleteVideo(TTMSFNCCloudGoogleYouTubeVideo* AVideo)/* overload */;
	void __fastcall GetVideoDetails(TTMSFNCCloudGoogleYouTubeVideo* AVideo)/* overload */;
	void __fastcall GetVideoRating(TTMSFNCCloudGoogleYouTubeVideo* AVideo);
	void __fastcall SetVideoRating(TTMSFNCCloudGoogleYouTubeVideo* AVideo, TTMSFNCCloudGoogleYouTubeRating ARating);
	void __fastcall GetAllVideos();
	void __fastcall GetFirstVideos(int AMaxResults = 0x32);
	void __fastcall GetNextVideos(int AMaxResults = 0x32);
	void __fastcall GetAllCommentThreads(System::UnicodeString AVideoId)/* overload */;
	void __fastcall GetLatestCommentThreads(System::UnicodeString AVideoId, int AMaxResults = 0x32)/* overload */;
	void __fastcall GetNextCommentThreads(System::UnicodeString AVideoId, int AMaxResults = 0x32)/* overload */;
	void __fastcall GetAllCommentThreads(TTMSFNCCloudGoogleYouTubeVideo* AVideo)/* overload */;
	void __fastcall GetLatestCommentThreads(TTMSFNCCloudGoogleYouTubeVideo* AVideo, int AMaxResults = 0x32)/* overload */;
	void __fastcall GetNextCommentThreads(TTMSFNCCloudGoogleYouTubeVideo* AVideo, int AMaxResults = 0x32)/* overload */;
	void __fastcall UploadVideo(System::UnicodeString AFileName, System::UnicodeString ATitle, System::UnicodeString ADescription);
	void __fastcall UpdateVideo(TTMSFNCCloudGoogleYouTubeVideo* AVideo);
	__property TTMSFNCCloudGoogleYouTubeVideos* Videos = {read=FVideos, write=FVideos};
	__property TTMSFNCCloudGoogleYouTubeCommentThreads* CommentThreads = {read=FCommentThreads, write=FCommentThreads};
public:
	/* TTMSFNCCustomCloudOAuth.Create */ inline __fastcall virtual TTMSFNCCustomCloudGoogleYouTube()/* overload */ : Fmx::Tmsfnccloudgoogle::TTMSFNCCustomCloudGoogle() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudGoogleYouTube : public TTMSFNCCustomCloudGoogleYouTube
{
	typedef TTMSFNCCustomCloudGoogleYouTube inherited;
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	
__published:
	__property OnBeforeAddVideo;
	__property OnAfterAddVideo;
	__property OnGetVideos;
	__property OnDeleteVideo;
	__property OnGetVideoDetails;
	__property OnUpdateVideo;
	__property OnUploadVideo;
	__property OnUploadVideoProgress;
	__property OnGetVideoRating;
	__property OnSetVideoRating;
	__property OnGetVideosComplete;
	__property OnGetCommentThreads;
	__property OnGetCommentThreadsComplete;
public:
	/* TTMSFNCCustomCloudGoogleYouTube.Create */ inline __fastcall virtual TTMSFNCCloudGoogleYouTube(System::Classes::TComponent* AOwner)/* overload */ : TTMSFNCCustomCloudGoogleYouTube(AOwner) { }
	/* TTMSFNCCustomCloudGoogleYouTube.Destroy */ inline __fastcall virtual ~TTMSFNCCloudGoogleYouTube() { }
	
public:
	/* TTMSFNCCustomCloudOAuth.Create */ inline __fastcall virtual TTMSFNCCloudGoogleYouTube()/* overload */ : TTMSFNCCustomCloudGoogleYouTube() { }
	
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x0);
static constexpr System::Int8 BLD_VER = System::Int8(0x0);
}	/* namespace Tmsfnccloudgoogleyoutube */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCCLOUDGOOGLEYOUTUBE)
using namespace Fmx::Tmsfnccloudgoogleyoutube;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfnccloudgoogleyoutubeHPP
