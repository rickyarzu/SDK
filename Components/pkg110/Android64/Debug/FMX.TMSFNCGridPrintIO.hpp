// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCGridPrintIO.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncgridprintioHPP
#define Fmx_TmsfncgridprintioHPP

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
#include <FMX.TMSFNCGraphics.hpp>
#include <FMX.TMSFNCGridData.hpp>
#include <FMX.TMSFNCGridCell.hpp>
#include <FMX.TMSFNCPrintIO.hpp>
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
namespace Tmsfncgridprintio
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCGridPrintIOOptions;
class DELPHICLASS TTMSFNCCustomGridPrintIO;
class DELPHICLASS TTMSFNCGridPrintIO;
//-- type declarations -------------------------------------------------------
enum DECLSPEC_DENUM TTMSFNCGridPrintIOCellLayout : unsigned char { gclFull, gclColor, gclNone };

class PASCALIMPLEMENTATION TTMSFNCGridPrintIOOptions : public Fmx::Tmsfncprintio::TTMSFNCPrintIOOptions
{
	typedef Fmx::Tmsfncprintio::TTMSFNCPrintIOOptions inherited;
	
private:
	TTMSFNCGridPrintIOCellLayout FCellLayout;
	bool FFitToPage;
	bool FRepeatFixedColumns;
	bool FRepeatFixedRows;
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual TTMSFNCGridPrintIOOptions();
	
__published:
	__property TTMSFNCGridPrintIOCellLayout CellLayout = {read=FCellLayout, write=FCellLayout, default=0};
	__property bool RepeatFixedColumns = {read=FRepeatFixedColumns, write=FRepeatFixedColumns, default=0};
	__property bool FitToPage = {read=FFitToPage, write=FFitToPage, default=1};
	__property bool RepeatFixedRows = {read=FRepeatFixedRows, write=FRepeatFixedRows, default=0};
public:
	/* TTMSFNCPrintIOOptions.Destroy */ inline __fastcall virtual ~TTMSFNCGridPrintIOOptions() { }
	
};


typedef void __fastcall (__closure *TTMSFNCGridPrintIORowIsPageBreakEvent)(System::TObject* Sender, System::Classes::TComponent* AExportObject, int ARow, bool &IsPageBreak);

class PASCALIMPLEMENTATION TTMSFNCCustomGridPrintIO : public Fmx::Tmsfncprintio::TTMSFNCCustomPrintIO
{
	typedef Fmx::Tmsfncprintio::TTMSFNCCustomPrintIO inherited;
	
private:
	TTMSFNCGridPrintIORowIsPageBreakEvent FOnRowIsPageBreak;
	Fmx::Tmsfnccustomgrid::TTMSFNCCustomGrid* __fastcall GetGrid();
	TTMSFNCGridPrintIOOptions* __fastcall GetOptions();
	void __fastcall SetGrid(Fmx::Tmsfnccustomgrid::TTMSFNCCustomGrid* const Value);
	HIDESBASE void __fastcall SetOptions(TTMSFNCGridPrintIOOptions* const Value);
	
protected:
	virtual Fmx::Tmsfncprintio::TTMSFNCPrintIOOptions* __fastcall CreateOptions();
	virtual NativeUInt __fastcall GetInstance();
	virtual System::UnicodeString __fastcall GetVersion();
	virtual void __fastcall DoPrintExport(Fmx::Tmsfncgraphics::TTMSFNCGraphics* const AGraphics, System::Classes::TComponent* const AExportObject, const System::Types::TRectF &AExportRect)/* overload */;
	virtual void __fastcall DoPrintGridExport(Fmx::Tmsfncgraphics::TTMSFNCGraphics* const AGraphics, Fmx::Tmsfnccustomgrid::TTMSFNCCustomGrid* const AGrid, const Fmx::Tmsfncgriddata::TTMSFNCGridCellRecRange &ASelection, const bool ASkipSaveBounds);
	virtual void __fastcall DoRowIsPageBreak(System::Classes::TComponent* AExportObject, int ARow, bool &IsPageBreak);
	__property Fmx::Tmsfnccustomgrid::TTMSFNCCustomGrid* Grid = {read=GetGrid, write=SetGrid};
	__property TTMSFNCGridPrintIOOptions* Options = {read=GetOptions, write=SetOptions};
	__property System::UnicodeString Version = {read=GetVersion};
	__property TTMSFNCGridPrintIORowIsPageBreakEvent OnRowIsPageBreak = {read=FOnRowIsPageBreak, write=FOnRowIsPageBreak};
	
public:
	__fastcall virtual TTMSFNCCustomGridPrintIO(System::Classes::TComponent* AOwner);
public:
	/* TTMSFNCCustomPrintIO.Destroy */ inline __fastcall virtual ~TTMSFNCCustomGridPrintIO() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCGridPrintIO : public TTMSFNCCustomGridPrintIO
{
	typedef TTMSFNCCustomGridPrintIO inherited;
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	
__published:
	__property Grid;
	__property Options;
	__property Version;
	__property OnAfterDrawContent;
	__property OnBeforeDrawContent;
	__property OnRowIsPageBreak;
public:
	/* TTMSFNCCustomGridPrintIO.Create */ inline __fastcall virtual TTMSFNCGridPrintIO(System::Classes::TComponent* AOwner) : TTMSFNCCustomGridPrintIO(AOwner) { }
	
public:
	/* TTMSFNCCustomPrintIO.Destroy */ inline __fastcall virtual ~TTMSFNCGridPrintIO() { }
	
};


//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x0);
static constexpr System::Int8 BLD_VER = System::Int8(0x0);
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCGridPDFIOGridNotAssigned;
#define Fmx_Tmsfncgridprintio_sTMSFNCGridPDFIOGridNotAssigned System::LoadResourceString(&Fmx::Tmsfncgridprintio::_sTMSFNCGridPDFIOGridNotAssigned)
}	/* namespace Tmsfncgridprintio */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCGRIDPRINTIO)
using namespace Fmx::Tmsfncgridprintio;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncgridprintioHPP
