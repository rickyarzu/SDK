// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCCloudGoogleDrive.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfnccloudgoogledriveHPP
#define Fmx_TmsfnccloudgoogledriveHPP

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
#include <FMX.TMSFNCCloudGoogle.hpp>
#include <FMX.TMSFNCUtils.hpp>
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
namespace Tmsfnccloudgoogledrive
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCCloudGoogleDriveItem;
class DELPHICLASS TTMSFNCCloudGoogleDriveItems;
class DELPHICLASS TTMSFNCCloudGoogleDriveInfo;
class DELPHICLASS TTMSFNCCustomCloudGoogleDrive;
class DELPHICLASS TTMSFNCCloudGoogleDrive;
//-- type declarations -------------------------------------------------------
enum DECLSPEC_DENUM TTMSFNCCloudGoogleSheetsMimeType : unsigned char { smtCSV, smtExcel, smtHTML, smtOpenOffice, smtPDF, smtText };

enum DECLSPEC_DENUM TTMSFNCCloudGoogleDocsMimeType : unsigned char { dmtEPUB, dmtHTML, dmtHTMLZipped, dmtOpenOffice, dmtPDF, dmtRTF, dmtText, dmtWord };

class PASCALIMPLEMENTATION TTMSFNCCloudGoogleDriveItem : public Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem
{
	typedef Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem inherited;
	
private:
	System::UnicodeString FAccessValue;
	System::UnicodeString FID;
	System::UnicodeString FMimeType;
	System::UnicodeString FDescription;
	bool FParentRoot;
	System::UnicodeString FDownloadURL;
	System::UnicodeString FAlternateLink;
	System::UnicodeString FWebContentLink;
	System::UnicodeString FParentID;
	System::UnicodeString FOwners;
	System::UnicodeString FETag;
	bool FShared;
	bool FPublicShare;
	void __fastcall SetPublicShare(const bool Value);
	
protected:
	__property System::UnicodeString AccessValue = {read=FAccessValue, write=FAccessValue};
	void __fastcall FromJSON(System::Json::TJSONValue* jo);
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__property System::UnicodeString ID = {read=FID, write=FID};
	__property System::UnicodeString MimeType = {read=FMimeType, write=FMimeType};
	__property System::UnicodeString Description = {read=FDescription, write=FDescription};
	__property System::UnicodeString Owners = {read=FOwners, write=FOwners};
	__property bool PublicShare = {read=FPublicShare, write=SetPublicShare, nodefault};
	__property bool Shared = {read=FShared, write=FShared, nodefault};
	__property System::UnicodeString ETag = {read=FETag, write=FETag};
	__property System::UnicodeString ParentID = {read=FParentID, write=FParentID};
	__property bool ParentRoot = {read=FParentRoot, write=FParentRoot, nodefault};
	__property System::UnicodeString DownloadURL = {read=FDownloadURL, write=FDownloadURL};
	__property System::UnicodeString AlternateLink = {read=FAlternateLink, write=FAlternateLink};
	__property System::UnicodeString WebContentLink = {read=FWebContentLink, write=FWebContentLink};
public:
	/* TTMSFNCCloudItem.Create */ inline __fastcall virtual TTMSFNCCloudGoogleDriveItem(System::Classes::TCollection* Collection) : Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem(Collection) { }
	/* TTMSFNCCloudItem.Destroy */ inline __fastcall virtual ~TTMSFNCCloudGoogleDriveItem() { }
	
};


#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudGoogleDriveItems : public Fmx::Tmsfnccloudstorage::TTMSFNCCloudItems
{
	typedef Fmx::Tmsfnccloudstorage::TTMSFNCCloudItems inherited;
	
private:
	HIDESBASE TTMSFNCCloudGoogleDriveItem* __fastcall GetItems(int index);
	HIDESBASE void __fastcall SetItems(int index, TTMSFNCCloudGoogleDriveItem* const Value);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall GetItemClass();
	
public:
	HIDESBASE TTMSFNCCloudGoogleDriveItem* __fastcall Add();
	HIDESBASE TTMSFNCCloudGoogleDriveItem* __fastcall Insert(int Index);
	__property TTMSFNCCloudGoogleDriveItem* Items[int index] = {read=GetItems, write=SetItems};
public:
	/* TTMSFNCCloudItems.Create */ inline __fastcall TTMSFNCCloudGoogleDriveItems(Fmx::Tmsfnccloudstorage::TTMSFNCCloudStorage* AOwner, Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* AFolder) : Fmx::Tmsfnccloudstorage::TTMSFNCCloudItems(AOwner, AFolder) { }
	
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCCloudGoogleDriveItems() { }
	
};

#pragma pack(pop)

class PASCALIMPLEMENTATION TTMSFNCCloudGoogleDriveInfo : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	double FQuota;
	System::UnicodeString FUserName;
	double FQuotaUsed;
	
__published:
	__property System::UnicodeString UserName = {read=FUserName, write=FUserName};
	__property double Quota = {read=FQuota, write=FQuota};
	__property double QuotaUsed = {read=FQuotaUsed, write=FQuotaUsed};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTMSFNCCloudGoogleDriveInfo() { }
	
public:
	/* TObject.Create */ inline __fastcall TTMSFNCCloudGoogleDriveInfo() : System::Classes::TPersistent() { }
	
};


enum DECLSPEC_DENUM TTMSFNCCloudGoogleDriveLanguage : unsigned char { glDefault, glEnglish, glDutch, glGerman, glFrench, glSpanish, glItalian, glPortuguese, glGreek, glDanish, glRussian, glRomanian, glSwedish, glFinnish, glTurkish, glJapanese };

typedef void __fastcall (__closure *TTMSFNCCloudGoogleDriveOnSearchEvent)(System::TObject* Sender, TTMSFNCCloudGoogleDriveItems* const ASearchResults, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudGoogleDriveOnCreateFolderEvent)(System::TObject* Sender, Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* const AFolder, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudGoogleDriveOnMoveFileEvent)(System::TObject* Sender, Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* const AFile, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudGoogleDriveOnRenameFileEvent)(System::TObject* Sender, Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* const AFile, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudGoogleDriveOnDownloadFileEvent)(System::TObject* Sender, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudGoogleDriveOnUploadFileEvent)(System::TObject* Sender, Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* const AUploadItem, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudGoogleDriveOnDeleteItemEvent)(System::TObject* Sender, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudGoogleDriveOnGetCurrentAccountEvent)(System::TObject* Sender, TTMSFNCCloudGoogleDriveInfo* const AInfo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudGoogleDriveOnGetFileInfoEvent)(System::TObject* Sender, TTMSFNCCloudGoogleDriveItem* const AFile, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudGoogleDriveOnGetSpaceUsageEvent)(System::TObject* Sender, TTMSFNCCloudGoogleDriveInfo* const AInfo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudGoogleDriveOnGetFolderListEvent)(System::TObject* Sender, Fmx::Tmsfnccloudstorage::TTMSFNCCloudItems* const AFolderList, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudGoogleDriveOnGetFolderInfoEvent)(System::TObject* Sender, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCustomCloudGoogleDrive : public Fmx::Tmsfnccloudgoogle::TTMSFNCCustomCloudGoogleStorage
{
	typedef Fmx::Tmsfnccloudgoogle::TTMSFNCCustomCloudGoogleStorage inherited;
	
private:
	System::UnicodeString FBasePath;
	System::UnicodeString FFolderMimeType;
	TTMSFNCCloudGoogleDriveItem* FFileInfo;
	TTMSFNCCloudGoogleDriveItems* FSearchResults;
	TTMSFNCCloudGoogleDriveInfo* FInfo;
	TTMSFNCCloudGoogleDriveLanguage FLanguage;
	TTMSFNCCloudGoogleDriveOnGetFolderListEvent FOnGetFolderList;
	TTMSFNCCloudGoogleDriveOnGetFolderListEvent FOnGetFolderListComplete;
	TTMSFNCCloudGoogleDriveOnGetSpaceUsageEvent FOnGetSpaceUsage;
	TTMSFNCCloudGoogleDriveOnCreateFolderEvent FOnCreateFolder;
	TTMSFNCCloudGoogleDriveOnGetFileInfoEvent FOnGetFileInfo;
	TTMSFNCCloudGoogleDriveOnDeleteItemEvent FOnDeleteItem;
	TTMSFNCCloudGoogleDriveOnDownloadFileEvent FOnDownloadFile;
	TTMSFNCCloudGoogleDriveOnSearchEvent FOnSearch;
	TTMSFNCCloudGoogleDriveOnGetFolderInfoEvent FOnGetFolderInfo;
	TTMSFNCCloudGoogleDriveOnGetCurrentAccountEvent FOnGetCurrentAccount;
	TTMSFNCCloudGoogleDriveOnUploadFileEvent FOnUploadFile;
	TTMSFNCCloudGoogleDriveOnGetFolderInfoEvent FOnGetFolderInfoComplete;
	TTMSFNCCloudGoogleDriveOnMoveFileEvent FOnMoveFile;
	TTMSFNCCloudGoogleDriveOnRenameFileEvent FOnRenameFile;
	bool FDeleteResult;
	TTMSFNCCloudGoogleDriveItem* FCreateFolderResult;
	TTMSFNCCloudGoogleDriveItem* FRenameFileResult;
	TTMSFNCCloudGoogleDriveItem* FUploadResult;
	System::UnicodeString FUploadSessionID;
	TTMSFNCCloudGoogleDriveItems* FFolderListResult;
	TTMSFNCCloudGoogleDriveItem* FHierarchicalFolder;
	void __fastcall SetInfo(TTMSFNCCloudGoogleDriveInfo* const Value);
	TTMSFNCCloudGoogleDriveItems* __fastcall GetDDrive();
	
protected:
	virtual System::UnicodeString __fastcall GetVersion();
	virtual void __fastcall DoSearch(TTMSFNCCloudGoogleDriveItems* const ASearchResults, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoCreateFolder(TTMSFNCCloudGoogleDriveItem* const AFolder, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoMoveFile(TTMSFNCCloudGoogleDriveItem* const AItem, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoRename(TTMSFNCCloudGoogleDriveItem* const AItem, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoDownloadFile(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoUploadFile(TTMSFNCCloudGoogleDriveItem* const AUploadItem, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoDeleteItem(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoGetCurrentAccount(TTMSFNCCloudGoogleDriveInfo* const AInfo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoGetFileInfo(TTMSFNCCloudGoogleDriveItem* const AFile, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoGetSpaceUsage(TTMSFNCCloudGoogleDriveInfo* const AInfo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoGetFolderList(Fmx::Tmsfnccloudstorage::TTMSFNCCloudItems* const AFolders, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoGetFolderListComplete(Fmx::Tmsfnccloudstorage::TTMSFNCCloudItems* const AFolders, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoGetFolderInfo(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoGetFolderInfoComplete(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoSetPermission(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoRemovePermission(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoRequestSearch(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoRequestCreateFolder(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoRequestMoveFile(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoRequestRename(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoRequestDownloadFile(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoRequestExportFile(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoRequestUploadFile(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoRequestDeleteItem(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoRequestGetFileInfo(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoRequestGetSpaceUsage(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoRequestGetFolderList(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoRequestGetFolderInfo(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoRequestSetPermission(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoRequestRemovePermission(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoRequestGetUploadSession(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	System::UnicodeString __fastcall DownloadInt(const System::UnicodeString AURL, const System::UnicodeString ATargetFile, __int64 ASize);
	System::UnicodeString __fastcall ExportFileInt(Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* AItem, const System::UnicodeString ATargetFile, System::UnicodeString ATargetMimeType);
	virtual void __fastcall GetDriveInfo();
	void __fastcall GetFolderInfoInt(const System::UnicodeString AFolderID, TTMSFNCCloudGoogleDriveItems* AItems, System::UnicodeString ACursorID = System::UnicodeString());
	Fmx::Tmsfnccloudstorage::TTMSFNCCloudItems* __fastcall GetFolderListInt(Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* AFolder, bool AHierarchical, bool AIsRootFolder = false, System::UnicodeString ACursorID = System::UnicodeString(), Fmx::Tmsfnccloudstorage::TTMSFNCCloudItems* AItems = (Fmx::Tmsfnccloudstorage::TTMSFNCCloudItems*)(0x0), System::TObject* ADataObject = (System::TObject*)(0x0));
	void __fastcall GetFileListInt(System::UnicodeString AQueryParam, System::UnicodeString ACursorID = System::UnicodeString());
	Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* __fastcall MoveFileInt(TTMSFNCCloudGoogleDriveItem* AItem, System::UnicodeString AFolderID);
	virtual Fmx::Tmsfnccloudstorage::TTMSFNCCloudItems* __fastcall CreateCloudItems();
	System::UnicodeString __fastcall URLEncodeNoSlash(const System::UnicodeString AURL);
	__property TTMSFNCCloudGoogleDriveLanguage Language = {read=FLanguage, write=FLanguage, default=0};
	__property TTMSFNCCloudGoogleDriveOnSearchEvent OnSearch = {read=FOnSearch, write=FOnSearch};
	__property TTMSFNCCloudGoogleDriveOnCreateFolderEvent OnCreateFolder = {read=FOnCreateFolder, write=FOnCreateFolder};
	__property TTMSFNCCloudGoogleDriveOnMoveFileEvent OnMoveFile = {read=FOnMoveFile, write=FOnMoveFile};
	__property TTMSFNCCloudGoogleDriveOnRenameFileEvent OnRenameFile = {read=FOnRenameFile, write=FOnRenameFile};
	__property TTMSFNCCloudGoogleDriveOnDownloadFileEvent OnDownloadFile = {read=FOnDownloadFile, write=FOnDownloadFile};
	__property TTMSFNCCloudGoogleDriveOnUploadFileEvent OnUploadFile = {read=FOnUploadFile, write=FOnUploadFile};
	__property TTMSFNCCloudGoogleDriveOnDeleteItemEvent OnDeleteItem = {read=FOnDeleteItem, write=FOnDeleteItem};
	__property TTMSFNCCloudGoogleDriveOnGetCurrentAccountEvent OnGetCurrentAccount = {read=FOnGetCurrentAccount, write=FOnGetCurrentAccount};
	__property TTMSFNCCloudGoogleDriveOnGetFileInfoEvent OnGetFileInfo = {read=FOnGetFileInfo, write=FOnGetFileInfo};
	__property TTMSFNCCloudGoogleDriveOnGetSpaceUsageEvent OnGetSpaceUsage = {read=FOnGetSpaceUsage, write=FOnGetSpaceUsage};
	__property TTMSFNCCloudGoogleDriveOnGetFolderListEvent OnGetFolderList = {read=FOnGetFolderList, write=FOnGetFolderList};
	__property TTMSFNCCloudGoogleDriveOnGetFolderListEvent OnGetFolderListComplete = {read=FOnGetFolderListComplete, write=FOnGetFolderListComplete};
	__property TTMSFNCCloudGoogleDriveOnGetFolderInfoEvent OnGetFolderInfo = {read=FOnGetFolderInfo, write=FOnGetFolderInfo};
	__property TTMSFNCCloudGoogleDriveOnGetFolderInfoEvent OnGetFolderInfoComplete = {read=FOnGetFolderInfoComplete, write=FOnGetFolderInfoComplete};
	void __fastcall SetPermission(TTMSFNCCloudGoogleDriveItem* AItem);
	void __fastcall RemovePermission(TTMSFNCCloudGoogleDriveItem* AItem);
	virtual System::UnicodeString __fastcall GetUploadSessionID(Fmx::Tmsfnccloudstorage::TTMSFNCCloudFile* ACloudFile, Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* AFolder = (Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem*)(0x0));
	virtual System::UnicodeString __fastcall GetUploadHost(Fmx::Tmsfnccloudstorage::TTMSFNCCloudFile* ACloudFile);
	virtual System::UnicodeString __fastcall GetUploadPath(Fmx::Tmsfnccloudstorage::TTMSFNCCloudFile* ACloudFile);
	virtual __int64 __fastcall GetUploadFixedByteLength();
	virtual void __fastcall GetUploadHeaders(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequest* ARequest, Fmx::Tmsfnccloudstorage::TTMSFNCCloudFile* ACloudFile, System::UnicodeString AByteRange, Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* AFolder = (Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem*)(0x0));
	virtual void __fastcall DoRequestUploadResumableFile(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	
public:
	__fastcall virtual TTMSFNCCustomCloudGoogleDrive(System::Classes::TComponent* AOwner)/* overload */;
	__fastcall virtual ~TTMSFNCCustomCloudGoogleDrive();
	void __fastcall GetAccountInfo();
	virtual Fmx::Tmsfnccloudstorage::TTMSFNCCloudItems* __fastcall GetFolderList(Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* AFolder = (Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem*)(0x0));
	virtual Fmx::Tmsfnccloudstorage::TTMSFNCCloudItems* __fastcall GetFolderListHierarchical(Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* AFolder, bool AIsRootFolder = false, System::TObject* ADataObject = (System::TObject*)(0x0));
	void __fastcall GetFileInfo(const System::UnicodeString AFileID);
	void __fastcall GetFolderInfo(const System::UnicodeString AFolderID)/* overload */;
	void __fastcall GetFolderInfo(const System::UnicodeString AFolderID, TTMSFNCCloudGoogleDriveItems* AItems)/* overload */;
	void __fastcall Search(const System::UnicodeString AFolderID, const System::UnicodeString AQuery, bool AExactMatch, System::UnicodeString AFileExtension = System::UnicodeString(), bool AFileNameOnly = true);
	Fmx::Tmsfnccloudstorage::TTMSFNCCloudItems* __fastcall SearchFile(System::UnicodeString AFileName, bool AExactMatch = false);
	Fmx::Tmsfnccloudstorage::TTMSFNCCloudItems* __fastcall SearchFolder(System::UnicodeString AFileName, bool AExactMatch = false);
	virtual Fmx::Tmsfnccloudstorage::TTMSFNCCloudItems* __fastcall SearchList(System::UnicodeString AQuery, bool AExactMatch, Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* AFolder = (Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem*)(0x0));
	virtual System::UnicodeString __fastcall Download(Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* AItem, const System::UnicodeString ATargetFile)/* overload */;
	System::UnicodeString __fastcall ExportFile(Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* AItem, const System::UnicodeString ATargetFile, TTMSFNCCloudGoogleSheetsMimeType ATargetMimeType)/* overload */;
	System::UnicodeString __fastcall ExportFile(Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* AItem, const System::UnicodeString ATargetFile, TTMSFNCCloudGoogleDocsMimeType ATargetMimeType)/* overload */;
	virtual Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* __fastcall Upload(Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* AFolder, const System::UnicodeString AFileName)/* overload */;
	virtual Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* __fastcall Upload(Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* AFolder, const System::UnicodeString AFileName, System::UnicodeString ADescription)/* overload */;
	virtual bool __fastcall Delete(Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* AItem)/* overload */;
	virtual bool __fastcall Delete(const System::UnicodeString AFileID)/* overload */;
	virtual Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* __fastcall CreateFolder(Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* AFolder, const System::UnicodeString AFolderName);
	virtual Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* __fastcall MoveFile(Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* AItem, Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* ATargetFolder);
	virtual Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* __fastcall MoveFileToRoot(Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* AItem);
	virtual Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* __fastcall RenameFile(Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* AItem, System::UnicodeString ANewFileName);
	__property TTMSFNCCloudGoogleDriveInfo* Info = {read=FInfo, write=SetInfo};
	__property TTMSFNCCloudGoogleDriveItems* GDrive = {read=GetDDrive};
public:
	/* TTMSFNCCustomCloudOAuth.Create */ inline __fastcall virtual TTMSFNCCustomCloudGoogleDrive()/* overload */ : Fmx::Tmsfnccloudgoogle::TTMSFNCCustomCloudGoogleStorage() { }
	
	/* Hoisted overloads: */
	
public:
	inline System::UnicodeString __fastcall  Download(const System::UnicodeString AFileName, const System::UnicodeString ATargetFile){ return Fmx::Tmsfnccloudstorage::TTMSFNCCloudStorage::Download(AFileName, ATargetFile); }
	inline Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* __fastcall  Upload(System::UnicodeString AFolderName, const System::UnicodeString AFileName){ return Fmx::Tmsfnccloudstorage::TTMSFNCCloudStorage::Upload(AFolderName, AFileName); }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudGoogleDrive : public TTMSFNCCustomCloudGoogleDrive
{
	typedef TTMSFNCCustomCloudGoogleDrive inherited;
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	
__published:
	__property Language = {default=0};
	__property OnSearch;
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
	__property OnGetFolderInfoComplete;
	__property OnUploadResumableFile;
	__property OnUploadResumableFileFinished;
	__property OnUploadResumableFileFailed;
	__property CloudFiles;
public:
	/* TTMSFNCCustomCloudGoogleDrive.Create */ inline __fastcall virtual TTMSFNCCloudGoogleDrive(System::Classes::TComponent* AOwner)/* overload */ : TTMSFNCCustomCloudGoogleDrive(AOwner) { }
	/* TTMSFNCCustomCloudGoogleDrive.Destroy */ inline __fastcall virtual ~TTMSFNCCloudGoogleDrive() { }
	
public:
	/* TTMSFNCCustomCloudOAuth.Create */ inline __fastcall virtual TTMSFNCCloudGoogleDrive()/* overload */ : TTMSFNCCustomCloudGoogleDrive() { }
	
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x2);
static constexpr System::Int8 MIN_VER = System::Int8(0x2);
static constexpr System::Int8 REL_VER = System::Int8(0x0);
static constexpr System::Int8 BLD_VER = System::Int8(0x4);
}	/* namespace Tmsfnccloudgoogledrive */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCCLOUDGOOGLEDRIVE)
using namespace Fmx::Tmsfnccloudgoogledrive;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfnccloudgoogledriveHPP
