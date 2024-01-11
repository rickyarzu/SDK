// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCSearchList.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncsearchlistHPP
#define Fmx_TmsfncsearchlistHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <System.TypInfo.hpp>
#include <System.Generics.Collections.hpp>
#include <FMX.TMSFNCPersistence.hpp>
#include <FMX.TMSFNCScrollControl.hpp>
#include <FMX.TMSFNCGraphics.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.TMSFNCUtils.hpp>
#include <FMX.TMSFNCGraphicsTypes.hpp>
#include <System.Types.hpp>
#include <FMX.Controls.hpp>
#include <FMX.Graphics.hpp>
#include <System.UIConsts.hpp>
#include <System.UITypes.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>
#include <FMX.Types.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncsearchlist
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TGDIPPicture;
class DELPHICLASS TCategoryItem;
class DELPHICLASS TCategoryList;
class DELPHICLASS TColumnItem;
class DELPHICLASS TColumnItems;
class DELPHICLASS TSearchColumnItem;
class DELPHICLASS TSearchColumnItems;
class DELPHICLASS TSearchListItem;
class DELPHICLASS TSearchList;
class DELPHICLASS TTMSFNCSearchListAppearance;
class DELPHICLASS TFilterCondition;
class DELPHICLASS TTMSFNCCustomSearchList;
class DELPHICLASS TTMSFNCSearchList;
//-- type declarations -------------------------------------------------------
#pragma pack(push,4)
class PASCALIMPLEMENTATION TGDIPPicture : public Fmx::Graphics::TBitmap
{
	typedef Fmx::Graphics::TBitmap inherited;
	
public:
	void __fastcall LoadFromSVG(System::UnicodeString ASVG);
	void __fastcall LoadFromBase64(System::UnicodeString ABase64);
	void __fastcall LoadFromURL(System::UnicodeString AURL)/* overload */;
	void __fastcall LoadFromURL(System::UnicodeString AURL, NativeUInt AInstance)/* overload */;
	void __fastcall LoadFromResource(System::UnicodeString AResourceName)/* overload */;
	void __fastcall LoadFromResource(System::UnicodeString AResourceName, NativeUInt AInstance)/* overload */;
	System::UnicodeString __fastcall SaveToBase64();
	__classmethod Fmx::Tmsfnctypes::TTMSFNCBitmap* __fastcall CreateFromResource(System::UnicodeString AResourceName)/* overload */;
	__classmethod Fmx::Tmsfnctypes::TTMSFNCBitmap* __fastcall CreateFromResource(System::UnicodeString AResourceName, NativeUInt AInstance)/* overload */;
	__classmethod Fmx::Tmsfnctypes::TTMSFNCBitmap* __fastcall CreateFromURL(System::UnicodeString AURL)/* overload */;
	__classmethod Fmx::Tmsfnctypes::TTMSFNCBitmap* __fastcall CreateFromURL(System::UnicodeString AURL, NativeUInt AInstance)/* overload */;
	__classmethod Fmx::Tmsfnctypes::TTMSFNCBitmap* __fastcall CreateFromBase64(System::UnicodeString ABase64);
	__classmethod Fmx::Tmsfnctypes::TTMSFNCBitmap* __fastcall CreateFromSVG(System::UnicodeString ASVG);
public:
	/* TBitmap.Create */ inline __fastcall virtual TGDIPPicture()/* overload */ : Fmx::Graphics::TBitmap() { }
	/* TBitmap.Create */ inline __fastcall virtual TGDIPPicture(const int AWidth, const int AHeight)/* overload */ : Fmx::Graphics::TBitmap(AWidth, AHeight) { }
	/* TBitmap.CreateFromStream */ inline __fastcall virtual TGDIPPicture(System::Classes::TStream* const AStream) : Fmx::Graphics::TBitmap(AStream) { }
	/* TBitmap.CreateFromFile */ inline __fastcall virtual TGDIPPicture(const System::UnicodeString AFileName) : Fmx::Graphics::TBitmap(AFileName) { }
	/* TBitmap.CreateFromBitmapAndMask */ inline __fastcall TGDIPPicture(Fmx::Graphics::TBitmap* const Bitmap, Fmx::Graphics::TBitmap* const Mask) : Fmx::Graphics::TBitmap(Bitmap, Mask) { }
	/* TBitmap.Destroy */ inline __fastcall virtual ~TGDIPPicture() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TCategoryItem : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	int FID;
	System::UnicodeString FCaption;
	bool FFilter;
	NativeInt FTag;
	void __fastcall SetCaption(const System::UnicodeString Value);
	void __fastcall SetFilter(const bool Value);
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property System::UnicodeString Caption = {read=FCaption, write=SetCaption};
	__property bool Filter = {read=FFilter, write=SetFilter, default=0};
	__property int ID = {read=FID, write=FID, nodefault};
	__property NativeInt Tag = {read=FTag, write=FTag, nodefault};
public:
	/* TCollectionItem.Create */ inline __fastcall virtual TCategoryItem(System::Classes::TCollection* Collection) : System::Classes::TCollectionItem(Collection) { }
	/* TCollectionItem.Destroy */ inline __fastcall virtual ~TCategoryItem() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TCategoryList : public System::Classes::TOwnedCollection
{
	typedef System::Classes::TOwnedCollection inherited;
	
public:
	TCategoryItem* operator[](int AIndex) { return this->Items[AIndex]; }
	
private:
	System::Classes::TNotifyEvent FOnChange;
	TCategoryItem* __fastcall GetItems(int AIndex);
	void __fastcall SetItems(int AIndex, TCategoryItem* const Value);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall GetItemClass();
	virtual void __fastcall Update(System::Classes::TCollectionItem* Item);
	HIDESBASE virtual void __fastcall Changed();
	
public:
	__fastcall TCategoryList(System::Classes::TComponent* AOwner);
	HIDESBASE TCategoryItem* __fastcall Add()/* overload */;
	HIDESBASE TCategoryItem* __fastcall Add(System::UnicodeString Caption, int ID)/* overload */;
	HIDESBASE TCategoryItem* __fastcall Insert(int AIndex);
	__property TCategoryItem* Items[int AIndex] = {read=GetItems, write=SetItems/*, default*/};
	__property System::Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TCategoryList() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TColumnItem : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	int FWidth;
	System::Uitypes::TAlphaColor FColor;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FFont;
	bool FVisible;
	bool FControlFont;
	NativeInt FTag;
	bool FTrimming;
	bool FWordWrap;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign FVertAlignment;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign FAlignment;
	void __fastcall SetColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetVisible(const bool Value);
	void __fastcall SetWidth(const int Value);
	void __fastcall SetControlFont(const bool Value);
	void __fastcall SetWordWrap(const bool Value);
	void __fastcall SetTrimming(const bool Value);
	void __fastcall SetAlignment(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign Value);
	void __fastcall SetVertAlignment(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign Value);
	
protected:
	void __fastcall FontChanged(System::TObject* Sender);
	
public:
	__fastcall virtual TColumnItem(System::Classes::TCollection* Collection);
	__fastcall virtual ~TColumnItem();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign Alignment = {read=FAlignment, write=SetAlignment, default=1};
	__property System::Uitypes::TAlphaColor Color = {read=FColor, write=SetColor, default=0};
	__property bool ControlFont = {read=FControlFont, write=SetControlFont, default=1};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* Font = {read=FFont, write=SetFont};
	__property NativeInt Tag = {read=FTag, write=FTag, default=0};
	__property bool Trimming = {read=FTrimming, write=SetTrimming, default=0};
	__property bool Visible = {read=FVisible, write=SetVisible, default=1};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign VertAlignment = {read=FVertAlignment, write=SetVertAlignment, default=1};
	__property int Width = {read=FWidth, write=SetWidth, default=128};
	__property bool WordWrap = {read=FWordWrap, write=SetWordWrap, default=1};
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TColumnItems : public System::Classes::TOwnedCollection
{
	typedef System::Classes::TOwnedCollection inherited;
	
public:
	TColumnItem* operator[](int AIndex) { return this->Items[AIndex]; }
	
private:
	System::Classes::TNotifyEvent FOnChange;
	TColumnItem* __fastcall GetItems(int AIndex);
	void __fastcall SetItems(int AIndex, TColumnItem* const Value);
	
protected:
	virtual void __fastcall Update(System::Classes::TCollectionItem* Item);
	virtual System::Classes::TCollectionItemClass __fastcall GetItemClass();
	
public:
	__fastcall TColumnItems(System::Classes::TComponent* AOwner);
	HIDESBASE TColumnItem* __fastcall Add();
	HIDESBASE TColumnItem* __fastcall Insert(int AIndex);
	__property TColumnItem* Items[int AIndex] = {read=GetItems, write=SetItems/*, default*/};
	__property System::Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TColumnItems() { }
	
};

#pragma pack(pop)

enum DECLSPEC_DENUM TColumnItemShape : unsigned char { sNone, sRect, sBar, sBackground };

#pragma pack(push,4)
class PASCALIMPLEMENTATION TSearchColumnItem : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	TGDIPPicture* FPicture;
	System::UnicodeString FCaption;
	System::UnicodeString FDescription;
	System::Uitypes::TImageIndex FImageIndex;
	System::Uitypes::TAlphaColor FTextColor;
	TColumnItemShape FShape;
	System::Uitypes::TAlphaColor FColor;
	void __fastcall SetDescription(const System::UnicodeString Value);
	void __fastcall SetImageIndex(const System::Uitypes::TImageIndex Value);
	void __fastcall SetPicture(TGDIPPicture* const Value);
	void __fastcall SetCaption(const System::UnicodeString Value);
	TGDIPPicture* __fastcall GetPicture();
	void __fastcall SetColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetShape(const TColumnItemShape Value);
	void __fastcall SetTextColor(const System::Uitypes::TAlphaColor Value);
	
public:
	__fastcall virtual TSearchColumnItem(System::Classes::TCollection* Collection);
	__fastcall virtual ~TSearchColumnItem();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property System::UnicodeString Caption = {read=FCaption, write=SetCaption};
	__property System::Uitypes::TAlphaColor Color = {read=FColor, write=SetColor, default=0};
	__property System::UnicodeString Description = {read=FDescription, write=SetDescription};
	__property System::Uitypes::TImageIndex ImageIndex = {read=FImageIndex, write=SetImageIndex, default=-1};
	__property TGDIPPicture* Picture = {read=GetPicture, write=SetPicture};
	__property TColumnItemShape Shape = {read=FShape, write=SetShape, default=0};
	__property System::Uitypes::TAlphaColor TextColor = {read=FTextColor, write=SetTextColor, default=0};
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TSearchColumnItems : public System::Classes::TOwnedCollection
{
	typedef System::Classes::TOwnedCollection inherited;
	
public:
	TSearchColumnItem* operator[](int AIndex) { return this->Items[AIndex]; }
	
private:
	System::Classes::TNotifyEvent FOnChange;
	TSearchColumnItem* __fastcall GetItems(int AIndex);
	void __fastcall SetItems(int AIndex, TSearchColumnItem* const Value);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall GetItemClass();
	virtual void __fastcall Update(System::Classes::TCollectionItem* Item);
	
public:
	__fastcall TSearchColumnItems(System::Classes::TPersistent* AOwner);
	HIDESBASE TSearchColumnItem* __fastcall Add();
	HIDESBASE TSearchColumnItem* __fastcall Insert(int AIndex);
	__property TSearchColumnItem* Items[int AIndex] = {read=GetItems, write=SetItems/*, default*/};
	__property System::Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TSearchColumnItems() { }
	
};

#pragma pack(pop)

enum DECLSPEC_DENUM TSearchItemType : unsigned char { itItem, itCategory };

enum DECLSPEC_DENUM TSortDirection : unsigned char { sdDown, sdUp };

#pragma pack(push,4)
class PASCALIMPLEMENTATION TSearchListItem : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	int FCategoryID;
	TSearchItemType FItemType;
	bool FVisible;
	TSearchColumnItems* FColumns;
	int FCategoryCount;
	NativeInt FTag;
	System::TObject* FObject;
	bool FOwnsObject;
	void __fastcall SetItemType(const TSearchItemType Value);
	void __fastcall SetVisible(const bool Value);
	void __fastcall SetColumns(TSearchColumnItems* const Value);
	System::UnicodeString __fastcall GetCaptions(int AIndex);
	void __fastcall SetCaptions(int AIndex, const System::UnicodeString Value);
	System::UnicodeString __fastcall GetDescriptions(int AIndex);
	System::Uitypes::TImageIndex __fastcall GetImageIndexes(int AIndex);
	void __fastcall SetDescriptions(int AIndex, const System::UnicodeString Value);
	void __fastcall SetImageIndexes(int AIndex, const System::Uitypes::TImageIndex Value);
	void __fastcall ColumnsChanged(System::TObject* Sender);
	
protected:
	virtual TSearchColumnItems* __fastcall CreateColumns();
	__property int CategoryCount = {read=FCategoryCount, write=FCategoryCount, nodefault};
	
public:
	__fastcall virtual TSearchListItem(System::Classes::TCollection* Collection);
	__fastcall virtual ~TSearchListItem();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__property bool Visible = {read=FVisible, write=SetVisible, nodefault};
	__property System::UnicodeString Captions[int AIndex] = {read=GetCaptions, write=SetCaptions};
	__property System::UnicodeString Descriptions[int AIndex] = {read=GetDescriptions, write=SetDescriptions};
	__property System::Uitypes::TImageIndex ImageIndexes[int AIndex] = {read=GetImageIndexes, write=SetImageIndexes};
	__property System::TObject* Object = {read=FObject, write=FObject};
	__property bool OwnsObject = {read=FOwnsObject, write=FOwnsObject, nodefault};
	
__published:
	__property int CategoryID = {read=FCategoryID, write=FCategoryID, default=-1};
	__property TSearchColumnItems* Columns = {read=FColumns, write=SetColumns};
	__property TSearchItemType ItemType = {read=FItemType, write=SetItemType, default=0};
	__property NativeInt Tag = {read=FTag, write=FTag, default=0};
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TSearchList : public System::Classes::TOwnedCollection
{
	typedef System::Classes::TOwnedCollection inherited;
	
public:
	TSearchListItem* operator[](int AIndex) { return this->Items[AIndex]; }
	
private:
	System::Classes::TNotifyEvent FOnChange;
	int FSortColumn;
	TSortDirection FSortDirection;
	bool FSortCaseSensitive;
	HIDESBASE TSearchListItem* __fastcall GetItem(int AIndex);
	HIDESBASE void __fastcall SetItem(int AIndex, TSearchListItem* const Value);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall GetItemClass();
	virtual void __fastcall Update(System::Classes::TCollectionItem* Item);
	HIDESBASE virtual void __fastcall Changed();
	void __fastcall QuickSort(int L, int R);
	virtual int __fastcall Compare(System::Classes::TCollectionItem* Item1, System::Classes::TCollectionItem* Item2);
	
public:
	__fastcall TSearchList(System::Classes::TComponent* AOwner);
	HIDESBASE TSearchListItem* __fastcall Add()/* overload */;
	HIDESBASE TSearchListItem* __fastcall Add(System::UnicodeString ACaption, System::UnicodeString ADescription = System::UnicodeString())/* overload */;
	HIDESBASE TSearchListItem* __fastcall Add(System::UnicodeString ACaption, System::UnicodeString ADescription, System::TObject* AObject = (System::TObject*)(0x0))/* overload */;
	HIDESBASE TSearchListItem* __fastcall Insert(int AIndex);
	int __fastcall VisibleItems();
	int __fastcall IndexOf(System::UnicodeString ACaption);
	void __fastcall LoadStrings(System::Classes::TStrings* Value);
	HIDESBASE void __fastcall Sort(int AColumn, TSortDirection ADirection = (TSortDirection)(0x1), bool CaseSensitive = true);
	__property TSearchListItem* Items[int AIndex] = {read=GetItem, write=SetItem/*, default*/};
	__property System::Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TSearchList() { }
	
};

#pragma pack(pop)

typedef void __fastcall (__closure *TItemClickEvent)(System::TObject* Sender, int ItemIndex, TSearchListItem* Item);

enum DECLSPEC_DENUM TFilterCount : unsigned char { fcHide, fcShow };

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCSearchListAppearance : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	System::Uitypes::TAlphaColor FCategoryColor;
	System::Uitypes::TAlphaColor FHighlightTextColor;
	System::Uitypes::TFontStyles FHighlightFontStyle;
	System::Uitypes::TAlphaColor FHighlightColor;
	System::Classes::TNotifyEvent FOnChange;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FCategoryFont;
	System::Uitypes::TAlphaColor FSelectionTextColor;
	System::Uitypes::TAlphaColor FSelectionColor;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FDescriptionFont;
	bool FDescriptionControlFont;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FFilterCountFont;
	System::UnicodeString FFilterCountFormat;
	TFilterCount FFilterCount;
	System::Uitypes::TAlphaColor FBandColorEven;
	System::Uitypes::TAlphaColor FBandColorOdd;
	bool FBanding;
	bool FCategoryControlFont;
	bool FShowItemCategory;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FItemCategoryFont;
	System::UnicodeString FItemCategoryFormat;
	void __fastcall SetCategoryColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetCategoryFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetHighlightColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetHighlightFontStyle(const System::Uitypes::TFontStyles Value);
	void __fastcall SetHighlightTextColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetSelectionColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetSelectionTextColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetDescriptionFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetDescriptionControlFont(const bool Value);
	void __fastcall SetFilterCount(const TFilterCount Value);
	void __fastcall SetFilterCountFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetFilterCountFormat(const System::UnicodeString Value);
	void __fastcall SetBandColorEven(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetBandColorOdd(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetBanding(const bool Value);
	void __fastcall SetCategoryControlFont(const bool Value);
	void __fastcall SetItemCategoryFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetItemCategoryFormat(const System::UnicodeString Value);
	void __fastcall SetShowItemCategory(const bool Value);
	void __fastcall DescriptionFontChanged(System::TObject* Sender);
	void __fastcall CategoryFontChanged(System::TObject* Sender);
	void __fastcall ItemCategoryFontChanged(System::TObject* Sender);
	
protected:
	virtual void __fastcall Changed();
	
public:
	__fastcall TTMSFNCSearchListAppearance();
	__fastcall virtual ~TTMSFNCSearchListAppearance();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property bool Banding = {read=FBanding, write=SetBanding, default=0};
	__property System::Uitypes::TAlphaColor BandColorOdd = {read=FBandColorOdd, write=SetBandColorOdd, default=-32};
	__property System::Uitypes::TAlphaColor BandColorEven = {read=FBandColorEven, write=SetBandColorEven, default=-1};
	__property System::Uitypes::TAlphaColor CategoryColor = {read=FCategoryColor, write=SetCategoryColor, default=-4144960};
	__property bool CategoryControlFont = {read=FCategoryControlFont, write=SetCategoryControlFont, default=1};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* CategoryFont = {read=FCategoryFont, write=SetCategoryFont};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* DescriptionFont = {read=FDescriptionFont, write=SetDescriptionFont};
	__property bool DescriptionControlFont = {read=FDescriptionControlFont, write=SetDescriptionControlFont, default=1};
	__property System::Uitypes::TAlphaColor HighlightColor = {read=FHighlightColor, write=SetHighlightColor, default=0};
	__property System::Uitypes::TAlphaColor HighlightTextColor = {read=FHighlightTextColor, write=SetHighlightTextColor, default=-65536};
	__property System::Uitypes::TFontStyles HighlightFontStyle = {read=FHighlightFontStyle, write=SetHighlightFontStyle, default=1};
	__property System::Uitypes::TAlphaColor SelectionColor = {read=FSelectionColor, write=SetSelectionColor, default=-7876870};
	__property System::Uitypes::TAlphaColor SelectionTextColor = {read=FSelectionTextColor, write=SetSelectionTextColor, default=-1};
	__property TFilterCount FilterCount = {read=FFilterCount, write=SetFilterCount, default=0};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FilterCountFont = {read=FFilterCountFont, write=SetFilterCountFont};
	__property System::UnicodeString FilterCountFormat = {read=FFilterCountFormat, write=SetFilterCountFormat};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* ItemCategoryFont = {read=FItemCategoryFont, write=SetItemCategoryFont};
	__property System::UnicodeString ItemCategoryFormat = {read=FItemCategoryFormat, write=SetItemCategoryFormat};
	__property bool ShowItemCategory = {read=FShowItemCategory, write=SetShowItemCategory, default=0};
	__property System::Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
};

#pragma pack(pop)

typedef void __fastcall (__closure *TFilterItemEvent)(System::TObject* Sender, TSearchListItem* AItem, bool &Retain);

enum DECLSPEC_DENUM TFilterType : unsigned char { mText, mEntireWord, mStartWord, mEndWord };

enum DECLSPEC_DENUM TFilterData : unsigned char { fdText, fdDescription, fdAll };

#pragma pack(push,4)
class PASCALIMPLEMENTATION TFilterCondition : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	TFilterType FFilterType;
	System::UnicodeString FText;
	System::UnicodeString FTextUppercase;
	int FColumn;
	bool FCategories;
	bool FCaseSensitive;
	bool FCategoryItems;
	bool FAutoSelect;
	bool FAllColumns;
	TFilterData FFilterData;
	int FMaxCategoryItems;
	void __fastcall SetFilterType(const TFilterType Value);
	void __fastcall SetText(const System::UnicodeString Value);
	void __fastcall SetColumn(const int Value);
	void __fastcall SetFilterData(const TFilterData Value);
	
public:
	__fastcall TFilterCondition();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property bool AllColumns = {read=FAllColumns, write=FAllColumns, default=0};
	__property bool AutoSelect = {read=FAutoSelect, write=FAutoSelect, nodefault};
	__property bool CaseSensitive = {read=FCaseSensitive, write=FCaseSensitive, default=0};
	__property bool Categories = {read=FCategories, write=FCategories, default=0};
	__property bool CategoryItems = {read=FCategoryItems, write=FCategoryItems, default=0};
	__property int Column = {read=FColumn, write=SetColumn, default=0};
	__property TFilterData FilterData = {read=FFilterData, write=SetFilterData, default=0};
	__property TFilterType FilterType = {read=FFilterType, write=SetFilterType, default=0};
	__property int MaxCategoryItems = {read=FMaxCategoryItems, write=FMaxCategoryItems, default=-1};
	__property System::UnicodeString Text = {read=FText, write=SetText};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TFilterCondition() { }
	
};

#pragma pack(pop)

enum DECLSPEC_DENUM TItemStatus : unsigned char { isNormal, isSelected, isDisabled };

typedef System::Set<TItemStatus, TItemStatus::isNormal, TItemStatus::isDisabled> TItemState;

typedef void __fastcall (__closure *TSearchItemColumnGetDataEvent)(System::TObject* Sender, int AIndex, int AColumn, System::UnicodeString &ACaption, System::UnicodeString &ADescription, int &AImageIndex);

typedef void __fastcall (__closure *TSearchItemColumnDrawEvent)(System::TObject* Sender, int AIndex, int AColumn, Fmx::Graphics::TCanvas* ACanvas, const System::Types::TRect &ARect, TItemState ItemState, bool &DefaultDraw);

typedef System::Generics::Collections::TList__1<int>* TDisplayList;

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCustomSearchList : public Fmx::Tmsfncscrollcontrol::TTMSFNCRECustomScrollControl
{
	typedef Fmx::Tmsfncscrollcontrol::TTMSFNCRECustomScrollControl inherited;
	
private:
	bool FAppearancePersisting;
	int FTopRow;
	int FItemCount;
	int FItemIndex;
	int FItemHeight;
	TSearchList* FItems;
	int FUpdateCount;
	System::UnicodeString FHighlightText;
	TTMSFNCSearchListAppearance* FAppearance;
	TFilterCondition* FFilterCondition;
	System::Generics::Collections::TList__1<int>* FDisplayList;
	TFilterItemEvent FOnFilterItem;
	TColumnItems* FColumns;
	bool FDesignTime;
	TCategoryList* FCategories;
	TSearchItemColumnDrawEvent FOnDrawSearchItemColumn;
	TSearchItemColumnGetDataEvent FOnGetSearchItemColumn;
	int FCategoryItemHeight;
	TItemClickEvent FOnItemClick;
	TItemClickEvent FOnItemChange;
	int FWheelIncrement;
	float FDPIScale;
	void __fastcall SetTopRow(const int Value);
	void __fastcall SetItemIndex(const int Value);
	void __fastcall SetItemHeight(const int Value);
	void __fastcall SetItems(TSearchList* const Value);
	int __fastcall GetRows();
	void __fastcall ListChanged(System::TObject* Sender);
	void __fastcall ColumnsChanged(System::TObject* Sender);
	void __fastcall SetAppearance(TTMSFNCSearchListAppearance* const Value);
	void __fastcall AppearanceChanged(System::TObject* Sender);
	void __fastcall SetFilterCondition(TFilterCondition* const Value);
	void __fastcall SetColumns(TColumnItems* const Value);
	void __fastcall SetCategories(TCategoryList* const Value);
	void __fastcall SetVersion(const System::UnicodeString Value);
	int __fastcall GetVersionNr();
	void __fastcall SetCategoryItemHeight(const int Value);
	int __fastcall GetFilteredItemCount();
	int __fastcall GetItemCount();
	int __fastcall GetTotalItemCount();
	
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
	virtual void __fastcall Paint();
	virtual int __fastcall GetClientWidth();
	virtual int __fastcall GetClientHeight();
	virtual void __fastcall MouseWheel(System::Classes::TShiftState Shift, int WheelDelta, bool &Handled);
	virtual void __fastcall DoSelectionChanged();
	virtual bool __fastcall HasSelection();
	virtual bool __fastcall IsForwardSelection();
	virtual void __fastcall DeleteSelection();
	virtual void __fastcall UpdateSelection();
	virtual void __fastcall ClearSelection();
	virtual System::Types::TPoint __fastcall GetSelectionFromXY();
	virtual System::Types::TPoint __fastcall GetSelectionToXY();
	virtual System::Types::TPoint __fastcall GetCaretXY();
	virtual int __fastcall GetCaretLH();
	virtual int __fastcall GetElementCount();
	virtual System::UnicodeString __fastcall SelectedText();
	virtual System::UnicodeString __fastcall SelectWordAtCaret();
	virtual bool __fastcall CanSaveProperty(System::TObject* AObject, System::UnicodeString APropertyName, System::TTypeKind APropertyType);
	virtual bool __fastcall CanLoadProperty(System::TObject* AObject, System::UnicodeString APropertyName, System::TTypeKind APropertyType);
	virtual bool __fastcall IsAppearanceProperty(System::TObject* AObject, System::UnicodeString APropertyName, System::TTypeKind APropertyType);
	virtual void __fastcall GetWordAndIndexAtCaret(System::UnicodeString &AValue, int &AIndex, bool SpaceOnly = false);
	virtual void __fastcall UpdateWordAndIndexAtCaret(System::UnicodeString AValue, int AIndex, bool SpaceOnly = false);
	virtual void __fastcall UpdateSelectionPoint(bool LeftSel, int &X, int &Y);
	virtual void __fastcall SelectAll();
	virtual void __fastcall Backspace();
	virtual void __fastcall InsertChar(System::WideChar ch)/* overload */;
	virtual void __fastcall InsertChar(System::UnicodeString Value)/* overload */;
	void __fastcall DoGetSearchItemColumn(int AIndex, int AColumn, System::UnicodeString &ACaption, System::UnicodeString &ADescription, int &AImageIndex);
	void __fastcall DoDrawSearchItemColumn(int AIndex, int AColumn, Fmx::Graphics::TCanvas* ACanvas, const System::Types::TRect &ARect, TItemState AState, bool &DefaultDraw);
	virtual void __fastcall DoItemClick(int ItemIndex);
	virtual void __fastcall DoItemChange(int ItemIndex);
	TCategoryItem* __fastcall CategoryWithID(int id);
	virtual TSearchList* __fastcall CreateSearchList();
	virtual TColumnItems* __fastcall CreateColumns();
	virtual TCategoryList* __fastcall CreateCategories();
	virtual bool __fastcall FilterItem(TSearchListItem* AItem);
	int __fastcall GetRowIndex(int Y);
	int __fastcall GetRowYPos(int AIndex, bool EndY = false);
	virtual void __fastcall Notification(System::Classes::TComponent* AComponent, System::Classes::TOperation AOperation);
	System::Types::TSize __fastcall GetSize(bool VertSizeOnly);
	virtual void __fastcall AddFocus();
	virtual void __fastcall RemoveFocus();
	virtual void __fastcall DoEnter();
	virtual void __fastcall DoExit();
	void __fastcall Refresh();
	virtual void __fastcall Resize();
	virtual void __fastcall UpdateSize();
	__property int Rows = {read=GetRows, nodefault};
	__property TCategoryList* Categories = {read=FCategories, write=SetCategories};
	__property TColumnItems* Columns = {read=FColumns, write=SetColumns};
	__property TSearchList* Items = {read=FItems, write=SetItems};
	__property System::UnicodeString Version = {read=GetVersion, write=SetVersion};
	__property TSearchItemColumnGetDataEvent OnGetSearchItemColumn = {read=FOnGetSearchItemColumn, write=FOnGetSearchItemColumn};
	__property TSearchItemColumnDrawEvent OnDrawSearchItemColumn = {read=FOnDrawSearchItemColumn, write=FOnDrawSearchItemColumn};
	__property TFilterItemEvent OnFilterItem = {read=FOnFilterItem, write=FOnFilterItem};
	__property TItemClickEvent OnItemClick = {read=FOnItemClick, write=FOnItemClick};
	__property TItemClickEvent OnItemChange = {read=FOnItemChange, write=FOnItemChange};
	
public:
	__fastcall virtual TTMSFNCCustomSearchList(System::Classes::TComponent* AOwner)/* overload */;
	__fastcall virtual ~TTMSFNCCustomSearchList();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__property int CategoryItemHeight = {read=FCategoryItemHeight, write=SetCategoryItemHeight, default=20};
	__property int ItemIndex = {read=FItemIndex, write=SetItemIndex, nodefault};
	__property int ItemHeight = {read=FItemHeight, write=SetItemHeight, default=20};
	__property int TopRow = {read=FTopRow, write=SetTopRow, nodefault};
	__property int ItemCount = {read=GetItemCount, nodefault};
	__property int FilteredItemCount = {read=GetFilteredItemCount, nodefault};
	__property int TotalItemCount = {read=GetTotalItemCount, nodefault};
	virtual void __fastcall UpdateFilter();
	virtual void __fastcall ClearFilter();
	virtual void __fastcall BeginUpdate();
	virtual void __fastcall EndUpdate();
	virtual void __fastcall SaveSettingsToFile(System::UnicodeString AFileName, bool AAppearanceOnly = false);
	virtual void __fastcall LoadSettingsFromFile(System::UnicodeString AFileName);
	virtual void __fastcall SaveSettingsToStream(System::Classes::TStream* AStream, bool AAppearanceOnly = false);
	virtual void __fastcall LoadSettingsFromStream(System::Classes::TStream* AStream);
	TSearchListItem* __fastcall SelectedItem();
	bool __fastcall SelectNextItem(int AIndex);
	bool __fastcall SelectPreviousItem(int AIndex);
	bool __fastcall SelectFirstItem();
	bool __fastcall SelectLastItem();
	bool __fastcall SelectPrevPageItem(int PageSize);
	bool __fastcall SelectNextPageItem(int PageSize);
	int __fastcall DisplayToItemIndex(int DisplayIndex);
	System::UnicodeString __fastcall CategoryName(int ID);
	void __fastcall UnSelect();
	void __fastcall ScrollToItem(const int AIndex);
	virtual void __fastcall CopyToClipboard();
	virtual void __fastcall CutToClipboard();
	virtual System::UnicodeString __fastcall PasteFromClipboard();
	
__published:
	__property TTMSFNCSearchListAppearance* Appearance = {read=FAppearance, write=SetAppearance};
	__property TFilterCondition* FilterCondition = {read=FFilterCondition, write=SetFilterCondition};
	__property int WheelIncrement = {read=FWheelIncrement, write=FWheelIncrement, default=8};
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

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCSearchList : public TTMSFNCCustomSearchList
{
	typedef TTMSFNCCustomSearchList inherited;
	
private:
	bool __fastcall GetTabSop();
	HIDESBASE void __fastcall SetTabStop(const bool Value);
	
__published:
	__property Categories;
	__property CategoryItemHeight = {default=20};
	__property Color = {default=-1};
	__property Columns;
	__property ItemHeight = {default=20};
	__property Items;
	__property PopupMenu;
	__property bool TabStop = {read=GetTabSop, write=SetTabStop, default=1};
	__property Version = {default=0};
	__property OnDrawSearchItemColumn;
	__property OnGetSearchItemColumn;
	__property OnFilterItem;
	__property OnItemClick;
	__property OnItemChange;
	__property OnClick;
	__property OnDblClick;
	__property OnEnter;
	__property OnExit;
	__property OnMouseDown;
	__property OnMouseUp;
	__property OnMouseMove;
	__property OnMouseEnter;
	__property OnMouseLeave;
	__property OnKeyDown;
	__property OnKeyUp;
public:
	/* TTMSFNCCustomSearchList.Create */ inline __fastcall virtual TTMSFNCSearchList(System::Classes::TComponent* AOwner)/* overload */ : TTMSFNCCustomSearchList(AOwner) { }
	/* TTMSFNCCustomSearchList.Destroy */ inline __fastcall virtual ~TTMSFNCSearchList() { }
	
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0xb);
static constexpr System::Int8 BLD_VER = System::Int8(0x3);
#define TTMSFNCSearchListDocURL u"https://download.tmssoftware.com/doc/tmsfncuipack/componen"\
	u"ts/ttmsfncsearchlist/"
#define TTMSFNCSearchListTipsURL u"https://www.tmssoftware.com/site/tmsfncuipack.asp?s=faq"
static constexpr System::Int8 BAR_WIDTH = System::Int8(0x4);
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
static constexpr unsigned clInfoBk = unsigned(0xffffffe0);
}	/* namespace Tmsfncsearchlist */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCSEARCHLIST)
using namespace Fmx::Tmsfncsearchlist;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncsearchlistHPP
