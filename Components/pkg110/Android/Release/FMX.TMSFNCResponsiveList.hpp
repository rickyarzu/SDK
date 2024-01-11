// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCResponsiveList.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncresponsivelistHPP
#define Fmx_TmsfncresponsivelistHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <System.Types.hpp>
#include <System.TypInfo.hpp>
#include <System.Variants.hpp>
#include <System.Generics.Collections.hpp>
#include <FMX.TMSFNCGraphics.hpp>
#include <FMX.TMSFNCPersistence.hpp>
#include <FMX.TMSFNCGraphicsTypes.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.TMSFNCScrollControl.hpp>
#include <FMX.TMSFNCResponsiveListTypes.hpp>
#include <FMX.TMSFNCUtils.hpp>
#include <FMX.TMSFNCBitmapContainer.hpp>
#include <FMX.Controls.hpp>
#include <FMX.Forms.hpp>
#include <FMX.Types.hpp>
#include <FMX.Graphics.hpp>
#include <System.UIConsts.hpp>
#include <System.UITypes.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncresponsivelist
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TResponsiveCondition;
class DELPHICLASS TResponsiveConditions;
class DELPHICLASS TResponsiveListItemFilter;
class DELPHICLASS TResponsiveListItem;
class DELPHICLASS TResponsiveListItems;
class DELPHICLASS TResponsiveListAppearance;
class DELPHICLASS TTMSFNCResponsiveList;
//-- type declarations -------------------------------------------------------
#pragma pack(push,4)
class PASCALIMPLEMENTATION TResponsiveCondition : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	int FColumns;
	int FItemHeight;
	int FItemWidth;
	int FHeightFrom;
	int FWidthTo;
	int FRows;
	int FWidthFrom;
	int FHeightTo;
	Fmx::Tmsfncscrollcontrol::TMargins* FMargins;
	System::UnicodeString FTemplate;
	System::UnicodeString FHeaderTemplate;
	System::UnicodeString FFooterTemplate;
	NativeInt FTag;
	int FCategory;
	void __fastcall SetMargins(Fmx::Tmsfncscrollcontrol::TMargins* const Value);
	void __fastcall SetColumns(const int Value);
	void __fastcall SetRows(const int Value);
	void __fastcall SetTemplate(const System::UnicodeString Value);
	void __fastcall SetHeightFrom(const int Value);
	void __fastcall SetHeightTo(const int Value);
	void __fastcall SetItemHeight(const int Value);
	void __fastcall SetItemWidth(const int Value);
	void __fastcall SetWidthFrom(const int Value);
	void __fastcall SetWidthTo(const int Value);
	void __fastcall SetFooterTemplate(const System::UnicodeString Value);
	void __fastcall SetHeaderTemplate(const System::UnicodeString Value);
	
protected:
	void __fastcall MarginsChanged(System::TObject* Sender);
	
public:
	__fastcall virtual TResponsiveCondition(System::Classes::TCollection* Collection);
	__fastcall virtual ~TResponsiveCondition();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property int Category = {read=FCategory, write=FCategory, default=-1};
	__property int Columns = {read=FColumns, write=SetColumns, nodefault};
	__property System::UnicodeString FooterTemplate = {read=FFooterTemplate, write=SetFooterTemplate};
	__property System::UnicodeString HeaderTemplate = {read=FHeaderTemplate, write=SetHeaderTemplate};
	__property int HeightFrom = {read=FHeightFrom, write=SetHeightFrom, default=0};
	__property int HeightTo = {read=FHeightTo, write=SetHeightTo, default=-1};
	__property int ItemWidth = {read=FItemWidth, write=SetItemWidth, default=-1};
	__property int ItemHeight = {read=FItemHeight, write=SetItemHeight, default=-1};
	__property Fmx::Tmsfncscrollcontrol::TMargins* Margins = {read=FMargins, write=SetMargins};
	__property int Rows = {read=FRows, write=SetRows, default=0};
	__property System::UnicodeString Template = {read=FTemplate, write=SetTemplate};
	__property int WidthFrom = {read=FWidthFrom, write=SetWidthFrom, default=0};
	__property int WidthTo = {read=FWidthTo, write=SetWidthTo, default=-1};
	__property NativeInt Tag = {read=FTag, write=FTag, nodefault};
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TResponsiveConditions : public System::Classes::TOwnedCollection
{
	typedef System::Classes::TOwnedCollection inherited;
	
public:
	TResponsiveCondition* operator[](int Index) { return this->Items[Index]; }
	
private:
	System::Classes::TNotifyEvent FOnChange;
	HIDESBASE TResponsiveCondition* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TResponsiveCondition* const Value);
	
protected:
	virtual void __fastcall Update(System::Classes::TCollectionItem* Item);
	HIDESBASE virtual void __fastcall Changed();
	
public:
	__fastcall TResponsiveConditions(System::Classes::TPersistent* AOwner, System::Classes::TCollectionItemClass AItemClass);
	HIDESBASE TResponsiveCondition* __fastcall Add();
	HIDESBASE TResponsiveCondition* __fastcall Insert(int Index);
	__property TResponsiveCondition* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	__property System::Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TResponsiveConditions() { }
	
};

#pragma pack(pop)

enum DECLSPEC_DENUM TResponsiveListItemFilterData : unsigned char { fdContent, fdHeader, fdFooter };

typedef System::Set<TResponsiveListItemFilterData, TResponsiveListItemFilterData::fdContent, TResponsiveListItemFilterData::fdFooter> TResponsiveListItemFilterDataSet;

enum DECLSPEC_DENUM TResponsiveListItemFilterType : unsigned char { mText, mEntireWord, mStartWord, mEndWord };

#pragma pack(push,4)
class PASCALIMPLEMENTATION TResponsiveListItemFilter : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	bool FCaseSensitive;
	System::UnicodeString FText;
	TResponsiveListItemFilterDataSet FFilterData;
	TResponsiveListItemFilterType FFilterType;
	System::UnicodeString FCondition;
	
protected:
	__property System::UnicodeString Condition = {read=FCondition, write=FCondition};
	
public:
	__fastcall TResponsiveListItemFilter();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property TResponsiveListItemFilterDataSet FilterData = {read=FFilterData, write=FFilterData, default=1};
	__property TResponsiveListItemFilterType FilterType = {read=FFilterType, write=FFilterType, default=0};
	__property System::UnicodeString Text = {read=FText, write=FText};
	__property bool CaseSensitive = {read=FCaseSensitive, write=FCaseSensitive, default=0};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TResponsiveListItemFilter() { }
	
};

#pragma pack(pop)

enum DECLSPEC_DENUM TItemSizeType : unsigned char { isAuto, isFixed, isPerc, isFill };

typedef System::Generics::Collections::TList__1<Fmx::Tmsfncresponsivelisttypes::TResponsiveNameValuePair>* TResponsiveNameValuePairList;

#pragma pack(push,4)
class PASCALIMPLEMENTATION TResponsiveListItem : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	TTMSFNCResponsiveList* FOwnerList;
	System::UnicodeString FContent;
	bool FVisible;
	int FWidth;
	TItemSizeType FHeightType;
	System::Classes::TNotifyEvent FOnChange;
	int FHeight;
	TItemSizeType FWidthType;
	System::Uitypes::TAlphaColor FColor;
	System::Types::TRect FRect;
	Fmx::Controls::TControl* FControl;
	System::Uitypes::TAlphaColor FBorderColor;
	Fmx::Tmsfncscrollcontrol::TTMSFMXBorderStyle FBorderStyle;
	System::Generics::Collections::TList__1<Fmx::Tmsfncresponsivelisttypes::TResponsiveNameValuePair>* FNameValueList;
	System::Uitypes::TAlphaColor FFooterColor;
	System::UnicodeString FHeaderText;
	int FHeaderHeight;
	System::UnicodeString FFooterText;
	int FFooterHeight;
	System::Uitypes::TAlphaColor FHeaderColor;
	System::Uitypes::TAlphaColor FHeaderTextColor;
	System::Uitypes::TAlphaColor FFooterTextColor;
	System::Uitypes::TAlphaColor FTextColor;
	bool FShadow;
	bool FSelected;
	bool FHovered;
	NativeInt FTag;
	System::Uitypes::TAlphaColor FSelectedColor;
	System::Uitypes::TAlphaColor FSelectedTextColor;
	System::Uitypes::TAlphaColor FSelectedBorderColor;
	System::UnicodeString FControlName;
	System::Types::TRect FContentRect;
	int FCol;
	int FRow;
	Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* FBitmapContainer;
	int FContentMargin;
	bool FFiltered;
	System::Uitypes::TAlphaColor FHotBorderColor;
	System::Uitypes::TAlphaColor FHotTextColor;
	System::Uitypes::TAlphaColor FHotColor;
	float FDPIScale;
	void __fastcall SetContent(const System::UnicodeString Value);
	void __fastcall SetVisible(const bool Value);
	void __fastcall SetHeight(const int Value);
	void __fastcall SetHeightType(const TItemSizeType Value);
	void __fastcall SetWidth(const int Value);
	void __fastcall SetWidthType(const TItemSizeType Value);
	void __fastcall SetColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetBorderColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetBorderStyle(const Fmx::Tmsfncscrollcontrol::TTMSFMXBorderStyle Value);
	System::Variant __fastcall GetValue(System::UnicodeString AName);
	void __fastcall SetValue(System::UnicodeString AName, const System::Variant &Value);
	void __fastcall SetFooterColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetFooterHeight(const int Value);
	void __fastcall SetFooterText(const System::UnicodeString Value);
	void __fastcall SetHeaderColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetHeaderHeight(const int Value);
	void __fastcall SetHeaderText(const System::UnicodeString Value);
	void __fastcall SetFooterTextColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetHeaderTextColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetTextColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetShadow(const bool Value);
	void __fastcall SetSelectedColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetSelectedTextColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetSelectedBorderColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetControl(Fmx::Controls::TControl* const Value);
	void __fastcall SetBitmapContainer(Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* const Value);
	
protected:
	virtual void __fastcall DrawItem(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, System::UnicodeString ATemplate, System::UnicodeString AHeaderTemplate, System::UnicodeString AFooterTemplate, const System::Types::TRect &ARect, bool Focus);
	virtual void __fastcall DefineProperties(System::Classes::TFiler* Filer);
	void __fastcall WriteControlName(System::Classes::TWriter* Writer);
	void __fastcall ReadControlName(System::Classes::TReader* Reader);
	__property System::Types::TRect ContentRect = {read=FContentRect, write=FContentRect};
	__property int Row = {read=FRow, write=FRow, nodefault};
	__property int Col = {read=FCol, write=FCol, nodefault};
	__property int ContentMargin = {read=FContentMargin, write=FContentMargin, nodefault};
	__property bool Filtered = {read=FFiltered, write=FFiltered, nodefault};
	__property bool Hovered = {read=FHovered, write=FHovered, nodefault};
	virtual bool __fastcall IsVisible();
	
public:
	__fastcall virtual TResponsiveListItem(System::Classes::TCollection* ACollection);
	__fastcall virtual ~TResponsiveListItem();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__property System::Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
	__property System::Types::TRect Rect = {read=FRect};
	__property Fmx::Controls::TControl* Control = {read=FControl, write=SetControl};
	__property System::UnicodeString ControlName = {read=FControlName, write=FControlName};
	__property System::Generics::Collections::TList__1<Fmx::Tmsfncresponsivelisttypes::TResponsiveNameValuePair>* NameValueList = {read=FNameValueList};
	__property System::Variant Values[System::UnicodeString AName] = {read=GetValue, write=SetValue};
	__property bool Selected = {read=FSelected, write=FSelected, nodefault};
	__property Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* BitmapContainer = {read=FBitmapContainer, write=SetBitmapContainer};
	
__published:
	__property System::Uitypes::TAlphaColor BorderColor = {read=FBorderColor, write=SetBorderColor, default=-8355712};
	__property Fmx::Tmsfncscrollcontrol::TTMSFMXBorderStyle BorderStyle = {read=FBorderStyle, write=SetBorderStyle, default=0};
	__property System::UnicodeString Content = {read=FContent, write=SetContent};
	__property System::Uitypes::TAlphaColor Color = {read=FColor, write=SetColor, default=-1};
	__property System::Uitypes::TAlphaColor FooterColor = {read=FFooterColor, write=SetFooterColor, default=0};
	__property int FooterHeight = {read=FFooterHeight, write=SetFooterHeight, default=16};
	__property System::UnicodeString FooterText = {read=FFooterText, write=SetFooterText};
	__property System::Uitypes::TAlphaColor FooterTextColor = {read=FFooterTextColor, write=SetFooterTextColor, default=-1};
	__property System::Uitypes::TAlphaColor HeaderColor = {read=FHeaderColor, write=SetHeaderColor, default=0};
	__property int HeaderHeight = {read=FHeaderHeight, write=SetHeaderHeight, default=16};
	__property System::UnicodeString HeaderText = {read=FHeaderText, write=SetHeaderText};
	__property System::Uitypes::TAlphaColor HeaderTextColor = {read=FHeaderTextColor, write=SetHeaderTextColor, default=-1};
	__property System::Uitypes::TAlphaColor HotBorderColor = {read=FHotBorderColor, write=FHotBorderColor, default=0};
	__property System::Uitypes::TAlphaColor HotColor = {read=FHotColor, write=FHotColor, default=0};
	__property System::Uitypes::TAlphaColor HotTextColor = {read=FHotTextColor, write=FHotTextColor, default=0};
	__property System::Uitypes::TAlphaColor SelectedBorderColor = {read=FSelectedBorderColor, write=SetSelectedBorderColor, default=-4144960};
	__property System::Uitypes::TAlphaColor SelectedColor = {read=FSelectedColor, write=SetSelectedColor, default=-7876870};
	__property System::Uitypes::TAlphaColor SelectedTextColor = {read=FSelectedTextColor, write=SetSelectedTextColor, default=-1};
	__property int Height = {read=FHeight, write=SetHeight, default=0};
	__property TItemSizeType HeightType = {read=FHeightType, write=SetHeightType, default=0};
	__property bool Shadow = {read=FShadow, write=SetShadow, default=0};
	__property NativeInt Tag = {read=FTag, write=FTag, default=0};
	__property System::Uitypes::TAlphaColor TextColor = {read=FTextColor, write=SetTextColor, default=-16777216};
	__property bool Visible = {read=FVisible, write=SetVisible, nodefault};
	__property int Width = {read=FWidth, write=SetWidth, default=0};
	__property TItemSizeType WidthType = {read=FWidthType, write=SetWidthType, default=0};
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TResponsiveListItems : public System::Classes::TOwnedCollection
{
	typedef System::Classes::TOwnedCollection inherited;
	
public:
	TResponsiveListItem* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCResponsiveList* FList;
	System::Classes::TNotifyEvent FOnChange;
	HIDESBASE TResponsiveListItem* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TResponsiveListItem* const Value);
	TTMSFNCResponsiveList* __fastcall GetList();
	
protected:
	virtual void __fastcall Update(System::Classes::TCollectionItem* Item);
	HIDESBASE virtual void __fastcall Changed();
	void __fastcall Init(TResponsiveListItem* Item);
	
public:
	__fastcall TResponsiveListItems(System::Classes::TPersistent* AOwner, System::Classes::TCollectionItemClass AItemClass);
	HIDESBASE TResponsiveListItem* __fastcall Add();
	HIDESBASE TResponsiveListItem* __fastcall Insert(int Index);
	__property TResponsiveListItem* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	__property TTMSFNCResponsiveList* List = {read=GetList};
	__property System::Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TResponsiveListItems() { }
	
};

#pragma pack(pop)

enum DECLSPEC_DENUM TResponsiveListItemsApplying : unsigned char { iaNew, iaAll };

#pragma pack(push,4)
class PASCALIMPLEMENTATION TResponsiveListAppearance : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	Fmx::Tmsfncscrollcontrol::TTMSFMXBorderStyle FItemBorderStyle;
	System::Uitypes::TAlphaColor FItemBorderColor;
	System::Uitypes::TAlphaColor FItemColor;
	int FItemFooterHeight;
	System::Uitypes::TAlphaColor FItemHeaderColor;
	System::Uitypes::TAlphaColor FItemFooterColor;
	int FItemHeaderHeight;
	System::Uitypes::TAlphaColor FItemHeaderTextColor;
	System::Uitypes::TAlphaColor FItemFooterTextColor;
	System::Uitypes::TAlphaColor FItemTextColor;
	TResponsiveListItemsApplying FItemsApplying;
	System::Classes::TNotifyEvent FOnChange;
	bool FItemShadow;
	System::Uitypes::TAlphaColor FSelectedItemTextColor;
	System::Uitypes::TAlphaColor FSelectedItemColor;
	System::Uitypes::TAlphaColor FSelectedItemBorderColor;
	int FItemContentMargin;
	System::Uitypes::TAlphaColor FHotItemColor;
	System::Uitypes::TAlphaColor FHotItemBorderColor;
	System::Uitypes::TAlphaColor FHotItemTextColor;
	void __fastcall SetItemBorderColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetItemBorderStyle(const Fmx::Tmsfncscrollcontrol::TTMSFMXBorderStyle Value);
	void __fastcall SetItemColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetItemFooterColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetItemFooterHeight(const int Value);
	void __fastcall SetItemFooterTextColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetItemHeaderColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetItemHeaderHeight(const int Value);
	void __fastcall SetItemHeaderTextColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetItemsApplying(const TResponsiveListItemsApplying Value);
	void __fastcall SetItemTextColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetItemShadow(const bool Value);
	void __fastcall SetSelectedItemColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetSelectedItemTextColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetSelectedItemBorderColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetItemContentMargin(const int Value);
	
protected:
	virtual void __fastcall Changed();
	__property System::Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
	
public:
	__fastcall TResponsiveListAppearance();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property TResponsiveListItemsApplying ItemsApplying = {read=FItemsApplying, write=SetItemsApplying, default=1};
	__property System::Uitypes::TAlphaColor ItemBorderColor = {read=FItemBorderColor, write=SetItemBorderColor, default=-8355712};
	__property Fmx::Tmsfncscrollcontrol::TTMSFMXBorderStyle ItemBorderStyle = {read=FItemBorderStyle, write=SetItemBorderStyle, default=0};
	__property System::Uitypes::TAlphaColor ItemColor = {read=FItemColor, write=SetItemColor, default=-1};
	__property int ItemContentMargin = {read=FItemContentMargin, write=SetItemContentMargin, default=0};
	__property System::Uitypes::TAlphaColor ItemTextColor = {read=FItemTextColor, write=SetItemTextColor, default=-16777216};
	__property System::Uitypes::TAlphaColor ItemFooterColor = {read=FItemFooterColor, write=SetItemFooterColor, default=0};
	__property System::Uitypes::TAlphaColor ItemFooterTextColor = {read=FItemFooterTextColor, write=SetItemFooterTextColor, default=-1};
	__property int ItemFooterHeight = {read=FItemFooterHeight, write=SetItemFooterHeight, default=16};
	__property System::Uitypes::TAlphaColor ItemHeaderColor = {read=FItemHeaderColor, write=SetItemHeaderColor, default=-7876870};
	__property System::Uitypes::TAlphaColor ItemHeaderTextColor = {read=FItemHeaderTextColor, write=SetItemHeaderTextColor, default=-1};
	__property int ItemHeaderHeight = {read=FItemHeaderHeight, write=SetItemHeaderHeight, default=16};
	__property bool ItemShadow = {read=FItemShadow, write=SetItemShadow, default=0};
	__property System::Uitypes::TAlphaColor SelectedItemBorderColor = {read=FSelectedItemBorderColor, write=SetSelectedItemBorderColor, default=-4144960};
	__property System::Uitypes::TAlphaColor SelectedItemColor = {read=FSelectedItemColor, write=SetSelectedItemColor, default=-7876870};
	__property System::Uitypes::TAlphaColor SelectedItemTextColor = {read=FSelectedItemTextColor, write=SetSelectedItemTextColor, default=-1};
	__property System::Uitypes::TAlphaColor HotItemBorderColor = {read=FHotItemBorderColor, write=FHotItemBorderColor, default=0};
	__property System::Uitypes::TAlphaColor HotItemTextColor = {read=FHotItemTextColor, write=FHotItemTextColor, default=0};
	__property System::Uitypes::TAlphaColor HotItemColor = {read=FHotItemColor, write=FHotItemColor, default=0};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TResponsiveListAppearance() { }
	
};

#pragma pack(pop)

typedef void __fastcall (__closure *TBeforeDrawResponsiveListItemEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, TResponsiveListItem* AItem, const System::Types::TRect &ARect, bool &DoDefaultDraw);

typedef void __fastcall (__closure *TAfterDrawResponsiveListItemEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, TResponsiveListItem* AItem, const System::Types::TRect &ARect);

typedef void __fastcall (__closure *TResponsiveListBackgroundDrawEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRect &ARect);

typedef void __fastcall (__closure *TResponsiveListItemEvent)(System::TObject* Sender, TResponsiveListItem* AItem);

typedef void __fastcall (__closure *TResponsiveListItemAllowEvent)(System::TObject* Sender, TResponsiveListItem* AItem, bool &Allow);

typedef void __fastcall (__closure *TResponsiveListItemAnchorEvent)(System::TObject* Sender, TResponsiveListItem* AItem, System::UnicodeString Anchor, bool &DefaultHandling);

typedef void __fastcall (__closure *TResponsiveListItemControlEvent)(System::TObject* Sender, TResponsiveListItem* AItem, System::UnicodeString ControlID, System::UnicodeString ControlValue, System::UnicodeString ControlType);

typedef void __fastcall (__closure *TResponsiveListItemFilterEvent)(System::TObject* Sender, TResponsiveListItem* AItem, bool &Retain);

typedef void __fastcall (__closure *TResponsiveConditionEvent)(System::TObject* Sender, TResponsiveCondition* ACondition);

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCResponsiveList : public Fmx::Tmsfncscrollcontrol::TTMSFNCRECustomScrollControl
{
	typedef Fmx::Tmsfncscrollcontrol::TTMSFNCRECustomScrollControl inherited;
	
private:
	bool FAppearancePersisting;
	TResponsiveListItems* FListItems;
	TResponsiveConditions* FConditions;
	TResponsiveListAppearance* FAppearance;
	System::Types::TSize FMaxSize;
	bool FDesignTime;
	TResponsiveListItem* FItemDown;
	System::Types::TPoint FXYDown;
	bool FXYMoving;
	TResponsiveCondition* FCondition;
	TBeforeDrawResponsiveListItemEvent FOnBeforeDrawItem;
	TAfterDrawResponsiveListItemEvent FOnAfterDrawItem;
	TResponsiveListBackgroundDrawEvent FOnBackgroundDraw;
	TResponsiveListItemEvent FOnItemClick;
	TResponsiveConditionEvent FOnConditionChange;
	int FItemIndex;
	int FLastItemClick;
	int FHoverIndex;
	System::UnicodeString FActiveTemplate;
	System::UnicodeString FActiveHeaderTemplate;
	System::UnicodeString FActiveFooterTemplate;
	int FRowCount;
	int FColCount;
	int FConditionCategory;
	bool FRangeUpdate;
	System::Uitypes::TCursor FOldCursor;
	Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* FBitmapContainer;
	TResponsiveListItemEvent FOnItemLeave;
	TResponsiveListItemEvent FOnItemEnter;
	TResponsiveListItemFilterEvent FOnItemFilter;
	TResponsiveListItemAnchorEvent FOnItemAnchorClick;
	TResponsiveListItemControlEvent FOnItemControlClick;
	TResponsiveListItemAllowEvent FOnBeforeSelectItem;
	TResponsiveListItemEvent FOnAfterSelectItem;
	bool FMultiSelect;
	TResponsiveListItemFilter* FFilterCondition;
	float FDPIScale;
	TResponsiveListItemEvent FOnItemDblClick;
	void __fastcall SetItems(TResponsiveListItems* const Value);
	void __fastcall SetAppearance(TResponsiveListAppearance* const Value);
	void __fastcall SetConditions(TResponsiveConditions* const Value);
	void __fastcall SetConditionCategory(const int Value);
	void __fastcall SetVersion(const System::UnicodeString Value);
	void __fastcall SetItemIndex(const int Value);
	System::Uitypes::TCursor __fastcall GetCursorEx();
	void __fastcall SetCursorEx(const System::Uitypes::TCursor Value);
	bool __fastcall GetTabStopEx();
	void __fastcall SetTabStopEx(const bool Value);
	void __fastcall SetBitmapContainer(Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* const Value);
	void __fastcall SetFilterCondition(TResponsiveListItemFilter* const Value);
	
protected:
	virtual System::UnicodeString __fastcall GetVersion();
	virtual System::UnicodeString __fastcall GetDocURL();
	virtual System::UnicodeString __fastcall GetTipsURL();
	virtual void __fastcall InitStyle();
	virtual void __fastcall ResetToDefaultStyle();
	virtual void __fastcall MouseDownN(System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, int X, int Y);
	virtual void __fastcall MouseMoveN(System::Classes::TShiftState Shift, int X, int Y);
	virtual void __fastcall MouseUpN(System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, int X, int Y);
	virtual void __fastcall DoDblClick(int X, int Y);
	virtual void __fastcall KeyDownN(System::Word &Key, System::Classes::TShiftState Shift);
	virtual void __fastcall KeyUpN(System::Word &Key, System::Classes::TShiftState Shift);
	virtual void __fastcall KeyPressN(System::WideChar &Key);
	virtual void __fastcall TopLeftChanged();
	virtual void __fastcall SelectAll();
	virtual int __fastcall GetElementCount();
	virtual void __fastcall GetWordAndIndexAtCaret(System::UnicodeString &AValue, int &AIndex, bool SpaceOnly = false);
	virtual void __fastcall UpdateWordAndIndexAtCaret(System::UnicodeString AValue, int AIndex, bool SpaceOnly = false);
	virtual System::UnicodeString __fastcall SelectWordAtCaret();
	virtual void __fastcall Backspace();
	virtual void __fastcall UpdateSize();
	virtual bool __fastcall HasSelection();
	virtual System::UnicodeString __fastcall SelectedText();
	virtual void __fastcall UpdateSelectionPoint(bool LeftSel, int &X, int &Y);
	virtual bool __fastcall IsForwardSelection();
	virtual void __fastcall InsertChar(System::WideChar ch)/* overload */;
	virtual void __fastcall InsertChar(System::UnicodeString Value)/* overload */;
	virtual void __fastcall DoSelectionChanged();
	virtual void __fastcall UpdateSelection();
	virtual void __fastcall DeleteSelection();
	virtual System::Types::TPoint __fastcall GetSelectionFromXY();
	virtual System::Types::TPoint __fastcall GetSelectionToXY();
	virtual System::Types::TPoint __fastcall GetCaretXY();
	virtual int __fastcall GetCaretLH();
	virtual void __fastcall DoItemClick(TResponsiveListItem* AItem);
	virtual void __fastcall DoItemDblClick(TResponsiveListItem* AItem);
	virtual void __fastcall DoItemAnchorClick(TResponsiveListItem* AItem, System::UnicodeString Anchor);
	virtual void __fastcall DoItemControlClick(TResponsiveListItem* AItem, System::UnicodeString ControlID, System::UnicodeString ControlValue, System::UnicodeString ControlType);
	virtual void __fastcall DoItemEnter(TResponsiveListItem* AItem);
	virtual void __fastcall DoItemLeave(TResponsiveListItem* AItem);
	virtual bool __fastcall DoItemFilter(TResponsiveListItem* AItem);
	virtual void __fastcall DoBeforeSelectItem(TResponsiveListItem* AItem, bool &Allow);
	virtual void __fastcall DoAfterSelectItem(TResponsiveListItem* AItem);
	virtual void __fastcall DoSelectItem(int AIndex);
	virtual void __fastcall DoConditionChange(TResponsiveCondition* ACondition);
	virtual void __fastcall ConditionsChanged(System::TObject* Sender);
	virtual TResponsiveCondition* __fastcall RenderItems();
	virtual void __fastcall ResolveControls();
	virtual void __fastcall UpdateControls();
	virtual void __fastcall Paint();
	virtual void __fastcall PaintBackground(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics);
	virtual bool __fastcall CanSaveProperty(System::TObject* AObject, System::UnicodeString APropertyName, System::TTypeKind APropertyType);
	virtual bool __fastcall CanLoadProperty(System::TObject* AObject, System::UnicodeString APropertyName, System::TTypeKind APropertyType);
	virtual bool __fastcall IsAppearanceProperty(System::TObject* AObject, System::UnicodeString APropertyName, System::TTypeKind APropertyType);
	virtual int __fastcall GetVersionNr();
	virtual int __fastcall GetClientWidth();
	virtual int __fastcall GetClientHeight();
	virtual System::Classes::TCollectionItemClass __fastcall GetConditionClass();
	virtual TResponsiveConditions* __fastcall CreateConditions();
	virtual System::Classes::TCollectionItemClass __fastcall GetItemClass();
	virtual TResponsiveListItems* __fastcall CreateListItems();
	bool __fastcall MatchFromTo(int AValue, int AFrom, int ATo);
	int __fastcall FixedWidth(int FromItem, int Count);
	int __fastcall FixedHeight(int FromItem, int Count);
	int __fastcall FixedColumns(int FromItem, int Count);
	int __fastcall FixedRows(int FromItem, int Count);
	virtual bool __fastcall HasTextContent();
	virtual void __fastcall DrawItem(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, TResponsiveListItem* AItem, System::UnicodeString ATemplate, System::UnicodeString AHeaderTemplate, System::UnicodeString AFooterTemplate, const System::Types::TRect &ARect, bool Focus);
	virtual void __fastcall ItemsChanged(System::TObject* Sender);
	virtual void __fastcall AppearanceChanged(System::TObject* Sender);
	virtual void __fastcall Notification(System::Classes::TComponent* AComponent, System::Classes::TOperation AOperation);
	__property int ColCount = {read=FColCount, write=FColCount, nodefault};
	__property int RowCount = {read=FRowCount, write=FRowCount, nodefault};
	void __fastcall Refresh();
	virtual bool __fastcall FilterItem(TResponsiveCondition* Condition, TResponsiveListItem* Item);
	
public:
	__fastcall virtual TTMSFNCResponsiveList(System::Classes::TComponent* AOwner)/* overload */;
	__fastcall virtual ~TTMSFNCResponsiveList();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	virtual void __fastcall Loaded();
	virtual void __fastcall BeginUpdate();
	virtual void __fastcall EndUpdate();
	virtual void __fastcall UpdateFilter();
	virtual void __fastcall ClearFilter();
	virtual void __fastcall SaveSettingsToFile(System::UnicodeString AFileName, bool AAppearanceOnly = false);
	virtual void __fastcall LoadSettingsFromFile(System::UnicodeString AFileName);
	virtual void __fastcall SaveSettingsToStream(System::Classes::TStream* AStream, bool AAppearanceOnly = false);
	virtual void __fastcall LoadSettingsFromStream(System::Classes::TStream* AStream);
	virtual void __fastcall DoEnter();
	virtual void __fastcall DoExit();
	virtual void __fastcall CopyToClipboard();
	virtual void __fastcall CutToClipboard();
	virtual System::UnicodeString __fastcall PasteFromClipboard();
	__property int ConditionCategory = {read=FConditionCategory, write=SetConditionCategory, nodefault};
	TResponsiveCondition* __fastcall GetCondition();
	TResponsiveListItem* __fastcall FindItemAtPoint(const System::Types::TPoint &pt);
	bool __fastcall AnchorAtPoint(TResponsiveListItem* AItem, const System::Types::TPoint &pt, System::UnicodeString &Anchor);
	bool __fastcall ControlAtPoint(TResponsiveListItem* AItem, const System::Types::TPoint &pt, System::UnicodeString &ControlID, System::UnicodeString &ControlValue, System::UnicodeString &ControlType);
	TResponsiveListItem* __fastcall FindControlItem(Fmx::Controls::TControl* AControl);
	void __fastcall ScrollInView(TResponsiveListItem* AItem);
	virtual void __fastcall ClearSelection();
	
__published:
	__property Anchors;
	__property TResponsiveListAppearance* Appearance = {read=FAppearance, write=SetAppearance};
	__property Color = {default=-1};
	__property TResponsiveConditions* Conditions = {read=FConditions, write=SetConditions};
	__property System::Uitypes::TCursor Cursor = {read=GetCursorEx, write=SetCursorEx, nodefault};
	__property TResponsiveListItemFilter* FilterCondition = {read=FFilterCondition, write=SetFilterCondition};
	__property int ItemIndex = {read=FItemIndex, write=SetItemIndex, default=-1};
	__property TResponsiveListItems* Items = {read=FListItems, write=SetItems};
	__property bool MultiSelect = {read=FMultiSelect, write=FMultiSelect, default=0};
	__property Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* BitmapContainer = {read=FBitmapContainer, write=SetBitmapContainer};
	__property PopupMenu;
	__property bool TabStop = {read=GetTabStopEx, write=SetTabStopEx, default=1};
	__property System::UnicodeString Version = {read=GetVersion, write=SetVersion};
	__property Visible = {default=1};
	__property TAfterDrawResponsiveListItemEvent OnAfterDrawItem = {read=FOnAfterDrawItem, write=FOnAfterDrawItem};
	__property TResponsiveListItemEvent OnAfterSelectItem = {read=FOnAfterSelectItem, write=FOnAfterSelectItem};
	__property TResponsiveListBackgroundDrawEvent OnBackgroundDraw = {read=FOnBackgroundDraw, write=FOnBackgroundDraw};
	__property TBeforeDrawResponsiveListItemEvent OnBeforeDrawItem = {read=FOnBeforeDrawItem, write=FOnBeforeDrawItem};
	__property TResponsiveListItemAllowEvent OnBeforeSelectItem = {read=FOnBeforeSelectItem, write=FOnBeforeSelectItem};
	__property TResponsiveListItemAnchorEvent OnItemAnchorClick = {read=FOnItemAnchorClick, write=FOnItemAnchorClick};
	__property TResponsiveListItemEvent OnItemClick = {read=FOnItemClick, write=FOnItemClick};
	__property TResponsiveListItemControlEvent OnItemControlClick = {read=FOnItemControlClick, write=FOnItemControlClick};
	__property TResponsiveListItemEvent OnItemDblClick = {read=FOnItemDblClick, write=FOnItemDblClick};
	__property TResponsiveListItemEvent OnItemEnter = {read=FOnItemEnter, write=FOnItemEnter};
	__property TResponsiveListItemFilterEvent OnItemFilter = {read=FOnItemFilter, write=FOnItemFilter};
	__property TResponsiveListItemEvent OnItemLeave = {read=FOnItemLeave, write=FOnItemLeave};
	__property TResponsiveConditionEvent OnConditionChange = {read=FOnConditionChange, write=FOnConditionChange};
	__property OnMouseLeave;
	__property OnMouseEnter;
	__property OnMouseMove;
	__property OnMouseDown;
	__property OnMouseUp;
	__property OnKeyDown;
	__property OnKeyUp;
	__property OnResize;
private:
	void *__ITMSFNCPersistence;	// Fmx::Tmsfncpersistence::ITMSFNCPersistence 
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {363F04AF-B8A7-4C47-A2D6-8ED9C44CEFF6}
	operator Fmx::Tmsfncpersistence::_di_ITMSFNCPersistence()
	{
		Fmx::Tmsfncpersistence::_di_ITMSFNCPersistence intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator Fmx::Tmsfncpersistence::ITMSFNCPersistence*(void) { return (Fmx::Tmsfncpersistence::ITMSFNCPersistence*)&__ITMSFNCPersistence; }
	#endif
	
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x3);
static constexpr System::Int8 REL_VER = System::Int8(0x3);
static constexpr System::Int8 BLD_VER = System::Int8(0x1);
#define TTMSFNCResponsiveListDocURL u"https://download.tmssoftware.com/doc/tmsfncuipack/componen"\
	u"ts/ttmsfncresponsivelist/"
#define TTMSFNCResponsiveListTipsURL u"https://www.tmssoftware.com/site/tmsfncuipack.asp?s=faq"
static constexpr unsigned clBlue = unsigned(0xff0000ff);
static constexpr unsigned clWhite = unsigned(0xffffffff);
static constexpr unsigned clBlack = unsigned(0xff000000);
static constexpr System::Int8 clNone = System::Int8(0x0);
static constexpr unsigned clGray = unsigned(0xff808080);
static constexpr unsigned clYellow = unsigned(0xffffff00);
static constexpr unsigned clSilver = unsigned(0xffc0c0c0);
static constexpr unsigned clRed = unsigned(0xffff0000);
static constexpr unsigned clWindow = unsigned(0xffffffff);
static constexpr unsigned clWindowText = unsigned(0xff000000);
static constexpr unsigned clHighlight = unsigned(0xff87cefa);
static constexpr unsigned clHighlightText = unsigned(0xffffffff);
}	/* namespace Tmsfncresponsivelist */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCRESPONSIVELIST)
using namespace Fmx::Tmsfncresponsivelist;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncresponsivelistHPP
