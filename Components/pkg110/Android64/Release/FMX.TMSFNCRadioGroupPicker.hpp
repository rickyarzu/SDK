// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCRadioGroupPicker.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncradiogrouppickerHPP
#define Fmx_TmsfncradiogrouppickerHPP

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
#include <FMX.TMSFNCGraphicsTypes.hpp>
#include <FMX.TMSFNCGraphics.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.TMSFNCRadioGroup.hpp>
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
namespace Tmsfncradiogrouppicker
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCCustomRadioGroupPicker;
class DELPHICLASS TTMSFNCRadioGroupPicker;
//-- type declarations -------------------------------------------------------
typedef void __fastcall (__closure *TTMSFNCCustomRadioGroupPickerItemSelected)(System::TObject* Sender, System::UnicodeString AValue);

class PASCALIMPLEMENTATION TTMSFNCCustomRadioGroupPicker : public Fmx::Tmsfnccustompicker::TTMSFNCDefaultPicker
{
	typedef Fmx::Tmsfnccustompicker::TTMSFNCDefaultPicker inherited;
	
private:
	Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* FBitmapContainer;
	int FItemIndex;
	System::Classes::TStringList* FItems;
	Fmx::Tmsfnccustomselector::TTMSFNCCustomSelector* FWrapper;
	Fmx::Tmsfncradiogroup::TTMSFNCRadioGroup* FRadioGroupSelector;
	bool FKeyBoardUsed;
	bool FCloseOnSelection;
	System::Classes::TNotifyEvent FOnCustomize;
	System::Classes::TNotifyEvent FOnTitleCheckBoxClick;
	Fmx::Tmsfncradiogroup::TTMSFNCRadioGroupTitle* FTitle;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FFont;
	int FColumns;
	Fmx::Tmsfncradiogroup::TTMSFNCRadioGroupClickEvent FOnRadioButtonClick;
	System::UnicodeString __fastcall GetSelectedItem();
	void __fastcall SetSelectedItem(const System::UnicodeString Value);
	HIDESBASE void __fastcall SetItems(System::Classes::TStringList* const Value);
	void __fastcall SetItemIndex(const int Value);
	Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* __fastcall GetBitmapContainer();
	void __fastcall SetBitmapContainer(Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* const Value);
	HIDESBASE void __fastcall SetColumns(const int Value);
	HIDESBASE void __fastcall SetFnt(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetTitle(Fmx::Tmsfncradiogroup::TTMSFNCRadioGroupTitle* const Value);
	
protected:
	virtual void __fastcall ChangeDPIScale(int M, int D);
	virtual System::UnicodeString __fastcall GetVersion();
	void __fastcall ItemsChanged(System::TObject* Sender);
	virtual void __fastcall SetAdaptToStyle(const bool Value);
	void __fastcall RadioGroupKeyUp(System::TObject* Sender, System::Word &Key, System::WideChar &KeyChar, System::Classes::TShiftState Shift);
	void __fastcall RadioGroupKeyDown(System::TObject* Sender, System::Word &Key, System::WideChar &KeyChar, System::Classes::TShiftState Shift);
	virtual void __fastcall ApplyStyle();
	virtual void __fastcall ResetToDefaultStyle();
	virtual void __fastcall Notification(System::Classes::TComponent* AComponent, System::Classes::TOperation Operation);
	virtual void __fastcall InitializePopup();
	void __fastcall DoTitleCheckBoxClick(System::TObject* Sender);
	void __fastcall DoRadioButtonClick(System::TObject* Sender, int AItemIndex);
	virtual void __fastcall DrawContent(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	virtual void __fastcall SelectFirstValue();
	virtual void __fastcall SelectLastValue();
	virtual void __fastcall SelectNextValue();
	virtual void __fastcall SelectPreviousValue();
	virtual Fmx::Tmsfnccustomselector::TTMSFNCCustomSelector* __fastcall CreateSelector();
	virtual Fmx::Controls::TControl* __fastcall GetFocusedControl();
	__property bool CloseOnSelection = {read=FCloseOnSelection, write=FCloseOnSelection, default=1};
	__property System::UnicodeString SelectedItem = {read=GetSelectedItem, write=SetSelectedItem};
	__property int ItemIndex = {read=FItemIndex, write=SetItemIndex, default=-1};
	__property System::Classes::TNotifyEvent OnCustomize = {read=FOnCustomize, write=FOnCustomize};
	__property System::Classes::TStringList* Items = {read=FItems, write=SetItems};
	__property Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* BitmapContainer = {read=GetBitmapContainer, write=SetBitmapContainer};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* Font = {read=FFont, write=SetFnt};
	__property int Columns = {read=FColumns, write=SetColumns, default=1};
	__property Fmx::Tmsfncradiogroup::TTMSFNCRadioGroupTitle* Title = {read=FTitle, write=SetTitle};
	__property System::Classes::TNotifyEvent OnTitleCheckBoxClick = {read=FOnTitleCheckBoxClick, write=FOnTitleCheckBoxClick};
	__property Fmx::Tmsfncradiogroup::TTMSFNCRadioGroupClickEvent OnRadioButtonClick = {read=FOnRadioButtonClick, write=FOnRadioButtonClick};
	
public:
	__fastcall virtual TTMSFNCCustomRadioGroupPicker(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCCustomRadioGroupPicker();
	void __fastcall InitSample();
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


class PASCALIMPLEMENTATION TTMSFNCRadioGroupPicker : public TTMSFNCCustomRadioGroupPicker
{
	typedef TTMSFNCCustomRadioGroupPicker inherited;
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	
__published:
	__property Items;
	__property BitmapContainer;
	__property ItemIndex = {default=-1};
	__property DropDownWidth;
	__property DropDownHeight;
	__property CloseOnSelection = {default=1};
	__property SelectedItem = {default=0};
	__property OnCustomize;
	__property Font;
	__property Columns = {default=1};
	__property Fill;
	__property Stroke;
	__property OnTitleCheckBoxClick;
	__property OnRadioButtonClick;
public:
	/* TTMSFNCCustomRadioGroupPicker.Create */ inline __fastcall virtual TTMSFNCRadioGroupPicker(System::Classes::TComponent* AOwner) : TTMSFNCCustomRadioGroupPicker(AOwner) { }
	/* TTMSFNCCustomRadioGroupPicker.Destroy */ inline __fastcall virtual ~TTMSFNCRadioGroupPicker() { }
	
};


//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x1);
static constexpr System::Int8 BLD_VER = System::Int8(0x0);
}	/* namespace Tmsfncradiogrouppicker */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCRADIOGROUPPICKER)
using namespace Fmx::Tmsfncradiogrouppicker;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncradiogrouppickerHPP
