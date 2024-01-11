// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCPlannerItemEditorRecurrency.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncplanneritemeditorrecurrencyHPP
#define Fmx_TmsfncplanneritemeditorrecurrencyHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <FMX.TMSFNCPlanner.hpp>
#include <FMX.StdCtrls.hpp>
#include <FMX.TMSFNCPlannerData.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.Controls.hpp>
#include <FMX.TMSFNCRecurrencyHandler.hpp>
#include <FMX.TMSFNCGraphicsTypes.hpp>
#include <FMX.TabControl.hpp>
#include <FMX.DateTimeCtrls.hpp>
#include <FMX.ListBox.hpp>
#include <FMX.Edit.hpp>
#include <FMX.Memo.hpp>
#include <FMX.Layouts.hpp>
#include <System.Generics.Collections.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>
#include <System.Types.hpp>
#include <FMX.Controls.Presentation.hpp>
#include <FMX.Types.hpp>
#include <FMX.TMSFNCCustomComponent.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncplanneritemeditorrecurrency
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCPlannerItemEditorRadioGroupButtons;
class DELPHICLASS TTMSFNCPlannerItemEditorRadioGroup;
class DELPHICLASS TTMSFNCPlannerItemEditorTabControl;
class DELPHICLASS TTMSFNCPlannerItemEditorTabItem;
class DELPHICLASS TTMSFNCPlannerItemEditorLayout;
struct TTMSFNCPlannerItemEditorRecurrencyContentPanel;
class DELPHICLASS TTMSFNCPlannerItemEditorRecurrency;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TTMSFNCPlannerItemEditorRadioGroupButtons : public System::Generics::Collections::TList__1<Fmx::Stdctrls::TRadioButton*>
{
	typedef System::Generics::Collections::TList__1<Fmx::Stdctrls::TRadioButton*> inherited;
	
public:
	/* {System_Generics_Collections}TList<FMX_StdCtrls_TRadioButton>.Create */ inline __fastcall TTMSFNCPlannerItemEditorRadioGroupButtons()/* overload */ : System::Generics::Collections::TList__1<Fmx::Stdctrls::TRadioButton*>() { }
	/* {System_Generics_Collections}TList<FMX_StdCtrls_TRadioButton>.Create */ inline __fastcall TTMSFNCPlannerItemEditorRadioGroupButtons(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<Fmx::Stdctrls::TRadioButton*> > AComparer)/* overload */ : System::Generics::Collections::TList__1<Fmx::Stdctrls::TRadioButton*>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_StdCtrls_TRadioButton>.Create */ inline __fastcall TTMSFNCPlannerItemEditorRadioGroupButtons(System::Generics::Collections::TEnumerable__1<Fmx::Stdctrls::TRadioButton*>* const Collection)/* overload */ : System::Generics::Collections::TList__1<Fmx::Stdctrls::TRadioButton*>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_StdCtrls_TRadioButton>.Create */ inline __fastcall TTMSFNCPlannerItemEditorRadioGroupButtons(Fmx::Stdctrls::TRadioButton* const *Values, const int Values_High)/* overload */ : System::Generics::Collections::TList__1<Fmx::Stdctrls::TRadioButton*>(Values, Values_High) { }
	/* {System_Generics_Collections}TList<FMX_StdCtrls_TRadioButton>.Destroy */ inline __fastcall virtual ~TTMSFNCPlannerItemEditorRadioGroupButtons() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCPlannerItemEditorRadioGroup : public Fmx::Stdctrls::TGroupBox
{
	typedef Fmx::Stdctrls::TGroupBox inherited;
	
private:
	TTMSFNCPlannerItemEditorRadioGroupButtons* FButtons;
	System::Classes::TStrings* FItems;
	int FItemIndex;
	int FColumns;
	bool FReading;
	bool FUpdating;
	Fmx::Stdctrls::TRadioButton* __fastcall GetButtons(int Index);
	void __fastcall ArrangeButtons();
	void __fastcall ButtonClick(System::TObject* Sender);
	void __fastcall ItemsChange(System::TObject* Sender);
	void __fastcall SetButtonCount(int Value);
	void __fastcall SetColumns(int Value);
	void __fastcall SetItemIndex(int Value);
	void __fastcall SetItems(System::Classes::TStrings* Value);
	void __fastcall UpdateButtons();
	
protected:
	virtual void __fastcall Loaded();
	__property int Columns = {read=FColumns, write=SetColumns, default=1};
	__property int ItemIndex = {read=FItemIndex, write=SetItemIndex, default=-1};
	__property System::Classes::TStrings* Items = {read=FItems, write=SetItems};
	
public:
	__fastcall virtual TTMSFNCPlannerItemEditorRadioGroup(System::Classes::TComponent* AOwner)/* overload */;
	__fastcall virtual ~TTMSFNCPlannerItemEditorRadioGroup();
	virtual void __fastcall Resize();
	__property Fmx::Stdctrls::TRadioButton* Buttons[int Index] = {read=GetButtons};
};


class PASCALIMPLEMENTATION TTMSFNCPlannerItemEditorTabControl : public Fmx::Tabcontrol::TTabControl
{
	typedef Fmx::Tabcontrol::TTabControl inherited;
	
public:
	/* TTabControl.Create */ inline __fastcall virtual TTMSFNCPlannerItemEditorTabControl(System::Classes::TComponent* AOwner)/* overload */ : Fmx::Tabcontrol::TTabControl(AOwner) { }
	/* TTabControl.Destroy */ inline __fastcall virtual ~TTMSFNCPlannerItemEditorTabControl() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCPlannerItemEditorTabItem : public Fmx::Tabcontrol::TTabItem
{
	typedef Fmx::Tabcontrol::TTabItem inherited;
	
public:
	/* TTabItem.Create */ inline __fastcall virtual TTMSFNCPlannerItemEditorTabItem(System::Classes::TComponent* AOwner)/* overload */ : Fmx::Tabcontrol::TTabItem(AOwner) { }
	/* TTabItem.Destroy */ inline __fastcall virtual ~TTMSFNCPlannerItemEditorTabItem() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCPlannerItemEditorLayout : public Fmx::Layouts::TLayout
{
	typedef Fmx::Layouts::TLayout inherited;
	
public:
	/* TLayout.Create */ inline __fastcall virtual TTMSFNCPlannerItemEditorLayout(System::Classes::TComponent* AOwner) : Fmx::Layouts::TLayout(AOwner) { }
	
public:
	/* TControl.Destroy */ inline __fastcall virtual ~TTMSFNCPlannerItemEditorLayout() { }
	
};


struct DECLSPEC_DRECORD TTMSFNCPlannerItemEditorRecurrencyContentPanel
{
public:
	Fmx::Stdctrls::TPanel* ContentPanel;
	TTMSFNCPlannerItemEditorTabControl* TabControl;
	TTMSFNCPlannerItemEditorTabControl* TabControlRecurrency;
	TTMSFNCPlannerItemEditorTabItem* TabGeneral;
	Fmx::Stdctrls::TLabel* StartTimeLabel;
	Fmx::Stdctrls::TLabel* EndTimeLabel;
	Fmx::Tmsfncplanner::TTMSFNCPlannerTimeEdit* StartTimeEdit;
	Fmx::Tmsfncplanner::TTMSFNCPlannerTimeEdit* EndTimeEdit;
	Fmx::Tmsfncplanner::TTMSFNCPlannerDateEdit* StartDateEdit;
	Fmx::Tmsfncplanner::TTMSFNCPlannerDateEdit* EndDateEdit;
	Fmx::Stdctrls::TLabel* ResourceLabel;
	Fmx::Stdctrls::TCheckBox* FullDayCheckBox;
	Fmx::Listbox::TComboBox* ResourceComboBox;
	Fmx::Stdctrls::TLabel* TitleLabel;
	Fmx::Stdctrls::TLabel* TextLabel;
	Fmx::Edit::TEdit* TitleEdit;
	Fmx::Memo::TMemo* TextMemo;
	TTMSFNCPlannerItemEditorTabItem* TabRecurrency;
	TTMSFNCPlannerItemEditorTabItem* TabRecurrencySettings;
	TTMSFNCPlannerItemEditorTabItem* TabRecurrencyExceptions;
	TTMSFNCPlannerItemEditorLayout* PatternLayout;
	TTMSFNCPlannerItemEditorRadioGroup* Frequency;
	TTMSFNCPlannerItemEditorRadioGroup* Range;
	Fmx::Stdctrls::TGroupBox* PatternDetails;
	Fmx::Tmsfncplanner::TTMSFNCPlannerDateEdit* Date;
	Fmx::Edit::TEdit* Occur;
	Fmx::Stdctrls::TLabel* OccurLabel;
	Fmx::Edit::TEdit* Interval;
	Fmx::Stdctrls::TLabel* IntervalLabel;
	TTMSFNCPlannerItemEditorLayout* DayLayout;
	TTMSFNCPlannerItemEditorLayout* DayWeekLayout;
	TTMSFNCPlannerItemEditorLayout* WeekLayout;
	TTMSFNCPlannerItemEditorLayout* YearLayout;
	Fmx::Stdctrls::TCheckBox* Mon;
	Fmx::Stdctrls::TCheckBox* Tue;
	Fmx::Stdctrls::TCheckBox* Wed;
	Fmx::Stdctrls::TCheckBox* Thu;
	Fmx::Stdctrls::TCheckBox* Fri;
	Fmx::Stdctrls::TCheckBox* Sat;
	Fmx::Stdctrls::TCheckBox* Sun;
	Fmx::Stdctrls::TRadioButton* Day;
	Fmx::Stdctrls::TRadioButton* WeekDay;
	Fmx::Stdctrls::TRadioButton* MonthDay;
	Fmx::Stdctrls::TRadioButton* SpecialDay;
	Fmx::Stdctrls::TRadioButton* YearDay;
	Fmx::Stdctrls::TRadioButton* YearSpecialDay;
	Fmx::Listbox::TComboBox* ComboWeekNum;
	Fmx::Listbox::TComboBox* ComboDay;
	Fmx::Listbox::TComboBox* ComboYearWeekNum;
	Fmx::Listbox::TComboBox* ComboYearDay;
	Fmx::Stdctrls::TCheckBox* YearCheck1;
	Fmx::Stdctrls::TCheckBox* YearCheck2;
	Fmx::Stdctrls::TCheckBox* YearCheck3;
	Fmx::Stdctrls::TCheckBox* YearCheck4;
	Fmx::Stdctrls::TCheckBox* YearCheck5;
	Fmx::Stdctrls::TCheckBox* YearCheck6;
	Fmx::Stdctrls::TCheckBox* YearCheck7;
	Fmx::Stdctrls::TCheckBox* YearCheck8;
	Fmx::Stdctrls::TCheckBox* YearCheck9;
	Fmx::Stdctrls::TCheckBox* YearCheck10;
	Fmx::Stdctrls::TCheckBox* YearCheck11;
	Fmx::Stdctrls::TCheckBox* YearCheck12;
	Fmx::Tmsfncplanner::TTMSFNCPlannerDateEdit* ExceptionStartDate;
	Fmx::Tmsfncplanner::TTMSFNCPlannerDateEdit* ExceptionEndDate;
	Fmx::Tmsfncplanner::TTMSFNCPlannerTimeEdit* ExceptionStartTime;
	Fmx::Tmsfncplanner::TTMSFNCPlannerTimeEdit* ExceptionEndTime;
	Fmx::Listbox::TListBox* ExceptionList;
	Fmx::Stdctrls::TButton* ExceptionAdd;
	Fmx::Stdctrls::TButton* ExceptionDelete;
	Fmx::Stdctrls::TButton* ExceptionClear;
};


class PASCALIMPLEMENTATION TTMSFNCPlannerItemEditorRecurrency : public Fmx::Tmsfncplanner::TTMSFNCPlannerCustomItemEditor
{
	typedef Fmx::Tmsfncplanner::TTMSFNCPlannerCustomItemEditor inherited;
	
private:
	bool FCustomContentPanelCreated;
	System::UnicodeString FRecurrency;
	int FInsertResource;
	Fmx::Edit::TEdit* FInterval;
	Fmx::Stdctrls::TLabel* FIntervalLabel;
	bool FContentPanelSet;
	Fmx::Tmsfncrecurrencyhandler::TTMSFNCRecurrencyDateItems* FExDates;
	Fmx::Listbox::TListBox* FExList;
	Fmx::Stdctrls::TPanel* FContentPanel;
	Fmx::Memo::TMemo* FTextMemo;
	Fmx::Stdctrls::TCheckBox* FFullDayCheckBox;
	TTMSFNCPlannerItemEditorTabControl* FTabControl;
	TTMSFNCPlannerItemEditorTabControl* FTabControlRecurrency;
	TTMSFNCPlannerItemEditorTabItem* FTabGeneral;
	TTMSFNCPlannerItemEditorTabItem* FTabRecurrency;
	TTMSFNCPlannerItemEditorTabItem* FTabRecurrencySettings;
	TTMSFNCPlannerItemEditorTabItem* FTabRecurrencyExceptions;
	System::TDate FDialogEndDate;
	System::TDate FDialogStartDate;
	System::TTime FDialogEndTime;
	System::TTime FDialogStartTime;
	TTMSFNCPlannerItemEditorLayout* FPatternLayout;
	Fmx::Stdctrls::TLabel* FStartTimeLabel;
	Fmx::Stdctrls::TLabel* FEndTimeLabel;
	Fmx::Stdctrls::TLabel* FTextLabel;
	Fmx::Stdctrls::TLabel* FTitleLabel;
	Fmx::Stdctrls::TLabel* FResourceLabel;
	Fmx::Tmsfncplanner::TTMSFNCPlannerTimeEdit* FStartTimeEdit;
	Fmx::Tmsfncplanner::TTMSFNCPlannerTimeEdit* FEndTimeEdit;
	Fmx::Listbox::TComboBox* FResourcesComboBox;
	Fmx::Tmsfncplanner::TTMSFNCPlannerDateEdit* FStartDateEdit;
	Fmx::Tmsfncplanner::TTMSFNCPlannerDateEdit* FEndDateEdit;
	Fmx::Edit::TEdit* FTitleEdit;
	TTMSFNCPlannerItemEditorRadioGroup* FFreq;
	TTMSFNCPlannerItemEditorRadioGroup* FRange;
	Fmx::Stdctrls::TGroupBox* FPatternDetails;
	Fmx::Edit::TEdit* FOccur;
	Fmx::Stdctrls::TLabel* FOccurLabel;
	Fmx::Tmsfncplanner::TTMSFNCPlannerDateEdit* FDate;
	Fmx::Stdctrls::TCheckBox* FMon;
	Fmx::Stdctrls::TCheckBox* FTue;
	Fmx::Stdctrls::TCheckBox* FWed;
	Fmx::Stdctrls::TCheckBox* FThu;
	Fmx::Stdctrls::TCheckBox* FFri;
	Fmx::Stdctrls::TCheckBox* FSat;
	Fmx::Stdctrls::TCheckBox* FSun;
	Fmx::Stdctrls::TRadioButton* FDay;
	Fmx::Stdctrls::TRadioButton* FYearDay;
	Fmx::Stdctrls::TRadioButton* FMonthDay;
	Fmx::Stdctrls::TRadioButton* FWeekDay;
	Fmx::Stdctrls::TRadioButton* FSpecialDay;
	Fmx::Stdctrls::TRadioButton* FYearSpecialDay;
	Fmx::Listbox::TComboBox* FCWeekNum;
	Fmx::Listbox::TComboBox* FCDay;
	Fmx::Listbox::TComboBox* FCYearWeekNum;
	Fmx::Listbox::TComboBox* FCYearDay;
	Fmx::Tmsfncplanner::TTMSFNCPlannerDateEdit* FExsd;
	Fmx::Tmsfncplanner::TTMSFNCPlannerDateEdit* FExed;
	Fmx::Tmsfncplanner::TTMSFNCPlannerTimeEdit* FExst;
	Fmx::Tmsfncplanner::TTMSFNCPlannerTimeEdit* FExet;
	Fmx::Stdctrls::TButton* FBtnAdd;
	Fmx::Stdctrls::TButton* FBtnDelete;
	Fmx::Stdctrls::TButton* FBtnClear;
	Fmx::Stdctrls::TCheckBox* FYCK1;
	Fmx::Stdctrls::TCheckBox* FYCK2;
	Fmx::Stdctrls::TCheckBox* FYCK3;
	Fmx::Stdctrls::TCheckBox* FYCK4;
	Fmx::Stdctrls::TCheckBox* FYCK5;
	Fmx::Stdctrls::TCheckBox* FYCK6;
	Fmx::Stdctrls::TCheckBox* FYCK7;
	Fmx::Stdctrls::TCheckBox* FYCK8;
	Fmx::Stdctrls::TCheckBox* FYCK9;
	Fmx::Stdctrls::TCheckBox* FYCK10;
	Fmx::Stdctrls::TCheckBox* FYCK11;
	Fmx::Stdctrls::TCheckBox* FYCK12;
	TTMSFNCPlannerItemEditorLayout* FDayL;
	TTMSFNCPlannerItemEditorLayout* FYearL;
	TTMSFNCPlannerItemEditorLayout* FWeekL;
	TTMSFNCPlannerItemEditorLayout* FDayWeekL;
	
protected:
	virtual System::UnicodeString __fastcall GetDocURL();
	virtual System::UnicodeString __fastcall GetVersion();
	virtual void __fastcall RegisterRuntimeClasses();
	virtual void __fastcall ShowLayouts(int AIndex);
	virtual void __fastcall StartDateEditChanged(System::TObject* Sender);
	virtual void __fastcall EndDateEditChanged(System::TObject* Sender);
	virtual void __fastcall StartTimeEditChanged(System::TObject* Sender);
	virtual void __fastcall EndTimeEditChanged(System::TObject* Sender);
	void __fastcall FreqChanged(System::TObject* Sender);
	void __fastcall BtnAddClicked(System::TObject* Sender);
	void __fastcall BtnDeleteClicked(System::TObject* Sender);
	void __fastcall BtnClearClicked(System::TObject* Sender);
	
public:
	virtual void __fastcall CreateCustomContentPanel();
	virtual void __fastcall InitializeCustomContentPanel();
	virtual Fmx::Tmsfncplanner::TTMSFNCPlannerCustomItemEditor* __fastcall CreateInstance();
	virtual Fmx::Stdctrls::TPanel* __fastcall Panel();
	virtual TTMSFNCPlannerItemEditorRecurrencyContentPanel __fastcall CustomContentPanel();
	virtual void __fastcall GetCustomContentPanel(Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, Fmx::Controls::TControl* &AContentPanel);
	virtual void __fastcall ItemToCustomContentPanel(Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, Fmx::Controls::TControl* AContentPanel);
	virtual void __fastcall CustomContentPanelToItem(Fmx::Controls::TControl* AContentPanel, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem);
	virtual void __fastcall ItemToRecurrency(System::UnicodeString ARecurrency);
	virtual void __fastcall RecurrencyToItem(Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem);
	System::UnicodeString __fastcall GetRecurrency();
	void __fastcall SetRecurrency(System::UnicodeString ARecurrency);
	__fastcall virtual TTMSFNCPlannerItemEditorRecurrency(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCPlannerItemEditorRecurrency();
	
__published:
	__property System::UnicodeString Version = {read=GetVersion};
};


//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x0);
static constexpr System::Int8 BLD_VER = System::Int8(0x3);
}	/* namespace Tmsfncplanneritemeditorrecurrency */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCPLANNERITEMEDITORRECURRENCY)
using namespace Fmx::Tmsfncplanneritemeditorrecurrency;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncplanneritemeditorrecurrencyHPP
