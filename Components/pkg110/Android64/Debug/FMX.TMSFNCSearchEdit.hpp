// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCSearchEdit.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncsearcheditHPP
#define Fmx_TmsfncsearcheditHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <FMX.TMSFNCToolBar.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.TMSFNCGraphics.hpp>
#include <FMX.TMSFNCPopup.hpp>
#include <FMX.TMSFNCSearchList.hpp>
#include <FMX.TMSFNCCustomControl.hpp>
#include <FMX.TMSFNCEdit.hpp>
#include <FMX.Controls.hpp>
#include <FMX.TMSFNCGraphicsTypes.hpp>
#include <FMX.TMSFNCStyles.hpp>
#include <FMX.ExtCtrls.hpp>
#include <System.TypInfo.hpp>
#include <System.UITypes.hpp>
#include <System.Types.hpp>
#include <FMX.Types.hpp>
#include <FMX.Menus.hpp>
#include <FMX.Edit.hpp>
#include <FMX.Controls.Presentation.hpp>
#include <System.Generics.Collections.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncsearchedit
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCEditButtonTest;
class DELPHICLASS TTMSFNCSearchDropDown;
class DELPHICLASS TTMSFNCSearchEditButton;
class DELPHICLASS TTMSFNCSearchEditPopupButton;
class DELPHICLASS TTMSFNCSearchEdit;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TTMSFNCEditButtonTest : public Fmx::Tmsfncedit::TTMSFNCEdit
{
	typedef Fmx::Tmsfncedit::TTMSFNCEdit inherited;
	
public:
	/* TTMSFNCEdit.Create */ inline __fastcall virtual TTMSFNCEditButtonTest(System::Classes::TComponent* AOwner)/* overload */ : Fmx::Tmsfncedit::TTMSFNCEdit(AOwner) { }
	/* TTMSFNCEdit.Destroy */ inline __fastcall virtual ~TTMSFNCEditButtonTest() { }
	
};


typedef void __fastcall (__closure *TTMSFNCSearchDropDownSelectEvent)(System::TObject* Sender, System::UnicodeString &NewValue);

class PASCALIMPLEMENTATION TTMSFNCSearchDropDown : public Fmx::Tmsfncedit::TTMSFNCEditButton
{
	typedef Fmx::Tmsfncedit::TTMSFNCEditButton inherited;
	
private:
	System::UnicodeString FOldText;
	Fmx::Tmsfncsearchlist::TTMSFNCSearchList* FSearchList;
	TTMSFNCSearchDropDownSelectEvent FOnSelect;
	float FDropDownWidth;
	void __fastcall SetDropDownWidth(const float Value);
	
protected:
	virtual void __fastcall BeforeDropDown();
	__property float DropDownWidth = {read=FDropDownWidth, write=SetDropDownWidth};
	virtual void __fastcall RegisterRuntimeClasses();
	void __fastcall SearchListKeyDown(System::TObject* Sender, System::Word &Key, System::WideChar &KeyChar, System::Classes::TShiftState Shift);
	void __fastcall SearchListKeyUp(System::TObject* Sender, System::Word &Key, System::WideChar &KeyChar, System::Classes::TShiftState Shift);
	void __fastcall KeyUpEdit(System::TObject* Sender, System::Word &Key, System::WideChar &KeyChar, System::Classes::TShiftState Shift);
	void __fastcall SearchListClick(System::TObject* Sender);
	
public:
	__fastcall virtual TTMSFNCSearchDropDown(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCSearchDropDown();
	__property Fmx::Tmsfncsearchlist::TTMSFNCSearchList* SearchList = {read=FSearchList};
	__property TTMSFNCSearchDropDownSelectEvent OnSelect = {read=FOnSelect, write=FOnSelect};
};


typedef void __fastcall (__closure *TTMSFNCSearchEditGetButtonAppearance)(System::TObject* Sender, Fmx::Tmsfnctoolbar::TTMSFNCToolBarButtonAppearance* &Appearance);

typedef void __fastcall (__closure *TTMSFNCSearchEditSetButtonAppearance)(System::TObject* Sender, Fmx::Tmsfnctoolbar::TTMSFNCToolBarButtonAppearance* Appearance);

class PASCALIMPLEMENTATION TTMSFNCSearchEditButton : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	int FWidth;
	bool FVisible;
	System::UnicodeString FText;
	System::Classes::TNotifyEvent FOnChange;
	Fmx::Tmsfnctypes::TTMSFNCScaledBitmaps* FBitmaps;
	TTMSFNCSearchEditGetButtonAppearance FOnGetAppearance;
	TTMSFNCSearchEditSetButtonAppearance FOnSetAppearance;
	Fmx::Tmsfnctoolbar::TTMSFNCToolBarButtonAppearance* FAppearance;
	System::Uitypes::TAlphaColor FTextColor;
	void __fastcall SetText(const System::UnicodeString Value);
	void __fastcall SetVisible(const bool Value);
	void __fastcall SetWidth(const int Value);
	void __fastcall SetBitmaps(Fmx::Tmsfnctypes::TTMSFNCScaledBitmaps* const Value);
	Fmx::Tmsfnctoolbar::TTMSFNCToolBarButtonAppearance* __fastcall GetAppearance();
	void __fastcall SetAppearance(Fmx::Tmsfnctoolbar::TTMSFNCToolBarButtonAppearance* const Value);
	void __fastcall SetTextColor(const System::Uitypes::TAlphaColor Value);
	
protected:
	void __fastcall Changed();
	void __fastcall BitmapsChanged(System::TObject* Sender);
	
public:
	__fastcall virtual TTMSFNCSearchEditButton(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCSearchEditButton();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__property System::Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
	__property TTMSFNCSearchEditGetButtonAppearance OnGetAppearance = {read=FOnGetAppearance, write=FOnGetAppearance};
	__property TTMSFNCSearchEditSetButtonAppearance OnSetAppearance = {read=FOnSetAppearance, write=FOnSetAppearance};
	
__published:
	__property Fmx::Tmsfnctoolbar::TTMSFNCToolBarButtonAppearance* Appearance = {read=GetAppearance, write=SetAppearance};
	__property System::UnicodeString Text = {read=FText, write=SetText};
	__property Fmx::Tmsfnctypes::TTMSFNCScaledBitmaps* Bitmaps = {read=FBitmaps, write=SetBitmaps};
	__property int Width = {read=FWidth, write=SetWidth, default=24};
	__property bool Visible = {read=FVisible, write=SetVisible, default=1};
	__property System::Uitypes::TAlphaColor TextColor = {read=FTextColor, write=SetTextColor, default=-16777216};
};


enum DECLSPEC_DENUM TTMSFNCSearchEditPopupMenuType : unsigned char { pmCheck, pmRadio };

class PASCALIMPLEMENTATION TTMSFNCSearchEditPopupButton : public TTMSFNCSearchEditButton
{
	typedef TTMSFNCSearchEditButton inherited;
	
private:
	TTMSFNCSearchEditPopupMenuType FPopupType;
	
public:
	__fastcall virtual TTMSFNCSearchEditPopupButton(System::Classes::TComponent* AOwner);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property TTMSFNCSearchEditPopupMenuType PopupType = {read=FPopupType, write=FPopupType, default=0};
public:
	/* TTMSFNCSearchEditButton.Destroy */ inline __fastcall virtual ~TTMSFNCSearchEditPopupButton() { }
	
};


typedef void __fastcall (__closure *TTMSFNCSearchEditCategoryItemClick)(System::TObject* Sender, int CategoryIndex, bool isChecked);

class PASCALIMPLEMENTATION TTMSFNCSearchEdit : public Fmx::Tmsfnccustomcontrol::TTMSFNCCustomControl
{
	typedef Fmx::Tmsfnccustomcontrol::TTMSFNCCustomControl inherited;
	
private:
	Fmx::Types::TTimer* FFocusTimer;
	TTMSFNCSearchDropDown* FEdit;
	Fmx::Tmsfnctoolbar::TTMSFNCToolBarButton* FCatBtn;
	Fmx::Tmsfnctoolbar::TTMSFNCToolBarButton* FSearchBtn;
	Fmx::Menus::TPopupMenu* FCatPopup;
	TTMSFNCSearchEditPopupButton* FCategoryButton;
	TTMSFNCSearchEditButton* FSearchButton;
	System::Classes::TNotifyEvent FOnBeforeDropDown;
	TTMSFNCSearchEditCategoryItemClick FOnCategoryItemClick;
	System::Classes::TNotifyEvent FOnSearchButtonClick;
	System::Classes::TNotifyEvent FOnChange;
	System::Classes::TNotifyEvent FOnDropDown;
	System::Classes::TNotifyEvent FOnDropUp;
	System::Classes::TNotifyEvent FOnSelect;
	Fmx::Tmsfncsearchlist::TCategoryList* __fastcall GetCategories();
	void __fastcall SetCategories(Fmx::Tmsfncsearchlist::TCategoryList* const Value);
	Fmx::Tmsfncsearchlist::TTMSFNCSearchListAppearance* __fastcall GetAppearance();
	void __fastcall SetAppearance(Fmx::Tmsfncsearchlist::TTMSFNCSearchListAppearance* const Value);
	float __fastcall GetDropDownHeight();
	void __fastcall SetDropDownHeight(const float Value);
	float __fastcall GetDropDownWidth();
	void __fastcall SetDropDownWidth(const float Value);
	Fmx::Tmsfncsearchlist::TColumnItems* __fastcall GetColumns();
	void __fastcall SetColumns(Fmx::Tmsfncsearchlist::TColumnItems* const Value);
	Fmx::Tmsfncsearchlist::TSearchList* __fastcall GetItems();
	void __fastcall SetItems(Fmx::Tmsfncsearchlist::TSearchList* const Value);
	int __fastcall GetItemHeight();
	void __fastcall SetItemHeight(const int Value);
	Fmx::Tmsfncsearchlist::TFilterCondition* __fastcall GetFilterCondition();
	void __fastcall SetFilterCondition(Fmx::Tmsfncsearchlist::TFilterCondition* const Value);
	void __fastcall SetCategoryButton(TTMSFNCSearchEditPopupButton* const Value);
	void __fastcall SetSearchButton(TTMSFNCSearchEditButton* const Value);
	System::UnicodeString __fastcall GetEmptyText();
	void __fastcall SetEmptyText(const System::UnicodeString Value);
	System::UnicodeString __fastcall GetText();
	void __fastcall SetText(const System::UnicodeString Value);
	int __fastcall GetSelLength();
	int __fastcall GetSelStart();
	void __fastcall SetSelLength(const int Value);
	void __fastcall SetSelStart(const int Value);
	Fmx::Tmsfncsearchlist::TTMSFNCSearchList* __fastcall GetSearchList();
	
protected:
	virtual System::UnicodeString __fastcall GetVersion();
	virtual System::UnicodeString __fastcall GetDocURL();
	void __fastcall DoFocusTimer(System::TObject* Sender);
	virtual void __fastcall RegisterRuntimeClasses();
	virtual void __fastcall SetAdaptToStyle(const bool Value);
	void __fastcall CategoryButtonChanged(System::TObject* Sender);
	void __fastcall SearchButtonChanged(System::TObject* Sender);
	void __fastcall DrawCategoryButton(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	void __fastcall CatBtnClick(System::TObject* Sender);
	void __fastcall CatBtnGetAppearance(System::TObject* Sender, Fmx::Tmsfnctoolbar::TTMSFNCToolBarButtonAppearance* &Appearance);
	void __fastcall CatBtnSetAppearance(System::TObject* Sender, Fmx::Tmsfnctoolbar::TTMSFNCToolBarButtonAppearance* Appearance);
	void __fastcall SearchBtnGetAppearance(System::TObject* Sender, Fmx::Tmsfnctoolbar::TTMSFNCToolBarButtonAppearance* &Appearance);
	void __fastcall SearchBtnSetAppearance(System::TObject* Sender, Fmx::Tmsfnctoolbar::TTMSFNCToolBarButtonAppearance* Appearance);
	virtual bool __fastcall IsAppearanceProperty(System::TObject* AObject, System::UnicodeString APropertyName, System::TTypeKind APropertyType);
	Fmx::Tmsfncstyles::TTMSFNCStylesManagerComponentArray __fastcall GetSubComponentArray();
	void __fastcall DoCatMenuItemClick(System::TObject* Sender);
	void __fastcall DoCategoryButtonChanged(System::TObject* Sender);
	void __fastcall DoSearchButtonChanged(System::TObject* Sender);
	virtual void __fastcall DoCategoryItemClick(int CategoryIndex, bool isChecked);
	virtual void __fastcall DoSearchButtonClick(System::TObject* Sender);
	virtual void __fastcall DoSelectValue(System::TObject* Sender, System::UnicodeString &Value);
	virtual void __fastcall DoBeforeDropDown(System::TObject* Sender);
	virtual void __fastcall DoEditChanged(System::TObject* Sender);
	virtual void __fastcall DoDropDown(System::TObject* Sender);
	virtual void __fastcall DoDropUp(System::TObject* Sender);
	virtual void __fastcall DoEnter();
	virtual void __fastcall DoExit();
	void __fastcall DoEditEnter(System::TObject* Sender);
	void __fastcall DoEditExit(System::TObject* Sender);
	
public:
	__fastcall virtual TTMSFNCSearchEdit(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCSearchEdit();
	virtual void __fastcall UpdateFilter();
	void __fastcall LoadStrings(System::Classes::TStrings* Value);
	__property int SelStart = {read=GetSelStart, write=SetSelStart, nodefault};
	__property int SelLength = {read=GetSelLength, write=SetSelLength, nodefault};
	__property Fmx::Tmsfncsearchlist::TTMSFNCSearchList* SearchList = {read=GetSearchList};
	virtual void __fastcall BeginUpdate();
	virtual void __fastcall EndUpdate();
	
__published:
	__property Fmx::Tmsfncsearchlist::TTMSFNCSearchListAppearance* Appearance = {read=GetAppearance, write=SetAppearance};
	__property Fmx::Tmsfncsearchlist::TCategoryList* Categories = {read=GetCategories, write=SetCategories};
	__property TTMSFNCSearchEditPopupButton* CategoryButton = {read=FCategoryButton, write=SetCategoryButton};
	__property Fmx::Tmsfncsearchlist::TColumnItems* Columns = {read=GetColumns, write=SetColumns};
	__property float DropDownHeight = {read=GetDropDownHeight, write=SetDropDownHeight};
	__property float DropDownWidth = {read=GetDropDownWidth, write=SetDropDownWidth};
	__property System::UnicodeString EmptyText = {read=GetEmptyText, write=SetEmptyText};
	__property Fmx::Tmsfncsearchlist::TFilterCondition* FilterCondition = {read=GetFilterCondition, write=SetFilterCondition};
	__property int ItemHeight = {read=GetItemHeight, write=SetItemHeight, nodefault};
	__property Fmx::Tmsfncsearchlist::TSearchList* Items = {read=GetItems, write=SetItems};
	__property TTMSFNCSearchEditButton* SearchButton = {read=FSearchButton, write=SetSearchButton};
	__property System::UnicodeString Text = {read=GetText, write=SetText};
	__property TTMSFNCSearchEditCategoryItemClick OnCategoryItemClick = {read=FOnCategoryItemClick, write=FOnCategoryItemClick};
	__property System::Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
	__property System::Classes::TNotifyEvent OnBeforeDropDown = {read=FOnBeforeDropDown, write=FOnBeforeDropDown};
	__property System::Classes::TNotifyEvent OnDropDown = {read=FOnDropDown, write=FOnDropDown};
	__property System::Classes::TNotifyEvent OnDropUp = {read=FOnDropUp, write=FOnDropUp};
	__property System::Classes::TNotifyEvent OnSearchButtonClick = {read=FOnSearchButtonClick, write=FOnSearchButtonClick};
	__property System::Classes::TNotifyEvent OnSelect = {read=FOnSelect, write=FOnSelect};
	__property Fill;
	__property Stroke;
private:
	void *__ITMSFNCStylesManager;	// Fmx::Tmsfncstyles::ITMSFNCStylesManager 
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {88852C7F-B7B5-4FFA-BB47-6D95600CB1F3}
	operator Fmx::Tmsfncstyles::_di_ITMSFNCStylesManager()
	{
		Fmx::Tmsfncstyles::_di_ITMSFNCStylesManager intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator Fmx::Tmsfncstyles::ITMSFNCStylesManager*(void) { return (Fmx::Tmsfncstyles::ITMSFNCStylesManager*)&__ITMSFNCStylesManager; }
	#endif
	
};


//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x0);
static constexpr System::Int8 BLD_VER = System::Int8(0x8);
}	/* namespace Tmsfncsearchedit */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCSEARCHEDIT)
using namespace Fmx::Tmsfncsearchedit;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncsearcheditHPP
