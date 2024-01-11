// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCCheckGroup.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfnccheckgroupHPP
#define Fmx_TmsfnccheckgroupHPP

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
namespace Tmsfnccheckgroup
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCCheckHTMLText;
class DELPHICLASS TTMSFNCCheckContainer;
class DELPHICLASS TTMSFNCCheckGroupTitle;
class DELPHICLASS TTMSFNCCheckGroup;
//-- type declarations -------------------------------------------------------
#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCheckHTMLText : public Fmx::Tmsfnchtmltext::TTMSFNCHTMLText
{
	typedef Fmx::Tmsfnchtmltext::TTMSFNCHTMLText inherited;
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	virtual bool __fastcall CanDrawDesignTime();
public:
	/* TTMSFNCHTMLText.Create */ inline __fastcall virtual TTMSFNCCheckHTMLText(System::Classes::TComponent* AOwner) : Fmx::Tmsfnchtmltext::TTMSFNCHTMLText(AOwner) { }
	/* TTMSFNCHTMLText.Destroy */ inline __fastcall virtual ~TTMSFNCCheckHTMLText() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCheckContainer : public Fmx::Tmsfnccustomcontrol::TTMSFNCCustomControl
{
	typedef Fmx::Tmsfnccustomcontrol::TTMSFNCCustomControl inherited;
	
private:
	Fmx::Stdctrls::TCheckBox* FCheckBox;
	TTMSFNCCheckHTMLText* FHTMLText;
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	
public:
	__fastcall virtual TTMSFNCCheckContainer(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCCheckContainer();
	__property TTMSFNCCheckHTMLText* HTMLText = {read=FHTMLText};
	__property Fmx::Stdctrls::TCheckBox* CheckBox = {read=FCheckBox};
};

#pragma pack(pop)

enum DECLSPEC_DENUM TTMSFNCCheckGroupTitleCheckBoxMode : unsigned char { cgtcmNone, cgtcmCheckAll, cgtcmToggleEnabled };

typedef void __fastcall (__closure *TTMSFNCCheckGroupTitleSetCheckState)(System::TObject* Sender, bool ACheckState);

typedef void __fastcall (__closure *TTMSFNCCheckGroupTitleGetCheckState)(System::TObject* Sender, bool &ACheckState);

typedef void __fastcall (__closure *TTMSFNCCheckGroupClickEvent)(System::TObject* Sender, int AItemIndex, __int64 AValue);

typedef void __fastcall (__closure *TTMSFNCCheckGroupTitleAnchorClickEvent)(System::TObject* Sender, System::UnicodeString AAnchor);

typedef void __fastcall (__closure *TTMSFNCCheckGroupItemAnchorClickEvent)(System::TObject* Sender, int AItemIndex, System::UnicodeString AAnchor);

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCheckGroupTitle : public Fmx::Tmsfnccustomgroup::TTMSFNCGroupTitle
{
	typedef Fmx::Tmsfnccustomgroup::TTMSFNCGroupTitle inherited;
	
private:
	TTMSFNCCheckGroupTitleCheckBoxMode FCheckBoxMode;
	bool FShowCheckBox;
	TTMSFNCCheckGroupTitleGetCheckState FOnGetCheckState;
	TTMSFNCCheckGroupTitleSetCheckState FOnSetCheckState;
	void __fastcall SetCheckBoxMode(const TTMSFNCCheckGroupTitleCheckBoxMode Value);
	void __fastcall SetShowCheckBox(const bool Value);
	bool __fastcall GetChecked();
	void __fastcall SetChecked(const bool Value);
	
protected:
	__property TTMSFNCCheckGroupTitleSetCheckState OnSetCheckState = {read=FOnSetCheckState, write=FOnSetCheckState};
	__property TTMSFNCCheckGroupTitleGetCheckState OnGetCheckState = {read=FOnGetCheckState, write=FOnGetCheckState};
	
public:
	__fastcall virtual TTMSFNCCheckGroupTitle();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property bool ShowCheckBox = {read=FShowCheckBox, write=SetShowCheckBox, default=0};
	__property bool Checked = {read=GetChecked, write=SetChecked, default=1};
	__property TTMSFNCCheckGroupTitleCheckBoxMode CheckBoxMode = {read=FCheckBoxMode, write=SetCheckBoxMode, default=1};
public:
	/* TTMSFNCGroupTitle.Destroy */ inline __fastcall virtual ~TTMSFNCCheckGroupTitle() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCheckGroup : public Fmx::Tmsfnccustomgroup::TTMSFNCCustomGroup
{
	typedef Fmx::Tmsfnccustomgroup::TTMSFNCCustomGroup inherited;
	
private:
	Fmx::Stdctrls::TCheckBox* FTitleCheckBox;
	System::Classes::TNotifyEvent FOnTitleCheckBoxClick;
	TTMSFNCCheckGroupClickEvent FOnCheckBoxClick;
	TTMSFNCCheckGroupTitleAnchorClickEvent FOnTitleAnchorClick;
	TTMSFNCCheckGroupItemAnchorClickEvent FOnCheckboxAnchorClick;
	TTMSFNCCheckGroupClickEvent FOnCheckBoxDblClick;
	Fmx::Stdctrls::TCheckBox* __fastcall GetCheckBox(int AIndex);
	void __fastcall AlternativeClick(System::TObject* Sender);
	void __fastcall AlternativeDblClick(System::TObject* Sender);
	void __fastcall AnchorClick(System::TObject* Sender, System::UnicodeString AAnchor);
	bool __fastcall GetChecked(int AIndex);
	void __fastcall SetChecked(int AIndex, const bool Value);
	void __fastcall SetValue(const __int64 Value);
	TTMSFNCCheckContainer* __fastcall GetCheckContainer(int AIndex);
	TTMSFNCCheckHTMLText* __fastcall GetHTMLText(int AIndex);
	TTMSFNCCheckGroupTitle* __fastcall GetTitle();
	__int64 __fastcall GetValue();
	HIDESBASE void __fastcall SetTitle(TTMSFNCCheckGroupTitle* const Value);
	
protected:
	virtual void __fastcall ChangeDPIScale(int M, int D);
	virtual void __fastcall RegisterRuntimeClasses();
	void __fastcall ControlClick(System::TObject* Sender);
	void __fastcall ControlEnter(System::TObject* Sender);
	void __fastcall ControlExit(System::TObject* Sender);
	void __fastcall ControlDblClick(System::TObject* Sender);
	void __fastcall ControlAnchorClick(System::TObject* Sender, System::UnicodeString AAnchor);
	virtual void __fastcall ArrangeControls();
	virtual void __fastcall SetControlText(Fmx::Controls::TControl* AControl, int AIndex, System::UnicodeString AText);
	virtual void __fastcall SetControlCheckState(Fmx::Controls::TControl* AControl, bool ACheckState);
	virtual void __fastcall SetControlProperties(Fmx::Controls::TControl* AControl, int AIndex);
	virtual void __fastcall UpdateControlProperties(Fmx::Controls::TControl* AControl, int AIndex);
	void __fastcall TitleCheckBoxChange(System::TObject* Sender);
	virtual void __fastcall CreateAdditionalControls();
	virtual void __fastcall SetControlEnabled(Fmx::Controls::TControl* AControl, int AIndex);
	virtual void __fastcall DoSetTitleCheckState(System::TObject* Sender, bool ACheckState);
	virtual void __fastcall DoGetTitleCheckState(System::TObject* Sender, bool &ACheckState);
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
	virtual void __fastcall DoCheckBoxAnchorClick(int AItemIndex, System::UnicodeString AAnchor);
	virtual void __fastcall Loaded();
	
public:
	__property Fmx::Stdctrls::TCheckBox* CheckBoxes[int AIndex] = {read=GetCheckBox};
	__property bool Checked[int AIndex] = {read=GetChecked, write=SetChecked};
	__property TTMSFNCCheckContainer* Containers[int AIndex] = {read=GetCheckContainer};
	__property TTMSFNCCheckHTMLText* HTMLTexts[int AIndex] = {read=GetHTMLText};
	__property Texts;
	__property Fmx::Stdctrls::TCheckBox* TitleCheckBox = {read=FTitleCheckBox};
	__property __int64 Value = {read=GetValue, write=SetValue, default=0};
	__fastcall virtual ~TTMSFNCCheckGroup();
	
__published:
	__property BitmapContainer;
	__property System::UnicodeString Version = {read=GetVersion};
	__property Items;
	__property Font;
	__property Columns = {default=1};
	__property TTMSFNCCheckGroupTitle* Title = {read=GetTitle, write=SetTitle};
	__property Fill;
	__property Stroke;
	__property System::Classes::TNotifyEvent OnTitleCheckBoxClick = {read=FOnTitleCheckBoxClick, write=FOnTitleCheckBoxClick};
	__property TTMSFNCCheckGroupClickEvent OnCheckBoxClick = {read=FOnCheckBoxClick, write=FOnCheckBoxClick};
	__property TTMSFNCCheckGroupClickEvent OnCheckBoxDblClick = {read=FOnCheckBoxDblClick, write=FOnCheckBoxDblClick};
	__property TTMSFNCCheckGroupTitleAnchorClickEvent OnTitleAnchorClick = {read=FOnTitleAnchorClick, write=FOnTitleAnchorClick};
	__property TTMSFNCCheckGroupItemAnchorClickEvent OnCheckboxAnchorClick = {read=FOnCheckboxAnchorClick, write=FOnCheckboxAnchorClick};
public:
	/* TTMSFNCCustomGroup.Create */ inline __fastcall virtual TTMSFNCCheckGroup(System::Classes::TComponent* AOwner) : Fmx::Tmsfnccustomgroup::TTMSFNCCustomGroup(AOwner) { }
	
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x2);
static constexpr System::Int8 BLD_VER = System::Int8(0x1);
}	/* namespace Tmsfnccheckgroup */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCCHECKGROUP)
using namespace Fmx::Tmsfnccheckgroup;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfnccheckgroupHPP
