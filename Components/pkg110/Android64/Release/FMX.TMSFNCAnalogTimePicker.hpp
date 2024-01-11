// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCAnalogTimePicker.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncanalogtimepickerHPP
#define Fmx_TmsfncanalogtimepickerHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <FMX.TMSFNCCustomPicker.hpp>
#include <FMX.TMSFNCCustomSelector.hpp>
#include <FMX.TMSFNCGraphics.hpp>
#include <FMX.Controls.hpp>
#include <FMX.TMSFNCAnalogTimeSelector.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.StdCtrls.hpp>
#include <System.SysUtils.hpp>
#include <FMX.TMSFNCUtils.hpp>
#include <FMX.TMSFNCGraphicsTypes.hpp>
#include <System.Types.hpp>
#include <FMX.Types.hpp>
#include <FMX.TMSFNCCustomControl.hpp>
#include <System.Generics.Collections.hpp>
#include <System.Generics.Defaults.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncanalogtimepicker
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCCustomAnalogTimePicker;
class DELPHICLASS TTMSFNCAnalogTimePicker;
//-- type declarations -------------------------------------------------------
enum DECLSPEC_DENUM TTMSFNCTimePickerMode : unsigned char { tpmAnalog, tpmDigital };

typedef void __fastcall (__closure *TTMSFNCCustomAnalogTimePickerTimeSelectedEvent)(System::TObject* Sender, System::TTime ATime);

class PASCALIMPLEMENTATION TTMSFNCCustomAnalogTimePicker : public Fmx::Tmsfnccustompicker::TTMSFNCDefaultPicker
{
	typedef Fmx::Tmsfnccustompicker::TTMSFNCDefaultPicker inherited;
	
private:
	System::TTime FPrevSelTime;
	Fmx::Tmsfnccustomselector::TTMSFNCCustomSelector* FWrapper;
	Fmx::Tmsfncanalogtimeselector::TTMSFNCAnalogTimeSelector* FTimeSelector;
	bool FCloseOnSelection;
	TTMSFNCCustomAnalogTimePickerTimeSelectedEvent FOnTimeSelected;
	TTMSFNCTimePickerMode FMode;
	System::UnicodeString FTimeFormat;
	bool FAllowNumericNullValue;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FFont;
	void __fastcall SetSelectedTime(const System::TTime Value);
	void __fastcall SetAnalogTimeSelectorAppearance(Fmx::Tmsfncanalogtimeselector::TTMSFNCAnalogTimeSelectorAppearance* const Value);
	void __fastcall SetMode(const TTMSFNCTimePickerMode Value);
	void __fastcall SetTimeFormat(const System::UnicodeString Value);
	void __fastcall SetAllowNumericNullValue(const bool Value);
	System::TTime __fastcall GetSelectedTime();
	Fmx::Tmsfncanalogtimeselector::TTMSFNCAnalogTimeSelectorAppearance* __fastcall GetAnalogTimeSelectorAppearance();
	bool __fastcall IsTimeFormatStored();
	HIDESBASE void __fastcall SetFnt(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	
protected:
	virtual void __fastcall ChangeDPIScale(int M, int D);
	void __fastcall FontChange(System::TObject* Sender);
	virtual void __fastcall SetEditable(const bool Value);
	virtual void __fastcall UpdateEditText(System::UnicodeString AText);
	virtual void __fastcall Loaded();
	virtual void __fastcall SetGraphicColors();
	virtual void __fastcall SetAdaptToStyle(const bool Value);
	virtual void __fastcall InitializePopup();
	virtual void __fastcall DrawContent(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	virtual void __fastcall SelectFirstValue();
	virtual void __fastcall SelectLastValue();
	virtual void __fastcall SelectNextValue();
	virtual void __fastcall SelectPreviousValue();
	virtual void __fastcall EditUp();
	virtual void __fastcall EditDown();
	virtual void __fastcall DoSelectTime();
	void __fastcall TimeSelected(System::TObject* Sender, System::TTime ATime);
	virtual System::UnicodeString __fastcall GetVersion();
	virtual Fmx::Tmsfnccustomselector::TTMSFNCCustomSelector* __fastcall CreateSelector();
	virtual Fmx::Controls::TControl* __fastcall GetFocusedControl();
	__property bool AllowNumericNullValue = {read=FAllowNumericNullValue, write=SetAllowNumericNullValue, default=1};
	__property System::UnicodeString TimeFormat = {read=FTimeFormat, write=SetTimeFormat, stored=IsTimeFormatStored};
	__property TTMSFNCTimePickerMode Mode = {read=FMode, write=SetMode, default=0};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* Font = {read=FFont, write=SetFnt};
	__property bool CloseOnSelection = {read=FCloseOnSelection, write=FCloseOnSelection, default=0};
	__property System::TTime SelectedTime = {read=GetSelectedTime, write=SetSelectedTime};
	__property TTMSFNCCustomAnalogTimePickerTimeSelectedEvent OnTimeSelected = {read=FOnTimeSelected, write=FOnTimeSelected};
	__property Fmx::Tmsfncanalogtimeselector::TTMSFNCAnalogTimeSelectorAppearance* SelectorAppearance = {read=GetAnalogTimeSelectorAppearance, write=SetAnalogTimeSelectorAppearance};
	
public:
	__fastcall virtual TTMSFNCCustomAnalogTimePicker(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCCustomAnalogTimePicker();
	void __fastcall Clear();
};


class PASCALIMPLEMENTATION TTMSFNCAnalogTimePicker : public TTMSFNCCustomAnalogTimePicker
{
	typedef TTMSFNCCustomAnalogTimePicker inherited;
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	
__published:
	__property AllowNumericNullValue = {default=1};
	__property Editable = {default=0};
	__property DropDownWidth;
	__property DropDownHeight;
	__property Font;
	__property CloseOnSelection = {default=0};
	__property SelectorAppearance;
	__property SelectedTime = {default=0};
	__property TimeFormat;
	__property Mode = {default=0};
	__property OnTimeSelected;
public:
	/* TTMSFNCCustomAnalogTimePicker.Create */ inline __fastcall virtual TTMSFNCAnalogTimePicker(System::Classes::TComponent* AOwner) : TTMSFNCCustomAnalogTimePicker(AOwner) { }
	/* TTMSFNCCustomAnalogTimePicker.Destroy */ inline __fastcall virtual ~TTMSFNCAnalogTimePicker() { }
	
};


//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x2);
static constexpr System::Int8 BLD_VER = System::Int8(0x0);
}	/* namespace Tmsfncanalogtimepicker */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCANALOGTIMEPICKER)
using namespace Fmx::Tmsfncanalogtimepicker;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncanalogtimepickerHPP
