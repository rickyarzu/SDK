// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCUFlxMessages.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncuflxmessagesHPP
#define Fmx_TmsfncuflxmessagesHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Variants.hpp>
#include <System.VarUtils.hpp>
#include <System.Generics.Collections.hpp>
#include <System.Classes.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>
#include <System.Types.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncuflxmessages
{
//-- forward type declarations -----------------------------------------------
struct TClientAnchor;
struct TPrinterDriverSettings;
struct TXlsCellRange;
struct TXlsNamedRange;
struct TXlsMargins;
struct TRTFRun;
struct TRichString;
struct THyperLink;
struct TXlsCellValue;
struct TImageProperties;
//-- type declarations -------------------------------------------------------
typedef System::UnicodeString UTF16String;

typedef System::WideChar UTF16Char;

typedef System::PByte PAddress;

#pragma pack(push,1)
struct DECLSPEC_DRECORD TClientAnchor
{
public:
	System::Word Flag;
	System::Word Col1;
	System::Word Dx1;
	System::Word Row1;
	System::Word Dy1;
	System::Word Col2;
	System::Word Dx2;
	System::Word Row2;
	System::Word Dy2;
};
#pragma pack(pop)


typedef TClientAnchor *PClientAnchor;

typedef System::DynamicArray<System::UnicodeString> WidestringArray;

typedef System::DynamicArray<System::WideChar> WideCharArray;

typedef System::DynamicArray<bool> BooleanArray;

typedef System::DynamicArray<System::Byte> ByteArray;

struct DECLSPEC_DRECORD TPrinterDriverSettings
{
	
private:
	typedef System::DynamicArray<System::Byte> _TPrinterDriverSettings__1;
	
	
public:
	System::Word OperatingEnviroment;
	_TPrinterDriverSettings__1 Data;
};


typedef int TExcelPaperSize;

_DECLARE_ARITH_TYPE_ALIAS(System::Int8, TColorPaletteRange);

struct DECLSPEC_DRECORD TXlsCellRange
{
public:
	int Left;
	int Top;
	int Right;
	int Bottom;
};


struct DECLSPEC_DRECORD TXlsNamedRange
{
public:
	System::UnicodeString Name;
	System::UnicodeString RangeFormula;
	int OptionFlags;
	int NameSheetIndex;
};


#pragma pack(push,1)
struct DECLSPEC_DRECORD TXlsMargins
{
public:
	System::Extended Left;
	System::Extended Top;
	System::Extended Right;
	System::Extended Bottom;
	System::Extended Header;
	System::Extended Footer;
};
#pragma pack(pop)


enum DECLSPEC_DENUM TXlsSheetVisible : unsigned char { sv_Visible, sv_Hidden, sv_VeryHidden };

struct DECLSPEC_DRECORD TRTFRun
{
public:
	System::Word FirstChar;
	System::Word FontIndex;
};


typedef System::DynamicArray<TRTFRun> TRTFRunList;

struct DECLSPEC_DRECORD TRichString
{
public:
	System::UnicodeString Value;
	TRTFRunList RTFRuns;
};


enum DECLSPEC_DENUM THyperLinkType : unsigned char { hl_URL, hl_LocalFile, hl_UNC, hl_CurrentWorkbook };

struct DECLSPEC_DRECORD THyperLink
{
public:
	THyperLinkType LinkType;
	System::UnicodeString Description;
	System::UnicodeString TargetFrame;
	System::UnicodeString TextMark;
	System::UnicodeString Text;
	System::UnicodeString Hint;
};


typedef void __fastcall (__closure *TOnGetFileNameEvent)(System::TObject* Sender, const int FileFormat, System::Sysutils::TFileName &Filename);

typedef void __fastcall (__closure *TOnGetOutStreamEvent)(System::TObject* Sender, const int FileFormat, System::Classes::TStream* &OutStream);

enum DECLSPEC_DENUM TXlsImgTypes : unsigned char { xli_Emf, xli_Wmf, xli_Jpeg, xli_Png, xli_Bmp, xli_Unknown };

typedef System::StaticArray<System::Variant, 89478485> VariantArray;

typedef System::DynamicArray<System::Variant> ArrayOfVariant;

struct DECLSPEC_DRECORD TXlsCellValue
{
public:
	System::Variant Value;
	int XF;
	bool IsFormula;
};


typedef System::Sysutils::TFormatSettings *PFormatSettings;

enum DECLSPEC_DENUM TFlxAnchorType : unsigned char { at_MoveAndResize, at_MoveAndDontResize, at_DontMoveAndDontResize };

struct DECLSPEC_DRECORD TImageProperties
{
public:
	int Col1;
	int dx1;
	int Row1;
	int dy1;
	int Col2;
	int dx2;
	int Row2;
	int dy2;
	System::UnicodeString FileName;
};


typedef System::Generics::Collections::TList__1<System::TObject*>* TFlxList;

//-- var, const, procedure ---------------------------------------------------
static constexpr System::Word FLX_VAR_LOCALE_USER_DEFAULT = System::Word(0x400);
extern DELPHI_PACKAGE System::ResourceString _FieldStr;
#define Fmx_Tmsfncuflxmessages_FieldStr System::LoadResourceString(&Fmx::Tmsfncuflxmessages::_FieldStr)
extern DELPHI_PACKAGE System::ResourceString _DataSetStr;
#define Fmx_Tmsfncuflxmessages_DataSetStr System::LoadResourceString(&Fmx::Tmsfncuflxmessages::_DataSetStr)
extern DELPHI_PACKAGE System::ResourceString _VarStr;
#define Fmx_Tmsfncuflxmessages_VarStr System::LoadResourceString(&Fmx::Tmsfncuflxmessages::_VarStr)
extern DELPHI_PACKAGE System::ResourceString _StrOpen;
#define Fmx_Tmsfncuflxmessages_StrOpen System::LoadResourceString(&Fmx::Tmsfncuflxmessages::_StrOpen)
extern DELPHI_PACKAGE System::ResourceString _StrClose;
#define Fmx_Tmsfncuflxmessages_StrClose System::LoadResourceString(&Fmx::Tmsfncuflxmessages::_StrClose)
extern DELPHI_PACKAGE System::ResourceString _ExtrasDelim;
#define Fmx_Tmsfncuflxmessages_ExtrasDelim System::LoadResourceString(&Fmx::Tmsfncuflxmessages::_ExtrasDelim)
extern DELPHI_PACKAGE System::ResourceString _MarkedRowStr;
#define Fmx_Tmsfncuflxmessages_MarkedRowStr System::LoadResourceString(&Fmx::Tmsfncuflxmessages::_MarkedRowStr)
extern DELPHI_PACKAGE System::ResourceString _HPageBreakStr;
#define Fmx_Tmsfncuflxmessages_HPageBreakStr System::LoadResourceString(&Fmx::Tmsfncuflxmessages::_HPageBreakStr)
extern DELPHI_PACKAGE System::ResourceString _FullDataSetStr;
#define Fmx_Tmsfncuflxmessages_FullDataSetStr System::LoadResourceString(&Fmx::Tmsfncuflxmessages::_FullDataSetStr)
extern DELPHI_PACKAGE System::ResourceString _MainTxt;
#define Fmx_Tmsfncuflxmessages_MainTxt System::LoadResourceString(&Fmx::Tmsfncuflxmessages::_MainTxt)
extern DELPHI_PACKAGE System::ResourceString _RecordCountPrefix;
#define Fmx_Tmsfncuflxmessages_RecordCountPrefix System::LoadResourceString(&Fmx::Tmsfncuflxmessages::_RecordCountPrefix)
extern DELPHI_PACKAGE System::ResourceString _DefaultDateTimeFormat;
#define Fmx_Tmsfncuflxmessages_DefaultDateTimeFormat System::LoadResourceString(&Fmx::Tmsfncuflxmessages::_DefaultDateTimeFormat)
extern DELPHI_PACKAGE System::ResourceString _FlexCelVersion;
#define Fmx_Tmsfncuflxmessages_FlexCelVersion System::LoadResourceString(&Fmx::Tmsfncuflxmessages::_FlexCelVersion)
extern DELPHI_PACKAGE System::ResourceString _ErrNoAdapter;
#define Fmx_Tmsfncuflxmessages_ErrNoAdapter System::LoadResourceString(&Fmx::Tmsfncuflxmessages::_ErrNoAdapter)
extern DELPHI_PACKAGE System::ResourceString _ErrTooManySheets;
#define Fmx_Tmsfncuflxmessages_ErrTooManySheets System::LoadResourceString(&Fmx::Tmsfncuflxmessages::_ErrTooManySheets)
extern DELPHI_PACKAGE System::ResourceString _ErrNoDataSet;
#define Fmx_Tmsfncuflxmessages_ErrNoDataSet System::LoadResourceString(&Fmx::Tmsfncuflxmessages::_ErrNoDataSet)
extern DELPHI_PACKAGE System::ResourceString _ErrNoPropDefined;
#define Fmx_Tmsfncuflxmessages_ErrNoPropDefined System::LoadResourceString(&Fmx::Tmsfncuflxmessages::_ErrNoPropDefined)
extern DELPHI_PACKAGE System::ResourceString _ErrBadProp;
#define Fmx_Tmsfncuflxmessages_ErrBadProp System::LoadResourceString(&Fmx::Tmsfncuflxmessages::_ErrBadProp)
extern DELPHI_PACKAGE System::ResourceString _ErrTooManyDimensions;
#define Fmx_Tmsfncuflxmessages_ErrTooManyDimensions System::LoadResourceString(&Fmx::Tmsfncuflxmessages::_ErrTooManyDimensions)
extern DELPHI_PACKAGE System::ResourceString _ErrIndexOutBounds;
#define Fmx_Tmsfncuflxmessages_ErrIndexOutBounds System::LoadResourceString(&Fmx::Tmsfncuflxmessages::_ErrIndexOutBounds)
extern DELPHI_PACKAGE System::ResourceString _ErrInvalidDrawingType;
#define Fmx_Tmsfncuflxmessages_ErrInvalidDrawingType System::LoadResourceString(&Fmx::Tmsfncuflxmessages::_ErrInvalidDrawingType)
extern DELPHI_PACKAGE System::ResourceString _ErrNoOpenFile;
#define Fmx_Tmsfncuflxmessages_ErrNoOpenFile System::LoadResourceString(&Fmx::Tmsfncuflxmessages::_ErrNoOpenFile)
extern DELPHI_PACKAGE System::ResourceString _ErrCantFindFile;
#define Fmx_Tmsfncuflxmessages_ErrCantFindFile System::LoadResourceString(&Fmx::Tmsfncuflxmessages::_ErrCantFindFile)
extern DELPHI_PACKAGE System::ResourceString _ErrNoTemplate;
#define Fmx_Tmsfncuflxmessages_ErrNoTemplate System::LoadResourceString(&Fmx::Tmsfncuflxmessages::_ErrNoTemplate)
extern DELPHI_PACKAGE System::ResourceString _ErrDocumentNotSaved;
#define Fmx_Tmsfncuflxmessages_ErrDocumentNotSaved System::LoadResourceString(&Fmx::Tmsfncuflxmessages::_ErrDocumentNotSaved)
extern DELPHI_PACKAGE System::ResourceString _ErrFieldNil;
#define Fmx_Tmsfncuflxmessages_ErrFieldNil System::LoadResourceString(&Fmx::Tmsfncuflxmessages::_ErrFieldNil)
extern DELPHI_PACKAGE System::ResourceString _ErrDupField;
#define Fmx_Tmsfncuflxmessages_ErrDupField System::LoadResourceString(&Fmx::Tmsfncuflxmessages::_ErrDupField)
extern DELPHI_PACKAGE System::ResourceString _ErrFieldNotFound;
#define Fmx_Tmsfncuflxmessages_ErrFieldNotFound System::LoadResourceString(&Fmx::Tmsfncuflxmessages::_ErrFieldNotFound)
extern DELPHI_PACKAGE System::ResourceString _ErrInvalidColumnCount;
#define Fmx_Tmsfncuflxmessages_ErrInvalidColumnCount System::LoadResourceString(&Fmx::Tmsfncuflxmessages::_ErrInvalidColumnCount)
extern DELPHI_PACKAGE System::ResourceString _MsgAbout;
#define Fmx_Tmsfncuflxmessages_MsgAbout System::LoadResourceString(&Fmx::Tmsfncuflxmessages::_MsgAbout)
extern DELPHI_PACKAGE System::ResourceString _TxtDatasets;
#define Fmx_Tmsfncuflxmessages_TxtDatasets System::LoadResourceString(&Fmx::Tmsfncuflxmessages::_TxtDatasets)
extern DELPHI_PACKAGE System::ResourceString _TxtProperties;
#define Fmx_Tmsfncuflxmessages_TxtProperties System::LoadResourceString(&Fmx::Tmsfncuflxmessages::_TxtProperties)
extern DELPHI_PACKAGE System::ResourceString _TxtExtras;
#define Fmx_Tmsfncuflxmessages_TxtExtras System::LoadResourceString(&Fmx::Tmsfncuflxmessages::_TxtExtras)
extern DELPHI_PACKAGE System::ResourceString _TxtFileModified;
#define Fmx_Tmsfncuflxmessages_TxtFileModified System::LoadResourceString(&Fmx::Tmsfncuflxmessages::_TxtFileModified)
extern DELPHI_PACKAGE System::ResourceString _TxtFileModifiedCaption;
#define Fmx_Tmsfncuflxmessages_TxtFileModifiedCaption System::LoadResourceString(&Fmx::Tmsfncuflxmessages::_TxtFileModifiedCaption)
extern DELPHI_PACKAGE System::ResourceString _TxtEditing;
#define Fmx_Tmsfncuflxmessages_TxtEditing System::LoadResourceString(&Fmx::Tmsfncuflxmessages::_TxtEditing)
extern DELPHI_PACKAGE System::ResourceString _TxtEditTemplate;
#define Fmx_Tmsfncuflxmessages_TxtEditTemplate System::LoadResourceString(&Fmx::Tmsfncuflxmessages::_TxtEditTemplate)
extern DELPHI_PACKAGE System::ResourceString _TxtRefreshTemplate;
#define Fmx_Tmsfncuflxmessages_TxtRefreshTemplate System::LoadResourceString(&Fmx::Tmsfncuflxmessages::_TxtRefreshTemplate)
extern DELPHI_PACKAGE System::ResourceString _TxtTemplateStoreRefreshed;
#define Fmx_Tmsfncuflxmessages_TxtTemplateStoreRefreshed System::LoadResourceString(&Fmx::Tmsfncuflxmessages::_TxtTemplateStoreRefreshed)
extern DELPHI_PACKAGE System::ResourceString _TxtDeleteRange;
#define Fmx_Tmsfncuflxmessages_TxtDeleteRange System::LoadResourceString(&Fmx::Tmsfncuflxmessages::_TxtDeleteRange)
extern DELPHI_PACKAGE System::ResourceString _TxtDeleteRangeCaption;
#define Fmx_Tmsfncuflxmessages_TxtDeleteRangeCaption System::LoadResourceString(&Fmx::Tmsfncuflxmessages::_TxtDeleteRangeCaption)
extern DELPHI_PACKAGE System::ResourceString _TxtNamedRangeFormula;
#define Fmx_Tmsfncuflxmessages_TxtNamedRangeFormula System::LoadResourceString(&Fmx::Tmsfncuflxmessages::_TxtNamedRangeFormula)
extern DELPHI_PACKAGE System::ResourceString _ErrComponentIsNotXlsDataSet;
#define Fmx_Tmsfncuflxmessages_ErrComponentIsNotXlsDataSet System::LoadResourceString(&Fmx::Tmsfncuflxmessages::_ErrComponentIsNotXlsDataSet)
extern DELPHI_PACKAGE System::ResourceString _ErrUseFasterAdapter;
#define Fmx_Tmsfncuflxmessages_ErrUseFasterAdapter System::LoadResourceString(&Fmx::Tmsfncuflxmessages::_ErrUseFasterAdapter)
extern DELPHI_PACKAGE System::ResourceString _TxtTrue;
#define Fmx_Tmsfncuflxmessages_TxtTrue System::LoadResourceString(&Fmx::Tmsfncuflxmessages::_TxtTrue)
extern DELPHI_PACKAGE System::ResourceString _TxtFalse;
#define Fmx_Tmsfncuflxmessages_TxtFalse System::LoadResourceString(&Fmx::Tmsfncuflxmessages::_TxtFalse)
extern DELPHI_PACKAGE System::ResourceString _ErrInvalidWmf;
#define Fmx_Tmsfncuflxmessages_ErrInvalidWmf System::LoadResourceString(&Fmx::Tmsfncuflxmessages::_ErrInvalidWmf)
extern DELPHI_PACKAGE System::ResourceString _TxtSepLog;
#define Fmx_Tmsfncuflxmessages_TxtSepLog System::LoadResourceString(&Fmx::Tmsfncuflxmessages::_TxtSepLog)
extern DELPHI_PACKAGE System::ResourceString _TxtCheckHeader;
#define Fmx_Tmsfncuflxmessages_TxtCheckHeader System::LoadResourceString(&Fmx::Tmsfncuflxmessages::_TxtCheckHeader)
extern DELPHI_PACKAGE System::ResourceString _TxtError;
#define Fmx_Tmsfncuflxmessages_TxtError System::LoadResourceString(&Fmx::Tmsfncuflxmessages::_TxtError)
extern DELPHI_PACKAGE System::ResourceString _TxtOK;
#define Fmx_Tmsfncuflxmessages_TxtOK System::LoadResourceString(&Fmx::Tmsfncuflxmessages::_TxtOK)
extern DELPHI_PACKAGE System::ResourceString _ErrInvalidRangeName;
#define Fmx_Tmsfncuflxmessages_ErrInvalidRangeName System::LoadResourceString(&Fmx::Tmsfncuflxmessages::_ErrInvalidRangeName)
extern DELPHI_PACKAGE System::ResourceString _ErrRangeNameNotFound;
#define Fmx_Tmsfncuflxmessages_ErrRangeNameNotFound System::LoadResourceString(&Fmx::Tmsfncuflxmessages::_ErrRangeNameNotFound)
extern DELPHI_PACKAGE System::ResourceString _ErrRangeNameInvalidType;
#define Fmx_Tmsfncuflxmessages_ErrRangeNameInvalidType System::LoadResourceString(&Fmx::Tmsfncuflxmessages::_ErrRangeNameInvalidType)
extern DELPHI_PACKAGE System::ResourceString _ErrCheckCellDots;
#define Fmx_Tmsfncuflxmessages_ErrCheckCellDots System::LoadResourceString(&Fmx::Tmsfncuflxmessages::_ErrCheckCellDots)
extern DELPHI_PACKAGE System::ResourceString _ErrCheckDotCommandsCol;
#define Fmx_Tmsfncuflxmessages_ErrCheckDotCommandsCol System::LoadResourceString(&Fmx::Tmsfncuflxmessages::_ErrCheckDotCommandsCol)
extern DELPHI_PACKAGE System::ResourceString _ErrInvalidCellDB;
#define Fmx_Tmsfncuflxmessages_ErrInvalidCellDB System::LoadResourceString(&Fmx::Tmsfncuflxmessages::_ErrInvalidCellDB)
extern DELPHI_PACKAGE System::ResourceString _ErrInvalidCellDB2;
#define Fmx_Tmsfncuflxmessages_ErrInvalidCellDB2 System::LoadResourceString(&Fmx::Tmsfncuflxmessages::_ErrInvalidCellDB2)
extern DELPHI_PACKAGE System::ResourceString _ErrInvalidField;
#define Fmx_Tmsfncuflxmessages_ErrInvalidField System::LoadResourceString(&Fmx::Tmsfncuflxmessages::_ErrInvalidField)
extern DELPHI_PACKAGE System::ResourceString _ErrInvalidPagesField;
#define Fmx_Tmsfncuflxmessages_ErrInvalidPagesField System::LoadResourceString(&Fmx::Tmsfncuflxmessages::_ErrInvalidPagesField)
extern DELPHI_PACKAGE System::ResourceString _ErrFieldOutsideRange;
#define Fmx_Tmsfncuflxmessages_ErrFieldOutsideRange System::LoadResourceString(&Fmx::Tmsfncuflxmessages::_ErrFieldOutsideRange)
extern DELPHI_PACKAGE System::ResourceString _ErrInvalidImageDB;
#define Fmx_Tmsfncuflxmessages_ErrInvalidImageDB System::LoadResourceString(&Fmx::Tmsfncuflxmessages::_ErrInvalidImageDB)
extern DELPHI_PACKAGE System::ResourceString _ErrInvalidImageField;
#define Fmx_Tmsfncuflxmessages_ErrInvalidImageField System::LoadResourceString(&Fmx::Tmsfncuflxmessages::_ErrInvalidImageField)
extern DELPHI_PACKAGE System::ResourceString _ErrInvalidImageType;
#define Fmx_Tmsfncuflxmessages_ErrInvalidImageType System::LoadResourceString(&Fmx::Tmsfncuflxmessages::_ErrInvalidImageType)
extern DELPHI_PACKAGE System::ResourceString _ErrTemplateNotRefreshed;
#define Fmx_Tmsfncuflxmessages_ErrTemplateNotRefreshed System::LoadResourceString(&Fmx::Tmsfncuflxmessages::_ErrTemplateNotRefreshed)
extern DELPHI_PACKAGE System::ResourceString _ErrNoGrid;
#define Fmx_Tmsfncuflxmessages_ErrNoGrid System::LoadResourceString(&Fmx::Tmsfncuflxmessages::_ErrNoGrid)
extern DELPHI_PACKAGE System::ResourceString _ErrInvalidSheetName;
#define Fmx_Tmsfncuflxmessages_ErrInvalidSheetName System::LoadResourceString(&Fmx::Tmsfncuflxmessages::_ErrInvalidSheetName)
extern DELPHI_PACKAGE System::ResourceString _ErrInvalidNameForARange;
#define Fmx_Tmsfncuflxmessages_ErrInvalidNameForARange System::LoadResourceString(&Fmx::Tmsfncuflxmessages::_ErrInvalidNameForARange)
extern DELPHI_PACKAGE System::ResourceString _xls_Emf;
#define Fmx_Tmsfncuflxmessages_xls_Emf System::LoadResourceString(&Fmx::Tmsfncuflxmessages::_xls_Emf)
extern DELPHI_PACKAGE System::ResourceString _xls_Wmf;
#define Fmx_Tmsfncuflxmessages_xls_Wmf System::LoadResourceString(&Fmx::Tmsfncuflxmessages::_xls_Wmf)
extern DELPHI_PACKAGE System::ResourceString _xls_Jpeg;
#define Fmx_Tmsfncuflxmessages_xls_Jpeg System::LoadResourceString(&Fmx::Tmsfncuflxmessages::_xls_Jpeg)
extern DELPHI_PACKAGE System::ResourceString _xls_Png;
#define Fmx_Tmsfncuflxmessages_xls_Png System::LoadResourceString(&Fmx::Tmsfncuflxmessages::_xls_Png)
static constexpr System::Word Date1904Diff = System::Word(0x5b6);
static constexpr System::Int8 TExcelPaperSize_Undefined = System::Int8(0x0);
static constexpr System::Int8 TExcelPaperSize_Letter = System::Int8(0x1);
static constexpr System::Int8 TExcelPaperSize_Lettersmall = System::Int8(0x2);
static constexpr System::Int8 TExcelPaperSize_Tabloid = System::Int8(0x3);
static constexpr System::Int8 TExcelPaperSize_Ledger = System::Int8(0x4);
static constexpr System::Int8 TExcelPaperSize_Legal = System::Int8(0x5);
static constexpr System::Int8 TExcelPaperSize_Statement = System::Int8(0x6);
static constexpr System::Int8 TExcelPaperSize_Executive = System::Int8(0x7);
static constexpr System::Int8 TExcelPaperSize_A3 = System::Int8(0x8);
static constexpr System::Int8 TExcelPaperSize_A4 = System::Int8(0x9);
static constexpr System::Int8 TExcelPaperSize_A4small = System::Int8(0xa);
static constexpr System::Int8 TExcelPaperSize_A5 = System::Int8(0xb);
static constexpr System::Int8 TExcelPaperSize_B4_JIS = System::Int8(0xc);
static constexpr System::Int8 TExcelPaperSize_B5_JIS = System::Int8(0xd);
static constexpr System::Int8 TExcelPaperSize_Folio = System::Int8(0xe);
static constexpr System::Int8 TExcelPaperSize_Quarto = System::Int8(0xf);
static constexpr System::Int8 TExcelPaperSize_s10x14 = System::Int8(0x10);
static constexpr System::Int8 TExcelPaperSize_s11x17 = System::Int8(0x11);
static constexpr System::Int8 TExcelPaperSize_Note = System::Int8(0x12);
static constexpr System::Int8 TExcelPaperSize_Envelope9 = System::Int8(0x13);
static constexpr System::Int8 TExcelPaperSize_Envelope10 = System::Int8(0x14);
static constexpr System::Int8 TExcelPaperSize_Envelope11 = System::Int8(0x15);
static constexpr System::Int8 TExcelPaperSize_Envelope12 = System::Int8(0x16);
static constexpr System::Int8 TExcelPaperSize_Envelope14 = System::Int8(0x17);
static constexpr System::Int8 TExcelPaperSize_C = System::Int8(0x18);
static constexpr System::Int8 TExcelPaperSize_D = System::Int8(0x19);
static constexpr System::Int8 TExcelPaperSize_E = System::Int8(0x1a);
static constexpr System::Int8 TExcelPaperSize_EnvelopeDL = System::Int8(0x1b);
static constexpr System::Int8 TExcelPaperSize_EnvelopeC5 = System::Int8(0x1c);
static constexpr System::Int8 TExcelPaperSize_EnvelopeC3 = System::Int8(0x1d);
static constexpr System::Int8 TExcelPaperSize_EnvelopeC4 = System::Int8(0x1e);
static constexpr System::Int8 TExcelPaperSize_EnvelopeC6 = System::Int8(0x1f);
static constexpr System::Int8 TExcelPaperSize_EnvelopeC6_C5 = System::Int8(0x20);
static constexpr System::Int8 TExcelPaperSize_B4_ISO = System::Int8(0x21);
static constexpr System::Int8 TExcelPaperSize_B5_ISO = System::Int8(0x22);
static constexpr System::Int8 TExcelPaperSize_B6_ISO = System::Int8(0x23);
static constexpr System::Int8 TExcelPaperSize_EnvelopeItaly = System::Int8(0x24);
static constexpr System::Int8 TExcelPaperSize_EnvelopeMonarch = System::Int8(0x25);
static constexpr System::Int8 TExcelPaperSize_s63_4Envelope = System::Int8(0x26);
static constexpr System::Int8 TExcelPaperSize_USStandardFanfold = System::Int8(0x27);
static constexpr System::Int8 TExcelPaperSize_GermanStdFanfold = System::Int8(0x28);
static constexpr System::Int8 TExcelPaperSize_GermanLegalFanfold = System::Int8(0x29);
static constexpr System::Int8 TExcelPaperSize_B4_ISO_2 = System::Int8(0x2a);
static constexpr System::Int8 TExcelPaperSize_JapanesePostcard = System::Int8(0x2b);
static constexpr System::Int8 TExcelPaperSize_s9x11 = System::Int8(0x2c);
static constexpr System::Int8 TExcelPaperSize_s10x11 = System::Int8(0x2d);
static constexpr System::Int8 TExcelPaperSize_s15x11 = System::Int8(0x2e);
static constexpr System::Int8 TExcelPaperSize_EnvelopeInvite = System::Int8(0x2f);
static constexpr System::Int8 TExcelPaperSize_LetterExtra = System::Int8(0x32);
static constexpr System::Int8 TExcelPaperSize_LegalExtra = System::Int8(0x33);
static constexpr System::Int8 TExcelPaperSize_TabloidExtra = System::Int8(0x34);
static constexpr System::Int8 TExcelPaperSize_A4Extra = System::Int8(0x35);
static constexpr System::Int8 TExcelPaperSize_LetterTransverse = System::Int8(0x36);
static constexpr System::Int8 TExcelPaperSize_A4Transverse = System::Int8(0x37);
static constexpr System::Int8 TExcelPaperSize_LetterExtraTransv = System::Int8(0x38);
static constexpr System::Int8 TExcelPaperSize_SuperA_A4 = System::Int8(0x39);
static constexpr System::Int8 TExcelPaperSize_SuperB_A3 = System::Int8(0x3a);
static constexpr System::Int8 TExcelPaperSize_LetterPlus = System::Int8(0x3b);
static constexpr System::Int8 TExcelPaperSize_A4Plus = System::Int8(0x3c);
static constexpr System::Int8 TExcelPaperSize_A5Transverse = System::Int8(0x3d);
static constexpr System::Int8 TExcelPaperSize_B5_JIS_Transverse = System::Int8(0x3e);
static constexpr System::Int8 TExcelPaperSize_A3Extra = System::Int8(0x3f);
static constexpr System::Int8 TExcelPaperSize_A5Extra = System::Int8(0x40);
static constexpr System::Int8 TExcelPaperSize_B5_ISO_Extra = System::Int8(0x41);
static constexpr System::Int8 TExcelPaperSize_A2 = System::Int8(0x42);
static constexpr System::Int8 TExcelPaperSize_A3Transverse = System::Int8(0x43);
static constexpr System::Int8 TExcelPaperSize_A3ExtraTransverse = System::Int8(0x44);
static constexpr System::Int8 TExcelPaperSize_DblJapanesePostcard = System::Int8(0x45);
static constexpr System::Int8 TExcelPaperSize_A6 = System::Int8(0x46);
static constexpr System::Int8 TExcelPaperSize_LetterRotated = System::Int8(0x4b);
static constexpr System::Int8 TExcelPaperSize_A3Rotated = System::Int8(0x4c);
static constexpr System::Int8 TExcelPaperSize_A4Rotated = System::Int8(0x4d);
static constexpr System::Int8 TExcelPaperSize_A5Rotated = System::Int8(0x4e);
static constexpr System::Int8 TExcelPaperSize_B4_JIS_Rotated = System::Int8(0x4f);
static constexpr System::Int8 TExcelPaperSize_B5_JIS_Rotated = System::Int8(0x50);
static constexpr System::Int8 TExcelPaperSize_JapanesePostcardRot = System::Int8(0x51);
static constexpr System::Int8 TExcelPaperSize_DblJapPostcardRot = System::Int8(0x52);
static constexpr System::Int8 TExcelPaperSize_A6Rotated = System::Int8(0x53);
static constexpr System::Int8 TExcelPaperSize_B6_JIS = System::Int8(0x58);
static constexpr System::Int8 TExcelPaperSize_B6_JIS_Rotated = System::Int8(0x59);
static constexpr System::Int8 TExcelPaperSize_s12x11 = System::Int8(0x5a);
extern DELPHI_PACKAGE int DefColWidthAdapt;
static constexpr System::Int8 fpo_LeftToRight = System::Int8(0x1);
static constexpr System::Int8 fpo_Orientation = System::Int8(0x2);
static constexpr System::Int8 fpo_NoPls = System::Int8(0x4);
static constexpr System::Int8 fpo_NoColor = System::Int8(0x8);
static constexpr System::Int8 fpo_Draft = System::Int8(0x10);
static constexpr System::Int8 fpo_Notes = System::Int8(0x20);
static constexpr System::Int8 fpo_NoOrient = System::Int8(0x40);
static constexpr System::Byte fpo_UsePage = System::Byte(0x80);
static constexpr System::WideChar InternalNameRange_Consolidate_Area = (System::WideChar)(0x0);
static constexpr System::WideChar InternalNameRange_Auto_Open = (System::WideChar)(0x1);
static constexpr System::WideChar InternalNameRange_Auto_Close = (System::WideChar)(0x2);
static constexpr System::WideChar InternalNameRange_Extract = (System::WideChar)(0x3);
static constexpr System::WideChar InternalNameRange_Database = (System::WideChar)(0x4);
static constexpr System::WideChar InternalNameRange_Criteria = (System::WideChar)(0x5);
static constexpr System::WideChar InternalNameRange_Print_Area = (System::WideChar)(0x6);
static constexpr System::WideChar InternalNameRange_Print_Titles = (System::WideChar)(0x7);
static constexpr System::WideChar InternalNameRange_Recorder = (System::WideChar)(0x8);
static constexpr System::WideChar InternalNameRange_Data_Form = (System::WideChar)(0x9);
static constexpr System::WideChar InternalNameRange_Auto_Activate = (System::WideChar)(0xa);
static constexpr System::WideChar InternalNameRange_Auto_Deactivate = (System::WideChar)(0xb);
static constexpr System::WideChar InternalNameRange_Sheet_Title = (System::WideChar)(0xc);
static constexpr System::WideChar InternalNameRange_Filter_DataBase = (System::WideChar)(0xd);
extern DELPHI_PACKAGE System::Extended ColMult;
extern DELPHI_PACKAGE System::Extended RowMult;
extern DELPHI_PACKAGE System::UnicodeString __fastcall EncodeColumn(const int C);
extern DELPHI_PACKAGE System::UnicodeString __fastcall SearchPathStr(const System::UnicodeString AFileName)/* overload */;
extern DELPHI_PACKAGE System::UnicodeString __fastcall SearchPathStr(const System::UnicodeString AFilePath, const System::UnicodeString AFileName)/* overload */;
extern DELPHI_PACKAGE void __fastcall EnsureAMPM(PFormatSettings &FormatSettings);
extern DELPHI_PACKAGE PFormatSettings __fastcall GetDefaultLocaleFormatSettings(void);
extern DELPHI_PACKAGE PFormatSettings __fastcall InvariantFormatSettings(void);
extern DELPHI_PACKAGE bool __fastcall TryStrToFloatInvariant(const System::UnicodeString s, /* out */ System::Extended &i);
extern DELPHI_PACKAGE System::UnicodeString __fastcall WideUpperCase98(const System::UnicodeString s);
extern DELPHI_PACKAGE System::UnicodeString __fastcall StringReplaceSkipQuotes(const System::UnicodeString S, const System::UnicodeString OldPattern, const System::UnicodeString NewPattern);
extern DELPHI_PACKAGE bool __fastcall FlxTryStrToDateTime(const System::UnicodeString S, /* out */ System::TDateTime &Value, /* out */ System::UnicodeString &dFormat, /* out */ bool &HasDate, /* out */ bool &HasTime, const System::UnicodeString DateFormat = System::UnicodeString(), const System::UnicodeString TimeFormat = System::UnicodeString(), const PFormatSettings FormatSettings = (PFormatSettings)(0x0));
extern DELPHI_PACKAGE System::UnicodeString __fastcall TryFormatDateTime _DEPRECATED_ATTRIBUTE1("Use TryFormatDateTime1904 instead") (const System::UnicodeString Fmt, System::TDateTime value);
extern DELPHI_PACKAGE System::UnicodeString __fastcall TryFormatDateTime1904(const System::UnicodeString Fmt, System::TDateTime value, const bool Dates1904, const System::Sysutils::TFormatSettings &LocalSettings)/* overload */;
extern DELPHI_PACKAGE System::UnicodeString __fastcall TryFormatDateTime1904(const System::UnicodeString Fmt, System::TDateTime value, const bool Dates1904)/* overload */;
extern DELPHI_PACKAGE TXlsCellRange __fastcall OffsetRange(const TXlsCellRange &CellRange, const int DeltaRow, const int DeltaCol);
extern DELPHI_PACKAGE void __fastcall InitializeNamedRange(/* out */ TXlsNamedRange &NamedRange);
extern DELPHI_PACKAGE System::UnicodeString __fastcall VariantToString(const System::Variant &v);
}	/* namespace Tmsfncuflxmessages */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCUFLXMESSAGES)
using namespace Fmx::Tmsfncuflxmessages;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncuflxmessagesHPP
