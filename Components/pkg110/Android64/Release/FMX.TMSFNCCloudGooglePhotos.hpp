// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCCloudGooglePhotos.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfnccloudgooglephotosHPP
#define Fmx_TmsfnccloudgooglephotosHPP

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
namespace Tmsfnccloudgooglephotos
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCCloudGooglePhotosPhoto;
class DELPHICLASS TTMSFNCCloudGooglePhotosPhotos;
class DELPHICLASS TTMSFNCCloudGooglePhotosAlbum;
class DELPHICLASS TTMSFNCCloudGooglePhotosAlbums;
class DELPHICLASS TTMSFNCCustomCloudGooglePhotos;
class DELPHICLASS TTMSFNCCloudGooglePhotos;
//-- type declarations -------------------------------------------------------
typedef void __fastcall (__closure *TTMSFNCCloudGooglePhotosAlbumsEvent)(System::TObject* Sender, TTMSFNCCloudGooglePhotosAlbums* const AInfo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudGooglePhotosAlbumEvent)(System::TObject* Sender, TTMSFNCCloudGooglePhotosAlbum* const AInfo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudGooglePhotosPhotosEvent)(System::TObject* Sender, TTMSFNCCloudGooglePhotosPhotos* const AInfo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudGooglePhotosPhotoEvent)(System::TObject* Sender, TTMSFNCCloudGooglePhotosPhoto* const AInfo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudGooglePhotosBeforeUploadPhotoEvent)(System::TObject* Sender, System::UnicodeString AFileName, bool AAllow);

typedef void __fastcall (__closure *TTMSFNCCloudGooglePhotosBeforeDownloadPhotoEvent)(System::TObject* Sender, TTMSFNCCloudGooglePhotosPhoto* AInfo, System::UnicodeString &AFileName, bool &Allow);

class PASCALIMPLEMENTATION TTMSFNCCloudGooglePhotosPhoto : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	TTMSFNCCloudGooglePhotosPhotos* FOwner;
	System::UnicodeString FFileName;
	System::UnicodeString FID;
	System::UnicodeString FSummary;
	System::UnicodeString FImageURL;
	System::UnicodeString FAlbumID;
	__int64 FWidth;
	__int64 FHeight;
	System::TDateTime FCreated;
	System::UnicodeString FMimeType;
	
public:
	__fastcall virtual TTMSFNCCloudGooglePhotosPhoto(System::Classes::TCollection* Collection);
	__fastcall virtual ~TTMSFNCCloudGooglePhotosPhoto();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	void __fastcall FromJSON(System::Json::TJSONValue* jo);
	
protected:
	virtual System::UnicodeString __fastcall GetDisplayName();
	System::UnicodeString __fastcall CustomSizeImageURL(__int64 Width, __int64 Height);
	
__published:
	__property System::UnicodeString ID = {read=FID, write=FID};
	__property System::UnicodeString AlbumID = {read=FAlbumID, write=FAlbumID};
	__property System::UnicodeString FileName = {read=FFileName, write=FFileName};
	__property System::UnicodeString Summary = {read=FSummary, write=FSummary};
	__property System::TDateTime Created = {read=FCreated, write=FCreated};
	__property System::UnicodeString ImageURL = {read=FImageURL, write=FImageURL};
	__property __int64 Width = {read=FWidth, write=FWidth};
	__property __int64 Height = {read=FHeight, write=FHeight};
	__property System::UnicodeString MimeType = {read=FMimeType, write=FMimeType};
};


class PASCALIMPLEMENTATION TTMSFNCCloudGooglePhotosPhotos : public System::Classes::TCollection
{
	typedef System::Classes::TCollection inherited;
	
public:
	TTMSFNCCloudGooglePhotosPhoto* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCCloudGooglePhotosAlbum* FOwner;
	TTMSFNCCloudGooglePhotosPhoto* __fastcall GetItems(int Index);
	void __fastcall SetItems(int Index, TTMSFNCCloudGooglePhotosPhoto* const Value);
	
protected:
	virtual void __fastcall Update(System::Classes::TCollectionItem* Item);
	
public:
	__fastcall TTMSFNCCloudGooglePhotosPhotos(TTMSFNCCloudGooglePhotosAlbum* AOwner);
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	HIDESBASE TTMSFNCCloudGooglePhotosPhoto* __fastcall Add();
	HIDESBASE TTMSFNCCloudGooglePhotosPhoto* __fastcall Insert(int Index);
	__property TTMSFNCCloudGooglePhotosPhoto* Items[int Index] = {read=GetItems, write=SetItems/*, default*/};
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCCloudGooglePhotosPhotos() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudGooglePhotosAlbum : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	TTMSFNCCloudGooglePhotosAlbums* FOwner;
	System::UnicodeString FID;
	System::UnicodeString FTitle;
	TTMSFNCCloudGooglePhotosPhotos* FPhotos;
	System::UnicodeString FImageURL;
	int FItemsCount;
	System::UnicodeString FURL;
	
public:
	__fastcall virtual TTMSFNCCloudGooglePhotosAlbum(System::Classes::TCollection* Collection);
	__fastcall virtual ~TTMSFNCCloudGooglePhotosAlbum();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	void __fastcall GetPhotos();
	void __fastcall FromJSON(System::Json::TJSONValue* jo);
	
protected:
	virtual System::UnicodeString __fastcall GetDisplayName();
	
__published:
	__property System::UnicodeString ID = {read=FID, write=FID};
	__property System::UnicodeString Title = {read=FTitle, write=FTitle};
	__property TTMSFNCCloudGooglePhotosPhotos* Photos = {read=FPhotos, write=FPhotos};
	__property System::UnicodeString ImageURL = {read=FImageURL, write=FImageURL};
	__property int ItemsCount = {read=FItemsCount, write=FItemsCount, nodefault};
	__property System::UnicodeString URL = {read=FURL, write=FURL};
};


class PASCALIMPLEMENTATION TTMSFNCCloudGooglePhotosAlbums : public System::Classes::TCollection
{
	typedef System::Classes::TCollection inherited;
	
public:
	TTMSFNCCloudGooglePhotosAlbum* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCCustomCloudGooglePhotos* FOwner;
	TTMSFNCCloudGooglePhotosAlbum* __fastcall GetItems(int Index);
	void __fastcall SetItems(int Index, TTMSFNCCloudGooglePhotosAlbum* const Value);
	
protected:
	virtual void __fastcall Update(System::Classes::TCollectionItem* Item);
	
public:
	__fastcall TTMSFNCCloudGooglePhotosAlbums(TTMSFNCCustomCloudGooglePhotos* AOwner);
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	HIDESBASE TTMSFNCCloudGooglePhotosAlbum* __fastcall Add();
	HIDESBASE TTMSFNCCloudGooglePhotosAlbum* __fastcall Insert(int Index);
	__property TTMSFNCCloudGooglePhotosAlbum* Items[int Index] = {read=GetItems, write=SetItems/*, default*/};
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCCloudGooglePhotosAlbums() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCustomCloudGooglePhotos : public Fmx::Tmsfnccloudgoogle::TTMSFNCCustomCloudGoogle
{
	typedef Fmx::Tmsfnccloudgoogle::TTMSFNCCustomCloudGoogle inherited;
	
private:
	TTMSFNCCloudGooglePhotosPhotos* FSearchResults;
	TTMSFNCCloudGooglePhotosAlbums* FAlbums;
	TTMSFNCCloudGooglePhotosAlbumsEvent FOnGetAlbums;
	TTMSFNCCloudGooglePhotosAlbumEvent FOnCreateAlbum;
	TTMSFNCCloudGooglePhotosPhotosEvent FOnGetPhotos;
	TTMSFNCCloudGooglePhotosPhotoEvent FOnUploadPhotos;
	Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseCompleteEvent FOnDownloadPhoto;
	TTMSFNCCloudGooglePhotosBeforeUploadPhotoEvent FOnBeforeUploadPhoto;
	TTMSFNCCloudGooglePhotosBeforeDownloadPhotoEvent FOnBeforeDownloadPhoto;
	
protected:
	virtual System::UnicodeString __fastcall GetVersion();
	void __fastcall SearchPhotosInt(System::UnicodeString AAlbumID, TTMSFNCCloudGooglePhotosAlbum* AAlbum, System::UnicodeString AToken);
	void __fastcall DoGetAlbums(TTMSFNCCloudGooglePhotosAlbums* const AInfo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoCreateAlbum(TTMSFNCCloudGooglePhotosAlbum* const AInfo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoSearchPhotos(TTMSFNCCloudGooglePhotosPhotos* const AInfo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoUploadPhoto(TTMSFNCCloudGooglePhotosPhoto* const AInfo, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoDownloadPhoto(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	bool __fastcall DoBeforeUploadPhoto(const System::UnicodeString AFileName);
	bool __fastcall DoBeforeDownloadPhoto(TTMSFNCCloudGooglePhotosPhoto* APhoto, System::UnicodeString &AFileName);
	void __fastcall DoRequestGetAlbums(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestCreateAlbum(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestSearchPhotos(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestUploadPhoto(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestDownloadPhoto(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestCreatePhoto(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	__property TTMSFNCCloudGooglePhotosAlbumsEvent OnGetAlbums = {read=FOnGetAlbums, write=FOnGetAlbums};
	__property TTMSFNCCloudGooglePhotosAlbumEvent OnCreateAlbum = {read=FOnCreateAlbum, write=FOnCreateAlbum};
	__property TTMSFNCCloudGooglePhotosPhotosEvent OnGetPhotos = {read=FOnGetPhotos, write=FOnGetPhotos};
	__property TTMSFNCCloudGooglePhotosBeforeUploadPhotoEvent OnBeforeUploadPhoto = {read=FOnBeforeUploadPhoto, write=FOnBeforeUploadPhoto};
	__property TTMSFNCCloudGooglePhotosBeforeDownloadPhotoEvent OnBeforeDownloadPhoto = {read=FOnBeforeDownloadPhoto, write=FOnBeforeDownloadPhoto};
	__property TTMSFNCCloudGooglePhotosPhotoEvent OnUploadPhoto = {read=FOnUploadPhotos, write=FOnUploadPhotos};
	__property Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseCompleteEvent OnDownloadPhoto = {read=FOnDownloadPhoto, write=FOnDownloadPhoto};
	
public:
	__fastcall virtual TTMSFNCCustomCloudGooglePhotos(System::Classes::TComponent* AOwner)/* overload */;
	__fastcall virtual ~TTMSFNCCustomCloudGooglePhotos();
	void __fastcall GetAlbums();
	void __fastcall CreateAlbum(TTMSFNCCloudGooglePhotosAlbum* AAlbum);
	void __fastcall UploadPhoto(TTMSFNCCloudGooglePhotosAlbum* AAlbum, System::UnicodeString AFileName, System::UnicodeString ASummary = System::UnicodeString());
	void __fastcall SearchPhotos(System::UnicodeString AAlbumID = System::UnicodeString())/* overload */;
	void __fastcall SearchPhotos(TTMSFNCCloudGooglePhotosAlbum* AAlbum = (TTMSFNCCloudGooglePhotosAlbum*)(0x0))/* overload */;
	void __fastcall DownloadPhoto(System::UnicodeString ATargetFile, TTMSFNCCloudGooglePhotosPhoto* APhoto);
	void __fastcall AddFolderToAlbum(System::UnicodeString AFolder, System::UnicodeString ATitle);
	TTMSFNCCloudGooglePhotosAlbum* __fastcall FindAlbumByTitle(System::UnicodeString AAlbumTitle);
	__property TTMSFNCCloudGooglePhotosAlbums* Albums = {read=FAlbums, write=FAlbums};
	__property TTMSFNCCloudGooglePhotosPhotos* SearchResults = {read=FSearchResults, write=FSearchResults};
public:
	/* TTMSFNCCustomCloudOAuth.Create */ inline __fastcall virtual TTMSFNCCustomCloudGooglePhotos()/* overload */ : Fmx::Tmsfnccloudgoogle::TTMSFNCCustomCloudGoogle() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudGooglePhotos : public TTMSFNCCustomCloudGooglePhotos
{
	typedef TTMSFNCCustomCloudGooglePhotos inherited;
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	
__published:
	__property OnGetAlbums;
	__property OnCreateAlbum;
	__property OnGetPhotos;
	__property OnBeforeUploadPhoto;
	__property OnBeforeDownloadPhoto;
	__property OnUploadPhoto;
	__property OnDownloadPhoto;
public:
	/* TTMSFNCCustomCloudGooglePhotos.Create */ inline __fastcall virtual TTMSFNCCloudGooglePhotos(System::Classes::TComponent* AOwner)/* overload */ : TTMSFNCCustomCloudGooglePhotos(AOwner) { }
	/* TTMSFNCCustomCloudGooglePhotos.Destroy */ inline __fastcall virtual ~TTMSFNCCloudGooglePhotos() { }
	
public:
	/* TTMSFNCCustomCloudOAuth.Create */ inline __fastcall virtual TTMSFNCCloudGooglePhotos()/* overload */ : TTMSFNCCustomCloudGooglePhotos() { }
	
};


//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x0);
static constexpr System::Int8 BLD_VER = System::Int8(0x0);
}	/* namespace Tmsfnccloudgooglephotos */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCCLOUDGOOGLEPHOTOS)
using namespace Fmx::Tmsfnccloudgooglephotos;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfnccloudgooglephotosHPP
