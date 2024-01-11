// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCListEditor.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfnclisteditorHPP
#define Fmx_TmsfnclisteditorHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.ExtCtrls.hpp>
#include <FMX.TMSFNCBitmapContainer.hpp>
#include <FMX.TMSFNCGraphics.hpp>
#include <FMX.Controls.hpp>
#include <FMX.TMSFNCCustomScrollControl.hpp>
#include <FMX.TMSFNCGraphicsTypes.hpp>
#include <FMX.TMSFNCControlPicker.hpp>
#include <System.Types.hpp>
#include <System.UITypes.hpp>
#include <System.Generics.Collections.hpp>
#include <FMX.Types.hpp>
#include <FMX.TMSFNCCustomControl.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfnclisteditor
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCCustomListEditorItem;
class DELPHICLASS TTMSFNCCustomListEditorItems;
struct TTMSFNCCustomListEditorDisplayItem;
class DELPHICLASS TTMSFNCCustomListEditorItemAppearance;
class DELPHICLASS TTMSFNCCustomListEditorControlProtected;
class DELPHICLASS TTMSFNCCustomListEditorDisplayList;
class DELPHICLASS TTMSFNCCustomListEditor;
class DELPHICLASS TTMSFNCListEditor;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TTMSFNCCustomListEditorItem : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	TTMSFNCCustomListEditor* FOwner;
	bool FDirty;
	System::UnicodeString FText;
	Fmx::Tmsfnctypes::TTMSFNCBitmap* FLeftImage;
	Fmx::Tmsfnctypes::TTMSFNCBitmap* FRightImage;
	System::UnicodeString FLeftImageName;
	System::UnicodeString FRightImageName;
	float FTextWidth;
	NativeInt FTag;
	System::TObject* FDataObject;
	System::UnicodeString FDataString;
	NativeInt FDataInteger;
	System::UnicodeString FValue;
	void __fastcall SetText(const System::UnicodeString Value);
	void __fastcall SetLeftImage(Fmx::Tmsfnctypes::TTMSFNCBitmap* const Value);
	void __fastcall SetRightImage(Fmx::Tmsfnctypes::TTMSFNCBitmap* const Value);
	void __fastcall SetLeftImageName(const System::UnicodeString Value);
	void __fastcall SetRightImageName(const System::UnicodeString Value);
	Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* __fastcall GetBitmapContainer();
	
protected:
	void __fastcall BitmapChanged(System::TObject* Sender);
	
public:
	__fastcall virtual TTMSFNCCustomListEditorItem(System::Classes::TCollection* Collection);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__property Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* BitmapContainer = {read=GetBitmapContainer};
	__fastcall virtual ~TTMSFNCCustomListEditorItem();
	__property System::UnicodeString DataString = {read=FDataString, write=FDataString};
	__property NativeInt DataInteger = {read=FDataInteger, write=FDataInteger};
	__property System::TObject* DataObject = {read=FDataObject, write=FDataObject};
	
__published:
	__property System::UnicodeString Text = {read=FText, write=SetText};
	__property System::UnicodeString Value = {read=FValue, write=FValue};
	__property Fmx::Tmsfnctypes::TTMSFNCBitmap* LeftImage = {read=FLeftImage, write=SetLeftImage};
	__property Fmx::Tmsfnctypes::TTMSFNCBitmap* RightImage = {read=FRightImage, write=SetRightImage};
	__property System::UnicodeString LeftImageName = {read=FLeftImageName, write=SetLeftImageName};
	__property System::UnicodeString RightImageName = {read=FRightImageName, write=SetRightImageName};
	__property NativeInt Tag = {read=FTag, write=FTag};
};


class PASCALIMPLEMENTATION TTMSFNCCustomListEditorItems : public Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCCustomListEditorItem*>
{
	typedef Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCCustomListEditorItem*> inherited;
	
public:
	TTMSFNCCustomListEditorItem* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCCustomListEditor* FOwner;
	HIDESBASE TTMSFNCCustomListEditorItem* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCCustomListEditorItem* const Value);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall CreateItemClass();
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	
public:
	__fastcall virtual TTMSFNCCustomListEditorItems(TTMSFNCCustomListEditor* AOwner);
	__property TTMSFNCCustomListEditorItem* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	HIDESBASE TTMSFNCCustomListEditorItem* __fastcall Add();
	HIDESBASE TTMSFNCCustomListEditorItem* __fastcall Insert(int Index);
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCCustomListEditorItems() { }
	
};


struct DECLSPEC_DRECORD TTMSFNCCustomListEditorDisplayItem
{
public:
	TTMSFNCCustomListEditorItem* Item;
	System::Types::TRectF TextRect;
	System::Types::TRectF DrawTextRect;
	System::Types::TRectF Rect;
	System::Types::TRectF DrawRect;
	System::Types::TRectF LeftImageRect;
	System::Types::TRectF RightImageRect;
	System::Types::TRectF DrawLeftImageRect;
	System::Types::TRectF DrawRightImageRect;
	float TextWidth;
	float TextHeight;
};


class PASCALIMPLEMENTATION TTMSFNCCustomListEditorItemAppearance : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	TTMSFNCCustomListEditor* FOwner;
	float FVerticalSpacing;
	float FHorizontalSpacing;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FFillNormal;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FFillSelected;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FStrokeNormal;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FStrokeSelected;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FFont;
	System::Uitypes::TAlphaColor FFontColorNormal;
	System::Uitypes::TAlphaColor FFontColorSelected;
	float FRoundingNormal;
	float FRoundingSelected;
	Fmx::Tmsfnctypes::TTMSFNCBitmap* FDefaultLeftImage;
	Fmx::Tmsfnctypes::TTMSFNCBitmap* FDefaultRightImage;
	System::UnicodeString FDefaultRightImageName;
	System::UnicodeString FDefaultLeftImageName;
	void __fastcall SetHorizontalSpacing(const float Value);
	void __fastcall SetVerticalSpacing(const float Value);
	void __fastcall SetFillNormal(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetFillSelected(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetStrokeNormal(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetStrokeSelected(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetFontColorNormal(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetFontColorSelected(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetRoundingNormal(const float Value);
	void __fastcall SetRoundingSelected(const float Value);
	void __fastcall SetDefaultLeftImage(Fmx::Tmsfnctypes::TTMSFNCBitmap* const Value);
	void __fastcall SetDefaultRightImage(Fmx::Tmsfnctypes::TTMSFNCBitmap* const Value);
	void __fastcall SetDefaultLeftImageName(const System::UnicodeString Value);
	void __fastcall SetDefaultRightImageName(const System::UnicodeString Value);
	Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* __fastcall GetBitmapContainer();
	bool __fastcall IsHorizontalSpacingStored();
	bool __fastcall IsRoundingNormalStored();
	bool __fastcall IsRoundingSelectedStored();
	bool __fastcall IsVerticalSpacingStored();
	
protected:
	void __fastcall BitmapChanged(System::TObject* Sender);
	void __fastcall FillChanged(System::TObject* Sender);
	void __fastcall StrokeChanged(System::TObject* Sender);
	void __fastcall FontChanged(System::TObject* Sender);
	
public:
	__fastcall TTMSFNCCustomListEditorItemAppearance(TTMSFNCCustomListEditor* AOwner);
	__fastcall virtual ~TTMSFNCCustomListEditorItemAppearance();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__property Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* BitmapContainer = {read=GetBitmapContainer};
	
__published:
	__property float VerticalSpacing = {read=FVerticalSpacing, write=SetVerticalSpacing, stored=IsVerticalSpacingStored};
	__property float HorizontalSpacing = {read=FHorizontalSpacing, write=SetHorizontalSpacing, stored=IsHorizontalSpacingStored};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FillNormal = {read=FFillNormal, write=SetFillNormal};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FillSelected = {read=FFillSelected, write=SetFillSelected};
	__property System::Uitypes::TAlphaColor FontColorNormal = {read=FFontColorNormal, write=SetFontColorNormal, default=-16777216};
	__property System::Uitypes::TAlphaColor FontColorSelected = {read=FFontColorSelected, write=SetFontColorSelected, default=-1};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* StrokeNormal = {read=FStrokeNormal, write=SetStrokeNormal};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* StrokeSelected = {read=FStrokeSelected, write=SetStrokeSelected};
	__property float RoundingNormal = {read=FRoundingNormal, write=SetRoundingNormal, stored=IsRoundingNormalStored};
	__property float RoundingSelected = {read=FRoundingSelected, write=SetRoundingSelected, stored=IsRoundingSelectedStored};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* Font = {read=FFont, write=SetFont};
	__property Fmx::Tmsfnctypes::TTMSFNCBitmap* DefaultLeftImage = {read=FDefaultLeftImage, write=SetDefaultLeftImage};
	__property Fmx::Tmsfnctypes::TTMSFNCBitmap* DefaultRightImage = {read=FDefaultRightImage, write=SetDefaultRightImage};
	__property System::UnicodeString DefaultLeftImageName = {read=FDefaultLeftImageName, write=SetDefaultLeftImageName};
	__property System::UnicodeString DefaultRightImageName = {read=FDefaultRightImageName, write=SetDefaultRightImageName};
};


typedef Fmx::Controls::TControl TTMSFNCCustomListEditorControl;

class PASCALIMPLEMENTATION TTMSFNCCustomListEditorControlProtected : public Fmx::Controls::TControl
{
	typedef Fmx::Controls::TControl inherited;
	
public:
	/* TControl.Create */ inline __fastcall virtual TTMSFNCCustomListEditorControlProtected(System::Classes::TComponent* AOwner) : Fmx::Controls::TControl(AOwner) { }
	/* TControl.Destroy */ inline __fastcall virtual ~TTMSFNCCustomListEditorControlProtected() { }
	
};


_DECLARE_METACLASS(System::TMetaClass, TTMSFNCCustomListEditorControlClass);

typedef void __fastcall (__closure *TTMSFNCCustomListEditorItemClick)(System::TObject* Sender, int AItemIndex);

typedef void __fastcall (__closure *TTMSFNCCustomListEditorItemUpdate)(System::TObject* Sender, int AItemIndex, System::UnicodeString &AText);

typedef void __fastcall (__closure *TTMSFNCCustomListEditorGetSize)(System::TObject* Sender, int AItemIndex, float &AWidth, float &AHeight);

typedef void __fastcall (__closure *TTMSFNCCustomListEditorGetText)(System::TObject* Sender, System::UnicodeString &AText);

typedef void __fastcall (__closure *TTMSFNCCustomListEditorEditorCreate)(System::TObject* Sender, TTMSFNCCustomListEditorControlClass &AClass);

typedef void __fastcall (__closure *TTMSFNCCustomListEditorEditorUpdate)(System::TObject* Sender, int AItemIndex, System::UnicodeString &AText);

typedef void __fastcall (__closure *TTMSFNCCustomListEditorItemCanDelete)(System::TObject* Sender, int AItemIndex, bool &ACanDelete);

typedef void __fastcall (__closure *TTMSFNCCustomListEditorItemDelete)(System::TObject* Sender, int AItemIndex);

typedef void __fastcall (__closure *TTMSFNCCustomListEditorItemInsert)(System::TObject* Sender, int AItemIndex);

typedef void __fastcall (__closure *TTMSFNCCustomListEditorItemAppearanceEvent)(System::TObject* Sender, int AItemIndex, TTMSFNCCustomListEditorItemAppearance* AAppearance);

typedef void __fastcall (__closure *TTMSFNCCustomListEditorItemAnchorClick)(System::TObject* Sender, int AItemIndex, System::UnicodeString AAnchor);

class PASCALIMPLEMENTATION TTMSFNCCustomListEditorDisplayList : public System::Generics::Collections::TList__1<TTMSFNCCustomListEditorDisplayItem>
{
	typedef System::Generics::Collections::TList__1<TTMSFNCCustomListEditorDisplayItem> inherited;
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCListEditor_TTMSFNCCustomListEditorDisplayItem>.Create */ inline __fastcall TTMSFNCCustomListEditorDisplayList()/* overload */ : System::Generics::Collections::TList__1<TTMSFNCCustomListEditorDisplayItem>() { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCListEditor_TTMSFNCCustomListEditorDisplayItem>.Create */ inline __fastcall TTMSFNCCustomListEditorDisplayList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCustomListEditorDisplayItem> > AComparer)/* overload */ : System::Generics::Collections::TList__1<TTMSFNCCustomListEditorDisplayItem>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCListEditor_TTMSFNCCustomListEditorDisplayItem>.Create */ inline __fastcall TTMSFNCCustomListEditorDisplayList(System::Generics::Collections::TEnumerable__1<TTMSFNCCustomListEditorDisplayItem>* const Collection)/* overload */ : System::Generics::Collections::TList__1<TTMSFNCCustomListEditorDisplayItem>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCListEditor_TTMSFNCCustomListEditorDisplayItem>.Create */ inline __fastcall TTMSFNCCustomListEditorDisplayList(const TTMSFNCCustomListEditorDisplayItem *Values, const int Values_High)/* overload */ : System::Generics::Collections::TList__1<TTMSFNCCustomListEditorDisplayItem>(Values, Values_High) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCListEditor_TTMSFNCCustomListEditorDisplayItem>.Destroy */ inline __fastcall virtual ~TTMSFNCCustomListEditorDisplayList() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCustomListEditor : public Fmx::Tmsfnccustomscrollcontrol::TTMSFNCCustomScrollControl
{
	typedef Fmx::Tmsfnccustomscrollcontrol::TTMSFNCCustomScrollControl inherited;
	
private:
	bool FFirst;
	Fmx::Types::TTimer* FFocusTimer;
	bool FBlockOnExit;
	bool FEditEntered;
	bool FBlockTracking;
	bool FBlockUpdate;
	int FEditItemIndex;
	int FNewItemIndex;
	System::Types::TRectF FNewTextRect;
	float FDownY;
	bool FMouseDown;
	Fmx::Controls::TControl* FEdit;
	TTMSFNCCustomListEditorDisplayList* FDisplayList;
	TTMSFNCCustomListEditorDisplayList* FCalculateList;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FStroke;
	int FUpdateCount;
	TTMSFNCCustomListEditorItemAppearance* FItemAppearance;
	TTMSFNCCustomListEditorItems* FItems;
	int FSelectedItemIndex;
	TTMSFNCCustomListEditorItemClick FOnItemClick;
	bool FReadOnly;
	TTMSFNCCustomListEditorEditorCreate FOnEditorCreate;
	Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* FBitmapContainer;
	System::Classes::TNotifyEvent FOnEditorShow;
	System::Classes::TNotifyEvent FOnEditorHide;
	TTMSFNCCustomListEditorItemUpdate FOnItemUpdate;
	TTMSFNCCustomListEditorEditorUpdate FOnEditorUpdate;
	TTMSFNCCustomListEditorGetSize FOnEditorGetSize;
	TTMSFNCCustomListEditorGetText FOnEditorGetText;
	TTMSFNCCustomListEditorItemCanDelete FOnItemCanDelete;
	TTMSFNCCustomListEditorItemDelete FOnItemDelete;
	TTMSFNCCustomListEditorItemInsert FOnItemInsert;
	TTMSFNCCustomListEditorItemClick FOnRightImageClick;
	TTMSFNCCustomListEditorItemClick FOnLeftImageClick;
	TTMSFNCCustomListEditorItemAppearanceEvent FOnItemAppearance;
	TTMSFNCCustomListEditorItemAnchorClick FOnItemAnchorClick;
	HIDESBASE void __fastcall SetFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	HIDESBASE void __fastcall SetStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetItemAppearance(TTMSFNCCustomListEditorItemAppearance* const Value);
	void __fastcall SetItems(TTMSFNCCustomListEditorItems* const Value);
	void __fastcall SetSelectedItemIndex(const int Value);
	void __fastcall SetReadOnly(const bool Value);
	void __fastcall SetBitmapContainer(Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* const Value);
	Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* __fastcall GetBitmapContainer();
	System::UnicodeString __fastcall XYToItemAnchor(const TTMSFNCCustomListEditorDisplayItem &ADisplayItem, float AX, float AY);
	void __fastcall EditEnter(System::TObject* Sender);
	
protected:
	virtual System::UnicodeString __fastcall GetDocURL();
	virtual void __fastcall ChangeDPIScale(int M, int D);
	virtual void __fastcall ApplyStyle();
	virtual void __fastcall ResetToDefaultStyle();
	void __fastcall DoFocusTimer(System::TObject* Sender);
	void __fastcall DoEditorHide();
	void __fastcall DoEditorShow();
	virtual void __fastcall ClearEdit();
	void __fastcall DoEditorGetText(System::UnicodeString &AText);
	void __fastcall DoItemUpdate(int AItemIndex, System::UnicodeString &AText);
	void __fastcall DoEditorGetSize(int AItemIndex, float &AWidth, float &AHeight);
	void __fastcall DoEditorUpdate(int AItemIndex, System::UnicodeString &AText);
	virtual bool __fastcall ColumnStretchingActive();
	TTMSFNCCustomListEditorDisplayItem __fastcall InitializeDisplayItem();
	virtual void __fastcall Notification(System::Classes::TComponent* AComponent, System::Classes::TOperation Operation);
	Fmx::Tmsfnctypes::TTMSFNCBitmap* __fastcall GetLeftImage(int AItemIndex, TTMSFNCCustomListEditorItemAppearance* AAppearance);
	Fmx::Tmsfnctypes::TTMSFNCBitmap* __fastcall GetRightImage(int AItemIndex, TTMSFNCCustomListEditorItemAppearance* AAppearance);
	virtual void __fastcall EditExit(System::TObject* Sender);
	virtual void __fastcall EditorApplyStyleLookup(System::TObject* Sender);
	virtual void __fastcall EditKeyDown(System::TObject* Sender, System::Word &Key, System::WideChar &KeyChar, System::Classes::TShiftState Shift);
	virtual void __fastcall EditChangeTracking(System::TObject* Sender);
	virtual Fmx::Controls::TControl* __fastcall EditorCreate();
	void __fastcall DoCreateEditorControl(TTMSFNCCustomListEditorControlClass &AClass);
	virtual void __fastcall CreateEditor();
	virtual void __fastcall AssignEditorEvents();
	virtual void __fastcall UpdateEditorText(int AItemIndex);
	virtual void __fastcall UpdateEditorProperties();
	virtual void __fastcall UpdateItemText(int AItemIndex);
	virtual System::UnicodeString __fastcall GetEditorText();
	void __fastcall ShowEditorAt(const System::Types::TRectF &ARect);
	void __fastcall ShowEditor(int AItemIndex);
	TTMSFNCCustomListEditorDisplayItem __fastcall GetDisplayItem(int AItemIndex);
	TTMSFNCCustomListEditorDisplayItem __fastcall GetCalculateItem(int AItemIndex);
	void __fastcall HideEditor();
	void __fastcall CancelEditor();
	virtual void __fastcall DoItemClick(int AItemIndex);
	virtual void __fastcall DoItemAnchorClick(int AItemIndex, System::UnicodeString AAnchor);
	virtual void __fastcall DoItemLeftImageClick(int AItemIndex);
	virtual void __fastcall DoItemRightImageClick(int AItemIndex);
	virtual void __fastcall HandleMouseDown(System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall HandleMouseUp(System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall HandleMouseMove(System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall HandleKeyDown(System::Word &Key, System::Classes::TShiftState Shift);
	virtual void __fastcall DoEnter();
	virtual void __fastcall DoExit();
	virtual double __fastcall GetTotalContentHeight();
	virtual void __fastcall VerticalScrollPositionChanged();
	void __fastcall CalculateItems(bool ARealign = true);
	void __fastcall DirtyItems();
	void __fastcall DisplayItems();
	void __fastcall RepaintItems();
	void __fastcall DrawItems(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics);
	void __fastcall DoItemDelete(int AItemIndex);
	void __fastcall DoItemInsert(int AItemIndex);
	void __fastcall DoItemAppearance(int AItemIndex, TTMSFNCCustomListEditorItemAppearance* AAppearance);
	void __fastcall DoItemCanDelete(int AItemIndex, bool &ACanDelete);
	void __fastcall DoInsertItem(int AItemIndex);
	virtual void __fastcall PickerBeginUpdate();
	virtual void __fastcall PickerEndUpdate();
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
	__property Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* BitmapContainer = {read=GetBitmapContainer, write=SetBitmapContainer};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* Fill = {read=FFill, write=SetFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* Stroke = {read=FStroke, write=SetStroke};
	__property TTMSFNCCustomListEditorItemAppearance* ItemAppearance = {read=FItemAppearance, write=SetItemAppearance};
	__property TTMSFNCCustomListEditorItems* Items = {read=FItems, write=SetItems};
	__property int SelectedItemIndex = {read=FSelectedItemIndex, write=SetSelectedItemIndex, default=-1};
	__property TTMSFNCCustomListEditorItemClick OnItemClick = {read=FOnItemClick, write=FOnItemClick};
	__property TTMSFNCCustomListEditorEditorCreate OnEditorCreate = {read=FOnEditorCreate, write=FOnEditorCreate};
	__property bool ReadOnly = {read=FReadOnly, write=SetReadOnly, default=0};
	__property System::Classes::TNotifyEvent OnEditorHide = {read=FOnEditorHide, write=FOnEditorHide};
	__property System::Classes::TNotifyEvent OnEditorShow = {read=FOnEditorShow, write=FOnEditorShow};
	__property TTMSFNCCustomListEditorEditorUpdate OnEditorUpdate = {read=FOnEditorUpdate, write=FOnEditorUpdate};
	__property TTMSFNCCustomListEditorItemUpdate OnItemUpdate = {read=FOnItemUpdate, write=FOnItemUpdate};
	__property TTMSFNCCustomListEditorGetSize OnEditorGetSize = {read=FOnEditorGetSize, write=FOnEditorGetSize};
	__property TTMSFNCCustomListEditorGetText OnEditorGetText = {read=FOnEditorGetText, write=FOnEditorGetText};
	__property TTMSFNCCustomListEditorItemDelete OnItemDelete = {read=FOnItemDelete, write=FOnItemDelete};
	__property TTMSFNCCustomListEditorItemCanDelete OnItemCanDelete = {read=FOnItemCanDelete, write=FOnItemCanDelete};
	__property TTMSFNCCustomListEditorItemInsert OnItemInsert = {read=FOnItemInsert, write=FOnItemInsert};
	__property TTMSFNCCustomListEditorItemClick OnItemLeftImageClick = {read=FOnLeftImageClick, write=FOnLeftImageClick};
	__property TTMSFNCCustomListEditorItemClick OnItemRightImageClick = {read=FOnRightImageClick, write=FOnRightImageClick};
	__property TTMSFNCCustomListEditorItemAppearanceEvent OnItemAppearance = {read=FOnItemAppearance, write=FOnItemAppearance};
	__property TTMSFNCCustomListEditorItemAnchorClick OnItemAnchorClick = {read=FOnItemAnchorClick, write=FOnItemAnchorClick};
	
public:
	__fastcall virtual TTMSFNCCustomListEditor(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCCustomListEditor();
	virtual void __fastcall BeginUpdate();
	virtual void __fastcall EndUpdate();
	virtual void __fastcall UpdateControlAfterResize();
	virtual void __fastcall Draw(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	Fmx::Controls::TControl* __fastcall Editor();
	int __fastcall XYToItem(float X, float Y, bool Overflow = false);
	void __fastcall ScrollToItem(int AItemIndex);
	virtual void __fastcall InitSample();
private:
	void *__ITMSFNCControlPickerItems;	// Fmx::Tmsfnccontrolpicker::ITMSFNCControlPickerItems 
	void *__ITMSFNCBitmapContainer;	// Fmx::Tmsfncbitmapcontainer::ITMSFNCBitmapContainer 
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {D0FBAC5E-B2AA-46AE-AD21-91DF23AD4FCB}
	operator Fmx::Tmsfnccontrolpicker::_di_ITMSFNCControlPickerItems()
	{
		Fmx::Tmsfnccontrolpicker::_di_ITMSFNCControlPickerItems intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator Fmx::Tmsfnccontrolpicker::ITMSFNCControlPickerItems*(void) { return (Fmx::Tmsfnccontrolpicker::ITMSFNCControlPickerItems*)&__ITMSFNCControlPickerItems; }
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


class PASCALIMPLEMENTATION TTMSFNCListEditor : public TTMSFNCCustomListEditor
{
	typedef TTMSFNCCustomListEditor inherited;
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	
__published:
	__property OnEditorShow;
	__property OnEditorHide;
	__property OnEditorUpdate;
	__property OnEditorGetSize;
	__property OnEditorGetText;
	__property OnEditorCreate;
	__property OnItemLeftImageClick;
	__property OnItemRightImageClick;
	__property OnItemUpdate;
	__property OnItemCanDelete;
	__property OnItemInsert;
	__property OnItemDelete;
	__property OnItemAppearance;
	__property OnItemAnchorClick;
	__property ReadOnly = {default=0};
	__property BitmapContainer;
	__property OnItemClick;
	__property SelectedItemIndex = {default=-1};
	__property Items;
	__property ItemAppearance;
	__property Stroke;
	__property Fill;
public:
	/* TTMSFNCCustomListEditor.Create */ inline __fastcall virtual TTMSFNCListEditor(System::Classes::TComponent* AOwner) : TTMSFNCCustomListEditor(AOwner) { }
	/* TTMSFNCCustomListEditor.Destroy */ inline __fastcall virtual ~TTMSFNCListEditor() { }
	
};


//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x2);
static constexpr System::Int8 BLD_VER = System::Int8(0x5);
static constexpr System::Int8 CLICKMARGIN = System::Int8(0x5);
}	/* namespace Tmsfnclisteditor */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCLISTEDITOR)
using namespace Fmx::Tmsfnclisteditor;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfnclisteditorHPP
