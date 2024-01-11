// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCCustomPicker.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfnccustompickerHPP
#define Fmx_TmsfnccustompickerHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <FMX.TMSFNCCustomSelector.hpp>
#include <FMX.TMSFNCPersistence.hpp>
#include <FMX.TMSFNCGraphics.hpp>
#include <FMX.TMSFNCGraphicsTypes.hpp>
#include <FMX.TMSFNCCustomControl.hpp>
#include <FMX.TMSFNCPopup.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.Controls.hpp>
#include <System.UITypes.hpp>
#include <System.Types.hpp>
#include <FMX.Edit.hpp>
#include <FMX.Types.hpp>
#include <FMX.StdCtrls.hpp>
#include <FMX.ExtCtrls.hpp>
#include <System.Generics.Collections.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfnccustompicker
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCCustomPicker;
class DELPHICLASS TTMSFNCDefaultPicker;
//-- type declarations -------------------------------------------------------
typedef void __fastcall (__closure *TTMSFNCCustomPickerBeforeDraw)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCCustomPickerAfterDraw)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCustomPicker : public Fmx::Tmsfnccustomcontrol::TTMSFNCCustomControl
{
	typedef Fmx::Tmsfnccustomcontrol::TTMSFNCCustomControl inherited;
	
private:
	bool FExitTimerClose;
	bool FDefaultStyle;
	System::Word FKeyDown;
	System::UnicodeString FContent;
	Fmx::Edit::TEdit* FEdit;
	Fmx::Types::TTimer* FTimer;
	Fmx::Types::TTimer* FExitTimer;
	bool FDown;
	Fmx::Tmsfncpopup::TTMSFNCPopup* FPopup;
	Fmx::Tmsfnccustomselector::TTMSFNCCustomSelector* FSelector;
	Fmx::Tmsfnccustomselector::TTMSFNCCustomSelectorItemBeforeDrawText FOnItemBeforeDrawText;
	Fmx::Tmsfnccustomselector::TTMSFNCCustomSelectorAfterDraw FOnAfterDraw;
	Fmx::Tmsfnccustomselector::TTMSFNCCustomSelectorItemAfterDrawBackground FOnItemAfterDrawBackground;
	Fmx::Tmsfnccustomselector::TTMSFNCCustomSelectorItemSelected FOnItemSelected;
	Fmx::Tmsfnccustomselector::TTMSFNCCustomSelectorItemAfterDrawText FOnItemAfterDrawText;
	Fmx::Tmsfnccustomselector::TTMSFNCCustomSelectorBeforeDraw FOnBeforeDraw;
	Fmx::Tmsfnccustomselector::TTMSFNCCustomSelectorItemBeforeDrawBackground FOnItemBeforeDrawBackground;
	float FDropDownHeight;
	float FDropDownWidth;
	Fmx::Tmsfnccustomselector::TTMSFNCCustomSelectorItemDeselected FOnItemDeselected;
	Fmx::Tmsfnccustomselector::TTMSFNCCustomSelectorItemClick FOnItemClick;
	Fmx::Tmsfnccustomselector::TTMSFNCCustomSelectorItemBeforeDrawContent FOnItemBeforeDrawContent;
	Fmx::Tmsfnccustomselector::TTMSFNCCustomSelectorItemAfterDrawContent FOnItemAfterDrawContent;
	TTMSFNCCustomPickerBeforeDraw FOnPickerBeforeDraw;
	TTMSFNCCustomPickerAfterDraw FOnPickerAfterDraw;
	bool FShowFocus;
	System::Classes::TNotifyEvent FOnClosePopup;
	System::Classes::TNotifyEvent FOnPopup;
	System::Classes::TNotifyEvent FOnEditChange;
	bool FEditable;
	int FUpdateCount;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FFont;
	bool FPreventDropDown;
	void __fastcall CalcSize();
	Fmx::Tmsfnccustomselector::TTMSFNCCustomSelectorAppearance* __fastcall GetAppearance();
	int __fastcall GetColumns();
	Fmx::Tmsfnccustomselector::TTMSFNCCustomSelectorItems* __fastcall GetItems();
	int __fastcall GetRows();
	int __fastcall GetSelectedItemIndex();
	void __fastcall SetAppearance(Fmx::Tmsfnccustomselector::TTMSFNCCustomSelectorAppearance* const Value);
	void __fastcall SetColumns(const int Value);
	void __fastcall SetItems(Fmx::Tmsfnccustomselector::TTMSFNCCustomSelectorItems* const Value);
	void __fastcall SetRows(const int Value);
	void __fastcall SetSelectedItemIndex(const int Value);
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* __fastcall GetFill();
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* __fastcall GetStroke();
	HIDESBASE void __fastcall SetFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	HIDESBASE void __fastcall SetStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetDropDownHeight(const float Value);
	void __fastcall SetDropDownWidth(const float Value);
	bool __fastcall IsDropDownHeightStored();
	bool __fastcall IsDropDownWidthStored();
	Fmx::Tmsfncpopup::TTMSFNCPopup* __fastcall GetPopup();
	Fmx::Tmsfnccustomselector::TTMSFNCCustomSelector* __fastcall GetSelector();
	void __fastcall SetShowFocus(const bool Value);
	void __fastcall SetContent(const System::UnicodeString Value);
	void __fastcall SetDefaultStyle(const bool Value);
	void __fastcall SetFnt(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	
protected:
	virtual void __fastcall ChangeDPIScale(int M, int D);
	virtual System::UnicodeString __fastcall GetVersion();
	virtual System::UnicodeString __fastcall GetContent();
	virtual System::UnicodeString __fastcall GetDocURL();
	virtual void __fastcall SetEditable(const bool Value);
	virtual void __fastcall ApplyStyle();
	virtual void __fastcall SetAdaptToStyle(const bool Value);
	virtual void __fastcall DoExit();
	virtual void __fastcall DoEnter();
	virtual void __fastcall DoEditExit(System::TObject* Sender);
	virtual void __fastcall UpdateEditText(System::UnicodeString AText);
	virtual void __fastcall DoItemSelected(System::TObject* Sender, int AItemIndex);
	virtual void __fastcall DoItemDeselected(System::TObject* Sender, int AItemIndex);
	virtual void __fastcall DoItemClick(System::TObject* Sender, int AItemIndex);
	virtual void __fastcall DoItemBeforeDrawBackground(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AItemIndex, bool &AAllowDraw);
	virtual void __fastcall DoItemAfterDrawBackground(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AItemIndex);
	virtual void __fastcall DoItemBeforeDrawContent(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AItemIndex, bool &AAllowDraw);
	virtual void __fastcall DoItemAfterDrawContent(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AItemIndex);
	virtual void __fastcall DoItemBeforeDrawText(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AItemIndex, System::UnicodeString &AText, bool &AAllowDraw);
	virtual void __fastcall DoItemAfterDrawText(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AItemIndex, System::UnicodeString AText);
	HIDESBASE virtual void __fastcall DoBeforeDraw(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, bool &AAllowDraw);
	HIDESBASE virtual void __fastcall DoAfterDraw(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	virtual void __fastcall DoPickerBeforeDraw(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, bool &ADefaultDraw);
	virtual void __fastcall DoPickerAfterDraw(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	virtual void __fastcall Draw(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	virtual void __fastcall SelectFirstValue();
	virtual void __fastcall SelectLastValue();
	virtual void __fastcall SelectNextValue();
	virtual void __fastcall SelectPreviousValue();
	virtual void __fastcall EditUp();
	virtual void __fastcall EditDown();
	void __fastcall DoPopup(System::TObject* Sender);
	void __fastcall DoClosePopup(System::TObject* Sender);
	void __fastcall EnterTimerChanged(System::TObject* Sender);
	void __fastcall ExitTimerChanged(System::TObject* Sender);
	void __fastcall EditChange(System::TObject* Sender);
	virtual void __fastcall DoEditChange();
	virtual void __fastcall HandleDialogKey(System::Word &Key, System::Classes::TShiftState Shift);
	virtual void __fastcall InitializePopup();
	void __fastcall FntChanged(System::TObject* Sender);
	virtual Fmx::Tmsfnccustomselector::TTMSFNCCustomSelector* __fastcall CreateSelector();
	virtual Fmx::Controls::TControl* __fastcall GetFocusedControl();
	virtual void __fastcall AssignEvents();
	virtual void __fastcall SetGraphicColors();
	virtual void __fastcall DrawContent(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	virtual void __fastcall DrawBackground(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	virtual void __fastcall HandleMouseDown(System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall HandleMouseUp(System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall HandleKeyUp(System::Word &Key, System::Classes::TShiftState Shift);
	virtual void __fastcall HandleKeyDown(System::Word &Key, System::Classes::TShiftState Shift);
	void __fastcall EditKeyDown(System::TObject* Sender, System::Word &Key, System::WideChar &KeyChar, System::Classes::TShiftState Shift);
	__property bool PreventDropDown = {read=FPreventDropDown, write=FPreventDropDown, nodefault};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* Font = {read=FFont, write=SetFnt};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* Fill = {read=GetFill, write=SetFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* Stroke = {read=GetStroke, write=SetStroke};
	__property float DropDownHeight = {read=FDropDownHeight, write=SetDropDownHeight, stored=IsDropDownHeightStored};
	__property float DropDownWidth = {read=FDropDownWidth, write=SetDropDownWidth, stored=IsDropDownWidthStored};
	__property Fmx::Tmsfnccustomselector::TTMSFNCCustomSelectorAppearance* Appearance = {read=GetAppearance, write=SetAppearance};
	__property int SelectedItemIndex = {read=GetSelectedItemIndex, write=SetSelectedItemIndex, default=-1};
	__property int Rows = {read=GetRows, write=SetRows, default=4};
	__property bool ShowFocus = {read=FShowFocus, write=SetShowFocus, default=1};
	__property int Columns = {read=GetColumns, write=SetColumns, default=4};
	__property Fmx::Tmsfnccustomselector::TTMSFNCCustomSelectorItems* Items = {read=GetItems, write=SetItems};
	__property TTMSFNCCustomPickerBeforeDraw OnPickerBeforeDraw = {read=FOnPickerBeforeDraw, write=FOnPickerBeforeDraw};
	__property TTMSFNCCustomPickerAfterDraw OnPickerAfterDraw = {read=FOnPickerAfterDraw, write=FOnPickerAfterDraw};
	__property Fmx::Tmsfnccustomselector::TTMSFNCCustomSelectorItemSelected OnItemSelected = {read=FOnItemSelected, write=FOnItemSelected};
	__property Fmx::Tmsfnccustomselector::TTMSFNCCustomSelectorItemDeselected OnItemDeselected = {read=FOnItemDeselected, write=FOnItemDeselected};
	__property Fmx::Tmsfnccustomselector::TTMSFNCCustomSelectorItemClick OnItemClick = {read=FOnItemClick, write=FOnItemClick};
	__property Fmx::Tmsfnccustomselector::TTMSFNCCustomSelectorItemBeforeDrawBackground OnItemBeforeDrawBackground = {read=FOnItemBeforeDrawBackground, write=FOnItemBeforeDrawBackground};
	__property Fmx::Tmsfnccustomselector::TTMSFNCCustomSelectorItemAfterDrawBackground OnItemAfterDrawBackground = {read=FOnItemAfterDrawBackground, write=FOnItemAfterDrawBackground};
	__property Fmx::Tmsfnccustomselector::TTMSFNCCustomSelectorItemBeforeDrawContent OnItemBeforeDrawContent = {read=FOnItemBeforeDrawContent, write=FOnItemBeforeDrawContent};
	__property Fmx::Tmsfnccustomselector::TTMSFNCCustomSelectorItemAfterDrawContent OnItemAfterDrawContent = {read=FOnItemAfterDrawContent, write=FOnItemAfterDrawContent};
	__property Fmx::Tmsfnccustomselector::TTMSFNCCustomSelectorBeforeDraw OnBeforeDraw = {read=FOnBeforeDraw, write=FOnBeforeDraw};
	__property Fmx::Tmsfnccustomselector::TTMSFNCCustomSelectorAfterDraw OnAfterDraw = {read=FOnAfterDraw, write=FOnAfterDraw};
	__property Fmx::Tmsfnccustomselector::TTMSFNCCustomSelectorItemBeforeDrawText OnItemBeforeDrawText = {read=FOnItemBeforeDrawText, write=FOnItemBeforeDrawText};
	__property Fmx::Tmsfnccustomselector::TTMSFNCCustomSelectorItemAfterDrawText OnItemAfterDrawText = {read=FOnItemAfterDrawText, write=FOnItemAfterDrawText};
	__property bool Editable = {read=FEditable, write=SetEditable, default=0};
	__property System::Classes::TNotifyEvent OnEditChange = {read=FOnEditChange, write=FOnEditChange};
	__property System::Classes::TNotifyEvent OnClosePopup = {read=FOnClosePopup, write=FOnClosePopup};
	__property System::Classes::TNotifyEvent OnPopup = {read=FOnPopup, write=FOnPopup};
	__property System::UnicodeString Version = {read=GetVersion};
	__property System::UnicodeString Content = {read=GetContent, write=SetContent};
	__property int UpdateCount = {read=FUpdateCount, nodefault};
	__property bool DefaultStyle = {read=FDefaultStyle, write=SetDefaultStyle, default=1};
	
public:
	__fastcall virtual TTMSFNCCustomPicker(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCCustomPicker();
	virtual void __fastcall DropDown();
	__property Fmx::Tmsfncpopup::TTMSFNCPopup* Popup = {read=GetPopup};
	__property Fmx::Tmsfnccustomselector::TTMSFNCCustomSelector* Selector = {read=GetSelector};
	__property Fmx::Edit::TEdit* Edit = {read=FEdit};
	virtual void __fastcall BeginUpdate();
	virtual void __fastcall EndUpdate();
	virtual void __fastcall LoadSettingsFromFile(System::UnicodeString AFileName);
	virtual void __fastcall LoadSettingsFromStream(System::Classes::TStream* AStream);
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCDefaultPicker : public TTMSFNCCustomPicker
{
	typedef TTMSFNCCustomPicker inherited;
	
__published:
	__property DefaultStyle = {default=1};
	__property Fill;
	__property Stroke;
	__property Font;
	__property Version = {default=0};
	__property OnPopup;
	__property OnClosePopup;
public:
	/* TTMSFNCCustomPicker.Create */ inline __fastcall virtual TTMSFNCDefaultPicker(System::Classes::TComponent* AOwner) : TTMSFNCCustomPicker(AOwner) { }
	/* TTMSFNCCustomPicker.Destroy */ inline __fastcall virtual ~TTMSFNCDefaultPicker() { }
	
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
}	/* namespace Tmsfnccustompicker */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCCUSTOMPICKER)
using namespace Fmx::Tmsfnccustompicker;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfnccustompickerHPP
