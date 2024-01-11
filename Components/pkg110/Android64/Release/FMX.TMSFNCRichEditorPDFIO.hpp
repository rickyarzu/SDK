// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCRichEditorPDFIO.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncricheditorpdfioHPP
#define Fmx_TmsfncricheditorpdfioHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <System.Types.hpp>
#include <FMX.TMSFNCPDFLib.hpp>
#include <FMX.TMSFNCRichEditorBase.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.TMSFNCPDFIO.hpp>
#include <FMX.TMSFNCRichEditorIO.hpp>
#include <FMX.TMSFNCGraphicsTypes.hpp>
#include <FMX.TMSFNCCustomComponent.hpp>
#include <FMX.Controls.hpp>
#include <FMX.Types.hpp>
#include <System.Generics.Collections.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncricheditorpdfio
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCRichEditorPDFIOOptions;
class DELPHICLASS TTMSFNCCustomRichEditorPDFIO;
class DELPHICLASS TTMSFNCRichEditorPDFIO;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TTMSFNCRichEditorPDFIOOptions : public Fmx::Tmsfncpdfio::TTMSFNCPDFIOOptions
{
	typedef Fmx::Tmsfncpdfio::TTMSFNCPDFIOOptions inherited;
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual TTMSFNCRichEditorPDFIOOptions();
public:
	/* TTMSFNCPDFIOOptions.Destroy */ inline __fastcall virtual ~TTMSFNCRichEditorPDFIOOptions() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCustomRichEditorPDFIO : public Fmx::Tmsfncpdfio::TTMSFNCCustomPDFIO
{
	typedef Fmx::Tmsfncpdfio::TTMSFNCCustomPDFIO inherited;
	
private:
	TTMSFNCRichEditorPDFIOOptions* __fastcall GetOptions();
	HIDESBASE void __fastcall SetOptions(TTMSFNCRichEditorPDFIOOptions* const Value);
	Fmx::Tmsfncricheditorbase::TTMSFNCRichEditorBase* __fastcall GetRichEditor();
	void __fastcall SetRichEditor(Fmx::Tmsfncricheditorbase::TTMSFNCRichEditorBase* const Value);
	
protected:
	virtual System::UnicodeString __fastcall GetDocURL();
	virtual System::UnicodeString __fastcall GetVersion();
	virtual Fmx::Tmsfncpdfio::TTMSFNCPDFIOOptions* __fastcall CreateOptions();
	virtual void __fastcall DoPDFExport(Fmx::Tmsfncpdflib::TTMSFNCPDFLib* const APDFLib, System::Classes::TComponent* const AExportObject, const System::Types::TRectF &AExportRect)/* overload */;
	virtual void __fastcall DoPDFExportRichEditor(Fmx::Tmsfncpdflib::TTMSFNCPDFLib* const APDFLib, Fmx::Tmsfncricheditorbase::TTMSFNCRichEditorBase* const ARichEditor);
	__property Fmx::Tmsfncricheditorbase::TTMSFNCRichEditorBase* RichEditor = {read=GetRichEditor, write=SetRichEditor};
	__property System::UnicodeString Version = {read=GetVersion};
	__property TTMSFNCRichEditorPDFIOOptions* Options = {read=GetOptions, write=SetOptions};
	
public:
	__fastcall virtual TTMSFNCCustomRichEditorPDFIO(System::Classes::TComponent* AOwner);
public:
	/* TTMSFNCCustomPDFIO.Destroy */ inline __fastcall virtual ~TTMSFNCCustomRichEditorPDFIO() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCRichEditorPDFIO : public TTMSFNCCustomRichEditorPDFIO
{
	typedef TTMSFNCCustomRichEditorPDFIO inherited;
	
__published:
	__property RichEditor;
	__property Version = {default=0};
	__property Options;
	__property Information;
	__property OnGetHeader;
	__property OnGetFooter;
	__property OnBeforeDrawHeader;
	__property OnAfterDrawHeader;
	__property OnBeforeDrawFooter;
	__property OnAfterDrawFooter;
	__property OnBeforeDrawContent;
	__property OnAfterDrawContent;
public:
	/* TTMSFNCCustomRichEditorPDFIO.Create */ inline __fastcall virtual TTMSFNCRichEditorPDFIO(System::Classes::TComponent* AOwner) : TTMSFNCCustomRichEditorPDFIO(AOwner) { }
	
public:
	/* TTMSFNCCustomPDFIO.Destroy */ inline __fastcall virtual ~TTMSFNCRichEditorPDFIO() { }
	
};


//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x0);
static constexpr System::Int8 BLD_VER = System::Int8(0x1);
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCRichEditorPDFIORichEditorNotAssigned;
#define Fmx_Tmsfncricheditorpdfio_sTMSFNCRichEditorPDFIORichEditorNotAssigned System::LoadResourceString(&Fmx::Tmsfncricheditorpdfio::_sTMSFNCRichEditorPDFIORichEditorNotAssigned)
}	/* namespace Tmsfncricheditorpdfio */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCRICHEDITORPDFIO)
using namespace Fmx::Tmsfncricheditorpdfio;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncricheditorpdfioHPP
