// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCXlsMessages.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncxlsmessagesHPP
#define Fmx_TmsfncxlsmessagesHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.SysUtils.hpp>
#include <System.Variants.hpp>
#include <FMX.TMSFNCUFlxMessages.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncxlsmessages
{
//-- forward type declarations -----------------------------------------------
struct TRecordHeader;
class DELPHICLASS EExcelException;
struct TSheetInfo;
//-- type declarations -------------------------------------------------------
typedef System::StaticArray<System::Byte, 1073741824> ArrayOfByte;

typedef ArrayOfByte *PArrayOfByte;

#pragma pack(push,1)
struct DECLSPEC_DRECORD TRecordHeader
{
public:
	System::Word Id;
	System::Word Size;
};
#pragma pack(pop)


typedef TRecordHeader *PRecordHeader;

class PASCALIMPLEMENTATION EExcelException : public System::Sysutils::Exception
{
	typedef System::Sysutils::Exception inherited;
	
public:
	/* Exception.Create */ inline __fastcall EExcelException(const System::UnicodeString Msg) : System::Sysutils::Exception(Msg) { }
	/* Exception.CreateFmt */ inline __fastcall EExcelException(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High) : System::Sysutils::Exception(Msg, Args, Args_High) { }
	/* Exception.CreateRes */ inline __fastcall EExcelException(NativeUInt Ident)/* overload */ : System::Sysutils::Exception(Ident) { }
	/* Exception.CreateRes */ inline __fastcall EExcelException(System::PResStringRec ResStringRec)/* overload */ : System::Sysutils::Exception(ResStringRec) { }
	/* Exception.CreateResFmt */ inline __fastcall EExcelException(NativeUInt Ident, const System::TVarRec *Args, const int Args_High)/* overload */ : System::Sysutils::Exception(Ident, Args, Args_High) { }
	/* Exception.CreateResFmt */ inline __fastcall EExcelException(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High)/* overload */ : System::Sysutils::Exception(ResStringRec, Args, Args_High) { }
	/* Exception.CreateHelp */ inline __fastcall EExcelException(const System::UnicodeString Msg, int AHelpContext) : System::Sysutils::Exception(Msg, AHelpContext) { }
	/* Exception.CreateFmtHelp */ inline __fastcall EExcelException(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High, int AHelpContext) : System::Sysutils::Exception(Msg, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EExcelException(NativeUInt Ident, int AHelpContext)/* overload */ : System::Sysutils::Exception(Ident, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EExcelException(System::PResStringRec ResStringRec, int AHelpContext)/* overload */ : System::Sysutils::Exception(ResStringRec, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EExcelException(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : System::Sysutils::Exception(ResStringRec, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EExcelException(NativeUInt Ident, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : System::Sysutils::Exception(Ident, Args, Args_High, AHelpContext) { }
	/* Exception.Destroy */ inline __fastcall virtual ~EExcelException() { }
	
};


typedef int __fastcall (__closure *TGetSheet)(const System::Word aSheetRef);

struct DECLSPEC_DRECORD TSheetInfo
{
public:
	int InsSheet;
	int FormulaSheet;
	TGetSheet GetSheet;
	TGetSheet SetSheet;
	System::TObject* Names;
};


typedef System::Word *pWord;

typedef unsigned *PUInt32;

//-- var, const, procedure ---------------------------------------------------
extern DELPHI_PACKAGE System::ResourceString _ErrFileIsNotXLS;
#define Fmx_Tmsfncxlsmessages_ErrFileIsNotXLS System::LoadResourceString(&Fmx::Tmsfncxlsmessages::_ErrFileIsNotXLS)
extern DELPHI_PACKAGE System::ResourceString _ErrCantReadFile;
#define Fmx_Tmsfncxlsmessages_ErrCantReadFile System::LoadResourceString(&Fmx::Tmsfncxlsmessages::_ErrCantReadFile)
extern DELPHI_PACKAGE System::ResourceString _ErrExcelInvalid;
#define Fmx_Tmsfncxlsmessages_ErrExcelInvalid System::LoadResourceString(&Fmx::Tmsfncxlsmessages::_ErrExcelInvalid)
extern DELPHI_PACKAGE System::ResourceString _ErrCantWriteOutput;
#define Fmx_Tmsfncxlsmessages_ErrCantWriteOutput System::LoadResourceString(&Fmx::Tmsfncxlsmessages::_ErrCantWriteOutput)
extern DELPHI_PACKAGE System::ResourceString _ErrCantWrite;
#define Fmx_Tmsfncxlsmessages_ErrCantWrite System::LoadResourceString(&Fmx::Tmsfncxlsmessages::_ErrCantWrite)
extern DELPHI_PACKAGE System::ResourceString _ErrFileNotFound;
#define Fmx_Tmsfncxlsmessages_ErrFileNotFound System::LoadResourceString(&Fmx::Tmsfncxlsmessages::_ErrFileNotFound)
extern DELPHI_PACKAGE System::ResourceString _ErrStreamNotFound;
#define Fmx_Tmsfncxlsmessages_ErrStreamNotFound System::LoadResourceString(&Fmx::Tmsfncxlsmessages::_ErrStreamNotFound)
extern DELPHI_PACKAGE System::ResourceString _ErrExtRefsNotSupported;
#define Fmx_Tmsfncxlsmessages_ErrExtRefsNotSupported System::LoadResourceString(&Fmx::Tmsfncxlsmessages::_ErrExtRefsNotSupported)
extern DELPHI_PACKAGE System::ResourceString _ErrWrongExcelRecord;
#define Fmx_Tmsfncxlsmessages_ErrWrongExcelRecord System::LoadResourceString(&Fmx::Tmsfncxlsmessages::_ErrWrongExcelRecord)
extern DELPHI_PACKAGE System::ResourceString _ErrBadToken;
#define Fmx_Tmsfncxlsmessages_ErrBadToken System::LoadResourceString(&Fmx::Tmsfncxlsmessages::_ErrBadToken)
extern DELPHI_PACKAGE System::ResourceString _ErrBadFormula;
#define Fmx_Tmsfncxlsmessages_ErrBadFormula System::LoadResourceString(&Fmx::Tmsfncxlsmessages::_ErrBadFormula)
extern DELPHI_PACKAGE System::ResourceString _ErrBadName;
#define Fmx_Tmsfncxlsmessages_ErrBadName System::LoadResourceString(&Fmx::Tmsfncxlsmessages::_ErrBadName)
extern DELPHI_PACKAGE System::ResourceString _ErrBadCF;
#define Fmx_Tmsfncxlsmessages_ErrBadCF System::LoadResourceString(&Fmx::Tmsfncxlsmessages::_ErrBadCF)
extern DELPHI_PACKAGE System::ResourceString _ErrBadChartFormula;
#define Fmx_Tmsfncxlsmessages_ErrBadChartFormula System::LoadResourceString(&Fmx::Tmsfncxlsmessages::_ErrBadChartFormula)
extern DELPHI_PACKAGE System::ResourceString _Err3DRef;
#define Fmx_Tmsfncxlsmessages_Err3DRef System::LoadResourceString(&Fmx::Tmsfncxlsmessages::_Err3DRef)
extern DELPHI_PACKAGE System::ResourceString _ErrReadingRecord;
#define Fmx_Tmsfncxlsmessages_ErrReadingRecord System::LoadResourceString(&Fmx::Tmsfncxlsmessages::_ErrReadingRecord)
extern DELPHI_PACKAGE System::ResourceString _ErrInvalidVersion;
#define Fmx_Tmsfncxlsmessages_ErrInvalidVersion System::LoadResourceString(&Fmx::Tmsfncxlsmessages::_ErrInvalidVersion)
extern DELPHI_PACKAGE System::ResourceString _ErrTooManyEntries;
#define Fmx_Tmsfncxlsmessages_ErrTooManyEntries System::LoadResourceString(&Fmx::Tmsfncxlsmessages::_ErrTooManyEntries)
extern DELPHI_PACKAGE System::ResourceString _ErrRecordNotSupported;
#define Fmx_Tmsfncxlsmessages_ErrRecordNotSupported System::LoadResourceString(&Fmx::Tmsfncxlsmessages::_ErrRecordNotSupported)
extern DELPHI_PACKAGE System::ResourceString _ErrSectionNotLoaded;
#define Fmx_Tmsfncxlsmessages_ErrSectionNotLoaded System::LoadResourceString(&Fmx::Tmsfncxlsmessages::_ErrSectionNotLoaded)
extern DELPHI_PACKAGE System::ResourceString _ErrInvalidContinue;
#define Fmx_Tmsfncxlsmessages_ErrInvalidContinue System::LoadResourceString(&Fmx::Tmsfncxlsmessages::_ErrInvalidContinue)
extern DELPHI_PACKAGE System::ResourceString _ErrStringTooLarge;
#define Fmx_Tmsfncxlsmessages_ErrStringTooLarge System::LoadResourceString(&Fmx::Tmsfncxlsmessages::_ErrStringTooLarge)
extern DELPHI_PACKAGE System::ResourceString _ErrInvalidDrawing;
#define Fmx_Tmsfncxlsmessages_ErrInvalidDrawing System::LoadResourceString(&Fmx::Tmsfncxlsmessages::_ErrInvalidDrawing)
extern DELPHI_PACKAGE System::ResourceString _ErrInvalidCF;
#define Fmx_Tmsfncxlsmessages_ErrInvalidCF System::LoadResourceString(&Fmx::Tmsfncxlsmessages::_ErrInvalidCF)
extern DELPHI_PACKAGE System::ResourceString _ErrDuplicatedSheetName;
#define Fmx_Tmsfncxlsmessages_ErrDuplicatedSheetName System::LoadResourceString(&Fmx::Tmsfncxlsmessages::_ErrDuplicatedSheetName)
extern DELPHI_PACKAGE System::ResourceString _ErrDupRow;
#define Fmx_Tmsfncxlsmessages_ErrDupRow System::LoadResourceString(&Fmx::Tmsfncxlsmessages::_ErrDupRow)
extern DELPHI_PACKAGE System::ResourceString _ErrRowMissing;
#define Fmx_Tmsfncxlsmessages_ErrRowMissing System::LoadResourceString(&Fmx::Tmsfncxlsmessages::_ErrRowMissing)
extern DELPHI_PACKAGE System::ResourceString _ErrBadCopyRows;
#define Fmx_Tmsfncxlsmessages_ErrBadCopyRows System::LoadResourceString(&Fmx::Tmsfncxlsmessages::_ErrBadCopyRows)
extern DELPHI_PACKAGE System::ResourceString _ErrInvalidSheetNo;
#define Fmx_Tmsfncxlsmessages_ErrInvalidSheetNo System::LoadResourceString(&Fmx::Tmsfncxlsmessages::_ErrInvalidSheetNo)
extern DELPHI_PACKAGE System::ResourceString _ErrBadRowCount;
#define Fmx_Tmsfncxlsmessages_ErrBadRowCount System::LoadResourceString(&Fmx::Tmsfncxlsmessages::_ErrBadRowCount)
extern DELPHI_PACKAGE System::ResourceString _ErrEscherNotLoaded;
#define Fmx_Tmsfncxlsmessages_ErrEscherNotLoaded System::LoadResourceString(&Fmx::Tmsfncxlsmessages::_ErrEscherNotLoaded)
extern DELPHI_PACKAGE System::ResourceString _ErrLoadingEscher;
#define Fmx_Tmsfncxlsmessages_ErrLoadingEscher System::LoadResourceString(&Fmx::Tmsfncxlsmessages::_ErrLoadingEscher)
extern DELPHI_PACKAGE System::ResourceString _ErrBStroreDuplicated;
#define Fmx_Tmsfncxlsmessages_ErrBStroreDuplicated System::LoadResourceString(&Fmx::Tmsfncxlsmessages::_ErrBStroreDuplicated)
extern DELPHI_PACKAGE System::ResourceString _ErrDgDuplicated;
#define Fmx_Tmsfncxlsmessages_ErrDgDuplicated System::LoadResourceString(&Fmx::Tmsfncxlsmessages::_ErrDgDuplicated)
extern DELPHI_PACKAGE System::ResourceString _ErrDggDuplicated;
#define Fmx_Tmsfncxlsmessages_ErrDggDuplicated System::LoadResourceString(&Fmx::Tmsfncxlsmessages::_ErrDggDuplicated)
extern DELPHI_PACKAGE System::ResourceString _ErrsolverDuplicated;
#define Fmx_Tmsfncxlsmessages_ErrsolverDuplicated System::LoadResourceString(&Fmx::Tmsfncxlsmessages::_ErrsolverDuplicated)
extern DELPHI_PACKAGE System::ResourceString _ErrChangingEscher;
#define Fmx_Tmsfncxlsmessages_ErrChangingEscher System::LoadResourceString(&Fmx::Tmsfncxlsmessages::_ErrChangingEscher)
extern DELPHI_PACKAGE System::ResourceString _ErrInternal;
#define Fmx_Tmsfncxlsmessages_ErrInternal System::LoadResourceString(&Fmx::Tmsfncxlsmessages::_ErrInternal)
extern DELPHI_PACKAGE System::ResourceString _ErrCantCopyPictFmla;
#define Fmx_Tmsfncxlsmessages_ErrCantCopyPictFmla System::LoadResourceString(&Fmx::Tmsfncxlsmessages::_ErrCantCopyPictFmla)
extern DELPHI_PACKAGE System::ResourceString _ErrInvalidErrStr;
#define Fmx_Tmsfncxlsmessages_ErrInvalidErrStr System::LoadResourceString(&Fmx::Tmsfncxlsmessages::_ErrInvalidErrStr)
extern DELPHI_PACKAGE System::ResourceString _ErrInvalidCellValue;
#define Fmx_Tmsfncxlsmessages_ErrInvalidCellValue System::LoadResourceString(&Fmx::Tmsfncxlsmessages::_ErrInvalidCellValue)
extern DELPHI_PACKAGE System::ResourceString _ErrCantWriteToFile;
#define Fmx_Tmsfncxlsmessages_ErrCantWriteToFile System::LoadResourceString(&Fmx::Tmsfncxlsmessages::_ErrCantWriteToFile)
extern DELPHI_PACKAGE System::ResourceString _ErrShrFmlaNotFound;
#define Fmx_Tmsfncxlsmessages_ErrShrFmlaNotFound System::LoadResourceString(&Fmx::Tmsfncxlsmessages::_ErrShrFmlaNotFound)
extern DELPHI_PACKAGE System::ResourceString _ErrInvalidStrLenLength;
#define Fmx_Tmsfncxlsmessages_ErrInvalidStrLenLength System::LoadResourceString(&Fmx::Tmsfncxlsmessages::_ErrInvalidStrLenLength)
extern DELPHI_PACKAGE System::ResourceString _ErrInvalidStringRecord;
#define Fmx_Tmsfncxlsmessages_ErrInvalidStringRecord System::LoadResourceString(&Fmx::Tmsfncxlsmessages::_ErrInvalidStringRecord)
extern DELPHI_PACKAGE System::ResourceString _ErrNotImplemented;
#define Fmx_Tmsfncxlsmessages_ErrNotImplemented System::LoadResourceString(&Fmx::Tmsfncxlsmessages::_ErrNotImplemented)
extern DELPHI_PACKAGE System::ResourceString _BaseSheetName;
#define Fmx_Tmsfncxlsmessages_BaseSheetName System::LoadResourceString(&Fmx::Tmsfncxlsmessages::_BaseSheetName)
extern DELPHI_PACKAGE System::ResourceString _ErrNoDataSet;
#define Fmx_Tmsfncxlsmessages_ErrNoDataSet System::LoadResourceString(&Fmx::Tmsfncxlsmessages::_ErrNoDataSet)
extern DELPHI_PACKAGE System::ResourceString _ErrReportNotFound;
#define Fmx_Tmsfncxlsmessages_ErrReportNotFound System::LoadResourceString(&Fmx::Tmsfncxlsmessages::_ErrReportNotFound)
extern DELPHI_PACKAGE System::ResourceString _ErrTooManyPageBreaks;
#define Fmx_Tmsfncxlsmessages_ErrTooManyPageBreaks System::LoadResourceString(&Fmx::Tmsfncxlsmessages::_ErrTooManyPageBreaks)
extern DELPHI_PACKAGE System::ResourceString _ErrInvalidRow;
#define Fmx_Tmsfncxlsmessages_ErrInvalidRow System::LoadResourceString(&Fmx::Tmsfncxlsmessages::_ErrInvalidRow)
extern DELPHI_PACKAGE System::ResourceString _ErrInvalidCol;
#define Fmx_Tmsfncxlsmessages_ErrInvalidCol System::LoadResourceString(&Fmx::Tmsfncxlsmessages::_ErrInvalidCol)
extern DELPHI_PACKAGE System::ResourceString _ErrXlsIndexOutBounds;
#define Fmx_Tmsfncxlsmessages_ErrXlsIndexOutBounds System::LoadResourceString(&Fmx::Tmsfncxlsmessages::_ErrXlsIndexOutBounds)
extern DELPHI_PACKAGE System::ResourceString _ErrFileIsPasswordProtected;
#define Fmx_Tmsfncxlsmessages_ErrFileIsPasswordProtected System::LoadResourceString(&Fmx::Tmsfncxlsmessages::_ErrFileIsPasswordProtected)
extern DELPHI_PACKAGE System::ResourceString _ErrNotAString;
#define Fmx_Tmsfncxlsmessages_ErrNotAString System::LoadResourceString(&Fmx::Tmsfncxlsmessages::_ErrNotAString)
extern DELPHI_PACKAGE System::ResourceString _ErrUnexpectedEof;
#define Fmx_Tmsfncxlsmessages_ErrUnexpectedEof System::LoadResourceString(&Fmx::Tmsfncxlsmessages::_ErrUnexpectedEof)
extern DELPHI_PACKAGE System::ResourceString _ErrUnexpectedChar;
#define Fmx_Tmsfncxlsmessages_ErrUnexpectedChar System::LoadResourceString(&Fmx::Tmsfncxlsmessages::_ErrUnexpectedChar)
extern DELPHI_PACKAGE System::ResourceString _ErrUnterminatedString;
#define Fmx_Tmsfncxlsmessages_ErrUnterminatedString System::LoadResourceString(&Fmx::Tmsfncxlsmessages::_ErrUnterminatedString)
extern DELPHI_PACKAGE System::ResourceString _ErrMissingParen;
#define Fmx_Tmsfncxlsmessages_ErrMissingParen System::LoadResourceString(&Fmx::Tmsfncxlsmessages::_ErrMissingParen)
extern DELPHI_PACKAGE System::ResourceString _ErrFormulaTooLong;
#define Fmx_Tmsfncxlsmessages_ErrFormulaTooLong System::LoadResourceString(&Fmx::Tmsfncxlsmessages::_ErrFormulaTooLong)
extern DELPHI_PACKAGE System::ResourceString _ErrUnexpectedId;
#define Fmx_Tmsfncxlsmessages_ErrUnexpectedId System::LoadResourceString(&Fmx::Tmsfncxlsmessages::_ErrUnexpectedId)
extern DELPHI_PACKAGE System::ResourceString _ErrFunctionNotFound;
#define Fmx_Tmsfncxlsmessages_ErrFunctionNotFound System::LoadResourceString(&Fmx::Tmsfncxlsmessages::_ErrFunctionNotFound)
extern DELPHI_PACKAGE System::ResourceString _ErrInvalidNumberOfParams;
#define Fmx_Tmsfncxlsmessages_ErrInvalidNumberOfParams System::LoadResourceString(&Fmx::Tmsfncxlsmessages::_ErrInvalidNumberOfParams)
extern DELPHI_PACKAGE System::ResourceString _ErrFormulaInvalid;
#define Fmx_Tmsfncxlsmessages_ErrFormulaInvalid System::LoadResourceString(&Fmx::Tmsfncxlsmessages::_ErrFormulaInvalid)
extern DELPHI_PACKAGE System::ResourceString _ErrFormulaStart;
#define Fmx_Tmsfncxlsmessages_ErrFormulaStart System::LoadResourceString(&Fmx::Tmsfncxlsmessages::_ErrFormulaStart)
extern DELPHI_PACKAGE System::ResourceString _ErrHiddenSheetSelected;
#define Fmx_Tmsfncxlsmessages_ErrHiddenSheetSelected System::LoadResourceString(&Fmx::Tmsfncxlsmessages::_ErrHiddenSheetSelected)
extern DELPHI_PACKAGE System::ResourceString _ErrNoSheetVisible;
#define Fmx_Tmsfncxlsmessages_ErrNoSheetVisible System::LoadResourceString(&Fmx::Tmsfncxlsmessages::_ErrNoSheetVisible)
extern DELPHI_PACKAGE System::ResourceString _ErrCantDeleteSheetWithMacros;
#define Fmx_Tmsfncxlsmessages_ErrCantDeleteSheetWithMacros System::LoadResourceString(&Fmx::Tmsfncxlsmessages::_ErrCantDeleteSheetWithMacros)
extern DELPHI_PACKAGE System::ResourceString _ErrInvalidSheet;
#define Fmx_Tmsfncxlsmessages_ErrInvalidSheet System::LoadResourceString(&Fmx::Tmsfncxlsmessages::_ErrInvalidSheet)
extern DELPHI_PACKAGE System::ResourceString _WorkbookStrS;
#define Fmx_Tmsfncxlsmessages_WorkbookStrS System::LoadResourceString(&Fmx::Tmsfncxlsmessages::_WorkbookStrS)
extern DELPHI_PACKAGE System::ResourceString _ErrInvalidStream;
#define Fmx_Tmsfncxlsmessages_ErrInvalidStream System::LoadResourceString(&Fmx::Tmsfncxlsmessages::_ErrInvalidStream)
extern DELPHI_PACKAGE System::ResourceString _ErrEofReached;
#define Fmx_Tmsfncxlsmessages_ErrEofReached System::LoadResourceString(&Fmx::Tmsfncxlsmessages::_ErrEofReached)
extern DELPHI_PACKAGE System::ResourceString _ErrInvalidPropertySector;
#define Fmx_Tmsfncxlsmessages_ErrInvalidPropertySector System::LoadResourceString(&Fmx::Tmsfncxlsmessages::_ErrInvalidPropertySector)
extern DELPHI_PACKAGE System::ResourceString _xlerr_Null;
#define Fmx_Tmsfncxlsmessages_xlerr_Null System::LoadResourceString(&Fmx::Tmsfncxlsmessages::_xlerr_Null)
extern DELPHI_PACKAGE System::ResourceString _xlerr_Div0;
#define Fmx_Tmsfncxlsmessages_xlerr_Div0 System::LoadResourceString(&Fmx::Tmsfncxlsmessages::_xlerr_Div0)
extern DELPHI_PACKAGE System::ResourceString _xlerr_Value;
#define Fmx_Tmsfncxlsmessages_xlerr_Value System::LoadResourceString(&Fmx::Tmsfncxlsmessages::_xlerr_Value)
extern DELPHI_PACKAGE System::ResourceString _xlerr_Ref;
#define Fmx_Tmsfncxlsmessages_xlerr_Ref System::LoadResourceString(&Fmx::Tmsfncxlsmessages::_xlerr_Ref)
extern DELPHI_PACKAGE System::ResourceString _xlerr_Name;
#define Fmx_Tmsfncxlsmessages_xlerr_Name System::LoadResourceString(&Fmx::Tmsfncxlsmessages::_xlerr_Name)
extern DELPHI_PACKAGE System::ResourceString _xlerr_Num;
#define Fmx_Tmsfncxlsmessages_xlerr_Num System::LoadResourceString(&Fmx::Tmsfncxlsmessages::_xlerr_Num)
extern DELPHI_PACKAGE System::ResourceString _xlerr_NA;
#define Fmx_Tmsfncxlsmessages_xlerr_NA System::LoadResourceString(&Fmx::Tmsfncxlsmessages::_xlerr_NA)
static constexpr System::Int8 xlerrcode_Null = System::Int8(0x0);
static constexpr System::Int8 xlerrcode_Div0 = System::Int8(0x7);
static constexpr System::Int8 xlerrcode_Value = System::Int8(0xf);
static constexpr System::Int8 xlerrcode_Ref = System::Int8(0x17);
static constexpr System::Int8 xlerrcode_Name = System::Int8(0x1d);
static constexpr System::Int8 xlerrcode_Num = System::Int8(0x24);
static constexpr System::Int8 xlerrcode_NA = System::Int8(0x2a);
static constexpr System::Word MaxRecordDataSize = System::Word(0x201f);
static constexpr System::Word MaxExternSheetDataSize = System::Word(0x201c);
static constexpr System::Word MaxHPageBreaks = System::Word(0x401);
static constexpr System::Word MaxVPageBreaks = System::Word(0x401);
static constexpr System::Byte Max_Columns = System::Byte(0xff);
static constexpr System::Word Max_Rows = System::Word(0xffff);
static constexpr System::Word MaxSheets = System::Word(0xfde8);
static constexpr System::Word xlr_BofVersion = System::Word(0x600);
static constexpr System::Int8 xlb_Globals = System::Int8(0x5);
static constexpr System::Int8 xlb_Worksheet = System::Int8(0x10);
static constexpr System::Int8 xlb_Chart = System::Int8(0x20);
static constexpr System::Int8 xlr_INTEGER = System::Int8(0x2);
static constexpr System::Int8 xlr_FORMULA = System::Int8(0x6);
static constexpr System::Int8 xlr_EOF = System::Int8(0xa);
static constexpr System::Int8 xlr_CALCCOUNT = System::Int8(0xc);
static constexpr System::Int8 xlr_CALCMODE = System::Int8(0xd);
static constexpr System::Int8 xlr_PRECISION = System::Int8(0xe);
static constexpr System::Int8 xlr_REFMODE = System::Int8(0xf);
static constexpr System::Int8 xlr_DELTA = System::Int8(0x10);
static constexpr System::Int8 xlr_ITERATION = System::Int8(0x11);
static constexpr System::Int8 xlr_PROTECT = System::Int8(0x12);
static constexpr System::Int8 xlr_PASSWORD = System::Int8(0x13);
static constexpr System::Int8 xlr_HEADER = System::Int8(0x14);
static constexpr System::Int8 xlr_FOOTER = System::Int8(0x15);
static constexpr System::Int8 xlr_EXTERNCOUNT = System::Int8(0x16);
static constexpr System::Int8 xlr_EXTERNSHEET = System::Int8(0x17);
static constexpr System::Int8 xlr_NAME = System::Int8(0x18);
static constexpr System::Int8 xlr_WINDOWPROTECT = System::Int8(0x19);
static constexpr System::Int8 xlr_VERTICALPAGEBREAKS = System::Int8(0x1a);
static constexpr System::Int8 xlr_HORIZONTALPAGEBREAKS = System::Int8(0x1b);
static constexpr System::Int8 xlr_NOTE = System::Int8(0x1c);
static constexpr System::Int8 xlr_SELECTION = System::Int8(0x1d);
static constexpr System::Int8 xlr_FORMATCOUNT = System::Int8(0x1f);
static constexpr System::Int8 xlr_COLUMNDEFAULT = System::Int8(0x20);
static constexpr System::Int8 xlr_1904 = System::Int8(0x22);
static constexpr System::Int8 xlr_COLWIDTH = System::Int8(0x24);
static constexpr System::Int8 xlr_LEFTMARGIN = System::Int8(0x26);
static constexpr System::Int8 xlr_RIGHTMARGIN = System::Int8(0x27);
static constexpr System::Int8 xlr_TOPMARGIN = System::Int8(0x28);
static constexpr System::Int8 xlr_BOTTOMMARGIN = System::Int8(0x29);
static constexpr System::Int8 xlr_PRINTHEADERS = System::Int8(0x2a);
static constexpr System::Int8 xlr_PRINTGRIDLINES = System::Int8(0x2b);
static constexpr System::Int8 xlr_FILEPASS = System::Int8(0x2f);
static constexpr System::Int8 xlr_PRINTSIZE = System::Int8(0x33);
static constexpr System::Int8 xlr_CONTINUE = System::Int8(0x3c);
static constexpr System::Int8 xlr_WINDOW1 = System::Int8(0x3d);
static constexpr System::Int8 xlr_BACKUP = System::Int8(0x40);
static constexpr System::Int8 xlr_PANE = System::Int8(0x41);
static constexpr System::Int8 xlr_CODEPAGE = System::Int8(0x42);
static constexpr System::Int8 xlr_IXFE = System::Int8(0x44);
static constexpr System::Int8 xlr_PLS = System::Int8(0x4d);
static constexpr System::Int8 xlr_DCON = System::Int8(0x50);
static constexpr System::Int8 xlr_DCONREF = System::Int8(0x51);
static constexpr System::Int8 xlr_DCONNAME = System::Int8(0x53);
static constexpr System::Int8 xlr_DEFCOLWIDTH = System::Int8(0x55);
static constexpr System::Int8 xlr_BUILTINFMTCNT = System::Int8(0x56);
static constexpr System::Int8 xlr_XCT = System::Int8(0x59);
static constexpr System::Int8 xlr_CRN = System::Int8(0x5a);
static constexpr System::Int8 xlr_FILESHARING = System::Int8(0x5b);
static constexpr System::Int8 xlr_WRITEACCESS = System::Int8(0x5c);
static constexpr System::Int8 xlr_OBJ = System::Int8(0x5d);
static constexpr System::Int8 xlr_UNCALCED = System::Int8(0x5e);
static constexpr System::Int8 xlr_SAFERECALC = System::Int8(0x5f);
static constexpr System::Int8 xlr_TEMPLATE = System::Int8(0x60);
static constexpr System::Int8 xlr_OBJPROTECT = System::Int8(0x63);
static constexpr System::Int8 xlr_COLINFO = System::Int8(0x7d);
static constexpr System::Int8 xlr_IMDATA = System::Int8(0x7f);
static constexpr System::Byte xlr_GUTS = System::Byte(0x80);
static constexpr System::Byte xlr_WSBOOL = System::Byte(0x81);
static constexpr System::Byte xlr_GRIDSET = System::Byte(0x82);
static constexpr System::Byte xlr_HCENTER = System::Byte(0x83);
static constexpr System::Byte xlr_VCENTER = System::Byte(0x84);
static constexpr System::Byte xlr_BOUNDSHEET = System::Byte(0x85);
static constexpr System::Byte xlr_WRITEPROT = System::Byte(0x86);
static constexpr System::Byte xlr_ADDIN = System::Byte(0x87);
static constexpr System::Byte xlr_EDG = System::Byte(0x88);
static constexpr System::Byte xlr_PUB = System::Byte(0x89);
static constexpr System::Byte xlr_COUNTRY = System::Byte(0x8c);
static constexpr System::Byte xlr_HIDEOBJ = System::Byte(0x8d);
static constexpr System::Byte xlr_BUNDLESOFFSET = System::Byte(0x8e);
static constexpr System::Byte xlr_BUNDLEHEADER = System::Byte(0x8f);
static constexpr System::Byte xlr_SORT = System::Byte(0x90);
static constexpr System::Byte xlr_SUB = System::Byte(0x91);
static constexpr System::Byte xlr_PALETTE = System::Byte(0x92);
static constexpr System::Byte xlr_LHRECORD = System::Byte(0x94);
static constexpr System::Byte xlr_LHNGRAPH = System::Byte(0x95);
static constexpr System::Byte xlr_SOUND = System::Byte(0x96);
static constexpr System::Byte xlr_LPR = System::Byte(0x98);
static constexpr System::Byte xlr_STANDARDWIDTH = System::Byte(0x99);
static constexpr System::Byte xlr_FNGROUPNAME = System::Byte(0x9a);
static constexpr System::Byte xlr_FILTERMODE = System::Byte(0x9b);
static constexpr System::Byte xlr_FNGROUPCOUNT = System::Byte(0x9c);
static constexpr System::Byte xlr_AUTOFILTERINFO = System::Byte(0x9d);
static constexpr System::Byte xlr_AUTOFILTER = System::Byte(0x9e);
static constexpr System::Byte xlr_SCL = System::Byte(0xa0);
static constexpr System::Byte xlr_SETUP = System::Byte(0xa1);
static constexpr System::Byte xlr_COORDLIST = System::Byte(0xa9);
static constexpr System::Byte xlr_GCW = System::Byte(0xab);
static constexpr System::Byte xlr_SCENMAN = System::Byte(0xae);
static constexpr System::Byte xlr_SCENARIO = System::Byte(0xaf);
static constexpr System::Byte xlr_SXVIEW = System::Byte(0xb0);
static constexpr System::Byte xlr_SXVD = System::Byte(0xb1);
static constexpr System::Byte xlr_SXVI = System::Byte(0xb2);
static constexpr System::Byte xlr_SXIVD = System::Byte(0xb4);
static constexpr System::Byte xlr_SXLI = System::Byte(0xb5);
static constexpr System::Byte xlr_SXPI = System::Byte(0xb6);
static constexpr System::Byte xlr_DOCROUTE = System::Byte(0xb8);
static constexpr System::Byte xlr_RECIPNAME = System::Byte(0xb9);
static constexpr System::Byte xlr_MULRK = System::Byte(0xbd);
static constexpr System::Byte xlr_MULBLANK = System::Byte(0xbe);
static constexpr System::Byte xlr_MMS = System::Byte(0xc1);
static constexpr System::Byte xlr_ADDMENU = System::Byte(0xc2);
static constexpr System::Byte xlr_DELMENU = System::Byte(0xc3);
static constexpr System::Byte xlr_SXDI = System::Byte(0xc5);
static constexpr System::Byte xlr_SXDB = System::Byte(0xc6);
static constexpr System::Byte xlr_SXFIELD = System::Byte(0xc7);
static constexpr System::Byte xlr_SXINDEXLIST = System::Byte(0xc8);
static constexpr System::Byte xlr_SXDOUBLE = System::Byte(0xc9);
static constexpr System::Byte xlr_SXSTRING = System::Byte(0xcd);
static constexpr System::Byte xlr_SXDATETIME = System::Byte(0xce);
static constexpr System::Byte xlr_SXTBL = System::Byte(0xd0);
static constexpr System::Byte xlr_SXTBRGITEM = System::Byte(0xd1);
static constexpr System::Byte xlr_SXTBPG = System::Byte(0xd2);
static constexpr System::Byte xlr_OBPROJ = System::Byte(0xd3);
static constexpr System::Byte xlr_SXIDSTM = System::Byte(0xd5);
static constexpr System::Byte xlr_RSTRING = System::Byte(0xd6);
static constexpr System::Byte xlr_DBCELL = System::Byte(0xd7);
static constexpr System::Byte xlr_BOOKBOOL = System::Byte(0xda);
static constexpr System::Byte xlr_SXEXTPARAMQRY = System::Byte(0xdc);
static constexpr System::Byte xlr_SCENPROTECT = System::Byte(0xdd);
static constexpr System::Byte xlr_OLESIZE = System::Byte(0xde);
static constexpr System::Byte xlr_UDDESC = System::Byte(0xdf);
static constexpr System::Byte xlr_INTERFACEHDR = System::Byte(0xe1);
static constexpr System::Byte xlr_INTERFACEEND = System::Byte(0xe2);
static constexpr System::Byte xlr_SXVS = System::Byte(0xe3);
static constexpr System::Byte xlr_CELLMERGING = System::Byte(0xe5);
static constexpr System::Byte xlr_BITMAP = System::Byte(0xe9);
static constexpr System::Byte xlr_MSODRAWINGGROUP = System::Byte(0xeb);
static constexpr System::Byte xlr_MSODRAWING = System::Byte(0xec);
static constexpr System::Byte xlr_MSODRAWINGSELECTION = System::Byte(0xed);
static constexpr System::Byte xlr_PHONETIC = System::Byte(0xef);
static constexpr System::Byte xlr_SXRULE = System::Byte(0xf0);
static constexpr System::Byte xlr_SXEX = System::Byte(0xf1);
static constexpr System::Byte xlr_SXFILT = System::Byte(0xf2);
static constexpr System::Byte xlr_SXNAME = System::Byte(0xf6);
static constexpr System::Byte xlr_SXSELECT = System::Byte(0xf7);
static constexpr System::Byte xlr_SXPAIR = System::Byte(0xf8);
static constexpr System::Byte xlr_SXFMLA = System::Byte(0xf9);
static constexpr System::Byte xlr_SXFORMAT = System::Byte(0xfb);
static constexpr System::Byte xlr_SST = System::Byte(0xfc);
static constexpr System::Byte xlr_LABELSST = System::Byte(0xfd);
static constexpr System::Byte xlr_EXTSST = System::Byte(0xff);
static constexpr System::Word xlr_SXVDEX = System::Word(0x100);
static constexpr System::Word xlr_SXFORMULA = System::Word(0x103);
static constexpr System::Word xlr_SXDBEX = System::Word(0x122);
static constexpr System::Word xlr_CHTRINSERT = System::Word(0x137);
static constexpr System::Word xlr_CHTRINFO = System::Word(0x138);
static constexpr System::Word xlr_CHTRCELLCONTENT = System::Word(0x13b);
static constexpr System::Word xlr_TABID = System::Word(0x13d);
static constexpr System::Word xlr_CHTRMOVERANGE = System::Word(0x140);
static constexpr System::Word xlr_CHTRINSERTTAB = System::Word(0x14d);
static constexpr System::Word xlr_USESELFS = System::Word(0x160);
static constexpr System::Word xlr_XL5MODIFY = System::Word(0x162);
static constexpr System::Word xlr_CHTRHEADER = System::Word(0x196);
static constexpr System::Word xlr_USERBVIEW = System::Word(0x1a9);
static constexpr System::Word xlr_USERSVIEWBEGIN = System::Word(0x1aa);
static constexpr System::Word xlr_USERSVIEWEND = System::Word(0x1ab);
static constexpr System::Word xlr_QSI = System::Word(0x1ad);
static constexpr System::Word xlr_SUPBOOK = System::Word(0x1ae);
static constexpr System::Word xlr_PROT4REV = System::Word(0x1af);
static constexpr System::Word xlr_DSF = System::Word(0x161);
static constexpr System::Word xlr_CONDFMT = System::Word(0x1b0);
static constexpr System::Word xlr_CF = System::Word(0x1b1);
static constexpr System::Word xlr_DVAL = System::Word(0x1b2);
static constexpr System::Word xlr_DCONBIN = System::Word(0x1b5);
static constexpr System::Word xlr_TXO = System::Word(0x1b6);
static constexpr System::Word xlr_REFRESHALL = System::Word(0x1b7);
static constexpr System::Word xlr_HLINK = System::Word(0x1b8);
static constexpr System::Word xlr_CODENAME = System::Word(0x1ba);
static constexpr System::Word xlr_SXFDBTYPE = System::Word(0x1bb);
static constexpr System::Word xlr_PROT4REVPASS = System::Word(0x1bc);
static constexpr System::Word xlr_DV = System::Word(0x1be);
static constexpr System::Word xlr_XL9FILE = System::Word(0x1c0);
static constexpr System::Word xlr_RECALCID = System::Word(0x1c1);
static constexpr System::Word xlr_DIMENSIONS = System::Word(0x200);
static constexpr System::Word xlr_BLANK = System::Word(0x201);
static constexpr System::Word xlr_NUMBER = System::Word(0x203);
static constexpr System::Word xlr_LABEL = System::Word(0x204);
static constexpr System::Word xlr_BOOLERR = System::Word(0x205);
static constexpr System::Word xlr_STRING = System::Word(0x207);
static constexpr System::Word xlr_ROW = System::Word(0x208);
static constexpr System::Word xlr_INDEX = System::Word(0x20b);
static constexpr System::Word xlr_ARRAY = System::Word(0x221);
static constexpr System::Int8 xlr_EXTERNNAME = System::Int8(0x23);
static constexpr System::Word xlr_EXTERNNAME2 = System::Word(0x223);
static constexpr System::Word xlr_DEFAULTROWHEIGHT = System::Word(0x225);
static constexpr System::Int8 xlr_FONT = System::Int8(0x31);
static constexpr System::Word xlr_TABLE = System::Word(0x236);
static constexpr System::Word xlr_WINDOW2 = System::Word(0x23e);
static constexpr System::Word xlr_RK = System::Word(0x27e);
static constexpr System::Word xlr_STYLE = System::Word(0x293);
static constexpr System::Word xlr_FORMAT = System::Word(0x41e);
static constexpr System::Byte xlr_XF = System::Byte(0xe0);
static constexpr System::Word xlr_SHRFMLA = System::Word(0x4bc);
static constexpr System::Word xlr_SCREENTIP = System::Word(0x800);
static constexpr System::Word xlr_WEBQRYSETTINGS = System::Word(0x803);
static constexpr System::Word xlr_WEBQRYTABLES = System::Word(0x804);
static constexpr System::Word xlr_BOF = System::Word(0x809);
static constexpr System::Word xlr_UNITS = System::Word(0x1001);
static constexpr System::Word xlr_ChartChart = System::Word(0x1002);
static constexpr System::Word xlr_ChartSeries = System::Word(0x1003);
static constexpr System::Word xlr_ChartDataformat = System::Word(0x1006);
static constexpr System::Word xlr_ChartLineformat = System::Word(0x1007);
static constexpr System::Word xlr_ChartMarkerformat = System::Word(0x1009);
static constexpr System::Word xlr_ChartAreaformat = System::Word(0x100a);
static constexpr System::Word xlr_ChartPieformat = System::Word(0x100b);
static constexpr System::Word xlr_ChartAttachedlabel = System::Word(0x100c);
static constexpr System::Word xlr_ChartSeriestext = System::Word(0x100d);
static constexpr System::Word xlr_ChartChartformat = System::Word(0x1014);
static constexpr System::Word xlr_ChartLegend = System::Word(0x1015);
static constexpr System::Word xlr_ChartSerieslist = System::Word(0x1016);
static constexpr System::Word xlr_ChartBar = System::Word(0x1017);
static constexpr System::Word xlr_ChartLine = System::Word(0x1018);
static constexpr System::Word xlr_ChartPie = System::Word(0x1019);
static constexpr System::Word xlr_ChartArea = System::Word(0x101a);
static constexpr System::Word xlr_ChartScatter = System::Word(0x101b);
static constexpr System::Word xlr_ChartChartline = System::Word(0x101c);
static constexpr System::Word xlr_ChartAxis = System::Word(0x101d);
static constexpr System::Word xlr_ChartTick = System::Word(0x101e);
static constexpr System::Word xlr_ChartValuerange = System::Word(0x101f);
static constexpr System::Word xlr_ChartCatserrange = System::Word(0x1020);
static constexpr System::Word xlr_ChartAxislineformat = System::Word(0x1021);
static constexpr System::Word xlr_ChartFormatlink = System::Word(0x1022);
static constexpr System::Word xlr_ChartDefaulttext = System::Word(0x1024);
static constexpr System::Word xlr_ChartText = System::Word(0x1025);
static constexpr System::Word xlr_ChartFontx = System::Word(0x1026);
static constexpr System::Word xlr_ChartObjectLink = System::Word(0x1027);
static constexpr System::Word xlr_ChartFrame = System::Word(0x1032);
static constexpr System::Word xlr_BEGIN = System::Word(0x1033);
static constexpr System::Word xlr_END = System::Word(0x1034);
static constexpr System::Word xlr_ChartPlotarea = System::Word(0x1035);
static constexpr System::Word xlr_Chart3D = System::Word(0x103a);
static constexpr System::Word xlr_ChartPicf = System::Word(0x103c);
static constexpr System::Word xlr_ChartDropbar = System::Word(0x103d);
static constexpr System::Word xlr_ChartRadar = System::Word(0x103e);
static constexpr System::Word xlr_ChartSurface = System::Word(0x103f);
static constexpr System::Word xlr_ChartRadararea = System::Word(0x1040);
static constexpr System::Word xlr_ChartAxisparent = System::Word(0x1041);
static constexpr System::Word xlr_ChartLegendxn = System::Word(0x1043);
static constexpr System::Word xlr_ChartShtprops = System::Word(0x1044);
static constexpr System::Word xlr_ChartSertocrt = System::Word(0x1045);
static constexpr System::Word xlr_ChartAxesused = System::Word(0x1046);
static constexpr System::Word xlr_ChartSbaseref = System::Word(0x1048);
static constexpr System::Word xlr_ChartSerparent = System::Word(0x104a);
static constexpr System::Word xlr_ChartSerauxtrend = System::Word(0x104b);
static constexpr System::Word xlr_ChartIfmt = System::Word(0x104e);
static constexpr System::Word xlr_ChartPos = System::Word(0x104f);
static constexpr System::Word xlr_ChartAlruns = System::Word(0x1050);
static constexpr System::Word xlr_ChartAI = System::Word(0x1051);
static constexpr System::Word xlr_ChartSerauxerrbar = System::Word(0x105b);
static constexpr System::Word xlr_ChartClrClient = System::Word(0x105c);
static constexpr System::Word xlr_ChartSerfmt = System::Word(0x105d);
static constexpr System::Word xlr_Chart3DDataFormat = System::Word(0x105f);
static constexpr System::Word xlr_ChartFbi = System::Word(0x1060);
static constexpr System::Word xlr_ChartBoppop = System::Word(0x1061);
static constexpr System::Word xlr_ChartAxcext = System::Word(0x1062);
static constexpr System::Word xlr_ChartDat = System::Word(0x1063);
static constexpr System::Word xlr_ChartPlotgrowth = System::Word(0x1064);
static constexpr System::Word xlr_ChartSiindex = System::Word(0x1065);
static constexpr System::Word xlr_ChartGelframe = System::Word(0x1066);
static constexpr System::Word xlr_ChartBoppcustom = System::Word(0x1067);
static constexpr System::Int8 tk_Arrayformula = System::Int8(0x1);
static constexpr System::Int8 tk_Table = System::Int8(0x2);
#define tk_BinaryOps (System::Set<System::Byte, 0, 255>() << 0x3 << 0x4 << 0x5 << 0x6 << 0x7 << 0x8 << 0x9 << 0xa << 0xb << 0xc << 0xd << 0xe << 0xf << 0x10 << 0x11 )
#define tk_UnaryOps (System::Set<System::Byte, 0, 255>() << 0x12 << 0x13 << 0x14 << 0x15 )
static constexpr System::Int8 tk_MissArg = System::Int8(0x16);
static constexpr System::Int8 tk_Str = System::Int8(0x17);
static constexpr System::Int8 tk_Attr = System::Int8(0x19);
static constexpr System::Int8 tk_Err = System::Int8(0x1c);
static constexpr System::Int8 tk_Bool = System::Int8(0x1d);
static constexpr System::Int8 tk_Int = System::Int8(0x1e);
static constexpr System::Int8 tk_Num = System::Int8(0x1f);
static constexpr System::Int8 tk_MemFunc = System::Int8(0x29);
#define tk_Func (System::Set<System::Byte, 0, 255>() << 0x21 << 0x41 << 0x61 )
#define tk_FuncVar (System::Set<System::Byte, 0, 255>() << 0x22 << 0x42 << 0x62 )
#define tk_Array (System::Set<System::Byte, 0, 255>() << 0x20 << 0x40 << 0x60 )
#define tk_Name (System::Set<System::Byte, 0, 255>() << 0x23 << 0x43 << 0x63 )
#define tk_Ref (System::Set<System::Byte, 0, 255>() << 0x24 << 0x44 << 0x64 )
#define tk_Area (System::Set<System::Byte, 0, 255>() << 0x25 << 0x45 << 0x65 )
#define tk_RefErr (System::Set<System::Byte, 0, 255>() << 0x2a << 0x4a << 0x6a )
#define tk_AreaErr (System::Set<System::Byte, 0, 255>() << 0x2b << 0x4b << 0x6b )
#define tk_RefN (System::Set<System::Byte, 0, 255>() << 0x2c << 0x4c << 0x6c )
#define tk_AreaN (System::Set<System::Byte, 0, 255>() << 0x2d << 0x4d << 0x6d )
#define tk_NameX (System::Set<System::Byte, 0, 255>() << 0x39 << 0x59 << 0x79 )
#define tk_Ref3D (System::Set<System::Byte, 0, 255>() << 0x3a << 0x5a << 0x7a )
#define tk_Area3D (System::Set<System::Byte, 0, 255>() << 0x3b << 0x5b << 0x7b )
#define tk_Ref3DErr (System::Set<System::Byte, 0, 255>() << 0x3c << 0x5c << 0x7c )
#define tk_Area3DErr (System::Set<System::Byte, 0, 255>() << 0x3d << 0x5d << 0x7d )
static constexpr System::Int8 tk_RefToRefErr = System::Int8(0x6);
static constexpr System::Int8 tk_AreaToAreaErr = System::Int8(0x6);
static constexpr System::Int8 tk_Ref3DToRef3DErr = System::Int8(0x2);
static constexpr System::Int8 tk_Area3DToArea3DErr = System::Int8(0x2);
#define tk_Operand (System::Set<int, -2147483648, 2147483647>() << 0x20 << 0x23 << 0x24 << 0x25 << 0x2a << 0x2b << 0x2c << 0x2d << 0x39 << 0x3a << 0x3b << 0x3c << 0x3d << 0x40 << 0x43 << 0x44 << 0x45 << 0x4a << 0x4b << 0x4c << 0x4d << 0x59 << 0x5a << 0x5b << 0x5c << 0x5d << 0x60 << 0x63 << 0x64 << 0x65 << 0x6a << 0x6b << 0x6c << 0x6d << 0x79 << 0x7a << 0x7b << 0x7c << 0x7d )
static constexpr System::Int8 ftEnd = System::Int8(0x0);
static constexpr System::Int8 ftMacro = System::Int8(0x4);
static constexpr System::Int8 ftButton = System::Int8(0x5);
static constexpr System::Int8 ftGmo = System::Int8(0x6);
static constexpr System::Int8 ftCf = System::Int8(0x7);
static constexpr System::Int8 ftPioGrbit = System::Int8(0x8);
static constexpr System::Int8 ftPictFmla = System::Int8(0x9);
static constexpr System::Int8 ftCbls = System::Int8(0xa);
static constexpr System::Int8 ftRbo = System::Int8(0xb);
static constexpr System::Int8 ftSbs = System::Int8(0xc);
static constexpr System::Int8 ftNts = System::Int8(0xd);
static constexpr System::Int8 ftSbsFmla = System::Int8(0xe);
static constexpr System::Int8 ftGboData = System::Int8(0xf);
static constexpr System::Int8 ftEdoData = System::Int8(0x10);
static constexpr System::Int8 ftRboData = System::Int8(0x11);
static constexpr System::Int8 ftCblsData = System::Int8(0x12);
static constexpr System::Int8 ftLbsData = System::Int8(0x13);
static constexpr System::Int8 ftCblsFmla = System::Int8(0x14);
static constexpr System::Int8 ftCmo = System::Int8(0x15);
static constexpr System::Int8 xlcmo_Group = System::Int8(0x0);
static constexpr System::Int8 xlcmo_Line = System::Int8(0x1);
static constexpr System::Int8 xlcmo_Rectangle = System::Int8(0x2);
static constexpr System::Int8 xlcmo_Oval = System::Int8(0x3);
static constexpr System::Int8 xlcmo_Arc = System::Int8(0x4);
static constexpr System::Int8 xlcmo_Chart = System::Int8(0x5);
static constexpr System::Int8 xlcmo_TextBox = System::Int8(0x6);
static constexpr System::Int8 xlcmo_Button = System::Int8(0x7);
static constexpr System::Int8 xlcmo_Picture = System::Int8(0x8);
static constexpr System::Int8 xlcmo_Polygon = System::Int8(0x9);
static constexpr System::Int8 xlcmo_CheckBox = System::Int8(0xb);
static constexpr System::Int8 xlcmo_Option = System::Int8(0xc);
static constexpr System::Int8 xlcmo_Edit = System::Int8(0xd);
static constexpr System::Int8 xlcmo_Label = System::Int8(0xe);
static constexpr System::Int8 xlcmo_Dialog = System::Int8(0xf);
static constexpr System::Int8 xlcmo_Spinner = System::Int8(0x10);
static constexpr System::Int8 xlcmo_Scroll = System::Int8(0x11);
static constexpr System::Int8 xlcmo_List = System::Int8(0x12);
static constexpr System::Int8 xlcmo_Group1 = System::Int8(0x13);
static constexpr System::Int8 xlcmo_Combo = System::Int8(0x14);
static constexpr System::Int8 xlcmo_Comment = System::Int8(0x19);
static constexpr System::Int8 xlcmo_MSDrawingx = System::Int8(0x1e);
static constexpr System::Word MsofbtDggContainer = System::Word(0xf000);
static constexpr System::Word MsofbtDgg = System::Word(0xf006);
static constexpr System::Word MsofbtCLSID = System::Word(0xf016);
static constexpr System::Word MsofbtOPT = System::Word(0xf00b);
static constexpr System::Word MsofbtColorMRU = System::Word(0xf11a);
static constexpr System::Word MsofbtSplitMenuColors = System::Word(0xf11e);
static constexpr System::Word MsofbtBstoreContainer = System::Word(0xf001);
static constexpr System::Word MsofbtBSE = System::Word(0xf007);
static constexpr System::Word MsofbtDgContainer = System::Word(0xf002);
static constexpr System::Word MsofbtDg = System::Word(0xf008);
static constexpr System::Word MsofbtRegroupItem = System::Word(0xf118);
static constexpr System::Word MsofbtColorScheme = System::Word(0xf120);
static constexpr System::Word MsofbtSpgrContainer = System::Word(0xf003);
static constexpr System::Word MsofbtSpContainer = System::Word(0xf004);
static constexpr System::Word MsofbtSpgr = System::Word(0xf009);
static constexpr System::Word MsofbtSp = System::Word(0xf00a);
static constexpr System::Word MsofbtTextbox = System::Word(0xf00c);
static constexpr System::Word MsofbtClientTextbox = System::Word(0xf00d);
static constexpr System::Word MsofbtAnchor = System::Word(0xf00e);
static constexpr System::Word MsofbtChildAnchor = System::Word(0xf00f);
static constexpr System::Word MsofbtClientAnchor = System::Word(0xf010);
static constexpr System::Word MsofbtClientData = System::Word(0xf011);
static constexpr System::Word MsofbtOleObject = System::Word(0xf11f);
static constexpr System::Word MsofbtDeletedPspl = System::Word(0xf11d);
static constexpr System::Word MsofbtSolverContainer = System::Word(0xf005);
static constexpr System::Word MsofbtConnectorRule = System::Word(0xf012);
static constexpr System::Word MsofbtAlignRule = System::Word(0xf013);
static constexpr System::Word MsofbtArcRule = System::Word(0xf014);
static constexpr System::Word MsofbtClientRule = System::Word(0xf015);
static constexpr System::Word MsofbtCalloutRule = System::Word(0xf017);
static constexpr System::Word MsofbtSelection = System::Word(0xf119);
static constexpr System::Int8 msobiUNKNOWN = System::Int8(0x0);
static constexpr System::Word msobiWMF = System::Word(0x216);
static constexpr System::Word msobiEMF = System::Word(0x3d4);
static constexpr System::Word msobiPICT = System::Word(0x542);
static constexpr System::Word msobiPNG = System::Word(0x6e0);
static constexpr System::Word msobiJFIF = System::Word(0x46a);
static constexpr System::Word msobiJPEG = System::Word(0x46a);
static constexpr System::Word msobiDIB = System::Word(0x7a8);
static constexpr System::Word msobiClient = System::Word(0x800);
static constexpr System::Int8 msoblipERROR = System::Int8(0x0);
static constexpr System::Int8 msoblipUNKNOWN = System::Int8(0x1);
static constexpr System::Int8 msoblipEMF = System::Int8(0x2);
static constexpr System::Int8 msoblipWMF = System::Int8(0x3);
static constexpr System::Int8 msoblipPICT = System::Int8(0x4);
static constexpr System::Int8 msoblipJPEG = System::Int8(0x5);
static constexpr System::Int8 msoblipPNG = System::Int8(0x6);
static constexpr System::Int8 msoblipDIB = System::Int8(0x7);
extern DELPHI_PACKAGE System::StaticArray<System::Byte, 6> XlsImgConv;
extern DELPHI_PACKAGE System::StaticArray<System::Word, 6> XlsBlipHeaderConv;
extern DELPHI_PACKAGE System::StaticArray<System::Word, 6> XlsBlipSignConv;
extern DELPHI_PACKAGE void __fastcall IncWord(const PArrayOfByte Pdata, const int tPos, const int Offset, const int Max);
extern DELPHI_PACKAGE void __fastcall IncByte(const PArrayOfByte Pdata, const int tPos, const int Offset, const int Max);
extern DELPHI_PACKAGE void __fastcall IncMax(System::Word &X, int N, int Max);
extern DELPHI_PACKAGE void __fastcall IncUInt32(const PArrayOfByte Pdata, const int tPos, const __int64 Offset);
extern DELPHI_PACKAGE void __fastcall IncMaxMin(System::Word &X, int N, int Max, int Min);
extern DELPHI_PACKAGE System::Word __fastcall GetWord(const PArrayOfByte Pdata, const int tPos);
extern DELPHI_PACKAGE unsigned __fastcall GetUInt32(const PArrayOfByte Pdata, const int tPos);
extern DELPHI_PACKAGE void __fastcall SetUInt32(const PArrayOfByte Pdata, const int tPos, const unsigned number);
extern DELPHI_PACKAGE void __fastcall SetWord(const PArrayOfByte Pdata, const int tPos, const System::Word number);
extern DELPHI_PACKAGE __int64 __fastcall GetStrLen(const bool Length16Bit, const PArrayOfByte Pdata, const int tPos, const bool UseExtStrLen, const unsigned ExtStrLen);
extern DELPHI_PACKAGE void __fastcall GetSimpleString(const bool Length16Bit, const PArrayOfByte Pdata, const int tPos, const bool UseExtStrLen, const unsigned ExtStrLen, System::UnicodeString &St, int &StSize);
extern DELPHI_PACKAGE bool __fastcall IsWide(const System::UnicodeString W);
extern DELPHI_PACKAGE Fmx::Tmsfncuflxmessages::ByteArray __fastcall WideStringToStringNoCodePage(const System::UnicodeString W);
extern DELPHI_PACKAGE void __fastcall CompressBestUnicode(const System::UnicodeString w, const PArrayOfByte PData, const int PDataPos);
extern DELPHI_PACKAGE System::UnicodeString __fastcall StringToWideStringNoCodePage(const Fmx::Tmsfncuflxmessages::ByteArray s);
}	/* namespace Tmsfncxlsmessages */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCXLSMESSAGES)
using namespace Fmx::Tmsfncxlsmessages;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncxlsmessagesHPP
