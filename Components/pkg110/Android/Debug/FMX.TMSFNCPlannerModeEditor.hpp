// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCPlannerModeEditor.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncplannermodeeditorHPP
#define Fmx_TmsfncplannermodeeditorHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <System.Types.hpp>
#include <FMX.TMSFNCCustomComponent.hpp>
#include <FMX.TMSFNCCustomControl.hpp>
#include <FMX.Controls.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.StdCtrls.hpp>
#include <FMX.ExtCtrls.hpp>
#include <FMX.TMSFNCPlanner.hpp>
#include <FMX.TMSFNCBitmapContainer.hpp>
#include <FMX.TMSFNCToolBar.hpp>
#include <FMX.Forms.hpp>
#include <FMX.TMSFNCGraphics.hpp>
#include <FMX.TMSFNCPlannerData.hpp>
#include <FMX.TMSFNCGraphicsTypes.hpp>
#include <FMX.TMSFNCEditorButton.hpp>
#include <FMX.TMSFNCEditorPanel.hpp>
#include <FMX.Types.hpp>
#include <FMX.Memo.hpp>
#include <FMX.ListBox.hpp>
#include <FMX.Graphics.hpp>
#include <FMX.ComboEdit.hpp>
#include <System.UITypes.hpp>
#include <System.Generics.Collections.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>
#include <FMX.Edit.hpp>
#include <FMX.Controls.Presentation.hpp>
#include <FMX.TMSFNCPlannerBase.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncplannermodeeditor
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCPlannerModeEditorComboBox;
class DELPHICLASS TTMSFNCPlannerPreview;
class DELPHICLASS TTMSFNCPlannerModeEditor;
class DELPHICLASS TTMSFNCPlannerModeEditorForm;
//-- type declarations -------------------------------------------------------
typedef Fmx::Types::TFmxObject TTMSFNCPlannerModeEditorParent;

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCPlannerModeEditorComboBox : public Fmx::Comboedit::TComboEdit
{
	typedef Fmx::Comboedit::TComboEdit inherited;
	
public:
	/* TCustomComboEdit.Create */ inline __fastcall virtual TTMSFNCPlannerModeEditorComboBox(System::Classes::TComponent* AOwner)/* overload */ : Fmx::Comboedit::TComboEdit(AOwner) { }
	
public:
	/* TCustomEdit.Destroy */ inline __fastcall virtual ~TTMSFNCPlannerModeEditorComboBox() { }
	
};

#pragma pack(pop)

class PASCALIMPLEMENTATION TTMSFNCPlannerPreview : public Fmx::Tmsfncplanner::TTMSFNCPlanner
{
	typedef Fmx::Tmsfncplanner::TTMSFNCPlanner inherited;
	
public:
	/* TTMSFNCCustomPlanner.Create */ inline __fastcall virtual TTMSFNCPlannerPreview(System::Classes::TComponent* AOwner) : Fmx::Tmsfncplanner::TTMSFNCPlanner(AOwner) { }
	/* TTMSFNCCustomPlanner.Destroy */ inline __fastcall virtual ~TTMSFNCPlannerPreview() { }
	
};


enum DECLSPEC_DENUM TTMSFNCPlannerModeEditorMode : unsigned char { memFirstPage, memDay, memDayPeriod, memHalfDayPeriod, memMultiDay, memMultiResourceDay, memMultiDayResource, memMonth, memMultiMonth, memCustom, memResources, memAppearance, memPreview };

typedef System::Generics::Collections::TList__1<TTMSFNCPlannerModeEditorMode>* TTMSFNCPlannerModeEditorModes;

class PASCALIMPLEMENTATION TTMSFNCPlannerModeEditor : public Fmx::Tmsfnccustomcomponent::TTMSFNCCustomComponent
{
	typedef Fmx::Tmsfnccustomcomponent::TTMSFNCCustomComponent inherited;
	
private:
	bool FModified;
	Fmx::Types::TTimer* FTimer;
	Fmx::Tmsfnccustomcontrol::TTMSFNCCustomDesignerForm* FParentForm;
	Fmx::Tmsfnceditorpanel::TTMSFNCEditorPanel* FTopPanel;
	Fmx::Tmsfnceditorpanel::TTMSFNCEditorPanel* FPanel;
	Fmx::Tmsfnceditorpanel::TTMSFNCEditorPanel* FFirstPanel;
	Fmx::Tmsfnceditorpanel::TTMSFNCEditorPanel* FModePanel;
	Fmx::Tmsfnceditorpanel::TTMSFNCEditorPanel* FAppearancePanel;
	Fmx::Tmsfnceditorpanel::TTMSFNCEditorPanel* FResourcesPanel;
	Fmx::Tmsfnceditorpanel::TTMSFNCEditorPanel* FPreviewPanel;
	Fmx::Listbox::TListBox* FCustomDatesListBox;
	Fmx::Listbox::TListBox* FResourcesListBox;
	Fmx::Stdctrls::TLabel* FResPositionsLbl;
	Fmx::Stdctrls::TLabel* FHeaderLabel;
	Fmx::Stdctrls::TLabel* FModePositionsLbl;
	Fmx::Tmsfnceditorbutton::TTMSFNCEditorButton* FResBtnDelete;
	Fmx::Tmsfnceditorbutton::TTMSFNCEditorButton* FResBtnClear;
	Fmx::Tmsfnceditorbutton::TTMSFNCEditorButton* FResBtnEdit;
	Fmx::Tmsfnceditorbutton::TTMSFNCEditorButton* FResBtnAdd;
	Fmx::Stdctrls::TLabel* FModeLbl;
	Fmx::Stdctrls::TLabel* FStartDateLbl;
	Fmx::Stdctrls::TLabel* FEndDateLbl;
	Fmx::Stdctrls::TLabel* FTimeLineLabel;
	Fmx::Stdctrls::TLabel* FDisplayStartLbl;
	Fmx::Stdctrls::TLabel* FDisplayEndLbl;
	Fmx::Tmsfnceditorbutton::TTMSFNCEditorButton* FModeTimeBtn;
	Fmx::Tmsfnceditorbutton::TTMSFNCEditorButton* FModeDateBtn;
	Fmx::Tmsfnceditorbutton::TTMSFNCEditorButton* FModeDateTimeBtn;
	Fmx::Tmsfnceditorbutton::TTMSFNCEditorButton* FModeClearBtn;
	Fmx::Tmsfnceditorbutton::TTMSFNCEditorButton* FModeDeleteBtn;
	Fmx::Stdctrls::TTrackBar* FDisplayStartTb;
	Fmx::Stdctrls::TTrackBar* FDisplayEndTb;
	Fmx::Stdctrls::TTrackBar* FModePositionTb;
	Fmx::Tmsfncplanner::TTMSFNCPlanner* FPlanTimeRange;
	Fmx::Tmsfncplanner::TTMSFNCPlanner* FPlanPosRange;
	System::TDate FDialogStartDate;
	System::TDate FDialogEndDate;
	System::TTime FDialogStartTime;
	System::TTime FDialogEndTime;
	Fmx::Tmsfncplanner::TTMSFNCPlannerTimeEdit* FStartTimeEdit;
	Fmx::Tmsfncplanner::TTMSFNCPlannerTimeEdit* FEndTimeEdit;
	Fmx::Tmsfncplanner::TTMSFNCPlannerDateEdit* FStartDateEdit;
	Fmx::Tmsfncplanner::TTMSFNCPlannerDateEdit* FEndDateEdit;
	bool FDoBuild;
	bool FDoPrevious;
	bool FDoNext;
	Fmx::Tmsfnceditorbutton::TTMSFNCEditorButton* FButtonOk;
	Fmx::Tmsfnceditorbutton::TTMSFNCEditorButton* FButtonCancel;
	Fmx::Tmsfnceditorbutton::TTMSFNCEditorButton* FButtonPrevious;
	Fmx::Tmsfnceditorbutton::TTMSFNCEditorButton* FButtonNext;
	Fmx::Tmsfnceditorbutton::TTMSFNCEditorButton* FButtonApply;
	Fmx::Tmsfnceditorbutton::TTMSFNCEditorButton* FButtonLeftTimeLine;
	Fmx::Tmsfnceditorbutton::TTMSFNCEditorButton* FButtonRightTimeLine;
	Fmx::Tmsfnceditorbutton::TTMSFNCEditorButton* FButtonTopPosition;
	Fmx::Tmsfnceditorbutton::TTMSFNCEditorButton* FButtonBottomPosition;
	Fmx::Tmsfnceditorbutton::TTMSFNCEditorButton* FButtonOrientationHorizontal;
	Fmx::Tmsfnceditorbutton::TTMSFNCEditorButton* FButtonOrientationVertical;
	TTMSFNCPlannerPreview* FPlannerPreview;
	Fmx::Tmsfncplanner::TTMSFNCCustomPlanner* FPlanner;
	Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* FBitmapContainer;
	Fmx::Tmsfncplanner::TTMSFNCPlannerMode FDisplayMode;
	System::Generics::Collections::TList__1<TTMSFNCPlannerModeEditorMode>* FEditorModes;
	Fmx::Tmsfnccustomcontrol::TTMSFNCCustomDesignerForm* frm;
	void __fastcall SetBitmapContainer(Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* const Value);
	void __fastcall SetPlanner(Fmx::Tmsfncplanner::TTMSFNCCustomPlanner* const Value);
	
protected:
	virtual NativeUInt __fastcall GetInstance();
	void __fastcall UpdateVisiblePanel(bool AShow = true);
	void __fastcall DoFormCloseQuery(System::TObject* Sender, bool &ACanClose);
	void __fastcall UpdateDatesListBox();
	void __fastcall UpdateResourcesListBox();
	void __fastcall UpdateAppearance();
	void __fastcall UpdateModePanel();
	void __fastcall ApplyChanges();
	void __fastcall DoTimer(System::TObject* Sender);
	virtual void __fastcall Notification(System::Classes::TComponent* AComponent, System::Classes::TOperation AOperation);
	virtual void __fastcall BuildEditor(Fmx::Types::TFmxObject* AParent, TTMSFNCPlannerModeEditorMode AMode);
	void __fastcall DoResourcesClick(System::TObject* Sender);
	void __fastcall DoButtonLeftTimeLineClick(System::TObject* Sender);
	void __fastcall DoButtonRightTimeLineClick(System::TObject* Sender);
	void __fastcall DoButtonTopPositionClick(System::TObject* Sender);
	void __fastcall DoButtonBottomPositionClick(System::TObject* Sender);
	void __fastcall DoButtonOrientationHorizontalClick(System::TObject* Sender);
	void __fastcall DoButtonOrientationVerticalClick(System::TObject* Sender);
	void __fastcall DoButtonTimeClicked(System::TObject* Sender);
	void __fastcall DoButtonDateClicked(System::TObject* Sender);
	void __fastcall DoButtonDateTimeClicked(System::TObject* Sender);
	void __fastcall DoButtonDeleteClicked(System::TObject* Sender);
	void __fastcall DoButtonClearClicked(System::TObject* Sender);
	void __fastcall DoButtonDeleteResClicked(System::TObject* Sender);
	void __fastcall DoButtonClearResClicked(System::TObject* Sender);
	void __fastcall DoButtonAddClicked(System::TObject* Sender);
	void __fastcall DoButtonEditClicked(System::TObject* Sender);
	void __fastcall DoPreviousButtonClicked(System::TObject* Sender);
	void __fastcall DoNextButtonClicked(System::TObject* Sender);
	void __fastcall DoButtonClick(System::TObject* Sender);
	void __fastcall DoButtonApplyClick(System::TObject* Sender);
	void __fastcall DoDisplayStartChanged(System::TObject* Sender);
	void __fastcall DoDisplayEndChanged(System::TObject* Sender);
	void __fastcall DoPositionsChanged(System::TObject* Sender);
	virtual void __fastcall DoStartDateEditChanged(System::TObject* Sender);
	virtual void __fastcall DoEndDateEditChanged(System::TObject* Sender);
	virtual void __fastcall DoStartTimeEditChanged(System::TObject* Sender);
	virtual void __fastcall DoEndTimeEditChanged(System::TObject* Sender);
	void __fastcall ApplyDate();
	void __fastcall DoButtonAfterDraw(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	
public:
	__fastcall virtual TTMSFNCPlannerModeEditor(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCPlannerModeEditor();
	System::Uitypes::TModalResult __fastcall Execute();
	
__published:
	__property Fmx::Tmsfncplanner::TTMSFNCCustomPlanner* Planner = {read=FPlanner, write=SetPlanner};
	__property Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* BitmapContainer = {read=FBitmapContainer, write=SetBitmapContainer};
};


#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCPlannerModeEditorForm : public Fmx::Tmsfnccustomcontrol::TTMSFNCCustomDesignerForm
{
	typedef Fmx::Tmsfnccustomcontrol::TTMSFNCCustomDesignerForm inherited;
	
public:
	/* TCustomForm.Create */ inline __fastcall virtual TTMSFNCPlannerModeEditorForm(System::Classes::TComponent* AOwner) : Fmx::Tmsfnccustomcontrol::TTMSFNCCustomDesignerForm(AOwner) { }
	/* TCustomForm.CreateNew */ inline __fastcall virtual TTMSFNCPlannerModeEditorForm(System::Classes::TComponent* AOwner, NativeInt Dummy) : Fmx::Tmsfnccustomcontrol::TTMSFNCCustomDesignerForm(AOwner, Dummy) { }
	/* TCustomForm.Destroy */ inline __fastcall virtual ~TTMSFNCPlannerModeEditorForm() { }
	
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x1);
static constexpr System::Int8 BLD_VER = System::Int8(0x0);
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCPlannerModeEditorOK;
#define Fmx_Tmsfncplannermodeeditor_sTMSFNCPlannerModeEditorOK System::LoadResourceString(&Fmx::Tmsfncplannermodeeditor::_sTMSFNCPlannerModeEditorOK)
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCPlannerModeEditorApply;
#define Fmx_Tmsfncplannermodeeditor_sTMSFNCPlannerModeEditorApply System::LoadResourceString(&Fmx::Tmsfncplannermodeeditor::_sTMSFNCPlannerModeEditorApply)
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCPlannerModeEditorCancel;
#define Fmx_Tmsfncplannermodeeditor_sTMSFNCPlannerModeEditorCancel System::LoadResourceString(&Fmx::Tmsfncplannermodeeditor::_sTMSFNCPlannerModeEditorCancel)
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCPlannerModeEditorPrevious;
#define Fmx_Tmsfncplannermodeeditor_sTMSFNCPlannerModeEditorPrevious System::LoadResourceString(&Fmx::Tmsfncplannermodeeditor::_sTMSFNCPlannerModeEditorPrevious)
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCPlannerModeEditorNext;
#define Fmx_Tmsfncplannermodeeditor_sTMSFNCPlannerModeEditorNext System::LoadResourceString(&Fmx::Tmsfncplannermodeeditor::_sTMSFNCPlannerModeEditorNext)
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCPlannerModeEditorDateTime;
#define Fmx_Tmsfncplannermodeeditor_sTMSFNCPlannerModeEditorDateTime System::LoadResourceString(&Fmx::Tmsfncplannermodeeditor::_sTMSFNCPlannerModeEditorDateTime)
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCPlannerModeEditorAddDate;
#define Fmx_Tmsfncplannermodeeditor_sTMSFNCPlannerModeEditorAddDate System::LoadResourceString(&Fmx::Tmsfncplannermodeeditor::_sTMSFNCPlannerModeEditorAddDate)
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCPlannerModeEditorAddTime;
#define Fmx_Tmsfncplannermodeeditor_sTMSFNCPlannerModeEditorAddTime System::LoadResourceString(&Fmx::Tmsfncplannermodeeditor::_sTMSFNCPlannerModeEditorAddTime)
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCPlannerModeEditorAddDateTime;
#define Fmx_Tmsfncplannermodeeditor_sTMSFNCPlannerModeEditorAddDateTime System::LoadResourceString(&Fmx::Tmsfncplannermodeeditor::_sTMSFNCPlannerModeEditorAddDateTime)
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCPlannerModeEditorDelete;
#define Fmx_Tmsfncplannermodeeditor_sTMSFNCPlannerModeEditorDelete System::LoadResourceString(&Fmx::Tmsfncplannermodeeditor::_sTMSFNCPlannerModeEditorDelete)
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCPlannerModeEditorClear;
#define Fmx_Tmsfncplannermodeeditor_sTMSFNCPlannerModeEditorClear System::LoadResourceString(&Fmx::Tmsfncplannermodeeditor::_sTMSFNCPlannerModeEditorClear)
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCPlannerModeEditorAdd;
#define Fmx_Tmsfncplannermodeeditor_sTMSFNCPlannerModeEditorAdd System::LoadResourceString(&Fmx::Tmsfncplannermodeeditor::_sTMSFNCPlannerModeEditorAdd)
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCPlannerModeEditorEdit;
#define Fmx_Tmsfncplannermodeeditor_sTMSFNCPlannerModeEditorEdit System::LoadResourceString(&Fmx::Tmsfncplannermodeeditor::_sTMSFNCPlannerModeEditorEdit)
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCPlannerModeEditorStartDate;
#define Fmx_Tmsfncplannermodeeditor_sTMSFNCPlannerModeEditorStartDate System::LoadResourceString(&Fmx::Tmsfncplannermodeeditor::_sTMSFNCPlannerModeEditorStartDate)
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCPlannerModeEditorEndDate;
#define Fmx_Tmsfncplannermodeeditor_sTMSFNCPlannerModeEditorEndDate System::LoadResourceString(&Fmx::Tmsfncplannermodeeditor::_sTMSFNCPlannerModeEditorEndDate)
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCPlannerModeEditorSelectTimeCustom;
#define Fmx_Tmsfncplannermodeeditor_sTMSFNCPlannerModeEditorSelectTimeCustom System::LoadResourceString(&Fmx::Tmsfncplannermodeeditor::_sTMSFNCPlannerModeEditorSelectTimeCustom)
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCPlannerModeEditorSelectTimeInitial;
#define Fmx_Tmsfncplannermodeeditor_sTMSFNCPlannerModeEditorSelectTimeInitial System::LoadResourceString(&Fmx::Tmsfncplannermodeeditor::_sTMSFNCPlannerModeEditorSelectTimeInitial)
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCPlannerModeEditorSelectTimeView;
#define Fmx_Tmsfncplannermodeeditor_sTMSFNCPlannerModeEditorSelectTimeView System::LoadResourceString(&Fmx::Tmsfncplannermodeeditor::_sTMSFNCPlannerModeEditorSelectTimeView)
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCPlannerModeEditorAddResource;
#define Fmx_Tmsfncplannermodeeditor_sTMSFNCPlannerModeEditorAddResource System::LoadResourceString(&Fmx::Tmsfncplannermodeeditor::_sTMSFNCPlannerModeEditorAddResource)
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCPlannerModeEditorSelectTimeLinePosition;
#define Fmx_Tmsfncplannermodeeditor_sTMSFNCPlannerModeEditorSelectTimeLinePosition System::LoadResourceString(&Fmx::Tmsfncplannermodeeditor::_sTMSFNCPlannerModeEditorSelectTimeLinePosition)
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCPlannerModeEditorSelectResourcesPosition;
#define Fmx_Tmsfncplannermodeeditor_sTMSFNCPlannerModeEditorSelectResourcesPosition System::LoadResourceString(&Fmx::Tmsfncplannermodeeditor::_sTMSFNCPlannerModeEditorSelectResourcesPosition)
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCPlannerModeEditorSelectOrientation;
#define Fmx_Tmsfncplannermodeeditor_sTMSFNCPlannerModeEditorSelectOrientation System::LoadResourceString(&Fmx::Tmsfncplannermodeeditor::_sTMSFNCPlannerModeEditorSelectOrientation)
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCPlannerModeEditorDisplayStart;
#define Fmx_Tmsfncplannermodeeditor_sTMSFNCPlannerModeEditorDisplayStart System::LoadResourceString(&Fmx::Tmsfncplannermodeeditor::_sTMSFNCPlannerModeEditorDisplayStart)
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCPlannerModeEditorDisplayEnd;
#define Fmx_Tmsfncplannermodeeditor_sTMSFNCPlannerModeEditorDisplayEnd System::LoadResourceString(&Fmx::Tmsfncplannermodeeditor::_sTMSFNCPlannerModeEditorDisplayEnd)
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCPlannerModeEditorPositionsCount;
#define Fmx_Tmsfncplannermodeeditor_sTMSFNCPlannerModeEditorPositionsCount System::LoadResourceString(&Fmx::Tmsfncplannermodeeditor::_sTMSFNCPlannerModeEditorPositionsCount)
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCPlannerModeEditorTimeLine;
#define Fmx_Tmsfncplannermodeeditor_sTMSFNCPlannerModeEditorTimeLine System::LoadResourceString(&Fmx::Tmsfncplannermodeeditor::_sTMSFNCPlannerModeEditorTimeLine)
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCPlannerModeEditorResources;
#define Fmx_Tmsfncplannermodeeditor_sTMSFNCPlannerModeEditorResources System::LoadResourceString(&Fmx::Tmsfncplannermodeeditor::_sTMSFNCPlannerModeEditorResources)
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCPlannerModeEditorAppearance;
#define Fmx_Tmsfncplannermodeeditor_sTMSFNCPlannerModeEditorAppearance System::LoadResourceString(&Fmx::Tmsfncplannermodeeditor::_sTMSFNCPlannerModeEditorAppearance)
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCPlannerModeEditorPreview;
#define Fmx_Tmsfncplannermodeeditor_sTMSFNCPlannerModeEditorPreview System::LoadResourceString(&Fmx::Tmsfncplannermodeeditor::_sTMSFNCPlannerModeEditorPreview)
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCPlannerModeEditorMode;
#define Fmx_Tmsfncplannermodeeditor_sTMSFNCPlannerModeEditorMode System::LoadResourceString(&Fmx::Tmsfncplannermodeeditor::_sTMSFNCPlannerModeEditorMode)
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCPlannerModeEditorDay;
#define Fmx_Tmsfncplannermodeeditor_sTMSFNCPlannerModeEditorDay System::LoadResourceString(&Fmx::Tmsfncplannermodeeditor::_sTMSFNCPlannerModeEditorDay)
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCPlannerModeEditorDayPeriod;
#define Fmx_Tmsfncplannermodeeditor_sTMSFNCPlannerModeEditorDayPeriod System::LoadResourceString(&Fmx::Tmsfncplannermodeeditor::_sTMSFNCPlannerModeEditorDayPeriod)
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCPlannerModeEditorHalfDayPeriod;
#define Fmx_Tmsfncplannermodeeditor_sTMSFNCPlannerModeEditorHalfDayPeriod System::LoadResourceString(&Fmx::Tmsfncplannermodeeditor::_sTMSFNCPlannerModeEditorHalfDayPeriod)
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCPlannerModeEditorMultiDay;
#define Fmx_Tmsfncplannermodeeditor_sTMSFNCPlannerModeEditorMultiDay System::LoadResourceString(&Fmx::Tmsfncplannermodeeditor::_sTMSFNCPlannerModeEditorMultiDay)
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCPlannerModeEditorMonth;
#define Fmx_Tmsfncplannermodeeditor_sTMSFNCPlannerModeEditorMonth System::LoadResourceString(&Fmx::Tmsfncplannermodeeditor::_sTMSFNCPlannerModeEditorMonth)
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCPlannerModeEditorMultiMonth;
#define Fmx_Tmsfncplannermodeeditor_sTMSFNCPlannerModeEditorMultiMonth System::LoadResourceString(&Fmx::Tmsfncplannermodeeditor::_sTMSFNCPlannerModeEditorMultiMonth)
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCPlannerModeEditorCustom;
#define Fmx_Tmsfncplannermodeeditor_sTMSFNCPlannerModeEditorCustom System::LoadResourceString(&Fmx::Tmsfncplannermodeeditor::_sTMSFNCPlannerModeEditorCustom)
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCPlannerModeEditorMultiResourceDay;
#define Fmx_Tmsfncplannermodeeditor_sTMSFNCPlannerModeEditorMultiResourceDay System::LoadResourceString(&Fmx::Tmsfncplannermodeeditor::_sTMSFNCPlannerModeEditorMultiResourceDay)
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCPlannerModeEditorMultiDayResource;
#define Fmx_Tmsfncplannermodeeditor_sTMSFNCPlannerModeEditorMultiDayResource System::LoadResourceString(&Fmx::Tmsfncplannermodeeditor::_sTMSFNCPlannerModeEditorMultiDayResource)
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCPlannerModeEditorFirstPageLabel;
#define Fmx_Tmsfncplannermodeeditor_sTMSFNCPlannerModeEditorFirstPageLabel System::LoadResourceString(&Fmx::Tmsfncplannermodeeditor::_sTMSFNCPlannerModeEditorFirstPageLabel)
}	/* namespace Tmsfncplannermodeeditor */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCPLANNERMODEEDITOR)
using namespace Fmx::Tmsfncplannermodeeditor;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncplannermodeeditorHPP
