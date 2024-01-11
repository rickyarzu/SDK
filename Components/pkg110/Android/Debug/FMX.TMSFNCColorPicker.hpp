// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCColorPicker.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfnccolorpickerHPP
#define Fmx_TmsfnccolorpickerHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <FMX.TMSFNCCustomPicker.hpp>
#include <FMX.Controls.hpp>
#include <FMX.TMSFNCColorSelector.hpp>
#include <FMX.TMSFNCCustomSelector.hpp>
#include <FMX.TMSFNCGraphics.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.TMSFNCGraphicsTypes.hpp>
#include <System.Types.hpp>
#include <FMX.TMSFNCCustomControl.hpp>
#include <FMX.Types.hpp>
#include <System.Generics.Collections.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>
#include <System.UITypes.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfnccolorpicker
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCColorSelectorEx;
class DELPHICLASS TTMSFNCCustomColorPicker;
class DELPHICLASS TTMSFNCColorPicker;
//-- type declarations -------------------------------------------------------
#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCColorSelectorEx : public Fmx::Tmsfnccolorselector::TTMSFNCColorSelector
{
	typedef Fmx::Tmsfnccolorselector::TTMSFNCColorSelector inherited;
	
private:
	TTMSFNCCustomColorPicker* FPicker;
	
protected:
	virtual void __fastcall WrapperSizeChanged(float AWidth, float AHeight);
	
public:
	__fastcall virtual TTMSFNCColorSelectorEx(System::Classes::TComponent* AOwner);
public:
	/* TTMSFNCCustomSelector.Destroy */ inline __fastcall virtual ~TTMSFNCColorSelectorEx() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCustomColorPicker : public Fmx::Tmsfnccustompicker::TTMSFNCDefaultPicker
{
	typedef Fmx::Tmsfnccustompicker::TTMSFNCDefaultPicker inherited;
	
private:
	Fmx::Tmsfnccolorselector::TTMSFNCColorSelector* FColorSelector;
	Fmx::Tmsfnccolorselector::TTMSFNCCustomSelectorColorSelected FOnColorSelected;
	bool FCloseOnSelection;
	Fmx::Tmsfnccolorselector::TTMSFNCCustomSelectorColorDeselected FOnColorDeselected;
	System::Uitypes::TAlphaColor __fastcall GetSelectedColor();
	void __fastcall SetSelectedColor(const System::Uitypes::TAlphaColor Value);
	HIDESBASE Fmx::Tmsfnccolorselector::TTMSFNCColorSelectorItems* __fastcall GetItems();
	HIDESBASE void __fastcall SetItems(Fmx::Tmsfnccolorselector::TTMSFNCColorSelectorItems* const Value);
	Fmx::Tmsfnccolorselector::TTMSFNCCustomColorSelectorMode __fastcall GetMode();
	void __fastcall SetMode(const Fmx::Tmsfnccolorselector::TTMSFNCCustomColorSelectorMode Value);
	
protected:
	virtual void __fastcall ChangeDPIScale(int M, int D);
	virtual void __fastcall DoColorSelected();
	void __fastcall ColorSelected(System::TObject* Sender, System::Uitypes::TAlphaColor AColor);
	void __fastcall ColorDeselected(System::TObject* Sender, System::Uitypes::TAlphaColor AColor);
	virtual void __fastcall DrawContent(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	virtual void __fastcall SelectFirstValue();
	virtual void __fastcall SelectLastValue();
	virtual void __fastcall SelectNextValue();
	virtual void __fastcall SelectPreviousValue();
	virtual System::UnicodeString __fastcall GetVersion();
	virtual Fmx::Tmsfnccustomselector::TTMSFNCCustomSelector* __fastcall CreateSelector();
	virtual Fmx::Controls::TControl* __fastcall GetFocusedControl();
	__property bool CloseOnSelection = {read=FCloseOnSelection, write=FCloseOnSelection, default=1};
	__property Fmx::Tmsfnccolorselector::TTMSFNCCustomSelectorColorSelected OnColorSelected = {read=FOnColorSelected, write=FOnColorSelected};
	__property Fmx::Tmsfnccolorselector::TTMSFNCCustomSelectorColorDeselected OnColorDeselected = {read=FOnColorDeselected, write=FOnColorDeselected};
	__property System::Uitypes::TAlphaColor SelectedColor = {read=GetSelectedColor, write=SetSelectedColor, default=0};
	__property Fmx::Tmsfnccolorselector::TTMSFNCColorSelectorItems* Items = {read=GetItems, write=SetItems};
	__property Fmx::Tmsfnccolorselector::TTMSFNCCustomColorSelectorMode Mode = {read=GetMode, write=SetMode, default=0};
	
public:
	__fastcall virtual TTMSFNCCustomColorPicker(System::Classes::TComponent* AOwner);
public:
	/* TTMSFNCCustomPicker.Destroy */ inline __fastcall virtual ~TTMSFNCCustomColorPicker() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCColorPicker : public TTMSFNCCustomColorPicker
{
	typedef TTMSFNCCustomColorPicker inherited;
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	
__published:
	__property DropDownWidth;
	__property DropDownHeight;
	__property Appearance;
	__property Rows = {default=4};
	__property Columns = {default=4};
	__property Items;
	__property Mode = {default=0};
	__property CloseOnSelection = {default=1};
	__property OnColorSelected;
	__property OnColorDeselected;
	__property SelectedColor = {default=0};
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
	/* TTMSFNCCustomColorPicker.Create */ inline __fastcall virtual TTMSFNCColorPicker(System::Classes::TComponent* AOwner) : TTMSFNCCustomColorPicker(AOwner) { }
	
public:
	/* TTMSFNCCustomPicker.Destroy */ inline __fastcall virtual ~TTMSFNCColorPicker() { }
	
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x0);
static constexpr System::Int8 BLD_VER = System::Int8(0x1);
}	/* namespace Tmsfnccolorpicker */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCCOLORPICKER)
using namespace Fmx::Tmsfnccolorpicker;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfnccolorpickerHPP
