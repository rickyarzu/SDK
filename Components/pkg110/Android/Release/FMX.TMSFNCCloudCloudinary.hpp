// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCCloudCloudinary.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfnccloudcloudinaryHPP
#define Fmx_TmsfnccloudcloudinaryHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <FMX.TMSFNCCloudBase.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.TMSFNCUtils.hpp>
#include <System.JSON.hpp>
#include <System.Generics.Collections.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>
#include <System.Types.hpp>
#include <FMX.TMSFNCCustomComponent.hpp>
#include <FMX.Controls.hpp>
#include <FMX.Types.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfnccloudcloudinary
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCCloudCloudinaryFile;
class DELPHICLASS TTMSFNCCloudCloudinaryFiles;
class DELPHICLASS TTMSFNCCustomCloudCloudinary;
class DELPHICLASS TTMSFNCCloudCloudinary;
//-- type declarations -------------------------------------------------------
enum DECLSPEC_DENUM TTMSFNCCloudCloudinaryResourceType : unsigned char { crtImage, crtRaw, crtVideo, crtAuto };

enum DECLSPEC_DENUM TTMSFNCCloudCloudinaryUploadType : unsigned char { cutFile, cutResource, cutUrl, cutUnknown };

class PASCALIMPLEMENTATION TTMSFNCCloudCloudinaryFile : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	System::UnicodeString FAssetID;
	System::TDateTime FCreatedAt;
	System::UnicodeString FFormat;
	System::UnicodeString FOriginalName;
	TTMSFNCCustomCloudCloudinary* FOwner;
	System::UnicodeString FPublicID;
	TTMSFNCCloudCloudinaryResourceType FResourceType;
	System::UnicodeString FSecureUrl;
	int FSize;
	System::UnicodeString FUploadSource;
	TTMSFNCCloudCloudinaryUploadType FUploadType;
	System::UnicodeString FUrl;
	
protected:
	virtual void __fastcall ParseJSONFile(System::Json::TJSONValue* AJSONFile);
	
public:
	__fastcall virtual TTMSFNCCloudCloudinaryFile(TTMSFNCCustomCloudCloudinary* ACloudinary);
	__fastcall virtual ~TTMSFNCCloudCloudinaryFile();
	__property System::UnicodeString AssetID = {read=FAssetID};
	__property System::TDateTime CreatedAt = {read=FCreatedAt};
	__property System::UnicodeString Format = {read=FFormat};
	__property System::UnicodeString OriginalName = {read=FOriginalName};
	__property TTMSFNCCustomCloudCloudinary* Owner = {read=FOwner};
	__property System::UnicodeString PublicID = {read=FPublicID};
	__property TTMSFNCCloudCloudinaryResourceType ResourceType = {read=FResourceType, nodefault};
	__property System::UnicodeString SecureUrl = {read=FSecureUrl};
	__property int Size = {read=FSize, nodefault};
	__property System::UnicodeString UploadSource = {read=FUploadSource};
	__property TTMSFNCCloudCloudinaryUploadType UploadType = {read=FUploadType, nodefault};
	__property System::UnicodeString Url = {read=FUrl};
	System::UnicodeString __fastcall ToJSON()/* overload */;
	void __fastcall FromJSON(const System::UnicodeString Value);
	__property System::UnicodeString JSON = {read=ToJSON, write=FromJSON};
	System::UnicodeString __fastcall ToJSON(Fmx::Tmsfnctypes::TTMSFNCObjectExcludePropertyListArray AExcludedProperties)/* overload */;
	void __fastcall Log();
	void __fastcall SaveToJSONFile(const System::UnicodeString AFileName);
	void __fastcall LoadFromJSONFile(const System::UnicodeString AFileName);
	void __fastcall SaveToJSONStream(System::Classes::TStream* const AStream);
	void __fastcall LoadFromJSONStream(System::Classes::TStream* const AStream);
public:
	/* TObject.Create */ inline __fastcall TTMSFNCCloudCloudinaryFile() : System::TObject() { }
	
};


#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudCloudinaryFiles : public System::Generics::Collections::TObjectList__1<TTMSFNCCloudCloudinaryFile*>
{
	typedef System::Generics::Collections::TObjectList__1<TTMSFNCCloudCloudinaryFile*> inherited;
	
public:
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudCloudinary_TTMSFNCCloudCloudinaryFile>.Create */ inline __fastcall TTMSFNCCloudCloudinaryFiles()/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudCloudinaryFile*>() { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudCloudinary_TTMSFNCCloudCloudinaryFile>.Create */ inline __fastcall TTMSFNCCloudCloudinaryFiles(bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudCloudinaryFile*>(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudCloudinary_TTMSFNCCloudCloudinaryFile>.Create */ inline __fastcall TTMSFNCCloudCloudinaryFiles(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCloudCloudinaryFile*> > AComparer, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudCloudinaryFile*>(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudCloudinary_TTMSFNCCloudCloudinaryFile>.Create */ inline __fastcall TTMSFNCCloudCloudinaryFiles(System::Generics::Collections::TEnumerable__1<TTMSFNCCloudCloudinaryFile*>* const Collection, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudCloudinaryFile*>(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudCloudinary_TTMSFNCCloudCloudinaryFile>.Destroy */ inline __fastcall virtual ~TTMSFNCCloudCloudinaryFiles() { }
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudCloudinary_TTMSFNCCloudCloudinaryFile>.Create */ inline __fastcall TTMSFNCCloudCloudinaryFiles(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCloudCloudinaryFile*> > AComparer)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudCloudinaryFile*>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudCloudinary_TTMSFNCCloudCloudinaryFile>.Create */ inline __fastcall TTMSFNCCloudCloudinaryFiles(System::Generics::Collections::TEnumerable__1<TTMSFNCCloudCloudinaryFile*>* const Collection)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudCloudinaryFile*>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudCloudinary_TTMSFNCCloudCloudinaryFile>.Create */ inline __fastcall TTMSFNCCloudCloudinaryFiles(TTMSFNCCloudCloudinaryFile* const *Values, const int Values_High)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudCloudinaryFile*>(Values, Values_High) { }
	
};

#pragma pack(pop)

typedef void __fastcall (__closure *TTTMSFNCCloudCloudinaryUploadFileEvent)(System::TObject* Sender, TTMSFNCCloudCloudinaryFile* AFile, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCustomCloudCloudinary : public Fmx::Tmsfnccloudbase::TTMSFNCCloudBase
{
	typedef Fmx::Tmsfnccloudbase::TTMSFNCCloudBase inherited;
	
private:
	System::UnicodeString FAppKey;
	System::UnicodeString FCloudName;
	TTMSFNCCloudCloudinaryFiles* FFiles;
	System::UnicodeString FSecret;
	System::UnicodeString FUploadPreset;
	TTTMSFNCCloudCloudinaryUploadFileEvent FOnUploadFile;
	
protected:
	virtual NativeUInt __fastcall GetInstance();
	virtual void __fastcall DoUploadFile(TTMSFNCCloudCloudinaryFile* AFile, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestUploadFile(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual System::UnicodeString __fastcall GetVersion();
	__property System::UnicodeString AppKey = {read=FAppKey, write=FAppKey};
	__property System::UnicodeString CloudName = {read=FCloudName, write=FCloudName};
	__property System::UnicodeString Secret = {read=FSecret, write=FSecret};
	__property System::UnicodeString UploadPreset = {read=FUploadPreset, write=FUploadPreset};
	__property TTTMSFNCCloudCloudinaryUploadFileEvent OnUploadFile = {read=FOnUploadFile, write=FOnUploadFile};
	
public:
	__fastcall virtual TTMSFNCCustomCloudCloudinary(System::Classes::TComponent* AOwner)/* overload */;
	__fastcall virtual ~TTMSFNCCustomCloudCloudinary();
	void __fastcall UploadFile(const System::UnicodeString AFileName, TTMSFNCCloudCloudinaryResourceType AResourceType = (TTMSFNCCloudCloudinaryResourceType)(0x3));
	void __fastcall UploadFileFromResource(System::UnicodeString AFileString, TTMSFNCCloudCloudinaryResourceType AResourceType = (TTMSFNCCloudCloudinaryResourceType)(0x3), System::UnicodeString AFileName = System::UnicodeString());
	void __fastcall UploadFileFromURL(System::UnicodeString AUrl, TTMSFNCCloudCloudinaryResourceType AResourceType = (TTMSFNCCloudCloudinaryResourceType)(0x3));
	__property TTMSFNCCloudCloudinaryFiles* Files = {read=FFiles};
public:
	/* TTMSFNCCustomCloudBase.Create */ inline __fastcall virtual TTMSFNCCustomCloudCloudinary()/* overload */ : Fmx::Tmsfnccloudbase::TTMSFNCCloudBase() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudCloudinary : public TTMSFNCCustomCloudCloudinary
{
	typedef TTMSFNCCustomCloudCloudinary inherited;
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	
__published:
	__property AppKey = {default=0};
	__property CloudName = {default=0};
	__property Secret = {default=0};
	__property UploadPreset = {default=0};
	__property OnUploadFile;
public:
	/* TTMSFNCCustomCloudCloudinary.Create */ inline __fastcall virtual TTMSFNCCloudCloudinary(System::Classes::TComponent* AOwner)/* overload */ : TTMSFNCCustomCloudCloudinary(AOwner) { }
	/* TTMSFNCCustomCloudCloudinary.Destroy */ inline __fastcall virtual ~TTMSFNCCloudCloudinary() { }
	
public:
	/* TTMSFNCCustomCloudBase.Create */ inline __fastcall virtual TTMSFNCCloudCloudinary()/* overload */ : TTMSFNCCustomCloudCloudinary() { }
	
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x0);
static constexpr System::Int8 BLD_VER = System::Int8(0x0);
}	/* namespace Tmsfnccloudcloudinary */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCCLOUDCLOUDINARY)
using namespace Fmx::Tmsfnccloudcloudinary;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfnccloudcloudinaryHPP
