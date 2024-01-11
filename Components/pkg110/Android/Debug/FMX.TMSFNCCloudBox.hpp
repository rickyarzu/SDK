// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCCloudBox.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfnccloudboxHPP
#define Fmx_TmsfnccloudboxHPP

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
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.TMSFNCUtils.hpp>
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
namespace Tmsfnccloudbox
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCCloudBoxItem;
class DELPHICLASS TTMSFNCCloudBoxItems;
class DELPHICLASS TTMSFNCCloudBoxInfo;
class DELPHICLASS TTMSFNCCustomCloudBox;
class DELPHICLASS TTMSFNCCloudBox;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TTMSFNCCloudBoxItem : public Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem
{
	typedef Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem inherited;
	
private:
	System::UnicodeString FLink;
	System::UnicodeString FShare;
	System::UnicodeString FAccessValue;
	System::UnicodeString FRevision;
	System::UnicodeString FID;
	
protected:
	__property System::UnicodeString AccessValue = {read=FAccessValue, write=FAccessValue};
	System::UnicodeString __fastcall GetLink();
	System::UnicodeString __fastcall GetShare();
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	System::UnicodeString __fastcall FullPath();
	__property System::UnicodeString ID = {read=FID, write=FID};
	__property System::UnicodeString Link = {read=GetLink};
	__property System::UnicodeString Share = {read=GetShare};
	__property System::UnicodeString Revision = {read=FRevision, write=FRevision};
public:
	/* TTMSFNCCloudItem.Create */ inline __fastcall virtual TTMSFNCCloudBoxItem(System::Classes::TCollection* Collection) : Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem(Collection) { }
	/* TTMSFNCCloudItem.Destroy */ inline __fastcall virtual ~TTMSFNCCloudBoxItem() { }
	
};


#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudBoxItems : public Fmx::Tmsfnccloudstorage::TTMSFNCCloudItems
{
	typedef Fmx::Tmsfnccloudstorage::TTMSFNCCloudItems inherited;
	
private:
	HIDESBASE TTMSFNCCloudBoxItem* __fastcall GetItems(int index);
	HIDESBASE void __fastcall SetItems(int index, TTMSFNCCloudBoxItem* const Value);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall GetItemClass();
	
public:
	HIDESBASE TTMSFNCCloudBoxItem* __fastcall Add();
	HIDESBASE TTMSFNCCloudBoxItem* __fastcall Insert(int Index);
	__property TTMSFNCCloudBoxItem* Items[int index] = {read=GetItems, write=SetItems};
public:
	/* TTMSFNCCloudItems.Create */ inline __fastcall TTMSFNCCloudBoxItems(Fmx::Tmsfnccloudstorage::TTMSFNCCloudStorage* AOwner, Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* AFolder) : Fmx::Tmsfnccloudstorage::TTMSFNCCloudItems(AOwner, AFolder) { }
	
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCCloudBoxItems() { }
	
};

#pragma pack(pop)

class PASCALIMPLEMENTATION TTMSFNCCloudBoxInfo : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	double FQuota;
	System::UnicodeString FUserID;
	double FQuotaUsed;
	System::UnicodeString FUserName;
	System::UnicodeString FEMail;
	
__published:
	__property System::UnicodeString UserName = {read=FUserName, write=FUserName};
	__property System::UnicodeString Email = {read=FEMail, write=FEMail};
	__property System::UnicodeString UserID = {read=FUserID, write=FUserID};
	__property double Quota = {read=FQuota, write=FQuota};
	__property double QuotaUsed = {read=FQuotaUsed, write=FQuotaUsed};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTMSFNCCloudBoxInfo() { }
	
public:
	/* TObject.Create */ inline __fastcall TTMSFNCCloudBoxInfo() : System::Classes::TPersistent() { }
	
};


enum DECLSPEC_DENUM TTMSFNCCloudBoxLanguage : unsigned char { dlDefault, dlEnglish, dlGerman, dlFrench, dlIndonesian, dlChinese, dlItalian, dlJapanese, dlPolish, dlRussian, dlPortuguese, dlSpanish, dlKorean };

typedef void __fastcall (__closure *TTMSFNCCloudBoxOnSearchEvent)(System::TObject* Sender, TTMSFNCCloudBoxItems* const ASearchResults, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudBoxOnGetLinkEvent)(System::TObject* Sender, const System::UnicodeString ALink, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudBoxOnGetShareEvent)(System::TObject* Sender, const System::UnicodeString AShare, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudBoxOnCreateFolderEvent)(System::TObject* Sender, Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* const AFolder, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudBoxOnMoveFileEvent)(System::TObject* Sender, Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* const AFile, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudBoxOnRenameFileEvent)(System::TObject* Sender, Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* const AFile, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudBoxOnDownloadFileEvent)(System::TObject* Sender, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudBoxOnUploadFileEvent)(System::TObject* Sender, Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* const AUploadItem, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudBoxOnDeleteItemEvent)(System::TObject* Sender, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudBoxOnGetCurrentAccountEvent)(System::TObject* Sender, TTMSFNCCloudBoxInfo* const AInfo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudBoxOnGetFileInfoEvent)(System::TObject* Sender, TTMSFNCCloudBoxItem* const AFile, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudBoxOnGetSpaceUsageEvent)(System::TObject* Sender, TTMSFNCCloudBoxInfo* const AInfo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudBoxOnGetFolderListEvent)(System::TObject* Sender, Fmx::Tmsfnccloudstorage::TTMSFNCCloudItems* const AFolderList, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudBoxOnGetFolderInfoEvent)(System::TObject* Sender, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef System::DynamicArray<System::UnicodeString> TTMSFNCCloudBoxStringArray;

class PASCALIMPLEMENTATION TTMSFNCCustomCloudBox : public Fmx::Tmsfnccloudstorage::TTMSFNCCloudStorage
{
	typedef Fmx::Tmsfnccloudstorage::TTMSFNCCloudStorage inherited;
	
private:
	System::UnicodeString FBasePath;
	TTMSFNCCloudBoxItem* FFileInfo;
	TTMSFNCCloudBoxItems* FSearchResults;
	TTMSFNCCloudBoxInfo* FInfo;
	int FFileLimit;
	TTMSFNCCloudBoxLanguage FLanguage;
	TTMSFNCCloudBoxOnGetFolderListEvent FOnGetFolderList;
	TTMSFNCCloudBoxOnGetShareEvent FOnGetShare;
	TTMSFNCCloudBoxOnGetLinkEvent FOnGetLink;
	TTMSFNCCloudBoxOnGetSpaceUsageEvent FOnGetSpaceUsage;
	TTMSFNCCloudBoxOnCreateFolderEvent FOnCreateFolder;
	TTMSFNCCloudBoxOnGetFileInfoEvent FOnGetFileInfo;
	TTMSFNCCloudBoxOnDeleteItemEvent FOnDeleteItem;
	TTMSFNCCloudBoxOnDownloadFileEvent FOnDownloadFile;
	TTMSFNCCloudBoxOnSearchEvent FOnSearch;
	TTMSFNCCloudBoxOnGetFolderInfoEvent FOnGetFolderInfo;
	TTMSFNCCloudBoxOnGetCurrentAccountEvent FOnGetCurrentAccount;
	TTMSFNCCloudBoxOnUploadFileEvent FOnUploadFile;
	TTMSFNCCloudBoxOnGetFolderListEvent FOnGetFolderListComplete;
	TTMSFNCCloudBoxOnMoveFileEvent FOnMoveFile;
	TTMSFNCCloudBoxOnRenameFileEvent FOnRenameFile;
	bool FDeleteResult;
	TTMSFNCCloudBoxItem* FCreateFolderResult;
	TTMSFNCCloudBoxItem* FRenameFileResult;
	TTMSFNCCloudBoxItem* FUploadResult;
	Fmx::Tmsfnccloudstorage::TTMSFNCCloudItems* FFolderListResult;
	TTMSFNCCloudBoxItem* FHierarchicalFolder;
	System::UnicodeString FUploadSessionID;
	__int64 FUploadFixedByteSize;
	void __fastcall SetInfo(TTMSFNCCloudBoxInfo* const Value);
	TTMSFNCCloudBoxItems* __fastcall GetDDrive();
	void __fastcall SetFileLimit(const int Value);
	
protected:
	virtual System::UnicodeString __fastcall GetVersion();
	virtual void __fastcall DoSearch(TTMSFNCCloudBoxItems* const ASearchResults, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoGetLink(const System::UnicodeString ALink, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoGetShare(const System::UnicodeString AShare, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoCreateFolder(TTMSFNCCloudBoxItem* const AFolder, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoMoveFile(TTMSFNCCloudBoxItem* const AItem, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoRenameFile(TTMSFNCCloudBoxItem* const AItem, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoDownloadFile(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoUploadFile(TTMSFNCCloudBoxItem* const AUploadItem, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoDeleteItem(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoGetCurrentAccount(TTMSFNCCloudBoxInfo* const AInfo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoGetFileInfo(TTMSFNCCloudBoxItem* const AFile, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoGetSpaceUsage(TTMSFNCCloudBoxInfo* const AInfo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoGetFolderList(Fmx::Tmsfnccloudstorage::TTMSFNCCloudItems* const AFolders, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoGetFolderListComplete(Fmx::Tmsfnccloudstorage::TTMSFNCCloudItems* const AFolders, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoGetFolderInfo(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoRequestSearch(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoRequestGetLink(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoRequestGetShare(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoRequestCreateFolder(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoRequestMoveFile(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoRequestRenameFile(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoRequestDownloadFile(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoRequestUploadFile(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoRequestDeleteItem(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoRequestGetCurrentAccount(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoRequestGetFileInfo(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoRequestGetFolderList(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoRequestGetFolderInfo(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoRequestGetUploadSession(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoRequestUploadGetParts(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoRequestUploadResumableCommit(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall RetrieveAccessToken();
	virtual void __fastcall RetrieveRefreshToken();
	Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* __fastcall UploadInt(TTMSFNCCloudBoxItem* AFolder, const System::UnicodeString AFolderName, System::UnicodeString AFileName);
	System::UnicodeString __fastcall DownloadInt(const System::UnicodeString AFileName, const System::UnicodeString ATargetFile, __int64 ASize);
	void __fastcall GetFolderInfoInt(const System::UnicodeString AFolderName, TTMSFNCCloudBoxItems* AItems, System::UnicodeString ACursorID = System::UnicodeString());
	Fmx::Tmsfnccloudstorage::TTMSFNCCloudItems* __fastcall GetFolderListInt(Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* AFolder, bool AHierarchical, bool AIsRootFolder = false, System::UnicodeString ACursorID = System::UnicodeString(), Fmx::Tmsfnccloudstorage::TTMSFNCCloudItems* AItems = (Fmx::Tmsfnccloudstorage::TTMSFNCCloudItems*)(0x0), System::TObject* ADataObject = (System::TObject*)(0x0));
	Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* __fastcall MoveFileInt(TTMSFNCCloudBoxItem* AItem, System::UnicodeString AFolderID);
	virtual Fmx::Tmsfnccloudstorage::TTMSFNCCloudItems* __fastcall CreateCloudItems();
	virtual System::UnicodeString __fastcall GetAuthenticationURL();
	System::UnicodeString __fastcall URLEncodeNoSlash(const System::UnicodeString AURL);
	__property TTMSFNCCloudBoxLanguage Language = {read=FLanguage, write=FLanguage, default=0};
	__property int FileLimit = {read=FFileLimit, write=SetFileLimit, default=10000};
	__property TTMSFNCCloudBoxOnSearchEvent OnSearch = {read=FOnSearch, write=FOnSearch};
	__property TTMSFNCCloudBoxOnGetLinkEvent OnGetLink = {read=FOnGetLink, write=FOnGetLink};
	__property TTMSFNCCloudBoxOnGetShareEvent OnGetShare = {read=FOnGetShare, write=FOnGetShare};
	__property TTMSFNCCloudBoxOnCreateFolderEvent OnCreateFolder = {read=FOnCreateFolder, write=FOnCreateFolder};
	__property TTMSFNCCloudBoxOnMoveFileEvent OnMoveFile = {read=FOnMoveFile, write=FOnMoveFile};
	__property TTMSFNCCloudBoxOnRenameFileEvent OnRenameFile = {read=FOnRenameFile, write=FOnRenameFile};
	__property TTMSFNCCloudBoxOnDownloadFileEvent OnDownloadFile = {read=FOnDownloadFile, write=FOnDownloadFile};
	__property TTMSFNCCloudBoxOnUploadFileEvent OnUploadFile = {read=FOnUploadFile, write=FOnUploadFile};
	__property TTMSFNCCloudBoxOnDeleteItemEvent OnDeleteItem = {read=FOnDeleteItem, write=FOnDeleteItem};
	__property TTMSFNCCloudBoxOnGetCurrentAccountEvent OnGetCurrentAccount = {read=FOnGetCurrentAccount, write=FOnGetCurrentAccount};
	__property TTMSFNCCloudBoxOnGetFileInfoEvent OnGetFileInfo = {read=FOnGetFileInfo, write=FOnGetFileInfo};
	__property TTMSFNCCloudBoxOnGetSpaceUsageEvent OnGetSpaceUsage = {read=FOnGetSpaceUsage, write=FOnGetSpaceUsage};
	__property TTMSFNCCloudBoxOnGetFolderListEvent OnGetFolderList = {read=FOnGetFolderList, write=FOnGetFolderList};
	__property TTMSFNCCloudBoxOnGetFolderListEvent OnGetFolderListComplete = {read=FOnGetFolderListComplete, write=FOnGetFolderListComplete};
	__property TTMSFNCCloudBoxOnGetFolderInfoEvent OnGetFolderInfo = {read=FOnGetFolderInfo, write=FOnGetFolderInfo};
	virtual System::UnicodeString __fastcall GetUploadSessionID(Fmx::Tmsfnccloudstorage::TTMSFNCCloudFile* ACloudFile, Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* AFolder = (Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem*)(0x0));
	virtual System::UnicodeString __fastcall GetUploadHost(Fmx::Tmsfnccloudstorage::TTMSFNCCloudFile* ACloudFile);
	virtual System::UnicodeString __fastcall GetUploadPath(Fmx::Tmsfnccloudstorage::TTMSFNCCloudFile* ACloudFile);
	virtual __int64 __fastcall GetUploadFixedByteLength();
	virtual void __fastcall GetUploadHeaders(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequest* ARequest, Fmx::Tmsfnccloudstorage::TTMSFNCCloudFile* ACloudFile, System::UnicodeString AByteRange, Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* AFolder = (Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem*)(0x0));
	virtual void __fastcall DoRequestUploadResumableFile(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	
public:
	__fastcall virtual TTMSFNCCustomCloudBox(System::Classes::TComponent* AOwner)/* overload */;
	__fastcall virtual ~TTMSFNCCustomCloudBox();
	virtual void __fastcall TestTokens(const Fmx::Tmsfnccloudbase::_di_TTMSFNCCloudBaseRequestResultEvent ATestTokensRequestResultEvent = Fmx::Tmsfnccloudbase::_di_TTMSFNCCloudBaseRequestResultEvent());
	void __fastcall GetAccountInfo();
	virtual void __fastcall GetDriveInfo();
	virtual Fmx::Tmsfnccloudstorage::TTMSFNCCloudItems* __fastcall GetFolderList(Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* AFolder = (Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem*)(0x0));
	virtual Fmx::Tmsfnccloudstorage::TTMSFNCCloudItems* __fastcall GetFolderListHierarchical(Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* AFolder, bool AIsRootFolder = false, System::TObject* ADataObject = (System::TObject*)(0x0));
	void __fastcall GetFileInfo(const System::UnicodeString AFileName);
	void __fastcall GetFolderInfo(const System::UnicodeString AFolderName)/* overload */;
	void __fastcall GetFolderInfo(const System::UnicodeString AFolderName, TTMSFNCCloudBoxItems* AItems)/* overload */;
	Fmx::Tmsfnccloudstorage::TTMSFNCCloudItems* __fastcall Search(const System::UnicodeString AFolderID, const System::UnicodeString AQuery, bool AExactMatch = true, TTMSFNCCloudBoxStringArray AFileExtensions = TTMSFNCCloudBoxStringArray(), bool AFileNameOnly = true);
	virtual Fmx::Tmsfnccloudstorage::TTMSFNCCloudItems* __fastcall SearchList(System::UnicodeString AQuery, bool AExactMatch, Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* AFolder);
	virtual System::UnicodeString __fastcall Download(Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* AItem, const System::UnicodeString ATargetFile)/* overload */;
	virtual System::UnicodeString __fastcall Download(const System::UnicodeString AFileName, const System::UnicodeString ATargetFile)/* overload */;
	virtual Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* __fastcall Upload(Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* AFolder, const System::UnicodeString AFileName)/* overload */;
	virtual Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* __fastcall Upload(System::UnicodeString AFolderName, const System::UnicodeString AFileName)/* overload */;
	virtual bool __fastcall Delete(Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* AItem)/* overload */;
	virtual Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* __fastcall CreateFolder(Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* AFolder, const System::UnicodeString AFolderName);
	void __fastcall GetLink(TTMSFNCCloudBoxItem* AItem);
	void __fastcall GetShare(TTMSFNCCloudBoxItem* AItem);
	virtual bool __fastcall GetTestTokensResult(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* __fastcall MoveFile(Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* AItem, Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* ATargetFolder);
	virtual Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* __fastcall MoveFileToRoot(Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* AItem);
	virtual Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* __fastcall RenameFile(Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* AItem, System::UnicodeString ANewFileName);
	__property TTMSFNCCloudBoxInfo* Info = {read=FInfo, write=SetInfo};
	__property TTMSFNCCloudBoxItems* BDrive = {read=GetDDrive};
public:
	/* TTMSFNCCustomCloudOAuth.Create */ inline __fastcall virtual TTMSFNCCustomCloudBox()/* overload */ : Fmx::Tmsfnccloudstorage::TTMSFNCCloudStorage() { }
	
	/* Hoisted overloads: */
	
public:
	inline Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* __fastcall  Upload(Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* AFolder, const System::UnicodeString AFileName, System::UnicodeString ADescription){ return Fmx::Tmsfnccloudstorage::TTMSFNCCloudStorage::Upload(AFolder, AFileName, ADescription); }
	inline bool __fastcall  Delete(const System::UnicodeString AFileName){ return Fmx::Tmsfnccloudstorage::TTMSFNCCloudStorage::Delete(AFileName); }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudBox : public TTMSFNCCustomCloudBox
{
	typedef TTMSFNCCustomCloudBox inherited;
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	
__published:
	__property Language = {default=0};
	__property FileLimit = {default=10000};
	__property OnSearch;
	__property OnGetLink;
	__property OnGetShare;
	__property OnCreateFolder;
	__property OnMoveFile;
	__property OnRenameFile;
	__property OnDownloadFile;
	__property OnUploadFile;
	__property OnDeleteItem;
	__property OnGetCurrentAccount;
	__property OnGetFileInfo;
	__property OnGetSpaceUsage;
	__property OnGetFolderList;
	__property OnGetFolderInfo;
	__property OnUploadResumableFile;
	__property OnUploadResumableFileFinished;
	__property OnUploadResumableFileFailed;
public:
	/* TTMSFNCCustomCloudBox.Create */ inline __fastcall virtual TTMSFNCCloudBox(System::Classes::TComponent* AOwner)/* overload */ : TTMSFNCCustomCloudBox(AOwner) { }
	/* TTMSFNCCustomCloudBox.Destroy */ inline __fastcall virtual ~TTMSFNCCloudBox() { }
	
public:
	/* TTMSFNCCustomCloudOAuth.Create */ inline __fastcall virtual TTMSFNCCloudBox()/* overload */ : TTMSFNCCustomCloudBox() { }
	
};


//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x2);
static constexpr System::Int8 MIN_VER = System::Int8(0x1);
static constexpr System::Int8 REL_VER = System::Int8(0x0);
static constexpr System::Int8 BLD_VER = System::Int8(0x1);
}	/* namespace Tmsfnccloudbox */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCCLOUDBOX)
using namespace Fmx::Tmsfnccloudbox;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfnccloudboxHPP
