// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCUXlsTokenArray.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncuxlstokenarrayHPP
#define Fmx_TmsfncuxlstokenarrayHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <FMX.TMSFNCXlsMessages.hpp>
#include <System.SysUtils.hpp>
#include <System.Math.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncuxlstokenarray
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS ETokenException;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION ETokenException : public Fmx::Tmsfncxlsmessages::EExcelException
{
	typedef Fmx::Tmsfncxlsmessages::EExcelException inherited;
	
public:
	int Token;
	__fastcall ETokenException(const int aToken, const int aDummy1, const int ADummy2);
public:
	/* Exception.CreateFmt */ inline __fastcall ETokenException(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High) : Fmx::Tmsfncxlsmessages::EExcelException(Msg, Args, Args_High) { }
	/* Exception.CreateRes */ inline __fastcall ETokenException(NativeUInt Ident)/* overload */ : Fmx::Tmsfncxlsmessages::EExcelException(Ident) { }
	/* Exception.CreateRes */ inline __fastcall ETokenException(System::PResStringRec ResStringRec)/* overload */ : Fmx::Tmsfncxlsmessages::EExcelException(ResStringRec) { }
	/* Exception.CreateResFmt */ inline __fastcall ETokenException(NativeUInt Ident, const System::TVarRec *Args, const int Args_High)/* overload */ : Fmx::Tmsfncxlsmessages::EExcelException(Ident, Args, Args_High) { }
	/* Exception.CreateResFmt */ inline __fastcall ETokenException(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High)/* overload */ : Fmx::Tmsfncxlsmessages::EExcelException(ResStringRec, Args, Args_High) { }
	/* Exception.CreateHelp */ inline __fastcall ETokenException(const System::UnicodeString Msg, int AHelpContext) : Fmx::Tmsfncxlsmessages::EExcelException(Msg, AHelpContext) { }
	/* Exception.CreateFmtHelp */ inline __fastcall ETokenException(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High, int AHelpContext) : Fmx::Tmsfncxlsmessages::EExcelException(Msg, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall ETokenException(NativeUInt Ident, int AHelpContext)/* overload */ : Fmx::Tmsfncxlsmessages::EExcelException(Ident, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall ETokenException(System::PResStringRec ResStringRec, int AHelpContext)/* overload */ : Fmx::Tmsfncxlsmessages::EExcelException(ResStringRec, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall ETokenException(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : Fmx::Tmsfncxlsmessages::EExcelException(ResStringRec, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall ETokenException(NativeUInt Ident, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : Fmx::Tmsfncxlsmessages::EExcelException(Ident, Args, Args_High, AHelpContext) { }
	/* Exception.Destroy */ inline __fastcall virtual ~ETokenException() { }
	
};


//-- var, const, procedure ---------------------------------------------------
extern DELPHI_PACKAGE void __fastcall UXlsTokenArray_ArrangeInsertRowsAndCols(const Fmx::Tmsfncxlsmessages::PArrayOfByte Data, const int atPos, const int afPos, const int InsRowPos, const int InsRowOffset, const int CopyRowOffset, const int InsColPos, const int InsColOffset, const int CopyColOffset, const Fmx::Tmsfncxlsmessages::TSheetInfo &SheetInfo, const bool AllowedAbsolute);
extern DELPHI_PACKAGE void __fastcall UXlsTokenArray_ArrangeInsertSheets(const Fmx::Tmsfncxlsmessages::PArrayOfByte Data, const int atPos, const int afPos, const Fmx::Tmsfncxlsmessages::TSheetInfo &SheetInfo);
extern DELPHI_PACKAGE void __fastcall UXlsTokenArray_ArrangeSharedFormulas(const Fmx::Tmsfncxlsmessages::PArrayOfByte Data, const int atPos, const int afPos, const int SharedRow, const int SharedCol);
}	/* namespace Tmsfncuxlstokenarray */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCUXLSTOKENARRAY)
using namespace Fmx::Tmsfncuxlstokenarray;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncuxlstokenarrayHPP
