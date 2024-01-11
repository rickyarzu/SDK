// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCTableView.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfnctableviewHPP
#define Fmx_TmsfnctableviewHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <FMX.TMSFNCTreeViewBase.hpp>
#include <FMX.TMSFNCTreeView.hpp>
#include <FMX.TMSFNCPersistence.hpp>
#include <FMX.TMSFNCStyles.hpp>
#include <FMX.TMSFNCTreeViewData.hpp>
#include <FMX.TMSFNCCustomControl.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.TMSFNCGraphics.hpp>
#include <FMX.TMSFNCCustomTreeView.hpp>
#include <FMX.TMSFNCBitmapContainer.hpp>
#include <FMX.TMSFNCGraphicsTypes.hpp>
#include <FMX.TMSFNCEdit.hpp>
#include <FMX.TMSFNCToolBar.hpp>
#include <FMX.Controls.hpp>
#include <FMX.ExtCtrls.hpp>
#include <FMX.TMSFNCControlPicker.hpp>
#include <FMX.Types.hpp>
#include <System.UITypes.hpp>
#include <System.Types.hpp>
#include <System.Generics.Collections.hpp>
#include <System.TypInfo.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>
#include <FMX.Edit.hpp>
#include <FMX.Controls.Presentation.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfnctableview
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCTableViewItem;
class DELPHICLASS TTMSFNCTableViewItems;
class DELPHICLASS TTMSFNCTableViewLookup;
class DELPHICLASS TTMSFNCTableViewFiltering;
class DELPHICLASS TTMSFNCTableViewInteraction;
class DELPHICLASS TTMSFNCTableViewItemAppearance;
class DELPHICLASS TTMSFNCTableViewCategoryAppearance;
class DELPHICLASS TTMSFNCTableViewMoreOptionAppearance;
class DELPHICLASS TTMSFNCTableViewHeaderFooter;
class DELPHICLASS TTMSFNCTableViewHeader;
class DELPHICLASS TTMSFNCTableViewFooter;
class DELPHICLASS TTMSFNCTableViewCopyItems;
class DELPHICLASS TTMSFNCTableViewFilterData;
class DELPHICLASS TTMSFNCTableViewFilter;
class DELPHICLASS TTMSFNCTreeViewTableViewFloatingNodes;
class DELPHICLASS TTMSFNCTreeViewTableView;
struct TTMSFNCTableViewDisplayItem;
class DELPHICLASS TTMSFNCTableViewDisplayList;
struct TTMSFNCTableViewLookupBarDisplayItem;
class DELPHICLASS TTMSFNCTableViewLookupBarDisplayList;
class DELPHICLASS TTMSFNCTableViewLookupBar;
class DELPHICLASS TTMSFNCTableViewReload;
class DELPHICLASS TTMSFNCTableViewCategory;
class DELPHICLASS TTMSFNCTableViewCategories;
class DELPHICLASS TTMSFNCTableViewMoreOption;
class DELPHICLASS TTMSFNCTableViewMoreOptions;
class DELPHICLASS TTMSFNCTableViewCustomChar;
class DELPHICLASS TTMSFNCTableViewCustomCharList;
class DELPHICLASS TTMSFNCTableViewEdit;
class DELPHICLASS TTMSFNCCustomTableView;
class DELPHICLASS TTMSFNCTableView;
//-- type declarations -------------------------------------------------------
enum DECLSPEC_DENUM TTMSFNCTableViewItemAccessory : unsigned char { tviaNone, tviaDetail, tviaProgress, tviaButton, tviaBadge, tviaCustom };

typedef System::Set<TTMSFNCTableViewItemAccessory, TTMSFNCTableViewItemAccessory::tviaNone, TTMSFNCTableViewItemAccessory::tviaCustom> TTMSFNCTableViewItemAccessories;

enum DECLSPEC_DENUM TTMSFNCTableViewItemCheckType : unsigned char { tvictNone, tvictCheckBox, tvictRadioButton };

class PASCALIMPLEMENTATION TTMSFNCTableViewItem : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	int FRow;
	NativeInt FTag;
	System::UnicodeString FDataString;
	System::TObject* FDataObject;
	NativeInt FDataInteger;
	TTMSFNCCustomTableView* FTableView;
	System::UnicodeString FText;
	System::UnicodeString FDBKey;
	bool FChecked;
	bool FDataBoolean;
	bool FWordWrapping;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextTrimming FTrimming;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign FHorizontalTextAlign;
	System::Uitypes::TAlphaColor FSelectedTextColor;
	System::Uitypes::TAlphaColor FTextColor;
	System::Uitypes::TAlphaColor FDisabledTextColor;
	bool FEnabled;
	System::UnicodeString FBitmapName;
	Fmx::Tmsfnctypes::TTMSFNCBitmap* FBitmap;
	double FHeight;
	void *FDataPointer;
	System::Classes::TStringList* FHTMLTemplateItems;
	bool FVisible;
	int FCategoryID;
	Fmx::Controls::TControl* FDetailControl;
	TTMSFNCTableViewItemAccessory FAccessory;
	float FAccessoryWidth;
	float FAccessoryProgress;
	float FAccessoryHeight;
	System::UnicodeString FAccessoryText;
	TTMSFNCTableViewItemCheckType FCheckType;
	System::Uitypes::TAlphaColor FAccessoryFontColor;
	System::Uitypes::TAlphaColor FAccessoryBorderColor;
	System::Uitypes::TAlphaColor FAccessoryColor;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign FVerticalTextAlign;
	bool FEnableMoreOptions;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextTrimming FTitleTrimming;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign FTitleHorizontalTextAlign;
	System::UnicodeString FTitle;
	System::Uitypes::TAlphaColor FDisabledTitleColor;
	bool FTitleWordWrapping;
	System::Uitypes::TAlphaColor FSelectedTitleColor;
	System::Uitypes::TAlphaColor FTitleColor;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign FTitleVerticalTextAlign;
	bool FTitleExpanded;
	void __fastcall SetText(const System::UnicodeString Value);
	void __fastcall SetHeight(const double Value);
	void __fastcall SetTrimming(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextTrimming Value);
	void __fastcall SetWordWrapping(const bool Value);
	void __fastcall SetHorizontalTextAlign(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign Value);
	void __fastcall SetSelectedTextColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetTextColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetDisabledTextColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetEnabled(const bool Value);
	void __fastcall SetBitmapName(const System::UnicodeString Value);
	void __fastcall SetBitmap(Fmx::Tmsfnctypes::TTMSFNCBitmap* const Value);
	void __fastcall SetChecked(const bool Value);
	Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* __fastcall GetBitmapContainer();
	System::UnicodeString __fastcall GetStrippedHTMLText();
	bool __fastcall IsHeightStored();
	void __fastcall SetHTMLTemplateItems(System::Classes::TStringList* const Value);
	void __fastcall SetVisible(const bool Value);
	void __fastcall SetCategoryID(const int Value);
	void __fastcall SetDetailControl(Fmx::Controls::TControl* const Value);
	void __fastcall SetAccessory(const TTMSFNCTableViewItemAccessory Value);
	bool __fastcall IsAccessoryWidthStored();
	void __fastcall SetAccessoryWidth(const float Value);
	bool __fastcall IsAccessoryProgressStored();
	void __fastcall SetAccessoryProgress(const float Value);
	bool __fastcall IsAccessoryHeightStored();
	void __fastcall SetAccessoryHeight(const float Value);
	void __fastcall SetAccessoryText(const System::UnicodeString Value);
	void __fastcall SetCheckType(const TTMSFNCTableViewItemCheckType Value);
	void __fastcall SetAccessoryBorderColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetAccessoryColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetAccessoryFontColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetVerticalTextAlign(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign Value);
	void __fastcall SetDisabledTitleColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetSelectedTitleColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetTitle(const System::UnicodeString Value);
	void __fastcall SetTitleColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetTitleHorizontalTextAlign(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign Value);
	void __fastcall SetTitleTrimming(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextTrimming Value);
	void __fastcall SetTitleVerticalTextAlign(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign Value);
	void __fastcall SetTitleWordWrapping(const bool Value);
	void __fastcall SetTitleExpanded(const bool Value);
	
protected:
	void __fastcall UpdateItem();
	HIDESBASE void __fastcall Changed(System::TObject* Sender);
	void __fastcall BitmapChanged(System::TObject* Sender);
	void __fastcall TemplateItemsChanged(System::TObject* Sender);
	
public:
	TTMSFNCCustomTableView* __fastcall GetTableView();
	System::UnicodeString __fastcall GetText();
	System::UnicodeString __fastcall GetTitle();
	__fastcall virtual TTMSFNCTableViewItem(System::Classes::TCollection* Collection);
	__fastcall virtual ~TTMSFNCTableViewItem();
	virtual System::UnicodeString __fastcall SaveToString(bool ATextOnly = true);
	virtual bool __fastcall IsSelected();
	virtual void __fastcall LoadFromString(System::UnicodeString AString);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	virtual void __fastcall AssignData(System::Classes::TPersistent* Source);
	__property void * DataPointer = {read=FDataPointer, write=FDataPointer};
	__property bool DataBoolean = {read=FDataBoolean, write=FDataBoolean, nodefault};
	__property System::TObject* DataObject = {read=FDataObject, write=FDataObject};
	__property System::UnicodeString DataString = {read=FDataString, write=FDataString};
	__property NativeInt DataInteger = {read=FDataInteger, write=FDataInteger, nodefault};
	__property System::UnicodeString DBKey = {read=FDBKey, write=FDBKey};
	__property Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* BitmapContainer = {read=GetBitmapContainer};
	__property System::UnicodeString StrippedHTMLText = {read=GetStrippedHTMLText};
	__property TTMSFNCCustomTableView* TableView = {read=GetTableView};
	virtual void __fastcall ShowDetailControl();
	virtual void __fastcall HideDetailControl();
	__property System::UnicodeString Title = {read=FTitle, write=SetTitle};
	__property bool TitleExpanded = {read=FTitleExpanded, write=SetTitleExpanded, default=1};
	__property bool TitleWordWrapping = {read=FTitleWordWrapping, write=SetTitleWordWrapping, default=1};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextTrimming TitleTrimming = {read=FTitleTrimming, write=SetTitleTrimming, default=0};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign TitleHorizontalTextAlign = {read=FTitleHorizontalTextAlign, write=SetTitleHorizontalTextAlign, default=1};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign TitleVerticalTextAlign = {read=FTitleVerticalTextAlign, write=SetTitleVerticalTextAlign, default=1};
	__property System::Uitypes::TAlphaColor TitleColor = {read=FTitleColor, write=SetTitleColor, default=-16777216};
	__property System::Uitypes::TAlphaColor SelectedTitleColor = {read=FSelectedTitleColor, write=SetSelectedTitleColor, default=-1};
	__property System::Uitypes::TAlphaColor DisabledTitleColor = {read=FDisabledTitleColor, write=SetDisabledTitleColor, default=-4144960};
	
__published:
	__property bool Checked = {read=FChecked, write=SetChecked, default=0};
	__property Fmx::Controls::TControl* DetailControl = {read=FDetailControl, write=SetDetailControl};
	__property System::UnicodeString Text = {read=FText, write=SetText};
	__property System::Classes::TStringList* HTMLTemplateItems = {read=FHTMLTemplateItems, write=SetHTMLTemplateItems};
	__property Fmx::Tmsfnctypes::TTMSFNCBitmap* Bitmap = {read=FBitmap, write=SetBitmap};
	__property System::UnicodeString BitmapName = {read=FBitmapName, write=SetBitmapName};
	__property bool WordWrapping = {read=FWordWrapping, write=SetWordWrapping, default=1};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextTrimming Trimming = {read=FTrimming, write=SetTrimming, default=0};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign HorizontalTextAlign = {read=FHorizontalTextAlign, write=SetHorizontalTextAlign, default=1};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign VerticalTextAlign = {read=FVerticalTextAlign, write=SetVerticalTextAlign, default=1};
	__property System::Uitypes::TAlphaColor TextColor = {read=FTextColor, write=SetTextColor, default=-16777216};
	__property System::Uitypes::TAlphaColor SelectedTextColor = {read=FSelectedTextColor, write=SetSelectedTextColor, default=-1};
	__property System::Uitypes::TAlphaColor DisabledTextColor = {read=FDisabledTextColor, write=SetDisabledTextColor, default=-4144960};
	__property bool Enabled = {read=FEnabled, write=SetEnabled, default=1};
	__property double Height = {read=FHeight, write=SetHeight, stored=IsHeightStored};
	__property bool Visible = {read=FVisible, write=SetVisible, default=1};
	__property int CategoryID = {read=FCategoryID, write=SetCategoryID, default=-1};
	__property NativeInt Tag = {read=FTag, write=FTag, default=0};
	__property float AccessoryWidth = {read=FAccessoryWidth, write=SetAccessoryWidth, stored=IsAccessoryWidthStored};
	__property float AccessoryHeight = {read=FAccessoryHeight, write=SetAccessoryHeight, stored=IsAccessoryHeightStored};
	__property TTMSFNCTableViewItemAccessory Accessory = {read=FAccessory, write=SetAccessory, default=0};
	__property float AccessoryProgress = {read=FAccessoryProgress, write=SetAccessoryProgress, stored=IsAccessoryProgressStored};
	__property System::UnicodeString AccessoryText = {read=FAccessoryText, write=SetAccessoryText};
	__property System::Uitypes::TAlphaColor AccessoryColor = {read=FAccessoryColor, write=SetAccessoryColor, default=0};
	__property System::Uitypes::TAlphaColor AccessoryBorderColor = {read=FAccessoryBorderColor, write=SetAccessoryBorderColor, default=0};
	__property System::Uitypes::TAlphaColor AccessoryFontColor = {read=FAccessoryFontColor, write=SetAccessoryFontColor, default=0};
	__property TTMSFNCTableViewItemCheckType CheckType = {read=FCheckType, write=SetCheckType, default=0};
	__property bool EnableMoreOptions = {read=FEnableMoreOptions, write=FEnableMoreOptions, default=1};
};


enum DECLSPEC_DENUM TTMSFNCTableViewItemsSortMode : unsigned char { tvismAscending, tvismDescending };

enum DECLSPEC_DENUM TTMSFNCTableViewItemsSortKind : unsigned char { tviskNone, tviskAscending, tviskDescending };

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCTableViewItems : public Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCTableViewItem*>
{
	typedef Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCTableViewItem*> inherited;
	
public:
	TTMSFNCTableViewItem* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCCustomTableView* FTableView;
	HIDESBASE TTMSFNCTableViewItem* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCTableViewItem* const Value);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall GetItemClass();
	virtual int __fastcall Compare(TTMSFNCTableViewItem* AItem1, TTMSFNCTableViewItem* AItem2, bool ACaseSensitive = true, TTMSFNCTableViewItemsSortMode ASortingMode = (TTMSFNCTableViewItemsSortMode)(0x0));
	virtual void __fastcall QuickSort(int L, int R, bool ACaseSensitive = true, TTMSFNCTableViewItemsSortMode ASortingMode = (TTMSFNCTableViewItemsSortMode)(0x0));
	
public:
	TTMSFNCCustomTableView* __fastcall TableView();
	__fastcall TTMSFNCTableViewItems(TTMSFNCCustomTableView* ATableView);
	HIDESBASE virtual TTMSFNCTableViewItem* __fastcall Add();
	HIDESBASE TTMSFNCTableViewItem* __fastcall Insert(int Index);
	HIDESBASE virtual void __fastcall Clear();
	HIDESBASE void __fastcall Sort(bool ACaseSensitive = true, TTMSFNCTableViewItemsSortMode ASortingMode = (TTMSFNCTableViewItemsSortMode)(0x0));
	__property TTMSFNCTableViewItem* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCTableViewItems() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCTableViewLookup : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	TTMSFNCTableViewInteraction* FOwner;
	bool __fastcall GetAutoSelect();
	bool __fastcall GetCaseSensitive();
	bool __fastcall GetEnabled();
	bool __fastcall GetIncremental();
	void __fastcall SetAutoSelect(const bool Value);
	void __fastcall SetCaseSensitive(const bool Value);
	void __fastcall SetEnabled(const bool Value);
	void __fastcall SetIncremental(const bool Value);
	
public:
	__fastcall TTMSFNCTableViewLookup(TTMSFNCTableViewInteraction* AOwner);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property bool CaseSensitive = {read=GetCaseSensitive, write=SetCaseSensitive, default=0};
	__property bool Enabled = {read=GetEnabled, write=SetEnabled, default=1};
	__property bool Incremental = {read=GetIncremental, write=SetIncremental, default=1};
	__property bool AutoSelect = {read=GetAutoSelect, write=SetAutoSelect, default=1};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTMSFNCTableViewLookup() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCTableViewFiltering : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	TTMSFNCTableViewInteraction* FOwner;
	int __fastcall GetDropDownHeight();
	int __fastcall GetDropDownWidth();
	bool __fastcall GetEnabled();
	void __fastcall SetDropDownHeight(const int Value);
	void __fastcall SetDropDownWidth(const int Value);
	void __fastcall SetEnabled(const bool Value);
	
public:
	__fastcall TTMSFNCTableViewFiltering(TTMSFNCTableViewInteraction* AOwner);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property bool Enabled = {read=GetEnabled, write=SetEnabled, default=0};
	__property int DropDownWidth = {read=GetDropDownWidth, write=SetDropDownWidth, default=100};
	__property int DropDownHeight = {read=GetDropDownHeight, write=SetDropDownHeight, default=120};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTMSFNCTableViewFiltering() { }
	
};

#pragma pack(pop)

enum DECLSPEC_DENUM TTMSFNCTableViewMouseEditMode : unsigned char { tvmemDoubleClick, tvmemSingleClick, tvmemSingleClickOnSelectedItem };

enum DECLSPEC_DENUM TTMSFNCTableViewClipboardMode : unsigned char { tvcmNone, tvcmTextOnly, tvcmFull };

enum DECLSPEC_DENUM TTMSFNCTableViewDragDropMode : unsigned char { tvdmNone, tvdmMove, tvdmCopy };

enum DECLSPEC_DENUM TTMSFNCTableViewSorting : unsigned char { tvcsNone, tvcsNormal, tvcsNormalCaseSensitive };

enum DECLSPEC_DENUM TTMSFNCTableViewShowDetailMode : unsigned char { tvdtNone, tvdtAfterSelectItem };

enum DECLSPEC_DENUM TTMSFNCTableViewKeyboardEscapeMode : unsigned char { tvkeNone, tvkeClearEdit, tvkeStopFilter };

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCTableViewInteraction : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	TTMSFNCCustomTableView* FTableView;
	TTMSFNCTableViewLookup* FLookup;
	TTMSFNCTableViewFiltering* FFiltering;
	TTMSFNCTableViewShowDetailMode FShowDetailMode;
	bool FShowEditButton;
	bool FShowFilterButton;
	TTMSFNCTableViewItemAccessories FAccessoryClickDetection;
	bool FLongPressToEdit;
	bool FSwipeToShowMoreOptions;
	bool FSwipeBounceGesture;
	TTMSFNCTableViewKeyboardEscapeMode FKeyboardEscapeMode;
	bool __fastcall GetMultiSelect();
	void __fastcall SetMultiSelect(const bool Value);
	TTMSFNCTableViewClipboardMode __fastcall GetClipboardMode();
	TTMSFNCTableViewDragDropMode __fastcall GetDragDropMode();
	bool __fastcall GetReorder();
	bool __fastcall GetTouchScrolling();
	void __fastcall SetDragDropMode(const TTMSFNCTableViewDragDropMode Value);
	void __fastcall SetFiltering(TTMSFNCTableViewFiltering* const Value);
	void __fastcall SetLookup(TTMSFNCTableViewLookup* const Value);
	void __fastcall SetReorder(const bool Value);
	void __fastcall SetTouchScrolling(const bool Value);
	void __fastcall SetClipboardMode(const TTMSFNCTableViewClipboardMode Value);
	TTMSFNCTableViewSorting __fastcall GetSorting();
	void __fastcall SetSorting(const TTMSFNCTableViewSorting Value);
	void __fastcall SetShowDetailMode(const TTMSFNCTableViewShowDetailMode Value);
	void __fastcall SetShowEditButton(const bool Value);
	void __fastcall SetShowFilterButton(const bool Value);
	void __fastcall SetAccessoryClickDetection(const TTMSFNCTableViewItemAccessories Value);
	bool __fastcall GetAutoOpenURL();
	void __fastcall SetAutoOpenURL(const bool Value);
	float __fastcall GetAnimationFactor();
	void __fastcall SetAnimationFactor(const float Value);
	
protected:
	__property TTMSFNCTableViewClipboardMode ClipboardMode = {read=GetClipboardMode, write=SetClipboardMode, default=0};
	__property bool Reorder = {read=GetReorder, write=SetReorder, default=0};
	__property TTMSFNCTableViewSorting Sorting = {read=GetSorting, write=SetSorting, default=0};
	__property TTMSFNCTableViewFiltering* Filtering = {read=FFiltering, write=SetFiltering};
	__property TTMSFNCTableViewLookup* Lookup = {read=FLookup, write=SetLookup};
	
public:
	__fastcall TTMSFNCTableViewInteraction(TTMSFNCCustomTableView* ATableView);
	__fastcall virtual ~TTMSFNCTableViewInteraction();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__property TTMSFNCTableViewDragDropMode DragDropMode = {read=GetDragDropMode, write=SetDragDropMode, default=0};
	
__published:
	__property float AnimationFactor = {read=GetAnimationFactor, write=SetAnimationFactor};
	__property bool AutoOpenURL = {read=GetAutoOpenURL, write=SetAutoOpenURL, default=1};
	__property bool MultiSelect = {read=GetMultiSelect, write=SetMultiSelect, default=0};
	__property bool TouchScrolling = {read=GetTouchScrolling, write=SetTouchScrolling, default=1};
	__property TTMSFNCTableViewShowDetailMode ShowDetailMode = {read=FShowDetailMode, write=SetShowDetailMode, default=1};
	__property bool ShowEditButton = {read=FShowEditButton, write=SetShowEditButton, default=0};
	__property bool ShowFilterButton = {read=FShowFilterButton, write=SetShowFilterButton, default=0};
	__property bool SwipeBounceGesture = {read=FSwipeBounceGesture, write=FSwipeBounceGesture, default=1};
	__property TTMSFNCTableViewItemAccessories AccessoryClickDetection = {read=FAccessoryClickDetection, write=SetAccessoryClickDetection, default=40};
	__property bool SwipeToShowMoreOptions = {read=FSwipeToShowMoreOptions, write=FSwipeToShowMoreOptions, default=1};
	__property bool LongPressToEdit = {read=FLongPressToEdit, write=FLongPressToEdit, default=1};
	__property TTMSFNCTableViewKeyboardEscapeMode KeyboardEscapeMode = {read=FKeyboardEscapeMode, write=FKeyboardEscapeMode, default=2};
};

#pragma pack(pop)

enum DECLSPEC_DENUM TTMSFNCTableViewItemHeightMode : unsigned char { tvhmFixed, tvhmVariable };

class PASCALIMPLEMENTATION TTMSFNCTableViewItemAppearance : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	TTMSFNCCustomTableView* FTableView;
	System::UnicodeString FHTMLTemplate;
	Fmx::Tmsfnctypes::TTMSFNCScaledBitmaps* FAccessoryDetailBitmaps;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FAccessoryFont;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FAccessoryStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FAccessoryFill;
	double FHeight;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* __fastcall GetFont();
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* __fastcall GetSelectedFill();
	void __fastcall SetFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetSelectedFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* __fastcall GetSelectedStroke();
	void __fastcall SetSelectedStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* __fastcall GetDisabledFill();
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* __fastcall GetDisabledStroke();
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* __fastcall GetFill();
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* __fastcall GetStroke();
	void __fastcall SetDisabledFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetDisabledStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	TTMSFNCTableViewItemHeightMode __fastcall GetHeightMode();
	void __fastcall SetHeightMode(const TTMSFNCTableViewItemHeightMode Value);
	double __fastcall GetFixedHeight();
	void __fastcall SetFixedHeight(const double Value);
	void __fastcall SetHTMLTemplate(const System::UnicodeString Value);
	void __fastcall SetAccessoryDetailBitmaps(Fmx::Tmsfnctypes::TTMSFNCScaledBitmaps* const Value);
	void __fastcall SetAccessoryFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetAccessoryFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetAccessoryStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	bool __fastcall IsHeightStored();
	void __fastcall SetHeight(const double Value);
	bool __fastcall GetShowFocus();
	void __fastcall SetShowFocus(const bool Value);
	
protected:
	void __fastcall DoAccessoryDetailBitmapsChanged(System::TObject* Sender);
	void __fastcall FontChanged(System::TObject* Sender);
	void __fastcall FillChanged(System::TObject* Sender);
	void __fastcall StrokeChanged(System::TObject* Sender);
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall TTMSFNCTableViewItemAppearance(TTMSFNCCustomTableView* ATableView);
	__fastcall virtual ~TTMSFNCTableViewItemAppearance();
	
__published:
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* Font = {read=GetFont, write=SetFont};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* Fill = {read=GetFill, write=SetFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* Stroke = {read=GetStroke, write=SetStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* SelectedFill = {read=GetSelectedFill, write=SetSelectedFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* SelectedStroke = {read=GetSelectedStroke, write=SetSelectedStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* DisabledFill = {read=GetDisabledFill, write=SetDisabledFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* DisabledStroke = {read=GetDisabledStroke, write=SetDisabledStroke};
	__property TTMSFNCTableViewItemHeightMode HeightMode = {read=GetHeightMode, write=SetHeightMode, default=1};
	__property double FixedHeight = {read=GetFixedHeight, write=SetFixedHeight};
	__property double Height = {read=FHeight, write=SetHeight, stored=IsHeightStored};
	__property System::UnicodeString HTMLTemplate = {read=FHTMLTemplate, write=SetHTMLTemplate};
	__property Fmx::Tmsfnctypes::TTMSFNCScaledBitmaps* AccessoryDetailBitmaps = {read=FAccessoryDetailBitmaps, write=SetAccessoryDetailBitmaps};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* AccessoryFont = {read=FAccessoryFont, write=SetAccessoryFont};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* AccessoryStroke = {read=FAccessoryStroke, write=SetAccessoryStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* AccessoryFill = {read=FAccessoryFill, write=SetAccessoryFill};
	__property bool ShowFocus = {read=GetShowFocus, write=SetShowFocus, default=1};
};


#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCTableViewCategoryAppearance : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	TTMSFNCCustomTableView* FTableView;
	float FHeight;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* __fastcall GetFont();
	void __fastcall SetFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* __fastcall GetFill();
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* __fastcall GetStroke();
	void __fastcall SetFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	bool __fastcall IsHeightStored();
	void __fastcall SetHeight(const float Value);
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall TTMSFNCTableViewCategoryAppearance(TTMSFNCCustomTableView* ATableView);
	__fastcall virtual ~TTMSFNCTableViewCategoryAppearance();
	
__published:
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* Font = {read=GetFont, write=SetFont};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* Fill = {read=GetFill, write=SetFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* Stroke = {read=GetStroke, write=SetStroke};
	__property float Height = {read=FHeight, write=SetHeight, stored=IsHeightStored};
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCTableViewMoreOptionAppearance : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	TTMSFNCCustomTableView* FTableView;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FFont;
	void __fastcall SetFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	
protected:
	void __fastcall FontChanged(System::TObject* Sender);
	void __fastcall StrokeChanged(System::TObject* Sender);
	void __fastcall FillChanged(System::TObject* Sender);
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall TTMSFNCTableViewMoreOptionAppearance(TTMSFNCCustomTableView* ATableView);
	__fastcall virtual ~TTMSFNCTableViewMoreOptionAppearance();
	
__published:
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* Font = {read=FFont, write=SetFont};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* Fill = {read=FFill, write=SetFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* Stroke = {read=FStroke, write=SetStroke};
};

#pragma pack(pop)

typedef System::DynamicArray<int> TTMSFNCTableViewIntegerArray;

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCTableViewHeaderFooter : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	TTMSFNCCustomTableView* FTableView;
	System::UnicodeString FText;
	bool FWordWrapping;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign FVerticalTextAlign;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextTrimming FTrimming;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign FHorizontalTextAlign;
	bool __fastcall GetVisible();
	void __fastcall SetVisible(const bool Value);
	void __fastcall SetText(const System::UnicodeString Value);
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* __fastcall GetFill();
	float __fastcall GetHeight();
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* __fastcall GetStroke();
	void __fastcall SetFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetHorizontalTextAlign(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign Value);
	void __fastcall SetHeight(const float Value);
	void __fastcall SetStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetVerticalTextAlign(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign Value);
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* __fastcall GetFont();
	void __fastcall SetFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetTrimming(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextTrimming Value);
	void __fastcall SetWordWrapping(const bool Value);
	System::Uitypes::TAlphaColor __fastcall GetSortIndicatorColor();
	void __fastcall SetSortIndicatorColor(const System::Uitypes::TAlphaColor Value);
	
protected:
	__property bool Visible = {read=GetVisible, write=SetVisible, default=1};
	__property System::UnicodeString Text = {read=FText, write=SetText};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* Fill = {read=GetFill, write=SetFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* Font = {read=GetFont, write=SetFont};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* Stroke = {read=GetStroke, write=SetStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign HorizontalTextAlign = {read=FHorizontalTextAlign, write=SetHorizontalTextAlign, default=0};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign VerticalTextAlign = {read=FVerticalTextAlign, write=SetVerticalTextAlign, default=0};
	__property bool WordWrapping = {read=FWordWrapping, write=SetWordWrapping, default=0};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextTrimming Trimming = {read=FTrimming, write=SetTrimming, default=0};
	__property float Height = {read=GetHeight, write=SetHeight};
	__property System::Uitypes::TAlphaColor SortIndicatorColor = {read=GetSortIndicatorColor, write=SetSortIndicatorColor, default=-14963208};
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual TTMSFNCTableViewHeaderFooter(TTMSFNCCustomTableView* ATableView);
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTMSFNCTableViewHeaderFooter() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCTableViewHeader : public TTMSFNCTableViewHeaderFooter
{
	typedef TTMSFNCTableViewHeaderFooter inherited;
	
__published:
	__property Visible = {default=1};
	__property Text = {default=0};
	__property Fill;
	__property Font;
	__property Stroke;
	__property HorizontalTextAlign = {default=0};
	__property VerticalTextAlign = {default=0};
	__property WordWrapping = {default=0};
	__property Trimming = {default=0};
	__property Height = {default=0};
public:
	/* TTMSFNCTableViewHeaderFooter.Create */ inline __fastcall virtual TTMSFNCTableViewHeader(TTMSFNCCustomTableView* ATableView) : TTMSFNCTableViewHeaderFooter(ATableView) { }
	
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTMSFNCTableViewHeader() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCTableViewFooter : public TTMSFNCTableViewHeaderFooter
{
	typedef TTMSFNCTableViewHeaderFooter inherited;
	
__published:
	__property Visible = {default=1};
	__property Text = {default=0};
	__property Fill;
	__property Font;
	__property Stroke;
	__property HorizontalTextAlign = {default=0};
	__property VerticalTextAlign = {default=0};
	__property WordWrapping = {default=0};
	__property Trimming = {default=0};
	__property Height = {default=0};
public:
	/* TTMSFNCTableViewHeaderFooter.Create */ inline __fastcall virtual TTMSFNCTableViewFooter(TTMSFNCCustomTableView* ATableView) : TTMSFNCTableViewHeaderFooter(ATableView) { }
	
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTMSFNCTableViewFooter() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCTableViewCopyItems : public TTMSFNCTableViewItems
{
	typedef TTMSFNCTableViewItems inherited;
	
public:
	/* TTMSFNCTableViewItems.Create */ inline __fastcall TTMSFNCTableViewCopyItems(TTMSFNCCustomTableView* ATableView) : TTMSFNCTableViewItems(ATableView) { }
	
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCTableViewCopyItems() { }
	
};

#pragma pack(pop)

typedef void __fastcall (__closure *TTMSFNCTableViewBeforeDrawSortIndicatorEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int ASortIndex, TTMSFNCTableViewItemsSortKind ASortKind, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCTableViewAfterDrawSortIndicatorEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int ASortIndex, TTMSFNCTableViewItemsSortKind ASortKind);

typedef void __fastcall (__closure *TTMSFNCTableViewNeedFilterDropDownDataEvent)(System::TObject* Sender, System::Classes::TStrings* AValues);

typedef void __fastcall (__closure *TTMSFNCTableViewItemAnchorClickEvent)(System::TObject* Sender, TTMSFNCTableViewItem* AItem, System::UnicodeString AAnchor);

typedef void __fastcall (__closure *TTMSFNCTableViewBeforeReorderItemEvent)(System::TObject* Sender, TTMSFNCTableViewItem* AFromItem, TTMSFNCTableViewItem* AToItem, bool &ACanReorder);

typedef void __fastcall (__closure *TTMSFNCTableViewAfterReorderItemEvent)(System::TObject* Sender, TTMSFNCTableViewItem* AFromItem, TTMSFNCTableViewItem* AToItem);

typedef void __fastcall (__closure *TTMSFNCTableViewBeforeDropItemEvent)(System::TObject* Sender, TTMSFNCTableViewItem* AFromItem, TTMSFNCTableViewItem* AToItem, bool &ACanDrop);

typedef void __fastcall (__closure *TTMSFNCTableViewAfterDropItemEvent)(System::TObject* Sender, TTMSFNCTableViewItem* AFromItem, TTMSFNCTableViewItem* AToItem);

typedef void __fastcall (__closure *TTMSFNCTableViewBeforeCopyToClipboardEvent)(System::TObject* Sender, bool &ACanCopy);

typedef void __fastcall (__closure *TTMSFNCTableViewBeforeCutToClipboardEvent)(System::TObject* Sender, bool &ACanCut);

typedef void __fastcall (__closure *TTMSFNCTableViewBeforePasteFromClipboardEvent)(System::TObject* Sender, bool &ACanPaste);

typedef void __fastcall (__closure *TTMSFNCTableViewAfterCopyToClipboardEvent)(System::TObject* Sender);

typedef void __fastcall (__closure *TTMSFNCTableViewAfterCutToClipboardEvent)(System::TObject* Sender);

typedef void __fastcall (__closure *TTMSFNCTableViewAfterPasteFromClipboardEvent)(System::TObject* Sender);

typedef void __fastcall (__closure *TTMSFNCTableViewBeforeDrawItemTextEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCTableViewItem* AItem, System::UnicodeString AText, bool &AAllow);

typedef void __fastcall (__closure *TTMSFNCTableViewAfterDrawItemTextEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCTableViewItem* AItem, System::UnicodeString AText);

typedef void __fastcall (__closure *TTMSFNCTableViewBeforeDrawItemTitleEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCTableViewItem* AItem, System::UnicodeString ATitle, bool &AAllow);

typedef void __fastcall (__closure *TTMSFNCTableViewAfterDrawItemTitleEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCTableViewItem* AItem, System::UnicodeString ATitle);

typedef void __fastcall (__closure *TTMSFNCTableViewItemSelectedEvent)(System::TObject* Sender, TTMSFNCTableViewItem* AItem);

typedef void __fastcall (__closure *TTMSFNCTableViewItemUnSelectedEvent)(System::TObject* Sender, TTMSFNCTableViewItem* AItem);

typedef System::Classes::TNotifyEvent TTMSFNCTableViewItemSelectionChangedEvent;

typedef void __fastcall (__closure *TTMSFNCTableViewItemClickEvent)(System::TObject* Sender, TTMSFNCTableViewItem* AItem);

typedef void __fastcall (__closure *TTMSFNCTableViewItemMouseEnterEvent)(System::TObject* Sender, TTMSFNCTableViewItem* AItem);

typedef void __fastcall (__closure *TTMSFNCTableViewItemMouseLeaveEvent)(System::TObject* Sender, TTMSFNCTableViewItem* AItem);

typedef void __fastcall (__closure *TTMSFNCTableViewItemCheckChangedEvent)(System::TObject* Sender, TTMSFNCTableViewItem* AItem);

typedef void __fastcall (__closure *TTMSFNCTableViewScrollEvent)(System::TObject* Sender, float APosition);

typedef void __fastcall (__closure *TTMSFNCTableViewGetItemHeightEvent)(System::TObject* Sender, TTMSFNCTableViewItem* AItem, double &AHeight);

typedef void __fastcall (__closure *TTMSFNCTableViewBeforeDrawItemIconEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCTableViewItem* AItem, Fmx::Tmsfnctypes::TTMSFNCBitmap* AIcon, bool &AAllow);

typedef void __fastcall (__closure *TTMSFNCTableViewAfterDrawItemIconEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCTableViewItem* AItem, Fmx::Tmsfnctypes::TTMSFNCBitmap* AIcon);

typedef void __fastcall (__closure *TTMSFNCTableViewBeforeDrawItemCheckEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCTableViewItem* AItem, Fmx::Tmsfnctypes::TTMSFNCBitmap* ACheck, bool &AAllow);

typedef void __fastcall (__closure *TTMSFNCTableViewAfterDrawItemCheckEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCTableViewItem* AItem, Fmx::Tmsfnctypes::TTMSFNCBitmap* ACheck);

typedef void __fastcall (__closure *TTMSFNCTableViewBeforeDrawItemEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCTableViewItem* AItem, bool &AAllow, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCTableViewAfterDrawItemEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCTableViewItem* AItem);

typedef void __fastcall (__closure *TTMSFNCTableViewItemCompareEvent)(System::TObject* Sender, TTMSFNCTableViewItem* Item1, TTMSFNCTableViewItem* Item2, int &ACompareResult);

typedef void __fastcall (__closure *TTMSFNCTableViewCategoryCompareEvent)(System::TObject* Sender, TTMSFNCTableViewCategory* Category1, TTMSFNCTableViewCategory* Category2, int &ACompareResult);

typedef void __fastcall (__closure *TTMSFNCTableViewFilterSelectEvent)(System::TObject* Sender, System::UnicodeString &ACondition);

typedef void __fastcall (__closure *TTMSFNCTableViewGetHTMLTemplateValueEvent)(System::TObject* Sender, TTMSFNCTableViewItem* AItem, System::UnicodeString AName, System::UnicodeString &AValue);

typedef void __fastcall (__closure *TTMSFNCTableViewGetHTMLTemplateEvent)(System::TObject* Sender, TTMSFNCTableViewItem* AItem, System::UnicodeString &AHTMLTemplate);

typedef void __fastcall (__closure *TTMSFNCTableViewAnchorHeaderFooterClick)(System::TObject* Sender, System::UnicodeString AAnchor);

enum DECLSPEC_DENUM TTMSFNCTableViewFilterOperation : unsigned char { tvfoSHORT, tvfoNONE, tvfoAND, tvfoXOR, tvfoOR };

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCTableViewFilterData : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	System::UnicodeString FCondition;
	bool FCaseSensitive;
	System::UnicodeString FSuffix;
	System::UnicodeString FPrefix;
	TTMSFNCTableViewFilterOperation FOperation;
	
public:
	__fastcall virtual TTMSFNCTableViewFilterData(System::Classes::TCollection* ACollection);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property System::UnicodeString Condition = {read=FCondition, write=FCondition};
	__property bool CaseSensitive = {read=FCaseSensitive, write=FCaseSensitive, default=1};
	__property System::UnicodeString Prefix = {read=FPrefix, write=FPrefix};
	__property System::UnicodeString Suffix = {read=FSuffix, write=FSuffix};
	__property TTMSFNCTableViewFilterOperation Operation = {read=FOperation, write=FOperation, nodefault};
public:
	/* TCollectionItem.Destroy */ inline __fastcall virtual ~TTMSFNCTableViewFilterData() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCTableViewFilter : public Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCTableViewFilterData*>
{
	typedef Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCTableViewFilterData*> inherited;
	
public:
	TTMSFNCTableViewFilterData* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCCustomTableView* FOwner;
	HIDESBASE TTMSFNCTableViewFilterData* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCTableViewFilterData* const Value);
	
public:
	__fastcall TTMSFNCTableViewFilter(TTMSFNCCustomTableView* AOwner);
	HIDESBASE TTMSFNCTableViewFilterData* __fastcall Add();
	HIDESBASE TTMSFNCTableViewFilterData* __fastcall Insert(int index);
	__property TTMSFNCTableViewFilterData* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCTableViewFilter() { }
	
};

#pragma pack(pop)

typedef void __fastcall (__closure *TTMSFNCTableViewBeforeApplyFilterEvent)(System::TObject* Sender, TTMSFNCTableViewFilterData* AFilter, bool &AAllow);

typedef void __fastcall (__closure *TTMSFNCTableViewAfterApplyFilterEvent)(System::TObject* Sender, TTMSFNCTableViewFilterData* AFilter);

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCTreeViewTableViewFloatingNodes : public System::Generics::Collections::TObjectList__1<Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode*>
{
	typedef System::Generics::Collections::TObjectList__1<Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode*> inherited;
	
public:
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewVirtualNode>.Create */ inline __fastcall TTMSFNCTreeViewTableViewFloatingNodes()/* overload */ : System::Generics::Collections::TObjectList__1<Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode*>() { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewVirtualNode>.Create */ inline __fastcall TTMSFNCTreeViewTableViewFloatingNodes(bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode*>(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewVirtualNode>.Create */ inline __fastcall TTMSFNCTreeViewTableViewFloatingNodes(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode*> > AComparer, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode*>(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewVirtualNode>.Create */ inline __fastcall TTMSFNCTreeViewTableViewFloatingNodes(System::Generics::Collections::TEnumerable__1<Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode*>* const Collection, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode*>(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewVirtualNode>.Destroy */ inline __fastcall virtual ~TTMSFNCTreeViewTableViewFloatingNodes() { }
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewVirtualNode>.Create */ inline __fastcall TTMSFNCTreeViewTableViewFloatingNodes(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode*> > AComparer)/* overload */ : System::Generics::Collections::TObjectList__1<Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode*>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewVirtualNode>.Create */ inline __fastcall TTMSFNCTreeViewTableViewFloatingNodes(System::Generics::Collections::TEnumerable__1<Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode*>* const Collection)/* overload */ : System::Generics::Collections::TObjectList__1<Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode*>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewVirtualNode>.Create */ inline __fastcall TTMSFNCTreeViewTableViewFloatingNodes(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* const *Values, const int Values_High)/* overload */ : System::Generics::Collections::TObjectList__1<Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode*>(Values, Values_High) { }
	
};

#pragma pack(pop)

class PASCALIMPLEMENTATION TTMSFNCTreeViewTableView : public Fmx::Tmsfnctreeview::TTMSFNCTreeView
{
	typedef Fmx::Tmsfnctreeview::TTMSFNCTreeView inherited;
	
private:
	TTMSFNCTableViewMoreOption* FDownMoreOption;
	double FMoreOffset;
	double FMoreOffsetTo;
	TTMSFNCTableViewItem* FMoreOffsetItem;
	bool FDownAction;
	int FDownCount;
	bool FDownTimer;
	float FDownX;
	float FDownY;
	Fmx::Types::TTimer* FAnimTimer;
	bool FAnimateMoreOptions;
	bool FAnimateMoreOptionsClose;
	bool FMouseDownOnAccessory;
	bool FAnimMarqueeSwitch;
	float FAnimMarqueeStartAngle;
	float FAnimMarqueeSweepAngle;
	float FAnimShiftAngle;
	float FManualProgressSweepAngle;
	float FManualProgressStartAngle;
	bool FReloadActive;
	bool FMouseDownOnLookupBar;
	TTMSFNCCustomTableView* FTableView;
	TTMSFNCTreeViewTableViewFloatingNodes* FFloatingNodes;
	TTMSFNCTableViewAnchorHeaderFooterClick FOnFooterAnchorClick;
	TTMSFNCTableViewAnchorHeaderFooterClick FOnHeaderAnchorClick;
	
protected:
	void __fastcall AnimateTimerChanged(System::TObject* Sender);
	virtual void __fastcall OffsetNodeRects(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, float AX, float AY, System::Types::TRectF &ARect);
	virtual void __fastcall CustomizeNodeCache(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, float AStartY);
	virtual void __fastcall CustomizeScrollPosition(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, double &APosition, double &ATopPosition);
	virtual void __fastcall DrawLookupBar(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	virtual void __fastcall DrawReload(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	virtual void __fastcall HandleMouseUp(System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall HandleMouseDown(System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall HandleMouseMove(System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall HandleKeyDown(System::Word &Key, System::Classes::TShiftState Shift);
	virtual void __fastcall ProcessLookup(float X, float Y, bool DoLookup = true);
	virtual void __fastcall StartReload();
	virtual void __fastcall UpdateCheckState(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, bool AChecked);
	virtual bool __fastcall ScrollLimitation();
	virtual bool __fastcall NeedsReload(float AVerticalOffset);
	virtual float __fastcall GetReloadOffset();
	virtual System::Types::TRectF __fastcall GetNodesRect();
	virtual System::Types::TRectF __fastcall GetContentRect();
	virtual int __fastcall GetCategoryAtXY(float X, float Y);
	virtual System::Types::TRectF __fastcall GetLookupBarRect();
	virtual System::Types::TRectF __fastcall GetContentClipRect();
	virtual bool __fastcall CanApplyVerticalOffset();
	System::UnicodeString __fastcall XYToHeaderAnchor(float X, float Y);
	System::UnicodeString __fastcall XYToFooterAnchor(float X, float Y);
	virtual void __fastcall DoHeaderAnchorClick(System::UnicodeString AAnchor);
	virtual void __fastcall DoFooterAnchorClick(System::UnicodeString AAnchor);
	__property TTMSFNCTableViewAnchorHeaderFooterClick OnFooterAnchorClick = {read=FOnFooterAnchorClick, write=FOnFooterAnchorClick};
	__property TTMSFNCTableViewAnchorHeaderFooterClick OnHeaderAnchorClick = {read=FOnHeaderAnchorClick, write=FOnHeaderAnchorClick};
	
public:
	__fastcall virtual TTMSFNCTreeViewTableView(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCTreeViewTableView();
	virtual void __fastcall Draw(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	virtual double __fastcall GetTotalColumnNodeWidth();
	virtual double __fastcall GetColumnWidth(int AColumn);
	__property CustomScrollBars = {default=0};
};


enum DECLSPEC_DENUM TTMSFNCTableViewDisplayItemKind : unsigned char { tvikNone, tvikItem, tvikCategory };

struct DECLSPEC_DRECORD TTMSFNCTableViewDisplayItem
{
public:
	TTMSFNCTableViewDisplayItemKind Kind;
	TTMSFNCTableViewItem* Item;
	int CategoryID;
	int Row;
	System::UnicodeString Text;
};


#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCTableViewDisplayList : public System::Generics::Collections::TList__1<TTMSFNCTableViewDisplayItem>
{
	typedef System::Generics::Collections::TList__1<TTMSFNCTableViewDisplayItem> inherited;
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCTableView_TTMSFNCTableViewDisplayItem>.Create */ inline __fastcall TTMSFNCTableViewDisplayList()/* overload */ : System::Generics::Collections::TList__1<TTMSFNCTableViewDisplayItem>() { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTableView_TTMSFNCTableViewDisplayItem>.Create */ inline __fastcall TTMSFNCTableViewDisplayList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCTableViewDisplayItem> > AComparer)/* overload */ : System::Generics::Collections::TList__1<TTMSFNCTableViewDisplayItem>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTableView_TTMSFNCTableViewDisplayItem>.Create */ inline __fastcall TTMSFNCTableViewDisplayList(System::Generics::Collections::TEnumerable__1<TTMSFNCTableViewDisplayItem>* const Collection)/* overload */ : System::Generics::Collections::TList__1<TTMSFNCTableViewDisplayItem>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTableView_TTMSFNCTableViewDisplayItem>.Create */ inline __fastcall TTMSFNCTableViewDisplayList(const TTMSFNCTableViewDisplayItem *Values, const int Values_High)/* overload */ : System::Generics::Collections::TList__1<TTMSFNCTableViewDisplayItem>(Values, Values_High) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTableView_TTMSFNCTableViewDisplayItem>.Destroy */ inline __fastcall virtual ~TTMSFNCTableViewDisplayList() { }
	
};

#pragma pack(pop)

struct DECLSPEC_DRECORD TTMSFNCTableViewLookupBarDisplayItem
{
public:
	System::Types::TRectF Rect;
	System::UnicodeString Text;
	bool Active;
};


#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCTableViewLookupBarDisplayList : public System::Generics::Collections::TList__1<TTMSFNCTableViewLookupBarDisplayItem>
{
	typedef System::Generics::Collections::TList__1<TTMSFNCTableViewLookupBarDisplayItem> inherited;
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCTableView_TTMSFNCTableViewLookupBarDisplayItem>.Create */ inline __fastcall TTMSFNCTableViewLookupBarDisplayList()/* overload */ : System::Generics::Collections::TList__1<TTMSFNCTableViewLookupBarDisplayItem>() { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTableView_TTMSFNCTableViewLookupBarDisplayItem>.Create */ inline __fastcall TTMSFNCTableViewLookupBarDisplayList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCTableViewLookupBarDisplayItem> > AComparer)/* overload */ : System::Generics::Collections::TList__1<TTMSFNCTableViewLookupBarDisplayItem>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTableView_TTMSFNCTableViewLookupBarDisplayItem>.Create */ inline __fastcall TTMSFNCTableViewLookupBarDisplayList(System::Generics::Collections::TEnumerable__1<TTMSFNCTableViewLookupBarDisplayItem>* const Collection)/* overload */ : System::Generics::Collections::TList__1<TTMSFNCTableViewLookupBarDisplayItem>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTableView_TTMSFNCTableViewLookupBarDisplayItem>.Create */ inline __fastcall TTMSFNCTableViewLookupBarDisplayList(const TTMSFNCTableViewLookupBarDisplayItem *Values, const int Values_High)/* overload */ : System::Generics::Collections::TList__1<TTMSFNCTableViewLookupBarDisplayItem>(Values, Values_High) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTableView_TTMSFNCTableViewLookupBarDisplayItem>.Destroy */ inline __fastcall virtual ~TTMSFNCTableViewLookupBarDisplayList() { }
	
};

#pragma pack(pop)

enum DECLSPEC_DENUM TTMSFNCTableViewLookupBarPosition : unsigned char { tvlbpLeft, tvlbpRight };

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCTableViewLookupBar : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	TTMSFNCCustomTableView* FTableView;
	bool FVisible;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FFont;
	bool FAutoLookup;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FStroke;
	float FWidth;
	TTMSFNCTableViewLookupBarPosition FPosition;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FDownFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FDownStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FInActiveFont;
	void __fastcall SetVisible(const bool Value);
	void __fastcall SetFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetAutoLookup(const bool Value);
	void __fastcall SetFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	bool __fastcall IsWidthStored();
	void __fastcall SetPosition(const TTMSFNCTableViewLookupBarPosition Value);
	void __fastcall SetWidth(const float Value);
	void __fastcall SetDownFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetDownStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetInActiveFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	
protected:
	void __fastcall FontChanged(System::TObject* Sender);
	void __fastcall StrokeChanged(System::TObject* Sender);
	void __fastcall FillChanged(System::TObject* Sender);
	
public:
	__fastcall TTMSFNCTableViewLookupBar(TTMSFNCCustomTableView* ATableView);
	__fastcall virtual ~TTMSFNCTableViewLookupBar();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property float Width = {read=FWidth, write=SetWidth, stored=IsWidthStored};
	__property TTMSFNCTableViewLookupBarPosition Position = {read=FPosition, write=SetPosition, default=1};
	__property bool Visible = {read=FVisible, write=SetVisible, default=1};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* Font = {read=FFont, write=SetFont};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* InActiveFont = {read=FInActiveFont, write=SetInActiveFont};
	__property bool AutoLookup = {read=FAutoLookup, write=SetAutoLookup, default=1};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* Fill = {read=FFill, write=SetFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* Stroke = {read=FStroke, write=SetStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* DownFill = {read=FDownFill, write=SetDownFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* DownStroke = {read=FDownStroke, write=SetDownStroke};
};

#pragma pack(pop)

enum DECLSPEC_DENUM TTMSFNCTableViewReloadProgressMode : unsigned char { tvrpmMarquee, tvrpmMarqueeAlternate, tvrpmManual };

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCTableViewReload : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	TTMSFNCCustomTableView* FTableView;
	float FOffset;
	bool FEnabled;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FStroke;
	float FSize;
	TTMSFNCTableViewReloadProgressMode FProgressMode;
	bool __fastcall IsOffsetStored();
	void __fastcall SetOffset(const float Value);
	void __fastcall SetEnabled(const bool Value);
	void __fastcall SetStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	bool __fastcall IsSizeStored();
	void __fastcall SetSize(const float Value);
	void __fastcall SetProgressMode(const TTMSFNCTableViewReloadProgressMode Value);
	
public:
	__fastcall TTMSFNCTableViewReload(TTMSFNCCustomTableView* ATableView);
	__fastcall virtual ~TTMSFNCTableViewReload();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property float Offset = {read=FOffset, write=SetOffset, stored=IsOffsetStored};
	__property bool Enabled = {read=FEnabled, write=SetEnabled, default=0};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* Stroke = {read=FStroke, write=SetStroke};
	__property float Size = {read=FSize, write=SetSize, stored=IsSizeStored};
	__property TTMSFNCTableViewReloadProgressMode ProgressMode = {read=FProgressMode, write=SetProgressMode, default=0};
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCTableViewCategory : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	TTMSFNCCustomTableView* FTableView;
	System::UnicodeString FText;
	int FID;
	System::UnicodeString FLookupText;
	void *FDataPointer;
	bool FDataBoolean;
	System::UnicodeString FDBKey;
	System::UnicodeString FDataString;
	System::TObject* FDataObject;
	NativeInt FDataInteger;
	void __fastcall SetText(const System::UnicodeString Value);
	void __fastcall SetId(const int Value);
	void __fastcall SetLookupText(const System::UnicodeString Value);
	System::UnicodeString __fastcall GetStrippedHTMLText();
	
protected:
	HIDESBASE void __fastcall Changed();
	
public:
	__fastcall virtual TTMSFNCTableViewCategory(System::Classes::TCollection* Collection);
	__fastcall virtual ~TTMSFNCTableViewCategory();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__property void * DataPointer = {read=FDataPointer, write=FDataPointer};
	__property bool DataBoolean = {read=FDataBoolean, write=FDataBoolean, nodefault};
	__property System::TObject* DataObject = {read=FDataObject, write=FDataObject};
	__property System::UnicodeString DataString = {read=FDataString, write=FDataString};
	__property NativeInt DataInteger = {read=FDataInteger, write=FDataInteger, nodefault};
	__property System::UnicodeString DBKey = {read=FDBKey, write=FDBKey};
	__property System::UnicodeString StrippedHTMLText = {read=GetStrippedHTMLText};
	
__published:
	__property System::UnicodeString Text = {read=FText, write=SetText};
	__property System::UnicodeString LookupText = {read=FLookupText, write=SetLookupText};
	__property int Id = {read=FID, write=SetId, nodefault};
};

#pragma pack(pop)

enum DECLSPEC_DENUM TTMSFNCTableViewCategoriesSortMode : unsigned char { tvcsmAscending, tvcsmDescending };

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCTableViewCategories : public Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCTableViewCategory*>
{
	typedef Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCTableViewCategory*> inherited;
	
public:
	TTMSFNCTableViewCategory* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCCustomTableView* FTableView;
	System::Classes::TNotifyEvent FOnChange;
	HIDESBASE TTMSFNCTableViewCategory* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCTableViewCategory* const Value);
	
protected:
	__property System::Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
	virtual int __fastcall Compare(TTMSFNCTableViewCategory* AItem1, TTMSFNCTableViewCategory* AItem2, bool ACaseSensitive = true, TTMSFNCTableViewCategoriesSortMode ASortingMode = (TTMSFNCTableViewCategoriesSortMode)(0x0));
	virtual void __fastcall QuickSort(int L, int R, bool ACaseSensitive = true, TTMSFNCTableViewCategoriesSortMode ASortingMode = (TTMSFNCTableViewCategoriesSortMode)(0x0));
	
public:
	__fastcall TTMSFNCTableViewCategories(TTMSFNCCustomTableView* ATableView);
	__property TTMSFNCTableViewCategory* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	TTMSFNCTableViewCategory* __fastcall ItemById(int id);
	int __fastcall ItemIndexById(int id);
	HIDESBASE TTMSFNCTableViewCategory* __fastcall Add();
	HIDESBASE TTMSFNCTableViewCategory* __fastcall Insert(int Index);
	HIDESBASE void __fastcall Delete(int Index);
	HIDESBASE void __fastcall Sort(bool ACaseSensitive = true, TTMSFNCTableViewCategoriesSortMode ASortingMode = (TTMSFNCTableViewCategoriesSortMode)(0x0));
	HIDESBASE void __fastcall Clear();
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCTableViewCategories() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCTableViewMoreOption : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	TTMSFNCCustomTableView* FTableView;
	System::UnicodeString FText;
	void *FDataPointer;
	bool FDataBoolean;
	System::UnicodeString FDBKey;
	System::UnicodeString FDataString;
	System::TObject* FDataObject;
	NativeInt FDataInteger;
	float FWidth;
	System::Uitypes::TAlphaColor FColor;
	System::Uitypes::TAlphaColor FFontColor;
	System::Uitypes::TAlphaColor FBorderColor;
	void __fastcall SetText(const System::UnicodeString Value);
	System::UnicodeString __fastcall GetStrippedHTMLText();
	bool __fastcall IsWidthStored();
	void __fastcall SetWidth(const float Value);
	void __fastcall SetColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetFontColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetBorderColor(const System::Uitypes::TAlphaColor Value);
	
protected:
	HIDESBASE void __fastcall Changed();
	
public:
	__fastcall virtual TTMSFNCTableViewMoreOption(System::Classes::TCollection* Collection);
	__fastcall virtual ~TTMSFNCTableViewMoreOption();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__property void * DataPointer = {read=FDataPointer, write=FDataPointer};
	__property bool DataBoolean = {read=FDataBoolean, write=FDataBoolean, nodefault};
	__property System::TObject* DataObject = {read=FDataObject, write=FDataObject};
	__property System::UnicodeString DataString = {read=FDataString, write=FDataString};
	__property NativeInt DataInteger = {read=FDataInteger, write=FDataInteger, nodefault};
	__property System::UnicodeString DBKey = {read=FDBKey, write=FDBKey};
	__property System::UnicodeString StrippedHTMLText = {read=GetStrippedHTMLText};
	
__published:
	__property System::UnicodeString Text = {read=FText, write=SetText};
	__property float Width = {read=FWidth, write=SetWidth, stored=IsWidthStored};
	__property System::Uitypes::TAlphaColor Color = {read=FColor, write=SetColor, default=0};
	__property System::Uitypes::TAlphaColor BorderColor = {read=FBorderColor, write=SetBorderColor, default=0};
	__property System::Uitypes::TAlphaColor FontColor = {read=FFontColor, write=SetFontColor, default=0};
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCTableViewMoreOptions : public Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCTableViewMoreOption*>
{
	typedef Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCTableViewMoreOption*> inherited;
	
public:
	TTMSFNCTableViewMoreOption* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCCustomTableView* FTableView;
	System::Classes::TNotifyEvent FOnChange;
	HIDESBASE TTMSFNCTableViewMoreOption* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCTableViewMoreOption* const Value);
	
protected:
	__property System::Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
	
public:
	__fastcall TTMSFNCTableViewMoreOptions(TTMSFNCCustomTableView* ATableView);
	__property TTMSFNCTableViewMoreOption* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	TTMSFNCTableViewMoreOption* __fastcall ItemById(int id);
	int __fastcall ItemIndexById(int id);
	HIDESBASE TTMSFNCTableViewMoreOption* __fastcall Add();
	HIDESBASE TTMSFNCTableViewMoreOption* __fastcall Insert(int Index);
	HIDESBASE void __fastcall Delete(int Index);
	HIDESBASE void __fastcall Clear();
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCTableViewMoreOptions() { }
	
};

#pragma pack(pop)

enum DECLSPEC_DENUM TTMSFNCTableViewCategoryType : unsigned char { tvctNone, tvctAlphaBetic, tvctAlphaNumericFirst, tvctAlphaNumericLast, tvctCustom };

typedef void __fastcall (__closure *TTMSFNCTableViewLookupCategoryEvent)(System::TObject* Sender, System::UnicodeString ACharacter, int ACharacterID);

typedef void __fastcall (__closure *TTMSFNCTableViewDrawItemCustomAccessoryEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCTableViewItem* AItem);

typedef void __fastcall (__closure *TTMSFNCTableViewItemMoreOptionClickEvent)(System::TObject* Sender, TTMSFNCTableViewItem* AItem, TTMSFNCTableViewMoreOption* AMoreOption);

typedef void __fastcall (__closure *TTMSFNCTableViewBeforeDrawItemMoreOptionEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCTableViewItem* AItem, TTMSFNCTableViewMoreOption* AMoreOption, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCTableViewAfterDrawItemMoreOptionEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCTableViewItem* AItem, TTMSFNCTableViewMoreOption* AMoreOption);

typedef void __fastcall (__closure *TTMSFNCTableViewBeforeItemShowDetailControl)(System::TObject* Sender, TTMSFNCTableViewItem* AItem, Fmx::Controls::TControl* ADetailControl, bool &AAllow);

typedef void __fastcall (__closure *TTMSFNCTableViewBeforeItemHideDetailControl)(System::TObject* Sender, TTMSFNCTableViewItem* AItem, Fmx::Controls::TControl* ADetailControl, bool &AAllow);

typedef void __fastcall (__closure *TTMSFNCTableViewItemShowDetailControl)(System::TObject* Sender, TTMSFNCTableViewItem* AItem, Fmx::Controls::TControl* ADetailControl);

typedef void __fastcall (__closure *TTMSFNCTableViewItemHideDetailControl)(System::TObject* Sender, TTMSFNCTableViewItem* AItem, Fmx::Controls::TControl* ADetailControl);

typedef System::DynamicArray<TTMSFNCTableViewItem*> TTMSFNCTableViewItemArray;

typedef TTMSFNCTableViewItemArray TTMSFNCTableViewCheckedItems;

typedef TTMSFNCTableViewItemArray TTMSFNCTableViewSelectedItems;

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCTableViewCustomChar : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	int FID;
	bool FActive;
	
public:
	__fastcall TTMSFNCTableViewCustomChar(int AID, bool AActive);
	__property int ID = {read=FID, write=FID, nodefault};
	__property bool Active = {read=FActive, write=FActive, nodefault};
	System::UnicodeString __fastcall ToJSON()/* overload */;
	void __fastcall FromJSON(const System::UnicodeString Value);
	__property System::UnicodeString JSON = {read=ToJSON, write=FromJSON};
	System::UnicodeString __fastcall ToJSON(Fmx::Tmsfnctypes::TTMSFNCObjectExcludePropertyListArray AExcludedProperties)/* overload */;
	void __fastcall Log();
	void __fastcall SaveToJSONFile(const System::UnicodeString AFileName);
	void __fastcall LoadFromJSONFile(const System::UnicodeString AFileName);
	void __fastcall SaveToJSONStream(System::Classes::TStream* const AStream);
	void __fastcall LoadFromJSONStream(System::Classes::TStream* const AStream);
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TTMSFNCTableViewCustomChar() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCTableViewCustomCharList : public System::Generics::Collections::TObjectList__1<TTMSFNCTableViewCustomChar*>
{
	typedef System::Generics::Collections::TObjectList__1<TTMSFNCTableViewCustomChar*> inherited;
	
public:
	void __fastcall ActivateID(int AID);
	bool __fastcall IsIDActive(int AID);
public:
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCTableView_TTMSFNCTableViewCustomChar>.Create */ inline __fastcall TTMSFNCTableViewCustomCharList()/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCTableViewCustomChar*>() { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCTableView_TTMSFNCTableViewCustomChar>.Create */ inline __fastcall TTMSFNCTableViewCustomCharList(bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCTableViewCustomChar*>(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCTableView_TTMSFNCTableViewCustomChar>.Create */ inline __fastcall TTMSFNCTableViewCustomCharList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCTableViewCustomChar*> > AComparer, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCTableViewCustomChar*>(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCTableView_TTMSFNCTableViewCustomChar>.Create */ inline __fastcall TTMSFNCTableViewCustomCharList(System::Generics::Collections::TEnumerable__1<TTMSFNCTableViewCustomChar*>* const Collection, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCTableViewCustomChar*>(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCTableView_TTMSFNCTableViewCustomChar>.Destroy */ inline __fastcall virtual ~TTMSFNCTableViewCustomCharList() { }
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCTableView_TTMSFNCTableViewCustomChar>.Create */ inline __fastcall TTMSFNCTableViewCustomCharList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCTableViewCustomChar*> > AComparer)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCTableViewCustomChar*>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTableView_TTMSFNCTableViewCustomChar>.Create */ inline __fastcall TTMSFNCTableViewCustomCharList(System::Generics::Collections::TEnumerable__1<TTMSFNCTableViewCustomChar*>* const Collection)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCTableViewCustomChar*>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTableView_TTMSFNCTableViewCustomChar>.Create */ inline __fastcall TTMSFNCTableViewCustomCharList(TTMSFNCTableViewCustomChar* const *Values, const int Values_High)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCTableViewCustomChar*>(Values, Values_High) { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCTableViewEdit : public Fmx::Tmsfncedit::TTMSFNCEdit
{
	typedef Fmx::Tmsfncedit::TTMSFNCEdit inherited;
	
private:
	TTMSFNCCustomTableView* FTableView;
	
protected:
	virtual void __fastcall KeyDown(System::Word &Key, System::WideChar &KeyChar, System::Classes::TShiftState Shift);
public:
	/* TTMSFNCEdit.Create */ inline __fastcall virtual TTMSFNCTableViewEdit(System::Classes::TComponent* AOwner)/* overload */ : Fmx::Tmsfncedit::TTMSFNCEdit(AOwner) { }
	/* TTMSFNCEdit.Destroy */ inline __fastcall virtual ~TTMSFNCTableViewEdit() { }
	
};

#pragma pack(pop)

class PASCALIMPLEMENTATION TTMSFNCCustomTableView : public Fmx::Tmsfnccustomcontrol::TTMSFNCCustomControl
{
	typedef Fmx::Tmsfnccustomcontrol::TTMSFNCCustomControl inherited;
	
private:
	bool FFirstLoad;
	bool FFilterActive;
	bool FEditMode;
	Fmx::Tmsfnctoolbar::TTMSFNCToolBarButton* FDoneButton;
	Fmx::Tmsfnctoolbar::TTMSFNCToolBarButton* FEditButton;
	Fmx::Tmsfnctoolbar::TTMSFNCToolBarButton* FBackButton;
	Fmx::Tmsfnctoolbar::TTMSFNCToolBarButton* FFilterButton;
	TTMSFNCTableViewEdit* FEdit;
	TTMSFNCTableViewItem* FActiveAccessoryItem;
	Fmx::Types::TTimer* FDetailControlTimer;
	double FDetailControlOffset;
	bool FShowDetailControl;
	Fmx::Controls::TControl* FActiveDetailControl;
	TTMSFNCTableViewItem* FActiveDetailItem;
	TTMSFNCTableViewCustomCharList* FCustomChar;
	TTMSFNCTableViewLookupBarDisplayList* FLookupBarDisplayList;
	bool FFilterApplied;
	int FUpdateCount;
	TTMSFNCTableViewDisplayList* FDisplayList;
	TTMSFNCTableViewDisplayList* FCategoryList;
	int FSaveSelectedItem;
	TTMSFNCTableViewIntegerArray FSaveSelectedItems;
	TTMSFNCTableViewCopyItems* FCopyItems;
	bool FAccepted;
	TTMSFNCTableViewItems* FItems;
	TTMSFNCTreeViewTableView* FTreeView;
	Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewColumn* FColumn;
	TTMSFNCTableViewItem* FDefaultItem;
	TTMSFNCTableViewItemAppearance* FItemAppearance;
	TTMSFNCTableViewItemSelectedEvent FOnItemSelected;
	TTMSFNCTableViewInteraction* FInteraction;
	TTMSFNCTableViewHeader* FHeader;
	TTMSFNCTableViewFooter* FFooter;
	TTMSFNCTableViewItemAnchorClickEvent FOnItemAnchorClick;
	TTMSFNCTableViewAfterCutToClipboardEvent FOnAfterCutToClipboard;
	TTMSFNCTableViewBeforePasteFromClipboardEvent FOnBeforePasteFromClipboard;
	TTMSFNCTableViewAfterReorderItemEvent FOnAfterReorderItem;
	TTMSFNCTableViewBeforeDropItemEvent FOnBeforeDropItem;
	TTMSFNCTableViewBeforeDrawItemTextEvent FOnBeforeDrawItemText;
	TTMSFNCTableViewScrollEvent FOnVScroll;
	TTMSFNCTableViewBeforeCopyToClipboardEvent FOnBeforeCopyToClipboard;
	TTMSFNCTableViewItemClickEvent FOnItemDblClick;
	TTMSFNCTableViewBeforeDrawItemCheckEvent FOnBeforeDrawItemCheck;
	TTMSFNCTableViewAfterDrawItemIconEvent FOnAfterDrawItemIcon;
	TTMSFNCTableViewBeforeDrawItemEvent FOnBeforeDrawItem;
	TTMSFNCTableViewAfterPasteFromClipboardEvent FOnAfterPasteFromClipboard;
	TTMSFNCTableViewItemClickEvent FOnItemClick;
	TTMSFNCTableViewAfterDropItemEvent FOnAfterDropItem;
	TTMSFNCTableViewAfterDrawItemTextEvent FOnAfterDrawItemText;
	TTMSFNCTableViewItemCompareEvent FOnItemCompare;
	TTMSFNCTableViewBeforeCutToClipboardEvent FOnBeforeCutToClipboard;
	TTMSFNCTableViewBeforeReorderItemEvent FOnBeforeReorderItem;
	TTMSFNCTableViewNeedFilterDropDownDataEvent FOnNeedFilterDropDownData;
	TTMSFNCTableViewAfterCopyToClipboardEvent FOnAfterCopyToClipboard;
	TTMSFNCTableViewFilterSelectEvent FOnFilterSelect;
	TTMSFNCTableViewAfterDrawItemCheckEvent FOnAfterDrawItemCheck;
	TTMSFNCTableViewAfterDrawItemEvent FOnAfterDrawItem;
	TTMSFNCTableViewBeforeDrawItemIconEvent FOnBeforeDrawItemIcon;
	TTMSFNCTableViewFilter* FFilter;
	TTMSFNCTableViewBeforeDrawSortIndicatorEvent FOnBeforeDrawSortIndicator;
	TTMSFNCTableViewAfterDrawSortIndicatorEvent FOnAfterDrawSortIndicator;
	TTMSFNCTableViewGetHTMLTemplateValueEvent FOnGetHTMLTemplateValue;
	TTMSFNCTableViewGetHTMLTemplateEvent FOnGetHTMLTemplate;
	TTMSFNCTableViewCategoryType FCategoryType;
	TTMSFNCTableViewCategories* FCategories;
	TTMSFNCTableViewCategoryCompareEvent FOnCategoryCompare;
	TTMSFNCTableViewLookupBar* FLookupBar;
	TTMSFNCTableViewLookupCategoryEvent FOnManualLookupCategory;
	TTMSFNCTableViewLookupCategoryEvent FOnCategoryClick;
	TTMSFNCTableViewReload* FReload;
	System::Classes::TNotifyEvent FOnStopReload;
	System::Classes::TNotifyEvent FOnStartReload;
	TTMSFNCTableViewDrawItemCustomAccessoryEvent FOnDrawItemCustomAccessory;
	TTMSFNCTableViewItemClickEvent FOnItemAccessoryClick;
	TTMSFNCTableViewCategoryAppearance* FCategoryAppearance;
	TTMSFNCTableViewItemCheckChangedEvent FOnItemCheckChanged;
	TTMSFNCTableViewAfterApplyFilterEvent FOnAfterApplyFilter;
	TTMSFNCTableViewBeforeApplyFilterEvent FOnBeforeApplyFilter;
	TTMSFNCTableViewMoreOptions* FMoreOptions;
	TTMSFNCTableViewMoreOptionAppearance* FMoreOptionAppearance;
	TTMSFNCTableViewItemMoreOptionClickEvent FOnItemMoreOptionClick;
	TTMSFNCTableViewAfterDrawItemMoreOptionEvent FOnAfterDrawItemMoreOption;
	TTMSFNCTableViewBeforeDrawItemMoreOptionEvent FOnBeforeDrawItemMoreOption;
	TTMSFNCTableViewItemShowDetailControl FOnItemShowDetailControl;
	TTMSFNCTableViewItemHideDetailControl FOnItemHideDetailControl;
	TTMSFNCTableViewBeforeItemShowDetailControl FOnBeforeItemShowDetailControl;
	TTMSFNCTableViewBeforeItemHideDetailControl FOnBeforeItemHideDetailControl;
	System::Classes::TNotifyEvent FOnItemSelectionChanged;
	TTMSFNCTableViewItemUnSelectedEvent FOnItemUnSelected;
	TTMSFNCTableViewAfterDrawItemTitleEvent FOnAfterDrawItemTitle;
	TTMSFNCTableViewBeforeDrawItemTitleEvent FOnBeforeDrawItemTitle;
	TTMSFNCTableViewItemMouseLeaveEvent FOnItemMouseLeave;
	TTMSFNCTableViewItemMouseEnterEvent FOnItemMouseEnter;
	TTMSFNCTableViewAnchorHeaderFooterClick FOnFooterAnchorClick;
	TTMSFNCTableViewAnchorHeaderFooterClick FOnHeaderAnchorClick;
	TTMSFNCTableViewItemAnchorClickEvent FOnItemTitleAnchorClick;
	Fmx::Tmsfncgraphicstypes::TTMSFNCAppearanceGlobalFont* FGlobalFont;
	void __fastcall SetItems(TTMSFNCTableViewItems* const Value);
	void __fastcall SetDefaultItem(TTMSFNCTableViewItem* const Value);
	void __fastcall SetItemAppearance(TTMSFNCTableViewItemAppearance* const Value);
	int __fastcall GetItemIndex();
	void __fastcall SetItemIndex(const int Value);
	void __fastcall SetInteraction(TTMSFNCTableViewInteraction* const Value);
	Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* __fastcall GetBitmapContainer();
	void __fastcall SetBitmapContainer(Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* const Value);
	void __fastcall SetHeader(TTMSFNCTableViewHeader* const Value);
	void __fastcall SetFooter(TTMSFNCTableViewFooter* const Value);
	TTMSFNCTableViewItem* __fastcall GetSelectedItem();
	void __fastcall SetSelectedItem(TTMSFNCTableViewItem* const Value);
	TTMSFNCTableViewItem* __fastcall GetSelItem(int AIndex);
	bool __fastcall GetVerticalScrollBarVisible();
	void __fastcall SetVerticalScrollBarVisible(const bool Value);
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* __fastcall GetFill();
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* __fastcall GetStroke();
	HIDESBASE void __fastcall SetFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	HIDESBASE void __fastcall SetStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetCategoryType(const TTMSFNCTableViewCategoryType Value);
	void __fastcall SetCategories(TTMSFNCTableViewCategories* const Value);
	void __fastcall SetLookupBar(TTMSFNCTableViewLookupBar* const Value);
	void __fastcall SetReload(TTMSFNCTableViewReload* const Value);
	void __fastcall SetCategoryAppearance(TTMSFNCTableViewCategoryAppearance* const Value);
	bool __fastcall GetChecked(int AItemIndex);
	bool __fastcall GetCheckedItem(TTMSFNCTableViewItem* AItem);
	void __fastcall SetChecked(int AItemIndex, const bool Value);
	void __fastcall SetCheckedItem(TTMSFNCTableViewItem* AItem, const bool Value);
	void __fastcall SetMoreOptions(TTMSFNCTableViewMoreOptions* const Value);
	void __fastcall SetMoreOptionAppearance(TTMSFNCTableViewMoreOptionAppearance* const Value);
	void __fastcall SetGlobalFont(Fmx::Tmsfncgraphicstypes::TTMSFNCAppearanceGlobalFont* const Value);
	
protected:
	Fmx::Tmsfncstyles::TTMSFNCStylesManagerComponentArray __fastcall GetSubComponentArray();
	virtual System::UnicodeString __fastcall GetDocURL();
	virtual System::UnicodeString __fastcall GetVersion();
	virtual System::Types::TRectF __fastcall GetItemsRect();
	virtual TTMSFNCTreeViewTableView* __fastcall CreateTreeView();
	virtual TTMSFNCTableViewItems* __fastcall CreateItems();
	virtual int __fastcall GetRowForItemIndex(int AItemIndex);
	virtual int __fastcall GetDisplayCategoryIndex(int AIndex);
	virtual int __fastcall GetDisplayItemIndex(int AIndex);
	virtual int __fastcall GetNextDisplayCategoryIndex(int AIndex);
	virtual int __fastcall GetItemIndexForNode(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode);
	virtual TTMSFNCTableViewItem* __fastcall GetItemForNode(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode);
	virtual Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* __fastcall GetNodeForItemIndex(int AItemIndex);
	System::UnicodeString __fastcall HTMLReplace(System::UnicodeString AValue, TTMSFNCTableViewItem* AItem);
	virtual bool __fastcall ItemFromDifferentCategory(TTMSFNCTableViewItem* AItem1, TTMSFNCTableViewItem* AItem2);
	virtual bool __fastcall MatchFilter(TTMSFNCTableViewItem* AItem);
	virtual System::UnicodeString __fastcall GetCharacterForItem(TTMSFNCTableViewItem* AItem);
	virtual System::UnicodeString __fastcall GetCharacter(int Idx);
	virtual int __fastcall GetCharacterCount();
	TTMSFNCTableViewDisplayItem __fastcall FindCategoryWithCharacter(System::UnicodeString ACategory);
	TTMSFNCTableViewDisplayItem __fastcall FindCategoryWithCharacterID(int ACategoryID);
	virtual TTMSFNCTableViewItem* __fastcall FindFirstItemWithCategory(System::UnicodeString ACategory);
	virtual TTMSFNCTableViewItem* __fastcall FindFirstItemWithCategoryID(int ACategoryID);
	virtual float __fastcall GetMoreOptionsSize();
	virtual bool __fastcall IsAppearanceProperty(System::TObject* AObject, System::UnicodeString APropertyName, System::TTypeKind APropertyType);
	virtual void __fastcall ChangeDPIScale(int M, int D);
	virtual void __fastcall DoEnter();
	virtual void __fastcall Loaded();
	virtual void __fastcall DoItemMoreOptionClick(TTMSFNCTableViewItem* AItem, TTMSFNCTableViewMoreOption* AMoreOption);
	virtual void __fastcall DoFilterButtonClicked(System::TObject* Sender);
	virtual void __fastcall DoEditButtonClicked(System::TObject* Sender);
	virtual void __fastcall DoEditChange(System::TObject* Sender);
	virtual void __fastcall DoBeforeApplyFilter(TTMSFNCTableViewFilterData* AFilter, bool AAllow);
	virtual void __fastcall DoAfterApplyFilter(TTMSFNCTableViewFilterData* AFilter);
	virtual void __fastcall DoDoneButtonClicked(System::TObject* Sender);
	virtual void __fastcall DoBackButtonClicked(System::TObject* Sender);
	virtual void __fastcall DoItemAccessoryClick(TTMSFNCTableViewItem* AItem);
	void __fastcall DoDetailControlTimer(System::TObject* Sender);
	virtual void __fastcall DoItemShowDetailControl(TTMSFNCTableViewItem* AItem, Fmx::Controls::TControl* ADetailControl);
	virtual void __fastcall DoItemHideDetailControl(TTMSFNCTableViewItem* AItem, Fmx::Controls::TControl* ADetailControl);
	virtual void __fastcall DoBeforeItemShowDetailControl(TTMSFNCTableViewItem* AItem, Fmx::Controls::TControl* ADetailControl, bool &AAllow);
	virtual void __fastcall DoBeforeItemHideDetailControl(TTMSFNCTableViewItem* AItem, Fmx::Controls::TControl* ADetailControl, bool &AAllow);
	virtual void __fastcall Notification(System::Classes::TComponent* AComponent, System::Classes::TOperation Operation);
	virtual void __fastcall DoStartReload();
	virtual void __fastcall DoStopReload();
	virtual void __fastcall ScrollToCategoryId(int ACategoryID);
	virtual void __fastcall ScrollToCategoryCharacter(System::UnicodeString ACharacter);
	virtual void __fastcall RegisterRuntimeClasses();
	virtual void __fastcall ApplyStyle();
	virtual void __fastcall UpdateControlAfterResize();
	virtual void __fastcall ResetToDefaultStyle();
	virtual void __fastcall SetAdaptToStyle(const bool Value);
	virtual void __fastcall UpdateTableView(bool ADisplayOnly = false);
	virtual void __fastcall CustomizeButtons();
	virtual void __fastcall SelectAllCheckedItems();
	virtual void __fastcall UnSelectAllItems();
	virtual void __fastcall CalculateItems();
	virtual void __fastcall CalculateLookupBar();
	virtual void __fastcall AddDisplayCategory(TTMSFNCTableViewItem* AItem);
	virtual void __fastcall AddDisplayItem(TTMSFNCTableViewItem* AItem);
	void __fastcall DoClick(System::TObject* Sender);
	virtual void __fastcall DoGetNodeHeight(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, double &AHeight);
	virtual void __fastcall DoGetNodeIcon(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, bool ALarge, Fmx::Tmsfnctypes::TTMSFNCBitmap* &AIcon);
	virtual void __fastcall DoGetNodeSides(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsSides &ASides);
	virtual void __fastcall DoGetColumnText(System::TObject* Sender, int AColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItemKind AKind, System::UnicodeString &AText);
	virtual void __fastcall DoGetColumnTrimming(System::TObject* Sender, int AColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItemKind AKind, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextTrimming &ATrimming);
	virtual void __fastcall DoGetColumnWordWrapping(System::TObject* Sender, int AColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItemKind AKind, bool &AWordWrapping);
	virtual void __fastcall DoGetColumnHorizontalTextAlign(System::TObject* Sender, int AColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItemKind AKind, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign &AHorizontalTextAlign);
	virtual void __fastcall DoGetColumnVerticalTextAlign(System::TObject* Sender, int AColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItemKind AKind, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign &AVerticalTextAlign);
	virtual void __fastcall DoIsNodeChecked(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, bool &AIsChecked);
	virtual void __fastcall DoGetNodeCheckType(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNodeCheckType &ACheckType);
	virtual void __fastcall DoAfterCheckNode(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn);
	virtual void __fastcall DoAfterUnCheckNode(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn);
	virtual void __fastcall DoItemCheckChanged(TTMSFNCTableViewItem* AItem);
	virtual void __fastcall DoGetNumberOfNodes(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int &ANumberOfNodes);
	virtual void __fastcall DoGetHTMLTemplateValue(TTMSFNCTableViewItem* AItem, System::UnicodeString AName, System::UnicodeString &AValue);
	virtual void __fastcall DoGetHTMLTemplate(TTMSFNCTableViewItem* AItem, System::UnicodeString &AHTMLTemplate);
	virtual void __fastcall DoIsNodeExtended(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, bool &AExtended);
	virtual void __fastcall DoGetNodeText(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNodeTextMode AMode, System::UnicodeString &AText);
	virtual void __fastcall DoGetNodeTitle(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNodeTextMode AMode, System::UnicodeString &ATitle);
	virtual void __fastcall DoGetNodeTitleExpanded(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, bool &AExpanded);
	virtual void __fastcall DoGetNodeTrimming(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextTrimming &ATrimming);
	virtual void __fastcall DoGetNodeTitleTrimming(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextTrimming &ATrimming);
	virtual void __fastcall DrawBadge(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCTableViewItem* AItem);
	virtual void __fastcall DoDrawNodeExtra(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode);
	virtual void __fastcall DoDrawItemCustomAccessory(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCTableViewItem* AItem);
	virtual void __fastcall DoBeforeDrawItemMoreOption(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCTableViewItem* AItem, TTMSFNCTableViewMoreOption* AMoreOption, bool &ADefaultDraw);
	virtual void __fastcall DoAfterDrawItemMoreOption(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCTableViewItem* AItem, TTMSFNCTableViewMoreOption* AMoreOption);
	virtual void __fastcall DoGetNodeWordWrapping(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, bool &AWordWrapping);
	virtual void __fastcall DoGetNodeTitleWordWrapping(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, bool &AWordWrapping);
	virtual void __fastcall DoGetNodeExtraSize(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, float &AExtraSize);
	virtual void __fastcall DoGetNodeTitleHorizontalTextAlign(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign &AHorizontalTextAlign);
	virtual void __fastcall DoGetNodeTitleVerticalTextAlign(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign &AVerticalTextAlign);
	virtual void __fastcall DoGetNodeHorizontalTextAlign(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign &AHorizontalTextAlign);
	virtual void __fastcall DoGetNodeVerticalTextAlign(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign &AVerticalTextAlign);
	virtual void __fastcall DoGetNodeTextColor(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, System::Uitypes::TAlphaColor &ATextColor);
	virtual void __fastcall DoGetNodeSelectedTextColor(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, System::Uitypes::TAlphaColor &ASelectedTextColor);
	virtual void __fastcall DoGetNodeDisabledTextColor(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, System::Uitypes::TAlphaColor &ADisabledTextColor);
	virtual void __fastcall DoGetNodeTitleColor(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, System::Uitypes::TAlphaColor &ATitleColor);
	virtual void __fastcall DoGetNodeSelectedTitleColor(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, System::Uitypes::TAlphaColor &ASelectedTitleColor);
	virtual void __fastcall DoGetNodeDisabledTitleColor(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, System::Uitypes::TAlphaColor &ADisabledTitleColor);
	virtual void __fastcall DoIsNodeEnabled(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, bool &AEnabled);
	virtual void __fastcall DoAfterSelectNode(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode);
	virtual void __fastcall DoAfterUnSelectNode(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode);
	virtual void __fastcall DoNeedFilterDropDownData(System::TObject* Sender, int AColumn, System::Classes::TStrings* AValues);
	virtual void __fastcall DoFilterSelect(System::TObject* Sender, int AColumn, System::UnicodeString &ACondition);
	virtual void __fastcall DoBeforeDrawSortIndicator(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AColumn, int ASortIndex, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNodesSortKind ASortKind, bool &ADefaultDraw);
	virtual void __fastcall DoAfterDrawSortIndicator(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AColumn, int ASortIndex, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNodesSortKind ASortKind);
	virtual void __fastcall DoBeforeDrawNode(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoAfterDrawNode(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode);
	virtual void __fastcall DoItemCompare(TTMSFNCTableViewItem* AItem1, TTMSFNCTableViewItem* AItem2, int &ACompareResult);
	virtual void __fastcall DoCategoryCompare(TTMSFNCTableViewCategory* ACategory1, TTMSFNCTableViewCategory* ACategory2, int &ACompareResult);
	virtual void __fastcall DoBeforeDrawNodeText(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, System::UnicodeString AText, bool &AAllow);
	virtual void __fastcall DoAfterDrawNodeText(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, System::UnicodeString AText);
	virtual void __fastcall DoBeforeDrawNodeTitle(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, System::UnicodeString ATitle, bool &AAllow);
	virtual void __fastcall DoAfterDrawNodeTitle(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, System::UnicodeString ATitle);
	virtual void __fastcall DoBeforeDrawNodeIcon(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, Fmx::Tmsfnctypes::TTMSFNCBitmap* AIcon, bool &AAllow);
	virtual void __fastcall DoAfterDrawNodeIcon(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, Fmx::Tmsfnctypes::TTMSFNCBitmap* AIcon);
	virtual void __fastcall DoBeforeDrawNodeCheck(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, Fmx::Tmsfnctypes::TTMSFNCBitmap* ACheck, bool &AAllow);
	virtual void __fastcall DoAfterDrawNodeCheck(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, Fmx::Tmsfnctypes::TTMSFNCBitmap* ACheck);
	virtual void __fastcall DoNodeAnchorClick(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, System::UnicodeString AAnchor);
	virtual void __fastcall DoNodeTitleAnchorClick(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, System::UnicodeString AAnchor);
	virtual void __fastcall DoNodeClick(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode);
	virtual void __fastcall DoNodeMouseLeave(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode);
	virtual void __fastcall DoNodeMouseEnter(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode);
	virtual void __fastcall DoNodeDblClick(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode);
	virtual void __fastcall DoVScroll(System::TObject* Sender, float APosition);
	virtual void __fastcall DoBeforeCutToClipboard(System::TObject* Sender, bool &ACanCut);
	virtual void __fastcall DoBeforeCopyToClipboard(System::TObject* Sender, bool &ACanCopy);
	virtual void __fastcall DoBeforePasteFromClipboard(System::TObject* Sender, bool &ACanPaste);
	virtual void __fastcall DoAfterCutToClipboard(System::TObject* Sender);
	virtual void __fastcall DoAfterCopyToClipboard(System::TObject* Sender);
	virtual void __fastcall DoAfterPasteFromClipboard(System::TObject* Sender);
	virtual void __fastcall DoBeforeReorderItem(TTMSFNCTableViewItem* AFromItem, TTMSFNCTableViewItem* AToItem, bool &ACanReorder);
	virtual void __fastcall DoAfterReorderItem(TTMSFNCTableViewItem* AFromItem, TTMSFNCTableViewItem* AToItem);
	virtual void __fastcall DoBeforeDropItem(TTMSFNCTableViewItem* AFromItem, TTMSFNCTableViewItem* AToItem, bool &ACanDrop);
	virtual void __fastcall DoAfterDropItem(TTMSFNCTableViewItem* AFromItem, TTMSFNCTableViewItem* AToItem);
	virtual void __fastcall CustomizeTreeView(Fmx::Tmsfnctreeview::TTMSFNCTreeView* ATreeView);
	virtual void __fastcall DoCustomDragOver(System::TObject* Sender, System::TObject* Source, const System::Types::TPointF &Point, bool &Accept);
	virtual void __fastcall DoCustomDragDrop(System::TObject* Sender, System::TObject* Source, const System::Types::TPointF &Point);
	virtual void __fastcall DragItemMove(TTMSFNCTableViewItem* AFromItem, TTMSFNCTableViewItem* AToItem);
	virtual void __fastcall DragItemAdd(TTMSFNCTableViewItem* ANewItem, TTMSFNCTableViewItem* AAssignItem, TTMSFNCTableViewItem* AInsertItem);
	virtual void __fastcall DragItemDelete(TTMSFNCTableViewItem* AItem);
	virtual void __fastcall DoCustomReorder(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* AFromNode, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* AToNode);
	virtual void __fastcall DoCopyToClipboard(System::TObject* Sender);
	virtual void __fastcall DoCutToClipboard(System::TObject* Sender);
	virtual void __fastcall DoPasteFromClipboard(System::TObject* Sender);
	virtual void __fastcall DoColumnSort(System::TObject* Sender, int AColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNodesSortMode ASortMode);
	virtual void __fastcall DoLookup(System::TObject* Sender, System::UnicodeString ALookupString);
	virtual void __fastcall UpdateActiveDetailControl();
	void __fastcall DoFooterAnchorClick(System::TObject* Sender, System::UnicodeString AAnchor);
	void __fastcall DoHeaderAnchorClick(System::TObject* Sender, System::UnicodeString AAnchor);
	virtual System::UnicodeString __fastcall PickerGetContent();
	virtual void __fastcall PickerSelectItem(int AItemIndex);
	virtual int __fastcall PickerGetSelectedItem();
	virtual int __fastcall PickerGetVisibleItemCount();
	virtual int __fastcall PickerGetItemCount();
	virtual float __fastcall PickerGetItemHeight();
	virtual void __fastcall PickerSetItemHeight(float AValue);
	virtual float __fastcall PickerGetItemWidth();
	virtual void __fastcall PickerSetItemWidth(float AValue);
	virtual int __fastcall PickerGetNextSelectableItem(int AItemIndex);
	virtual int __fastcall PickerGetPreviousSelectableItem(int AItemIndex);
	virtual int __fastcall PickerGetFirstSelectableItem();
	virtual int __fastcall PickerGetLastSelectableItem();
	virtual void __fastcall PickerResetFilter();
	virtual void __fastcall PickerApplyFilter(System::UnicodeString ACondition, bool ACaseSensitive);
	virtual Fmx::Tmsfnccontrolpicker::TTMSFNCControlPickerFilterItem __fastcall PickerLookupItem(System::UnicodeString ALookupString, bool ACaseSensitive);
	virtual void __fastcall SetFonts(Fmx::Tmsfncgraphicstypes::TTMSFNCAppearanceGlobalFontType ASetType);
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* Fill = {read=GetFill, write=SetFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* Stroke = {read=GetStroke, write=SetStroke};
	__property System::UnicodeString Version = {read=GetVersion};
	__property TTMSFNCTreeViewTableView* TreeView = {read=FTreeView};
	__property Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* BitmapContainer = {read=GetBitmapContainer, write=SetBitmapContainer};
	__property TTMSFNCTableViewItems* Items = {read=FItems, write=SetItems};
	__property TTMSFNCTableViewItem* DefaultItem = {read=FDefaultItem, write=SetDefaultItem};
	__property TTMSFNCTableViewItemAppearance* ItemAppearance = {read=FItemAppearance, write=SetItemAppearance};
	__property TTMSFNCTableViewCategoryAppearance* CategoryAppearance = {read=FCategoryAppearance, write=SetCategoryAppearance};
	__property TTMSFNCTableViewMoreOptionAppearance* MoreOptionAppearance = {read=FMoreOptionAppearance, write=SetMoreOptionAppearance};
	__property TTMSFNCTableViewInteraction* Interaction = {read=FInteraction, write=SetInteraction};
	__property int ItemIndex = {read=GetItemIndex, write=SetItemIndex, default=-1};
	__property TTMSFNCTableViewLookupBar* LookupBar = {read=FLookupBar, write=SetLookupBar};
	__property TTMSFNCTableViewReload* Reload = {read=FReload, write=SetReload};
	__property TTMSFNCTableViewCategories* Categories = {read=FCategories, write=SetCategories};
	__property TTMSFNCTableViewMoreOptions* MoreOptions = {read=FMoreOptions, write=SetMoreOptions};
	__property TTMSFNCTableViewCategoryType CategoryType = {read=FCategoryType, write=SetCategoryType, default=0};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCAppearanceGlobalFont* GlobalFont = {read=FGlobalFont, write=SetGlobalFont};
	__property TTMSFNCTableViewItemSelectedEvent OnItemSelected = {read=FOnItemSelected, write=FOnItemSelected};
	__property TTMSFNCTableViewItemUnSelectedEvent OnItemUnSelected = {read=FOnItemUnSelected, write=FOnItemUnSelected};
	__property System::Classes::TNotifyEvent OnItemSelectionChanged = {read=FOnItemSelectionChanged, write=FOnItemSelectionChanged};
	__property TTMSFNCTableViewHeader* Header = {read=FHeader, write=SetHeader};
	__property TTMSFNCTableViewFooter* Footer = {read=FFooter, write=SetFooter};
	__property bool VerticalScrollBarVisible = {read=GetVerticalScrollBarVisible, write=SetVerticalScrollBarVisible, default=0};
	__property TTMSFNCTableViewNeedFilterDropDownDataEvent OnNeedFilterDropDownData = {read=FOnNeedFilterDropDownData, write=FOnNeedFilterDropDownData};
	__property TTMSFNCTableViewFilterSelectEvent OnFilterSelect = {read=FOnFilterSelect, write=FOnFilterSelect};
	__property TTMSFNCTableViewBeforeDrawItemEvent OnBeforeDrawItem = {read=FOnBeforeDrawItem, write=FOnBeforeDrawItem};
	__property TTMSFNCTableViewAfterDrawItemEvent OnAfterDrawItem = {read=FOnAfterDrawItem, write=FOnAfterDrawItem};
	__property TTMSFNCTableViewBeforeDrawItemMoreOptionEvent OnBeforeDrawItemMoreOption = {read=FOnBeforeDrawItemMoreOption, write=FOnBeforeDrawItemMoreOption};
	__property TTMSFNCTableViewAfterDrawItemMoreOptionEvent OnAfterDrawItemMoreOption = {read=FOnAfterDrawItemMoreOption, write=FOnAfterDrawItemMoreOption};
	__property TTMSFNCTableViewItemCompareEvent OnItemCompare = {read=FOnItemCompare, write=FOnItemCompare};
	__property TTMSFNCTableViewCategoryCompareEvent OnCategoryCompare = {read=FOnCategoryCompare, write=FOnCategoryCompare};
	__property TTMSFNCTableViewAfterDrawItemIconEvent OnAfterDrawItemIcon = {read=FOnAfterDrawItemIcon, write=FOnAfterDrawItemIcon};
	__property TTMSFNCTableViewBeforeDrawItemIconEvent OnBeforeDrawItemIcon = {read=FOnBeforeDrawItemIcon, write=FOnBeforeDrawItemIcon};
	__property TTMSFNCTableViewAfterDrawItemCheckEvent OnAfterDrawItemCheck = {read=FOnAfterDrawItemCheck, write=FOnAfterDrawItemCheck};
	__property TTMSFNCTableViewBeforeDrawItemCheckEvent OnBeforeDrawItemCheck = {read=FOnBeforeDrawItemCheck, write=FOnBeforeDrawItemCheck};
	__property TTMSFNCTableViewBeforeDrawItemTextEvent OnBeforeDrawItemText = {read=FOnBeforeDrawItemText, write=FOnBeforeDrawItemText};
	__property TTMSFNCTableViewAfterDrawItemTextEvent OnAfterDrawItemText = {read=FOnAfterDrawItemText, write=FOnAfterDrawItemText};
	__property TTMSFNCTableViewBeforeDrawItemTitleEvent OnBeforeDrawItemTitle = {read=FOnBeforeDrawItemTitle, write=FOnBeforeDrawItemTitle};
	__property TTMSFNCTableViewAfterDrawItemTitleEvent OnAfterDrawItemTitle = {read=FOnAfterDrawItemTitle, write=FOnAfterDrawItemTitle};
	__property TTMSFNCTableViewAfterDrawSortIndicatorEvent OnAfterDrawSortIndicator = {read=FOnAfterDrawSortIndicator, write=FOnAfterDrawSortIndicator};
	__property TTMSFNCTableViewBeforeDrawSortIndicatorEvent OnBeforeDrawSortIndicator = {read=FOnBeforeDrawSortIndicator, write=FOnBeforeDrawSortIndicator};
	__property TTMSFNCTableViewItemAnchorClickEvent OnItemAnchorClick = {read=FOnItemAnchorClick, write=FOnItemAnchorClick};
	__property TTMSFNCTableViewItemAnchorClickEvent OnItemTitleAnchorClick = {read=FOnItemTitleAnchorClick, write=FOnItemTitleAnchorClick};
	__property TTMSFNCTableViewItemClickEvent OnItemClick = {read=FOnItemClick, write=FOnItemClick};
	__property TTMSFNCTableViewItemMouseLeaveEvent OnItemMouseLeave = {read=FOnItemMouseLeave, write=FOnItemMouseLeave};
	__property TTMSFNCTableViewItemMouseEnterEvent OnItemMouseEnter = {read=FOnItemMouseEnter, write=FOnItemMouseEnter};
	__property TTMSFNCTableViewItemClickEvent OnItemDblClick = {read=FOnItemDblClick, write=FOnItemDblClick};
	__property TTMSFNCTableViewScrollEvent OnVScroll = {read=FOnVScroll, write=FOnVScroll};
	__property TTMSFNCTableViewBeforeReorderItemEvent OnBeforeReorderItem = {read=FOnBeforeReorderItem, write=FOnBeforeReorderItem};
	__property TTMSFNCTableViewAfterReorderItemEvent OnAfterReorderItem = {read=FOnAfterReorderItem, write=FOnAfterReorderItem};
	__property TTMSFNCTableViewBeforeDropItemEvent OnBeforeDropItem = {read=FOnBeforeDropItem, write=FOnBeforeDropItem};
	__property TTMSFNCTableViewAfterDropItemEvent OnAfterDropItem = {read=FOnAfterDropItem, write=FOnAfterDropItem};
	__property TTMSFNCTableViewBeforeCutToClipboardEvent OnBeforeCutToClipboard = {read=FOnBeforeCutToClipboard, write=FOnBeforeCutToClipboard};
	__property TTMSFNCTableViewBeforeCopyToClipboardEvent OnBeforeCopyToClipboard = {read=FOnBeforeCopyToClipboard, write=FOnBeforeCopyToClipboard};
	__property TTMSFNCTableViewBeforePasteFromClipboardEvent OnBeforePasteFromClipboard = {read=FOnBeforePasteFromClipboard, write=FOnBeforePasteFromClipboard};
	__property TTMSFNCTableViewAfterCutToClipboardEvent OnAfterCutToClipboard = {read=FOnAfterCutToClipboard, write=FOnAfterCutToClipboard};
	__property TTMSFNCTableViewAfterCopyToClipboardEvent OnAfterCopyToClipboard = {read=FOnAfterCopyToClipboard, write=FOnAfterCopyToClipboard};
	__property TTMSFNCTableViewAfterPasteFromClipboardEvent OnAfterPasteFromClipboard = {read=FOnAfterPasteFromClipboard, write=FOnAfterPasteFromClipboard};
	__property TTMSFNCTableViewGetHTMLTemplateValueEvent OnGetHTMLTemplateValue = {read=FOnGetHTMLTemplateValue, write=FOnGetHTMLTemplateValue};
	__property TTMSFNCTableViewGetHTMLTemplateEvent OnGetHTMLTemplate = {read=FOnGetHTMLTemplate, write=FOnGetHTMLTemplate};
	__property TTMSFNCTableViewLookupCategoryEvent OnManualLookupCategory = {read=FOnManualLookupCategory, write=FOnManualLookupCategory};
	__property TTMSFNCTableViewLookupCategoryEvent OnCategoryClick = {read=FOnCategoryClick, write=FOnCategoryClick};
	__property System::Classes::TNotifyEvent OnStartReload = {read=FOnStartReload, write=FOnStartReload};
	__property System::Classes::TNotifyEvent OnStopReload = {read=FOnStopReload, write=FOnStopReload};
	__property TTMSFNCTableViewDrawItemCustomAccessoryEvent OnDrawItemCustomAccessory = {read=FOnDrawItemCustomAccessory, write=FOnDrawItemCustomAccessory};
	__property TTMSFNCTableViewItemClickEvent OnItemAccessoryClick = {read=FOnItemAccessoryClick, write=FOnItemAccessoryClick};
	__property TTMSFNCTableViewItemCheckChangedEvent OnItemCheckChanged = {read=FOnItemCheckChanged, write=FOnItemCheckChanged};
	__property TTMSFNCTableViewBeforeApplyFilterEvent OnBeforeApplyFilter = {read=FOnBeforeApplyFilter, write=FOnBeforeApplyFilter};
	__property TTMSFNCTableViewAfterApplyFilterEvent OnAfterApplyFilter = {read=FOnAfterApplyFilter, write=FOnAfterApplyFilter};
	__property TTMSFNCTableViewItemMoreOptionClickEvent OnItemMoreOptionClick = {read=FOnItemMoreOptionClick, write=FOnItemMoreOptionClick};
	__property TTMSFNCTableViewBeforeItemShowDetailControl OnBeforeItemShowDetailControl = {read=FOnBeforeItemShowDetailControl, write=FOnBeforeItemShowDetailControl};
	__property TTMSFNCTableViewBeforeItemHideDetailControl OnBeforeItemHideDetailControl = {read=FOnBeforeItemHideDetailControl, write=FOnBeforeItemHideDetailControl};
	__property TTMSFNCTableViewItemShowDetailControl OnItemShowDetailControl = {read=FOnItemShowDetailControl, write=FOnItemShowDetailControl};
	__property TTMSFNCTableViewItemHideDetailControl OnItemHideDetailControl = {read=FOnItemHideDetailControl, write=FOnItemHideDetailControl};
	__property TTMSFNCTableViewAnchorHeaderFooterClick OnHeaderAnchorClick = {read=FOnHeaderAnchorClick, write=FOnHeaderAnchorClick};
	__property TTMSFNCTableViewAnchorHeaderFooterClick OnFooterAnchorClick = {read=FOnFooterAnchorClick, write=FOnFooterAnchorClick};
	
public:
	__fastcall virtual TTMSFNCCustomTableView(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCCustomTableView();
	virtual void __fastcall Draw(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	virtual TTMSFNCTableViewItem* __fastcall AddItem(System::UnicodeString AText = System::UnicodeString());
	virtual TTMSFNCTableViewItem* __fastcall XYToAccessoryItem(float X, float Y);
	virtual TTMSFNCTableViewItem* __fastcall XYToItem(float X, float Y);
	virtual TTMSFNCTableViewMoreOption* __fastcall XYToMoreOption(float X, float Y);
	virtual int __fastcall XYToItemIndex(float X, float Y);
	virtual int __fastcall SelectedItemCount();
	virtual TTMSFNCTableViewCopyItems* __fastcall GetItemsFromClipboard();
	virtual TTMSFNCTableViewItem* __fastcall LookupItem(System::UnicodeString ALookupString, bool ACaseSensitive = false, bool AAutoSelect = false);
	virtual bool __fastcall IsItemSelectable(TTMSFNCTableViewItem* AItem);
	virtual float __fastcall ReloadProgress();
	virtual bool __fastcall DetailControlActive();
	virtual TTMSFNCTableViewItemArray __fastcall GetCheckedItems();
	virtual TTMSFNCTableViewItemArray __fastcall GetSelectedItems();
	virtual void __fastcall LookupCustomCategory(int ACategoryID);
	virtual void __fastcall LookupCategory(System::UnicodeString ACategory);
	virtual void __fastcall RemoveItem(TTMSFNCTableViewItem* AItem);
	virtual void __fastcall EnableInteraction();
	virtual void __fastcall DisableInteraction();
	virtual void __fastcall BeginUpdate();
	virtual void __fastcall EndUpdate();
	virtual void __fastcall InitSample();
	virtual void __fastcall ScrollToItem(int AItemIndex);
	virtual void __fastcall ClearSelection();
	virtual void __fastcall UnCheckAllItems();
	virtual void __fastcall StartFiltering();
	virtual void __fastcall StopFiltering();
	virtual void __fastcall StartEditMode();
	virtual void __fastcall ShowMoreOptions(TTMSFNCTableViewItem* AItem);
	virtual void __fastcall HideMoreOptions();
	virtual void __fastcall StopEditMode();
	virtual void __fastcall ToggleEditMode();
	virtual void __fastcall CheckAllItems();
	virtual void __fastcall SelectItem(int AItemIndex);
	virtual void __fastcall SelectItems(TTMSFNCTableViewIntegerArray AItemIndexes);
	virtual void __fastcall LoadFromStrings(System::Classes::TStrings* AStrings);
	virtual void __fastcall LoadFromFile(System::UnicodeString AFileName);
	virtual void __fastcall LoadFromStream(System::Classes::TStream* AStream);
	virtual void __fastcall SaveToStrings(System::Classes::TStrings* AStrings);
	virtual void __fastcall SaveToFile(System::UnicodeString AFileName, bool ATextOnly = true);
	virtual void __fastcall SaveToStream(System::Classes::TStream* AStream, bool ATextOnly = true);
	virtual void __fastcall CutToClipboard(bool ATextOnly = false);
	virtual void __fastcall CopyToClipboard(bool ATextOnly = false);
	virtual void __fastcall PasteFromClipboard();
	HIDESBASE virtual void __fastcall Sort(bool ACaseSensitive = true, TTMSFNCTableViewItemsSortMode ASortingMode = (TTMSFNCTableViewItemsSortMode)(0x0));
	virtual void __fastcall ApplyFilter();
	virtual void __fastcall RemoveFilter();
	virtual void __fastcall RemoveFilters();
	virtual void __fastcall StopReload();
	virtual void __fastcall StartReload();
	virtual void __fastcall LoadSettingsFromFile(System::UnicodeString AFileName);
	virtual void __fastcall LoadSettingsFromStream(System::Classes::TStream* AStream);
	virtual void __fastcall ShowDetailControl(int AItemIndex = 0xffffffff);
	virtual void __fastcall HideDetailControl();
	virtual void __fastcall UpdateReloadProgress(float AProgress, bool AAutoStopReload = true);
	__property TTMSFNCTableViewFilter* Filter = {read=FFilter};
	__property TTMSFNCTableViewItem* SelectedItem = {read=GetSelectedItem, write=SetSelectedItem};
	__property TTMSFNCTableViewItem* SelectedItems[int AIndex] = {read=GetSelItem};
	__property bool CheckedItem[TTMSFNCTableViewItem* AItem] = {read=GetCheckedItem, write=SetCheckedItem};
	__property bool Checked[int AItemIndex] = {read=GetChecked, write=SetChecked};
	__property Fmx::Tmsfnctoolbar::TTMSFNCToolBarButton* DoneButton = {read=FDoneButton};
	__property Fmx::Tmsfnctoolbar::TTMSFNCToolBarButton* EditButton = {read=FEditButton};
	__property Fmx::Tmsfnctoolbar::TTMSFNCToolBarButton* FilterButton = {read=FFilterButton};
	__property Fmx::Tmsfnctoolbar::TTMSFNCToolBarButton* BackButton = {read=FBackButton};
private:
	void *__ITMSFNCAppearanceGlobalFont;	// Fmx::Tmsfncgraphicstypes::ITMSFNCAppearanceGlobalFont 
	void *__ITMSFNCControlPickerFull;	// Fmx::Tmsfnccontrolpicker::ITMSFNCControlPickerFull 
	void *__ITMSFNCBitmapContainer;	// Fmx::Tmsfncbitmapcontainer::ITMSFNCBitmapContainer 
	void *__ITMSFNCStylesManager;	// Fmx::Tmsfncstyles::ITMSFNCStylesManager 
	
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
	// {3AF9E5D7-2049-4809-920F-BA318E3D8E8D}
	operator Fmx::Tmsfnccontrolpicker::_di_ITMSFNCControlPickerFull()
	{
		Fmx::Tmsfnccontrolpicker::_di_ITMSFNCControlPickerFull intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator Fmx::Tmsfnccontrolpicker::ITMSFNCControlPickerFull*(void) { return (Fmx::Tmsfnccontrolpicker::ITMSFNCControlPickerFull*)&__ITMSFNCControlPickerFull; }
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


class PASCALIMPLEMENTATION TTMSFNCTableView : public TTMSFNCCustomTableView
{
	typedef TTMSFNCCustomTableView inherited;
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	__property OnNeedFilterDropDownData;
	__property OnFilterSelect;
	__property OnBeforeReorderItem;
	__property OnAfterReorderItem;
	__property OnBeforeDropItem;
	__property OnAfterDropItem;
	__property OnBeforeCutToClipboard;
	__property OnBeforeCopyToClipboard;
	__property OnBeforePasteFromClipboard;
	__property OnAfterCutToClipboard;
	__property OnAfterCopyToClipboard;
	__property OnAfterPasteFromClipboard;
	
public:
	__property TreeView;
	
__published:
	__property Fill;
	__property Stroke;
	__property BitmapContainer;
	__property ItemAppearance;
	__property DefaultItem;
	__property Items;
	__property Header;
	__property Footer;
	__property ItemIndex = {default=-1};
	__property Interaction;
	__property LookupBar;
	__property Reload;
	__property Categories;
	__property MoreOptions;
	__property MoreOptionAppearance;
	__property CategoryAppearance;
	__property CategoryType = {default=0};
	__property OnItemSelected;
	__property OnItemUnSelected;
	__property OnItemSelectionChanged;
	__property Version = {default=0};
	__property VerticalScrollBarVisible = {default=0};
	__property GlobalFont;
	__property OnBeforeDrawItem;
	__property OnAfterDrawItem;
	__property OnItemCompare;
	__property OnCategoryCompare;
	__property OnCategoryClick;
	__property OnManualLookupCategory;
	__property OnAfterDrawItemIcon;
	__property OnBeforeDrawItemIcon;
	__property OnBeforeDrawItemText;
	__property OnAfterDrawItemText;
	__property OnItemAnchorClick;
	__property OnItemClick;
	__property OnItemMouseLeave;
	__property OnItemMouseEnter;
	__property OnItemDblClick;
	__property OnVScroll;
	__property OnStartReload;
	__property OnStopReload;
	__property OnDrawItemCustomAccessory;
	__property OnItemAccessoryClick;
	__property OnItemCheckChanged;
	__property OnAfterDrawItemCheck;
	__property OnBeforeDrawItemCheck;
	__property OnBeforeApplyFilter;
	__property OnAfterApplyFilter;
	__property OnItemMoreOptionClick;
	__property OnBeforeItemShowDetailControl;
	__property OnBeforeItemHideDetailControl;
	__property OnItemShowDetailControl;
	__property OnItemHideDetailControl;
	__property OnHeaderAnchorClick;
	__property OnFooterAnchorClick;
	__property OnGetHTMLTemplateValue;
	__property OnGetHTMLTemplate;
public:
	/* TTMSFNCCustomTableView.Create */ inline __fastcall virtual TTMSFNCTableView(System::Classes::TComponent* AOwner) : TTMSFNCCustomTableView(AOwner) { }
	/* TTMSFNCCustomTableView.Destroy */ inline __fastcall virtual ~TTMSFNCTableView() { }
	
};


//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x5);
static constexpr System::Int8 BLD_VER = System::Int8(0x2);
#define CLP_FMT u"#TableView#"
static constexpr System::Int8 SWIPEOFFSET = System::Int8(0x1e);
#define ClickAccessories (System::Set<TTMSFNCTableViewItemAccessory, TTMSFNCTableViewItemAccessory::tviaNone, TTMSFNCTableViewItemAccessory::tviaCustom>() << TTMSFNCTableViewItemAccessory::tviaButton << TTMSFNCTableViewItemAccessory::tviaCustom )
}	/* namespace Tmsfnctableview */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCTABLEVIEW)
using namespace Fmx::Tmsfnctableview;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfnctableviewHPP
