// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCRibbon.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncribbonHPP
#define Fmx_TmsfncribbonHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <FMX.Forms.hpp>
#include <FMX.TMSFNCPageControl.hpp>
#include <FMX.TMSFNCGraphicsTypes.hpp>
#include <FMX.TMSFNCHTMLText.hpp>
#include <FMX.TMSFNCToolBar.hpp>
#include <FMX.TMSFNCCustomControl.hpp>
#include <FMX.Graphics.hpp>
#include <FMX.TMSFNCTabSet.hpp>
#include <FMX.TMSFNCBitmapContainer.hpp>
#include <FMX.TMSFNCHint.hpp>
#include <FMX.Controls.hpp>
#include <FMX.TMSFNCGraphics.hpp>
#include <FMX.Types.hpp>
#include <System.UITypes.hpp>
#include <System.Generics.Collections.hpp>
#include <System.Types.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncribbon
{
//-- forward type declarations -----------------------------------------------
__interface DELPHIINTERFACE ITMSFNCRibbonTheme;
typedef System::DelphiInterface<ITMSFNCRibbonTheme> _di_ITMSFNCRibbonTheme;
class DELPHICLASS TTMSFNCRibbonContainer;
class DELPHICLASS TTMSFNCRibbonBottomContainer;
class DELPHICLASS TTMSFNCRibbonPageControlContainer;
class DELPHICLASS TTMSFNCRibbonSystemMenuToolBarButton;
class DELPHICLASS TTMSFNCRibbonToolBarDropDownButton;
class DELPHICLASS TTMSFNCRibbonToolBarOptionsMenuButton;
class DELPHICLASS TTMSFNCRibbonDefaultToolBarButton;
class DELPHICLASS TTMSFNCRibbonToolBarButton;
class DELPHICLASS TTMSFNCRibbonToolBarItemPicker;
class DELPHICLASS TTMSFNCRibbonToolBarFontNamePicker;
class DELPHICLASS TTMSFNCRibbonToolBarFontSizePicker;
class DELPHICLASS TTMSFNCRibbonToolBarColorPicker;
class DELPHICLASS TTMSFNCRibbonToolBarBitmapPicker;
class DELPHICLASS TTMSFNCRibbonToolBarSeparator;
class DELPHICLASS TTMSFNCRibbonFileButton;
class DELPHICLASS TTMSFNCRibbonPage;
class DELPHICLASS TTMSFNCRibbonPages;
class DELPHICLASS TTMSFNCRibbonPageControl;
class DELPHICLASS TTMSFNCRibbonDefaultToolBar;
class DELPHICLASS TTMSFNCRibbonToolBarWidths;
class DELPHICLASS TTMSFNCRibbonToolBar;
class DELPHICLASS TTMSFNCRibbonQAT;
class DELPHICLASS TTMSFNCRibbonCaption;
class DELPHICLASS TTMSFNCRibbonSystemMenu;
class DELPHICLASS TTMSFNCRibbonIcon;
class DELPHICLASS TTMSFNCRibbonToolBarWrapper;
class DELPHICLASS TTMSFNCRibbonForm;
class DELPHICLASS TTMSFNCRibbonGroup;
class DELPHICLASS TTMSFNCRibbonGroups;
struct TTMSFNCRibbonDisplayGroup;
class DELPHICLASS TTMSFNCRibbonDisplayGroupList;
class DELPHICLASS TTMSFNCRibbonGroupAppearance;
class DELPHICLASS TTMSFNCCustomRibbon;
class DELPHICLASS TTMSFNCRibbon;
//-- type declarations -------------------------------------------------------
typedef Fmx::Controls::TControl TWinControl;

enum DECLSPEC_DENUM TTMSFNCRibbonTheme : unsigned char { rbtLightBlue, rbtBlue, rbtCrimson, rbtGreen, rbtSeaGreen, rbtOrange, rbtPurple, rbtDarkGray, rbtBlack, rbtWhite, rbtCustom };

__interface  INTERFACE_UUID("{D0F59233-D96D-4BFD-9EDF-BAD250489219}") ITMSFNCRibbonTheme  : public System::IInterface 
{
	virtual void __fastcall SetTheme(TTMSFNCRibbonTheme ATheme, System::Uitypes::TAlphaColor ACustomThemeColor) = 0 ;
};

typedef void __fastcall (__closure *TTMSFNCRibbonBeforeApplyThemeEvent)(System::TObject* Sender, System::TObject* AObject, bool &ABeforeApplyTheme);

typedef void __fastcall (__closure *TTMSFNCRibbonAppliedThemeEvent)(System::TObject* Sender, System::TObject* AObject);

class PASCALIMPLEMENTATION TTMSFNCRibbonContainer : public Fmx::Tmsfnccustomcontrol::TTMSFNCCustomControl
{
	typedef Fmx::Tmsfnccustomcontrol::TTMSFNCCustomControl inherited;
	
private:
	bool FContainer;
	TTMSFNCRibbonBeforeApplyThemeEvent FOnBeforeApplyTheme;
	TTMSFNCRibbonAppliedThemeEvent FOnAppliedTheme;
	
protected:
	virtual void __fastcall DefineProperties(System::Classes::TFiler* Filer);
	void __fastcall ReadContainer(System::Classes::TReader* Reader);
	void __fastcall WriteContainer(System::Classes::TWriter* Writer);
	virtual void __fastcall DoBeforeApplyTheme(System::TObject* AObject, bool &ABeforeApplyTheme);
	virtual void __fastcall DoAppliedTheme(System::TObject* AObject);
	virtual System::UnicodeString __fastcall GetDocURL();
	
public:
	__fastcall virtual TTMSFNCRibbonContainer(System::Classes::TComponent* AOwner);
	__property bool Container = {read=FContainer, write=FContainer, default=0};
	virtual void __fastcall SetTheme(TTMSFNCRibbonTheme ATheme, System::Uitypes::TAlphaColor ACustomThemeColor);
	
__published:
	__property TTMSFNCRibbonAppliedThemeEvent OnAppliedTheme = {read=FOnAppliedTheme, write=FOnAppliedTheme};
	__property TTMSFNCRibbonBeforeApplyThemeEvent OnBeforeApplyTheme = {read=FOnBeforeApplyTheme, write=FOnBeforeApplyTheme};
	__property Fill;
	__property Stroke;
public:
	/* TTMSFNCCustomControl.Destroy */ inline __fastcall virtual ~TTMSFNCRibbonContainer() { }
	
private:
	void *__ITMSFNCRibbonTheme;	// ITMSFNCRibbonTheme 
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {D0F59233-D96D-4BFD-9EDF-BAD250489219}
	operator _di_ITMSFNCRibbonTheme()
	{
		_di_ITMSFNCRibbonTheme intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator ITMSFNCRibbonTheme*(void) { return (ITMSFNCRibbonTheme*)&__ITMSFNCRibbonTheme; }
	#endif
	
};


class PASCALIMPLEMENTATION TTMSFNCRibbonBottomContainer : public TTMSFNCRibbonContainer
{
	typedef TTMSFNCRibbonContainer inherited;
	
protected:
	virtual void __fastcall ReadState(System::Classes::TReader* Reader);
	virtual TTMSFNCRibbonQAT* __fastcall FindQAT(Fmx::Controls::TControl* AControl);
	
public:
	__fastcall virtual TTMSFNCRibbonBottomContainer(System::Classes::TComponent* AOwner);
	virtual void __fastcall SetTheme(TTMSFNCRibbonTheme ATheme, System::Uitypes::TAlphaColor ACustomThemeColor);
public:
	/* TTMSFNCCustomControl.Destroy */ inline __fastcall virtual ~TTMSFNCRibbonBottomContainer() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCRibbonPageControlContainer : public Fmx::Tmsfncpagecontrol::TTMSFNCPageControlContainer
{
	typedef Fmx::Tmsfncpagecontrol::TTMSFNCPageControlContainer inherited;
	
private:
	Fmx::Types::TTimer* FCollapseTimer;
	float FSaveWidth;
	bool FCollapseHover;
	bool FCollapseDown;
	TTMSFNCRibbonBeforeApplyThemeEvent FOnBeforeApplyTheme;
	TTMSFNCRibbonAppliedThemeEvent FOnAppliedTheme;
	System::UnicodeString FCollapseButtonHint;
	TTMSFNCRibbonToolBar* __fastcall GetToolBar(int AIndex);
	int __fastcall GetToolBarCount();
	
protected:
	virtual System::UnicodeString __fastcall GetDocURL();
	virtual System::Types::TRectF __fastcall GetCollapseRect();
	virtual bool __fastcall IsShortCutHintActive();
	virtual bool __fastcall HasShortCut(System::UnicodeString AShortCut);
	virtual bool __fastcall HandleShortCut(System::UnicodeString AShortCut);
	virtual bool __fastcall HasHint();
	virtual System::UnicodeString __fastcall GetHintString();
	virtual void __fastcall CancelShortCutHint(bool AClearShortCutHintString = true);
	virtual void __fastcall ShowShortCutHint();
	void __fastcall DoCollapseTimer(System::TObject* Sender);
	virtual void __fastcall DoBeforeApplyTheme(System::TObject* AObject, bool &ABeforeApplyTheme);
	virtual void __fastcall DoAppliedTheme(System::TObject* AObject);
	virtual void __fastcall HandleMouseDown(System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall HandleMouseMove(System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall HandleMouseUp(System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall HandleMouseLeave();
	virtual void __fastcall UpdateControlLayout(bool AForceUpdate = false);
	virtual void __fastcall UpdateControlAfterResize();
	
public:
	__fastcall virtual TTMSFNCRibbonPageControlContainer(System::Classes::TComponent* AOwner, Fmx::Tmsfncpagecontrol::TTMSFNCPageControlPage* APage)/* overload */;
	__fastcall virtual TTMSFNCRibbonPageControlContainer(System::Classes::TComponent* AOwner)/* overload */;
	__fastcall virtual ~TTMSFNCRibbonPageControlContainer();
	virtual TTMSFNCRibbonToolBar* __fastcall AddToolBar(System::UnicodeString AText = System::UnicodeString(), int AIndex = 0xffffffff);
	virtual void __fastcall Draw(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	void __fastcall SetTheme(TTMSFNCRibbonTheme ATheme, System::Uitypes::TAlphaColor ACustomThemeColor);
	__property TTMSFNCRibbonToolBar* ToolBars[int AIndex] = {read=GetToolBar};
	__property int ToolBarCount = {read=GetToolBarCount, nodefault};
	
__published:
	__property System::UnicodeString CollapseButtonHint = {read=FCollapseButtonHint, write=FCollapseButtonHint};
	__property TTMSFNCRibbonAppliedThemeEvent OnAppliedTheme = {read=FOnAppliedTheme, write=FOnAppliedTheme};
	__property TTMSFNCRibbonBeforeApplyThemeEvent OnBeforeApplyTheme = {read=FOnBeforeApplyTheme, write=FOnBeforeApplyTheme};
private:
	void *__ITMSFNCRibbonTheme;	// ITMSFNCRibbonTheme 
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {D0F59233-D96D-4BFD-9EDF-BAD250489219}
	operator _di_ITMSFNCRibbonTheme()
	{
		_di_ITMSFNCRibbonTheme intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator ITMSFNCRibbonTheme*(void) { return (ITMSFNCRibbonTheme*)&__ITMSFNCRibbonTheme; }
	#endif
	
};


typedef int TTMSFNCRibbonToolBarButtonType;

class PASCALIMPLEMENTATION TTMSFNCRibbonSystemMenuToolBarButton : public Fmx::Tmsfnctoolbar::TTMSFNCToolBarButton
{
	typedef Fmx::Tmsfnctoolbar::TTMSFNCToolBarButton inherited;
	
private:
	int FButtonType;
	
protected:
	virtual bool __fastcall CanDrawDesignTime();
	virtual System::UnicodeString __fastcall GetDocURL();
	virtual void __fastcall DefineProperties(System::Classes::TFiler* Filer);
	void __fastcall ReadButtonType(System::Classes::TReader* Reader);
	void __fastcall WriteButtonType(System::Classes::TWriter* Writer);
	
public:
	__fastcall virtual TTMSFNCRibbonSystemMenuToolBarButton(System::Classes::TComponent* AOwner);
	__property int ButtonType = {read=FButtonType, write=FButtonType, default=0};
	void __fastcall SetTheme(TTMSFNCRibbonTheme ATheme, System::Uitypes::TAlphaColor ACustomThemeColor);
public:
	/* TTMSFNCCustomToolBarButton.Destroy */ inline __fastcall virtual ~TTMSFNCRibbonSystemMenuToolBarButton() { }
	
private:
	void *__ITMSFNCRibbonTheme;	// ITMSFNCRibbonTheme 
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {D0F59233-D96D-4BFD-9EDF-BAD250489219}
	operator _di_ITMSFNCRibbonTheme()
	{
		_di_ITMSFNCRibbonTheme intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator ITMSFNCRibbonTheme*(void) { return (ITMSFNCRibbonTheme*)&__ITMSFNCRibbonTheme; }
	#endif
	
};


class PASCALIMPLEMENTATION TTMSFNCRibbonToolBarDropDownButton : public Fmx::Tmsfnctoolbar::TTMSFNCToolBarDropDownButton
{
	typedef Fmx::Tmsfnctoolbar::TTMSFNCToolBarDropDownButton inherited;
	
protected:
	virtual bool __fastcall CanDrawDesignTime();
	virtual System::UnicodeString __fastcall GetDocURL();
	
public:
	__fastcall virtual TTMSFNCRibbonToolBarDropDownButton(System::Classes::TComponent* AOwner);
	virtual void __fastcall SetTheme(TTMSFNCRibbonTheme ATheme, System::Uitypes::TAlphaColor ACustomThemeColor);
public:
	/* TTMSFNCDefaultToolBarButton.Destroy */ inline __fastcall virtual ~TTMSFNCRibbonToolBarDropDownButton() { }
	
private:
	void *__ITMSFNCRibbonTheme;	// ITMSFNCRibbonTheme 
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {D0F59233-D96D-4BFD-9EDF-BAD250489219}
	operator _di_ITMSFNCRibbonTheme()
	{
		_di_ITMSFNCRibbonTheme intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator ITMSFNCRibbonTheme*(void) { return (ITMSFNCRibbonTheme*)&__ITMSFNCRibbonTheme; }
	#endif
	
};


class PASCALIMPLEMENTATION TTMSFNCRibbonToolBarOptionsMenuButton : public TTMSFNCRibbonToolBarDropDownButton
{
	typedef TTMSFNCRibbonToolBarDropDownButton inherited;
	
protected:
	virtual bool __fastcall CanDrawDesignTime();
	
public:
	virtual void __fastcall SetTheme(TTMSFNCRibbonTheme ATheme, System::Uitypes::TAlphaColor ACustomThemeColor);
public:
	/* TTMSFNCRibbonToolBarDropDownButton.Create */ inline __fastcall virtual TTMSFNCRibbonToolBarOptionsMenuButton(System::Classes::TComponent* AOwner) : TTMSFNCRibbonToolBarDropDownButton(AOwner) { }
	
public:
	/* TTMSFNCDefaultToolBarButton.Destroy */ inline __fastcall virtual ~TTMSFNCRibbonToolBarOptionsMenuButton() { }
	
private:
	void *__ITMSFNCRibbonTheme;	// ITMSFNCRibbonTheme 
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {D0F59233-D96D-4BFD-9EDF-BAD250489219}
	operator _di_ITMSFNCRibbonTheme()
	{
		_di_ITMSFNCRibbonTheme intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator ITMSFNCRibbonTheme*(void) { return (ITMSFNCRibbonTheme*)&__ITMSFNCRibbonTheme; }
	#endif
	
};


class PASCALIMPLEMENTATION TTMSFNCRibbonDefaultToolBarButton : public Fmx::Tmsfnctoolbar::TTMSFNCToolBarButton
{
	typedef Fmx::Tmsfnctoolbar::TTMSFNCToolBarButton inherited;
	
protected:
	virtual Fmx::Tmsfnctoolbar::TTMSFNCToolBarDropDownButtonClass __fastcall GetDropDownButtonClass();
	virtual bool __fastcall CanDrawDesignTime();
	virtual System::UnicodeString __fastcall GetDocURL();
	virtual void __fastcall ReadState(System::Classes::TReader* Reader);
	virtual void __fastcall CustomizeShortCut(Fmx::Tmsfnchint::TTMSFNCHint* AShortCutWindow, System::UnicodeString AShortCut, const System::Types::TRectF &AShortCutRect, System::Types::TPointF &AShortCutPosition);
	
public:
	__fastcall virtual TTMSFNCRibbonDefaultToolBarButton(System::Classes::TComponent* AOwner);
	virtual void __fastcall SetTheme(TTMSFNCRibbonTheme ATheme, System::Uitypes::TAlphaColor ACustomThemeColor);
	
__published:
	__property ShortCutHint = {default=0};
public:
	/* TTMSFNCCustomToolBarButton.Destroy */ inline __fastcall virtual ~TTMSFNCRibbonDefaultToolBarButton() { }
	
private:
	void *__ITMSFNCRibbonTheme;	// ITMSFNCRibbonTheme 
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {D0F59233-D96D-4BFD-9EDF-BAD250489219}
	operator _di_ITMSFNCRibbonTheme()
	{
		_di_ITMSFNCRibbonTheme intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator ITMSFNCRibbonTheme*(void) { return (ITMSFNCRibbonTheme*)&__ITMSFNCRibbonTheme; }
	#endif
	
};


class PASCALIMPLEMENTATION TTMSFNCRibbonToolBarButton : public TTMSFNCRibbonDefaultToolBarButton
{
	typedef TTMSFNCRibbonDefaultToolBarButton inherited;
	
protected:
	virtual bool __fastcall CanDrawDesignTime();
	virtual void __fastcall CustomizeShortCut(Fmx::Tmsfnchint::TTMSFNCHint* AShortCutWindow, System::UnicodeString AShortCut, const System::Types::TRectF &AShortCutRect, System::Types::TPointF &AShortCutPosition);
	
public:
	__fastcall virtual TTMSFNCRibbonToolBarButton(System::Classes::TComponent* AOwner);
	virtual void __fastcall SetTheme(TTMSFNCRibbonTheme ATheme, System::Uitypes::TAlphaColor ACustomThemeColor);
	
__published:
	__property ShortCutHint = {default=0};
public:
	/* TTMSFNCCustomToolBarButton.Destroy */ inline __fastcall virtual ~TTMSFNCRibbonToolBarButton() { }
	
private:
	void *__ITMSFNCRibbonTheme;	// ITMSFNCRibbonTheme 
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {D0F59233-D96D-4BFD-9EDF-BAD250489219}
	operator _di_ITMSFNCRibbonTheme()
	{
		_di_ITMSFNCRibbonTheme intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator ITMSFNCRibbonTheme*(void) { return (ITMSFNCRibbonTheme*)&__ITMSFNCRibbonTheme; }
	#endif
	
};


class PASCALIMPLEMENTATION TTMSFNCRibbonToolBarItemPicker : public Fmx::Tmsfnctoolbar::TTMSFNCToolBarItemPicker
{
	typedef Fmx::Tmsfnctoolbar::TTMSFNCToolBarItemPicker inherited;
	
protected:
	virtual Fmx::Tmsfnctoolbar::TTMSFNCToolBarDropDownButtonClass __fastcall GetDropDownButtonClass();
	virtual bool __fastcall CanDrawDesignTime();
	virtual System::UnicodeString __fastcall GetDocURL();
	virtual void __fastcall ReadState(System::Classes::TReader* Reader);
	virtual void __fastcall CustomizeShortCut(Fmx::Tmsfnchint::TTMSFNCHint* AShortCutWindow, System::UnicodeString AShortCut, const System::Types::TRectF &AShortCutRect, System::Types::TPointF &AShortCutPosition);
	
public:
	__fastcall virtual TTMSFNCRibbonToolBarItemPicker(System::Classes::TComponent* AOwner);
	virtual void __fastcall SetTheme(TTMSFNCRibbonTheme ATheme, System::Uitypes::TAlphaColor ACustomThemeColor);
	
__published:
	__property ShortCutHint = {default=0};
public:
	/* TTMSFNCToolBarCustomItemPicker.Destroy */ inline __fastcall virtual ~TTMSFNCRibbonToolBarItemPicker() { }
	
private:
	void *__ITMSFNCRibbonTheme;	// ITMSFNCRibbonTheme 
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {D0F59233-D96D-4BFD-9EDF-BAD250489219}
	operator _di_ITMSFNCRibbonTheme()
	{
		_di_ITMSFNCRibbonTheme intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator ITMSFNCRibbonTheme*(void) { return (ITMSFNCRibbonTheme*)&__ITMSFNCRibbonTheme; }
	#endif
	
};


class PASCALIMPLEMENTATION TTMSFNCRibbonToolBarFontNamePicker : public Fmx::Tmsfnctoolbar::TTMSFNCToolBarFontNamePicker
{
	typedef Fmx::Tmsfnctoolbar::TTMSFNCToolBarFontNamePicker inherited;
	
protected:
	virtual Fmx::Tmsfnctoolbar::TTMSFNCToolBarDropDownButtonClass __fastcall GetDropDownButtonClass();
	virtual bool __fastcall CanDrawDesignTime();
	virtual System::UnicodeString __fastcall GetDocURL();
	virtual void __fastcall ReadState(System::Classes::TReader* Reader);
	virtual void __fastcall CustomizeShortCut(Fmx::Tmsfnchint::TTMSFNCHint* AShortCutWindow, System::UnicodeString AShortCut, const System::Types::TRectF &AShortCutRect, System::Types::TPointF &AShortCutPosition);
	
public:
	__fastcall virtual TTMSFNCRibbonToolBarFontNamePicker(System::Classes::TComponent* AOwner);
	virtual void __fastcall SetTheme(TTMSFNCRibbonTheme ATheme, System::Uitypes::TAlphaColor ACustomThemeColor);
	
__published:
	__property ShortCutHint = {default=0};
public:
	/* TTMSFNCToolBarCustomItemPicker.Destroy */ inline __fastcall virtual ~TTMSFNCRibbonToolBarFontNamePicker() { }
	
private:
	void *__ITMSFNCRibbonTheme;	// ITMSFNCRibbonTheme 
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {D0F59233-D96D-4BFD-9EDF-BAD250489219}
	operator _di_ITMSFNCRibbonTheme()
	{
		_di_ITMSFNCRibbonTheme intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator ITMSFNCRibbonTheme*(void) { return (ITMSFNCRibbonTheme*)&__ITMSFNCRibbonTheme; }
	#endif
	
};


class PASCALIMPLEMENTATION TTMSFNCRibbonToolBarFontSizePicker : public Fmx::Tmsfnctoolbar::TTMSFNCToolBarFontSizePicker
{
	typedef Fmx::Tmsfnctoolbar::TTMSFNCToolBarFontSizePicker inherited;
	
protected:
	virtual Fmx::Tmsfnctoolbar::TTMSFNCToolBarDropDownButtonClass __fastcall GetDropDownButtonClass();
	virtual bool __fastcall CanDrawDesignTime();
	virtual System::UnicodeString __fastcall GetDocURL();
	virtual void __fastcall ReadState(System::Classes::TReader* Reader);
	virtual void __fastcall CustomizeShortCut(Fmx::Tmsfnchint::TTMSFNCHint* AShortCutWindow, System::UnicodeString AShortCut, const System::Types::TRectF &AShortCutRect, System::Types::TPointF &AShortCutPosition);
	
public:
	__fastcall virtual TTMSFNCRibbonToolBarFontSizePicker(System::Classes::TComponent* AOwner);
	virtual void __fastcall SetTheme(TTMSFNCRibbonTheme ATheme, System::Uitypes::TAlphaColor ACustomThemeColor);
	
__published:
	__property ShortCutHint = {default=0};
public:
	/* TTMSFNCToolBarCustomItemPicker.Destroy */ inline __fastcall virtual ~TTMSFNCRibbonToolBarFontSizePicker() { }
	
private:
	void *__ITMSFNCRibbonTheme;	// ITMSFNCRibbonTheme 
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {D0F59233-D96D-4BFD-9EDF-BAD250489219}
	operator _di_ITMSFNCRibbonTheme()
	{
		_di_ITMSFNCRibbonTheme intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator ITMSFNCRibbonTheme*(void) { return (ITMSFNCRibbonTheme*)&__ITMSFNCRibbonTheme; }
	#endif
	
};


class PASCALIMPLEMENTATION TTMSFNCRibbonToolBarColorPicker : public Fmx::Tmsfnctoolbar::TTMSFNCToolBarColorPicker
{
	typedef Fmx::Tmsfnctoolbar::TTMSFNCToolBarColorPicker inherited;
	
protected:
	virtual Fmx::Tmsfnctoolbar::TTMSFNCToolBarDropDownButtonClass __fastcall GetDropDownButtonClass();
	virtual bool __fastcall CanDrawDesignTime();
	virtual System::UnicodeString __fastcall GetDocURL();
	virtual void __fastcall ReadState(System::Classes::TReader* Reader);
	virtual void __fastcall CustomizeShortCut(Fmx::Tmsfnchint::TTMSFNCHint* AShortCutWindow, System::UnicodeString AShortCut, const System::Types::TRectF &AShortCutRect, System::Types::TPointF &AShortCutPosition);
	
public:
	__fastcall virtual TTMSFNCRibbonToolBarColorPicker(System::Classes::TComponent* AOwner);
	virtual void __fastcall SetTheme(TTMSFNCRibbonTheme ATheme, System::Uitypes::TAlphaColor ACustomThemeColor);
	
__published:
	__property ShortCutHint = {default=0};
public:
	/* TTMSFNCCustomToolBarButton.Destroy */ inline __fastcall virtual ~TTMSFNCRibbonToolBarColorPicker() { }
	
private:
	void *__ITMSFNCRibbonTheme;	// ITMSFNCRibbonTheme 
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {D0F59233-D96D-4BFD-9EDF-BAD250489219}
	operator _di_ITMSFNCRibbonTheme()
	{
		_di_ITMSFNCRibbonTheme intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator ITMSFNCRibbonTheme*(void) { return (ITMSFNCRibbonTheme*)&__ITMSFNCRibbonTheme; }
	#endif
	
};


class PASCALIMPLEMENTATION TTMSFNCRibbonToolBarBitmapPicker : public Fmx::Tmsfnctoolbar::TTMSFNCToolBarBitmapPicker
{
	typedef Fmx::Tmsfnctoolbar::TTMSFNCToolBarBitmapPicker inherited;
	
protected:
	virtual Fmx::Tmsfnctoolbar::TTMSFNCToolBarDropDownButtonClass __fastcall GetDropDownButtonClass();
	virtual bool __fastcall CanDrawDesignTime();
	virtual System::UnicodeString __fastcall GetDocURL();
	virtual void __fastcall ReadState(System::Classes::TReader* Reader);
	virtual void __fastcall CustomizeShortCut(Fmx::Tmsfnchint::TTMSFNCHint* AShortCutWindow, System::UnicodeString AShortCut, const System::Types::TRectF &AShortCutRect, System::Types::TPointF &AShortCutPosition);
	
public:
	__fastcall virtual TTMSFNCRibbonToolBarBitmapPicker(System::Classes::TComponent* AOwner);
	virtual void __fastcall SetTheme(TTMSFNCRibbonTheme ATheme, System::Uitypes::TAlphaColor ACustomThemeColor);
	
__published:
	__property ShortCutHint = {default=0};
public:
	/* TTMSFNCCustomToolBarButton.Destroy */ inline __fastcall virtual ~TTMSFNCRibbonToolBarBitmapPicker() { }
	
private:
	void *__ITMSFNCRibbonTheme;	// ITMSFNCRibbonTheme 
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {D0F59233-D96D-4BFD-9EDF-BAD250489219}
	operator _di_ITMSFNCRibbonTheme()
	{
		_di_ITMSFNCRibbonTheme intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator ITMSFNCRibbonTheme*(void) { return (ITMSFNCRibbonTheme*)&__ITMSFNCRibbonTheme; }
	#endif
	
};


class PASCALIMPLEMENTATION TTMSFNCRibbonToolBarSeparator : public Fmx::Tmsfnctoolbar::TTMSFNCToolBarSeparator
{
	typedef Fmx::Tmsfnctoolbar::TTMSFNCToolBarSeparator inherited;
	
protected:
	virtual System::UnicodeString __fastcall GetDocURL();
	
public:
	__fastcall virtual TTMSFNCRibbonToolBarSeparator(System::Classes::TComponent* AOwner);
	virtual void __fastcall SetTheme(TTMSFNCRibbonTheme ATheme, System::Uitypes::TAlphaColor ACustomThemeColor);
public:
	/* TTMSFNCCustomToolBarSeparator.Destroy */ inline __fastcall virtual ~TTMSFNCRibbonToolBarSeparator() { }
	
private:
	void *__ITMSFNCRibbonTheme;	// ITMSFNCRibbonTheme 
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {D0F59233-D96D-4BFD-9EDF-BAD250489219}
	operator _di_ITMSFNCRibbonTheme()
	{
		_di_ITMSFNCRibbonTheme intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator ITMSFNCRibbonTheme*(void) { return (ITMSFNCRibbonTheme*)&__ITMSFNCRibbonTheme; }
	#endif
	
};


class PASCALIMPLEMENTATION TTMSFNCRibbonFileButton : public TTMSFNCRibbonDefaultToolBarButton
{
	typedef TTMSFNCRibbonDefaultToolBarButton inherited;
	
private:
	bool FFileButton;
	
protected:
	virtual System::UnicodeString __fastcall GetDocURL();
	virtual bool __fastcall CanDrawDesignTime();
	virtual void __fastcall DefineProperties(System::Classes::TFiler* Filer);
	void __fastcall ReadFileButton(System::Classes::TReader* Reader);
	void __fastcall WriteFileButton(System::Classes::TWriter* Writer);
	virtual void __fastcall CustomizeShortCut(Fmx::Tmsfnchint::TTMSFNCHint* AShortCutWindow, System::UnicodeString AShortCut, const System::Types::TRectF &AShortCutRect, System::Types::TPointF &AShortCutPosition);
	
public:
	__fastcall virtual TTMSFNCRibbonFileButton(System::Classes::TComponent* AOwner);
	__property bool FileButton = {read=FFileButton, write=FFileButton, default=0};
	virtual void __fastcall SetTheme(TTMSFNCRibbonTheme ATheme, System::Uitypes::TAlphaColor ACustomThemeColor);
	
__published:
	__property ShortCutHint = {default=0};
public:
	/* TTMSFNCCustomToolBarButton.Destroy */ inline __fastcall virtual ~TTMSFNCRibbonFileButton() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCRibbonPage : public Fmx::Tmsfncpagecontrol::TTMSFNCPageControlPage
{
	typedef Fmx::Tmsfncpagecontrol::TTMSFNCPageControlPage inherited;
	
private:
	TTMSFNCRibbonPageControlContainer* __fastcall GetContainer();
	TTMSFNCRibbonToolBar* __fastcall GetToolBar(int AIndex);
	
protected:
	virtual void __fastcall SetText(const System::UnicodeString Value);
	
public:
	__fastcall virtual TTMSFNCRibbonPage(System::Classes::TCollection* Collection);
	void __fastcall SetTheme(TTMSFNCRibbonTheme ATheme, System::Uitypes::TAlphaColor ACustomThemeColor);
	__property TTMSFNCRibbonPageControlContainer* Container = {read=GetContainer};
	virtual TTMSFNCRibbonToolBar* __fastcall AddToolBar(System::UnicodeString AText = System::UnicodeString(), int AIndex = 0xffffffff);
	__property TTMSFNCRibbonToolBar* ToolBars[int AIndex] = {read=GetToolBar};
	
__published:
	__property ShortCutHint = {default=0};
public:
	/* TTMSFNCPageControlPage.Destroy */ inline __fastcall virtual ~TTMSFNCRibbonPage() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCRibbonPages : public Fmx::Tmsfncpagecontrol::TTMSFNCPageControlPages
{
	typedef Fmx::Tmsfncpagecontrol::TTMSFNCPageControlPages inherited;
	
public:
	TTMSFNCRibbonPage* operator[](int Index) { return this->Pages[Index]; }
	
private:
	TTMSFNCRibbonPage* __fastcall GetPage(int Index);
	void __fastcall SetPage(int Index, TTMSFNCRibbonPage* const Value);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall GetTabClass();
	
public:
	__property TTMSFNCRibbonPage* Pages[int Index] = {read=GetPage, write=SetPage/*, default*/};
public:
	/* TTMSFNCPageControlPages.Create */ inline __fastcall virtual TTMSFNCRibbonPages(Fmx::Tmsfnctabset::TTMSFNCCustomTabSet* ATabSet) : Fmx::Tmsfncpagecontrol::TTMSFNCPageControlPages(ATabSet) { }
	
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCRibbonPages() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCRibbonPageControl : public Fmx::Tmsfncpagecontrol::TTMSFNCPageControl
{
	typedef Fmx::Tmsfncpagecontrol::TTMSFNCPageControl inherited;
	
private:
	float FSaveWidth;
	float FSaveHeight;
	float FResizeWidth;
	TTMSFNCRibbonFileButton* FFileButton;
	TTMSFNCRibbonContainer* FContainer;
	TTMSFNCCustomRibbon* FRibbon;
	TTMSFNCRibbonBeforeApplyThemeEvent FOnBeforeApplyTheme;
	TTMSFNCRibbonAppliedThemeEvent FOnAppliedTheme;
	bool FCollapsable;
	HIDESBASE TTMSFNCRibbonPageControlContainer* __fastcall GetPageContainer(int AIndex);
	void __fastcall SetCollapsable(const bool Value);
	HIDESBASE TTMSFNCRibbonPages* __fastcall GetPages();
	HIDESBASE void __fastcall SetPages(TTMSFNCRibbonPages* const Value);
	
protected:
	virtual void __fastcall ChangeDPIScale(int M, int D);
	virtual System::UnicodeString __fastcall GetDocURL();
	virtual Fmx::Tmsfnctabset::TTMSFNCTabSetTabs* __fastcall CreateTabs();
	virtual Fmx::Tmsfncpagecontrol::TTMSFNCPageControlContainerClass __fastcall GetContainerClass();
	virtual float __fastcall GetRebuildDPIScale();
	virtual bool __fastcall HandleShortCut(System::UnicodeString AShortCut);
	virtual void __fastcall SetCollapsed(const bool Value);
	virtual void __fastcall SetBitmapContainer(Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* const Value);
	virtual void __fastcall CustomizeShortCut(Fmx::Tmsfnchint::TTMSFNCHint* AShortCutWindow, System::UnicodeString AShortCut, const System::Types::TRectF &AShortCutRect, System::Types::TPointF &AShortCutPosition);
	virtual void __fastcall HandleChangeTab(Fmx::Tmsfnctabset::TTMSFNCTabSetTab* ATab);
	virtual void __fastcall SetName(const System::Classes::TComponentName Value);
	void __fastcall DoBeforeApplyTheme(System::TObject* AObject, bool &ABeforeApplyTheme);
	void __fastcall DoAppliedTheme(System::TObject* AObject);
	virtual void __fastcall Rebuild();
	virtual void __fastcall Initialize();
	virtual void __fastcall CreateControls();
	virtual void __fastcall DrawCustom(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics);
	virtual void __fastcall ReadState(System::Classes::TReader* Reader);
	virtual void __fastcall ShowShortCutHint();
	virtual void __fastcall CancelShortCutHint(bool AClearShortCutHintString = true);
	
public:
	__fastcall virtual TTMSFNCRibbonPageControl(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCRibbonPageControl();
	HIDESBASE virtual TTMSFNCRibbonPage* __fastcall AddPage(System::UnicodeString AText = System::UnicodeString());
	HIDESBASE virtual TTMSFNCRibbonPage* __fastcall InsertPage(int APageIndex, System::UnicodeString AText = System::UnicodeString());
	virtual void __fastcall ClosePopup();
	virtual void __fastcall SetTheme(TTMSFNCRibbonTheme ATheme, System::Uitypes::TAlphaColor ACustomThemeColor);
	virtual void __fastcall UpdateControlAfterResize();
	__property TTMSFNCRibbonContainer* Container = {read=FContainer};
	__property TTMSFNCRibbonFileButton* FileButton = {read=FFileButton};
	__property TTMSFNCRibbonPageControlContainer* PageContainers[int AIndex] = {read=GetPageContainer};
	
__published:
	__property TTMSFNCRibbonAppliedThemeEvent OnAppliedTheme = {read=FOnAppliedTheme, write=FOnAppliedTheme};
	__property TTMSFNCRibbonBeforeApplyThemeEvent OnBeforeApplyTheme = {read=FOnBeforeApplyTheme, write=FOnBeforeApplyTheme};
	__property bool Collapsable = {read=FCollapsable, write=SetCollapsable, default=0};
	__property TTMSFNCRibbonPages* Pages = {read=GetPages, write=SetPages};
private:
	void *__ITMSFNCRibbonTheme;	// ITMSFNCRibbonTheme 
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {D0F59233-D96D-4BFD-9EDF-BAD250489219}
	operator _di_ITMSFNCRibbonTheme()
	{
		_di_ITMSFNCRibbonTheme intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator ITMSFNCRibbonTheme*(void) { return (ITMSFNCRibbonTheme*)&__ITMSFNCRibbonTheme; }
	#endif
	
};


class PASCALIMPLEMENTATION TTMSFNCRibbonDefaultToolBar : public Fmx::Tmsfnctoolbar::TTMSFNCToolBar
{
	typedef Fmx::Tmsfnctoolbar::TTMSFNCToolBar inherited;
	
private:
	TTMSFNCCustomRibbon* FRibbon;
	TTMSFNCRibbonBeforeApplyThemeEvent FOnBeforeApplyTheme;
	TTMSFNCRibbonAppliedThemeEvent FOnAppliedTheme;
	System::Classes::TNotifyEvent FOnOptionsMenuMoreCommands;
	
protected:
	virtual void __fastcall ReadState(System::Classes::TReader* Reader);
	virtual void __fastcall DoBeforeApplyTheme(System::TObject* AObject, bool &ABeforeApplyTheme);
	virtual void __fastcall DoAppliedTheme(System::TObject* AObject);
	virtual void __fastcall InitializeOptionsMenu();
	virtual void __fastcall AddAdditionalOptions();
	virtual void __fastcall DoMoreCommands(System::TObject* Sender);
	virtual void __fastcall DoToggleQATMode(System::TObject* Sender);
	virtual System::UnicodeString __fastcall GetDocURL();
	virtual bool __fastcall CanBuildControls();
	virtual Fmx::Tmsfnctoolbar::TTMSFNCToolBarDropDownButtonClass __fastcall GetOptionsMenuButtonClass();
	virtual bool __fastcall CanDrawDesignTime();
	virtual Fmx::Tmsfnctoolbar::TTMSFNCToolBarBitmapPickerClass __fastcall GetBitmapPickerClass();
	virtual Fmx::Tmsfnctoolbar::TTMSFNCToolBarButtonClass __fastcall GetToolBarButtonClass();
	virtual Fmx::Tmsfnctoolbar::TTMSFNCToolBarColorPickerClass __fastcall GetColorPickerClass();
	virtual Fmx::Tmsfnctoolbar::TTMSFNCToolBarItemPickerClass __fastcall GetItemPickerClass();
	virtual Fmx::Tmsfnctoolbar::TTMSFNCToolBarFontNamePickerClass __fastcall GetFontNamePickerClass();
	virtual Fmx::Tmsfnctoolbar::TTMSFNCToolBarFontSizePickerClass __fastcall GetFontSizePickerClass();
	virtual Fmx::Tmsfnctoolbar::TTMSFNCToolBarSeparatorClass __fastcall GetToolBarSeparatorClass();
	
public:
	virtual void __fastcall SetTheme(TTMSFNCRibbonTheme ATheme, System::Uitypes::TAlphaColor ACustomThemeColor);
	HIDESBASE virtual TTMSFNCRibbonDefaultToolBarButton* __fastcall AddButton(float AWidth = -1.000000E+00f, float AHeight = -1.000000E+00f, System::UnicodeString AResource = System::UnicodeString(), System::UnicodeString AResourceLarge = System::UnicodeString(), System::UnicodeString AText = System::UnicodeString(), int AIndex = 0xffffffff);
	HIDESBASE virtual TTMSFNCRibbonToolBarSeparator* __fastcall AddSeparator(int AIndex = 0xffffffff);
	HIDESBASE virtual TTMSFNCRibbonToolBarFontNamePicker* __fastcall AddFontNamePicker(int AIndex = 0xffffffff);
	HIDESBASE virtual TTMSFNCRibbonToolBarFontSizePicker* __fastcall AddFontSizePicker(int AIndex = 0xffffffff);
	HIDESBASE virtual TTMSFNCRibbonToolBarColorPicker* __fastcall AddColorPicker(int AIndex = 0xffffffff);
	HIDESBASE virtual TTMSFNCRibbonToolBarItemPicker* __fastcall AddItemPicker(int AIndex = 0xffffffff);
	HIDESBASE virtual TTMSFNCRibbonToolBarBitmapPicker* __fastcall AddBitmapPicker(int AIndex = 0xffffffff);
	HIDESBASE virtual TTMSFNCRibbonToolBarDropDownButton* __fastcall GetOptionsMenuButtonControl();
	
__published:
	__property TTMSFNCRibbonAppliedThemeEvent OnAppliedTheme = {read=FOnAppliedTheme, write=FOnAppliedTheme};
	__property TTMSFNCRibbonBeforeApplyThemeEvent OnBeforeApplyTheme = {read=FOnBeforeApplyTheme, write=FOnBeforeApplyTheme};
	__property System::Classes::TNotifyEvent OnOptionsMenuMoreCommands = {read=FOnOptionsMenuMoreCommands, write=FOnOptionsMenuMoreCommands};
	__property Stroke;
	__property Fill;
public:
	/* TTMSFNCCustomToolBar.Create */ inline __fastcall virtual TTMSFNCRibbonDefaultToolBar(System::Classes::TComponent* AOwner) : Fmx::Tmsfnctoolbar::TTMSFNCToolBar(AOwner) { }
	/* TTMSFNCCustomToolBar.Destroy */ inline __fastcall virtual ~TTMSFNCRibbonDefaultToolBar() { }
	
private:
	void *__ITMSFNCRibbonTheme;	// ITMSFNCRibbonTheme 
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {D0F59233-D96D-4BFD-9EDF-BAD250489219}
	operator _di_ITMSFNCRibbonTheme()
	{
		_di_ITMSFNCRibbonTheme intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator ITMSFNCRibbonTheme*(void) { return (ITMSFNCRibbonTheme*)&__ITMSFNCRibbonTheme; }
	#endif
	
};


class PASCALIMPLEMENTATION TTMSFNCRibbonToolBarWidths : public System::Generics::Collections::TList__1<float>
{
	typedef System::Generics::Collections::TList__1<float> inherited;
	
public:
	/* {System_Generics_Collections}TList<System_Single>.Create */ inline __fastcall TTMSFNCRibbonToolBarWidths()/* overload */ : System::Generics::Collections::TList__1<float>() { }
	/* {System_Generics_Collections}TList<System_Single>.Create */ inline __fastcall TTMSFNCRibbonToolBarWidths(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<float> > AComparer)/* overload */ : System::Generics::Collections::TList__1<float>(AComparer) { }
	/* {System_Generics_Collections}TList<System_Single>.Create */ inline __fastcall TTMSFNCRibbonToolBarWidths(System::Generics::Collections::TEnumerable__1<float>* const Collection)/* overload */ : System::Generics::Collections::TList__1<float>(Collection) { }
	/* {System_Generics_Collections}TList<System_Single>.Create */ inline __fastcall TTMSFNCRibbonToolBarWidths(const float *Values, const int Values_High)/* overload */ : System::Generics::Collections::TList__1<float>(Values, Values_High) { }
	/* {System_Generics_Collections}TList<System_Single>.Destroy */ inline __fastcall virtual ~TTMSFNCRibbonToolBarWidths() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCRibbonToolBar : public TTMSFNCRibbonDefaultToolBar
{
	typedef TTMSFNCRibbonDefaultToolBar inherited;
	
private:
	TTMSFNCRibbonToolBarWidths* FWidths;
	
protected:
	virtual Fmx::Tmsfnctoolbar::TTMSFNCToolBarButtonClass __fastcall GetToolBarButtonClass();
	virtual float __fastcall GetNextExpandWidth();
	virtual int __fastcall Shrink();
	virtual int __fastcall Expand();
	virtual bool __fastcall IsShortCutHintActive();
	virtual bool __fastcall HasShortCut(System::UnicodeString AShortCut);
	virtual bool __fastcall HandleShortCut(System::UnicodeString AShortCut);
	virtual bool __fastcall ExecuteShortCutMethod(System::UnicodeString AShortCut);
	virtual void __fastcall CustomizeShortCut(Fmx::Tmsfnchint::TTMSFNCHint* AShortCutWindow, System::UnicodeString AShortCut, const System::Types::TRectF &AShortCutRect, System::Types::TPointF &AShortCutPosition);
	virtual void __fastcall CancelShortCutHint(bool AClearShortCutHintString = true);
	virtual void __fastcall ShowShortCutHint();
	virtual void __fastcall AddAdditionalOptions();
	
public:
	__fastcall virtual TTMSFNCRibbonToolBar(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCRibbonToolBar();
	virtual void __fastcall SetTheme(TTMSFNCRibbonTheme ATheme, System::Uitypes::TAlphaColor ACustomThemeColor);
	HIDESBASE virtual TTMSFNCRibbonToolBarButton* __fastcall AddButton(float AWidth = -1.000000E+00f, float AHeight = -1.000000E+00f, System::UnicodeString AResource = System::UnicodeString(), System::UnicodeString AResourceLarge = System::UnicodeString(), System::UnicodeString AText = System::UnicodeString(), int AIndex = 0xffffffff);
	
__published:
	__property ShortCutHint = {default=0};
private:
	void *__ITMSFNCRibbonTheme;	// ITMSFNCRibbonTheme 
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {D0F59233-D96D-4BFD-9EDF-BAD250489219}
	operator _di_ITMSFNCRibbonTheme()
	{
		_di_ITMSFNCRibbonTheme intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator ITMSFNCRibbonTheme*(void) { return (ITMSFNCRibbonTheme*)&__ITMSFNCRibbonTheme; }
	#endif
	
};


class PASCALIMPLEMENTATION TTMSFNCRibbonQAT : public TTMSFNCRibbonDefaultToolBar
{
	typedef TTMSFNCRibbonDefaultToolBar inherited;
	
private:
	Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* FBitmapContainer;
	HIDESBASE Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* __fastcall GetBitmapContainer();
	HIDESBASE void __fastcall SetBitmapContainer(Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* const Value);
	
protected:
	virtual void __fastcall Notification(System::Classes::TComponent* AComponent, System::Classes::TOperation Operation);
	virtual void __fastcall DoCanShowOptionsMenuItem(Fmx::Controls::TControl* AControl, bool &ACanShowItem);
	virtual void __fastcall UpdateControlAfterResize();
	
__published:
	__property Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* BitmapContainer = {read=GetBitmapContainer, write=SetBitmapContainer};
public:
	/* TTMSFNCCustomToolBar.Create */ inline __fastcall virtual TTMSFNCRibbonQAT(System::Classes::TComponent* AOwner) : TTMSFNCRibbonDefaultToolBar(AOwner) { }
	/* TTMSFNCCustomToolBar.Destroy */ inline __fastcall virtual ~TTMSFNCRibbonQAT() { }
	
private:
	void *__ITMSFNCBitmapContainer;	// Fmx::Tmsfncbitmapcontainer::ITMSFNCBitmapContainer 
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {ED26710D-395F-4971-8AC9-A31083BF2A3C}
	operator Fmx::Tmsfncbitmapcontainer::_di_ITMSFNCBitmapContainer()
	{
		Fmx::Tmsfncbitmapcontainer::_di_ITMSFNCBitmapContainer intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator Fmx::Tmsfncbitmapcontainer::ITMSFNCBitmapContainer*(void) { return (Fmx::Tmsfncbitmapcontainer::ITMSFNCBitmapContainer*)&__ITMSFNCBitmapContainer; }
	#endif
	
};


class PASCALIMPLEMENTATION TTMSFNCRibbonCaption : public Fmx::Tmsfnchtmltext::TTMSFNCHTMLText
{
	typedef Fmx::Tmsfnchtmltext::TTMSFNCHTMLText inherited;
	
protected:
	virtual System::UnicodeString __fastcall GetDocURL();
	
public:
	virtual void __fastcall SetTheme(TTMSFNCRibbonTheme ATheme, System::Uitypes::TAlphaColor ACustomThemeColor);
public:
	/* TTMSFNCHTMLText.Create */ inline __fastcall virtual TTMSFNCRibbonCaption(System::Classes::TComponent* AOwner) : Fmx::Tmsfnchtmltext::TTMSFNCHTMLText(AOwner) { }
	/* TTMSFNCHTMLText.Destroy */ inline __fastcall virtual ~TTMSFNCRibbonCaption() { }
	
private:
	void *__ITMSFNCRibbonTheme;	// ITMSFNCRibbonTheme 
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {D0F59233-D96D-4BFD-9EDF-BAD250489219}
	operator _di_ITMSFNCRibbonTheme()
	{
		_di_ITMSFNCRibbonTheme intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator ITMSFNCRibbonTheme*(void) { return (ITMSFNCRibbonTheme*)&__ITMSFNCRibbonTheme; }
	#endif
	
};


class PASCALIMPLEMENTATION TTMSFNCRibbonSystemMenu : public TTMSFNCRibbonDefaultToolBar
{
	typedef TTMSFNCRibbonDefaultToolBar inherited;
	
private:
	TTMSFNCRibbonSystemMenuToolBarButton* FCloseButton;
	TTMSFNCRibbonSystemMenuToolBarButton* FMinimizeButton;
	TTMSFNCRibbonSystemMenuToolBarButton* FMaximizeButton;
	TTMSFNCRibbonSystemMenuToolBarButton* FHelpButton;
	System::Classes::TNotifyEvent FOnMaximizeClicked;
	System::Classes::TNotifyEvent FOnHelpClicked;
	System::Classes::TNotifyEvent FOnMinimizeClicked;
	System::Classes::TNotifyEvent FOnCloseClicked;
	
protected:
	virtual float __fastcall GetRebuildDPIScale();
	virtual void __fastcall CreateButtons();
	virtual void __fastcall InitializeHelpButton(bool AVisible);
	virtual void __fastcall InitializeMinimizeButton(bool AVisible);
	virtual void __fastcall InitializeMaximizeButton(bool AVisible, System::Uitypes::TWindowState AWindowState);
	virtual void __fastcall InitializeCloseButton(bool AVisible);
	virtual void __fastcall SetName(const System::Classes::TComponentName NewName);
	void __fastcall DoHelpClicked(System::TObject* Sender);
	void __fastcall DoMaximizeClicked(System::TObject* Sender);
	void __fastcall DoMinimizeClicked(System::TObject* Sender);
	void __fastcall DoCloseClicked(System::TObject* Sender);
	virtual void __fastcall AssignEvents();
	virtual void __fastcall Initialize();
	virtual void __fastcall Rebuild();
	virtual void __fastcall InitializeButtons(bool AHelpButtonVisible, bool AMinimizeButtonVisible, bool AMaximizeButtonVisible, bool ACloseButtonVisible, System::Uitypes::TWindowState AWindowState);
	virtual void __fastcall ReadState(System::Classes::TReader* Reader);
	virtual void __fastcall Loaded();
	__property System::Classes::TNotifyEvent OnCloseClicked = {read=FOnCloseClicked, write=FOnCloseClicked};
	__property System::Classes::TNotifyEvent OnMinimizeClicked = {read=FOnMinimizeClicked, write=FOnMinimizeClicked};
	__property System::Classes::TNotifyEvent OnMaximizeClicked = {read=FOnMaximizeClicked, write=FOnMaximizeClicked};
	__property System::Classes::TNotifyEvent OnHelpClicked = {read=FOnHelpClicked, write=FOnHelpClicked};
	
public:
	__fastcall virtual ~TTMSFNCRibbonSystemMenu();
	__property TTMSFNCRibbonSystemMenuToolBarButton* HelpButton = {read=FHelpButton};
	__property TTMSFNCRibbonSystemMenuToolBarButton* CloseButton = {read=FCloseButton};
	__property TTMSFNCRibbonSystemMenuToolBarButton* MinimizeButton = {read=FMinimizeButton};
	__property TTMSFNCRibbonSystemMenuToolBarButton* MaximizeButton = {read=FMaximizeButton};
public:
	/* TTMSFNCCustomToolBar.Create */ inline __fastcall virtual TTMSFNCRibbonSystemMenu(System::Classes::TComponent* AOwner) : TTMSFNCRibbonDefaultToolBar(AOwner) { }
	
};


class PASCALIMPLEMENTATION TTMSFNCRibbonIcon : public TTMSFNCRibbonSystemMenuToolBarButton
{
	typedef TTMSFNCRibbonSystemMenuToolBarButton inherited;
	
public:
	/* TTMSFNCRibbonSystemMenuToolBarButton.Create */ inline __fastcall virtual TTMSFNCRibbonIcon(System::Classes::TComponent* AOwner) : TTMSFNCRibbonSystemMenuToolBarButton(AOwner) { }
	
public:
	/* TTMSFNCCustomToolBarButton.Destroy */ inline __fastcall virtual ~TTMSFNCRibbonIcon() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCRibbonToolBarWrapper : public Fmx::Tmsfnccustomcontrol::TTMSFNCCustomControl
{
	typedef Fmx::Tmsfnccustomcontrol::TTMSFNCCustomControl inherited;
	
private:
	Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* FBitmapContainer;
	TTMSFNCCustomRibbon* FRibbon;
	TTMSFNCRibbonBeforeApplyThemeEvent FOnBeforeApplyTheme;
	TTMSFNCRibbonAppliedThemeEvent FOnAppliedTheme;
	Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* __fastcall GetBitmapContainer();
	void __fastcall SetBitmapContainer(Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* const Value);
	
protected:
	virtual void __fastcall DoBeforeApplyTheme(System::TObject* AObject, bool &ABeforeApplyTheme);
	virtual void __fastcall DoAppliedTheme(System::TObject* AObject);
	virtual void __fastcall UpdateControlAfterResize();
	virtual void __fastcall ReadState(System::Classes::TReader* Reader);
	virtual void __fastcall Notification(System::Classes::TComponent* AComponent, System::Classes::TOperation Operation);
	virtual System::UnicodeString __fastcall GetDocURL();
	virtual TTMSFNCRibbonCaption* __fastcall FindCaption(Fmx::Controls::TControl* AControl);
	virtual TTMSFNCRibbonQAT* __fastcall FindQAT(Fmx::Controls::TControl* AControl);
	virtual TTMSFNCRibbonSystemMenu* __fastcall FindSystemMenu(Fmx::Controls::TControl* AControl);
	virtual TTMSFNCRibbonIcon* __fastcall FindIcon(Fmx::Controls::TControl* AControl);
	
public:
	virtual void __fastcall Draw(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	virtual void __fastcall SetTheme(TTMSFNCRibbonTheme ATheme, System::Uitypes::TAlphaColor ACustomThemeColor);
	
__published:
	__property Fill;
	__property Stroke;
	__property Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* BitmapContainer = {read=GetBitmapContainer, write=SetBitmapContainer};
	__property TTMSFNCRibbonAppliedThemeEvent OnAppliedTheme = {read=FOnAppliedTheme, write=FOnAppliedTheme};
	__property TTMSFNCRibbonBeforeApplyThemeEvent OnBeforeApplyTheme = {read=FOnBeforeApplyTheme, write=FOnBeforeApplyTheme};
public:
	/* TTMSFNCCustomControl.Create */ inline __fastcall virtual TTMSFNCRibbonToolBarWrapper(System::Classes::TComponent* AOwner) : Fmx::Tmsfnccustomcontrol::TTMSFNCCustomControl(AOwner) { }
	/* TTMSFNCCustomControl.Destroy */ inline __fastcall virtual ~TTMSFNCRibbonToolBarWrapper() { }
	
private:
	void *__ITMSFNCRibbonTheme;	// ITMSFNCRibbonTheme 
	void *__ITMSFNCBitmapContainer;	// Fmx::Tmsfncbitmapcontainer::ITMSFNCBitmapContainer 
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {D0F59233-D96D-4BFD-9EDF-BAD250489219}
	operator _di_ITMSFNCRibbonTheme()
	{
		_di_ITMSFNCRibbonTheme intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator ITMSFNCRibbonTheme*(void) { return (ITMSFNCRibbonTheme*)&__ITMSFNCRibbonTheme; }
	#endif
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {ED26710D-395F-4971-8AC9-A31083BF2A3C}
	operator Fmx::Tmsfncbitmapcontainer::_di_ITMSFNCBitmapContainer()
	{
		Fmx::Tmsfncbitmapcontainer::_di_ITMSFNCBitmapContainer intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator Fmx::Tmsfncbitmapcontainer::ITMSFNCBitmapContainer*(void) { return (Fmx::Tmsfncbitmapcontainer::ITMSFNCBitmapContainer*)&__ITMSFNCBitmapContainer; }
	#endif
	
};


enum DECLSPEC_DENUM TTMSFNCRibbonEdgeDetect : unsigned char { edNone, edLeft, edTop, edRight, edBottom, edTopLeft, edTopRight, edBottomLeft, edBottomRight };

enum DECLSPEC_DENUM TTMSFNCRibbonFormShortCutMode : unsigned char { scmNone, scmFirstLevel, scmSecondLevel };

class PASCALIMPLEMENTATION TTMSFNCRibbonForm : public Fmx::Forms::TForm
{
	typedef Fmx::Forms::TForm inherited;
	
private:
	float FSaveHeight;
	System::UnicodeString FShortCutString;
	TTMSFNCRibbonFormShortCutMode FShortCutLevel;
	Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* FBitmapContainer;
	System::Uitypes::TAlphaColor FThemeColor;
	float FEdgeX;
	float FEdgeY;
	TTMSFNCRibbonEdgeDetect FEdge;
	bool FEdgeHandling;
	void __fastcall SetThemeColor(const System::Uitypes::TAlphaColor Value);
	Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* __fastcall GetBitmapContainer();
	void __fastcall SetBitmapContainer(Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* const Value);
	
protected:
	virtual TTMSFNCRibbonEdgeDetect __fastcall DetectEdges(float AX, float AY);
	virtual Fmx::Tmsfnctypes::TTMSFNCBitmap* __fastcall GetIcon();
	virtual void __fastcall Notification(System::Classes::TComponent* AComponent, System::Classes::TOperation Operation);
	virtual void __fastcall SetEdgeCursor(TTMSFNCRibbonEdgeDetect AEdge);
	virtual void __fastcall RepaintForm();
	virtual void __fastcall Initialize();
	virtual void __fastcall InitializeThemeColor();
	virtual void __fastcall UpdateFormElements();
	virtual void __fastcall Recreate();
	virtual void __fastcall DoShow();
	virtual void __fastcall HandleShortCutHints(unsigned AKey);
	virtual void __fastcall HookWndProc();
	__property System::Uitypes::TAlphaColor ThemeColor = {read=FThemeColor, write=SetThemeColor, default=-16682041};
	__property Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* BitmapContainer = {read=GetBitmapContainer, write=SetBitmapContainer};
	
public:
	__fastcall virtual TTMSFNCRibbonForm(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCRibbonForm();
	__fastcall virtual TTMSFNCRibbonForm(System::Classes::TComponent* AOwner, NativeInt Dummy);
	virtual void __fastcall MouseDown(System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall MouseMove(System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall MouseUp(System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, float X, float Y, bool DoClick = true);
	virtual void __fastcall DoPaint(Fmx::Graphics::TCanvas* const Canvas, const System::Types::TRectF &ARect);
	virtual void __fastcall Resize();
	virtual void __fastcall SetBounds(int ALeft, int ATop, int AWidth, int AHeight)/* overload */;
	/* Hoisted overloads: */
	
public:
	inline void __fastcall  SetBounds(const System::Types::TRect &ARect){ Fmx::Forms::TCommonCustomForm::SetBounds(ARect); }
	
private:
	void *__ITMSFNCBitmapContainer;	// Fmx::Tmsfncbitmapcontainer::ITMSFNCBitmapContainer 
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {ED26710D-395F-4971-8AC9-A31083BF2A3C}
	operator Fmx::Tmsfncbitmapcontainer::_di_ITMSFNCBitmapContainer()
	{
		Fmx::Tmsfncbitmapcontainer::_di_ITMSFNCBitmapContainer intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator Fmx::Tmsfncbitmapcontainer::ITMSFNCBitmapContainer*(void) { return (Fmx::Tmsfncbitmapcontainer::ITMSFNCBitmapContainer*)&__ITMSFNCBitmapContainer; }
	#endif
	
};


enum DECLSPEC_DENUM TTMSFNCRibbonMode : unsigned char { rmToolBarOnly, rmToolBarAndPageControl, rmPageControlOnly };

class PASCALIMPLEMENTATION TTMSFNCRibbonGroup : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	NativeInt FTag;
	System::UnicodeString FDataString;
	System::TObject* FDataObject;
	NativeInt FDataInteger;
	TTMSFNCCustomRibbon* FRibbon;
	System::UnicodeString FText;
	bool FDataBoolean;
	bool FWordWrapping;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextTrimming FTrimming;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign FTextAlign;
	System::Uitypes::TAlphaColor FTextColor;
	bool FVisible;
	bool FUseDefaultAppearance;
	System::Uitypes::TAlphaColor FColor;
	System::Uitypes::TAlphaColor FBorderColor;
	void *FDataPointer;
	int FStartPageIndex;
	int FEndPageIndex;
	void __fastcall SetTrimming(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextTrimming Value);
	void __fastcall SetWordWrapping(const bool Value);
	void __fastcall SetTextAlign(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign Value);
	void __fastcall SetTextColor(const System::Uitypes::TAlphaColor Value);
	Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* __fastcall GetBitmapContainer();
	void __fastcall SetVisible(const bool Value);
	void __fastcall SetUseDefaultAppearance(const bool Value);
	void __fastcall SetColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetBorderColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetEndPageIndex(const int Value);
	void __fastcall SetStartPageIndex(const int Value);
	
protected:
	virtual void __fastcall SetText(const System::UnicodeString Value);
	void __fastcall UpdateGroup();
	HIDESBASE void __fastcall Changed(System::TObject* Sender);
	
public:
	__fastcall virtual TTMSFNCRibbonGroup(System::Classes::TCollection* Collection);
	__fastcall virtual ~TTMSFNCRibbonGroup();
	TTMSFNCCustomRibbon* __fastcall Ribbon();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__property void * DataPointer = {read=FDataPointer, write=FDataPointer};
	__property bool DataBoolean = {read=FDataBoolean, write=FDataBoolean, nodefault};
	__property System::TObject* DataObject = {read=FDataObject, write=FDataObject};
	__property System::UnicodeString DataString = {read=FDataString, write=FDataString};
	__property NativeInt DataInteger = {read=FDataInteger, write=FDataInteger};
	__property Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* BitmapContainer = {read=GetBitmapContainer};
	
__published:
	__property System::UnicodeString Text = {read=FText, write=SetText};
	__property bool WordWrapping = {read=FWordWrapping, write=SetWordWrapping, default=0};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextTrimming Trimming = {read=FTrimming, write=SetTrimming, default=1};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign TextAlign = {read=FTextAlign, write=SetTextAlign, default=0};
	__property System::Uitypes::TAlphaColor TextColor = {read=FTextColor, write=SetTextColor, default=-16777216};
	__property System::Uitypes::TAlphaColor Color = {read=FColor, write=SetColor, default=-1};
	__property System::Uitypes::TAlphaColor BorderColor = {read=FBorderColor, write=SetBorderColor, default=-8355712};
	__property bool Visible = {read=FVisible, write=SetVisible, default=1};
	__property bool UseDefaultAppearance = {read=FUseDefaultAppearance, write=SetUseDefaultAppearance, default=1};
	__property NativeInt Tag = {read=FTag, write=FTag, default=0};
	__property int StartPageIndex = {read=FStartPageIndex, write=SetStartPageIndex, default=0};
	__property int EndPageIndex = {read=FEndPageIndex, write=SetEndPageIndex, default=1};
};


class PASCALIMPLEMENTATION TTMSFNCRibbonGroups : public Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCRibbonGroup*>
{
	typedef Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCRibbonGroup*> inherited;
	
public:
	TTMSFNCRibbonGroup* operator[](int Index) { return this->Tabs[Index]; }
	
private:
	TTMSFNCCustomRibbon* FRibbon;
	TTMSFNCRibbonGroup* __fastcall GetTab(int Index);
	void __fastcall SetTab(int Index, TTMSFNCRibbonGroup* const Value);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall GetTabClass();
	
public:
	TTMSFNCCustomRibbon* __fastcall Ribbon();
	__fastcall virtual TTMSFNCRibbonGroups(TTMSFNCCustomRibbon* ARibbon);
	HIDESBASE TTMSFNCRibbonGroup* __fastcall Add();
	HIDESBASE TTMSFNCRibbonGroup* __fastcall Insert(int Index);
	HIDESBASE virtual void __fastcall Clear();
	__property TTMSFNCRibbonGroup* Tabs[int Index] = {read=GetTab, write=SetTab/*, default*/};
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCRibbonGroups() { }
	
};


struct DECLSPEC_DRECORD TTMSFNCRibbonDisplayGroup
{
public:
	TTMSFNCRibbonGroup* Group;
	System::Types::TRectF RectToolBar;
	System::Types::TRectF RectPager;
};


class PASCALIMPLEMENTATION TTMSFNCRibbonDisplayGroupList : public System::Generics::Collections::TList__1<TTMSFNCRibbonDisplayGroup>
{
	typedef System::Generics::Collections::TList__1<TTMSFNCRibbonDisplayGroup> inherited;
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCRibbon_TTMSFNCRibbonDisplayGroup>.Create */ inline __fastcall TTMSFNCRibbonDisplayGroupList()/* overload */ : System::Generics::Collections::TList__1<TTMSFNCRibbonDisplayGroup>() { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCRibbon_TTMSFNCRibbonDisplayGroup>.Create */ inline __fastcall TTMSFNCRibbonDisplayGroupList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCRibbonDisplayGroup> > AComparer)/* overload */ : System::Generics::Collections::TList__1<TTMSFNCRibbonDisplayGroup>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCRibbon_TTMSFNCRibbonDisplayGroup>.Create */ inline __fastcall TTMSFNCRibbonDisplayGroupList(System::Generics::Collections::TEnumerable__1<TTMSFNCRibbonDisplayGroup>* const Collection)/* overload */ : System::Generics::Collections::TList__1<TTMSFNCRibbonDisplayGroup>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCRibbon_TTMSFNCRibbonDisplayGroup>.Create */ inline __fastcall TTMSFNCRibbonDisplayGroupList(const TTMSFNCRibbonDisplayGroup *Values, const int Values_High)/* overload */ : System::Generics::Collections::TList__1<TTMSFNCRibbonDisplayGroup>(Values, Values_High) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCRibbon_TTMSFNCRibbonDisplayGroup>.Destroy */ inline __fastcall virtual ~TTMSFNCRibbonDisplayGroupList() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCRibbonGroupAppearance : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	TTMSFNCCustomRibbon* FRibbon;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FFont;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign FTextAlign;
	bool FWordWrapping;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FBorderStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextTrimming FTrimming;
	void __fastcall SetFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetTextAlign(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign Value);
	void __fastcall SetBorderStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetTrimming(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextTrimming Value);
	void __fastcall SetWordWrapping(const bool Value);
	
protected:
	void __fastcall UpdateGroups();
	void __fastcall FillChanged(System::TObject* Sender);
	void __fastcall FontChanged(System::TObject* Sender);
	void __fastcall StrokeChanged(System::TObject* Sender);
	
public:
	__fastcall TTMSFNCRibbonGroupAppearance(TTMSFNCCustomRibbon* ARibbon);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual ~TTMSFNCRibbonGroupAppearance();
	
__published:
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* Font = {read=FFont, write=SetFont};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* Fill = {read=FFill, write=SetFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* Stroke = {read=FStroke, write=SetStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* BorderStroke = {read=FBorderStroke, write=SetBorderStroke};
	__property bool WordWrapping = {read=FWordWrapping, write=SetWordWrapping, default=0};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextTrimming Trimming = {read=FTrimming, write=SetTrimming, default=1};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign TextAlign = {read=FTextAlign, write=SetTextAlign, default=0};
};


typedef void __fastcall (__closure *TTMSFNCRibbonBeforeDrawGroupBackgroundEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, TTMSFNCRibbonGroup* AGroup, const System::Types::TRectF &ARect, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCRibbonBeforeDrawGroupTextEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, TTMSFNCRibbonGroup* AGroup, const System::Types::TRectF &ARect, System::UnicodeString AText, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCRibbonAfterDrawGroupBackgroundEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, TTMSFNCRibbonGroup* AGroup, const System::Types::TRectF &ARect);

typedef void __fastcall (__closure *TTMSFNCRibbonAfterDrawGroupTextEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, TTMSFNCRibbonGroup* AGroup, const System::Types::TRectF &ARect, System::UnicodeString AText);

enum DECLSPEC_DENUM TTMSFNCRibbonQATMode : unsigned char { rqmToolBar, rqmBelowRibbon };

class PASCALIMPLEMENTATION TTMSFNCCustomRibbon : public Fmx::Tmsfnccustomcontrol::TTMSFNCCustomControl
{
	typedef Fmx::Tmsfnccustomcontrol::TTMSFNCCustomControl inherited;
	
private:
	float FSaveHeight;
	float FSaveToolBarWrapperHeight;
	float FSavePageControlHeight;
	int FUpdateCount;
	float FMinLeftGroup;
	float FMaxRightGroup;
	System::Types::TPointF FInitialLocation;
	TTMSFNCRibbonDisplayGroupList* FDisplayGroupList;
	float FOldHeight;
	bool FInitialize;
	Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* FBitmapContainer;
	System::Uitypes::TAlphaColor FCustomThemeColor;
	bool FMouseDown;
	bool FDblClicked;
	TTMSFNCRibbonQAT* FQAT;
	TTMSFNCRibbonCaption* FCaption;
	TTMSFNCRibbonIcon* FIcon;
	TTMSFNCRibbonSystemMenu* FSystemMenu;
	TTMSFNCRibbonToolBarWrapper* FToolBarWrapper;
	TTMSFNCRibbonBottomContainer* FBottomContainer;
	TTMSFNCRibbonPageControl* FPageControl;
	TTMSFNCRibbonMode FMode;
	TTMSFNCRibbonTheme FTheme;
	TTMSFNCRibbonBeforeApplyThemeEvent FOnBeforeApplyTheme;
	TTMSFNCRibbonAppliedThemeEvent FOnAppliedTheme;
	TTMSFNCRibbonGroups* FGroups;
	TTMSFNCRibbonGroupAppearance* FGroupAppearance;
	TTMSFNCRibbonBeforeDrawGroupTextEvent FOnBeforeDrawGroupText;
	TTMSFNCRibbonAfterDrawGroupBackgroundEvent FOnAfterDrawGroupBackground;
	TTMSFNCRibbonAfterDrawGroupTextEvent FOnAfterDrawGroupText;
	TTMSFNCRibbonBeforeDrawGroupBackgroundEvent FOnBeforeDrawGroupBackground;
	TTMSFNCRibbonQATMode FQATMode;
	void __fastcall SetCustomThemeColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetTheme(const TTMSFNCRibbonTheme Value)/* overload */;
	Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* __fastcall GetBitmapContainer();
	void __fastcall SetBitmapContainer(Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* const Value);
	void __fastcall SetMode(const TTMSFNCRibbonMode Value);
	void __fastcall SetGroups(TTMSFNCRibbonGroups* const Value);
	void __fastcall SetGroupAppearance(TTMSFNCRibbonGroupAppearance* const Value);
	void __fastcall SetQATMode(const TTMSFNCRibbonQATMode Value);
	
protected:
	virtual System::UnicodeString __fastcall GetDocURL();
	virtual System::UnicodeString __fastcall GetVersion();
	virtual TTMSFNCRibbonForm* __fastcall GetRibbonForm();
	virtual float __fastcall GetRebuildDPIScale();
	virtual void __fastcall ChangeDPIScale(int M, int D);
	virtual void __fastcall DrawGroups(System::TObject* ACaller, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics);
	virtual void __fastcall DoBeforeApplyTheme(System::TObject* AObject, bool &ABeforeApplyTheme);
	virtual void __fastcall DoAppliedTheme(System::TObject* AObject);
	virtual void __fastcall Initialize();
	virtual void __fastcall CreateToolBarWrapper();
	virtual void __fastcall CreateQAT();
	virtual void __fastcall CreateCaption();
	virtual void __fastcall CreateBottomContainer();
	virtual void __fastcall CreateIcon();
	virtual void __fastcall CreateSystemMenu();
	virtual void __fastcall CreatePageControl();
	virtual void __fastcall SetName(const System::Classes::TComponentName NewName);
	virtual void __fastcall ReadState(System::Classes::TReader* Reader);
	virtual void __fastcall Notification(System::Classes::TComponent* AComponent, System::Classes::TOperation Operation);
	virtual void __fastcall ApplyBufferedPainting();
	virtual void __fastcall AssignEvents();
	virtual void __fastcall UpdateFormElements();
	virtual void __fastcall DoToolBarCloseClicked(System::TObject* Sender);
	virtual void __fastcall DoToolBarIconMouseDown(System::TObject* Sender);
	virtual void __fastcall DoToolBarMinimizeClicked(System::TObject* Sender);
	virtual void __fastcall DoToolBarMaximizeClicked(System::TObject* Sender);
	virtual void __fastcall DoToolBarHelpClicked(System::TObject* Sender);
	virtual void __fastcall DoToolBarMouseDown(System::TObject* Sender);
	virtual void __fastcall DoToolBarInsertControl(System::TObject* Sender);
	virtual void __fastcall DoPageControlInsertPage(System::TObject* Sender);
	virtual void __fastcall DoToolBarMouseMove(System::TObject* Sender);
	virtual void __fastcall DoToolBarMouseUp(System::TObject* Sender);
	virtual void __fastcall DoToolBarDblClick(System::TObject* Sender);
	virtual void __fastcall RegisterRuntimeClasses();
	virtual void __fastcall ApplyStyle();
	virtual void __fastcall RepaintForm();
	virtual void __fastcall UpdateGroups();
	virtual void __fastcall UpdateToolbars();
	virtual void __fastcall ResetToDefaultStyle();
	virtual void __fastcall ParentChanged();
	virtual void __fastcall DoBeforeDrawGroupBackground(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, TTMSFNCRibbonGroup* AGroup, const System::Types::TRectF &ARect, bool &ADefaultDraw);
	virtual void __fastcall DoBeforeDrawGroupText(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, TTMSFNCRibbonGroup* AGroup, const System::Types::TRectF &ARect, System::UnicodeString AText, bool &ADefaultDraw);
	virtual void __fastcall DoAfterDrawGroupBackground(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, TTMSFNCRibbonGroup* AGroup, const System::Types::TRectF &ARect);
	virtual void __fastcall DoAfterDrawGroupText(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, TTMSFNCRibbonGroup* AGroup, const System::Types::TRectF &ARect, System::UnicodeString AText);
	__property Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* BitmapContainer = {read=GetBitmapContainer, write=SetBitmapContainer};
	__property System::Uitypes::TAlphaColor CustomThemeColor = {read=FCustomThemeColor, write=SetCustomThemeColor, default=-16682041};
	__property TTMSFNCRibbonGroups* Groups = {read=FGroups, write=SetGroups};
	__property TTMSFNCRibbonGroupAppearance* GroupAppearance = {read=FGroupAppearance, write=SetGroupAppearance};
	__property TTMSFNCRibbonQATMode QATMode = {read=FQATMode, write=SetQATMode, default=0};
	__property TTMSFNCRibbonTheme Theme = {read=FTheme, write=SetTheme, default=0};
	__property TTMSFNCRibbonMode Mode = {read=FMode, write=SetMode, default=1};
	__property TTMSFNCRibbonAppliedThemeEvent OnAppliedTheme = {read=FOnAppliedTheme, write=FOnAppliedTheme};
	__property TTMSFNCRibbonBeforeApplyThemeEvent OnBeforeApplyTheme = {read=FOnBeforeApplyTheme, write=FOnBeforeApplyTheme};
	__property TTMSFNCRibbonBeforeDrawGroupBackgroundEvent OnBeforeDrawGroupBackground = {read=FOnBeforeDrawGroupBackground, write=FOnBeforeDrawGroupBackground};
	__property TTMSFNCRibbonBeforeDrawGroupTextEvent OnBeforeDrawGroupText = {read=FOnBeforeDrawGroupText, write=FOnBeforeDrawGroupText};
	__property TTMSFNCRibbonAfterDrawGroupBackgroundEvent OnAfterDrawGroupBackground = {read=FOnAfterDrawGroupBackground, write=FOnAfterDrawGroupBackground};
	__property TTMSFNCRibbonAfterDrawGroupTextEvent OnAfterDrawGroupText = {read=FOnAfterDrawGroupText, write=FOnAfterDrawGroupText};
	__property System::UnicodeString Version = {read=GetVersion};
	
public:
	__fastcall virtual TTMSFNCCustomRibbon(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCCustomRibbon();
	virtual void __fastcall SetTheme(TTMSFNCRibbonTheme ATheme, System::Uitypes::TAlphaColor ACustomThemeColor)/* overload */;
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	virtual void __fastcall Loaded();
	__property TTMSFNCRibbonQAT* QAT = {read=FQAT};
	__property TTMSFNCRibbonSystemMenu* SystemMenu = {read=FSystemMenu};
	__property TTMSFNCRibbonToolBarWrapper* ToolBarWrapper = {read=FToolBarWrapper};
	__property TTMSFNCRibbonCaption* Caption = {read=FCaption};
	__property TTMSFNCRibbonPageControl* PageControl = {read=FPageControl};
	virtual void __fastcall SetBounds(float X, float Y, float AWidth, float AHeight);
	virtual void __fastcall InitSample();
	virtual void __fastcall Rebuild();
	void __fastcall RebuildUsingName(System::UnicodeString AName);
	virtual void __fastcall BeginUpdate();
	virtual void __fastcall EndUpdate();
	virtual void __fastcall ApplyTheme();
private:
	void *__ITMSFNCRibbonTheme;	// ITMSFNCRibbonTheme 
	void *__ITMSFNCBitmapContainer;	// Fmx::Tmsfncbitmapcontainer::ITMSFNCBitmapContainer 
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {D0F59233-D96D-4BFD-9EDF-BAD250489219}
	operator _di_ITMSFNCRibbonTheme()
	{
		_di_ITMSFNCRibbonTheme intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator ITMSFNCRibbonTheme*(void) { return (ITMSFNCRibbonTheme*)&__ITMSFNCRibbonTheme; }
	#endif
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {ED26710D-395F-4971-8AC9-A31083BF2A3C}
	operator Fmx::Tmsfncbitmapcontainer::_di_ITMSFNCBitmapContainer()
	{
		Fmx::Tmsfncbitmapcontainer::_di_ITMSFNCBitmapContainer intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator Fmx::Tmsfncbitmapcontainer::ITMSFNCBitmapContainer*(void) { return (Fmx::Tmsfncbitmapcontainer::ITMSFNCBitmapContainer*)&__ITMSFNCBitmapContainer; }
	#endif
	
};


class PASCALIMPLEMENTATION TTMSFNCRibbon : public TTMSFNCCustomRibbon
{
	typedef TTMSFNCCustomRibbon inherited;
	
__published:
	__property BitmapContainer;
	__property CustomThemeColor = {default=-16682041};
	__property QATMode = {default=0};
	__property GroupAppearance;
	__property Groups;
	__property Theme = {default=0};
	__property Mode = {default=1};
	__property OnAppliedTheme;
	__property OnBeforeApplyTheme;
	__property OnBeforeDrawGroupBackground;
	__property OnBeforeDrawGroupText;
	__property OnAfterDrawGroupBackground;
	__property OnAfterDrawGroupText;
	__property Version = {default=0};
public:
	/* TTMSFNCCustomRibbon.Create */ inline __fastcall virtual TTMSFNCRibbon(System::Classes::TComponent* AOwner) : TTMSFNCCustomRibbon(AOwner) { }
	/* TTMSFNCCustomRibbon.Destroy */ inline __fastcall virtual ~TTMSFNCRibbon() { }
	
};


//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x0);
static constexpr System::Int8 BLD_VER = System::Int8(0x7);
#define TTMSFNCRibbonDocURL u"https://download.tmssoftware.com/doc/tmsfncuipack/componen"\
	u"ts/ttmsfncribbon"
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCRibbonMoreCommands;
#define Fmx_Tmsfncribbon_sTMSFNCRibbonMoreCommands System::LoadResourceString(&Fmx::Tmsfncribbon::_sTMSFNCRibbonMoreCommands)
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCRibbonShowBelowTheRibbon;
#define Fmx_Tmsfncribbon_sTMSFNCRibbonShowBelowTheRibbon System::LoadResourceString(&Fmx::Tmsfncribbon::_sTMSFNCRibbonShowBelowTheRibbon)
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCRibbonShowAboveTheRibbon;
#define Fmx_Tmsfncribbon_sTMSFNCRibbonShowAboveTheRibbon System::LoadResourceString(&Fmx::Tmsfncribbon::_sTMSFNCRibbonShowAboveTheRibbon)
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCRibbonContextMenuMinimize;
#define Fmx_Tmsfncribbon_sTMSFNCRibbonContextMenuMinimize System::LoadResourceString(&Fmx::Tmsfncribbon::_sTMSFNCRibbonContextMenuMinimize)
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCRibbonContextMenuMaximize;
#define Fmx_Tmsfncribbon_sTMSFNCRibbonContextMenuMaximize System::LoadResourceString(&Fmx::Tmsfncribbon::_sTMSFNCRibbonContextMenuMaximize)
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCRibbonContextMenuAlwaysOnTop;
#define Fmx_Tmsfncribbon_sTMSFNCRibbonContextMenuAlwaysOnTop System::LoadResourceString(&Fmx::Tmsfncribbon::_sTMSFNCRibbonContextMenuAlwaysOnTop)
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCRibbonContextMenuClose;
#define Fmx_Tmsfncribbon_sTMSFNCRibbonContextMenuClose System::LoadResourceString(&Fmx::Tmsfncribbon::_sTMSFNCRibbonContextMenuClose)
static constexpr unsigned TMSFNCRibbonThemeColorCloseHover = unsigned(0xffe81123);
static constexpr unsigned TMSFNCRibbonThemeColorCloseDown = unsigned(0xfff1707a);
static constexpr unsigned TMSFNCRibbonThemeColorActiveFontColor = unsigned(0xfff1f1f1);
static constexpr unsigned TMSFNCRibbonThemeColorFontColor = unsigned(0xfff1f1f1);
static constexpr unsigned TMSFNCRibbonThemeColorTabColor = unsigned(0xfff1f1f1);
static constexpr unsigned TMSFNCRibbonThemeColorTabFontColor = unsigned(0xff444444);
static constexpr unsigned TMSFNCRibbonThemeColorTabHoverColor = unsigned(0xffc5c5c5);
static constexpr unsigned TMSFNCRibbonThemeColorTabDownColor = unsigned(0xffaeaeae);
static constexpr unsigned TMSFNCRibbonThemeColorLightBlue = unsigned(0xff0173c7);
static constexpr unsigned TMSFNCRibbonThemeColorLightBlueHover = unsigned(0xff2a8ad4);
static constexpr unsigned TMSFNCRibbonThemeColorLightBlueDown = unsigned(0xff015c9f);
static constexpr unsigned TMSFNCRibbonThemeColorBlue = unsigned(0xff2a5799);
static constexpr unsigned TMSFNCRibbonThemeColorBlueHover = unsigned(0xff3e6db6);
static constexpr unsigned TMSFNCRibbonThemeColorBlueDown = unsigned(0xff124078);
static constexpr unsigned TMSFNCRibbonThemeColorCrimson = unsigned(0xffa4373a);
static constexpr unsigned TMSFNCRibbonThemeColorCrimsonHover = unsigned(0xffc75659);
static constexpr unsigned TMSFNCRibbonThemeColorCrimsonDown = unsigned(0xff832c2e);
static constexpr unsigned TMSFNCRibbonThemeColorSeaGreen = unsigned(0xff077568);
static constexpr unsigned TMSFNCRibbonThemeColorSeaGreenHover = unsigned(0xff3e948a);
static constexpr unsigned TMSFNCRibbonThemeColorSeaGreenDown = unsigned(0xff065e53);
static constexpr unsigned TMSFNCRibbonThemeColorPurple = unsigned(0xff80397a);
static constexpr unsigned TMSFNCRibbonThemeColorPurpleHover = unsigned(0xffa3569e);
static constexpr unsigned TMSFNCRibbonThemeColorPurpleDown = unsigned(0xff662e62);
static constexpr unsigned TMSFNCRibbonThemeColorGreen = unsigned(0xff207345);
static constexpr unsigned TMSFNCRibbonThemeColorGreenHover = unsigned(0xff439467);
static constexpr unsigned TMSFNCRibbonThemeColorGreenDown = unsigned(0xff1b5d39);
static constexpr unsigned TMSFNCRibbonThemeColorOrange = unsigned(0xffb7472a);
static constexpr unsigned TMSFNCRibbonThemeColorOrangeHover = unsigned(0xffdc5939);
static constexpr unsigned TMSFNCRibbonThemeColorOrangeDown = unsigned(0xff923922);
static constexpr unsigned TMSFNCRibbonThemeColorDarkGray = unsigned(0xff444444);
static constexpr unsigned TMSFNCRibbonThemeColorDarkGrayHover = unsigned(0xff575757);
static constexpr unsigned TMSFNCRibbonThemeColorDarkGrayDown = unsigned(0xff303030);
static constexpr unsigned TMSFNCRibbonThemeColorDarkGrayActiveFontColor = unsigned(0xff444444);
static constexpr unsigned TMSFNCRibbonThemeColorDarkGrayFontColor = unsigned(0xffefefef);
static constexpr unsigned TMSFNCRibbonThemeColorDarkGrayTabColor = unsigned(0xffb2b2b2);
static constexpr unsigned TMSFNCRibbonThemeColorDarkGrayTabHoverColor = unsigned(0xff969696);
static constexpr unsigned TMSFNCRibbonThemeColorDarkGrayTabDownColor = unsigned(0xff808080);
static constexpr unsigned TMSFNCRibbonThemeColorDarkGrayTabFontColor = unsigned(0xff000000);
static constexpr unsigned TMSFNCRibbonThemeColorBlack = unsigned(0xff0a0a0a);
static constexpr unsigned TMSFNCRibbonThemeColorBlackHover = unsigned(0xff444444);
static constexpr unsigned TMSFNCRibbonThemeColorBlackDown = unsigned(0xff303030);
static constexpr unsigned TMSFNCRibbonThemeColorBlackActiveFontColor = unsigned(0xffffffff);
static constexpr unsigned TMSFNCRibbonThemeColorBlackFontColor = unsigned(0xffb4b4b4);
static constexpr unsigned TMSFNCRibbonThemeColorBlackTabColor = unsigned(0xff363636);
static constexpr unsigned TMSFNCRibbonThemeColorBlackTabHoverColor = unsigned(0xff505050);
static constexpr unsigned TMSFNCRibbonThemeColorBlackTabDownColor = unsigned(0xff6a6a6a);
static constexpr unsigned TMSFNCRibbonThemeColorBlackTabFontColor = unsigned(0xffffffff);
static constexpr unsigned TMSFNCRibbonThemeColorWhite = unsigned(0xffffffff);
static constexpr unsigned TMSFNCRibbonThemeColorWhiteHover = unsigned(0xffcde6f7);
static constexpr unsigned TMSFNCRibbonThemeColorWhiteDown = unsigned(0xff92c0e0);
static constexpr unsigned TMSFNCRibbonThemeColorWhiteFontColor = unsigned(0xff444444);
static constexpr unsigned TMSFNCRibbonThemeColorWhiteTabColor = unsigned(0xffffffff);
static constexpr unsigned TMSFNCRibbonThemeColorWhiteTabHoverColor = unsigned(0xffcde6f7);
static constexpr unsigned TMSFNCRibbonThemeColorWhiteTabDownColor = unsigned(0xff92c0e0);
static constexpr unsigned TMSFNCRibbonThemeColorWhiteTabFontColor = unsigned(0xff444444);
static constexpr unsigned TMSFNCRibbonThemeColorBackgroundColor = unsigned(0xffffffff);
static constexpr unsigned TMSFNCRibbonThemeColorBackgroundDarkGray = unsigned(0xff666666);
static constexpr unsigned TMSFNCRibbonThemeColorBackgroundBlack = unsigned(0xff262626);
static constexpr unsigned TMSFNCRibbonThemeColorBackgroundWhite = unsigned(0xffffffff);
static constexpr unsigned TMSFNCRibbonThemeColorHintDark = unsigned(0xff525252);
static constexpr unsigned TMSFNCRibbonThemeColorHintFontColorDark = unsigned(0xffffffff);
static constexpr unsigned TMSFNCRibbonThemeColorHintLight = unsigned(0xffffd633);
static constexpr unsigned TMSFNCRibbonThemeColorHintFontColorLight = unsigned(0xff000000);
static constexpr System::Int8 rtbtDefault = System::Int8(0x0);
static constexpr System::Int8 rtbtHelp = System::Int8(0x1);
static constexpr System::Int8 rtbtCloseButton = System::Int8(0x2);
static constexpr System::Int8 rtbtMinimize = System::Int8(0x3);
static constexpr System::Int8 rtbtMaximize = System::Int8(0x4);
static constexpr System::Int8 rtbtIcon = System::Int8(0x5);
extern DELPHI_PACKAGE void __fastcall GetThemeColorsSimple(TTMSFNCRibbonTheme ATheme, System::Uitypes::TAlphaColor ACustomThemeColor, System::Uitypes::TAlphaColor &AThemeColor, System::Uitypes::TAlphaColor &AThemeActiveFontColor, System::Uitypes::TAlphaColor &AThemeFontColor, System::Uitypes::TAlphaColor &AThemeHoverColor, System::Uitypes::TAlphaColor &AThemeDownColor);
extern DELPHI_PACKAGE void __fastcall GetThemeColors(TTMSFNCRibbonTheme ATheme, System::Uitypes::TAlphaColor ACustomThemeColor, System::Uitypes::TAlphaColor &AThemeColor, System::Uitypes::TAlphaColor &AThemeActiveFontColor, System::Uitypes::TAlphaColor &AThemeFontColor, System::Uitypes::TAlphaColor &AThemeHoverColor, System::Uitypes::TAlphaColor &AThemeDownColor, System::Uitypes::TAlphaColor &AThemeTabColor, System::Uitypes::TAlphaColor &AThemeTabHoverColor, System::Uitypes::TAlphaColor &AThemeTabDownColor, System::Uitypes::TAlphaColor &AThemeTabFontColor);
extern DELPHI_PACKAGE System::Uitypes::TAlphaColor __fastcall GetThemeColor(TTMSFNCRibbonTheme ATheme, System::Uitypes::TAlphaColor ACustomThemeColor);
extern DELPHI_PACKAGE System::Uitypes::TAlphaColor __fastcall GetThemeHoverColor(TTMSFNCRibbonTheme ATheme, System::Uitypes::TAlphaColor ACustomThemeColor);
extern DELPHI_PACKAGE System::Uitypes::TAlphaColor __fastcall GetThemeDownColor(TTMSFNCRibbonTheme ATheme, System::Uitypes::TAlphaColor ACustomThemeColor);
extern DELPHI_PACKAGE System::Uitypes::TAlphaColor __fastcall GetThemeFontColor(TTMSFNCRibbonTheme ATheme, System::Uitypes::TAlphaColor ACustomThemeColor);
extern DELPHI_PACKAGE System::Uitypes::TAlphaColor __fastcall GetThemeActiveFontColor(TTMSFNCRibbonTheme ATheme, System::Uitypes::TAlphaColor ACustomThemeColor);
extern DELPHI_PACKAGE System::Uitypes::TAlphaColor __fastcall GetThemeTabColor(TTMSFNCRibbonTheme ATheme, System::Uitypes::TAlphaColor ACustomThemeColor);
extern DELPHI_PACKAGE System::Uitypes::TAlphaColor __fastcall GetThemeTabHoverColor(TTMSFNCRibbonTheme ATheme, System::Uitypes::TAlphaColor ACustomThemeColor);
extern DELPHI_PACKAGE System::Uitypes::TAlphaColor __fastcall GetThemeTabFontColor(TTMSFNCRibbonTheme ATheme, System::Uitypes::TAlphaColor ACustomThemeColor);
extern DELPHI_PACKAGE System::Uitypes::TAlphaColor __fastcall GetThemeTabDownColor(TTMSFNCRibbonTheme ATheme, System::Uitypes::TAlphaColor ACustomThemeColor);
}	/* namespace Tmsfncribbon */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCRIBBON)
using namespace Fmx::Tmsfncribbon;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncribbonHPP
