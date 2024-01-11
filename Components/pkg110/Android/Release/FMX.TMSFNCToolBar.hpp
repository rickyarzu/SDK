// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCToolBar.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfnctoolbarHPP
#define Fmx_TmsfnctoolbarHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <FMX.TMSFNCGraphics.hpp>
#include <FMX.TMSFNCPersistence.hpp>
#include <FMX.TMSFNCStyles.hpp>
#include <FMX.TMSFNCCustomControl.hpp>
#include <FMX.Controls.hpp>
#include <System.Types.hpp>
#include <FMX.TMSFNCBitmapSelector.hpp>
#include <FMX.TMSFNCPopup.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.TMSFNCBitmapContainer.hpp>
#include <FMX.StdCtrls.hpp>
#include <FMX.TMSFNCColorSelector.hpp>
#include <FMX.TMSFNCToolBarRes.hpp>
#include <FMX.TMSFNCGraphicsTypes.hpp>
#include <System.UITypes.hpp>
#include <System.Generics.Collections.hpp>
#include <System.Generics.Defaults.hpp>
#include <FMX.ListBox.hpp>
#include <FMX.Menus.hpp>
#include <FMX.Types.hpp>
#include <FMX.Edit.hpp>
#include <System.SysUtils.hpp>
#include <FMX.TMSFNCCustomComponent.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfnctoolbar
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCToolBarCustomButtonAppearance;
class DELPHICLASS TTMSFNCToolBarButtonAppearance;
class DELPHICLASS TTMSFNCToolBarCompactAppearance;
class DELPHICLASS TTMSFNCToolBarQuickMenuButtonAppearance;
class DELPHICLASS TTMSFNCCustomToolBarElement;
class DELPHICLASS TTMSFNCDefaultToolBarButton;
class DELPHICLASS TTMSFNCToolBarDropDownButton;
class DELPHICLASS TTMSFNCCustomToolBarButton;
class DELPHICLASS TTMSFNCCustomToolBarSeparatorAppearance;
class DELPHICLASS TTMSFNCToolBarSeparatorAppearance;
class DELPHICLASS TTMSFNCCustomToolBarSeparator;
class DELPHICLASS TTMSFNCToolBarButton;
class DELPHICLASS TTMSFNCToolBarSeparator;
class DELPHICLASS TTMSFNCToolBarCustomItemPicker;
class DELPHICLASS TTMSFNCToolBarItemPicker;
class DELPHICLASS TTMSFNCToolBarFontNamePicker;
class DELPHICLASS TTMSFNCToolBarFontSizePicker;
class DELPHICLASS TTMSFNCToolBarColorPicker;
class DELPHICLASS TTMSFNCToolBarBitmapPicker;
class DELPHICLASS TTMSFNCCustomToolBarAppearance;
class DELPHICLASS TTMSFNCToolBarAppearance;
class DELPHICLASS TTMSFNCToolBarOptionMenuItem;
class DELPHICLASS TTMSFNCToolBarControl;
class DELPHICLASS TTMSFNCCustomToolBarOptionsMenu;
class DELPHICLASS TTMSFNCToolBarOptionsMenu;
class DELPHICLASS TTMSFNCToolBarPopup;
class DELPHICLASS TTMSFNCCustomToolBar;
class DELPHICLASS TTMSFNCToolBar;
class DELPHICLASS TTMSFNCCustomDockPanelAppearance;
class DELPHICLASS TTMSFNCDockPanelAppearance;
class DELPHICLASS TTMSFNCCustomDockPanel;
class DELPHICLASS TTMSFNCDockPanel;
//-- type declarations -------------------------------------------------------
#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCToolBarCustomButtonAppearance : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	TTMSFNCDefaultToolBarButton* FOwner;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FHoverStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FDownFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FNormalFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FDownStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FDisabledFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FNormalStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FDisabledStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FHoverFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsCorners FCorners;
	float FRounding;
	bool FTransparent;
	bool FShowInnerStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FInnerStroke;
	bool FFlatStyle;
	System::Classes::TNotifyEvent FOnChange;
	void __fastcall SetDisabledFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetDisabledStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetDownFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetDownStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetHoverFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetHoverStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetNormalFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetNormalStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	virtual void __fastcall SetCorners(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsCorners Value);
	virtual void __fastcall SetRounding(const float Value);
	void __fastcall SetInnerStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetShowInnerStroke(const bool Value);
	void __fastcall SetTransparent(const bool Value);
	bool __fastcall IsRoundingStored();
	void __fastcall SetFlatStyle(const bool Value);
	
protected:
	void __fastcall FillChanged(System::TObject* Sender);
	void __fastcall StrokeChanged(System::TObject* Sender);
	virtual void __fastcall Changed();
	__property bool Transparent = {read=FTransparent, write=SetTransparent, default=0};
	__property bool ShowInnerStroke = {read=FShowInnerStroke, write=SetShowInnerStroke, default=1};
	__property float Rounding = {read=FRounding, write=SetRounding, stored=IsRoundingStored};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsCorners Corners = {read=FCorners, write=SetCorners, default=15};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* InnerStroke = {read=FInnerStroke, write=SetInnerStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* NormalFill = {read=FNormalFill, write=SetNormalFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* NormalStroke = {read=FNormalStroke, write=SetNormalStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* HoverFill = {read=FHoverFill, write=SetHoverFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* HoverStroke = {read=FHoverStroke, write=SetHoverStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* DownFill = {read=FDownFill, write=SetDownFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* DownStroke = {read=FDownStroke, write=SetDownStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* DisabledFill = {read=FDisabledFill, write=SetDisabledFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* DisabledStroke = {read=FDisabledStroke, write=SetDisabledStroke};
	__property bool FlatStyle = {read=FFlatStyle, write=SetFlatStyle, default=0};
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall TTMSFNCToolBarCustomButtonAppearance(TTMSFNCDefaultToolBarButton* AOwner);
	__fastcall virtual ~TTMSFNCToolBarCustomButtonAppearance();
	__property System::Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCToolBarButtonAppearance : public TTMSFNCToolBarCustomButtonAppearance
{
	typedef TTMSFNCToolBarCustomButtonAppearance inherited;
	
__published:
	__property Transparent = {default=0};
	__property ShowInnerStroke = {default=1};
	__property Rounding;
	__property Corners = {default=15};
	__property InnerStroke;
	__property NormalFill;
	__property NormalStroke;
	__property HoverFill;
	__property HoverStroke;
	__property DownFill;
	__property DownStroke;
	__property DisabledFill;
	__property DisabledStroke;
	__property FlatStyle = {default=0};
public:
	/* TTMSFNCToolBarCustomButtonAppearance.Create */ inline __fastcall TTMSFNCToolBarButtonAppearance(TTMSFNCDefaultToolBarButton* AOwner) : TTMSFNCToolBarCustomButtonAppearance(AOwner) { }
	/* TTMSFNCToolBarCustomButtonAppearance.Destroy */ inline __fastcall virtual ~TTMSFNCToolBarButtonAppearance() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCToolBarCompactAppearance : public TTMSFNCToolBarCustomButtonAppearance
{
	typedef TTMSFNCToolBarCustomButtonAppearance inherited;
	
__published:
	__property NormalFill;
	__property NormalStroke;
	__property HoverFill;
	__property HoverStroke;
	__property DownFill;
	__property DownStroke;
	__property DisabledFill;
	__property DisabledStroke;
	__property FlatStyle = {default=0};
public:
	/* TTMSFNCToolBarCustomButtonAppearance.Create */ inline __fastcall TTMSFNCToolBarCompactAppearance(TTMSFNCDefaultToolBarButton* AOwner) : TTMSFNCToolBarCustomButtonAppearance(AOwner) { }
	/* TTMSFNCToolBarCustomButtonAppearance.Destroy */ inline __fastcall virtual ~TTMSFNCToolBarCompactAppearance() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCToolBarQuickMenuButtonAppearance : public TTMSFNCToolBarCustomButtonAppearance
{
	typedef TTMSFNCToolBarCustomButtonAppearance inherited;
	
__published:
	__property NormalFill;
	__property NormalStroke;
	__property HoverFill;
	__property HoverStroke;
	__property DownFill;
	__property DownStroke;
	__property DisabledFill;
	__property DisabledStroke;
	__property FlatStyle = {default=0};
public:
	/* TTMSFNCToolBarCustomButtonAppearance.Create */ inline __fastcall TTMSFNCToolBarQuickMenuButtonAppearance(TTMSFNCDefaultToolBarButton* AOwner) : TTMSFNCToolBarCustomButtonAppearance(AOwner) { }
	/* TTMSFNCToolBarCustomButtonAppearance.Destroy */ inline __fastcall virtual ~TTMSFNCToolBarQuickMenuButtonAppearance() { }
	
};

#pragma pack(pop)

enum DECLSPEC_DENUM TTMSFNCToolBarElementState : unsigned char { esNormal, esLarge };

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCustomToolBarElement : public Fmx::Tmsfnccustomcontrol::TTMSFNCCustomControl
{
	typedef Fmx::Tmsfnccustomcontrol::TTMSFNCCustomControl inherited;
	
private:
	bool FBlockUpdate;
	System::Classes::TNotifyEvent FOnUpdateToolBar;
	System::Classes::TNotifyEvent FOnUpdateToolBarControl;
	bool FCanCopy;
	TTMSFNCToolBarElementState FState;
	bool FLastElement;
	int FControlIndex;
	void __fastcall SetState(const TTMSFNCToolBarElementState Value);
	void __fastcall SetLastElement(const bool Value);
	
protected:
	virtual System::UnicodeString __fastcall GetDocURL();
	virtual void __fastcall UpdateState();
	virtual void __fastcall UpdateToolBar();
	virtual void __fastcall UpdateToolBarControl();
	virtual void __fastcall SetVisible(const bool Value);
	virtual void __fastcall DoMatrixChanged(System::TObject* Sender);
	virtual void __fastcall DefineProperties(System::Classes::TFiler* Filer);
	void __fastcall ReadControlIndex(System::Classes::TReader* Reader);
	void __fastcall WriteControlIndex(System::Classes::TWriter* Writer);
	virtual void __fastcall UpdateControlAfterResize();
	__property System::Classes::TNotifyEvent OnUpdateToolBar = {read=FOnUpdateToolBar, write=FOnUpdateToolBar};
	__property System::Classes::TNotifyEvent OnUpdateToolBarControl = {read=FOnUpdateToolBarControl, write=FOnUpdateToolBarControl};
	__property TTMSFNCToolBarElementState State = {read=FState, write=SetState, default=0};
	__property bool LastElement = {read=FLastElement, write=SetLastElement, default=0};
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual TTMSFNCCustomToolBarElement(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCCustomToolBarElement();
	__property bool CanCopy = {read=FCanCopy, write=FCanCopy, default=1};
	__property int ControlIndex = {read=FControlIndex, write=FControlIndex, default=-1};
};

#pragma pack(pop)

enum DECLSPEC_DENUM TTMSFNCToolBarButtonBitmapPosition : unsigned char { bbpLeft, bbpTop };

enum DECLSPEC_DENUM TTMSFNCToolBarButtonLayout : unsigned char { bblNone, bblBitmap, bblLabel, bblLarge };

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCDefaultToolBarButton : public TTMSFNCCustomToolBarElement
{
	typedef TTMSFNCCustomToolBarElement inherited;
	
private:
	float FOldHeight;
	bool FBitmapVisible;
	System::UnicodeString FText;
	Fmx::Tmsfncpopup::TTMSFNCPopup* FPopup;
	Fmx::Tmsfncpopup::TTMSFNCPopupPlacement FPopupPlacement;
	float FDropDownHeight;
	float FDropDownWidth;
	bool FDown;
	bool FHover;
	bool FPrevHover;
	TTMSFNCToolBarButtonAppearance* FAppearance;
	Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* FBitmapContainer;
	Fmx::Tmsfnctypes::TTMSFNCScaledBitmaps* FBitmaps;
	bool FApplyName;
	Fmx::Controls::TControl* FDropDownControl;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FFont;
	System::Classes::TNotifyEvent FOnBeforeDropDown;
	bool FCloseOnSelection;
	bool FDownState;
	bool FTextVisible;
	System::Classes::TNotifyEvent FOnCloseDropDown;
	System::Classes::TNotifyEvent FOnDropDown;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign FVerticalTextAlign;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign FHorizontalTextAlign;
	bool FWordWrapping;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextTrimming FTrimming;
	float FBitmapSize;
	bool FStretchText;
	Fmx::Tmsfnctypes::TTMSFNCScaledBitmaps* FDisabledBitmaps;
	Fmx::Tmsfnctypes::TTMSFNCScaledBitmaps* FHoverBitmaps;
	bool FShowFocus;
	bool FDropDownAutoWidth;
	System::Uitypes::TAlphaColor FHoverFontColor;
	System::Uitypes::TAlphaColor FDownFontColor;
	System::Uitypes::TAlphaColor FDisabledFontColor;
	bool FStretchBitmapIfNoText;
	TTMSFNCToolBarButtonBitmapPosition FBitmapPosition;
	TTMSFNCToolBarButtonLayout FMaximumLayout;
	TTMSFNCToolBarButtonLayout FMinimumLayout;
	TTMSFNCToolBarButtonLayout FLayout;
	TTMSFNCToolBarButtonLayout FCompactLayout;
	float FLargeLayoutBitmapSize;
	Fmx::Tmsfnctypes::TTMSFNCScaledBitmaps* FLargeLayoutBitmaps;
	Fmx::Tmsfnctypes::TTMSFNCScaledBitmaps* FLargeLayoutHoverBitmaps;
	Fmx::Tmsfnctypes::TTMSFNCScaledBitmaps* FLargeLayoutDisabledBitmaps;
	bool FAutoBitmapSize;
	bool FLargeLayoutAutoBitmapSize;
	void __fastcall SetAppearance(TTMSFNCToolBarButtonAppearance* const Value);
	virtual void __fastcall SetBitmapContainer(Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* const Value);
	void __fastcall SetBitmaps(Fmx::Tmsfnctypes::TTMSFNCScaledBitmaps* const Value);
	void __fastcall SetText(const System::UnicodeString Value);
	void __fastcall SetDropDownHeight(const float Value);
	void __fastcall SetDropDownWidth(const float Value);
	void __fastcall SetBitmapVisible(const bool Value);
	void __fastcall SetTextVisible(const bool Value);
	void __fastcall SetFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetDropDownControl(Fmx::Controls::TControl* const Value);
	void __fastcall SetCloseOnSelection(const bool Value);
	void __fastcall SetDownState(const bool Value);
	bool __fastcall IsDropDownHeightStored();
	bool __fastcall IsDropDownWidthStored();
	void __fastcall SetHorizontalTextAlign(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign Value);
	void __fastcall SetVerticalTextAlign(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign Value);
	void __fastcall SetWordWrapping(const bool Value);
	void __fastcall SetTrimming(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextTrimming Value);
	bool __fastcall IsBitmapSizeStored();
	void __fastcall SetBitmapSize(const float Value);
	void __fastcall SetStretchText(const bool Value);
	void __fastcall SetDisabledBitmaps(Fmx::Tmsfnctypes::TTMSFNCScaledBitmaps* const Value);
	void __fastcall SetHoverBitmaps(Fmx::Tmsfnctypes::TTMSFNCScaledBitmaps* const Value);
	Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* __fastcall GetBitmapContainer();
	void __fastcall SetShowFocus(const bool Value);
	void __fastcall SetDropDownAutoWidth(const bool Value);
	void __fastcall SetDisabledFontColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetDownFontColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetHoverFontColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetStretchBitmapIfNoText(const bool Value);
	void __fastcall SetBitmapPosition(const TTMSFNCToolBarButtonBitmapPosition Value);
	void __fastcall SetMaximumLayout(const TTMSFNCToolBarButtonLayout Value);
	void __fastcall SetMinimumLayout(const TTMSFNCToolBarButtonLayout Value);
	void __fastcall SetLayout(const TTMSFNCToolBarButtonLayout Value);
	void __fastcall SetCompactLayout(const TTMSFNCToolBarButtonLayout Value);
	bool __fastcall IsLargeLayoutBitmapSizeStored();
	void __fastcall SetLargeLayoutBitmaps(Fmx::Tmsfnctypes::TTMSFNCScaledBitmaps* const Value);
	void __fastcall SetLargeLayoutBitmapSize(const float Value);
	void __fastcall SetLargeLayoutDisabledBitmaps(Fmx::Tmsfnctypes::TTMSFNCScaledBitmaps* const Value);
	void __fastcall SetLargeLayoutHoverBitmaps(Fmx::Tmsfnctypes::TTMSFNCScaledBitmaps* const Value);
	void __fastcall SetAutoBitmapSize(const bool Value);
	void __fastcall SetLargeLayoutAutoBitmapSize(const bool Value);
	
protected:
	virtual bool __fastcall CanDrawDesignTime();
	virtual bool __fastcall HasHint();
	virtual System::UnicodeString __fastcall GetHintString();
	virtual System::UnicodeString __fastcall GetText();
	virtual System::Types::TSizeF __fastcall GetTextSize();
	virtual void __fastcall ActionChange(System::Classes::TBasicAction* Sender, bool CheckDefaults);
	virtual void __fastcall UpdateControlAfterResize();
	virtual void __fastcall ApplyStyle();
	virtual void __fastcall ResetToDefaultStyle();
	virtual void __fastcall SetAdaptToStyle(const bool Value);
	void __fastcall BitmapsChanged(System::TObject* Sender);
	void __fastcall DoFontChanged(System::TObject* Sender);
	virtual void __fastcall UpdateLayout();
	void __fastcall DoClosePopup(System::TObject* Sender);
	void __fastcall DoPopup(System::TObject* Sender);
	virtual void __fastcall InitializePopup();
	virtual void __fastcall UpdateState();
	virtual void __fastcall ChangeDPIScale(int M, int D);
	virtual void __fastcall AppearanceChanged();
	virtual void __fastcall Notification(System::Classes::TComponent* AComponent, System::Classes::TOperation Operation);
	virtual void __fastcall SetName(const System::Classes::TComponentName Value);
	virtual void __fastcall HandleMouseDown(System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall HandleMouseMove(System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall HandleMouseUp(System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall HandleKeyUp(System::Word &Key, System::Classes::TShiftState Shift);
	virtual void __fastcall HandleKeyDown(System::Word &Key, System::Classes::TShiftState Shift);
	virtual void __fastcall HandleKeyPress(System::WideChar &Key);
	virtual void __fastcall HandleMouseEnter();
	virtual void __fastcall HandleMouseLeave();
	virtual void __fastcall SelectFirstValue();
	virtual void __fastcall SelectValueWithCharacter(System::WideChar ACharacter);
	virtual void __fastcall SelectLastValue();
	virtual void __fastcall SelectNextValue();
	virtual void __fastcall SelectPreviousValue();
	virtual void __fastcall DrawText(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics);
	virtual void __fastcall DrawBitmap(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	virtual void __fastcall DrawButton(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics);
	virtual bool __fastcall CanDropDown();
	virtual bool __fastcall CanChangeText();
	virtual System::Types::TRectF __fastcall GetTextRect();
	virtual System::Types::TRectF __fastcall GetDropDownRect();
	virtual System::Types::TRectF __fastcall GetBitmapRect()/* overload */;
	virtual System::Types::TRectF __fastcall GetBitmapRect(const System::Types::TRectF &ARect)/* overload */;
	virtual float __fastcall GetBitmapSize();
	virtual float __fastcall GetLargeLayoutBitmapSize();
	__property TTMSFNCToolBarButtonAppearance* Appearance = {read=FAppearance, write=SetAppearance};
	__property bool BitmapVisible = {read=FBitmapVisible, write=SetBitmapVisible, default=0};
	__property Fmx::Tmsfnctypes::TTMSFNCScaledBitmaps* Bitmaps = {read=FBitmaps, write=SetBitmaps};
	__property Fmx::Tmsfnctypes::TTMSFNCScaledBitmaps* DisabledBitmaps = {read=FDisabledBitmaps, write=SetDisabledBitmaps};
	__property Fmx::Tmsfnctypes::TTMSFNCScaledBitmaps* HoverBitmaps = {read=FHoverBitmaps, write=SetHoverBitmaps};
	__property Fmx::Tmsfnctypes::TTMSFNCScaledBitmaps* LargeLayoutBitmaps = {read=FLargeLayoutBitmaps, write=SetLargeLayoutBitmaps};
	__property Fmx::Tmsfnctypes::TTMSFNCScaledBitmaps* LargeLayoutDisabledBitmaps = {read=FLargeLayoutDisabledBitmaps, write=SetLargeLayoutDisabledBitmaps};
	__property Fmx::Tmsfnctypes::TTMSFNCScaledBitmaps* LargeLayoutHoverBitmaps = {read=FLargeLayoutHoverBitmaps, write=SetLargeLayoutHoverBitmaps};
	__property Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* BitmapContainer = {read=GetBitmapContainer, write=SetBitmapContainer};
	__property float BitmapSize = {read=FBitmapSize, write=SetBitmapSize, stored=IsBitmapSizeStored};
	__property bool AutoBitmapSize = {read=FAutoBitmapSize, write=SetAutoBitmapSize, default=0};
	__property float LargeLayoutBitmapSize = {read=FLargeLayoutBitmapSize, write=SetLargeLayoutBitmapSize, stored=IsLargeLayoutBitmapSizeStored};
	__property bool LargeLayoutAutoBitmapSize = {read=FLargeLayoutAutoBitmapSize, write=SetLargeLayoutAutoBitmapSize, default=0};
	__property bool StretchBitmapIfNoText = {read=FStretchBitmapIfNoText, write=SetStretchBitmapIfNoText, default=1};
	__property System::UnicodeString Text = {read=GetText, write=SetText};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextTrimming Trimming = {read=FTrimming, write=SetTrimming, default=1};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign HorizontalTextAlign = {read=FHorizontalTextAlign, write=SetHorizontalTextAlign, default=0};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign VerticalTextAlign = {read=FVerticalTextAlign, write=SetVerticalTextAlign, default=0};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* Font = {read=FFont, write=SetFont};
	__property System::Uitypes::TAlphaColor HoverFontColor = {read=FHoverFontColor, write=SetHoverFontColor, default=0};
	__property System::Uitypes::TAlphaColor DownFontColor = {read=FDownFontColor, write=SetDownFontColor, default=0};
	__property System::Uitypes::TAlphaColor DisabledFontColor = {read=FDisabledFontColor, write=SetDisabledFontColor, default=0};
	__property bool TextVisible = {read=FTextVisible, write=SetTextVisible, default=1};
	__property bool StretchText = {read=FStretchText, write=SetStretchText, default=0};
	__property bool WordWrapping = {read=FWordWrapping, write=SetWordWrapping, default=0};
	__property bool DropDownAutoWidth = {read=FDropDownAutoWidth, write=SetDropDownAutoWidth, default=0};
	__property float DropDownHeight = {read=FDropDownHeight, write=SetDropDownHeight, stored=IsDropDownHeightStored};
	__property float DropDownWidth = {read=FDropDownWidth, write=SetDropDownWidth, stored=IsDropDownWidthStored};
	__property Fmx::Controls::TControl* DropDownControl = {read=FDropDownControl, write=SetDropDownControl};
	__property bool CloseOnSelection = {read=FCloseOnSelection, write=SetCloseOnSelection, default=1};
	__property System::Classes::TNotifyEvent OnBeforeDropDown = {read=FOnBeforeDropDown, write=FOnBeforeDropDown};
	__property System::Classes::TNotifyEvent OnDropDown = {read=FOnDropDown, write=FOnDropDown};
	__property System::Classes::TNotifyEvent OnCloseDropDown = {read=FOnCloseDropDown, write=FOnCloseDropDown};
	__property bool ApplyName = {read=FApplyName, write=FApplyName, default=1};
	__property bool ShowFocus = {read=FShowFocus, write=SetShowFocus, default=0};
	__property TTMSFNCToolBarButtonBitmapPosition BitmapPosition = {read=FBitmapPosition, write=SetBitmapPosition, default=0};
	__property TTMSFNCToolBarButtonLayout CompactLayout = {read=FCompactLayout, write=SetCompactLayout, default=0};
	__property TTMSFNCToolBarButtonLayout Layout = {read=FLayout, write=SetLayout, default=0};
	__property TTMSFNCToolBarButtonLayout MinimumLayout = {read=FMinimumLayout, write=SetMinimumLayout, default=1};
	__property TTMSFNCToolBarButtonLayout MaximumLayout = {read=FMaximumLayout, write=SetMaximumLayout, default=3};
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual TTMSFNCDefaultToolBarButton(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCDefaultToolBarButton();
	virtual void __fastcall Draw(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	virtual void __fastcall DropDown();
	virtual void __fastcall CloseDropDown();
	Fmx::Tmsfncpopup::TTMSFNCPopup* __fastcall GetPopupControl();
	virtual Fmx::Tmsfnctypes::TTMSFNCBitmap* __fastcall GetBitmap();
	__property bool DownState = {read=FDownState, write=SetDownState, nodefault};
	__property Fmx::Tmsfncpopup::TTMSFNCPopupPlacement PopupPlacement = {read=FPopupPlacement, write=FPopupPlacement, default=0};
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

#pragma pack(pop)

enum DECLSPEC_DENUM TTMSFNCToolBarButtonDropDownKind : unsigned char { ddkNormal, ddkDropDown, ddkDropDownButton };

enum DECLSPEC_DENUM TTMSFNCToolBarButtonDropDownPosition : unsigned char { ddpRight, ddpBottom };

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCToolBarDropDownButton : public TTMSFNCDefaultToolBarButton
{
	typedef TTMSFNCDefaultToolBarButton inherited;
	
private:
	bool FDefaultStyle;
	void __fastcall SetDefaultStyle(const bool Value);
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	virtual void __fastcall DrawBitmap(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	virtual System::Types::TRectF __fastcall GetBitmapRect(const System::Types::TRectF &ARect)/* overload */;
	
public:
	__fastcall virtual TTMSFNCToolBarDropDownButton(System::Classes::TComponent* AOwner);
	virtual void __fastcall LoadSettingsFromFile(System::UnicodeString AFileName);
	virtual void __fastcall LoadSettingsFromStream(System::Classes::TStream* AStream);
	
__published:
	__property bool DefaultStyle = {read=FDefaultStyle, write=SetDefaultStyle, default=1};
	__property Action;
	__property Font;
	__property Text = {default=0};
	__property ShowFocus = {default=0};
	__property TextVisible = {default=1};
	__property StretchText = {default=0};
	__property WordWrapping = {default=0};
	__property HorizontalTextAlign = {default=0};
	__property VerticalTextAlign = {default=0};
	__property Trimming = {default=1};
	__property Bitmaps;
	__property DisabledBitmaps;
	__property HoverBitmaps;
	__property BitmapVisible = {default=0};
	__property BitmapContainer;
	__property State = {default=0};
	__property LastElement = {default=0};
	__property Appearance;
public:
	/* TTMSFNCDefaultToolBarButton.Destroy */ inline __fastcall virtual ~TTMSFNCToolBarDropDownButton() { }
	
	/* Hoisted overloads: */
	
protected:
	inline System::Types::TRectF __fastcall  GetBitmapRect(){ return TTMSFNCDefaultToolBarButton::GetBitmapRect(); }
	
};

#pragma pack(pop)

_DECLARE_METACLASS(System::TMetaClass, TTMSFNCToolBarDropDownButtonClass);

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCustomToolBarButton : public TTMSFNCDefaultToolBarButton
{
	typedef TTMSFNCDefaultToolBarButton inherited;
	
private:
	TTMSFNCToolBarDropDownButton* FDropDownButton;
	TTMSFNCToolBarButtonDropDownKind FDropDownKind;
	TTMSFNCToolBarButtonDropDownPosition FDropDownPosition;
	bool FHidden;
	System::UnicodeString FAutoOptionsMenuText;
	void __fastcall SetDropDownKind(const TTMSFNCToolBarButtonDropDownKind Value);
	void __fastcall SetDropDownPosition(const TTMSFNCToolBarButtonDropDownPosition Value);
	void __fastcall SetHidden(const bool Value);
	
protected:
	virtual void __fastcall ChangeDPIScale(int M, int D);
	virtual void __fastcall SetAdaptToStyle(const bool Value);
	HIDESBASE void __fastcall DoFontChanged(System::TObject* Sender);
	virtual void __fastcall AppearanceChanged();
	virtual void __fastcall UpdateDropDownButton();
	virtual void __fastcall HandleMouseDown(System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, float X, float Y);
	void __fastcall DropDownButtonClick(System::TObject* Sender);
	virtual void __fastcall DrawButton(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics);
	virtual void __fastcall SetEnabled(const bool Value);
	virtual TTMSFNCToolBarDropDownButtonClass __fastcall GetDropDownButtonClass();
	virtual System::Types::TRectF __fastcall GetDropDownRect();
	virtual System::Types::TRectF __fastcall GetTextRect();
	virtual System::Types::TRectF __fastcall GetBitmapRect(const System::Types::TRectF &ARect)/* overload */;
	virtual System::Types::TRectF __fastcall GetBitmapRect()/* overload */;
	virtual bool __fastcall CanDropDown();
	__property TTMSFNCToolBarButtonDropDownKind DropDownKind = {read=FDropDownKind, write=SetDropDownKind, default=0};
	__property TTMSFNCToolBarButtonDropDownPosition DropDownPosition = {read=FDropDownPosition, write=SetDropDownPosition, default=0};
	__property System::UnicodeString AutoOptionsMenuText = {read=FAutoOptionsMenuText, write=FAutoOptionsMenuText};
	__property bool Hidden = {read=FHidden, write=SetHidden, default=0};
	virtual void __fastcall Loaded();
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual TTMSFNCCustomToolBarButton(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCCustomToolBarButton();
	TTMSFNCToolBarDropDownButton* __fastcall GetDropDownButtonControl();
	virtual void __fastcall LoadSettingsFromFile(System::UnicodeString AFileName);
	virtual void __fastcall LoadSettingsFromStream(System::Classes::TStream* AStream);
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCustomToolBarSeparatorAppearance : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	TTMSFNCCustomToolBarSeparator* FOwner;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FInnerStroke;
	void __fastcall SetStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetInnerStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	
protected:
	void __fastcall StrokeChanged(System::TObject* Sender);
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* Stroke = {read=FStroke, write=SetStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* InnerStroke = {read=FInnerStroke, write=SetInnerStroke};
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall TTMSFNCCustomToolBarSeparatorAppearance(TTMSFNCCustomToolBarSeparator* AOwner);
	__fastcall virtual ~TTMSFNCCustomToolBarSeparatorAppearance();
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCToolBarSeparatorAppearance : public TTMSFNCCustomToolBarSeparatorAppearance
{
	typedef TTMSFNCCustomToolBarSeparatorAppearance inherited;
	
__published:
	__property Stroke;
	__property InnerStroke;
public:
	/* TTMSFNCCustomToolBarSeparatorAppearance.Create */ inline __fastcall TTMSFNCToolBarSeparatorAppearance(TTMSFNCCustomToolBarSeparator* AOwner) : TTMSFNCCustomToolBarSeparatorAppearance(AOwner) { }
	/* TTMSFNCCustomToolBarSeparatorAppearance.Destroy */ inline __fastcall virtual ~TTMSFNCToolBarSeparatorAppearance() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCustomToolBarSeparator : public TTMSFNCCustomToolBarElement
{
	typedef TTMSFNCCustomToolBarElement inherited;
	
private:
	TTMSFNCToolBarSeparatorAppearance* FAppearance;
	void __fastcall SetAppearance(TTMSFNCToolBarSeparatorAppearance* const Value);
	
protected:
	virtual void __fastcall UpdateState();
	__property TTMSFNCToolBarSeparatorAppearance* Appearance = {read=FAppearance, write=SetAppearance};
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual TTMSFNCCustomToolBarSeparator(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCCustomToolBarSeparator();
	virtual void __fastcall Draw(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCToolBarButton : public TTMSFNCCustomToolBarButton
{
	typedef TTMSFNCCustomToolBarButton inherited;
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	
public:
	__property Hidden = {default=0};
	
__published:
	__property Action;
	__property Font;
	__property AutoOptionsMenuText = {default=0};
	__property DropDownAutoWidth = {default=0};
	__property DropDownKind = {default=0};
	__property DropDownPosition = {default=0};
	__property DropDownHeight;
	__property DropDownWidth;
	__property DropDownControl;
	__property OnBeforeDropDown;
	__property OnDropDown;
	__property OnCloseDropDown;
	__property Text = {default=0};
	__property ShowFocus = {default=0};
	__property TextVisible = {default=1};
	__property StretchText = {default=0};
	__property StretchBitmapIfNoText = {default=1};
	__property HorizontalTextAlign = {default=0};
	__property VerticalTextAlign = {default=0};
	__property Trimming = {default=1};
	__property Bitmaps;
	__property LargeLayoutBitmaps;
	__property Layout = {default=0};
	__property CompactLayout = {default=0};
	__property MinimumLayout = {default=1};
	__property MaximumLayout = {default=3};
	__property BitmapPosition = {default=0};
	__property DisabledBitmaps;
	__property HoverBitmaps;
	__property LargeLayoutDisabledBitmaps;
	__property LargeLayoutHoverBitmaps;
	__property BitmapVisible = {default=0};
	__property BitmapContainer;
	__property BitmapSize;
	__property AutoBitmapSize = {default=0};
	__property LargeLayoutBitmapSize;
	__property LargeLayoutAutoBitmapSize = {default=0};
	__property State = {default=0};
	__property LastElement = {default=0};
	__property Appearance;
	__property WordWrapping = {default=0};
public:
	/* TTMSFNCCustomToolBarButton.Create */ inline __fastcall virtual TTMSFNCToolBarButton(System::Classes::TComponent* AOwner) : TTMSFNCCustomToolBarButton(AOwner) { }
	/* TTMSFNCCustomToolBarButton.Destroy */ inline __fastcall virtual ~TTMSFNCToolBarButton() { }
	
};

#pragma pack(pop)

_DECLARE_METACLASS(System::TMetaClass, TTMSFNCToolBarButtonClass);

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCToolBarSeparator : public TTMSFNCCustomToolBarSeparator
{
	typedef TTMSFNCCustomToolBarSeparator inherited;
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	
__published:
	__property State = {default=0};
	__property LastElement = {default=0};
	__property Appearance;
public:
	/* TTMSFNCCustomToolBarSeparator.Create */ inline __fastcall virtual TTMSFNCToolBarSeparator(System::Classes::TComponent* AOwner) : TTMSFNCCustomToolBarSeparator(AOwner) { }
	/* TTMSFNCCustomToolBarSeparator.Destroy */ inline __fastcall virtual ~TTMSFNCToolBarSeparator() { }
	
};

#pragma pack(pop)

_DECLARE_METACLASS(System::TMetaClass, TTMSFNCToolBarSeparatorClass);

typedef void __fastcall (__closure *TTMSFNCToolBarItemPickerItemSelected)(System::TObject* Sender, int AItemIndex);

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCToolBarCustomItemPicker : public TTMSFNCToolBarButton
{
	typedef TTMSFNCToolBarButton inherited;
	
private:
	Fmx::Edit::TEdit* FEdit;
	Fmx::Types::TTimer* FTimer;
	int FItemIndex;
	System::Classes::TStringList* FItems;
	bool FKeyboardUsed;
	Fmx::Listbox::TListBox* FItemSelector;
	TTMSFNCToolBarItemPickerItemSelected FOnItemSelected;
	bool FEditable;
	System::Classes::TNotifyEvent FOnEditChange;
	int __fastcall GetSelectedItemIndex();
	void __fastcall SetSelectedItemIndex(const int Value);
	System::UnicodeString __fastcall GetSelectedItem();
	void __fastcall SetSelectedItem(const System::UnicodeString Value);
	void __fastcall SetItems(System::Classes::TStringList* const Value);
	void __fastcall SetEditable(const bool Value);
	
protected:
	virtual void __fastcall ChangeDPIScale(int M, int D);
	virtual bool __fastcall CanChangeText();
	virtual System::UnicodeString __fastcall GetText();
	void __fastcall EnterTimerChanged(System::TObject* Sender);
	void __fastcall EditChange(System::TObject* Sender);
	virtual void __fastcall HandleDialogKey(System::Word &Key, System::Classes::TShiftState Shift);
	virtual void __fastcall InitializePopup();
	virtual void __fastcall SelectValueWithString(System::UnicodeString AValue);
	virtual void __fastcall SelectValueWithCharacter(System::WideChar ACharacter);
	virtual void __fastcall SelectFirstValue();
	virtual void __fastcall SelectLastValue();
	virtual void __fastcall SelectNextValue();
	virtual void __fastcall SelectPreviousValue();
	void __fastcall ItemKeyUp(System::TObject* Sender, System::Word &Key, System::WideChar &KeyChar, System::Classes::TShiftState Shift);
	void __fastcall ItemKeyDown(System::TObject* Sender, System::Word &Key, System::WideChar &KeyChar, System::Classes::TShiftState Shift);
	void __fastcall ItemSelected(Fmx::Listbox::TCustomListBox* const Sender, Fmx::Listbox::TListBoxItem* const Item);
	virtual void __fastcall DoItemSelected();
	virtual void __fastcall DoEnter();
	__property CloseOnSelection = {default=1};
	__property System::Classes::TStringList* Items = {read=FItems, write=SetItems};
	__property TTMSFNCToolBarItemPickerItemSelected OnItemSelected = {read=FOnItemSelected, write=FOnItemSelected};
	__property Fmx::Listbox::TListBox* ListBox = {read=FItemSelector};
	__property int SelectedItemIndex = {read=GetSelectedItemIndex, write=SetSelectedItemIndex, default=-1};
	__property System::UnicodeString SelectedItem = {read=GetSelectedItem, write=SetSelectedItem};
	__property bool Editable = {read=FEditable, write=SetEditable, default=0};
	__property System::Classes::TNotifyEvent OnEditChange = {read=FOnEditChange, write=FOnEditChange};
	
public:
	__fastcall virtual TTMSFNCToolBarCustomItemPicker(System::Classes::TComponent* AOwner);
	virtual void __fastcall Draw(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	__fastcall virtual ~TTMSFNCToolBarCustomItemPicker();
	virtual void __fastcall DropDown();
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCToolBarItemPicker : public TTMSFNCToolBarCustomItemPicker
{
	typedef TTMSFNCToolBarCustomItemPicker inherited;
	
__published:
	__property OnItemSelected;
	__property SelectedItemIndex = {default=-1};
	__property Items;
	__property Editable = {default=0};
	__property OnEditChange;
public:
	/* TTMSFNCToolBarCustomItemPicker.Create */ inline __fastcall virtual TTMSFNCToolBarItemPicker(System::Classes::TComponent* AOwner) : TTMSFNCToolBarCustomItemPicker(AOwner) { }
	/* TTMSFNCToolBarCustomItemPicker.Destroy */ inline __fastcall virtual ~TTMSFNCToolBarItemPicker() { }
	
};

#pragma pack(pop)

typedef void __fastcall (__closure *TTMSFNCToolBarFontNamePickerFontNameSelected)(System::TObject* Sender, System::UnicodeString AFontName);

_DECLARE_METACLASS(System::TMetaClass, TTMSFNCToolBarItemPickerClass);

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCToolBarFontNamePicker : public TTMSFNCToolBarCustomItemPicker
{
	typedef TTMSFNCToolBarCustomItemPicker inherited;
	
private:
	TTMSFNCToolBarFontNamePickerFontNameSelected FOnFontNameSelected;
	System::UnicodeString __fastcall GetSelectedFontName();
	void __fastcall SetSelectedFontName(const System::UnicodeString Value);
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	virtual void __fastcall DoItemSelected();
	
public:
	__fastcall virtual TTMSFNCToolBarFontNamePicker(System::Classes::TComponent* AOwner);
	__property System::UnicodeString SelectedFontName = {read=GetSelectedFontName, write=SetSelectedFontName};
	__property SelectedItemIndex = {default=-1};
	__property Items;
	
__published:
	__property TTMSFNCToolBarFontNamePickerFontNameSelected OnFontNameSelected = {read=FOnFontNameSelected, write=FOnFontNameSelected};
	__property CloseOnSelection = {default=1};
	__property Editable = {default=0};
	__property OnEditChange;
public:
	/* TTMSFNCToolBarCustomItemPicker.Destroy */ inline __fastcall virtual ~TTMSFNCToolBarFontNamePicker() { }
	
};

#pragma pack(pop)

typedef void __fastcall (__closure *TTMSFNCToolBarFontSizePickerFontSizeSelected)(System::TObject* Sender, float AFontSize);

_DECLARE_METACLASS(System::TMetaClass, TTMSFNCToolBarFontNamePickerClass);

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCToolBarFontSizePicker : public TTMSFNCToolBarCustomItemPicker
{
	typedef TTMSFNCToolBarCustomItemPicker inherited;
	
private:
	TTMSFNCToolBarFontSizePickerFontSizeSelected FOnFontSizeSelected;
	float __fastcall GetSelectedFontSize();
	void __fastcall SetSelectedFontSize(const float Value);
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	virtual void __fastcall DoItemSelected();
	
public:
	__fastcall virtual TTMSFNCToolBarFontSizePicker(System::Classes::TComponent* AOwner);
	__property float SelectedFontSize = {read=GetSelectedFontSize, write=SetSelectedFontSize};
	__property SelectedItemIndex = {default=-1};
	__property Items;
	
__published:
	__property TTMSFNCToolBarFontSizePickerFontSizeSelected OnFontSizeSelected = {read=FOnFontSizeSelected, write=FOnFontSizeSelected};
	__property CloseOnSelection = {default=1};
	__property Editable = {default=0};
	__property OnEditChange;
public:
	/* TTMSFNCToolBarCustomItemPicker.Destroy */ inline __fastcall virtual ~TTMSFNCToolBarFontSizePicker() { }
	
};

#pragma pack(pop)

typedef void __fastcall (__closure *TTMSFNCToolBarColorPickerColorSelected)(System::TObject* Sender, System::Uitypes::TAlphaColor AColor);

_DECLARE_METACLASS(System::TMetaClass, TTMSFNCToolBarFontSizePickerClass);

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCToolBarColorPicker : public TTMSFNCToolBarButton
{
	typedef TTMSFNCToolBarButton inherited;
	
private:
	Fmx::Tmsfnccolorselector::TTMSFNCColorSelector* FColorSelector;
	TTMSFNCToolBarColorPickerColorSelected FOnColorSelected;
	System::Uitypes::TAlphaColor __fastcall GetSelectedColor();
	void __fastcall SetSelectedColor(const System::Uitypes::TAlphaColor Value);
	int __fastcall GetSelectedItemIndex();
	void __fastcall SetSelectedItemIndex(const int Value);
	Fmx::Tmsfnccolorselector::TTMSFNCColorSelectorItems* __fastcall GetItems();
	void __fastcall SetItems(Fmx::Tmsfnccolorselector::TTMSFNCColorSelectorItems* const Value);
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	virtual void __fastcall SetAdaptToStyle(const bool Value);
	void __fastcall DrawColor(System::Uitypes::TAlphaColor AColor, const System::Types::TRectF &ARect, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics);
	void __fastcall ColorSelected(System::TObject* Sender, System::Uitypes::TAlphaColor AColor);
	virtual void __fastcall DoColorSelected(System::Uitypes::TAlphaColor AColor);
	virtual bool __fastcall CanChangeText();
	
public:
	__fastcall virtual TTMSFNCToolBarColorPicker(System::Classes::TComponent* AOwner);
	bool __fastcall BlockChange();
	Fmx::Tmsfnccolorselector::TTMSFNCColorSelector* __fastcall ColorSelector();
	virtual void __fastcall Draw(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	virtual void __fastcall DrawSelectedColor(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	
__published:
	__property TTMSFNCToolBarColorPickerColorSelected OnColorSelected = {read=FOnColorSelected, write=FOnColorSelected};
	__property System::Uitypes::TAlphaColor SelectedColor = {read=GetSelectedColor, write=SetSelectedColor, default=0};
	__property int SelectedItemIndex = {read=GetSelectedItemIndex, write=SetSelectedItemIndex, nodefault};
	__property Fmx::Tmsfnccolorselector::TTMSFNCColorSelectorItems* Items = {read=GetItems, write=SetItems};
	__property CloseOnSelection = {default=1};
public:
	/* TTMSFNCCustomToolBarButton.Destroy */ inline __fastcall virtual ~TTMSFNCToolBarColorPicker() { }
	
};

#pragma pack(pop)

typedef void __fastcall (__closure *TTMSFNCToolBarBitmapPickerBitmapSelected)(System::TObject* Sender, Fmx::Tmsfnctypes::TTMSFNCBitmap* ABitmap);

_DECLARE_METACLASS(System::TMetaClass, TTMSFNCToolBarColorPickerClass);

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCToolBarBitmapPicker : public TTMSFNCToolBarButton
{
	typedef TTMSFNCToolBarButton inherited;
	
private:
	Fmx::Tmsfncbitmapselector::TTMSFNCBitmapSelector* FBitmapSelector;
	TTMSFNCToolBarBitmapPickerBitmapSelected FOnBitmapSelected;
	Fmx::Tmsfnctypes::TTMSFNCBitmap* __fastcall GetSelectedBitmap();
	int __fastcall GetSelectedItemIndex();
	void __fastcall SetSelectedItemIndex(const int Value);
	Fmx::Tmsfncbitmapselector::TTMSFNCBitmapSelectorItems* __fastcall GetItems();
	void __fastcall SetItems(Fmx::Tmsfncbitmapselector::TTMSFNCBitmapSelectorItems* const Value);
	virtual void __fastcall SetBitmapContainer(Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* const Value);
	
protected:
	virtual System::Types::TRectF __fastcall GetBitmapRect(const System::Types::TRectF &ARect)/* overload */;
	virtual bool __fastcall CanChangeText();
	virtual void __fastcall RegisterRuntimeClasses();
	virtual void __fastcall SetAdaptToStyle(const bool Value);
	void __fastcall BitmapSelected(System::TObject* Sender, Fmx::Tmsfnctypes::TTMSFNCBitmap* ABitmap);
	virtual void __fastcall DoBitmapSelected(Fmx::Tmsfnctypes::TTMSFNCBitmap* ABitmap);
	
public:
	__fastcall virtual TTMSFNCToolBarBitmapPicker(System::Classes::TComponent* AOwner);
	bool __fastcall BlockChange();
	Fmx::Tmsfncbitmapselector::TTMSFNCBitmapSelector* __fastcall BitmapSelector();
	__property Fmx::Tmsfnctypes::TTMSFNCBitmap* SelectedBitmap = {read=GetSelectedBitmap};
	
__published:
	__property TTMSFNCToolBarBitmapPickerBitmapSelected OnBitmapSelected = {read=FOnBitmapSelected, write=FOnBitmapSelected};
	__property int SelectedItemIndex = {read=GetSelectedItemIndex, write=SetSelectedItemIndex, nodefault};
	__property Fmx::Tmsfncbitmapselector::TTMSFNCBitmapSelectorItems* Items = {read=GetItems, write=SetItems};
	__property CloseOnSelection = {default=1};
public:
	/* TTMSFNCCustomToolBarButton.Destroy */ inline __fastcall virtual ~TTMSFNCToolBarBitmapPicker() { }
	
	/* Hoisted overloads: */
	
protected:
	inline System::Types::TRectF __fastcall  GetBitmapRect(){ return TTMSFNCCustomToolBarButton::GetBitmapRect(); }
	
};

#pragma pack(pop)

_DECLARE_METACLASS(System::TMetaClass, TTMSFNCToolBarBitmapPickerClass);

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCustomToolBarAppearance : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	TTMSFNCCustomToolBar* FOwner;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FStroke;
	float FVerticalSpacing;
	float FHorizontalSpacing;
	System::Uitypes::TAlphaColor FDragGripColor;
	bool FDragGrip;
	bool FFlatStyle;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FFont;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FSeparatorStroke;
	bool FSeparator;
	void __fastcall SetFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetHorizontalSpacing(const float Value);
	void __fastcall SetVerticalSpacing(const float Value);
	void __fastcall SetDragGrip(const bool Value);
	void __fastcall SetDragGripColor(const System::Uitypes::TAlphaColor Value);
	bool __fastcall IsHorizontalSpacingStored();
	bool __fastcall IsVerticalSpacingStored();
	void __fastcall SetFlatStyle(const bool Value);
	void __fastcall SetSeparator(const bool Value);
	void __fastcall SetSeparatorStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	
protected:
	void __fastcall FillChanged(System::TObject* Sender);
	void __fastcall StrokeChanged(System::TObject* Sender);
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* Fill = {read=FFill, write=SetFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* Stroke = {read=FStroke, write=SetStroke};
	__property float HorizontalSpacing = {read=FHorizontalSpacing, write=SetHorizontalSpacing, stored=IsHorizontalSpacingStored};
	__property float VerticalSpacing = {read=FVerticalSpacing, write=SetVerticalSpacing, stored=IsVerticalSpacingStored};
	__property bool DragGrip = {read=FDragGrip, write=SetDragGrip, default=1};
	__property System::Uitypes::TAlphaColor DragGripColor = {read=FDragGripColor, write=SetDragGripColor, default=-2894893};
	__property bool FlatStyle = {read=FFlatStyle, write=SetFlatStyle, default=0};
	__property bool Separator = {read=FSeparator, write=SetSeparator, default=0};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* SeparatorStroke = {read=FSeparatorStroke, write=SetSeparatorStroke};
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall TTMSFNCCustomToolBarAppearance(TTMSFNCCustomToolBar* AOwner);
	__fastcall virtual ~TTMSFNCCustomToolBarAppearance();
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCToolBarAppearance : public TTMSFNCCustomToolBarAppearance
{
	typedef TTMSFNCCustomToolBarAppearance inherited;
	
__published:
	__property FlatStyle = {default=0};
	__property Fill;
	__property Stroke;
	__property Separator = {default=0};
	__property SeparatorStroke;
	__property HorizontalSpacing;
	__property VerticalSpacing;
	__property DragGrip = {default=1};
	__property DragGripColor = {default=-2894893};
public:
	/* TTMSFNCCustomToolBarAppearance.Create */ inline __fastcall TTMSFNCToolBarAppearance(TTMSFNCCustomToolBar* AOwner) : TTMSFNCCustomToolBarAppearance(AOwner) { }
	/* TTMSFNCCustomToolBarAppearance.Destroy */ inline __fastcall virtual ~TTMSFNCToolBarAppearance() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCToolBarOptionMenuItem : public Fmx::Menus::TMenuItem
{
	typedef Fmx::Menus::TMenuItem inherited;
	
private:
	Fmx::Controls::TControl* FControl;
	float FGlyphWidth;
	bool FCalculate;
	
protected:
	__property bool Calculate = {read=FCalculate, write=FCalculate, nodefault};
	__property float GlyphWidth = {read=FGlyphWidth, write=FGlyphWidth};
	
public:
	__property Fmx::Controls::TControl* Control = {read=FControl, write=FControl};
public:
	/* TMenuItem.Create */ inline __fastcall virtual TTMSFNCToolBarOptionMenuItem(System::Classes::TComponent* AOwner)/* overload */ : Fmx::Menus::TMenuItem(AOwner) { }
	/* TMenuItem.Destroy */ inline __fastcall virtual ~TTMSFNCToolBarOptionMenuItem() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCToolBarControl : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	int FControlIndex;
	Fmx::Controls::TControl* FControl;
	TTMSFNCToolBarButtonLayout FLayout;
	Fmx::Tmsfnctypes::TTMSFNCBitmap* FBitmap;
	
public:
	__fastcall TTMSFNCToolBarControl();
	__fastcall virtual ~TTMSFNCToolBarControl();
};

#pragma pack(pop)

_DECLARE_METACLASS(System::TMetaClass, TControlClass);

typedef void __fastcall (__closure *TTMSFNCToolBarCustomizeOptionsMenu)(System::TObject* Sender, Fmx::Menus::TPopupMenu* APopupMenu);

typedef void __fastcall (__closure *TTMSFNCToolBarCustomizeOptionsMenuItem)(System::TObject* Sender, Fmx::Controls::TControl* AControl, Fmx::Menus::TMenuItem* AMenuItem);

typedef void __fastcall (__closure *TTMSFNCToolBarCanShowOptionsMenuItem)(System::TObject* Sender, Fmx::Controls::TControl* AControl, bool &ACanShowItem);

typedef void __fastcall (__closure *TTMSFNCToolBarOptionsMenuItemClick)(System::TObject* Sender, Fmx::Controls::TControl* AControl, Fmx::Menus::TMenuItem* AMenuItem, bool &AExecuteDefaultAction);

typedef void __fastcall (__closure *TTMSFNCToolBarIsLastElement)(System::TObject* Sender, Fmx::Controls::TControl* AControl, bool &AIsLastElement);

typedef void __fastcall (__closure *TTMSFNCToolBarAnchorClickEvent)(System::TObject* Sender, System::UnicodeString AAnchor);

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCustomToolBarOptionsMenu : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	TTMSFNCCustomToolBar* FOwner;
	bool FShowItemText;
	bool FShowItemBitmap;
	bool FShowButton;
	float FItemBitmapWidth;
	bool FAutoItemBitmapWidth;
	void __fastcall SetShowButton(const bool Value);
	void __fastcall SetShowItemBitmap(const bool Value);
	void __fastcall SetShowItemText(const bool Value);
	void __fastcall SetAutoItemBitmapWidth(const bool Value);
	void __fastcall SetItemBitmapWidth(const float Value);
	bool __fastcall IsItemBitmapWidthStored();
	
protected:
	__property bool ShowButton = {read=FShowButton, write=SetShowButton, default=1};
	__property bool ShowItemBitmap = {read=FShowItemBitmap, write=SetShowItemBitmap, default=1};
	__property bool ShowItemText = {read=FShowItemText, write=SetShowItemText, default=1};
	__property bool AutoItemBitmapWidth = {read=FAutoItemBitmapWidth, write=SetAutoItemBitmapWidth, default=1};
	__property float ItemBitmapWidth = {read=FItemBitmapWidth, write=SetItemBitmapWidth, stored=IsItemBitmapWidthStored};
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall TTMSFNCCustomToolBarOptionsMenu(TTMSFNCCustomToolBar* AOwner);
	__fastcall virtual ~TTMSFNCCustomToolBarOptionsMenu();
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCToolBarOptionsMenu : public TTMSFNCCustomToolBarOptionsMenu
{
	typedef TTMSFNCCustomToolBarOptionsMenu inherited;
	
__published:
	__property ShowButton = {default=1};
	__property ShowItemBitmap = {default=1};
	__property ShowItemText = {default=1};
	__property AutoItemBitmapWidth = {default=1};
	__property ItemBitmapWidth;
public:
	/* TTMSFNCCustomToolBarOptionsMenu.Create */ inline __fastcall TTMSFNCToolBarOptionsMenu(TTMSFNCCustomToolBar* AOwner) : TTMSFNCCustomToolBarOptionsMenu(AOwner) { }
	/* TTMSFNCCustomToolBarOptionsMenu.Destroy */ inline __fastcall virtual ~TTMSFNCToolBarOptionsMenu() { }
	
};

#pragma pack(pop)

typedef System::Generics::Collections::TObjectList__1<TTMSFNCToolBarControl*>* TTMSFNCToolBarControlObjectList;

typedef System::Generics::Collections::TList__1<TTMSFNCToolBarControl*>* TTMSFNCToolBarControlList;

typedef System::Generics::Collections::TList__1<Fmx::Controls::TControl*>* TTMSFNCControlList;

typedef void __fastcall (__closure *TTMSFNCToolBarDragGripMovingEvent)(System::TObject* Sender, double DeltaX, double DeltaY);

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCToolBarPopup : public Fmx::Tmsfncpopup::TTMSFNCPopup
{
	typedef Fmx::Tmsfncpopup::TTMSFNCPopup inherited;
	
public:
	__property OnClosePopup;
public:
	/* TTMSFNCCustomPopup.Create */ inline __fastcall virtual TTMSFNCToolBarPopup(System::Classes::TComponent* AOwner) : Fmx::Tmsfncpopup::TTMSFNCPopup(AOwner) { }
	/* TTMSFNCCustomPopup.Destroy */ inline __fastcall virtual ~TTMSFNCToolBarPopup() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCustomToolBar : public Fmx::Tmsfnccustomcontrol::TTMSFNCCustomControl
{
	typedef Fmx::Tmsfnccustomcontrol::TTMSFNCCustomControl inherited;
	
private:
	TTMSFNCCustomToolBar* FCompactToolbar;
	TTMSFNCToolBarPopup* FCompactPopup;
	bool FHover;
	bool FHoverP;
	bool FQuickMenuButtonHover;
	bool FQuickMenuButtonHoverP;
	bool FDown;
	bool FQuickMenuButtonDown;
	float FOldWidth;
	bool FOldMenuButtonState;
	Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* FBitmapContainer;
	bool FInsideDrag;
	bool FDragGripMoving;
	bool FDragGripDown;
	System::Types::TPointF FDragGripDownPt;
	float FTotalOptionsMenuWidth;
	System::DelphiInterface<System::Generics::Defaults::IComparer__1<Fmx::Controls::TControl*> > FCompareControls;
	System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCToolBarControl*> > FCompareHiddenControls;
	System::Generics::Collections::TObjectList__1<TTMSFNCToolBarControl*>* FHiddenControls;
	System::Generics::Collections::TObjectList__1<TTMSFNCToolBarControl*>* FCompactControls;
	bool FBlockUpdate;
	bool FBlockResize;
	bool FAutoSize;
	TTMSFNCToolBarAppearance* FAppearance;
	bool FAutoAlign;
	TTMSFNCToolBarDropDownButton* FOptionsMenuButton;
	Fmx::Menus::TPopupMenu* FAutoOptionsMenu;
	TTMSFNCToolBarCustomizeOptionsMenu FOnOptionsMenuCustomize;
	TTMSFNCToolBarCustomizeOptionsMenuItem FOnOptionsMenuItemCustomize;
	System::Classes::TNotifyEvent FOnOptionsMenuButtonClick;
	TTMSFNCToolBarOptionsMenu* FOptionsMenu;
	Fmx::Menus::TPopupMenu* FCustomOptionsMenu;
	TTMSFNCToolBarCanShowOptionsMenuItem FOnOptionsMenuItemCanShow;
	TTMSFNCToolBarElementState FState;
	TTMSFNCToolBarOptionsMenuItemClick FOnOptionsMenuItemClick;
	TTMSFNCToolBarCustomizeOptionsMenuItem FOnOptionsMenuItemApplyStyle;
	System::Classes::TNotifyEvent FOnUpdateDockPanel;
	System::Classes::TNotifyEvent FOnUpdateControls;
	TTMSFNCToolBarIsLastElement FOnIsLastElement;
	TTMSFNCToolBarDragGripMovingEvent FOnDragGripMoving;
	bool FAutoMoveToolBar;
	System::Classes::TNotifyEvent FOnInternalDblClick;
	System::Classes::TNotifyEvent FOnInternalMouseDown;
	System::Classes::TNotifyEvent FOnInternalMouseMove;
	System::Classes::TNotifyEvent FOnInternalMouseUp;
	bool FAutoHeight;
	bool FAutoWidth;
	System::Classes::TNotifyEvent FOnInternalInsertControl;
	bool FAutoStretchHeight;
	System::UnicodeString FText;
	bool FFirstLoad;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FFont;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign FVerticalTextAlign;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextTrimming FTrimming;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign FHorizontalTextAlign;
	bool FWordWrapping;
	bool FTextVisible;
	float FMinimumWidth;
	bool FCompact;
	bool FCanCompact;
	float FCompactWidth;
	TTMSFNCToolBarCompactAppearance* FCompactAppearance;
	Fmx::Tmsfnctypes::TTMSFNCScaledBitmaps* FCompactBitmaps;
	System::Classes::TNotifyEvent FOnCompactClick;
	float FCompactBitmapSize;
	bool FCompactBitmapVisible;
	Fmx::Tmsfnctypes::TTMSFNCScaledBitmaps* FCompactExpanderBitmaps;
	bool FQuickMenuButton;
	TTMSFNCToolBarQuickMenuButtonAppearance* FQuickMenuButtonAppearance;
	System::Classes::TNotifyEvent FOnQuickMenuButtonClick;
	Fmx::Tmsfnctypes::TTMSFNCScaledBitmaps* FQuickMenuButtonBitmaps;
	System::UnicodeString FQuickMenuButtonHint;
	bool FCompactAutoBitmapSize;
	TTMSFNCToolBarAnchorClickEvent FOnAnchorClick;
	void __fastcall SetAppearance(TTMSFNCToolBarAppearance* const Value);
	void __fastcall SetAS(const bool Value);
	void __fastcall SetAutoAlign(const bool Value);
	void __fastcall SetOptionsMenu(TTMSFNCToolBarOptionsMenu* const Value);
	void __fastcall SetState(const TTMSFNCToolBarElementState Value);
	void __fastcall SetAutoHeight(const bool Value);
	void __fastcall SetAutoWidth(const bool Value);
	void __fastcall SetAutoStretchHeight(const bool Value);
	void __fastcall SetText(const System::UnicodeString Value);
	Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* __fastcall GetBitmapContainer();
	void __fastcall SetBitmapContainer(Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* const Value);
	void __fastcall SetFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetHorizontalTextAlign(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign Value);
	void __fastcall SetTrimming(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextTrimming Value);
	void __fastcall SetVerticalTextAlign(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign Value);
	void __fastcall SetWordWrapping(const bool Value);
	void __fastcall SetTextVisible(const bool Value);
	bool __fastcall IsMinimumWidthStored();
	void __fastcall SetMinimumWidth(const float Value);
	void __fastcall SetCompact(const bool Value);
	void __fastcall SetCanCompact(const bool Value);
	bool __fastcall IsCompactWidthStored();
	void __fastcall SetCompactWidth(const float Value);
	void __fastcall SetCompactAppearance(TTMSFNCToolBarCompactAppearance* const Value);
	void __fastcall SetCompactBitmaps(Fmx::Tmsfnctypes::TTMSFNCScaledBitmaps* const Value);
	bool __fastcall IsCompactBitmapSizeStored();
	void __fastcall SetCompactBitmapSize(const float Value);
	void __fastcall SetCompactBitmapVisible(const bool Value);
	void __fastcall SetCompactExpanderBitmaps(Fmx::Tmsfnctypes::TTMSFNCScaledBitmaps* const Value);
	void __fastcall SetQuickMenuButton(const bool Value);
	void __fastcall SetQuickMenuButtonAppearance(TTMSFNCToolBarQuickMenuButtonAppearance* const Value);
	void __fastcall SetQuickMenuButtonBitmaps(Fmx::Tmsfnctypes::TTMSFNCScaledBitmaps* const Value);
	void __fastcall SetCompactAutoBitmapSize(const bool Value);
	System::Types::TRectF __fastcall GetTextRect();
	
protected:
	Fmx::Tmsfncstyles::TTMSFNCStylesManagerComponentArray __fastcall GetSubComponentArray();
	virtual System::UnicodeString __fastcall GetDocURL();
	virtual System::UnicodeString __fastcall GetVersion();
	virtual bool __fastcall CanDrawDesignTime();
	virtual bool __fastcall CanBuildControls();
	virtual TTMSFNCToolBarDropDownButtonClass __fastcall GetOptionsMenuButtonClass();
	virtual TTMSFNCToolBarBitmapPickerClass __fastcall GetBitmapPickerClass();
	virtual TTMSFNCToolBarButtonClass __fastcall GetToolBarButtonClass();
	virtual TTMSFNCToolBarColorPickerClass __fastcall GetColorPickerClass();
	virtual TTMSFNCToolBarItemPickerClass __fastcall GetItemPickerClass();
	virtual TTMSFNCToolBarFontNamePickerClass __fastcall GetFontNamePickerClass();
	virtual TTMSFNCToolBarFontSizePickerClass __fastcall GetFontSizePickerClass();
	virtual TTMSFNCToolBarSeparatorClass __fastcall GetToolBarSeparatorClass();
	virtual System::Types::TSizeF __fastcall GetTextSize();
	virtual TTMSFNCToolBarControl* __fastcall GetHiddenControl(Fmx::Controls::TControl* AControl);
	virtual TTMSFNCToolBarControl* __fastcall GetCompactControl(Fmx::Controls::TControl* AControl);
	virtual int __fastcall GetHiddenControlCount(Fmx::Controls::TControl* AControl);
	virtual int __fastcall GetCompactControlCount();
	virtual System::Types::TRectF __fastcall GetCompactTextRect();
	virtual System::Types::TRectF __fastcall GetCompactBitmapRect(const System::Types::TRectF &ARect);
	virtual float __fastcall GetCompactBitmapSize();
	virtual System::Types::TRectF __fastcall GetQuickMenuButtonRect();
	virtual bool __fastcall HasHint();
	virtual System::UnicodeString __fastcall GetHintString();
	virtual void __fastcall ChangeDPIScale(int M, int D);
	virtual void __fastcall HandleQuickMenuButton();
	void __fastcall CompactAppearanceChanged(System::TObject* Sender);
	void __fastcall QuickMenuButtonAppearanceChanged(System::TObject* Sender);
	void __fastcall CompactBitmapsChanged(System::TObject* Sender);
	void __fastcall CompactExpanderBitmapsChanged(System::TObject* Sender);
	void __fastcall QuickMenuButtonBitmapsChanged(System::TObject* Sender);
	virtual void __fastcall ApplyFlatStyle();
	virtual void __fastcall SetAdaptToStyle(const bool Value);
	virtual void __fastcall ApplyStyle();
	virtual void __fastcall ResetToDefaultStyle();
	virtual void __fastcall HandleMouseDown(System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall HandleMouseMove(System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall HandleMouseLeave();
	virtual void __fastcall HandleMouseUp(System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall HandleCompact();
	virtual void __fastcall DeactivateAllPopups();
	virtual void __fastcall DoCompactClick();
	virtual void __fastcall HandleDblClick(float X, float Y);
	virtual void __fastcall UpdateDockPanel();
	void __fastcall InsertToolBarControl(Fmx::Controls::TControl* AControl, int AIndex);
	virtual void __fastcall DoDragGripMoving(double ADeltaX, double ADeltaY);
	virtual void __fastcall SetVisible(const bool Value);
	virtual void __fastcall DoMatrixChanged(System::TObject* Sender);
	System::Types::TRectF __fastcall GetDragGripRect(bool AInteraction = false);
	virtual void __fastcall CompactControls();
	virtual void __fastcall UncompactControls();
	virtual void __fastcall DoCustomizeOptionsMenu();
	virtual void __fastcall DoCustomizeOptionsMenuItem(Fmx::Controls::TControl* AControl, Fmx::Menus::TMenuItem* AMenuItem);
	virtual void __fastcall DoCanShowOptionsMenuItem(Fmx::Controls::TControl* AControl, bool &ACanShowItem);
	void __fastcall UpdateToolBar(System::TObject* Sender);
	void __fastcall DoIsLastElement(Fmx::Controls::TControl* AControl, bool &ALastElement);
	void __fastcall UpdateToolBarControl(System::TObject* Sender);
	void __fastcall OptionMenuItemClick(System::TObject* Sender);
	void __fastcall OptionMenuItemApplyStyleLookup(System::TObject* Sender);
	void __fastcall OptionsButtonClick(System::TObject* Sender);
	void __fastcall DoCloseCompactPopup(System::TObject* Sender);
	virtual void __fastcall Notification(System::Classes::TComponent* AComponent, System::Classes::TOperation Operation);
	virtual void __fastcall DoAddObject(Fmx::Types::TFmxObject* const AObject);
	virtual void __fastcall DoInsertObject(int Index, Fmx::Types::TFmxObject* const AObject);
	virtual void __fastcall DoRemoveObject(Fmx::Types::TFmxObject* const AObject);
	virtual void __fastcall UpdateControlAfterResize();
	virtual void __fastcall UpdateControls();
	virtual void __fastcall InitializeOptionsMenu();
	virtual void __fastcall DrawDragGrip(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics);
	virtual void __fastcall DrawText(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics);
	virtual void __fastcall DrawCompactBitmap(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	virtual void __fastcall DrawCompactText(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics);
	virtual void __fastcall DrawCompactExpander(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics);
	virtual void __fastcall ShowOptionsMenu(float X, float Y);
	System::UnicodeString __fastcall XYToAnchor(float AX, float AY);
	virtual void __fastcall DoAnchorClick(System::UnicodeString AAnchor);
	virtual void __fastcall Loaded();
	__property bool BlockUpdate = {read=FBlockUpdate, write=FBlockUpdate, nodefault};
	__property System::Classes::TNotifyEvent OnCompactClick = {read=FOnCompactClick, write=FOnCompactClick};
	__property System::Classes::TNotifyEvent OnUpdateControls = {read=FOnUpdateControls, write=FOnUpdateControls};
	__property System::Classes::TNotifyEvent OnUpdateDockPanel = {read=FOnUpdateDockPanel, write=FOnUpdateDockPanel};
	__property System::Classes::TNotifyEvent OnInternalMouseDown = {read=FOnInternalMouseDown, write=FOnInternalMouseDown};
	__property System::Classes::TNotifyEvent OnInternalInsertControl = {read=FOnInternalInsertControl, write=FOnInternalInsertControl};
	__property System::Classes::TNotifyEvent OnInternalMouseUp = {read=FOnInternalMouseUp, write=FOnInternalMouseUp};
	__property System::Classes::TNotifyEvent OnInternalMouseMove = {read=FOnInternalMouseMove, write=FOnInternalMouseMove};
	__property System::Classes::TNotifyEvent OnInternalDblClick = {read=FOnInternalDblClick, write=FOnInternalDblClick};
	__property System::UnicodeString Version = {read=GetVersion};
	__property bool AutoSize = {read=FAutoSize, write=SetAS, default=1};
	__property bool AutoHeight = {read=FAutoHeight, write=SetAutoHeight, default=1};
	__property bool AutoWidth = {read=FAutoWidth, write=SetAutoWidth, default=1};
	__property bool AutoAlign = {read=FAutoAlign, write=SetAutoAlign, default=1};
	__property bool AutoStretchHeight = {read=FAutoStretchHeight, write=SetAutoStretchHeight, default=0};
	__property bool AutoMoveToolBar = {read=FAutoMoveToolBar, write=FAutoMoveToolBar, default=1};
	__property TTMSFNCToolBarAppearance* Appearance = {read=FAppearance, write=SetAppearance};
	__property bool WordWrapping = {read=FWordWrapping, write=SetWordWrapping, default=0};
	__property System::UnicodeString Text = {read=FText, write=SetText};
	__property bool TextVisible = {read=FTextVisible, write=SetTextVisible, default=1};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextTrimming Trimming = {read=FTrimming, write=SetTrimming, default=1};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign HorizontalTextAlign = {read=FHorizontalTextAlign, write=SetHorizontalTextAlign, default=0};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign VerticalTextAlign = {read=FVerticalTextAlign, write=SetVerticalTextAlign, default=0};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* Font = {read=FFont, write=SetFont};
	__property TTMSFNCToolBarOptionsMenu* OptionsMenu = {read=FOptionsMenu, write=SetOptionsMenu};
	__property TTMSFNCToolBarCanShowOptionsMenuItem OnOptionsMenuItemCanShow = {read=FOnOptionsMenuItemCanShow, write=FOnOptionsMenuItemCanShow};
	__property TTMSFNCToolBarCustomizeOptionsMenu OnOptionsMenuCustomize = {read=FOnOptionsMenuCustomize, write=FOnOptionsMenuCustomize};
	__property TTMSFNCToolBarCustomizeOptionsMenuItem OnOptionsMenuItemCustomize = {read=FOnOptionsMenuItemCustomize, write=FOnOptionsMenuItemCustomize};
	__property TTMSFNCToolBarCustomizeOptionsMenuItem OnOptionsMenuItemApplyStyle = {read=FOnOptionsMenuItemApplyStyle, write=FOnOptionsMenuItemApplyStyle};
	__property System::Classes::TNotifyEvent OnOptionsMenuButtonClick = {read=FOnOptionsMenuButtonClick, write=FOnOptionsMenuButtonClick};
	__property TTMSFNCToolBarOptionsMenuItemClick OnOptionsMenuItemClick = {read=FOnOptionsMenuItemClick, write=FOnOptionsMenuItemClick};
	__property Fmx::Menus::TPopupMenu* CustomOptionsMenu = {read=FCustomOptionsMenu, write=FCustomOptionsMenu};
	__property TTMSFNCToolBarElementState State = {read=FState, write=SetState, default=0};
	__property TTMSFNCToolBarIsLastElement OnIsLastElement = {read=FOnIsLastElement, write=FOnIsLastElement};
	__property TTMSFNCToolBarDragGripMovingEvent OnDragGripMoving = {read=FOnDragGripMoving, write=FOnDragGripMoving};
	__property Fmx::Menus::TPopupMenu* AutoOptionsMenu = {read=FAutoOptionsMenu};
	__property Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* BitmapContainer = {read=GetBitmapContainer, write=SetBitmapContainer};
	__property float MinimumWidth = {read=FMinimumWidth, write=SetMinimumWidth, stored=IsMinimumWidthStored};
	__property bool CompactBitmapVisible = {read=FCompactBitmapVisible, write=SetCompactBitmapVisible, default=0};
	__property bool CompactAutoBitmapSize = {read=FCompactAutoBitmapSize, write=SetCompactAutoBitmapSize, default=0};
	__property Fmx::Tmsfnctypes::TTMSFNCScaledBitmaps* CompactBitmaps = {read=FCompactBitmaps, write=SetCompactBitmaps};
	__property bool Compact = {read=FCompact, write=SetCompact, default=0};
	__property bool QuickMenuButton = {read=FQuickMenuButton, write=SetQuickMenuButton, default=0};
	__property System::UnicodeString QuickMenuButtonHint = {read=FQuickMenuButtonHint, write=FQuickMenuButtonHint};
	__property float CompactWidth = {read=FCompactWidth, write=SetCompactWidth, stored=IsCompactWidthStored};
	__property bool CanCompact = {read=FCanCompact, write=SetCanCompact, default=1};
	__property TTMSFNCToolBarCompactAppearance* CompactAppearance = {read=FCompactAppearance, write=SetCompactAppearance};
	__property TTMSFNCToolBarQuickMenuButtonAppearance* QuickMenuButtonAppearance = {read=FQuickMenuButtonAppearance, write=SetQuickMenuButtonAppearance};
	__property float CompactBitmapSize = {read=FCompactBitmapSize, write=SetCompactBitmapSize, stored=IsCompactBitmapSizeStored};
	__property Fmx::Tmsfnctypes::TTMSFNCScaledBitmaps* CompactExpanderBitmaps = {read=FCompactExpanderBitmaps, write=SetCompactExpanderBitmaps};
	__property Fmx::Tmsfnctypes::TTMSFNCScaledBitmaps* QuickMenuButtonBitmaps = {read=FQuickMenuButtonBitmaps, write=SetQuickMenuButtonBitmaps};
	__property System::Classes::TNotifyEvent OnQuickMenuButtonClick = {read=FOnQuickMenuButtonClick, write=FOnQuickMenuButtonClick};
	__property TTMSFNCToolBarAnchorClickEvent OnAnchorClick = {read=FOnAnchorClick, write=FOnAnchorClick};
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual TTMSFNCCustomToolBar(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCCustomToolBar();
	virtual void __fastcall Build();
	virtual void __fastcall Draw(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	virtual void __fastcall SetBounds(float X, float Y, float AWidth, float AHeight);
	virtual bool __fastcall CanExpand();
	virtual bool __fastcall CanShrink();
	virtual bool __fastcall DropDownActive();
	virtual void __fastcall CloseCompactPopup();
	virtual void __fastcall AddCustomControl(Fmx::Controls::TControl* AControl, int AIndex = 0xffffffff);
	virtual Fmx::Controls::TControl* __fastcall AddCustomControlClass(TControlClass AControlClass, int AIndex = 0xffffffff);
	virtual TTMSFNCToolBarButton* __fastcall AddButton(float AWidth = -1.000000E+00f, float AHeight = -1.000000E+00f, System::UnicodeString AResource = System::UnicodeString(), System::UnicodeString AResourceLarge = System::UnicodeString(), System::UnicodeString AText = System::UnicodeString(), int AIndex = 0xffffffff)/* overload */;
	virtual TTMSFNCToolBarSeparator* __fastcall AddSeparator(int AIndex = 0xffffffff);
	virtual TTMSFNCToolBarFontNamePicker* __fastcall AddFontNamePicker(int AIndex = 0xffffffff);
	virtual TTMSFNCToolBarFontSizePicker* __fastcall AddFontSizePicker(int AIndex = 0xffffffff);
	virtual TTMSFNCToolBarColorPicker* __fastcall AddColorPicker(int AIndex = 0xffffffff);
	virtual TTMSFNCToolBarItemPicker* __fastcall AddItemPicker(int AIndex = 0xffffffff);
	virtual TTMSFNCToolBarBitmapPicker* __fastcall AddBitmapPicker(int AIndex = 0xffffffff);
	virtual TTMSFNCToolBarDropDownButton* __fastcall GetOptionsMenuButtonControl();
private:
	void *__ITMSFNCBitmapContainer;	// Fmx::Tmsfncbitmapcontainer::ITMSFNCBitmapContainer 
	void *__ITMSFNCStylesManager;	// Fmx::Tmsfncstyles::ITMSFNCStylesManager 
	
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

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCToolBar : public TTMSFNCCustomToolBar
{
	typedef TTMSFNCCustomToolBar inherited;
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	
__published:
	__property OnOptionsMenuButtonClick;
	__property OnOptionsMenuItemCanShow;
	__property OnOptionsMenuCustomize;
	__property OnOptionsMenuItemCustomize;
	__property OnOptionsMenuItemApplyStyle;
	__property OnOptionsMenuItemClick;
	__property OnIsLastElement;
	__property OnDragGripMoving;
	__property OnQuickMenuButtonClick;
	__property OnAnchorClick;
	__property Version = {default=0};
	__property AutoHeight = {default=1};
	__property AutoWidth = {default=1};
	__property AutoSize = {default=1};
	__property AutoAlign = {default=1};
	__property AutoStretchHeight = {default=0};
	__property AutoMoveToolBar = {default=1};
	__property Appearance;
	__property CanCompact = {default=1};
	__property OnCompactClick;
	__property CompactBitmapVisible = {default=0};
	__property CompactBitmaps;
	__property Compact = {default=0};
	__property CompactWidth;
	__property CompactAppearance;
	__property CompactBitmapSize;
	__property CompactAutoBitmapSize = {default=0};
	__property QuickMenuButtonHint = {default=0};
	__property QuickMenuButton = {default=0};
	__property QuickMenuButtonAppearance;
	__property MinimumWidth;
	__property WordWrapping = {default=0};
	__property Text = {default=0};
	__property Trimming = {default=1};
	__property HorizontalTextAlign = {default=0};
	__property VerticalTextAlign = {default=0};
	__property Font;
	__property OptionsMenu;
	__property CustomOptionsMenu;
	__property State = {default=0};
public:
	/* TTMSFNCCustomToolBar.Create */ inline __fastcall virtual TTMSFNCToolBar(System::Classes::TComponent* AOwner) : TTMSFNCCustomToolBar(AOwner) { }
	/* TTMSFNCCustomToolBar.Destroy */ inline __fastcall virtual ~TTMSFNCToolBar() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCustomDockPanelAppearance : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	TTMSFNCCustomDockPanel* FOwner;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FStroke;
	Fmx::Tmsfnctypes::TTMSFNCMargins* FMargins;
	void __fastcall SetFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetMargins(Fmx::Tmsfnctypes::TTMSFNCMargins* const Value);
	
protected:
	void __fastcall FillChanged(System::TObject* Sender);
	void __fastcall StrokeChanged(System::TObject* Sender);
	void __fastcall MarginsChanged(System::TObject* Sender);
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* Fill = {read=FFill, write=SetFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* Stroke = {read=FStroke, write=SetStroke};
	__property Fmx::Tmsfnctypes::TTMSFNCMargins* Margins = {read=FMargins, write=SetMargins};
	
public:
	__fastcall TTMSFNCCustomDockPanelAppearance(TTMSFNCCustomDockPanel* AOwner);
	__fastcall virtual ~TTMSFNCCustomDockPanelAppearance();
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCDockPanelAppearance : public TTMSFNCCustomDockPanelAppearance
{
	typedef TTMSFNCCustomDockPanelAppearance inherited;
	
__published:
	__property Fill;
	__property Stroke;
public:
	/* TTMSFNCCustomDockPanelAppearance.Create */ inline __fastcall TTMSFNCDockPanelAppearance(TTMSFNCCustomDockPanel* AOwner) : TTMSFNCCustomDockPanelAppearance(AOwner) { }
	/* TTMSFNCCustomDockPanelAppearance.Destroy */ inline __fastcall virtual ~TTMSFNCDockPanelAppearance() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCustomDockPanel : public Fmx::Tmsfnccustomcontrol::TTMSFNCCustomControl
{
	typedef Fmx::Tmsfnccustomcontrol::TTMSFNCCustomControl inherited;
	
private:
	bool FBlockUpdate;
	TTMSFNCDockPanelAppearance* FAppearance;
	bool FAutoSize;
	bool FAutoAlign;
	TTMSFNCToolBarElementState FState;
	void __fastcall SetAppearance(TTMSFNCDockPanelAppearance* const Value);
	void __fastcall SetAutoAlign(const bool Value);
	void __fastcall SetAS(const bool Value);
	void __fastcall SetState(const TTMSFNCToolBarElementState Value);
	
protected:
	virtual System::UnicodeString __fastcall GetDocURL();
	virtual System::UnicodeString __fastcall GetVersion();
	virtual void __fastcall SetAdaptToStyle(const bool Value);
	virtual void __fastcall UpdateControls();
	virtual void __fastcall InitializeControls();
	virtual void __fastcall RearrangeControls();
	void __fastcall UpdateDockPanel(System::TObject* Sender);
	virtual void __fastcall ApplyStyle();
	virtual void __fastcall ResetToDefaultStyle();
	virtual void __fastcall DoAddObject(Fmx::Types::TFmxObject* const AObject);
	virtual void __fastcall DoInsertObject(int Index, Fmx::Types::TFmxObject* const AObject);
	virtual void __fastcall DoRemoveObject(Fmx::Types::TFmxObject* const AObject);
	__property System::UnicodeString Version = {read=GetVersion};
	__property TTMSFNCDockPanelAppearance* Appearance = {read=FAppearance, write=SetAppearance};
	__property bool AutoSize = {read=FAutoSize, write=SetAS, default=1};
	__property bool AutoAlign = {read=FAutoAlign, write=SetAutoAlign, default=1};
	__property TTMSFNCToolBarElementState State = {read=FState, write=SetState, default=0};
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual TTMSFNCCustomDockPanel(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCCustomDockPanel();
	virtual void __fastcall Draw(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	TTMSFNCToolBar* __fastcall AddToolBar(int AIndex = 0xffffffff);
	virtual void __fastcall SetBounds(float X, float Y, float AWidth, float AHeight);
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCDockPanel : public TTMSFNCCustomDockPanel
{
	typedef TTMSFNCCustomDockPanel inherited;
	
__published:
	__property Version = {default=0};
	__property Appearance;
	__property AutoSize = {default=1};
	__property AutoAlign = {default=1};
	__property State = {default=0};
public:
	/* TTMSFNCCustomDockPanel.Create */ inline __fastcall virtual TTMSFNCDockPanel(System::Classes::TComponent* AOwner) : TTMSFNCCustomDockPanel(AOwner) { }
	/* TTMSFNCCustomDockPanel.Destroy */ inline __fastcall virtual ~TTMSFNCDockPanel() { }
	
};

#pragma pack(pop)

typedef Fmx::Controls::TControl TTMSFNCToolBarParent;

//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x2);
static constexpr System::Int8 BLD_VER = System::Int8(0x2);
}	/* namespace Tmsfnctoolbar */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCTOOLBAR)
using namespace Fmx::Tmsfnctoolbar;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfnctoolbarHPP
