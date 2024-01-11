// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCControlPicker.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfnccontrolpickerHPP
#define Fmx_TmsfnccontrolpickerHPP

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
#include <FMX.TMSFNCCustomPicker.hpp>
#include <FMX.TMSFNCCustomSelector.hpp>
#include <FMX.TMSFNCGraphics.hpp>
#include <FMX.TMSFNCGraphicsTypes.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.TMSFNCCustomControl.hpp>
#include <System.Generics.Collections.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfnccontrolpicker
{
//-- forward type declarations -----------------------------------------------
__interface DELPHIINTERFACE ITMSFNCControlPickerBase;
typedef System::DelphiInterface<ITMSFNCControlPickerBase> _di_ITMSFNCControlPickerBase;
__interface DELPHIINTERFACE ITMSFNCControlPickerItems;
typedef System::DelphiInterface<ITMSFNCControlPickerItems> _di_ITMSFNCControlPickerItems;
struct TTMSFNCControlPickerFilterItem;
__interface DELPHIINTERFACE ITMSFNCControlPickerFull;
typedef System::DelphiInterface<ITMSFNCControlPickerFull> _di_ITMSFNCControlPickerFull;
class DELPHICLASS TTMSFNCCustomControlPicker;
class DELPHICLASS TTMSFNCControlPicker;
//-- type declarations -------------------------------------------------------
__interface  INTERFACE_UUID("{FF82E121-0510-4FF1-8BB8-A40AA5219095}") ITMSFNCControlPickerBase  : public System::IInterface 
{
	virtual System::UnicodeString __fastcall PickerGetContent() = 0 ;
};

__interface  INTERFACE_UUID("{D0FBAC5E-B2AA-46AE-AD21-91DF23AD4FCB}") ITMSFNCControlPickerItems  : public ITMSFNCControlPickerBase 
{
	virtual void __fastcall PickerSelectItem(int AItemIndex) = 0 ;
	virtual int __fastcall PickerGetSelectedItem() = 0 ;
	virtual int __fastcall PickerGetVisibleItemCount() = 0 ;
	virtual int __fastcall PickerGetItemCount() = 0 ;
	virtual float __fastcall PickerGetItemHeight() = 0 ;
	virtual void __fastcall PickerSetItemHeight(float AValue) = 0 ;
	virtual float __fastcall PickerGetItemWidth() = 0 ;
	virtual void __fastcall PickerSetItemWidth(float AValue) = 0 ;
	virtual int __fastcall PickerGetNextSelectableItem(int AItemIndex) = 0 ;
	virtual int __fastcall PickerGetPreviousSelectableItem(int AItemIndex) = 0 ;
	virtual int __fastcall PickerGetFirstSelectableItem() = 0 ;
	virtual int __fastcall PickerGetLastSelectableItem() = 0 ;
};

struct DECLSPEC_DRECORD TTMSFNCControlPickerFilterItem
{
public:
	int ItemIndex;
	System::UnicodeString ItemText;
};


__interface  INTERFACE_UUID("{3AF9E5D7-2049-4809-920F-BA318E3D8E8D}") ITMSFNCControlPickerFull  : public ITMSFNCControlPickerItems 
{
	virtual void __fastcall PickerResetFilter() = 0 ;
	virtual void __fastcall PickerApplyFilter(System::UnicodeString ACondition, bool ACaseSensitive) = 0 ;
	virtual TTMSFNCControlPickerFilterItem __fastcall PickerLookupItem(System::UnicodeString ALookupString, bool ACaseSensitive) = 0 ;
};

enum DECLSPEC_DENUM TTMSFNCControlPickerStyle : unsigned char { csDropDown, csDropDownList };

enum DECLSPEC_DENUM TTMSFNCControlPickderDropDownHeightMode : unsigned char { chmDropDownHeight, chmControl, chmItems, chmPickerHeight };

enum DECLSPEC_DENUM TTMSFNCControlPickderDropDownWidthMode : unsigned char { cwmDropDownWidth, cwmControl, cwmItems, cwmPickerWidth };

typedef void __fastcall (__closure *TTMSFNCCustomControlPickerItemSelectedEvent)(System::TObject* Sender, System::UnicodeString AText, int AItemIndex);

typedef void __fastcall (__closure *TTMSFNCCustomControlPickerOnAdjustDropDownSizeEvent)(System::TObject* Sender, float &ASize, bool &AAllow);

typedef void __fastcall (__closure *TTMSFNCCustomControlPickerOnSetContentEvent)(System::TObject* Sender, System::UnicodeString &AText, bool &AAllow);

typedef void __fastcall (__closure *TTMSFNCCustomControlPickerBeforeDrawContentEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGrahpics, const System::Types::TRectF &ARect, System::UnicodeString AContent, bool &AAllow, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCCustomControlPickerAfterDrawContentEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGrahpics, const System::Types::TRectF &ARect, System::UnicodeString AContent);

class PASCALIMPLEMENTATION TTMSFNCCustomControlPicker : public Fmx::Tmsfnccustompicker::TTMSFNCDefaultPicker
{
	typedef Fmx::Tmsfnccustompicker::TTMSFNCDefaultPicker inherited;
	
private:
	bool FAutoCloseUp;
	bool FAutoComplete;
	int FAutoCompleteDelay;
	int FAutoCompleteNumChar;
	bool FAutoDropDown;
	bool FCaseSensitive;
	Fmx::Controls::TControl* FControl;
	Fmx::Controls::TControl* FControlParent;
	bool FControlVisible;
	Fmx::Types::TAlignLayout FControlAlign;
	float FControlLeft;
	float FControlTop;
	float FControlWidth;
	float FControlHeight;
	TTMSFNCControlPickderDropDownHeightMode FDropDownHeightMode;
	System::Word FKeyDown;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FFont;
	System::UnicodeString FPrevString;
	TTMSFNCControlPickerStyle FStyle;
	unsigned FTick;
	Fmx::Tmsfnccustomselector::TTMSFNCCustomSelector* FWrapper;
	TTMSFNCCustomControlPickerOnAdjustDropDownSizeEvent FOnAdjustDropDownHeight;
	TTMSFNCCustomControlPickerAfterDrawContentEvent FOnAfterDrawPickerContent;
	TTMSFNCCustomControlPickerBeforeDrawContentEvent FOnBeforeDrawPickerContent;
	TTMSFNCCustomControlPickerItemSelectedEvent FOnItemSelected;
	TTMSFNCCustomControlPickerOnSetContentEvent FOnSetContent;
	TTMSFNCControlPickderDropDownWidthMode FDropDownWidthMode;
	TTMSFNCCustomControlPickerOnAdjustDropDownSizeEvent FOnAdjustDropDownWidth;
	float FDropDownControlWidth;
	float FDropDownControlHeight;
	void __fastcall SetAutoCloseUp(const bool Value);
	void __fastcall SetAutoComplete(const bool Value);
	void __fastcall SetAutoCompleteDelay(const int Value);
	void __fastcall SetAutoCompleteNumChar(const int Value);
	void __fastcall SetAutoDropDown(const bool Value);
	void __fastcall SetControl(Fmx::Controls::TControl* const Value);
	void __fastcall SetDropDownHeightMode(const TTMSFNCControlPickderDropDownHeightMode Value);
	HIDESBASE void __fastcall SetFnt(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetItemHeight(const float Value);
	void __fastcall SetItemIndex(const int Value);
	void __fastcall SetStyle(const TTMSFNCControlPickerStyle Value);
	void __fastcall SetText(const System::UnicodeString Value);
	void __fastcall SetCaseSensitive(const bool Value);
	int __fastcall GetItemIndex();
	float __fastcall GetItemHeight();
	System::UnicodeString __fastcall GetText();
	int __fastcall GetCount();
	void __fastcall ApplyFilter(System::UnicodeString ACondition);
	void __fastcall ClearFilter();
	TTMSFNCControlPickerFilterItem __fastcall LookupItem(System::UnicodeString ALookupString);
	void __fastcall SetDropDownWidthMode(const TTMSFNCControlPickderDropDownWidthMode Value);
	float __fastcall GetItemWidth();
	void __fastcall SetItemWidth(const float Value);
	void __fastcall SetDropDownControlHeight(const float Value);
	void __fastcall SetDropDownControlWidth(const float Value);
	
protected:
	virtual void __fastcall ChangeDPIScale(int M, int D);
	virtual void __fastcall Notification(System::Classes::TComponent* AComponent, System::Classes::TOperation Operation);
	void __fastcall FontChange(System::TObject* Sender);
	virtual void __fastcall Loaded();
	virtual void __fastcall DoPickerItemSelected(System::UnicodeString AText, int AItemIndex);
	virtual void __fastcall DoAdjustDropDownHeight(float &AHeight, bool &AAllow);
	virtual void __fastcall DoAdjustDropDownWidth(float &AWidth, bool &AAllow);
	virtual void __fastcall DoAfterDrawPickerContent(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGrahpics, const System::Types::TRectF &ARect, System::UnicodeString AContent);
	virtual void __fastcall DoBeforeDrawPickerContent(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGrahpics, const System::Types::TRectF &ARect, System::UnicodeString AContent, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoSetContent(System::UnicodeString &AText, bool &AAllow);
	virtual void __fastcall DrawContent(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	virtual void __fastcall InitializePopup();
	virtual void __fastcall SelectFirstValue();
	virtual void __fastcall SelectLastValue();
	virtual void __fastcall SelectNextValue();
	virtual void __fastcall SelectPreviousValue();
	virtual void __fastcall SetAdaptToStyle(const bool Value);
	void __fastcall AdjustDropDownHeight();
	void __fastcall AdjustDropDownWidth();
	void __fastcall UpdateListBoxLookup(System::UnicodeString AText);
	void __fastcall DeleteFromEdit();
	HIDESBASE void __fastcall EditKeyDown(System::TObject* Sender, System::Word &Key, System::WideChar &KeyChar, System::Classes::TShiftState Shift);
	virtual void __fastcall KeyDown(System::Word &Key, System::WideChar &KeyChar, System::Classes::TShiftState Shift);
	void __fastcall EditTyping(System::TObject* Sender);
	virtual Fmx::Tmsfnccustomselector::TTMSFNCCustomSelector* __fastcall CreateSelector();
	int __fastcall GetVisibleItemCount();
	__property bool AutoCloseUp = {read=FAutoCloseUp, write=SetAutoCloseUp, default=0};
	__property bool AutoDropDown = {read=FAutoDropDown, write=SetAutoDropDown, default=0};
	__property bool AutoComplete = {read=FAutoComplete, write=SetAutoComplete, default=1};
	__property int AutoCompleteDelay = {read=FAutoCompleteDelay, write=SetAutoCompleteDelay, default=500};
	__property int AutoCompleteNumChar = {read=FAutoCompleteNumChar, write=SetAutoCompleteNumChar, default=2};
	__property bool CaseSensitive = {read=FCaseSensitive, write=SetCaseSensitive, default=0};
	__property Fmx::Controls::TControl* Control = {read=FControl, write=SetControl};
	__property float DropDownControlHeight = {read=FDropDownControlHeight, write=SetDropDownControlHeight};
	__property float DropDownControlWidth = {read=FDropDownControlWidth, write=SetDropDownControlWidth};
	__property TTMSFNCControlPickderDropDownHeightMode DropDownHeightMode = {read=FDropDownHeightMode, write=SetDropDownHeightMode, default=0};
	__property TTMSFNCControlPickderDropDownWidthMode DropDownWidthMode = {read=FDropDownWidthMode, write=SetDropDownWidthMode, default=0};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* Font = {read=FFont, write=SetFnt};
	__property int ItemIndex = {read=GetItemIndex, write=SetItemIndex, default=-1};
	__property float ItemHeight = {read=GetItemHeight, write=SetItemHeight};
	__property float ItemWidth = {read=GetItemWidth, write=SetItemWidth};
	__property TTMSFNCControlPickerStyle Style = {read=FStyle, write=SetStyle, default=0};
	__property System::UnicodeString Text = {read=GetText, write=SetText};
	__property TTMSFNCCustomControlPickerOnAdjustDropDownSizeEvent OnAdjustDropDownHeight = {read=FOnAdjustDropDownHeight, write=FOnAdjustDropDownHeight};
	__property TTMSFNCCustomControlPickerOnAdjustDropDownSizeEvent OnAdjustDropDownWidth = {read=FOnAdjustDropDownWidth, write=FOnAdjustDropDownWidth};
	__property TTMSFNCCustomControlPickerAfterDrawContentEvent OnAfterDrawPickerContent = {read=FOnAfterDrawPickerContent, write=FOnAfterDrawPickerContent};
	__property TTMSFNCCustomControlPickerBeforeDrawContentEvent OnBeforeDrawPickerContent = {read=FOnBeforeDrawPickerContent, write=FOnBeforeDrawPickerContent};
	__property TTMSFNCCustomControlPickerItemSelectedEvent OnItemSelected = {read=FOnItemSelected, write=FOnItemSelected};
	__property TTMSFNCCustomControlPickerOnSetContentEvent OnSetContent = {read=FOnSetContent, write=FOnSetContent};
	
public:
	__fastcall virtual TTMSFNCCustomControlPicker(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCCustomControlPicker();
	void __fastcall CallItemClicked(int AItemIndex);
	virtual void __fastcall UpdatePickerContent();
	virtual void __fastcall UpdatePickerDropDownSize();
	virtual void __fastcall UpdateDropDown();
	virtual void __fastcall DropDown();
	__property int Count = {read=GetCount, nodefault};
};


class PASCALIMPLEMENTATION TTMSFNCControlPicker : public TTMSFNCCustomControlPicker
{
	typedef TTMSFNCCustomControlPicker inherited;
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	
__published:
	__property AutoCloseUp = {default=0};
	__property AutoDropDown = {default=0};
	__property AutoComplete = {default=1};
	__property AutoCompleteDelay = {default=500};
	__property AutoCompleteNumChar = {default=2};
	__property Control;
	__property CaseSensitive = {default=0};
	__property DropDownControlHeight = {default=0};
	__property DropDownControlWidth = {default=0};
	__property DropDownHeightMode = {default=0};
	__property DropDownWidthMode = {default=0};
	__property Font;
	__property ItemIndex = {default=-1};
	__property ItemHeight = {default=0};
	__property ItemWidth = {default=0};
	__property ShowFocus = {default=1};
	__property Style = {default=0};
	__property Text = {default=0};
	__property OnAdjustDropDownHeight;
	__property OnAdjustDropDownWidth;
	__property OnAfterDrawPickerContent;
	__property OnBeforeDrawPickerContent;
	__property OnItemSelected;
	__property OnSetContent;
public:
	/* TTMSFNCCustomControlPicker.Create */ inline __fastcall virtual TTMSFNCControlPicker(System::Classes::TComponent* AOwner) : TTMSFNCCustomControlPicker(AOwner) { }
	/* TTMSFNCCustomControlPicker.Destroy */ inline __fastcall virtual ~TTMSFNCControlPicker() { }
	
};


//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x1);
static constexpr System::Int8 BLD_VER = System::Int8(0x2);
}	/* namespace Tmsfnccontrolpicker */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCCONTROLPICKER)
using namespace Fmx::Tmsfnccontrolpicker;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfnccontrolpickerHPP
