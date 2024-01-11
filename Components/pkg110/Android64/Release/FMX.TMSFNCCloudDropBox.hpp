// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCCloudDropBox.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncclouddropboxHPP
#define Fmx_TmsfncclouddropboxHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <System.SysUtils.hpp>
#include <FMX.TMSFNCCloudBase.hpp>
#include <FMX.TMSFNCCloudStorage.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.TMSFNCUtils.hpp>
#include <FMX.TMSFNCCloudOAuth.hpp>
#include <FMX.TMSFNCCustomComponent.hpp>
#include <FMX.Controls.hpp>
#include <FMX.Types.hpp>
#include <System.Generics.Collections.hpp>
#include <System.Generics.Defaults.hpp>
#include <System.Types.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncclouddropbox
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCCloudDropBoxItem;
class DELPHICLASS TTMSFNCCloudDropBoxItems;
class DELPHICLASS TTMSFNCCloudDropBoxInfo;
class DELPHICLASS TTMSFNCCustomCloudDropBox;
class DELPHICLASS TTMSFNCCloudDropBox;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TTMSFNCCloudDropBoxItem : public Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem
{
	typedef Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem inherited;
	
private:
	System::UnicodeString FLink;
	System::UnicodeString FPath;
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
	__property System::UnicodeString Path = {read=FPath, write=FPath};
	__property System::UnicodeString Share = {read=GetShare};
	__property System::UnicodeString Revision = {read=FRevision, write=FRevision};
public:
	/* TTMSFNCCloudItem.Create */ inline __fastcall virtual TTMSFNCCloudDropBoxItem(System::Classes::TCollection* Collection) : Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem(Collection) { }
	/* TTMSFNCCloudItem.Destroy */ inline __fastcall virtual ~TTMSFNCCloudDropBoxItem() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudDropBoxItems : public Fmx::Tmsfnccloudstorage::TTMSFNCCloudItems
{
	typedef Fmx::Tmsfnccloudstorage::TTMSFNCCloudItems inherited;
	
private:
	HIDESBASE TTMSFNCCloudDropBoxItem* __fastcall GetItems(int index);
	HIDESBASE void __fastcall SetItems(int index, TTMSFNCCloudDropBoxItem* const Value);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall GetItemClass();
	
public:
	HIDESBASE TTMSFNCCloudDropBoxItem* __fastcall Add();
	HIDESBASE TTMSFNCCloudDropBoxItem* __fastcall Insert(int Index);
	__property TTMSFNCCloudDropBoxItem* Items[int index] = {read=GetItems, write=SetItems};
public:
	/* TTMSFNCCloudItems.Create */ inline __fastcall TTMSFNCCloudDropBoxItems(Fmx::Tmsfnccloudstorage::TTMSFNCCloudStorage* AOwner, Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* AFolder) : Fmx::Tmsfnccloudstorage::TTMSFNCCloudItems(AOwner, AFolder) { }
	
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCCloudDropBoxItems() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudDropBoxInfo : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	double FQuota;
	System::UnicodeString FUID;
	System::UnicodeString FCountry;
	double FQuotaNormal;
	double FQuotaShared;
	System::UnicodeString FUserName;
	
__published:
	__property System::UnicodeString UserName = {read=FUserName, write=FUserName};
	__property System::UnicodeString Country = {read=FCountry, write=FCountry};
	__property System::UnicodeString UID = {read=FUID, write=FUID};
	__property double Quota = {read=FQuota, write=FQuota};
	__property double QuotaShared = {read=FQuotaShared, write=FQuotaShared};
	__property double QuotaNormal = {read=FQuotaNormal, write=FQuotaNormal};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTMSFNCCloudDropBoxInfo() { }
	
public:
	/* TObject.Create */ inline __fastcall TTMSFNCCloudDropBoxInfo() : System::Classes::TPersistent() { }
	
};


enum DECLSPEC_DENUM TTMSFNCCloudDropBoxMode : unsigned char { dmRoot, dmSandbox };

enum DECLSPEC_DENUM TTMSFNCCloudDropBoxLanguage : unsigned char { dlDefault, dlEnglish, dlGerman, dlFrench, dlIndonesian, dlChinese, dlItalian, dlJapanese, dlPolish, dlRussian, dlPortuguese, dlSpanish, dlKorean };

enum DECLSPEC_DENUM TTMSFNCCloudDropBoxUploadMode : unsigned char { umAdd, umOverwrite };

typedef void __fastcall (__closure *TTMSFNCCloudDropBoxOnSearchEvent)(System::TObject* Sender, TTMSFNCCloudDropBoxItems* const ASearchResults, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudDropBoxOnGetLinkEvent)(System::TObject* Sender, const System::UnicodeString ALink, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudDropBoxOnGetShareEvent)(System::TObject* Sender, const System::UnicodeString AShare, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudDropBoxOnCreateShareEvent)(System::TObject* Sender, const System::UnicodeString AShare, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudDropBoxOnCreateFolderEvent)(System::TObject* Sender, Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* const AFolder, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudDropBoxOnMoveFileEvent)(System::TObject* Sender, Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* const AFile, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudDropBoxOnRenameFileEvent)(System::TObject* Sender, Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* const AFile, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudDropBoxOnDownloadFileEvent)(System::TObject* Sender, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudDropBoxOnUploadFileEvent)(System::TObject* Sender, Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* const AUploadItem, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudDropBoxOnDeleteItemEvent)(System::TObject* Sender, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudDropBoxOnGetCurrentAccountEvent)(System::TObject* Sender, TTMSFNCCloudDropBoxInfo* const AInfo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudDropBoxOnGetFileInfoEvent)(System::TObject* Sender, TTMSFNCCloudDropBoxItem* const AFile, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudDropBoxOnGetSpaceUsageEvent)(System::TObject* Sender, TTMSFNCCloudDropBoxInfo* const AInfo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudDropBoxOnGetFolderListEvent)(System::TObject* Sender, Fmx::Tmsfnccloudstorage::TTMSFNCCloudItems* const AFolderList, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudDropBoxOnGetFolderInfoEvent)(System::TObject* Sender, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

class PASCALIMPLEMENTATION TTMSFNCCustomCloudDropBox : public Fmx::Tmsfnccloudstorage::TTMSFNCCloudStorage
{
	typedef Fmx::Tmsfnccloudstorage::TTMSFNCCloudStorage inherited;
	
private:
	TTMSFNCCloudDropBoxItem* FFileInfo;
	TTMSFNCCloudDropBoxItems* FSearchResults;
	TTMSFNCCloudDropBoxInfo* FInfo;
	TTMSFNCCloudDropBoxMode FMode;
	int FFileLimit;
	TTMSFNCCloudDropBoxLanguage FLanguage;
	TTMSFNCCloudDropBoxUploadMode FUploadMode;
	TTMSFNCCloudDropBoxOnGetFolderListEvent FOnGetFolderList;
	TTMSFNCCloudDropBoxOnGetShareEvent FOnGetShare;
	TTMSFNCCloudDropBoxOnGetLinkEvent FOnGetLink;
	TTMSFNCCloudDropBoxOnGetSpaceUsageEvent FOnGetSpaceUsage;
	TTMSFNCCloudDropBoxOnCreateFolderEvent FOnCreateFolder;
	TTMSFNCCloudDropBoxOnCreateShareEvent FOnCreateShare;
	TTMSFNCCloudDropBoxOnGetFileInfoEvent FOnGetFileInfo;
	TTMSFNCCloudDropBoxOnDeleteItemEvent FOnDeleteItem;
	TTMSFNCCloudDropBoxOnDownloadFileEvent FOnDownloadFile;
	TTMSFNCCloudDropBoxOnSearchEvent FOnSearch;
	TTMSFNCCloudDropBoxOnGetFolderInfoEvent FOnGetFolderInfo;
	TTMSFNCCloudDropBoxOnGetCurrentAccountEvent FOnGetCurrentAccount;
	TTMSFNCCloudDropBoxOnUploadFileEvent FOnUploadFile;
	TTMSFNCCloudDropBoxOnGetFolderListEvent FOnGetFolderListComplete;
	TTMSFNCCloudDropBoxOnMoveFileEvent FOnMoveFile;
	TTMSFNCCloudDropBoxOnRenameFileEvent FOnRenameFile;
	bool FDeleteResult;
	TTMSFNCCloudDropBoxItem* FCreateFolderResult;
	TTMSFNCCloudDropBoxItem* FRenameFileResult;
	TTMSFNCCloudDropBoxItem* FUploadResult;
	System::UnicodeString FUploadSessionID;
	TTMSFNCCloudDropBoxItems* FFolderListResult;
	TTMSFNCCloudDropBoxItem* FHierarchicalFolder;
	void __fastcall SetInfo(TTMSFNCCloudDropBoxInfo* const Value);
	TTMSFNCCloudDropBoxItems* __fastcall GetDDrive();
	void __fastcall SetFileLimit(const int Value);
	
protected:
	virtual System::UnicodeString __fastcall GetVersion();
	virtual void __fastcall DoSearch(TTMSFNCCloudDropBoxItems* const ASearchResults, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoGetLink(const System::UnicodeString ALink, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoGetShare(const System::UnicodeString AShare, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoCreateShare(const System::UnicodeString AShare, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoCreateFolder(TTMSFNCCloudDropBoxItem* const AFolder, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoMoveFile(TTMSFNCCloudDropBoxItem* const AItem, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoRenameFile(TTMSFNCCloudDropBoxItem* const AItem, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoDownloadFile(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoUploadFile(TTMSFNCCloudDropBoxItem* const AUploadItem, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoDeleteItem(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoGetCurrentAccount(TTMSFNCCloudDropBoxInfo* const AInfo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoGetFileInfo(TTMSFNCCloudDropBoxItem* const AFile, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoGetSpaceUsage(TTMSFNCCloudDropBoxInfo* const AInfo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoGetFolderList(Fmx::Tmsfnccloudstorage::TTMSFNCCloudItems* const AFolders, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoGetFolderListComplete(Fmx::Tmsfnccloudstorage::TTMSFNCCloudItems* const AFolders, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoGetFolderInfo(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoRequestSearch(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoRequestGetLink(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoRequestGetShare(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoRequestCreateShare(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoRequestCreateFolder(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoRequestMoveFile(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoRequestRename(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoRequestDownloadFile(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoRequestUploadFile(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoRequestDeleteItem(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoRequestGetCurrentAccount(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoRequestGetFileInfo(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoRequestGetSpaceUsage(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoRequestGetFolderList(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoRequestGetFolderInfo(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoRequestGetUploadSession(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall RetrieveAccessToken();
	virtual void __fastcall RetrieveRefreshToken();
	Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* __fastcall UploadInt(TTMSFNCCloudDropBoxItem* AFolder, const System::UnicodeString AFolderName, System::UnicodeString AFileName);
	System::UnicodeString __fastcall DownloadInt(const System::UnicodeString AFileName, const System::UnicodeString ATargetFile, __int64 ASize);
	void __fastcall DownloadFolderAsZipInt(const System::UnicodeString AFolderName, const System::UnicodeString ATargetFile);
	void __fastcall GetFolderInfoInt(const System::UnicodeString AFolderName, TTMSFNCCloudDropBoxItems* AItems, System::UnicodeString ACursorID = System::UnicodeString());
	Fmx::Tmsfnccloudstorage::TTMSFNCCloudItems* __fastcall GetFolderListInt(Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* AFolder, bool AHierarchical, bool AIsRootFolder = false, System::UnicodeString ACursorID = System::UnicodeString(), Fmx::Tmsfnccloudstorage::TTMSFNCCloudItems* AItems = (Fmx::Tmsfnccloudstorage::TTMSFNCCloudItems*)(0x0), System::TObject* ADataObject = (System::TObject*)(0x0));
	Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* __fastcall MoveFileInt(TTMSFNCCloudDropBoxItem* AItem, System::UnicodeString AFolderPath);
	virtual Fmx::Tmsfnccloudstorage::TTMSFNCCloudItems* __fastcall CreateCloudItems();
	virtual System::UnicodeString __fastcall GetAuthenticationURL();
	System::UnicodeString __fastcall URLEncodeNoSlash(const System::UnicodeString AURL);
	__property TTMSFNCCloudDropBoxLanguage Language = {read=FLanguage, write=FLanguage, default=0};
	__property int FileLimit = {read=FFileLimit, write=SetFileLimit, default=10000};
	__property TTMSFNCCloudDropBoxUploadMode UploadMode = {read=FUploadMode, write=FUploadMode, default=0};
	__property TTMSFNCCloudDropBoxOnSearchEvent OnSearch = {read=FOnSearch, write=FOnSearch};
	__property TTMSFNCCloudDropBoxOnGetLinkEvent OnGetLink = {read=FOnGetLink, write=FOnGetLink};
	__property TTMSFNCCloudDropBoxOnGetShareEvent OnGetShare = {read=FOnGetShare, write=FOnGetShare};
	__property TTMSFNCCloudDropBoxOnCreateShareEvent OnCreateShare = {read=FOnCreateShare, write=FOnCreateShare};
	__property TTMSFNCCloudDropBoxOnCreateFolderEvent OnCreateFolder = {read=FOnCreateFolder, write=FOnCreateFolder};
	__property TTMSFNCCloudDropBoxOnMoveFileEvent OnMoveFile = {read=FOnMoveFile, write=FOnMoveFile};
	__property TTMSFNCCloudDropBoxOnRenameFileEvent OnRenameFile = {read=FOnRenameFile, write=FOnRenameFile};
	__property TTMSFNCCloudDropBoxOnDownloadFileEvent OnDownloadFile = {read=FOnDownloadFile, write=FOnDownloadFile};
	__property TTMSFNCCloudDropBoxOnUploadFileEvent OnUploadFile = {read=FOnUploadFile, write=FOnUploadFile};
	__property TTMSFNCCloudDropBoxOnDeleteItemEvent OnDeleteItem = {read=FOnDeleteItem, write=FOnDeleteItem};
	__property TTMSFNCCloudDropBoxOnGetCurrentAccountEvent OnGetCurrentAccount = {read=FOnGetCurrentAccount, write=FOnGetCurrentAccount};
	__property TTMSFNCCloudDropBoxOnGetFileInfoEvent OnGetFileInfo = {read=FOnGetFileInfo, write=FOnGetFileInfo};
	__property TTMSFNCCloudDropBoxOnGetSpaceUsageEvent OnGetSpaceUsage = {read=FOnGetSpaceUsage, write=FOnGetSpaceUsage};
	__property TTMSFNCCloudDropBoxOnGetFolderListEvent OnGetFolderList = {read=FOnGetFolderList, write=FOnGetFolderList};
	__property TTMSFNCCloudDropBoxOnGetFolderListEvent OnGetFolderListComplete = {read=FOnGetFolderListComplete, write=FOnGetFolderListComplete};
	__property TTMSFNCCloudDropBoxOnGetFolderInfoEvent OnGetFolderInfo = {read=FOnGetFolderInfo, write=FOnGetFolderInfo};
	virtual Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestMethod __fastcall GetUploadMethod();
	virtual System::UnicodeString __fastcall GetUploadSessionID(Fmx::Tmsfnccloudstorage::TTMSFNCCloudFile* ACloudFile, Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* AFolder = (Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem*)(0x0));
	virtual System::UnicodeString __fastcall GetUploadHost(Fmx::Tmsfnccloudstorage::TTMSFNCCloudFile* ACloudFile);
	virtual System::UnicodeString __fastcall GetUploadPath(Fmx::Tmsfnccloudstorage::TTMSFNCCloudFile* ACloudFile);
	virtual __int64 __fastcall GetUploadFixedByteLength();
	virtual void __fastcall GetUploadHeaders(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequest* ARequest, Fmx::Tmsfnccloudstorage::TTMSFNCCloudFile* ACloudFile, System::UnicodeString AByteRange, Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* AFolder = (Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem*)(0x0));
	virtual void __fastcall DoRequestUploadResumableFile(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	
public:
	__fastcall virtual TTMSFNCCustomCloudDropBox(System::Classes::TComponent* AOwner)/* overload */;
	__fastcall virtual ~TTMSFNCCustomCloudDropBox();
	virtual void __fastcall TestTokens(const Fmx::Tmsfnccloudbase::_di_TTMSFNCCloudBaseRequestResultEvent ATestTokensRequestResultEvent = Fmx::Tmsfnccloudbase::_di_TTMSFNCCloudBaseRequestResultEvent());
	virtual void __fastcall Test();
	void __fastcall GetAccountInfo();
	virtual void __fastcall GetDriveInfo();
	virtual Fmx::Tmsfnccloudstorage::TTMSFNCCloudItems* __fastcall GetFolderList(Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* AFolder = (Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem*)(0x0));
	virtual Fmx::Tmsfnccloudstorage::TTMSFNCCloudItems* __fastcall GetFolderListHierarchical(Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* AFolder, bool AIsRootFolder = false, System::TObject* ADataObject = (System::TObject*)(0x0));
	void __fastcall GetFileInfo(const System::UnicodeString AFileName);
	void __fastcall GetFolderInfo(const System::UnicodeString AFolderName)/* overload */;
	void __fastcall GetFolderInfo(const System::UnicodeString AFolderName, TTMSFNCCloudDropBoxItems* AItems)/* overload */;
	Fmx::Tmsfnccloudstorage::TTMSFNCCloudItems* __fastcall Search(const System::UnicodeString AFolderName, const System::UnicodeString AQuery, Fmx::Tmsfnccloudstorage::TStringArray AFileExtensions = Fmx::Tmsfnccloudstorage::TStringArray(), bool AFileNameOnly = true);
	virtual Fmx::Tmsfnccloudstorage::TTMSFNCCloudItems* __fastcall SearchList(System::UnicodeString AQuery, bool AExactMatch, Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* AFolder);
	virtual System::UnicodeString __fastcall Download(Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* AItem, const System::UnicodeString ATargetFile)/* overload */;
	virtual System::UnicodeString __fastcall Download(const System::UnicodeString AFileName, const System::UnicodeString ATargetFile)/* overload */;
	void __fastcall DownloadFolderAsZip(Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* AItem, const System::UnicodeString ATargetFile);
	virtual Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* __fastcall Upload(Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* AFolder, const System::UnicodeString AFileName)/* overload */;
	virtual Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* __fastcall Upload(System::UnicodeString AFolderName, const System::UnicodeString AFileName)/* overload */;
	virtual bool __fastcall Delete(Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* AItem)/* overload */;
	virtual bool __fastcall Delete(const System::UnicodeString AFileName)/* overload */;
	virtual Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* __fastcall CreateFolder(Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* AFolder, const System::UnicodeString AFolderName);
	void __fastcall GetLink(TTMSFNCCloudDropBoxItem* AItem);
	void __fastcall GetShare(TTMSFNCCloudDropBoxItem* AItem);
	virtual bool __fastcall GetTestTokensResult(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* __fastcall MoveFile(Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* AItem, Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* ATargetFolder);
	virtual Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* __fastcall MoveFileToRoot(Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* AItem);
	virtual Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* __fastcall RenameFile(Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* AItem, System::UnicodeString ANewFileName);
	__property TTMSFNCCloudDropBoxInfo* Info = {read=FInfo, write=SetInfo};
	__property TTMSFNCCloudDropBoxItems* DDrive = {read=GetDDrive};
	__property TTMSFNCCloudDropBoxMode Mode = {read=FMode, write=FMode, nodefault};
public:
	/* TTMSFNCCustomCloudOAuth.Create */ inline __fastcall virtual TTMSFNCCustomCloudDropBox()/* overload */ : Fmx::Tmsfnccloudstorage::TTMSFNCCloudStorage() { }
	
	/* Hoisted overloads: */
	
public:
	inline Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* __fastcall  Upload(Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* AFolder, const System::UnicodeString AFileName, System::UnicodeString ADescription){ return Fmx::Tmsfnccloudstorage::TTMSFNCCloudStorage::Upload(AFolder, AFileName, ADescription); }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudDropBox : public TTMSFNCCustomCloudDropBox
{
	typedef TTMSFNCCustomCloudDropBox inherited;
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	
__published:
	__property Language = {default=0};
	__property FileLimit = {default=10000};
	__property UploadMode = {default=0};
	__property OnSearch;
	__property OnGetLink;
	__property OnGetShare;
	__property OnCreateShare;
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
	__property OnGetFolderListComplete;
	__property OnGetFolderInfo;
	__property OnUploadResumableFile;
	__property OnUploadResumableFileFinished;
	__property OnUploadResumableFileFailed;
public:
	/* TTMSFNCCustomCloudDropBox.Create */ inline __fastcall virtual TTMSFNCCloudDropBox(System::Classes::TComponent* AOwner)/* overload */ : TTMSFNCCustomCloudDropBox(AOwner) { }
	/* TTMSFNCCustomCloudDropBox.Destroy */ inline __fastcall virtual ~TTMSFNCCloudDropBox() { }
	
public:
	/* TTMSFNCCustomCloudOAuth.Create */ inline __fastcall virtual TTMSFNCCloudDropBox()/* overload */ : TTMSFNCCustomCloudDropBox() { }
	
};


//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x2);
static constexpr System::Int8 MIN_VER = System::Int8(0x1);
static constexpr System::Int8 REL_VER = System::Int8(0x0);
static constexpr System::Int8 BLD_VER = System::Int8(0x3);
}	/* namespace Tmsfncclouddropbox */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCCLOUDDROPBOX)
using namespace Fmx::Tmsfncclouddropbox;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncclouddropboxHPP
