// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCComboBox.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfnccomboboxHPP
#define Fmx_TmsfnccomboboxHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <System.Types.hpp>
#include <FMX.Controls.hpp>
#include <FMX.Types.hpp>
#include <System.UITypes.hpp>
#include <FMX.TMSFNCCustomPicker.hpp>
#include <FMX.TMSFNCCustomSelector.hpp>
#include <FMX.TMSFNCGraphics.hpp>
#include <FMX.TMSFNCTreeView.hpp>
#include <FMX.TMSFNCTreeViewData.hpp>
#include <FMX.TMSFNCGraphicsTypes.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.TMSFNCBitmapContainer.hpp>
#include <FMX.TMSFNCCustomTreeView.hpp>
#include <FMX.TMSFNCTreeViewBase.hpp>
#include <FMX.TMSFNCCustomControl.hpp>
#include <System.Generics.Collections.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfnccombobox
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCTreeViewOpen;
class DELPHICLASS TTMSFNCCustomComboBox;
class DELPHICLASS TTMSFNCComboBox;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TTMSFNCTreeViewOpen : public Fmx::Tmsfnctreeview::TTMSFNCTreeView
{
	typedef Fmx::Tmsfnctreeview::TTMSFNCTreeView inherited;
	
public:
	/* TTMSFNCCustomTreeView.Create */ inline __fastcall virtual TTMSFNCTreeViewOpen(System::Classes::TComponent* AOwner) : Fmx::Tmsfnctreeview::TTMSFNCTreeView(AOwner) { }
	/* TTMSFNCCustomTreeView.Destroy */ inline __fastcall virtual ~TTMSFNCTreeViewOpen() { }
	
};


enum DECLSPEC_DENUM TTMSFNCCustomComboBoxStyle : unsigned char { csDropDown, csDropDownList };

typedef void __fastcall (__closure *TTMSFNCCustomComboBoxItemSelectedEvent)(System::TObject* Sender, System::UnicodeString AText, int AItemIndex);

class PASCALIMPLEMENTATION TTMSFNCCustomComboBox : public Fmx::Tmsfnccustompicker::TTMSFNCDefaultPicker
{
	typedef Fmx::Tmsfnccustompicker::TTMSFNCDefaultPicker inherited;
	
private:
	Fmx::Tmsfnccustomselector::TTMSFNCCustomSelector* FWrapper;
	Fmx::Tmsfnctreeview::TTMSFNCTreeView* FTreeView;
	System::Classes::TStringList* FItems;
	TTMSFNCCustomComboBoxStyle FStyle;
	bool FAutoCloseUp;
	bool FAutoDropDown;
	bool FAutoComplete;
	int FDropDownCount;
	System::UnicodeString FPrevString;
	int FPrevIndex;
	bool FCaseSensitive;
	int FAutoCompleteNumChar;
	int FAutoCompleteDelay;
	unsigned FTick;
	System::Word FKeyDown;
	TTMSFNCCustomComboBoxItemSelectedEvent FOnItemSelected;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FFont;
	Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* FBitmapContainer;
	bool FAutoFilter;
	void __fastcall SetItemIndex(const int Value);
	HIDESBASE void __fastcall SetItems(System::Classes::TStringList* const Value);
	void __fastcall SetStyle(const TTMSFNCCustomComboBoxStyle Value);
	void __fastcall SetAutoCloseUp(const bool Value);
	void __fastcall SetAutoDropDown(const bool Value);
	void __fastcall SetAutoComplete(const bool Value);
	void __fastcall SetDropDownCount(const int Value);
	void __fastcall SetItemHeight(const double Value);
	void __fastcall SetText(const System::UnicodeString Value);
	void __fastcall SetCaseSensitive(const bool Value);
	void __fastcall SetAutoCompleteNumChar(const int Value);
	void __fastcall SetAutoCompleteDelay(const int Value);
	int __fastcall GetItemIndex();
	double __fastcall GetItemHeight();
	System::UnicodeString __fastcall GetText();
	int __fastcall GetCount();
	HIDESBASE void __fastcall SetFnt(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* __fastcall GetBitmapContainer();
	void __fastcall SetBitmapContainer(Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* const Value);
	void __fastcall SetAutoFilter(const bool Value);
	Fmx::Tmsfnccustomtreeview::TTMSFNCTreeViewNodesAppearance* __fastcall GetItemAppearance();
	void __fastcall SetItemAppearance(Fmx::Tmsfnccustomtreeview::TTMSFNCTreeViewNodesAppearance* const Value);
	
protected:
	virtual void __fastcall ChangeDPIScale(int M, int D);
	virtual void __fastcall Notification(System::Classes::TComponent* AComponent, System::Classes::TOperation Operation);
	void __fastcall FontChange(System::TObject* Sender);
	virtual void __fastcall Loaded();
	virtual void __fastcall DoComboBoxItemSelected(System::UnicodeString AText, int AItemIndex);
	virtual void __fastcall DrawContent(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	virtual void __fastcall InitializePopup();
	virtual void __fastcall SelectFirstValue();
	virtual void __fastcall SelectLastValue();
	virtual void __fastcall SelectNextValue();
	virtual void __fastcall SelectPreviousValue();
	void __fastcall ItemsChanged(System::TObject* Sender);
	virtual void __fastcall SetAdaptToStyle(const bool Value);
	void __fastcall ComboBoxNodeTextAlign(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign &AHorizontalTextAlign);
	void __fastcall ComboBoxItemClicked(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode);
	void __fastcall AdjustDropDownHeight();
	void __fastcall UpdateListBoxLookup(System::UnicodeString AText);
	void __fastcall DeleteFromEdit();
	HIDESBASE void __fastcall EditKeyDown(System::TObject* Sender, System::Word &Key, System::WideChar &KeyChar, System::Classes::TShiftState Shift);
	void __fastcall TreeviewKeyUp(System::TObject* Sender, System::Word &Key, System::WideChar &KeyChar, System::Classes::TShiftState Shift);
	virtual void __fastcall KeyDown(System::Word &Key, System::WideChar &KeyChar, System::Classes::TShiftState Shift);
	void __fastcall TreeViewMouseDown(System::TObject* Sender, System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, float X, float Y);
	void __fastcall EditTyping(System::TObject* Sender);
	void __fastcall TreeViewVScroll(System::TObject* Sender, float APosition);
	virtual Fmx::Tmsfnccustomselector::TTMSFNCCustomSelector* __fastcall CreateSelector();
	int __fastcall GetVisibleItemCount();
	__property bool AutoFilter = {read=FAutoFilter, write=SetAutoFilter, default=1};
	__property bool AutoCloseUp = {read=FAutoCloseUp, write=SetAutoCloseUp, default=0};
	__property bool AutoDropDown = {read=FAutoDropDown, write=SetAutoDropDown, default=0};
	__property bool AutoComplete = {read=FAutoComplete, write=SetAutoComplete, default=1};
	__property int AutoCompleteDelay = {read=FAutoCompleteDelay, write=SetAutoCompleteDelay, default=500};
	__property int AutoCompleteNumChar = {read=FAutoCompleteNumChar, write=SetAutoCompleteNumChar, default=2};
	__property bool CaseSensitive = {read=FCaseSensitive, write=SetCaseSensitive, default=0};
	__property int DropDownCount = {read=FDropDownCount, write=SetDropDownCount, default=8};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* Font = {read=FFont, write=SetFnt};
	__property System::Classes::TStringList* Items = {read=FItems, write=SetItems};
	__property int ItemIndex = {read=GetItemIndex, write=SetItemIndex, default=-1};
	__property double ItemHeight = {read=GetItemHeight, write=SetItemHeight};
	__property TTMSFNCCustomComboBoxStyle Style = {read=FStyle, write=SetStyle, default=0};
	__property System::UnicodeString Text = {read=GetText, write=SetText};
	__property Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* BitmapContainer = {read=GetBitmapContainer, write=SetBitmapContainer};
	__property Fmx::Tmsfnccustomtreeview::TTMSFNCTreeViewNodesAppearance* ItemAppearance = {read=GetItemAppearance, write=SetItemAppearance};
	__property TTMSFNCCustomComboBoxItemSelectedEvent OnItemSelected = {read=FOnItemSelected, write=FOnItemSelected};
	
public:
	__fastcall virtual TTMSFNCCustomComboBox(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCCustomComboBox();
	void __fastcall AddItem(System::UnicodeString AItem);
	__property int Count = {read=GetCount, nodefault};
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


class PASCALIMPLEMENTATION TTMSFNCComboBox : public TTMSFNCCustomComboBox
{
	typedef TTMSFNCCustomComboBox inherited;
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	
__published:
	__property AutoCloseUp = {default=0};
	__property AutoDropDown = {default=0};
	__property AutoComplete = {default=1};
	__property AutoCompleteDelay = {default=500};
	__property AutoCompleteNumChar = {default=2};
	__property AutoFilter = {default=1};
	__property BitmapContainer;
	__property CaseSensitive = {default=0};
	__property DropDownCount = {default=8};
	__property DropDownWidth;
	__property Font;
	__property Items;
	__property ItemIndex = {default=-1};
	__property ItemHeight = {default=0};
	__property ShowFocus = {default=1};
	__property Style = {default=0};
	__property Text = {default=0};
	__property ItemAppearance;
	__property Appearance;
	__property OnItemSelected;
public:
	/* TTMSFNCCustomComboBox.Create */ inline __fastcall virtual TTMSFNCComboBox(System::Classes::TComponent* AOwner) : TTMSFNCCustomComboBox(AOwner) { }
	/* TTMSFNCCustomComboBox.Destroy */ inline __fastcall virtual ~TTMSFNCComboBox() { }
	
};


//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x1);
static constexpr System::Int8 REL_VER = System::Int8(0x0);
static constexpr System::Int8 BLD_VER = System::Int8(0x3);
}	/* namespace Tmsfnccombobox */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCCOMBOBOX)
using namespace Fmx::Tmsfnccombobox;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfnccomboboxHPP
