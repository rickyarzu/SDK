// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCFillKindSelector.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncfillkindselectorHPP
#define Fmx_TmsfncfillkindselectorHPP

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
namespace Tmsfncfillkindselector
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCFillKindSelectorItem;
class DELPHICLASS TTMSFNCFillKindSelectorItems;
class DELPHICLASS TTMSFNCCustomFillKindSelector;
class DELPHICLASS TTMSFNCFillKindSelector;
//-- type declarations -------------------------------------------------------
#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCFillKindSelectorItem : public Fmx::Tmsfnccustomselector::TTMSFNCCustomSelectorItem
{
	typedef Fmx::Tmsfnccustomselector::TTMSFNCCustomSelectorItem inherited;
	
private:
	TTMSFNCCustomFillKindSelector* FOwner;
	System::UnicodeString FName;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFillKind FKind;
	void __fastcall SetKind(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFillKind Value);
	void __fastcall SetName(const System::UnicodeString Value);
	bool __fastcall IsNameStored();
	
public:
	__fastcall virtual TTMSFNCFillKindSelectorItem(System::Classes::TCollection* ACollection);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFillKind Kind = {read=FKind, write=SetKind, default=0};
	__property System::UnicodeString Name = {read=FName, write=SetName, stored=IsNameStored};
public:
	/* TTMSFNCCustomSelectorItem.Destroy */ inline __fastcall virtual ~TTMSFNCFillKindSelectorItem() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCFillKindSelectorItems : public Fmx::Tmsfnccustomselector::TTMSFNCCustomSelectorItems
{
	typedef Fmx::Tmsfnccustomselector::TTMSFNCCustomSelectorItems inherited;
	
public:
	TTMSFNCFillKindSelectorItem* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCCustomFillKindSelector* FOwner;
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCFillKindSelectorItem* const Value);
	HIDESBASE TTMSFNCFillKindSelectorItem* __fastcall GetItem(int Index);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall CreateItemClass();
	
public:
	__fastcall virtual TTMSFNCFillKindSelectorItems(Fmx::Tmsfnccustomselector::TTMSFNCCustomSelector* AOwner);
	HIDESBASE TTMSFNCFillKindSelectorItem* __fastcall Add();
	HIDESBASE TTMSFNCFillKindSelectorItem* __fastcall Insert(int Index);
	__property TTMSFNCFillKindSelectorItem* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCFillKindSelectorItems() { }
	
};

#pragma pack(pop)

typedef void __fastcall (__closure *TTMSFNCCustomFillKindSelectorFillKindSelected)(System::TObject* Sender, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFillKind AFillKind);

typedef void __fastcall (__closure *TTMSFNCCustomFillKindSelectorFillKindDeselected)(System::TObject* Sender, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFillKind AFillKind);

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCustomFillKindSelector : public Fmx::Tmsfnccustomselector::TTMSFNCDefaultSelector
{
	typedef Fmx::Tmsfnccustomselector::TTMSFNCDefaultSelector inherited;
	
private:
	TTMSFNCCustomFillKindSelectorFillKindSelected FOnFillKindSelected;
	TTMSFNCCustomFillKindSelectorFillKindDeselected FOnFillKindDeselected;
	HIDESBASE void __fastcall SetItems(TTMSFNCFillKindSelectorItems* const Value);
	void __fastcall SetSelectedFillKind(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFillKind Value);
	TTMSFNCFillKindSelectorItems* __fastcall GetItems();
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFillKind __fastcall GetSelectedFillKind();
	
protected:
	virtual void __fastcall DoItemSelected(int AItemIndex);
	virtual void __fastcall DoItemDeselected(int AItemIndex);
	virtual void __fastcall DrawItemContent(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const Fmx::Tmsfnccustomselector::TTMSFNCCustomSelectorDisplayItem &ADisplayItem);
	virtual void __fastcall DrawItemText(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const Fmx::Tmsfnccustomselector::TTMSFNCCustomSelectorDisplayItem &ADisplayItem);
	void __fastcall AddFillKinds();
	virtual System::UnicodeString __fastcall GetVersion();
	virtual Fmx::Tmsfnccustomselector::TTMSFNCCustomSelectorItems* __fastcall CreateItemsCollection();
	__property TTMSFNCFillKindSelectorItems* Items = {read=GetItems, write=SetItems};
	__property TTMSFNCCustomFillKindSelectorFillKindSelected OnFillKindSelected = {read=FOnFillKindSelected, write=FOnFillKindSelected};
	__property TTMSFNCCustomFillKindSelectorFillKindDeselected OnFillKindDeselected = {read=FOnFillKindDeselected, write=FOnFillKindDeselected};
	
public:
	__fastcall virtual TTMSFNCCustomFillKindSelector(System::Classes::TComponent* AOwner);
	virtual void __fastcall InitializeDefault();
	int __fastcall FindItemByFillKind(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFillKind AKind);
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFillKind __fastcall FindFillKindByItem(int AItem);
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFillKind SelectedFillKind = {read=GetSelectedFillKind, write=SetSelectedFillKind, default=0};
public:
	/* TTMSFNCCustomSelector.Destroy */ inline __fastcall virtual ~TTMSFNCCustomFillKindSelector() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCFillKindSelector : public TTMSFNCCustomFillKindSelector
{
	typedef TTMSFNCCustomFillKindSelector inherited;
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	
__published:
	__property Appearance;
	__property Rows = {default=4};
	__property Columns = {default=4};
	__property Items;
	__property SelectedItemIndex = {default=-1};
	__property OnFillKindSelected;
	__property OnFillKindDeselected;
	__property OnItemClick;
	__property OnItemSelected;
	__property OnItemDeselected;
	__property OnItemBeforeDrawBackground;
	__property OnItemAfterDrawBackground;
	__property OnItemBeforeDrawContent;
	__property OnItemAfterDrawContent;
	__property OnBeforeDraw;
	__property OnAfterDraw;
	__property OnItemBeforeDrawText;
	__property OnItemAfterDrawText;
public:
	/* TTMSFNCCustomFillKindSelector.Create */ inline __fastcall virtual TTMSFNCFillKindSelector(System::Classes::TComponent* AOwner) : TTMSFNCCustomFillKindSelector(AOwner) { }
	
public:
	/* TTMSFNCCustomSelector.Destroy */ inline __fastcall virtual ~TTMSFNCFillKindSelector() { }
	
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x1);
static constexpr System::Int8 BLD_VER = System::Int8(0x0);
}	/* namespace Tmsfncfillkindselector */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCFILLKINDSELECTOR)
using namespace Fmx::Tmsfncfillkindselector;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncfillkindselectorHPP
