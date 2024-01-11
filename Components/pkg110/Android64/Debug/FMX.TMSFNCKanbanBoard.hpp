// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCKanbanBoard.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfnckanbanboardHPP
#define Fmx_TmsfnckanbanboardHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <FMX.TMSFNCCustomControl.hpp>
#include <FMX.TMSFNCPersistence.hpp>
#include <FMX.TMSFNCCustomScrollControl.hpp>
#include <FMX.TMSFNCBitmapContainer.hpp>
#include <FMX.TMSFNCCustomComponent.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.Controls.hpp>
#include <FMX.TMSFNCGraphics.hpp>
#include <FMX.TMSFNCTableView.hpp>
#include <FMX.TMSFNCTreeViewData.hpp>
#include <FMX.ExtCtrls.hpp>
#include <FMX.TMSFNCToolBar.hpp>
#include <FMX.Types.hpp>
#include <System.UITypes.hpp>
#include <System.Types.hpp>
#include <System.Generics.Collections.hpp>
#include <FMX.TMSFNCGraphicsTypes.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>
#include <FMX.TMSFNCTreeView.hpp>
#include <FMX.TMSFNCCustomTreeView.hpp>
#include <FMX.TMSFNCTreeViewBase.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfnckanbanboard
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCKanbanBoardTableView;
class DELPHICLASS TTMSFNCKanbanBoardItem;
class DELPHICLASS TTMSFNCKanbanBoardItems;
class DELPHICLASS TTMSFNCKanbanBoardColumn;
class DELPHICLASS TTMSFNCKanbanBoardColumns;
class DELPHICLASS TTMSFNCKanbanBoardColumnsAppearance;
class DELPHICLASS TTMSFNCKanbanBoardItemsAppearance;
class DELPHICLASS TTMSFNCKanbanBoardInteraction;
class DELPHICLASS TTMSFNCKanbanBoardTreeViewTableView;
class DELPHICLASS TTMSFNCKanbanBoardAdapter;
class DELPHICLASS TTMSFNCCustomKanbanBoard;
class DELPHICLASS TTMSFNCKanbanBoard;
//-- type declarations -------------------------------------------------------
enum DECLSPEC_DENUM TTMSFNCKanbanBoardItemCheckType : unsigned char { kbictNone, kbictCheckBox, kbictRadioButton };

enum DECLSPEC_DENUM TTMSFNCKanbanBoardMarkType : unsigned char { kbmtLeft, kbmtTop, kbmtRight, kbmtBottom };

typedef System::Set<TTMSFNCKanbanBoardMarkType, TTMSFNCKanbanBoardMarkType::kbmtLeft, TTMSFNCKanbanBoardMarkType::kbmtBottom> TTMSFNCKanbanBoardMarkTypes;

class PASCALIMPLEMENTATION TTMSFNCKanbanBoardTableView : public Fmx::Tmsfnctableview::TTMSFNCTableView
{
	typedef Fmx::Tmsfnctableview::TTMSFNCTableView inherited;
	
private:
	System::Types::TRectF FOriginalBoundsRect;
	TTMSFNCCustomKanbanBoard* FKanbanBoard;
	TTMSFNCKanbanBoardColumn* FColumn;
	
protected:
	virtual void __fastcall DoAfterDropItem(Fmx::Tmsfnctableview::TTMSFNCTableViewItem* AFromItem, Fmx::Tmsfnctableview::TTMSFNCTableViewItem* AToItem);
	virtual void __fastcall DragItemMove(Fmx::Tmsfnctableview::TTMSFNCTableViewItem* AFromItem, Fmx::Tmsfnctableview::TTMSFNCTableViewItem* AToItem);
	virtual void __fastcall DragItemAdd(Fmx::Tmsfnctableview::TTMSFNCTableViewItem* ANewItem, Fmx::Tmsfnctableview::TTMSFNCTableViewItem* AAssignItem, Fmx::Tmsfnctableview::TTMSFNCTableViewItem* AInsertItem);
	virtual void __fastcall DragItemDelete(Fmx::Tmsfnctableview::TTMSFNCTableViewItem* AItem);
	virtual void __fastcall DoBeforeApplyFilter(Fmx::Tmsfnctableview::TTMSFNCTableViewFilterData* AFilter, bool AAllow);
	virtual void __fastcall DoAfterApplyFilter(Fmx::Tmsfnctableview::TTMSFNCTableViewFilterData* AFilter);
	virtual void __fastcall DoDoneButtonClicked(System::TObject* Sender);
	virtual void __fastcall CustomizeButtons();
	virtual void __fastcall DoColumnSort(System::TObject* Sender, int AColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNodesSortMode ASortMode);
	virtual Fmx::Tmsfnctableview::TTMSFNCTreeViewTableView* __fastcall CreateTreeView();
public:
	/* TTMSFNCCustomTableView.Create */ inline __fastcall virtual TTMSFNCKanbanBoardTableView(System::Classes::TComponent* AOwner) : Fmx::Tmsfnctableview::TTMSFNCTableView(AOwner) { }
	/* TTMSFNCCustomTableView.Destroy */ inline __fastcall virtual ~TTMSFNCKanbanBoardTableView() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCKanbanBoardItem : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	NativeInt FTag;
	System::UnicodeString FDataString;
	System::TObject* FDataObject;
	NativeInt FDataInteger;
	TTMSFNCKanbanBoardColumn* FColumn;
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
	TTMSFNCKanbanBoardItemCheckType FCheckType;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign FVerticalTextAlign;
	System::UnicodeString FTitle;
	TTMSFNCKanbanBoardMarkTypes FMarkType;
	System::Uitypes::TAlphaColor FMarkColor;
	float FMarkSizeLeft;
	float FMarkSizeTop;
	float FMarkSizeRight;
	float FMarkSizeBottom;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextTrimming FTitleTrimming;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign FTitleHorizontalTextAlign;
	System::Uitypes::TAlphaColor FDisabledTitleColor;
	bool FTitleWordWrapping;
	System::Uitypes::TAlphaColor FSelectedTitleColor;
	System::Uitypes::TAlphaColor FTitleColor;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign FTitleVerticalTextAlign;
	bool FExpanded;
	bool FUseDefaultAppearance;
	System::Uitypes::TAlphaColor FColor;
	bool FExpandable;
	System::Uitypes::TAlphaColor FMarkColorBottom;
	System::Uitypes::TAlphaColor FMarkColorTop;
	System::Uitypes::TAlphaColor FMarkColorLeft;
	System::Uitypes::TAlphaColor FMarkColorRight;
	bool FMovable;
	int FRounding;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsCorners FRoundingCorners;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsCorners FMarkCorners;
	int FMarkRounding;
	System::Uitypes::TAlphaColor FDisabledStrokeColor;
	System::Uitypes::TAlphaColor FSelectedStrokeColor;
	System::Uitypes::TAlphaColor FStrokeColor;
	System::Uitypes::TAlphaColor FDisabledColor;
	System::Uitypes::TAlphaColor FSelectedColor;
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
	void __fastcall SetCheckType(const TTMSFNCKanbanBoardItemCheckType Value);
	void __fastcall SetVerticalTextAlign(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign Value);
	void __fastcall SetTitle(const System::UnicodeString Value);
	void __fastcall SetMarkType(const TTMSFNCKanbanBoardMarkTypes Value);
	void __fastcall SetMarkColor(const System::Uitypes::TAlphaColor Value);
	bool __fastcall IsMarkSizeLeftStored();
	void __fastcall SetMarkSizeLeft(const float Value);
	void __fastcall SetDisabledTitleColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetSelectedTitleColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetTitleColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetTitleHorizontalTextAlign(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign Value);
	void __fastcall SetTitleTrimming(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextTrimming Value);
	void __fastcall SetTitleVerticalTextAlign(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign Value);
	void __fastcall SetTitleWordWrapping(const bool Value);
	void __fastcall SetExpanded(const bool Value);
	void __fastcall SetColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetUseDefaultAppearance(const bool Value);
	void __fastcall SetExpandable(const bool Value);
	void __fastcall SetMarkColorBottom(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetMarkColorLeft(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetMarkColorRight(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetMarkColorTop(const System::Uitypes::TAlphaColor Value);
	bool __fastcall IsMarkSizeBottomStored();
	bool __fastcall IsMarkSizeRightStored();
	bool __fastcall IsMarkSizeTopStored();
	void __fastcall SetMarkSizeBottom(const float Value);
	void __fastcall SetMarkSizeRight(const float Value);
	void __fastcall SetMarkSizeTop(const float Value);
	void __fastcall SetRounding(const int Value);
	void __fastcall SetRoundingCorners(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsCorners Value);
	void __fastcall SetMarkCorners(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsCorners Value);
	void __fastcall SetMarkRounding(const int Value);
	void __fastcall SetDisabledStrokeColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetSelectedStrokeColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetStrokeColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetDisabledColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetSelectedColor(const System::Uitypes::TAlphaColor Value);
	
protected:
	void __fastcall UpdateItem();
	HIDESBASE void __fastcall Changed(System::TObject* Sender);
	void __fastcall BitmapChanged(System::TObject* Sender);
	void __fastcall TemplateItemsChanged(System::TObject* Sender);
	__property bool Checked = {read=FChecked, write=SetChecked, default=0};
	__property TTMSFNCKanbanBoardItemCheckType CheckType = {read=FCheckType, write=SetCheckType, default=0};
	
public:
	__fastcall virtual TTMSFNCKanbanBoardItem(System::Classes::TCollection* Collection);
	__fastcall virtual ~TTMSFNCKanbanBoardItem();
	TTMSFNCKanbanBoardColumn* __fastcall GetColumn();
	TTMSFNCKanbanBoardTableView* __fastcall GetTableView();
	System::UnicodeString __fastcall GetText();
	Fmx::Tmsfnctableview::TTMSFNCTableViewItem* __fastcall GetTableViewItem();
	virtual System::UnicodeString __fastcall SaveToString(bool ATextOnly = true);
	virtual bool __fastcall IsSelected();
	virtual TTMSFNCKanbanBoardItem* __fastcall MoveItem(TTMSFNCKanbanBoardColumn* AToColumn, int AIndex = 0xffffffff);
	virtual TTMSFNCKanbanBoardItem* __fastcall CopyItem(TTMSFNCKanbanBoardColumn* AToColumn, int AIndex = 0xffffffff);
	void __fastcall SelectItem();
	virtual void __fastcall LoadFromString(System::UnicodeString AString);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	virtual void __fastcall AssignData(System::Classes::TPersistent* Source);
	__property void * DataPointer = {read=FDataPointer, write=FDataPointer};
	__property bool DataBoolean = {read=FDataBoolean, write=FDataBoolean, nodefault};
	__property System::TObject* DataObject = {read=FDataObject, write=FDataObject};
	__property System::UnicodeString DataString = {read=FDataString, write=FDataString};
	__property NativeInt DataInteger = {read=FDataInteger, write=FDataInteger};
	__property System::UnicodeString DBKey = {read=FDBKey, write=FDBKey};
	__property Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* BitmapContainer = {read=GetBitmapContainer};
	__property System::UnicodeString StrippedHTMLText = {read=GetStrippedHTMLText};
	__property TTMSFNCKanbanBoardColumn* Column = {read=GetColumn};
	__property TTMSFNCKanbanBoardTableView* TableView = {read=GetTableView};
	
__published:
	__property bool Movable = {read=FMovable, write=FMovable, default=1};
	__property System::UnicodeString Text = {read=FText, write=SetText};
	__property System::UnicodeString Title = {read=FTitle, write=SetTitle};
	__property bool Expanded = {read=FExpanded, write=SetExpanded, default=1};
	__property bool Expandable = {read=FExpandable, write=SetExpandable, default=0};
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
	__property NativeInt Tag = {read=FTag, write=FTag, default=0};
	__property bool UseDefaultAppearance = {read=FUseDefaultAppearance, write=SetUseDefaultAppearance, default=1};
	__property System::Uitypes::TAlphaColor Color = {read=FColor, write=SetColor, default=-1};
	__property System::Uitypes::TAlphaColor SelectedColor = {read=FSelectedColor, write=SetSelectedColor, nodefault};
	__property System::Uitypes::TAlphaColor DisabledColor = {read=FDisabledColor, write=SetDisabledColor, default=-5658199};
	__property TTMSFNCKanbanBoardMarkTypes MarkType = {read=FMarkType, write=SetMarkType, default=0};
	__property System::Uitypes::TAlphaColor MarkColor = {read=FMarkColor, write=SetMarkColor, default=-65536};
	__property System::Uitypes::TAlphaColor MarkColorLeft = {read=FMarkColorLeft, write=SetMarkColorLeft, default=0};
	__property System::Uitypes::TAlphaColor MarkColorRight = {read=FMarkColorRight, write=SetMarkColorRight, default=0};
	__property System::Uitypes::TAlphaColor MarkColorTop = {read=FMarkColorTop, write=SetMarkColorTop, default=0};
	__property System::Uitypes::TAlphaColor MarkColorBottom = {read=FMarkColorBottom, write=SetMarkColorBottom, default=0};
	__property float MarkSizeLeft = {read=FMarkSizeLeft, write=SetMarkSizeLeft, stored=IsMarkSizeLeftStored};
	__property float MarkSizeTop = {read=FMarkSizeTop, write=SetMarkSizeTop, stored=IsMarkSizeTopStored};
	__property float MarkSizeRight = {read=FMarkSizeRight, write=SetMarkSizeRight, stored=IsMarkSizeRightStored};
	__property float MarkSizeBottom = {read=FMarkSizeBottom, write=SetMarkSizeBottom, stored=IsMarkSizeBottomStored};
	__property int MarkRounding = {read=FMarkRounding, write=SetMarkRounding, default=0};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsCorners MarkCorners = {read=FMarkCorners, write=SetMarkCorners, nodefault};
	__property bool TitleWordWrapping = {read=FTitleWordWrapping, write=SetTitleWordWrapping, default=1};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextTrimming TitleTrimming = {read=FTitleTrimming, write=SetTitleTrimming, default=0};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign TitleHorizontalTextAlign = {read=FTitleHorizontalTextAlign, write=SetTitleHorizontalTextAlign, default=1};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign TitleVerticalTextAlign = {read=FTitleVerticalTextAlign, write=SetTitleVerticalTextAlign, default=1};
	__property System::Uitypes::TAlphaColor TitleColor = {read=FTitleColor, write=SetTitleColor, default=-16777216};
	__property System::Uitypes::TAlphaColor SelectedTitleColor = {read=FSelectedTitleColor, write=SetSelectedTitleColor, default=-1};
	__property System::Uitypes::TAlphaColor DisabledTitleColor = {read=FDisabledTitleColor, write=SetDisabledTitleColor, default=-4144960};
	__property int Rounding = {read=FRounding, write=SetRounding, default=0};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsCorners RoundingCorners = {read=FRoundingCorners, write=SetRoundingCorners, nodefault};
	__property System::Uitypes::TAlphaColor StrokeColor = {read=FStrokeColor, write=SetStrokeColor, default=-5658199};
	__property System::Uitypes::TAlphaColor DisabledStrokeColor = {read=FDisabledStrokeColor, write=SetDisabledStrokeColor, default=-5658199};
	__property System::Uitypes::TAlphaColor SelectedStrokeColor = {read=FSelectedStrokeColor, write=SetSelectedStrokeColor, nodefault};
};


enum DECLSPEC_DENUM TTMSFNCKanbanBoardItemsSortMode : unsigned char { kbismAscending, kbismDescending };

enum DECLSPEC_DENUM TTMSFNCKanbanBoardItemsSortKind : unsigned char { kbiskNone, kbiskAscending, kbiskDescending };

enum DECLSPEC_DENUM TTMSFNCKanbanBoardSorting : unsigned char { kbsNone, kbsNormal, kbsNormalCaseSensitive };

class PASCALIMPLEMENTATION TTMSFNCKanbanBoardItems : public Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCKanbanBoardItem*>
{
	typedef Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCKanbanBoardItem*> inherited;
	
public:
	TTMSFNCKanbanBoardItem* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCKanbanBoardColumn* FColumn;
	HIDESBASE TTMSFNCKanbanBoardItem* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCKanbanBoardItem* const Value);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall GetItemClass();
	virtual int __fastcall Compare(TTMSFNCKanbanBoardItem* AItem1, TTMSFNCKanbanBoardItem* AItem2, bool ACaseSensitive = true, TTMSFNCKanbanBoardItemsSortMode ASortingMode = (TTMSFNCKanbanBoardItemsSortMode)(0x0));
	virtual void __fastcall QuickSort(int L, int R, bool ACaseSensitive = true, TTMSFNCKanbanBoardItemsSortMode ASortingMode = (TTMSFNCKanbanBoardItemsSortMode)(0x0));
	
public:
	TTMSFNCKanbanBoardColumn* __fastcall GetColumn();
	TTMSFNCKanbanBoardTableView* __fastcall GetTableView();
	__fastcall TTMSFNCKanbanBoardItems(TTMSFNCKanbanBoardColumn* AColumn);
	HIDESBASE virtual TTMSFNCKanbanBoardItem* __fastcall Add();
	HIDESBASE TTMSFNCKanbanBoardItem* __fastcall Insert(int Index);
	HIDESBASE virtual void __fastcall Clear();
	HIDESBASE void __fastcall Sort(bool ACaseSensitive = true, TTMSFNCKanbanBoardItemsSortMode ASortingMode = (TTMSFNCKanbanBoardItemsSortMode)(0x0));
	__property TTMSFNCKanbanBoardItem* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	__property TTMSFNCKanbanBoardColumn* Column = {read=GetColumn};
	__property TTMSFNCKanbanBoardTableView* TableView = {read=GetTableView};
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCKanbanBoardItems() { }
	
};


typedef System::DynamicArray<int> TTMSFNCKanbanBoardIntegerArray;

typedef System::DynamicArray<TTMSFNCKanbanBoardItem*> TTMSFNCKanbanBoardItemArray;

typedef TTMSFNCKanbanBoardItemArray TTMSFNCKanbanBoardSelectedItems;

class PASCALIMPLEMENTATION TTMSFNCKanbanBoardColumn : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	bool FBlockUpdate;
	NativeInt FTag;
	System::UnicodeString FDataString;
	System::TObject* FDataObject;
	NativeInt FDataInteger;
	TTMSFNCKanbanBoardTableView* FTableView;
	TTMSFNCCustomKanbanBoard* FKanbanBoard;
	System::UnicodeString FHeaderText;
	System::UnicodeString FName;
	System::UnicodeString FDBKey;
	bool FDataBoolean;
	bool FHeaderWordWrapping;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign FHeaderVerticalTextAlign;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextTrimming FHeaderTrimming;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign FHeaderHorizontalTextAlign;
	double FWidth;
	bool FVisible;
	bool FUseDefaultAppearance;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FFooterFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FFooterStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FHeaderFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FHeaderStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FHeaderFont;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FFooterFont;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FFont;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FStroke;
	void *FDataPointer;
	TTMSFNCKanbanBoardItems* FItems;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign FFooterVerticalTextAlign;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextTrimming FFooterTrimming;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign FFooterHorizontalTextAlign;
	System::UnicodeString FFooterText;
	bool FFooterWordWrapping;
	bool FFooterVisible;
	bool FHeaderVisible;
	bool FExpanded;
	bool FExpandable;
	double FCollapsedWidth;
	void __fastcall SetHeaderText(const System::UnicodeString Value);
	void __fastcall SetName(const System::UnicodeString Value);
	void __fastcall SetHeaderHorizontalTextAlign(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign Value);
	void __fastcall SetHeaderTrimming(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextTrimming Value);
	void __fastcall SetHeaderVerticalTextAlign(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign Value);
	void __fastcall SetHeaderWordWrapping(const bool Value);
	void __fastcall SetWidth(const double Value);
	void __fastcall SetVisible(const bool Value);
	void __fastcall SetUseDefaultAppearance(const bool Value);
	void __fastcall SetFooterFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetFooterStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetHeaderFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetHeaderStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetFooterFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetHeaderFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetItems(TTMSFNCKanbanBoardItems* const Value);
	Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* __fastcall GetBitmapContainer();
	TTMSFNCKanbanBoardItem* __fastcall GetSelectedItem();
	TTMSFNCKanbanBoardItem* __fastcall GetSelItem(int AIndex);
	void __fastcall SetSelectedItem(TTMSFNCKanbanBoardItem* const Value);
	int __fastcall GetItemIndex();
	void __fastcall SetItemIndex(const int Value);
	void __fastcall SetFooterHorizontalTextAlign(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign Value);
	void __fastcall SetFooterText(const System::UnicodeString Value);
	void __fastcall SetFooterTrimming(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextTrimming Value);
	void __fastcall SetFooterVerticalTextAlign(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign Value);
	void __fastcall SetFooterWordWrapping(const bool Value);
	void __fastcall SetFooterVisible(const bool Value);
	void __fastcall SetHeaderVisible(const bool Value);
	void __fastcall SetExpandable(const bool Value);
	void __fastcall SetExpanded(const bool Value);
	void __fastcall SetCollapsedWidth(const double Value);
	bool __fastcall IsCollapsedWidthStored();
	Fmx::Tmsfnctableview::TTMSFNCTableViewFilter* __fastcall GetFilter();
	bool __fastcall GetShowFilterButton();
	void __fastcall SetFilter(Fmx::Tmsfnctableview::TTMSFNCTableViewFilter* const Value);
	void __fastcall SetShowFilterButton(const bool Value);
	TTMSFNCKanbanBoardSorting __fastcall GetSorting();
	void __fastcall SetSorting(const TTMSFNCKanbanBoardSorting Value);
	Fmx::Tmsfnctoolbar::TTMSFNCToolBarButton* __fastcall GetDoneButton();
	Fmx::Tmsfnctoolbar::TTMSFNCToolBarButton* __fastcall GetFilterButton();
	
protected:
	void __fastcall UpdateColumn(bool AUpdate = true, bool ARealign = true);
	HIDESBASE void __fastcall Changed(System::TObject* Sender);
	virtual System::UnicodeString __fastcall GetHeaderText();
	virtual System::UnicodeString __fastcall GetHeaderColumnText();
	virtual System::UnicodeString __fastcall GetFooterText();
	virtual System::UnicodeString __fastcall GetFooterColumnText();
	virtual TTMSFNCKanbanBoardTableView* __fastcall CreateTableView();
	virtual TTMSFNCKanbanBoardItems* __fastcall CreateItems();
	virtual void __fastcall DoAfterDrawItem(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, Fmx::Tmsfnctableview::TTMSFNCTableViewItem* AItem);
	virtual void __fastcall DoBeforeDrawItem(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, Fmx::Tmsfnctableview::TTMSFNCTableViewItem* AItem, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoAfterDrawItemText(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, Fmx::Tmsfnctableview::TTMSFNCTableViewItem* AItem, System::UnicodeString AText);
	virtual void __fastcall DoBeforeDrawItemText(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, Fmx::Tmsfnctableview::TTMSFNCTableViewItem* AItem, System::UnicodeString AText, bool &AAllow);
	virtual void __fastcall DoAfterDrawItemIcon(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, Fmx::Tmsfnctableview::TTMSFNCTableViewItem* AItem, Fmx::Tmsfnctypes::TTMSFNCBitmap* AIcon);
	virtual void __fastcall DoBeforeDrawItemIcon(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, Fmx::Tmsfnctableview::TTMSFNCTableViewItem* AItem, Fmx::Tmsfnctypes::TTMSFNCBitmap* AIcon, bool &AAllow);
	virtual void __fastcall DoAfterDrawItemTitle(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, Fmx::Tmsfnctableview::TTMSFNCTableViewItem* AItem, System::UnicodeString ATitle);
	virtual void __fastcall DoBeforeDrawItemTitle(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, Fmx::Tmsfnctableview::TTMSFNCTableViewItem* AItem, System::UnicodeString ATitle, bool &AAllow);
	virtual void __fastcall DoBeforeDropItem(System::TObject* Sender, Fmx::Tmsfnctableview::TTMSFNCTableViewItem* AFromItem, Fmx::Tmsfnctableview::TTMSFNCTableViewItem* AToItem, bool &ACanDrop);
	virtual void __fastcall DoAfterDropItem(System::TObject* Sender, Fmx::Tmsfnctableview::TTMSFNCTableViewItem* AFromItem, Fmx::Tmsfnctableview::TTMSFNCTableViewItem* AToItem);
	void __fastcall DoClick(System::TObject* Sender);
	void __fastcall DoDblClick(System::TObject* Sender);
	virtual void __fastcall DoHeaderAnchorClick(System::TObject* Sender, System::UnicodeString AAnchor);
	virtual void __fastcall DoItemTextAnchorClick(System::TObject* Sender, Fmx::Tmsfnctableview::TTMSFNCTableViewItem* AItem, System::UnicodeString AAnchor);
	virtual void __fastcall DoItemTitleAnchorClick(System::TObject* Sender, Fmx::Tmsfnctableview::TTMSFNCTableViewItem* AItem, System::UnicodeString AAnchor);
	void __fastcall DoItemClick(System::TObject* Sender, Fmx::Tmsfnctableview::TTMSFNCTableViewItem* AItem);
	void __fastcall DoItemDblClick(System::TObject* Sender, Fmx::Tmsfnctableview::TTMSFNCTableViewItem* AItem);
	void __fastcall DoKeyDown(System::TObject* Sender, System::Word &Key, System::WideChar &KeyChar, System::Classes::TShiftState Shift);
	void __fastcall DoKeyUp(System::TObject* Sender, System::Word &Key, System::WideChar &KeyChar, System::Classes::TShiftState Shift);
	
public:
	TTMSFNCCustomKanbanBoard* __fastcall GetKanbanBoard();
	TTMSFNCKanbanBoardTableView* __fastcall GetTableView();
	TTMSFNCKanbanBoardItem* __fastcall FindItem(int AIndex);
	TTMSFNCKanbanBoardItem* __fastcall FindItemByNode(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode);
	__fastcall virtual TTMSFNCKanbanBoardColumn(System::Classes::TCollection* Collection);
	__fastcall virtual ~TTMSFNCKanbanBoardColumn();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	virtual void __fastcall UpdateWidth(double AWidth);
	__property void * DataPointer = {read=FDataPointer, write=FDataPointer};
	__property bool DataBoolean = {read=FDataBoolean, write=FDataBoolean, nodefault};
	__property System::TObject* DataObject = {read=FDataObject, write=FDataObject};
	__property System::UnicodeString DataString = {read=FDataString, write=FDataString};
	__property NativeInt DataInteger = {read=FDataInteger, write=FDataInteger};
	__property System::UnicodeString DBKey = {read=FDBKey, write=FDBKey};
	__property Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* BitmapContainer = {read=GetBitmapContainer};
	__property TTMSFNCCustomKanbanBoard* KanbanBoard = {read=GetKanbanBoard};
	__property TTMSFNCKanbanBoardTableView* TableView = {read=GetTableView};
	virtual TTMSFNCKanbanBoardItem* __fastcall AddItem(System::UnicodeString AText = System::UnicodeString());
	virtual TTMSFNCKanbanBoardItem* __fastcall XYToItem(float X, float Y);
	virtual int __fastcall XYToItemIndex(float X, float Y);
	virtual int __fastcall SelectedItemCount();
	virtual TTMSFNCKanbanBoardItem* __fastcall LookupItem(System::UnicodeString ALookupString, bool ACaseSensitive = false, bool AAutoSelect = false);
	virtual TTMSFNCKanbanBoardItemArray __fastcall GetSelectedItems();
	virtual TTMSFNCKanbanBoardItem* __fastcall MoveItem(TTMSFNCKanbanBoardItem* AItem, TTMSFNCKanbanBoardColumn* AToColumn, int AIndex = 0xffffffff);
	virtual TTMSFNCKanbanBoardItem* __fastcall CopyItem(TTMSFNCKanbanBoardItem* AItem, TTMSFNCKanbanBoardColumn* AToColumn, int AIndex = 0xffffffff);
	virtual void __fastcall StartFiltering();
	virtual void __fastcall StopFiltering();
	virtual void __fastcall RemoveItem(TTMSFNCKanbanBoardItem* AItem);
	virtual void __fastcall EnableInteraction();
	virtual void __fastcall DisableInteraction();
	virtual void __fastcall ScrollToItem(int AItemIndex);
	virtual void __fastcall ClearSelection();
	virtual void __fastcall StartEditMode();
	virtual void __fastcall StopEditMode();
	virtual void __fastcall ToggleEditMode();
	virtual void __fastcall ApplyFilter();
	virtual void __fastcall RemoveFilter();
	virtual void __fastcall RemoveFilters();
	virtual void __fastcall SelectItem(int AItemIndex);
	virtual void __fastcall SelectItems(TTMSFNCKanbanBoardIntegerArray AItemIndexes);
	__property TTMSFNCKanbanBoardItem* SelectedItem = {read=GetSelectedItem, write=SetSelectedItem};
	__property TTMSFNCKanbanBoardItem* SelectedItems[int AIndex] = {read=GetSelItem};
	__property int ItemIndex = {read=GetItemIndex, write=SetItemIndex, nodefault};
	__property Fmx::Tmsfnctoolbar::TTMSFNCToolBarButton* DoneButton = {read=GetDoneButton};
	__property Fmx::Tmsfnctoolbar::TTMSFNCToolBarButton* FilterButton = {read=GetFilterButton};
	
__published:
	__property System::UnicodeString Name = {read=FName, write=SetName};
	__property System::UnicodeString HeaderText = {read=FHeaderText, write=SetHeaderText};
	__property System::UnicodeString FooterText = {read=FFooterText, write=SetFooterText};
	__property NativeInt Tag = {read=FTag, write=FTag, default=0};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign HeaderHorizontalTextAlign = {read=FHeaderHorizontalTextAlign, write=SetHeaderHorizontalTextAlign, default=0};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign HeaderVerticalTextAlign = {read=FHeaderVerticalTextAlign, write=SetHeaderVerticalTextAlign, default=0};
	__property bool HeaderWordWrapping = {read=FHeaderWordWrapping, write=SetHeaderWordWrapping, default=0};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextTrimming HeaderTrimming = {read=FHeaderTrimming, write=SetHeaderTrimming, default=1};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign FooterHorizontalTextAlign = {read=FFooterHorizontalTextAlign, write=SetFooterHorizontalTextAlign, default=0};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign FooterVerticalTextAlign = {read=FFooterVerticalTextAlign, write=SetFooterVerticalTextAlign, default=0};
	__property bool FooterWordWrapping = {read=FFooterWordWrapping, write=SetFooterWordWrapping, default=0};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextTrimming FooterTrimming = {read=FFooterTrimming, write=SetFooterTrimming, default=1};
	__property double Width = {read=FWidth, write=SetWidth};
	__property double CollapsedWidth = {read=FCollapsedWidth, write=SetCollapsedWidth, stored=IsCollapsedWidthStored};
	__property bool Visible = {read=FVisible, write=SetVisible, default=1};
	__property bool FooterVisible = {read=FFooterVisible, write=SetFooterVisible, default=0};
	__property bool HeaderVisible = {read=FHeaderVisible, write=SetHeaderVisible, default=1};
	__property bool UseDefaultAppearance = {read=FUseDefaultAppearance, write=SetUseDefaultAppearance, default=1};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* Fill = {read=FFill, write=SetFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* Stroke = {read=FStroke, write=SetStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* HeaderFill = {read=FHeaderFill, write=SetHeaderFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* HeaderStroke = {read=FHeaderStroke, write=SetHeaderStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* HeaderFont = {read=FHeaderFont, write=SetHeaderFont};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FooterFill = {read=FFooterFill, write=SetFooterFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FooterStroke = {read=FFooterStroke, write=SetFooterStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FooterFont = {read=FFooterFont, write=SetFooterFont};
	__property TTMSFNCKanbanBoardItems* Items = {read=FItems, write=SetItems};
	__property bool Expanded = {read=FExpanded, write=SetExpanded, default=1};
	__property bool Expandable = {read=FExpandable, write=SetExpandable, default=0};
	__property bool ShowFilterButton = {read=GetShowFilterButton, write=SetShowFilterButton, default=0};
	__property Fmx::Tmsfnctableview::TTMSFNCTableViewFilter* Filter = {read=GetFilter, write=SetFilter};
	__property TTMSFNCKanbanBoardSorting Sorting = {read=GetSorting, write=SetSorting, default=0};
};


class PASCALIMPLEMENTATION TTMSFNCKanbanBoardColumns : public Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCKanbanBoardColumn*>
{
	typedef Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCKanbanBoardColumn*> inherited;
	
public:
	TTMSFNCKanbanBoardColumn* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCCustomKanbanBoard* FKanbanBoard;
	HIDESBASE TTMSFNCKanbanBoardColumn* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCKanbanBoardColumn* const Value);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall GetItemClass();
	
public:
	TTMSFNCCustomKanbanBoard* __fastcall GetKanbanBoard();
	__fastcall TTMSFNCKanbanBoardColumns(TTMSFNCCustomKanbanBoard* AKanbanBoard);
	HIDESBASE virtual TTMSFNCKanbanBoardColumn* __fastcall Add();
	HIDESBASE TTMSFNCKanbanBoardColumn* __fastcall Insert(int Index);
	__property TTMSFNCKanbanBoardColumn* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	__property TTMSFNCCustomKanbanBoard* KanbanBoard = {read=GetKanbanBoard};
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCKanbanBoardColumns() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCKanbanBoardColumnsAppearance : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	TTMSFNCCustomKanbanBoard* FKanbanBoard;
	Fmx::Tmsfnctypes::TTMSFNCMargins* FMargins;
	float FSpacing;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FFooterFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FHeaderFont;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FFooterStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FHeaderFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FHeaderStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FFooterFont;
	float FHeaderSize;
	float FFooterSize;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FStroke;
	void __fastcall SetMargins(Fmx::Tmsfnctypes::TTMSFNCMargins* const Value);
	bool __fastcall IsSpacingStored();
	void __fastcall SetSpacing(const float Value);
	void __fastcall SetFooterFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetFooterFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetFooterStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetHeaderFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetHeaderFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetHeaderStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	bool __fastcall IsFooterSizeStored();
	bool __fastcall IsHeaderSizeStored();
	void __fastcall SetFooterSize(const float Value);
	void __fastcall SetHeaderSize(const float Value);
	void __fastcall SetFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	
protected:
	void __fastcall Changed(System::TObject* Sender);
	
public:
	__fastcall TTMSFNCKanbanBoardColumnsAppearance(TTMSFNCCustomKanbanBoard* AKanbanBoard);
	__fastcall virtual ~TTMSFNCKanbanBoardColumnsAppearance();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property Fmx::Tmsfnctypes::TTMSFNCMargins* Margins = {read=FMargins, write=SetMargins};
	__property float Spacing = {read=FSpacing, write=SetSpacing, stored=IsSpacingStored};
	__property float HeaderSize = {read=FHeaderSize, write=SetHeaderSize, stored=IsHeaderSizeStored};
	__property float FooterSize = {read=FFooterSize, write=SetFooterSize, stored=IsFooterSizeStored};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* HeaderFont = {read=FHeaderFont, write=SetHeaderFont};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FooterFont = {read=FFooterFont, write=SetFooterFont};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* HeaderFill = {read=FHeaderFill, write=SetHeaderFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FooterFill = {read=FFooterFill, write=SetFooterFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* HeaderStroke = {read=FHeaderStroke, write=SetHeaderStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FooterStroke = {read=FFooterStroke, write=SetFooterStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* Fill = {read=FFill, write=SetFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* Stroke = {read=FStroke, write=SetStroke};
};


enum DECLSPEC_DENUM TTMSFNCKanbanBoardItemHeightMode : unsigned char { kbhmFixed, kbhmVariable };

class PASCALIMPLEMENTATION TTMSFNCKanbanBoardItemsAppearance : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	TTMSFNCCustomKanbanBoard* FKanbanBoard;
	System::UnicodeString FHTMLTemplate;
	double FHeight;
	TTMSFNCKanbanBoardItemHeightMode FHeightMode;
	bool FShowFocus;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FDisabledFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FFont;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FSelectedFill;
	double FFixedHeight;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FDisabledStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FSelectedStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FTitleFont;
	double FSpacing;
	Fmx::Tmsfnctypes::TTMSFNCMargins* FMargins;
	void __fastcall SetFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetSelectedFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetSelectedStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetDisabledFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetDisabledStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetHeightMode(const TTMSFNCKanbanBoardItemHeightMode Value);
	void __fastcall SetFixedHeight(const double Value);
	void __fastcall SetHTMLTemplate(const System::UnicodeString Value);
	bool __fastcall IsHeightStored();
	void __fastcall SetHeight(const double Value);
	void __fastcall SetShowFocus(const bool Value);
	void __fastcall SetTitleFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	bool __fastcall IsSpacingStored();
	void __fastcall SetSpacing(const double Value);
	void __fastcall SetMargins(Fmx::Tmsfnctypes::TTMSFNCMargins* const Value);
	
protected:
	void __fastcall FontChanged(System::TObject* Sender);
	void __fastcall FillChanged(System::TObject* Sender);
	void __fastcall MarginsChanged(System::TObject* Sender);
	void __fastcall StrokeChanged(System::TObject* Sender);
	void __fastcall Changed();
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall TTMSFNCKanbanBoardItemsAppearance(TTMSFNCCustomKanbanBoard* AKanbanBoard);
	__fastcall virtual ~TTMSFNCKanbanBoardItemsAppearance();
	
__published:
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* Font = {read=FFont, write=SetFont};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* TitleFont = {read=FTitleFont, write=SetTitleFont};
	__property double Spacing = {read=FSpacing, write=SetSpacing, stored=IsSpacingStored};
	__property Fmx::Tmsfnctypes::TTMSFNCMargins* Margins = {read=FMargins, write=SetMargins};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* Fill = {read=FFill, write=SetFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* Stroke = {read=FStroke, write=SetStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* SelectedFill = {read=FSelectedFill, write=SetSelectedFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* SelectedStroke = {read=FSelectedStroke, write=SetSelectedStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* DisabledFill = {read=FDisabledFill, write=SetDisabledFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* DisabledStroke = {read=FDisabledStroke, write=SetDisabledStroke};
	__property TTMSFNCKanbanBoardItemHeightMode HeightMode = {read=FHeightMode, write=SetHeightMode, default=1};
	__property double FixedHeight = {read=FFixedHeight, write=SetFixedHeight};
	__property double Height = {read=FHeight, write=SetHeight, stored=IsHeightStored};
	__property System::UnicodeString HTMLTemplate = {read=FHTMLTemplate, write=SetHTMLTemplate};
	__property bool ShowFocus = {read=FShowFocus, write=SetShowFocus, default=1};
};


enum DECLSPEC_DENUM TTMSFNCKanbanBoardDragDropMode : unsigned char { kbdmNone, kbdmMove, kbdmCopy };

enum DECLSPEC_DENUM TTMSFNCKanbanBoardMouseEditMode : unsigned char { kbemDoubleClick, kbemSingleClick, kbemSingleClickOnSelectedItem };

class PASCALIMPLEMENTATION TTMSFNCKanbanBoardInteraction : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	TTMSFNCCustomKanbanBoard* FKanbanBoard;
	bool FMultiSelect;
	bool FSwipeBounceGesture;
	bool FAutoOpenURL;
	bool FTouchScrolling;
	TTMSFNCKanbanBoardDragDropMode FDragDropMode;
	TTMSFNCKanbanBoardMouseEditMode FMouseEditMode;
	bool FKeyboardEdit;
	bool FEditing;
	bool FDirectDrag;
	void __fastcall SetAutoOpenURL(const bool Value);
	void __fastcall SetDragDropMode(const TTMSFNCKanbanBoardDragDropMode Value);
	void __fastcall SetKeyboardEdit(const bool Value);
	void __fastcall SetMouseEditMode(const TTMSFNCKanbanBoardMouseEditMode Value);
	void __fastcall SetMultiSelect(const bool Value);
	void __fastcall SetSwipeBounceGesture(const bool Value);
	void __fastcall SetTouchScrolling(const bool Value);
	void __fastcall SetEditing(const bool Value);
	void __fastcall SetDirectDrag(const bool Value);
	
protected:
	void __fastcall Changed();
	
public:
	__fastcall TTMSFNCKanbanBoardInteraction(TTMSFNCCustomKanbanBoard* AKanbanBoard);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property bool AutoOpenURL = {read=FAutoOpenURL, write=SetAutoOpenURL, default=1};
	__property bool MultiSelect = {read=FMultiSelect, write=SetMultiSelect, default=0};
	__property bool TouchScrolling = {read=FTouchScrolling, write=SetTouchScrolling, default=1};
	__property TTMSFNCKanbanBoardDragDropMode DragDropMode = {read=FDragDropMode, write=SetDragDropMode, default=0};
	__property bool SwipeBounceGesture = {read=FSwipeBounceGesture, write=SetSwipeBounceGesture, default=0};
	__property TTMSFNCKanbanBoardMouseEditMode MouseEditMode = {read=FMouseEditMode, write=SetMouseEditMode, default=2};
	__property bool KeyboardEdit = {read=FKeyboardEdit, write=SetKeyboardEdit, default=1};
	__property bool Editing = {read=FEditing, write=SetEditing, default=0};
	__property bool DirectDrag = {read=FDirectDrag, write=SetDirectDrag, default=0};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTMSFNCKanbanBoardInteraction() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCKanbanBoardTreeViewTableView : public Fmx::Tmsfnctableview::TTMSFNCTreeViewTableView
{
	typedef Fmx::Tmsfnctableview::TTMSFNCTreeViewTableView inherited;
	
private:
	System::Types::TPointF FDragPoint;
	TTMSFNCKanbanBoardTreeViewTableView* FDragTableView;
	bool FDragScrollLeft;
	bool FDragScrollRight;
	TTMSFNCKanbanBoardTableView* FScrollTable;
	Fmx::Types::TTimer* FDragTimerAlternative;
	TTMSFNCCustomKanbanBoard* FKanbanBoard;
	TTMSFNCKanbanBoardColumn* FColumn;
	bool FDragStarted;
	float FSaveLeft;
	float FSaveTop;
	
protected:
	void __fastcall DragTimeAlternative(System::TObject* Sender);
	virtual void __fastcall HandleMouseDown(System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall HandleDragStart(float X, float Y);
	virtual void __fastcall HandleDragOver(System::TObject* const Source, const System::Types::TPointF &Point, bool &Accept);
	virtual void __fastcall HandleDragDrop(System::TObject* const Source, const System::Types::TPointF &Point);
	virtual void __fastcall GetNodeOffset(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, float &ALeft, float &ATop, float &ARight, float &ABottom);
	virtual void __fastcall GetNodeMargins(float &ALeft, float &ATop, float &ARight, float &ABottom);
	virtual void __fastcall DoGetNodeSides(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsSides &ASides);
	virtual void __fastcall DoGetNodeRounding(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int &ARounding, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsCorners &ACorners);
	virtual void __fastcall DoGetNodeColor(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, System::Uitypes::TAlphaColor &AColor);
	virtual void __fastcall DoGetNodeStrokeColor(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, System::Uitypes::TAlphaColor &AColor);
	virtual void __fastcall DoGetNodeSelectedColor(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, System::Uitypes::TAlphaColor &AColor);
	virtual void __fastcall DoGetNodeSelectedStrokeColor(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, System::Uitypes::TAlphaColor &AColor);
	virtual void __fastcall DoGetNodeDisabledColor(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, System::Uitypes::TAlphaColor &AColor);
	virtual void __fastcall DoGetNodeDisabledStrokeColor(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, System::Uitypes::TAlphaColor &AColor);
	virtual void __fastcall DoUpdateNodeText(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, System::UnicodeString AText);
	virtual void __fastcall DoAfterSelectNode(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode);
	virtual void __fastcall UpdateSelection(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, bool AFocus, bool ATriggerEvents);
	virtual void __fastcall DoGetNodeTitleExtraSize(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, float &AExtraSize);
	virtual void __fastcall DoDrawNodeTitleExtra(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode);
	virtual void __fastcall DrawBorders(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics);
	virtual void __fastcall HandleNodeTitleExtra(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode);
	virtual void __fastcall HandleExpand(int AColumn);
	virtual void __fastcall HandleCustomKeys(System::Word AKey);
	virtual void __fastcall HandleAlternativeDragOver(float X, float Y);
	virtual void __fastcall HandleAlternativeDragDrop(float X, float Y);
	virtual void __fastcall InternalSelectVirtualNode(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode);
	virtual double __fastcall GetColumnsExtraSize();
	virtual bool __fastcall CanStartDragFromMouseDown();
	virtual bool __fastcall CanStartDragFromMouseMove();
	virtual bool __fastcall AlternativeDragDrop();
	float __fastcall GetTotalLeft();
	float __fastcall GetTotalTop();
	virtual System::Types::TRectF __fastcall GetContentRect();
	__property float SaveLeft = {read=FSaveLeft, write=FSaveLeft};
	__property float SaveTop = {read=FSaveTop, write=FSaveTop};
	__property bool DragStarted = {read=FDragStarted, write=FDragStarted, nodefault};
	
public:
	__fastcall virtual TTMSFNCKanbanBoardTreeViewTableView(System::Classes::TComponent* AOwner);
public:
	/* TTMSFNCTreeViewTableView.Destroy */ inline __fastcall virtual ~TTMSFNCKanbanBoardTreeViewTableView() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCKanbanBoardAdapter : public Fmx::Tmsfnccustomcomponent::TTMSFNCCustomComponent
{
	typedef Fmx::Tmsfnccustomcomponent::TTMSFNCCustomComponent inherited;
	
private:
	TTMSFNCCustomKanbanBoard* FKanbanBoard;
	bool FActive;
	void __fastcall SetActive(const bool Value);
	
protected:
	virtual NativeUInt __fastcall GetInstance();
	virtual void __fastcall Notification(System::Classes::TComponent* AComponent, System::Classes::TOperation Operation);
	
public:
	__property TTMSFNCCustomKanbanBoard* KanbanBoard = {read=FKanbanBoard, write=FKanbanBoard};
	virtual void __fastcall LoadItems();
	virtual void __fastcall GetItems() = 0 ;
	virtual void __fastcall DeleteItem(TTMSFNCKanbanBoardItem* AItem) = 0 ;
	virtual void __fastcall InsertItem(TTMSFNCKanbanBoardItem* AItem) = 0 ;
	virtual void __fastcall UpdateItem(TTMSFNCKanbanBoardItem* AItem) = 0 ;
	virtual void __fastcall AfterUpdateItem(TTMSFNCKanbanBoardItem* AItem) = 0 ;
	virtual void __fastcall SelectItem(TTMSFNCKanbanBoardItem* AItem) = 0 ;
	virtual void __fastcall UpdateItems();
	__fastcall virtual TTMSFNCKanbanBoardAdapter(System::Classes::TComponent* AOwner);
	
__published:
	__property bool Active = {read=FActive, write=SetActive, default=0};
public:
	/* TControl.Destroy */ inline __fastcall virtual ~TTMSFNCKanbanBoardAdapter() { }
	
};


typedef void __fastcall (__closure *TTMSFNCKanbanBoardDoneButtonClickedEvent)(System::TObject* Sender, TTMSFNCKanbanBoardColumn* AColumn);

typedef void __fastcall (__closure *TTMSFNCKanbanBoardBeforeApplyFilterEvent)(System::TObject* Sender, TTMSFNCKanbanBoardColumn* AColumn, Fmx::Tmsfnctableview::TTMSFNCTableViewFilterData* AFilter, bool &AAllow);

typedef void __fastcall (__closure *TTMSFNCKanbanBoardAfterApplyFilterEvent)(System::TObject* Sender, TTMSFNCKanbanBoardColumn* AColumn, Fmx::Tmsfnctableview::TTMSFNCTableViewFilterData* AFilter);

typedef void __fastcall (__closure *TTMSFNCKanbanBoardItemCompareEvent)(System::TObject* Sender, TTMSFNCKanbanBoardColumn* AColumn, TTMSFNCKanbanBoardItem* Item1, TTMSFNCKanbanBoardItem* Item2, int &ACompareResult);

typedef void __fastcall (__closure *TTMSFNCKanbanBoardUpdateItemTextEvent)(System::TObject* Sender, TTMSFNCKanbanBoardColumn* AColumn, TTMSFNCKanbanBoardItem* AItem, System::UnicodeString AText);

typedef void __fastcall (__closure *TTMSFNCKanbanBoardItemCustomDrawMarkEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCKanbanBoardMarkType AMarkType, TTMSFNCKanbanBoardColumn* AColumn, TTMSFNCKanbanBoardItem* AItem);

typedef void __fastcall (__closure *TTMSFNCKanbanBoardCustomizeColumnEvent)(System::TObject* Sender, TTMSFNCKanbanBoardColumn* AColumn, TTMSFNCKanbanBoardTableView* ATableView);

typedef void __fastcall (__closure *TTMSFNCKanbanBoardBeforeDrawItemEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCKanbanBoardColumn* AColumn, TTMSFNCKanbanBoardItem* AItem, bool &AAllow, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCKanbanBoardAfterDrawItemEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCKanbanBoardColumn* AColumn, TTMSFNCKanbanBoardItem* AItem);

typedef void __fastcall (__closure *TTMSFNCKanbanBoardBeforeDrawItemTextEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCKanbanBoardColumn* AColumn, TTMSFNCKanbanBoardItem* AItem, System::UnicodeString AText, bool &AAllow);

typedef void __fastcall (__closure *TTMSFNCKanbanBoardAfterDrawItemTextEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCKanbanBoardColumn* AColumn, TTMSFNCKanbanBoardItem* AItem, System::UnicodeString AText);

typedef void __fastcall (__closure *TTMSFNCKanbanBoardBeforeDrawItemIconEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCKanbanBoardColumn* AColumn, TTMSFNCKanbanBoardItem* AItem, Fmx::Tmsfnctypes::TTMSFNCBitmap* AIcon, bool &AAllow);

typedef void __fastcall (__closure *TTMSFNCKanbanBoardAfterDrawItemIconEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCKanbanBoardColumn* AColumn, TTMSFNCKanbanBoardItem* AItem, Fmx::Tmsfnctypes::TTMSFNCBitmap* AIcon);

typedef void __fastcall (__closure *TTMSFNCKanbanBoardBeforeDrawItemTitleEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCKanbanBoardColumn* AColumn, TTMSFNCKanbanBoardItem* AItem, System::UnicodeString ATitle, bool &AAllow);

typedef void __fastcall (__closure *TTMSFNCKanbanBoardAfterDrawItemTitleEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCKanbanBoardColumn* AColumn, TTMSFNCKanbanBoardItem* AItem, System::UnicodeString ATitle);

typedef void __fastcall (__closure *TTMSFNCKanbanBoardBeforeDropItemEvent)(System::TObject* Sender, TTMSFNCKanbanBoardColumn* AFromColumn, TTMSFNCKanbanBoardColumn* AToColumn, TTMSFNCKanbanBoardItem* AFromItem, TTMSFNCKanbanBoardItem* AToItem, bool &ACanDrop);

typedef void __fastcall (__closure *TTMSFNCKanbanBoardAfterDropItemEvent)(System::TObject* Sender, TTMSFNCKanbanBoardColumn* AFromColumn, TTMSFNCKanbanBoardColumn* AToColumn, TTMSFNCKanbanBoardItem* AFromItem, TTMSFNCKanbanBoardItem* AToItem);

typedef void __fastcall (__closure *TTMSFNCKanbanBoardSelectedItemEvent)(System::TObject* Sender, TTMSFNCKanbanBoardColumn* AColumn, TTMSFNCKanbanBoardItem* AItem);

typedef void __fastcall (__closure *TTMSFNCKanbanBoardColumnEvent)(System::TObject* Sender, TTMSFNCKanbanBoardColumn* AColumn);

typedef void __fastcall (__closure *TTMSFNCKanbanBoardItemEvent)(System::TObject* Sender, TTMSFNCKanbanBoardColumn* AColumn, TTMSFNCKanbanBoardItem* AItem);

typedef void __fastcall (__closure *TTMSFNCKanbanBoardColumnAnchorClickEvent)(System::TObject* Sender, TTMSFNCKanbanBoardColumn* AColumn, System::UnicodeString AAnchor);

typedef void __fastcall (__closure *TTMSFNCKanbanBoardColumnItemAnchorClickEvent)(System::TObject* Sender, TTMSFNCKanbanBoardColumn* AColumn, TTMSFNCKanbanBoardItem* AItem, System::UnicodeString AAnchor);

typedef void __fastcall (__closure *TTMSFNCKanbanBoardColumnItemClickEvent)(System::TObject* Sender, TTMSFNCKanbanBoardColumn* AColumn, TTMSFNCKanbanBoardItem* AItem);

class PASCALIMPLEMENTATION TTMSFNCCustomKanbanBoard : public Fmx::Tmsfnccustomscrollcontrol::TTMSFNCCustomScrollControl
{
	typedef Fmx::Tmsfnccustomscrollcontrol::TTMSFNCCustomScrollControl inherited;
	
private:
	bool FFirstLoad;
	Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* FBitmapContainer;
	TTMSFNCKanbanBoardColumns* FColumns;
	TTMSFNCKanbanBoardItemsAppearance* FItemsAppearance;
	TTMSFNCKanbanBoardColumnsAppearance* FColumnsAppearance;
	TTMSFNCKanbanBoardItemCustomDrawMarkEvent FOnItemCustomDrawMark;
	TTMSFNCKanbanBoardInteraction* FInteraction;
	TTMSFNCKanbanBoardCustomizeColumnEvent FOnCustomizeColumn;
	TTMSFNCKanbanBoardBeforeDrawItemEvent FOnBeforeDrawItem;
	TTMSFNCKanbanBoardAfterDrawItemEvent FOnAfterDrawItem;
	TTMSFNCKanbanBoardBeforeDrawItemIconEvent FOnBeforeDrawItemIcon;
	TTMSFNCKanbanBoardAfterDrawItemIconEvent FOnAfterDrawItemIcon;
	TTMSFNCKanbanBoardBeforeDropItemEvent FOnBeforeDropItem;
	TTMSFNCKanbanBoardAfterDropItemEvent FOnAfterDropItem;
	TTMSFNCKanbanBoardUpdateItemTextEvent FOnUpdateItemText;
	TTMSFNCKanbanBoardSelectedItemEvent FOnSelectItem;
	TTMSFNCKanbanBoardItemEvent FOnItemExpand;
	TTMSFNCKanbanBoardColumnEvent FOnColumnExpand;
	TTMSFNCKanbanBoardItemEvent FOnItemCollapse;
	TTMSFNCKanbanBoardColumnEvent FOnColumnCollapse;
	TTMSFNCKanbanBoardAdapter* FAdapter;
	TTMSFNCKanbanBoardBeforeDrawItemTextEvent FOnBeforeDrawItemText;
	TTMSFNCKanbanBoardAfterDrawItemTitleEvent FOnAfterDrawItemTitle;
	TTMSFNCKanbanBoardAfterDrawItemTextEvent FOnAfterDrawItemText;
	TTMSFNCKanbanBoardBeforeDrawItemTitleEvent FOnBeforeDrawItemTitle;
	TTMSFNCKanbanBoardItemCompareEvent FOnItemCompare;
	TTMSFNCKanbanBoardDoneButtonClickedEvent FOnDoneButtonClicked;
	TTMSFNCKanbanBoardAfterApplyFilterEvent FOnAfterApplyFilter;
	TTMSFNCKanbanBoardBeforeApplyFilterEvent FOnBeforeApplyFilter;
	TTMSFNCKanbanBoardColumnAnchorClickEvent FOnColumnAnchorClick;
	TTMSFNCKanbanBoardColumnItemAnchorClickEvent FOnItemTextAnchorClick;
	TTMSFNCKanbanBoardColumnItemAnchorClickEvent FOnItemTitleAnchorClick;
	TTMSFNCKanbanBoardColumnItemClickEvent FOnItemClick;
	Fmx::Tmsfncgraphicstypes::TTMSFNCAppearanceGlobalFont* FGlobalFont;
	TTMSFNCKanbanBoardColumnItemClickEvent FOnItemDblClick;
	Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* __fastcall GetBitmapContainer();
	void __fastcall SetBitmapContainer(Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* const Value);
	void __fastcall SetColumns(TTMSFNCKanbanBoardColumns* const Value);
	void __fastcall SetColumnsAppearance(TTMSFNCKanbanBoardColumnsAppearance* const Value);
	void __fastcall SetItemsAppearance(TTMSFNCKanbanBoardItemsAppearance* const Value);
	void __fastcall SetInteraction(TTMSFNCKanbanBoardInteraction* const Value);
	void __fastcall SetAdapter(TTMSFNCKanbanBoardAdapter* const Value);
	TTMSFNCKanbanBoardItem* __fastcall GetSelectedItem();
	void __fastcall SetSelectedItem(TTMSFNCKanbanBoardItem* const Value);
	void __fastcall SetGlobalFont(Fmx::Tmsfncgraphicstypes::TTMSFNCAppearanceGlobalFont* const Value);
	
protected:
	virtual System::UnicodeString __fastcall GetDocURL();
	virtual System::UnicodeString __fastcall GetVersion();
	virtual double __fastcall GetTotalContentWidth();
	virtual bool __fastcall ColumnStretchingActive();
	virtual TTMSFNCKanbanBoardColumns* __fastcall CreateColumns();
	virtual void __fastcall ChangeDPIScale(int M, int D);
	virtual void __fastcall ApplyStyle();
	virtual void __fastcall Notification(System::Classes::TComponent* AComponent, System::Classes::TOperation Operation);
	virtual void __fastcall HorizontalScrollPositionChanged();
	virtual void __fastcall UpdateColumns(bool AUpdate = true, bool ARealign = true);
	virtual void __fastcall UpdateControl(bool AUpdate = true, bool ARealign = true);
	virtual void __fastcall UpdateControlScroll(double AHorizontalPos, double AVerticalPos, double ANewHorizontalPos, double ANewVerticalPos);
	virtual void __fastcall DoItemCustomDrawMark(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCKanbanBoardMarkType AMarkType, TTMSFNCKanbanBoardColumn* AColumn, TTMSFNCKanbanBoardItem* AItem);
	virtual void __fastcall DoCustomizeColumn(TTMSFNCKanbanBoardColumn* AColumn, TTMSFNCKanbanBoardTableView* ATableView);
	virtual void __fastcall DoBeforeDrawItem(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCKanbanBoardColumn* AColumn, TTMSFNCKanbanBoardItem* AItem, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoAfterDrawItem(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCKanbanBoardColumn* AColumn, TTMSFNCKanbanBoardItem* AItem);
	virtual void __fastcall DoBeforeDrawItemText(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCKanbanBoardColumn* AColumn, TTMSFNCKanbanBoardItem* AItem, System::UnicodeString AText, bool &AAllow);
	virtual void __fastcall DoAfterDrawItemText(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCKanbanBoardColumn* AColumn, TTMSFNCKanbanBoardItem* AItem, System::UnicodeString AText);
	virtual void __fastcall DoBeforeDrawItemIcon(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCKanbanBoardColumn* AColumn, TTMSFNCKanbanBoardItem* AItem, Fmx::Tmsfnctypes::TTMSFNCBitmap* AIcon, bool &AAllow);
	virtual void __fastcall DoAfterDrawItemIcon(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCKanbanBoardColumn* AColumn, TTMSFNCKanbanBoardItem* AItem, Fmx::Tmsfnctypes::TTMSFNCBitmap* AIcon);
	virtual void __fastcall DoBeforeDrawItemTitle(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCKanbanBoardColumn* AColumn, TTMSFNCKanbanBoardItem* AItem, System::UnicodeString ATitle, bool &AAllow);
	virtual void __fastcall DoAfterDrawItemTitle(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCKanbanBoardColumn* AColumn, TTMSFNCKanbanBoardItem* AItem, System::UnicodeString ATitle);
	virtual void __fastcall DoBeforeDropItem(TTMSFNCKanbanBoardColumn* AFromColumn, TTMSFNCKanbanBoardColumn* AToColumn, TTMSFNCKanbanBoardItem* AFromItem, TTMSFNCKanbanBoardItem* AToItem, bool &ACanDrop);
	virtual void __fastcall DoAfterDropItem(TTMSFNCKanbanBoardColumn* AFromColumn, TTMSFNCKanbanBoardColumn* AToColumn, TTMSFNCKanbanBoardItem* AFromItem, TTMSFNCKanbanBoardItem* AToItem);
	virtual void __fastcall DoUpdateItemText(TTMSFNCKanbanBoardColumn* AColumn, TTMSFNCKanbanBoardItem* AItem, System::UnicodeString AText);
	virtual void __fastcall DoSelectItem(TTMSFNCKanbanBoardColumn* AColumn, TTMSFNCKanbanBoardItem* AItem);
	virtual void __fastcall DoColumnExpand(TTMSFNCKanbanBoardColumn* AColumn);
	virtual void __fastcall DoColumnCollapse(TTMSFNCKanbanBoardColumn* AColumn);
	virtual void __fastcall DoItemExpand(TTMSFNCKanbanBoardColumn* AColumn, TTMSFNCKanbanBoardItem* AItem);
	virtual void __fastcall DoItemCollapse(TTMSFNCKanbanBoardColumn* AColumn, TTMSFNCKanbanBoardItem* AItem);
	virtual void __fastcall DoItemCompare(TTMSFNCKanbanBoardColumn* AColumn, TTMSFNCKanbanBoardItem* AItem1, TTMSFNCKanbanBoardItem* AItem2, int &ACompareResult);
	virtual void __fastcall DoBeforeApplyFilter(TTMSFNCKanbanBoardColumn* AColumn, Fmx::Tmsfnctableview::TTMSFNCTableViewFilterData* AFilter, bool AAllow);
	virtual void __fastcall DoAfterApplyFilter(TTMSFNCKanbanBoardColumn* AColumn, Fmx::Tmsfnctableview::TTMSFNCTableViewFilterData* AFilter);
	virtual void __fastcall DoDoneButtonClicked(TTMSFNCKanbanBoardColumn* AColumn);
	virtual void __fastcall DoColumnAnchorClick(TTMSFNCKanbanBoardColumn* AColumn, System::UnicodeString AAnchor);
	virtual void __fastcall DoItemTextAnchorClick(TTMSFNCKanbanBoardColumn* AColumn, TTMSFNCKanbanBoardItem* AItem, System::UnicodeString AAnchor);
	virtual void __fastcall DoItemDblClick(TTMSFNCKanbanBoardColumn* AColumn, TTMSFNCKanbanBoardItem* AItem);
	virtual void __fastcall DoItemClick(TTMSFNCKanbanBoardColumn* AColumn, TTMSFNCKanbanBoardItem* AItem);
	virtual void __fastcall DoItemTitleAnchorClick(TTMSFNCKanbanBoardColumn* AColumn, TTMSFNCKanbanBoardItem* AItem, System::UnicodeString AAnchor);
	virtual void __fastcall Draw(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	virtual void __fastcall SetFonts(Fmx::Tmsfncgraphicstypes::TTMSFNCAppearanceGlobalFontType ASetType);
	virtual void __fastcall ResetToDefaultStyle();
	__property System::UnicodeString Version = {read=GetVersion};
	__property Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* BitmapContainer = {read=GetBitmapContainer, write=SetBitmapContainer};
	__property TTMSFNCKanbanBoardColumns* Columns = {read=FColumns, write=SetColumns};
	__property TTMSFNCKanbanBoardColumnsAppearance* ColumnsAppearance = {read=FColumnsAppearance, write=SetColumnsAppearance};
	__property TTMSFNCKanbanBoardItemsAppearance* ItemsAppearance = {read=FItemsAppearance, write=SetItemsAppearance};
	__property TTMSFNCKanbanBoardInteraction* Interaction = {read=FInteraction, write=SetInteraction};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCAppearanceGlobalFont* GlobalFont = {read=FGlobalFont, write=SetGlobalFont};
	__property TTMSFNCKanbanBoardItemCustomDrawMarkEvent OnItemCustomDrawMark = {read=FOnItemCustomDrawMark, write=FOnItemCustomDrawMark};
	__property TTMSFNCKanbanBoardItemCompareEvent OnItemCompare = {read=FOnItemCompare, write=FOnItemCompare};
	__property TTMSFNCKanbanBoardBeforeApplyFilterEvent OnBeforeApplyFilter = {read=FOnBeforeApplyFilter, write=FOnBeforeApplyFilter};
	__property TTMSFNCKanbanBoardAfterApplyFilterEvent OnAfterApplyFilter = {read=FOnAfterApplyFilter, write=FOnAfterApplyFilter};
	__property TTMSFNCKanbanBoardDoneButtonClickedEvent OnDoneButtonClicked = {read=FOnDoneButtonClicked, write=FOnDoneButtonClicked};
	__property TTMSFNCKanbanBoardUpdateItemTextEvent OnUpdateItemText = {read=FOnUpdateItemText, write=FOnUpdateItemText};
	__property TTMSFNCKanbanBoardCustomizeColumnEvent OnCustomizeColumn = {read=FOnCustomizeColumn, write=FOnCustomizeColumn};
	__property TTMSFNCKanbanBoardBeforeDrawItemEvent OnBeforeDrawItem = {read=FOnBeforeDrawItem, write=FOnBeforeDrawItem};
	__property TTMSFNCKanbanBoardAfterDrawItemEvent OnAfterDrawItem = {read=FOnAfterDrawItem, write=FOnAfterDrawItem};
	__property TTMSFNCKanbanBoardBeforeDrawItemTextEvent OnBeforeDrawItemText = {read=FOnBeforeDrawItemText, write=FOnBeforeDrawItemText};
	__property TTMSFNCKanbanBoardAfterDrawItemTextEvent OnAfterDrawItemText = {read=FOnAfterDrawItemText, write=FOnAfterDrawItemText};
	__property TTMSFNCKanbanBoardBeforeDrawItemIconEvent OnBeforeDrawItemIcon = {read=FOnBeforeDrawItemIcon, write=FOnBeforeDrawItemIcon};
	__property TTMSFNCKanbanBoardAfterDrawItemIconEvent OnAfterDrawItemIcon = {read=FOnAfterDrawItemIcon, write=FOnAfterDrawItemIcon};
	__property TTMSFNCKanbanBoardBeforeDrawItemTitleEvent OnBeforeDrawItemTitle = {read=FOnBeforeDrawItemTitle, write=FOnBeforeDrawItemTitle};
	__property TTMSFNCKanbanBoardAfterDrawItemTitleEvent OnAfterDrawItemTitle = {read=FOnAfterDrawItemTitle, write=FOnAfterDrawItemTitle};
	__property TTMSFNCKanbanBoardBeforeDropItemEvent OnBeforeDropItem = {read=FOnBeforeDropItem, write=FOnBeforeDropItem};
	__property TTMSFNCKanbanBoardAfterDropItemEvent OnAfterDropItem = {read=FOnAfterDropItem, write=FOnAfterDropItem};
	__property TTMSFNCKanbanBoardSelectedItemEvent OnSelectItem = {read=FOnSelectItem, write=FOnSelectItem};
	__property TTMSFNCKanbanBoardColumnEvent OnColumnCollapse = {read=FOnColumnCollapse, write=FOnColumnCollapse};
	__property TTMSFNCKanbanBoardColumnEvent OnColumnExpand = {read=FOnColumnExpand, write=FOnColumnExpand};
	__property TTMSFNCKanbanBoardItemEvent OnItemCollapse = {read=FOnItemCollapse, write=FOnItemCollapse};
	__property TTMSFNCKanbanBoardItemEvent OnItemExpand = {read=FOnItemExpand, write=FOnItemExpand};
	__property TTMSFNCKanbanBoardAdapter* Adapter = {read=FAdapter, write=SetAdapter};
	__property TTMSFNCKanbanBoardColumnAnchorClickEvent OnColumnAnchorClick = {read=FOnColumnAnchorClick, write=FOnColumnAnchorClick};
	__property TTMSFNCKanbanBoardColumnItemAnchorClickEvent OnItemTextAnchorClick = {read=FOnItemTextAnchorClick, write=FOnItemTextAnchorClick};
	__property TTMSFNCKanbanBoardColumnItemAnchorClickEvent OnItemTitleAnchorClick = {read=FOnItemTitleAnchorClick, write=FOnItemTitleAnchorClick};
	__property TTMSFNCKanbanBoardColumnItemClickEvent OnItemClick = {read=FOnItemClick, write=FOnItemClick};
	__property TTMSFNCKanbanBoardColumnItemClickEvent OnItemDblClick = {read=FOnItemDblClick, write=FOnItemDblClick};
	
public:
	__fastcall virtual TTMSFNCCustomKanbanBoard(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCCustomKanbanBoard();
	virtual void __fastcall InitSample();
	void __fastcall ClearSelection();
	void __fastcall ClearItems();
	virtual void __fastcall SelectItem(TTMSFNCKanbanBoardItem* AItem);
	TTMSFNCKanbanBoardColumn* __fastcall XYToColumn(float X, float Y);
	virtual TTMSFNCKanbanBoardItem* __fastcall FindItemWithDBKey(System::UnicodeString ADBKey);
	__property TTMSFNCKanbanBoardItem* SelectedItem = {read=GetSelectedItem, write=SetSelectedItem};
	virtual void __fastcall LoadSettingsFromFile(System::UnicodeString AFileName);
	virtual void __fastcall LoadSettingsFromStream(System::Classes::TStream* AStream);
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


class PASCALIMPLEMENTATION TTMSFNCKanbanBoard : public TTMSFNCCustomKanbanBoard
{
	typedef TTMSFNCCustomKanbanBoard inherited;
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	
__published:
	__property Adapter;
	__property Version;
	__property BitmapContainer;
	__property Stroke;
	__property Fill;
	__property Columns;
	__property ColumnsAppearance;
	__property Interaction;
	__property ItemsAppearance;
	__property GlobalFont;
	__property OnItemCompare;
	__property OnBeforeApplyFilter;
	__property OnAfterApplyFilter;
	__property OnDoneButtonClicked;
	__property OnCustomizeColumn;
	__property OnItemCustomDrawMark;
	__property OnBeforeDrawItem;
	__property OnAfterDrawItem;
	__property OnBeforeDrawItemIcon;
	__property OnAfterDrawItemIcon;
	__property OnBeforeDrawItemText;
	__property OnAfterDrawItemText;
	__property OnBeforeDrawItemTitle;
	__property OnAfterDrawItemTitle;
	__property OnBeforeDropItem;
	__property OnAfterDropItem;
	__property OnSelectItem;
	__property OnUpdateItemText;
	__property OnColumnCollapse;
	__property OnColumnExpand;
	__property OnItemCollapse;
	__property OnItemExpand;
	__property OnColumnAnchorClick;
	__property OnItemTextAnchorClick;
	__property OnItemTitleAnchorClick;
	__property OnItemClick;
	__property OnItemDblClick;
public:
	/* TTMSFNCCustomKanbanBoard.Create */ inline __fastcall virtual TTMSFNCKanbanBoard(System::Classes::TComponent* AOwner) : TTMSFNCCustomKanbanBoard(AOwner) { }
	/* TTMSFNCCustomKanbanBoard.Destroy */ inline __fastcall virtual ~TTMSFNCKanbanBoard() { }
	
};


//-- var, const, procedure ---------------------------------------------------
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCKanbanBoardHeader;
#define Fmx_Tmsfnckanbanboard_sTMSFNCKanbanBoardHeader System::LoadResourceString(&Fmx::Tmsfnckanbanboard::_sTMSFNCKanbanBoardHeader)
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCKanbanBoardFooter;
#define Fmx_Tmsfnckanbanboard_sTMSFNCKanbanBoardFooter System::LoadResourceString(&Fmx::Tmsfnckanbanboard::_sTMSFNCKanbanBoardFooter)
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x3);
static constexpr System::Int8 BLD_VER = System::Int8(0x1);
}	/* namespace Tmsfnckanbanboard */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCKANBANBOARD)
using namespace Fmx::Tmsfnckanbanboard;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfnckanbanboardHPP
