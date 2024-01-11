// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCCheckedListBox.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfnccheckedlistboxHPP
#define Fmx_TmsfnccheckedlistboxHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <FMX.TMSFNCListBox.hpp>
#include <FMX.TMSFNCTreeView.hpp>
#include <FMX.TMSFNCTreeViewData.hpp>
#include <FMX.TMSFNCTypes.hpp>
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
namespace Tmsfnccheckedlistbox
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCCheckedListBoxItem;
class DELPHICLASS TTMSFNCCheckedListBoxItems;
class DELPHICLASS TTMSFNCCustomCheckedListBox;
class DELPHICLASS TTMSFNCCheckedListBox;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TTMSFNCCheckedListBoxItem : public Fmx::Tmsfnclistbox::TTMSFNCListBoxItem
{
	typedef Fmx::Tmsfnclistbox::TTMSFNCListBoxItem inherited;
	
__published:
	__property Checked = {default=0};
public:
	/* TTMSFNCListBoxItem.Create */ inline __fastcall virtual TTMSFNCCheckedListBoxItem(System::Classes::TCollection* Collection) : Fmx::Tmsfnclistbox::TTMSFNCListBoxItem(Collection) { }
	/* TTMSFNCListBoxItem.Destroy */ inline __fastcall virtual ~TTMSFNCCheckedListBoxItem() { }
	
};


typedef System::DynamicArray<TTMSFNCCheckedListBoxItem*> TTMSFNCListBoxCheckedItems;

class PASCALIMPLEMENTATION TTMSFNCCheckedListBoxItems : public Fmx::Tmsfnclistbox::TTMSFNCListBoxItems
{
	typedef Fmx::Tmsfnclistbox::TTMSFNCListBoxItems inherited;
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall GetItemClass();
	
public:
	virtual TTMSFNCListBoxCheckedItems __fastcall CheckedItems();
public:
	/* TTMSFNCListBoxItems.Create */ inline __fastcall TTMSFNCCheckedListBoxItems(Fmx::Tmsfnclistbox::TTMSFNCCustomListBox* AListBox) : Fmx::Tmsfnclistbox::TTMSFNCListBoxItems(AListBox) { }
	
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCCheckedListBoxItems() { }
	
};


typedef void __fastcall (__closure *TTMSFNCCheckedListBoxItemCheckChanged)(System::TObject* Sender, TTMSFNCCheckedListBoxItem* AItem);

class PASCALIMPLEMENTATION TTMSFNCCustomCheckedListBox : public Fmx::Tmsfnclistbox::TTMSFNCListBox
{
	typedef Fmx::Tmsfnclistbox::TTMSFNCListBox inherited;
	
private:
	TTMSFNCCheckedListBoxItemCheckChanged FOnItemCheckChanged;
	bool __fastcall GetCheckedItem(TTMSFNCCheckedListBoxItem* AItem);
	void __fastcall SetCheckedItem(TTMSFNCCheckedListBoxItem* AItem, const bool Value);
	bool __fastcall GetChecked(int AItemIndex);
	void __fastcall SetChecked(int AItemIndex, const bool Value);
	
protected:
	virtual void __fastcall Loaded();
	virtual Fmx::Tmsfnclistbox::TTMSFNCListBoxItems* __fastcall CreateItems();
	virtual System::UnicodeString __fastcall GetVersion();
	virtual void __fastcall DoItemCheckChanged(System::TObject* Sender, TTMSFNCCheckedListBoxItem* AItem);
	virtual void __fastcall CustomizeTreeView(Fmx::Tmsfnctreeview::TTMSFNCTreeView* ATreeView);
	virtual void __fastcall DoIsNodeChecked(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, bool &AIsChecked);
	virtual void __fastcall DoGetNodeCheckType(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNodeCheckType &ACheckType);
	virtual void __fastcall DoAfterCheckNode(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn);
	virtual void __fastcall DoAfterUnCheckNode(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn);
	__property TTMSFNCCheckedListBoxItemCheckChanged OnItemCheckChanged = {read=FOnItemCheckChanged, write=FOnItemCheckChanged};
	
public:
	__property bool CheckedItem[TTMSFNCCheckedListBoxItem* AItem] = {read=GetCheckedItem, write=SetCheckedItem};
	__property bool Checked[int AItemIndex] = {read=GetChecked, write=SetChecked};
	virtual TTMSFNCListBoxCheckedItems __fastcall CheckedItems();
	HIDESBASE virtual TTMSFNCCheckedListBoxItem* __fastcall AddItem(System::UnicodeString AText = System::UnicodeString());
	void __fastcall CheckAll();
	void __fastcall UncheckAll();
public:
	/* TTMSFNCCustomListBox.Create */ inline __fastcall virtual TTMSFNCCustomCheckedListBox(System::Classes::TComponent* AOwner) : Fmx::Tmsfnclistbox::TTMSFNCListBox(AOwner) { }
	/* TTMSFNCCustomListBox.Destroy */ inline __fastcall virtual ~TTMSFNCCustomCheckedListBox() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCheckedListBox : public TTMSFNCCustomCheckedListBox
{
	typedef TTMSFNCCustomCheckedListBox inherited;
	
__published:
	__property OnItemCheckChanged;
	__property OnAfterDrawItemCheck;
	__property OnBeforeDrawItemCheck;
public:
	/* TTMSFNCCustomListBox.Create */ inline __fastcall virtual TTMSFNCCheckedListBox(System::Classes::TComponent* AOwner) : TTMSFNCCustomCheckedListBox(AOwner) { }
	/* TTMSFNCCustomListBox.Destroy */ inline __fastcall virtual ~TTMSFNCCheckedListBox() { }
	
};


//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x0);
static constexpr System::Int8 BLD_VER = System::Int8(0x2);
}	/* namespace Tmsfnccheckedlistbox */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCCHECKEDLISTBOX)
using namespace Fmx::Tmsfnccheckedlistbox;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfnccheckedlistboxHPP
