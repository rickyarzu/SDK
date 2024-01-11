// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCCustomSelector.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfnccustomselectorHPP
#define Fmx_TmsfnccustomselectorHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.TMSFNCGraphics.hpp>
#include <FMX.TMSFNCGraphicsTypes.hpp>
#include <FMX.TMSFNCCustomControl.hpp>
#include <FMX.Controls.hpp>
#include <System.UITypes.hpp>
#include <System.Generics.Collections.hpp>
#include <System.Types.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>
#include <FMX.Types.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfnccustomselector
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCCustomSelectorItem;
class DELPHICLASS TTMSFNCCustomSelectorItems;
class DELPHICLASS TTMSFNCCustomSelectorAppearance;
struct TTMSFNCCustomSelectorPositionItem;
struct TTMSFNCCustomSelectorDisplayItem;
class DELPHICLASS TTMSFNCCustomSelectorDisplayList;
class DELPHICLASS TTMSFNCCustomSelector;
class DELPHICLASS TTMSFNCDefaultSelector;
//-- type declarations -------------------------------------------------------
enum DECLSPEC_DENUM TTMSFNCCustomSelectorItemState : unsigned char { isNormal, isHover, isDown, isSelected, isDisabled };

class PASCALIMPLEMENTATION TTMSFNCCustomSelectorItem : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	TTMSFNCCustomSelector* FOwner;
	int FRowSpan;
	int FColumnSpan;
	bool FVisible;
	System::UnicodeString FText;
	bool FEnabled;
	bool FSeparator;
	float FSeparatorHeight;
	Fmx::Tmsfnctypes::TTMSFNCMargins* FMargins;
	bool FCanDeselect;
	bool FCanSelect;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign FVerticalTextAlign;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign FHorizontalTextAlign;
	System::UnicodeString FHint;
	bool FDataBoolean;
	System::UnicodeString FDataString;
	System::TObject* FDataObject;
	NativeInt FDataInteger;
	void *FDataPointer;
	void __fastcall SetColumnSpan(const int Value);
	void __fastcall SetRowSpan(const int Value);
	void __fastcall SetVisible(const bool Value);
	void __fastcall SetText(const System::UnicodeString Value);
	void __fastcall SetEnabled(const bool Value);
	void __fastcall SetSeparator(const bool Value);
	void __fastcall SetSeparatorHeight(const float Value);
	void __fastcall SetMargins(Fmx::Tmsfnctypes::TTMSFNCMargins* const Value);
	void __fastcall SetCanDeselect(const bool Value);
	void __fastcall SetCanSelect(const bool Value);
	void __fastcall SetHorizontalTextAlign(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign Value);
	void __fastcall SetVerticalTextAlign(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign Value);
	bool __fastcall IsSeparatorHeightStored();
	
protected:
	void __fastcall MarginsChanged(System::TObject* Sender);
	
public:
	__fastcall virtual TTMSFNCCustomSelectorItem(System::Classes::TCollection* Collection);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	TTMSFNCCustomSelectorItemState __fastcall State();
	__fastcall virtual ~TTMSFNCCustomSelectorItem();
	__property void * DataPointer = {read=FDataPointer, write=FDataPointer};
	__property bool DataBoolean = {read=FDataBoolean, write=FDataBoolean, nodefault};
	__property System::TObject* DataObject = {read=FDataObject, write=FDataObject};
	__property System::UnicodeString DataString = {read=FDataString, write=FDataString};
	__property NativeInt DataInteger = {read=FDataInteger, write=FDataInteger};
	
__published:
	__property bool CanSelect = {read=FCanSelect, write=SetCanSelect, default=1};
	__property bool CanDeselect = {read=FCanDeselect, write=SetCanDeselect, default=1};
	__property int ColumnSpan = {read=FColumnSpan, write=SetColumnSpan, default=1};
	__property int RowSpan = {read=FRowSpan, write=SetRowSpan, default=1};
	__property bool Visible = {read=FVisible, write=SetVisible, default=1};
	__property bool Enabled = {read=FEnabled, write=SetEnabled, default=1};
	__property bool Separator = {read=FSeparator, write=SetSeparator, default=0};
	__property float SeparatorHeight = {read=FSeparatorHeight, write=SetSeparatorHeight, stored=IsSeparatorHeightStored};
	__property Fmx::Tmsfnctypes::TTMSFNCMargins* Margins = {read=FMargins, write=SetMargins};
	__property System::UnicodeString Text = {read=FText, write=SetText};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign HorizontalTextAlign = {read=FHorizontalTextAlign, write=SetHorizontalTextAlign, default=0};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign VerticalTextAlign = {read=FVerticalTextAlign, write=SetVerticalTextAlign, default=0};
	__property System::UnicodeString Hint = {read=FHint, write=FHint};
};


class PASCALIMPLEMENTATION TTMSFNCCustomSelectorItems : public Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCCustomSelectorItem*>
{
	typedef Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCCustomSelectorItem*> inherited;
	
public:
	TTMSFNCCustomSelectorItem* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCCustomSelector* FOwner;
	HIDESBASE TTMSFNCCustomSelectorItem* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCCustomSelectorItem* const Value);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall CreateItemClass();
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	
public:
	__fastcall virtual TTMSFNCCustomSelectorItems(TTMSFNCCustomSelector* AOwner);
	__property TTMSFNCCustomSelectorItem* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	HIDESBASE TTMSFNCCustomSelectorItem* __fastcall Add();
	HIDESBASE TTMSFNCCustomSelectorItem* __fastcall Insert(int Index);
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCCustomSelectorItems() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCustomSelectorAppearance : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	TTMSFNCCustomSelector* FOwner;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FStrokeHover;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FFillDown;
	float FVerticalSpacing;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FStrokeDown;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FFillSelected;
	float FHorizontalSpacing;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FStrokeSelected;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FFillHover;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FFillDisabled;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FStrokeDisabled;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FSeparatorStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FFont;
	void __fastcall SetFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetFillDown(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetFillHover(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetFillSelected(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetHorizontalSpacing(const float Value);
	void __fastcall SetStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetStrokeDown(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetStrokeHover(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetStrokeSelected(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetVerticalSpacing(const float Value);
	void __fastcall SetFillDisabled(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetStrokeDisabled(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetSeparatorStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	bool __fastcall IsHorizontalSpacingStored();
	bool __fastcall IsVerticalSpacingStored();
	
protected:
	void __fastcall Changed();
	void __fastcall FontChanged(System::TObject* Sender);
	void __fastcall FillChanged(System::TObject* Sender);
	void __fastcall StrokeChanged(System::TObject* Sender);
	
public:
	__fastcall TTMSFNCCustomSelectorAppearance(TTMSFNCCustomSelector* AOwner);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual ~TTMSFNCCustomSelectorAppearance();
	
__published:
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* Stroke = {read=FStroke, write=SetStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* Fill = {read=FFill, write=SetFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* StrokeHover = {read=FStrokeHover, write=SetStrokeHover};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FillHover = {read=FFillHover, write=SetFillHover};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* StrokeDown = {read=FStrokeDown, write=SetStrokeDown};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FillDown = {read=FFillDown, write=SetFillDown};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* StrokeSelected = {read=FStrokeSelected, write=SetStrokeSelected};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FillSelected = {read=FFillSelected, write=SetFillSelected};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* StrokeDisabled = {read=FStrokeDisabled, write=SetStrokeDisabled};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FillDisabled = {read=FFillDisabled, write=SetFillDisabled};
	__property float VerticalSpacing = {read=FVerticalSpacing, write=SetVerticalSpacing, stored=IsVerticalSpacingStored};
	__property float HorizontalSpacing = {read=FHorizontalSpacing, write=SetHorizontalSpacing, stored=IsHorizontalSpacingStored};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* SeparatorStroke = {read=FSeparatorStroke, write=SetSeparatorStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* Font = {read=FFont, write=SetFont};
};


struct DECLSPEC_DRECORD TTMSFNCCustomSelectorPositionItem
{
public:
	bool TileSet;
};


struct DECLSPEC_DRECORD TTMSFNCCustomSelectorDisplayItem
{
public:
	System::Types::TRectF Rect;
	TTMSFNCCustomSelectorItem* Item;
	int PageIndex;
	int Column;
	int Row;
	int ColumnSpan;
	int RowSpan;
};


typedef System::DynamicArray<TTMSFNCCustomSelectorPositionItem> Fmx_Tmsfnccustomselector__4;

typedef System::DynamicArray<System::DynamicArray<TTMSFNCCustomSelectorPositionItem> > TTMSFNCCustomSelectorItemPosArray;

typedef void __fastcall (__closure *TTMSFNCCustomSelectorItemSelected)(System::TObject* Sender, int AItemIndex);

typedef void __fastcall (__closure *TTMSFNCCustomSelectorItemDeselected)(System::TObject* Sender, int AItemIndex);

typedef void __fastcall (__closure *TTMSFNCCustomSelectorItemClick)(System::TObject* Sender, int AItemIndex);

typedef void __fastcall (__closure *TTMSFNCCustomSelectorItemBeforeDrawBackground)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AItemIndex, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCCustomSelectorItemAfterDrawBackground)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AItemIndex);

typedef void __fastcall (__closure *TTMSFNCCustomSelectorItemBeforeDrawContent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AItemIndex, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCCustomSelectorItemAfterDrawContent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AItemIndex);

typedef void __fastcall (__closure *TTMSFNCCustomSelectorItemBeforeDrawText)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AItemIndex, System::UnicodeString &AText, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCCustomSelectorItemAfterDrawText)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AItemIndex, System::UnicodeString AText);

typedef void __fastcall (__closure *TTMSFNCCustomSelectorBeforeDraw)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCCustomSelectorAfterDraw)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);

class PASCALIMPLEMENTATION TTMSFNCCustomSelectorDisplayList : public System::Generics::Collections::TList__1<TTMSFNCCustomSelectorDisplayItem>
{
	typedef System::Generics::Collections::TList__1<TTMSFNCCustomSelectorDisplayItem> inherited;
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCCustomSelector_TTMSFNCCustomSelectorDisplayItem>.Create */ inline __fastcall TTMSFNCCustomSelectorDisplayList()/* overload */ : System::Generics::Collections::TList__1<TTMSFNCCustomSelectorDisplayItem>() { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCustomSelector_TTMSFNCCustomSelectorDisplayItem>.Create */ inline __fastcall TTMSFNCCustomSelectorDisplayList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCustomSelectorDisplayItem> > AComparer)/* overload */ : System::Generics::Collections::TList__1<TTMSFNCCustomSelectorDisplayItem>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCustomSelector_TTMSFNCCustomSelectorDisplayItem>.Create */ inline __fastcall TTMSFNCCustomSelectorDisplayList(System::Generics::Collections::TEnumerable__1<TTMSFNCCustomSelectorDisplayItem>* const Collection)/* overload */ : System::Generics::Collections::TList__1<TTMSFNCCustomSelectorDisplayItem>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCustomSelector_TTMSFNCCustomSelectorDisplayItem>.Create */ inline __fastcall TTMSFNCCustomSelectorDisplayList(const TTMSFNCCustomSelectorDisplayItem *Values, const int Values_High)/* overload */ : System::Generics::Collections::TList__1<TTMSFNCCustomSelectorDisplayItem>(Values, Values_High) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCustomSelector_TTMSFNCCustomSelectorDisplayItem>.Destroy */ inline __fastcall virtual ~TTMSFNCCustomSelectorDisplayList() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCustomSelector : public Fmx::Tmsfnccustomcontrol::TTMSFNCCustomControl
{
	typedef Fmx::Tmsfnccustomcontrol::TTMSFNCCustomControl inherited;
	
private:
	TTMSFNCCustomSelectorDisplayList* FDisplayList;
	int FUpdateCount;
	TTMSFNCCustomSelectorItems* FItems;
	int FRows;
	int FColumns;
	int FPageCount;
	TTMSFNCCustomSelectorAppearance* FAppearance;
	int FSelectedItemIndex;
	int FFocusedItemIndex;
	int FHoveredItemIndex;
	int FDownItemIndex;
	TTMSFNCCustomSelectorItemBeforeDrawText FOnItemBeforeDrawText;
	TTMSFNCCustomSelectorAfterDraw FOnAfterDraw;
	TTMSFNCCustomSelectorItemAfterDrawBackground FOnItemAfterDrawBackground;
	TTMSFNCCustomSelectorItemSelected FOnItemSelected;
	TTMSFNCCustomSelectorItemAfterDrawText FOnItemAfterDrawText;
	TTMSFNCCustomSelectorBeforeDraw FOnBeforeDraw;
	TTMSFNCCustomSelectorItemBeforeDrawBackground FOnItemBeforeDrawBackground;
	TTMSFNCCustomSelectorItemDeselected FOnItemDeselected;
	TTMSFNCCustomSelectorItemClick FOnItemClick;
	TTMSFNCCustomSelectorItemBeforeDrawContent FOnItemBeforeDrawContent;
	TTMSFNCCustomSelectorItemAfterDrawContent FOnItemAfterDrawContent;
	bool FBlockChange;
	bool FClosedRemotely;
	void __fastcall SetItems(TTMSFNCCustomSelectorItems* const Value);
	void __fastcall SetColumns(const int Value);
	void __fastcall SetRows(const int Value);
	void __fastcall SetAppearance(TTMSFNCCustomSelectorAppearance* const Value);
	void __fastcall SetSelectedItemIndex(const int Value);
	
protected:
	virtual void __fastcall ChangeDPIScale(int M, int D);
	virtual void __fastcall RegisterRuntimeClasses();
	virtual System::UnicodeString __fastcall GetDocURL();
	virtual System::UnicodeString __fastcall GetHintString();
	virtual bool __fastcall HasHint();
	virtual System::UnicodeString __fastcall GetVersion();
	virtual TTMSFNCCustomSelectorDisplayItem __fastcall GetDisplayItem(int AItemIndex);
	virtual int __fastcall GetNextSelectableItem();
	virtual int __fastcall GetPreviousSelectableItem();
	virtual int __fastcall GetNextSelectableRowItem();
	virtual int __fastcall GetPreviousSelectableRowItem();
	virtual int __fastcall GetFirstSelectableItem();
	virtual int __fastcall GetLastSelectableItem();
	virtual TTMSFNCCustomSelectorItems* __fastcall CreateItemsCollection();
	virtual void __fastcall CalculateItems();
	virtual void __fastcall UpdateCalculations();
	virtual void __fastcall ApplyStyle();
	virtual void __fastcall ResetToDefaultStyle();
	virtual float __fastcall GetTopOffset();
	virtual float __fastcall GetCalculationWidth();
	virtual float __fastcall GetCalculationHeight();
	float __fastcall GetTotalSeparatorHeight();
	int __fastcall GetTotalSeparatorCount();
	virtual void __fastcall DoItemSelected(int AItemIndex);
	virtual void __fastcall DoItemClick(int AItemIndex);
	virtual void __fastcall DoItemDeselected(int AItemIndex);
	virtual void __fastcall DoItemBeforeDrawBackground(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AItemIndex, bool &ADefaultDraw);
	virtual void __fastcall DoItemAfterDrawBackground(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AItemIndex);
	virtual void __fastcall DoItemBeforeDrawContent(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AItemIndex, bool &ADefaultDraw);
	virtual void __fastcall DoItemAfterDrawContent(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AItemIndex);
	virtual void __fastcall DoItemBeforeDrawText(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AItemIndex, System::UnicodeString &AText, bool &ADefaultDraw);
	virtual void __fastcall DoItemAfterDrawText(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AItemIndex, System::UnicodeString AText);
	HIDESBASE virtual void __fastcall DoBeforeDraw(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, bool &ADefaultDraw);
	HIDESBASE virtual void __fastcall DoAfterDraw(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	virtual void __fastcall DrawItems(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics);
	virtual void __fastcall Draw(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	virtual void __fastcall DrawItem(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const TTMSFNCCustomSelectorDisplayItem &ADisplayItem);
	virtual void __fastcall DrawItemBackGround(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const TTMSFNCCustomSelectorDisplayItem &ADisplayItem);
	virtual void __fastcall DrawItemContent(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const TTMSFNCCustomSelectorDisplayItem &ADisplayItem);
	virtual void __fastcall DrawItemText(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const TTMSFNCCustomSelectorDisplayItem &ADisplayItem);
	virtual void __fastcall HandleMouseDown(System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall HandleMouseUp(System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall HandleMouseMove(System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall HandleKeyDown(System::Word &Key, System::Classes::TShiftState Shift);
	virtual void __fastcall HandleKeyUp(System::Word &Key, System::Classes::TShiftState Shift);
	virtual void __fastcall HandleMouseLeave();
	void __fastcall ProcessSelection(int AItemIndex);
	__property int SelectedItemIndex = {read=FSelectedItemIndex, write=SetSelectedItemIndex, default=-1};
	__property int Rows = {read=FRows, write=SetRows, default=4};
	__property int Columns = {read=FColumns, write=SetColumns, default=4};
	__property System::UnicodeString Version = {read=GetVersion};
	__property TTMSFNCCustomSelectorItems* Items = {read=FItems, write=SetItems};
	__property TTMSFNCCustomSelectorAppearance* Appearance = {read=FAppearance, write=SetAppearance};
	__property TTMSFNCCustomSelectorItemSelected OnItemSelected = {read=FOnItemSelected, write=FOnItemSelected};
	__property TTMSFNCCustomSelectorItemDeselected OnItemDeselected = {read=FOnItemDeselected, write=FOnItemDeselected};
	__property TTMSFNCCustomSelectorItemClick OnItemClick = {read=FOnItemClick, write=FOnItemClick};
	__property TTMSFNCCustomSelectorItemBeforeDrawBackground OnItemBeforeDrawBackground = {read=FOnItemBeforeDrawBackground, write=FOnItemBeforeDrawBackground};
	__property TTMSFNCCustomSelectorItemAfterDrawBackground OnItemAfterDrawBackground = {read=FOnItemAfterDrawBackground, write=FOnItemAfterDrawBackground};
	__property TTMSFNCCustomSelectorItemBeforeDrawContent OnItemBeforeDrawContent = {read=FOnItemBeforeDrawContent, write=FOnItemBeforeDrawContent};
	__property TTMSFNCCustomSelectorItemAfterDrawContent OnItemAfterDrawContent = {read=FOnItemAfterDrawContent, write=FOnItemAfterDrawContent};
	__property TTMSFNCCustomSelectorBeforeDraw OnBeforeDraw = {read=FOnBeforeDraw, write=FOnBeforeDraw};
	__property TTMSFNCCustomSelectorAfterDraw OnAfterDraw = {read=FOnAfterDraw, write=FOnAfterDraw};
	__property TTMSFNCCustomSelectorItemBeforeDrawText OnItemBeforeDrawText = {read=FOnItemBeforeDrawText, write=FOnItemBeforeDrawText};
	__property TTMSFNCCustomSelectorItemAfterDrawText OnItemAfterDrawText = {read=FOnItemAfterDrawText, write=FOnItemAfterDrawText};
	
public:
	__fastcall virtual TTMSFNCCustomSelector(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCCustomSelector();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	virtual void __fastcall BeginUpdate();
	virtual void __fastcall EndUpdate();
	void __fastcall RepaintItems();
	__property bool BlockChange = {read=FBlockChange, write=FBlockChange, nodefault};
	virtual void __fastcall UpdateControlAfterResize();
	virtual void __fastcall InitializeDefault();
	int __fastcall XYToItem(float X, float Y);
	__property bool ClosedRemotely = {read=FClosedRemotely, write=FClosedRemotely, nodefault};
};


class PASCALIMPLEMENTATION TTMSFNCDefaultSelector : public TTMSFNCCustomSelector
{
	typedef TTMSFNCCustomSelector inherited;
	
__published:
	__property Fill;
	__property Stroke;
	__property Version = {default=0};
public:
	/* TTMSFNCCustomSelector.Create */ inline __fastcall virtual TTMSFNCDefaultSelector(System::Classes::TComponent* AOwner) : TTMSFNCCustomSelector(AOwner) { }
	/* TTMSFNCCustomSelector.Destroy */ inline __fastcall virtual ~TTMSFNCDefaultSelector() { }
	
};


//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x1);
static constexpr System::Int8 BLD_VER = System::Int8(0x0);
}	/* namespace Tmsfnccustomselector */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCCUSTOMSELECTOR)
using namespace Fmx::Tmsfnccustomselector;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfnccustomselectorHPP
