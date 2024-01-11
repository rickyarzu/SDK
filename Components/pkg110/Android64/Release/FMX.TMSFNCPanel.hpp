// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCPanel.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncpanelHPP
#define Fmx_TmsfncpanelHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <FMX.TMSFNCCustomControl.hpp>
#include <System.Types.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.Controls.hpp>
#include <FMX.TMSFNCBitmapContainer.hpp>
#include <FMX.TMSFNCGraphics.hpp>
#include <FMX.TMSFNCPopup.hpp>
#include <FMX.TMSFNCGraphicsTypes.hpp>
#include <System.Generics.Collections.hpp>
#include <System.UITypes.hpp>
#include <System.TypInfo.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>
#include <FMX.Types.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncpanel
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCPanelElement;
class DELPHICLASS TTMSFNCPanelHeader;
class DELPHICLASS TTMSFNCPanelFooter;
struct TTMSFNCPanelDownButton;
class DELPHICLASS TTMSFNCPanelSection;
class DELPHICLASS TTMSFNCPanelSections;
class DELPHICLASS TTMSFNCPanelSectionsAppearance;
class DELPHICLASS TTMSFNCCustomPanel;
class DELPHICLASS TTMSFNCPanel;
//-- type declarations -------------------------------------------------------
enum DECLSPEC_DENUM TTMSFNCPanelButton : unsigned char { pbCompact, pbClose, pbExpander, pbDropDown };

typedef System::Set<TTMSFNCPanelButton, TTMSFNCPanelButton::pbCompact, TTMSFNCPanelButton::pbDropDown> TTMSFNCPanelButtons;

enum DECLSPEC_DENUM TTMSFNCPanelCloseAction : unsigned char { pcaNone, pcaFree, pcaHide };

enum DECLSPEC_DENUM TTMSFNCPanelDropDownAction : unsigned char { pddaNone, pddaPopup };

enum DECLSPEC_DENUM TTMSFNCPanelExpandAction : unsigned char { peaNone, peaExpand };

enum DECLSPEC_DENUM TTMSFNCPanelCompactAction : unsigned char { pcNone, pcCompact };

class PASCALIMPLEMENTATION TTMSFNCPanelElement : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	System::Classes::TNotifyEvent FOnChanged;
	System::UnicodeString FText;
	float FSize;
	bool FWordWrapping;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign FVerticalTextAlign;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign FHorizontalTextAlign;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextTrimming FTrimming;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FFont;
	bool FShowButtons;
	TTMSFNCPanelButtons FButtons;
	bool FVisible;
	float FButtonSpacing;
	float FButtonSize;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FStroke;
	bool FStretchText;
	Fmx::Controls::TControl* FDropDownControl;
	float FDropDownHeight;
	float FDropDownWidth;
	void __fastcall SetText(const System::UnicodeString Value);
	bool __fastcall IsSizeStored();
	void __fastcall SetSize(const float Value);
	void __fastcall SetHorizontalTextAlign(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign Value);
	void __fastcall SetVerticalTextAlign(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign Value);
	void __fastcall SetWordWrapping(const bool Value);
	void __fastcall SetTrimming(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextTrimming Value);
	void __fastcall SetFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetButtons(const TTMSFNCPanelButtons Value);
	void __fastcall SetShowButtons(const bool Value);
	void __fastcall SetVisible(const bool Value);
	bool __fastcall IsButtonSizeStored();
	bool __fastcall IsButtonSpacingStored();
	void __fastcall SetButtonSize(const float Value);
	void __fastcall SetButtonSpacing(const float Value);
	void __fastcall SetFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetStretchText(const bool Value);
	void __fastcall SetDropDownControl(Fmx::Controls::TControl* const Value);
	bool __fastcall IsDropDownHeightStored();
	bool __fastcall IsDropDownWidthStored();
	
protected:
	void __fastcall ChangeDPIScale(int M, int D);
	void __fastcall Changed();
	void __fastcall FontChanged(System::TObject* Sender);
	void __fastcall FillChanged(System::TObject* Sender);
	void __fastcall StrokeChanged(System::TObject* Sender);
	virtual bool __fastcall IsHTML();
	
public:
	__property System::Classes::TNotifyEvent OnChanged = {read=FOnChanged, write=FOnChanged};
	__fastcall virtual TTMSFNCPanelElement();
	__fastcall virtual ~TTMSFNCPanelElement();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property bool StretchText = {read=FStretchText, write=SetStretchText, default=1};
	__property System::UnicodeString Text = {read=FText, write=SetText};
	__property float Size = {read=FSize, write=SetSize, stored=IsSizeStored};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign HorizontalTextAlign = {read=FHorizontalTextAlign, write=SetHorizontalTextAlign, default=0};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign VerticalTextAlign = {read=FVerticalTextAlign, write=SetVerticalTextAlign, default=0};
	__property bool WordWrapping = {read=FWordWrapping, write=SetWordWrapping, default=1};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextTrimming Trimming = {read=FTrimming, write=SetTrimming, default=0};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* Font = {read=FFont, write=SetFont};
	__property bool Visible = {read=FVisible, write=SetVisible, default=1};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* Fill = {read=FFill, write=SetFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* Stroke = {read=FStroke, write=SetStroke};
	__property bool ShowButtons = {read=FShowButtons, write=SetShowButtons, default=1};
	__property TTMSFNCPanelButtons Buttons = {read=FButtons, write=SetButtons, default=0};
	__property float ButtonSize = {read=FButtonSize, write=SetButtonSize, stored=IsButtonSizeStored};
	__property float ButtonSpacing = {read=FButtonSpacing, write=SetButtonSpacing, stored=IsButtonSpacingStored};
	__property Fmx::Controls::TControl* DropDownControl = {read=FDropDownControl, write=SetDropDownControl};
	__property float DropDownWidth = {read=FDropDownWidth, write=FDropDownWidth, stored=IsDropDownWidthStored};
	__property float DropDownHeight = {read=FDropDownHeight, write=FDropDownHeight, stored=IsDropDownHeightStored};
};


class PASCALIMPLEMENTATION TTMSFNCPanelHeader : public TTMSFNCPanelElement
{
	typedef TTMSFNCPanelElement inherited;
	
public:
	/* TTMSFNCPanelElement.Create */ inline __fastcall virtual TTMSFNCPanelHeader() : TTMSFNCPanelElement() { }
	/* TTMSFNCPanelElement.Destroy */ inline __fastcall virtual ~TTMSFNCPanelHeader() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCPanelFooter : public TTMSFNCPanelElement
{
	typedef TTMSFNCPanelElement inherited;
	
public:
	__fastcall virtual TTMSFNCPanelFooter();
	
__published:
	__property Visible = {default=0};
	__property ShowButtons = {default=0};
public:
	/* TTMSFNCPanelElement.Destroy */ inline __fastcall virtual ~TTMSFNCPanelFooter() { }
	
};


enum DECLSPEC_DENUM TTMSFNCPanelButtonState : unsigned char { bsNormal, bsHover, bsDown };

typedef System::Generics::Collections::TList__1<TTMSFNCPanelButtonState>* TTMSFNCPanelButtonStates;

struct DECLSPEC_DRECORD TTMSFNCPanelDownButton
{
public:
	TTMSFNCPanelButton Button;
	bool Down;
};


enum DECLSPEC_DENUM TTMSFNCPanelExpandState : unsigned char { pesCollapsed, pesExpanded };

enum DECLSPEC_DENUM TTMSFNCPanelCompactState : unsigned char { pcsCollapsed, pcsExpanded };

typedef void __fastcall (__closure *TTMSFNCPanelAnchorClickEvent)(System::TObject* Sender, System::UnicodeString AAnchor);

class PASCALIMPLEMENTATION TTMSFNCPanelSection : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	TTMSFNCCustomPanel* FOwner;
	float FSize;
	NativeInt FTag;
	System::UnicodeString FText;
	Fmx::Controls::TControl* FControl;
	void __fastcall SetSize(const float Value);
	bool __fastcall IsSizeStored();
	void __fastcall SetText(const System::UnicodeString Value);
	void __fastcall SetControl(Fmx::Controls::TControl* const Value);
	
protected:
	HIDESBASE void __fastcall Changed();
	void __fastcall UpdateControlBounds();
	
public:
	__fastcall virtual TTMSFNCPanelSection(System::Classes::TCollection* Collection);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual ~TTMSFNCPanelSection();
	
__published:
	__property System::UnicodeString Text = {read=FText, write=SetText};
	__property float Size = {read=FSize, write=SetSize, stored=IsSizeStored};
	__property Fmx::Controls::TControl* Control = {read=FControl, write=SetControl};
	__property NativeInt Tag = {read=FTag, write=FTag, default=0};
};


class PASCALIMPLEMENTATION TTMSFNCPanelSections : public Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCPanelSection*>
{
	typedef Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCPanelSection*> inherited;
	
public:
	TTMSFNCPanelSection* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCCustomPanel* FOwner;
	System::Classes::TNotifyEvent FOnChanged;
	HIDESBASE TTMSFNCPanelSection* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCPanelSection* const Value);
	
protected:
	HIDESBASE void __fastcall Changed();
	__property System::Classes::TNotifyEvent OnChanged = {read=FOnChanged, write=FOnChanged};
	
public:
	__fastcall TTMSFNCPanelSections(TTMSFNCCustomPanel* AOwner);
	HIDESBASE TTMSFNCPanelSection* __fastcall Add();
	HIDESBASE TTMSFNCPanelSection* __fastcall Insert(int Index);
	__property TTMSFNCPanelSection* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCPanelSections() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCPanelSectionsAppearance : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FFont;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FStroke;
	System::Classes::TNotifyEvent FOnChange;
	void __fastcall SetFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	
protected:
	void __fastcall Changed();
	void __fastcall FillChanged(System::TObject* Sender);
	void __fastcall StrokeChanged(System::TObject* Sender);
	void __fastcall FontChanged(System::TObject* Sender);
	__property System::Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual TTMSFNCPanelSectionsAppearance();
	__fastcall virtual ~TTMSFNCPanelSectionsAppearance();
	
__published:
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* Font = {read=FFont, write=SetFont};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* Fill = {read=FFill, write=SetFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* Stroke = {read=FStroke, write=SetStroke};
};


class PASCALIMPLEMENTATION TTMSFNCCustomPanel : public Fmx::Tmsfnccustomcontrol::TTMSFNCCustomControl
{
	typedef Fmx::Tmsfnccustomcontrol::TTMSFNCCustomControl inherited;
	
private:
	float FOldHeight;
	float FOldWidth;
	Fmx::Tmsfncpopup::TTMSFNCPopup* FPopup;
	TTMSFNCPanelExpandState FExpandState;
	TTMSFNCPanelCompactState FCompactState;
	TTMSFNCPanelDownButton FHeaderDownButton;
	TTMSFNCPanelDownButton FFooterDownButton;
	System::Generics::Collections::TList__1<TTMSFNCPanelButtonState>* FHeaderButtonStates;
	System::Generics::Collections::TList__1<TTMSFNCPanelButtonState>* FFooterButtonStates;
	System::UnicodeString FHeaderAnchor;
	System::UnicodeString FFooterAnchor;
	Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* FBitmapContainer;
	TTMSFNCPanelHeader* FHeader;
	TTMSFNCPanelFooter* FFooter;
	System::Classes::TNotifyEvent FOnHeaderDropDownButtonClick;
	System::Classes::TNotifyEvent FOnHeaderExpandButtonClick;
	System::Classes::TNotifyEvent FOnHeaderCloseButtonClick;
	TTMSFNCPanelAnchorClickEvent FOnHeaderAnchorClick;
	TTMSFNCPanelAnchorClickEvent FOnFooterAnchorClick;
	System::Classes::TNotifyEvent FOnFooterDropDownButtonClick;
	System::Classes::TNotifyEvent FOnFooterExpandButtonClick;
	System::Classes::TNotifyEvent FOnFooterCloseButtonClick;
	TTMSFNCPanelCloseAction FCloseAction;
	TTMSFNCPanelDropDownAction FDropDownAction;
	TTMSFNCPanelExpandAction FExpandAction;
	TTMSFNCPanelCompactAction FCompactAction;
	TTMSFNCPanelSections* FSections;
	TTMSFNCPanelSectionsAppearance* FSectionsAppearance;
	System::Classes::TNotifyEvent FOnHeaderCompactButtonClick;
	System::Classes::TNotifyEvent FOnFooterCompactButtonClick;
	System::Classes::TNotifyEvent FOnInternalHeaderCompactButtonClick;
	Fmx::Tmsfncgraphicstypes::TTMSFNCAppearanceGlobalFont* FGlobalFont;
	Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* __fastcall GetBitmapContainer();
	void __fastcall SetBitmapContainer(Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* const Value);
	void __fastcall SetFooter(TTMSFNCPanelFooter* const Value);
	void __fastcall SetHeader(TTMSFNCPanelHeader* const Value);
	void __fastcall SetCloseAction(const TTMSFNCPanelCloseAction Value);
	void __fastcall SetDropDownAction(const TTMSFNCPanelDropDownAction Value);
	void __fastcall SetExpandAction(const TTMSFNCPanelExpandAction Value);
	void __fastcall SetCompactAction(const TTMSFNCPanelCompactAction Value);
	void __fastcall SetSections(TTMSFNCPanelSections* const Value);
	void __fastcall SetSectionsAppearance(TTMSFNCPanelSectionsAppearance* const Value);
	void __fastcall SetGlobalFont(Fmx::Tmsfncgraphicstypes::TTMSFNCAppearanceGlobalFont* const Value);
	
protected:
	virtual void __fastcall ChangeDPIScale(int M, int D);
	virtual void __fastcall ApplyStyle();
	virtual void __fastcall ResetToDefaultStyle();
	virtual System::Types::TRectF __fastcall GetElementRect(const System::Types::TRectF &ARect, TTMSFNCPanelElement* AElement);
	virtual System::Types::TRectF __fastcall GetTextRect(const System::Types::TRectF &ARect, TTMSFNCPanelElement* AElement);
	virtual System::Types::TRectF __fastcall GetSectionRect(const System::Types::TRectF &ARect);
	virtual System::Types::TRectF __fastcall GetButtonsRect(const System::Types::TRectF &ARect, TTMSFNCPanelElement* AElement);
	virtual System::UnicodeString __fastcall XYToAnchor(float X, float Y, TTMSFNCPanelElement* AElement);
	virtual bool __fastcall XYToButton(float X, float Y, TTMSFNCPanelElement* AElement, TTMSFNCPanelButton &AButton);
	virtual bool __fastcall ClearButtonStates(bool AHoverOnly = false);
	System::Types::TRectF __fastcall GetButtonRect(const System::Types::TRectF &ARect, TTMSFNCPanelElement* AElement, TTMSFNCPanelButton AButton);
	virtual float __fastcall GetCollapsedHeight();
	virtual float __fastcall GetCollapsedWidth();
	virtual bool __fastcall IsAppearanceProperty(System::TObject* AObject, System::UnicodeString APropertyName, System::TTypeKind APropertyType);
	virtual void __fastcall Notification(System::Classes::TComponent* AComponent, System::Classes::TOperation Operation);
	void __fastcall FooterChanged(System::TObject* Sender);
	void __fastcall HeaderChanged(System::TObject* Sender);
	void __fastcall SectionsChanged(System::TObject* Sender);
	void __fastcall SectionsAppearanceChanged(System::TObject* Sender);
	virtual void __fastcall Draw(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	virtual void __fastcall DrawSections(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	virtual void __fastcall DrawElement(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, TTMSFNCPanelElement* AElement, const System::Types::TRectF &ATextRect, const System::Types::TRectF &ARect, const System::Types::TRectF &AButtonsRect, System::Generics::Collections::TList__1<TTMSFNCPanelButtonState>* AButtonStates);
	virtual void __fastcall HandleMouseLeave();
	virtual void __fastcall UpdateControlAfterResize();
	virtual void __fastcall HandleMouseDown(System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall HandleMouseMove(System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall HandleMouseUp(System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall HandleDropDownAction(TTMSFNCPanelButton AButton, TTMSFNCPanelElement* AElement);
	virtual void __fastcall HandleCloseAction(TTMSFNCPanelElement* AElement);
	virtual void __fastcall HandleExpandAction(TTMSFNCPanelElement* AElement);
	virtual void __fastcall HandleCompactAction(TTMSFNCPanelElement* AElement);
	virtual void __fastcall DoHeaderAnchorClick(System::UnicodeString AAnchor);
	virtual void __fastcall DoHeaderCloseButtonClick();
	virtual void __fastcall DoHeaderExpandButtonClick();
	virtual void __fastcall DoHeaderDropDownButtonClick();
	virtual void __fastcall DoHeaderCompactButtonClick();
	virtual void __fastcall DoFooterAnchorClick(System::UnicodeString AAnchor);
	virtual void __fastcall DoFooterCloseButtonClick();
	virtual void __fastcall DoFooterExpandButtonClick();
	virtual void __fastcall DoFooterDropDownButtonClick();
	virtual void __fastcall DoFooterCompactButtonClick();
	virtual void __fastcall UpdateControlBounds();
	virtual void __fastcall Loaded();
	virtual void __fastcall SetFonts(Fmx::Tmsfncgraphicstypes::TTMSFNCAppearanceGlobalFontType ASetType);
	__property TTMSFNCPanelSectionsAppearance* SectionsAppearance = {read=FSectionsAppearance, write=SetSectionsAppearance};
	__property TTMSFNCPanelSections* Sections = {read=FSections, write=SetSections};
	__property Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* BitmapContainer = {read=GetBitmapContainer, write=SetBitmapContainer};
	__property TTMSFNCPanelHeader* Header = {read=FHeader, write=SetHeader};
	__property TTMSFNCPanelFooter* Footer = {read=FFooter, write=SetFooter};
	__property TTMSFNCPanelCloseAction CloseAction = {read=FCloseAction, write=SetCloseAction, default=2};
	__property TTMSFNCPanelDropDownAction DropDownAction = {read=FDropDownAction, write=SetDropDownAction, default=1};
	__property TTMSFNCPanelExpandAction ExpandAction = {read=FExpandAction, write=SetExpandAction, default=1};
	__property TTMSFNCPanelCompactAction CompactAction = {read=FCompactAction, write=SetCompactAction, default=1};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCAppearanceGlobalFont* GlobalFont = {read=FGlobalFont, write=SetGlobalFont};
	__property TTMSFNCPanelAnchorClickEvent OnHeaderAnchorClick = {read=FOnHeaderAnchorClick, write=FOnHeaderAnchorClick};
	__property System::Classes::TNotifyEvent OnHeaderCloseButtonClick = {read=FOnHeaderCloseButtonClick, write=FOnHeaderCloseButtonClick};
	__property System::Classes::TNotifyEvent OnHeaderExpandButtonClick = {read=FOnHeaderExpandButtonClick, write=FOnHeaderExpandButtonClick};
	__property System::Classes::TNotifyEvent OnHeaderCompactButtonClick = {read=FOnHeaderCompactButtonClick, write=FOnHeaderCompactButtonClick};
	__property System::Classes::TNotifyEvent OnHeaderDropDownButtonClick = {read=FOnHeaderDropDownButtonClick, write=FOnHeaderDropDownButtonClick};
	__property System::Classes::TNotifyEvent OnInternalHeaderCompactButtonClick = {read=FOnInternalHeaderCompactButtonClick, write=FOnInternalHeaderCompactButtonClick};
	__property TTMSFNCPanelAnchorClickEvent OnFooterAnchorClick = {read=FOnFooterAnchorClick, write=FOnFooterAnchorClick};
	__property System::Classes::TNotifyEvent OnFooterCloseButtonClick = {read=FOnFooterCloseButtonClick, write=FOnFooterCloseButtonClick};
	__property System::Classes::TNotifyEvent OnFooterExpandButtonClick = {read=FOnFooterExpandButtonClick, write=FOnFooterExpandButtonClick};
	__property System::Classes::TNotifyEvent OnFooterCompactButtonClick = {read=FOnFooterCompactButtonClick, write=FOnFooterCompactButtonClick};
	__property System::Classes::TNotifyEvent OnFooterDropDownButtonClick = {read=FOnFooterDropDownButtonClick, write=FOnFooterDropDownButtonClick};
	
public:
	__fastcall virtual TTMSFNCCustomPanel(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCCustomPanel();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	void __fastcall Expand(bool ACompact = false);
	void __fastcall Collapse(bool ACompact = false);
	void __fastcall Compact();
	void __fastcall CompactAndCollapse();
	void __fastcall Restore();
	__property TTMSFNCPanelExpandState ExpandState = {read=FExpandState, write=FExpandState, nodefault};
	__property TTMSFNCPanelCompactState CompactState = {read=FCompactState, write=FCompactState, nodefault};
	virtual void __fastcall SetBounds(float X, float Y, float AWidth, float AHeight);
	virtual void __fastcall InitSample();
private:
	void *__ITMSFNCAppearanceGlobalFont;	// Fmx::Tmsfncgraphicstypes::ITMSFNCAppearanceGlobalFont 
	void *__ITMSFNCBitmapContainer;	// Fmx::Tmsfncbitmapcontainer::ITMSFNCBitmapContainer 
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {85CF4F6B-3FF9-4CB7-AD6A-7FC477ED5462}
	operator Fmx::Tmsfncgraphicstypes::_di_ITMSFNCAppearanceGlobalFont()
	{
		Fmx::Tmsfncgraphicstypes::_di_ITMSFNCAppearanceGlobalFont intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator Fmx::Tmsfncgraphicstypes::ITMSFNCAppearanceGlobalFont*(void) { return (Fmx::Tmsfncgraphicstypes::ITMSFNCAppearanceGlobalFont*)&__ITMSFNCAppearanceGlobalFont; }
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


class PASCALIMPLEMENTATION TTMSFNCPanel : public TTMSFNCCustomPanel
{
	typedef TTMSFNCCustomPanel inherited;
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	virtual System::UnicodeString __fastcall GetVersion();
	
__published:
	__property BitmapContainer;
	__property System::UnicodeString Version = {read=GetVersion};
	__property Fill;
	__property Sections;
	__property SectionsAppearance;
	__property Stroke;
	__property Header;
	__property Footer;
	__property CloseAction = {default=2};
	__property DropDownAction = {default=1};
	__property ExpandAction = {default=1};
	__property CompactAction = {default=1};
	__property GlobalFont;
	__property OnHeaderAnchorClick;
	__property OnHeaderCloseButtonClick;
	__property OnHeaderExpandButtonClick;
	__property OnHeaderCompactButtonClick;
	__property OnHeaderDropDownButtonClick;
	__property OnFooterAnchorClick;
	__property OnFooterCloseButtonClick;
	__property OnFooterExpandButtonClick;
	__property OnFooterCompactButtonClick;
	__property OnFooterDropDownButtonClick;
public:
	/* TTMSFNCCustomPanel.Create */ inline __fastcall virtual TTMSFNCPanel(System::Classes::TComponent* AOwner) : TTMSFNCCustomPanel(AOwner) { }
	/* TTMSFNCCustomPanel.Destroy */ inline __fastcall virtual ~TTMSFNCPanel() { }
	
};


//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x2);
static constexpr System::Int8 BLD_VER = System::Int8(0x0);
static constexpr System::Int8 MINSECTIONHEIGHT = System::Int8(0x10);
}	/* namespace Tmsfncpanel */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCPANEL)
using namespace Fmx::Tmsfncpanel;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncpanelHPP
