// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCPDFImageBook.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncpdfimagebookHPP
#define Fmx_TmsfncpdfimagebookHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <System.SysUtils.hpp>
#include <FMX.TMSFNCPDFLib.hpp>
#include <FMX.TMSFNCPDFGraphicsLib.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncpdfimagebook
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCPDFImageBook;
//-- type declarations -------------------------------------------------------
enum DECLSPEC_DENUM TTMSFNCPDFImageBookPageNumberPosition : unsigned char { pnNone, pnTopLeft, pnTopCenter, pnTopRight, pnBottomLeft, pnBottomCenter, pnBottomRight };

typedef void __fastcall (__closure *TTMSFNCPDFImageBookPageInfoEvent)(System::TObject* Sender, int PageIndex, System::UnicodeString &Header, System::UnicodeString &Footer);

typedef void __fastcall (__closure *TTMSFNCPDFImageBookPageDrawEvent)(System::TObject* Sender, int PageIndex, Fmx::Tmsfncpdfgraphicslib::_di_ITMSFNCCustomPDFGraphicsLib Graphics);

class PASCALIMPLEMENTATION TTMSFNCPDFImageBook : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	System::UnicodeString FPageNumberFormat;
	TTMSFNCPDFImageBookPageNumberPosition FPageNumberPosition;
	System::UnicodeString FTitle;
	TTMSFNCPDFImageBookPageInfoEvent FOnGetPageInfo;
	TTMSFNCPDFImageBookPageDrawEvent FOnAfterPageDraw;
	TTMSFNCPDFImageBookPageDrawEvent FOnBeforePageDraw;
	
protected:
	virtual void __fastcall DoGetPageInfo(int PageIndex, System::UnicodeString &Header, System::UnicodeString &Footer);
	virtual void __fastcall DoBeforePageDraw(int PageIndex, Fmx::Tmsfncpdfgraphicslib::_di_ITMSFNCCustomPDFGraphicsLib Graphics);
	virtual void __fastcall DoAfterPageDraw(int PageIndex, Fmx::Tmsfncpdfgraphicslib::_di_ITMSFNCCustomPDFGraphicsLib Graphics);
	
public:
	__fastcall TTMSFNCPDFImageBook();
	void __fastcall GenerateBook(System::UnicodeString FileName, System::Classes::TStrings* Images);
	__property System::UnicodeString Title = {read=FTitle, write=FTitle};
	__property System::UnicodeString PageNumberFormat = {read=FPageNumberFormat, write=FPageNumberFormat};
	__property TTMSFNCPDFImageBookPageNumberPosition PageNumberPosition = {read=FPageNumberPosition, write=FPageNumberPosition, default=5};
	__property TTMSFNCPDFImageBookPageInfoEvent OnGetPageInfo = {read=FOnGetPageInfo, write=FOnGetPageInfo};
	__property TTMSFNCPDFImageBookPageDrawEvent OnBeforePageDraw = {read=FOnBeforePageDraw, write=FOnBeforePageDraw};
	__property TTMSFNCPDFImageBookPageDrawEvent OnAfterPageDraw = {read=FOnAfterPageDraw, write=FOnAfterPageDraw};
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TTMSFNCPDFImageBook() { }
	
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Tmsfncpdfimagebook */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCPDFIMAGEBOOK)
using namespace Fmx::Tmsfncpdfimagebook;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncpdfimagebookHPP
