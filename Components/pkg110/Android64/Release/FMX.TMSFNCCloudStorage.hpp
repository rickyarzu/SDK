// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCCloudStorage.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfnccloudstorageHPP
#define Fmx_TmsfnccloudstorageHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <FMX.TMSFNCCloudOAuth.hpp>
#include <FMX.TMSFNCCloudBase.hpp>
#include <FMX.TMSFNCPersistence.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.TMSFNCUtils.hpp>
#include <System.SysUtils.hpp>
#include <FMX.TMSFNCCustomComponent.hpp>
#include <FMX.Controls.hpp>
#include <FMX.Types.hpp>
#include <System.Generics.Collections.hpp>
#include <System.Generics.Defaults.hpp>
#include <System.Types.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfnccloudstorage
{
//-- forward type declarations -----------------------------------------------
__interface DELPHIINTERFACE ITMSFNCCloudStorageAdapter;
typedef System::DelphiInterface<ITMSFNCCloudStorageAdapter> _di_ITMSFNCCloudStorageAdapter;
class DELPHICLASS TTMSFNCCloudFile;
class DELPHICLASS TTMSFNCCloudFiles;
class DELPHICLASS TTMSFNCCloudItem;
class DELPHICLASS TTMSFNCCloudItems;
class DELPHICLASS TTMSFNCCloudStorage;
//-- type declarations -------------------------------------------------------
__interface  INTERFACE_UUID("{609E80CB-9109-4BFF-BA4A-1351CA598350}") ITMSFNCCloudStorageAdapter  : public System::IInterface 
{
	virtual void __fastcall ConnectAdapter() = 0 ;
	virtual void __fastcall DisconnectAdapter() = 0 ;
};

typedef System::DynamicArray<System::UnicodeString> TStringArray;

class PASCALIMPLEMENTATION TTMSFNCCloudFile : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	System::UnicodeString FFilePath;
	System::UnicodeString FSessionID;
	bool FUploaded;
	__int64 FPosition;
	System::UnicodeString FDestinationPath;
	
public:
	__fastcall virtual TTMSFNCCloudFile(System::Classes::TCollection* Collection);
	__fastcall virtual ~TTMSFNCCloudFile();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__int64 __fastcall GetFileSize();
	
__published:
	__property System::UnicodeString FilePath = {read=FFilePath, write=FFilePath};
	__property __int64 Position = {read=FPosition, write=FPosition, default=0};
	__property System::UnicodeString SessionID = {read=FSessionID, write=FSessionID};
	__property bool Uploaded = {read=FUploaded, write=FUploaded, default=0};
	__property System::UnicodeString DestinationPath = {read=FDestinationPath, write=FDestinationPath};
};


class PASCALIMPLEMENTATION TTMSFNCCloudFiles : public Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCCloudFile*>
{
	typedef Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCCloudFile*> inherited;
	
public:
	TTMSFNCCloudFile* operator[](int index) { return this->Items[index]; }
	
private:
	System::_di_IInterface FOwnerInterface;
	TTMSFNCCloudStorage* FCloudStorage;
	TTMSFNCCloudFile* __fastcall GetItems(int index);
	void __fastcall SetItems(int index, TTMSFNCCloudFile* const Value);
	System::TClass __fastcall GetItemClass();
	HRESULT __stdcall QueryInterface(const GUID IID, /* out */ void *obj);
	int __stdcall _AddRef();
	int __stdcall _Release();
	System::TObject* __fastcall CreateObject(const System::UnicodeString AClassName, const System::TClass ABaseClass);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall GetCollectionItemClass();
	
public:
	__fastcall TTMSFNCCloudFiles(TTMSFNCCloudStorage* AOwner, TTMSFNCCloudFile* AFolder);
	HIDESBASE TTMSFNCCloudFile* __fastcall Add();
	HIDESBASE TTMSFNCCloudFile* __fastcall Insert(int Index);
	__property TTMSFNCCloudFile* Items[int index] = {read=GetItems, write=SetItems/*, default*/};
	__property TTMSFNCCloudStorage* CloudStorage = {read=FCloudStorage};
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCCloudFiles() { }
	
private:
	void *__ITMSFNCBasePersistenceIO;	// Fmx::Tmsfncpersistence::ITMSFNCBasePersistenceIO 
	void *__ITMSFNCBaseListIO;	// Fmx::Tmsfncpersistence::ITMSFNCBaseListIO 
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {91DEAFC3-8932-45F4-A3ED-5AAA0C0E9250}
	operator Fmx::Tmsfncpersistence::_di_ITMSFNCBasePersistenceIO()
	{
		Fmx::Tmsfncpersistence::_di_ITMSFNCBasePersistenceIO intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator Fmx::Tmsfncpersistence::ITMSFNCBasePersistenceIO*(void) { return (Fmx::Tmsfncpersistence::ITMSFNCBasePersistenceIO*)&__ITMSFNCBasePersistenceIO; }
	#endif
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {FAB1D21E-D798-4CE0-B17B-9D75E4456AB4}
	operator Fmx::Tmsfncpersistence::_di_ITMSFNCBaseListIO()
	{
		Fmx::Tmsfncpersistence::_di_ITMSFNCBaseListIO intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator Fmx::Tmsfncpersistence::ITMSFNCBaseListIO*(void) { return (Fmx::Tmsfncpersistence::ITMSFNCBaseListIO*)&__ITMSFNCBaseListIO; }
	#endif
	
};


enum DECLSPEC_DENUM TTMSFNCCloudItemType : unsigned char { ciFile, ciFolder };

class PASCALIMPLEMENTATION TTMSFNCCloudItem : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	System::UnicodeString FLocalFileName;
	System::UnicodeString FResumeURL;
	__int64 FStartRange;
	__int64 FEndRange;
	TTMSFNCCloudItems* FFolder;
	System::UnicodeString FFileName;
	TTMSFNCCloudItemType FItemType;
	__int64 FSize;
	System::TDateTime FModifiedDate;
	System::TDateTime FCreationDate;
	int FTag;
	TTMSFNCCloudStorage* __fastcall GetCloudStorage();
	TTMSFNCCloudItem* __fastcall GetParentFolder();
	
protected:
	void __fastcall CheckFolder();
	
public:
	__fastcall virtual TTMSFNCCloudItem(System::Classes::TCollection* Collection);
	__fastcall virtual ~TTMSFNCCloudItem();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__property TTMSFNCCloudStorage* CloudStorage = {read=GetCloudStorage};
	__property TTMSFNCCloudItem* ParentFolder = {read=GetParentFolder};
	__property System::UnicodeString LocalFileName = {read=FLocalFileName, write=FLocalFileName};
	__property System::UnicodeString Resumeurl = {read=FResumeURL, write=FResumeURL};
	__property __int64 StartRange = {read=FStartRange, write=FStartRange};
	__property __int64 EndRange = {read=FEndRange, write=FEndRange};
	__property System::UnicodeString FileName = {read=FFileName, write=FFileName};
	__property TTMSFNCCloudItems* Folder = {read=FFolder, write=FFolder};
	__property __int64 Size = {read=FSize, write=FSize};
	__property TTMSFNCCloudItemType ItemType = {read=FItemType, write=FItemType, nodefault};
	__property System::TDateTime CreationDate = {read=FCreationDate, write=FCreationDate};
	__property System::TDateTime ModifiedDate = {read=FModifiedDate, write=FModifiedDate};
	__property int Tag = {read=FTag, write=FTag, nodefault};
};


class PASCALIMPLEMENTATION TTMSFNCCloudItems : public Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCCloudItem*>
{
	typedef Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCCloudItem*> inherited;
	
public:
	TTMSFNCCloudItem* operator[](int index) { return this->Items[index]; }
	
private:
	TTMSFNCCloudStorage* FCloudStorage;
	TTMSFNCCloudItem* FFolder;
	int FTag;
	TTMSFNCCloudItem* __fastcall GetItems(int index);
	void __fastcall SetItems(int index, TTMSFNCCloudItem* const Value);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall GetItemClass();
	
public:
	__fastcall TTMSFNCCloudItems(TTMSFNCCloudStorage* AOwner, TTMSFNCCloudItem* AFolder);
	HIDESBASE TTMSFNCCloudItem* __fastcall Add();
	HIDESBASE TTMSFNCCloudItem* __fastcall Insert(int Index);
	__property TTMSFNCCloudItem* Items[int index] = {read=GetItems, write=SetItems/*, default*/};
	__property int Tag = {read=FTag, write=FTag, nodefault};
	__property TTMSFNCCloudItem* Folder = {read=FFolder};
	__property TTMSFNCCloudStorage* CloudStorage = {read=FCloudStorage};
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCCloudItems() { }
	
};


typedef void __fastcall (__closure *TTMSFNCCloudStorageEvent)(System::TObject* Sender, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudStorageOnDeleteItemEvent)(System::TObject* Sender, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudStorageUploadEvent)(System::TObject* Sender, TTMSFNCCloudFile* const ACloudFile, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

class PASCALIMPLEMENTATION TTMSFNCCloudStorage : public Fmx::Tmsfnccloudoauth::TTMSFNCCloudOAuth
{
	typedef Fmx::Tmsfnccloudoauth::TTMSFNCCloudOAuth inherited;
	
private:
	TTMSFNCCloudItems* FDrive;
	_di_ITMSFNCCloudStorageAdapter FStorageAdapter;
	bool FSync;
	TTMSFNCCloudFiles* FCloudFiles;
	TTMSFNCCloudStorageUploadEvent FOnUploadResumableFile;
	TTMSFNCCloudStorageUploadEvent FOnUploadResumableFileFinished;
	TTMSFNCCloudStorageUploadEvent FOnUploadResumableFileFailed;
	void __fastcall SetSync(const bool Value);
	
protected:
	virtual TTMSFNCCloudItems* __fastcall CreateCloudItems();
	virtual TTMSFNCCloudItems* __fastcall CreateCloudItemsFolder(TTMSFNCCloudItem* AFolder);
	virtual TTMSFNCCloudFiles* __fastcall CreateCloudFiles();
	virtual void __fastcall DoConnected();
	virtual void __fastcall GetDriveInfo();
	__property bool Sync = {read=FSync, write=SetSync, nodefault};
	virtual __int64 __fastcall GetUploadFixedByteLength();
	virtual Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestMethod __fastcall GetUploadMethod();
	virtual System::UnicodeString __fastcall GetUploadSessionID(TTMSFNCCloudFile* ACloudFile, TTMSFNCCloudItem* AFolder = (TTMSFNCCloudItem*)(0x0));
	virtual System::UnicodeString __fastcall GetUploadHost(TTMSFNCCloudFile* ACloudFile);
	virtual System::UnicodeString __fastcall GetUploadPath(TTMSFNCCloudFile* ACloudFile);
	virtual void __fastcall GetUploadHeaders(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequest* ARequest, TTMSFNCCloudFile* ACloudFile, System::UnicodeString AByteRange, TTMSFNCCloudItem* AFolder = (TTMSFNCCloudItem*)(0x0));
	virtual void __fastcall DoRequestUploadResumableFile(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoUploadResumableFile(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoUploadResumableFileFinished(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoUploadResumableFileFailed(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	__property TTMSFNCCloudStorageUploadEvent OnUploadResumableFile = {read=FOnUploadResumableFile, write=FOnUploadResumableFile};
	__property TTMSFNCCloudStorageUploadEvent OnUploadResumableFileFinished = {read=FOnUploadResumableFileFinished, write=FOnUploadResumableFileFinished};
	__property TTMSFNCCloudStorageUploadEvent OnUploadResumableFileFailed = {read=FOnUploadResumableFileFailed, write=FOnUploadResumableFileFailed};
	
public:
	__fastcall virtual TTMSFNCCloudStorage(System::Classes::TComponent* AOwner)/* overload */;
	__fastcall virtual ~TTMSFNCCloudStorage();
	virtual void __fastcall Disconnect();
	virtual void __fastcall RegisterAdapter(_di_ITMSFNCCloudStorageAdapter Adapter);
	virtual void __fastcall UnregisterAdapter();
	virtual TTMSFNCCloudItems* __fastcall GetFolderList(TTMSFNCCloudItem* AFolder = (TTMSFNCCloudItem*)(0x0));
	virtual TTMSFNCCloudItems* __fastcall GetFolderListHierarchical(TTMSFNCCloudItem* AFolder, bool AIsRootFolder = false, System::TObject* ADataObject = (System::TObject*)(0x0));
	virtual TTMSFNCCloudItems* __fastcall SearchList(System::UnicodeString AQuery, bool AExactMatch, TTMSFNCCloudItem* AFolder);
	virtual TTMSFNCCloudItem* __fastcall CreateFolder(TTMSFNCCloudItem* AFolder, const System::UnicodeString AFolderName);
	virtual bool __fastcall Delete(TTMSFNCCloudItem* AItem)/* overload */;
	virtual bool __fastcall Delete(const System::UnicodeString AFileName)/* overload */;
	virtual System::UnicodeString __fastcall Download(TTMSFNCCloudItem* AItem, const System::UnicodeString ATargetFile)/* overload */;
	virtual System::UnicodeString __fastcall Download(const System::UnicodeString AFileName, const System::UnicodeString ATargetFile)/* overload */;
	virtual TTMSFNCCloudItem* __fastcall Upload(TTMSFNCCloudItem* AFolder, const System::UnicodeString AFileName)/* overload */;
	virtual TTMSFNCCloudItem* __fastcall Upload(TTMSFNCCloudItem* AFolder, const System::UnicodeString AFileName, System::UnicodeString ADescription)/* overload */;
	virtual TTMSFNCCloudItem* __fastcall Upload(System::UnicodeString AFolderName, const System::UnicodeString AFileName)/* overload */;
	virtual void __fastcall UploadResumableFile(TTMSFNCCloudFile* ACloudFile, TTMSFNCCloudItem* AFolder = (TTMSFNCCloudItem*)(0x0));
	virtual TTMSFNCCloudItem* __fastcall MoveFile(TTMSFNCCloudItem* AItem, TTMSFNCCloudItem* ATargetFolder);
	virtual TTMSFNCCloudItem* __fastcall MoveFileToRoot(TTMSFNCCloudItem* AItem);
	virtual TTMSFNCCloudItem* __fastcall RenameFile(TTMSFNCCloudItem* AItem, System::UnicodeString ANewName);
	__property TTMSFNCCloudItems* Drive = {read=FDrive};
	__property TTMSFNCCloudFiles* CloudFiles = {read=FCloudFiles};
	virtual void __fastcall BeginSync();
	virtual void __fastcall EndSync();
public:
	/* TTMSFNCCustomCloudOAuth.Create */ inline __fastcall virtual TTMSFNCCloudStorage()/* overload */ : Fmx::Tmsfnccloudoauth::TTMSFNCCloudOAuth() { }
	
};


//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x2);
static constexpr System::Int8 MIN_VER = System::Int8(0x1);
static constexpr System::Int8 REL_VER = System::Int8(0x0);
static constexpr System::Int8 BLD_VER = System::Int8(0x1);
}	/* namespace Tmsfnccloudstorage */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCCLOUDSTORAGE)
using namespace Fmx::Tmsfnccloudstorage;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfnccloudstorageHPP
