// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCCloudHubic.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfnccloudhubicHPP
#define Fmx_TmsfnccloudhubicHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <FMX.TMSFNCCloudBase.hpp>
#include <FMX.TMSFNCCloudOpenStack.hpp>
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
namespace Tmsfnccloudhubic
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCCloudHubicItem;
class DELPHICLASS TTMSFNCCloudHubicItems;
class DELPHICLASS TTMSFNCCloudHubicInfo;
class DELPHICLASS TTMSFNCCustomCloudHubic;
class DELPHICLASS TTMSFNCCloudHubic;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TTMSFNCCloudHubicItem : public Fmx::Tmsfnccloudopenstack::TTMSFNCCloudOpenStackItem
{
	typedef Fmx::Tmsfnccloudopenstack::TTMSFNCCloudOpenStackItem inherited;
	
private:
	System::UnicodeString FShare;
	bool FInTree;
	
protected:
	__property bool InTree = {read=FInTree, write=FInTree, nodefault};
	
public:
	virtual System::UnicodeString __fastcall GetShare();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
public:
	/* TTMSFNCCloudItem.Create */ inline __fastcall virtual TTMSFNCCloudHubicItem(System::Classes::TCollection* Collection) : Fmx::Tmsfnccloudopenstack::TTMSFNCCloudOpenStackItem(Collection) { }
	/* TTMSFNCCloudItem.Destroy */ inline __fastcall virtual ~TTMSFNCCloudHubicItem() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudHubicItems : public Fmx::Tmsfnccloudopenstack::TTMSFNCCloudOpenStackItems
{
	typedef Fmx::Tmsfnccloudopenstack::TTMSFNCCloudOpenStackItems inherited;
	
private:
	HIDESBASE TTMSFNCCloudHubicItem* __fastcall GetItems(int index);
	HIDESBASE void __fastcall SetItems(int index, TTMSFNCCloudHubicItem* const Value);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall GetItemClass();
	
public:
	HIDESBASE TTMSFNCCloudHubicItem* __fastcall Add();
	HIDESBASE TTMSFNCCloudHubicItem* __fastcall Insert(int Index);
	__property TTMSFNCCloudHubicItem* Items[int index] = {read=GetItems, write=SetItems};
public:
	/* TTMSFNCCloudItems.Create */ inline __fastcall TTMSFNCCloudHubicItems(Fmx::Tmsfnccloudstorage::TTMSFNCCloudStorage* AOwner, Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* AFolder) : Fmx::Tmsfnccloudopenstack::TTMSFNCCloudOpenStackItems(AOwner, AFolder) { }
	
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCCloudHubicItems() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudHubicInfo : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	double FQuota;
	double FQuotaUsed;
	System::UnicodeString FFirstName;
	System::UnicodeString FLastName;
	System::UnicodeString FEmail;
	
__published:
	__property System::UnicodeString FirstName = {read=FFirstName, write=FFirstName};
	__property System::UnicodeString LastName = {read=FLastName, write=FLastName};
	__property System::UnicodeString Email = {read=FEmail, write=FEmail};
	__property double Quota = {read=FQuota, write=FQuota};
	__property double QuotaUsed = {read=FQuotaUsed, write=FQuotaUsed};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTMSFNCCloudHubicInfo() { }
	
public:
	/* TObject.Create */ inline __fastcall TTMSFNCCloudHubicInfo() : System::Classes::TPersistent() { }
	
};


typedef void __fastcall (__closure *TTMSFNCCloudHubicOnGetLinkEvent)(System::TObject* Sender, const System::UnicodeString ALink, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudHubicOnGetShareEvent)(System::TObject* Sender, const System::UnicodeString AShare, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudHubicOnCreateShareEvent)(System::TObject* Sender, const System::UnicodeString AShare, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudHubicOnUploadFileEvent)(System::TObject* Sender, TTMSFNCCloudHubicItem* const AUploadItem, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudHubicOnDeleteItemEvent)(System::TObject* Sender, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudHubicOnGetCurrentAccountEvent)(System::TObject* Sender, TTMSFNCCloudHubicInfo* const AInfo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudHubicOnGetSpaceUsageEvent)(System::TObject* Sender, TTMSFNCCloudHubicInfo* const AInfo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudHubicOnGetFolderListEvent)(System::TObject* Sender, Fmx::Tmsfnccloudstorage::TTMSFNCCloudItems* const AFolderList, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudHubicOnGetFolderInfoEvent)(System::TObject* Sender, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

class PASCALIMPLEMENTATION TTMSFNCCustomCloudHubic : public Fmx::Tmsfnccloudopenstack::TTMSFNCCloudCustomOpenStack
{
	typedef Fmx::Tmsfnccloudopenstack::TTMSFNCCloudCustomOpenStack inherited;
	
private:
	System::UnicodeString FBasePath;
	TTMSFNCCloudHubicInfo* FInfo;
	TTMSFNCCloudHubicOnGetShareEvent FOnGetShare;
	TTMSFNCCloudHubicOnGetSpaceUsageEvent FOnGetSpaceUsage;
	TTMSFNCCloudHubicOnGetCurrentAccountEvent FOnGetCurrentAccount;
	void __fastcall SetInfo(TTMSFNCCloudHubicInfo* const Value);
	HIDESBASE TTMSFNCCloudHubicItems* __fastcall GetDrive();
	
protected:
	virtual System::UnicodeString __fastcall GetVersion();
	virtual void __fastcall DoGetShare(const System::UnicodeString AShare, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoGetCurrentAccount(TTMSFNCCloudHubicInfo* const AInfo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoGetSpaceUsage(TTMSFNCCloudHubicInfo* const AInfo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoRequestGetShare(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoRequestGetCurrentAccount(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall DoRequestGetSpaceUsage(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual System::UnicodeString __fastcall GetAuthenticationURL();
	virtual void __fastcall RetrieveAccessToken();
	virtual void __fastcall RetrieveRefreshToken();
	virtual Fmx::Tmsfnccloudstorage::TTMSFNCCloudItems* __fastcall CreateCloudItems();
	virtual Fmx::Tmsfnccloudstorage::TTMSFNCCloudItems* __fastcall CreateCloudItemsFolder(Fmx::Tmsfnccloudstorage::TTMSFNCCloudItem* AFolder);
	__property TTMSFNCCloudHubicOnGetShareEvent OnGetShare = {read=FOnGetShare, write=FOnGetShare};
	__property TTMSFNCCloudHubicOnGetCurrentAccountEvent OnGetCurrentAccount = {read=FOnGetCurrentAccount, write=FOnGetCurrentAccount};
	__property TTMSFNCCloudHubicOnGetSpaceUsageEvent OnGetSpaceUsage = {read=FOnGetSpaceUsage, write=FOnGetSpaceUsage};
	
public:
	__fastcall virtual TTMSFNCCustomCloudHubic(System::Classes::TComponent* AOwner)/* overload */;
	__fastcall virtual ~TTMSFNCCustomCloudHubic();
	virtual void __fastcall TestTokens(const Fmx::Tmsfnccloudbase::_di_TTMSFNCCloudBaseRequestResultEvent ATestTokensRequestResultEvent = Fmx::Tmsfnccloudbase::_di_TTMSFNCCloudBaseRequestResultEvent());
	void __fastcall GetAccountInfo();
	virtual void __fastcall GetDriveInfo();
	HIDESBASE void __fastcall GetShare(TTMSFNCCloudHubicItem* AItem);
	virtual bool __fastcall GetTestTokensResult(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	__property TTMSFNCCloudHubicInfo* Info = {read=FInfo, write=SetInfo};
	__property TTMSFNCCloudHubicItems* HubicDrive = {read=GetDrive};
public:
	/* TTMSFNCCustomCloudOAuth.Create */ inline __fastcall virtual TTMSFNCCustomCloudHubic()/* overload */ : Fmx::Tmsfnccloudopenstack::TTMSFNCCloudCustomOpenStack() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudHubic : public TTMSFNCCustomCloudHubic
{
	typedef TTMSFNCCustomCloudHubic inherited;
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	
__published:
	__property OnGetShare;
	__property OnDownloadFile;
	__property OnUploadFile;
	__property OnDeleteItem;
	__property OnGetCurrentAccount;
	__property OnGetSpaceUsage;
	__property OnGetDriveInfo;
	__property OnGetFolderList;
	__property OnCreateFolder;
public:
	/* TTMSFNCCustomCloudHubic.Create */ inline __fastcall virtual TTMSFNCCloudHubic(System::Classes::TComponent* AOwner)/* overload */ : TTMSFNCCustomCloudHubic(AOwner) { }
	/* TTMSFNCCustomCloudHubic.Destroy */ inline __fastcall virtual ~TTMSFNCCloudHubic() { }
	
public:
	/* TTMSFNCCustomCloudOAuth.Create */ inline __fastcall virtual TTMSFNCCloudHubic()/* overload */ : TTMSFNCCustomCloudHubic() { }
	
};


//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x0);
static constexpr System::Int8 BLD_VER = System::Int8(0x0);
}	/* namespace Tmsfnccloudhubic */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCCLOUDHUBIC)
using namespace Fmx::Tmsfnccloudhubic;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfnccloudhubicHPP
