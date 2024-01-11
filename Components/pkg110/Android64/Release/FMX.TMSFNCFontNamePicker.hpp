// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCFontNamePicker.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncfontnamepickerHPP
#define Fmx_TmsfncfontnamepickerHPP

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
#include <FMX.TMSFNCGraphics.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.StdCtrls.hpp>
#include <FMX.TMSFNCGraphicsTypes.hpp>
#include <FMX.ListBox.hpp>
#include <System.Types.hpp>
#include <FMX.TMSFNCCustomControl.hpp>
#include <FMX.Types.hpp>
#include <System.Generics.Collections.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncfontnamepicker
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCCustomFontNamePicker;
class DELPHICLASS TTMSFNCFontNamePicker;
//-- type declarations -------------------------------------------------------
typedef void __fastcall (__closure *TTMSFNCCustomFontNamePickerFontNameSelected)(System::TObject* Sender, System::UnicodeString AFontName);

class PASCALIMPLEMENTATION TTMSFNCCustomFontNamePicker : public Fmx::Tmsfnccustompicker::TTMSFNCDefaultPicker
{
	typedef Fmx::Tmsfnccustompicker::TTMSFNCDefaultPicker inherited;
	
private:
	int FItemIndex;
	System::Classes::TStringList* FItems;
	Fmx::Tmsfnccustomselector::TTMSFNCCustomSelector* FWrapper;
	Fmx::Listbox::TListBox* FFontNameSelector;
	bool FKeyBoardUsed;
	TTMSFNCCustomFontNamePickerFontNameSelected FOnFontNameSelected;
	bool FCloseOnSelection;
	System::Classes::TNotifyEvent FOnCustomize;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FFont;
	System::UnicodeString __fastcall GetSelectedFontName();
	void __fastcall SetSelectedFontName(const System::UnicodeString Value);
	HIDESBASE void __fastcall SetItems(System::Classes::TStringList* const Value);
	HIDESBASE void __fastcall SetFnt(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	
protected:
	virtual void __fastcall ChangeDPIScale(int M, int D);
	virtual System::UnicodeString __fastcall GetVersion();
	void __fastcall FontChange(System::TObject* Sender);
	virtual void __fastcall ResetToDefaultStyle();
	virtual void __fastcall ApplyStyle();
	virtual void __fastcall SetGraphicColors();
	void __fastcall FontNameKeyUp(System::TObject* Sender, System::Word &Key, System::WideChar &KeyChar, System::Classes::TShiftState Shift);
	void __fastcall FontNameKeyDown(System::TObject* Sender, System::Word &Key, System::WideChar &KeyChar, System::Classes::TShiftState Shift);
	void __fastcall FontNameSelected(Fmx::Listbox::TCustomListBox* const Sender, Fmx::Listbox::TListBoxItem* const Item);
	virtual void __fastcall DoFontNameSelected();
	virtual void __fastcall InitializePopup();
	virtual void __fastcall DrawContent(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	virtual void __fastcall SelectFirstValue();
	virtual void __fastcall SelectLastValue();
	virtual void __fastcall SelectNextValue();
	virtual void __fastcall SelectPreviousValue();
	virtual Fmx::Tmsfnccustomselector::TTMSFNCCustomSelector* __fastcall CreateSelector();
	virtual Fmx::Controls::TControl* __fastcall GetFocusedControl();
	__property bool CloseOnSelection = {read=FCloseOnSelection, write=FCloseOnSelection, default=1};
	__property TTMSFNCCustomFontNamePickerFontNameSelected OnFontNameSelected = {read=FOnFontNameSelected, write=FOnFontNameSelected};
	__property System::UnicodeString SelectedFontName = {read=GetSelectedFontName, write=SetSelectedFontName};
	__property System::Classes::TNotifyEvent OnCustomize = {read=FOnCustomize, write=FOnCustomize};
	__property System::Classes::TStringList* Items = {read=FItems, write=SetItems};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* Font = {read=FFont, write=SetFnt};
	
public:
	__fastcall virtual TTMSFNCCustomFontNamePicker(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCCustomFontNamePicker();
};


class PASCALIMPLEMENTATION TTMSFNCFontNamePicker : public TTMSFNCCustomFontNamePicker
{
	typedef TTMSFNCCustomFontNamePicker inherited;
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	
public:
	__property Items;
	
__published:
	__property DropDownWidth;
	__property DropDownHeight;
	__property CloseOnSelection = {default=1};
	__property OnFontNameSelected;
	__property SelectedFontName = {default=0};
	__property OnCustomize;
	__property Font;
public:
	/* TTMSFNCCustomFontNamePicker.Create */ inline __fastcall virtual TTMSFNCFontNamePicker(System::Classes::TComponent* AOwner) : TTMSFNCCustomFontNamePicker(AOwner) { }
	/* TTMSFNCCustomFontNamePicker.Destroy */ inline __fastcall virtual ~TTMSFNCFontNamePicker() { }
	
};


//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x0);
static constexpr System::Int8 BLD_VER = System::Int8(0x0);
}	/* namespace Tmsfncfontnamepicker */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCFONTNAMEPICKER)
using namespace Fmx::Tmsfncfontnamepicker;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncfontnamepickerHPP
