// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCRadioGroup.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncradiogroupHPP
#define Fmx_TmsfncradiogroupHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <FMX.TMSFNCCustomControl.hpp>
#include <FMX.TMSFNCCustomGroup.hpp>
#include <FMX.TMSFNCGraphicsTypes.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.StdCtrls.hpp>
#include <FMX.Controls.hpp>
#include <FMX.TMSFNCHTMLText.hpp>
#include <System.Types.hpp>
#include <FMX.Types.hpp>
#include <System.Generics.Collections.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>
#include <FMX.TMSFNCBitmapContainer.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncradiogroup
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCRadioHTMLText;
class DELPHICLASS TTMSFNCRadioContainer;
class DELPHICLASS TTMSFNCRadioGroupTitle;
class DELPHICLASS TTMSFNCRadioGroup;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TTMSFNCRadioHTMLText : public Fmx::Tmsfnchtmltext::TTMSFNCHTMLText
{
	typedef Fmx::Tmsfnchtmltext::TTMSFNCHTMLText inherited;
	
protected:
	virtual bool __fastcall CanDrawDesignTime();
public:
	/* TTMSFNCHTMLText.Create */ inline __fastcall virtual TTMSFNCRadioHTMLText(System::Classes::TComponent* AOwner) : Fmx::Tmsfnchtmltext::TTMSFNCHTMLText(AOwner) { }
	/* TTMSFNCHTMLText.Destroy */ inline __fastcall virtual ~TTMSFNCRadioHTMLText() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCRadioContainer : public Fmx::Tmsfnccustomcontrol::TTMSFNCCustomControl
{
	typedef Fmx::Tmsfnccustomcontrol::TTMSFNCCustomControl inherited;
	
private:
	Fmx::Stdctrls::TRadioButton* FRadioButton;
	TTMSFNCRadioHTMLText* FHTMLText;
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	
public:
	__fastcall virtual TTMSFNCRadioContainer(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCRadioContainer();
	__property TTMSFNCRadioHTMLText* HTMLText = {read=FHTMLText};
	__property Fmx::Stdctrls::TRadioButton* RadioButton = {read=FRadioButton};
};


enum DECLSPEC_DENUM TTMSFNCRadioGroupTitleCheckBoxMode : unsigned char { rgtcmNone, rgtcmToggleEnabled };

typedef void __fastcall (__closure *TTMSFNCRadioGroupTitleSetCheckState)(System::TObject* Sender, bool ACheckState);

typedef void __fastcall (__closure *TTMSFNCRadioGroupTitleGetCheckState)(System::TObject* Sender, bool &ACheckState);

typedef void __fastcall (__closure *TTMSFNCRadioGroupClickEvent)(System::TObject* Sender, int AItemIndex);

typedef void __fastcall (__closure *TTMSFNCRadioGroupTitleAnchorClickEvent)(System::TObject* Sender, System::UnicodeString AAnchor);

typedef void __fastcall (__closure *TTMSFNCRadioGroupItemAnchorClickEvent)(System::TObject* Sender, int AItemIndex, System::UnicodeString AAnchor);

class PASCALIMPLEMENTATION TTMSFNCRadioGroupTitle : public Fmx::Tmsfnccustomgroup::TTMSFNCGroupTitle
{
	typedef Fmx::Tmsfnccustomgroup::TTMSFNCGroupTitle inherited;
	
private:
	TTMSFNCRadioGroupTitleCheckBoxMode FCheckBoxMode;
	bool FShowCheckBox;
	TTMSFNCRadioGroupTitleGetCheckState FOnGetCheckState;
	TTMSFNCRadioGroupTitleSetCheckState FOnSetCheckState;
	void __fastcall SetCheckBoxMode(const TTMSFNCRadioGroupTitleCheckBoxMode Value);
	void __fastcall SetShowCheckBox(const bool Value);
	bool __fastcall GetChecked();
	void __fastcall SetChecked(const bool Value);
	
protected:
	__property TTMSFNCRadioGroupTitleSetCheckState OnSetCheckState = {read=FOnSetCheckState, write=FOnSetCheckState};
	__property TTMSFNCRadioGroupTitleGetCheckState OnGetCheckState = {read=FOnGetCheckState, write=FOnGetCheckState};
	
public:
	__fastcall virtual TTMSFNCRadioGroupTitle();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property bool ShowCheckBox = {read=FShowCheckBox, write=SetShowCheckBox, default=0};
	__property bool Checked = {read=GetChecked, write=SetChecked, default=1};
	__property TTMSFNCRadioGroupTitleCheckBoxMode CheckBoxMode = {read=FCheckBoxMode, write=SetCheckBoxMode, default=1};
public:
	/* TTMSFNCGroupTitle.Destroy */ inline __fastcall virtual ~TTMSFNCRadioGroupTitle() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCRadioGroup : public Fmx::Tmsfnccustomgroup::TTMSFNCCustomGroup
{
	typedef Fmx::Tmsfnccustomgroup::TTMSFNCCustomGroup inherited;
	
private:
	int FItemIndex;
	Fmx::Stdctrls::TCheckBox* FTitleCheckBox;
	System::Classes::TNotifyEvent FOnTitleCheckBoxClick;
	TTMSFNCRadioGroupClickEvent FOnRadioButtonClick;
	TTMSFNCRadioGroupTitleAnchorClickEvent FOnTitleAnchorClick;
	TTMSFNCRadioGroupItemAnchorClickEvent FOnRadioButtonAnchorClick;
	TTMSFNCRadioGroupClickEvent FOnRadioButtonDblClick;
	bool FRadioTabStop;
	Fmx::Stdctrls::TRadioButton* __fastcall GetRadioButton(int AIndex);
	void __fastcall SetItemIndex(int Value);
	TTMSFNCRadioHTMLText* __fastcall GetHTMLText(int AIndex);
	TTMSFNCRadioContainer* __fastcall GetRadioContainer(int AIndex);
	TTMSFNCRadioGroupTitle* __fastcall GetTitle();
	HIDESBASE void __fastcall SetTitle(TTMSFNCRadioGroupTitle* const Value);
	void __fastcall SetRadioTabStop(const bool Value);
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	virtual void __fastcall ControlClick(System::TObject* Sender);
	virtual void __fastcall ControlEnter(System::TObject* Sender);
	virtual void __fastcall ControlExit(System::TObject* Sender);
	virtual void __fastcall ControlDblClick(System::TObject* Sender);
	void __fastcall AnchorClick(System::TObject* Sender, System::UnicodeString AAnchor);
	virtual void __fastcall ArrangeControls();
	virtual void __fastcall ItemsChanged();
	virtual void __fastcall UpdateItemIndexControl();
	virtual void __fastcall SetControlText(Fmx::Controls::TControl* AControl, int AIndex, System::UnicodeString AText);
	virtual void __fastcall SetControlCheckState(Fmx::Controls::TControl* AControl, bool ACheckState);
	virtual void __fastcall SetControlProperties(Fmx::Controls::TControl* AControl, int AIndex);
	virtual void __fastcall UpdateControlProperties(Fmx::Controls::TControl* AControl, int AIndex);
	void __fastcall TitleCheckBoxChange(System::TObject* Sender);
	virtual void __fastcall CreateAdditionalControls();
	virtual void __fastcall SetControlEnabled(Fmx::Controls::TControl* AControl, int AIndex);
	virtual void __fastcall SetControlName(Fmx::Controls::TControl* AControl, int AIndex);
	virtual void __fastcall DoSetTitleCheckState(System::TObject* Sender, bool ACheckState);
	virtual void __fastcall DoGetTitleCheckState(System::TObject* Sender, bool &ACheckState);
	virtual void __fastcall InitializeProperties();
	virtual bool __fastcall CanDrawTitle();
	virtual System::UnicodeString __fastcall GetVersion();
	virtual Fmx::Tmsfnccustomgroup::TTMSFNCGroupTitle* __fastcall CreateGroupTitle();
	virtual System::Types::TRectF __fastcall GetTitleRect();
	virtual System::Types::TRectF __fastcall GetTitleDrawRect(const System::Types::TRectF &ARect);
	virtual System::UnicodeString __fastcall GetControlText(Fmx::Controls::TControl* AControl, int AIndex);
	virtual Fmx::Tmsfnccustomgroup::TTMSFNCCustomGroupControlClass __fastcall GetControlClass(int AIndex);
	virtual bool __fastcall GetControlCheckState(Fmx::Controls::TControl* AControl);
	virtual void __fastcall HandleMouseUp(System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall HandleMouseMove(System::Classes::TShiftState Shift, float X, float Y);
	System::UnicodeString __fastcall XYtoTitleAnchor(float AX, float AY);
	virtual void __fastcall DoTitleAnchorClick(System::UnicodeString AAnchor);
	virtual void __fastcall DoRadioButtonAnchorClick(int AItemIndex, System::UnicodeString AAnchor);
	virtual void __fastcall Loaded();
	
public:
	__fastcall virtual ~TTMSFNCRadioGroup();
	__fastcall virtual TTMSFNCRadioGroup(System::Classes::TComponent* AOwner);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__property Fmx::Stdctrls::TRadioButton* RadioButtons[int AIndex] = {read=GetRadioButton};
	__property TTMSFNCRadioContainer* Containers[int AIndex] = {read=GetRadioContainer};
	__property TTMSFNCRadioHTMLText* HTMLTexts[int AIndex] = {read=GetHTMLText};
	__property Texts;
	
__published:
	__property bool RadioTabStop = {read=FRadioTabStop, write=SetRadioTabStop, default=1};
	__property BitmapContainer;
	__property System::UnicodeString Version = {read=GetVersion};
	__property Items;
	__property Font;
	__property Columns = {default=1};
	__property Fill;
	__property Stroke;
	__property int ItemIndex = {read=FItemIndex, write=SetItemIndex, default=-1};
	__property TTMSFNCRadioGroupTitle* Title = {read=GetTitle, write=SetTitle};
	__property System::Classes::TNotifyEvent OnTitleCheckBoxClick = {read=FOnTitleCheckBoxClick, write=FOnTitleCheckBoxClick};
	__property TTMSFNCRadioGroupClickEvent OnRadioButtonClick = {read=FOnRadioButtonClick, write=FOnRadioButtonClick};
	__property TTMSFNCRadioGroupClickEvent OnRadioButtonDblClick = {read=FOnRadioButtonDblClick, write=FOnRadioButtonDblClick};
	__property TTMSFNCRadioGroupTitleAnchorClickEvent OnTitleAnchorClick = {read=FOnTitleAnchorClick, write=FOnTitleAnchorClick};
	__property TTMSFNCRadioGroupItemAnchorClickEvent OnRadioButtonAnchorClick = {read=FOnRadioButtonAnchorClick, write=FOnRadioButtonAnchorClick};
};


//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x3);
static constexpr System::Int8 BLD_VER = System::Int8(0x2);
}	/* namespace Tmsfncradiogroup */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCRADIOGROUP)
using namespace Fmx::Tmsfncradiogroup;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncradiogroupHPP
