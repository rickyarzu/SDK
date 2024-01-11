// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCPageControl.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncpagecontrolHPP
#define Fmx_TmsfncpagecontrolHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <FMX.TMSFNCTabSet.hpp>
#include <FMX.TMSFNCPersistence.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.Controls.hpp>
#include <FMX.TMSFNCCustomControl.hpp>
#include <FMX.TMSFNCGraphics.hpp>
#include <FMX.TMSFNCPopup.hpp>
#include <System.Types.hpp>
#include <FMX.Types.hpp>
#include <System.Generics.Collections.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>
#include <FMX.TMSFNCGraphicsTypes.hpp>
#include <FMX.Forms.hpp>
#include <FMX.TMSFNCCustomComponent.hpp>
#include <FMX.TMSFNCBitmapContainer.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncpagecontrol
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCPageControlContainer;
class DELPHICLASS TTMSFNCPageControlPage;
class DELPHICLASS TTMSFNCPageControlPages;
class DELPHICLASS TTMSFNCPageControlPopupForm;
class DELPHICLASS TTMSFNCPageControlPopup;
class DELPHICLASS TTMSFNCCustomPageControl;
class DELPHICLASS TTMSFNCPageControl;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TTMSFNCPageControlContainer : public Fmx::Tmsfnccustomcontrol::TTMSFNCCustomControl
{
	typedef Fmx::Tmsfnccustomcontrol::TTMSFNCCustomControl inherited;
	
private:
	bool FIsDestroying;
	TTMSFNCPageControlPage* FPage;
	TTMSFNCCustomPageControl* FPageControl;
	int FPageIndex;
	bool FIsActive;
	void __fastcall SetPageControl(TTMSFNCCustomPageControl* const Value);
	TTMSFNCCustomPageControl* __fastcall GetPageControl();
	void __fastcall SetIsActive(const bool Value);
	void __fastcall SetPageIndex(const int Value);
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	virtual void __fastcall ReadState(System::Classes::TReader* Reader);
	virtual void __fastcall DefineProperties(System::Classes::TFiler* Filer);
	void __fastcall ReadPageIndex(System::Classes::TReader* Reader);
	void __fastcall WritePageIndex(System::Classes::TWriter* Writer);
	void __fastcall ReadIsActive(System::Classes::TReader* Reader);
	void __fastcall WriteIsActive(System::Classes::TWriter* Writer);
	void __fastcall SetPage();
	virtual void __fastcall UpdateControlLayout(bool AForceUpdate = false);
	DYNAMIC void __fastcall SetParentComponent(System::Classes::TComponent* Value);
	
public:
	__fastcall virtual TTMSFNCPageControlContainer(System::Classes::TComponent* AOwner)/* overload */;
	__fastcall virtual TTMSFNCPageControlContainer(System::Classes::TComponent* AOwner, TTMSFNCPageControlPage* APage)/* overload */;
	__fastcall virtual ~TTMSFNCPageControlContainer();
	virtual void __fastcall Draw(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	__property TTMSFNCCustomPageControl* PageControl = {read=GetPageControl, write=SetPageControl};
	__property int PageIndex = {read=FPageIndex, write=SetPageIndex, nodefault};
	__property bool IsActive = {read=FIsActive, write=SetIsActive, nodefault};
	
__published:
	__property Fill;
	__property Stroke;
};


_DECLARE_METACLASS(System::TMetaClass, TTMSFNCPageControlContainerClass);

class PASCALIMPLEMENTATION TTMSFNCPageControlPage : public Fmx::Tmsfnctabset::TTMSFNCTabSetTab
{
	typedef Fmx::Tmsfnctabset::TTMSFNCTabSetTab inherited;
	
private:
	TTMSFNCPageControlContainer* FContainer;
	TTMSFNCCustomPageControl* FPageControl;
	
protected:
	void __fastcall UpdatePage();
	virtual System::UnicodeString __fastcall GetFriendlyName();
	
public:
	__fastcall virtual TTMSFNCPageControlPage(System::Classes::TCollection* Collection);
	__fastcall virtual ~TTMSFNCPageControlPage();
	TTMSFNCCustomPageControl* __fastcall PageControl();
	__property TTMSFNCPageControlContainer* Container = {read=FContainer};
};


class PASCALIMPLEMENTATION TTMSFNCPageControlPages : public Fmx::Tmsfnctabset::TTMSFNCTabSetTabs
{
	typedef Fmx::Tmsfnctabset::TTMSFNCTabSetTabs inherited;
	
private:
	TTMSFNCCustomPageControl* FPageControl;
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall GetTabClass();
	TTMSFNCCustomPageControl* __fastcall PageControl();
	
public:
	__fastcall virtual TTMSFNCPageControlPages(Fmx::Tmsfnctabset::TTMSFNCCustomTabSet* ATabSet);
	virtual void __fastcall Clear();
	HIDESBASE TTMSFNCPageControlPage* __fastcall Add();
	HIDESBASE TTMSFNCPageControlPage* __fastcall Insert(int Index);
	int __fastcall IndexOfContainer(System::Classes::TComponent* AValue);
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCPageControlPages() { }
	
};


enum DECLSPEC_DENUM TTMSFNCPageControlPageCloseAction : unsigned char { ttcaNone, ttcaFree, ttcaHide };

typedef void __fastcall (__closure *TTMSFNCPageControlBeforeReorderPageEvent)(System::TObject* Sender, int ACurrentPageIndex, int ANewPageIndex, bool &ACanReorder);

typedef void __fastcall (__closure *TTMSFNCPageControlBeforeChangePageEvent)(System::TObject* Sender, int ACurrentPageIndex, int ANewPageIndex, bool &ACanChange);

typedef void __fastcall (__closure *TTMSFNCPageControlChangePageEvent)(System::TObject* Sender, int APreviousPageIndex, int ACurrentPageIndex);

typedef void __fastcall (__closure *TTMSFNCPageControlReorderPageEvent)(System::TObject* Sender, int APreviousPageIndex, int ACurrentPageIndex);

typedef void __fastcall (__closure *TTMSFNCPageControlBeforeClosePageEvent)(System::TObject* Sender, int APageIndex, TTMSFNCPageControlPageCloseAction &ACloseAction);

typedef void __fastcall (__closure *TTMSFNCPageControlClosePageEvent)(System::TObject* Sender, int APageIndex, TTMSFNCPageControlPageCloseAction ACloseAction);

typedef void __fastcall (__closure *TTMSFNCPageControlBeforeInsertPageEvent)(System::TObject* Sender, int &ANewPageIndex, bool &ACanInsert);

typedef void __fastcall (__closure *TTMSFNCPageControlInsertPageEvent)(System::TObject* Sender, int ANewPageIndex);

class PASCALIMPLEMENTATION TTMSFNCPageControlPopupForm : public Fmx::Tmsfncpopup::TTMSFNCCustomPopupForm
{
	typedef Fmx::Tmsfncpopup::TTMSFNCCustomPopupForm inherited;
	
public:
	/* TTMSFNCCustomPopupForm.CreateNew */ inline __fastcall virtual TTMSFNCPageControlPopupForm(System::Classes::TComponent* AOwner, NativeInt Dummy) : Fmx::Tmsfncpopup::TTMSFNCCustomPopupForm(AOwner, Dummy) { }
	/* TTMSFNCCustomPopupForm.Create */ inline __fastcall TTMSFNCPageControlPopupForm(System::Classes::TComponent* AOwner, Fmx::Controls::TControl* APlacementControl) : Fmx::Tmsfncpopup::TTMSFNCCustomPopupForm(AOwner, APlacementControl) { }
	/* TTMSFNCCustomPopupForm.Destroy */ inline __fastcall virtual ~TTMSFNCPageControlPopupForm() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCPageControlPopup : public Fmx::Tmsfncpopup::TTMSFNCNonFocusablePopup
{
	typedef Fmx::Tmsfncpopup::TTMSFNCNonFocusablePopup inherited;
	
protected:
	virtual Fmx::Tmsfncpopup::TTMSFNCCustomPopupFormClass __fastcall GetPopupFormClass();
public:
	/* TTMSFNCCustomNonFocusablePopup.Create */ inline __fastcall virtual TTMSFNCPageControlPopup(System::Classes::TComponent* AOwner) : Fmx::Tmsfncpopup::TTMSFNCNonFocusablePopup(AOwner) { }
	/* TTMSFNCCustomNonFocusablePopup.Destroy */ inline __fastcall virtual ~TTMSFNCPageControlPopup() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCustomPageControl : public Fmx::Tmsfnctabset::TTMSFNCCustomTabSet
{
	typedef Fmx::Tmsfnctabset::TTMSFNCCustomTabSet inherited;
	
private:
	bool FBlockAssign;
	TTMSFNCPageControlPage* FSaveActivePage;
	TTMSFNCPageControlPopup* FPopup;
	float FSaveHeight;
	float FSaveWidth;
	bool FUpdateMargins;
	bool FUpdateVisibility;
	TTMSFNCPageControlContainer* FPrevActivePageContainer;
	int FUpdateCount;
	TTMSFNCPageControlInsertPageEvent FOnInsertPage;
	TTMSFNCPageControlBeforeClosePageEvent FOnBeforeClosePage;
	TTMSFNCPageControlBeforeInsertPageEvent FOnBeforeInsertPage;
	TTMSFNCPageControlChangePageEvent FOnChangePage;
	TTMSFNCPageControlReorderPageEvent FOnReorderPage;
	TTMSFNCPageControlClosePageEvent FOnClosePage;
	TTMSFNCPageControlBeforeChangePageEvent FOnBeforeChangePage;
	TTMSFNCPageControlBeforeReorderPageEvent FOnBeforeReorderPage;
	System::Classes::TNotifyEvent FOnInternalInsertPage;
	bool FCollapsed;
	int __fastcall GetActivePageIndex();
	void __fastcall SetActivePageIndex(const int Value);
	void __fastcall SetPages(TTMSFNCPageControlPages* const Value);
	TTMSFNCPageControlPage* __fastcall GetActivePage();
	void __fastcall SetActivePage(TTMSFNCPageControlPage* const Value);
	TTMSFNCPageControlContainer* __fastcall GetPageContainer(int AIndex);
	void __fastcall SetPageContainer(int AIndex, TTMSFNCPageControlContainer* const Value);
	
protected:
	virtual System::UnicodeString __fastcall GetDocURL();
	virtual System::Classes::TCollectionItemClass __fastcall GetTabClass();
	virtual System::UnicodeString __fastcall GetVersion();
	virtual Fmx::Tmsfnctabset::TTMSFNCTabSetTabs* __fastcall CreateTabs();
	virtual TTMSFNCPageControlContainerClass __fastcall GetContainerClass();
	TTMSFNCPageControlPages* __fastcall GetPages();
	virtual void __fastcall SetCollapsed(const bool Value);
	virtual void __fastcall DoClosePopup(System::TObject* Sender);
	virtual void __fastcall SetAdaptToStyle(const bool Value);
	void __fastcall UpdateAllPages(System::TObject* Sender);
	virtual void __fastcall Notification(System::Classes::TComponent* AComponent, System::Classes::TOperation Operation);
	virtual void __fastcall UpdatePages();
	virtual void __fastcall UpdateTabs(bool ACalculateScrolling = false, bool AForceUpdate = false);
	virtual void __fastcall UpdateMargins(TTMSFNCPageControlContainer* AContainer);
	virtual void __fastcall UpdatePageIndexes();
	virtual void __fastcall UpdateVisibility();
	virtual void __fastcall DoRepaint();
	virtual void __fastcall Draw(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	virtual void __fastcall DoBeforeChangeTab(int ACurrentTabIndex, int ANewTabIndex, bool &ACanChange);
	virtual void __fastcall DoChangeTab(int APreviousTabIndex, int ACurrentTabIndex);
	virtual void __fastcall DoBeforeReorderTab(int ACurrentTabIndex, int ANewTabIndex, bool &ACanReorder);
	virtual void __fastcall DoReorderTab(int APreviousTabIndex, int ACurrentTabIndex);
	virtual void __fastcall DoBeforeCloseTab(int ATabIndex, Fmx::Tmsfnctabset::TTMSFNCTabSetTabCloseAction &ACloseAction);
	virtual void __fastcall DoCloseTab(int ATabIndex, Fmx::Tmsfnctabset::TTMSFNCTabSetTabCloseAction ACloseAction);
	virtual void __fastcall DoBeforeInsertTab(int &ANewTabIndex, bool &ACanInsert);
	virtual void __fastcall DoInsertTab(int ANewTabIndex);
	virtual void __fastcall DoBeforeChangePage(int ACurrentPageIndex, int ANewPageIndex, bool &ACanChange);
	virtual void __fastcall DoChangePage(int APreviousPageIndex, int ACurrentPageIndex);
	virtual void __fastcall DoBeforeReorderPage(int ACurrentPageIndex, int ANewPageIndex, bool &ACanReorder);
	virtual void __fastcall DoReorderPage(int APreviousPageIndex, int ACurrentPageIndex);
	virtual void __fastcall DoBeforeClosePage(int APageIndex, TTMSFNCPageControlPageCloseAction &ACloseAction);
	virtual void __fastcall DoClosePage(int APageIndex, TTMSFNCPageControlPageCloseAction ACloseAction);
	virtual void __fastcall DoBeforeInsertPage(int &ANewPageIndex, bool &ACanInsert);
	virtual void __fastcall DoInsertPage(int ANewPageIndex);
	__property TTMSFNCPageControlPage* ActivePage = {read=GetActivePage, write=SetActivePage};
	__property int ActivePageIndex = {read=GetActivePageIndex, write=SetActivePageIndex, default=0};
	__property TTMSFNCPageControlBeforeClosePageEvent OnBeforeClosePage = {read=FOnBeforeClosePage, write=FOnBeforeClosePage};
	__property TTMSFNCPageControlClosePageEvent OnClosePage = {read=FOnClosePage, write=FOnClosePage};
	__property TTMSFNCPageControlBeforeInsertPageEvent OnBeforeInsertPage = {read=FOnBeforeInsertPage, write=FOnBeforeInsertPage};
	__property TTMSFNCPageControlInsertPageEvent OnInsertPage = {read=FOnInsertPage, write=FOnInsertPage};
	__property TTMSFNCPageControlBeforeChangePageEvent OnBeforeChangePage = {read=FOnBeforeChangePage, write=FOnBeforeChangePage};
	__property TTMSFNCPageControlChangePageEvent OnChangePage = {read=FOnChangePage, write=FOnChangePage};
	__property TTMSFNCPageControlBeforeReorderPageEvent OnBeforeReorderPage = {read=FOnBeforeReorderPage, write=FOnBeforeReorderPage};
	__property TTMSFNCPageControlReorderPageEvent OnReorderPage = {read=FOnReorderPage, write=FOnReorderPage};
	__property TTMSFNCPageControlPages* Pages = {read=GetPages, write=SetPages};
	__property TTMSFNCPageControlContainer* PageContainers[int AIndex] = {read=GetPageContainer, write=SetPageContainer};
	__property System::Classes::TNotifyEvent OnInternalInsertPage = {read=FOnInternalInsertPage, write=FOnInternalInsertPage};
	__property bool Collapsed = {read=FCollapsed, write=SetCollapsed, default=0};
	
public:
	__fastcall virtual TTMSFNCCustomPageControl(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCCustomPageControl();
	virtual TTMSFNCPageControlPage* __fastcall AddPage(System::UnicodeString AText = System::UnicodeString());
	virtual TTMSFNCPageControlPage* __fastcall InsertPage(int APageIndex, System::UnicodeString AText = System::UnicodeString());
	virtual void __fastcall ClosePopup();
	virtual void __fastcall BeginUpdate();
	virtual void __fastcall EndUpdate();
	virtual void __fastcall MovePage(int AFromPageIndex, int AToPageIndex);
	void __fastcall RemovePage(int APageIndex);
	virtual void __fastcall UpdateControlAfterResize();
	virtual void __fastcall LoadSettingsFromFile(System::UnicodeString AFileName);
	virtual void __fastcall LoadSettingsFromStream(System::Classes::TStream* AStream);
};


class PASCALIMPLEMENTATION TTMSFNCPageControl : public TTMSFNCCustomPageControl
{
	typedef TTMSFNCCustomPageControl inherited;
	
private:
	bool FInitialize;
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	virtual void __fastcall SetName(const System::Classes::TComponentName Value);
	
public:
	__fastcall virtual TTMSFNCPageControl(System::Classes::TComponent* AOwner);
	__property ActivePage;
	__property PageContainers;
	HIDESBASE virtual void __fastcall InitSample();
	
__published:
	__property ActivePageIndex = {default=0};
	__property Collapsed = {default=0};
	__property Fill;
	__property Stroke;
	__property TabAppearance;
	__property ButtonAppearance;
	__property BitmapContainer;
	__property Interaction;
	__property Options;
	__property TabSize;
	__property Layout;
	__property Version = {default=0};
	__property Pages;
	__property OnBeforeClosePage;
	__property OnBeforeChangePage;
	__property OnClosePage;
	__property OnChangePage;
	__property OnAnchorTabClick;
	__property OnBeforeInsertPage;
	__property OnInsertPage;
	__property OnBeforeUpdateTab;
	__property OnUpdateTab;
	__property OnBeforeOpenInplaceEditor;
	__property OnCloseInplaceEditor;
	__property OnOpenInplaceEditor;
	__property OnGetInplaceEditor;
	__property OnCustomizeInplaceEditor;
	__property OnGetInplaceEditorRect;
	__property OnBeforeReorderPage;
	__property OnReorderPage;
	__property OnBeforeDrawTabBackground;
	__property OnBeforeDrawTabProgress;
	__property OnBeforeDrawTabBadge;
	__property OnBeforeDrawTabText;
	__property OnBeforeDrawTabCloseButton;
	__property OnBeforeDrawTabBitmap;
	__property OnAfterDrawTabBackground;
	__property OnAfterDrawTabProgress;
	__property OnAfterDrawTabBadge;
	__property OnAfterDrawTabText;
	__property OnAfterDrawTabCloseButton;
	__property OnAfterDrawTabBitmap;
	__property OnBeforeDrawMenuButton;
	__property OnAfterDrawMenuButton;
public:
	/* TTMSFNCCustomPageControl.Destroy */ inline __fastcall virtual ~TTMSFNCPageControl() { }
	
};


//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x0);
static constexpr System::Int8 BLD_VER = System::Int8(0x7);
}	/* namespace Tmsfncpagecontrol */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCPAGECONTROL)
using namespace Fmx::Tmsfncpagecontrol;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncpagecontrolHPP
