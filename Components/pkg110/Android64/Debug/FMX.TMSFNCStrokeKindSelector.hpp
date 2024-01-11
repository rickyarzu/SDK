// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCStrokeKindSelector.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncstrokekindselectorHPP
#define Fmx_TmsfncstrokekindselectorHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <FMX.TMSFNCCustomSelector.hpp>
#include <FMX.TMSFNCGraphics.hpp>
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
namespace Tmsfncstrokekindselector
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCStrokeKindSelectorItem;
class DELPHICLASS TTMSFNCStrokeKindSelectorItems;
class DELPHICLASS TTMSFNCCustomStrokeKindSelector;
class DELPHICLASS TTMSFNCStrokeKindSelector;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TTMSFNCStrokeKindSelectorItem : public Fmx::Tmsfnccustomselector::TTMSFNCCustomSelectorItem
{
	typedef Fmx::Tmsfnccustomselector::TTMSFNCCustomSelectorItem inherited;
	
private:
	TTMSFNCCustomStrokeKindSelector* FOwner;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStrokeKind FKind;
	void __fastcall SetKind(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStrokeKind Value);
	
public:
	__fastcall virtual TTMSFNCStrokeKindSelectorItem(System::Classes::TCollection* ACollection);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStrokeKind Kind = {read=FKind, write=SetKind, default=0};
public:
	/* TTMSFNCCustomSelectorItem.Destroy */ inline __fastcall virtual ~TTMSFNCStrokeKindSelectorItem() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCStrokeKindSelectorItems : public Fmx::Tmsfnccustomselector::TTMSFNCCustomSelectorItems
{
	typedef Fmx::Tmsfnccustomselector::TTMSFNCCustomSelectorItems inherited;
	
public:
	TTMSFNCStrokeKindSelectorItem* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCCustomStrokeKindSelector* FOwner;
	HIDESBASE TTMSFNCStrokeKindSelectorItem* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCStrokeKindSelectorItem* const Value);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall CreateItemClass();
	
public:
	__fastcall virtual TTMSFNCStrokeKindSelectorItems(Fmx::Tmsfnccustomselector::TTMSFNCCustomSelector* AOwner);
	HIDESBASE TTMSFNCStrokeKindSelectorItem* __fastcall Add();
	HIDESBASE TTMSFNCStrokeKindSelectorItem* __fastcall Insert(int Index);
	__property TTMSFNCStrokeKindSelectorItem* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCStrokeKindSelectorItems() { }
	
};


typedef void __fastcall (__closure *TTMSFNCCustomStrokeKindSelectorStrokeKindSelected)(System::TObject* Sender, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStrokeKind AStrokeKind);

typedef void __fastcall (__closure *TTMSFNCCustomStrokeKindSelectorStrokeKindDeselected)(System::TObject* Sender, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStrokeKind AStrokeKind);

class PASCALIMPLEMENTATION TTMSFNCCustomStrokeKindSelector : public Fmx::Tmsfnccustomselector::TTMSFNCDefaultSelector
{
	typedef Fmx::Tmsfnccustomselector::TTMSFNCDefaultSelector inherited;
	
private:
	TTMSFNCCustomStrokeKindSelectorStrokeKindSelected FOnStrokeKindSelected;
	TTMSFNCCustomStrokeKindSelectorStrokeKindDeselected FOnStrokeKindDeselected;
	TTMSFNCStrokeKindSelectorItems* __fastcall GetItems();
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStrokeKind __fastcall GetSelectedStrokeKind();
	HIDESBASE void __fastcall SetItems(TTMSFNCStrokeKindSelectorItems* const Value);
	void __fastcall SetSelectedStrokeKind(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStrokeKind Value);
	
protected:
	virtual void __fastcall DoItemSelected(int AItemIndex);
	virtual void __fastcall DoItemDeselected(int AItemIndex);
	virtual void __fastcall DrawItemContent(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const Fmx::Tmsfnccustomselector::TTMSFNCCustomSelectorDisplayItem &ADisplayItem);
	void __fastcall AddStrokeKinds();
	virtual System::UnicodeString __fastcall GetVersion();
	virtual Fmx::Tmsfnccustomselector::TTMSFNCCustomSelectorItems* __fastcall CreateItemsCollection();
	__property TTMSFNCStrokeKindSelectorItems* Items = {read=GetItems, write=SetItems};
	__property TTMSFNCCustomStrokeKindSelectorStrokeKindSelected OnStrokeKindSelected = {read=FOnStrokeKindSelected, write=FOnStrokeKindSelected};
	__property TTMSFNCCustomStrokeKindSelectorStrokeKindDeselected OnStrokeKindDeselected = {read=FOnStrokeKindDeselected, write=FOnStrokeKindDeselected};
	
public:
	__fastcall virtual TTMSFNCCustomStrokeKindSelector(System::Classes::TComponent* AOwner);
	virtual void __fastcall InitializeDefault();
	int __fastcall FindItemByStrokeKind(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStrokeKind AKind);
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStrokeKind __fastcall FindStrokeKindByItem(int AItem);
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStrokeKind SelectedStrokeKind = {read=GetSelectedStrokeKind, write=SetSelectedStrokeKind, default=0};
public:
	/* TTMSFNCCustomSelector.Destroy */ inline __fastcall virtual ~TTMSFNCCustomStrokeKindSelector() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCStrokeKindSelector : public TTMSFNCCustomStrokeKindSelector
{
	typedef TTMSFNCCustomStrokeKindSelector inherited;
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	
__published:
	__property Appearance;
	__property Columns = {default=4};
	__property Rows = {default=4};
	__property Items;
	__property OnStrokeKindSelected;
	__property OnStrokeKindDeselected;
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
	/* TTMSFNCCustomStrokeKindSelector.Create */ inline __fastcall virtual TTMSFNCStrokeKindSelector(System::Classes::TComponent* AOwner) : TTMSFNCCustomStrokeKindSelector(AOwner) { }
	
public:
	/* TTMSFNCCustomSelector.Destroy */ inline __fastcall virtual ~TTMSFNCStrokeKindSelector() { }
	
};


//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x0);
static constexpr System::Int8 BLD_VER = System::Int8(0x1);
}	/* namespace Tmsfncstrokekindselector */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCSTROKEKINDSELECTOR)
using namespace Fmx::Tmsfncstrokekindselector;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncstrokekindselectorHPP
