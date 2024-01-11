// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCStrokeKindPicker.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncstrokekindpickerHPP
#define Fmx_TmsfncstrokekindpickerHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <FMX.TMSFNCCustomPicker.hpp>
#include <FMX.TMSFNCStrokeKindSelector.hpp>
#include <FMX.TMSFNCGraphicsTypes.hpp>
#include <FMX.TMSFNCCustomSelector.hpp>
#include <FMX.TMSFNCGraphics.hpp>
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
namespace Tmsfncstrokekindpicker
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCCustomStrokeKindPicker;
class DELPHICLASS TTMSFNCStrokeKindPicker;
//-- type declarations -------------------------------------------------------
#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCustomStrokeKindPicker : public Fmx::Tmsfnccustompicker::TTMSFNCDefaultPicker
{
	typedef Fmx::Tmsfnccustompicker::TTMSFNCDefaultPicker inherited;
	
private:
	Fmx::Tmsfncstrokekindselector::TTMSFNCStrokeKindSelector* FStrokeKindSelector;
	bool FCloseOnSelection;
	Fmx::Tmsfncstrokekindselector::TTMSFNCCustomStrokeKindSelectorStrokeKindSelected FOnStrokeKindSelected;
	Fmx::Tmsfncstrokekindselector::TTMSFNCCustomStrokeKindSelectorStrokeKindDeselected FOnStrokeKindDeselected;
	HIDESBASE void __fastcall SetItems(Fmx::Tmsfncstrokekindselector::TTMSFNCStrokeKindSelectorItems* const Value);
	void __fastcall SetSelectedStrokeKind(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStrokeKind Value);
	HIDESBASE Fmx::Tmsfncstrokekindselector::TTMSFNCStrokeKindSelectorItems* __fastcall GetItems();
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStrokeKind __fastcall GetSelectedStrokeKind();
	
protected:
	virtual void __fastcall DoStrokeKindSelected();
	void __fastcall StrokeKindSelected(System::TObject* Sender, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStrokeKind AStrokeKind);
	void __fastcall StrokeKindDeselected(System::TObject* Sender, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStrokeKind AStrokeKind);
	virtual void __fastcall DrawContent(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	virtual void __fastcall SelectFirstValue();
	virtual void __fastcall SelectLastValue();
	virtual void __fastcall SelectNextValue();
	virtual void __fastcall SelectPreviousValue();
	virtual System::UnicodeString __fastcall GetVersion();
	virtual Fmx::Tmsfnccustomselector::TTMSFNCCustomSelector* __fastcall CreateSelector();
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStrokeKind SelectedStrokeKind = {read=GetSelectedStrokeKind, write=SetSelectedStrokeKind, default=1};
	__property Fmx::Tmsfncstrokekindselector::TTMSFNCStrokeKindSelectorItems* Items = {read=GetItems, write=SetItems};
	__property bool CloseOnSelection = {read=FCloseOnSelection, write=FCloseOnSelection, default=1};
	__property Fmx::Tmsfncstrokekindselector::TTMSFNCCustomStrokeKindSelectorStrokeKindSelected OnStrokeKindSelected = {read=FOnStrokeKindSelected, write=FOnStrokeKindSelected};
	__property Fmx::Tmsfncstrokekindselector::TTMSFNCCustomStrokeKindSelectorStrokeKindDeselected OnStrokeKindDeselected = {read=FOnStrokeKindDeselected, write=FOnStrokeKindDeselected};
	
public:
	__fastcall virtual TTMSFNCCustomStrokeKindPicker(System::Classes::TComponent* AOwner);
public:
	/* TTMSFNCCustomPicker.Destroy */ inline __fastcall virtual ~TTMSFNCCustomStrokeKindPicker() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCStrokeKindPicker : public TTMSFNCCustomStrokeKindPicker
{
	typedef TTMSFNCCustomStrokeKindPicker inherited;
	
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
	__property SelectedStrokeKind = {default=1};
	__property OnStrokeKindSelected;
	__property OnStrokeKindDeselected;
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
	/* TTMSFNCCustomStrokeKindPicker.Create */ inline __fastcall virtual TTMSFNCStrokeKindPicker(System::Classes::TComponent* AOwner) : TTMSFNCCustomStrokeKindPicker(AOwner) { }
	
public:
	/* TTMSFNCCustomPicker.Destroy */ inline __fastcall virtual ~TTMSFNCStrokeKindPicker() { }
	
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x1);
static constexpr System::Int8 BLD_VER = System::Int8(0x0);
}	/* namespace Tmsfncstrokekindpicker */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCSTROKEKINDPICKER)
using namespace Fmx::Tmsfncstrokekindpicker;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncstrokekindpickerHPP
