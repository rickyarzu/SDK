// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCListBox.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfnclistboxHPP
#define Fmx_TmsfnclistboxHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <FMX.TMSFNCTreeView.hpp>
#include <FMX.TMSFNCStyles.hpp>
#include <FMX.TMSFNCPersistence.hpp>
#include <FMX.TMSFNCTreeViewData.hpp>
#include <FMX.TMSFNCCustomControl.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.TMSFNCGraphics.hpp>
#include <FMX.TMSFNCCustomTreeView.hpp>
#include <FMX.TMSFNCBitmapContainer.hpp>
#include <System.TypInfo.hpp>
#include <FMX.TMSFNCGraphicsTypes.hpp>
#include <FMX.TMSFNCControlPicker.hpp>
#include <System.UITypes.hpp>
#include <System.Types.hpp>
#include <System.SysUtils.hpp>
#include <FMX.Controls.hpp>
#include <FMX.Types.hpp>
#include <System.Generics.Collections.hpp>
#include <System.Generics.Defaults.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfnclistbox
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCListBoxItem;
class DELPHICLASS TTMSFNCListBoxItems;
class DELPHICLASS TTMSFNCListBoxLookup;
class DELPHICLASS TTMSFNCListBoxFiltering;
class DELPHICLASS TTMSFNCListBoxInteraction;
class DELPHICLASS TTMSFNCListBoxItemsAppearance;
class DELPHICLASS TTMSFNCListBoxHeader;
class DELPHICLASS TTMSFNCListBoxCopyItems;
class DELPHICLASS TTMSFNCListBoxFilterData;
class DELPHICLASS TTMSFNCListBoxFilter;
class DELPHICLASS TTMSFNCCustomListBox;
class DELPHICLASS TTMSFNCListBox;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TTMSFNCListBoxItem : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	NativeInt FTag;
	System::UnicodeString FDataString;
	System::TObject* FDataObject;
	NativeInt FDataInteger;
	TTMSFNCCustomListBox* FListBox;
	System::UnicodeString FText;
	System::UnicodeString FDBKey;
	bool FChecked;
	bool FDataBoolean;
	bool FWordWrapping;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextTrimming FTrimming;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign FTextAlign;
	System::Uitypes::TAlphaColor FSelectedTextColor;
	System::Uitypes::TAlphaColor FTextColor;
	System::Uitypes::TAlphaColor FDisabledTextColor;
	bool FEnabled;
	System::UnicodeString FBitmapName;
	Fmx::Tmsfnctypes::TTMSFNCBitmap* FBitmap;
	double FHeight;
	void *FDataPointer;
	double FBitmapHeight;
	double FBitmapWidth;
	void __fastcall SetText(const System::UnicodeString Value);
	void __fastcall SetHeight(const double Value);
	void __fastcall SetTrimming(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextTrimming Value);
	void __fastcall SetWordWrapping(const bool Value);
	void __fastcall SetTextAlign(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign Value);
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
	bool __fastcall IsBitmapHeightStored();
	bool __fastcall IsBitmapWidthStored();
	void __fastcall SetBitmapHeight(const double Value);
	void __fastcall SetBitmapWidth(const double Value);
	
protected:
	void __fastcall UpdateItem();
	HIDESBASE void __fastcall Changed(System::TObject* Sender);
	void __fastcall BitmapChanged(System::TObject* Sender);
	
public:
	TTMSFNCCustomListBox* __fastcall ListBox();
	__fastcall virtual TTMSFNCListBoxItem(System::Classes::TCollection* Collection);
	__fastcall virtual ~TTMSFNCListBoxItem();
	virtual System::UnicodeString __fastcall SaveToString(bool ATextOnly = true);
	virtual bool __fastcall IsSelected();
	virtual void __fastcall LoadFromString(System::UnicodeString AString);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	virtual void __fastcall AssignData(System::Classes::TPersistent* Source);
	__property void * DataPointer = {read=FDataPointer, write=FDataPointer};
	__property bool DataBoolean = {read=FDataBoolean, write=FDataBoolean, nodefault};
	__property System::TObject* DataObject = {read=FDataObject, write=FDataObject};
	__property System::UnicodeString DataString = {read=FDataString, write=FDataString};
	__property NativeInt DataInteger = {read=FDataInteger, write=FDataInteger};
	__property System::UnicodeString DBKey = {read=FDBKey, write=FDBKey};
	__property bool Checked = {read=FChecked, write=SetChecked, default=0};
	__property Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* BitmapContainer = {read=GetBitmapContainer};
	__property System::UnicodeString StrippedHTMLText = {read=GetStrippedHTMLText};
	
__published:
	__property System::UnicodeString Text = {read=FText, write=SetText};
	__property Fmx::Tmsfnctypes::TTMSFNCBitmap* Bitmap = {read=FBitmap, write=SetBitmap};
	__property double BitmapWidth = {read=FBitmapWidth, write=SetBitmapWidth, stored=IsBitmapWidthStored};
	__property double BitmapHeight = {read=FBitmapHeight, write=SetBitmapHeight, stored=IsBitmapHeightStored};
	__property System::UnicodeString BitmapName = {read=FBitmapName, write=SetBitmapName};
	__property bool WordWrapping = {read=FWordWrapping, write=SetWordWrapping, default=0};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextTrimming Trimming = {read=FTrimming, write=SetTrimming, default=0};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign TextAlign = {read=FTextAlign, write=SetTextAlign, default=1};
	__property System::Uitypes::TAlphaColor TextColor = {read=FTextColor, write=SetTextColor, default=-16777216};
	__property System::Uitypes::TAlphaColor SelectedTextColor = {read=FSelectedTextColor, write=SetSelectedTextColor, default=-1};
	__property System::Uitypes::TAlphaColor DisabledTextColor = {read=FDisabledTextColor, write=SetDisabledTextColor, default=-4144960};
	__property bool Enabled = {read=FEnabled, write=SetEnabled, default=1};
	__property double Height = {read=FHeight, write=SetHeight, stored=IsHeightStored};
	__property NativeInt Tag = {read=FTag, write=FTag, default=0};
};


enum DECLSPEC_DENUM TTMSFNCListBoxItemsSortMode : unsigned char { ismAscending, ismDescending };

enum DECLSPEC_DENUM TTMSFNCListBoxItemsSortKind : unsigned char { iskNone, iskAscending, iskDescending };

class PASCALIMPLEMENTATION TTMSFNCListBoxItems : public Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCListBoxItem*>
{
	typedef Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCListBoxItem*> inherited;
	
public:
	TTMSFNCListBoxItem* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCCustomListBox* FListBox;
	HIDESBASE TTMSFNCListBoxItem* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCListBoxItem* const Value);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall GetItemClass();
	virtual int __fastcall Compare(TTMSFNCListBoxItem* AItem1, TTMSFNCListBoxItem* AItem2, bool ACaseSensitive = true, TTMSFNCListBoxItemsSortMode ASortingMode = (TTMSFNCListBoxItemsSortMode)(0x0));
	virtual void __fastcall QuickSort(int L, int R, bool ACaseSensitive = true, TTMSFNCListBoxItemsSortMode ASortingMode = (TTMSFNCListBoxItemsSortMode)(0x0));
	
public:
	TTMSFNCCustomListBox* __fastcall ListBox();
	__fastcall TTMSFNCListBoxItems(TTMSFNCCustomListBox* AListBox);
	HIDESBASE virtual TTMSFNCListBoxItem* __fastcall Add();
	HIDESBASE TTMSFNCListBoxItem* __fastcall Insert(int Index);
	HIDESBASE virtual void __fastcall Clear();
	HIDESBASE void __fastcall Sort(bool ACaseSensitive = true, TTMSFNCListBoxItemsSortMode ASortingMode = (TTMSFNCListBoxItemsSortMode)(0x0));
	__property TTMSFNCListBoxItem* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCListBoxItems() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCListBoxLookup : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	TTMSFNCListBoxInteraction* FOwner;
	bool __fastcall GetAutoSelect();
	bool __fastcall GetCaseSensitive();
	bool __fastcall GetEnabled();
	bool __fastcall GetIncremental();
	void __fastcall SetAutoSelect(const bool Value);
	void __fastcall SetCaseSensitive(const bool Value);
	void __fastcall SetEnabled(const bool Value);
	void __fastcall SetIncremental(const bool Value);
	
public:
	__fastcall TTMSFNCListBoxLookup(TTMSFNCListBoxInteraction* AOwner);
	
__published:
	__property bool CaseSensitive = {read=GetCaseSensitive, write=SetCaseSensitive, default=0};
	__property bool Enabled = {read=GetEnabled, write=SetEnabled, default=1};
	__property bool Incremental = {read=GetIncremental, write=SetIncremental, default=1};
	__property bool AutoSelect = {read=GetAutoSelect, write=SetAutoSelect, default=1};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTMSFNCListBoxLookup() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCListBoxFiltering : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	TTMSFNCListBoxInteraction* FOwner;
	int __fastcall GetDropDownHeight();
	int __fastcall GetDropDownWidth();
	bool __fastcall GetEnabled();
	void __fastcall SetDropDownHeight(const int Value);
	void __fastcall SetDropDownWidth(const int Value);
	void __fastcall SetEnabled(const bool Value);
	
public:
	__fastcall TTMSFNCListBoxFiltering(TTMSFNCListBoxInteraction* AOwner);
	
__published:
	__property bool Enabled = {read=GetEnabled, write=SetEnabled, default=0};
	__property int DropDownWidth = {read=GetDropDownWidth, write=SetDropDownWidth, default=100};
	__property int DropDownHeight = {read=GetDropDownHeight, write=SetDropDownHeight, default=120};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTMSFNCListBoxFiltering() { }
	
};


enum DECLSPEC_DENUM TTMSFNCListBoxMouseEditMode : unsigned char { lmemDoubleClick, lmemSingleClick, lmemSingleClickOnSelectedItem };

enum DECLSPEC_DENUM TTMSFNCListBoxClipboardMode : unsigned char { lcmNone, lcmTextOnly, lcmFull };

enum DECLSPEC_DENUM TTMSFNCListBoxDragDropMode : unsigned char { ldmNone, ldmMove, ldmCopy };

enum DECLSPEC_DENUM TTMSFNCListBoxSorting : unsigned char { lcsNone, lcsNormal, lcsNormalCaseSensitive };

class PASCALIMPLEMENTATION TTMSFNCListBoxInteraction : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	TTMSFNCCustomListBox* FListBox;
	TTMSFNCListBoxLookup* FLookup;
	TTMSFNCListBoxFiltering* FFiltering;
	bool __fastcall GetMultiSelect();
	void __fastcall SetMultiSelect(const bool Value);
	TTMSFNCListBoxClipboardMode __fastcall GetClipboardMode();
	TTMSFNCListBoxDragDropMode __fastcall GetDragDropMode();
	bool __fastcall GetReorder();
	bool __fastcall GetTouchScrolling();
	void __fastcall SetDragDropMode(const TTMSFNCListBoxDragDropMode Value);
	void __fastcall SetFiltering(TTMSFNCListBoxFiltering* const Value);
	void __fastcall SetLookup(TTMSFNCListBoxLookup* const Value);
	void __fastcall SetReorder(const bool Value);
	void __fastcall SetTouchScrolling(const bool Value);
	void __fastcall SetClipboardMode(const TTMSFNCListBoxClipboardMode Value);
	TTMSFNCListBoxSorting __fastcall GetSorting();
	void __fastcall SetSorting(const TTMSFNCListBoxSorting Value);
	
public:
	__fastcall TTMSFNCListBoxInteraction(TTMSFNCCustomListBox* AListBox);
	__fastcall virtual ~TTMSFNCListBoxInteraction();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property bool MultiSelect = {read=GetMultiSelect, write=SetMultiSelect, default=0};
	__property bool TouchScrolling = {read=GetTouchScrolling, write=SetTouchScrolling, default=1};
	__property TTMSFNCListBoxClipboardMode ClipboardMode = {read=GetClipboardMode, write=SetClipboardMode, default=0};
	__property bool Reorder = {read=GetReorder, write=SetReorder, default=0};
	__property TTMSFNCListBoxDragDropMode DragDropMode = {read=GetDragDropMode, write=SetDragDropMode, default=0};
	__property TTMSFNCListBoxLookup* Lookup = {read=FLookup, write=SetLookup};
	__property TTMSFNCListBoxFiltering* Filtering = {read=FFiltering, write=SetFiltering};
	__property TTMSFNCListBoxSorting Sorting = {read=GetSorting, write=SetSorting, default=0};
};


enum DECLSPEC_DENUM TTMSFNCListBoxItemHeightMode : unsigned char { lihmFixed, lihmVariable };

class PASCALIMPLEMENTATION TTMSFNCListBoxItemsAppearance : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	TTMSFNCCustomListBox* FListBox;
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
	TTMSFNCListBoxItemHeightMode __fastcall GetHeightMode();
	void __fastcall SetHeightMode(const TTMSFNCListBoxItemHeightMode Value);
	double __fastcall GetFixedHeight();
	void __fastcall SetFixedHeight(const double Value);
	bool __fastcall GetShowFocus();
	void __fastcall SetShowFocus(const bool Value);
	
public:
	__fastcall TTMSFNCListBoxItemsAppearance(TTMSFNCCustomListBox* AListBox);
	
__published:
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* Font = {read=GetFont, write=SetFont};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* Fill = {read=GetFill, write=SetFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* Stroke = {read=GetStroke, write=SetStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* SelectedFill = {read=GetSelectedFill, write=SetSelectedFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* SelectedStroke = {read=GetSelectedStroke, write=SetSelectedStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* DisabledFill = {read=GetDisabledFill, write=SetDisabledFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* DisabledStroke = {read=GetDisabledStroke, write=SetDisabledStroke};
	__property TTMSFNCListBoxItemHeightMode HeightMode = {read=GetHeightMode, write=SetHeightMode, default=0};
	__property double FixedHeight = {read=GetFixedHeight, write=SetFixedHeight};
	__property bool ShowFocus = {read=GetShowFocus, write=SetShowFocus, default=1};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTMSFNCListBoxItemsAppearance() { }
	
};


typedef System::DynamicArray<int> TTMSFNCListBoxItemArray;

class PASCALIMPLEMENTATION TTMSFNCListBoxHeader : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	TTMSFNCCustomListBox* FListBox;
	bool __fastcall GetVisible();
	void __fastcall SetVisible(const bool Value);
	System::UnicodeString __fastcall GetText();
	void __fastcall SetText(const System::UnicodeString Value);
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* __fastcall GetFill();
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign __fastcall GetHorizontalTextAlign();
	float __fastcall GetSize();
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* __fastcall GetStroke();
	void __fastcall SetFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetHorizontalTextAlign(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign Value);
	void __fastcall SetSize(const float Value);
	void __fastcall SetStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign __fastcall GetVerticalTextAlign();
	void __fastcall SetVerticalTextAlign(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign Value);
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* __fastcall GetFont();
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextTrimming __fastcall GetTrimming();
	bool __fastcall GetWordWrapping();
	void __fastcall SetFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetTrimming(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextTrimming Value);
	void __fastcall SetWordWrapping(const bool Value);
	System::Uitypes::TAlphaColor __fastcall GetSortIndicatorColor();
	void __fastcall SetSortIndicatorColor(const System::Uitypes::TAlphaColor Value);
	
public:
	__fastcall virtual TTMSFNCListBoxHeader(TTMSFNCCustomListBox* AListBox);
	
__published:
	__property bool Visible = {read=GetVisible, write=SetVisible, default=0};
	__property System::UnicodeString Text = {read=GetText, write=SetText};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* Fill = {read=GetFill, write=SetFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* Font = {read=GetFont, write=SetFont};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* Stroke = {read=GetStroke, write=SetStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign HorizontalTextAlign = {read=GetHorizontalTextAlign, write=SetHorizontalTextAlign, default=0};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign VerticalTextAlign = {read=GetVerticalTextAlign, write=SetVerticalTextAlign, default=0};
	__property bool WordWrapping = {read=GetWordWrapping, write=SetWordWrapping, default=0};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextTrimming Trimming = {read=GetTrimming, write=SetTrimming, default=0};
	__property float Size = {read=GetSize, write=SetSize};
	__property System::Uitypes::TAlphaColor SortIndicatorColor = {read=GetSortIndicatorColor, write=SetSortIndicatorColor, default=-14963208};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTMSFNCListBoxHeader() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCListBoxCopyItems : public TTMSFNCListBoxItems
{
	typedef TTMSFNCListBoxItems inherited;
	
public:
	/* TTMSFNCListBoxItems.Create */ inline __fastcall TTMSFNCListBoxCopyItems(TTMSFNCCustomListBox* AListBox) : TTMSFNCListBoxItems(AListBox) { }
	
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCListBoxCopyItems() { }
	
};


typedef void __fastcall (__closure *TTMSFNCListBoxBeforeDrawSortIndicatorEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int ASortIndex, TTMSFNCListBoxItemsSortKind ASortKind, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCListBoxAfterDrawSortIndicatorEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int ASortIndex, TTMSFNCListBoxItemsSortKind ASortKind);

typedef void __fastcall (__closure *TTMSFNCListBoxNeedFilterDropDownDataEvent)(System::TObject* Sender, System::Classes::TStrings* AValues);

typedef void __fastcall (__closure *TTMSFNCListBoxItemAnchorClickEvent)(System::TObject* Sender, TTMSFNCListBoxItem* AItem, System::UnicodeString AAnchor);

typedef void __fastcall (__closure *TTMSFNCListBoxHeaderAnchorClickEvent)(System::TObject* Sender, System::UnicodeString AAnchor);

typedef void __fastcall (__closure *TTMSFNCListBoxBeforeReorderItemEvent)(System::TObject* Sender, TTMSFNCListBoxItem* AFromItem, TTMSFNCListBoxItem* AToItem, bool &ACanReorder);

typedef void __fastcall (__closure *TTMSFNCListBoxAfterReorderItemEvent)(System::TObject* Sender, TTMSFNCListBoxItem* AFromItem, TTMSFNCListBoxItem* AToItem);

typedef void __fastcall (__closure *TTMSFNCListBoxBeforeDropItemEvent)(System::TObject* Sender, TTMSFNCListBoxItem* AFromItem, TTMSFNCListBoxItem* AToItem, bool &ACanDrop);

typedef void __fastcall (__closure *TTMSFNCListBoxAfterDropItemEvent)(System::TObject* Sender, TTMSFNCListBoxItem* AFromItem, TTMSFNCListBoxItem* AToItem);

typedef void __fastcall (__closure *TTMSFNCListBoxBeforeCopyToClipboardEvent)(System::TObject* Sender, bool &ACanCopy);

typedef void __fastcall (__closure *TTMSFNCListBoxBeforeCutToClipboardEvent)(System::TObject* Sender, bool &ACanCut);

typedef void __fastcall (__closure *TTMSFNCListBoxBeforePasteFromClipboardEvent)(System::TObject* Sender, bool &ACanPaste);

typedef void __fastcall (__closure *TTMSFNCListBoxAfterCopyToClipboardEvent)(System::TObject* Sender);

typedef void __fastcall (__closure *TTMSFNCListBoxAfterCutToClipboardEvent)(System::TObject* Sender);

typedef void __fastcall (__closure *TTMSFNCListBoxAfterPasteFromClipboardEvent)(System::TObject* Sender);

typedef void __fastcall (__closure *TTMSFNCListBoxBeforeDrawItemTextEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCListBoxItem* AItem, System::UnicodeString AText, bool &AAllow);

typedef void __fastcall (__closure *TTMSFNCListBoxAfterDrawItemTextEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCListBoxItem* AItem, System::UnicodeString AText);

typedef void __fastcall (__closure *TTMSFNCListBoxItemSelectedEvent)(System::TObject* Sender, TTMSFNCListBoxItem* AItem);

typedef void __fastcall (__closure *TTMSFNCListBoxItemClickEvent)(System::TObject* Sender, TTMSFNCListBoxItem* AItem);

typedef void __fastcall (__closure *TTMSFNCListBoxItemMouseEnterEvent)(System::TObject* Sender, TTMSFNCListBoxItem* AItem);

typedef void __fastcall (__closure *TTMSFNCListBoxItemMouseLeaveEvent)(System::TObject* Sender, TTMSFNCListBoxItem* AItem);

typedef void __fastcall (__closure *TTMSFNCListBoxScrollEvent)(System::TObject* Sender, float APosition);

typedef void __fastcall (__closure *TTMSFNCListBoxGetItemHeightEvent)(System::TObject* Sender, TTMSFNCListBoxItem* AItem, double &AHeight);

typedef void __fastcall (__closure *TTMSFNCListBoxBeforeDrawItemIconEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCListBoxItem* AItem, Fmx::Tmsfnctypes::TTMSFNCBitmap* AIcon, bool &AAllow);

typedef void __fastcall (__closure *TTMSFNCListBoxAfterDrawItemIconEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCListBoxItem* AItem, Fmx::Tmsfnctypes::TTMSFNCBitmap* AIcon);

typedef void __fastcall (__closure *TTMSFNCListBoxBeforeDrawItemCheckEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCListBoxItem* AItem, Fmx::Tmsfnctypes::TTMSFNCBitmap* ACheck, bool &AAllow);

typedef void __fastcall (__closure *TTMSFNCListBoxAfterDrawItemCheckEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCListBoxItem* AItem, Fmx::Tmsfnctypes::TTMSFNCBitmap* ACheck);

typedef void __fastcall (__closure *TTMSFNCListBoxBeforeDrawItemEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCListBoxItem* AItem, bool &AAllow, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCListBoxAfterDrawItemEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCListBoxItem* AItem);

typedef void __fastcall (__closure *TTMSFNCListBoxItemCompareEvent)(System::TObject* Sender, TTMSFNCListBoxItem* Item1, TTMSFNCListBoxItem* Item2, int &ACompareResult);

typedef void __fastcall (__closure *TTMSFNCListBoxFilterSelectEvent)(System::TObject* Sender, System::UnicodeString &ACondition);

enum DECLSPEC_DENUM TTMSFNCListBoxFilterOperation : unsigned char { lfoSHORT, lfoNONE, lfoAND, lfoXOR, lfoOR };

class PASCALIMPLEMENTATION TTMSFNCListBoxFilterData : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	System::UnicodeString FCondition;
	bool FCaseSensitive;
	System::UnicodeString FSuffix;
	System::UnicodeString FPrefix;
	TTMSFNCListBoxFilterOperation FOperation;
	
public:
	__fastcall virtual TTMSFNCListBoxFilterData(System::Classes::TCollection* ACollection);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property System::UnicodeString Condition = {read=FCondition, write=FCondition};
	__property bool CaseSensitive = {read=FCaseSensitive, write=FCaseSensitive, default=1};
	__property System::UnicodeString Prefix = {read=FPrefix, write=FPrefix};
	__property System::UnicodeString Suffix = {read=FSuffix, write=FSuffix};
	__property TTMSFNCListBoxFilterOperation Operation = {read=FOperation, write=FOperation, nodefault};
public:
	/* TCollectionItem.Destroy */ inline __fastcall virtual ~TTMSFNCListBoxFilterData() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCListBoxFilter : public Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCListBoxFilterData*>
{
	typedef Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCListBoxFilterData*> inherited;
	
public:
	TTMSFNCListBoxFilterData* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCCustomListBox* FOwner;
	HIDESBASE TTMSFNCListBoxFilterData* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCListBoxFilterData* const Value);
	
public:
	__fastcall TTMSFNCListBoxFilter(TTMSFNCCustomListBox* AOwner);
	HIDESBASE TTMSFNCListBoxFilterData* __fastcall Add();
	HIDESBASE TTMSFNCListBoxFilterData* __fastcall Insert(int index);
	__property TTMSFNCListBoxFilterData* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCListBoxFilter() { }
	
};


typedef System::DynamicArray<TTMSFNCListBoxItem*> TTMSFNCListBoxFilteredItems;

class PASCALIMPLEMENTATION TTMSFNCCustomListBox : public Fmx::Tmsfnccustomcontrol::TTMSFNCCustomControl
{
	typedef Fmx::Tmsfnccustomcontrol::TTMSFNCCustomControl inherited;
	
private:
	int FUpdateCount;
	int FSaveSelectedItemIndex;
	TTMSFNCListBoxCopyItems* FCopyItems;
	bool FAccepted;
	TTMSFNCListBoxItems* FItems;
	Fmx::Tmsfnctreeview::TTMSFNCTreeView* FTreeView;
	TTMSFNCListBoxItem* FDefaultItem;
	TTMSFNCListBoxItemsAppearance* FItemsAppearance;
	TTMSFNCListBoxItemSelectedEvent FOnItemSelected;
	TTMSFNCListBoxInteraction* FInteraction;
	TTMSFNCListBoxHeader* FHeader;
	TTMSFNCListBoxItemAnchorClickEvent FOnItemAnchorClick;
	TTMSFNCListBoxAfterCutToClipboardEvent FOnAfterCutToClipboard;
	TTMSFNCListBoxBeforePasteFromClipboardEvent FOnBeforePasteFromClipboard;
	TTMSFNCListBoxAfterReorderItemEvent FOnAfterReorderItem;
	TTMSFNCListBoxBeforeDropItemEvent FOnBeforeDropItem;
	TTMSFNCListBoxBeforeDrawItemTextEvent FOnBeforeDrawItemText;
	TTMSFNCListBoxScrollEvent FOnVScroll;
	TTMSFNCListBoxBeforeCopyToClipboardEvent FOnBeforeCopyToClipboard;
	TTMSFNCListBoxItemClickEvent FOnItemDblClick;
	TTMSFNCListBoxBeforeDrawItemCheckEvent FOnBeforeDrawItemCheck;
	TTMSFNCListBoxAfterDrawItemIconEvent FOnAfterDrawItemIcon;
	TTMSFNCListBoxBeforeDrawItemEvent FOnBeforeDrawItem;
	TTMSFNCListBoxAfterPasteFromClipboardEvent FOnAfterPasteFromClipboard;
	TTMSFNCListBoxItemClickEvent FOnItemClick;
	TTMSFNCListBoxAfterDropItemEvent FOnAfterDropItem;
	TTMSFNCListBoxAfterDrawItemTextEvent FOnAfterDrawItemText;
	TTMSFNCListBoxItemCompareEvent FOnItemCompare;
	TTMSFNCListBoxBeforeCutToClipboardEvent FOnBeforeCutToClipboard;
	TTMSFNCListBoxBeforeReorderItemEvent FOnBeforeReorderItem;
	TTMSFNCListBoxNeedFilterDropDownDataEvent FOnNeedFilterDropDownData;
	TTMSFNCListBoxAfterCopyToClipboardEvent FOnAfterCopyToClipboard;
	TTMSFNCListBoxFilterSelectEvent FOnFilterSelect;
	TTMSFNCListBoxAfterDrawItemCheckEvent FOnAfterDrawItemCheck;
	TTMSFNCListBoxAfterDrawItemEvent FOnAfterDrawItem;
	TTMSFNCListBoxBeforeDrawItemIconEvent FOnBeforeDrawItemIcon;
	TTMSFNCListBoxFilter* FFilter;
	TTMSFNCListBoxBeforeDrawSortIndicatorEvent FOnBeforeDrawSortIndicator;
	TTMSFNCListBoxAfterDrawSortIndicatorEvent FOnAfterDrawSortIndicator;
	TTMSFNCListBoxItemMouseLeaveEvent FOnItemMouseLeave;
	TTMSFNCListBoxItemMouseEnterEvent FOnItemMouseEnter;
	TTMSFNCListBoxItemsSortMode FSortMode;
	TTMSFNCListBoxHeaderAnchorClickEvent FOnHeaderAnchorClick;
	Fmx::Tmsfncgraphicstypes::TTMSFNCAppearanceGlobalFont* FGlobalFont;
	void __fastcall SetItems(TTMSFNCListBoxItems* const Value);
	void __fastcall SetDefaultItem(TTMSFNCListBoxItem* const Value);
	void __fastcall SetItemsAppearance(TTMSFNCListBoxItemsAppearance* const Value);
	int __fastcall GetItemIndex();
	void __fastcall SetItemIndex(const int Value);
	void __fastcall SetInteraction(TTMSFNCListBoxInteraction* const Value);
	Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* __fastcall GetBitmapContainer();
	void __fastcall SetBitmapContainer(Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* const Value);
	void __fastcall SetHeader(TTMSFNCListBoxHeader* const Value);
	TTMSFNCListBoxItem* __fastcall GetSelectedItem();
	void __fastcall SetSelectedItem(TTMSFNCListBoxItem* const Value);
	TTMSFNCListBoxItem* __fastcall GetSelItem(int AIndex);
	bool __fastcall GetVerticalScrollBarVisible();
	void __fastcall SetVerticalScrollBarVisible(const bool Value);
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* __fastcall GetFill();
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* __fastcall GetStroke();
	HIDESBASE void __fastcall SetFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	HIDESBASE void __fastcall SetStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	TTMSFNCListBoxFilteredItems __fastcall GetFilteredItems();
	void __fastcall SetGlobalFont(Fmx::Tmsfncgraphicstypes::TTMSFNCAppearanceGlobalFont* const Value);
	
protected:
	virtual System::UnicodeString __fastcall GetDocURL();
	Fmx::Tmsfncstyles::TTMSFNCStylesManagerComponentArray __fastcall GetSubComponentArray();
	virtual bool __fastcall IsAppearanceProperty(System::TObject* AObject, System::UnicodeString APropertyName, System::TTypeKind APropertyType);
	virtual System::UnicodeString __fastcall GetVersion();
	virtual TTMSFNCListBoxItems* __fastcall CreateItems();
	virtual int __fastcall GetItemIndexForNode(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode);
	virtual TTMSFNCListBoxItem* __fastcall GetItemForNode(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode);
	virtual Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* __fastcall GetNodeForItemIndex(int AItemIndex);
	virtual void __fastcall Loaded();
	virtual void __fastcall RegisterRuntimeClasses();
	virtual void __fastcall ApplyStyle();
	virtual void __fastcall ResetToDefaultStyle();
	virtual void __fastcall SetAdaptToStyle(const bool Value);
	virtual void __fastcall UpdateItems();
	virtual void __fastcall DoGetNodeHeight(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, double &AHeight);
	virtual void __fastcall DoGetNodeIcon(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, bool ALarge, Fmx::Tmsfnctypes::TTMSFNCBitmap* &AIcon);
	virtual void __fastcall DoGetNodeIconSize(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, bool ALarge, Fmx::Tmsfnctypes::TTMSFNCBitmap* AIcon, double &AIconWidth, double &AIconHeight);
	virtual void __fastcall DoGetNumberOfNodes(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int &ANumberOfNodes);
	virtual void __fastcall DoGetNodeText(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNodeTextMode AMode, System::UnicodeString &AText);
	virtual void __fastcall DoGetNodeTrimming(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextTrimming &ATrimming);
	virtual void __fastcall DoGetNodeWordWrapping(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, bool &AWordWrapping);
	virtual void __fastcall DoGetNodeHorizontalTextAlign(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign &AHorizontalTextAlign);
	virtual void __fastcall DoGetNodeVerticalTextAlign(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign &AVerticalTextAlign);
	virtual void __fastcall DoGetNodeTextColor(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, System::Uitypes::TAlphaColor &ATextColor);
	virtual void __fastcall DoGetNodeSelectedTextColor(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, System::Uitypes::TAlphaColor &ASelectedTextColor);
	virtual void __fastcall DoGetNodeDisabledTextColor(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, System::Uitypes::TAlphaColor &ADisabledTextColor);
	virtual void __fastcall DoIsNodeEnabled(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, bool &AEnabled);
	virtual void __fastcall DoAfterSelectNode(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode);
	virtual void __fastcall DoNeedFilterDropDownData(System::TObject* Sender, int AColumn, System::Classes::TStrings* AValues);
	virtual void __fastcall DoFilterSelect(System::TObject* Sender, int AColumn, System::UnicodeString &ACondition);
	virtual void __fastcall DoBeforeDrawSortIndicator(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AColumn, int ASortIndex, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNodesSortKind ASortKind, bool &ADefaultDraw);
	virtual void __fastcall DoAfterDrawSortIndicator(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AColumn, int ASortIndex, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNodesSortKind ASortKind);
	virtual void __fastcall DoBeforeDrawNode(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoAfterDrawNode(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode);
	virtual void __fastcall DoItemCompare(TTMSFNCListBoxItem* AItem1, TTMSFNCListBoxItem* AItem2, int &ACompareResult);
	virtual void __fastcall DoBeforeDrawNodeText(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, System::UnicodeString AText, bool &AAllow);
	virtual void __fastcall DoAfterDrawNodeText(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, System::UnicodeString AText);
	void __fastcall DoClick(System::TObject* Sender);
	void __fastcall DoDblClick(System::TObject* Sender);
	virtual void __fastcall DoBeforeDrawNodeIcon(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, Fmx::Tmsfnctypes::TTMSFNCBitmap* AIcon, bool &AAllow);
	virtual void __fastcall DoAfterDrawNodeIcon(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, Fmx::Tmsfnctypes::TTMSFNCBitmap* AIcon);
	virtual void __fastcall DoBeforeDrawNodeCheck(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, Fmx::Tmsfnctypes::TTMSFNCBitmap* ACheck, bool &AAllow);
	virtual void __fastcall DoAfterDrawNodeCheck(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, Fmx::Tmsfnctypes::TTMSFNCBitmap* ACheck);
	virtual void __fastcall DoNodeAnchorClick(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, System::UnicodeString AAnchor);
	virtual void __fastcall DoColumnAnchorClick(System::TObject* Sender, int AColumn, System::UnicodeString AAnchor);
	virtual void __fastcall DoNodeClick(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode);
	virtual void __fastcall DoNodeMouseEnter(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode);
	virtual void __fastcall DoNodeMouseLeave(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode);
	virtual void __fastcall DoNodeDblClick(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode);
	virtual void __fastcall DoVScroll(System::TObject* Sender, float APosition);
	virtual void __fastcall DoBeforeCutToClipboard(System::TObject* Sender, bool &ACanCut);
	virtual void __fastcall DoBeforeCopyToClipboard(System::TObject* Sender, bool &ACanCopy);
	virtual void __fastcall DoBeforePasteFromClipboard(System::TObject* Sender, bool &ACanPaste);
	virtual void __fastcall DoAfterCutToClipboard(System::TObject* Sender);
	virtual void __fastcall DoAfterCopyToClipboard(System::TObject* Sender);
	virtual void __fastcall DoAfterPasteFromClipboard(System::TObject* Sender);
	virtual void __fastcall DoBeforeReorderItem(TTMSFNCListBoxItem* AFromItem, TTMSFNCListBoxItem* AToItem, bool &ACanReorder);
	virtual void __fastcall DoAfterReorderItem(TTMSFNCListBoxItem* AFromItem, TTMSFNCListBoxItem* AToItem);
	virtual void __fastcall DoBeforeDropItem(TTMSFNCListBoxItem* AFromItem, TTMSFNCListBoxItem* AToItem, bool &ACanDrop);
	virtual void __fastcall DoAfterDropItem(TTMSFNCListBoxItem* AFromItem, TTMSFNCListBoxItem* AToItem);
	virtual void __fastcall CustomizeTreeView(Fmx::Tmsfnctreeview::TTMSFNCTreeView* ATreeView);
	virtual void __fastcall DoCustomDragOver(System::TObject* Sender, System::TObject* Source, const System::Types::TPointF &Point, bool &Accept);
	virtual void __fastcall DoCustomDragDrop(System::TObject* Sender, System::TObject* Source, const System::Types::TPointF &Point);
	virtual void __fastcall DoCustomReorder(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* AFromNode, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* AToNode);
	virtual void __fastcall DoCopyToClipboard(System::TObject* Sender);
	virtual void __fastcall DoCutToClipboard(System::TObject* Sender);
	virtual void __fastcall DoPasteFromClipboard(System::TObject* Sender);
	virtual void __fastcall DoColumnSort(System::TObject* Sender, int AColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNodesSortMode ASortMode);
	virtual void __fastcall DoLookup(System::TObject* Sender, System::UnicodeString ALookupString);
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
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCAppearanceGlobalFont* GlobalFont = {read=FGlobalFont, write=SetGlobalFont};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* Fill = {read=GetFill, write=SetFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* Stroke = {read=GetStroke, write=SetStroke};
	__property System::UnicodeString Version = {read=GetVersion};
	__property Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* BitmapContainer = {read=GetBitmapContainer, write=SetBitmapContainer};
	__property TTMSFNCListBoxItems* Items = {read=FItems, write=SetItems};
	__property TTMSFNCListBoxItem* DefaultItem = {read=FDefaultItem, write=SetDefaultItem};
	__property TTMSFNCListBoxItemsAppearance* ItemsAppearance = {read=FItemsAppearance, write=SetItemsAppearance};
	__property TTMSFNCListBoxInteraction* Interaction = {read=FInteraction, write=SetInteraction};
	__property int ItemIndex = {read=GetItemIndex, write=SetItemIndex, default=-1};
	__property TTMSFNCListBoxItemSelectedEvent OnItemSelected = {read=FOnItemSelected, write=FOnItemSelected};
	__property TTMSFNCListBoxHeader* Header = {read=FHeader, write=SetHeader};
	__property bool VerticalScrollBarVisible = {read=GetVerticalScrollBarVisible, write=SetVerticalScrollBarVisible, default=1};
	__property TTMSFNCListBoxNeedFilterDropDownDataEvent OnNeedFilterDropDownData = {read=FOnNeedFilterDropDownData, write=FOnNeedFilterDropDownData};
	__property TTMSFNCListBoxFilterSelectEvent OnFilterSelect = {read=FOnFilterSelect, write=FOnFilterSelect};
	__property TTMSFNCListBoxBeforeDrawItemEvent OnBeforeDrawItem = {read=FOnBeforeDrawItem, write=FOnBeforeDrawItem};
	__property TTMSFNCListBoxAfterDrawItemEvent OnAfterDrawItem = {read=FOnAfterDrawItem, write=FOnAfterDrawItem};
	__property TTMSFNCListBoxItemCompareEvent OnItemCompare = {read=FOnItemCompare, write=FOnItemCompare};
	__property TTMSFNCListBoxAfterDrawItemIconEvent OnAfterDrawItemIcon = {read=FOnAfterDrawItemIcon, write=FOnAfterDrawItemIcon};
	__property TTMSFNCListBoxBeforeDrawItemIconEvent OnBeforeDrawItemIcon = {read=FOnBeforeDrawItemIcon, write=FOnBeforeDrawItemIcon};
	__property TTMSFNCListBoxAfterDrawItemCheckEvent OnAfterDrawItemCheck = {read=FOnAfterDrawItemCheck, write=FOnAfterDrawItemCheck};
	__property TTMSFNCListBoxBeforeDrawItemCheckEvent OnBeforeDrawItemCheck = {read=FOnBeforeDrawItemCheck, write=FOnBeforeDrawItemCheck};
	__property TTMSFNCListBoxBeforeDrawItemTextEvent OnBeforeDrawItemText = {read=FOnBeforeDrawItemText, write=FOnBeforeDrawItemText};
	__property TTMSFNCListBoxAfterDrawItemTextEvent OnAfterDrawItemText = {read=FOnAfterDrawItemText, write=FOnAfterDrawItemText};
	__property TTMSFNCListBoxAfterDrawSortIndicatorEvent OnAfterDrawSortIndicator = {read=FOnAfterDrawSortIndicator, write=FOnAfterDrawSortIndicator};
	__property TTMSFNCListBoxBeforeDrawSortIndicatorEvent OnBeforeDrawSortIndicator = {read=FOnBeforeDrawSortIndicator, write=FOnBeforeDrawSortIndicator};
	__property TTMSFNCListBoxItemAnchorClickEvent OnItemAnchorClick = {read=FOnItemAnchorClick, write=FOnItemAnchorClick};
	__property TTMSFNCListBoxItemClickEvent OnItemClick = {read=FOnItemClick, write=FOnItemClick};
	__property TTMSFNCListBoxItemMouseEnterEvent OnItemMouseEnter = {read=FOnItemMouseEnter, write=FOnItemMouseEnter};
	__property TTMSFNCListBoxItemMouseLeaveEvent OnItemMouseLeave = {read=FOnItemMouseLeave, write=FOnItemMouseLeave};
	__property TTMSFNCListBoxItemClickEvent OnItemDblClick = {read=FOnItemDblClick, write=FOnItemDblClick};
	__property TTMSFNCListBoxScrollEvent OnVScroll = {read=FOnVScroll, write=FOnVScroll};
	__property TTMSFNCListBoxBeforeReorderItemEvent OnBeforeReorderItem = {read=FOnBeforeReorderItem, write=FOnBeforeReorderItem};
	__property TTMSFNCListBoxAfterReorderItemEvent OnAfterReorderItem = {read=FOnAfterReorderItem, write=FOnAfterReorderItem};
	__property TTMSFNCListBoxBeforeDropItemEvent OnBeforeDropItem = {read=FOnBeforeDropItem, write=FOnBeforeDropItem};
	__property TTMSFNCListBoxAfterDropItemEvent OnAfterDropItem = {read=FOnAfterDropItem, write=FOnAfterDropItem};
	__property TTMSFNCListBoxBeforeCutToClipboardEvent OnBeforeCutToClipboard = {read=FOnBeforeCutToClipboard, write=FOnBeforeCutToClipboard};
	__property TTMSFNCListBoxBeforeCopyToClipboardEvent OnBeforeCopyToClipboard = {read=FOnBeforeCopyToClipboard, write=FOnBeforeCopyToClipboard};
	__property TTMSFNCListBoxBeforePasteFromClipboardEvent OnBeforePasteFromClipboard = {read=FOnBeforePasteFromClipboard, write=FOnBeforePasteFromClipboard};
	__property TTMSFNCListBoxAfterCutToClipboardEvent OnAfterCutToClipboard = {read=FOnAfterCutToClipboard, write=FOnAfterCutToClipboard};
	__property TTMSFNCListBoxAfterCopyToClipboardEvent OnAfterCopyToClipboard = {read=FOnAfterCopyToClipboard, write=FOnAfterCopyToClipboard};
	__property TTMSFNCListBoxAfterPasteFromClipboardEvent OnAfterPasteFromClipboard = {read=FOnAfterPasteFromClipboard, write=FOnAfterPasteFromClipboard};
	__property TTMSFNCListBoxHeaderAnchorClickEvent OnHeaderAnchorClick = {read=FOnHeaderAnchorClick, write=FOnHeaderAnchorClick};
	
public:
	__fastcall virtual TTMSFNCCustomListBox(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCCustomListBox();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	virtual TTMSFNCListBoxItem* __fastcall AddItem(System::UnicodeString AText = System::UnicodeString());
	virtual TTMSFNCListBoxItem* __fastcall XYToItem(float X, float Y);
	virtual int __fastcall XYToItemIndex(float X, float Y);
	virtual int __fastcall SelectedItemCount();
	virtual TTMSFNCListBoxCopyItems* __fastcall GetItemsFromClipboard();
	virtual TTMSFNCListBoxItem* __fastcall LookupItem(System::UnicodeString ALookupString, bool ACaseSensitive = false, bool AAutoSelect = false);
	virtual bool __fastcall IsItemSelectable(TTMSFNCListBoxItem* AItem);
	virtual void __fastcall RemoveItem(TTMSFNCListBoxItem* AItem);
	virtual void __fastcall DoEnter();
	virtual void __fastcall BeginUpdate();
	virtual void __fastcall EndUpdate();
	virtual void __fastcall InitSample();
	virtual void __fastcall UnSelectAllItems();
	virtual void __fastcall LoadSettingsFromFile(System::UnicodeString AFileName);
	virtual void __fastcall LoadSettingsFromStream(System::Classes::TStream* AStream);
	virtual void __fastcall ScrollToItem(int AItemIndex);
	virtual void __fastcall SelectItem(int AItemIndex);
	virtual void __fastcall SelectItems(TTMSFNCListBoxItemArray AItemIndexes);
	virtual void __fastcall LoadFromStrings(System::Classes::TStrings* AStrings);
	virtual void __fastcall SaveToStrings(System::Classes::TStrings* AStrings);
	virtual void __fastcall LoadFromFile(System::UnicodeString AFileName);
	virtual void __fastcall SaveToFile(System::UnicodeString AFileName, bool ATextOnly = true);
	virtual void __fastcall LoadFromStream(System::Classes::TStream* AStream);
	virtual void __fastcall SaveToStream(System::Classes::TStream* AStream, bool ATextOnly = true);
	virtual void __fastcall CutToClipboard(bool ATextOnly = false);
	virtual void __fastcall CopyToClipboard(bool ATextOnly = false);
	virtual void __fastcall PasteFromClipboard();
	HIDESBASE virtual void __fastcall Sort(bool ACaseSensitive = true, TTMSFNCListBoxItemsSortMode ASortingMode = (TTMSFNCListBoxItemsSortMode)(0x0));
	virtual void __fastcall ClearSorting();
	virtual void __fastcall ApplyFilter();
	virtual void __fastcall RemoveFilter();
	virtual void __fastcall RemoveFilters();
	__property TTMSFNCListBoxFilteredItems FilteredItems = {read=GetFilteredItems};
	__property TTMSFNCListBoxFilter* Filter = {read=FFilter};
	__property TTMSFNCListBoxItem* SelectedItem = {read=GetSelectedItem, write=SetSelectedItem};
	__property TTMSFNCListBoxItem* SelectedItems[int AIndex] = {read=GetSelItem};
	__property Fmx::Tmsfnctreeview::TTMSFNCTreeView* TreeView = {read=FTreeView};
	__property TTMSFNCListBoxItemsSortMode SortMode = {read=FSortMode, nodefault};
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


class PASCALIMPLEMENTATION TTMSFNCListBox : public TTMSFNCCustomListBox
{
	typedef TTMSFNCCustomListBox inherited;
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	
__published:
	__property Fill;
	__property Stroke;
	__property BitmapContainer;
	__property ItemsAppearance;
	__property DefaultItem;
	__property Items;
	__property Header;
	__property ItemIndex = {default=-1};
	__property Interaction;
	__property OnItemSelected;
	__property Version = {default=0};
	__property VerticalScrollBarVisible = {default=1};
	__property GlobalFont;
	__property OnNeedFilterDropDownData;
	__property OnFilterSelect;
	__property OnBeforeDrawItem;
	__property OnAfterDrawItem;
	__property OnItemCompare;
	__property OnAfterDrawItemIcon;
	__property OnBeforeDrawItemIcon;
	__property OnBeforeDrawItemText;
	__property OnAfterDrawItemText;
	__property OnAfterDrawSortIndicator;
	__property OnBeforeDrawSortIndicator;
	__property OnItemAnchorClick;
	__property OnItemClick;
	__property OnItemMouseLeave;
	__property OnItemMouseEnter;
	__property OnItemDblClick;
	__property OnVScroll;
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
	/* TTMSFNCCustomListBox.Create */ inline __fastcall virtual TTMSFNCListBox(System::Classes::TComponent* AOwner) : TTMSFNCCustomListBox(AOwner) { }
	/* TTMSFNCCustomListBox.Destroy */ inline __fastcall virtual ~TTMSFNCListBox() { }
	
};


//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x4);
static constexpr System::Int8 BLD_VER = System::Int8(0x1);
#define CLP_FMT u"#LISTBOX#"
}	/* namespace Tmsfnclistbox */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCLISTBOX)
using namespace Fmx::Tmsfnclistbox;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfnclistboxHPP
