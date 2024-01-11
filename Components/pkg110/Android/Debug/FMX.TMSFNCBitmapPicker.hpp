// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCBitmapPicker.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncbitmappickerHPP
#define Fmx_TmsfncbitmappickerHPP

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
#include <FMX.TMSFNCCustomSelector.hpp>
#include <FMX.TMSFNCGraphics.hpp>
#include <FMX.TMSFNCBitmapSelector.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.TMSFNCBitmapContainer.hpp>
#include <System.Types.hpp>
#include <FMX.TMSFNCCustomControl.hpp>
#include <FMX.Types.hpp>
#include <System.Generics.Collections.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncbitmappicker
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCCustomBitmapPicker;
class DELPHICLASS TTMSFNCBitmapPicker;
//-- type declarations -------------------------------------------------------
#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCustomBitmapPicker : public Fmx::Tmsfnccustompicker::TTMSFNCDefaultPicker
{
	typedef Fmx::Tmsfnccustompicker::TTMSFNCDefaultPicker inherited;
	
private:
	Fmx::Tmsfncbitmapselector::TTMSFNCBitmapSelector* FBitmapSelector;
	Fmx::Tmsfncbitmapselector::TTMSFNCCustomSelectorBitmapSelected FOnBitmapSelected;
	bool FCloseOnSelection;
	Fmx::Tmsfncbitmapselector::TTMSFNCCustomSelectorBitmapDeselected FOnBitmapDeselected;
	Fmx::Tmsfnctypes::TTMSFNCBitmap* __fastcall GetSelectedBitmap();
	Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* __fastcall GetBitmapContainer();
	void __fastcall SetBitmapContainer(Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* const Value);
	HIDESBASE Fmx::Tmsfncbitmapselector::TTMSFNCBitmapSelectorItems* __fastcall GetItems();
	HIDESBASE void __fastcall SetItems(Fmx::Tmsfncbitmapselector::TTMSFNCBitmapSelectorItems* const Value);
	
protected:
	virtual void __fastcall DoBitmapSelected();
	void __fastcall BitmapSelected(System::TObject* Sender, Fmx::Tmsfnctypes::TTMSFNCBitmap* ABitmap);
	void __fastcall BitmapDeselected(System::TObject* Sender, Fmx::Tmsfnctypes::TTMSFNCBitmap* ABitmap);
	virtual void __fastcall DrawContent(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	virtual void __fastcall SelectFirstValue();
	virtual void __fastcall SelectLastValue();
	virtual void __fastcall SelectNextValue();
	virtual void __fastcall SelectPreviousValue();
	virtual System::UnicodeString __fastcall GetVersion();
	virtual Fmx::Tmsfnccustomselector::TTMSFNCCustomSelector* __fastcall CreateSelector();
	virtual Fmx::Controls::TControl* __fastcall GetFocusedControl();
	__property bool CloseOnSelection = {read=FCloseOnSelection, write=FCloseOnSelection, default=0};
	__property Fmx::Tmsfncbitmapselector::TTMSFNCCustomSelectorBitmapSelected OnBitmapSelected = {read=FOnBitmapSelected, write=FOnBitmapSelected};
	__property Fmx::Tmsfncbitmapselector::TTMSFNCCustomSelectorBitmapDeselected OnBitmapDeselected = {read=FOnBitmapDeselected, write=FOnBitmapDeselected};
	__property Fmx::Tmsfnctypes::TTMSFNCBitmap* SelectedBitmap = {read=GetSelectedBitmap};
	__property Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* BitmapContainer = {read=GetBitmapContainer, write=SetBitmapContainer};
	__property Fmx::Tmsfncbitmapselector::TTMSFNCBitmapSelectorItems* Items = {read=GetItems, write=SetItems};
	
public:
	__fastcall virtual TTMSFNCCustomBitmapPicker(System::Classes::TComponent* AOwner);
	virtual void __fastcall LoadFromBitmapContainer();
	int __fastcall FindItemByBitmap(Fmx::Tmsfnctypes::TTMSFNCBitmap* ABitmap);
	Fmx::Tmsfnctypes::TTMSFNCBitmap* __fastcall FindBitmapByItem(int AItem);
public:
	/* TTMSFNCCustomPicker.Destroy */ inline __fastcall virtual ~TTMSFNCCustomBitmapPicker() { }
	
private:
	void *__ITMSFNCBitmapContainer;	// Fmx::Tmsfncbitmapcontainer::ITMSFNCBitmapContainer 
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {ED26710D-395F-4971-8AC9-A31083BF2A3C}
	operator Fmx::Tmsfncbitmapcontainer::_di_ITMSFNCBitmapContainer()
	{
		Fmx::Tmsfncbitmapcontainer::_di_ITMSFNCBitmapContainer intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator Fmx::Tmsfncbitmapcontainer::ITMSFNCBitmapContainer*(void) { return (Fmx::Tmsfncbitmapcontainer::ITMSFNCBitmapContainer*)&__ITMSFNCBitmapContainer; }
	#endif
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCBitmapPicker : public TTMSFNCCustomBitmapPicker
{
	typedef TTMSFNCCustomBitmapPicker inherited;
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	
public:
	__property SelectedBitmap;
	
__published:
	__property DropDownWidth;
	__property DropDownHeight;
	__property Appearance;
	__property Rows = {default=4};
	__property Columns = {default=4};
	__property Items;
	__property CloseOnSelection = {default=0};
	__property OnBitmapSelected;
	__property OnItemSelected;
	__property OnItemDeselected;
	__property OnItemClick;
	__property SelectedItemIndex = {default=-1};
	__property BitmapContainer;
	__property OnItemBeforeDrawContent;
	__property OnItemAfterDrawContent;
	__property OnItemBeforeDrawBackground;
	__property OnItemAfterDrawBackground;
	__property OnBeforeDraw;
	__property OnAfterDraw;
	__property OnItemBeforeDrawText;
	__property OnItemAfterDrawText;
public:
	/* TTMSFNCCustomBitmapPicker.Create */ inline __fastcall virtual TTMSFNCBitmapPicker(System::Classes::TComponent* AOwner) : TTMSFNCCustomBitmapPicker(AOwner) { }
	
public:
	/* TTMSFNCCustomPicker.Destroy */ inline __fastcall virtual ~TTMSFNCBitmapPicker() { }
	
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x0);
static constexpr System::Int8 BLD_VER = System::Int8(0x0);
}	/* namespace Tmsfncbitmappicker */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCBITMAPPICKER)
using namespace Fmx::Tmsfncbitmappicker;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncbitmappickerHPP
