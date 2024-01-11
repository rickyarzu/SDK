// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCPlannerItemEditor.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncplanneritemeditorHPP
#define Fmx_TmsfncplanneritemeditorHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <FMX.TMSFNCPlanner.hpp>
#include <FMX.TMSFNCCustomComponent.hpp>
#include <FMX.TMSFNCCustomControl.hpp>
#include <FMX.ExtCtrls.hpp>
#include <FMX.TMSFNCPlannerData.hpp>
#include <FMX.StdCtrls.hpp>
#include <FMX.Controls.hpp>
#include <FMX.Forms.hpp>
#include <FMX.TMSFNCEditorPanel.hpp>
#include <FMX.TMSFNCEditorButton.hpp>
#include <System.UITypes.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.Types.hpp>
#include <System.Generics.Collections.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>
#include <System.Types.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncplanneritemeditor
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCPlannerItemEditor;
class DELPHICLASS TTMSFNCPlannerItemEditorForm;
//-- type declarations -------------------------------------------------------
typedef Fmx::Types::TFmxObject TTMSFNCPlannerItemEditorParent;

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCPlannerItemEditor : public Fmx::Tmsfnccustomcomponent::TTMSFNCCustomComponent
{
	typedef Fmx::Tmsfnccustomcomponent::TTMSFNCCustomComponent inherited;
	
private:
	Fmx::Tmsfnceditorpanel::TTMSFNCEditorPanel* FPanel;
	Fmx::Tmsfncplanner::TTMSFNCPlanner* FCopyPlanner;
	Fmx::Tmsfnceditorbutton::TTMSFNCEditorButton* FButtonOK;
	Fmx::Tmsfnceditorbutton::TTMSFNCEditorButton* FButtonCancel;
	Fmx::Tmsfncplanner::TTMSFNCCustomPlanner* FPlanner;
	Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* FPlannerItem;
	Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* FCopyPlannerItem;
	Fmx::Tmsfnccustomcontrol::TTMSFNCCustomDesignerForm* frm;
	void __fastcall SetPlannerItem(Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* const Value);
	void __fastcall SetFNCPlannerEditingDialogAppearance(const Fmx::Tmsfncplanner::TTMSFNCPlannerEditingDialog &APlannerEditorDialog);
	
protected:
	void __fastcall DoFormKeyDown(System::TObject* Sender, System::Word &Key, System::WideChar &KeyChar, System::Classes::TShiftState Shift);
	virtual NativeUInt __fastcall GetInstance();
	virtual void __fastcall BuildEditor(Fmx::Types::TFmxObject* AParent);
	
public:
	System::Uitypes::TModalResult __fastcall Execute();
	__property Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* PlannerItem = {read=FPlannerItem, write=SetPlannerItem};
public:
	/* TTMSFNCCustomComponent.Create */ inline __fastcall virtual TTMSFNCPlannerItemEditor(System::Classes::TComponent* AOwner) : Fmx::Tmsfnccustomcomponent::TTMSFNCCustomComponent(AOwner) { }
	
public:
	/* TControl.Destroy */ inline __fastcall virtual ~TTMSFNCPlannerItemEditor() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCPlannerItemEditorForm : public Fmx::Tmsfnccustomcontrol::TTMSFNCCustomDesignerForm
{
	typedef Fmx::Tmsfnccustomcontrol::TTMSFNCCustomDesignerForm inherited;
	
public:
	/* TCustomForm.Create */ inline __fastcall virtual TTMSFNCPlannerItemEditorForm(System::Classes::TComponent* AOwner) : Fmx::Tmsfnccustomcontrol::TTMSFNCCustomDesignerForm(AOwner) { }
	/* TCustomForm.CreateNew */ inline __fastcall virtual TTMSFNCPlannerItemEditorForm(System::Classes::TComponent* AOwner, NativeInt Dummy) : Fmx::Tmsfnccustomcontrol::TTMSFNCCustomDesignerForm(AOwner, Dummy) { }
	/* TCustomForm.Destroy */ inline __fastcall virtual ~TTMSFNCPlannerItemEditorForm() { }
	
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x1);
static constexpr System::Int8 BLD_VER = System::Int8(0x0);
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCPlannerItemEditorOK;
#define Fmx_Tmsfncplanneritemeditor_sTMSFNCPlannerItemEditorOK System::LoadResourceString(&Fmx::Tmsfncplanneritemeditor::_sTMSFNCPlannerItemEditorOK)
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCPlannerItemEditorCancel;
#define Fmx_Tmsfncplanneritemeditor_sTMSFNCPlannerItemEditorCancel System::LoadResourceString(&Fmx::Tmsfncplanneritemeditor::_sTMSFNCPlannerItemEditorCancel)
}	/* namespace Tmsfncplanneritemeditor */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCPLANNERITEMEDITOR)
using namespace Fmx::Tmsfncplanneritemeditor;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncplanneritemeditorHPP
