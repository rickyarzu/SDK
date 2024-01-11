// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCCloudOpenStack.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfnccloudopenstackHPP
#define Fmx_TmsfnccloudopenstackHPP

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
namespace Tmsfnccloudopenstack
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCCloudOpenStackItem;
class DELPHICLASS TTMSFNCCloudOpenStackItems;
class DELPHICLASS TTMSFNCCloudCustomOpenStack;
//-- type declarations -------------------------------------------------------
typedef void __fastcall (__closure *TTMSFNCCloudOpenStackOnGetFolderListEvent)(System::TObject* Sender, Fmx::Tmsfnccloudstorage::TTMSFNCCloudItems* const AFolderList, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudOpenStackOnDownloadFileEvent)(System::TObject* Sender, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudOpenStackOnUploadFileEvent)(System::TObject* Sender, Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* const AUploadItem, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudOpenStackOnDeleteItemEvent)(System::TObject* Sender, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudOpenStackOnCreateFolderEvent)(System::TObject* Sender, Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* const AFolder, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

class PASCALIMPLEMENTATION TTMSFNCCloudOpenStackItem : public Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem
{
	typedef Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem inherited;
	
private:
	System::UnicodeString FID;
	System::UnicodeString FPath;
	bool FParentRoot;
	System::UnicodeString FParentID;
	bool FInTree;
	System::UnicodeString FETag;
	
protected:
	bool __fastcall LoadFileInfo(System::Json::TJSONValue* o)/* overload */;
	__property bool InTree = {read=FInTree, write=FInTree, nodefault};
	
public:
	TTMSFNCCloudOpenStackItem* __fastcall GetNext();
	TTMSFNCCloudOpenStackItem* __fastcall GetPrev(TTMSFNCCloudOpenStackItem* AItem);
	virtual System::UnicodeString __fastcall GetShare();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__property System::UnicodeString ID = {read=FID, write=FID};
	__property System::UnicodeString ETag = {read=FETag, write=FETag};
	__property System::UnicodeString ParentID = {read=FParentID, write=FParentID};
	__property bool ParentRoot = {read=FParentRoot, write=FParentRoot, nodefault};
	__property System::UnicodeString Share = {read=GetShare};
	__property System::UnicodeString Path = {read=FPath, write=FPath};
public:
	/* TTMSFNCCloudItem.Create */ inline __fastcall virtual TTMSFNCCloudOpenStackItem(System::Classes::TCollection* Collection) : Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem(Collection) { }
	/* TTMSFNCCloudItem.Destroy */ inline __fastcall virtual ~TTMSFNCCloudOpenStackItem() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudOpenStackItems : public Fmx::Tmsfnccloudstorage::TTMSFNCCloudItems
{
	typedef Fmx::Tmsfnccloudstorage::TTMSFNCCloudItems inherited;
	
private:
	HIDESBASE TTMSFNCCloudOpenStackItem* __fastcall GetItems(int index);
	HIDESBASE void __fastcall SetItems(int index, TTMSFNCCloudOpenStackItem* const Value);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall GetItemClass();
	
public:
	HIDESBASE TTMSFNCCloudOpenStackItem* __fastcall Add();
	HIDESBASE TTMSFNCCloudOpenStackItem* __fastcall Insert(int index);
	__property TTMSFNCCloudOpenStackItem* Items[int index] = {read=GetItems, write=SetItems};
public:
	/* TTMSFNCCloudItems.Create */ inline __fastcall TTMSFNCCloudOpenStackItems(Fmx::Tmsfnccloudstorage::TTMSFNCCloudStorage* AOwner, Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* AFolder) : Fmx::Tmsfnccloudstorage::TTMSFNCCloudItems(AOwner, AFolder) { }
	
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCCloudOpenStackItems() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudCustomOpenStack : public Fmx::Tmsfnccloudstorage::TTMSFNCCloudStorage
{
	typedef Fmx::Tmsfnccloudstorage::TTMSFNCCloudStorage inherited;
	
private:
	Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* FGetFolderListRequestResult;
	TTMSFNCCloudOpenStackOnGetFolderListEvent FOnGetDriveInfo;
	TTMSFNCCloudOpenStackOnDownloadFileEvent FOnDownloadFile;
	TTMSFNCCloudOpenStackOnUploadFileEvent FOnUploadFile;
	TTMSFNCCloudOpenStackOnDeleteItemEvent FOnDeleteItem;
	TTMSFNCCloudOpenStackOnCreateFolderEvent FOnCreateFolder;
	TTMSFNCCloudOpenStackOnGetFolderListEvent FOnGetFolderList;
	bool FDeleteResult;
	TTMSFNCCloudOpenStackItem* FCreateFolderResult;
	TTMSFNCCloudOpenStackItem* FUploadResult;
	
protected:
	System::UnicodeString FOpenStackEndpoint;
	System::UnicodeString FOpenStackToken;
	System::UnicodeString FOpenStackContainer;
	System::UnicodeString FOpenStackShareFolder;
	System::UnicodeString __fastcall ExtractHost();
	System::UnicodeString __fastcall ExtractPath();
	bool __fastcall CheckEndpoint();
	virtual System::UnicodeString __fastcall GetVersion();
	virtual Fmx::Tmsfnccloudstorage::TTMSFNCCloudItems* __fastcall CreateCloudItems();
	void __fastcall RestructureInfo(TTMSFNCCloudOpenStackItems* TempDrive);
	Fmx::Tmsfnccloudstorage::TTMSFNCCloudItems* __fastcall GetFolderListInt(Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* AFolder, bool AHierarchical, bool AIsRootFolder = false, System::UnicodeString ACursorID = System::UnicodeString(), Fmx::Tmsfnccloudstorage::TTMSFNCCloudItems* AItems = (Fmx::Tmsfnccloudstorage::TTMSFNCCloudItems*)(0x0), System::TObject* ADataObject = (System::TObject*)(0x0));
	virtual void __fastcall DoGetDriveInfo(Fmx::Tmsfnccloudstorage::TTMSFNCCloudItems* const AFolderList, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoGetFolderList(Fmx::Tmsfnccloudstorage::TTMSFNCCloudItems* const AFolders, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoDownloadFile(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoUploadFile(TTMSFNCCloudOpenStackItem* const AUploadItem, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoDeleteItem(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoCreateFolder(TTMSFNCCloudOpenStackItem* const AFolder, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoRequestGetDriveInfo(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoRequestDownloadFile(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoRequestUploadFile(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoRequestDeleteItem(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoRequestCreateFolder(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	__property TTMSFNCCloudOpenStackOnGetFolderListEvent OnGetDriveInfo = {read=FOnGetDriveInfo, write=FOnGetDriveInfo};
	__property TTMSFNCCloudOpenStackOnDownloadFileEvent OnDownloadFile = {read=FOnDownloadFile, write=FOnDownloadFile};
	__property TTMSFNCCloudOpenStackOnUploadFileEvent OnUploadFile = {read=FOnUploadFile, write=FOnUploadFile};
	__property TTMSFNCCloudOpenStackOnDeleteItemEvent OnDeleteItem = {read=FOnDeleteItem, write=FOnDeleteItem};
	__property TTMSFNCCloudOpenStackOnCreateFolderEvent OnCreateFolder = {read=FOnCreateFolder, write=FOnCreateFolder};
	__property TTMSFNCCloudOpenStackOnGetFolderListEvent OnGetFolderList = {read=FOnGetFolderList, write=FOnGetFolderList};
	
public:
	__fastcall virtual TTMSFNCCloudCustomOpenStack(System::Classes::TComponent* AOwner)/* overload */;
	__fastcall virtual ~TTMSFNCCloudCustomOpenStack();
	virtual void __fastcall GetDriveInfo();
	virtual Fmx::Tmsfnccloudstorage::TTMSFNCCloudItems* __fastcall GetFolderList(Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* AFolder = (Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem*)(0x0));
	virtual Fmx::Tmsfnccloudstorage::TTMSFNCCloudItems* __fastcall GetFolderListHierarchical(Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* AFolder, bool AIsRootFolder = false, System::TObject* ADataObject = (System::TObject*)(0x0));
	virtual Fmx::Tmsfnccloudstorage::TTMSFNCCloudItems* __fastcall SearchList(System::UnicodeString AQuery, bool AExactMatch, Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* AFolder);
	virtual System::UnicodeString __fastcall Download(Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* AItem, const System::UnicodeString ATargetFile)/* overload */;
	virtual Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* __fastcall Upload(Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* AFolder, const System::UnicodeString AFileName)/* overload */;
	virtual bool __fastcall Delete(Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* AItem)/* overload */;
	virtual Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* __fastcall CreateFolder(Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* AFolder, const System::UnicodeString AFolderName);
	void __fastcall GetShare(TTMSFNCCloudOpenStackItem* AItem);
	virtual Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* __fastcall MoveFile(Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* AItem, Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* ATargetFolder);
	virtual Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* __fastcall MoveFileToRoot(Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* AItem);
	virtual Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* __fastcall RenameFile(Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* AItem, System::UnicodeString ANewFileName);
	TTMSFNCCloudOpenStackItems* __fastcall GetDrive();
	__property TTMSFNCCloudOpenStackItems* OpenStackDrive = {read=GetDrive};
public:
	/* TTMSFNCCustomCloudOAuth.Create */ inline __fastcall virtual TTMSFNCCloudCustomOpenStack()/* overload */ : Fmx::Tmsfnccloudstorage::TTMSFNCCloudStorage() { }
	
	/* Hoisted overloads: */
	
public:
	inline System::UnicodeString __fastcall  Download(const System::UnicodeString AFileName, const System::UnicodeString ATargetFile){ return Fmx::Tmsfnccloudstorage::TTMSFNCCloudStorage::Download(AFileName, ATargetFile); }
	inline Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* __fastcall  Upload(Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* AFolder, const System::UnicodeString AFileName, System::UnicodeString ADescription){ return Fmx::Tmsfnccloudstorage::TTMSFNCCloudStorage::Upload(AFolder, AFileName, ADescription); }
	inline Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* __fastcall  Upload(System::UnicodeString AFolderName, const System::UnicodeString AFileName){ return Fmx::Tmsfnccloudstorage::TTMSFNCCloudStorage::Upload(AFolderName, AFileName); }
	inline bool __fastcall  Delete(const System::UnicodeString AFileName){ return Fmx::Tmsfnccloudstorage::TTMSFNCCloudStorage::Delete(AFileName); }
	
};


//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x2);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x0);
static constexpr System::Int8 BLD_VER = System::Int8(0x0);
}	/* namespace Tmsfnccloudopenstack */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCCLOUDOPENSTACK)
using namespace Fmx::Tmsfnccloudopenstack;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfnccloudopenstackHPP
