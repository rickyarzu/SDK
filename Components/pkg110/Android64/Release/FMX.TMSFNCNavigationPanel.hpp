// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCNavigationPanel.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncnavigationpanelHPP
#define Fmx_TmsfncnavigationpanelHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <FMX.TMSFNCPanel.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.Controls.hpp>
#include <FMX.TMSFNCGraphicsTypes.hpp>
#include <FMX.TMSFNCCustomControl.hpp>
#include <FMX.TMSFNCGraphics.hpp>
#include <FMX.TMSFNCBitmapContainer.hpp>
#include <FMX.ExtCtrls.hpp>
#include <System.Types.hpp>
#include <System.Generics.Collections.hpp>
#include <System.UITypes.hpp>
#include <FMX.Types.hpp>
#include <FMX.Menus.hpp>
#include <System.TypInfo.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncnavigationpanel
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCNavigationPanelContainer;
class DELPHICLASS TTMSFNCNavigationPanelItem;
class DELPHICLASS TTMSFNCNavigationPanelItems;
struct TTMSFNCNavigationPanelDisplayItem;
class DELPHICLASS TTMSFNCNavigationPanelDisplayItems;
class DELPHICLASS TTMSFNCNavigationPanelAppearance;
class DELPHICLASS TTMSFNCNavigationPanelItemsAppearance;
class DELPHICLASS TTMSFNCNavigationPanelButtonsAppearance;
class DELPHICLASS TTMSFNCNavigationPanelSplitter;
class DELPHICLASS TTMSFNCCustomNavigationPanel;
class DELPHICLASS TTMSFNCNavigationPanel;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TTMSFNCNavigationPanelContainer : public Fmx::Tmsfncpanel::TTMSFNCPanel
{
	typedef Fmx::Tmsfncpanel::TTMSFNCPanel inherited;
	
private:
	bool FIsDestroying;
	TTMSFNCNavigationPanelItem* FPanel;
	TTMSFNCCustomNavigationPanel* FNavigationPanel;
	int FPanelIndex;
	bool FIsActive;
	void __fastcall SetNavigationPanel(TTMSFNCCustomNavigationPanel* const Value);
	void __fastcall SetIsActive(const bool Value);
	void __fastcall SetPanelIndex(const int Value);
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	virtual void __fastcall ReadState(System::Classes::TReader* Reader);
	virtual void __fastcall DefineProperties(System::Classes::TFiler* Filer);
	void __fastcall ReadPanelIndex(System::Classes::TReader* Reader);
	void __fastcall WritePanelIndex(System::Classes::TWriter* Writer);
	void __fastcall ReadIsActive(System::Classes::TReader* Reader);
	void __fastcall WriteIsActive(System::Classes::TWriter* Writer);
	void __fastcall SetPanel();
	DYNAMIC void __fastcall SetParentComponent(System::Classes::TComponent* Value);
	
public:
	__fastcall virtual TTMSFNCNavigationPanelContainer(System::Classes::TComponent* AOwner)/* overload */;
	__fastcall TTMSFNCNavigationPanelContainer(System::Classes::TComponent* AOwner, TTMSFNCNavigationPanelItem* APanel)/* overload */;
	__fastcall virtual ~TTMSFNCNavigationPanelContainer();
	__property TTMSFNCCustomNavigationPanel* NavigationPanel = {read=FNavigationPanel, write=SetNavigationPanel};
	__property int PanelIndex = {read=FPanelIndex, write=SetPanelIndex, nodefault};
	__property bool IsActive = {read=FIsActive, write=SetIsActive, nodefault};
};


enum DECLSPEC_DENUM TTMSFNCNavigationPanelItemKind : unsigned char { pikItem, pikButton };

class PASCALIMPLEMENTATION TTMSFNCNavigationPanelItem : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	TTMSFNCNavigationPanelContainer* FContainer;
	TTMSFNCCustomNavigationPanel* FNavigationPanel;
	System::UnicodeString FText;
	bool FEnabled;
	bool FVisible;
	TTMSFNCNavigationPanelItemKind FKind;
	Fmx::Tmsfnctypes::TTMSFNCScaledBitmaps* FBitmaps;
	System::UnicodeString FHint;
	System::UnicodeString FBadge;
	System::UnicodeString FCompactText;
	void __fastcall SetText(const System::UnicodeString Value);
	void __fastcall SetEnabled(const bool Value);
	void __fastcall SetVisible(const bool Value);
	void __fastcall SetKind(const TTMSFNCNavigationPanelItemKind Value);
	void __fastcall SetBitmaps(Fmx::Tmsfnctypes::TTMSFNCScaledBitmaps* const Value);
	void __fastcall SetBadge(const System::UnicodeString Value);
	void __fastcall SetCompactText(const System::UnicodeString Value);
	
protected:
	void __fastcall UpdatePanel();
	void __fastcall BitmapsChanged(System::TObject* Sender);
	virtual void __fastcall SetIndex(int Value);
	
public:
	__fastcall virtual TTMSFNCNavigationPanelItem(System::Classes::TCollection* Collection);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual ~TTMSFNCNavigationPanelItem();
	TTMSFNCCustomNavigationPanel* __fastcall NavigationPanel();
	__property TTMSFNCNavigationPanelContainer* Container = {read=FContainer};
	
__published:
	__property System::UnicodeString Text = {read=FText, write=SetText};
	__property System::UnicodeString CompactText = {read=FCompactText, write=SetCompactText};
	__property System::UnicodeString Hint = {read=FHint, write=FHint};
	__property System::UnicodeString Badge = {read=FBadge, write=SetBadge};
	__property bool Enabled = {read=FEnabled, write=SetEnabled, default=1};
	__property bool Visible = {read=FVisible, write=SetVisible, default=1};
	__property TTMSFNCNavigationPanelItemKind Kind = {read=FKind, write=SetKind, default=0};
	__property Fmx::Tmsfnctypes::TTMSFNCScaledBitmaps* Bitmaps = {read=FBitmaps, write=SetBitmaps};
};


class PASCALIMPLEMENTATION TTMSFNCNavigationPanelItems : public Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCNavigationPanelItem*>
{
	typedef Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCNavigationPanelItem*> inherited;
	
public:
	TTMSFNCNavigationPanelItem* operator[](int Index) { return this->PanelItems[Index]; }
	
private:
	TTMSFNCCustomNavigationPanel* FNavigationPanel;
	TTMSFNCNavigationPanelItem* __fastcall GetPanelItem(int Index);
	void __fastcall SetPanelItem(int Index, TTMSFNCNavigationPanelItem* const Value);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall GetPanelItemClass();
	
public:
	TTMSFNCCustomNavigationPanel* __fastcall NavigationPanel();
	__fastcall virtual TTMSFNCNavigationPanelItems(TTMSFNCCustomNavigationPanel* ANavigationPanel);
	HIDESBASE TTMSFNCNavigationPanelItem* __fastcall Add();
	HIDESBASE TTMSFNCNavigationPanelItem* __fastcall Insert(int Index);
	int __fastcall IndexOfContainer(System::Classes::TComponent* AValue);
	HIDESBASE virtual void __fastcall Clear();
	__property TTMSFNCNavigationPanelItem* PanelItems[int Index] = {read=GetPanelItem, write=SetPanelItem/*, default*/};
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCNavigationPanelItems() { }
	
};


struct DECLSPEC_DRECORD TTMSFNCNavigationPanelDisplayItem
{
public:
	System::Types::TRectF Rect;
	TTMSFNCNavigationPanelItem* Panel;
};


class PASCALIMPLEMENTATION TTMSFNCNavigationPanelDisplayItems : public System::Generics::Collections::TList__1<TTMSFNCNavigationPanelDisplayItem>
{
	typedef System::Generics::Collections::TList__1<TTMSFNCNavigationPanelDisplayItem> inherited;
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCNavigationPanel_TTMSFNCNavigationPanelDisplayItem>.Create */ inline __fastcall TTMSFNCNavigationPanelDisplayItems()/* overload */ : System::Generics::Collections::TList__1<TTMSFNCNavigationPanelDisplayItem>() { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCNavigationPanel_TTMSFNCNavigationPanelDisplayItem>.Create */ inline __fastcall TTMSFNCNavigationPanelDisplayItems(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCNavigationPanelDisplayItem> > AComparer)/* overload */ : System::Generics::Collections::TList__1<TTMSFNCNavigationPanelDisplayItem>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCNavigationPanel_TTMSFNCNavigationPanelDisplayItem>.Create */ inline __fastcall TTMSFNCNavigationPanelDisplayItems(System::Generics::Collections::TEnumerable__1<TTMSFNCNavigationPanelDisplayItem>* const Collection)/* overload */ : System::Generics::Collections::TList__1<TTMSFNCNavigationPanelDisplayItem>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCNavigationPanel_TTMSFNCNavigationPanelDisplayItem>.Create */ inline __fastcall TTMSFNCNavigationPanelDisplayItems(const TTMSFNCNavigationPanelDisplayItem *Values, const int Values_High)/* overload */ : System::Generics::Collections::TList__1<TTMSFNCNavigationPanelDisplayItem>(Values, Values_High) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCNavigationPanel_TTMSFNCNavigationPanelDisplayItem>.Destroy */ inline __fastcall virtual ~TTMSFNCNavigationPanelDisplayItems() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCNavigationPanelAppearance : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FHoverStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FDisabledFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FActiveFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FDisabledStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FFill;
	System::Classes::TNotifyEvent FOnChanged;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FActiveStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FHoverFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FDownFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FDownStroke;
	float FSize;
	float FSpacing;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FFont;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FDisabledFont;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FActiveFont;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FHoverFont;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FDownFont;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FBadgeFont;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FBadgeFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FBadgeStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FCompactDownFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FCompactDownStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FCompactDisabledFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FCompactDisabledStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FCompactHoverFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FCompactHoverStroke;
	void __fastcall SetActiveFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetActiveStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetDisabledFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetDisabledStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetHoverFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetHoverStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetDownFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetDownStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	bool __fastcall IsSizeStored();
	void __fastcall SetSize(const float Value);
	virtual bool __fastcall IsSpacingStored();
	void __fastcall SetSpacing(const float Value);
	void __fastcall SetFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetActiveFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetDisabledFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetDownFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetHoverFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetBadgeFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetBadgeFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetBadgeStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetCompactDisabledFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetCompactDisabledStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetCompactDownFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetCompactDownStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetCompactHoverFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetCompactHoverStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	
protected:
	void __fastcall ChangeDPIScale(int M, int D);
	__property System::Classes::TNotifyEvent OnChanged = {read=FOnChanged, write=FOnChanged};
	void __fastcall Changed();
	void __fastcall FillChanged(System::TObject* Sender);
	void __fastcall FontChanged(System::TObject* Sender);
	void __fastcall StrokeChanged(System::TObject* Sender);
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* Font = {read=FFont, write=SetFont};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* ActiveFont = {read=FActiveFont, write=SetActiveFont};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* HoverFont = {read=FHoverFont, write=SetHoverFont};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* DownFont = {read=FDownFont, write=SetDownFont};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* DisabledFont = {read=FDisabledFont, write=SetDisabledFont};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* BadgeFill = {read=FBadgeFill, write=SetBadgeFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* BadgeStroke = {read=FBadgeStroke, write=SetBadgeStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* BadgeFont = {read=FBadgeFont, write=SetBadgeFont};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* CompactHoverFill = {read=FCompactHoverFill, write=SetCompactHoverFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* CompactHoverStroke = {read=FCompactHoverStroke, write=SetCompactHoverStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* CompactDownFill = {read=FCompactDownFill, write=SetCompactDownFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* CompactDownStroke = {read=FCompactDownStroke, write=SetCompactDownStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* CompactDisabledFill = {read=FCompactDisabledFill, write=SetCompactDisabledFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* CompactDisabledStroke = {read=FCompactDisabledStroke, write=SetCompactDisabledStroke};
	
public:
	__fastcall virtual TTMSFNCNavigationPanelAppearance();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual ~TTMSFNCNavigationPanelAppearance();
	
__published:
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* ActiveFill = {read=FActiveFill, write=SetActiveFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* ActiveStroke = {read=FActiveStroke, write=SetActiveStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* HoverFill = {read=FHoverFill, write=SetHoverFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* HoverStroke = {read=FHoverStroke, write=SetHoverStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* DownFill = {read=FDownFill, write=SetDownFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* DownStroke = {read=FDownStroke, write=SetDownStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* Fill = {read=FFill, write=SetFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* Stroke = {read=FStroke, write=SetStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* DisabledFill = {read=FDisabledFill, write=SetDisabledFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* DisabledStroke = {read=FDisabledStroke, write=SetDisabledStroke};
	__property float Size = {read=FSize, write=SetSize, stored=IsSizeStored};
	__property float Spacing = {read=FSpacing, write=SetSpacing, stored=IsSpacingStored};
};


class PASCALIMPLEMENTATION TTMSFNCNavigationPanelItemsAppearance : public TTMSFNCNavigationPanelAppearance
{
	typedef TTMSFNCNavigationPanelAppearance inherited;
	
__published:
	__property Font;
	__property ActiveFont;
	__property HoverFont;
	__property DownFont;
	__property DisabledFont;
	__property BadgeFill;
	__property BadgeStroke;
	__property BadgeFont;
	__property CompactHoverFill;
	__property CompactHoverStroke;
	__property CompactDownFill;
	__property CompactDownStroke;
	__property CompactDisabledFill;
	__property CompactDisabledStroke;
public:
	/* TTMSFNCNavigationPanelAppearance.Create */ inline __fastcall virtual TTMSFNCNavigationPanelItemsAppearance() : TTMSFNCNavigationPanelAppearance() { }
	/* TTMSFNCNavigationPanelAppearance.Destroy */ inline __fastcall virtual ~TTMSFNCNavigationPanelItemsAppearance() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCNavigationPanelButtonsAppearance : public TTMSFNCNavigationPanelAppearance
{
	typedef TTMSFNCNavigationPanelAppearance inherited;
	
private:
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FBackgroundFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FBackgroundStroke;
	bool FShowOptionsButton;
	System::Uitypes::TAlphaColor FOptionsButtonBulletColor;
	virtual bool __fastcall IsSpacingStored();
	void __fastcall SetBackgroundFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetBackgroundStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetShowOptionsButton(const bool Value);
	void __fastcall SetOptionsButtonBulletColor(const System::Uitypes::TAlphaColor Value);
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual TTMSFNCNavigationPanelButtonsAppearance();
	__fastcall virtual ~TTMSFNCNavigationPanelButtonsAppearance();
	
__published:
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* BackgroundFill = {read=FBackgroundFill, write=SetBackgroundFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* BackgroundStroke = {read=FBackgroundStroke, write=SetBackgroundStroke};
	__property bool ShowOptionsButton = {read=FShowOptionsButton, write=SetShowOptionsButton, default=1};
	__property System::Uitypes::TAlphaColor OptionsButtonBulletColor = {read=FOptionsButtonBulletColor, write=SetOptionsButtonBulletColor, default=-8355712};
};


class PASCALIMPLEMENTATION TTMSFNCNavigationPanelSplitter : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	System::Classes::TNotifyEvent FOnChanged;
	float FSize;
	bool FVisible;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FStroke;
	System::Uitypes::TAlphaColor FBulletColor;
	bool __fastcall IsSizeStored();
	void __fastcall SetSize(const float Value);
	void __fastcall SetVisible(const bool Value);
	void __fastcall SetFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetBulletColor(const System::Uitypes::TAlphaColor Value);
	
protected:
	__property System::Classes::TNotifyEvent OnChanged = {read=FOnChanged, write=FOnChanged};
	void __fastcall Changed();
	void __fastcall FillChanged(System::TObject* Sender);
	void __fastcall StrokeChanged(System::TObject* Sender);
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall TTMSFNCNavigationPanelSplitter();
	__fastcall virtual ~TTMSFNCNavigationPanelSplitter();
	
__published:
	__property float Size = {read=FSize, write=SetSize, stored=IsSizeStored};
	__property bool Visible = {read=FVisible, write=SetVisible, default=1};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* Fill = {read=FFill, write=SetFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* Stroke = {read=FStroke, write=SetStroke};
	__property System::Uitypes::TAlphaColor BulletColor = {read=FBulletColor, write=SetBulletColor, default=-8355712};
};


enum DECLSPEC_DENUM TTMSFNCNavigationPanelMode : unsigned char { npmItems, npmButtons, npmMixed };

enum DECLSPEC_DENUM TTMSFNCNavigationPanelItemState : unsigned char { npisNormal, npisHover, npisDown, npisDisabled, npisActive };

enum DECLSPEC_DENUM TTMSFNCNavigationPanelButtonState : unsigned char { npbsNormal, npbsHover, npbsDown, npbsDisabled, npbsActive };

enum DECLSPEC_DENUM TTMSFNCNavigationPanelCompactItemState : unsigned char { npcisNormal, npcisHover, npcisDown, npcisDisabled };

typedef void __fastcall (__closure *TTMSFNCNavigationPanelItemClickEvent)(System::TObject* Sender, int AItemIndex);

typedef void __fastcall (__closure *TTMSFNCNavigationPanelItemAnchorClickEvent)(System::TObject* Sender, int AItemIndex, System::UnicodeString AAnchor);

typedef void __fastcall (__closure *TTMSFNCNavigationPanelCustomizeContextMenuEvent)(System::TObject* Sender, Fmx::Menus::TPopupMenu* AContextMenu);

typedef void __fastcall (__closure *TTMSFNCNavigationPanelBeforeDrawItemEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCNavigationPanelItem* AItem, TTMSFNCNavigationPanelItemState AState, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCNavigationPanelAfterDrawItemEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCNavigationPanelItem* AItem, TTMSFNCNavigationPanelItemState AState);

typedef void __fastcall (__closure *TTMSFNCNavigationPanelBeforeDrawCompactItemEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCNavigationPanelItem* ACompactItem, TTMSFNCNavigationPanelCompactItemState AState, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCNavigationPanelAfterDrawCompactItemEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCNavigationPanelItem* ACompactItem, TTMSFNCNavigationPanelCompactItemState AState);

typedef void __fastcall (__closure *TTMSFNCNavigationPanelBeforeDrawItemBadgeEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCNavigationPanelItem* AItem, System::UnicodeString ABadge, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCNavigationPanelAfterDrawItemBadgeEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCNavigationPanelItem* AItem, System::UnicodeString ABadge);

typedef void __fastcall (__closure *TTMSFNCNavigationPanelBeforeDrawButtonEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCNavigationPanelItem* AItem, TTMSFNCNavigationPanelButtonState AState, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCNavigationPanelAfterDrawButtonEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCNavigationPanelItem* AItem, TTMSFNCNavigationPanelButtonState AState);

typedef void __fastcall (__closure *TTMSFNCNavigationPanelBeforeDrawOptionsButtonEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCNavigationPanelButtonState AState, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCNavigationPanelAfterDrawOptionsButtonEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCNavigationPanelButtonState AState);

typedef void __fastcall (__closure *TTMSFNCNavigationPanelBeforeDrawSplitterEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCNavigationPanelAfterDrawSplitterEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);

typedef void __fastcall (__closure *TTMSFNCNavigationPanelSplitterMoveEvent)(System::TObject* Sender, int AOldPosition, int ANewPosition);

class PASCALIMPLEMENTATION TTMSFNCCustomNavigationPanel : public Fmx::Tmsfnccustomcontrol::TTMSFNCCustomControl
{
	typedef Fmx::Tmsfnccustomcontrol::TTMSFNCCustomControl inherited;
	
private:
	float FOldWidth;
	Fmx::Menus::TPopupMenu* FContextMenu;
	bool FSplitterHover;
	bool FSplitterDown;
	bool FOptionsButtonHover;
	bool FOptionsButtonDown;
	int FHoverItemIndex;
	int FDownItemIndex;
	bool FHoverCompactItem;
	bool FDownCompactItem;
	int FHoverButtonIndex;
	int FDownButtonIndex;
	TTMSFNCNavigationPanelDisplayItems* FItems;
	TTMSFNCNavigationPanelDisplayItems* FButtons;
	TTMSFNCNavigationPanelDisplayItems* FHiddenItems;
	TTMSFNCNavigationPanelDisplayItems* FExtraItems;
	Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* FBitmapContainer;
	int FActivePanelIndex;
	bool FUpdateMargins;
	TTMSFNCNavigationPanelContainer* FPrevActivePanelContainer;
	int FUpdateCount;
	TTMSFNCNavigationPanelItems* FPanels;
	TTMSFNCNavigationPanelItemsAppearance* FItemsAppearance;
	TTMSFNCNavigationPanelButtonsAppearance* FButtonsAppearance;
	TTMSFNCNavigationPanelMode FMode;
	int FMaxButtonCount;
	int FMaxItemCount;
	TTMSFNCNavigationPanelSplitter* FSplitter;
	TTMSFNCNavigationPanelItemClickEvent FOnItemClick;
	float FCompactModeSize;
	bool FCompactMode;
	TTMSFNCNavigationPanelBeforeDrawButtonEvent FOnBeforeDrawButton;
	TTMSFNCNavigationPanelAfterDrawOptionsButtonEvent FOnAfterDrawOptionsButton;
	TTMSFNCNavigationPanelCustomizeContextMenuEvent FOnCustomizeContextMenu;
	TTMSFNCNavigationPanelBeforeDrawItemEvent FOnBeforeDrawItem;
	TTMSFNCNavigationPanelAfterDrawButtonEvent FOnAfterDrawButton;
	TTMSFNCNavigationPanelBeforeDrawSplitterEvent FOnBeforeDrawSplitter;
	TTMSFNCNavigationPanelBeforeDrawOptionsButtonEvent FOnBeforeDrawOptionsButton;
	TTMSFNCNavigationPanelAfterDrawItemEvent FOnAfterDrawItem;
	TTMSFNCNavigationPanelAfterDrawSplitterEvent FOnAfterDrawSplitter;
	TTMSFNCNavigationPanelBeforeDrawItemBadgeEvent FOnBeforeDrawItemBadge;
	TTMSFNCNavigationPanelAfterDrawItemBadgeEvent FOnAfterDrawItemBadge;
	TTMSFNCNavigationPanelSplitterMoveEvent FOnSplitterMove;
	TTMSFNCNavigationPanelBeforeDrawCompactItemEvent FOnBeforeDrawCompactItem;
	TTMSFNCNavigationPanelAfterDrawCompactItemEvent FOnAfterDrawCompactItem;
	TTMSFNCNavigationPanelItemClickEvent FOnCompactItemClick;
	TTMSFNCNavigationPanelItemAnchorClickEvent FOnItemAnchorClick;
	bool FShowCompactModeButton;
	bool FShowHeader;
	bool FShowFooter;
	Fmx::Tmsfncgraphicstypes::TTMSFNCAppearanceGlobalFont* FGlobalFont;
	int __fastcall GetActivePanelIndex();
	void __fastcall SetActivePanelIndex(const int Value);
	void __fastcall SetPanels(TTMSFNCNavigationPanelItems* const Value);
	TTMSFNCNavigationPanelContainer* __fastcall GetPanelContainer(int AIndex);
	Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* __fastcall GetBitmapContainer();
	void __fastcall SetBitmapContainer(Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* const Value);
	void __fastcall SetItemsAppearance(TTMSFNCNavigationPanelItemsAppearance* const Value);
	void __fastcall SetButtonsAppearance(TTMSFNCNavigationPanelButtonsAppearance* const Value);
	void __fastcall SetMode(const TTMSFNCNavigationPanelMode Value);
	void __fastcall SetMaxButtonCount(const int Value);
	void __fastcall SetMaxItemCount(const int Value);
	void __fastcall SetSplitter(TTMSFNCNavigationPanelSplitter* const Value);
	bool __fastcall IsCompactModeStored();
	void __fastcall SetCompactMode(const bool Value);
	void __fastcall SetCompactModeSize(const float Value);
	void __fastcall SetShowCompactModeButton(const bool Value);
	void __fastcall SetShowHeader(const bool Value);
	void __fastcall SetShowFooter(const bool Value);
	void __fastcall SetGlobalFont(Fmx::Tmsfncgraphicstypes::TTMSFNCAppearanceGlobalFont* const Value);
	
protected:
	virtual System::UnicodeString __fastcall GetDocURL();
	virtual void __fastcall ChangeDPIScale(int M, int D);
	virtual void __fastcall ApplyStyle();
	virtual void __fastcall ResetToDefaultStyle();
	virtual void __fastcall SetAdaptToStyle(const bool Value);
	virtual System::UnicodeString __fastcall GetVersion();
	virtual TTMSFNCNavigationPanelItems* __fastcall CreatePanels();
	virtual float __fastcall GetTotalHeight();
	virtual System::Types::TRectF __fastcall GetOptionsButtonRect();
	virtual System::Types::TRectF __fastcall GetSplitterRect();
	virtual System::Types::TRectF __fastcall GetCompactItemRect(TTMSFNCNavigationPanelItem* APanel);
	virtual System::UnicodeString __fastcall GetHintString();
	virtual bool __fastcall HasHint();
	virtual System::UnicodeString __fastcall XYToAnchor(int AItemIndex, float X, float Y);
	virtual int __fastcall XYToItem(float X, float Y);
	virtual bool __fastcall XYToCompactItem(float X, float Y);
	virtual int __fastcall XYToButtonItem(float X, float Y);
	virtual bool __fastcall XYToOptionsButton(float X, float Y);
	virtual bool __fastcall XYToSplitter(float X, float Y);
	virtual bool __fastcall IsAppearanceProperty(System::TObject* AObject, System::UnicodeString APropertyName, System::TTypeKind APropertyType);
	virtual void __fastcall DoSplitterMove(int AOldItemCount, int ANewItemCount);
	void __fastcall ShowFewerClicked(System::TObject* Sender);
	void __fastcall ShowMoreClicked(System::TObject* Sender);
	void __fastcall SelectExtraItemClicked(System::TObject* Sender);
	void __fastcall ToggleItemClicked(System::TObject* Sender);
	virtual void __fastcall DefineProperties(System::Classes::TFiler* Filer);
	void __fastcall ReadOldWidth(System::Classes::TReader* Reader);
	void __fastcall WriteOldWidth(System::Classes::TWriter* Writer);
	void __fastcall AppearanceChanged(System::TObject* Sender);
	void __fastcall SplitterChanged(System::TObject* Sender);
	virtual void __fastcall Notification(System::Classes::TComponent* AComponent, System::Classes::TOperation Operation);
	virtual void __fastcall UpdatePanels();
	virtual void __fastcall UpdateMargins(TTMSFNCNavigationPanelContainer* AContainer);
	virtual void __fastcall UpdatePanelProperties();
	void __fastcall CompactButtonClick(System::TObject* Sender);
	virtual void __fastcall CalculateDisplayItems();
	virtual void __fastcall BuildContextMenu();
	virtual void __fastcall DrawSplitter(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	virtual void __fastcall DrawItems(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	virtual void __fastcall DrawCompactItem(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	virtual void __fastcall DrawBadge(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const TTMSFNCNavigationPanelDisplayItem &ADisplayItem, TTMSFNCNavigationPanelAppearance* AAppearance);
	virtual void __fastcall DrawButtons(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	virtual void __fastcall HandleMouseDown(System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall HandleMouseMove(System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall HandleMouseUp(System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall HandleMouseLeave();
	virtual void __fastcall HandleSplitter(float Y);
	virtual void __fastcall DoItemClick(int AItemIndex);
	virtual void __fastcall DoItemAnchorClick(int AItemIndex, System::UnicodeString AAnchor);
	virtual void __fastcall DoCompactItemClick(int AItemIndex);
	void __fastcall DoCustomizeContextMenu(Fmx::Menus::TPopupMenu* AContextMenu);
	void __fastcall DoBeforeDrawItem(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCNavigationPanelItem* AItem, TTMSFNCNavigationPanelItemState AState, bool &ADefaultDraw);
	void __fastcall DoAfterDrawItem(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCNavigationPanelItem* AItem, TTMSFNCNavigationPanelItemState AState);
	void __fastcall DoBeforeDrawCompactItem(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCNavigationPanelItem* ACompactItem, TTMSFNCNavigationPanelCompactItemState AState, bool &ADefaultDraw);
	void __fastcall DoAfterDrawCompactItem(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCNavigationPanelItem* ACompactItem, TTMSFNCNavigationPanelCompactItemState AState);
	void __fastcall DoBeforeDrawItemBadge(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCNavigationPanelItem* AItem, System::UnicodeString ABadge, bool &ADefaultDraw);
	void __fastcall DoAfterDrawItemBadge(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCNavigationPanelItem* AItem, System::UnicodeString ABadge);
	void __fastcall DoBeforeDrawButton(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCNavigationPanelItem* AItem, TTMSFNCNavigationPanelButtonState AState, bool &ADefaultDraw);
	void __fastcall DoAfterDrawButton(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCNavigationPanelItem* AItem, TTMSFNCNavigationPanelButtonState AState);
	void __fastcall DoBeforeDrawOptionsButton(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCNavigationPanelButtonState AState, bool &ADefaultDraw);
	void __fastcall DoAfterDrawOptionsButton(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCNavigationPanelButtonState AState);
	void __fastcall DoBeforeDrawSplitter(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, bool &ADefaultDraw);
	void __fastcall DoAfterDrawSplitter(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	virtual void __fastcall UpdateControlAfterResize();
	virtual void __fastcall Loaded();
	virtual void __fastcall SetFonts(Fmx::Tmsfncgraphicstypes::TTMSFNCAppearanceGlobalFontType ASetType);
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCAppearanceGlobalFont* GlobalFont = {read=FGlobalFont, write=SetGlobalFont};
	__property int ActivePanelIndex = {read=GetActivePanelIndex, write=SetActivePanelIndex, default=0};
	__property TTMSFNCNavigationPanelItems* Panels = {read=FPanels, write=SetPanels};
	__property TTMSFNCNavigationPanelContainer* PanelContainers[int AIndex] = {read=GetPanelContainer};
	__property Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* BitmapContainer = {read=GetBitmapContainer, write=SetBitmapContainer};
	__property TTMSFNCNavigationPanelItemsAppearance* ItemsAppearance = {read=FItemsAppearance, write=SetItemsAppearance};
	__property TTMSFNCNavigationPanelButtonsAppearance* ButtonsAppearance = {read=FButtonsAppearance, write=SetButtonsAppearance};
	__property TTMSFNCNavigationPanelMode Mode = {read=FMode, write=SetMode, default=2};
	__property bool ShowCompactModeButton = {read=FShowCompactModeButton, write=SetShowCompactModeButton, default=1};
	__property bool ShowHeader = {read=FShowHeader, write=SetShowHeader, default=1};
	__property bool ShowFooter = {read=FShowFooter, write=SetShowFooter, default=0};
	__property bool CompactMode = {read=FCompactMode, write=SetCompactMode, default=0};
	__property float CompactModeSize = {read=FCompactModeSize, write=SetCompactModeSize, stored=IsCompactModeStored};
	__property int MaxItemCount = {read=FMaxItemCount, write=SetMaxItemCount, default=-1};
	__property int MaxButtonCount = {read=FMaxButtonCount, write=SetMaxButtonCount, default=-1};
	__property TTMSFNCNavigationPanelSplitter* Splitter = {read=FSplitter, write=SetSplitter};
	__property TTMSFNCNavigationPanelItemClickEvent OnItemClick = {read=FOnItemClick, write=FOnItemClick};
	__property TTMSFNCNavigationPanelItemAnchorClickEvent OnItemAnchorClick = {read=FOnItemAnchorClick, write=FOnItemAnchorClick};
	__property TTMSFNCNavigationPanelItemClickEvent OnCompactItemClick = {read=FOnCompactItemClick, write=FOnCompactItemClick};
	__property float OldWidth = {read=FOldWidth, write=FOldWidth};
	__property TTMSFNCNavigationPanelCustomizeContextMenuEvent OnCustomizeContextMenu = {read=FOnCustomizeContextMenu, write=FOnCustomizeContextMenu};
	__property TTMSFNCNavigationPanelBeforeDrawItemEvent OnBeforeDrawItem = {read=FOnBeforeDrawItem, write=FOnBeforeDrawItem};
	__property TTMSFNCNavigationPanelAfterDrawItemEvent OnAfterDrawItem = {read=FOnAfterDrawItem, write=FOnAfterDrawItem};
	__property TTMSFNCNavigationPanelBeforeDrawCompactItemEvent OnBeforeDrawCompactItem = {read=FOnBeforeDrawCompactItem, write=FOnBeforeDrawCompactItem};
	__property TTMSFNCNavigationPanelAfterDrawCompactItemEvent OnAfterDrawCompactItem = {read=FOnAfterDrawCompactItem, write=FOnAfterDrawCompactItem};
	__property TTMSFNCNavigationPanelBeforeDrawItemBadgeEvent OnBeforeDrawItemBadge = {read=FOnBeforeDrawItemBadge, write=FOnBeforeDrawItemBadge};
	__property TTMSFNCNavigationPanelAfterDrawItemBadgeEvent OnAfterDrawItemBadge = {read=FOnAfterDrawItemBadge, write=FOnAfterDrawItemBadge};
	__property TTMSFNCNavigationPanelBeforeDrawButtonEvent OnBeforeDrawButton = {read=FOnBeforeDrawButton, write=FOnBeforeDrawButton};
	__property TTMSFNCNavigationPanelAfterDrawButtonEvent OnAfterDrawButton = {read=FOnAfterDrawButton, write=FOnAfterDrawButton};
	__property TTMSFNCNavigationPanelBeforeDrawOptionsButtonEvent OnBeforeDrawOptionsButton = {read=FOnBeforeDrawOptionsButton, write=FOnBeforeDrawOptionsButton};
	__property TTMSFNCNavigationPanelAfterDrawOptionsButtonEvent OnAfterDrawOptionsButton = {read=FOnAfterDrawOptionsButton, write=FOnAfterDrawOptionsButton};
	__property TTMSFNCNavigationPanelBeforeDrawSplitterEvent OnBeforeDrawSplitter = {read=FOnBeforeDrawSplitter, write=FOnBeforeDrawSplitter};
	__property TTMSFNCNavigationPanelAfterDrawSplitterEvent OnAfterDrawSplitter = {read=FOnAfterDrawSplitter, write=FOnAfterDrawSplitter};
	__property TTMSFNCNavigationPanelSplitterMoveEvent OnSplitterMove = {read=FOnSplitterMove, write=FOnSplitterMove};
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual TTMSFNCCustomNavigationPanel(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCCustomNavigationPanel();
	virtual TTMSFNCNavigationPanelItem* __fastcall AddPanel(System::UnicodeString AText = System::UnicodeString());
	virtual TTMSFNCNavigationPanelItem* __fastcall InsertPanel(int APanelIndex, System::UnicodeString AText = System::UnicodeString());
	virtual void __fastcall SetBounds(float X, float Y, float AWidth, float AHeight);
	virtual void __fastcall Draw(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	virtual void __fastcall BeginUpdate();
	virtual void __fastcall EndUpdate();
	virtual void __fastcall MovePanel(int AFromPanelIndex, int AToPanelIndex);
	void __fastcall RemovePanel(int APanelIndex);
	virtual void __fastcall SelectNextPanel();
	virtual void __fastcall SelectPreviousPanel();
	virtual void __fastcall SelectPanel(int APanelIndex);
	virtual void __fastcall SplitItems(int ANumberOfItems);
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


class PASCALIMPLEMENTATION TTMSFNCNavigationPanel : public TTMSFNCCustomNavigationPanel
{
	typedef TTMSFNCCustomNavigationPanel inherited;
	
private:
	bool FInitialize;
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	virtual void __fastcall SetName(const System::Classes::TComponentName Value);
	
public:
	__fastcall virtual TTMSFNCNavigationPanel(System::Classes::TComponent* AOwner);
	__property PanelContainers;
	virtual void __fastcall InitSample();
	
__published:
	__property BitmapContainer;
	__property ItemsAppearance;
	__property ButtonsAppearance;
	__property ActivePanelIndex = {default=0};
	__property Fill;
	__property Stroke;
	__property Panels;
	__property Mode = {default=2};
	__property ShowHeader = {default=1};
	__property ShowFooter = {default=0};
	__property ShowCompactModeButton = {default=1};
	__property MaxItemCount = {default=-1};
	__property MaxButtonCount = {default=-1};
	__property Splitter;
	__property OnItemClick;
	__property OnItemAnchorClick;
	__property OnCompactItemClick;
	__property CompactMode = {default=0};
	__property CompactModeSize;
	__property ShowHint = {default=1};
	__property GlobalFont;
	__property OnCustomizeContextMenu;
	__property OnBeforeDrawItem;
	__property OnAfterDrawItem;
	__property OnBeforeDrawCompactItem;
	__property OnAfterDrawCompactItem;
	__property OnBeforeDrawItemBadge;
	__property OnAfterDrawItemBadge;
	__property OnBeforeDrawButton;
	__property OnAfterDrawButton;
	__property OnBeforeDrawOptionsButton;
	__property OnAfterDrawOptionsButton;
	__property OnBeforeDrawSplitter;
	__property OnAfterDrawSplitter;
	__property OnSplitterMove;
public:
	/* TTMSFNCCustomNavigationPanel.Destroy */ inline __fastcall virtual ~TTMSFNCNavigationPanel() { }
	
};


//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x1);
static constexpr System::Int8 BLD_VER = System::Int8(0x0);
static constexpr unsigned TMSFNCNavigationPanelSelectedColor = unsigned(0xff1badf8);
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCNavigationPanelAddOrRemoveItems;
#define Fmx_Tmsfncnavigationpanel_sTMSFNCNavigationPanelAddOrRemoveItems System::LoadResourceString(&Fmx::Tmsfncnavigationpanel::_sTMSFNCNavigationPanelAddOrRemoveItems)
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCNavigationPanelShowMoreItems;
#define Fmx_Tmsfncnavigationpanel_sTMSFNCNavigationPanelShowMoreItems System::LoadResourceString(&Fmx::Tmsfncnavigationpanel::_sTMSFNCNavigationPanelShowMoreItems)
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCNavigationPanelShowFewerItems;
#define Fmx_Tmsfncnavigationpanel_sTMSFNCNavigationPanelShowFewerItems System::LoadResourceString(&Fmx::Tmsfncnavigationpanel::_sTMSFNCNavigationPanelShowFewerItems)
}	/* namespace Tmsfncnavigationpanel */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCNAVIGATIONPANEL)
using namespace Fmx::Tmsfncnavigationpanel;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncnavigationpanelHPP
