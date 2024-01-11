// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCFillKindPicker.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncfillkindpickerHPP
#define Fmx_TmsfncfillkindpickerHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <FMX.TMSFNCCustomPicker.hpp>
#include <FMX.TMSFNCFillKindSelector.hpp>
#include <FMX.TMSFNCGraphics.hpp>
#include <FMX.TMSFNCCustomSelector.hpp>
#include <FMX.TMSFNCGraphicsTypes.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <System.Types.hpp>
#include <FMX.TMSFNCCustomControl.hpp>
#include <FMX.Controls.hpp>
#include <FMX.Types.hpp>
#include <System.Generics.Collections.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncfillkindpicker
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCCustomFillKindPicker;
class DELPHICLASS TTMSFNCFillKindPicker;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TTMSFNCCustomFillKindPicker : public Fmx::Tmsfnccustompicker::TTMSFNCDefaultPicker
{
	typedef Fmx::Tmsfnccustompicker::TTMSFNCDefaultPicker inherited;
	
private:
	Fmx::Tmsfncfillkindselector::TTMSFNCFillKindSelector* FFillKindSelector;
	Fmx::Tmsfncfillkindselector::TTMSFNCCustomFillKindSelectorFillKindSelected FOnFillKindSelected;
	Fmx::Tmsfncfillkindselector::TTMSFNCCustomFillKindSelectorFillKindDeselected FOnFillKindDeselected;
	bool FCloseOnSelection;
	HIDESBASE void __fastcall SetItems(Fmx::Tmsfncfillkindselector::TTMSFNCFillKindSelectorItems* const Value);
	void __fastcall SetSelectedFillKind(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFillKind Value);
	HIDESBASE Fmx::Tmsfncfillkindselector::TTMSFNCFillKindSelectorItems* __fastcall GetItems();
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFillKind __fastcall GetSelectedFillKind();
	
protected:
	virtual void __fastcall ChangeDPIScale(int M, int D);
	virtual void __fastcall DrawContent(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	virtual void __fastcall DoFillKindSelected();
	void __fastcall FillKindSelected(System::TObject* Sender, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFillKind AFillKind);
	void __fastcall FillKindDeselected(System::TObject* Sender, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFillKind AFillKind);
	virtual void __fastcall SelectFirstValue();
	virtual void __fastcall SelectLastValue();
	virtual void __fastcall SelectNextValue();
	virtual void __fastcall SelectPreviousValue();
	virtual System::UnicodeString __fastcall GetVersion();
	virtual Fmx::Tmsfnccustomselector::TTMSFNCCustomSelector* __fastcall CreateSelector();
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFillKind SelectedFillKind = {read=GetSelectedFillKind, write=SetSelectedFillKind, default=0};
	__property Fmx::Tmsfncfillkindselector::TTMSFNCFillKindSelectorItems* Items = {read=GetItems, write=SetItems};
	__property bool CloseOnSelection = {read=FCloseOnSelection, write=FCloseOnSelection, default=1};
	__property Fmx::Tmsfncfillkindselector::TTMSFNCCustomFillKindSelectorFillKindSelected OnFillKindSelected = {read=FOnFillKindSelected, write=FOnFillKindSelected};
	__property Fmx::Tmsfncfillkindselector::TTMSFNCCustomFillKindSelectorFillKindDeselected OnFillKindDeselected = {read=FOnFillKindDeselected, write=FOnFillKindDeselected};
	
public:
	__fastcall virtual TTMSFNCCustomFillKindPicker(System::Classes::TComponent* AOwner);
public:
	/* TTMSFNCCustomPicker.Destroy */ inline __fastcall virtual ~TTMSFNCCustomFillKindPicker() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCFillKindPicker : public TTMSFNCCustomFillKindPicker
{
	typedef TTMSFNCCustomFillKindPicker inherited;
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	
__published:
	__property DropDownWidth;
	__property DropDownHeight;
	__property Appearance;
	__property Rows = {default=4};
	__property Columns = {default=4};
	__property Items;
	__property CloseOnSelection = {default=1};
	__property OnFillKindSelected;
	__property OnFillKindDeselected;
	__property SelectedFillKind = {default=0};
	__property OnItemSelected;
	__property OnItemDeselected;
	__property OnItemClick;
	__property SelectedItemIndex = {default=-1};
	__property OnPickerBeforeDraw;
	__property OnPickerAfterDraw;
	__property OnItemBeforeDrawBackground;
	__property OnItemAfterDrawBackground;
	__property OnItemBeforeDrawContent;
	__property OnItemAfterDrawContent;
	__property OnBeforeDraw;
	__property OnAfterDraw;
	__property OnItemBeforeDrawText;
	__property OnItemAfterDrawText;
public:
	/* TTMSFNCCustomFillKindPicker.Create */ inline __fastcall virtual TTMSFNCFillKindPicker(System::Classes::TComponent* AOwner) : TTMSFNCCustomFillKindPicker(AOwner) { }
	
public:
	/* TTMSFNCCustomPicker.Destroy */ inline __fastcall virtual ~TTMSFNCFillKindPicker() { }
	
};


//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x1);
static constexpr System::Int8 BLD_VER = System::Int8(0x0);
}	/* namespace Tmsfncfillkindpicker */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCFILLKINDPICKER)
using namespace Fmx::Tmsfncfillkindpicker;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncfillkindpickerHPP
