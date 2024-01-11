// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCPlannerData.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncplannerdataHPP
#define Fmx_TmsfncplannerdataHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.TMSFNCPlannerBase.hpp>
#include <FMX.Graphics.hpp>
#include <FMX.TMSFNCGraphicsTypes.hpp>
#include <FMX.TMSFNCPersistence.hpp>
#include <System.Generics.Collections.hpp>
#include <System.Types.hpp>
#include <System.UITypes.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>
#include <FMX.TMSFNCCustomControl.hpp>
#include <FMX.Controls.hpp>
#include <FMX.Types.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncplannerdata
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCPlannerCacheItem;
class DELPHICLASS TTMSFNCPlannerCacheItemList;
class DELPHICLASS TTMSFNCPlannerIntegerList;
class DELPHICLASS TTMSFNCPlannerItem;
class DELPHICLASS TTMSFNCPlannerItems;
struct TTMSFNCPlannerResourceDate;
class DELPHICLASS TTMSFNCPlannerResourceItems;
class DELPHICLASS TTMSFNCPlannerResourceDates;
class DELPHICLASS TTMSFNCPlannerResource;
class DELPHICLASS TTMSFNCPlannerResources;
class DELPHICLASS TTMSFNCPlannerGroup;
class DELPHICLASS TTMSFNCPlannerGroups;
class DELPHICLASS TTMSFNCPlannerData;
//-- type declarations -------------------------------------------------------
enum DECLSPEC_DENUM TTMSFNCPlannerFullDayLayout : unsigned char { pfdlTop, pfdlBottom };

typedef System::Set<TTMSFNCPlannerFullDayLayout, TTMSFNCPlannerFullDayLayout::pfdlTop, TTMSFNCPlannerFullDayLayout::pfdlBottom> TTMSFNCPlannerFullDaysLayouts;

enum DECLSPEC_DENUM TTMSFNCPlannerCacheItemKind : unsigned char { ikCell, ikItem, ikPositionTop, ikPositionBottom, ikGroupTop, ikGroupBottom, ikTimeLineLeft, ikTimeLineRight, ikFullDayTop, ikFullDayBottom, ikFullDayItemTop, ikFullDayItemBottom };

class PASCALIMPLEMENTATION TTMSFNCPlannerCacheItem : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	Fmx::Graphics::TBitmap* FBitmap;
	System::Types::TRectF FRect;
	System::Types::TRectF FDrawRect;
	TTMSFNCPlannerCacheItemKind FKind;
	TTMSFNCPlannerItem* FItem;
	int FGroup;
	int FFullDay;
	int FPosition;
	double FValue;
	System::TDateTime FStartTime;
	System::TDateTime FEndTime;
	int FRow;
	int FCol;
	int FIdx;
	int FStartPosition;
	int FEndPosition;
	
public:
	__classmethod TTMSFNCPlannerCacheItem* __fastcall CreateCache(const System::Types::TRectF &ARect, Fmx::Graphics::TBitmap* ABitmap, TTMSFNCPlannerCacheItemKind AKind, int APosition = 0xffffffff);
	__classmethod TTMSFNCPlannerCacheItem* __fastcall CreateCell(const System::Types::TRectF &ARect, int ACol, int ARow, System::TDateTime AStartTime, System::TDateTime AEndTime, int APosition);
	__classmethod TTMSFNCPlannerCacheItem* __fastcall CreateItem(const System::Types::TRectF &ARect, int APosition, TTMSFNCPlannerItem* AItem, int AIndex);
	__classmethod TTMSFNCPlannerCacheItem* __fastcall CreateFullDayItemTop(const System::Types::TRectF &ARect, int APosition, TTMSFNCPlannerItem* AItem);
	__classmethod TTMSFNCPlannerCacheItem* __fastcall CreateFullDayItemBottom(const System::Types::TRectF &ARect, int APosition, TTMSFNCPlannerItem* AItem);
	__classmethod TTMSFNCPlannerCacheItem* __fastcall CreatePositionTop(const System::Types::TRectF &ARect, int APosition);
	__classmethod TTMSFNCPlannerCacheItem* __fastcall CreateGroupTop(const System::Types::TRectF &ARect, int AGroup, int AStartPosition, int AEndPosition);
	__classmethod TTMSFNCPlannerCacheItem* __fastcall CreateFullDayTop(const System::Types::TRectF &ARect, int AFullDay, int AStartPosition, int AEndPosition);
	__classmethod TTMSFNCPlannerCacheItem* __fastcall CreateTimeLineLeft(const System::Types::TRectF &ARect, double AValue, int ARow);
	__classmethod TTMSFNCPlannerCacheItem* __fastcall CreatePositionBottom(const System::Types::TRectF &ARect, int APosition);
	__classmethod TTMSFNCPlannerCacheItem* __fastcall CreateGroupBottom(const System::Types::TRectF &ARect, int AGroup, int AStartPosition, int AEndPosition);
	__classmethod TTMSFNCPlannerCacheItem* __fastcall CreateFullDayBottom(const System::Types::TRectF &ARect, int AFullDay, int AStartPosition, int AEndPosition);
	__classmethod TTMSFNCPlannerCacheItem* __fastcall CreateTimeLineRight(const System::Types::TRectF &ARect, double AValue, int ARow);
	__property System::Types::TRectF Rect = {read=FRect, write=FRect};
	__property System::Types::TRectF DrawRect = {read=FDrawRect, write=FDrawRect};
	__property Fmx::Graphics::TBitmap* Bitmap = {read=FBitmap, write=FBitmap};
	__property TTMSFNCPlannerCacheItemKind Kind = {read=FKind, write=FKind, nodefault};
	__property TTMSFNCPlannerItem* Item = {read=FItem, write=FItem};
	__property int Group = {read=FGroup, write=FGroup, nodefault};
	__property int FullDay = {read=FFullDay, write=FFullDay, nodefault};
	__property int StartPosition = {read=FStartPosition, write=FStartPosition, nodefault};
	__property int EndPosition = {read=FEndPosition, write=FEndPosition, nodefault};
	__property int Position = {read=FPosition, write=FPosition, nodefault};
	__property int Col = {read=FCol, write=FCol, nodefault};
	__property int Row = {read=FRow, write=FRow, nodefault};
	__property System::TDateTime StartTime = {read=FStartTime, write=FStartTime};
	__property System::TDateTime EndTime = {read=FEndTime, write=FEndTime};
	__property double Value = {read=FValue, write=FValue};
	__property int Idx = {read=FIdx, write=FIdx, nodefault};
	__fastcall virtual ~TTMSFNCPlannerCacheItem();
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
	/* TObject.Create */ inline __fastcall TTMSFNCPlannerCacheItem() : System::TObject() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCPlannerCacheItemList : public System::Generics::Collections::TList__1<TTMSFNCPlannerCacheItem*>
{
	typedef System::Generics::Collections::TList__1<TTMSFNCPlannerCacheItem*> inherited;
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerCacheItemList()/* overload */ : System::Generics::Collections::TList__1<TTMSFNCPlannerCacheItem*>() { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerCacheItemList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCPlannerCacheItem*> > AComparer)/* overload */ : System::Generics::Collections::TList__1<TTMSFNCPlannerCacheItem*>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerCacheItemList(System::Generics::Collections::TEnumerable__1<TTMSFNCPlannerCacheItem*>* const Collection)/* overload */ : System::Generics::Collections::TList__1<TTMSFNCPlannerCacheItem*>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerCacheItemList(TTMSFNCPlannerCacheItem* const *Values, const int Values_High)/* overload */ : System::Generics::Collections::TList__1<TTMSFNCPlannerCacheItem*>(Values, Values_High) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Destroy */ inline __fastcall virtual ~TTMSFNCPlannerCacheItemList() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCPlannerIntegerList : public System::Generics::Collections::TList__1<int>
{
	typedef System::Generics::Collections::TList__1<int> inherited;
	
public:
	/* {System_Generics_Collections}TList<System_Integer>.Create */ inline __fastcall TTMSFNCPlannerIntegerList()/* overload */ : System::Generics::Collections::TList__1<int>() { }
	/* {System_Generics_Collections}TList<System_Integer>.Create */ inline __fastcall TTMSFNCPlannerIntegerList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<int> > AComparer)/* overload */ : System::Generics::Collections::TList__1<int>(AComparer) { }
	/* {System_Generics_Collections}TList<System_Integer>.Create */ inline __fastcall TTMSFNCPlannerIntegerList(System::Generics::Collections::TEnumerable__1<int>* const Collection)/* overload */ : System::Generics::Collections::TList__1<int>(Collection) { }
	/* {System_Generics_Collections}TList<System_Integer>.Create */ inline __fastcall TTMSFNCPlannerIntegerList(const int *Values, const int Values_High)/* overload */ : System::Generics::Collections::TList__1<int>(Values, Values_High) { }
	/* {System_Generics_Collections}TList<System_Integer>.Destroy */ inline __fastcall virtual ~TTMSFNCPlannerIntegerList() { }
	
};


enum DECLSPEC_DENUM TTMSFNCPlannerItemLinkType : unsigned char { iltFull, iltStartEnd, iltEndStart, iltEndEnd, iltStartStart, iltNone };

enum DECLSPEC_DENUM TTMSFNCPlannerItemLinkArrow : unsigned char { ilaNone, ilaFromTo, ilaToFrom, ilaBoth };

enum DECLSPEC_DENUM TTMSFNCPlannerItemMarkType : unsigned char { imtLeft, imtTop, imtRight, imtBottom };

typedef System::Set<TTMSFNCPlannerItemMarkType, TTMSFNCPlannerItemMarkType::imtLeft, TTMSFNCPlannerItemMarkType::imtBottom> TTMSFNCPlannerItemMarkTypes;

class PASCALIMPLEMENTATION TTMSFNCPlannerItem : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	bool FCanUpdate;
	bool FUpdatingLinkedItem;
	bool FBlockUpdate;
	TTMSFNCPlannerCacheItemList* FCacheList;
	int FUpdateCount;
	NativeInt FTag;
	System::UnicodeString FDataString;
	System::TObject* FDataObject;
	NativeInt FDataInteger;
	TTMSFNCPlannerData* FPlanner;
	System::UnicodeString FText;
	System::TDateTime FStartTime;
	System::TDateTime FEndTime;
	int FResource;
	bool FVisible;
	TTMSFNCPlannerIntegerList* FConflictsPosList;
	TTMSFNCPlannerIntegerList* FConflictsList;
	System::UnicodeString FTitle;
	bool FEnabled;
	bool FEditable;
	bool FSelectable;
	System::Uitypes::TAlphaColor FColor;
	System::Uitypes::TAlphaColor FTitleColor;
	System::Uitypes::TAlphaColor FDisabledTitleFontColor;
	System::Uitypes::TAlphaColor FSelectedTitleColor;
	System::Uitypes::TAlphaColor FActiveTitleColor;
	System::Uitypes::TAlphaColor FDisabledColor;
	System::Uitypes::TAlphaColor FSelectedColor;
	System::Uitypes::TAlphaColor FActiveColor;
	System::Uitypes::TAlphaColor FTitleFontColor;
	System::Uitypes::TAlphaColor FDisabledFontColor;
	System::Uitypes::TAlphaColor FDisabledTitleColor;
	System::Uitypes::TAlphaColor FSelectedFontColor;
	System::Uitypes::TAlphaColor FActiveFontColor;
	System::Uitypes::TAlphaColor FFontColor;
	System::Uitypes::TAlphaColor FSelectedTitleFontColor;
	System::Uitypes::TAlphaColor FActiveTitleFontColor;
	TTMSFNCPlannerIntegerList* FDirtyList;
	TTMSFNCPlannerIntegerList* FCleanupList;
	System::UnicodeString FHint;
	TTMSFNCPlannerIntegerList* FPositionsList;
	TTMSFNCPlannerIntegerList* FOldPositionsList;
	System::TDateTime FStartTimeExt;
	System::TDateTime FEndTimeExt;
	int FConflictsExt;
	int FConflictsPosExt;
	bool FMovable;
	bool FSizeable;
	bool FFixedResource;
	bool FShowTitle;
	System::UnicodeString FDBKey;
	bool FOverlappable;
	int FCallPosition;
	bool FDataBoolean;
	System::UnicodeString FRecurrency;
	bool FRecurrent;
	TTMSFNCPlannerItem* FMasterItem;
	System::TDateTime FOldEndTime;
	System::TDateTime FOldStartTime;
	System::TDateTime FMasterStartDateTime;
	System::TDateTime FMasterEndDateTime;
	bool FDeletable;
	TTMSFNCPlannerItem* FLinkedItem;
	TTMSFNCPlannerItemLinkType FLinkType;
	int FNewPosition;
	System::TDateTime FNewStartTime;
	System::TDateTime FNewEndTime;
	bool FUpdatingLinked;
	TTMSFNCPlannerItemLinkArrow FLinkArrow;
	System::Uitypes::TAlphaColor FSelectedLinkColor;
	System::Uitypes::TAlphaColor FLinkColor;
	System::Uitypes::TFontStyles FDisabledFontStyle;
	System::Uitypes::TFontStyles FSelectedFontStyle;
	System::Uitypes::TFontStyles FActiveFontStyle;
	System::Uitypes::TFontStyles FFontStyle;
	System::Uitypes::TFontStyles FDisabledTitleFontStyle;
	System::Uitypes::TFontStyles FSelectedTitleFontStyle;
	System::Uitypes::TFontStyles FActiveTitleFontStyle;
	System::Uitypes::TFontStyles FTitleFontStyle;
	bool FUseDefaultAppearance;
	System::UnicodeString FDisabledFontName;
	System::UnicodeString FSelectedFontName;
	System::UnicodeString FActiveFontName;
	System::UnicodeString FDisabledTitleFontName;
	System::UnicodeString FSelectedTitleFontName;
	System::UnicodeString FActiveTitleFontName;
	System::UnicodeString FTitleFontName;
	System::UnicodeString FFontName;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign FTextVerticalTextAlign;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign FTitleHorizontalTextAlign;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign FTextHorizontalTextAlign;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign FTitleVerticalTextAlign;
	float FActiveFontSize;
	float FFontSize;
	float FDisabledTitleFontSize;
	float FSelectedTitleFontSize;
	float FActiveTitleFontSize;
	float FTitleFontSize;
	float FDisabledFontSize;
	float FSelectedFontSize;
	void *FDataPointer;
	bool FBackground;
	Fmx::Tmsfnctypes::TTMSFNCMargins* FMargins;
	TTMSFNCPlannerFullDaysLayouts FFullDayLayout;
	bool FFullDay;
	TTMSFNCPlannerIntegerList* FFullDayMaxListTop;
	TTMSFNCPlannerIntegerList* FFullDayMaxListBottom;
	TTMSFNCPlannerIntegerList* FFullDayPosListTop;
	TTMSFNCPlannerIntegerList* FFullDayPosListBottom;
	int FMarkRounding;
	float FMarkSizeRight;
	System::Uitypes::TAlphaColor FMarkColorBottom;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsCorners FMarkCorners;
	float FMarkSizeBottom;
	System::Uitypes::TAlphaColor FMarkColorTop;
	System::Uitypes::TAlphaColor FMarkColorLeft;
	System::Uitypes::TAlphaColor FMarkColor;
	System::Uitypes::TAlphaColor FMarkColorRight;
	float FMarkSizeTop;
	float FMarkSizeLeft;
	TTMSFNCPlannerItemMarkTypes FMarkType;
	int FRounding;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsCorners FRoundingCorners;
	System::Uitypes::TAlphaColor FDisabledStrokeColor;
	System::Uitypes::TAlphaColor FSelectedStrokeColor;
	System::Uitypes::TAlphaColor FActiveStrokeColor;
	System::Uitypes::TAlphaColor FStrokeColor;
	System::Uitypes::TAlphaColor FDisabledTitleStrokeColor;
	System::Uitypes::TAlphaColor FSelectedTitleStrokeColor;
	System::Uitypes::TAlphaColor FActiveTitleStrokeColor;
	System::Uitypes::TAlphaColor FTitleStrokeColor;
	int FFullDayMaxListBottomIndex;
	int FFullDayMaxListTopIndex;
	int FFullDayMaxListBottomCount;
	int FFullDayMaxListTopCount;
	TTMSFNCPlannerCacheItemList* FFullDayCacheList;
	void __fastcall SetText(const System::UnicodeString Value);
	void __fastcall SetEndTime(const System::TDateTime Value);
	void __fastcall SetStartTime(const System::TDateTime Value);
	void __fastcall SetResource(const int Value);
	void __fastcall SetVisible(const bool Value);
	void __fastcall SetTitle(const System::UnicodeString Value);
	void __fastcall SetEditable(const bool Value);
	void __fastcall SetEnabled(const bool Value);
	void __fastcall SetSelectable(const bool Value);
	void __fastcall SetColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetTitleColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetDisabledColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetDisabledFontColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetDisabledTitleColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetDisabledTitleFontColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetFontColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetSelectedColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetSelectedFontColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetSelectedTitleColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetSelectedTitleFontColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetActiveColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetActiveFontColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetActiveTitleColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetActiveTitleFontColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetTitleFontColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetHint(const System::UnicodeString Value);
	void __fastcall SetMovable(const bool Value);
	void __fastcall SetSizeable(const bool Value);
	void __fastcall SetFixedResource(const bool Value);
	void __fastcall SetShowTitle(const bool Value);
	void __fastcall SetOverlappable(const bool Value);
	void __fastcall SetDeletable(const bool Value);
	void __fastcall SetLinkedItem(TTMSFNCPlannerItem* const Value);
	void __fastcall SetLinkType(const TTMSFNCPlannerItemLinkType Value);
	void __fastcall SetLinkArrow(const TTMSFNCPlannerItemLinkArrow Value);
	void __fastcall SetLinkColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetSelectedLinkColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetActiveFontStyle(const System::Uitypes::TFontStyles Value);
	void __fastcall SetActiveTitleFontStyle(const System::Uitypes::TFontStyles Value);
	void __fastcall SetDisabledFontStyle(const System::Uitypes::TFontStyles Value);
	void __fastcall SetDisabledTitleFontStyle(const System::Uitypes::TFontStyles Value);
	void __fastcall SetFontStyle(const System::Uitypes::TFontStyles Value);
	void __fastcall SetSelectedFontStyle(const System::Uitypes::TFontStyles Value);
	void __fastcall SetSelectedTitleFontStyle(const System::Uitypes::TFontStyles Value);
	void __fastcall SetTitleFontStyle(const System::Uitypes::TFontStyles Value);
	void __fastcall SetActiveFontName(const System::UnicodeString Value);
	void __fastcall SetActiveTitleFontName(const System::UnicodeString Value);
	void __fastcall SetDisabledFontName(const System::UnicodeString Value);
	void __fastcall SetDisabledTitleFontName(const System::UnicodeString Value);
	void __fastcall SetSelectedFontName(const System::UnicodeString Value);
	void __fastcall SetSelectedTitleFontName(const System::UnicodeString Value);
	void __fastcall SetTitleFontName(const System::UnicodeString Value);
	void __fastcall SetUseDefaultAppearance(const bool Value);
	void __fastcall SetFontName(const System::UnicodeString Value);
	void __fastcall SetTextHorizontalTextAlign(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign Value);
	void __fastcall SetTextVerticalTextAlign(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign Value);
	void __fastcall SetTitleHorizontalTextAlign(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign Value);
	void __fastcall SetTitleVerticalTextAlign(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign Value);
	bool __fastcall IsActiveFontSizeStored();
	bool __fastcall IsActiveTitleFontSizeStored();
	bool __fastcall IsDisabledFontSizeStored();
	bool __fastcall IsDisabledTitleFontSizeStored();
	bool __fastcall IsFontSizeStored();
	bool __fastcall IsSelectedFontSizeStored();
	bool __fastcall IsSelectedTitleFontSizeStored();
	bool __fastcall IsTitleFontSizeStored();
	void __fastcall SetActiveFontSize(const float Value);
	void __fastcall SetActiveTitleFontSize(const float Value);
	void __fastcall SetDisabledFontSize(const float Value);
	void __fastcall SetDisabledTitleFontSize(const float Value);
	void __fastcall SetFontSize(const float Value);
	void __fastcall SetSelectedFontSize(const float Value);
	void __fastcall SetSelectedTitleFontSize(const float Value);
	void __fastcall SetTitleFontSize(const float Value);
	void __fastcall SetBackground(const bool Value);
	void __fastcall SetMargins(Fmx::Tmsfnctypes::TTMSFNCMargins* const Value);
	void __fastcall SetFullDay(const bool Value);
	void __fastcall SetFullDayLayout(const TTMSFNCPlannerFullDaysLayouts Value);
	bool __fastcall IsMarkSizeBottomStored();
	bool __fastcall IsMarkSizeLeftStored();
	bool __fastcall IsMarkSizeRightStored();
	bool __fastcall IsMarkSizeTopStored();
	void __fastcall SetMarkColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetMarkColorBottom(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetMarkColorLeft(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetMarkColorRight(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetMarkColorTop(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetMarkCorners(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsCorners Value);
	void __fastcall SetMarkRounding(const int Value);
	void __fastcall SetMarkSizeBottom(const float Value);
	void __fastcall SetMarkSizeLeft(const float Value);
	void __fastcall SetMarkSizeRight(const float Value);
	void __fastcall SetMarkSizeTop(const float Value);
	void __fastcall SetMarkType(const TTMSFNCPlannerItemMarkTypes Value);
	void __fastcall SetRounding(const int Value);
	void __fastcall SetRoundingCorners(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsCorners Value);
	void __fastcall SetActiveStrokeColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetDisabledStrokeColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetSelectedStrokeColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetStrokeColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetActiveTitleStrokeColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetDisabledTitleStrokeColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetSelectedTitleStrokeColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetTitleStrokeColor(const System::Uitypes::TAlphaColor Value);
	
protected:
	void __fastcall DoMarginsChanged(System::TObject* Sender);
	__property int FullDayMaxListTopIndex = {read=FFullDayMaxListTopIndex, write=FFullDayMaxListTopIndex, nodefault};
	__property int FullDayMaxListBottomIndex = {read=FFullDayMaxListBottomIndex, write=FFullDayMaxListBottomIndex, nodefault};
	__property int FullDayMaxListTopCount = {read=FFullDayMaxListTopCount, write=FFullDayMaxListTopCount, nodefault};
	__property int FullDayMaxListBottomCount = {read=FFullDayMaxListBottomCount, write=FFullDayMaxListBottomCount, nodefault};
	__property TTMSFNCPlannerIntegerList* FullDayMaxListTop = {read=FFullDayMaxListTop, write=FFullDayMaxListTop};
	__property TTMSFNCPlannerIntegerList* FullDayMaxListBottom = {read=FFullDayMaxListBottom, write=FFullDayMaxListBottom};
	__property TTMSFNCPlannerIntegerList* FullDayPosListTop = {read=FFullDayPosListTop, write=FFullDayPosListTop};
	__property TTMSFNCPlannerIntegerList* FullDayPosListBottom = {read=FFullDayPosListBottom, write=FFullDayPosListBottom};
	__property TTMSFNCPlannerIntegerList* ConflictsList = {read=FConflictsList, write=FConflictsList};
	__property TTMSFNCPlannerIntegerList* ConflictsPosList = {read=FConflictsPosList, write=FConflictsPosList};
	__property TTMSFNCPlannerIntegerList* PositionsList = {read=FPositionsList, write=FPositionsList};
	__property TTMSFNCPlannerIntegerList* OldPositionsList = {read=FOldPositionsList, write=FOldPositionsList};
	__property TTMSFNCPlannerIntegerList* DirtyList = {read=FDirtyList, write=FDirtyList};
	__property TTMSFNCPlannerIntegerList* CleanupList = {read=FCleanupList, write=FCleanupList};
	__property TTMSFNCPlannerCacheItemList* CacheList = {read=FCacheList, write=FCacheList};
	__property TTMSFNCPlannerCacheItemList* FullDayCacheList = {read=FFullDayCacheList, write=FFullDayCacheList};
	__property System::TDateTime StartTimeExt = {read=FStartTimeExt, write=FStartTimeExt};
	__property System::TDateTime EndTimeExt = {read=FEndTimeExt, write=FEndTimeExt};
	__property int ConflictsExt = {read=FConflictsExt, write=FConflictsExt, nodefault};
	__property int ConflictsPosExt = {read=FConflictsPosExt, write=FConflictsPosExt, nodefault};
	__property int CallPosition = {read=FCallPosition, write=FCallPosition, nodefault};
	__property bool CanUpdate = {read=FCanUpdate, write=FCanUpdate, nodefault};
	__property System::TDateTime NewStartTime = {read=FNewStartTime, write=FNewStartTime};
	__property System::TDateTime NewEndTime = {read=FNewEndTime, write=FNewEndTime};
	__property int NewPosition = {read=FNewPosition, write=FNewPosition, nodefault};
	__property bool UpdatingLinked = {read=FUpdatingLinked, write=FUpdatingLinked, nodefault};
	
public:
	__fastcall virtual TTMSFNCPlannerItem(System::Classes::TCollection* Collection);
	__fastcall virtual ~TTMSFNCPlannerItem();
	void __fastcall DirtyItem();
	void __fastcall UpdateItem(bool ANeedsConflictsUpdate = false, bool ADirty = true);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	void __fastcall BeginUpdate();
	void __fastcall EndUpdate(bool ADirty = true, bool AUpdate = true);
	int __fastcall ConflictsForPosition(int APosition);
	int __fastcall ConflictsPosForPosition(int APosition);
	TTMSFNCPlannerData* __fastcall Planner();
	virtual System::Types::TRectF __fastcall GetRect(int AIndex = 0xffffffff);
	virtual System::Types::TRectF __fastcall GetFirstRect();
	virtual System::Types::TRectF __fastcall GetLastRect();
	virtual int __fastcall RectCount();
	__property void * DataPointer = {read=FDataPointer, write=FDataPointer};
	__property bool DataBoolean = {read=FDataBoolean, write=FDataBoolean, nodefault};
	__property System::TObject* DataObject = {read=FDataObject, write=FDataObject};
	__property System::UnicodeString DataString = {read=FDataString, write=FDataString};
	__property NativeInt DataInteger = {read=FDataInteger, write=FDataInteger};
	__property System::UnicodeString DBKey = {read=FDBKey, write=FDBKey};
	__property System::UnicodeString Recurrency = {read=FRecurrency, write=FRecurrency};
	__property bool Recurrent = {read=FRecurrent, write=FRecurrent, nodefault};
	__property System::TDateTime OldStartTime = {read=FOldStartTime, write=FOldStartTime};
	__property System::TDateTime OldEndTime = {read=FOldEndTime, write=FOldEndTime};
	__property TTMSFNCPlannerItem* LinkedItem = {read=FLinkedItem, write=SetLinkedItem};
	__property TTMSFNCPlannerItemLinkType LinkType = {read=FLinkType, write=SetLinkType, default=5};
	__property System::TDateTime MasterStartDateTime = {read=FMasterStartDateTime, write=FMasterStartDateTime};
	__property System::TDateTime MasterEndDateTime = {read=FMasterEndDateTime, write=FMasterEndDateTime};
	__property bool Background = {read=FBackground, write=SetBackground, default=0};
	
__published:
	__property System::UnicodeString Text = {read=FText, write=SetText};
	__property System::UnicodeString Title = {read=FTitle, write=SetTitle};
	__property int Resource = {read=FResource, write=SetResource, default=0};
	__property System::TDateTime StartTime = {read=FStartTime, write=SetStartTime};
	__property System::TDateTime EndTime = {read=FEndTime, write=SetEndTime};
	__property bool FullDay = {read=FFullDay, write=SetFullDay, default=0};
	__property TTMSFNCPlannerFullDaysLayouts FullDayLayout = {read=FFullDayLayout, write=SetFullDayLayout, default=3};
	__property bool Visible = {read=FVisible, write=SetVisible, default=1};
	__property bool Enabled = {read=FEnabled, write=SetEnabled, default=1};
	__property bool Editable = {read=FEditable, write=SetEditable, default=1};
	__property bool Selectable = {read=FSelectable, write=SetSelectable, default=1};
	__property bool Deletable = {read=FDeletable, write=SetDeletable, default=1};
	__property bool FixedResource = {read=FFixedResource, write=SetFixedResource, default=0};
	__property bool ShowTitle = {read=FShowTitle, write=SetShowTitle, default=1};
	__property bool Movable = {read=FMovable, write=SetMovable, default=1};
	__property bool Sizeable = {read=FSizeable, write=SetSizeable, default=1};
	__property System::Uitypes::TAlphaColor Color = {read=FColor, write=SetColor, default=-2628372};
	__property System::Uitypes::TAlphaColor StrokeColor = {read=FStrokeColor, write=SetStrokeColor, default=-2628372};
	__property System::Uitypes::TAlphaColor TitleColor = {read=FTitleColor, write=SetTitleColor, default=0};
	__property System::Uitypes::TAlphaColor TitleStrokeColor = {read=FTitleStrokeColor, write=SetTitleStrokeColor, default=-2628372};
	__property System::Uitypes::TAlphaColor SelectedColor = {read=FSelectedColor, write=SetSelectedColor, default=-14963208};
	__property System::Uitypes::TAlphaColor SelectedTitleColor = {read=FSelectedTitleColor, write=SetSelectedTitleColor, default=0};
	__property System::Uitypes::TAlphaColor SelectedStrokeColor = {read=FSelectedStrokeColor, write=SetSelectedStrokeColor, default=-5658199};
	__property System::Uitypes::TAlphaColor SelectedTitleStrokeColor = {read=FSelectedTitleStrokeColor, write=SetSelectedTitleStrokeColor, default=-5658199};
	__property System::Uitypes::TAlphaColor ActiveColor = {read=FActiveColor, write=SetActiveColor, default=-14963208};
	__property System::Uitypes::TAlphaColor ActiveTitleColor = {read=FActiveTitleColor, write=SetActiveTitleColor, default=0};
	__property System::Uitypes::TAlphaColor ActiveStrokeColor = {read=FActiveStrokeColor, write=SetActiveStrokeColor, default=-5658199};
	__property System::Uitypes::TAlphaColor ActiveTitleStrokeColor = {read=FActiveTitleStrokeColor, write=SetActiveTitleStrokeColor, default=-5658199};
	__property System::Uitypes::TAlphaColor DisabledColor = {read=FDisabledColor, write=SetDisabledColor, default=-5658199};
	__property System::Uitypes::TAlphaColor DisabledTitleColor = {read=FDisabledTitleColor, write=SetDisabledTitleColor, default=0};
	__property System::Uitypes::TAlphaColor DisabledStrokeColor = {read=FDisabledStrokeColor, write=SetDisabledStrokeColor, default=-5658199};
	__property System::Uitypes::TAlphaColor DisabledTitleStrokeColor = {read=FDisabledTitleStrokeColor, write=SetDisabledTitleStrokeColor, default=-5658199};
	__property System::Uitypes::TAlphaColor FontColor = {read=FFontColor, write=SetFontColor, default=-15634529};
	__property System::Uitypes::TAlphaColor TitleFontColor = {read=FTitleFontColor, write=SetTitleFontColor, default=-15634529};
	__property System::Uitypes::TAlphaColor SelectedFontColor = {read=FSelectedFontColor, write=SetSelectedFontColor, default=-1};
	__property System::Uitypes::TAlphaColor SelectedTitleFontColor = {read=FSelectedTitleFontColor, write=SetSelectedTitleFontColor, default=-1};
	__property System::Uitypes::TAlphaColor ActiveFontColor = {read=FActiveFontColor, write=SetActiveFontColor, default=-1};
	__property System::Uitypes::TAlphaColor ActiveTitleFontColor = {read=FActiveTitleFontColor, write=SetActiveTitleFontColor, default=-1};
	__property System::Uitypes::TAlphaColor DisabledFontColor = {read=FDisabledFontColor, write=SetDisabledFontColor, default=-657931};
	__property System::Uitypes::TAlphaColor DisabledTitleFontColor = {read=FDisabledTitleFontColor, write=SetDisabledTitleFontColor, default=-657931};
	__property System::Uitypes::TFontStyles FontStyle = {read=FFontStyle, write=SetFontStyle, default=0};
	__property System::Uitypes::TFontStyles TitleFontStyle = {read=FTitleFontStyle, write=SetTitleFontStyle, default=1};
	__property System::Uitypes::TFontStyles SelectedFontStyle = {read=FSelectedFontStyle, write=SetSelectedFontStyle, default=0};
	__property System::Uitypes::TFontStyles SelectedTitleFontStyle = {read=FSelectedTitleFontStyle, write=SetSelectedTitleFontStyle, default=1};
	__property System::Uitypes::TFontStyles ActiveFontStyle = {read=FActiveFontStyle, write=SetActiveFontStyle, default=0};
	__property System::Uitypes::TFontStyles ActiveTitleFontStyle = {read=FActiveTitleFontStyle, write=SetActiveTitleFontStyle, default=1};
	__property System::Uitypes::TFontStyles DisabledFontStyle = {read=FDisabledFontStyle, write=SetDisabledFontStyle, default=0};
	__property System::Uitypes::TFontStyles DisabledTitleFontStyle = {read=FDisabledTitleFontStyle, write=SetDisabledTitleFontStyle, default=1};
	__property System::UnicodeString FontName = {read=FFontName, write=SetFontName};
	__property System::UnicodeString TitleFontName = {read=FTitleFontName, write=SetTitleFontName};
	__property System::UnicodeString SelectedFontName = {read=FSelectedFontName, write=SetSelectedFontName};
	__property System::UnicodeString SelectedTitleFontName = {read=FSelectedTitleFontName, write=SetSelectedTitleFontName};
	__property System::UnicodeString ActiveFontName = {read=FActiveFontName, write=SetActiveFontName};
	__property System::UnicodeString ActiveTitleFontName = {read=FActiveTitleFontName, write=SetActiveTitleFontName};
	__property System::UnicodeString DisabledFontName = {read=FDisabledFontName, write=SetDisabledFontName};
	__property System::UnicodeString DisabledTitleFontName = {read=FDisabledTitleFontName, write=SetDisabledTitleFontName};
	__property float FontSize = {read=FFontSize, write=SetFontSize, stored=IsFontSizeStored};
	__property float TitleFontSize = {read=FTitleFontSize, write=SetTitleFontSize, stored=IsTitleFontSizeStored};
	__property float SelectedFontSize = {read=FSelectedFontSize, write=SetSelectedFontSize, stored=IsSelectedFontSizeStored};
	__property float SelectedTitleFontSize = {read=FSelectedTitleFontSize, write=SetSelectedTitleFontSize, stored=IsSelectedTitleFontSizeStored};
	__property float ActiveFontSize = {read=FActiveFontSize, write=SetActiveFontSize, stored=IsActiveFontSizeStored};
	__property float ActiveTitleFontSize = {read=FActiveTitleFontSize, write=SetActiveTitleFontSize, stored=IsActiveTitleFontSizeStored};
	__property float DisabledFontSize = {read=FDisabledFontSize, write=SetDisabledFontSize, stored=IsDisabledFontSizeStored};
	__property float DisabledTitleFontSize = {read=FDisabledTitleFontSize, write=SetDisabledTitleFontSize, stored=IsDisabledTitleFontSizeStored};
	__property bool UseDefaultAppearance = {read=FUseDefaultAppearance, write=SetUseDefaultAppearance, default=0};
	__property System::Uitypes::TAlphaColor LinkColor = {read=FLinkColor, write=SetLinkColor, default=-5658199};
	__property System::Uitypes::TAlphaColor SelectedLinkColor = {read=FSelectedLinkColor, write=SetSelectedLinkColor, default=-14963208};
	__property TTMSFNCPlannerItemLinkArrow LinkArrow = {read=FLinkArrow, write=SetLinkArrow, default=0};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign TitleHorizontalTextAlign = {read=FTitleHorizontalTextAlign, write=SetTitleHorizontalTextAlign, default=1};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign TitleVerticalTextAlign = {read=FTitleVerticalTextAlign, write=SetTitleVerticalTextAlign, default=1};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign TextHorizontalTextAlign = {read=FTextHorizontalTextAlign, write=SetTextHorizontalTextAlign, default=1};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign TextVerticalTextAlign = {read=FTextVerticalTextAlign, write=SetTextVerticalTextAlign, default=1};
	__property bool Overlappable = {read=FOverlappable, write=SetOverlappable, default=1};
	__property System::UnicodeString Hint = {read=FHint, write=SetHint};
	__property NativeInt Tag = {read=FTag, write=FTag, default=0};
	__property Fmx::Tmsfnctypes::TTMSFNCMargins* Margins = {read=FMargins, write=SetMargins};
	__property TTMSFNCPlannerItemMarkTypes MarkType = {read=FMarkType, write=SetMarkType, default=0};
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
	__property int Rounding = {read=FRounding, write=SetRounding, default=0};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsCorners RoundingCorners = {read=FRoundingCorners, write=SetRoundingCorners, nodefault};
};


class PASCALIMPLEMENTATION TTMSFNCPlannerItems : public Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCPlannerItem*>
{
	typedef Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCPlannerItem*> inherited;
	
public:
	TTMSFNCPlannerItem* operator[](int Index) { return this->Items[Index]; }
	
private:
	System::_di_IInterface FOwnerInterface;
	TTMSFNCPlannerData* FPlanner;
	HIDESBASE TTMSFNCPlannerItem* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCPlannerItem* const Value);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall GetItemClass();
	System::TObject* __fastcall CreateObject(const System::UnicodeString AClassName, const System::TClass ABaseClass);
	System::TClass __fastcall GetInterfaceItemClass();
	int __stdcall _AddRef();
	int __stdcall _Release();
	
public:
	virtual HRESULT __stdcall QueryInterface(const GUID IID, /* out */ void *Obj);
	HIDESBASE void __fastcall Clear();
	TTMSFNCPlannerData* __fastcall Planner();
	__fastcall TTMSFNCPlannerItems(TTMSFNCPlannerData* APlanner);
	HIDESBASE TTMSFNCPlannerItem* __fastcall Add();
	HIDESBASE TTMSFNCPlannerItem* __fastcall Insert(int Index);
	__property TTMSFNCPlannerItem* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCPlannerItems() { }
	
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


struct DECLSPEC_DRECORD TTMSFNCPlannerResourceDate
{
	
private:
	typedef System::DynamicArray<bool> _TTMSFNCPlannerResourceDate__1;
	
	
public:
	System::TDateTime DateTime;
	int X;
	int Y;
	_TTMSFNCPlannerResourceDate__1 Z;
};


class PASCALIMPLEMENTATION TTMSFNCPlannerResourceItems : public System::Generics::Collections::TList__1<TTMSFNCPlannerItem*>
{
	typedef System::Generics::Collections::TList__1<TTMSFNCPlannerItem*> inherited;
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerItem>.Create */ inline __fastcall TTMSFNCPlannerResourceItems()/* overload */ : System::Generics::Collections::TList__1<TTMSFNCPlannerItem*>() { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerItem>.Create */ inline __fastcall TTMSFNCPlannerResourceItems(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCPlannerItem*> > AComparer)/* overload */ : System::Generics::Collections::TList__1<TTMSFNCPlannerItem*>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerItem>.Create */ inline __fastcall TTMSFNCPlannerResourceItems(System::Generics::Collections::TEnumerable__1<TTMSFNCPlannerItem*>* const Collection)/* overload */ : System::Generics::Collections::TList__1<TTMSFNCPlannerItem*>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerItem>.Create */ inline __fastcall TTMSFNCPlannerResourceItems(TTMSFNCPlannerItem* const *Values, const int Values_High)/* overload */ : System::Generics::Collections::TList__1<TTMSFNCPlannerItem*>(Values, Values_High) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerItem>.Destroy */ inline __fastcall virtual ~TTMSFNCPlannerResourceItems() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCPlannerResourceDates : public System::Generics::Collections::TList__1<TTMSFNCPlannerResourceDate>
{
	typedef System::Generics::Collections::TList__1<TTMSFNCPlannerResourceDate> inherited;
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerResourceDate>.Create */ inline __fastcall TTMSFNCPlannerResourceDates()/* overload */ : System::Generics::Collections::TList__1<TTMSFNCPlannerResourceDate>() { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerResourceDate>.Create */ inline __fastcall TTMSFNCPlannerResourceDates(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCPlannerResourceDate> > AComparer)/* overload */ : System::Generics::Collections::TList__1<TTMSFNCPlannerResourceDate>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerResourceDate>.Create */ inline __fastcall TTMSFNCPlannerResourceDates(System::Generics::Collections::TEnumerable__1<TTMSFNCPlannerResourceDate>* const Collection)/* overload */ : System::Generics::Collections::TList__1<TTMSFNCPlannerResourceDate>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerResourceDate>.Create */ inline __fastcall TTMSFNCPlannerResourceDates(const TTMSFNCPlannerResourceDate *Values, const int Values_High)/* overload */ : System::Generics::Collections::TList__1<TTMSFNCPlannerResourceDate>(Values, Values_High) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerResourceDate>.Destroy */ inline __fastcall virtual ~TTMSFNCPlannerResourceDates() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCPlannerResource : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	NativeInt FTag;
	System::UnicodeString FDataString;
	System::TObject* FDataObject;
	NativeInt FDataInteger;
	TTMSFNCPlannerData* FPlanner;
	System::UnicodeString FText;
	System::UnicodeString FName;
	System::UnicodeString FDBKey;
	bool FDataBoolean;
	void *FDataPointer;
	System::UnicodeString FHint;
	void __fastcall SetText(const System::UnicodeString Value);
	void __fastcall SetName(const System::UnicodeString Value);
	void __fastcall SetHint(const System::UnicodeString Value);
	
protected:
	void __fastcall UpdateResource();
	virtual System::UnicodeString __fastcall GetText();
	virtual System::UnicodeString __fastcall GetResourceText();
	
public:
	TTMSFNCPlannerData* __fastcall Planner();
	__fastcall virtual TTMSFNCPlannerResource(System::Classes::TCollection* Collection);
	__fastcall virtual ~TTMSFNCPlannerResource();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__property void * DataPointer = {read=FDataPointer, write=FDataPointer};
	__property bool DataBoolean = {read=FDataBoolean, write=FDataBoolean, nodefault};
	__property System::TObject* DataObject = {read=FDataObject, write=FDataObject};
	__property System::UnicodeString DataString = {read=FDataString, write=FDataString};
	__property NativeInt DataInteger = {read=FDataInteger, write=FDataInteger};
	__property System::UnicodeString DBKey = {read=FDBKey, write=FDBKey};
	
__published:
	__property System::UnicodeString Name = {read=FName, write=SetName};
	__property System::UnicodeString Text = {read=FText, write=SetText};
	__property System::UnicodeString Hint = {read=FHint, write=SetHint};
	__property NativeInt Tag = {read=FTag, write=FTag, default=0};
};


class PASCALIMPLEMENTATION TTMSFNCPlannerResources : public Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCPlannerResource*>
{
	typedef Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCPlannerResource*> inherited;
	
public:
	TTMSFNCPlannerResource* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCPlannerData* FPlanner;
	HIDESBASE TTMSFNCPlannerResource* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCPlannerResource* const Value);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall GetItemClass();
	
public:
	TTMSFNCPlannerData* __fastcall Planner();
	__fastcall TTMSFNCPlannerResources(TTMSFNCPlannerData* APlanner);
	HIDESBASE TTMSFNCPlannerResource* __fastcall Add();
	HIDESBASE TTMSFNCPlannerResource* __fastcall Insert(int Index);
	__property TTMSFNCPlannerResource* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCPlannerResources() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCPlannerGroup : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	NativeInt FTag;
	System::UnicodeString FDataString;
	System::TObject* FDataObject;
	NativeInt FDataInteger;
	TTMSFNCPlannerData* FPlanner;
	System::UnicodeString FText;
	int FStartPosition;
	int FEndPosition;
	System::UnicodeString FName;
	System::UnicodeString FDBKey;
	bool FDataBoolean;
	void *FDataPointer;
	System::UnicodeString FHint;
	void __fastcall SetText(const System::UnicodeString Value);
	void __fastcall SetStartPosition(const int Value);
	void __fastcall SetEndPosition(const int Value);
	void __fastcall SetName(const System::UnicodeString Value);
	void __fastcall SetHint(const System::UnicodeString Value);
	
protected:
	void __fastcall UpdateGroup();
	
public:
	TTMSFNCPlannerData* __fastcall Planner();
	__fastcall virtual TTMSFNCPlannerGroup(System::Classes::TCollection* Collection);
	__fastcall virtual ~TTMSFNCPlannerGroup();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__property void * DataPointer = {read=FDataPointer, write=FDataPointer};
	__property bool DataBoolean = {read=FDataBoolean, write=FDataBoolean, nodefault};
	__property System::TObject* DataObject = {read=FDataObject, write=FDataObject};
	__property System::UnicodeString DataString = {read=FDataString, write=FDataString};
	__property NativeInt DataInteger = {read=FDataInteger, write=FDataInteger};
	__property System::UnicodeString DBKey = {read=FDBKey, write=FDBKey};
	virtual System::UnicodeString __fastcall GetText();
	
__published:
	__property System::UnicodeString Name = {read=FName, write=SetName};
	__property System::UnicodeString Text = {read=FText, write=SetText};
	__property System::UnicodeString Hint = {read=FHint, write=SetHint};
	__property int StartPosition = {read=FStartPosition, write=SetStartPosition, default=0};
	__property int EndPosition = {read=FEndPosition, write=SetEndPosition, default=0};
	__property NativeInt Tag = {read=FTag, write=FTag, default=0};
};


class PASCALIMPLEMENTATION TTMSFNCPlannerGroups : public Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCPlannerGroup*>
{
	typedef Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCPlannerGroup*> inherited;
	
public:
	TTMSFNCPlannerGroup* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCPlannerData* FPlanner;
	HIDESBASE TTMSFNCPlannerGroup* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCPlannerGroup* const Value);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall GetItemClass();
	
public:
	TTMSFNCPlannerData* __fastcall Planner();
	__fastcall TTMSFNCPlannerGroups(TTMSFNCPlannerData* APlanner);
	HIDESBASE TTMSFNCPlannerGroup* __fastcall Add();
	HIDESBASE TTMSFNCPlannerGroup* __fastcall Insert(int Index);
	__property TTMSFNCPlannerGroup* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCPlannerGroups() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCPlannerData : public Fmx::Tmsfncplannerbase::TTMSFNCPlannerBase
{
	typedef Fmx::Tmsfncplannerbase::TTMSFNCPlannerBase inherited;
	
private:
	TTMSFNCPlannerItems* FItems;
	TTMSFNCPlannerResources* FResources;
	TTMSFNCPlannerGroups* FGroups;
	void __fastcall SetItems(TTMSFNCPlannerItems* const Value);
	void __fastcall SetResources(TTMSFNCPlannerResources* const Value);
	void __fastcall SetGroups(TTMSFNCPlannerGroups* const Value);
	
protected:
	virtual void __fastcall DirtyItems();
	virtual void __fastcall DirtyItem(TTMSFNCPlannerItem* AItem) = 0 ;
	virtual void __fastcall RemoveItemsFromCache(TTMSFNCPlannerCacheItemList* AList, int APosition = 0xffffffff) = 0 ;
	virtual void __fastcall RemoveAllItemsFromCache() = 0 ;
	virtual void __fastcall NeedsConflictsUpdate(TTMSFNCPlannerItem* AItem = (TTMSFNCPlannerItem*)(0x0)) = 0 ;
	virtual void __fastcall RemoveLinkedItem(TTMSFNCPlannerItem* AItem) = 0 ;
	virtual void __fastcall UpdateLinkedItems(TTMSFNCPlannerItem* AItem, System::TDateTime ADiffStartTime, System::TDateTime ADiffEndTime, int ADiffPosition) = 0 ;
	virtual TTMSFNCPlannerItems* __fastcall CreateItems();
	virtual TTMSFNCPlannerResources* __fastcall CreateResources();
	virtual TTMSFNCPlannerGroups* __fastcall CreateGroups();
	virtual TTMSFNCPlannerItem* __fastcall GetDefaultItem() = 0 ;
	virtual TTMSFNCPlannerItem* __fastcall GetActiveItem() = 0 ;
	virtual void __fastcall UpdateActiveItem(TTMSFNCPlannerItem* AItem) = 0 ;
	__property TTMSFNCPlannerItems* Items = {read=FItems, write=SetItems};
	__property TTMSFNCPlannerResources* Resources = {read=FResources, write=SetResources};
	__property TTMSFNCPlannerGroups* Groups = {read=FGroups, write=SetGroups};
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual TTMSFNCPlannerData(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCPlannerData();
	virtual TTMSFNCPlannerResource* __fastcall FindResourceByName(System::UnicodeString AName);
	virtual TTMSFNCPlannerGroup* __fastcall FindGroupByName(System::UnicodeString AName);
	virtual int __fastcall FindResourceIndexByName(System::UnicodeString AName);
	virtual int __fastcall FindGroupIndexByName(System::UnicodeString AName);
};


//-- var, const, procedure ---------------------------------------------------
static constexpr unsigned TMSFNCPlannerColor = unsigned(0xffd7e4ec);
static constexpr unsigned TMSFNCPlannerFontColor = unsigned(0xff116f9f);
static constexpr unsigned TMSFNCPlannerSelectedColor = unsigned(0xff1badf8);
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCPlannerGroup;
#define Fmx_Tmsfncplannerdata_sTMSFNCPlannerGroup System::LoadResourceString(&Fmx::Tmsfncplannerdata::_sTMSFNCPlannerGroup)
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCPlannerResource;
#define Fmx_Tmsfncplannerdata_sTMSFNCPlannerResource System::LoadResourceString(&Fmx::Tmsfncplannerdata::_sTMSFNCPlannerResource)
#define AllFullDayLayouts (System::Set<TTMSFNCPlannerFullDayLayout, TTMSFNCPlannerFullDayLayout::pfdlTop, TTMSFNCPlannerFullDayLayout::pfdlBottom>() << TTMSFNCPlannerFullDayLayout::pfdlTop << TTMSFNCPlannerFullDayLayout::pfdlBottom )
extern DELPHI_PACKAGE System::UnicodeString __fastcall TranslateTextEx(System::UnicodeString AText);
}	/* namespace Tmsfncplannerdata */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCPLANNERDATA)
using namespace Fmx::Tmsfncplannerdata;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncplannerdataHPP
