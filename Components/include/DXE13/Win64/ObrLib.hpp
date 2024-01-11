// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'ObrLib.pas' rev: 34.00 (Windows)

#ifndef ObrlibHPP
#define ObrlibHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.SysUtils.hpp>
#include <Winapi.ActiveX.hpp>
#include <Vcl.Graphics.hpp>

//-- user supplied -----------------------------------------------------------

namespace Obrlib
{
//-- forward type declarations -----------------------------------------------
struct TDecodePoint;
struct TDecodeResult;
class DELPHICLASS EBarcodeError;
class DELPHICLASS TBarcodeDecoder;
__interface DELPHIINTERFACE _Type;
typedef System::DelphiInterface<_Type> _di__Type;
__interface DELPHIINTERFACE _DecodeResultPoint;
typedef System::DelphiInterface<_DecodeResultPoint> _di__DecodeResultPoint;
__interface DELPHIINTERFACE _DecodeResult;
typedef System::DelphiInterface<_DecodeResult> _di__DecodeResult;
__interface DELPHIINTERFACE _DecodeResults;
typedef System::DelphiInterface<_DecodeResults> _di__DecodeResults;
__interface DELPHIINTERFACE _Reader;
typedef System::DelphiInterface<_Reader> _di__Reader;
//-- type declarations -------------------------------------------------------
enum DECLSPEC_DENUM TBarcodeFormat : unsigned char { bfUnknown, bfAztec, bfCodabar, bfCode39, bfCode93, bfCode128, bfDataMatrix, bfEan8, bfEan13, bfItf, bfMaxicode, bfPdf417, bfQrCode, bfRss14, bfRssExpanded, bfUpcA, bfUpcE, bfUpcEanExtension, bfMsi, bfPlessey, bfImb, bfPharmacode, bf1D };

typedef System::Set<TBarcodeFormat, TBarcodeFormat::bfUnknown, TBarcodeFormat::bf1D> TBarcodeFormats;

struct DECLSPEC_DRECORD TDecodePoint
{
public:
	float X;
	float Y;
};


struct DECLSPEC_DRECORD TDecodeResult
{
	
private:
	typedef System::DynamicArray<TDecodePoint> _TDecodeResult__1;
	
	
public:
	System::WideString Text;
	TBarcodeFormat Format;
	System::UnicodeString FormatName;
	_TDecodeResult__1 Points;
};


typedef System::DynamicArray<TDecodeResult> TDecodeResults;

class PASCALIMPLEMENTATION EBarcodeError : public System::Sysutils::Exception
{
	typedef System::Sysutils::Exception inherited;
	
public:
	/* Exception.Create */ inline __fastcall EBarcodeError(const System::UnicodeString Msg) : System::Sysutils::Exception(Msg) { }
	/* Exception.CreateFmt */ inline __fastcall EBarcodeError(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High) : System::Sysutils::Exception(Msg, Args, Args_High) { }
	/* Exception.CreateRes */ inline __fastcall EBarcodeError(NativeUInt Ident)/* overload */ : System::Sysutils::Exception(Ident) { }
	/* Exception.CreateRes */ inline __fastcall EBarcodeError(System::PResStringRec ResStringRec)/* overload */ : System::Sysutils::Exception(ResStringRec) { }
	/* Exception.CreateResFmt */ inline __fastcall EBarcodeError(NativeUInt Ident, const System::TVarRec *Args, const int Args_High)/* overload */ : System::Sysutils::Exception(Ident, Args, Args_High) { }
	/* Exception.CreateResFmt */ inline __fastcall EBarcodeError(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High)/* overload */ : System::Sysutils::Exception(ResStringRec, Args, Args_High) { }
	/* Exception.CreateHelp */ inline __fastcall EBarcodeError(const System::UnicodeString Msg, int AHelpContext) : System::Sysutils::Exception(Msg, AHelpContext) { }
	/* Exception.CreateFmtHelp */ inline __fastcall EBarcodeError(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High, int AHelpContext) : System::Sysutils::Exception(Msg, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EBarcodeError(NativeUInt Ident, int AHelpContext)/* overload */ : System::Sysutils::Exception(Ident, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EBarcodeError(System::PResStringRec ResStringRec, int AHelpContext)/* overload */ : System::Sysutils::Exception(ResStringRec, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EBarcodeError(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : System::Sysutils::Exception(ResStringRec, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EBarcodeError(NativeUInt Ident, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : System::Sysutils::Exception(Ident, Args, Args_High, AHelpContext) { }
	/* Exception.Destroy */ inline __fastcall virtual ~EBarcodeError() { }
	
};


class PASCALIMPLEMENTATION TBarcodeDecoder : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	_di__Reader FReader;
	bool __fastcall GetAssumeCode39CheckDigit();
	bool __fastcall GetAssumeGS1();
	bool __fastcall GetAssumeMSICheckDigit();
	bool __fastcall GetAutoRotate();
	TBarcodeFormats __fastcall GetBarcodeFormats();
	System::WideString __fastcall GetCharacterSet();
	bool __fastcall GetDecodeMultiple();
	bool __fastcall GetPureBarcode();
	bool __fastcall GetReturnCodabarStartEnd();
	bool __fastcall GetTryHarder();
	bool __fastcall GetTryInverted();
	bool __fastcall GetUseCode39ExtendedMode();
	bool __fastcall GetUseCode39RelaxedExtendedMode();
	void __fastcall SetAssumeCode39CheckDigit(bool Value);
	void __fastcall SetAssumeGS1(bool Value);
	void __fastcall SetAssumeMSICheckDigit(bool Value);
	void __fastcall SetAutoRotate(bool Value);
	void __fastcall SetBarcodeFormats(TBarcodeFormats Value);
	void __fastcall SetCharacterSet(System::WideString Value);
	void __fastcall SetDecodeMultiple(bool Value);
	void __fastcall SetPureBarcode(bool Value);
	void __fastcall SetReturnCodabarStartEnd(bool Value);
	void __fastcall SetTryHarder(bool Value);
	void __fastcall SetTryInverted(bool Value);
	void __fastcall SetUseCode39ExtendedMode(bool Value);
	void __fastcall SetUseCode39RelaxedExtendedMode(bool Value);
	
public:
	__fastcall TBarcodeDecoder();
	TDecodeResults __fastcall Decode(Vcl::Graphics::TGraphic* Graphic);
	__property bool AssumeCode39CheckDigit = {read=GetAssumeCode39CheckDigit, write=SetAssumeCode39CheckDigit, nodefault};
	__property bool AssumeGS1 = {read=GetAssumeGS1, write=SetAssumeGS1, nodefault};
	__property bool AssumeMSICheckDigit = {read=GetAssumeMSICheckDigit, write=SetAssumeMSICheckDigit, nodefault};
	__property bool AutoRotate = {read=GetAutoRotate, write=SetAutoRotate, nodefault};
	__property TBarcodeFormats BarcodeFormats = {read=GetBarcodeFormats, write=SetBarcodeFormats, nodefault};
	__property System::WideString CharacterSet = {read=GetCharacterSet, write=SetCharacterSet};
	__property bool DecodeMultiple = {read=GetDecodeMultiple, write=SetDecodeMultiple, nodefault};
	__property bool PureBarcode = {read=GetPureBarcode, write=SetPureBarcode, nodefault};
	__property bool ReturnCodabarStartEnd = {read=GetReturnCodabarStartEnd, write=SetReturnCodabarStartEnd, nodefault};
	__property bool TryHarder = {read=GetTryHarder, write=SetTryHarder, nodefault};
	__property bool TryInverted = {read=GetTryInverted, write=SetTryInverted, nodefault};
	__property bool UseCode39ExtendedMode = {read=GetUseCode39ExtendedMode, write=SetUseCode39ExtendedMode, nodefault};
	__property bool UseCode39RelaxedExtendedMode = {read=GetUseCode39RelaxedExtendedMode, write=SetUseCode39RelaxedExtendedMode, nodefault};
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TBarcodeDecoder() { }
	
};


typedef Winapi::Activex::TOleEnum BarcodeFormat;

typedef Winapi::Activex::TOleEnum BitmapFormat;

__interface _Type  : public IDispatch 
{
	
};

__interface  INTERFACE_UUID("{086C7C6B-96DE-383F-A2C9-47CAD0D81AFD}") _DecodeResultPoint  : public IDispatch 
{
	virtual HRESULT __safecall Get_ToString(System::WideString &__Get_ToString_result) = 0 ;
	virtual HRESULT __safecall Equals(System::OleVariant obj, System::WordBool &__Equals_result) = 0 ;
	virtual HRESULT __safecall GetHashCode(int &__GetHashCode_result) = 0 ;
	virtual HRESULT __safecall GetType(_di__Type &__GetType_result) = 0 ;
	virtual HRESULT __safecall Get_X(float &__Get_X_result) = 0 ;
	virtual HRESULT __safecall Get_Y(float &__Get_Y_result) = 0 ;
	#pragma option push -w-inl
	/* safecall wrapper */ inline System::WideString _scw_Get_ToString() { System::WideString __r; HRESULT __hr = Get_ToString(__r); System::CheckSafecallResult(__hr); return __r; }
	#pragma option pop
	__property System::WideString ToString = {read=_scw_Get_ToString};
	#pragma option push -w-inl
	/* safecall wrapper */ inline float _scw_Get_X() { float __r; HRESULT __hr = Get_X(__r); System::CheckSafecallResult(__hr); return __r; }
	#pragma option pop
	__property float X = {read=_scw_Get_X};
	#pragma option push -w-inl
	/* safecall wrapper */ inline float _scw_Get_Y() { float __r; HRESULT __hr = Get_Y(__r); System::CheckSafecallResult(__hr); return __r; }
	#pragma option pop
	__property float Y = {read=_scw_Get_Y};
};

__interface  INTERFACE_UUID("{816D8663-4ED5-3177-BEBF-82C064D7141F}") _DecodeResult  : public IDispatch 
{
	virtual HRESULT __safecall Get_ToString(System::WideString &__Get_ToString_result) = 0 ;
	virtual HRESULT __safecall Equals(System::OleVariant obj, System::WordBool &__Equals_result) = 0 ;
	virtual HRESULT __safecall GetHashCode(int &__GetHashCode_result) = 0 ;
	virtual HRESULT __safecall GetType(_di__Type &__GetType_result) = 0 ;
	virtual HRESULT __safecall Get_Text(System::WideString &__Get_Text_result) = 0 ;
	virtual HRESULT __safecall Get_format(Winapi::Activex::TOleEnum &__Get_format_result) = 0 ;
	virtual HRESULT __safecall Get_Data(Winapi::Activex::PSafeArray &__Get_Data_result) = 0 ;
	virtual HRESULT __safecall Get_ValidDataBits(int &__Get_ValidDataBits_result) = 0 ;
	virtual HRESULT __safecall Get_ResultPointCount(int &__Get_ResultPointCount_result) = 0 ;
	virtual HRESULT __safecall GetResultPoint(int index, _di__DecodeResultPoint &__GetResultPoint_result) = 0 ;
	#pragma option push -w-inl
	/* safecall wrapper */ inline System::WideString _scw_Get_ToString() { System::WideString __r; HRESULT __hr = Get_ToString(__r); System::CheckSafecallResult(__hr); return __r; }
	#pragma option pop
	__property System::WideString ToString = {read=_scw_Get_ToString};
	#pragma option push -w-inl
	/* safecall wrapper */ inline System::WideString _scw_Get_Text() { System::WideString __r; HRESULT __hr = Get_Text(__r); System::CheckSafecallResult(__hr); return __r; }
	#pragma option pop
	__property System::WideString Text = {read=_scw_Get_Text};
	#pragma option push -w-inl
	/* safecall wrapper */ inline Winapi::Activex::TOleEnum _scw_Get_format() { Winapi::Activex::TOleEnum __r; HRESULT __hr = Get_format(__r); System::CheckSafecallResult(__hr); return __r; }
	#pragma option pop
	__property Winapi::Activex::TOleEnum format = {read=_scw_Get_format};
	#pragma option push -w-inl
	/* safecall wrapper */ inline Winapi::Activex::PSafeArray _scw_Get_Data() { Winapi::Activex::PSafeArray __r; HRESULT __hr = Get_Data(__r); System::CheckSafecallResult(__hr); return __r; }
	#pragma option pop
	__property Winapi::Activex::PSafeArray Data = {read=_scw_Get_Data};
	#pragma option push -w-inl
	/* safecall wrapper */ inline int _scw_Get_ValidDataBits() { int __r; HRESULT __hr = Get_ValidDataBits(__r); System::CheckSafecallResult(__hr); return __r; }
	#pragma option pop
	__property int ValidDataBits = {read=_scw_Get_ValidDataBits};
	#pragma option push -w-inl
	/* safecall wrapper */ inline int _scw_Get_ResultPointCount() { int __r; HRESULT __hr = Get_ResultPointCount(__r); System::CheckSafecallResult(__hr); return __r; }
	#pragma option pop
	__property int ResultPointCount = {read=_scw_Get_ResultPointCount};
};

__interface  INTERFACE_UUID("{9F271550-E818-3A83-90BF-7C62F855B35F}") _DecodeResults  : public IDispatch 
{
	virtual HRESULT __safecall Get_ToString(System::WideString &__Get_ToString_result) = 0 ;
	virtual HRESULT __safecall Equals(System::OleVariant obj, System::WordBool &__Equals_result) = 0 ;
	virtual HRESULT __safecall GetHashCode(int &__GetHashCode_result) = 0 ;
	virtual HRESULT __safecall GetType(_di__Type &__GetType_result) = 0 ;
	virtual HRESULT __safecall Get_Error(System::WordBool &__Get_Error_result) = 0 ;
	virtual HRESULT __safecall Get_ErrorMessage(System::WideString &__Get_ErrorMessage_result) = 0 ;
	virtual HRESULT __safecall Get_ResultCount(int &__Get_ResultCount_result) = 0 ;
	virtual HRESULT __safecall GetResult(int index, _di__DecodeResult &__GetResult_result) = 0 ;
	#pragma option push -w-inl
	/* safecall wrapper */ inline System::WideString _scw_Get_ToString() { System::WideString __r; HRESULT __hr = Get_ToString(__r); System::CheckSafecallResult(__hr); return __r; }
	#pragma option pop
	__property System::WideString ToString = {read=_scw_Get_ToString};
	#pragma option push -w-inl
	/* safecall wrapper */ inline System::WordBool _scw_Get_Error() { System::WordBool __r; HRESULT __hr = Get_Error(__r); System::CheckSafecallResult(__hr); return __r; }
	#pragma option pop
	__property System::WordBool Error = {read=_scw_Get_Error};
	#pragma option push -w-inl
	/* safecall wrapper */ inline System::WideString _scw_Get_ErrorMessage() { System::WideString __r; HRESULT __hr = Get_ErrorMessage(__r); System::CheckSafecallResult(__hr); return __r; }
	#pragma option pop
	__property System::WideString ErrorMessage = {read=_scw_Get_ErrorMessage};
	#pragma option push -w-inl
	/* safecall wrapper */ inline int _scw_Get_ResultCount() { int __r; HRESULT __hr = Get_ResultCount(__r); System::CheckSafecallResult(__hr); return __r; }
	#pragma option pop
	__property int ResultCount = {read=_scw_Get_ResultCount};
};

__interface  INTERFACE_UUID("{69F670D8-80D1-3F01-9E13-4FDC4435F2A1}") _Reader  : public IDispatch 
{
	virtual HRESULT __safecall Get_ToString(System::WideString &__Get_ToString_result) = 0 ;
	virtual HRESULT __safecall Equals(System::OleVariant obj, System::WordBool &__Equals_result) = 0 ;
	virtual HRESULT __safecall GetHashCode(int &__GetHashCode_result) = 0 ;
	virtual HRESULT __safecall GetType(_di__Type &__GetType_result) = 0 ;
	virtual HRESULT __safecall Get_AllowedEANExtensions(Winapi::Activex::PSafeArray &__Get_AllowedEANExtensions_result) = 0 ;
	virtual HRESULT __safecall Set_AllowedEANExtensions(Winapi::Activex::PSafeArray pRetVal) = 0 ;
	virtual HRESULT __safecall Get_AllowedLengths(Winapi::Activex::PSafeArray &__Get_AllowedLengths_result) = 0 ;
	virtual HRESULT __safecall Set_AllowedLengths(Winapi::Activex::PSafeArray pRetVal) = 0 ;
	virtual HRESULT __safecall Get_AssumeCode39CheckDigit(System::WordBool &__Get_AssumeCode39CheckDigit_result) = 0 ;
	virtual HRESULT __safecall Set_AssumeCode39CheckDigit(System::WordBool pRetVal) = 0 ;
	virtual HRESULT __safecall Get_AssumeGS1(System::WordBool &__Get_AssumeGS1_result) = 0 ;
	virtual HRESULT __safecall Set_AssumeGS1(System::WordBool pRetVal) = 0 ;
	virtual HRESULT __safecall Get_AssumeMSICheckDigit(System::WordBool &__Get_AssumeMSICheckDigit_result) = 0 ;
	virtual HRESULT __safecall Set_AssumeMSICheckDigit(System::WordBool pRetVal) = 0 ;
	virtual HRESULT __safecall Get_AutoRotate(System::WordBool &__Get_AutoRotate_result) = 0 ;
	virtual HRESULT __safecall Set_AutoRotate(System::WordBool pRetVal) = 0 ;
	virtual HRESULT __safecall Get_BarcodeFormats(int &__Get_BarcodeFormats_result) = 0 ;
	virtual HRESULT __safecall Set_BarcodeFormats(int pRetVal) = 0 ;
	virtual HRESULT __safecall Get_CharacterSet(System::WideString &__Get_CharacterSet_result) = 0 ;
	virtual HRESULT __safecall Set_CharacterSet(const System::WideString pRetVal) = 0 ;
	virtual HRESULT __safecall Get_DecodeMultiple(System::WordBool &__Get_DecodeMultiple_result) = 0 ;
	virtual HRESULT __safecall Set_DecodeMultiple(System::WordBool pRetVal) = 0 ;
	virtual HRESULT __safecall Get_PureBarcode(System::WordBool &__Get_PureBarcode_result) = 0 ;
	virtual HRESULT __safecall Set_PureBarcode(System::WordBool pRetVal) = 0 ;
	virtual HRESULT __safecall Get_ReturnCodabarStartEnd(System::WordBool &__Get_ReturnCodabarStartEnd_result) = 0 ;
	virtual HRESULT __safecall Set_ReturnCodabarStartEnd(System::WordBool pRetVal) = 0 ;
	virtual HRESULT __safecall Get_TryHarder(System::WordBool &__Get_TryHarder_result) = 0 ;
	virtual HRESULT __safecall Set_TryHarder(System::WordBool pRetVal) = 0 ;
	virtual HRESULT __safecall Get_TryInverted(System::WordBool &__Get_TryInverted_result) = 0 ;
	virtual HRESULT __safecall Set_TryInverted(System::WordBool pRetVal) = 0 ;
	virtual HRESULT __safecall Get_UseCode39ExtendedMode(System::WordBool &__Get_UseCode39ExtendedMode_result) = 0 ;
	virtual HRESULT __safecall Set_UseCode39ExtendedMode(System::WordBool pRetVal) = 0 ;
	virtual HRESULT __safecall Get_UseCode39RelaxedExtendedMode(System::WordBool &__Get_UseCode39RelaxedExtendedMode_result) = 0 ;
	virtual HRESULT __safecall Set_UseCode39RelaxedExtendedMode(System::WordBool pRetVal) = 0 ;
	virtual HRESULT __safecall Decode(Winapi::Activex::PSafeArray rawRGB, int width, int height, Winapi::Activex::TOleEnum format, _di__DecodeResults &__Decode_result) = 0 ;
	#pragma option push -w-inl
	/* safecall wrapper */ inline System::WideString _scw_Get_ToString() { System::WideString __r; HRESULT __hr = Get_ToString(__r); System::CheckSafecallResult(__hr); return __r; }
	#pragma option pop
	__property System::WideString ToString = {read=_scw_Get_ToString};
	#pragma option push -w-inl
	/* safecall wrapper */ inline Winapi::Activex::PSafeArray _scw_Get_AllowedEANExtensions() { Winapi::Activex::PSafeArray __r; HRESULT __hr = Get_AllowedEANExtensions(__r); System::CheckSafecallResult(__hr); return __r; }
	#pragma option pop
	__property Winapi::Activex::PSafeArray AllowedEANExtensions = {read=_scw_Get_AllowedEANExtensions, write=Set_AllowedEANExtensions};
	#pragma option push -w-inl
	/* safecall wrapper */ inline Winapi::Activex::PSafeArray _scw_Get_AllowedLengths() { Winapi::Activex::PSafeArray __r; HRESULT __hr = Get_AllowedLengths(__r); System::CheckSafecallResult(__hr); return __r; }
	#pragma option pop
	__property Winapi::Activex::PSafeArray AllowedLengths = {read=_scw_Get_AllowedLengths, write=Set_AllowedLengths};
	#pragma option push -w-inl
	/* safecall wrapper */ inline System::WordBool _scw_Get_AssumeCode39CheckDigit() { System::WordBool __r; HRESULT __hr = Get_AssumeCode39CheckDigit(__r); System::CheckSafecallResult(__hr); return __r; }
	#pragma option pop
	__property System::WordBool AssumeCode39CheckDigit = {read=_scw_Get_AssumeCode39CheckDigit, write=Set_AssumeCode39CheckDigit};
	#pragma option push -w-inl
	/* safecall wrapper */ inline System::WordBool _scw_Get_AssumeGS1() { System::WordBool __r; HRESULT __hr = Get_AssumeGS1(__r); System::CheckSafecallResult(__hr); return __r; }
	#pragma option pop
	__property System::WordBool AssumeGS1 = {read=_scw_Get_AssumeGS1, write=Set_AssumeGS1};
	#pragma option push -w-inl
	/* safecall wrapper */ inline System::WordBool _scw_Get_AssumeMSICheckDigit() { System::WordBool __r; HRESULT __hr = Get_AssumeMSICheckDigit(__r); System::CheckSafecallResult(__hr); return __r; }
	#pragma option pop
	__property System::WordBool AssumeMSICheckDigit = {read=_scw_Get_AssumeMSICheckDigit, write=Set_AssumeMSICheckDigit};
	#pragma option push -w-inl
	/* safecall wrapper */ inline System::WordBool _scw_Get_AutoRotate() { System::WordBool __r; HRESULT __hr = Get_AutoRotate(__r); System::CheckSafecallResult(__hr); return __r; }
	#pragma option pop
	__property System::WordBool AutoRotate = {read=_scw_Get_AutoRotate, write=Set_AutoRotate};
	#pragma option push -w-inl
	/* safecall wrapper */ inline int _scw_Get_BarcodeFormats() { int __r; HRESULT __hr = Get_BarcodeFormats(__r); System::CheckSafecallResult(__hr); return __r; }
	#pragma option pop
	__property int BarcodeFormats = {read=_scw_Get_BarcodeFormats, write=Set_BarcodeFormats};
	#pragma option push -w-inl
	/* safecall wrapper */ inline System::WideString _scw_Get_CharacterSet() { System::WideString __r; HRESULT __hr = Get_CharacterSet(__r); System::CheckSafecallResult(__hr); return __r; }
	#pragma option pop
	__property System::WideString CharacterSet = {read=_scw_Get_CharacterSet, write=Set_CharacterSet};
	#pragma option push -w-inl
	/* safecall wrapper */ inline System::WordBool _scw_Get_DecodeMultiple() { System::WordBool __r; HRESULT __hr = Get_DecodeMultiple(__r); System::CheckSafecallResult(__hr); return __r; }
	#pragma option pop
	__property System::WordBool DecodeMultiple = {read=_scw_Get_DecodeMultiple, write=Set_DecodeMultiple};
	#pragma option push -w-inl
	/* safecall wrapper */ inline System::WordBool _scw_Get_PureBarcode() { System::WordBool __r; HRESULT __hr = Get_PureBarcode(__r); System::CheckSafecallResult(__hr); return __r; }
	#pragma option pop
	__property System::WordBool PureBarcode = {read=_scw_Get_PureBarcode, write=Set_PureBarcode};
	#pragma option push -w-inl
	/* safecall wrapper */ inline System::WordBool _scw_Get_ReturnCodabarStartEnd() { System::WordBool __r; HRESULT __hr = Get_ReturnCodabarStartEnd(__r); System::CheckSafecallResult(__hr); return __r; }
	#pragma option pop
	__property System::WordBool ReturnCodabarStartEnd = {read=_scw_Get_ReturnCodabarStartEnd, write=Set_ReturnCodabarStartEnd};
	#pragma option push -w-inl
	/* safecall wrapper */ inline System::WordBool _scw_Get_TryHarder() { System::WordBool __r; HRESULT __hr = Get_TryHarder(__r); System::CheckSafecallResult(__hr); return __r; }
	#pragma option pop
	__property System::WordBool TryHarder = {read=_scw_Get_TryHarder, write=Set_TryHarder};
	#pragma option push -w-inl
	/* safecall wrapper */ inline System::WordBool _scw_Get_TryInverted() { System::WordBool __r; HRESULT __hr = Get_TryInverted(__r); System::CheckSafecallResult(__hr); return __r; }
	#pragma option pop
	__property System::WordBool TryInverted = {read=_scw_Get_TryInverted, write=Set_TryInverted};
	#pragma option push -w-inl
	/* safecall wrapper */ inline System::WordBool _scw_Get_UseCode39ExtendedMode() { System::WordBool __r; HRESULT __hr = Get_UseCode39ExtendedMode(__r); System::CheckSafecallResult(__hr); return __r; }
	#pragma option pop
	__property System::WordBool UseCode39ExtendedMode = {read=_scw_Get_UseCode39ExtendedMode, write=Set_UseCode39ExtendedMode};
	#pragma option push -w-inl
	/* safecall wrapper */ inline System::WordBool _scw_Get_UseCode39RelaxedExtendedMode() { System::WordBool __r; HRESULT __hr = Get_UseCode39RelaxedExtendedMode(__r); System::CheckSafecallResult(__hr); return __r; }
	#pragma option pop
	__property System::WordBool UseCode39RelaxedExtendedMode = {read=_scw_Get_UseCode39RelaxedExtendedMode, write=Set_UseCode39RelaxedExtendedMode};
};

//-- var, const, procedure ---------------------------------------------------
}	/* namespace Obrlib */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_OBRLIB)
using namespace Obrlib;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// ObrlibHPP
