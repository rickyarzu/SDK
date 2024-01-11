// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCCloudStorageServices.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfnccloudstorageservicesHPP
#define Fmx_TmsfnccloudstorageservicesHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <FMX.TMSFNCCloudOAuth.hpp>
#include <FMX.TMSFNCCloudStorage.hpp>
#include <FMX.TMSFNCCloudBase.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.TMSFNCUtils.hpp>
#include <FMX.TMSFNCCustomComponent.hpp>
#include <FMX.TMSFNCCloudGoogleDrive.hpp>
#include <FMX.TMSFNCCloudBox.hpp>
#include <FMX.TMSFNCCloudDropBox.hpp>
#include <FMX.TMSFNCCloudHubic.hpp>
#include <FMX.TMSFNCCloudMicrosoftOneDrive.hpp>
#include <FMX.Controls.hpp>
#include <FMX.Types.hpp>
#include <System.Generics.Collections.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>
#include <System.Types.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfnccloudstorageservices
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCCloudStorageServices;
//-- type declarations -------------------------------------------------------
enum DECLSPEC_DENUM TTMSFNCCloudStorageServicesType : unsigned char { cssBox, cssDropBox, cssGoogleDrive, cssHubic, cssMicrosoftOneDrive };

typedef void __fastcall (__closure *TTMSFNCCloudStorageServicesEvent)(System::TObject* Sender, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudStorageCreateFolderEvent)(System::TObject* Sender, Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* const AFolder, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudStorageServicesItemEvent)(System::TObject* Sender, Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* const AItem, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudStorageServicesItemsEvent)(System::TObject* Sender, Fmx::Tmsfnccloudstorage::TTMSFNCCloudItems* const AItems, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudStorageServicesUploadFileEvent)(System::TObject* Sender, Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* const AUploadItem, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudStorageServicesSearchEvent)(System::TObject* Sender, Fmx::Tmsfnccloudstorage::TTMSFNCCloudItems* const ASearchResults, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudStorageServices : public Fmx::Tmsfnccustomcomponent::TTMSFNCCustomComponent
{
	typedef Fmx::Tmsfnccustomcomponent::TTMSFNCCustomComponent inherited;
	
private:
	Fmx::Tmsfnccloudoauth::TTMSFNCCloudOAuthPersistTokens* FPersistTokens;
	Fmx::Tmsfnccloudoauth::TTMSFNCCloudOAuthAuthentication* FAuthentication;
	Fmx::Tmsfnccloudstorage::TTMSFNCCloudStorage* FStorage;
	Fmx::Tmsfnccloudgoogledrive::TTMSFNCCloudGoogleDrive* FStorageGoogleDrive;
	Fmx::Tmsfnccloudbox::TTMSFNCCloudBox* FStorageBox;
	Fmx::Tmsfncclouddropbox::TTMSFNCCloudDropBox* FStorageDropBox;
	Fmx::Tmsfnccloudhubic::TTMSFNCCloudHubic* FStorageHubic;
	Fmx::Tmsfnccloudmicrosoftonedrive::TTMSFNCCloudMicrosoftOneDrive* FStorageMicrosoftOneDrive;
	TTMSFNCCloudStorageServicesType FService;
	System::Classes::TNotifyEvent FOnConnected;
	TTMSFNCCloudStorageServicesItemsEvent FOnGetFolderList;
	TTMSFNCCloudStorageServicesUploadFileEvent FOnUploadFile;
	TTMSFNCCloudStorageServicesEvent FOnDownloadFile;
	TTMSFNCCloudStorageCreateFolderEvent FOnCreateFolder;
	TTMSFNCCloudStorageServicesEvent FOnDeleteItem;
	TTMSFNCCloudStorageServicesSearchEvent FOnSearch;
	TTMSFNCCloudStorageServicesEvent FOnMoveFile;
	TTMSFNCCloudStorageServicesItemEvent FOnRenameFile;
	Fmx::Tmsfnccloudstorage::TTMSFNCCloudStorageUploadEvent FOnUploadResumableFile;
	Fmx::Tmsfnccloudstorage::TTMSFNCCloudStorageUploadEvent FOnUploadResumableFileFinished;
	Fmx::Tmsfnccloudstorage::TTMSFNCCloudStorageUploadEvent FOnUploadResumableFileFailed;
	void __fastcall SetService(const TTMSFNCCloudStorageServicesType Value);
	Fmx::Tmsfnccloudstorage::TTMSFNCCloudStorage* __fastcall GetStorage();
	Fmx::Tmsfnccloudstorage::TTMSFNCCloudItems* __fastcall GetDrive();
	void __fastcall SetAuthentication(Fmx::Tmsfnccloudoauth::TTMSFNCCloudOAuthAuthentication* const Value);
	void __fastcall SetPersistTokens(Fmx::Tmsfnccloudoauth::TTMSFNCCloudOAuthPersistTokens* const Value);
	Fmx::Tmsfnccloudoauth::TTMSFNCCloudOAuthAuthentication* __fastcall GetAuthentication();
	Fmx::Tmsfnccloudoauth::TTMSFNCCloudOAuthPersistTokens* __fastcall GetPersistTokens();
	Fmx::Tmsfnccloudstorage::TTMSFNCCloudFiles* __fastcall GetCloudFiles();
	
protected:
	virtual NativeUInt __fastcall GetInstance();
	void __fastcall DoConnected(System::TObject* Sender);
	void __fastcall DoCreateFolder(System::TObject* Sender, Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* const AFolder, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoGetFolderList(System::TObject* Sender, Fmx::Tmsfnccloudstorage::TTMSFNCCloudItems* const AFolderList, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoDownloadFile(System::TObject* Sender, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoUploadFile(System::TObject* Sender, Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* const AUploadItem, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoDeleteItem(System::TObject* Sender, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoSearch(System::TObject* Sender, Fmx::Tmsfnccloudstorage::TTMSFNCCloudItems* const ASearchResults, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoSearchBox(System::TObject* Sender, Fmx::Tmsfnccloudbox::TTMSFNCCloudBoxItems* const ASearchResults, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoSearchDropBox(System::TObject* Sender, Fmx::Tmsfncclouddropbox::TTMSFNCCloudDropBoxItems* const ASearchResults, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoSearchGoogleDrive(System::TObject* Sender, Fmx::Tmsfnccloudgoogledrive::TTMSFNCCloudGoogleDriveItems* const ASearchResults, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoSearchMicrosoftOneDrive(System::TObject* Sender, Fmx::Tmsfnccloudmicrosoftonedrive::TTMSFNCCloudMicrosoftOneDriveItems* const ASearchResults, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoMoveFile(System::TObject* Sender, Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* const AItem, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoRenameFile(System::TObject* Sender, Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* const AItem, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoUploadResumableFile(System::TObject* Sender, Fmx::Tmsfnccloudstorage::TTMSFNCCloudFile* const ACloudFile, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoUploadResumableFileFinished(System::TObject* Sender, Fmx::Tmsfnccloudstorage::TTMSFNCCloudFile* const ACloudFile, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoUploadResumableFileFailed(System::TObject* Sender, Fmx::Tmsfnccloudstorage::TTMSFNCCloudFile* const ACloudFile, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	
public:
	__fastcall virtual TTMSFNCCloudStorageServices(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCCloudStorageServices();
	void __fastcall Connect();
	void __fastcall ClearTokens();
	Fmx::Tmsfnccloudstorage::TTMSFNCCloudItems* __fastcall GetFolderList(Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* AFolder = (Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem*)(0x0));
	Fmx::Tmsfnccloudstorage::TTMSFNCCloudItems* __fastcall GetFolderListHierarchical(Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* AFolder, bool AIsRootFolder = false, System::TObject* ADataObject = (System::TObject*)(0x0));
	Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* __fastcall CreateFolder(Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* AFolder, const System::UnicodeString AFolderName);
	System::UnicodeString __fastcall Download(Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* AItem, const System::UnicodeString ATargetFile);
	Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* __fastcall Upload(Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* AFolder, const System::UnicodeString AFileName);
	virtual void __fastcall UploadResumableFile(Fmx::Tmsfnccloudstorage::TTMSFNCCloudFile* ACloudFile, Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* AFolder = (Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem*)(0x0));
	bool __fastcall Delete(Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* AItem);
	virtual Fmx::Tmsfnccloudstorage::TTMSFNCCloudItems* __fastcall Search(System::UnicodeString AQuery, bool AExactMatch, Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* AFolder);
	virtual Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* __fastcall MoveFile(Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* AItem, Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* ATargetFolder);
	virtual Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* __fastcall MoveFileToRoot(Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* AItem);
	virtual Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* __fastcall RenameFile(Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* AItem, System::UnicodeString ANewFileName);
	__property Fmx::Tmsfnccloudstorage::TTMSFNCCloudStorage* Storage = {read=GetStorage};
	__property Fmx::Tmsfnccloudstorage::TTMSFNCCloudItems* Drive = {read=GetDrive};
	__property Fmx::Tmsfnccloudstorage::TTMSFNCCloudFiles* CloudFiles = {read=GetCloudFiles};
	void __fastcall BeginSync();
	void __fastcall EndSync();
	
__published:
	__property Fmx::Tmsfnccloudoauth::TTMSFNCCloudOAuthAuthentication* Authentication = {read=GetAuthentication, write=SetAuthentication};
	__property Fmx::Tmsfnccloudoauth::TTMSFNCCloudOAuthPersistTokens* PersistTokens = {read=GetPersistTokens, write=SetPersistTokens};
	__property TTMSFNCCloudStorageServicesType Service = {read=FService, write=SetService, default=2};
	__property System::Classes::TNotifyEvent OnConnected = {read=FOnConnected, write=FOnConnected};
	__property TTMSFNCCloudStorageServicesItemsEvent OnGetFolderList = {read=FOnGetFolderList, write=FOnGetFolderList};
	__property TTMSFNCCloudStorageCreateFolderEvent OnCreateFolder = {read=FOnCreateFolder, write=FOnCreateFolder};
	__property TTMSFNCCloudStorageServicesEvent OnDownloadFile = {read=FOnDownloadFile, write=FOnDownloadFile};
	__property TTMSFNCCloudStorageServicesUploadFileEvent OnUploadFile = {read=FOnUploadFile, write=FOnUploadFile};
	__property TTMSFNCCloudStorageServicesEvent OnDeleteItem = {read=FOnDeleteItem, write=FOnDeleteItem};
	__property TTMSFNCCloudStorageServicesSearchEvent OnSearch = {read=FOnSearch, write=FOnSearch};
	__property TTMSFNCCloudStorageServicesEvent OnMoveFile = {read=FOnMoveFile, write=FOnMoveFile};
	__property TTMSFNCCloudStorageServicesItemEvent OnRenameFile = {read=FOnRenameFile, write=FOnRenameFile};
	__property Fmx::Tmsfnccloudstorage::TTMSFNCCloudStorageUploadEvent OnUploadResumableFile = {read=FOnUploadResumableFile, write=FOnUploadResumableFile};
	__property Fmx::Tmsfnccloudstorage::TTMSFNCCloudStorageUploadEvent OnUploadResumableFileFinished = {read=FOnUploadResumableFileFinished, write=FOnUploadResumableFileFinished};
	__property Fmx::Tmsfnccloudstorage::TTMSFNCCloudStorageUploadEvent OnUploadResumableFileFailed = {read=FOnUploadResumableFileFailed, write=FOnUploadResumableFileFailed};
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x2);
static constexpr System::Int8 MIN_VER = System::Int8(0x1);
static constexpr System::Int8 REL_VER = System::Int8(0x0);
static constexpr System::Int8 BLD_VER = System::Int8(0x0);
}	/* namespace Tmsfnccloudstorageservices */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCCLOUDSTORAGESERVICES)
using namespace Fmx::Tmsfnccloudstorageservices;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfnccloudstorageservicesHPP
