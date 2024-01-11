// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCColorSelector.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfnccolorselectorHPP
#define Fmx_TmsfnccolorselectorHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <FMX.TMSFNCGraphics.hpp>
#include <FMX.TMSFNCCustomControl.hpp>
#include <FMX.TMSFNCCustomSelector.hpp>
#include <FMX.Controls.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.ExtCtrls.hpp>
#include <FMX.TMSFNCGraphicsTypes.hpp>
#include <FMX.StdCtrls.hpp>
#include <FMX.Types.hpp>
#include <System.Types.hpp>
#include <System.UITypes.hpp>
#include <System.Generics.Collections.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfnccolorselector
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCColorSelectorItem;
class DELPHICLASS TTMSFNCColorSelectorItems;
class DELPHICLASS TTMSFNCCustomColorSelector;
class DELPHICLASS TTMSFNCColorSelector;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TTMSFNCColorSelectorItem : public Fmx::Tmsfnccustomselector::TTMSFNCCustomSelectorItem
{
	typedef Fmx::Tmsfnccustomselector::TTMSFNCCustomSelectorItem inherited;
	
private:
	TTMSFNCCustomColorSelector* FOwner;
	System::Uitypes::TAlphaColor FColor;
	void __fastcall SetColor(const System::Uitypes::TAlphaColor Value);
	
public:
	__fastcall virtual TTMSFNCColorSelectorItem(System::Classes::TCollection* Collection);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property System::Uitypes::TAlphaColor Color = {read=FColor, write=SetColor, default=0};
public:
	/* TTMSFNCCustomSelectorItem.Destroy */ inline __fastcall virtual ~TTMSFNCColorSelectorItem() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCColorSelectorItems : public Fmx::Tmsfnccustomselector::TTMSFNCCustomSelectorItems
{
	typedef Fmx::Tmsfnccustomselector::TTMSFNCCustomSelectorItems inherited;
	
public:
	TTMSFNCColorSelectorItem* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCCustomColorSelector* FOwner;
	HIDESBASE TTMSFNCColorSelectorItem* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCColorSelectorItem* const Value);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall CreateItemClass();
	
public:
	__fastcall virtual TTMSFNCColorSelectorItems(Fmx::Tmsfnccustomselector::TTMSFNCCustomSelector* AOwner);
	__property TTMSFNCColorSelectorItem* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	HIDESBASE TTMSFNCColorSelectorItem* __fastcall Add();
	HIDESBASE TTMSFNCColorSelectorItem* __fastcall Insert(int Index);
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCColorSelectorItems() { }
	
};


typedef void __fastcall (__closure *TTMSFNCCustomSelectorColorSelected)(System::TObject* Sender, System::Uitypes::TAlphaColor AColor);

typedef void __fastcall (__closure *TTMSFNCCustomSelectorColorDeselected)(System::TObject* Sender, System::Uitypes::TAlphaColor AColor);

typedef void __fastcall (__closure *TTMSFNCCustomSelectorColorClick)(System::TObject* Sender, System::Uitypes::TAlphaColor AColor);

enum DECLSPEC_DENUM TTMSFNCCustomColorSelectorMode : unsigned char { csmSimple, csmExtended, csmExtendedMore };

class PASCALIMPLEMENTATION TTMSFNCCustomColorSelector : public Fmx::Tmsfnccustomselector::TTMSFNCDefaultSelector
{
	typedef Fmx::Tmsfnccustomselector::TTMSFNCDefaultSelector inherited;
	
private:
	float w;
	float h;
	Fmx::Tmsfnccustomcontrol::TTMSFNCCustomControl* FColorWheel;
	Fmx::Tmsfnccustomcontrol::TTMSFNCCustomControl* FPanel;
	Fmx::Stdctrls::TButton* FBackButton;
	TTMSFNCCustomSelectorColorSelected FOnColorSelected;
	TTMSFNCCustomSelectorColorDeselected FOnColorDeselected;
	TTMSFNCCustomColorSelectorMode FMode;
	void __fastcall SetSelectedColor(const System::Uitypes::TAlphaColor Value);
	System::Uitypes::TAlphaColor __fastcall GetSelectedColor();
	TTMSFNCColorSelectorItems* __fastcall GetItems();
	HIDESBASE void __fastcall SetItems(TTMSFNCColorSelectorItems* const Value);
	void __fastcall SetMode(const TTMSFNCCustomColorSelectorMode Value);
	
protected:
	virtual System::UnicodeString __fastcall GetVersion();
	void __fastcall BackButtonClicked(System::TObject* Sender);
	void __fastcall ColorWheelChange(System::TObject* Sender, System::Uitypes::TAlphaColor AColor);
	virtual void __fastcall DoItemClick(int AItemIndex);
	virtual void __fastcall WrapperSizeChanged(float AWidth, float AHeight);
	virtual void __fastcall DoItemSelected(int AItemIndex);
	virtual void __fastcall DoItemDeselected(int AItemIndex);
	virtual Fmx::Tmsfnccustomselector::TTMSFNCCustomSelectorItems* __fastcall CreateItemsCollection();
	virtual void __fastcall DoItemBeforeDrawContent(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AItemIndex, bool &ADefaultDraw);
	virtual void __fastcall DrawItemContent(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const Fmx::Tmsfnccustomselector::TTMSFNCCustomSelectorDisplayItem &ADisplayItem);
	__property TTMSFNCCustomSelectorColorSelected OnColorSelected = {read=FOnColorSelected, write=FOnColorSelected};
	__property TTMSFNCCustomSelectorColorDeselected OnColorDeselected = {read=FOnColorDeselected, write=FOnColorDeselected};
	__property System::Uitypes::TAlphaColor SelectedColor = {read=GetSelectedColor, write=SetSelectedColor, default=0};
	__property TTMSFNCColorSelectorItems* Items = {read=GetItems, write=SetItems};
	__property TTMSFNCCustomColorSelectorMode Mode = {read=FMode, write=SetMode, default=0};
	void __fastcall AddColors();
	virtual void __fastcall ResetToDefaultStyle();
	
public:
	__fastcall virtual TTMSFNCCustomColorSelector(System::Classes::TComponent* AOwner);
	int __fastcall FindItemByColor(System::Uitypes::TAlphaColor AColor);
	System::Uitypes::TAlphaColor __fastcall FindColorByItem(int AItem);
	bool __fastcall ColorWheelActive();
	virtual void __fastcall InitializeDefault();
	virtual void __fastcall InitSample();
public:
	/* TTMSFNCCustomSelector.Destroy */ inline __fastcall virtual ~TTMSFNCCustomColorSelector() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCColorSelector : public TTMSFNCCustomColorSelector
{
	typedef TTMSFNCCustomColorSelector inherited;
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	
__published:
	__property Appearance;
	__property Rows = {default=4};
	__property Columns = {default=4};
	__property Items;
	__property Mode = {default=0};
	__property OnColorSelected;
	__property OnColorDeselected;
	__property SelectedColor = {default=0};
	__property OnItemSelected;
	__property OnItemDeselected;
	__property OnItemClick;
	__property SelectedItemIndex = {default=-1};
	__property OnItemBeforeDrawBackground;
	__property OnItemAfterDrawBackground;
	__property OnItemBeforeDrawContent;
	__property OnItemAfterDrawContent;
	__property OnBeforeDraw;
	__property OnAfterDraw;
	__property OnItemBeforeDrawText;
	__property OnItemAfterDrawText;
public:
	/* TTMSFNCCustomColorSelector.Create */ inline __fastcall virtual TTMSFNCColorSelector(System::Classes::TComponent* AOwner) : TTMSFNCCustomColorSelector(AOwner) { }
	
public:
	/* TTMSFNCCustomSelector.Destroy */ inline __fastcall virtual ~TTMSFNCColorSelector() { }
	
};


//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x0);
static constexpr System::Int8 BLD_VER = System::Int8(0x1);
static constexpr System::Int8 TMSFNCColorSelectorColorSetCount = System::Int8(0xf);
extern DELPHI_PACKAGE System::StaticArray<System::Uitypes::TAlphaColor, 16> TMSFNCColorSelectorColorSet;
static constexpr System::Int8 TMSFNCColorSelectorExtendedColorSetCount = System::Int8(0x27);
extern DELPHI_PACKAGE System::StaticArray<System::Uitypes::TAlphaColor, 40> TMSFNCColorSelectorExtendedColorSet;
}	/* namespace Tmsfnccolorselector */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCCOLORSELECTOR)
using namespace Fmx::Tmsfnccolorselector;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfnccolorselectorHPP
