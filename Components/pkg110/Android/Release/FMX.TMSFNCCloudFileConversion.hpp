// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCCloudFileConversion.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfnccloudfileconversionHPP
#define Fmx_TmsfnccloudfileconversionHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <FMX.TMSFNCCloudBase.hpp>
#include <FMX.TMSFNCCloudOAuth.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.TMSFNCUtils.hpp>
#include <FMX.TMSFNCGraphicsTypes.hpp>
#include <FMX.TMSFNCGraphics.hpp>
#include <System.SysUtils.hpp>
#include <FMX.Types.hpp>
#include <System.JSON.hpp>
#include <System.Generics.Collections.hpp>
#include <System.Generics.Defaults.hpp>
#include <System.Types.hpp>
#include <FMX.TMSFNCCustomComponent.hpp>
#include <FMX.Controls.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfnccloudfileconversion
{
//-- forward type declarations -----------------------------------------------
__interface DELPHIINTERFACE ITMSFNCCustomCloudFileConversionProperties;
typedef System::DelphiInterface<ITMSFNCCustomCloudFileConversionProperties> _di_ITMSFNCCustomCloudFileConversionProperties;
__interface DELPHIINTERFACE ITMSFNCCustomCloudFileConversionInstance;
typedef System::DelphiInterface<ITMSFNCCustomCloudFileConversionInstance> _di_ITMSFNCCustomCloudFileConversionInstance;
__interface DELPHIINTERFACE ITMSFNCCustomCloudFileConversion;
typedef System::DelphiInterface<ITMSFNCCustomCloudFileConversion> _di_ITMSFNCCustomCloudFileConversion;
__interface DELPHIINTERFACE ITMSFNCCloudFileConversionService;
typedef System::DelphiInterface<ITMSFNCCloudFileConversionService> _di_ITMSFNCCloudFileConversionService;
__interface DELPHIINTERFACE ITMSFNCCloudFileConversionServiceCloudConvert;
typedef System::DelphiInterface<ITMSFNCCloudFileConversionServiceCloudConvert> _di_ITMSFNCCloudFileConversionServiceCloudConvert;
__interface DELPHIINTERFACE ITMSFNCCloudFileConversionServiceZamzar;
typedef System::DelphiInterface<ITMSFNCCloudFileConversionServiceZamzar> _di_ITMSFNCCloudFileConversionServiceZamzar;
__interface DELPHIINTERFACE ITMSFNCCloudFileConversionServiceConvertIo;
typedef System::DelphiInterface<ITMSFNCCloudFileConversionServiceConvertIo> _di_ITMSFNCCloudFileConversionServiceConvertIo;
__interface DELPHIINTERFACE TTMSFNCCloudFileConversionJobsCallBack;
typedef System::DelphiInterface<TTMSFNCCloudFileConversionJobsCallBack> _di_TTMSFNCCloudFileConversionJobsCallBack;
__interface DELPHIINTERFACE TTMSFNCCloudFileConversionJobCallBack;
typedef System::DelphiInterface<TTMSFNCCloudFileConversionJobCallBack> _di_TTMSFNCCloudFileConversionJobCallBack;
__interface DELPHIINTERFACE TTMSFNCCloudFileConversionFileCallBack;
typedef System::DelphiInterface<TTMSFNCCloudFileConversionFileCallBack> _di_TTMSFNCCloudFileConversionFileCallBack;
__interface DELPHIINTERFACE TTMSFNCCloudFileConversionFileStreamCallBack;
typedef System::DelphiInterface<TTMSFNCCloudFileConversionFileStreamCallBack> _di_TTMSFNCCloudFileConversionFileStreamCallBack;
class DELPHICLASS TTMSFNCCloudFileConversionJobsResultCallBackWrapper;
class DELPHICLASS TTMSFNCCloudFileConversionJobResultCallBackWrapper;
class DELPHICLASS TTMSFNCCloudFileConversionFileResultCallBackWrapper;
class DELPHICLASS TTMSFNCCloudFileConversionFileStreamResultCallBackWrapper;
class DELPHICLASS TTMSFNCCloudFileConversionFile;
class DELPHICLASS TTMSFNCCloudFileConversionFiles;
class DELPHICLASS TTMSFNCCloudFileConversionJob;
class DELPHICLASS TTMSFNCCloudFileConversionJobs;
class DELPHICLASS TTMSFNCCustomCloudFileConversion;
class DELPHICLASS TTMSFNCCustomCloudFileConversionInterfacedObject;
class DELPHICLASS TTMSFNCCloudFileConversionList;
class DELPHICLASS TTMSFNCCloudFileConversionFactoryService;
class DELPHICLASS TTMSFNCCloudFileConversion;
class DELPHICLASS TTMSFNCCloudFileConversionPlatformServicesService;
class DELPHICLASS TTMSFNCCloudFileConversionPlatformServicesList;
class DELPHICLASS TTMSFNCCloudFileConversionPlatformServices;
//-- type declarations -------------------------------------------------------
enum DECLSPEC_DENUM TTMSFNCCloudFileConversionJobStatus : unsigned char { fcjsUnknown, fcjsSuccessful, fcjsWaiting, fcjsError, fcjsProcessing, fcjsCancelled };

enum DECLSPEC_DENUM TTMSFNCCloudFileConversionFileFormat : unsigned char { fcfUnknown, fcf3g2, fcf3gp, fcf7z, fcfAac, fcfAc3, fcfAi, fcfAiff, fcfAvi, fcfAzw3, fcfBmp, fcfCab, fcfCdr, fcfCsv, fcfDjvu, fcfDoc, fcfDocm, fcfDocx, fcfDxf, fcfEmf, fcfEps, fcfEpub, fcfFb2, fcfFlac, fcfFlv, fcfGif, fcfJpg, fcfLrf, fcfM4a, fcfM4v, fcfMkv, fcfMobi, fcfMod, fcfMov, fcfMp3, fcfMp4, fcfMpg, fcfMts, fcfOdp, fcfOdt, fcfOgg, fcfPdb, fcfPdf, fcfPng, fcfPps, fcfPpsx, fcfPpt, fcfPptm, fcfPptx, fcfPrc, fcfPs, fcfPsd, fcfRar, fcfRb, fcfRm, fcfRmvb, fcfRtf, fcfSvg, fcfTar, fcfTcr, fcfTiff, fcfTs, fcfTxt, fcfVob, fcfWav, fcfWebm, fcfWebp, fcfWma, fcfWmf, fcfWmv, fcfWps, fcfXls, fcfXlsx, fcfXps, fcfZip };

__interface  INTERFACE_UUID("{9300D969-30A6-4B68-A590-4E303869C4A1}") ITMSFNCCustomCloudFileConversionProperties  : public System::IInterface 
{
	virtual System::UnicodeString __fastcall GetAPIKey() = 0 ;
	virtual System::UnicodeString __fastcall GetClientID() = 0 ;
	virtual System::UnicodeString __fastcall GetSecret() = 0 ;
};

__interface  INTERFACE_UUID("{6F4D7192-9E46-46EA-9F73-58CDC64BF7D6}") ITMSFNCCustomCloudFileConversionInstance  : public System::IInterface 
{
	virtual void __fastcall SetCloudFileConversionProperties(const _di_ITMSFNCCustomCloudFileConversionProperties Value) = 0 ;
};

__interface  INTERFACE_UUID("{3E6B6F4A-BDE1-4D51-9F9F-6429158B949E}") ITMSFNCCustomCloudFileConversion  : public System::IInterface 
{
	virtual System::UnicodeString __fastcall GetIdentifier() = 0 ;
	virtual System::UnicodeString __fastcall GetHost() = 0 ;
	virtual void __fastcall AddHeaders(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestHeaders* AHeaders) = 0 ;
	virtual void __fastcall ParseJobList(System::Json::TJSONValue* AJSON, TTMSFNCCloudFileConversionJobs* AJobs, System::UnicodeString &AError) = 0 ;
	virtual void __fastcall BuildGetJobsRequest(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequest* ARequest, bool AAll, int ANumberOfJobs) = 0 ;
	virtual TTMSFNCCloudFileConversionJob* __fastcall ParseCreateJob(System::Json::TJSONValue* AJSON, TTMSFNCCloudFileConversionJobs* AJobs, System::UnicodeString &AError) = 0 ;
	virtual void __fastcall BuildCreateJobRequest(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequest* ARequest, System::UnicodeString AOutputFormat, System::UnicodeString AFileName = System::UnicodeString(), System::UnicodeString AUrl = System::UnicodeString(), System::UnicodeString ABase64 = System::UnicodeString()) = 0 ;
	virtual void __fastcall BuildCreateJobRequestFile(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequest* ARequest, System::UnicodeString AOutputFormat, System::UnicodeString AFile) = 0 ;
	virtual void __fastcall ParseUploadFile(System::Json::TJSONValue* AJSON, TTMSFNCCloudFileConversionJob* AJob, System::UnicodeString &AError) = 0 ;
	virtual void __fastcall BuildUploadFileRequest(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequest* ARequest, TTMSFNCCloudFileConversionJob* AJob, System::UnicodeString AFile) = 0 ;
	virtual void __fastcall ParseCancelJob(System::Json::TJSONValue* AJSON, TTMSFNCCloudFileConversionJob* AJob, System::UnicodeString &AError) = 0 ;
	virtual void __fastcall BuildCancelFileRequest(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequest* ARequest, System::UnicodeString AJobId) = 0 ;
	virtual void __fastcall ParseGetJobDetails(System::Json::TJSONValue* AJSON, TTMSFNCCloudFileConversionJob* AJob, System::UnicodeString &AError) = 0 ;
	virtual void __fastcall BuildGetJobDetailsRequest(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequest* ARequest, System::UnicodeString AJobId) = 0 ;
	virtual void __fastcall ParseDownloadJobFile(System::Json::TJSONValue* AJSON, TTMSFNCCloudFileConversionFile* AFile, System::UnicodeString AFilePath, System::UnicodeString &AError) = 0 ;
	virtual void __fastcall BuildDownloadJobFileRequest(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequest* ARequest, TTMSFNCCloudFileConversionFile* AFile) = 0 ;
	virtual bool __fastcall IsValid() = 0 ;
	virtual void __fastcall DestroyCloudFileConversion() = 0 ;
};

__interface  INTERFACE_UUID("{B40E5842-D596-487A-9D39-DE04FEBCDAFB}") ITMSFNCCloudFileConversionService  : public System::IInterface 
{
	virtual _di_ITMSFNCCustomCloudFileConversion __fastcall CreateCloudFileConversion() = 0 ;
	virtual void __fastcall DestroyCloudFileConversion(_di_ITMSFNCCustomCloudFileConversion ACloudFileConversion) = 0 ;
};

__interface  INTERFACE_UUID("{D171C6A1-0C3C-4AEC-B8FC-A11D2D387E27}") ITMSFNCCloudFileConversionServiceCloudConvert  : public ITMSFNCCloudFileConversionService 
{
	
};

__interface  INTERFACE_UUID("{BAADFD70-9A1B-465E-9933-5BFA67383A7E}") ITMSFNCCloudFileConversionServiceZamzar  : public ITMSFNCCloudFileConversionService 
{
	
};

__interface  INTERFACE_UUID("{A0AE5E80-7C16-4CF9-AE8B-2BE5A9CFFA3F}") ITMSFNCCloudFileConversionServiceConvertIo  : public ITMSFNCCloudFileConversionService 
{
	
};

enum DECLSPEC_DENUM TTMSFNCCloudFileConversionService : unsigned char { fcsCloudConvert, fcsConvertIO, fcsZamzar };

__interface TTMSFNCCloudFileConversionJobsCallBack  : public System::IInterface 
{
	virtual void __fastcall Invoke(TTMSFNCCloudFileConversionJobs* AJobs, System::UnicodeString AErrorMessage) = 0 ;
};

__interface TTMSFNCCloudFileConversionJobCallBack  : public System::IInterface 
{
	virtual void __fastcall Invoke(TTMSFNCCloudFileConversionJob* AJob, System::UnicodeString AErrorMessage) = 0 ;
};

__interface TTMSFNCCloudFileConversionFileCallBack  : public System::IInterface 
{
	virtual void __fastcall Invoke(TTMSFNCCloudFileConversionFile* AFile, System::UnicodeString AErrorMessage) = 0 ;
};

__interface TTMSFNCCloudFileConversionFileStreamCallBack  : public System::IInterface 
{
	virtual void __fastcall Invoke(TTMSFNCCloudFileConversionFile* AFile, System::Classes::TMemoryStream* AFileStream, System::UnicodeString AErrorMessage) = 0 ;
};

typedef void __fastcall (__closure *TTMSFNCCloudFileConversionErrorEvent)(System::TObject* Sender, System::UnicodeString AErrorMessage);

typedef void __fastcall (__closure *TTMSFNCCloudFileConversionGetJobsEvent)(System::TObject* Sender, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult, TTMSFNCCloudFileConversionJobs* AJobs, System::UnicodeString AErrorMessage);

typedef void __fastcall (__closure *TTMSFNCCloudFileConversionGetJobEvent)(System::TObject* Sender, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult, TTMSFNCCloudFileConversionJob* AJob, System::UnicodeString AErrorMessage);

typedef void __fastcall (__closure *TTMSFNCCloudFileConversionJobFinishedEvent)(System::TObject* Sender, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult, TTMSFNCCloudFileConversionJob* AJob, TTMSFNCCloudFileConversionJobStatus AStatus);

typedef void __fastcall (__closure *TTMSFNCCloudFileConversionGetFileEvent)(System::TObject* Sender, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult, TTMSFNCCloudFileConversionFile* AFile, System::UnicodeString AErrorMessage);

typedef void __fastcall (__closure *TTMSFNCCloudFileConversionSavedFileEvent)(System::TObject* Sender, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult, TTMSFNCCloudFileConversionFile* AFile, System::UnicodeString ALocation, System::UnicodeString AErrorMessage);

typedef void __fastcall (__closure *TTMSFNCCloudFileConversionFileUploadEvent)(System::TObject* Sender, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult, TTMSFNCCloudFileConversionJob* AJob, bool &AGetDetails);

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudFileConversionJobsResultCallBackWrapper : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	_di_TTMSFNCCloudFileConversionJobsCallBack FCallback;
	
public:
	__fastcall TTMSFNCCloudFileConversionJobsResultCallBackWrapper(_di_TTMSFNCCloudFileConversionJobsCallBack ACallback);
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
	/* TObject.Destroy */ inline __fastcall virtual ~TTMSFNCCloudFileConversionJobsResultCallBackWrapper() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudFileConversionJobResultCallBackWrapper : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	_di_TTMSFNCCloudFileConversionJobCallBack FCallback;
	
public:
	__fastcall TTMSFNCCloudFileConversionJobResultCallBackWrapper(_di_TTMSFNCCloudFileConversionJobCallBack ACallback);
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
	/* TObject.Destroy */ inline __fastcall virtual ~TTMSFNCCloudFileConversionJobResultCallBackWrapper() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudFileConversionFileResultCallBackWrapper : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	_di_TTMSFNCCloudFileConversionFileCallBack FCallback;
	
public:
	__fastcall TTMSFNCCloudFileConversionFileResultCallBackWrapper(_di_TTMSFNCCloudFileConversionFileCallBack ACallback);
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
	/* TObject.Destroy */ inline __fastcall virtual ~TTMSFNCCloudFileConversionFileResultCallBackWrapper() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudFileConversionFileStreamResultCallBackWrapper : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	_di_TTMSFNCCloudFileConversionFileStreamCallBack FCallback;
	
public:
	__fastcall TTMSFNCCloudFileConversionFileStreamResultCallBackWrapper(_di_TTMSFNCCloudFileConversionFileStreamCallBack ACallback);
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
	/* TObject.Destroy */ inline __fastcall virtual ~TTMSFNCCloudFileConversionFileStreamResultCallBackWrapper() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudFileConversionFile : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	TTMSFNCCloudFileConversionJob* FOwner;
	bool FDataBoolean;
	System::UnicodeString FDataString;
	System::TObject* FDataObject;
	NativeInt FDataInteger;
	void *FDataPointer;
	TTMSFNCCloudFileConversionJob* __fastcall GetJob();
	
protected:
	System::UnicodeString FName;
	System::UnicodeString FId;
	TTMSFNCCloudFileConversionFileFormat FFormat;
	System::UnicodeString FUrl;
	System::Classes::TMemoryStream* FFileStream;
	bool FCombinedZip;
	
public:
	__fastcall virtual TTMSFNCCloudFileConversionFile(System::Classes::TCollection* Collection);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual ~TTMSFNCCloudFileConversionFile();
	void __fastcall DownloadFileToStream(_di_TTMSFNCCloudFileConversionFileStreamCallBack ACallback = _di_TTMSFNCCloudFileConversionFileStreamCallBack());
	void __fastcall DownloadFileToFile(System::UnicodeString AFilePath = System::UnicodeString(), _di_TTMSFNCCloudFileConversionFileCallBack ACallback = _di_TTMSFNCCloudFileConversionFileCallBack());
	__property void * DataPointer = {read=FDataPointer, write=FDataPointer};
	__property bool DataBoolean = {read=FDataBoolean, write=FDataBoolean, nodefault};
	__property System::TObject* DataObject = {read=FDataObject, write=FDataObject};
	__property System::UnicodeString DataString = {read=FDataString, write=FDataString};
	__property NativeInt DataInteger = {read=FDataInteger, write=FDataInteger, nodefault};
	__property System::UnicodeString Id = {read=FId};
	__property System::UnicodeString Name = {read=FName};
	__property TTMSFNCCloudFileConversionFileFormat Format = {read=FFormat, nodefault};
	__property System::UnicodeString Url = {read=FUrl};
	__property TTMSFNCCloudFileConversionJob* Job = {read=GetJob};
	__property bool CombinedZip = {read=FCombinedZip, nodefault};
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudFileConversionFiles : public Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCCloudFileConversionFile*>
{
	typedef Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCCloudFileConversionFile*> inherited;
	
public:
	TTMSFNCCloudFileConversionFile* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCCloudFileConversionJob* FOwner;
	HIDESBASE TTMSFNCCloudFileConversionFile* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCCloudFileConversionFile* const Value);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall CreateItemClass();
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	
public:
	__fastcall virtual TTMSFNCCloudFileConversionFiles(TTMSFNCCloudFileConversionJob* AOwner);
	__property TTMSFNCCloudFileConversionFile* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	HIDESBASE TTMSFNCCloudFileConversionFile* __fastcall Add();
	HIDESBASE TTMSFNCCloudFileConversionFile* __fastcall Insert(int Index);
	void __fastcall DownloadAllFilesToFiles(System::UnicodeString ADirectory, bool ACombinedZip = false, _di_TTMSFNCCloudFileConversionFileCallBack ACallback = _di_TTMSFNCCloudFileConversionFileCallBack());
	void __fastcall DownloadAllFilesToStreams(bool ACombinedZip = false, _di_TTMSFNCCloudFileConversionFileStreamCallBack ACallback = _di_TTMSFNCCloudFileConversionFileStreamCallBack());
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCCloudFileConversionFiles() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudFileConversionJob : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	TTMSFNCCustomCloudFileConversion* FOwner;
	bool FDataBoolean;
	System::UnicodeString FDataString;
	System::TObject* FDataObject;
	NativeInt FDataInteger;
	void *FDataPointer;
	TTMSFNCCloudFileConversionFiles* FOutputFiles;
	bool FWasUnknown;
	bool FWasComplete;
	
protected:
	System::UnicodeString FName;
	System::UnicodeString FId;
	TTMSFNCCloudFileConversionJobStatus FStatus;
	TTMSFNCCloudFileConversionFileFormat FOutputFormat;
	System::UnicodeString FUploadPostData;
	System::UnicodeString FUploadURL;
	System::UnicodeString FUploadPath;
	
public:
	__fastcall virtual TTMSFNCCloudFileConversionJob(System::Classes::TCollection* Collection);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual ~TTMSFNCCloudFileConversionJob();
	void __fastcall CancelConversion(_di_TTMSFNCCloudFileConversionJobCallBack ACallback = _di_TTMSFNCCloudFileConversionJobCallBack());
	void __fastcall DownloadAllFilesToStreams(bool ACombinedZip = false, _di_TTMSFNCCloudFileConversionFileStreamCallBack ACallback = _di_TTMSFNCCloudFileConversionFileStreamCallBack());
	void __fastcall DownloadFileToStream(int AIndex = 0x0, _di_TTMSFNCCloudFileConversionFileStreamCallBack ACallback = _di_TTMSFNCCloudFileConversionFileStreamCallBack())/* overload */;
	void __fastcall DownloadFileToStream(TTMSFNCCloudFileConversionFile* AFile, _di_TTMSFNCCloudFileConversionFileStreamCallBack ACallback = _di_TTMSFNCCloudFileConversionFileStreamCallBack())/* overload */;
	void __fastcall DownloadFileToFile(System::UnicodeString AFilePath, int AIndex = 0x0, _di_TTMSFNCCloudFileConversionFileCallBack ACallback = _di_TTMSFNCCloudFileConversionFileCallBack())/* overload */;
	void __fastcall DownloadFileToFile(System::UnicodeString AFilePath, TTMSFNCCloudFileConversionFile* AFile, _di_TTMSFNCCloudFileConversionFileCallBack ACallback = _di_TTMSFNCCloudFileConversionFileCallBack())/* overload */;
	void __fastcall DownloadAllFilesToFiles(System::UnicodeString ADirectory, bool ACombinedZip = false, _di_TTMSFNCCloudFileConversionFileCallBack ACallback = _di_TTMSFNCCloudFileConversionFileCallBack());
	void __fastcall GetDetails(_di_TTMSFNCCloudFileConversionJobCallBack ACallback = _di_TTMSFNCCloudFileConversionJobCallBack());
	__property void * DataPointer = {read=FDataPointer, write=FDataPointer};
	__property bool DataBoolean = {read=FDataBoolean, write=FDataBoolean, nodefault};
	__property System::TObject* DataObject = {read=FDataObject, write=FDataObject};
	__property System::UnicodeString DataString = {read=FDataString, write=FDataString};
	__property NativeInt DataInteger = {read=FDataInteger, write=FDataInteger, nodefault};
	__property System::UnicodeString Id = {read=FId};
	__property System::UnicodeString Name = {read=FName};
	__property TTMSFNCCloudFileConversionJobStatus Status = {read=FStatus, nodefault};
	__property TTMSFNCCloudFileConversionFileFormat OutputFormat = {read=FOutputFormat, nodefault};
	__property TTMSFNCCloudFileConversionFiles* OutputFiles = {read=FOutputFiles};
	TTMSFNCCloudFileConversionFile* __fastcall GetOutputFileByID(System::UnicodeString AOutputFileId);
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudFileConversionJobs : public Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCCloudFileConversionJob*>
{
	typedef Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCCloudFileConversionJob*> inherited;
	
public:
	TTMSFNCCloudFileConversionJob* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCCustomCloudFileConversion* FOwner;
	HIDESBASE TTMSFNCCloudFileConversionJob* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCCloudFileConversionJob* const Value);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall CreateItemClass();
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	
public:
	__fastcall virtual TTMSFNCCloudFileConversionJobs(TTMSFNCCustomCloudFileConversion* AOwner);
	__property TTMSFNCCloudFileConversionJob* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	HIDESBASE TTMSFNCCloudFileConversionJob* __fastcall Add();
	HIDESBASE TTMSFNCCloudFileConversionJob* __fastcall Insert(int Index);
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCCloudFileConversionJobs() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCustomCloudFileConversion : public Fmx::Tmsfnccloudbase::TTMSFNCCloudBase
{
	typedef Fmx::Tmsfnccloudbase::TTMSFNCCloudBase inherited;
	
private:
	Fmx::Types::TTimer* FTimer;
	int FRunningJobCount;
	_di_ITMSFNCCustomCloudFileConversion FCloudFileConversion;
	_di_ITMSFNCCustomCloudFileConversionInstance FCloudFileConversionInstance;
	_di_ITMSFNCCustomCloudFileConversionProperties FCloudFileConversionProperties;
	TTMSFNCCloudFileConversionService FService;
	System::UnicodeString FAPIKey;
	System::UnicodeString FClientID;
	System::UnicodeString FSecret;
	TTMSFNCCloudFileConversionJobs* FConvertJobs;
	TTMSFNCCloudFileConversionGetJobsEvent FOnGetConvertJobs;
	TTMSFNCCloudFileConversionGetJobEvent FOnConvertJobCreated;
	TTMSFNCCloudFileConversionGetJobEvent FOnGetConvertJobDetails;
	TTMSFNCCloudFileConversionGetFileEvent FOnFileDownloadedToStream;
	TTMSFNCCloudFileConversionGetJobEvent FOnConvertJobCancelled;
	TTMSFNCCloudFileConversionSavedFileEvent FOnFileDownloadedToFile;
	TTMSFNCCloudFileConversionFileUploadEvent FOnFileUploaded;
	int FRetrieveDetailsInterval;
	TTMSFNCCloudFileConversionJobFinishedEvent FOnConvertJobFinished;
	TTMSFNCCloudFileConversionErrorEvent FOnError;
	HIDESBASE void __fastcall SetService(const TTMSFNCCloudFileConversionService Value);
	void __fastcall SetAPIKey(const System::UnicodeString Value);
	void __fastcall SetClientID(const System::UnicodeString Value);
	void __fastcall SetSecret(const System::UnicodeString Value);
	void __fastcall CheckTimer();
	
protected:
	virtual void __fastcall DoRetrieveDetails(System::TObject* Sender);
	virtual void __fastcall DoThrowError(System::UnicodeString ErrorMessage);
	virtual void __fastcall DoJobFinished(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult, TTMSFNCCloudFileConversionJob* AJob, TTMSFNCCloudFileConversionJobStatus AStatus);
	void __fastcall DoJobCreated(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult, TTMSFNCCloudFileConversionJob* AJob, System::UnicodeString AErrorMessage);
	void __fastcall DoGetJobList(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult, TTMSFNCCloudFileConversionJobs* AJobs, System::UnicodeString AErrorMessage);
	void __fastcall DoGetJobStatus(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult, TTMSFNCCloudFileConversionJob* AJob, System::UnicodeString AErrorMessage);
	void __fastcall DoFileDownloadedToStream(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult, TTMSFNCCloudFileConversionFile* AFile, System::UnicodeString AErrorMessage);
	void __fastcall DoJobCancelled(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult, TTMSFNCCloudFileConversionJob* AJob, System::UnicodeString AErrorMessage);
	void __fastcall DoFileDownloadedToFile(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult, TTMSFNCCloudFileConversionFile* AFile, System::UnicodeString ALocation, System::UnicodeString AErrorMessage);
	void __fastcall DoFileUploaded(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult, TTMSFNCCloudFileConversionJob* AJob, bool &AGetDetails);
	void __fastcall DoRequestGetJobList(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestCreateJob(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestUploadFile(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestCancelFile(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestDownloadFileToStream(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestDownloadFileToFile(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRequestGetJobDetails(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall UploadFile(System::UnicodeString AJobId, System::UnicodeString AFile)/* overload */;
	void __fastcall UploadFile(TTMSFNCCloudFileConversionJob* AJob, System::UnicodeString AFile)/* overload */;
	virtual void __fastcall InitializeCloudFileConversion();
	virtual bool __fastcall CheckAPIKey();
	virtual NativeUInt __fastcall GetInstance();
	bool __fastcall CloudFileConversionReady();
	System::UnicodeString __fastcall GetAPIKey();
	System::UnicodeString __fastcall GetClientID();
	System::UnicodeString __fastcall GetSecret();
	int __fastcall GetVersionNr();
	virtual System::UnicodeString __fastcall GetDocURL();
	virtual System::UnicodeString __fastcall GetTipsURL();
	_di_ITMSFNCCustomCloudFileConversion __fastcall CloudFileConversion();
	virtual System::UnicodeString __fastcall GetVersion();
	__property TTMSFNCCloudFileConversionService Service = {read=FService, write=SetService, default=0};
	__property System::UnicodeString APIKey = {read=FAPIKey, write=SetAPIKey};
	__property System::UnicodeString ClientID = {read=FClientID, write=SetClientID};
	__property System::UnicodeString Secret = {read=FSecret, write=SetSecret};
	__property _di_ITMSFNCCustomCloudFileConversion CloudFileConversionInstance = {read=FCloudFileConversion};
	__property _di_ITMSFNCCustomCloudFileConversionProperties CloudFileConversionProperties = {read=FCloudFileConversionProperties};
	__property TTMSFNCCloudFileConversionJobs* ConvertJobs = {read=FConvertJobs, write=FConvertJobs};
	__property TTMSFNCCloudFileConversionGetJobsEvent OnGetConvertJobs = {read=FOnGetConvertJobs, write=FOnGetConvertJobs};
	__property TTMSFNCCloudFileConversionGetJobEvent OnConvertJobCreated = {read=FOnConvertJobCreated, write=FOnConvertJobCreated};
	__property TTMSFNCCloudFileConversionGetJobEvent OnConvertJobCancelled = {read=FOnConvertJobCancelled, write=FOnConvertJobCancelled};
	__property TTMSFNCCloudFileConversionGetJobEvent OnGetConvertJobDetails = {read=FOnGetConvertJobDetails, write=FOnGetConvertJobDetails};
	__property TTMSFNCCloudFileConversionJobFinishedEvent OnConvertJobFinished = {read=FOnConvertJobFinished, write=FOnConvertJobFinished};
	__property TTMSFNCCloudFileConversionGetFileEvent OnFileDownloadedToStream = {read=FOnFileDownloadedToStream, write=FOnFileDownloadedToStream};
	__property TTMSFNCCloudFileConversionSavedFileEvent OnFileDownloadedToFile = {read=FOnFileDownloadedToFile, write=FOnFileDownloadedToFile};
	__property TTMSFNCCloudFileConversionFileUploadEvent OnFileUploaded = {read=FOnFileUploaded, write=FOnFileUploaded};
	__property TTMSFNCCloudFileConversionErrorEvent OnError = {read=FOnError, write=FOnError};
	__property int RetrieveDetailsInterval = {read=FRetrieveDetailsInterval, write=FRetrieveDetailsInterval, nodefault};
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual TTMSFNCCustomCloudFileConversion(System::Classes::TComponent* AOwner)/* overload */;
	__fastcall virtual ~TTMSFNCCustomCloudFileConversion();
	__classmethod TTMSFNCCloudFileConversionFileFormat __fastcall GetConversionFileFormatFromString(System::UnicodeString AFormat);
	__classmethod System::UnicodeString __fastcall GetFileFormatText(TTMSFNCCloudFileConversionFileFormat AFileFormat);
	__classmethod System::UnicodeString __fastcall GetStatusText(TTMSFNCCloudFileConversionJobStatus AStatus);
	__classmethod System::UnicodeString __fastcall ExtractFileConversionFileName(System::UnicodeString AFileName);
	void __fastcall GetConvertJobs(bool AAll = true, int ANumberOfJobs = 0x32, _di_TTMSFNCCloudFileConversionJobsCallBack ACallback = _di_TTMSFNCCloudFileConversionJobsCallBack());
	void __fastcall ConvertFileFromURL(System::UnicodeString AUrl, TTMSFNCCloudFileConversionFileFormat AOutputFormat, System::UnicodeString AFileName = System::UnicodeString(), _di_TTMSFNCCloudFileConversionJobCallBack ACallback = _di_TTMSFNCCloudFileConversionJobCallBack());
	void __fastcall ConvertFile(System::UnicodeString AFile, TTMSFNCCloudFileConversionFileFormat AOutputFormat, _di_TTMSFNCCloudFileConversionJobCallBack ACallback = _di_TTMSFNCCloudFileConversionJobCallBack());
	void __fastcall ConvertFileFromBase64(System::UnicodeString ABase64File, System::UnicodeString AFileName, TTMSFNCCloudFileConversionFileFormat AOutputFormat, _di_TTMSFNCCloudFileConversionJobCallBack ACallback = _di_TTMSFNCCloudFileConversionJobCallBack());
	void __fastcall CancelConvertJob(System::UnicodeString AJobId, _di_TTMSFNCCloudFileConversionJobCallBack ACallback = _di_TTMSFNCCloudFileConversionJobCallBack())/* overload */;
	void __fastcall CancelConvertJob(TTMSFNCCloudFileConversionJob* AJob, _di_TTMSFNCCloudFileConversionJobCallBack ACallback = _di_TTMSFNCCloudFileConversionJobCallBack())/* overload */;
	void __fastcall GetConvertJobDetails(System::UnicodeString AJobId, _di_TTMSFNCCloudFileConversionJobCallBack ACallback = _di_TTMSFNCCloudFileConversionJobCallBack())/* overload */;
	void __fastcall GetConvertJobDetails(TTMSFNCCloudFileConversionJob* AJob, _di_TTMSFNCCloudFileConversionJobCallBack ACallback = _di_TTMSFNCCloudFileConversionJobCallBack())/* overload */;
	void __fastcall DownloadFileToStream(System::UnicodeString AJobId, System::UnicodeString AFileId, _di_TTMSFNCCloudFileConversionFileStreamCallBack ACallback = _di_TTMSFNCCloudFileConversionFileStreamCallBack())/* overload */;
	void __fastcall DownloadFileToStream(TTMSFNCCloudFileConversionJob* AJob, System::UnicodeString AFileId, _di_TTMSFNCCloudFileConversionFileStreamCallBack ACallback = _di_TTMSFNCCloudFileConversionFileStreamCallBack())/* overload */;
	void __fastcall DownloadFileToStream(TTMSFNCCloudFileConversionFile* AFile, _di_TTMSFNCCloudFileConversionFileStreamCallBack ACallback = _di_TTMSFNCCloudFileConversionFileStreamCallBack())/* overload */;
	void __fastcall DownloadFileToFile(System::UnicodeString ASaveFilePath, TTMSFNCCloudFileConversionFile* AFile, _di_TTMSFNCCloudFileConversionFileCallBack ACallback = _di_TTMSFNCCloudFileConversionFileCallBack())/* overload */;
	TTMSFNCCloudFileConversionJob* __fastcall GetConvertJobById(System::UnicodeString AId);
	bool __fastcall ValidFileName(System::UnicodeString AFileName);
public:
	/* TTMSFNCCustomCloudBase.Create */ inline __fastcall virtual TTMSFNCCustomCloudFileConversion()/* overload */ : Fmx::Tmsfnccloudbase::TTMSFNCCloudBase() { }
	
private:
	void *__ITMSFNCCustomCloudFileConversionProperties;	// ITMSFNCCustomCloudFileConversionProperties 
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {9300D969-30A6-4B68-A590-4E303869C4A1}
	operator _di_ITMSFNCCustomCloudFileConversionProperties()
	{
		_di_ITMSFNCCustomCloudFileConversionProperties intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator ITMSFNCCustomCloudFileConversionProperties*(void) { return (ITMSFNCCustomCloudFileConversionProperties*)&__ITMSFNCCustomCloudFileConversionProperties; }
	#endif
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCustomCloudFileConversionInterfacedObject : public System::TInterfacedObject
{
	typedef System::TInterfacedObject inherited;
	
private:
	_di_ITMSFNCCustomCloudFileConversionProperties FCloudFileConversionProperties;
	_di_ITMSFNCCustomCloudFileConversionProperties __fastcall GetCloudFileConversionProperties();
	
protected:
	void __fastcall SetCloudFileConversionProperties(const _di_ITMSFNCCustomCloudFileConversionProperties Value);
	
public:
	__property _di_ITMSFNCCustomCloudFileConversionProperties CloudFileConversionProperties = {read=GetCloudFileConversionProperties};
	__fastcall virtual ~TTMSFNCCustomCloudFileConversionInterfacedObject();
public:
	/* TObject.Create */ inline __fastcall TTMSFNCCustomCloudFileConversionInterfacedObject() : System::TInterfacedObject() { }
	
private:
	void *__ITMSFNCCustomCloudFileConversionInstance;	// ITMSFNCCustomCloudFileConversionInstance 
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {6F4D7192-9E46-46EA-9F73-58CDC64BF7D6}
	operator _di_ITMSFNCCustomCloudFileConversionInstance()
	{
		_di_ITMSFNCCustomCloudFileConversionInstance intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator ITMSFNCCustomCloudFileConversionInstance*(void) { return (ITMSFNCCustomCloudFileConversionInstance*)&__ITMSFNCCustomCloudFileConversionInstance; }
	#endif
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudFileConversionList : public System::Generics::Collections::TList__1<_di_ITMSFNCCustomCloudFileConversion>
{
	typedef System::Generics::Collections::TList__1<_di_ITMSFNCCustomCloudFileConversion> inherited;
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudFileConversion_ITMSFNCCustomCloudFileConversion>.Create */ inline __fastcall TTMSFNCCloudFileConversionList()/* overload */ : System::Generics::Collections::TList__1<_di_ITMSFNCCustomCloudFileConversion>() { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudFileConversion_ITMSFNCCustomCloudFileConversion>.Create */ inline __fastcall TTMSFNCCloudFileConversionList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<_di_ITMSFNCCustomCloudFileConversion> > AComparer)/* overload */ : System::Generics::Collections::TList__1<_di_ITMSFNCCustomCloudFileConversion>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudFileConversion_ITMSFNCCustomCloudFileConversion>.Create */ inline __fastcall TTMSFNCCloudFileConversionList(System::Generics::Collections::TEnumerable__1<_di_ITMSFNCCustomCloudFileConversion>* const Collection)/* overload */ : System::Generics::Collections::TList__1<_di_ITMSFNCCustomCloudFileConversion>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudFileConversion_ITMSFNCCustomCloudFileConversion>.Create */ inline __fastcall TTMSFNCCloudFileConversionList(const _di_ITMSFNCCustomCloudFileConversion *Values, const int Values_High)/* overload */ : System::Generics::Collections::TList__1<_di_ITMSFNCCustomCloudFileConversion>(Values, Values_High) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudFileConversion_ITMSFNCCustomCloudFileConversion>.Destroy */ inline __fastcall virtual ~TTMSFNCCloudFileConversionList() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudFileConversionFactoryService : public System::TInterfacedObject
{
	typedef System::TInterfacedObject inherited;
	
private:
	TTMSFNCCloudFileConversionList* FCloudFileConversion;
	
protected:
	virtual _di_ITMSFNCCustomCloudFileConversion __fastcall DoCreateCloudFileConversion() = 0 ;
	_di_ITMSFNCCustomCloudFileConversion __fastcall CreateCloudFileConversion();
	void __fastcall DestroyCloudFileConversion(_di_ITMSFNCCustomCloudFileConversion ACloudFileConversion);
	
public:
	__fastcall TTMSFNCCloudFileConversionFactoryService();
	__fastcall virtual ~TTMSFNCCloudFileConversionFactoryService();
private:
	void *__ITMSFNCCloudFileConversionService;	// ITMSFNCCloudFileConversionService 
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {B40E5842-D596-487A-9D39-DE04FEBCDAFB}
	operator _di_ITMSFNCCloudFileConversionService()
	{
		_di_ITMSFNCCloudFileConversionService intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator ITMSFNCCloudFileConversionService*(void) { return (ITMSFNCCloudFileConversionService*)&__ITMSFNCCloudFileConversionService; }
	#endif
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudFileConversion : public TTMSFNCCustomCloudFileConversion
{
	typedef TTMSFNCCustomCloudFileConversion inherited;
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	
public:
	__property CloudFileConversionInstance;
	__property CloudFileConversionProperties;
	__property ConvertJobs;
	
__published:
	__property OnGetConvertJobs;
	__property OnConvertJobCreated;
	__property OnGetConvertJobDetails;
	__property OnConvertJobCancelled;
	__property OnFileDownloadedToStream;
	__property OnFileDownloadedToFile;
	__property OnFileUploaded;
	__property OnConvertJobFinished;
	__property OnError;
	__property APIKey = {default=0};
	__property Service = {default=0};
	__property Version = {default=0};
	__property RetrieveDetailsInterval;
public:
	/* TTMSFNCCustomCloudFileConversion.Create */ inline __fastcall virtual TTMSFNCCloudFileConversion(System::Classes::TComponent* AOwner)/* overload */ : TTMSFNCCustomCloudFileConversion(AOwner) { }
	/* TTMSFNCCustomCloudFileConversion.Destroy */ inline __fastcall virtual ~TTMSFNCCloudFileConversion() { }
	
public:
	/* TTMSFNCCustomCloudBase.Create */ inline __fastcall virtual TTMSFNCCloudFileConversion()/* overload */ : TTMSFNCCustomCloudFileConversion() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudFileConversionPlatformServicesService : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	System::_di_IInterface FInterface;
	System::UnicodeString FGUID;
	
public:
	__fastcall TTMSFNCCloudFileConversionPlatformServicesService(System::UnicodeString AGUID, System::_di_IInterface AInterface);
	__property System::UnicodeString GUID = {read=FGUID};
	__property System::_di_IInterface Interface = {read=FInterface};
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
	/* TObject.Destroy */ inline __fastcall virtual ~TTMSFNCCloudFileConversionPlatformServicesService() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudFileConversionPlatformServicesList : public System::Generics::Collections::TObjectList__1<TTMSFNCCloudFileConversionPlatformServicesService*>
{
	typedef System::Generics::Collections::TObjectList__1<TTMSFNCCloudFileConversionPlatformServicesService*> inherited;
	
private:
	System::_di_IInterface __fastcall GetValue(System::UnicodeString AGUID);
	
public:
	bool __fastcall ContainsKey(System::UnicodeString AGUID);
	void __fastcall RemoveByGUID(System::UnicodeString AGUID);
	__property System::_di_IInterface Interfaces[System::UnicodeString AGUID] = {read=GetValue};
public:
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudFileConversion_TTMSFNCCloudFileConversionPlatformServicesService>.Create */ inline __fastcall TTMSFNCCloudFileConversionPlatformServicesList()/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudFileConversionPlatformServicesService*>() { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudFileConversion_TTMSFNCCloudFileConversionPlatformServicesService>.Create */ inline __fastcall TTMSFNCCloudFileConversionPlatformServicesList(bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudFileConversionPlatformServicesService*>(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudFileConversion_TTMSFNCCloudFileConversionPlatformServicesService>.Create */ inline __fastcall TTMSFNCCloudFileConversionPlatformServicesList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCloudFileConversionPlatformServicesService*> > AComparer, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudFileConversionPlatformServicesService*>(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudFileConversion_TTMSFNCCloudFileConversionPlatformServicesService>.Create */ inline __fastcall TTMSFNCCloudFileConversionPlatformServicesList(System::Generics::Collections::TEnumerable__1<TTMSFNCCloudFileConversionPlatformServicesService*>* const Collection, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudFileConversionPlatformServicesService*>(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudFileConversion_TTMSFNCCloudFileConversionPlatformServicesService>.Destroy */ inline __fastcall virtual ~TTMSFNCCloudFileConversionPlatformServicesList() { }
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudFileConversion_TTMSFNCCloudFileConversionPlatformServicesService>.Create */ inline __fastcall TTMSFNCCloudFileConversionPlatformServicesList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCloudFileConversionPlatformServicesService*> > AComparer)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudFileConversionPlatformServicesService*>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudFileConversion_TTMSFNCCloudFileConversionPlatformServicesService>.Create */ inline __fastcall TTMSFNCCloudFileConversionPlatformServicesList(System::Generics::Collections::TEnumerable__1<TTMSFNCCloudFileConversionPlatformServicesService*>* const Collection)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudFileConversionPlatformServicesService*>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudFileConversion_TTMSFNCCloudFileConversionPlatformServicesService>.Create */ inline __fastcall TTMSFNCCloudFileConversionPlatformServicesList(TTMSFNCCloudFileConversionPlatformServicesService* const *Values, const int Values_High)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudFileConversionPlatformServicesService*>(Values, Values_High) { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudFileConversionPlatformServices : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	TTMSFNCCloudFileConversionPlatformServicesList* FServicesList;
	static TTMSFNCCloudFileConversionPlatformServices* FCurrent;
	static bool FCurrentReleased;
	__classmethod void __fastcall ReleaseCurrent();
	
public:
	__fastcall TTMSFNCCloudFileConversionPlatformServices();
	__fastcall virtual ~TTMSFNCCloudFileConversionPlatformServices();
	void __fastcall AddPlatformService(const GUID &AServiceGUID, const System::_di_IInterface AService);
	void __fastcall RemovePlatformService(const GUID &AServiceGUID);
	System::_di_IInterface __fastcall GetPlatformService(const GUID &AServiceGUID);
	bool __fastcall SupportsPlatformService(const GUID &AServiceGUID)/* overload */;
	bool __fastcall SupportsPlatformService(const GUID &AServiceGUID, System::_di_IInterface &AService)/* overload */;
	__classmethod TTMSFNCCloudFileConversionPlatformServices* __fastcall Current();
	System::UnicodeString __fastcall ToJSON()/* overload */;
	void __fastcall FromJSON(const System::UnicodeString Value);
	__property System::UnicodeString JSON = {read=ToJSON, write=FromJSON};
	System::UnicodeString __fastcall ToJSON(Fmx::Tmsfnctypes::TTMSFNCObjectExcludePropertyListArray AExcludedProperties)/* overload */;
	void __fastcall Log();
	void __fastcall SaveToJSONFile(const System::UnicodeString AFileName);
	void __fastcall LoadFromJSONFile(const System::UnicodeString AFileName);
	void __fastcall SaveToJSONStream(System::Classes::TStream* const AStream);
	void __fastcall LoadFromJSONStream(System::Classes::TStream* const AStream);
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x1);
static constexpr System::Int8 BLD_VER = System::Int8(0x0);
#define TTMSFNCCloudFileConversionDocURL u"https://download.tmssoftware.com/doc/tmsfnccloudpack/"
#define TTMSFNCCloudFileConversionTipsURL u"https://www.tmssoftware.com/site/tmsfnccloudpack.asp?s=faq"
}	/* namespace Tmsfnccloudfileconversion */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCCLOUDFILECONVERSION)
using namespace Fmx::Tmsfnccloudfileconversion;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfnccloudfileconversionHPP
