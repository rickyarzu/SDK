// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCTabSet.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfnctabsetHPP
#define Fmx_TmsfnctabsetHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <System.Types.hpp>
#include <FMX.TMSFNCPersistence.hpp>
#include <FMX.TMSFNCCustomControl.hpp>
#include <FMX.TMSFNCBitmapContainer.hpp>
#include <FMX.TMSFNCPopup.hpp>
#include <FMX.TMSFNCGraphics.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.Controls.hpp>
#include <FMX.ExtCtrls.hpp>
#include <FMX.StdCtrls.hpp>
#include <FMX.TMSFNCGraphicsTypes.hpp>
#include <FMX.TMSFNCHint.hpp>
#include <FMX.Types.hpp>
#include <FMX.ListBox.hpp>
#include <FMX.Edit.hpp>
#include <System.Generics.Collections.hpp>
#include <System.UITypes.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>
#include <FMX.Controls.Presentation.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfnctabset
{
//-- forward type declarations -----------------------------------------------
struct TTMSFNCTabSetDisplayTab;
class DELPHICLASS TTMSFNCTabSetDisplayList;
class DELPHICLASS TTMSFNCTabSetInvisibleTabList;
class DELPHICLASS TTMSFNCTabSetTab;
class DELPHICLASS TTMSFNCTabSetTabs;
class DELPHICLASS TTMSFNCTabSetTabSize;
class DELPHICLASS TTMSFNCTabSetButtonAppearance;
class DELPHICLASS TTMSFNCTabSetTabAppearance;
class DELPHICLASS TTMSFNCTabSetLayout;
class DELPHICLASS TTMSFNCTabSetInteraction;
class DELPHICLASS TTMSFNCTabSetOptions;
class DELPHICLASS TTMSFNCTabSetEdit;
class DELPHICLASS TTMSFNCCustomTabSet;
class DELPHICLASS TTMSFNCTabSet;
//-- type declarations -------------------------------------------------------
enum DECLSPEC_DENUM TTMSFNCTabSetTabShape : unsigned char { tsRectangle, tsPyramidLeft, tsPyramidRight, tsPyramid, tsRoundLeft, tsRoundRight, tsRound };

enum DECLSPEC_DENUM TTMSFNCTabSetTabKind : unsigned char { ttkNormal, ttkInsert };

enum DECLSPEC_DENUM TTMSFNCTabSetTabProgressMode : unsigned char { tpmNormal, tpmMarquee };

enum DECLSPEC_DENUM TTMSFNCTabSetTabProgressKind : unsigned char { tpkNone, tpkCircular, tpkRectangular };

enum DECLSPEC_DENUM TTMSFNCTabSetTabSizeMode : unsigned char { tsmAutoSize, tsmFixedSize, tsmFixedSizeAutoShrink, tsmAutoTabSize };

enum DECLSPEC_DENUM TTMSFNCTabSetLayoutPosition : unsigned char { tlpLeft, tlpTop, tlpBottom, tlpRight };

enum DECLSPEC_DENUM TTMSFNCTabSetLayoutMultiline : unsigned char { tlmNone, tlmEnabled, tlmEnabledActiveTab };

enum DECLSPEC_DENUM TTMSFNCTabSetTabCloseAction : unsigned char { ttcaNone, ttcaFree, ttcaHide };

struct DECLSPEC_DRECORD TTMSFNCTabSetDisplayTab
{
public:
	TTMSFNCTabSetTab* Tab;
	TTMSFNCTabSetTabKind TabKind;
	bool First;
	bool Last;
	System::Types::TRectF ContentRect;
	System::Types::TRectF ProgressRect;
	System::Types::TRectF CloseButtonRect;
	System::Types::TRectF Rect;
	System::Types::TRectF BitmapRect;
	int Index;
	int Row;
	System::Types::TRectF TextRect;
};


class PASCALIMPLEMENTATION TTMSFNCTabSetDisplayList : public System::Generics::Collections::TList__1<TTMSFNCTabSetDisplayTab>
{
	typedef System::Generics::Collections::TList__1<TTMSFNCTabSetDisplayTab> inherited;
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCTabSet_TTMSFNCTabSetDisplayTab>.Create */ inline __fastcall TTMSFNCTabSetDisplayList()/* overload */ : System::Generics::Collections::TList__1<TTMSFNCTabSetDisplayTab>() { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTabSet_TTMSFNCTabSetDisplayTab>.Create */ inline __fastcall TTMSFNCTabSetDisplayList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCTabSetDisplayTab> > AComparer)/* overload */ : System::Generics::Collections::TList__1<TTMSFNCTabSetDisplayTab>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTabSet_TTMSFNCTabSetDisplayTab>.Create */ inline __fastcall TTMSFNCTabSetDisplayList(System::Generics::Collections::TEnumerable__1<TTMSFNCTabSetDisplayTab>* const Collection)/* overload */ : System::Generics::Collections::TList__1<TTMSFNCTabSetDisplayTab>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTabSet_TTMSFNCTabSetDisplayTab>.Create */ inline __fastcall TTMSFNCTabSetDisplayList(const TTMSFNCTabSetDisplayTab *Values, const int Values_High)/* overload */ : System::Generics::Collections::TList__1<TTMSFNCTabSetDisplayTab>(Values, Values_High) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTabSet_TTMSFNCTabSetDisplayTab>.Destroy */ inline __fastcall virtual ~TTMSFNCTabSetDisplayList() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCTabSetInvisibleTabList : public System::Generics::Collections::TList__1<TTMSFNCTabSetTab*>
{
	typedef System::Generics::Collections::TList__1<TTMSFNCTabSetTab*> inherited;
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCTabSet_TTMSFNCTabSetTab>.Create */ inline __fastcall TTMSFNCTabSetInvisibleTabList()/* overload */ : System::Generics::Collections::TList__1<TTMSFNCTabSetTab*>() { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTabSet_TTMSFNCTabSetTab>.Create */ inline __fastcall TTMSFNCTabSetInvisibleTabList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCTabSetTab*> > AComparer)/* overload */ : System::Generics::Collections::TList__1<TTMSFNCTabSetTab*>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTabSet_TTMSFNCTabSetTab>.Create */ inline __fastcall TTMSFNCTabSetInvisibleTabList(System::Generics::Collections::TEnumerable__1<TTMSFNCTabSetTab*>* const Collection)/* overload */ : System::Generics::Collections::TList__1<TTMSFNCTabSetTab*>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTabSet_TTMSFNCTabSetTab>.Create */ inline __fastcall TTMSFNCTabSetInvisibleTabList(TTMSFNCTabSetTab* const *Values, const int Values_High)/* overload */ : System::Generics::Collections::TList__1<TTMSFNCTabSetTab*>(Values, Values_High) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTabSet_TTMSFNCTabSetTab>.Destroy */ inline __fastcall virtual ~TTMSFNCTabSetInvisibleTabList() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCTabSetTab : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	float FAnimMarqueeStartAngle;
	float FAnimMarqueeSweepAngle;
	bool FAnimMarqueeSwitch;
	NativeInt FTag;
	System::UnicodeString FDataString;
	System::TObject* FDataObject;
	NativeInt FDataInteger;
	TTMSFNCCustomTabSet* FTabSet;
	System::UnicodeString FText;
	System::UnicodeString FDBKey;
	bool FDataBoolean;
	bool FWordWrapping;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextTrimming FTrimming;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign FTextAlign;
	System::Uitypes::TAlphaColor FActiveTextColor;
	System::Uitypes::TAlphaColor FTextColor;
	System::Uitypes::TAlphaColor FDisabledTextColor;
	bool FEnabled;
	Fmx::Tmsfnctypes::TTMSFNCScaledBitmaps* FBitmaps;
	Fmx::Tmsfnctypes::TTMSFNCScaledBitmaps* FDisabledBitmaps;
	bool FVisible;
	bool FUseDefaultAppearance;
	float FWidth;
	float FHeight;
	System::Uitypes::TAlphaColor FDisabledColor;
	System::Uitypes::TAlphaColor FActiveColor;
	System::Uitypes::TAlphaColor FHoverTextColor;
	System::Uitypes::TAlphaColor FColor;
	System::Uitypes::TAlphaColor FHoverColor;
	System::Uitypes::TAlphaColor FDownTextColor;
	System::Uitypes::TAlphaColor FDownColor;
	bool FBitmapVisible;
	float FBitmapSize;
	bool FTextVisible;
	bool FStretchText;
	TTMSFNCTabSetTabShape FShape;
	System::Uitypes::TAlphaColor FProgressColor;
	float FProgress;
	float FProgressMax;
	TTMSFNCTabSetTabProgressMode FProgressMode;
	bool FCloseButton;
	TTMSFNCTabSetTabProgressKind FProgressKind;
	System::UnicodeString FBadge;
	System::Uitypes::TAlphaColor FBadgeColor;
	System::Uitypes::TAlphaColor FBadgeTextColor;
	System::UnicodeString FHint;
	void *FDataPointer;
	System::UnicodeString FShortCutHint;
	void __fastcall SetTrimming(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextTrimming Value);
	void __fastcall SetWordWrapping(const bool Value);
	void __fastcall SetTextAlign(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign Value);
	void __fastcall SetActiveTextColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetTextColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetDisabledTextColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetEnabled(const bool Value);
	void __fastcall SetBitmaps(Fmx::Tmsfnctypes::TTMSFNCScaledBitmaps* const Value);
	void __fastcall SetDisabledBitmaps(Fmx::Tmsfnctypes::TTMSFNCScaledBitmaps* const Value);
	Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* __fastcall GetBitmapContainer();
	void __fastcall SetVisible(const bool Value);
	void __fastcall SetUseDefaultAppearance(const bool Value);
	bool __fastcall IsWidthStored();
	void __fastcall SetWidth(const float Value);
	void __fastcall SetColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetDisabledColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetDownColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetDownTextColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetHoverColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetHoverTextColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetActiveColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetBitmapVisible(const bool Value);
	bool __fastcall IsBitmapSizeStored();
	void __fastcall SetBitmapSize(const float Value);
	void __fastcall SetTextVisible(const bool Value);
	void __fastcall SetStretchText(const bool Value);
	void __fastcall SetShape(const TTMSFNCTabSetTabShape Value);
	void __fastcall SetProgressColor(const System::Uitypes::TAlphaColor Value);
	bool __fastcall IsProgressStored();
	void __fastcall SetProgress(const float Value);
	bool __fastcall IsProgressMaxStored();
	void __fastcall SetProgressMax(const float Value);
	void __fastcall SetProgressMode(const TTMSFNCTabSetTabProgressMode Value);
	void __fastcall SetCloseButton(const bool Value);
	void __fastcall SetProgressKind(const TTMSFNCTabSetTabProgressKind Value);
	void __fastcall SetBadge(const System::UnicodeString Value);
	void __fastcall SetBadgeColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetBadgeTextColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetHint(const System::UnicodeString Value);
	
protected:
	virtual void __fastcall SetText(const System::UnicodeString Value);
	void __fastcall UpdateTab();
	HIDESBASE void __fastcall Changed(System::TObject* Sender);
	void __fastcall BitmapsChanged(System::TObject* Sender);
	virtual void __fastcall Draw(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const TTMSFNCTabSetDisplayTab &ATab);
	virtual void __fastcall DrawBackground(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const TTMSFNCTabSetDisplayTab &ATab);
	virtual void __fastcall DrawText(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const TTMSFNCTabSetDisplayTab &ATab);
	virtual void __fastcall DrawFocus(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const TTMSFNCTabSetDisplayTab &ATab);
	virtual void __fastcall DrawProgress(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const TTMSFNCTabSetDisplayTab &ATab);
	virtual void __fastcall DrawCloseButton(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const TTMSFNCTabSetDisplayTab &ATab);
	virtual void __fastcall DrawBitmap(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const TTMSFNCTabSetDisplayTab &ATab);
	virtual void __fastcall DrawBadge(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const TTMSFNCTabSetDisplayTab &ATab);
	virtual Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsPath* __fastcall GetInsertShapePath(const System::Types::TRectF &ARect);
	virtual Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsPath* __fastcall GetShapePath(const System::Types::TRectF &ARect);
	virtual System::Types::TRectF __fastcall GetBitmapRect(const System::Types::TRectF &ARect);
	virtual System::Types::TRectF __fastcall GetTextRect(const System::Types::TRectF &ARect);
	virtual System::Types::TRectF __fastcall GetProgressRect(const System::Types::TRectF &ARect);
	virtual System::Types::TRectF __fastcall GetCloseButtonRect(const System::Types::TRectF &ARect);
	virtual System::UnicodeString __fastcall GetFriendlyName();
	virtual System::UnicodeString __fastcall GetStrippedHTMLText();
	virtual bool __fastcall IsHTML();
	virtual System::Types::TRectF __fastcall GetFixedRect(const System::Types::TRectF &ARect, const TTMSFNCTabSetDisplayTab &ATab);
	__property System::UnicodeString ShortCutHint = {read=FShortCutHint, write=FShortCutHint};
	
public:
	__fastcall virtual TTMSFNCTabSetTab(System::Classes::TCollection* Collection);
	__fastcall virtual ~TTMSFNCTabSetTab();
	TTMSFNCCustomTabSet* __fastcall TabSet();
	TTMSFNCTabSetTabShape __fastcall GetShape();
	virtual float __fastcall GetAutoSize();
	virtual Fmx::Tmsfnctypes::TTMSFNCBitmap* __fastcall GetBitmap();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__property void * DataPointer = {read=FDataPointer, write=FDataPointer};
	__property bool DataBoolean = {read=FDataBoolean, write=FDataBoolean, nodefault};
	__property System::TObject* DataObject = {read=FDataObject, write=FDataObject};
	__property System::UnicodeString DataString = {read=FDataString, write=FDataString};
	__property NativeInt DataInteger = {read=FDataInteger, write=FDataInteger};
	__property System::UnicodeString DBKey = {read=FDBKey, write=FDBKey};
	__property Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* BitmapContainer = {read=GetBitmapContainer};
	
__published:
	__property System::UnicodeString Text = {read=FText, write=SetText};
	__property System::UnicodeString Badge = {read=FBadge, write=SetBadge};
	__property System::UnicodeString Hint = {read=FHint, write=SetHint};
	__property bool StretchText = {read=FStretchText, write=SetStretchText, default=0};
	__property bool TextVisible = {read=FTextVisible, write=SetTextVisible, default=1};
	__property bool TabVisible = {read=FVisible, write=SetVisible, default=1};
	__property Fmx::Tmsfnctypes::TTMSFNCScaledBitmaps* Bitmaps = {read=FBitmaps, write=SetBitmaps};
	__property Fmx::Tmsfnctypes::TTMSFNCScaledBitmaps* DisabledBitmaps = {read=FDisabledBitmaps, write=SetDisabledBitmaps};
	__property bool BitmapVisible = {read=FBitmapVisible, write=SetBitmapVisible, default=0};
	__property float BitmapSize = {read=FBitmapSize, write=SetBitmapSize, stored=IsBitmapSizeStored};
	__property bool WordWrapping = {read=FWordWrapping, write=SetWordWrapping, default=0};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextTrimming Trimming = {read=FTrimming, write=SetTrimming, default=1};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign TextAlign = {read=FTextAlign, write=SetTextAlign, default=0};
	__property System::Uitypes::TAlphaColor TextColor = {read=FTextColor, write=SetTextColor, default=-16777216};
	__property System::Uitypes::TAlphaColor ActiveTextColor = {read=FActiveTextColor, write=SetActiveTextColor, default=-16777216};
	__property System::Uitypes::TAlphaColor HoverTextColor = {read=FHoverTextColor, write=SetHoverTextColor, default=-16777216};
	__property System::Uitypes::TAlphaColor DownTextColor = {read=FDownTextColor, write=SetDownTextColor, default=-16777216};
	__property System::Uitypes::TAlphaColor DisabledTextColor = {read=FDisabledTextColor, write=SetDisabledTextColor, default=-16777216};
	__property System::Uitypes::TAlphaColor Color = {read=FColor, write=SetColor, default=-1181704};
	__property System::Uitypes::TAlphaColor ProgressColor = {read=FProgressColor, write=SetProgressColor, default=-14963208};
	__property System::Uitypes::TAlphaColor ActiveColor = {read=FActiveColor, write=SetActiveColor, default=-1};
	__property System::Uitypes::TAlphaColor HoverColor = {read=FHoverColor, write=SetHoverColor, default=-1839624};
	__property System::Uitypes::TAlphaColor DownColor = {read=FDownColor, write=SetDownColor, default=-2497554};
	__property System::Uitypes::TAlphaColor DisabledColor = {read=FDisabledColor, write=SetDisabledColor, default=-2894893};
	__property bool Enabled = {read=FEnabled, write=SetEnabled, default=1};
	__property bool Visible = {read=FVisible, write=SetVisible, default=1};
	__property bool UseDefaultAppearance = {read=FUseDefaultAppearance, write=SetUseDefaultAppearance, default=0};
	__property float Width = {read=FWidth, write=SetWidth, stored=IsWidthStored};
	__property TTMSFNCTabSetTabShape Shape = {read=FShape, write=SetShape, default=3};
	__property NativeInt Tag = {read=FTag, write=FTag, default=0};
	__property float Progress = {read=FProgress, write=SetProgress, stored=IsProgressStored};
	__property float ProgressMax = {read=FProgressMax, write=SetProgressMax, stored=IsProgressMaxStored};
	__property TTMSFNCTabSetTabProgressMode ProgressMode = {read=FProgressMode, write=SetProgressMode, default=0};
	__property TTMSFNCTabSetTabProgressKind ProgressKind = {read=FProgressKind, write=SetProgressKind, default=0};
	__property bool CloseButton = {read=FCloseButton, write=SetCloseButton, default=1};
	__property System::Uitypes::TAlphaColor BadgeTextColor = {read=FBadgeTextColor, write=SetBadgeTextColor, default=-7667712};
	__property System::Uitypes::TAlphaColor BadgeColor = {read=FBadgeColor, write=SetBadgeColor, default=-23296};
};


class PASCALIMPLEMENTATION TTMSFNCTabSetTabs : public Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCTabSetTab*>
{
	typedef Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCTabSetTab*> inherited;
	
public:
	TTMSFNCTabSetTab* operator[](int Index) { return this->Tabs[Index]; }
	
private:
	System::_di_IInterface FOwnerInterface;
	TTMSFNCCustomTabSet* FTabSet;
	TTMSFNCTabSetTab* __fastcall GetTab(int Index);
	void __fastcall SetTab(int Index, TTMSFNCTabSetTab* const Value);
	
protected:
	virtual System::TObject* __fastcall CreateObject(const System::UnicodeString AClassName, const System::TClass ABaseClass);
	virtual System::TClass __fastcall GetInterfaceItemClass();
	int __stdcall _AddRef();
	int __stdcall _Release();
	virtual System::Classes::TCollectionItemClass __fastcall GetTabClass();
	
public:
	virtual HRESULT __stdcall QueryInterface(const GUID IID, /* out */ void *Obj);
	TTMSFNCCustomTabSet* __fastcall TabSet();
	__fastcall virtual TTMSFNCTabSetTabs(TTMSFNCCustomTabSet* ATabSet);
	HIDESBASE TTMSFNCTabSetTab* __fastcall Add();
	HIDESBASE TTMSFNCTabSetTab* __fastcall Insert(int Index);
	HIDESBASE virtual void __fastcall Clear();
	__property TTMSFNCTabSetTab* Tabs[int Index] = {read=GetTab, write=SetTab/*, default*/};
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCTabSetTabs() { }
	
private:
	void *__ITMSFNCBasePersistenceIO;	// Fmx::Tmsfncpersistence::ITMSFNCBasePersistenceIO 
	void *__ITMSFNCBaseListIO;	// Fmx::Tmsfncpersistence::ITMSFNCBaseListIO 
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {91DEAFC3-8932-45F4-A3ED-5AAA0C0E9250}
	operator Fmx::Tmsfncpersistence::_di_ITMSFNCBasePersistenceIO()
	{
		Fmx::Tmsfncpersistence::_di_ITMSFNCBasePersistenceIO intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator Fmx::Tmsfncpersistence::ITMSFNCBasePersistenceIO*(void) { return (Fmx::Tmsfncpersistence::ITMSFNCBasePersistenceIO*)&__ITMSFNCBasePersistenceIO; }
	#endif
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {FAB1D21E-D798-4CE0-B17B-9D75E4456AB4}
	operator Fmx::Tmsfncpersistence::_di_ITMSFNCBaseListIO()
	{
		Fmx::Tmsfncpersistence::_di_ITMSFNCBaseListIO intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator Fmx::Tmsfncpersistence::ITMSFNCBaseListIO*(void) { return (Fmx::Tmsfncpersistence::ITMSFNCBaseListIO*)&__ITMSFNCBaseListIO; }
	#endif
	
};


class PASCALIMPLEMENTATION TTMSFNCTabSetTabSize : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	TTMSFNCCustomTabSet* FTabSet;
	TTMSFNCTabSetTabSizeMode FMode;
	float FWidth;
	float FHeight;
	float FSpacing;
	Fmx::Tmsfnctypes::TTMSFNCMargins* FMargins;
	System::Classes::TNotifyEvent FOnChange;
	bool __fastcall IsHeightStored();
	bool __fastcall IsWidthStored();
	void __fastcall SetHeight(const float Value);
	void __fastcall SetMode(const TTMSFNCTabSetTabSizeMode Value);
	void __fastcall SetWidth(const float Value);
	bool __fastcall IsSpacingStored();
	void __fastcall SetMargins(Fmx::Tmsfnctypes::TTMSFNCMargins* const Value);
	void __fastcall SetSpacing(const float Value);
	
protected:
	void __fastcall ChangeDPIScale(int M, int D);
	void __fastcall UpdateTabs();
	void __fastcall MarginsChanged(System::TObject* Sender);
	
public:
	__fastcall TTMSFNCTabSetTabSize(TTMSFNCCustomTabSet* ATabSet);
	__fastcall virtual ~TTMSFNCTabSetTabSize();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__property System::Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
	
__published:
	__property TTMSFNCTabSetTabSizeMode Mode = {read=FMode, write=SetMode, default=3};
	__property float Width = {read=FWidth, write=SetWidth, stored=IsWidthStored};
	__property float Height = {read=FHeight, write=SetHeight, stored=IsHeightStored};
	__property Fmx::Tmsfnctypes::TTMSFNCMargins* Margins = {read=FMargins, write=SetMargins};
	__property float Spacing = {read=FSpacing, write=SetSpacing, stored=IsSpacingStored};
};


enum DECLSPEC_DENUM TTMSFNCTabSetCloseMode : unsigned char { tcmNone, tcmTab, tcmMenu };

enum DECLSPEC_DENUM TTMSFNCTabSetInsertMode : unsigned char { timNone, timTab, timMenu };

class PASCALIMPLEMENTATION TTMSFNCTabSetButtonAppearance : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	TTMSFNCCustomTabSet* FTabSet;
	float FSize;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FHoverFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FHoverStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FDownFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FDownStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FDisabledFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FDisabledStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FFill;
	Fmx::Tmsfnctypes::TTMSFNCBitmap* FCloseIcon;
	Fmx::Tmsfnctypes::TTMSFNCBitmap* FScrollPreviousIcon;
	Fmx::Tmsfnctypes::TTMSFNCBitmap* FInsertIcon;
	Fmx::Tmsfnctypes::TTMSFNCBitmap* FScrollNextIcon;
	Fmx::Tmsfnctypes::TTMSFNCBitmap* FTabListIcon;
	float FRounding;
	bool __fastcall IsSizedStored();
	void __fastcall SetSize(const float Value);
	void __fastcall SetDisabledFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetDisabledStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetDownFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetDownStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetHoverFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetHoverStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetCloseIcon(Fmx::Tmsfnctypes::TTMSFNCBitmap* const Value);
	void __fastcall SetInsertIcon(Fmx::Tmsfnctypes::TTMSFNCBitmap* const Value);
	void __fastcall SetScrollNextIcon(Fmx::Tmsfnctypes::TTMSFNCBitmap* const Value);
	void __fastcall SetScrollPreviousIcon(Fmx::Tmsfnctypes::TTMSFNCBitmap* const Value);
	void __fastcall SetTabListIcon(Fmx::Tmsfnctypes::TTMSFNCBitmap* const Value);
	bool __fastcall IsRoundingStored();
	void __fastcall SetRounding(const float Value);
	
protected:
	void __fastcall UpdateTabs();
	void __fastcall FillChanged(System::TObject* Sender);
	void __fastcall StrokeChanged(System::TObject* Sender);
	void __fastcall BitmapChanged(System::TObject* Sender);
	
public:
	__fastcall TTMSFNCTabSetButtonAppearance(TTMSFNCCustomTabSet* ATabSet);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual ~TTMSFNCTabSetButtonAppearance();
	
__published:
	__property float Rounding = {read=FRounding, write=SetRounding, stored=IsRoundingStored};
	__property float Size = {read=FSize, write=SetSize, stored=IsSizedStored};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* Fill = {read=FFill, write=SetFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* Stroke = {read=FStroke, write=SetStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* DownFill = {read=FDownFill, write=SetDownFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* DownStroke = {read=FDownStroke, write=SetDownStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* DisabledFill = {read=FDisabledFill, write=SetDisabledFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* DisabledStroke = {read=FDisabledStroke, write=SetDisabledStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* HoverFill = {read=FHoverFill, write=SetHoverFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* HoverStroke = {read=FHoverStroke, write=SetHoverStroke};
	__property Fmx::Tmsfnctypes::TTMSFNCBitmap* CloseIcon = {read=FCloseIcon, write=SetCloseIcon};
	__property Fmx::Tmsfnctypes::TTMSFNCBitmap* InsertIcon = {read=FInsertIcon, write=SetInsertIcon};
	__property Fmx::Tmsfnctypes::TTMSFNCBitmap* TabListIcon = {read=FTabListIcon, write=SetTabListIcon};
	__property Fmx::Tmsfnctypes::TTMSFNCBitmap* ScrollNextIcon = {read=FScrollNextIcon, write=SetScrollNextIcon};
	__property Fmx::Tmsfnctypes::TTMSFNCBitmap* ScrollPreviousIcon = {read=FScrollPreviousIcon, write=SetScrollPreviousIcon};
};


class PASCALIMPLEMENTATION TTMSFNCTabSetTabAppearance : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	TTMSFNCCustomTabSet* FTabSet;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FHoverStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FDownFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FDownStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FDisabledFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FFont;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FActiveFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FDisabledStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FActiveStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FHoverFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FStroke;
	bool FWordWrapping;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextTrimming FTrimming;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign FTextAlign;
	TTMSFNCTabSetTabShape FShape;
	float FShapeOverlap;
	float FShapeSlope;
	System::Uitypes::TAlphaColor FTextColor;
	System::Uitypes::TAlphaColor FHoverTextColor;
	System::Uitypes::TAlphaColor FDownTextColor;
	System::Uitypes::TAlphaColor FDisabledTextColor;
	System::Uitypes::TAlphaColor FActiveTextColor;
	bool FShowFocus;
	System::Uitypes::TAlphaColor FFocusBorderColor;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FProgressFill;
	float FShapeRounding;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FProgressStroke;
	float FCloseSize;
	float FProgressCircularSize;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FCloseHoverStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FCloseDownFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FCloseDownStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FCloseFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FCloseHoverFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FCloseStroke;
	float FInsertSize;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FBadgeFont;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FBadgeFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FBadgeStroke;
	float FTextSpacing;
	void __fastcall SetDisabledFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetDisabledStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetDownFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetDownStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetHoverFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetHoverStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetActiveFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetActiveStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetTextAlign(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign Value);
	void __fastcall SetTrimming(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextTrimming Value);
	void __fastcall SetWordWrapping(const bool Value);
	void __fastcall SetShape(const TTMSFNCTabSetTabShape Value);
	void __fastcall SetShapeOverlap(const float Value);
	bool __fastcall IsShapeOverlapStored();
	bool __fastcall IsShapeSlopeStored();
	void __fastcall SetShapeSlope(const float Value);
	void __fastcall SetActiveTextColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetDisabledTextColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetDownTextColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetHoverTextColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetTextColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetFocusBorderColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetShowFocus(const bool Value);
	void __fastcall SetProgressFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	bool __fastcall IsShapeRoundingStored();
	void __fastcall SetShapeRounding(const float Value);
	void __fastcall SetProgressStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	bool __fastcall IsCloseSizeStored();
	void __fastcall SetCloseSize(const float Value);
	bool __fastcall IsProgressCircularSizeStored();
	void __fastcall SetProgressCircularSize(const float Value);
	void __fastcall SetCloseDownFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetCloseDownStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetCloseFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetCloseHoverFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetCloseHoverStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetCloseStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	bool __fastcall IsInsertSizeStored();
	void __fastcall SetInsertSize(const float Value);
	void __fastcall SetBadgeFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetBadgeFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetBadgeStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetTextSpacing(const float Value);
	
protected:
	void __fastcall ChangeDPIScale(int M, int D);
	void __fastcall UpdateTabs();
	void __fastcall FillChanged(System::TObject* Sender);
	void __fastcall StrokeChanged(System::TObject* Sender);
	void __fastcall FontChanged(System::TObject* Sender);
	
public:
	__fastcall TTMSFNCTabSetTabAppearance(TTMSFNCCustomTabSet* ATabSet);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual ~TTMSFNCTabSetTabAppearance();
	
__published:
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* Font = {read=FFont, write=SetFont};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* ProgressFill = {read=FProgressFill, write=SetProgressFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* ProgressStroke = {read=FProgressStroke, write=SetProgressStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* Fill = {read=FFill, write=SetFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* Stroke = {read=FStroke, write=SetStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* ActiveFill = {read=FActiveFill, write=SetActiveFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* ActiveStroke = {read=FActiveStroke, write=SetActiveStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* DisabledFill = {read=FDisabledFill, write=SetDisabledFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* DisabledStroke = {read=FDisabledStroke, write=SetDisabledStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* DownFill = {read=FDownFill, write=SetDownFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* DownStroke = {read=FDownStroke, write=SetDownStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* HoverFill = {read=FHoverFill, write=SetHoverFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* HoverStroke = {read=FHoverStroke, write=SetHoverStroke};
	__property bool WordWrapping = {read=FWordWrapping, write=SetWordWrapping, default=0};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextTrimming Trimming = {read=FTrimming, write=SetTrimming, default=1};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign TextAlign = {read=FTextAlign, write=SetTextAlign, default=0};
	__property float TextSpacing = {read=FTextSpacing, write=SetTextSpacing};
	__property TTMSFNCTabSetTabShape Shape = {read=FShape, write=SetShape, default=3};
	__property float ShapeOverlap = {read=FShapeOverlap, write=SetShapeOverlap, stored=IsShapeOverlapStored};
	__property float ShapeSlope = {read=FShapeSlope, write=SetShapeSlope, stored=IsShapeSlopeStored};
	__property float ShapeRounding = {read=FShapeRounding, write=SetShapeRounding, stored=IsShapeRoundingStored};
	__property System::Uitypes::TAlphaColor TextColor = {read=FTextColor, write=SetTextColor, default=-16777216};
	__property System::Uitypes::TAlphaColor ActiveTextColor = {read=FActiveTextColor, write=SetActiveTextColor, default=-16777216};
	__property System::Uitypes::TAlphaColor HoverTextColor = {read=FHoverTextColor, write=SetHoverTextColor, default=-16777216};
	__property System::Uitypes::TAlphaColor DownTextColor = {read=FDownTextColor, write=SetDownTextColor, default=-16777216};
	__property System::Uitypes::TAlphaColor DisabledTextColor = {read=FDisabledTextColor, write=SetDisabledTextColor, default=-16777216};
	__property bool ShowFocus = {read=FShowFocus, write=SetShowFocus, default=1};
	__property System::Uitypes::TAlphaColor FocusBorderColor = {read=FFocusBorderColor, write=SetFocusBorderColor, default=-16777216};
	__property float ProgressCircularSize = {read=FProgressCircularSize, write=SetProgressCircularSize, stored=IsProgressCircularSizeStored};
	__property float InsertSize = {read=FInsertSize, write=SetInsertSize, stored=IsInsertSizeStored};
	__property float CloseSize = {read=FCloseSize, write=SetCloseSize, stored=IsCloseSizeStored};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* CloseFill = {read=FCloseFill, write=SetCloseFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* CloseStroke = {read=FCloseStroke, write=SetCloseStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* CloseDownFill = {read=FCloseDownFill, write=SetCloseDownFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* CloseDownStroke = {read=FCloseDownStroke, write=SetCloseDownStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* CloseHoverFill = {read=FCloseHoverFill, write=SetCloseHoverFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* CloseHoverStroke = {read=FCloseHoverStroke, write=SetCloseHoverStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* BadgeFill = {read=FBadgeFill, write=SetBadgeFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* BadgeStroke = {read=FBadgeStroke, write=SetBadgeStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* BadgeFont = {read=FBadgeFont, write=SetBadgeFont};
};


class PASCALIMPLEMENTATION TTMSFNCTabSetLayout : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	TTMSFNCCustomTabSet* FTabSet;
	TTMSFNCTabSetLayoutMultiline FMultiline;
	TTMSFNCTabSetLayoutPosition FPosition;
	System::Classes::TNotifyEvent FOnChange;
	void __fastcall SetMultiline(const TTMSFNCTabSetLayoutMultiline Value);
	void __fastcall SetPosition(const TTMSFNCTabSetLayoutPosition Value);
	
protected:
	void __fastcall UpdateTabs();
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall TTMSFNCTabSetLayout(TTMSFNCCustomTabSet* ATabSet);
	__property System::Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
	
__published:
	__property TTMSFNCTabSetLayoutPosition Position = {read=FPosition, write=SetPosition, default=1};
	__property TTMSFNCTabSetLayoutMultiline Multiline = {read=FMultiline, write=SetMultiline, default=0};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTMSFNCTabSetLayout() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCTabSetInteraction : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	TTMSFNCCustomTabSet* FTabSet;
	bool FSelectTabOnFocus;
	bool FEditing;
	bool FSelectTabOnInsert;
	bool FSelectTabOnScroll;
	bool FInsertTabWithKeyboard;
	bool FCloseTabWithKeyboard;
	bool FAutoOpenURL;
	bool FReorder;
	
protected:
	void __fastcall UpdateTabs();
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall TTMSFNCTabSetInteraction(TTMSFNCCustomTabSet* ATabSet);
	
__published:
	__property bool SelectTabOnFocus = {read=FSelectTabOnFocus, write=FSelectTabOnFocus, default=1};
	__property bool SelectTabOnInsert = {read=FSelectTabOnInsert, write=FSelectTabOnInsert, default=1};
	__property bool SelectTabOnScroll = {read=FSelectTabOnScroll, write=FSelectTabOnScroll, default=1};
	__property bool Editing = {read=FEditing, write=FEditing, default=0};
	__property bool CloseTabWithKeyboard = {read=FCloseTabWithKeyboard, write=FCloseTabWithKeyboard, default=1};
	__property bool InsertTabWithKeyboard = {read=FInsertTabWithKeyboard, write=FInsertTabWithKeyboard, default=1};
	__property bool AutoOpenURL = {read=FAutoOpenURL, write=FAutoOpenURL, default=1};
	__property bool Reorder = {read=FReorder, write=FReorder, default=0};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTMSFNCTabSetInteraction() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCTabSetOptions : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	TTMSFNCCustomTabSet* FTabSet;
	TTMSFNCTabSetCloseMode FCloseMode;
	TTMSFNCTabSetInsertMode FInsertMode;
	bool FTabListButton;
	TTMSFNCTabSetTabCloseAction FCloseAction;
	void __fastcall SetCloseMode(const TTMSFNCTabSetCloseMode Value);
	void __fastcall SetInsertMode(const TTMSFNCTabSetInsertMode Value);
	void __fastcall SetTabListButton(const bool Value);
	
protected:
	void __fastcall UpdateTabs();
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall TTMSFNCTabSetOptions(TTMSFNCCustomTabSet* ATabSet);
	
__published:
	__property TTMSFNCTabSetCloseMode CloseMode = {read=FCloseMode, write=SetCloseMode, default=0};
	__property TTMSFNCTabSetTabCloseAction CloseAction = {read=FCloseAction, write=FCloseAction, default=2};
	__property TTMSFNCTabSetInsertMode InsertMode = {read=FInsertMode, write=SetInsertMode, default=0};
	__property bool TabListButton = {read=FTabListButton, write=SetTabListButton, default=0};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTMSFNCTabSetOptions() { }
	
};


enum DECLSPEC_DENUM TTMSFNCTabSetButtonState : unsigned char { tbsNormal, tbsHover, tbsDown, tbsDisabled };

enum DECLSPEC_DENUM TTMSFNCTabSetTabState : unsigned char { ttsNormal, ttsHover, ttsDown, ttsActive, ttsDisabled };

typedef Fmx::Controls::TControl TTMSFNCTabSetInplaceEditor;

enum DECLSPEC_DENUM TTMSFNCTabSetMenuButton : unsigned char { tmbClose, tmbInsert, tmbTabList, tmbScrollPrevious, tmbScrollNext };

typedef void __fastcall (__closure *TTMSFNCTabSetBeforeReorderTabEvent)(System::TObject* Sender, int ACurrentTabIndex, int ANewTabIndex, bool &ACanReorder);

typedef void __fastcall (__closure *TTMSFNCTabSetBeforeChangeTabEvent)(System::TObject* Sender, int ACurrentTabIndex, int ANewTabIndex, bool &ACanChange);

typedef void __fastcall (__closure *TTMSFNCTabSetChangeTabEvent)(System::TObject* Sender, int APreviousTabIndex, int ACurrentTabIndex);

typedef void __fastcall (__closure *TTMSFNCTabSetReorderTabEvent)(System::TObject* Sender, int APreviousTabIndex, int ACurrentTabIndex);

typedef void __fastcall (__closure *TTMSFNCTabSetBeforeCloseTabEvent)(System::TObject* Sender, int ATabIndex, TTMSFNCTabSetTabCloseAction &ACloseAction);

typedef void __fastcall (__closure *TTMSFNCTabSetCloseTabEvent)(System::TObject* Sender, int ATabIndex, TTMSFNCTabSetTabCloseAction ACloseAction);

typedef void __fastcall (__closure *TTMSFNCTabSetBeforeInsertTabEvent)(System::TObject* Sender, int &ANewTabIndex, bool &ACanInsert);

typedef void __fastcall (__closure *TTMSFNCTabSetInsertTabEvent)(System::TObject* Sender, int ANewTabIndex);

_DECLARE_METACLASS(System::TMetaClass, TTMSFNCTabSetInplaceEditorClass);

typedef void __fastcall (__closure *TTMSFNCTabSetCustomizeInplaceEditorEvent)(System::TObject* Sender, int ATabIndex, Fmx::Controls::TControl* AInplaceEditor);

typedef void __fastcall (__closure *TTMSFNCTabSetGetInplaceEditorRectEvent)(System::TObject* Sender, int ATabIndex, Fmx::Controls::TControl* AInplaceEditor, System::Types::TRectF &AInplaceEditorRect);

typedef void __fastcall (__closure *TTMSFNCTabSetGetInplaceEditorEvent)(System::TObject* Sender, int ATabIndex, TTMSFNCTabSetInplaceEditorClass &AInplaceEditorClass);

typedef void __fastcall (__closure *TTMSFNCTabSetBeforeOpenInplaceEditorEvent)(System::TObject* Sender, int ATabIndex, bool &ACanOpen);

typedef void __fastcall (__closure *TTMSFNCTabSetOpenInplaceEditorEvent)(System::TObject* Sender, int ATabIndex, Fmx::Controls::TControl* AInplaceEditor, const System::Types::TRectF &AInplaceEditorRect);

typedef void __fastcall (__closure *TTMSFNCTabSetCloseInplaceEditorEvent)(System::TObject* Sender, int ATabIndex, Fmx::Controls::TControl* AInplaceEditor, bool ACancelled, bool &ACanClose);

typedef void __fastcall (__closure *TTMSFNCTabSetBeforeUpdateTabEvent)(System::TObject* Sender, int ATabIndex, System::UnicodeString &AText, bool &ACanUpdate);

typedef void __fastcall (__closure *TTMSFNCTabSetUpdateTabEvent)(System::TObject* Sender, int ATabIndex);

typedef void __fastcall (__closure *TTMSFNCTabSetAnchorTabClickEvent)(System::TObject* Sender, int ATabIndex, System::UnicodeString AAnchor);

typedef void __fastcall (__closure *TTMSFNCTabSetBeforeDrawTabBackgroundEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, int ATabIndex, const System::Types::TRectF &ARect, TTMSFNCTabSetTabState AState, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCTabSetBeforeDrawTabProgressEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, int ATabIndex, const System::Types::TRectF &ARect, TTMSFNCTabSetTabProgressMode AProgressMode, TTMSFNCTabSetTabProgressKind AProgressKind, float AAnimationStartAngle, float AAnimationSweepAngle, float AProgress, float AProgressMax, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCTabSetBeforeDrawTabBadgeEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, int ATabIndex, const System::Types::TRectF &ARect, System::UnicodeString AText, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCTabSetBeforeDrawTabTextEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, int ATabIndex, const System::Types::TRectF &ARect, System::UnicodeString AText, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCTabSetBeforeDrawTabCloseButtonEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, int ATabIndex, const System::Types::TRectF &ARect, TTMSFNCTabSetButtonState AState, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCTabSetBeforeDrawTabBitmapEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, int ATabIndex, const System::Types::TRectF &ARect, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCTabSetAfterDrawTabBackgroundEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, int ATabIndex, const System::Types::TRectF &ARect, TTMSFNCTabSetTabState AState);

typedef void __fastcall (__closure *TTMSFNCTabSetAfterDrawTabProgressEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, int ATabIndex, const System::Types::TRectF &ARect, TTMSFNCTabSetTabProgressMode AProgressMode, TTMSFNCTabSetTabProgressKind AProgressKind, float AAnimationStartAngle, float AAnimationSweepAngle, float AProgress, float AProgressMax);

typedef void __fastcall (__closure *TTMSFNCTabSetAfterDrawTabBadgeEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, int ATabIndex, const System::Types::TRectF &ARect, System::UnicodeString AText);

typedef void __fastcall (__closure *TTMSFNCTabSetAfterDrawTabTextEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, int ATabIndex, const System::Types::TRectF &ARect, System::UnicodeString AText);

typedef void __fastcall (__closure *TTMSFNCTabSetAfterDrawTabCloseButtonEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, int ATabIndex, const System::Types::TRectF &ARect, TTMSFNCTabSetButtonState AState);

typedef void __fastcall (__closure *TTMSFNCTabSetAfterDrawTabBitmapEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, int ATabIndex, const System::Types::TRectF &ARect);

typedef void __fastcall (__closure *TTMSFNCTabSetBeforeDrawMenuButton)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCTabSetMenuButton AButton, TTMSFNCTabSetButtonState AState, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCTabSetAfterDrawMenuButton)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCTabSetMenuButton AButton, TTMSFNCTabSetButtonState AState);

class PASCALIMPLEMENTATION TTMSFNCTabSetEdit : public Fmx::Edit::TEdit
{
	typedef Fmx::Edit::TEdit inherited;
	
private:
	TTMSFNCCustomTabSet* FTabSet;
	
protected:
	virtual System::UnicodeString __fastcall GetDefaultStyleLookupName();
	virtual void __fastcall DoExit();
	
public:
	__fastcall virtual TTMSFNCTabSetEdit(System::Classes::TComponent* AOwner)/* overload */;
public:
	/* TCustomEdit.Destroy */ inline __fastcall virtual ~TTMSFNCTabSetEdit() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCustomTabSet : public Fmx::Tmsfnccustomcontrol::TTMSFNCCustomControl
{
	typedef Fmx::Tmsfnccustomcontrol::TTMSFNCCustomControl inherited;
	
private:
	bool FPersistence;
	Fmx::Types::TTimer* FInplaceEditorTimer;
	float FTotalTabHeight;
	float FDownX;
	float FDownY;
	float FDragDownX;
	float FDragDownY;
	bool FClosing;
	System::UnicodeString FTabAnchor;
	bool FDblClicked;
	bool FInplaceEditorClosed;
	bool FCloseWithDialogKey;
	TTMSFNCTabSetDisplayTab FUpdateTab;
	TTMSFNCTabSetInplaceEditorClass FInplaceEditorClass;
	Fmx::Controls::TControl* FInplaceEditor;
	bool FInplaceEditorActive;
	float FMenuSize;
	TTMSFNCTabSetInvisibleTabList* FInvisibleTabList;
	Fmx::Tmsfncpopup::TTMSFNCPopup* FTabListPopup;
	Fmx::Listbox::TListBox* FTabList;
	int FFirstTabIndex;
	int FLastTabIndex;
	TTMSFNCTabSetButtonState FTabListButtonState;
	TTMSFNCTabSetButtonState FCloseButtonState;
	TTMSFNCTabSetButtonState FInsertButtonState;
	TTMSFNCTabSetButtonState FScrollButtonPreviousState;
	TTMSFNCTabSetButtonState FScrollButtonNextState;
	TTMSFNCTabSetButtonState FPrevTabListButtonState;
	TTMSFNCTabSetButtonState FPrevCloseButtonState;
	TTMSFNCTabSetButtonState FPrevInsertButtonState;
	TTMSFNCTabSetButtonState FPrevScrollButtonPreviousState;
	TTMSFNCTabSetButtonState FPrevScrollButtonNextState;
	bool FScrollButtonNextDisabled;
	bool FScrollButtonPreviousDisabled;
	bool FShowMenu;
	bool FShowScrollButtons;
	bool FAllowScrolling;
	bool FShowCloseButton;
	bool FShowTabListButton;
	bool FShowInsertButton;
	TTMSFNCTabSetTab* FInsertTab;
	TTMSFNCTabSetTab* FDragTab;
	int FActiveTabIndex;
	int FDownCount;
	Fmx::Types::TTimer* FAnimTimer;
	Fmx::Types::TTimer* FDownTimer;
	TTMSFNCTabSetTab* FActiveTab;
	TTMSFNCTabSetTab* FFocusedTab;
	TTMSFNCTabSetTab* FPrevTab;
	TTMSFNCTabSetTab* FDownTab;
	TTMSFNCTabSetTab* FPrevHoverTab;
	TTMSFNCTabSetTab* FHoverTab;
	bool FTabChanging;
	TTMSFNCTabSetTab* FDownCloseTab;
	TTMSFNCTabSetTab* FHoverCloseTab;
	TTMSFNCTabSetTab* FPrevHoverCloseTab;
	TTMSFNCTabSetDisplayTab FDragTabDisplay;
	System::Types::TRectF FOrigRect;
	int FStartTab;
	int FScrollCount;
	int FUpdateCount;
	TTMSFNCTabSetDisplayList* FDisplayList;
	Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* FBitmapContainer;
	TTMSFNCTabSetTabs* FTabs;
	TTMSFNCTabSetTabSize* FTabSize;
	TTMSFNCTabSetLayout* FLayout;
	TTMSFNCTabSetTabAppearance* FTabAppearance;
	TTMSFNCTabSetInteraction* FInteraction;
	TTMSFNCTabSetChangeTabEvent FOnChangeTab;
	TTMSFNCTabSetCloseTabEvent FOnCloseTab;
	TTMSFNCTabSetBeforeChangeTabEvent FOnBeforeChangeTab;
	TTMSFNCTabSetBeforeCloseTabEvent FOnBeforeCloseTab;
	TTMSFNCTabSetOptions* FOptions;
	TTMSFNCTabSetInsertTabEvent FOnInsertTab;
	TTMSFNCTabSetBeforeInsertTabEvent FOnBeforeInsertTab;
	TTMSFNCTabSetButtonAppearance* FButtonAppearance;
	TTMSFNCTabSetGetInplaceEditorRectEvent FOnGetInplaceEditorRect;
	TTMSFNCTabSetCustomizeInplaceEditorEvent FOnCustomizeInplaceEditor;
	TTMSFNCTabSetOpenInplaceEditorEvent FOnOpenInplaceEditor;
	TTMSFNCTabSetGetInplaceEditorEvent FOnGetInplaceEditor;
	TTMSFNCTabSetCloseInplaceEditorEvent FOnCloseInplaceEditor;
	TTMSFNCTabSetBeforeOpenInplaceEditorEvent FOnBeforeOpenInplaceEditor;
	TTMSFNCTabSetUpdateTabEvent FOnUpdateTab;
	TTMSFNCTabSetBeforeUpdateTabEvent FOnBeforeUpdateTab;
	TTMSFNCTabSetAnchorTabClickEvent FOnAnchorTabClick;
	TTMSFNCTabSetReorderTabEvent FOnReorderTab;
	TTMSFNCTabSetBeforeReorderTabEvent FOnBeforeReorderTab;
	TTMSFNCTabSetBeforeDrawTabBadgeEvent FOnBeforeDrawTabBadge;
	TTMSFNCTabSetBeforeDrawTabTextEvent FOnBeforeDrawTabText;
	TTMSFNCTabSetAfterDrawTabBackgroundEvent FOnAfterDrawTabBackground;
	TTMSFNCTabSetAfterDrawTabBitmapEvent FOnAfterDrawTabBitmap;
	TTMSFNCTabSetBeforeDrawTabCloseButtonEvent FOnBeforeDrawTabCloseButton;
	TTMSFNCTabSetAfterDrawTabProgressEvent FOnAfterDrawTabProgress;
	TTMSFNCTabSetAfterDrawTabBadgeEvent FOnAfterDrawTabBadge;
	TTMSFNCTabSetAfterDrawTabTextEvent FOnAfterDrawTabText;
	TTMSFNCTabSetAfterDrawTabCloseButtonEvent FOnAfterDrawTabCloseButton;
	TTMSFNCTabSetBeforeDrawTabBackgroundEvent FOnBeforeDrawTabBackground;
	TTMSFNCTabSetBeforeDrawTabBitmapEvent FOnBeforeDrawTabBitmap;
	TTMSFNCTabSetBeforeDrawTabProgressEvent FOnBeforeDrawTabProgress;
	TTMSFNCTabSetAfterDrawMenuButton FOnAfterDrawMenuButton;
	TTMSFNCTabSetBeforeDrawMenuButton FOnBeforeDrawMenuButton;
	Fmx::Tmsfncgraphicstypes::TTMSFNCAppearanceGlobalFont* FGlobalFont;
	void __fastcall SetTabs(TTMSFNCTabSetTabs* const Value);
	void __fastcall SetTabSize(TTMSFNCTabSetTabSize* const Value);
	void __fastcall SetLayout(TTMSFNCTabSetLayout* const Value);
	void __fastcall SetTabAppearance(TTMSFNCTabSetTabAppearance* const Value);
	TTMSFNCTabSetTab* __fastcall GetActiveTab();
	int __fastcall GetActiveTabIndex();
	void __fastcall SetActiveTab(TTMSFNCTabSetTab* const Value);
	void __fastcall SetActiveTabIndex(const int Value);
	void __fastcall SetInteraction(TTMSFNCTabSetInteraction* const Value);
	void __fastcall SetOptions(TTMSFNCTabSetOptions* const Value);
	void __fastcall SetButtonAppearance(TTMSFNCTabSetButtonAppearance* const Value);
	Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* __fastcall GetBitmapContainer();
	void __fastcall SetAllowScrolling(const bool Value);
	void __fastcall SetGlobalFont(Fmx::Tmsfncgraphicstypes::TTMSFNCAppearanceGlobalFont* const Value);
	
protected:
	virtual System::TClass __fastcall GetItemClass();
	virtual System::TObject* __fastcall CreateObject(const System::UnicodeString AClassName, const System::TClass ABaseClass);
	virtual System::Classes::TCollectionItemClass __fastcall GetTabClass();
	virtual System::UnicodeString __fastcall GetDocURL();
	virtual bool __fastcall HandleDesignHitTest(const System::Types::TPoint &APoint);
	virtual System::UnicodeString __fastcall GetHintString();
	virtual bool __fastcall HasHint();
	virtual TTMSFNCTabSetTabs* __fastcall CreateTabs();
	virtual float __fastcall GetTotalTabHeight();
	virtual System::UnicodeString __fastcall GetVersion();
	virtual System::Types::TRectF __fastcall GetInnerTabRect();
	virtual float __fastcall GetTabSize(int ATabIndex);
	virtual int __fastcall GetTotalTabCount();
	virtual System::Types::TRectF __fastcall GetTabRect();
	virtual System::Types::TRectF __fastcall GetMenuRect();
	virtual int __fastcall GetVisibleTabCount();
	virtual int __fastcall GetInvisibleTabCount();
	virtual int __fastcall GetInvisibleTabCountForScrolling();
	virtual int __fastcall GetLastScrollableTabIndex();
	virtual int __fastcall GetFirstScrollableTabIndex();
	virtual int __fastcall GetDisplayCount();
	virtual int __fastcall GetNormalDisplayCount();
	virtual float __fastcall GetAdditionalTabSpacing();
	virtual Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsPath* __fastcall GetButtonShapePath(const System::Types::TRectF &ARect);
	virtual System::Types::TRectF __fastcall GetTabListButtonRect();
	virtual System::Types::TRectF __fastcall GetCloseButtonRect();
	virtual System::Types::TRectF __fastcall GetInsertButtonRect();
	virtual System::Types::TRectF __fastcall GetScrollButtonNextRect();
	virtual System::Types::TRectF __fastcall GetScrollButtonPreviousRect();
	virtual bool __fastcall IsButtonStateDown();
	virtual TTMSFNCTabSetDisplayTab __fastcall DragTabDisplay();
	virtual bool __fastcall IsButtonStateChanged();
	virtual int __fastcall GetNextTab(int ATabIndex);
	virtual int __fastcall GetPreviousTab(int ATabIndex);
	virtual TTMSFNCTabSetDisplayTab __fastcall GetDisplayTab(int ATabIndex);
	virtual TTMSFNCTabSetTab* __fastcall HandleInsertTab(bool &AChanged);
	virtual System::Types::TRectF __fastcall GetInplaceEditorRect(const TTMSFNCTabSetDisplayTab &ATab);
	virtual System::UnicodeString __fastcall XYToAnchor(const TTMSFNCTabSetDisplayTab &ATab, float X, float Y);
	virtual TTMSFNCTabSetDisplayTab __fastcall FindDisplayTabWithShortCutHint(System::UnicodeString AShortCutHint);
	virtual bool __fastcall ExecuteShortCutMethod(System::UnicodeString AShortCut);
	virtual void __fastcall GetShortCutHints(System::Classes::TStringList* AShortCutHints);
	virtual void __fastcall CustomizeShortCut(Fmx::Tmsfnchint::TTMSFNCHint* AShortCutWindow, System::UnicodeString AShortCut, const System::Types::TRectF &AShortCutRect, System::Types::TPointF &AShortCutPosition);
	virtual void __fastcall SetBitmapContainer(Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* const Value);
	virtual void __fastcall ChangeDPIScale(int M, int D);
	void __fastcall PopupListSelected(Fmx::Listbox::TCustomListBox* const Sender, Fmx::Listbox::TListBoxItem* const Item);
	void __fastcall ApplyInplaceEditorStyleLookup(System::TObject* Sender);
	void __fastcall DoInplaceEditorTimer(System::TObject* Sender);
	virtual void __fastcall ApplyStyle();
	virtual void __fastcall ResetToDefaultStyle();
	virtual void __fastcall DoRepaint();
	virtual void __fastcall InitializeInvisibleTabs();
	virtual void __fastcall InitializeScrollButtonState();
	virtual void __fastcall FillTabList();
	virtual void __fastcall SaveButtonState();
	virtual void __fastcall ClearButtonState();
	virtual void __fastcall HandleButtonDownState(float X, float Y);
	virtual void __fastcall HandleButtonHoverState(float X, float Y);
	virtual void __fastcall InitializeMenu();
	virtual void __fastcall StartProgressAnimationTimer();
	virtual void __fastcall Notification(System::Classes::TComponent* AComponent, System::Classes::TOperation Operation);
	virtual void __fastcall CalculateRects(TTMSFNCTabSetDisplayTab &ATab);
	virtual void __fastcall FixStartTab();
	virtual void __fastcall UpdateTabs(bool ACalculateScrolling = false, bool AForceUpdate = false);
	virtual void __fastcall DoBeforeDrawMenuButton(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCTabSetMenuButton AButton, TTMSFNCTabSetButtonState AState, bool &ADefaultDraw);
	virtual void __fastcall DoAfterDrawMenuButton(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCTabSetMenuButton AButton, TTMSFNCTabSetButtonState AState);
	virtual void __fastcall DoBeforeDrawTabBackground(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, int ATabIndex, const System::Types::TRectF &ARect, TTMSFNCTabSetTabState AState, bool &ADefaultDraw);
	virtual void __fastcall DoBeforeDrawTabProgress(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, int ATabIndex, const System::Types::TRectF &ARect, TTMSFNCTabSetTabProgressMode AProgressMode, TTMSFNCTabSetTabProgressKind AProgressKind, float AAnimationStartAngle, float AAnimationSweepAngle, float AProgress, float AProgressMax, bool &ADefaultDraw);
	virtual void __fastcall DoBeforeDrawTabBadge(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, int ATabIndex, const System::Types::TRectF &ARect, System::UnicodeString AText, bool &ADefaultDraw);
	virtual void __fastcall DoBeforeDrawTabText(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, int ATabIndex, const System::Types::TRectF &ARect, System::UnicodeString AText, bool &ADefaultDraw);
	virtual void __fastcall DoBeforeDrawTabCloseButton(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, int ATabIndex, const System::Types::TRectF &ARect, TTMSFNCTabSetButtonState AState, bool &ADefaultDraw);
	virtual void __fastcall DoBeforeDrawTabBitmap(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, int ATabIndex, const System::Types::TRectF &ARect, bool &ADefaultDraw);
	virtual void __fastcall DoAfterDrawTabBackground(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, int ATabIndex, const System::Types::TRectF &ARect, TTMSFNCTabSetTabState AState);
	virtual void __fastcall DoAfterDrawTabProgress(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, int ATabIndex, const System::Types::TRectF &ARect, TTMSFNCTabSetTabProgressMode AProgressMode, TTMSFNCTabSetTabProgressKind AProgressKind, float AAnimationStartAngle, float AAnimationSweepAngle, float AProgress, float AProgressMax);
	virtual void __fastcall DoAfterDrawTabBadge(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, int ATabIndex, const System::Types::TRectF &ARect, System::UnicodeString AText);
	virtual void __fastcall DoAfterDrawTabText(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, int ATabIndex, const System::Types::TRectF &ARect, System::UnicodeString AText);
	virtual void __fastcall DoAfterDrawTabCloseButton(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, int ATabIndex, const System::Types::TRectF &ARect, TTMSFNCTabSetButtonState AState);
	virtual void __fastcall DoAfterDrawTabBitmap(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, int ATabIndex, const System::Types::TRectF &ARect);
	virtual void __fastcall DoBeforeChangeTab(int ACurrentTabIndex, int ANewTabIndex, bool &ACanChange);
	virtual void __fastcall DoChangeTab(int APreviousTabIndex, int ACurrentTabIndex);
	virtual void __fastcall DoBeforeReorderTab(int ACurrentTabIndex, int ANewTabIndex, bool &ACanReorder);
	virtual void __fastcall DoReorderTab(int APreviousTabIndex, int ACurrentTabIndex);
	virtual void __fastcall DoBeforeCloseTab(int ATabIndex, TTMSFNCTabSetTabCloseAction &ACloseAction);
	virtual void __fastcall DoCloseTab(int ATabIndex, TTMSFNCTabSetTabCloseAction ACloseAction);
	virtual void __fastcall DoBeforeInsertTab(int &ANewTabIndex, bool &ACanInsert);
	virtual void __fastcall DoInsertTab(int ANewTabIndex);
	virtual void __fastcall DoAnchorTabClick(int ATabIndex, System::UnicodeString AAnchor);
	virtual void __fastcall Draw(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	virtual void __fastcall DrawTabs(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics);
	virtual void __fastcall DrawCustom(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics);
	virtual void __fastcall DrawBadges(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics);
	virtual void __fastcall DrawMenu(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics);
	virtual void __fastcall HandleMouseDown(System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall HandleMouseMove(System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall HandleDblClick(float X, float Y);
	virtual void __fastcall HandleMouseUp(System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall HandleMouseEnter();
	virtual void __fastcall HandleMouseLeave();
	virtual void __fastcall DoExit();
	virtual void __fastcall DoEnter();
	virtual void __fastcall UpdateControlAfterResize();
	virtual void __fastcall StartDownTimer();
	virtual void __fastcall StopDownTimer();
	virtual void __fastcall HandleKeyDown(System::Word &Key, System::Classes::TShiftState Shift);
	virtual void __fastcall HandleDialogKey(System::Word &Key, System::Classes::TShiftState Shift);
	virtual void __fastcall HandleKeyUp(System::Word &Key, System::Classes::TShiftState Shift);
	virtual void __fastcall HandleMouseWheel(System::Classes::TShiftState Shift, int WheelDelta, bool &Handled);
	virtual void __fastcall HandleCloseTab(TTMSFNCTabSetTab* ATab, bool &AChanged);
	virtual void __fastcall HandleDragTab(TTMSFNCTabSetTab* ATab, TTMSFNCTabSetTab* ADropTab);
	virtual void __fastcall HandleChangeTab(TTMSFNCTabSetTab* ATab);
	virtual void __fastcall HandleTabEditing(const TTMSFNCTabSetDisplayTab &ATab);
	virtual void __fastcall CustomizeInplaceEditor(Fmx::Controls::TControl* AInplaceEditor, const TTMSFNCTabSetDisplayTab &ATab);
	virtual void __fastcall SelectNextSequentialTab();
	void __fastcall AnimateTimerChanged(System::TObject* Sender);
	void __fastcall DownTimerChanged(System::TObject* Sender);
	virtual void __fastcall HandleScrollNext(bool &AChanged, bool ASelect = true);
	virtual void __fastcall HandleScrollPrevious(bool &AChanged, bool ASelect = true);
	virtual void __fastcall DoBeforeOpenInplaceEditor(int ATabIndex, bool &ACanOpen);
	virtual void __fastcall DoOpenInplaceEditor(int ATabIndex, Fmx::Controls::TControl* AInplaceEditor, const System::Types::TRectF &AInplaceEditorRect);
	virtual void __fastcall DoBeforeUpdateTab(int ATabIndex, System::UnicodeString &AText, bool &ACanUpdate);
	virtual void __fastcall DoUpdateTab(int ATabIndex);
	virtual void __fastcall DoCloseInplaceEditor(int ATabIndex, Fmx::Controls::TControl* AInplaceEditor, bool ACancelled, bool &ACanClose);
	virtual void __fastcall UpdateInplaceEditorPosition();
	virtual void __fastcall DoGetInplaceEditor(int ATabIndex, TTMSFNCTabSetInplaceEditorClass &AInplaceEditorClass);
	virtual void __fastcall SetFonts(Fmx::Tmsfncgraphicstypes::TTMSFNCAppearanceGlobalFontType ASetType);
	__property Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* BitmapContainer = {read=GetBitmapContainer, write=SetBitmapContainer};
	__property bool AllowScrolling = {read=FAllowScrolling, write=SetAllowScrolling, default=1};
	__property TTMSFNCTabSetTabs* Tabs = {read=FTabs, write=SetTabs};
	__property TTMSFNCTabSetTabSize* TabSize = {read=FTabSize, write=SetTabSize};
	__property TTMSFNCTabSetLayout* Layout = {read=FLayout, write=SetLayout};
	__property TTMSFNCTabSetTabAppearance* TabAppearance = {read=FTabAppearance, write=SetTabAppearance};
	__property TTMSFNCTabSetButtonAppearance* ButtonAppearance = {read=FButtonAppearance, write=SetButtonAppearance};
	__property TTMSFNCTabSetInteraction* Interaction = {read=FInteraction, write=SetInteraction};
	__property TTMSFNCTabSetOptions* Options = {read=FOptions, write=SetOptions};
	__property TTMSFNCTabSetTab* ActiveTab = {read=GetActiveTab, write=SetActiveTab};
	__property int ActiveTabIndex = {read=GetActiveTabIndex, write=SetActiveTabIndex, default=0};
	__property System::UnicodeString Version = {read=GetVersion};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCAppearanceGlobalFont* GlobalFont = {read=FGlobalFont, write=SetGlobalFont};
	__property TTMSFNCTabSetBeforeCloseTabEvent OnBeforeCloseTab = {read=FOnBeforeCloseTab, write=FOnBeforeCloseTab};
	__property TTMSFNCTabSetCloseTabEvent OnCloseTab = {read=FOnCloseTab, write=FOnCloseTab};
	__property TTMSFNCTabSetAnchorTabClickEvent OnAnchorTabClick = {read=FOnAnchorTabClick, write=FOnAnchorTabClick};
	__property TTMSFNCTabSetBeforeInsertTabEvent OnBeforeInsertTab = {read=FOnBeforeInsertTab, write=FOnBeforeInsertTab};
	__property TTMSFNCTabSetInsertTabEvent OnInsertTab = {read=FOnInsertTab, write=FOnInsertTab};
	__property TTMSFNCTabSetBeforeChangeTabEvent OnBeforeChangeTab = {read=FOnBeforeChangeTab, write=FOnBeforeChangeTab};
	__property TTMSFNCTabSetChangeTabEvent OnChangeTab = {read=FOnChangeTab, write=FOnChangeTab};
	__property TTMSFNCTabSetBeforeReorderTabEvent OnBeforeReorderTab = {read=FOnBeforeReorderTab, write=FOnBeforeReorderTab};
	__property TTMSFNCTabSetReorderTabEvent OnReorderTab = {read=FOnReorderTab, write=FOnReorderTab};
	__property TTMSFNCTabSetBeforeUpdateTabEvent OnBeforeUpdateTab = {read=FOnBeforeUpdateTab, write=FOnBeforeUpdateTab};
	__property TTMSFNCTabSetUpdateTabEvent OnUpdateTab = {read=FOnUpdateTab, write=FOnUpdateTab};
	__property TTMSFNCTabSetBeforeOpenInplaceEditorEvent OnBeforeOpenInplaceEditor = {read=FOnBeforeOpenInplaceEditor, write=FOnBeforeOpenInplaceEditor};
	__property TTMSFNCTabSetCloseInplaceEditorEvent OnCloseInplaceEditor = {read=FOnCloseInplaceEditor, write=FOnCloseInplaceEditor};
	__property TTMSFNCTabSetOpenInplaceEditorEvent OnOpenInplaceEditor = {read=FOnOpenInplaceEditor, write=FOnOpenInplaceEditor};
	__property TTMSFNCTabSetGetInplaceEditorEvent OnGetInplaceEditor = {read=FOnGetInplaceEditor, write=FOnGetInplaceEditor};
	__property TTMSFNCTabSetCustomizeInplaceEditorEvent OnCustomizeInplaceEditor = {read=FOnCustomizeInplaceEditor, write=FOnCustomizeInplaceEditor};
	__property TTMSFNCTabSetGetInplaceEditorRectEvent OnGetInplaceEditorRect = {read=FOnGetInplaceEditorRect, write=FOnGetInplaceEditorRect};
	__property TTMSFNCTabSetBeforeDrawTabBackgroundEvent OnBeforeDrawTabBackground = {read=FOnBeforeDrawTabBackground, write=FOnBeforeDrawTabBackground};
	__property TTMSFNCTabSetBeforeDrawTabProgressEvent OnBeforeDrawTabProgress = {read=FOnBeforeDrawTabProgress, write=FOnBeforeDrawTabProgress};
	__property TTMSFNCTabSetBeforeDrawTabBadgeEvent OnBeforeDrawTabBadge = {read=FOnBeforeDrawTabBadge, write=FOnBeforeDrawTabBadge};
	__property TTMSFNCTabSetBeforeDrawTabTextEvent OnBeforeDrawTabText = {read=FOnBeforeDrawTabText, write=FOnBeforeDrawTabText};
	__property TTMSFNCTabSetBeforeDrawTabCloseButtonEvent OnBeforeDrawTabCloseButton = {read=FOnBeforeDrawTabCloseButton, write=FOnBeforeDrawTabCloseButton};
	__property TTMSFNCTabSetBeforeDrawTabBitmapEvent OnBeforeDrawTabBitmap = {read=FOnBeforeDrawTabBitmap, write=FOnBeforeDrawTabBitmap};
	__property TTMSFNCTabSetAfterDrawTabBackgroundEvent OnAfterDrawTabBackground = {read=FOnAfterDrawTabBackground, write=FOnAfterDrawTabBackground};
	__property TTMSFNCTabSetAfterDrawTabProgressEvent OnAfterDrawTabProgress = {read=FOnAfterDrawTabProgress, write=FOnAfterDrawTabProgress};
	__property TTMSFNCTabSetAfterDrawTabBadgeEvent OnAfterDrawTabBadge = {read=FOnAfterDrawTabBadge, write=FOnAfterDrawTabBadge};
	__property TTMSFNCTabSetAfterDrawTabTextEvent OnAfterDrawTabText = {read=FOnAfterDrawTabText, write=FOnAfterDrawTabText};
	__property TTMSFNCTabSetAfterDrawTabCloseButtonEvent OnAfterDrawTabCloseButton = {read=FOnAfterDrawTabCloseButton, write=FOnAfterDrawTabCloseButton};
	__property TTMSFNCTabSetAfterDrawTabBitmapEvent OnAfterDrawTabBitmap = {read=FOnAfterDrawTabBitmap, write=FOnAfterDrawTabBitmap};
	__property TTMSFNCTabSetBeforeDrawMenuButton OnBeforeDrawMenuButton = {read=FOnBeforeDrawMenuButton, write=FOnBeforeDrawMenuButton};
	__property TTMSFNCTabSetAfterDrawMenuButton OnAfterDrawMenuButton = {read=FOnAfterDrawMenuButton, write=FOnAfterDrawMenuButton};
	
public:
	__fastcall virtual TTMSFNCCustomTabSet(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCCustomTabSet();
	virtual int __fastcall FindNextTab(int ATabIndex, bool ACheckTabVisible);
	virtual int __fastcall FindPreviousTab(int ATabIndex, bool ACheckTabVisible);
	virtual TTMSFNCTabSetTab* __fastcall InsertTab(int ATabIndex, System::UnicodeString AText = System::UnicodeString());
	virtual TTMSFNCTabSetTab* __fastcall AddTab(System::UnicodeString AText = System::UnicodeString());
	virtual TTMSFNCTabSetDisplayTab __fastcall XYToTab(float X, float Y, TTMSFNCTabSetTab* AExcludeTab = (TTMSFNCTabSetTab*)(0x0));
	virtual TTMSFNCTabSetDisplayTab __fastcall XYToCloseTab(float X, float Y);
	virtual bool __fastcall XYToScrollNextButton(float X, float Y);
	virtual bool __fastcall XYToScrollPreviousButton(float X, float Y);
	virtual bool __fastcall XYToCloseButton(float X, float Y);
	virtual bool __fastcall XYToInsertButton(float X, float Y);
	virtual bool __fastcall XYToTabListButton(float X, float Y);
	virtual bool __fastcall IsTabVisible(int ATabIndex);
	virtual bool __fastcall IsTabEnabled(int ATabIndex);
	virtual bool __fastcall IsEditing();
	virtual void __fastcall LoadSettingsFromFile(System::UnicodeString AFileName);
	virtual void __fastcall LoadSettingsFromStream(System::Classes::TStream* AStream);
	virtual void __fastcall MoveTab(int AFromTabIndex, int AToTabIndex);
	virtual void __fastcall RemoveTab(int ATabIndex);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	virtual void __fastcall BeginUpdate();
	virtual void __fastcall EndUpdate();
	virtual void __fastcall InitSample();
	virtual void __fastcall SelectNextTab();
	virtual void __fastcall SelectPreviousTab();
	virtual void __fastcall SelectTab(int ATabIndex);
	virtual void __fastcall ScrollToTab(int ATabIndex);
	virtual void __fastcall StopEditing();
	virtual void __fastcall CancelEditing();
	virtual void __fastcall CloseInplaceEditor(bool ACancel);
	virtual void __fastcall FocusNextTab(bool ASelect = false);
	virtual void __fastcall FocusPreviousTab(bool ASelect = false);
	virtual void __fastcall FocusTab(int ATabIndex, bool ASelect = false);
	__property Fmx::Tmsfncpopup::TTMSFNCPopup* TabListPopup = {read=FTabListPopup};
	__property Fmx::Listbox::TListBox* TabList = {read=FTabList};
private:
	void *__ITMSFNCBasePersistenceIO;	// Fmx::Tmsfncpersistence::ITMSFNCBasePersistenceIO 
	void *__ITMSFNCBaseListIO;	// Fmx::Tmsfncpersistence::ITMSFNCBaseListIO 
	void *__ITMSFNCAppearanceGlobalFont;	// Fmx::Tmsfncgraphicstypes::ITMSFNCAppearanceGlobalFont 
	void *__ITMSFNCBitmapContainer;	// Fmx::Tmsfncbitmapcontainer::ITMSFNCBitmapContainer 
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {91DEAFC3-8932-45F4-A3ED-5AAA0C0E9250}
	operator Fmx::Tmsfncpersistence::_di_ITMSFNCBasePersistenceIO()
	{
		Fmx::Tmsfncpersistence::_di_ITMSFNCBasePersistenceIO intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator Fmx::Tmsfncpersistence::ITMSFNCBasePersistenceIO*(void) { return (Fmx::Tmsfncpersistence::ITMSFNCBasePersistenceIO*)&__ITMSFNCBasePersistenceIO; }
	#endif
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {FAB1D21E-D798-4CE0-B17B-9D75E4456AB4}
	operator Fmx::Tmsfncpersistence::_di_ITMSFNCBaseListIO()
	{
		Fmx::Tmsfncpersistence::_di_ITMSFNCBaseListIO intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator Fmx::Tmsfncpersistence::ITMSFNCBaseListIO*(void) { return (Fmx::Tmsfncpersistence::ITMSFNCBaseListIO*)&__ITMSFNCBaseListIO; }
	#endif
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


class PASCALIMPLEMENTATION TTMSFNCTabSet : public TTMSFNCCustomTabSet
{
	typedef TTMSFNCCustomTabSet inherited;
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	
public:
	__fastcall virtual TTMSFNCTabSet(System::Classes::TComponent* AOwner);
	__property ActiveTab;
	
__published:
	__property ActiveTabIndex = {default=0};
	__property Fill;
	__property Stroke;
	__property TabAppearance;
	__property ButtonAppearance;
	__property BitmapContainer;
	__property Interaction;
	__property Options;
	__property Tabs;
	__property TabSize;
	__property Layout;
	__property Version = {default=0};
	__property ShowHint = {default=1};
	__property GlobalFont;
	__property OnBeforeCloseTab;
	__property OnBeforeChangeTab;
	__property OnCloseTab;
	__property OnChangeTab;
	__property OnAnchorTabClick;
	__property OnBeforeInsertTab;
	__property OnInsertTab;
	__property OnBeforeUpdateTab;
	__property OnUpdateTab;
	__property OnBeforeOpenInplaceEditor;
	__property OnCloseInplaceEditor;
	__property OnOpenInplaceEditor;
	__property OnGetInplaceEditor;
	__property OnCustomizeInplaceEditor;
	__property OnGetInplaceEditorRect;
	__property OnBeforeReorderTab;
	__property OnReorderTab;
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
	/* TTMSFNCCustomTabSet.Destroy */ inline __fastcall virtual ~TTMSFNCTabSet() { }
	
};


//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x1);
static constexpr System::Int8 BLD_VER = System::Int8(0x1);
static constexpr unsigned TTMSFNCTabSetColorProgress = unsigned(0xff1badf8);
static constexpr unsigned TTMSFNCTabSetColor = unsigned(0xffedf7f8);
static constexpr unsigned TTMSFNCTabSetDownColor = unsigned(0xffd9e3ee);
static constexpr unsigned TTMSFNCTabSetHoverColor = unsigned(0xffe3edf8);
}	/* namespace Tmsfnctabset */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCTABSET)
using namespace Fmx::Tmsfnctabset;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfnctabsetHPP
