// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCCloudMicrosoftOneDrive.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfnccloudmicrosoftonedriveHPP
#define Fmx_TmsfnccloudmicrosoftonedriveHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <FMX.TMSFNCCloudBase.hpp>
#include <FMX.TMSFNCCloudStorage.hpp>
#include <FMX.TMSFNCCloudMicrosoft.hpp>
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
namespace Tmsfnccloudmicrosoftonedrive
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCCloudMicrosoftOneDriveUser;
class DELPHICLASS TTMSFNCCloudMicrosoftOneDriveItem;
class DELPHICLASS TTMSFNCCloudMicrosoftOneDriveItems;
class DELPHICLASS TTMSFNCCloudMicrosoftOneDriveInfo;
class DELPHICLASS TTMSFNCCustomCloudMicrosoftOneDrive;
class DELPHICLASS TTMSFNCCloudMicrosoftOneDrive;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TTMSFNCCloudMicrosoftOneDriveUser : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	System::UnicodeString FID;
	System::UnicodeString FDisplayName;
	
__published:
	__property System::UnicodeString ID = {read=FID, write=FID};
	__property System::UnicodeString DisplayName = {read=FDisplayName, write=FDisplayName};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTMSFNCCloudMicrosoftOneDriveUser() { }
	
public:
	/* TObject.Create */ inline __fastcall TTMSFNCCloudMicrosoftOneDriveUser() : System::Classes::TPersistent() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudMicrosoftOneDriveItem : public Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem
{
	typedef Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem inherited;
	
private:
	System::UnicodeString FID;
	System::UnicodeString FShare;
	System::UnicodeString FLink;
	System::UnicodeString FDescription;
	bool FShared;
	TTMSFNCCloudMicrosoftOneDriveUser* FUser;
	System::UnicodeString __fastcall GetShare();
	
protected:
	void __fastcall FromJSON(System::Json::TJSONValue* jo);
	
public:
	__fastcall virtual TTMSFNCCloudMicrosoftOneDriveItem(System::Classes::TCollection* Collection);
	__fastcall virtual ~TTMSFNCCloudMicrosoftOneDriveItem();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__property System::UnicodeString ID = {read=FID, write=FID};
	__property System::UnicodeString Description = {read=FDescription, write=FDescription};
	__property System::UnicodeString Link = {read=FLink, write=FLink};
	__property bool Shared = {read=FShared, write=FShared, nodefault};
	__property System::UnicodeString Share = {read=GetShare, write=FShare};
	__property TTMSFNCCloudMicrosoftOneDriveUser* User = {read=FUser, write=FUser};
};


class PASCALIMPLEMENTATION TTMSFNCCloudMicrosoftOneDriveItems : public Fmx::Tmsfnccloudstorage::TTMSFNCCloudItems
{
	typedef Fmx::Tmsfnccloudstorage::TTMSFNCCloudItems inherited;
	
private:
	HIDESBASE TTMSFNCCloudMicrosoftOneDriveItem* __fastcall GetItems(int index);
	HIDESBASE void __fastcall SetItems(int index, TTMSFNCCloudMicrosoftOneDriveItem* const Value);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall GetItemClass();
	
public:
	HIDESBASE TTMSFNCCloudMicrosoftOneDriveItem* __fastcall Add();
	HIDESBASE TTMSFNCCloudMicrosoftOneDriveItem* __fastcall Insert(int Index);
	__property TTMSFNCCloudMicrosoftOneDriveItem* Items[int index] = {read=GetItems, write=SetItems};
public:
	/* TTMSFNCCloudItems.Create */ inline __fastcall TTMSFNCCloudMicrosoftOneDriveItems(Fmx::Tmsfnccloudstorage::TTMSFNCCloudStorage* AOwner, Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* AFolder) : Fmx::Tmsfnccloudstorage::TTMSFNCCloudItems(AOwner, AFolder) { }
	
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCCloudMicrosoftOneDriveItems() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudMicrosoftOneDriveInfo : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	double FQuota;
	System::UnicodeString FUserID;
	System::UnicodeString FID;
	double FQuotaRemaining;
	System::UnicodeString FUserName;
	
__published:
	__property System::UnicodeString ID = {read=FID, write=FID};
	__property System::UnicodeString UserName = {read=FUserName, write=FUserName};
	__property System::UnicodeString UserID = {read=FUserID, write=FUserID};
	__property double Quota = {read=FQuota, write=FQuota};
	__property double QuotaRemaining = {read=FQuotaRemaining, write=FQuotaRemaining};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTMSFNCCloudMicrosoftOneDriveInfo() { }
	
public:
	/* TObject.Create */ inline __fastcall TTMSFNCCloudMicrosoftOneDriveInfo() : System::Classes::TPersistent() { }
	
};


enum DECLSPEC_DENUM TTMSFNCCloudMicrosoftOneDriveLanguage : unsigned char { dlDefault, dlEnglish, dlGerman, dlFrench, dlIndonesian, dlChinese, dlItalian, dlJapanese, dlPolish, dlRussian, dlPortuguese, dlSpanish, dlKorean };

typedef void __fastcall (__closure *TTMSFNCCloudMicrosoftOneDriveOnSearchEvent)(System::TObject* Sender, TTMSFNCCloudMicrosoftOneDriveItems* const ASearchResults, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudMicrosoftOneDriveOnGetLinkEvent)(System::TObject* Sender, const System::UnicodeString ALink, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudMicrosoftOneDriveOnGetShareEvent)(System::TObject* Sender, const System::UnicodeString AShare, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudMicrosoftOneDriveOnCreateFolderEvent)(System::TObject* Sender, Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* const AFolder, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudMicrosoftOneDriveOnMoveFileEvent)(System::TObject* Sender, Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* const AFile, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudMicrosoftOneDriveOnDownloadFileEvent)(System::TObject* Sender, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudMicrosoftOneDriveOnUploadFileEvent)(System::TObject* Sender, Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* const AUploadItem, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudMicrosoftOneDriveOnDeleteItemEvent)(System::TObject* Sender, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudMicrosoftOneDriveOnGetAccountInfoEvent)(System::TObject* Sender, TTMSFNCCloudMicrosoftOneDriveInfo* const AInfo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudMicrosoftOneDriveOnGetFolderListEvent)(System::TObject* Sender, Fmx::Tmsfnccloudstorage::TTMSFNCCloudItems* const AFolderList, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

class PASCALIMPLEMENTATION TTMSFNCCustomCloudMicrosoftOneDrive : public Fmx::Tmsfnccloudmicrosoft::TTMSFNCCustomCloudMicrosoftStorage
{
	typedef Fmx::Tmsfnccloudmicrosoft::TTMSFNCCustomCloudMicrosoftStorage inherited;
	
private:
	System::UnicodeString FBasePath;
	TTMSFNCCloudMicrosoftOneDriveItems* FSearchResults;
	TTMSFNCCloudMicrosoftOneDriveInfo* FInfo;
	TTMSFNCCloudMicrosoftOneDriveLanguage FLanguage;
	TTMSFNCCloudMicrosoftOneDriveItems* FFolder;
	TTMSFNCCloudMicrosoftOneDriveOnGetFolderListEvent FOnGetFolderList;
	TTMSFNCCloudMicrosoftOneDriveOnGetShareEvent FOnGetShare;
	TTMSFNCCloudMicrosoftOneDriveOnGetLinkEvent FOnGetLink;
	TTMSFNCCloudMicrosoftOneDriveOnGetAccountInfoEvent FOnGetAccountInfo;
	TTMSFNCCloudMicrosoftOneDriveOnCreateFolderEvent FOnCreateFolder;
	TTMSFNCCloudMicrosoftOneDriveOnDeleteItemEvent FOnDeleteItem;
	TTMSFNCCloudMicrosoftOneDriveOnDownloadFileEvent FOnDownloadFile;
	TTMSFNCCloudMicrosoftOneDriveOnSearchEvent FOnSearch;
	TTMSFNCCloudMicrosoftOneDriveOnUploadFileEvent FOnUploadFile;
	TTMSFNCCloudMicrosoftOneDriveOnMoveFileEvent FOnMoveFile;
	TTMSFNCCloudMicrosoftOneDriveOnMoveFileEvent FOnRenameFile;
	bool FDeleteResult;
	TTMSFNCCloudMicrosoftOneDriveItem* FCreateFolderResult;
	TTMSFNCCloudMicrosoftOneDriveItem* FRenameFileResult;
	TTMSFNCCloudMicrosoftOneDriveItem* FUploadResult;
	TTMSFNCCloudMicrosoftOneDriveItems* FFolderListResult;
	TTMSFNCCloudMicrosoftOneDriveItem* FHierarchicalFolder;
	System::UnicodeString FSessionID;
	void __fastcall SetInfo(TTMSFNCCloudMicrosoftOneDriveInfo* const Value);
	TTMSFNCCloudMicrosoftOneDriveItems* __fastcall GetDDrive();
	
protected:
	virtual System::UnicodeString __fastcall GetVersion();
	virtual void __fastcall DoSearch(TTMSFNCCloudMicrosoftOneDriveItems* const ASearchResults, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoGetLink(const System::UnicodeString ALink, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoGetShare(const System::UnicodeString AShare, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoCreateFolder(TTMSFNCCloudMicrosoftOneDriveItem* const AFolder, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoMoveFile(TTMSFNCCloudMicrosoftOneDriveItem* const AItem, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoRenameFile(TTMSFNCCloudMicrosoftOneDriveItem* const AItem, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoDownloadFile(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoUploadFile(TTMSFNCCloudMicrosoftOneDriveItem* const AUploadItem, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoDeleteItem(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoGetAccountInfo(TTMSFNCCloudMicrosoftOneDriveInfo* const AInfo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoGetFolderList(Fmx::Tmsfnccloudstorage::TTMSFNCCloudItems* const AFolders, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoRequestSearch(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoRequestGetLink(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoRequestGetShare(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoRequestCreateFolder(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoRequestMoveFile(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoRequestRenameFile(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoRequestDownloadFile(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoRequestUploadFile(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoRequestUploadedFile(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoRequestDeleteItem(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoRequestGetAccountInfo(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoRequestGetFolderList(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoRequestGetUploadSession(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* __fastcall UploadInt(TTMSFNCCloudMicrosoftOneDriveItem* AFolder, const System::UnicodeString AFolderName, System::UnicodeString AFileName);
	System::UnicodeString __fastcall DownloadInt(const System::UnicodeString AFileID, const System::UnicodeString ATargetFile, __int64 ASize);
	Fmx::Tmsfnccloudstorage::TTMSFNCCloudItems* __fastcall GetFolderListInt(Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* AFolder, bool AHierarchical, bool AIsRootFolder = false, System::UnicodeString ACursorID = System::UnicodeString(), Fmx::Tmsfnccloudstorage::TTMSFNCCloudItems* AItems = (Fmx::Tmsfnccloudstorage::TTMSFNCCloudItems*)(0x0), System::TObject* ADataObject = (System::TObject*)(0x0));
	Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* __fastcall MoveFileInt(TTMSFNCCloudMicrosoftOneDriveItem* AItem, System::UnicodeString AFolderID);
	virtual Fmx::Tmsfnccloudstorage::TTMSFNCCloudItems* __fastcall CreateCloudItems();
	System::UnicodeString __fastcall URLEncodeNoSlash(const System::UnicodeString AURL);
	__property TTMSFNCCloudMicrosoftOneDriveLanguage Language = {read=FLanguage, write=FLanguage, default=0};
	__property TTMSFNCCloudMicrosoftOneDriveOnSearchEvent OnSearch = {read=FOnSearch, write=FOnSearch};
	__property TTMSFNCCloudMicrosoftOneDriveOnGetLinkEvent OnGetLink = {read=FOnGetLink, write=FOnGetLink};
	__property TTMSFNCCloudMicrosoftOneDriveOnGetShareEvent OnGetShare = {read=FOnGetShare, write=FOnGetShare};
	__property TTMSFNCCloudMicrosoftOneDriveOnCreateFolderEvent OnCreateFolder = {read=FOnCreateFolder, write=FOnCreateFolder};
	__property TTMSFNCCloudMicrosoftOneDriveOnMoveFileEvent OnMoveFile = {read=FOnMoveFile, write=FOnMoveFile};
	__property TTMSFNCCloudMicrosoftOneDriveOnMoveFileEvent OnRenameFile = {read=FOnRenameFile, write=FOnRenameFile};
	__property TTMSFNCCloudMicrosoftOneDriveOnDownloadFileEvent OnDownloadFile = {read=FOnDownloadFile, write=FOnDownloadFile};
	__property TTMSFNCCloudMicrosoftOneDriveOnUploadFileEvent OnUploadFile = {read=FOnUploadFile, write=FOnUploadFile};
	__property TTMSFNCCloudMicrosoftOneDriveOnDeleteItemEvent OnDeleteItem = {read=FOnDeleteItem, write=FOnDeleteItem};
	__property TTMSFNCCloudMicrosoftOneDriveOnGetAccountInfoEvent OnGetAccountInfo = {read=FOnGetAccountInfo, write=FOnGetAccountInfo};
	__property TTMSFNCCloudMicrosoftOneDriveOnGetFolderListEvent OnGetFolderList = {read=FOnGetFolderList, write=FOnGetFolderList};
	virtual System::UnicodeString __fastcall GetUploadSessionID(Fmx::Tmsfnccloudstorage::TTMSFNCCloudFile* ACloudFile, Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* AFolder = (Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem*)(0x0));
	virtual System::UnicodeString __fastcall GetUploadHost(Fmx::Tmsfnccloudstorage::TTMSFNCCloudFile* ACloudFile);
	virtual System::UnicodeString __fastcall GetUploadPath(Fmx::Tmsfnccloudstorage::TTMSFNCCloudFile* ACloudFile);
	virtual __int64 __fastcall GetUploadFixedByteLength();
	virtual void __fastcall GetUploadHeaders(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequest* ARequest, Fmx::Tmsfnccloudstorage::TTMSFNCCloudFile* ACloudFile, System::UnicodeString AByteRange, Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* AFolder = (Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem*)(0x0));
	virtual void __fastcall DoRequestUploadResumableFile(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	
public:
	__fastcall virtual TTMSFNCCustomCloudMicrosoftOneDrive(System::Classes::TComponent* AOwner)/* overload */;
	__fastcall virtual ~TTMSFNCCustomCloudMicrosoftOneDrive();
	virtual void __fastcall TestTokens(const Fmx::Tmsfnccloudbase::_di_TTMSFNCCloudBaseRequestResultEvent ATestTokensRequestResultEvent = Fmx::Tmsfnccloudbase::_di_TTMSFNCCloudBaseRequestResultEvent());
	void __fastcall GetAccountInfo();
	virtual void __fastcall GetDriveInfo();
	virtual Fmx::Tmsfnccloudstorage::TTMSFNCCloudItems* __fastcall GetFolderList(Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* AFolder);
	virtual Fmx::Tmsfnccloudstorage::TTMSFNCCloudItems* __fastcall GetFolderListHierarchical(Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* AFolder, bool AIsRootFolder = false, System::TObject* ADataObject = (System::TObject*)(0x0));
	Fmx::Tmsfnccloudstorage::TTMSFNCCloudItems* __fastcall Search(System::UnicodeString AQuery, System::UnicodeString AFolderName = System::UnicodeString());
	virtual Fmx::Tmsfnccloudstorage::TTMSFNCCloudItems* __fastcall SearchList(System::UnicodeString AQuery, bool AExactMatch, Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* AFolder = (Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem*)(0x0));
	virtual System::UnicodeString __fastcall Download(Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* AItem, const System::UnicodeString ATargetFile)/* overload */;
	virtual Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* __fastcall Upload(Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* AFolder, const System::UnicodeString AFileName)/* overload */;
	virtual bool __fastcall Delete(Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* AItem)/* overload */;
	virtual bool __fastcall Delete(const System::UnicodeString AFileID)/* overload */;
	virtual Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* __fastcall CreateFolder(Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* AFolder, const System::UnicodeString AFolderName);
	void __fastcall GetShare(TTMSFNCCloudMicrosoftOneDriveItem* AItem, bool ReadOnly = true);
	virtual bool __fastcall GetTestTokensResult(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* __fastcall MoveFile(Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* AItem, Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* ATargetFolder);
	virtual Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* __fastcall MoveFileToRoot(Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* AItem);
	virtual Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* __fastcall RenameFile(Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* AItem, System::UnicodeString ANewFileName);
	__property TTMSFNCCloudMicrosoftOneDriveInfo* Info = {read=FInfo, write=SetInfo};
	__property TTMSFNCCloudMicrosoftOneDriveItems* OneDrive = {read=GetDDrive};
public:
	/* TTMSFNCCustomCloudOAuth.Create */ inline __fastcall virtual TTMSFNCCustomCloudMicrosoftOneDrive()/* overload */ : Fmx::Tmsfnccloudmicrosoft::TTMSFNCCustomCloudMicrosoftStorage() { }
	
	/* Hoisted overloads: */
	
public:
	inline System::UnicodeString __fastcall  Download(const System::UnicodeString AFileName, const System::UnicodeString ATargetFile){ return Fmx::Tmsfnccloudstorage::TTMSFNCCloudStorage::Download(AFileName, ATargetFile); }
	inline Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* __fastcall  Upload(Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* AFolder, const System::UnicodeString AFileName, System::UnicodeString ADescription){ return Fmx::Tmsfnccloudstorage::TTMSFNCCloudStorage::Upload(AFolder, AFileName, ADescription); }
	inline Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* __fastcall  Upload(System::UnicodeString AFolderName, const System::UnicodeString AFileName){ return Fmx::Tmsfnccloudstorage::TTMSFNCCloudStorage::Upload(AFolderName, AFileName); }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudMicrosoftOneDrive : public TTMSFNCCustomCloudMicrosoftOneDrive
{
	typedef TTMSFNCCustomCloudMicrosoftOneDrive inherited;
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	
__published:
	__property Language = {default=0};
	__property OnSearch;
	__property OnGetLink;
	__property OnGetShare;
	__property OnCreateFolder;
	__property OnMoveFile;
	__property OnRenameFile;
	__property OnDownloadFile;
	__property OnUploadFile;
	__property OnDeleteItem;
	__property OnGetAccountInfo;
	__property OnGetFolderList;
	__property OnUploadResumableFile;
	__property OnUploadResumableFileFinished;
	__property OnUploadResumableFileFailed;
public:
	/* TTMSFNCCustomCloudMicrosoftOneDrive.Create */ inline __fastcall virtual TTMSFNCCloudMicrosoftOneDrive(System::Classes::TComponent* AOwner)/* overload */ : TTMSFNCCustomCloudMicrosoftOneDrive(AOwner) { }
	/* TTMSFNCCustomCloudMicrosoftOneDrive.Destroy */ inline __fastcall virtual ~TTMSFNCCloudMicrosoftOneDrive() { }
	
public:
	/* TTMSFNCCustomCloudOAuth.Create */ inline __fastcall virtual TTMSFNCCloudMicrosoftOneDrive()/* overload */ : TTMSFNCCustomCloudMicrosoftOneDrive() { }
	
};


//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x2);
static constexpr System::Int8 MIN_VER = System::Int8(0x1);
static constexpr System::Int8 REL_VER = System::Int8(0x0);
static constexpr System::Int8 BLD_VER = System::Int8(0x1);
}	/* namespace Tmsfnccloudmicrosoftonedrive */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCCLOUDMICROSOFTONEDRIVE)
using namespace Fmx::Tmsfnccloudmicrosoftonedrive;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfnccloudmicrosoftonedriveHPP
