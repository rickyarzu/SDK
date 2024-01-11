// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCBitmapSelector.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncbitmapselectorHPP
#define Fmx_TmsfncbitmapselectorHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <FMX.TMSFNCCustomSelector.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.TMSFNCBitmapContainer.hpp>
#include <FMX.TMSFNCGraphics.hpp>
#include <FMX.TMSFNCCustomControl.hpp>
#include <FMX.Controls.hpp>
#include <FMX.Types.hpp>
#include <System.Generics.Collections.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>
#include <System.Types.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncbitmapselector
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCBitmapSelectorItem;
class DELPHICLASS TTMSFNCBitmapSelectorItems;
class DELPHICLASS TTMSFNCCustomBitmapSelector;
class DELPHICLASS TTMSFNCBitmapSelector;
//-- type declarations -------------------------------------------------------
enum DECLSPEC_DENUM TTMSFNCBitmapSelectorBitmapAlign : unsigned char { baLeft, baCenter, baRight };

class PASCALIMPLEMENTATION TTMSFNCBitmapSelectorItem : public Fmx::Tmsfnccustomselector::TTMSFNCCustomSelectorItem
{
	typedef Fmx::Tmsfnccustomselector::TTMSFNCCustomSelectorItem inherited;
	
private:
	TTMSFNCCustomBitmapSelector* FOwner;
	Fmx::Tmsfnctypes::TTMSFNCBitmap* FBitmap;
	TTMSFNCBitmapSelectorBitmapAlign FBitmapAlign;
	System::UnicodeString FBitmapName;
	float FBitmapSize;
	void __fastcall SetBitmap(Fmx::Tmsfnctypes::TTMSFNCBitmap* const Value);
	void __fastcall SetBitmapAlign(const TTMSFNCBitmapSelectorBitmapAlign Value);
	void __fastcall SetBitmapName(const System::UnicodeString Value);
	void __fastcall SetBitmapSize(const float Value);
	Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* __fastcall GetBitmapContainer();
	bool __fastcall IsBitmapSizeStored();
	
protected:
	Fmx::Tmsfnctypes::TTMSFNCBitmap* __fastcall GetDisplayBitmap();
	void __fastcall BitmapChanged(System::TObject* Sender);
	
public:
	__fastcall virtual TTMSFNCBitmapSelectorItem(System::Classes::TCollection* Collection);
	__fastcall virtual ~TTMSFNCBitmapSelectorItem();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__property Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* BitmapContainer = {read=GetBitmapContainer};
	
__published:
	__property Fmx::Tmsfnctypes::TTMSFNCBitmap* Bitmap = {read=FBitmap, write=SetBitmap};
	__property System::UnicodeString BitmapName = {read=FBitmapName, write=SetBitmapName};
	__property TTMSFNCBitmapSelectorBitmapAlign BitmapAlign = {read=FBitmapAlign, write=SetBitmapAlign, default=1};
	__property float BitmapSize = {read=FBitmapSize, write=SetBitmapSize, stored=IsBitmapSizeStored};
};


class PASCALIMPLEMENTATION TTMSFNCBitmapSelectorItems : public Fmx::Tmsfnccustomselector::TTMSFNCCustomSelectorItems
{
	typedef Fmx::Tmsfnccustomselector::TTMSFNCCustomSelectorItems inherited;
	
public:
	TTMSFNCBitmapSelectorItem* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCCustomBitmapSelector* FOwner;
	HIDESBASE TTMSFNCBitmapSelectorItem* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCBitmapSelectorItem* const Value);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall CreateItemClass();
	
public:
	__fastcall virtual TTMSFNCBitmapSelectorItems(Fmx::Tmsfnccustomselector::TTMSFNCCustomSelector* AOwner);
	__property TTMSFNCBitmapSelectorItem* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	HIDESBASE TTMSFNCBitmapSelectorItem* __fastcall Add();
	HIDESBASE TTMSFNCBitmapSelectorItem* __fastcall Insert(int Index);
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCBitmapSelectorItems() { }
	
};


typedef void __fastcall (__closure *TTMSFNCCustomSelectorBitmapSelected)(System::TObject* Sender, Fmx::Tmsfnctypes::TTMSFNCBitmap* ABitmap);

typedef void __fastcall (__closure *TTMSFNCCustomSelectorBitmapDeselected)(System::TObject* Sender, Fmx::Tmsfnctypes::TTMSFNCBitmap* ABitmap);

class PASCALIMPLEMENTATION TTMSFNCCustomBitmapSelector : public Fmx::Tmsfnccustomselector::TTMSFNCDefaultSelector
{
	typedef Fmx::Tmsfnccustomselector::TTMSFNCDefaultSelector inherited;
	
private:
	TTMSFNCCustomSelectorBitmapSelected FOnBitmapSelected;
	TTMSFNCCustomSelectorBitmapDeselected FOnBitmapDeselected;
	Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* FBitmapContainer;
	Fmx::Tmsfnctypes::TTMSFNCBitmap* __fastcall GetSelectedBitmap();
	void __fastcall SetBitmapContainer(Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* const Value);
	TTMSFNCBitmapSelectorItems* __fastcall GetItems();
	HIDESBASE void __fastcall SetItems(TTMSFNCBitmapSelectorItems* const Value);
	Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* __fastcall GetBitmapContainer();
	
protected:
	virtual System::UnicodeString __fastcall GetVersion();
	virtual void __fastcall Notification(System::Classes::TComponent* AComponent, System::Classes::TOperation Operation);
	virtual void __fastcall DoItemSelected(int AItemIndex);
	virtual void __fastcall DoItemDeselected(int AItemIndex);
	virtual Fmx::Tmsfnccustomselector::TTMSFNCCustomSelectorItems* __fastcall CreateItemsCollection();
	virtual void __fastcall DrawItemContent(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const Fmx::Tmsfnccustomselector::TTMSFNCCustomSelectorDisplayItem &ADisplayItem);
	virtual void __fastcall DrawItemText(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const Fmx::Tmsfnccustomselector::TTMSFNCCustomSelectorDisplayItem &ADisplayItem);
	__property TTMSFNCCustomSelectorBitmapSelected OnBitmapSelected = {read=FOnBitmapSelected, write=FOnBitmapSelected};
	__property TTMSFNCCustomSelectorBitmapDeselected OnBitmapDeselected = {read=FOnBitmapDeselected, write=FOnBitmapDeselected};
	__property Fmx::Tmsfnctypes::TTMSFNCBitmap* SelectedBitmap = {read=GetSelectedBitmap};
	__property Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* BitmapContainer = {read=GetBitmapContainer, write=SetBitmapContainer};
	__property TTMSFNCBitmapSelectorItems* Items = {read=GetItems, write=SetItems};
	
public:
	__fastcall virtual TTMSFNCCustomBitmapSelector(System::Classes::TComponent* AOwner);
	virtual void __fastcall LoadFromBitmapContainer();
	int __fastcall FindItemByBitmap(Fmx::Tmsfnctypes::TTMSFNCBitmap* ABitmap);
	Fmx::Tmsfnctypes::TTMSFNCBitmap* __fastcall FindBitmapByItem(int AItem);
public:
	/* TTMSFNCCustomSelector.Destroy */ inline __fastcall virtual ~TTMSFNCCustomBitmapSelector() { }
	
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


class PASCALIMPLEMENTATION TTMSFNCBitmapSelector : public TTMSFNCCustomBitmapSelector
{
	typedef TTMSFNCCustomBitmapSelector inherited;
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	
public:
	__property SelectedBitmap;
	
__published:
	__property Appearance;
	__property Rows = {default=4};
	__property Columns = {default=4};
	__property Items;
	__property OnBitmapSelected;
	__property OnBitmapDeselected;
	__property BitmapContainer;
	__property OnItemSelected;
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
	/* TTMSFNCCustomBitmapSelector.Create */ inline __fastcall virtual TTMSFNCBitmapSelector(System::Classes::TComponent* AOwner) : TTMSFNCCustomBitmapSelector(AOwner) { }
	
public:
	/* TTMSFNCCustomSelector.Destroy */ inline __fastcall virtual ~TTMSFNCBitmapSelector() { }
	
};


//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x0);
static constexpr System::Int8 BLD_VER = System::Int8(0x0);
extern DELPHI_PACKAGE void __fastcall GetAspectSize(float &w, float &h, float ow, float oh, float nw, float nh, float crw, float crh, bool asp, bool st, bool cr);
}	/* namespace Tmsfncbitmapselector */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCBITMAPSELECTOR)
using namespace Fmx::Tmsfncbitmapselector;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncbitmapselectorHPP
