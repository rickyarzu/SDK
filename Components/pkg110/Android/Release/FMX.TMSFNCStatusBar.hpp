// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCStatusBar.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncstatusbarHPP
#define Fmx_TmsfncstatusbarHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <System.SysUtils.hpp>
#include <System.Types.hpp>
#include <System.UITypes.hpp>
#include <FMX.Types.hpp>
#include <FMX.Controls.hpp>
#include <FMX.TMSFNCCustomControl.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.TMSFNCGraphics.hpp>
#include <FMX.TMSFNCGraphicsTypes.hpp>
#include <FMX.TMSFNCBitmapContainer.hpp>
#include <FMX.TMSFNCUtils.hpp>
#include <FMX.TMSFNCStyles.hpp>
#include <System.Generics.Collections.hpp>
#include <System.Generics.Defaults.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncstatusbar
{
//-- forward type declarations -----------------------------------------------
struct TTMSFNCStatusBarPanelAnchor;
class DELPHICLASS TTMSFNCStatusBarAppearance;
class DELPHICLASS TTMSFNCStatusBarProgressAppearance;
class DELPHICLASS TTMSFNCStatusBarPanel;
class DELPHICLASS TTMSFNCStatusBarPanels;
class DELPHICLASS TTMSFNCCustomStatusBar;
class DELPHICLASS TTMSFNCStatusBar;
//-- type declarations -------------------------------------------------------
enum DECLSPEC_DENUM TTMSFNCStatusBarPanelStyle : unsigned char { spsHTML, spsText, spsOwnerDraw, spsTime, spsDate, spsProgress, spsImage, spsImageList, spsEllipsText };

enum DECLSPEC_DENUM TTMSFNCStatusBarVerticalPanelAlignment : unsigned char { spaTop, spaCenter, spaBottom };

enum DECLSPEC_DENUM TTMSFNCStatusBarPanelProgressIndication : unsigned char { ppiPercentage, ppiAbsolute };

struct DECLSPEC_DRECORD TTMSFNCStatusBarPanelAnchor
{
public:
	System::UnicodeString AAnchor;
	int AIndex;
};


#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCStatusBarAppearance : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FFont;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FFill;
	System::Classes::TNotifyEvent FOnChange;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FStroke;
	void __fastcall SetFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	
protected:
	void __fastcall Changed();
	void __fastcall FillChanged(System::TObject* Sender);
	void __fastcall FontChanged(System::TObject* Sender);
	void __fastcall StrokeChanged(System::TObject* Sender);
	
public:
	__fastcall TTMSFNCStatusBarAppearance();
	__fastcall virtual ~TTMSFNCStatusBarAppearance();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__property System::Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
	
__published:
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* Font = {read=FFont, write=SetFont};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* Fill = {read=FFill, write=SetFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* Stroke = {read=FStroke, write=SetStroke};
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCStatusBarProgressAppearance : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	int FMax;
	int FLevel1Perc;
	bool FShowIndication;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FBackgroundFill;
	int FMin;
	TTMSFNCStatusBarPanelProgressIndication FIndication;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FLevel2Fill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FLevel3Fill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FLevel0Fill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FLevel1Fill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FBorderStroke;
	System::Classes::TNotifyEvent FOnChange;
	int FPosition;
	int FLevel2Perc;
	void __fastcall SetBackgroundFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetBorderStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetIndication(const TTMSFNCStatusBarPanelProgressIndication Value);
	void __fastcall SetLevel0Fill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetLevel1Fill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetLevel1Perc(const int Value);
	void __fastcall SetLevel2Fill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetLevel2Perc(const int Value);
	void __fastcall SetLevel3Fill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetMax(const int Value);
	void __fastcall SetMin(const int Value);
	void __fastcall SetPosition(const int Value);
	void __fastcall SetShowIndication(const bool Value);
	
protected:
	void __fastcall Changed();
	void __fastcall FillChanged(System::TObject* Sender);
	void __fastcall StrokeChanged(System::TObject* Sender);
	
public:
	__fastcall TTMSFNCStatusBarProgressAppearance();
	__fastcall virtual ~TTMSFNCStatusBarProgressAppearance();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__property System::Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
	
__published:
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* BackgroundFill = {read=FBackgroundFill, write=SetBackgroundFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* BorderStroke = {read=FBorderStroke, write=SetBorderStroke};
	__property TTMSFNCStatusBarPanelProgressIndication Indication = {read=FIndication, write=SetIndication, default=0};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* Level0Fill = {read=FLevel0Fill, write=SetLevel0Fill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* Level1Fill = {read=FLevel1Fill, write=SetLevel1Fill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* Level2Fill = {read=FLevel2Fill, write=SetLevel2Fill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* Level3Fill = {read=FLevel3Fill, write=SetLevel3Fill};
	__property int Level1Perc = {read=FLevel1Perc, write=SetLevel1Perc, default=70};
	__property int Level2Perc = {read=FLevel2Perc, write=SetLevel2Perc, default=90};
	__property int Max = {read=FMax, write=SetMax, default=100};
	__property int Min = {read=FMin, write=SetMin, default=0};
	__property int Position = {read=FPosition, write=SetPosition, nodefault};
	__property bool ShowIndication = {read=FShowIndication, write=SetShowIndication, default=1};
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCStatusBarPanel : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	bool FEnabled;
	bool FButton;
	System::UnicodeString FTimeFormat;
	int FWidth;
	System::Classes::TAlignment FAlignment;
	int FMinWidth;
	System::UnicodeString FDateFormat;
	TTMSFNCStatusBarVerticalPanelAlignment FVerticalAlign;
	System::UnicodeString FText;
	TTMSFNCStatusBarPanelStyle FStyle;
	int FImageIndex;
	int FImageCount;
	bool FAutoSize;
	System::UnicodeString FHint;
	TTMSFNCStatusBarProgressAppearance* FProgress;
	Fmx::Tmsfnctypes::TTMSFNCPoint* FOffset;
	bool FVisible;
	Fmx::Controls::TControl* FControl;
	Fmx::Tmsfnccustomcontrol::TTMSFNCControlAlignment FControlAlign;
	Fmx::Controls::TControl* FControlParent;
	bool FControlVisible;
	Fmx::Types::TAlignLayout FControlPrevAlign;
	float FControlLeft;
	float FControlTop;
	float FControlWidth;
	float FControlHeight;
	System::Uitypes::TAlphaColor FURLColor;
	void __fastcall SetAlignment(const System::Classes::TAlignment Value);
	void __fastcall SetButton(const bool Value);
	void __fastcall SetDateFormat(const System::UnicodeString Value);
	void __fastcall SetEnabled(const bool Value);
	void __fastcall SetMinWidth(const int Value);
	void __fastcall SetStyle(const TTMSFNCStatusBarPanelStyle Value);
	void __fastcall SetText(const System::UnicodeString Value);
	void __fastcall SetTimeFormat(const System::UnicodeString Value);
	void __fastcall SetVerticalAlign(const TTMSFNCStatusBarVerticalPanelAlignment Value);
	void __fastcall SetWidth(const int Value);
	void __fastcall SetImageIndex(const int Value);
	void __fastcall SetImageCount(const int Value);
	void __fastcall SetAutoSize(const bool Value);
	void __fastcall SetHint(const System::UnicodeString Value);
	void __fastcall SetProgress(TTMSFNCStatusBarProgressAppearance* const Value);
	void __fastcall SetOffset(Fmx::Tmsfnctypes::TTMSFNCPoint* const Value);
	bool __fastcall IsDateFormatStored();
	bool __fastcall IsTextStored();
	bool __fastcall IsTimeFormatStored();
	bool __fastcall IsHintStored();
	void __fastcall SetVisible(const bool Value);
	void __fastcall SetControl(Fmx::Controls::TControl* const Value);
	void __fastcall SetControlAlign(const Fmx::Tmsfnccustomcontrol::TTMSFNCControlAlignment Value);
	void __fastcall SetURLColor(const System::Uitypes::TAlphaColor Value);
	
protected:
	void __fastcall Update();
	void __fastcall OffsetChanged(System::TObject* Sender);
	void __fastcall ProgressChanged(System::TObject* Sender);
	void __fastcall UpdateControlBounds();
	
public:
	__fastcall virtual TTMSFNCStatusBarPanel(System::Classes::TCollection* ACollection);
	__fastcall virtual ~TTMSFNCStatusBarPanel();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	void __fastcall StepIt();
	
__published:
	__property bool AutoSize = {read=FAutoSize, write=SetAutoSize, default=0};
	__property System::UnicodeString Text = {read=FText, write=SetText, stored=IsTextStored};
	__property TTMSFNCStatusBarPanelStyle Style = {read=FStyle, write=SetStyle, default=0};
	__property int MinWidth = {read=FMinWidth, write=SetMinWidth, default=20};
	__property bool Enabled = {read=FEnabled, write=SetEnabled, default=1};
	__property System::UnicodeString DateFormat = {read=FDateFormat, write=SetDateFormat, stored=IsDateFormatStored};
	__property System::UnicodeString TimeFormat = {read=FTimeFormat, write=SetTimeFormat, stored=IsTimeFormatStored};
	__property System::Classes::TAlignment Alignment = {read=FAlignment, write=SetAlignment, default=0};
	__property int ImageIndex = {read=FImageIndex, write=SetImageIndex, default=-1};
	__property int ImageCount = {read=FImageCount, write=SetImageCount, default=1};
	__property TTMSFNCStatusBarVerticalPanelAlignment VerticalAlign = {read=FVerticalAlign, write=SetVerticalAlign, default=1};
	__property bool Button = {read=FButton, write=SetButton, default=0};
	__property int Width = {read=FWidth, write=SetWidth, nodefault};
	__property System::UnicodeString Hint = {read=FHint, write=SetHint, stored=IsHintStored};
	__property TTMSFNCStatusBarProgressAppearance* Progress = {read=FProgress, write=SetProgress};
	__property Fmx::Tmsfnctypes::TTMSFNCPoint* Offset = {read=FOffset, write=SetOffset};
	__property bool Visible = {read=FVisible, write=SetVisible, default=1};
	__property System::Uitypes::TAlphaColor URLColor = {read=FURLColor, write=SetURLColor, default=-16776961};
	__property Fmx::Controls::TControl* Control = {read=FControl, write=SetControl};
	__property Fmx::Tmsfnccustomcontrol::TTMSFNCControlAlignment ControlAlign = {read=FControlAlign, write=SetControlAlign, default=5};
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCStatusBarPanels : public System::Classes::TCollection
{
	typedef System::Classes::TCollection inherited;
	
private:
	TTMSFNCCustomStatusBar* FOwner;
	System::Classes::TNotifyEvent FOnChange;
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCStatusBarPanel* const Value);
	HIDESBASE TTMSFNCStatusBarPanel* __fastcall GetItem(int Index);
	
protected:
	virtual void __fastcall DoChange();
	virtual void __fastcall Update(System::Classes::TCollectionItem* Item);
	
public:
	__fastcall TTMSFNCStatusBarPanels(TTMSFNCCustomStatusBar* AOwner);
	HIDESBASE TTMSFNCStatusBarPanel* __fastcall Add();
	__property TTMSFNCStatusBarPanel* Items[int Index] = {read=GetItem, write=SetItem};
	__property System::Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCStatusBarPanels() { }
	
};

#pragma pack(pop)

typedef void __fastcall (__closure *TTMSFNCStatusBarBeforeDrawPanelEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCStatusBarPanel* APanel, bool AAllow, bool ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCStatusBarAfterDrawPanelEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCStatusBarPanel* APanel);

typedef void __fastcall (__closure *TTMSFNCStatusBarDrawCustomPanelEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCStatusBarPanel* APanel);

typedef void __fastcall (__closure *TTMSFNCStatusBarPanelLeftClickEvent)(System::TObject* Sender, int PanelIndex);

typedef void __fastcall (__closure *TTMSFNCStatusBarPanelRightClickEvent)(System::TObject* Sender, int PanelIndex);

typedef void __fastcall (__closure *TTMSFNCStatusBarPanelAnchorClickEvent)(System::TObject* Sender, TTMSFNCStatusBarPanel* APanel, System::UnicodeString AAnchor);

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCustomStatusBar : public Fmx::Tmsfnccustomcontrol::TTMSFNCCustomControl
{
	typedef Fmx::Tmsfnccustomcontrol::TTMSFNCCustomControl inherited;
	
private:
	Fmx::Types::TTimer* FTimer;
	int FHoverPanelIndex;
	int FDownPanelIndex;
	Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* FBitmapContainer;
	TTMSFNCStatusBarPanels* FPanels;
	int FPanelPos;
	TTMSFNCStatusBarDrawCustomPanelEvent FOnDrawCustomPanel;
	TTMSFNCStatusBarPanelLeftClickEvent FOnPanelLeftClick;
	TTMSFNCStatusBarPanelRightClickEvent FOnPanelRightClick;
	TTMSFNCStatusBarPanelAnchorClickEvent FOnAnchorClick;
	TTMSFNCStatusBarAfterDrawPanelEvent FOnAfterDrawPanel;
	TTMSFNCStatusBarBeforeDrawPanelEvent FOnBeforeDrawPanel;
	TTMSFNCStatusBarAppearance* FAppearance;
	bool FShowSplitter;
	bool FMouseDown;
	int FVerMargin;
	void __fastcall SetPanels(TTMSFNCStatusBarPanels* const Value);
	void __fastcall SetBitmapContainer(Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* const Value);
	void __fastcall SetAppearance(TTMSFNCStatusBarAppearance* const Value);
	void __fastcall SetShowSplitter(const bool Value);
	Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* __fastcall GetBitmapContainer();
	
protected:
	virtual void __fastcall ChangeDPIScale(int M, int D);
	virtual void __fastcall DoAnchorClick(TTMSFNCStatusBarPanel* APanel, System::UnicodeString AAnchor);
	virtual void __fastcall DoBeforeDrawPanel(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCStatusBarPanel* APanel, bool AAllow, bool ADefaultDraw);
	virtual void __fastcall DoAfterDrawPanel(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCStatusBarPanel* APanel);
	virtual void __fastcall Notification(System::Classes::TComponent* AComponent, System::Classes::TOperation Operation);
	virtual void __fastcall Draw(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	virtual void __fastcall DoAfterDraw(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	virtual void __fastcall HandleMouseDown(System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall HandleMouseMove(System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall HandleMouseUp(System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall HandleMouseLeave();
	void __fastcall DrawAllPanels(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	void __fastcall DrawPanel(TTMSFNCStatusBarPanel* APanel, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	void __fastcall DrawProgressBar(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCStatusBarPanel* APanel);
	void __fastcall AutoSizePanels();
	virtual void __fastcall Loaded();
	virtual void __fastcall ApplyStyle();
	virtual void __fastcall ResetToDefaultStyle();
	void __fastcall UpdateStatusBar();
	void __fastcall PanelsChanged(System::TObject* Sender);
	void __fastcall AppearanceChanged(System::TObject* Sender);
	void __fastcall StatusBarTimer(System::TObject* Sender);
	virtual System::UnicodeString __fastcall GetVersion();
	virtual System::UnicodeString __fastcall GetHintString();
	virtual bool __fastcall HasHint();
	int __fastcall GetLastPanelWidth();
	int __fastcall GetTextWidth(System::UnicodeString AText, bool IsHTML);
	int __fastcall GetPanelIndex(float AX, float AY);
	TTMSFNCStatusBarPanelAnchor __fastcall XYToPanelAnchor(float AX, float AY);
	__property Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* BitmapContainer = {read=GetBitmapContainer, write=SetBitmapContainer};
	__property TTMSFNCStatusBarPanels* Panels = {read=FPanels, write=SetPanels};
	__property TTMSFNCStatusBarAppearance* PanelAppearance = {read=FAppearance, write=SetAppearance};
	__property bool ShowSplitter = {read=FShowSplitter, write=SetShowSplitter, default=1};
	__property TTMSFNCStatusBarDrawCustomPanelEvent OnDrawCustomPanel = {read=FOnDrawCustomPanel, write=FOnDrawCustomPanel};
	__property TTMSFNCStatusBarPanelLeftClickEvent OnPanelLeftClick = {read=FOnPanelLeftClick, write=FOnPanelLeftClick};
	__property TTMSFNCStatusBarPanelRightClickEvent OnPanelRightClick = {read=FOnPanelRightClick, write=FOnPanelRightClick};
	__property TTMSFNCStatusBarPanelAnchorClickEvent OnAnchorClick = {read=FOnAnchorClick, write=FOnAnchorClick};
	__property TTMSFNCStatusBarBeforeDrawPanelEvent OnBeforeDrawPanel = {read=FOnBeforeDrawPanel, write=FOnBeforeDrawPanel};
	__property TTMSFNCStatusBarAfterDrawPanelEvent OnAfterDrawPanel = {read=FOnAfterDrawPanel, write=FOnAfterDrawPanel};
	
public:
	__fastcall virtual TTMSFNCCustomStatusBar(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCCustomStatusBar();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	TTMSFNCStatusBarPanel* __fastcall XYToPanel(float AX, float AY);
	System::Types::TRectF __fastcall GetPanelRect(int Index);
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

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCStatusBar : public TTMSFNCCustomStatusBar
{
	typedef TTMSFNCCustomStatusBar inherited;
	
__published:
	__property Align = {default=4};
	__property Panels;
	__property PanelAppearance;
	__property BitmapContainer;
	__property ShowSplitter = {default=1};
	__property Fill;
	__property Stroke;
	__property OnDrawCustomPanel;
	__property OnPanelLeftClick;
	__property OnPanelRightClick;
	__property OnAnchorClick;
	__property OnBeforeDrawPanel;
	__property OnAfterDrawPanel;
public:
	/* TTMSFNCCustomStatusBar.Create */ inline __fastcall virtual TTMSFNCStatusBar(System::Classes::TComponent* AOwner) : TTMSFNCCustomStatusBar(AOwner) { }
	/* TTMSFNCCustomStatusBar.Destroy */ inline __fastcall virtual ~TTMSFNCStatusBar() { }
	
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x1);
static constexpr System::Int8 REL_VER = System::Int8(0x1);
static constexpr System::Int8 BLD_VER = System::Int8(0x0);
}	/* namespace Tmsfncstatusbar */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCSTATUSBAR)
using namespace Fmx::Tmsfncstatusbar;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncstatusbarHPP
