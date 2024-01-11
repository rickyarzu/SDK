// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCGridPDFIO.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncgridpdfioHPP
#define Fmx_TmsfncgridpdfioHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <FMX.TMSFNCPDFLib.hpp>
#include <FMX.TMSFNCCustomGrid.hpp>
#include <System.Types.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.TMSFNCGridData.hpp>
#include <FMX.TMSFNCGridCell.hpp>
#include <FMX.TMSFNCPDFIO.hpp>
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
namespace Tmsfncgridpdfio
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCGridPDFIOOptions;
class DELPHICLASS TTMSFNCCustomGridPDFIO;
class DELPHICLASS TTMSFNCGridPDFIO;
//-- type declarations -------------------------------------------------------
enum DECLSPEC_DENUM TTMSFNCGridPDFIOCellLayout : unsigned char { gclFull, gclColor, gclNone };

class PASCALIMPLEMENTATION TTMSFNCGridPDFIOOptions : public Fmx::Tmsfncpdfio::TTMSFNCPDFIOOptions
{
	typedef Fmx::Tmsfncpdfio::TTMSFNCPDFIOOptions inherited;
	
private:
	bool FFitToPage;
	bool FRepeatFixedRows;
	bool FRepeatFixedColumns;
	TTMSFNCGridPDFIOCellLayout FCellLayout;
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual TTMSFNCGridPDFIOOptions();
	
__published:
	__property bool FitToPage = {read=FFitToPage, write=FFitToPage, default=1};
	__property bool RepeatFixedRows = {read=FRepeatFixedRows, write=FRepeatFixedRows, default=0};
	__property bool RepeatFixedColumns = {read=FRepeatFixedColumns, write=FRepeatFixedColumns, default=0};
	__property TTMSFNCGridPDFIOCellLayout CellLayout = {read=FCellLayout, write=FCellLayout, default=0};
public:
	/* TTMSFNCPDFIOOptions.Destroy */ inline __fastcall virtual ~TTMSFNCGridPDFIOOptions() { }
	
};


typedef void __fastcall (__closure *TTMSFNCGridPDFIORowIsPageBreakEvent)(System::TObject* Sender, System::Classes::TComponent* AExportObject, int ARow, bool &IsPageBreak);

class PASCALIMPLEMENTATION TTMSFNCCustomGridPDFIO : public Fmx::Tmsfncpdfio::TTMSFNCCustomPDFIO
{
	typedef Fmx::Tmsfncpdfio::TTMSFNCCustomPDFIO inherited;
	
private:
	TTMSFNCGridPDFIORowIsPageBreakEvent FOnRowIsPageBreak;
	TTMSFNCGridPDFIOOptions* __fastcall GetOptions();
	HIDESBASE void __fastcall SetOptions(TTMSFNCGridPDFIOOptions* const Value);
	Fmx::Tmsfnccustomgrid::TTMSFNCCustomGrid* __fastcall GetGrid();
	void __fastcall SetGrid(Fmx::Tmsfnccustomgrid::TTMSFNCCustomGrid* const Value);
	
protected:
	virtual NativeUInt __fastcall GetInstance();
	virtual System::UnicodeString __fastcall GetVersion();
	virtual Fmx::Tmsfncpdfio::TTMSFNCPDFIOOptions* __fastcall CreateOptions();
	virtual void __fastcall DoPDFExport(Fmx::Tmsfncpdflib::TTMSFNCPDFLib* const APDFLib, System::Classes::TComponent* const AExportObject, const System::Types::TRectF &AExportRect)/* overload */;
	virtual void __fastcall DoPDFGridExport(Fmx::Tmsfncpdflib::TTMSFNCPDFLib* const APDFLib, Fmx::Tmsfnccustomgrid::TTMSFNCCustomGrid* const AGrid, const Fmx::Tmsfncgriddata::TTMSFNCGridCellRecRange &ASelection, const bool ASkipSaveBounds);
	virtual void __fastcall DoRowIsPageBreak(System::Classes::TComponent* AExportObject, int ARow, bool &IsPageBreak);
	__property Fmx::Tmsfnccustomgrid::TTMSFNCCustomGrid* Grid = {read=GetGrid, write=SetGrid};
	__property System::UnicodeString Version = {read=GetVersion};
	__property TTMSFNCGridPDFIOOptions* Options = {read=GetOptions, write=SetOptions};
	__property TTMSFNCGridPDFIORowIsPageBreakEvent OnRowIsPageBreak = {read=FOnRowIsPageBreak, write=FOnRowIsPageBreak};
	
public:
	__fastcall virtual TTMSFNCCustomGridPDFIO(System::Classes::TComponent* AOwner);
public:
	/* TTMSFNCCustomPDFIO.Destroy */ inline __fastcall virtual ~TTMSFNCCustomGridPDFIO() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCGridPDFIO : public TTMSFNCCustomGridPDFIO
{
	typedef TTMSFNCCustomGridPDFIO inherited;
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	
__published:
	__property Grid;
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
	__property OnRowIsPageBreak;
public:
	/* TTMSFNCCustomGridPDFIO.Create */ inline __fastcall virtual TTMSFNCGridPDFIO(System::Classes::TComponent* AOwner) : TTMSFNCCustomGridPDFIO(AOwner) { }
	
public:
	/* TTMSFNCCustomPDFIO.Destroy */ inline __fastcall virtual ~TTMSFNCGridPDFIO() { }
	
};


//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x0);
static constexpr System::Int8 BLD_VER = System::Int8(0x7);
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCGridPDFIOGridNotAssigned;
#define Fmx_Tmsfncgridpdfio_sTMSFNCGridPDFIOGridNotAssigned System::LoadResourceString(&Fmx::Tmsfncgridpdfio::_sTMSFNCGridPDFIOGridNotAssigned)
}	/* namespace Tmsfncgridpdfio */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCGRIDPDFIO)
using namespace Fmx::Tmsfncgridpdfio;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncgridpdfioHPP
