// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCCheckGroupPicker.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfnccheckgrouppickerHPP
#define Fmx_TmsfnccheckgrouppickerHPP

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
#include <FMX.TMSFNCCheckGroup.hpp>
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
namespace Tmsfnccheckgrouppicker
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCCustomCheckGroupPicker;
class DELPHICLASS TTMSFNCCheckGroupPicker;
//-- type declarations -------------------------------------------------------
typedef void __fastcall (__closure *TTMSFNCCustomCheckGroupPickerItemsSelected)(System::TObject* Sender, System::UnicodeString AValue);

class PASCALIMPLEMENTATION TTMSFNCCustomCheckGroupPicker : public Fmx::Tmsfnccustompicker::TTMSFNCDefaultPicker
{
	typedef Fmx::Tmsfnccustompicker::TTMSFNCDefaultPicker inherited;
	
private:
	Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* FBitmapContainer;
	__int64 FValue;
	System::Classes::TStringList* FItems;
	Fmx::Tmsfnccustomselector::TTMSFNCCustomSelector* FWrapper;
	Fmx::Tmsfnccheckgroup::TTMSFNCCheckGroup* FCheckGroupSelector;
	bool FKeyBoardUsed;
	bool FCloseOnSelection;
	System::Classes::TNotifyEvent FOnCustomize;
	System::Classes::TNotifyEvent FOnTitleCheckBoxClick;
	Fmx::Tmsfnccheckgroup::TTMSFNCCheckGroupTitle* FTitle;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FFont;
	int FColumns;
	Fmx::Tmsfnccheckgroup::TTMSFNCCheckGroupClickEvent FOnCheckBoxClick;
	System::WideChar FSeparator;
	System::UnicodeString __fastcall GetSelectedItems();
	void __fastcall SetSelectedItems(const System::UnicodeString Value);
	HIDESBASE void __fastcall SetItems(System::Classes::TStringList* const Value);
	void __fastcall SetValue(const __int64 Value);
	Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* __fastcall GetBitmapContainer();
	void __fastcall SetBitmapContainer(Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* const Value);
	HIDESBASE void __fastcall SetColumns(const int Value);
	HIDESBASE void __fastcall SetFnt(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetTitle(Fmx::Tmsfnccheckgroup::TTMSFNCCheckGroupTitle* const Value);
	bool __fastcall GetChecked(int AIndex);
	void __fastcall SetChecked(int AIndex, const bool Value);
	
protected:
	virtual void __fastcall ChangeDPIScale(int M, int D);
	virtual System::UnicodeString __fastcall GetVersion();
	void __fastcall ItemsChanged(System::TObject* Sender);
	virtual void __fastcall ResetToDefaultStyle();
	virtual void __fastcall ApplyStyle();
	virtual void __fastcall SetAdaptToStyle(const bool Value);
	void __fastcall CheckGroupKeyUp(System::TObject* Sender, System::Word &Key, System::WideChar &KeyChar, System::Classes::TShiftState Shift);
	void __fastcall CheckGroupKeyDown(System::TObject* Sender, System::Word &Key, System::WideChar &KeyChar, System::Classes::TShiftState Shift);
	virtual void __fastcall Notification(System::Classes::TComponent* AComponent, System::Classes::TOperation Operation);
	virtual void __fastcall InitializePopup();
	void __fastcall DoTitleCheckBoxClick(System::TObject* Sender);
	void __fastcall DoCheckBoxClick(System::TObject* Sender, int AItemIndex, __int64 AValue);
	virtual void __fastcall DrawContent(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	System::UnicodeString __fastcall GetHTMLSelectedItems();
	virtual Fmx::Tmsfnccustomselector::TTMSFNCCustomSelector* __fastcall CreateSelector();
	virtual Fmx::Controls::TControl* __fastcall GetFocusedControl();
	__property bool CloseOnSelection = {read=FCloseOnSelection, write=FCloseOnSelection, default=0};
	__property Fmx::Tmsfnccheckgroup::TTMSFNCCheckGroupClickEvent OnCheckBoxClick = {read=FOnCheckBoxClick, write=FOnCheckBoxClick};
	__property System::UnicodeString SelectedItems = {read=GetSelectedItems, write=SetSelectedItems};
	__property __int64 Value = {read=FValue, write=SetValue, default=0};
	__property System::Classes::TNotifyEvent OnCustomize = {read=FOnCustomize, write=FOnCustomize};
	__property System::Classes::TStringList* Items = {read=FItems, write=SetItems};
	__property Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* BitmapContainer = {read=GetBitmapContainer, write=SetBitmapContainer};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* Font = {read=FFont, write=SetFnt};
	__property int Columns = {read=FColumns, write=SetColumns, default=1};
	__property Fmx::Tmsfnccheckgroup::TTMSFNCCheckGroupTitle* Title = {read=FTitle, write=SetTitle};
	__property System::Classes::TNotifyEvent OnTitleCheckBoxClick = {read=FOnTitleCheckBoxClick, write=FOnTitleCheckBoxClick};
	__property bool Checked[int AIndex] = {read=GetChecked, write=SetChecked};
	__property System::WideChar Separator = {read=FSeparator, write=FSeparator, nodefault};
	
public:
	__fastcall virtual TTMSFNCCustomCheckGroupPicker(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCCustomCheckGroupPicker();
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


class PASCALIMPLEMENTATION TTMSFNCCheckGroupPicker : public TTMSFNCCustomCheckGroupPicker
{
	typedef TTMSFNCCustomCheckGroupPicker inherited;
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	
public:
	__property Value = {default=0};
	__property Checked;
	
__published:
	__property Items;
	__property BitmapContainer;
	__property DropDownWidth;
	__property DropDownHeight;
	__property CloseOnSelection = {default=0};
	__property SelectedItems = {default=0};
	__property OnCustomize;
	__property Font;
	__property Columns = {default=1};
	__property Fill;
	__property Stroke;
	__property OnTitleCheckBoxClick;
	__property OnCheckBoxClick;
	__property Separator;
public:
	/* TTMSFNCCustomCheckGroupPicker.Create */ inline __fastcall virtual TTMSFNCCheckGroupPicker(System::Classes::TComponent* AOwner) : TTMSFNCCustomCheckGroupPicker(AOwner) { }
	/* TTMSFNCCustomCheckGroupPicker.Destroy */ inline __fastcall virtual ~TTMSFNCCheckGroupPicker() { }
	
};


//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x1);
static constexpr System::Int8 BLD_VER = System::Int8(0x0);
}	/* namespace Tmsfnccheckgrouppicker */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCCHECKGROUPPICKER)
using namespace Fmx::Tmsfnccheckgrouppicker;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfnccheckgrouppickerHPP
