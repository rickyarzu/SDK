// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCDateTimePicker.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncdatetimepickerHPP
#define Fmx_TmsfncdatetimepickerHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <System.Types.hpp>
#include <FMX.TMSFNCCustomControl.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.TMSFNCDatePicker.hpp>
#include <FMX.TMSFNCDigitalTimePicker.hpp>
#include <FMX.TMSFNCAnalogTimePicker.hpp>
#include <FMX.TMSFNCGraphicsTypes.hpp>
#include <FMX.TMSFNCGraphics.hpp>
#include <FMX.TMSFNCUtils.hpp>
#include <FMX.TMSFNCStyles.hpp>
#include <FMX.Controls.hpp>
#include <FMX.Types.hpp>
#include <System.Generics.Collections.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncdatetimepicker
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCCustomDateTimePicker;
class DELPHICLASS TTMSFNCDateTimePicker;
//-- type declarations -------------------------------------------------------
enum DECLSPEC_DENUM TTMSFNCDateTimePickerMode : unsigned char { dtpmAnalog, dtpmDigital };

typedef void __fastcall (__closure *TTMSFNCCustomDateTimePickerDateTimeChangedEvent)(System::TObject* Sender, System::TDateTime ADateTime);

class PASCALIMPLEMENTATION TTMSFNCCustomDateTimePicker : public Fmx::Tmsfnccustomcontrol::TTMSFNCCustomControl
{
	typedef Fmx::Tmsfnccustomcontrol::TTMSFNCCustomControl inherited;
	
private:
	Fmx::Tmsfncdatepicker::TTMSFNCDatePicker* FDatePicker;
	Fmx::Tmsfncdigitaltimepicker::TTMSFNCDigitalTimePicker* FDigitalTimePicker;
	TTMSFNCCustomDateTimePickerDateTimeChangedEvent FOnDateTimeChanged;
	bool FEditable;
	TTMSFNCDateTimePickerMode FTimePickerMode;
	bool FCloseOnSelection;
	Fmx::Tmsfncanalogtimepicker::TTMSFNCAnalogTimePicker* FAnalogTimePicker;
	bool FAllowNumericNullValue;
	void __fastcall SetSelectedDateTime(const System::TDateTime Value);
	void __fastcall SetEditable(const bool Value);
	void __fastcall SetTimePickerMode(const TTMSFNCDateTimePickerMode Value);
	void __fastcall SetCloseOnSelection(const bool Value);
	void __fastcall SetAllowNumericNullValue(const bool Value);
	System::TDateTime __fastcall GetSelectedDateTime();
	
protected:
	virtual void __fastcall Loaded();
	virtual void __fastcall SetEnabled(const bool Value);
	virtual void __fastcall UpdateControlAfterResize();
	virtual void __fastcall SetAdaptToStyle(const bool Value);
	void __fastcall DateSelected(System::TObject* Sender, System::TDate ADate);
	void __fastcall TimeSelected(System::TObject* Sender, System::TTime ATime);
	virtual void __fastcall DoDateTimeChanged(System::TDateTime ADateTime);
	void __fastcall ChangeMode(TTMSFNCDateTimePickerMode AMode);
	virtual System::UnicodeString __fastcall GetVersion();
	Fmx::Tmsfncstyles::TTMSFNCStylesManagerComponentArray __fastcall GetSubComponentArray();
	__property bool AllowNumericNullValue = {read=FAllowNumericNullValue, write=SetAllowNumericNullValue, default=1};
	__property bool Editable = {read=FEditable, write=SetEditable, default=0};
	__property bool CloseOnSelection = {read=FCloseOnSelection, write=SetCloseOnSelection, default=1};
	__property TTMSFNCDateTimePickerMode TimePickerMode = {read=FTimePickerMode, write=SetTimePickerMode, default=1};
	__property System::TDateTime SelectedDateTime = {read=GetSelectedDateTime, write=SetSelectedDateTime};
	__property TTMSFNCCustomDateTimePickerDateTimeChangedEvent OnDateTimeChanged = {read=FOnDateTimeChanged, write=FOnDateTimeChanged};
	
public:
	__fastcall virtual TTMSFNCCustomDateTimePicker(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCCustomDateTimePicker();
	void __fastcall Clear();
	__property Fmx::Tmsfncdatepicker::TTMSFNCDatePicker* DatePicker = {read=FDatePicker};
	__property Fmx::Tmsfncanalogtimepicker::TTMSFNCAnalogTimePicker* AnalogTimePicker = {read=FAnalogTimePicker};
	__property Fmx::Tmsfncdigitaltimepicker::TTMSFNCDigitalTimePicker* DigitalTimePicker = {read=FDigitalTimePicker};
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


class PASCALIMPLEMENTATION TTMSFNCDateTimePicker : public TTMSFNCCustomDateTimePicker
{
	typedef TTMSFNCCustomDateTimePicker inherited;
	
__published:
	__property AllowNumericNullValue = {default=1};
	__property Editable = {default=0};
	__property CloseOnSelection = {default=1};
	__property TimePickerMode = {default=1};
	__property SelectedDateTime = {default=0};
	__property OnDateTimeChanged;
public:
	/* TTMSFNCCustomDateTimePicker.Create */ inline __fastcall virtual TTMSFNCDateTimePicker(System::Classes::TComponent* AOwner) : TTMSFNCCustomDateTimePicker(AOwner) { }
	/* TTMSFNCCustomDateTimePicker.Destroy */ inline __fastcall virtual ~TTMSFNCDateTimePicker() { }
	
};


//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x1);
static constexpr System::Int8 BLD_VER = System::Int8(0x3);
}	/* namespace Tmsfncdatetimepicker */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCDATETIMEPICKER)
using namespace Fmx::Tmsfncdatetimepicker;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncdatetimepickerHPP
