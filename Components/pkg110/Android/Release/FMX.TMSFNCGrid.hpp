// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCGrid.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncgridHPP
#define Fmx_TmsfncgridHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <FMX.TMSFNCCustomGrid.hpp>
#include <FMX.TMSFNCGridData.hpp>
#include <System.UITypes.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.TMSFNCCustomScrollControl.hpp>
#include <FMX.TMSFNCCustomControl.hpp>
#include <FMX.Controls.hpp>
#include <FMX.Types.hpp>
#include <System.Generics.Collections.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>
#include <System.Types.hpp>
#include <FMX.TMSFNCGraphicsTypes.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncgrid
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCGrid;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TTMSFNCGrid : public Fmx::Tmsfnccustomgrid::TTMSFNCCustomGrid
{
	typedef Fmx::Tmsfnccustomgrid::TTMSFNCCustomGrid inherited;
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	
__published:
	__property Adapter;
	__property HorizontalScrollBarVisible = {default=1};
	__property VerticalScrollBarVisible = {default=1};
	__property Columns;
	__property ToolBarPopup;
	__property ToolBarPopupMode = {default=0};
	__property Version = {default=0};
	__property Fill;
	__property DefaultFont;
	__property Stroke;
	__property TopRow;
	__property Appearance;
	__property LeftCol;
	__property ScrollMode = {default=0};
	__property ScrollUpdate = {default=0};
	__property CustomScrollBars = {default=0};
	__property FreezeColumns = {default=0};
	__property FreezeRows = {default=0};
	__property GlobalFont;
	__property DesignTimeSampleData;
	__property OnTopLeftChanged;
	__property OnGetCellClass;
	__property OnGetCellData;
	__property OnGetCellRotation;
	__property OnGetCellProperties;
	__property OnGetCellLayout;
	__property OnGetCellMergeInfo;
	__property OnGetCellReadOnly;
	__property OnGetRowIsBand;
	__property OnCanInsertRow;
	__property OnCanAppendRow;
	__property OnCanAppendColumn;
	__property OnCanDeleteRow;
	__property OnInsertRow;
	__property OnAppendRow;
	__property OnAppendColumn;
	__property OnDeleteRow;
	__property OnCellAnchorClick;
	__property OnGetCellEditorCustomClassType;
	__property OnGetCellEditorType;
	__property OnCellEditGetData;
	__property OnCellEditValidateData;
	__property OnCellEditSetData;
	__property OnCellEditGetColor;
	__property OnCellEditValidateColor;
	__property OnCellEditSetColor;
	__property OnCellEditDone;
	__property OnCellEditCancel;
	__property OnGetCellEditorProperties;
	__property OnGetCellIsFixed;
	__property OnFixedCellDropDownButtonClick;
	__property OnCellComboCloseUp;
	__property OnCellBeforeDraw;
	__property OnCellAfterDraw;
	__property OnCellBitmapClick;
	__property OnCellRadioButtonClick;
	__property OnCellCheckBoxClick;
	__property OnCellButtonClick;
	__property OnCellCommentClick;
	__property OnCellSortClick;
	__property OnCellNodeClick;
	__property OnCanSizeColumn;
	__property OnCanSizeRow;
	__property OnColumnSize;
	__property OnRowSize;
	__property OnColumnSized;
	__property OnRowSized;
	__property OnCanDragColumn;
	__property OnCanDragRow;
	__property OnColumnDragged;
	__property OnRowDragged;
	__property OnBeforeColumnDrop;
	__property OnBeforeCellEditExit;
	__property OnBeforeRowDrop;
	__property OnColumnSorted;
	__property OnCanSortColumn;
	__property OnCellRightClick;
	__property OnFixedCellRightClick;
	__property OnCellClick;
	__property OnFixedCellClick;
	__property OnCellDblClick;
	__property OnFixedCellDblClick;
	__property OnSelectCell;
	__property OnSelectedCell;
public:
	/* TTMSFNCCustomGrid.Create */ inline __fastcall virtual TTMSFNCGrid(System::Classes::TComponent* AOwner) : Fmx::Tmsfnccustomgrid::TTMSFNCCustomGrid(AOwner) { }
	/* TTMSFNCCustomGrid.Destroy */ inline __fastcall virtual ~TTMSFNCGrid() { }
	
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Tmsfncgrid */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCGRID)
using namespace Fmx::Tmsfncgrid;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncgridHPP
