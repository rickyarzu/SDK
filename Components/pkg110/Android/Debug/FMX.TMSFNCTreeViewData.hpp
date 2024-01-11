// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCTreeViewData.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfnctreeviewdataHPP
#define Fmx_TmsfnctreeviewdataHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.TMSFNCGraphicsTypes.hpp>
#include <FMX.TMSFNCBitmapContainer.hpp>
#include <FMX.TMSFNCTreeViewBase.hpp>
#include <System.Generics.Collections.hpp>
#include <System.Types.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>
#include <System.UITypes.hpp>
#include <FMX.TMSFNCCustomControl.hpp>
#include <FMX.Controls.hpp>
#include <FMX.Types.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfnctreeviewdata
{
//-- forward type declarations -----------------------------------------------
struct TTMSFNCTreeViewVirtualNodeRemoveData;
class DELPHICLASS TTMSFNCTreeViewVirtualNode;
class DELPHICLASS TTMSFNCTreeViewCacheItem;
class DELPHICLASS TTMSFNCTreeViewCacheItemList;
class DELPHICLASS TTMSFNCTreeViewIntegerList;
class DELPHICLASS TTMSFNCTreeViewColumnFiltering;
class DELPHICLASS TTMSFNCTreeViewFilterData;
class DELPHICLASS TTMSFNCTreeViewFilter;
class DELPHICLASS TTMSFNCTreeViewColumn;
class DELPHICLASS TTMSFNCTreeViewColumns;
class DELPHICLASS TTMSFNCTreeViewNodeValue;
class DELPHICLASS TTMSFNCTreeViewNodeValues;
class DELPHICLASS TTMSFNCTreeViewNode;
class DELPHICLASS TTMSFNCTreeViewNodes;
class DELPHICLASS TTMSFNCTreeViewGroup;
class DELPHICLASS TTMSFNCTreeViewGroups;
class DELPHICLASS TTMSFNCTreeViewNodeStructure;
class DELPHICLASS TTMSFNCTreeViewVisibleNodes;
struct TTMSFNCTreeViewDisplayGroup;
class DELPHICLASS TTMSFNCTreeViewDisplayGroups;
class DELPHICLASS TTMSFNCTreeViewData;
//-- type declarations -------------------------------------------------------
enum DECLSPEC_DENUM TTMSFNCTreeViewNodeScrollPosition : unsigned char { tvnspTop, tvnspBottom, tvnspMiddle };

struct DECLSPEC_DRECORD TTMSFNCTreeViewVirtualNodeRemoveData
{
public:
	int RowIndex;
	int Count;
	int ParentNode;
};


typedef System::DynamicArray<System::Types::TRectF> TTMSFNCArrayTRectF;

typedef System::DynamicArray<bool> TTMSFNCArrayBoolean;

class PASCALIMPLEMENTATION TTMSFNCTreeViewVirtualNode : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	TTMSFNCTreeViewData* FTreeView;
	int FLevel;
	bool FAddedToVisibleList;
	int FChildren;
	int FParentNode;
	bool FExpanded;
	int FTotalChildren;
	int FIndex;
	int FRow;
	double FHeight;
	bool FCalculated;
	TTMSFNCTreeViewCacheItem* FCache;
	TTMSFNCArrayTRectF FTextRects;
	TTMSFNCArrayTRectF FBitmapRects;
	TTMSFNCArrayTRectF FExpandRects;
	TTMSFNCArrayTRectF FCheckRects;
	TTMSFNCArrayBoolean FCheckStates;
	TTMSFNCTreeViewNode* FNode;
	bool FExtended;
	TTMSFNCArrayTRectF FExtraRects;
	TTMSFNCArrayTRectF FTitleRects;
	double FTitleHeight;
	TTMSFNCArrayTRectF FTitleExtraRects;
	void *FDataPointer;
	bool FDataBoolean;
	System::UnicodeString FDataString;
	System::TObject* FDataObject;
	NativeInt FDataInteger;
	System::UnicodeString __fastcall GetText(int AColumn);
	System::UnicodeString __fastcall GetTitle(int AColumn);
	bool __fastcall GetTitleExpanded(int AColumn);
	
protected:
	__property TTMSFNCTreeViewCacheItem* Cache = {read=FCache};
	
public:
	virtual TTMSFNCTreeViewVirtualNode* __fastcall GetParent();
	virtual int __fastcall GetChildCount();
	virtual TTMSFNCTreeViewVirtualNode* __fastcall GetPrevious();
	virtual TTMSFNCTreeViewVirtualNode* __fastcall GetNext();
	virtual TTMSFNCTreeViewVirtualNode* __fastcall GetPreviousChild(TTMSFNCTreeViewVirtualNode* ANode);
	virtual TTMSFNCTreeViewVirtualNode* __fastcall GetNextChild(TTMSFNCTreeViewVirtualNode* ANode);
	virtual TTMSFNCTreeViewVirtualNode* __fastcall GetNextSibling();
	virtual TTMSFNCTreeViewVirtualNode* __fastcall GetPreviousSibling();
	virtual TTMSFNCTreeViewVirtualNode* __fastcall GetFirstChild();
	virtual TTMSFNCTreeViewVirtualNode* __fastcall GetLastChild();
	virtual void __fastcall RemoveChildren();
	virtual void __fastcall Expand(bool ARecurse = false);
	virtual void __fastcall Collapse(bool ARecurse = false);
	__property int Children = {read=FChildren, nodefault};
	__property int TotalChildren = {read=FTotalChildren, nodefault};
	__property bool Expanded = {read=FExpanded, nodefault};
	__property bool Extended = {read=FExtended, nodefault};
	__property int Level = {read=FLevel, nodefault};
	__property int Row = {read=FRow, nodefault};
	__property bool Calculated = {read=FCalculated, nodefault};
	__property double Height = {read=FHeight};
	__property double TitleHeight = {read=FTitleHeight};
	__property int ParentNode = {read=FParentNode, nodefault};
	__property int Index = {read=FIndex, nodefault};
	__property TTMSFNCArrayTRectF ExtraRects = {read=FExtraRects};
	__property TTMSFNCArrayTRectF TextRects = {read=FTextRects};
	__property TTMSFNCArrayTRectF TitleRects = {read=FTitleRects};
	__property TTMSFNCArrayTRectF TitleExtraRects = {read=FTitleExtraRects};
	__property TTMSFNCArrayTRectF BitmapRects = {read=FBitmapRects};
	__property TTMSFNCArrayTRectF CheckRects = {read=FCheckRects};
	__property TTMSFNCArrayTRectF ExpandRects = {read=FExpandRects};
	__property TTMSFNCArrayBoolean CheckStates = {read=FCheckStates};
	__property TTMSFNCTreeViewNode* Node = {read=FNode};
	__property System::UnicodeString Text[int AColumn] = {read=GetText};
	__property System::UnicodeString Title[int AColumn] = {read=GetTitle};
	__property bool TitleExpanded[int AColumn] = {read=GetTitleExpanded};
	__property bool Visible = {read=FAddedToVisibleList, nodefault};
	__property void * DataPointer = {read=FDataPointer, write=FDataPointer};
	__property bool DataBoolean = {read=FDataBoolean, write=FDataBoolean, nodefault};
	__property System::TObject* DataObject = {read=FDataObject, write=FDataObject};
	__property System::UnicodeString DataString = {read=FDataString, write=FDataString};
	__property NativeInt DataInteger = {read=FDataInteger, write=FDataInteger, nodefault};
	virtual void __fastcall CopyFrom(TTMSFNCTreeViewVirtualNode* Source);
	__fastcall TTMSFNCTreeViewVirtualNode(TTMSFNCTreeViewData* ATreeView);
	__fastcall virtual ~TTMSFNCTreeViewVirtualNode();
	System::UnicodeString __fastcall ToJSON()/* overload */;
	void __fastcall FromJSON(const System::UnicodeString Value);
	__property System::UnicodeString JSON = {read=ToJSON, write=FromJSON};
	System::UnicodeString __fastcall ToJSON(Fmx::Tmsfnctypes::TTMSFNCObjectExcludePropertyListArray AExcludedProperties)/* overload */;
	void __fastcall Log();
	void __fastcall SaveToJSONFile(const System::UnicodeString AFileName);
	void __fastcall LoadFromJSONFile(const System::UnicodeString AFileName);
	void __fastcall SaveToJSONStream(System::Classes::TStream* const AStream);
	void __fastcall LoadFromJSONStream(System::Classes::TStream* const AStream);
};


enum DECLSPEC_DENUM TTMSFNCTreeViewCacheItemKind : unsigned char { ikNode, ikColumnTop, ikColumnBottom, ikGroupTop, ikGroupBottom };

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCTreeViewCacheItem : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	System::Types::TRectF FRect;
	System::Types::TRectF FDrawRect;
	TTMSFNCTreeViewCacheItemKind FKind;
	int FGroup;
	int FColumn;
	TTMSFNCTreeViewVirtualNode* FNode;
	int FRow;
	int FCol;
	int FStartColumn;
	int FEndColumn;
	
public:
	__classmethod TTMSFNCTreeViewCacheItem* __fastcall CreateNode(const System::Types::TRectF &ARect, TTMSFNCTreeViewVirtualNode* ANode);
	__classmethod TTMSFNCTreeViewCacheItem* __fastcall CreateColumnTop(const System::Types::TRectF &ARect, int AColumn);
	__classmethod TTMSFNCTreeViewCacheItem* __fastcall CreateGroupTop(const System::Types::TRectF &ARect, int AGroup, int AStartColumn, int AEndColumn);
	__classmethod TTMSFNCTreeViewCacheItem* __fastcall CreateColumnBottom(const System::Types::TRectF &ARect, int AColumn);
	__classmethod TTMSFNCTreeViewCacheItem* __fastcall CreateGroupBottom(const System::Types::TRectF &ARect, int AGroup, int AStartColumn, int AEndColumn);
	__property System::Types::TRectF Rect = {read=FRect, write=FRect};
	__property System::Types::TRectF DrawRect = {read=FDrawRect, write=FDrawRect};
	__property TTMSFNCTreeViewCacheItemKind Kind = {read=FKind, write=FKind, nodefault};
	__property TTMSFNCTreeViewVirtualNode* Node = {read=FNode, write=FNode};
	__property int Group = {read=FGroup, write=FGroup, nodefault};
	__property int StartColumn = {read=FStartColumn, write=FStartColumn, nodefault};
	__property int EndColumn = {read=FEndColumn, write=FEndColumn, nodefault};
	__property int Column = {read=FColumn, write=FColumn, nodefault};
	__property int Col = {read=FCol, write=FCol, nodefault};
	__property int Row = {read=FRow, write=FRow, nodefault};
	__fastcall virtual ~TTMSFNCTreeViewCacheItem();
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
	/* TObject.Create */ inline __fastcall TTMSFNCTreeViewCacheItem() : System::TObject() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCTreeViewCacheItemList : public System::Generics::Collections::TList__1<TTMSFNCTreeViewCacheItem*>
{
	typedef System::Generics::Collections::TList__1<TTMSFNCTreeViewCacheItem*> inherited;
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Create */ inline __fastcall TTMSFNCTreeViewCacheItemList()/* overload */ : System::Generics::Collections::TList__1<TTMSFNCTreeViewCacheItem*>() { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Create */ inline __fastcall TTMSFNCTreeViewCacheItemList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCTreeViewCacheItem*> > AComparer)/* overload */ : System::Generics::Collections::TList__1<TTMSFNCTreeViewCacheItem*>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Create */ inline __fastcall TTMSFNCTreeViewCacheItemList(System::Generics::Collections::TEnumerable__1<TTMSFNCTreeViewCacheItem*>* const Collection)/* overload */ : System::Generics::Collections::TList__1<TTMSFNCTreeViewCacheItem*>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Create */ inline __fastcall TTMSFNCTreeViewCacheItemList(TTMSFNCTreeViewCacheItem* const *Values, const int Values_High)/* overload */ : System::Generics::Collections::TList__1<TTMSFNCTreeViewCacheItem*>(Values, Values_High) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Destroy */ inline __fastcall virtual ~TTMSFNCTreeViewCacheItemList() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCTreeViewIntegerList : public System::Generics::Collections::TList__1<int>
{
	typedef System::Generics::Collections::TList__1<int> inherited;
	
public:
	/* {System_Generics_Collections}TList<System_Integer>.Create */ inline __fastcall TTMSFNCTreeViewIntegerList()/* overload */ : System::Generics::Collections::TList__1<int>() { }
	/* {System_Generics_Collections}TList<System_Integer>.Create */ inline __fastcall TTMSFNCTreeViewIntegerList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<int> > AComparer)/* overload */ : System::Generics::Collections::TList__1<int>(AComparer) { }
	/* {System_Generics_Collections}TList<System_Integer>.Create */ inline __fastcall TTMSFNCTreeViewIntegerList(System::Generics::Collections::TEnumerable__1<int>* const Collection)/* overload */ : System::Generics::Collections::TList__1<int>(Collection) { }
	/* {System_Generics_Collections}TList<System_Integer>.Create */ inline __fastcall TTMSFNCTreeViewIntegerList(const int *Values, const int Values_High)/* overload */ : System::Generics::Collections::TList__1<int>(Values, Values_High) { }
	/* {System_Generics_Collections}TList<System_Integer>.Destroy */ inline __fastcall virtual ~TTMSFNCTreeViewIntegerList() { }
	
};

#pragma pack(pop)

typedef System::DynamicArray<TTMSFNCTreeViewVirtualNode*> TTMSFNCTreeViewVirtualNodeArray;

enum DECLSPEC_DENUM TTMSFNCTreeViewColumnEditorType : unsigned char { tcetEdit, tcetComboBox, tcetMemo, tcetNone };

enum DECLSPEC_DENUM TTMSFNCTreeViewNodesSortMode : unsigned char { nsmAscending, nsmDescending };

enum DECLSPEC_DENUM TTMSFNCTreeViewNodesSortKind : unsigned char { nskNone, nskAscending, nskDescending };

enum DECLSPEC_DENUM TTMSFNCTreeViewColumnSorting : unsigned char { tcsNone, tcsNormal, tcsRecursive, tcsNormalCaseSensitive, tcsRecursiveCaseSensitive };

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCTreeViewColumnFiltering : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	TTMSFNCTreeViewColumn* FColumn;
	bool FEnabled;
	bool FMultiColumn;
	int FDropDownHeight;
	int FDropDownWidth;
	float FButtonSize;
	void __fastcall SetEnabled(const bool Value);
	bool __fastcall IsButtonSizeStored();
	void __fastcall SetButtonSize(const float Value);
	
public:
	__fastcall TTMSFNCTreeViewColumnFiltering(TTMSFNCTreeViewColumn* AColumn);
	__fastcall virtual ~TTMSFNCTreeViewColumnFiltering();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property bool Enabled = {read=FEnabled, write=SetEnabled, default=0};
	__property int DropDownWidth = {read=FDropDownWidth, write=FDropDownWidth, default=100};
	__property int DropDownHeight = {read=FDropDownHeight, write=FDropDownHeight, default=120};
	__property bool MultiColumn = {read=FMultiColumn, write=FMultiColumn, default=0};
	__property float ButtonSize = {read=FButtonSize, write=SetButtonSize, stored=IsButtonSizeStored};
};

#pragma pack(pop)

enum DECLSPEC_DENUM TTMSFNCTreeViewFilterOperation : unsigned char { tfoSHORT, tfoNONE, tfoAND, tfoXOR, tfoOR };

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCTreeViewFilterData : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	short FColumn;
	System::UnicodeString FCondition;
	bool FCaseSensitive;
	System::UnicodeString FSuffix;
	System::UnicodeString FPrefix;
	TTMSFNCTreeViewFilterOperation FOperation;
	
public:
	__fastcall virtual TTMSFNCTreeViewFilterData(System::Classes::TCollection* ACollection);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property short Column = {read=FColumn, write=FColumn, nodefault};
	__property System::UnicodeString Condition = {read=FCondition, write=FCondition};
	__property bool CaseSensitive = {read=FCaseSensitive, write=FCaseSensitive, default=1};
	__property System::UnicodeString Prefix = {read=FPrefix, write=FPrefix};
	__property System::UnicodeString Suffix = {read=FSuffix, write=FSuffix};
	__property TTMSFNCTreeViewFilterOperation Operation = {read=FOperation, write=FOperation, nodefault};
public:
	/* TCollectionItem.Destroy */ inline __fastcall virtual ~TTMSFNCTreeViewFilterData() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCTreeViewFilter : public Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCTreeViewFilterData*>
{
	typedef Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCTreeViewFilterData*> inherited;
	
public:
	TTMSFNCTreeViewFilterData* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCTreeViewData* FOwner;
	HIDESBASE TTMSFNCTreeViewFilterData* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCTreeViewFilterData* const Value);
	TTMSFNCTreeViewFilterData* __fastcall GetColFilter(int Col);
	
public:
	__fastcall TTMSFNCTreeViewFilter(TTMSFNCTreeViewData* AOwner);
	HIDESBASE TTMSFNCTreeViewFilterData* __fastcall Add();
	HIDESBASE TTMSFNCTreeViewFilterData* __fastcall Insert(int index);
	__property TTMSFNCTreeViewFilterData* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	__property TTMSFNCTreeViewFilterData* ColumnFilter[int Col] = {read=GetColFilter};
	bool __fastcall HasFilter(int Col);
	void __fastcall RemoveColumnFilter(int Col);
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCTreeViewFilter() { }
	
};

#pragma pack(pop)

class PASCALIMPLEMENTATION TTMSFNCTreeViewColumn : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	TTMSFNCTreeViewNodesSortKind FSortKind;
	NativeInt FTag;
	System::UnicodeString FDataString;
	System::TObject* FDataObject;
	NativeInt FDataInteger;
	TTMSFNCTreeViewData* FTreeView;
	System::UnicodeString FText;
	System::UnicodeString FName;
	System::UnicodeString FDBKey;
	bool FDataBoolean;
	bool FWordWrapping;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign FVerticalTextAlign;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextTrimming FTrimming;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign FHorizontalTextAlign;
	double FWidth;
	bool FVisible;
	bool FUseDefaultAppearance;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FBottomFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FBottomStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FTopFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FTopStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FTopFont;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FBottomFont;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FFont;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FStroke;
	TTMSFNCTreeViewColumnEditorType FEditorType;
	System::Uitypes::TAlphaColor FDisabledFontColor;
	System::Uitypes::TAlphaColor FSelectedFontColor;
	System::Classes::TStringList* FEditorItems;
	bool FCustomEditor;
	TTMSFNCTreeViewColumnSorting FSorting;
	int FSortIndex;
	TTMSFNCTreeViewColumnFiltering* FFiltering;
	void *FDataPointer;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextTrimming FTitleTrimming;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign FTitleHorizontalTextAlign;
	bool FTitleWordWrapping;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign FTitleVerticalTextAlign;
	System::Uitypes::TAlphaColor FDisabledTitleFontColor;
	System::Uitypes::TAlphaColor FSelectedTitleFontColor;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FTitleFont;
	bool FExpanded;
	bool FExpandable;
	float FExpandingButtonSize;
	System::UnicodeString FHTMLTemplate;
	void __fastcall SetText(const System::UnicodeString Value);
	void __fastcall SetName(const System::UnicodeString Value);
	void __fastcall SetHorizontalTextAlign(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign Value);
	void __fastcall SetTrimming(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextTrimming Value);
	void __fastcall SetVerticalTextAlign(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign Value);
	void __fastcall SetWordWrapping(const bool Value);
	void __fastcall SetWidth(const double Value);
	void __fastcall SetVisible(const bool Value);
	void __fastcall SetUseDefaultAppearance(const bool Value);
	void __fastcall SetBottomFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetBottomStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetTopFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetTopStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetBottomFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetTopFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetEditorType(const TTMSFNCTreeViewColumnEditorType Value);
	void __fastcall SetDisabledFontColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetSelectedFontColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetEditorItems(System::Classes::TStringList* const Value);
	void __fastcall SetSorting(const TTMSFNCTreeViewColumnSorting Value);
	void __fastcall SetSortKind(const TTMSFNCTreeViewNodesSortKind Value);
	void __fastcall SetSortIndex(const int Value);
	void __fastcall SetFiltering(TTMSFNCTreeViewColumnFiltering* const Value);
	void __fastcall SetTitleHorizontalTextAlign(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign Value);
	void __fastcall SetTitleTrimming(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextTrimming Value);
	void __fastcall SetTitleVerticalTextAlign(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign Value);
	void __fastcall SetTitleWordWrapping(const bool Value);
	void __fastcall SetDisabledTitleFontColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetSelectedTitleFontColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetTitleFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetExpanded(const bool Value);
	void __fastcall SetExpandable(const bool Value);
	bool __fastcall IsExpandingButtonSizeStored();
	void __fastcall SetExpandingButtonSize(const float Value);
	void __fastcall SetHTMLTemplate(const System::UnicodeString Value);
	
protected:
	void __fastcall UpdateColumn();
	HIDESBASE void __fastcall Changed(System::TObject* Sender);
	virtual System::UnicodeString __fastcall GetText();
	virtual System::UnicodeString __fastcall GetColumnText();
	virtual System::UnicodeString __fastcall GetDisplayName();
	__property int SortIndex = {read=FSortIndex, write=SetSortIndex, default=-1};
	
public:
	TTMSFNCTreeViewData* __fastcall TreeView();
	__fastcall virtual TTMSFNCTreeViewColumn(System::Classes::TCollection* Collection);
	__fastcall virtual ~TTMSFNCTreeViewColumn();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	virtual void __fastcall UpdateWidth(double AWidth);
	virtual void __fastcall Sort(bool ARecurse = false, bool ACaseSensitive = true, TTMSFNCTreeViewNodesSortMode ASortingMode = (TTMSFNCTreeViewNodesSortMode)(0x0));
	__property void * DataPointer = {read=FDataPointer, write=FDataPointer};
	__property bool DataBoolean = {read=FDataBoolean, write=FDataBoolean, nodefault};
	__property System::TObject* DataObject = {read=FDataObject, write=FDataObject};
	__property System::UnicodeString DataString = {read=FDataString, write=FDataString};
	__property NativeInt DataInteger = {read=FDataInteger, write=FDataInteger, nodefault};
	__property System::UnicodeString DBKey = {read=FDBKey, write=FDBKey};
	__property TTMSFNCTreeViewNodesSortKind SortKind = {read=FSortKind, write=SetSortKind, default=0};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign TitleHorizontalTextAlign = {read=FTitleHorizontalTextAlign, write=SetTitleHorizontalTextAlign, default=1};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign TitleVerticalTextAlign = {read=FTitleVerticalTextAlign, write=SetTitleVerticalTextAlign, default=0};
	__property bool TitleWordWrapping = {read=FTitleWordWrapping, write=SetTitleWordWrapping, default=0};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextTrimming TitleTrimming = {read=FTitleTrimming, write=SetTitleTrimming, default=0};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* TitleFont = {read=FTitleFont, write=SetTitleFont};
	__property System::Uitypes::TAlphaColor SelectedTitleFontColor = {read=FSelectedTitleFontColor, write=SetSelectedTitleFontColor, default=-1};
	__property System::Uitypes::TAlphaColor DisabledTitleFontColor = {read=FDisabledTitleFontColor, write=SetDisabledTitleFontColor, default=-4144960};
	__property bool Expandable = {read=FExpandable, write=SetExpandable, default=0};
	__property bool Expanded = {read=FExpanded, write=SetExpanded, default=1};
	__property float ExpandingButtonSize = {read=FExpandingButtonSize, write=SetExpandingButtonSize, stored=IsExpandingButtonSizeStored};
	
__published:
	__property TTMSFNCTreeViewColumnEditorType EditorType = {read=FEditorType, write=SetEditorType, default=3};
	__property System::Classes::TStringList* EditorItems = {read=FEditorItems, write=SetEditorItems};
	__property bool CustomEditor = {read=FCustomEditor, write=FCustomEditor, default=0};
	__property System::UnicodeString Name = {read=FName, write=SetName};
	__property System::UnicodeString Text = {read=FText, write=SetText};
	__property NativeInt Tag = {read=FTag, write=FTag, default=0};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign HorizontalTextAlign = {read=FHorizontalTextAlign, write=SetHorizontalTextAlign, default=1};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign VerticalTextAlign = {read=FVerticalTextAlign, write=SetVerticalTextAlign, default=0};
	__property bool WordWrapping = {read=FWordWrapping, write=SetWordWrapping, default=0};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextTrimming Trimming = {read=FTrimming, write=SetTrimming, default=0};
	__property double Width = {read=FWidth, write=SetWidth};
	__property bool Visible = {read=FVisible, write=SetVisible, default=1};
	__property bool UseDefaultAppearance = {read=FUseDefaultAppearance, write=SetUseDefaultAppearance, default=1};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* Fill = {read=FFill, write=SetFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* Stroke = {read=FStroke, write=SetStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* Font = {read=FFont, write=SetFont};
	__property System::Uitypes::TAlphaColor SelectedFontColor = {read=FSelectedFontColor, write=SetSelectedFontColor, default=-1};
	__property System::Uitypes::TAlphaColor DisabledFontColor = {read=FDisabledFontColor, write=SetDisabledFontColor, default=-4144960};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* TopFill = {read=FTopFill, write=SetTopFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* TopStroke = {read=FTopStroke, write=SetTopStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* TopFont = {read=FTopFont, write=SetTopFont};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* BottomFill = {read=FBottomFill, write=SetBottomFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* BottomStroke = {read=FBottomStroke, write=SetBottomStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* BottomFont = {read=FBottomFont, write=SetBottomFont};
	__property TTMSFNCTreeViewColumnSorting Sorting = {read=FSorting, write=SetSorting, default=0};
	__property TTMSFNCTreeViewColumnFiltering* Filtering = {read=FFiltering, write=SetFiltering};
	__property System::UnicodeString HTMLTemplate = {read=FHTMLTemplate, write=SetHTMLTemplate};
};


#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCTreeViewColumns : public Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCTreeViewColumn*>
{
	typedef Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCTreeViewColumn*> inherited;
	
public:
	TTMSFNCTreeViewColumn* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCTreeViewData* FTreeView;
	HIDESBASE TTMSFNCTreeViewColumn* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCTreeViewColumn* const Value);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall GetItemClass();
	
public:
	TTMSFNCTreeViewData* __fastcall TreeView();
	__fastcall TTMSFNCTreeViewColumns(TTMSFNCTreeViewData* ATreeView);
	HIDESBASE virtual TTMSFNCTreeViewColumn* __fastcall Add();
	HIDESBASE TTMSFNCTreeViewColumn* __fastcall Insert(int Index);
	__property TTMSFNCTreeViewColumn* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCTreeViewColumns() { }
	
};

#pragma pack(pop)

enum DECLSPEC_DENUM TTMSFNCTreeViewNodeCheckType : unsigned char { tvntNone, tvntCheckBox, tvntRadioButton };

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCTreeViewNodeValue : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	NativeInt FTag;
	System::UnicodeString FDataString;
	System::TObject* FDataObject;
	NativeInt FDataInteger;
	TTMSFNCTreeViewData* FTreeView;
	TTMSFNCTreeViewNode* FNode;
	System::UnicodeString FText;
	System::UnicodeString FDBKey;
	bool FDataBoolean;
	TTMSFNCTreeViewNodeCheckType FCheckType;
	bool FChecked;
	Fmx::Tmsfnctypes::TTMSFNCBitmap* FCollapsedIcon;
	Fmx::Tmsfnctypes::TTMSFNCBitmap* FCollapsedIconLarge;
	Fmx::Tmsfnctypes::TTMSFNCBitmap* FExpandedIcon;
	Fmx::Tmsfnctypes::TTMSFNCBitmap* FExpandedIconLarge;
	System::UnicodeString FCollapsedIconName;
	System::UnicodeString FCollapsedIconLargeName;
	System::UnicodeString FExpandedIconName;
	System::UnicodeString FExpandedIconLargeName;
	void *FDataPointer;
	System::UnicodeString FTitle;
	bool FTitleExpanded;
	System::Classes::TStringList* FHTMLTemplateItems;
	void __fastcall SetText(const System::UnicodeString Value);
	void __fastcall UpdateNodeValue();
	void __fastcall SetChecked(const bool Value);
	void __fastcall SetCheckType(const TTMSFNCTreeViewNodeCheckType Value);
	void __fastcall SetCollapsedIconLarge(Fmx::Tmsfnctypes::TTMSFNCBitmap* const Value);
	void __fastcall SetCollapsedIcon(Fmx::Tmsfnctypes::TTMSFNCBitmap* const Value);
	void __fastcall SetExpandedIconLarge(Fmx::Tmsfnctypes::TTMSFNCBitmap* const Value);
	void __fastcall SetExpandedIcon(Fmx::Tmsfnctypes::TTMSFNCBitmap* const Value);
	void __fastcall SetCollapsedIconLargeName(const System::UnicodeString Value);
	void __fastcall SetCollapsedIconName(const System::UnicodeString Value);
	void __fastcall SetExpandedIconLargeName(const System::UnicodeString Value);
	void __fastcall SetExpandedIconName(const System::UnicodeString Value);
	Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* __fastcall GetBitmapContainer();
	void __fastcall SetTitle(const System::UnicodeString Value);
	void __fastcall SetTitleExpanded(const bool Value);
	void __fastcall SetHTMLTemplateItems(System::Classes::TStringList* const Value);
	
protected:
	void __fastcall BitmapChanged(System::TObject* Sender);
	void __fastcall TemplateItemsChanged(System::TObject* Sender);
	__property System::UnicodeString Title = {read=FTitle, write=SetTitle};
	__property bool TitleExpanded = {read=FTitleExpanded, write=SetTitleExpanded, default=1};
	
public:
	TTMSFNCTreeViewData* __fastcall TreeView();
	TTMSFNCTreeViewNode* __fastcall Node();
	System::UnicodeString __fastcall GetText();
	__fastcall virtual TTMSFNCTreeViewNodeValue(System::Classes::TCollection* Collection);
	__fastcall virtual ~TTMSFNCTreeViewNodeValue();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	virtual void __fastcall AssignData(System::Classes::TPersistent* Source);
	__property Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* BitmapContainer = {read=GetBitmapContainer};
	__property void * DataPointer = {read=FDataPointer, write=FDataPointer};
	__property bool DataBoolean = {read=FDataBoolean, write=FDataBoolean, nodefault};
	__property System::TObject* DataObject = {read=FDataObject, write=FDataObject};
	__property System::UnicodeString DataString = {read=FDataString, write=FDataString};
	__property NativeInt DataInteger = {read=FDataInteger, write=FDataInteger, nodefault};
	__property System::UnicodeString DBKey = {read=FDBKey, write=FDBKey};
	
__published:
	__property NativeInt Tag = {read=FTag, write=FTag, default=0};
	__property System::UnicodeString Text = {read=FText, write=SetText};
	__property System::UnicodeString CollapsedIconName = {read=FCollapsedIconName, write=SetCollapsedIconName};
	__property System::UnicodeString CollapsedIconLargeName = {read=FCollapsedIconLargeName, write=SetCollapsedIconLargeName};
	__property System::UnicodeString ExpandedIconName = {read=FExpandedIconName, write=SetExpandedIconName};
	__property System::UnicodeString ExpandedIconLargeName = {read=FExpandedIconLargeName, write=SetExpandedIconLargeName};
	__property Fmx::Tmsfnctypes::TTMSFNCBitmap* CollapsedIcon = {read=FCollapsedIcon, write=SetCollapsedIcon};
	__property Fmx::Tmsfnctypes::TTMSFNCBitmap* CollapsedIconLarge = {read=FCollapsedIconLarge, write=SetCollapsedIconLarge};
	__property Fmx::Tmsfnctypes::TTMSFNCBitmap* ExpandedIcon = {read=FExpandedIcon, write=SetExpandedIcon};
	__property Fmx::Tmsfnctypes::TTMSFNCBitmap* ExpandedIconLarge = {read=FExpandedIconLarge, write=SetExpandedIconLarge};
	__property bool Checked = {read=FChecked, write=SetChecked, default=0};
	__property TTMSFNCTreeViewNodeCheckType CheckType = {read=FCheckType, write=SetCheckType, default=0};
	__property System::Classes::TStringList* HTMLTemplateItems = {read=FHTMLTemplateItems, write=SetHTMLTemplateItems};
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCTreeViewNodeValues : public Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCTreeViewNodeValue*>
{
	typedef Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCTreeViewNodeValue*> inherited;
	
public:
	TTMSFNCTreeViewNodeValue* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCTreeViewData* FTreeView;
	TTMSFNCTreeViewNode* FNode;
	HIDESBASE TTMSFNCTreeViewNodeValue* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCTreeViewNodeValue* const Value);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall GetItemClass();
	
public:
	TTMSFNCTreeViewData* __fastcall TreeView();
	TTMSFNCTreeViewNode* __fastcall Node();
	virtual void __fastcall UpdateChecked(int AIndex, bool AValue);
	__fastcall TTMSFNCTreeViewNodeValues(TTMSFNCTreeViewData* ATreeView, TTMSFNCTreeViewNode* ANode);
	HIDESBASE TTMSFNCTreeViewNodeValue* __fastcall Add();
	HIDESBASE TTMSFNCTreeViewNodeValue* __fastcall Insert(int Index);
	__property TTMSFNCTreeViewNodeValue* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCTreeViewNodeValues() { }
	
};

#pragma pack(pop)

typedef System::DynamicArray<System::UnicodeString> TTMSFNCTreeViewNodeTextValues;

typedef System::DynamicArray<bool> TTMSFNCTreeViewNodeCheckStates;

typedef System::DynamicArray<TTMSFNCTreeViewNodeCheckType> TTMSFNCTreeViewNodeCheckTypes;

typedef System::DynamicArray<Fmx::Tmsfnctypes::TTMSFNCBitmap*> TTMSFNCTreeViewNodeIcons;

typedef System::DynamicArray<System::UnicodeString> TTMSFNCTreeViewNodeIconNames;

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCTreeViewNode : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	NativeInt FTag;
	System::UnicodeString FDataString;
	System::TObject* FDataObject;
	NativeInt FDataInteger;
	TTMSFNCTreeViewData* FTreeView;
	TTMSFNCTreeViewNodeValues* FValues;
	System::UnicodeString FDBKey;
	bool FDataBoolean;
	TTMSFNCTreeViewNodes* FNodes;
	TTMSFNCTreeViewVirtualNode* FVirtualNode;
	bool FExpanded;
	bool FEnabled;
	bool FExtended;
	void *FDataPointer;
	void __fastcall SetValues(TTMSFNCTreeViewNodeValues* const Value);
	void __fastcall SetNodes(TTMSFNCTreeViewNodes* const Value);
	void __fastcall SetExpanded(const bool Value);
	void __fastcall SetEnabled(const bool Value);
	void __fastcall SetExtended(const bool Value);
	bool __fastcall GetChecked(int AColumn);
	void __fastcall SetChecked(int AColumn, const bool Value);
	TTMSFNCTreeViewNodeCheckType __fastcall GetCheckType(int AColumn);
	Fmx::Tmsfnctypes::TTMSFNCBitmap* __fastcall GetCollapsedIcon(int AColumn, bool ALarge);
	System::UnicodeString __fastcall GetCollapsedIconName(int AColumn, bool ALarge);
	Fmx::Tmsfnctypes::TTMSFNCBitmap* __fastcall GetExpandedIcon(int AColumn, bool ALarge);
	System::UnicodeString __fastcall GetExpandedIconName(int AColumn, bool ALarge);
	System::UnicodeString __fastcall GetText(int AColumn);
	void __fastcall SetCheckType(int AColumn, const TTMSFNCTreeViewNodeCheckType Value);
	void __fastcall SetCollapsedIcon(int AColumn, bool ALarge, Fmx::Tmsfnctypes::TTMSFNCBitmap* const Value);
	void __fastcall SetCollapsedIconName(int AColumn, bool ALarge, const System::UnicodeString Value);
	void __fastcall SetExpandedIcon(int AColumn, bool ALarge, Fmx::Tmsfnctypes::TTMSFNCBitmap* const Value);
	void __fastcall SetExpandedIconName(int AColumn, bool ALarge, const System::UnicodeString Value);
	void __fastcall SetText(int AColumn, const System::UnicodeString Value);
	System::UnicodeString __fastcall GetStrippedHTMLText(int AColumn);
	
protected:
	void __fastcall UpdateNode();
	virtual TTMSFNCTreeViewNodeValue* __fastcall GetValueForColumn(int AColumn);
	virtual TTMSFNCTreeViewNodes* __fastcall CreateNodes();
	virtual TTMSFNCTreeViewNodeValues* __fastcall CreateNodeValues();
	virtual void __fastcall SetIndex(int Value);
	void __fastcall ValuesChanged(System::TObject* Sender);
	
public:
	TTMSFNCTreeViewData* __fastcall TreeView();
	virtual TTMSFNCTreeViewNode* __fastcall GetParent();
	virtual int __fastcall GetChildCount();
	virtual TTMSFNCTreeViewNode* __fastcall GetPrevious();
	virtual TTMSFNCTreeViewNode* __fastcall GetNext();
	virtual TTMSFNCTreeViewNode* __fastcall GetPreviousChild(TTMSFNCTreeViewNode* ANode);
	virtual TTMSFNCTreeViewNode* __fastcall GetNextChild(TTMSFNCTreeViewNode* ANode);
	virtual TTMSFNCTreeViewNode* __fastcall GetNextSibling();
	virtual TTMSFNCTreeViewNode* __fastcall GetPreviousSibling();
	virtual TTMSFNCTreeViewNode* __fastcall GetFirstChild();
	virtual TTMSFNCTreeViewNode* __fastcall GetLastChild();
	virtual System::UnicodeString __fastcall SaveToString(bool ATextOnly = true);
	virtual void __fastcall LoadFromString(System::UnicodeString AString);
	virtual void __fastcall RemoveChildren();
	virtual void __fastcall Expand(bool ARecurse = false);
	virtual void __fastcall Collapse(bool ARecurse = false);
	virtual void __fastcall MoveTo(TTMSFNCTreeViewNode* ADestination, int AIndex = 0xffffffff);
	virtual void __fastcall CopyTo(TTMSFNCTreeViewNode* ADestination, int AIndex = 0xffffffff);
	virtual void __fastcall SetTextValues(TTMSFNCTreeViewNodeTextValues ATextValues);
	virtual void __fastcall SetCheckStates(TTMSFNCTreeViewNodeCheckStates ACheckStates);
	virtual void __fastcall SetCheckTypes(TTMSFNCTreeViewNodeCheckTypes ACheckTypes);
	virtual void __fastcall SetCollapsedIcons(TTMSFNCTreeViewNodeIcons AIcons, bool ALarge = false);
	virtual void __fastcall SetExpandedIcons(TTMSFNCTreeViewNodeIcons AIcons, bool ALarge = false);
	virtual void __fastcall SetCollapsedIconNames(TTMSFNCTreeViewNodeIconNames AIconNames, bool ALarge = false);
	virtual void __fastcall SetExpandedIconNames(TTMSFNCTreeViewNodeIconNames AIconNames, bool ALarge = false);
	__fastcall virtual TTMSFNCTreeViewNode(System::Classes::TCollection* Collection);
	__fastcall virtual ~TTMSFNCTreeViewNode();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	virtual void __fastcall AssignData(System::Classes::TPersistent* Source);
	__property void * DataPointer = {read=FDataPointer, write=FDataPointer};
	__property bool DataBoolean = {read=FDataBoolean, write=FDataBoolean, nodefault};
	__property System::TObject* DataObject = {read=FDataObject, write=FDataObject};
	__property System::UnicodeString DataString = {read=FDataString, write=FDataString};
	__property NativeInt DataInteger = {read=FDataInteger, write=FDataInteger, nodefault};
	__property System::UnicodeString DBKey = {read=FDBKey, write=FDBKey};
	__property bool Checked[int AColumn] = {read=GetChecked, write=SetChecked};
	__property System::UnicodeString Text[int AColumn] = {read=GetText, write=SetText};
	__property System::UnicodeString StrippedHTMLText[int AColumn] = {read=GetStrippedHTMLText};
	__property TTMSFNCTreeViewNodeCheckType CheckTypes[int AColumn] = {read=GetCheckType, write=SetCheckType};
	__property Fmx::Tmsfnctypes::TTMSFNCBitmap* ExpandedIcons[int AColumn][bool ALarge] = {read=GetExpandedIcon, write=SetExpandedIcon};
	__property Fmx::Tmsfnctypes::TTMSFNCBitmap* CollapsedIcons[int AColumn][bool ALarge] = {read=GetCollapsedIcon, write=SetCollapsedIcon};
	__property System::UnicodeString ExpandedIconNames[int AColumn][bool ALarge] = {read=GetExpandedIconName, write=SetExpandedIconName};
	__property System::UnicodeString CollapsedIconNames[int AColumn][bool ALarge] = {read=GetCollapsedIconName, write=SetCollapsedIconName};
	__property TTMSFNCTreeViewVirtualNode* VirtualNode = {read=FVirtualNode};
	
__published:
	__property TTMSFNCTreeViewNodeValues* Values = {read=FValues, write=SetValues};
	__property bool Expanded = {read=FExpanded, write=SetExpanded, default=0};
	__property bool Enabled = {read=FEnabled, write=SetEnabled, default=1};
	__property bool Extended = {read=FExtended, write=SetExtended, default=0};
	__property NativeInt Tag = {read=FTag, write=FTag, nodefault};
	__property TTMSFNCTreeViewNodes* Nodes = {read=FNodes, write=SetNodes};
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCTreeViewNodes : public Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCTreeViewNode*>
{
	typedef Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCTreeViewNode*> inherited;
	
public:
	TTMSFNCTreeViewNode* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCTreeViewData* FTreeView;
	TTMSFNCTreeViewNode* FNode;
	HIDESBASE TTMSFNCTreeViewNode* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCTreeViewNode* const Value);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall GetItemClass();
	virtual int __fastcall Compare(TTMSFNCTreeViewNode* ANode1, TTMSFNCTreeViewNode* ANode2, int AColumn = 0x0, bool ACaseSensitive = true, TTMSFNCTreeViewNodesSortMode ASortingMode = (TTMSFNCTreeViewNodesSortMode)(0x0));
	virtual void __fastcall QuickSort(int L, int R, int AColumn = 0x0, bool ACaseSensitive = true, TTMSFNCTreeViewNodesSortMode ASortingMode = (TTMSFNCTreeViewNodesSortMode)(0x0));
	
public:
	TTMSFNCTreeViewData* __fastcall TreeView();
	TTMSFNCTreeViewNode* __fastcall Node();
	__fastcall TTMSFNCTreeViewNodes(TTMSFNCTreeViewData* ATreeView, TTMSFNCTreeViewNode* ANode);
	__fastcall virtual ~TTMSFNCTreeViewNodes();
	HIDESBASE TTMSFNCTreeViewNode* __fastcall Add();
	HIDESBASE TTMSFNCTreeViewNode* __fastcall Insert(int Index);
	__property TTMSFNCTreeViewNode* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	HIDESBASE void __fastcall Sort(int AColumn = 0x0, bool ARecurse = false, bool ACaseSensitive = true, TTMSFNCTreeViewNodesSortMode ASortingMode = (TTMSFNCTreeViewNodesSortMode)(0x0), bool AClearNodeList = true);
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCTreeViewGroup : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	NativeInt FTag;
	System::UnicodeString FDataString;
	System::TObject* FDataObject;
	NativeInt FDataInteger;
	TTMSFNCTreeViewData* FTreeView;
	System::UnicodeString FText;
	int FStartColumn;
	int FEndColumn;
	System::UnicodeString FName;
	System::UnicodeString FDBKey;
	bool FDataBoolean;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FBottomFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FBottomStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FTopFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FTopStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FTopFont;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FBottomFont;
	bool FUseDefaultAppearance;
	void *FDataPointer;
	void __fastcall SetText(const System::UnicodeString Value);
	void __fastcall SetStartColumn(const int Value);
	void __fastcall SetEndColumn(const int Value);
	void __fastcall SetName(const System::UnicodeString Value);
	void __fastcall SetBottomFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetBottomStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetTopFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetTopStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetBottomFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetTopFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetUseDefaultAppearance(const bool Value);
	
protected:
	void __fastcall UpdateGroup();
	HIDESBASE void __fastcall Changed(System::TObject* Sender);
	
public:
	TTMSFNCTreeViewData* __fastcall TreeView();
	__fastcall virtual TTMSFNCTreeViewGroup(System::Classes::TCollection* Collection);
	__fastcall virtual ~TTMSFNCTreeViewGroup();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__property void * DataPointer = {read=FDataPointer, write=FDataPointer};
	__property bool DataBoolean = {read=FDataBoolean, write=FDataBoolean, nodefault};
	__property System::TObject* DataObject = {read=FDataObject, write=FDataObject};
	__property System::UnicodeString DataString = {read=FDataString, write=FDataString};
	__property NativeInt DataInteger = {read=FDataInteger, write=FDataInteger, nodefault};
	__property System::UnicodeString DBKey = {read=FDBKey, write=FDBKey};
	virtual System::UnicodeString __fastcall GetText();
	
__published:
	__property System::UnicodeString Name = {read=FName, write=SetName};
	__property System::UnicodeString Text = {read=FText, write=SetText};
	__property int StartColumn = {read=FStartColumn, write=SetStartColumn, default=0};
	__property int EndColumn = {read=FEndColumn, write=SetEndColumn, default=0};
	__property NativeInt Tag = {read=FTag, write=FTag, default=0};
	__property bool UseDefaultAppearance = {read=FUseDefaultAppearance, write=SetUseDefaultAppearance, default=1};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* TopFill = {read=FTopFill, write=SetTopFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* TopStroke = {read=FTopStroke, write=SetTopStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* TopFont = {read=FTopFont, write=SetTopFont};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* BottomFill = {read=FBottomFill, write=SetBottomFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* BottomStroke = {read=FBottomStroke, write=SetBottomStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* BottomFont = {read=FBottomFont, write=SetBottomFont};
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCTreeViewGroups : public Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCTreeViewGroup*>
{
	typedef Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCTreeViewGroup*> inherited;
	
public:
	TTMSFNCTreeViewGroup* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCTreeViewData* FTreeView;
	HIDESBASE TTMSFNCTreeViewGroup* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCTreeViewGroup* const Value);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall GetItemClass();
	
public:
	TTMSFNCTreeViewData* __fastcall TreeView();
	__fastcall TTMSFNCTreeViewGroups(TTMSFNCTreeViewData* ATreeView);
	HIDESBASE TTMSFNCTreeViewGroup* __fastcall Add();
	HIDESBASE TTMSFNCTreeViewGroup* __fastcall Insert(int Index);
	__property TTMSFNCTreeViewGroup* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCTreeViewGroups() { }
	
};

#pragma pack(pop)

enum DECLSPEC_DENUM TTMSFNCTreeViewNodeTextMode : unsigned char { tntmDrawing, tntmEditing };

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCTreeViewNodeStructure : public System::Generics::Collections::TObjectList__1<TTMSFNCTreeViewVirtualNode*>
{
	typedef System::Generics::Collections::TObjectList__1<TTMSFNCTreeViewVirtualNode*> inherited;
	
public:
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewVirtualNode>.Create */ inline __fastcall TTMSFNCTreeViewNodeStructure()/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCTreeViewVirtualNode*>() { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewVirtualNode>.Create */ inline __fastcall TTMSFNCTreeViewNodeStructure(bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCTreeViewVirtualNode*>(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewVirtualNode>.Create */ inline __fastcall TTMSFNCTreeViewNodeStructure(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCTreeViewVirtualNode*> > AComparer, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCTreeViewVirtualNode*>(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewVirtualNode>.Create */ inline __fastcall TTMSFNCTreeViewNodeStructure(System::Generics::Collections::TEnumerable__1<TTMSFNCTreeViewVirtualNode*>* const Collection, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCTreeViewVirtualNode*>(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewVirtualNode>.Destroy */ inline __fastcall virtual ~TTMSFNCTreeViewNodeStructure() { }
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewVirtualNode>.Create */ inline __fastcall TTMSFNCTreeViewNodeStructure(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCTreeViewVirtualNode*> > AComparer)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCTreeViewVirtualNode*>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewVirtualNode>.Create */ inline __fastcall TTMSFNCTreeViewNodeStructure(System::Generics::Collections::TEnumerable__1<TTMSFNCTreeViewVirtualNode*>* const Collection)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCTreeViewVirtualNode*>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewVirtualNode>.Create */ inline __fastcall TTMSFNCTreeViewNodeStructure(TTMSFNCTreeViewVirtualNode* const *Values, const int Values_High)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCTreeViewVirtualNode*>(Values, Values_High) { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCTreeViewVisibleNodes : public System::Generics::Collections::TList__1<TTMSFNCTreeViewVirtualNode*>
{
	typedef System::Generics::Collections::TList__1<TTMSFNCTreeViewVirtualNode*> inherited;
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewVirtualNode>.Create */ inline __fastcall TTMSFNCTreeViewVisibleNodes()/* overload */ : System::Generics::Collections::TList__1<TTMSFNCTreeViewVirtualNode*>() { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewVirtualNode>.Create */ inline __fastcall TTMSFNCTreeViewVisibleNodes(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCTreeViewVirtualNode*> > AComparer)/* overload */ : System::Generics::Collections::TList__1<TTMSFNCTreeViewVirtualNode*>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewVirtualNode>.Create */ inline __fastcall TTMSFNCTreeViewVisibleNodes(System::Generics::Collections::TEnumerable__1<TTMSFNCTreeViewVirtualNode*>* const Collection)/* overload */ : System::Generics::Collections::TList__1<TTMSFNCTreeViewVirtualNode*>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewVirtualNode>.Create */ inline __fastcall TTMSFNCTreeViewVisibleNodes(TTMSFNCTreeViewVirtualNode* const *Values, const int Values_High)/* overload */ : System::Generics::Collections::TList__1<TTMSFNCTreeViewVirtualNode*>(Values, Values_High) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewVirtualNode>.Destroy */ inline __fastcall virtual ~TTMSFNCTreeViewVisibleNodes() { }
	
};

#pragma pack(pop)

struct DECLSPEC_DRECORD TTMSFNCTreeViewDisplayGroup
{
public:
	int StartColumn;
	int EndColumn;
};


#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCTreeViewDisplayGroups : public System::Generics::Collections::TList__1<TTMSFNCTreeViewDisplayGroup>
{
	typedef System::Generics::Collections::TList__1<TTMSFNCTreeViewDisplayGroup> inherited;
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewDisplayGroup>.Create */ inline __fastcall TTMSFNCTreeViewDisplayGroups()/* overload */ : System::Generics::Collections::TList__1<TTMSFNCTreeViewDisplayGroup>() { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewDisplayGroup>.Create */ inline __fastcall TTMSFNCTreeViewDisplayGroups(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCTreeViewDisplayGroup> > AComparer)/* overload */ : System::Generics::Collections::TList__1<TTMSFNCTreeViewDisplayGroup>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewDisplayGroup>.Create */ inline __fastcall TTMSFNCTreeViewDisplayGroups(System::Generics::Collections::TEnumerable__1<TTMSFNCTreeViewDisplayGroup>* const Collection)/* overload */ : System::Generics::Collections::TList__1<TTMSFNCTreeViewDisplayGroup>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewDisplayGroup>.Create */ inline __fastcall TTMSFNCTreeViewDisplayGroups(const TTMSFNCTreeViewDisplayGroup *Values, const int Values_High)/* overload */ : System::Generics::Collections::TList__1<TTMSFNCTreeViewDisplayGroup>(Values, Values_High) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewDisplayGroup>.Destroy */ inline __fastcall virtual ~TTMSFNCTreeViewDisplayGroups() { }
	
};

#pragma pack(pop)

class PASCALIMPLEMENTATION TTMSFNCTreeViewData : public Fmx::Tmsfnctreeviewbase::TTMSFNCTreeViewBase
{
	typedef Fmx::Tmsfnctreeviewbase::TTMSFNCTreeViewBase inherited;
	
private:
	bool FFilterApplied;
	bool FBlockUpdate;
	TTMSFNCTreeViewNodeStructure* FNodeStructure;
	TTMSFNCTreeViewVisibleNodes* FVisibleNodes;
	TTMSFNCTreeViewColumns* FColumns;
	TTMSFNCTreeViewGroups* FGroups;
	TTMSFNCTreeViewNodes* FNodes;
	Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* FBitmapContainer;
	TTMSFNCTreeViewDisplayGroups* FDisplayGroups;
	TTMSFNCTreeViewFilter* FFilter;
	TTMSFNCTreeViewNodesSortMode FSortMode;
	void __fastcall SetColumns(TTMSFNCTreeViewColumns* const Value);
	void __fastcall SetGroups(TTMSFNCTreeViewGroups* const Value);
	void __fastcall SetNodes(TTMSFNCTreeViewNodes* const Value);
	Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* __fastcall GetBitmapContainer();
	void __fastcall SetBitmapContainer(Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* const Value);
	
protected:
	__property Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* BitmapContainer = {read=GetBitmapContainer, write=SetBitmapContainer};
	virtual void __fastcall Notification(System::Classes::TComponent* AComponent, System::Classes::TOperation Operation);
	virtual TTMSFNCTreeViewColumns* __fastcall CreateColumns();
	virtual TTMSFNCTreeViewGroups* __fastcall CreateGroups();
	virtual TTMSFNCTreeViewNodes* __fastcall CreateNodes();
	virtual int __fastcall GetInsertPosition(TTMSFNCTreeViewVirtualNode* ANode, bool ARoot, bool AInsert);
	virtual TTMSFNCTreeViewVirtualNode* __fastcall GetNodeFromNodeStructure(int AIndex);
	virtual bool __fastcall MatchFilter(TTMSFNCTreeViewVirtualNode* ANode);
	virtual void __fastcall BuildNodeList();
	virtual void __fastcall UpdateColumns();
	void __fastcall BuildInternalNodeList(TTMSFNCTreeViewVirtualNode* ANode, System::UnicodeString AID, int AParentNode, int ANodeIndex, int ALevel, bool AParentExpanded, int &ATotalChildren);
	virtual void __fastcall GetNodeForNodeData(TTMSFNCTreeViewVirtualNode* ANode);
	virtual void __fastcall DoGetNumberOfNodes(TTMSFNCTreeViewVirtualNode* ANode, int &ANumberOfNodes);
	virtual void __fastcall DoGetColumnTrimming(int AColumn, TTMSFNCTreeViewCacheItemKind AKind, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextTrimming &ATrimming);
	virtual void __fastcall DoGetColumnHorizontalTextAlign(int AColumn, TTMSFNCTreeViewCacheItemKind AKind, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign &AHorizontalTextAlign);
	virtual void __fastcall DoGetColumnVerticalTextAlign(int AColumn, TTMSFNCTreeViewCacheItemKind AKind, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign &AVerticalTextAlign);
	virtual void __fastcall DoGetColumnWordWrapping(int AColumn, TTMSFNCTreeViewCacheItemKind AKind, bool &AWordWrapping);
	virtual void __fastcall DoGetNodeSides(TTMSFNCTreeViewVirtualNode* ANode, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsSides &ASides);
	virtual void __fastcall DoGetNodeText(TTMSFNCTreeViewVirtualNode* ANode, int AColumn, TTMSFNCTreeViewNodeTextMode AMode, System::UnicodeString &AText);
	virtual void __fastcall DoGetNodeData(TTMSFNCTreeViewVirtualNode* ANode);
	virtual void __fastcall DoGetNodeTitle(TTMSFNCTreeViewVirtualNode* ANode, int AColumn, TTMSFNCTreeViewNodeTextMode AMode, System::UnicodeString &ATitle);
	virtual void __fastcall DoGetNodeTitleExpanded(TTMSFNCTreeViewVirtualNode* ANode, int AColumn, bool &AExpanded);
	virtual void __fastcall DoGetNodeTrimming(TTMSFNCTreeViewVirtualNode* ANode, int AColumn, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextTrimming &ATrimming);
	virtual void __fastcall DoGetNodeHorizontalTextAlign(TTMSFNCTreeViewVirtualNode* ANode, int AColumn, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign &AHorizontalTextAlign);
	virtual void __fastcall DoGetNodeVerticalTextAlign(TTMSFNCTreeViewVirtualNode* ANode, int AColumn, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign &AVerticalTextAlign);
	virtual void __fastcall DoGetNodeWordWrapping(TTMSFNCTreeViewVirtualNode* ANode, int AColumn, bool &AWordWrapping);
	virtual void __fastcall DoGetNodeTitleTrimming(TTMSFNCTreeViewVirtualNode* ANode, int AColumn, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextTrimming &ATrimming);
	virtual void __fastcall DoGetNodeTitleHorizontalTextAlign(TTMSFNCTreeViewVirtualNode* ANode, int AColumn, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign &AHorizontalTextAlign);
	virtual void __fastcall DoGetNodeTitleVerticalTextAlign(TTMSFNCTreeViewVirtualNode* ANode, int AColumn, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign &AVerticalTextAlign);
	virtual void __fastcall DoGetNodeTitleWordWrapping(TTMSFNCTreeViewVirtualNode* ANode, int AColumn, bool &AWordWrapping);
	virtual void __fastcall DoGetNodeExtraSize(TTMSFNCTreeViewVirtualNode* ANode, int AColumn, float &AExtraSize);
	virtual void __fastcall DoGetNodeTitleExtraSize(TTMSFNCTreeViewVirtualNode* ANode, int AColumn, float &ATitleExtraSize);
	virtual void __fastcall DoGetNodeCheckType(TTMSFNCTreeViewVirtualNode* ANode, int AColumn, TTMSFNCTreeViewNodeCheckType &ACheckType);
	virtual void __fastcall DoGetNodeIcon(TTMSFNCTreeViewVirtualNode* ANode, int AColumn, bool ALarge, Fmx::Tmsfnctypes::TTMSFNCBitmap* &AIcon);
	virtual void __fastcall DoGetNodeIconSize(TTMSFNCTreeViewVirtualNode* ANode, int AColumn, bool ALarge, Fmx::Tmsfnctypes::TTMSFNCBitmap* AIcon, double &AIconWidth, double &AIconHeight);
	virtual void __fastcall DoGetNodeSelectedColor(TTMSFNCTreeViewVirtualNode* ANode, System::Uitypes::TAlphaColor &AColor);
	virtual void __fastcall DoGetNodeDisabledColor(TTMSFNCTreeViewVirtualNode* ANode, System::Uitypes::TAlphaColor &AColor);
	virtual void __fastcall DoGetNodeColor(TTMSFNCTreeViewVirtualNode* ANode, System::Uitypes::TAlphaColor &AColor);
	virtual void __fastcall DoGetNodeSelectedTextColor(TTMSFNCTreeViewVirtualNode* ANode, int AColumn, System::Uitypes::TAlphaColor &ATextColor);
	virtual void __fastcall DoGetNodeDisabledTextColor(TTMSFNCTreeViewVirtualNode* ANode, int AColumn, System::Uitypes::TAlphaColor &ATextColor);
	virtual void __fastcall DoGetNodeSelectedTitleColor(TTMSFNCTreeViewVirtualNode* ANode, int AColumn, System::Uitypes::TAlphaColor &ATitleColor);
	virtual void __fastcall DoGetNodeDisabledTitleColor(TTMSFNCTreeViewVirtualNode* ANode, int AColumn, System::Uitypes::TAlphaColor &ATitleColor);
	virtual void __fastcall DoGetNodeTextColor(TTMSFNCTreeViewVirtualNode* ANode, int AColumn, System::Uitypes::TAlphaColor &ATextColor);
	virtual void __fastcall DoGetNodeTitleColor(TTMSFNCTreeViewVirtualNode* ANode, int AColumn, System::Uitypes::TAlphaColor &ATitleColor);
	virtual void __fastcall DoIsNodeExpanded(TTMSFNCTreeViewVirtualNode* ANode, bool &AExpanded);
	virtual void __fastcall DoIsNodeExtended(TTMSFNCTreeViewVirtualNode* ANode, bool &AExtended);
	virtual void __fastcall DoIsNodeChecked(TTMSFNCTreeViewVirtualNode* ANode, int AColumn, bool &AChecked);
	virtual void __fastcall DoIsNodeVisible(TTMSFNCTreeViewVirtualNode* ANode, bool &AVisible);
	virtual void __fastcall DoIsNodeEnabled(TTMSFNCTreeViewVirtualNode* ANode, bool &AEnabled);
	virtual void __fastcall DoNodeCompare(TTMSFNCTreeViewNode* ANode1, TTMSFNCTreeViewNode* ANode2, int AColumn, int &ACompareResult);
	virtual void __fastcall DoGetHTMLTemplateValue(TTMSFNCTreeViewNodeValue* ANodeValue, System::UnicodeString AName, System::UnicodeString &AValue);
	virtual void __fastcall DoGetHTMLTemplate(TTMSFNCTreeViewNodeValue* ANodeValue, int AColumnIndex, System::UnicodeString &AHTMLTemplate);
	virtual void __fastcall ToggleCheckNodeInternal(TTMSFNCTreeViewVirtualNode* ANode, int AColumn, bool ARecurse = false);
	virtual void __fastcall CheckNodeInternal(TTMSFNCTreeViewVirtualNode* ANode, int AColumn, bool ARecurse = false);
	virtual void __fastcall UpdateCheckState(TTMSFNCTreeViewVirtualNode* ANode, int AColumn, bool AChecked);
	virtual void __fastcall UnCheckNodeInternal(TTMSFNCTreeViewVirtualNode* ANode, int AColumn, bool ARecurse = false);
	virtual void __fastcall ExpandNodeInternal(TTMSFNCTreeViewVirtualNode* ANode, bool ARecurse = false);
	virtual void __fastcall CollapseNodeInternal(TTMSFNCTreeViewVirtualNode* ANode, bool ARecurse = false);
	virtual TTMSFNCTreeViewVirtualNodeRemoveData __fastcall RemoveNodeInternal(TTMSFNCTreeViewVirtualNode* ANode, bool AUpdateNodes = true);
	virtual void __fastcall ClearFocusedNode(TTMSFNCTreeViewVirtualNode* ANode) = 0 ;
	virtual void __fastcall UpdateNodesInternal(const TTMSFNCTreeViewVirtualNodeRemoveData &ANodeRemoveData);
	virtual void __fastcall InsertNodeInternal(TTMSFNCTreeViewVirtualNode* AParentNode, int AIndex, int AInsertIndex, TTMSFNCTreeViewVirtualNode* ANode);
	virtual void __fastcall UpdateVisibleNodes(TTMSFNCTreeViewVirtualNode* ANode);
	virtual void __fastcall ToggleNodeInternal(TTMSFNCTreeViewVirtualNode* ANode, bool ARecurse = false);
	virtual void __fastcall InsertItemInternal(TTMSFNCTreeViewNode* AItem);
	virtual bool __fastcall IsVariableNodeHeight() = 0 ;
	virtual TTMSFNCTreeViewVirtualNodeRemoveData __fastcall RemoveItemInternal(TTMSFNCTreeViewNode* AItem, bool AUpdate = true);
	virtual float __fastcall GetNodesSpacing();
	virtual TTMSFNCTreeViewVirtualNode* __fastcall GetVisibleNodeForIndex(int AIndex);
	virtual void __fastcall ToggleNode(TTMSFNCTreeViewNode* ANode);
	virtual void __fastcall UpdateNodeCalculated(TTMSFNCTreeViewVirtualNode* ANode, bool ACalculated);
	virtual void __fastcall UpdateNodeHeight(TTMSFNCTreeViewVirtualNode* ANode, double AHeight);
	virtual void __fastcall UpdateNodeTitleHeight(TTMSFNCTreeViewVirtualNode* ANode, double AHeight);
	virtual void __fastcall UpdateNodeCheckStates(TTMSFNCTreeViewVirtualNode* ANode, TTMSFNCArrayBoolean ACheckStates);
	virtual void __fastcall UpdateNodeBitmapRects(TTMSFNCTreeViewVirtualNode* ANode, TTMSFNCArrayTRectF ABitmapRects);
	virtual void __fastcall UpdateNodeCheckRects(TTMSFNCTreeViewVirtualNode* ANode, TTMSFNCArrayTRectF ACheckRects);
	virtual void __fastcall UpdateNodeExpandRects(TTMSFNCTreeViewVirtualNode* ANode, TTMSFNCArrayTRectF AExpandRects);
	virtual void __fastcall UpdateNodeTextRects(TTMSFNCTreeViewVirtualNode* ANode, TTMSFNCArrayTRectF ATextRects);
	virtual void __fastcall UpdateNodeTitleRects(TTMSFNCTreeViewVirtualNode* ANode, TTMSFNCArrayTRectF ATitleRects);
	virtual void __fastcall UpdateNodeExtraRects(TTMSFNCTreeViewVirtualNode* ANode, TTMSFNCArrayTRectF AExtraRects);
	virtual void __fastcall UpdateNodeTitleExtraRects(TTMSFNCTreeViewVirtualNode* ANode, TTMSFNCArrayTRectF ATitleExtraRects);
	virtual void __fastcall UpdateNodeCacheReference(TTMSFNCTreeViewVirtualNode* ANode, TTMSFNCTreeViewCacheItem* ACache);
	virtual void __fastcall UpdateNodeExpanded(TTMSFNCTreeViewVirtualNode* ANode, bool AExpanded);
	virtual void __fastcall UpdateNodeExtended(TTMSFNCTreeViewVirtualNode* ANode, bool AExtended);
	virtual void __fastcall UpdateNodeTotalChildren(TTMSFNCTreeViewVirtualNode* ANode, int ATotalChildren);
	virtual void __fastcall UpdateNodeChildren(TTMSFNCTreeViewVirtualNode* ANode, int AChildren);
	virtual void __fastcall UpdateNodeIndex(TTMSFNCTreeViewVirtualNode* ANode, int AIndex);
	virtual void __fastcall UpdateNodeRow(TTMSFNCTreeViewVirtualNode* ANode, int ARow);
	virtual void __fastcall UpdateNodeLevel(TTMSFNCTreeViewVirtualNode* ANode, int ALevel);
	virtual void __fastcall UpdateNodeParentNode(TTMSFNCTreeViewVirtualNode* ANode, int AParentNode);
	virtual void __fastcall UpdateNode(TTMSFNCTreeViewVirtualNode* ANode);
	virtual void __fastcall CustomizeScrollPosition(TTMSFNCTreeViewVirtualNode* ANode, double &APosition, double &ATopPosition);
	System::UnicodeString __fastcall HTMLReplace(System::UnicodeString AValue, TTMSFNCTreeViewNodeValue* ANodeValue);
	virtual System::UnicodeString __fastcall GetHTMLTemplate(int AColumnIndex);
	__property TTMSFNCTreeViewColumns* Columns = {read=FColumns, write=SetColumns};
	__property TTMSFNCTreeViewGroups* Groups = {read=FGroups, write=SetGroups};
	__property TTMSFNCTreeViewNodes* Nodes = {read=FNodes, write=SetNodes};
	__property TTMSFNCTreeViewDisplayGroups* DisplayGroups = {read=FDisplayGroups};
	__property bool BlockUpdate = {read=FBlockUpdate, write=FBlockUpdate, nodefault};
	__property TTMSFNCTreeViewNodeStructure* NodeStructure = {read=FNodeStructure};
	__property TTMSFNCTreeViewVisibleNodes* VisibleNodes = {read=FVisibleNodes};
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual TTMSFNCTreeViewData(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCTreeViewData();
	virtual bool __fastcall IsColumnVisible(int ACol);
	virtual TTMSFNCTreeViewColumn* __fastcall FindColumnByName(System::UnicodeString AName);
	virtual TTMSFNCTreeViewGroup* __fastcall FindGroupByName(System::UnicodeString AName);
	virtual int __fastcall FindColumnIndexByName(System::UnicodeString AName);
	virtual int __fastcall FindGroupIndexByName(System::UnicodeString AName);
	virtual void __fastcall ClearColumns();
	virtual void __fastcall ClearNodes();
	virtual void __fastcall ClearNodeList();
	virtual void __fastcall RemoveNodeFromSelection(TTMSFNCTreeViewVirtualNode* ANode) = 0 ;
	virtual void __fastcall AddNodeToSelection(TTMSFNCTreeViewVirtualNode* ANode) = 0 ;
	virtual void __fastcall RemoveVirtualNode(TTMSFNCTreeViewVirtualNode* ANode);
	virtual void __fastcall RemoveNode(TTMSFNCTreeViewNode* ANode);
	virtual void __fastcall ExpandNode(TTMSFNCTreeViewNode* ANode, bool ARecurse = false);
	virtual void __fastcall MoveNode(TTMSFNCTreeViewNode* ANode, TTMSFNCTreeViewNode* ADestinationNode, int AIndex = 0xffffffff);
	virtual void __fastcall CopyNode(TTMSFNCTreeViewNode* ANode, TTMSFNCTreeViewNode* ADestinationNode, int AIndex = 0xffffffff);
	virtual void __fastcall ExpandAll();
	virtual void __fastcall CollapseAll();
	virtual void __fastcall ExpandAllVirtual();
	virtual void __fastcall CollapseAllVirtual();
	virtual void __fastcall ApplyFilter();
	virtual void __fastcall RemoveFilter();
	virtual void __fastcall RemoveFilters();
	virtual void __fastcall CollapseNode(TTMSFNCTreeViewNode* ANode, bool ARecurse = false);
	virtual void __fastcall ToggleVirtualNode(TTMSFNCTreeViewVirtualNode* ANode, bool ARecurse = false);
	virtual void __fastcall ExpandVirtualNode(TTMSFNCTreeViewVirtualNode* ANode, bool ARecurse = false);
	virtual void __fastcall CollapseVirtualNode(TTMSFNCTreeViewVirtualNode* ANode, bool ARecurse = false);
	virtual void __fastcall CheckNode(TTMSFNCTreeViewNode* ANode, int AColumn, bool ARecurse = false);
	virtual void __fastcall UnCheckNode(TTMSFNCTreeViewNode* ANode, int AColumn, bool ARecurse = false);
	virtual void __fastcall ToggleCheckNode(TTMSFNCTreeViewNode* ANode, int AColumn, bool ARecurse = false);
	virtual void __fastcall CheckVirtualNode(TTMSFNCTreeViewVirtualNode* ANode, int AColumn, bool ARecurse = false);
	virtual void __fastcall UnCheckVirtualNode(TTMSFNCTreeViewVirtualNode* ANode, int AColumn, bool ARecurse = false);
	virtual void __fastcall ToggleCheckVirtualNode(TTMSFNCTreeViewVirtualNode* ANode, int AColumn, bool ARecurse = false);
	virtual void __fastcall SetNodeTextValues(TTMSFNCTreeViewNode* ANode, TTMSFNCTreeViewNodeTextValues ATextValues);
	virtual void __fastcall SetNodeCheckStates(TTMSFNCTreeViewNode* ANode, TTMSFNCTreeViewNodeCheckStates ACheckStates);
	virtual void __fastcall SetNodeCheckTypes(TTMSFNCTreeViewNode* ANode, TTMSFNCTreeViewNodeCheckTypes ACheckTypes);
	virtual void __fastcall SetNodeCollapsedIcons(TTMSFNCTreeViewNode* ANode, TTMSFNCTreeViewNodeIcons AIcons, bool ALarge = false);
	virtual void __fastcall SetNodeExpandedIcons(TTMSFNCTreeViewNode* ANode, TTMSFNCTreeViewNodeIcons AIcons, bool ALarge = false);
	virtual void __fastcall SetNodeCollapsedIconNames(TTMSFNCTreeViewNode* ANode, TTMSFNCTreeViewNodeIconNames AIconNames, bool ALarge = false);
	virtual void __fastcall SetNodeExpandedIconNames(TTMSFNCTreeViewNode* ANode, TTMSFNCTreeViewNodeIconNames AIconNames, bool ALarge = false);
	virtual void __fastcall RemoveVirtualNodeChildren(TTMSFNCTreeViewVirtualNode* ANode);
	virtual void __fastcall RemoveNodeChildren(TTMSFNCTreeViewNode* ANode);
	virtual void __fastcall ScrollToNode(TTMSFNCTreeViewNode* ANode, bool AScrollIfNotVisible = false, TTMSFNCTreeViewNodeScrollPosition AScrollPosition = (TTMSFNCTreeViewNodeScrollPosition)(0x0), bool AForceScroll = false);
	virtual void __fastcall ScrollToVirtualNode(TTMSFNCTreeViewVirtualNode* ANode, bool AScrollIfNotVisible = false, TTMSFNCTreeViewNodeScrollPosition AScrollPosition = (TTMSFNCTreeViewNodeScrollPosition)(0x0), bool AForceScroll = false);
	virtual void __fastcall ScrollToVirtualNodeInternal(TTMSFNCTreeViewVirtualNode* ANode, bool AScrollIfNotVisible = false, TTMSFNCTreeViewNodeScrollPosition AScrollPosition = (TTMSFNCTreeViewNodeScrollPosition)(0x0), bool AForceScroll = false);
	virtual void __fastcall ScrollToVirtualNodeRow(int ARow, bool AScrollIfNotVisible = false, TTMSFNCTreeViewNodeScrollPosition AScrollPosition = (TTMSFNCTreeViewNodeScrollPosition)(0x0), bool AForceScroll = false);
	void __fastcall ScrollToTop();
	void __fastcall ScrollToBottom();
	virtual TTMSFNCTreeViewVirtualNode* __fastcall GetNodeForRow(int ARow);
	virtual TTMSFNCTreeViewNode* __fastcall AddNode(TTMSFNCTreeViewNode* AParentNode = (TTMSFNCTreeViewNode*)(0x0));
	virtual TTMSFNCTreeViewVirtualNode* __fastcall AddVirtualNode(TTMSFNCTreeViewVirtualNode* AParentNode = (TTMSFNCTreeViewVirtualNode*)(0x0));
	virtual TTMSFNCTreeViewVirtualNode* __fastcall GetParentVirtualNode(TTMSFNCTreeViewVirtualNode* ANode);
	virtual TTMSFNCTreeViewNode* __fastcall GetParentNode(TTMSFNCTreeViewNode* ANode);
	virtual int __fastcall GetVirtualNodeChildCount(TTMSFNCTreeViewVirtualNode* ANode);
	virtual int __fastcall GetTotalVirtualNodeCount();
	virtual int __fastcall GetTotalNodeCount();
	virtual System::UnicodeString __fastcall GetNodeText(TTMSFNCTreeViewNode* ANode, int AColumn);
	virtual System::UnicodeString __fastcall GetVirtualNodeText(TTMSFNCTreeViewVirtualNode* ANode, int AColumn);
	virtual System::UnicodeString __fastcall GetNodeTitle(TTMSFNCTreeViewNode* ANode, int AColumn);
	virtual System::UnicodeString __fastcall GetVirtualNodeTitle(TTMSFNCTreeViewVirtualNode* ANode, int AColumn);
	virtual bool __fastcall GetVirtualNodeTitleExpanded(TTMSFNCTreeViewVirtualNode* ANode, int AColumn);
	virtual TTMSFNCTreeViewVirtualNode* __fastcall FindVirtualNodeByRow(int ARow);
	virtual TTMSFNCTreeViewNode* __fastcall FindNodeByRow(int ARow);
	virtual TTMSFNCTreeViewVirtualNode* __fastcall FindVirtualNodeByDBKey(System::UnicodeString ADBKey);
	virtual TTMSFNCTreeViewNode* __fastcall FindNodeByDBKey(System::UnicodeString ADBKey);
	virtual TTMSFNCTreeViewVirtualNode* __fastcall FindVirtualNodeByTextAndColumn(System::UnicodeString AText, int AColumn, bool ARecurse = false, bool ACaseSensitive = true);
	virtual TTMSFNCTreeViewNode* __fastcall FindNodeByTextAndColumn(System::UnicodeString AText, int AColumn, bool ARecurse = false, bool ACaseSensitive = true);
	virtual int __fastcall GetNodeChildCount(TTMSFNCTreeViewNode* ANode);
	virtual TTMSFNCTreeViewNode* __fastcall GetPreviousNode(TTMSFNCTreeViewNode* ANode);
	virtual TTMSFNCTreeViewNode* __fastcall GetNextNode(TTMSFNCTreeViewNode* ANode);
	virtual TTMSFNCTreeViewNode* __fastcall GetPreviousChildNode(TTMSFNCTreeViewNode* ANode, TTMSFNCTreeViewNode* AStartNode);
	virtual TTMSFNCTreeViewNode* __fastcall GetNextChildNode(TTMSFNCTreeViewNode* ANode, TTMSFNCTreeViewNode* AStartNode);
	virtual TTMSFNCTreeViewNode* __fastcall GetNextSiblingNode(TTMSFNCTreeViewNode* ANode);
	virtual TTMSFNCTreeViewNode* __fastcall GetPreviousSiblingNode(TTMSFNCTreeViewNode* ANode);
	virtual TTMSFNCTreeViewNode* __fastcall GetFirstChildNode(TTMSFNCTreeViewNode* ANode);
	virtual TTMSFNCTreeViewNode* __fastcall GetLastChildNode(TTMSFNCTreeViewNode* ANode);
	virtual TTMSFNCTreeViewVirtualNode* __fastcall GetPreviousVirtualNode(TTMSFNCTreeViewVirtualNode* ANode);
	virtual TTMSFNCTreeViewVirtualNode* __fastcall GetNextVirtualNode(TTMSFNCTreeViewVirtualNode* ANode);
	virtual TTMSFNCTreeViewVirtualNode* __fastcall GetPreviousChildVirtualNode(TTMSFNCTreeViewVirtualNode* ANode, TTMSFNCTreeViewVirtualNode* AStartNode);
	virtual TTMSFNCTreeViewVirtualNode* __fastcall GetNextChildVirtualNode(TTMSFNCTreeViewVirtualNode* ANode, TTMSFNCTreeViewVirtualNode* AStartNode);
	virtual TTMSFNCTreeViewVirtualNode* __fastcall GetNextSiblingVirtualNode(TTMSFNCTreeViewVirtualNode* ANode);
	virtual TTMSFNCTreeViewVirtualNode* __fastcall GetPreviousSiblingVirtualNode(TTMSFNCTreeViewVirtualNode* ANode);
	virtual TTMSFNCTreeViewVirtualNode* __fastcall GetFirstChildVirtualNode(TTMSFNCTreeViewVirtualNode* ANode);
	virtual TTMSFNCTreeViewVirtualNode* __fastcall GetLastChildVirtualNode(TTMSFNCTreeViewVirtualNode* ANode);
	virtual TTMSFNCTreeViewNode* __fastcall GetFirstRootNode();
	virtual TTMSFNCTreeViewNode* __fastcall GetLastRootNode();
	virtual TTMSFNCTreeViewNode* __fastcall GetLastNode();
	virtual TTMSFNCTreeViewVirtualNode* __fastcall GetFirstRootVirtualNode();
	virtual TTMSFNCTreeViewVirtualNode* __fastcall GetLastRootVirtualNode();
	virtual TTMSFNCTreeViewVirtualNode* __fastcall GetLastVirtualNode();
	virtual TTMSFNCTreeViewNode* __fastcall GetRootNodeByIndex(int AIndex);
	virtual TTMSFNCTreeViewVirtualNode* __fastcall GetRootVirtualNodeByIndex(int AIndex);
	virtual TTMSFNCTreeViewNode* __fastcall InsertNode(int AIndex, TTMSFNCTreeViewNode* AParentNode = (TTMSFNCTreeViewNode*)(0x0));
	virtual TTMSFNCTreeViewVirtualNode* __fastcall InsertVirtualNode(int AIndex, TTMSFNCTreeViewVirtualNode* AParentNode = (TTMSFNCTreeViewVirtualNode*)(0x0));
	__property TTMSFNCTreeViewFilter* Filter = {read=FFilter};
	__property TTMSFNCTreeViewNodesSortMode SortMode = {read=FSortMode, nodefault};
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


//-- var, const, procedure ---------------------------------------------------
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCTreeViewGroup;
#define Fmx_Tmsfnctreeviewdata_sTMSFNCTreeViewGroup System::LoadResourceString(&Fmx::Tmsfnctreeviewdata::_sTMSFNCTreeViewGroup)
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCTreeViewColumn;
#define Fmx_Tmsfnctreeviewdata_sTMSFNCTreeViewColumn System::LoadResourceString(&Fmx::Tmsfnctreeviewdata::_sTMSFNCTreeViewColumn)
static constexpr System::Int8 MAXLEVELDEPTH = System::Int8(0x64);
static constexpr int MAXNODECOUNT = int(0xf4240);
extern DELPHI_PACKAGE System::UnicodeString __fastcall TranslateTextEx(System::UnicodeString AText);
}	/* namespace Tmsfnctreeviewdata */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCTREEVIEWDATA)
using namespace Fmx::Tmsfnctreeviewdata;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfnctreeviewdataHPP
