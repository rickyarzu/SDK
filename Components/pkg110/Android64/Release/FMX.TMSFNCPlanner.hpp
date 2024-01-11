// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCPlanner.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncplannerHPP
#define Fmx_TmsfncplannerHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <System.Types.hpp>
#include <FMX.Controls.hpp>
#include <FMX.TMSFNCCustomControl.hpp>
#include <FMX.TMSFNCImage.hpp>
#include <FMX.TMSFNCPlannerData.hpp>
#include <FMX.Graphics.hpp>
#include <FMX.TMSFNCBitmapContainer.hpp>
#include <FMX.TMSFNCGraphics.hpp>
#include <FMX.StdCtrls.hpp>
#include <FMX.ExtCtrls.hpp>
#include <FMX.Menus.hpp>
#include <FMX.TMSFNCHTMLText.hpp>
#include <FMX.TMSFNCPopup.hpp>
#include <FMX.TMSFNCPlannerBase.hpp>
#include <FMX.Forms.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.TMSFNCCustomComponent.hpp>
#include <FMX.TMSFNCToolBarPopup.hpp>
#include <FMX.TMSFNCGraphicsTypes.hpp>
#include <FMX.DateTimeCtrls.hpp>
#include <FMX.ListBox.hpp>
#include <FMX.Edit.hpp>
#include <FMX.Memo.hpp>
#include <FMX.Objects.hpp>
#include <FMX.Types.hpp>
#include <System.Generics.Collections.hpp>
#include <System.Generics.Defaults.hpp>
#include <System.UITypes.hpp>
#include <System.SysUtils.hpp>
#include <FMX.ScrollBox.hpp>
#include <FMX.Controls.Presentation.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncplanner
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCPlannerDateEdit;
class DELPHICLASS TTMSFNCPlannerTimeEdit;
class DELPHICLASS TTMSFNCPlannerMemo;
class DELPHICLASS TTMSFNCPlannerCache;
class DELPHICLASS TTMSFNCPlannerDisplayList;
class DELPHICLASS TTMSFNCPlannerGridCache;
class DELPHICLASS TTMSFNCPlannerItemCache;
class DELPHICLASS TTMSFNCPlannerFullDaysItemTopCache;
class DELPHICLASS TTMSFNCPlannerFullDaysItemBottomCache;
class DELPHICLASS TTMSFNCPlannerPositionsCache;
class DELPHICLASS TTMSFNCPlannerPositionsTopCache;
class DELPHICLASS TTMSFNCPlannerPositionsBottomCache;
class DELPHICLASS TTMSFNCPlannerGroupsCache;
class DELPHICLASS TTMSFNCPlannerGroupsTopCache;
class DELPHICLASS TTMSFNCPlannerGroupsBottomCache;
class DELPHICLASS TTMSFNCPlannerFullDaysCache;
class DELPHICLASS TTMSFNCPlannerFullDaysTopCache;
class DELPHICLASS TTMSFNCPlannerFullDaysBottomCache;
class DELPHICLASS TTMSFNCPlannerTimeLineCache;
class DELPHICLASS TTMSFNCPlannerTimeLineLeftCache;
class DELPHICLASS TTMSFNCPlannerTimeLineRightCache;
class DELPHICLASS TTMSFNCPlannerGridDisplayList;
class DELPHICLASS TTMSFNCPlannerItemDisplayList;
class DELPHICLASS TTMSFNCPlannerFullDaysItemTopDisplayList;
class DELPHICLASS TTMSFNCPlannerFullDaysItemBottomDisplayList;
class DELPHICLASS TTMSFNCPlannerPositionsDisplayList;
class DELPHICLASS TTMSFNCPlannerPositionsTopDisplayList;
class DELPHICLASS TTMSFNCPlannerPositionsBottomDisplayList;
class DELPHICLASS TTMSFNCPlannerGroupsDisplayList;
class DELPHICLASS TTMSFNCPlannerGroupsTopDisplayList;
class DELPHICLASS TTMSFNCPlannerGroupsBottomDisplayList;
class DELPHICLASS TTMSFNCPlannerFullDaysDisplayList;
class DELPHICLASS TTMSFNCPlannerFullDaysTopDisplayList;
class DELPHICLASS TTMSFNCPlannerFullDaysBottomDisplayList;
class DELPHICLASS TTMSFNCPlannerTimeLineDisplayList;
class DELPHICLASS TTMSFNCPlannerTimeLineLeftDisplayList;
class DELPHICLASS TTMSFNCPlannerTimeLineRightDisplayList;
struct TTMSFNCPlannerDisplayGroup;
struct TTMSFNCPlannerDisplayFullDay;
class DELPHICLASS TTMSFNCPlannerAdapter;
class DELPHICLASS TTMSFNCPlannerCustomItemEditorForm;
class DELPHICLASS TTMSFNCPlannerCustomItemEditor;
class DELPHICLASS TTMSFNCPlannerDisplayGroups;
class DELPHICLASS TTMSFNCPlannerDisplayFullDays;
class DELPHICLASS TTMSFNCPlannerConflict;
class DELPHICLASS TTMSFNCPlannerConflicts;
class DELPHICLASS TTMSFNCPlannerGridCellAppearance;
class DELPHICLASS TTMSFNCPlannerItemsAppearance;
class DELPHICLASS TTMSFNCPlannerSelectionAppearance;
class DELPHICLASS TTMSFNCPlannerTimeLineAppearance;
class DELPHICLASS TTMSFNCPlannerPositionsAppearance;
class DELPHICLASS TTMSFNCPlannerPositions;
class DELPHICLASS TTMSFNCPlannerGroupsAppearance;
class DELPHICLASS TTMSFNCPlannerFullDaysAppearance;
class DELPHICLASS TTMSFNCPlannerTimeLine;
class DELPHICLASS TTMSFNCPlannerModeSettings;
class DELPHICLASS TTMSFNCPlannerInteraction;
class DELPHICLASS TTMSFNCPlannerDeleteHandlerPanel;
class DELPHICLASS TTMSFNCPlannerSizeHandlerPanel;
struct TTMSFNCPlannerDeleteHandler;
struct TTMSFNCPlannerSizeHandler;
struct TTMSFNCPlannerHintPopup;
struct TTMSFNCPlannerEditingDialog;
struct TTMSFNCPlannerSceneDrawingScale;
class DELPHICLASS TTMSFNCPlannerDateTimes;
class DELPHICLASS TTMSFNCPlannerSelectedItems;
class DELPHICLASS TTMSFNCPlannerCustomToolBarPopup;
class DELPHICLASS TTMSFNCCustomPlanner;
class DELPHICLASS TTMSFNCPlanner;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TTMSFNCPlannerDateEdit : public Fmx::Datetimectrls::TDateEdit
{
	typedef Fmx::Datetimectrls::TDateEdit inherited;
	
public:
	/* TCustomDateEdit.Create */ inline __fastcall virtual TTMSFNCPlannerDateEdit(System::Classes::TComponent* AOwner)/* overload */ : Fmx::Datetimectrls::TDateEdit(AOwner) { }
	
public:
	/* TCustomDateTimeEdit.Destroy */ inline __fastcall virtual ~TTMSFNCPlannerDateEdit() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCPlannerTimeEdit : public Fmx::Datetimectrls::TTimeEdit
{
	typedef Fmx::Datetimectrls::TTimeEdit inherited;
	
public:
	/* TCustomTimeEdit.Create */ inline __fastcall virtual TTMSFNCPlannerTimeEdit(System::Classes::TComponent* AOwner)/* overload */ : Fmx::Datetimectrls::TTimeEdit(AOwner) { }
	/* TCustomTimeEdit.Destroy */ inline __fastcall virtual ~TTMSFNCPlannerTimeEdit() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCPlannerMemo : public Fmx::Memo::TMemo
{
	typedef Fmx::Memo::TMemo inherited;
	
public:
	/* TCustomMemo.Create */ inline __fastcall virtual TTMSFNCPlannerMemo(System::Classes::TComponent* AOwner)/* overload */ : Fmx::Memo::TMemo(AOwner) { }
	
public:
	/* TPresentedControl.Destroy */ inline __fastcall virtual ~TTMSFNCPlannerMemo() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCPlannerCache : public System::Generics::Collections::TObjectList__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*>
{
	typedef System::Generics::Collections::TObjectList__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*> inherited;
	
public:
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerCache()/* overload */ : System::Generics::Collections::TObjectList__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*>() { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerCache(bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*>(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerCache(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*> > AComparer, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*>(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerCache(System::Generics::Collections::TEnumerable__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*>* const Collection, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*>(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Destroy */ inline __fastcall virtual ~TTMSFNCPlannerCache() { }
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerCache(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*> > AComparer)/* overload */ : System::Generics::Collections::TObjectList__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerCache(System::Generics::Collections::TEnumerable__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*>* const Collection)/* overload */ : System::Generics::Collections::TObjectList__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerCache(Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem* const *Values, const int Values_High)/* overload */ : System::Generics::Collections::TObjectList__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*>(Values, Values_High) { }
	
};


class PASCALIMPLEMENTATION TTMSFNCPlannerDisplayList : public System::Generics::Collections::TList__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*>
{
	typedef System::Generics::Collections::TList__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*> inherited;
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerDisplayList()/* overload */ : System::Generics::Collections::TList__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*>() { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerDisplayList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*> > AComparer)/* overload */ : System::Generics::Collections::TList__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerDisplayList(System::Generics::Collections::TEnumerable__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*>* const Collection)/* overload */ : System::Generics::Collections::TList__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerDisplayList(Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem* const *Values, const int Values_High)/* overload */ : System::Generics::Collections::TList__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*>(Values, Values_High) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Destroy */ inline __fastcall virtual ~TTMSFNCPlannerDisplayList() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCPlannerGridCache : public TTMSFNCPlannerCache
{
	typedef TTMSFNCPlannerCache inherited;
	
public:
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerGridCache()/* overload */ : TTMSFNCPlannerCache() { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerGridCache(bool AOwnsObjects)/* overload */ : TTMSFNCPlannerCache(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerGridCache(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*> > AComparer, bool AOwnsObjects)/* overload */ : TTMSFNCPlannerCache(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerGridCache(System::Generics::Collections::TEnumerable__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*>* const Collection, bool AOwnsObjects)/* overload */ : TTMSFNCPlannerCache(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Destroy */ inline __fastcall virtual ~TTMSFNCPlannerGridCache() { }
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerGridCache(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*> > AComparer)/* overload */ : TTMSFNCPlannerCache(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerGridCache(System::Generics::Collections::TEnumerable__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*>* const Collection)/* overload */ : TTMSFNCPlannerCache(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerGridCache(Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem* const *Values, const int Values_High)/* overload */ : TTMSFNCPlannerCache(Values, Values_High) { }
	
};


class PASCALIMPLEMENTATION TTMSFNCPlannerItemCache : public TTMSFNCPlannerCache
{
	typedef TTMSFNCPlannerCache inherited;
	
public:
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerItemCache()/* overload */ : TTMSFNCPlannerCache() { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerItemCache(bool AOwnsObjects)/* overload */ : TTMSFNCPlannerCache(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerItemCache(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*> > AComparer, bool AOwnsObjects)/* overload */ : TTMSFNCPlannerCache(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerItemCache(System::Generics::Collections::TEnumerable__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*>* const Collection, bool AOwnsObjects)/* overload */ : TTMSFNCPlannerCache(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Destroy */ inline __fastcall virtual ~TTMSFNCPlannerItemCache() { }
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerItemCache(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*> > AComparer)/* overload */ : TTMSFNCPlannerCache(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerItemCache(System::Generics::Collections::TEnumerable__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*>* const Collection)/* overload */ : TTMSFNCPlannerCache(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerItemCache(Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem* const *Values, const int Values_High)/* overload */ : TTMSFNCPlannerCache(Values, Values_High) { }
	
};


class PASCALIMPLEMENTATION TTMSFNCPlannerFullDaysItemTopCache : public TTMSFNCPlannerCache
{
	typedef TTMSFNCPlannerCache inherited;
	
public:
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerFullDaysItemTopCache()/* overload */ : TTMSFNCPlannerCache() { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerFullDaysItemTopCache(bool AOwnsObjects)/* overload */ : TTMSFNCPlannerCache(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerFullDaysItemTopCache(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*> > AComparer, bool AOwnsObjects)/* overload */ : TTMSFNCPlannerCache(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerFullDaysItemTopCache(System::Generics::Collections::TEnumerable__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*>* const Collection, bool AOwnsObjects)/* overload */ : TTMSFNCPlannerCache(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Destroy */ inline __fastcall virtual ~TTMSFNCPlannerFullDaysItemTopCache() { }
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerFullDaysItemTopCache(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*> > AComparer)/* overload */ : TTMSFNCPlannerCache(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerFullDaysItemTopCache(System::Generics::Collections::TEnumerable__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*>* const Collection)/* overload */ : TTMSFNCPlannerCache(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerFullDaysItemTopCache(Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem* const *Values, const int Values_High)/* overload */ : TTMSFNCPlannerCache(Values, Values_High) { }
	
};


class PASCALIMPLEMENTATION TTMSFNCPlannerFullDaysItemBottomCache : public TTMSFNCPlannerCache
{
	typedef TTMSFNCPlannerCache inherited;
	
public:
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerFullDaysItemBottomCache()/* overload */ : TTMSFNCPlannerCache() { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerFullDaysItemBottomCache(bool AOwnsObjects)/* overload */ : TTMSFNCPlannerCache(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerFullDaysItemBottomCache(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*> > AComparer, bool AOwnsObjects)/* overload */ : TTMSFNCPlannerCache(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerFullDaysItemBottomCache(System::Generics::Collections::TEnumerable__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*>* const Collection, bool AOwnsObjects)/* overload */ : TTMSFNCPlannerCache(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Destroy */ inline __fastcall virtual ~TTMSFNCPlannerFullDaysItemBottomCache() { }
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerFullDaysItemBottomCache(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*> > AComparer)/* overload */ : TTMSFNCPlannerCache(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerFullDaysItemBottomCache(System::Generics::Collections::TEnumerable__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*>* const Collection)/* overload */ : TTMSFNCPlannerCache(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerFullDaysItemBottomCache(Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem* const *Values, const int Values_High)/* overload */ : TTMSFNCPlannerCache(Values, Values_High) { }
	
};


class PASCALIMPLEMENTATION TTMSFNCPlannerPositionsCache : public TTMSFNCPlannerCache
{
	typedef TTMSFNCPlannerCache inherited;
	
public:
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerPositionsCache()/* overload */ : TTMSFNCPlannerCache() { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerPositionsCache(bool AOwnsObjects)/* overload */ : TTMSFNCPlannerCache(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerPositionsCache(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*> > AComparer, bool AOwnsObjects)/* overload */ : TTMSFNCPlannerCache(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerPositionsCache(System::Generics::Collections::TEnumerable__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*>* const Collection, bool AOwnsObjects)/* overload */ : TTMSFNCPlannerCache(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Destroy */ inline __fastcall virtual ~TTMSFNCPlannerPositionsCache() { }
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerPositionsCache(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*> > AComparer)/* overload */ : TTMSFNCPlannerCache(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerPositionsCache(System::Generics::Collections::TEnumerable__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*>* const Collection)/* overload */ : TTMSFNCPlannerCache(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerPositionsCache(Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem* const *Values, const int Values_High)/* overload */ : TTMSFNCPlannerCache(Values, Values_High) { }
	
};


class PASCALIMPLEMENTATION TTMSFNCPlannerPositionsTopCache : public TTMSFNCPlannerPositionsCache
{
	typedef TTMSFNCPlannerPositionsCache inherited;
	
public:
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerPositionsTopCache()/* overload */ : TTMSFNCPlannerPositionsCache() { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerPositionsTopCache(bool AOwnsObjects)/* overload */ : TTMSFNCPlannerPositionsCache(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerPositionsTopCache(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*> > AComparer, bool AOwnsObjects)/* overload */ : TTMSFNCPlannerPositionsCache(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerPositionsTopCache(System::Generics::Collections::TEnumerable__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*>* const Collection, bool AOwnsObjects)/* overload */ : TTMSFNCPlannerPositionsCache(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Destroy */ inline __fastcall virtual ~TTMSFNCPlannerPositionsTopCache() { }
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerPositionsTopCache(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*> > AComparer)/* overload */ : TTMSFNCPlannerPositionsCache(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerPositionsTopCache(System::Generics::Collections::TEnumerable__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*>* const Collection)/* overload */ : TTMSFNCPlannerPositionsCache(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerPositionsTopCache(Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem* const *Values, const int Values_High)/* overload */ : TTMSFNCPlannerPositionsCache(Values, Values_High) { }
	
};


class PASCALIMPLEMENTATION TTMSFNCPlannerPositionsBottomCache : public TTMSFNCPlannerPositionsCache
{
	typedef TTMSFNCPlannerPositionsCache inherited;
	
public:
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerPositionsBottomCache()/* overload */ : TTMSFNCPlannerPositionsCache() { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerPositionsBottomCache(bool AOwnsObjects)/* overload */ : TTMSFNCPlannerPositionsCache(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerPositionsBottomCache(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*> > AComparer, bool AOwnsObjects)/* overload */ : TTMSFNCPlannerPositionsCache(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerPositionsBottomCache(System::Generics::Collections::TEnumerable__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*>* const Collection, bool AOwnsObjects)/* overload */ : TTMSFNCPlannerPositionsCache(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Destroy */ inline __fastcall virtual ~TTMSFNCPlannerPositionsBottomCache() { }
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerPositionsBottomCache(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*> > AComparer)/* overload */ : TTMSFNCPlannerPositionsCache(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerPositionsBottomCache(System::Generics::Collections::TEnumerable__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*>* const Collection)/* overload */ : TTMSFNCPlannerPositionsCache(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerPositionsBottomCache(Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem* const *Values, const int Values_High)/* overload */ : TTMSFNCPlannerPositionsCache(Values, Values_High) { }
	
};


class PASCALIMPLEMENTATION TTMSFNCPlannerGroupsCache : public TTMSFNCPlannerCache
{
	typedef TTMSFNCPlannerCache inherited;
	
public:
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerGroupsCache()/* overload */ : TTMSFNCPlannerCache() { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerGroupsCache(bool AOwnsObjects)/* overload */ : TTMSFNCPlannerCache(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerGroupsCache(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*> > AComparer, bool AOwnsObjects)/* overload */ : TTMSFNCPlannerCache(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerGroupsCache(System::Generics::Collections::TEnumerable__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*>* const Collection, bool AOwnsObjects)/* overload */ : TTMSFNCPlannerCache(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Destroy */ inline __fastcall virtual ~TTMSFNCPlannerGroupsCache() { }
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerGroupsCache(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*> > AComparer)/* overload */ : TTMSFNCPlannerCache(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerGroupsCache(System::Generics::Collections::TEnumerable__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*>* const Collection)/* overload */ : TTMSFNCPlannerCache(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerGroupsCache(Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem* const *Values, const int Values_High)/* overload */ : TTMSFNCPlannerCache(Values, Values_High) { }
	
};


class PASCALIMPLEMENTATION TTMSFNCPlannerGroupsTopCache : public TTMSFNCPlannerGroupsCache
{
	typedef TTMSFNCPlannerGroupsCache inherited;
	
public:
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerGroupsTopCache()/* overload */ : TTMSFNCPlannerGroupsCache() { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerGroupsTopCache(bool AOwnsObjects)/* overload */ : TTMSFNCPlannerGroupsCache(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerGroupsTopCache(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*> > AComparer, bool AOwnsObjects)/* overload */ : TTMSFNCPlannerGroupsCache(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerGroupsTopCache(System::Generics::Collections::TEnumerable__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*>* const Collection, bool AOwnsObjects)/* overload */ : TTMSFNCPlannerGroupsCache(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Destroy */ inline __fastcall virtual ~TTMSFNCPlannerGroupsTopCache() { }
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerGroupsTopCache(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*> > AComparer)/* overload */ : TTMSFNCPlannerGroupsCache(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerGroupsTopCache(System::Generics::Collections::TEnumerable__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*>* const Collection)/* overload */ : TTMSFNCPlannerGroupsCache(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerGroupsTopCache(Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem* const *Values, const int Values_High)/* overload */ : TTMSFNCPlannerGroupsCache(Values, Values_High) { }
	
};


class PASCALIMPLEMENTATION TTMSFNCPlannerGroupsBottomCache : public TTMSFNCPlannerGroupsCache
{
	typedef TTMSFNCPlannerGroupsCache inherited;
	
public:
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerGroupsBottomCache()/* overload */ : TTMSFNCPlannerGroupsCache() { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerGroupsBottomCache(bool AOwnsObjects)/* overload */ : TTMSFNCPlannerGroupsCache(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerGroupsBottomCache(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*> > AComparer, bool AOwnsObjects)/* overload */ : TTMSFNCPlannerGroupsCache(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerGroupsBottomCache(System::Generics::Collections::TEnumerable__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*>* const Collection, bool AOwnsObjects)/* overload */ : TTMSFNCPlannerGroupsCache(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Destroy */ inline __fastcall virtual ~TTMSFNCPlannerGroupsBottomCache() { }
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerGroupsBottomCache(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*> > AComparer)/* overload */ : TTMSFNCPlannerGroupsCache(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerGroupsBottomCache(System::Generics::Collections::TEnumerable__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*>* const Collection)/* overload */ : TTMSFNCPlannerGroupsCache(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerGroupsBottomCache(Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem* const *Values, const int Values_High)/* overload */ : TTMSFNCPlannerGroupsCache(Values, Values_High) { }
	
};


class PASCALIMPLEMENTATION TTMSFNCPlannerFullDaysCache : public TTMSFNCPlannerCache
{
	typedef TTMSFNCPlannerCache inherited;
	
public:
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerFullDaysCache()/* overload */ : TTMSFNCPlannerCache() { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerFullDaysCache(bool AOwnsObjects)/* overload */ : TTMSFNCPlannerCache(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerFullDaysCache(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*> > AComparer, bool AOwnsObjects)/* overload */ : TTMSFNCPlannerCache(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerFullDaysCache(System::Generics::Collections::TEnumerable__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*>* const Collection, bool AOwnsObjects)/* overload */ : TTMSFNCPlannerCache(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Destroy */ inline __fastcall virtual ~TTMSFNCPlannerFullDaysCache() { }
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerFullDaysCache(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*> > AComparer)/* overload */ : TTMSFNCPlannerCache(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerFullDaysCache(System::Generics::Collections::TEnumerable__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*>* const Collection)/* overload */ : TTMSFNCPlannerCache(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerFullDaysCache(Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem* const *Values, const int Values_High)/* overload */ : TTMSFNCPlannerCache(Values, Values_High) { }
	
};


class PASCALIMPLEMENTATION TTMSFNCPlannerFullDaysTopCache : public TTMSFNCPlannerFullDaysCache
{
	typedef TTMSFNCPlannerFullDaysCache inherited;
	
public:
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerFullDaysTopCache()/* overload */ : TTMSFNCPlannerFullDaysCache() { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerFullDaysTopCache(bool AOwnsObjects)/* overload */ : TTMSFNCPlannerFullDaysCache(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerFullDaysTopCache(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*> > AComparer, bool AOwnsObjects)/* overload */ : TTMSFNCPlannerFullDaysCache(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerFullDaysTopCache(System::Generics::Collections::TEnumerable__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*>* const Collection, bool AOwnsObjects)/* overload */ : TTMSFNCPlannerFullDaysCache(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Destroy */ inline __fastcall virtual ~TTMSFNCPlannerFullDaysTopCache() { }
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerFullDaysTopCache(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*> > AComparer)/* overload */ : TTMSFNCPlannerFullDaysCache(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerFullDaysTopCache(System::Generics::Collections::TEnumerable__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*>* const Collection)/* overload */ : TTMSFNCPlannerFullDaysCache(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerFullDaysTopCache(Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem* const *Values, const int Values_High)/* overload */ : TTMSFNCPlannerFullDaysCache(Values, Values_High) { }
	
};


class PASCALIMPLEMENTATION TTMSFNCPlannerFullDaysBottomCache : public TTMSFNCPlannerFullDaysCache
{
	typedef TTMSFNCPlannerFullDaysCache inherited;
	
public:
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerFullDaysBottomCache()/* overload */ : TTMSFNCPlannerFullDaysCache() { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerFullDaysBottomCache(bool AOwnsObjects)/* overload */ : TTMSFNCPlannerFullDaysCache(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerFullDaysBottomCache(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*> > AComparer, bool AOwnsObjects)/* overload */ : TTMSFNCPlannerFullDaysCache(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerFullDaysBottomCache(System::Generics::Collections::TEnumerable__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*>* const Collection, bool AOwnsObjects)/* overload */ : TTMSFNCPlannerFullDaysCache(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Destroy */ inline __fastcall virtual ~TTMSFNCPlannerFullDaysBottomCache() { }
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerFullDaysBottomCache(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*> > AComparer)/* overload */ : TTMSFNCPlannerFullDaysCache(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerFullDaysBottomCache(System::Generics::Collections::TEnumerable__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*>* const Collection)/* overload */ : TTMSFNCPlannerFullDaysCache(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerFullDaysBottomCache(Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem* const *Values, const int Values_High)/* overload */ : TTMSFNCPlannerFullDaysCache(Values, Values_High) { }
	
};


class PASCALIMPLEMENTATION TTMSFNCPlannerTimeLineCache : public TTMSFNCPlannerCache
{
	typedef TTMSFNCPlannerCache inherited;
	
public:
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerTimeLineCache()/* overload */ : TTMSFNCPlannerCache() { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerTimeLineCache(bool AOwnsObjects)/* overload */ : TTMSFNCPlannerCache(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerTimeLineCache(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*> > AComparer, bool AOwnsObjects)/* overload */ : TTMSFNCPlannerCache(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerTimeLineCache(System::Generics::Collections::TEnumerable__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*>* const Collection, bool AOwnsObjects)/* overload */ : TTMSFNCPlannerCache(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Destroy */ inline __fastcall virtual ~TTMSFNCPlannerTimeLineCache() { }
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerTimeLineCache(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*> > AComparer)/* overload */ : TTMSFNCPlannerCache(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerTimeLineCache(System::Generics::Collections::TEnumerable__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*>* const Collection)/* overload */ : TTMSFNCPlannerCache(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerTimeLineCache(Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem* const *Values, const int Values_High)/* overload */ : TTMSFNCPlannerCache(Values, Values_High) { }
	
};


class PASCALIMPLEMENTATION TTMSFNCPlannerTimeLineLeftCache : public TTMSFNCPlannerTimeLineCache
{
	typedef TTMSFNCPlannerTimeLineCache inherited;
	
public:
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerTimeLineLeftCache()/* overload */ : TTMSFNCPlannerTimeLineCache() { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerTimeLineLeftCache(bool AOwnsObjects)/* overload */ : TTMSFNCPlannerTimeLineCache(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerTimeLineLeftCache(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*> > AComparer, bool AOwnsObjects)/* overload */ : TTMSFNCPlannerTimeLineCache(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerTimeLineLeftCache(System::Generics::Collections::TEnumerable__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*>* const Collection, bool AOwnsObjects)/* overload */ : TTMSFNCPlannerTimeLineCache(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Destroy */ inline __fastcall virtual ~TTMSFNCPlannerTimeLineLeftCache() { }
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerTimeLineLeftCache(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*> > AComparer)/* overload */ : TTMSFNCPlannerTimeLineCache(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerTimeLineLeftCache(System::Generics::Collections::TEnumerable__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*>* const Collection)/* overload */ : TTMSFNCPlannerTimeLineCache(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerTimeLineLeftCache(Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem* const *Values, const int Values_High)/* overload */ : TTMSFNCPlannerTimeLineCache(Values, Values_High) { }
	
};


class PASCALIMPLEMENTATION TTMSFNCPlannerTimeLineRightCache : public TTMSFNCPlannerTimeLineCache
{
	typedef TTMSFNCPlannerTimeLineCache inherited;
	
public:
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerTimeLineRightCache()/* overload */ : TTMSFNCPlannerTimeLineCache() { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerTimeLineRightCache(bool AOwnsObjects)/* overload */ : TTMSFNCPlannerTimeLineCache(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerTimeLineRightCache(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*> > AComparer, bool AOwnsObjects)/* overload */ : TTMSFNCPlannerTimeLineCache(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerTimeLineRightCache(System::Generics::Collections::TEnumerable__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*>* const Collection, bool AOwnsObjects)/* overload */ : TTMSFNCPlannerTimeLineCache(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Destroy */ inline __fastcall virtual ~TTMSFNCPlannerTimeLineRightCache() { }
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerTimeLineRightCache(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*> > AComparer)/* overload */ : TTMSFNCPlannerTimeLineCache(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerTimeLineRightCache(System::Generics::Collections::TEnumerable__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*>* const Collection)/* overload */ : TTMSFNCPlannerTimeLineCache(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerTimeLineRightCache(Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem* const *Values, const int Values_High)/* overload */ : TTMSFNCPlannerTimeLineCache(Values, Values_High) { }
	
};


class PASCALIMPLEMENTATION TTMSFNCPlannerGridDisplayList : public TTMSFNCPlannerDisplayList
{
	typedef TTMSFNCPlannerDisplayList inherited;
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerGridDisplayList()/* overload */ : TTMSFNCPlannerDisplayList() { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerGridDisplayList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*> > AComparer)/* overload */ : TTMSFNCPlannerDisplayList(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerGridDisplayList(System::Generics::Collections::TEnumerable__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*>* const Collection)/* overload */ : TTMSFNCPlannerDisplayList(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerGridDisplayList(Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem* const *Values, const int Values_High)/* overload */ : TTMSFNCPlannerDisplayList(Values, Values_High) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Destroy */ inline __fastcall virtual ~TTMSFNCPlannerGridDisplayList() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCPlannerItemDisplayList : public TTMSFNCPlannerDisplayList
{
	typedef TTMSFNCPlannerDisplayList inherited;
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerItemDisplayList()/* overload */ : TTMSFNCPlannerDisplayList() { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerItemDisplayList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*> > AComparer)/* overload */ : TTMSFNCPlannerDisplayList(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerItemDisplayList(System::Generics::Collections::TEnumerable__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*>* const Collection)/* overload */ : TTMSFNCPlannerDisplayList(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerItemDisplayList(Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem* const *Values, const int Values_High)/* overload */ : TTMSFNCPlannerDisplayList(Values, Values_High) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Destroy */ inline __fastcall virtual ~TTMSFNCPlannerItemDisplayList() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCPlannerFullDaysItemTopDisplayList : public TTMSFNCPlannerDisplayList
{
	typedef TTMSFNCPlannerDisplayList inherited;
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerFullDaysItemTopDisplayList()/* overload */ : TTMSFNCPlannerDisplayList() { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerFullDaysItemTopDisplayList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*> > AComparer)/* overload */ : TTMSFNCPlannerDisplayList(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerFullDaysItemTopDisplayList(System::Generics::Collections::TEnumerable__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*>* const Collection)/* overload */ : TTMSFNCPlannerDisplayList(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerFullDaysItemTopDisplayList(Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem* const *Values, const int Values_High)/* overload */ : TTMSFNCPlannerDisplayList(Values, Values_High) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Destroy */ inline __fastcall virtual ~TTMSFNCPlannerFullDaysItemTopDisplayList() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCPlannerFullDaysItemBottomDisplayList : public TTMSFNCPlannerDisplayList
{
	typedef TTMSFNCPlannerDisplayList inherited;
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerFullDaysItemBottomDisplayList()/* overload */ : TTMSFNCPlannerDisplayList() { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerFullDaysItemBottomDisplayList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*> > AComparer)/* overload */ : TTMSFNCPlannerDisplayList(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerFullDaysItemBottomDisplayList(System::Generics::Collections::TEnumerable__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*>* const Collection)/* overload */ : TTMSFNCPlannerDisplayList(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerFullDaysItemBottomDisplayList(Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem* const *Values, const int Values_High)/* overload */ : TTMSFNCPlannerDisplayList(Values, Values_High) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Destroy */ inline __fastcall virtual ~TTMSFNCPlannerFullDaysItemBottomDisplayList() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCPlannerPositionsDisplayList : public TTMSFNCPlannerDisplayList
{
	typedef TTMSFNCPlannerDisplayList inherited;
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerPositionsDisplayList()/* overload */ : TTMSFNCPlannerDisplayList() { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerPositionsDisplayList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*> > AComparer)/* overload */ : TTMSFNCPlannerDisplayList(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerPositionsDisplayList(System::Generics::Collections::TEnumerable__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*>* const Collection)/* overload */ : TTMSFNCPlannerDisplayList(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerPositionsDisplayList(Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem* const *Values, const int Values_High)/* overload */ : TTMSFNCPlannerDisplayList(Values, Values_High) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Destroy */ inline __fastcall virtual ~TTMSFNCPlannerPositionsDisplayList() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCPlannerPositionsTopDisplayList : public TTMSFNCPlannerPositionsDisplayList
{
	typedef TTMSFNCPlannerPositionsDisplayList inherited;
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerPositionsTopDisplayList()/* overload */ : TTMSFNCPlannerPositionsDisplayList() { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerPositionsTopDisplayList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*> > AComparer)/* overload */ : TTMSFNCPlannerPositionsDisplayList(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerPositionsTopDisplayList(System::Generics::Collections::TEnumerable__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*>* const Collection)/* overload */ : TTMSFNCPlannerPositionsDisplayList(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerPositionsTopDisplayList(Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem* const *Values, const int Values_High)/* overload */ : TTMSFNCPlannerPositionsDisplayList(Values, Values_High) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Destroy */ inline __fastcall virtual ~TTMSFNCPlannerPositionsTopDisplayList() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCPlannerPositionsBottomDisplayList : public TTMSFNCPlannerPositionsDisplayList
{
	typedef TTMSFNCPlannerPositionsDisplayList inherited;
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerPositionsBottomDisplayList()/* overload */ : TTMSFNCPlannerPositionsDisplayList() { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerPositionsBottomDisplayList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*> > AComparer)/* overload */ : TTMSFNCPlannerPositionsDisplayList(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerPositionsBottomDisplayList(System::Generics::Collections::TEnumerable__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*>* const Collection)/* overload */ : TTMSFNCPlannerPositionsDisplayList(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerPositionsBottomDisplayList(Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem* const *Values, const int Values_High)/* overload */ : TTMSFNCPlannerPositionsDisplayList(Values, Values_High) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Destroy */ inline __fastcall virtual ~TTMSFNCPlannerPositionsBottomDisplayList() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCPlannerGroupsDisplayList : public TTMSFNCPlannerDisplayList
{
	typedef TTMSFNCPlannerDisplayList inherited;
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerGroupsDisplayList()/* overload */ : TTMSFNCPlannerDisplayList() { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerGroupsDisplayList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*> > AComparer)/* overload */ : TTMSFNCPlannerDisplayList(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerGroupsDisplayList(System::Generics::Collections::TEnumerable__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*>* const Collection)/* overload */ : TTMSFNCPlannerDisplayList(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerGroupsDisplayList(Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem* const *Values, const int Values_High)/* overload */ : TTMSFNCPlannerDisplayList(Values, Values_High) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Destroy */ inline __fastcall virtual ~TTMSFNCPlannerGroupsDisplayList() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCPlannerGroupsTopDisplayList : public TTMSFNCPlannerGroupsDisplayList
{
	typedef TTMSFNCPlannerGroupsDisplayList inherited;
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerGroupsTopDisplayList()/* overload */ : TTMSFNCPlannerGroupsDisplayList() { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerGroupsTopDisplayList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*> > AComparer)/* overload */ : TTMSFNCPlannerGroupsDisplayList(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerGroupsTopDisplayList(System::Generics::Collections::TEnumerable__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*>* const Collection)/* overload */ : TTMSFNCPlannerGroupsDisplayList(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerGroupsTopDisplayList(Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem* const *Values, const int Values_High)/* overload */ : TTMSFNCPlannerGroupsDisplayList(Values, Values_High) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Destroy */ inline __fastcall virtual ~TTMSFNCPlannerGroupsTopDisplayList() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCPlannerGroupsBottomDisplayList : public TTMSFNCPlannerGroupsDisplayList
{
	typedef TTMSFNCPlannerGroupsDisplayList inherited;
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerGroupsBottomDisplayList()/* overload */ : TTMSFNCPlannerGroupsDisplayList() { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerGroupsBottomDisplayList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*> > AComparer)/* overload */ : TTMSFNCPlannerGroupsDisplayList(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerGroupsBottomDisplayList(System::Generics::Collections::TEnumerable__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*>* const Collection)/* overload */ : TTMSFNCPlannerGroupsDisplayList(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerGroupsBottomDisplayList(Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem* const *Values, const int Values_High)/* overload */ : TTMSFNCPlannerGroupsDisplayList(Values, Values_High) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Destroy */ inline __fastcall virtual ~TTMSFNCPlannerGroupsBottomDisplayList() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCPlannerFullDaysDisplayList : public TTMSFNCPlannerDisplayList
{
	typedef TTMSFNCPlannerDisplayList inherited;
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerFullDaysDisplayList()/* overload */ : TTMSFNCPlannerDisplayList() { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerFullDaysDisplayList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*> > AComparer)/* overload */ : TTMSFNCPlannerDisplayList(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerFullDaysDisplayList(System::Generics::Collections::TEnumerable__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*>* const Collection)/* overload */ : TTMSFNCPlannerDisplayList(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerFullDaysDisplayList(Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem* const *Values, const int Values_High)/* overload */ : TTMSFNCPlannerDisplayList(Values, Values_High) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Destroy */ inline __fastcall virtual ~TTMSFNCPlannerFullDaysDisplayList() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCPlannerFullDaysTopDisplayList : public TTMSFNCPlannerFullDaysDisplayList
{
	typedef TTMSFNCPlannerFullDaysDisplayList inherited;
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerFullDaysTopDisplayList()/* overload */ : TTMSFNCPlannerFullDaysDisplayList() { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerFullDaysTopDisplayList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*> > AComparer)/* overload */ : TTMSFNCPlannerFullDaysDisplayList(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerFullDaysTopDisplayList(System::Generics::Collections::TEnumerable__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*>* const Collection)/* overload */ : TTMSFNCPlannerFullDaysDisplayList(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerFullDaysTopDisplayList(Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem* const *Values, const int Values_High)/* overload */ : TTMSFNCPlannerFullDaysDisplayList(Values, Values_High) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Destroy */ inline __fastcall virtual ~TTMSFNCPlannerFullDaysTopDisplayList() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCPlannerFullDaysBottomDisplayList : public TTMSFNCPlannerFullDaysDisplayList
{
	typedef TTMSFNCPlannerFullDaysDisplayList inherited;
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerFullDaysBottomDisplayList()/* overload */ : TTMSFNCPlannerFullDaysDisplayList() { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerFullDaysBottomDisplayList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*> > AComparer)/* overload */ : TTMSFNCPlannerFullDaysDisplayList(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerFullDaysBottomDisplayList(System::Generics::Collections::TEnumerable__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*>* const Collection)/* overload */ : TTMSFNCPlannerFullDaysDisplayList(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerFullDaysBottomDisplayList(Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem* const *Values, const int Values_High)/* overload */ : TTMSFNCPlannerFullDaysDisplayList(Values, Values_High) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Destroy */ inline __fastcall virtual ~TTMSFNCPlannerFullDaysBottomDisplayList() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCPlannerTimeLineDisplayList : public TTMSFNCPlannerDisplayList
{
	typedef TTMSFNCPlannerDisplayList inherited;
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerTimeLineDisplayList()/* overload */ : TTMSFNCPlannerDisplayList() { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerTimeLineDisplayList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*> > AComparer)/* overload */ : TTMSFNCPlannerDisplayList(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerTimeLineDisplayList(System::Generics::Collections::TEnumerable__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*>* const Collection)/* overload */ : TTMSFNCPlannerDisplayList(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerTimeLineDisplayList(Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem* const *Values, const int Values_High)/* overload */ : TTMSFNCPlannerDisplayList(Values, Values_High) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Destroy */ inline __fastcall virtual ~TTMSFNCPlannerTimeLineDisplayList() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCPlannerTimeLineLeftDisplayList : public TTMSFNCPlannerTimeLineDisplayList
{
	typedef TTMSFNCPlannerTimeLineDisplayList inherited;
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerTimeLineLeftDisplayList()/* overload */ : TTMSFNCPlannerTimeLineDisplayList() { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerTimeLineLeftDisplayList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*> > AComparer)/* overload */ : TTMSFNCPlannerTimeLineDisplayList(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerTimeLineLeftDisplayList(System::Generics::Collections::TEnumerable__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*>* const Collection)/* overload */ : TTMSFNCPlannerTimeLineDisplayList(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerTimeLineLeftDisplayList(Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem* const *Values, const int Values_High)/* overload */ : TTMSFNCPlannerTimeLineDisplayList(Values, Values_High) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Destroy */ inline __fastcall virtual ~TTMSFNCPlannerTimeLineLeftDisplayList() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCPlannerTimeLineRightDisplayList : public TTMSFNCPlannerTimeLineDisplayList
{
	typedef TTMSFNCPlannerTimeLineDisplayList inherited;
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerTimeLineRightDisplayList()/* overload */ : TTMSFNCPlannerTimeLineDisplayList() { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerTimeLineRightDisplayList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*> > AComparer)/* overload */ : TTMSFNCPlannerTimeLineDisplayList(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerTimeLineRightDisplayList(System::Generics::Collections::TEnumerable__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*>* const Collection)/* overload */ : TTMSFNCPlannerTimeLineDisplayList(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Create */ inline __fastcall TTMSFNCPlannerTimeLineRightDisplayList(Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem* const *Values, const int Values_High)/* overload */ : TTMSFNCPlannerTimeLineDisplayList(Values, Values_High) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerCacheItem>.Destroy */ inline __fastcall virtual ~TTMSFNCPlannerTimeLineRightDisplayList() { }
	
};


enum DECLSPEC_DENUM TTMSFNCPlannerPositionsLayout : unsigned char { pplTop, pplBottom };

typedef System::Set<TTMSFNCPlannerPositionsLayout, TTMSFNCPlannerPositionsLayout::pplTop, TTMSFNCPlannerPositionsLayout::pplBottom> TTMSFNCPlannerPositionsLayouts;

enum DECLSPEC_DENUM TTMSFNCPlannerGroupLayout : unsigned char { pglTop, pglBottom };

typedef System::Set<TTMSFNCPlannerGroupLayout, TTMSFNCPlannerGroupLayout::pglTop, TTMSFNCPlannerGroupLayout::pglBottom> TTMSFNCPlannerGroupsLayouts;

enum DECLSPEC_DENUM TTMSFNCPlannerTimeLineLayout : unsigned char { ptlLeft, ptlRight };

typedef System::Set<TTMSFNCPlannerTimeLineLayout, TTMSFNCPlannerTimeLineLayout::ptlLeft, TTMSFNCPlannerTimeLineLayout::ptlRight> TTMSFNCPlannerTimeLineLayouts;

struct DECLSPEC_DRECORD TTMSFNCPlannerDisplayGroup
{
public:
	int StartPosition;
	int EndPosition;
	System::Types::TRectF TextRect;
};


struct DECLSPEC_DRECORD TTMSFNCPlannerDisplayFullDay
{
public:
	int StartPosition;
	int EndPosition;
};


class PASCALIMPLEMENTATION TTMSFNCPlannerAdapter : public Fmx::Tmsfnccustomcomponent::TTMSFNCCustomComponent
{
	typedef Fmx::Tmsfnccustomcomponent::TTMSFNCCustomComponent inherited;
	
private:
	TTMSFNCCustomPlanner* FPlanner;
	bool FActive;
	void __fastcall SetActive(const bool Value);
	
protected:
	virtual NativeUInt __fastcall GetInstance();
	virtual void __fastcall Notification(System::Classes::TComponent* AComponent, System::Classes::TOperation Operation);
	
public:
	__property TTMSFNCCustomPlanner* Planner = {read=FPlanner, write=FPlanner};
	virtual void __fastcall LoadItems();
	virtual void __fastcall GetItems(System::TDateTime PeriodFrom, System::TDateTime PeriodTo) = 0 ;
	virtual void __fastcall DeleteItem(Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem) = 0 ;
	virtual void __fastcall InsertItem(Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem) = 0 ;
	virtual void __fastcall UpdateItem(Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem) = 0 ;
	virtual void __fastcall AfterUpdateItem(Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem) = 0 ;
	virtual void __fastcall SelectItem(Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem) = 0 ;
	virtual void __fastcall UpdateItems();
	__fastcall virtual TTMSFNCPlannerAdapter(System::Classes::TComponent* AOwner);
	
__published:
	__property bool Active = {read=FActive, write=SetActive, default=0};
public:
	/* TControl.Destroy */ inline __fastcall virtual ~TTMSFNCPlannerAdapter() { }
	
};


typedef Fmx::Controls::TControl TTMSFNCPlannerInplaceEditor;

typedef Fmx::Controls::TControl TTMSFNCPlannerEditingDialogContentPanel;

typedef Fmx::Types::TFmxObject TTMSFNCPlannerCustomParent;

_DECLARE_METACLASS(System::TMetaClass, TTMSFNCPlannerInplaceEditorClass);

enum DECLSPEC_DENUM TTMSFNCPlannerEditingMode : unsigned char { pemInsert, pemUpdate };

class PASCALIMPLEMENTATION TTMSFNCPlannerCustomItemEditorForm : public Fmx::Forms::TForm
{
	typedef Fmx::Forms::TForm inherited;
	
private:
	TTMSFNCCustomPlanner* FPlanner;
	Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* FPlannerItem;
	TTMSFNCPlannerEditingMode FPlannerMode;
	System::TDateTime FPlannerEndTime;
	System::TDateTime FPlannerStartTime;
	int FPlannerResource;
	System::UnicodeString FPlannerTitle;
	System::UnicodeString FPlannerText;
	bool FPlannerFullDay;
	
public:
	__property TTMSFNCPlannerEditingMode PlannerMode = {read=FPlannerMode, nodefault};
	__property Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* PlannerItem = {read=FPlannerItem};
	__property TTMSFNCCustomPlanner* Planner = {read=FPlanner};
	__property System::TDateTime PlannerEndTime = {read=FPlannerEndTime, write=FPlannerEndTime};
	__property System::TDateTime PlannerStartTime = {read=FPlannerStartTime, write=FPlannerStartTime};
	__property int PlannerResource = {read=FPlannerResource, write=FPlannerResource, nodefault};
	__property System::UnicodeString PlannerTitle = {read=FPlannerTitle, write=FPlannerTitle};
	__property System::UnicodeString PlannerText = {read=FPlannerText, write=FPlannerText};
	__property bool PlannerFullDay = {read=FPlannerFullDay, write=FPlannerFullDay, nodefault};
	virtual void __fastcall Initialize() = 0 ;
public:
	/* TCustomForm.Create */ inline __fastcall virtual TTMSFNCPlannerCustomItemEditorForm(System::Classes::TComponent* AOwner) : Fmx::Forms::TForm(AOwner) { }
	/* TCustomForm.CreateNew */ inline __fastcall virtual TTMSFNCPlannerCustomItemEditorForm(System::Classes::TComponent* AOwner, NativeInt Dummy) : Fmx::Forms::TForm(AOwner, Dummy) { }
	/* TCustomForm.Destroy */ inline __fastcall virtual ~TTMSFNCPlannerCustomItemEditorForm() { }
	
};


_DECLARE_METACLASS(System::TMetaClass, TTMSFNCPlannerCustomItemEditorFormClass);

class PASCALIMPLEMENTATION TTMSFNCPlannerCustomItemEditor : public Fmx::Tmsfnccustomcomponent::TTMSFNCCustomComponent
{
	typedef Fmx::Tmsfnccustomcomponent::TTMSFNCCustomComponent inherited;
	
private:
	TTMSFNCCustomPlanner* FPlanner;
	bool FCreated;
	bool FInitialized;
	
protected:
	virtual NativeUInt __fastcall GetInstance();
	virtual void __fastcall Notification(System::Classes::TComponent* AComponent, System::Classes::TOperation Operation);
	__property bool Created = {read=FCreated, write=FCreated, default=0};
	__property bool Initialized = {read=FInitialized, write=FInitialized, default=0};
	
public:
	__property TTMSFNCCustomPlanner* Planner = {read=FPlanner, write=FPlanner};
	virtual TTMSFNCPlannerCustomItemEditor* __fastcall CreateInstance() = 0 ;
	virtual void __fastcall CreateCustomContentPanel() = 0 ;
	virtual void __fastcall InitializeCustomContentPanel() = 0 ;
	virtual void __fastcall GetCustomContentPanel(Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, Fmx::Controls::TControl* &AContentPanel) = 0 ;
	virtual void __fastcall ItemToCustomContentPanel(Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, Fmx::Controls::TControl* AContentPanel) = 0 ;
	virtual void __fastcall CustomContentPanelToItem(Fmx::Controls::TControl* AContentPanel, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem) = 0 ;
	__fastcall virtual TTMSFNCPlannerCustomItemEditor(System::Classes::TComponent* AOwner);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
public:
	/* TControl.Destroy */ inline __fastcall virtual ~TTMSFNCPlannerCustomItemEditor() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCPlannerDisplayGroups : public System::Generics::Collections::TList__1<TTMSFNCPlannerDisplayGroup>
{
	typedef System::Generics::Collections::TList__1<TTMSFNCPlannerDisplayGroup> inherited;
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlanner_TTMSFNCPlannerDisplayGroup>.Create */ inline __fastcall TTMSFNCPlannerDisplayGroups()/* overload */ : System::Generics::Collections::TList__1<TTMSFNCPlannerDisplayGroup>() { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlanner_TTMSFNCPlannerDisplayGroup>.Create */ inline __fastcall TTMSFNCPlannerDisplayGroups(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCPlannerDisplayGroup> > AComparer)/* overload */ : System::Generics::Collections::TList__1<TTMSFNCPlannerDisplayGroup>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlanner_TTMSFNCPlannerDisplayGroup>.Create */ inline __fastcall TTMSFNCPlannerDisplayGroups(System::Generics::Collections::TEnumerable__1<TTMSFNCPlannerDisplayGroup>* const Collection)/* overload */ : System::Generics::Collections::TList__1<TTMSFNCPlannerDisplayGroup>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlanner_TTMSFNCPlannerDisplayGroup>.Create */ inline __fastcall TTMSFNCPlannerDisplayGroups(const TTMSFNCPlannerDisplayGroup *Values, const int Values_High)/* overload */ : System::Generics::Collections::TList__1<TTMSFNCPlannerDisplayGroup>(Values, Values_High) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlanner_TTMSFNCPlannerDisplayGroup>.Destroy */ inline __fastcall virtual ~TTMSFNCPlannerDisplayGroups() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCPlannerDisplayFullDays : public System::Generics::Collections::TList__1<TTMSFNCPlannerDisplayFullDay>
{
	typedef System::Generics::Collections::TList__1<TTMSFNCPlannerDisplayFullDay> inherited;
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlanner_TTMSFNCPlannerDisplayFullDay>.Create */ inline __fastcall TTMSFNCPlannerDisplayFullDays()/* overload */ : System::Generics::Collections::TList__1<TTMSFNCPlannerDisplayFullDay>() { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlanner_TTMSFNCPlannerDisplayFullDay>.Create */ inline __fastcall TTMSFNCPlannerDisplayFullDays(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCPlannerDisplayFullDay> > AComparer)/* overload */ : System::Generics::Collections::TList__1<TTMSFNCPlannerDisplayFullDay>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlanner_TTMSFNCPlannerDisplayFullDay>.Create */ inline __fastcall TTMSFNCPlannerDisplayFullDays(System::Generics::Collections::TEnumerable__1<TTMSFNCPlannerDisplayFullDay>* const Collection)/* overload */ : System::Generics::Collections::TList__1<TTMSFNCPlannerDisplayFullDay>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlanner_TTMSFNCPlannerDisplayFullDay>.Create */ inline __fastcall TTMSFNCPlannerDisplayFullDays(const TTMSFNCPlannerDisplayFullDay *Values, const int Values_High)/* overload */ : System::Generics::Collections::TList__1<TTMSFNCPlannerDisplayFullDay>(Values, Values_High) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlanner_TTMSFNCPlannerDisplayFullDay>.Destroy */ inline __fastcall virtual ~TTMSFNCPlannerDisplayFullDays() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCPlannerConflict : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	TTMSFNCCustomPlanner* FPlanner;
	System::DelphiInterface<System::Generics::Defaults::IComparer__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerResourceDate> > FCompareResourceDates;
	bool FNeedsConflictsUpdate;
	Fmx::Tmsfncplannerdata::TTMSFNCPlannerResourceItems* FItems;
	Fmx::Tmsfncplannerdata::TTMSFNCPlannerResourceDates* FDates;
	int FPosition;
	
protected:
	__property bool NeedsConflictsUpdate = {read=FNeedsConflictsUpdate, write=FNeedsConflictsUpdate, nodefault};
	__property int Position = {read=FPosition, write=FPosition, nodefault};
	__property Fmx::Tmsfncplannerdata::TTMSFNCPlannerResourceItems* Items = {read=FItems, write=FItems};
	__property Fmx::Tmsfncplannerdata::TTMSFNCPlannerResourceDates* Dates = {read=FDates, write=FDates};
	void __fastcall UpdateItems();
	void __fastcall UpdateDates();
	
public:
	__fastcall TTMSFNCPlannerConflict(TTMSFNCCustomPlanner* APlanner);
	__fastcall virtual ~TTMSFNCPlannerConflict();
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


class PASCALIMPLEMENTATION TTMSFNCPlannerConflicts : public System::Generics::Collections::TObjectList__1<TTMSFNCPlannerConflict*>
{
	typedef System::Generics::Collections::TObjectList__1<TTMSFNCPlannerConflict*> inherited;
	
public:
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlanner_TTMSFNCPlannerConflict>.Create */ inline __fastcall TTMSFNCPlannerConflicts()/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCPlannerConflict*>() { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlanner_TTMSFNCPlannerConflict>.Create */ inline __fastcall TTMSFNCPlannerConflicts(bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCPlannerConflict*>(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlanner_TTMSFNCPlannerConflict>.Create */ inline __fastcall TTMSFNCPlannerConflicts(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCPlannerConflict*> > AComparer, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCPlannerConflict*>(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlanner_TTMSFNCPlannerConflict>.Create */ inline __fastcall TTMSFNCPlannerConflicts(System::Generics::Collections::TEnumerable__1<TTMSFNCPlannerConflict*>* const Collection, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCPlannerConflict*>(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCPlanner_TTMSFNCPlannerConflict>.Destroy */ inline __fastcall virtual ~TTMSFNCPlannerConflicts() { }
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlanner_TTMSFNCPlannerConflict>.Create */ inline __fastcall TTMSFNCPlannerConflicts(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCPlannerConflict*> > AComparer)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCPlannerConflict*>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlanner_TTMSFNCPlannerConflict>.Create */ inline __fastcall TTMSFNCPlannerConflicts(System::Generics::Collections::TEnumerable__1<TTMSFNCPlannerConflict*>* const Collection)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCPlannerConflict*>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlanner_TTMSFNCPlannerConflict>.Create */ inline __fastcall TTMSFNCPlannerConflicts(TTMSFNCPlannerConflict* const *Values, const int Values_High)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCPlannerConflict*>(Values, Values_High) { }
	
};


class PASCALIMPLEMENTATION TTMSFNCPlannerGridCellAppearance : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	TTMSFNCCustomPlanner* FPlanner;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FVerticalStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FHorizontalStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FDisabledFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FInActiveFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FHorizontalSubStroke;
	void __fastcall SetHorizontalStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetVerticalStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetDisabledFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetInActiveFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetHorizontalSubStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	
protected:
	void __fastcall Changed(System::TObject* Sender);
	
public:
	__fastcall TTMSFNCPlannerGridCellAppearance(TTMSFNCCustomPlanner* APlanner);
	__fastcall virtual ~TTMSFNCPlannerGridCellAppearance();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* VerticalStroke = {read=FVerticalStroke, write=SetVerticalStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* HorizontalStroke = {read=FHorizontalStroke, write=SetHorizontalStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* HorizontalSubStroke = {read=FHorizontalSubStroke, write=SetHorizontalSubStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* InActiveFill = {read=FInActiveFill, write=SetInActiveFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* Fill = {read=FFill, write=SetFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* DisabledFill = {read=FDisabledFill, write=SetDisabledFill};
};


enum DECLSPEC_DENUM TTMSFNCPlannerLinkArrowShape : unsigned char { lasNormal, lasFilled };

class PASCALIMPLEMENTATION TTMSFNCPlannerItemsAppearance : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	TTMSFNCCustomPlanner* FPlanner;
	double FGap;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FFont;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FTitleFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FTitleStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FTitleFont;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FDisabledTitleStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FSelectedTitleStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FActiveTitleStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FDisabledFont;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FSelectedFont;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FActiveFont;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FDisabledFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FSelectedFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FActiveFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FDisabledStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FDisabledTitleFont;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FSelectedStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FSelectedTitleFont;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FActiveStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FActiveTitleFont;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FDisabledTitleFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FSelectedTitleFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FActiveTitleFill;
	double FSizeAreaSize;
	double FMoveAreaSize;
	System::Uitypes::TAlphaColor FMoveAreaColor;
	System::Uitypes::TAlphaColor FSizeAreaColor;
	bool FShowMoveArea;
	bool FShowSizeArea;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign FTextVerticalTextAlign;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign FTitleHorizontalTextAlign;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign FTextHorizontalTextAlign;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign FTitleVerticalTextAlign;
	bool FShowItemHelpers;
	bool FShowItemSizeHandlers;
	double FSizeHandlerWidth;
	double FSizeHandlerHeight;
	Fmx::Tmsfnctypes::TTMSFNCBitmap* FSizeHandlerUpBitmap;
	Fmx::Tmsfnctypes::TTMSFNCBitmap* FSizeHandlerLeftBitmap;
	Fmx::Tmsfnctypes::TTMSFNCBitmap* FSizeHandlerRightBitmap;
	Fmx::Tmsfnctypes::TTMSFNCBitmap* FSizeHandlerDownBitmap;
	Fmx::Tmsfnctypes::TTMSFNCBitmap* FDeleteHandlerBitmap;
	double FDeleteHandlerWidth;
	double FDeleteHandlerHeight;
	double FDeleteAreaSize;
	System::Uitypes::TAlphaColor FDeleteAreaColor;
	bool FShowDeleteArea;
	bool FShowLinks;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FLinkStroke;
	TTMSFNCPlannerLinkArrowShape FLinkArrowShape;
	double FLinkArrowSize;
	bool FAlternativeHints;
	void __fastcall SetGap(const double Value);
	void __fastcall SetFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetTitleFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetTitleStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetTitleFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetDisabledFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetDisabledFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetDisabledStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetDisabledTitleFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetDisabledTitleFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetDisabledTitleStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetSelectedFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetSelectedFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetSelectedStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetSelectedTitleFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetSelectedTitleFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetSelectedTitleStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetActiveFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetActiveFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetActiveStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetActiveTitleFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetActiveTitleFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetActiveTitleStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetMoveAreaSize(const double Value);
	void __fastcall SetSizeAreaSize(const double Value);
	void __fastcall SetMoveAreaColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetSizeAreaColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetShowMoveArea(const bool Value);
	void __fastcall SetShowSizeArea(const bool Value);
	void __fastcall SetTextHorizontalTextAlign(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign Value);
	void __fastcall SetTextVerticalTextAlign(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign Value);
	void __fastcall SetTitleHorizontalTextAlign(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign Value);
	void __fastcall SetTitleVerticalTextAlign(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign Value);
	void __fastcall SetShowItemHelpers(const bool Value);
	void __fastcall SetSizeHandlerHeight(const double Value);
	void __fastcall SetSizeHandlerWidth(const double Value);
	void __fastcall SetSizeHandlerDownBitmap(Fmx::Tmsfnctypes::TTMSFNCBitmap* const Value);
	void __fastcall SetSizeHandlerLeftBitmap(Fmx::Tmsfnctypes::TTMSFNCBitmap* const Value);
	void __fastcall SetSizeHandlerRightBitmap(Fmx::Tmsfnctypes::TTMSFNCBitmap* const Value);
	void __fastcall SetSizeHandlerUpBitmap(Fmx::Tmsfnctypes::TTMSFNCBitmap* const Value);
	void __fastcall SetDeleteHandlerBitmap(Fmx::Tmsfnctypes::TTMSFNCBitmap* const Value);
	void __fastcall SetDeleteHandlerHeight(const double Value);
	void __fastcall SetDeleteHandlerWidth(const double Value);
	void __fastcall SetDeleteAreaColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetDeleteAreaSize(const double Value);
	void __fastcall SetShowDeleteArea(const bool Value);
	void __fastcall SetShowLinks(const bool Value);
	void __fastcall SetLinkStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetLinkArrowShape(const TTMSFNCPlannerLinkArrowShape Value);
	void __fastcall SetLinkArrowSize(const double Value);
	void __fastcall SetAlternativeHints(const bool Value);
	
protected:
	void __fastcall Changed(System::TObject* Sender);
	
public:
	__fastcall TTMSFNCPlannerItemsAppearance(TTMSFNCCustomPlanner* APlanner);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual ~TTMSFNCPlannerItemsAppearance();
	
__published:
	__property bool AlternativeHints = {read=FAlternativeHints, write=SetAlternativeHints, default=1};
	__property double Gap = {read=FGap, write=SetGap};
	__property double MoveAreaSize = {read=FMoveAreaSize, write=SetMoveAreaSize};
	__property double SizeAreaSize = {read=FSizeAreaSize, write=SetSizeAreaSize};
	__property double DeleteAreaSize = {read=FDeleteAreaSize, write=SetDeleteAreaSize};
	__property Fmx::Tmsfnctypes::TTMSFNCBitmap* DeleteHandlerBitmap = {read=FDeleteHandlerBitmap, write=SetDeleteHandlerBitmap};
	__property double SizeHandlerHeight = {read=FSizeHandlerHeight, write=SetSizeHandlerHeight};
	__property double SizeHandlerWidth = {read=FSizeHandlerWidth, write=SetSizeHandlerWidth};
	__property double DeleteHandlerHeight = {read=FDeleteHandlerHeight, write=SetDeleteHandlerHeight};
	__property double DeleteHandlerWidth = {read=FDeleteHandlerWidth, write=SetDeleteHandlerWidth};
	__property Fmx::Tmsfnctypes::TTMSFNCBitmap* SizeHandlerLeftBitmap = {read=FSizeHandlerLeftBitmap, write=SetSizeHandlerLeftBitmap};
	__property Fmx::Tmsfnctypes::TTMSFNCBitmap* SizeHandlerRightBitmap = {read=FSizeHandlerRightBitmap, write=SetSizeHandlerRightBitmap};
	__property Fmx::Tmsfnctypes::TTMSFNCBitmap* SizeHandlerUpBitmap = {read=FSizeHandlerUpBitmap, write=SetSizeHandlerUpBitmap};
	__property Fmx::Tmsfnctypes::TTMSFNCBitmap* SizeHandlerDownBitmap = {read=FSizeHandlerDownBitmap, write=SetSizeHandlerDownBitmap};
	__property System::Uitypes::TAlphaColor MoveAreaColor = {read=FMoveAreaColor, write=SetMoveAreaColor, default=-1079400023};
	__property System::Uitypes::TAlphaColor SizeAreaColor = {read=FSizeAreaColor, write=SetSizeAreaColor, default=-1079400023};
	__property System::Uitypes::TAlphaColor DeleteAreaColor = {read=FDeleteAreaColor, write=SetDeleteAreaColor, default=-12156236};
	__property bool ShowMoveArea = {read=FShowMoveArea, write=SetShowMoveArea, default=1};
	__property bool ShowSizeArea = {read=FShowSizeArea, write=SetShowSizeArea, default=1};
	__property bool ShowDeleteArea = {read=FShowDeleteArea, write=SetShowDeleteArea, default=0};
	__property bool ShowItemHelpers = {read=FShowItemHelpers, write=SetShowItemHelpers, default=1};
	__property bool ShowLinks = {read=FShowLinks, write=SetShowLinks, default=0};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* LinkStroke = {read=FLinkStroke, write=SetLinkStroke};
	__property TTMSFNCPlannerLinkArrowShape LinkArrowShape = {read=FLinkArrowShape, write=SetLinkArrowShape, default=0};
	__property double LinkArrowSize = {read=FLinkArrowSize, write=SetLinkArrowSize};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* TitleFill = {read=FTitleFill, write=SetTitleFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* TitleStroke = {read=FTitleStroke, write=SetTitleStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* TitleFont = {read=FTitleFont, write=SetTitleFont};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* Fill = {read=FFill, write=SetFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* Stroke = {read=FStroke, write=SetStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* Font = {read=FFont, write=SetFont};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* SelectedTitleFill = {read=FSelectedTitleFill, write=SetSelectedTitleFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* SelectedTitleStroke = {read=FSelectedTitleStroke, write=SetSelectedTitleStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* SelectedTitleFont = {read=FSelectedTitleFont, write=SetSelectedTitleFont};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* ActiveTitleFill = {read=FActiveTitleFill, write=SetActiveTitleFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* ActiveTitleStroke = {read=FActiveTitleStroke, write=SetActiveTitleStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* ActiveTitleFont = {read=FActiveTitleFont, write=SetActiveTitleFont};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* SelectedFill = {read=FSelectedFill, write=SetSelectedFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* SelectedStroke = {read=FSelectedStroke, write=SetSelectedStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* SelectedFont = {read=FSelectedFont, write=SetSelectedFont};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* ActiveFill = {read=FActiveFill, write=SetActiveFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* ActiveStroke = {read=FActiveStroke, write=SetActiveStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* ActiveFont = {read=FActiveFont, write=SetActiveFont};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* DisabledTitleFill = {read=FDisabledTitleFill, write=SetDisabledTitleFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* DisabledTitleStroke = {read=FDisabledTitleStroke, write=SetDisabledTitleStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* DisabledTitleFont = {read=FDisabledTitleFont, write=SetDisabledTitleFont};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* DisabledFill = {read=FDisabledFill, write=SetDisabledFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* DisabledStroke = {read=FDisabledStroke, write=SetDisabledStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* DisabledFont = {read=FDisabledFont, write=SetDisabledFont};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign TitleHorizontalTextAlign = {read=FTitleHorizontalTextAlign, write=SetTitleHorizontalTextAlign, default=1};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign TitleVerticalTextAlign = {read=FTitleVerticalTextAlign, write=SetTitleVerticalTextAlign, default=1};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign TextHorizontalTextAlign = {read=FTextHorizontalTextAlign, write=SetTextHorizontalTextAlign, default=1};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign TextVerticalTextAlign = {read=FTextVerticalTextAlign, write=SetTextVerticalTextAlign, default=1};
};


class PASCALIMPLEMENTATION TTMSFNCPlannerSelectionAppearance : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	TTMSFNCCustomPlanner* FPlanner;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FStroke;
	void __fastcall SetFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	
protected:
	void __fastcall Changed(System::TObject* Sender);
	
public:
	__fastcall TTMSFNCPlannerSelectionAppearance(TTMSFNCCustomPlanner* APlanner);
	__fastcall virtual ~TTMSFNCPlannerSelectionAppearance();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* Fill = {read=FFill, write=SetFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* Stroke = {read=FStroke, write=SetStroke};
};


enum DECLSPEC_DENUM TTMSFNCPlannerVerticalTextMode : unsigned char { pvtmAuto, pvtmAlways, pvtmNone };

class PASCALIMPLEMENTATION TTMSFNCPlannerTimeLineAppearance : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	TTMSFNCCustomPlanner* FPlanner;
	TTMSFNCPlannerTimeLineLayouts FLayouts;
	double FLeftSize;
	double FRightSize;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FRightStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FLeftFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FLeftStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FRightFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FLeftFont;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FRightFont;
	bool FStretch;
	double FLeftSubUnitFontSize;
	double FRightSubUnitFontSize;
	System::Uitypes::TAlphaColor FCurrentTimeColor;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign FLeftSubVerticalTextAlign;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign FLeftVerticalTextAlign;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign FRightSubVerticalTextAlign;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign FLeftSubHorizontalTextAlign;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign FRightVerticalTextAlign;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign FLeftHorizontalTextAlign;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign FRightSubHorizontalTextAlign;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign FRightHorizontalTextAlign;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FLeftSubStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FRightSubStroke;
	TTMSFNCPlannerVerticalTextMode FLeftSubVerticalTextMode;
	TTMSFNCPlannerVerticalTextMode FLeftVerticalTextMode;
	TTMSFNCPlannerVerticalTextMode FRightSubVerticalTextMode;
	TTMSFNCPlannerVerticalTextMode FRightVerticalTextMode;
	void __fastcall SetLayouts(const TTMSFNCPlannerTimeLineLayouts Value);
	void __fastcall SetLeftSize(const double Value);
	void __fastcall SetRightSize(const double Value);
	void __fastcall SetLeftFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetLeftStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetRightFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetRightStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetLeftFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetRightFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetStretch(const bool Value);
	void __fastcall SetLeftSubUnitFontSize(const double Value);
	void __fastcall SetRightSubUnitFontSize(const double Value);
	void __fastcall SetCurrentTimeColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetLeftHorizontalTextAlign(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign Value);
	void __fastcall SetLeftSubHorizontalTextAlign(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign Value);
	void __fastcall SetLeftSubVerticalTextAlign(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign Value);
	void __fastcall SetLeftVerticalTextAlign(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign Value);
	void __fastcall SetRightHorizontalTextAlign(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign Value);
	void __fastcall SetRightSubHorizontalTextAlign(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign Value);
	void __fastcall SetRightSubVerticalTextAlign(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign Value);
	void __fastcall SetRightVerticalTextAlign(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign Value);
	void __fastcall SetLeftSubStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetRightSubStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetLeftSubVerticalTextMode(const TTMSFNCPlannerVerticalTextMode Value);
	void __fastcall SetLeftVerticalTextMode(const TTMSFNCPlannerVerticalTextMode Value);
	void __fastcall SetRightSubVerticalTextMode(const TTMSFNCPlannerVerticalTextMode Value);
	void __fastcall SetRightVerticalTextMode(const TTMSFNCPlannerVerticalTextMode Value);
	
protected:
	void __fastcall Changed(System::TObject* Sender);
	
public:
	__fastcall TTMSFNCPlannerTimeLineAppearance(TTMSFNCCustomPlanner* APlanner);
	__fastcall virtual ~TTMSFNCPlannerTimeLineAppearance();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property TTMSFNCPlannerTimeLineLayouts Layouts = {read=FLayouts, write=SetLayouts, default=1};
	__property bool Stretch = {read=FStretch, write=SetStretch, default=0};
	__property double LeftSize = {read=FLeftSize, write=SetLeftSize};
	__property double RightSize = {read=FRightSize, write=SetRightSize};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* LeftFill = {read=FLeftFill, write=SetLeftFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* RightFill = {read=FRightFill, write=SetRightFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* LeftStroke = {read=FLeftStroke, write=SetLeftStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* RightStroke = {read=FRightStroke, write=SetRightStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* LeftSubStroke = {read=FLeftSubStroke, write=SetLeftSubStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* RightSubStroke = {read=FRightSubStroke, write=SetRightSubStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* LeftFont = {read=FLeftFont, write=SetLeftFont};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* RightFont = {read=FRightFont, write=SetRightFont};
	__property double LeftSubUnitFontSize = {read=FLeftSubUnitFontSize, write=SetLeftSubUnitFontSize};
	__property double RightSubUnitFontSize = {read=FRightSubUnitFontSize, write=SetRightSubUnitFontSize};
	__property System::Uitypes::TAlphaColor CurrentTimeColor = {read=FCurrentTimeColor, write=SetCurrentTimeColor, default=-23296};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign LeftHorizontalTextAlign = {read=FLeftHorizontalTextAlign, write=SetLeftHorizontalTextAlign, default=1};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign LeftVerticalTextAlign = {read=FLeftVerticalTextAlign, write=SetLeftVerticalTextAlign, default=1};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign RightHorizontalTextAlign = {read=FRightHorizontalTextAlign, write=SetRightHorizontalTextAlign, default=1};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign RightVerticalTextAlign = {read=FRightVerticalTextAlign, write=SetRightVerticalTextAlign, default=1};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign LeftSubHorizontalTextAlign = {read=FLeftSubHorizontalTextAlign, write=SetLeftSubHorizontalTextAlign, default=2};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign LeftSubVerticalTextAlign = {read=FLeftSubVerticalTextAlign, write=SetLeftSubVerticalTextAlign, default=2};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign RightSubHorizontalTextAlign = {read=FRightSubHorizontalTextAlign, write=SetRightSubHorizontalTextAlign, default=2};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign RightSubVerticalTextAlign = {read=FRightSubVerticalTextAlign, write=SetRightSubVerticalTextAlign, default=2};
	__property TTMSFNCPlannerVerticalTextMode LeftVerticalTextMode = {read=FLeftVerticalTextMode, write=SetLeftVerticalTextMode, default=2};
	__property TTMSFNCPlannerVerticalTextMode RightVerticalTextMode = {read=FRightVerticalTextMode, write=SetRightVerticalTextMode, default=2};
	__property TTMSFNCPlannerVerticalTextMode LeftSubVerticalTextMode = {read=FLeftSubVerticalTextMode, write=SetLeftSubVerticalTextMode, default=2};
	__property TTMSFNCPlannerVerticalTextMode RightSubVerticalTextMode = {read=FRightSubVerticalTextMode, write=SetRightSubVerticalTextMode, default=2};
};


class PASCALIMPLEMENTATION TTMSFNCPlannerPositionsAppearance : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	TTMSFNCCustomPlanner* FPlanner;
	TTMSFNCPlannerPositionsLayouts FLayouts;
	bool FStretch;
	double FBottomSize;
	double FTopSize;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FBottomFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FBottomStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FTopFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FTopStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FTopFont;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FBottomFont;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign FTopVerticalTextAlign;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign FTopHorizontalTextAlign;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign FBottomHorizontalTextAlign;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign FBottomVerticalTextAlign;
	double FSize;
	TTMSFNCPlannerVerticalTextMode FTopVerticalTextMode;
	TTMSFNCPlannerVerticalTextMode FBottomVerticalTextMode;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FTopNavigationButtonStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FBottomNavigationButtonFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FBottomNavigationButtonStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FTopNavigationButtonFill;
	bool FFillEmptySpaces;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FBottomNavigationButtonDownFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FTopNavigationButtonHoverFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FBottomNavigationButtonDownStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FTopNavigationButtonHoverStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FTopNavigationButtonDownFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FTopNavigationButtonDownStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FBottomNavigationButtonHoverFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FBottomNavigationButtonHoverStroke;
	double FTopRightNavigationButtonSize;
	double FBottomLeftNavigationButtonSize;
	double FBottomRightNavigationButtonSize;
	double FTopLeftNavigationButtonSize;
	void __fastcall SetLayouts(const TTMSFNCPlannerPositionsLayouts Value);
	void __fastcall SetStretch(const bool Value);
	void __fastcall SetBottomSize(const double Value);
	void __fastcall SetTopSize(const double Value);
	void __fastcall SetBottomFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetBottomStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetTopFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetTopStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetBottomFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetTopFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetTopHorizontalTextAlign(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign Value);
	void __fastcall SetTopVerticalTextAlign(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign Value);
	void __fastcall SetBottomHorizontalTextAlign(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign Value);
	void __fastcall SetBottomVerticalTextAlign(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign Value);
	void __fastcall SetSize(const double Value);
	void __fastcall SetTopVerticalTextMode(const TTMSFNCPlannerVerticalTextMode Value);
	void __fastcall SetBottomVerticalTextMode(const TTMSFNCPlannerVerticalTextMode Value);
	void __fastcall SetBottomNavigationButtonFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetBottomNavigationButtonStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetTopNavigationButtonFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetTopNavigationButtonStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetFillEmptySpaces(const bool Value);
	void __fastcall SetBottomNavigationButtonDownFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetBottomNavigationButtonDownStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetBottomNavigationButtonHoverFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetBottomNavigationButtonHoverStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetTopNavigationButtonDownFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetTopNavigationButtonDownStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetTopNavigationButtonHoverFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetTopNavigationButtonHoverStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetBottomLeftNavigationButtonSize(const double Value);
	void __fastcall SetBottomRightNavigationButtonSize(const double Value);
	void __fastcall SetTopLeftNavigationButtonSize(const double Value);
	void __fastcall SetTopRightNavigationButtonSize(const double Value);
	
protected:
	void __fastcall Changed(System::TObject* Sender);
	
public:
	__fastcall TTMSFNCPlannerPositionsAppearance(TTMSFNCCustomPlanner* APlanner);
	__fastcall virtual ~TTMSFNCPlannerPositionsAppearance();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property double Size = {read=FSize, write=SetSize};
	__property TTMSFNCPlannerPositionsLayouts Layouts = {read=FLayouts, write=SetLayouts, default=1};
	__property bool Stretch = {read=FStretch, write=SetStretch, default=1};
	__property double TopSize = {read=FTopSize, write=SetTopSize};
	__property double BottomSize = {read=FBottomSize, write=SetBottomSize};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* TopFont = {read=FTopFont, write=SetTopFont};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* BottomFont = {read=FBottomFont, write=SetBottomFont};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* TopFill = {read=FTopFill, write=SetTopFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* BottomFill = {read=FBottomFill, write=SetBottomFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* TopStroke = {read=FTopStroke, write=SetTopStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* BottomStroke = {read=FBottomStroke, write=SetBottomStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign TopHorizontalTextAlign = {read=FTopHorizontalTextAlign, write=SetTopHorizontalTextAlign, default=0};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign TopVerticalTextAlign = {read=FTopVerticalTextAlign, write=SetTopVerticalTextAlign, default=0};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign BottomHorizontalTextAlign = {read=FBottomHorizontalTextAlign, write=SetBottomHorizontalTextAlign, default=0};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign BottomVerticalTextAlign = {read=FBottomVerticalTextAlign, write=SetBottomVerticalTextAlign, default=0};
	__property TTMSFNCPlannerVerticalTextMode TopVerticalTextMode = {read=FTopVerticalTextMode, write=SetTopVerticalTextMode, default=0};
	__property TTMSFNCPlannerVerticalTextMode BottomVerticalTextMode = {read=FBottomVerticalTextMode, write=SetBottomVerticalTextMode, default=0};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* TopNavigationButtonFill = {read=FTopNavigationButtonFill, write=SetTopNavigationButtonFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* BottomNavigationButtonFill = {read=FBottomNavigationButtonFill, write=SetBottomNavigationButtonFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* TopNavigationButtonStroke = {read=FTopNavigationButtonStroke, write=SetTopNavigationButtonStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* BottomNavigationButtonStroke = {read=FBottomNavigationButtonStroke, write=SetBottomNavigationButtonStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* TopNavigationButtonHoverFill = {read=FTopNavigationButtonHoverFill, write=SetTopNavigationButtonHoverFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* BottomNavigationButtonHoverFill = {read=FBottomNavigationButtonHoverFill, write=SetBottomNavigationButtonHoverFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* TopNavigationButtonHoverStroke = {read=FTopNavigationButtonHoverStroke, write=SetTopNavigationButtonHoverStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* BottomNavigationButtonHoverStroke = {read=FBottomNavigationButtonHoverStroke, write=SetBottomNavigationButtonHoverStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* TopNavigationButtonDownFill = {read=FTopNavigationButtonDownFill, write=SetTopNavigationButtonDownFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* BottomNavigationButtonDownFill = {read=FBottomNavigationButtonDownFill, write=SetBottomNavigationButtonDownFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* TopNavigationButtonDownStroke = {read=FTopNavigationButtonDownStroke, write=SetTopNavigationButtonDownStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* BottomNavigationButtonDownStroke = {read=FBottomNavigationButtonDownStroke, write=SetBottomNavigationButtonDownStroke};
	__property double TopLeftNavigationButtonSize = {read=FTopLeftNavigationButtonSize, write=SetTopLeftNavigationButtonSize};
	__property double TopRightNavigationButtonSize = {read=FTopRightNavigationButtonSize, write=SetTopRightNavigationButtonSize};
	__property double BottomLeftNavigationButtonSize = {read=FBottomLeftNavigationButtonSize, write=SetBottomLeftNavigationButtonSize};
	__property double BottomRightNavigationButtonSize = {read=FBottomRightNavigationButtonSize, write=SetBottomRightNavigationButtonSize};
	__property bool FillEmptySpaces = {read=FFillEmptySpaces, write=SetFillEmptySpaces, default=1};
};


enum DECLSPEC_DENUM TTMSFNCPlannerPositionEmptySpace : unsigned char { ppesTopLeft, ppesTopRight, ppesBottomLeft, ppesBottomRight };

enum DECLSPEC_DENUM TTMSFNCPlannerGroupEmptySpace : unsigned char { pgesTopLeft, pgesTopRight, pgesBottomLeft, pgesBottomRight };

enum DECLSPEC_DENUM TTMSFNCPlannerFullDayEmptySpace : unsigned char { pfdesTopLeft, pfdesTopRight, pfdesBottomLeft, pfdesBottomRight };

class PASCALIMPLEMENTATION TTMSFNCPlannerPositions : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	TTMSFNCCustomPlanner* FPlanner;
	int FCount;
	System::UnicodeString FFormat;
	int FViewStart;
	void __fastcall SetCount(const int Value);
	void __fastcall SetFormat(const System::UnicodeString Value);
	int __fastcall GetViewStart();
	void __fastcall SetViewStart(const int Value);
	
public:
	__fastcall TTMSFNCPlannerPositions(TTMSFNCCustomPlanner* APlanner);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property int Count = {read=FCount, write=SetCount, default=3};
	__property System::UnicodeString Format = {read=FFormat, write=SetFormat};
	__property int ViewStart = {read=GetViewStart, write=SetViewStart, default=0};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTMSFNCPlannerPositions() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCPlannerGroupsAppearance : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	TTMSFNCCustomPlanner* FPlanner;
	TTMSFNCPlannerGroupsLayouts FLayouts;
	double FBottomSize;
	double FTopSize;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FBottomFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FBottomStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FTopFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FTopStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FTopFont;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FBottomFont;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign FBottomHorizontalTextAlign;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign FTopVerticalTextAlign;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign FTopHorizontalTextAlign;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign FBottomVerticalTextAlign;
	TTMSFNCPlannerVerticalTextMode FTopVerticalTextMode;
	TTMSFNCPlannerVerticalTextMode FBottomVerticalTextMode;
	bool FFillEmptySpaces;
	void __fastcall SetLayouts(const TTMSFNCPlannerGroupsLayouts Value);
	void __fastcall SetBottomSize(const double Value);
	void __fastcall SetTopSize(const double Value);
	void __fastcall SetBottomFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetBottomStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetTopFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetTopStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetBottomFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetTopFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetBottomHorizontalTextAlign(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign Value);
	void __fastcall SetBottomVerticalTextAlign(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign Value);
	void __fastcall SetTopHorizontalTextAlign(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign Value);
	void __fastcall SetTopVerticalTextAlign(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign Value);
	void __fastcall SetTopVerticalTextMode(const TTMSFNCPlannerVerticalTextMode Value);
	void __fastcall SetBottomVerticalTextMode(const TTMSFNCPlannerVerticalTextMode Value);
	void __fastcall SetFillEmptySpaces(const bool Value);
	
protected:
	void __fastcall Changed(System::TObject* Sender);
	
public:
	__fastcall TTMSFNCPlannerGroupsAppearance(TTMSFNCCustomPlanner* APlanner);
	__fastcall virtual ~TTMSFNCPlannerGroupsAppearance();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property TTMSFNCPlannerGroupsLayouts Layouts = {read=FLayouts, write=SetLayouts, default=1};
	__property double TopSize = {read=FTopSize, write=SetTopSize};
	__property double BottomSize = {read=FBottomSize, write=SetBottomSize};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* TopFill = {read=FTopFill, write=SetTopFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* BottomFill = {read=FBottomFill, write=SetBottomFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* TopFont = {read=FTopFont, write=SetTopFont};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* BottomFont = {read=FBottomFont, write=SetBottomFont};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* TopStroke = {read=FTopStroke, write=SetTopStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* BottomStroke = {read=FBottomStroke, write=SetBottomStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign TopHorizontalTextAlign = {read=FTopHorizontalTextAlign, write=SetTopHorizontalTextAlign, default=0};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign TopVerticalTextAlign = {read=FTopVerticalTextAlign, write=SetTopVerticalTextAlign, default=0};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign BottomHorizontalTextAlign = {read=FBottomHorizontalTextAlign, write=SetBottomHorizontalTextAlign, default=0};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign BottomVerticalTextAlign = {read=FBottomVerticalTextAlign, write=SetBottomVerticalTextAlign, default=0};
	__property TTMSFNCPlannerVerticalTextMode TopVerticalTextMode = {read=FTopVerticalTextMode, write=SetTopVerticalTextMode, default=0};
	__property TTMSFNCPlannerVerticalTextMode BottomVerticalTextMode = {read=FBottomVerticalTextMode, write=SetBottomVerticalTextMode, default=0};
	__property bool FillEmptySpaces = {read=FFillEmptySpaces, write=SetFillEmptySpaces, default=1};
};


class PASCALIMPLEMENTATION TTMSFNCPlannerFullDaysAppearance : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	TTMSFNCCustomPlanner* FPlanner;
	Fmx::Tmsfncplannerdata::TTMSFNCPlannerFullDaysLayouts FLayouts;
	double FBottomSize;
	double FTopSize;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FBottomFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FBottomStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FTopFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FTopStroke;
	bool FFillEmptySpaces;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FTopFont;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FBottomFont;
	bool FAutoSize;
	double FAutoItemHeight;
	void __fastcall SetLayouts(const Fmx::Tmsfncplannerdata::TTMSFNCPlannerFullDaysLayouts Value);
	void __fastcall SetBottomSize(const double Value);
	void __fastcall SetTopSize(const double Value);
	void __fastcall SetBottomFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetBottomStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetTopFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetTopStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetFillEmptySpaces(const bool Value);
	void __fastcall SetBottomFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetTopFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetAutoSize(const bool Value);
	void __fastcall SetAutoItemHeight(const double Value);
	
protected:
	void __fastcall Changed(System::TObject* Sender);
	
public:
	__fastcall TTMSFNCPlannerFullDaysAppearance(TTMSFNCCustomPlanner* APlanner);
	__fastcall virtual ~TTMSFNCPlannerFullDaysAppearance();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property double AutoItemHeight = {read=FAutoItemHeight, write=SetAutoItemHeight};
	__property bool AutoSize = {read=FAutoSize, write=SetAutoSize, default=1};
	__property Fmx::Tmsfncplannerdata::TTMSFNCPlannerFullDaysLayouts Layouts = {read=FLayouts, write=SetLayouts, default=1};
	__property double TopSize = {read=FTopSize, write=SetTopSize};
	__property double BottomSize = {read=FBottomSize, write=SetBottomSize};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* TopFill = {read=FTopFill, write=SetTopFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* BottomFill = {read=FBottomFill, write=SetBottomFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* TopStroke = {read=FTopStroke, write=SetTopStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* BottomStroke = {read=FBottomStroke, write=SetBottomStroke};
	__property bool FillEmptySpaces = {read=FFillEmptySpaces, write=SetFillEmptySpaces, default=1};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* TopFont = {read=FTopFont, write=SetTopFont};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* BottomFont = {read=FBottomFont, write=SetBottomFont};
};


enum DECLSPEC_DENUM TTMSFNCPlannerMode : unsigned char { pmDay, pmDayPeriod, pmHalfDayPeriod, pmMultiDay, pmMultiResDay, pmMultiDayRes, pmMonth, pmMultiMonth, pmCustom };

enum DECLSPEC_DENUM TTMSFNCPlannerDisplayUnitType : unsigned char { pduMilliSecond, pduSecond, pduMinute, pduHour, pduDay };

enum DECLSPEC_DENUM TTMSFNCPlannerCurrentTimeMode : unsigned char { pctmNone, pctmLine, pctmText };

enum DECLSPEC_DENUM TTMSFNCPlannerCurrentTimePosition : unsigned char { pctpUnderItems, pctpOverItems };

class PASCALIMPLEMENTATION TTMSFNCPlannerTimeLine : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	TTMSFNCCustomPlanner* FPlanner;
	int FDisplayUnit;
	double FDisplayUnitSize;
	int FDisplayStart;
	int FDisplayEnd;
	System::UnicodeString FDisplaySubUnitFormat;
	TTMSFNCPlannerDisplayUnitType FDisplayUnitType;
	TTMSFNCPlannerDisplayUnitType FDisplayOffsetType;
	int FDisplayOffset;
	System::UnicodeString FDisplayUnitFormat;
	System::TDateTime FViewStart;
	TTMSFNCPlannerCurrentTimeMode FCurrentTimeMode;
	int FActiveStart;
	int FActiveEnd;
	TTMSFNCPlannerCurrentTimePosition FCurrentTimePosition;
	void __fastcall SetDisplayUnit(const int Value);
	void __fastcall SetDisplayUnitSize(const double Value);
	void __fastcall SetDisplayEnd(const int Value);
	void __fastcall SetDisplayStart(const int Value);
	void __fastcall SetDisplaySubUnitFormat(const System::UnicodeString Value);
	void __fastcall SetDisplayUnitType(const TTMSFNCPlannerDisplayUnitType Value);
	void __fastcall SetDisplayOffset(const int Value);
	void __fastcall SetDisplayOffsetType(const TTMSFNCPlannerDisplayUnitType Value);
	void __fastcall SetDisplayUnitFormat(const System::UnicodeString Value);
	void __fastcall SetCurrentTimeMode(const TTMSFNCPlannerCurrentTimeMode Value);
	System::TDateTime __fastcall GetViewStart();
	void __fastcall SetViewStart(const System::TDateTime Value);
	void __fastcall SetActiveEnd(const int Value);
	void __fastcall SetActiveStart(const int Value);
	void __fastcall SetCurrentTimePosition(const TTMSFNCPlannerCurrentTimePosition Value);
	
public:
	__fastcall TTMSFNCPlannerTimeLine(TTMSFNCCustomPlanner* APlanner);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property System::UnicodeString DisplayUnitFormat = {read=FDisplayUnitFormat, write=SetDisplayUnitFormat};
	__property System::UnicodeString DisplaySubUnitFormat = {read=FDisplaySubUnitFormat, write=SetDisplaySubUnitFormat};
	__property int DisplayUnit = {read=FDisplayUnit, write=SetDisplayUnit, default=30};
	__property TTMSFNCPlannerDisplayUnitType DisplayUnitType = {read=FDisplayUnitType, write=SetDisplayUnitType, default=2};
	__property int DisplayStart = {read=FDisplayStart, write=SetDisplayStart, default=0};
	__property int DisplayEnd = {read=FDisplayEnd, write=SetDisplayEnd, default=47};
	__property int ActiveStart = {read=FActiveStart, write=SetActiveStart, default=16};
	__property int ActiveEnd = {read=FActiveEnd, write=SetActiveEnd, default=40};
	__property int DisplayOffset = {read=FDisplayOffset, write=SetDisplayOffset, default=0};
	__property TTMSFNCPlannerDisplayUnitType DisplayOffsetType = {read=FDisplayOffsetType, write=SetDisplayOffsetType, default=2};
	__property double DisplayUnitSize = {read=FDisplayUnitSize, write=SetDisplayUnitSize};
	__property System::TDateTime ViewStart = {read=GetViewStart, write=SetViewStart};
	__property TTMSFNCPlannerCurrentTimeMode CurrentTimeMode = {read=FCurrentTimeMode, write=SetCurrentTimeMode, default=1};
	__property TTMSFNCPlannerCurrentTimePosition CurrentTimePosition = {read=FCurrentTimePosition, write=SetCurrentTimePosition, default=0};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTMSFNCPlannerTimeLine() { }
	
};


enum DECLSPEC_DENUM TTMSFNCPlannerGetTextMode : unsigned char { pgtmDrawing, pgtmEditing };

enum DECLSPEC_DENUM TTMSFNCPlannerNavigationDirection : unsigned char { pndPrevious, pndNext };

enum DECLSPEC_DENUM TTMSFNCPlannerNavigationButton : unsigned char { pnbPrevious, pnbNext };

typedef System::Set<TTMSFNCPlannerNavigationButton, TTMSFNCPlannerNavigationButton::pnbPrevious, TTMSFNCPlannerNavigationButton::pnbNext> TTMSFNCPlannerNavigationButtons;

enum DECLSPEC_DENUM TTMSFNCPlannerNavigationButtonState : unsigned char { pnbsNormal, pnbsDown, pnbsHover };

enum DECLSPEC_DENUM TTMSFNCPlannerItemDeleteMode : unsigned char { pidmKeyboard, pidmDialog, pidmTouch };

typedef void __fastcall (__closure *TTMSFNCPlannerAfterDrawTimeLineEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, bool ALeft, const System::Types::TRectF &ARect);

typedef void __fastcall (__closure *TTMSFNCPlannerAfterDrawGridEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);

typedef void __fastcall (__closure *TTMSFNCPlannerCustomizeItemRectEvent)(System::TObject* Sender, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, int APosition, double &AX, double &AY, double &AWidth, double &AHeight);

typedef void __fastcall (__closure *TTMSFNCPlannerItemChangedEvent)(System::TObject* Sender, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem);

typedef void __fastcall (__closure *TTMSFNCPlannerBeforeDrawPositionEmptySpaceEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCPlannerPositionEmptySpace ASpace, bool &AAllow, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCPlannerAfterDrawPositionEmptySpaceEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCPlannerPositionEmptySpace ASpace);

typedef void __fastcall (__closure *TTMSFNCPlannerBeforeDrawGroupEmptySpaceEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCPlannerGroupEmptySpace ASpace, bool &AAllow, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCPlannerAfterDrawGroupEmptySpaceEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCPlannerGroupEmptySpace ASpace);

typedef void __fastcall (__closure *TTMSFNCPlannerBeforeDrawFullDayEmptySpaceEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCPlannerFullDayEmptySpace ASpace, bool &AAllow, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCPlannerAfterDrawFullDayEmptySpaceEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCPlannerFullDayEmptySpace ASpace);

typedef void __fastcall (__closure *TTMSFNCPlannerBeforeDrawItemLink)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* ALinkedItem, bool &ACanDrawLink);

typedef void __fastcall (__closure *TTMSFNCPlannerAfterDrawItemLink)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* ALinkedItem);

typedef void __fastcall (__closure *TTMSFNCPlannerBeforeDrawTopNavigationButtonEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCPlannerNavigationButton AButton, TTMSFNCPlannerNavigationButtonState AButtonState, bool &AAllow, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCPlannerBeforeDrawBottomNavigationButtonEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCPlannerNavigationButton AButton, TTMSFNCPlannerNavigationButtonState AButtonState, bool &AAllow, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCPlannerAfterDrawTopNavigationButtonEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCPlannerNavigationButton AButton, TTMSFNCPlannerNavigationButtonState AButtonState);

typedef void __fastcall (__closure *TTMSFNCPlannerAfterDrawBottomNavigationButtonEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCPlannerNavigationButton AButton, TTMSFNCPlannerNavigationButtonState AButtonState);

typedef void __fastcall (__closure *TTMSFNCPlannerBeforeDrawCurrentTimeInTimeLineEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItemKind AKind, double AValue, System::TDateTime ACurrentTime, bool &AAllow, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCPlannerAfterDrawCurrentTimeInTimeLineEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItemKind AKind, double AValue, System::TDateTime ACurrentTime);

typedef void __fastcall (__closure *TTMSFNCPlannerBeforeDrawCurrentTimeInGridEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, double AValue, System::TDateTime ACurrentTime, bool &AAllow, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCPlannerAfterDrawCurrentTimeInGridEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, double AValue, System::TDateTime ACurrentTime);

typedef void __fastcall (__closure *TTMSFNCPlannerBeforeDrawCellEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int ACol, int ARow, System::TDateTime AStartTime, System::TDateTime AEndTime, int APosition, Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItemKind AKind, bool &AAllow, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCPlannerAfterDrawCellEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int ACol, int ARow, System::TDateTime AStartTime, System::TDateTime AEndTime, int APosition, Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItemKind AKind);

typedef void __fastcall (__closure *TTMSFNCPlannerBeforeDrawCellVerticalLineEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int ACol, int ARow, System::TDateTime AStartTime, System::TDateTime AEndTime, int APosition, Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItemKind AKind, bool &AAllow, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCPlannerAfterDrawCellVerticalLineEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int ACol, int ARow, System::TDateTime AStartTime, System::TDateTime AEndTime, int APosition, Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItemKind AKind);

typedef void __fastcall (__closure *TTMSFNCPlannerBeforeDrawCellHorizontalLineEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, bool ASubUnit, int ACol, int ARow, System::TDateTime ADateTime, int APosition, Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItemKind AKind, bool &AAllow, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCPlannerAfterDrawCellHorizontalLineEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, bool ASubUnit, int ACol, int ARow, System::TDateTime ADateTime, int APosition, Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItemKind AKind);

typedef void __fastcall (__closure *TTMSFNCPlannerBeforeDrawPositionEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int APosition, Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItemKind AKind, bool &AAllow, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCPlannerAfterDrawPositionEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int APosition, Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItemKind AKind);

typedef void __fastcall (__closure *TTMSFNCPlannerBeforeDrawGroupEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AGroup, int AStartPosition, int AEndPosition, Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItemKind AKind, bool &AAllow, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCPlannerAfterDrawGroupEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AGroup, int AStartPosition, int AEndPosition, Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItemKind AKind);

typedef void __fastcall (__closure *TTMSFNCPlannerBeforeDrawFullDayEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AFullDay, int AStartPosition, int AEndPosition, Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItemKind AKind, bool &AAllow, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCPlannerAfterDrawFullDayEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AFullDay, int AStartPosition, int AEndPosition, Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItemKind AKind);

typedef void __fastcall (__closure *TTMSFNCPlannerBeforeDrawTimeStrokeEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, double AValue, bool ASubUnit, int ARow, Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItemKind AKind, bool &AAllow, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCPlannerAfterDrawTimeStrokeEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, double AValue, bool ASubUnit, int ARow, Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItemKind AKind);

typedef void __fastcall (__closure *TTMSFNCPlannerBeforeDrawTimeEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, double AValue, int ARow, Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItemKind AKind, bool &AAllow, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCPlannerAfterDrawTimeEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, double AValue, int ARow, Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItemKind AKind);

typedef void __fastcall (__closure *TTMSFNCPlannerBeforeDrawItemEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, bool &AAllow, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCPlannerAfterDrawItemEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem);

typedef void __fastcall (__closure *TTMSFNCPlannerBeforeDrawMoveAreaEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, bool &AAllow, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCPlannerAfterDrawMoveAreaEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem);

typedef void __fastcall (__closure *TTMSFNCPlannerBeforeDrawSizeAreaEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, bool &AAllow, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCPlannerAfterDrawSizeAreaEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem);

typedef void __fastcall (__closure *TTMSFNCPlannerBeforeDrawDeleteAreaEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, bool &AAllow, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCPlannerAfterDrawDeleteAreaEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem);

typedef void __fastcall (__closure *TTMSFNCPlannerBeforeDrawItemTitleEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, System::UnicodeString ATitle, bool &AAllow, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCPlannerAfterDrawItemTitleEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, System::UnicodeString ATitle);

typedef void __fastcall (__closure *TTMSFNCPlannerGetCustomContentPanelEvent)(System::TObject* Sender, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, Fmx::Controls::TControl* &AContentPanel);

typedef void __fastcall (__closure *TTMSFNCPlannerInitializeCustomContentPanelEvent)(System::TObject* Sender, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, Fmx::Controls::TControl* AContentPanel);

typedef void __fastcall (__closure *TTMSFNCPlannerItemToCustomContentPanelEvent)(System::TObject* Sender, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, Fmx::Controls::TControl* AContentPanel);

typedef void __fastcall (__closure *TTMSFNCPlannerCustomContentPanelToItemEvent)(System::TObject* Sender, Fmx::Controls::TControl* AContentPanel, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem);

typedef void __fastcall (__closure *TTMSFNCPlannerGetPositionTextEvent)(System::TObject* Sender, int APosition, Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItemKind AKind, System::UnicodeString &AText);

typedef void __fastcall (__closure *TTMSFNCPlannerBeforeDrawPositionTextEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int APosition, Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItemKind AKind, System::UnicodeString AText, bool &AAllow);

typedef void __fastcall (__closure *TTMSFNCPlannerAfterDrawPositionTextEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int APosition, Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItemKind AKind, System::UnicodeString AText);

typedef void __fastcall (__closure *TTMSFNCPlannerGetGroupTextEvent)(System::TObject* Sender, int AGroup, Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItemKind AKind, System::UnicodeString &AText);

typedef void __fastcall (__closure *TTMSFNCPlannerBeforeDrawGroupTextEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AGroup, int AStartPosition, int AEndPosition, Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItemKind AKind, System::UnicodeString AText, bool &AAllow);

typedef void __fastcall (__closure *TTMSFNCPlannerAfterDrawGroupTextEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AGroup, int AStartPosition, int AEndPosition, Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItemKind AKind, System::UnicodeString AText);

typedef void __fastcall (__closure *TTMSFNCPlannerGetTimeTextEvent)(System::TObject* Sender, double AValue, int ARow, bool ASubUnit, Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItemKind AKind, System::UnicodeString &AText);

typedef void __fastcall (__closure *TTMSFNCPlannerBeforeDrawTimeTextEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, double AValue, int ARow, bool ASubUnit, Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItemKind AKind, System::UnicodeString AText, bool &AAllow);

typedef void __fastcall (__closure *TTMSFNCPlannerAfterDrawTimeTextEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, double AValue, int ARow, bool ASubUnit, Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItemKind AKind, System::UnicodeString AText);

typedef void __fastcall (__closure *TTMSFNCPlannerItemRightClickEvent)(System::TObject* Sender, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem);

typedef void __fastcall (__closure *TTMSFNCPlannerItemPopupMenuPrepareEvent)(System::TObject* Sender, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, Fmx::Menus::TPopupMenu* APopupMenu);

typedef void __fastcall (__closure *TTMSFNCPlannerItemAnchorClickEvent)(System::TObject* Sender, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, System::UnicodeString AAnchor);

typedef void __fastcall (__closure *TTMSFNCPlannerGetItemHintEvent)(System::TObject* Sender, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, System::UnicodeString &AHint);

typedef void __fastcall (__closure *TTMSFNCPlannerGetItemTextEvent)(System::TObject* Sender, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, TTMSFNCPlannerGetTextMode AMode, System::UnicodeString &AText);

typedef void __fastcall (__closure *TTMSFNCPlannerBeforeDrawItemTextEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, System::UnicodeString AText, bool &AAllow);

typedef void __fastcall (__closure *TTMSFNCPlannerAfterDrawItemTextEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, System::UnicodeString AText);

typedef void __fastcall (__closure *TTMSFNCPlannerGetItemTitleTextEvent)(System::TObject* Sender, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, TTMSFNCPlannerGetTextMode AMode, System::UnicodeString &ATitle);

typedef void __fastcall (__closure *TTMSFNCPlannerBeforeDrawItemTitleTextEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, System::UnicodeString ATitle, bool &AAllow);

typedef void __fastcall (__closure *TTMSFNCPlannerAfterDrawItemTitleTextEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, System::UnicodeString ATitle);

typedef void __fastcall (__closure *TTMSFNCPlannerColumnAnchorClickEvent)(System::TObject* Sender, int AIndex, System::UnicodeString AAnchor);

typedef void __fastcall (__closure *TTMSFNCPlannerColumnClickEvent)(System::TObject* Sender, int AIndex, Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItemKind AKind);

typedef void __fastcall (__closure *TTMSFNCPlannerColumnDblClickEvent)(System::TObject* Sender, int AIndex, Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItemKind AKind);

typedef void __fastcall (__closure *TTMSFNCPlannerGetColumnHintEvent)(System::TObject* Sender, int AIndex, Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItemKind AKind, System::UnicodeString &AHint);

typedef void __fastcall (__closure *TTMSFNCPlannerIsItemDeletableEvent)(System::TObject* Sender, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, bool &ADeletable);

typedef void __fastcall (__closure *TTMSFNCPlannerGetInplaceEditorEvent)(System::TObject* Sender, System::TDateTime AStartTime, System::TDateTime AEndTime, int APosition, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, TTMSFNCPlannerInplaceEditorClass &AInplaceEditorClass);

typedef void __fastcall (__closure *TTMSFNCPlannerIsDateTimeDisabledEvent)(System::TObject* Sender, System::TDateTime ADateTime, int APosition, bool &ADisabled);

typedef void __fastcall (__closure *TTMSFNCPlannerIsDateTimeInActiveEvent)(System::TObject* Sender, System::TDateTime ADateTime, int APosition, bool &AInActive);

typedef void __fastcall (__closure *TTMSFNCPlannerIsDateTimeSubEvent)(System::TObject* Sender, System::TDateTime ADateTime, bool &AIsSub);

typedef void __fastcall (__closure *TTMSFNCPlannerHasDateTimeSubEvent)(System::TObject* Sender, bool &AHasSub);

typedef void __fastcall (__closure *TTMSFNCPlannerSelectTimeEvent)(System::TObject* Sender, System::TDateTime AStartTime, System::TDateTime AEndTime, int APosition);

typedef void __fastcall (__closure *TTMSFNCPlannerSelectCellEvent)(System::TObject* Sender, const Fmx::Tmsfncplannerbase::TTMSFNCPlannerCell &AStartCell, const Fmx::Tmsfncplannerbase::TTMSFNCPlannerCell &AEndCell);

typedef void __fastcall (__closure *TTMSFNCPlannerBeforeInsertItemEvent)(System::TObject* Sender, System::TDateTime AStartTime, System::TDateTime AEndTime, int APosition, System::UnicodeString &ATitle, System::UnicodeString &AText, bool &ACanInsert);

typedef void __fastcall (__closure *TTMSFNCPlannerAfterInsertItemEvent)(System::TObject* Sender, System::TDateTime AStartTime, System::TDateTime AEndTime, int APosition, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem);

typedef void __fastcall (__closure *TTMSFNCPlannerBeforeUpdateItemEvent)(System::TObject* Sender, System::TDateTime AStartTime, System::TDateTime AEndTime, int APosition, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, System::UnicodeString &ATitle, System::UnicodeString &AText, bool &ACanUpdate);

typedef void __fastcall (__closure *TTMSFNCPlannerAfterUpdateItemEvent)(System::TObject* Sender, System::TDateTime AStartTime, System::TDateTime AEndTime, int APosition, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem);

typedef void __fastcall (__closure *TTMSFNCPlannerBeforeOpenInsertDialogEvent)(System::TObject* Sender, System::TDateTime AStartTime, System::TDateTime AEndTime, int APosition, bool &ACanOpen);

typedef void __fastcall (__closure *TTMSFNCPlannerAfterOpenInsertDialogEvent)(System::TObject* Sender, System::TDateTime AStartTime, System::TDateTime AEndTime, int APosition);

typedef void __fastcall (__closure *TTMSFNCPlannerBeforeOpenUpdateDialogEvent)(System::TObject* Sender, System::TDateTime AStartTime, System::TDateTime AEndTime, int APosition, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, bool &ACanOpen);

typedef void __fastcall (__closure *TTMSFNCPlannerAfterOpenUpdateDialogEvent)(System::TObject* Sender, System::TDateTime AStartTime, System::TDateTime AEndTime, int APosition, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem);

typedef void __fastcall (__closure *TTMSFNCPlannerBeforeOpenInplaceEditorEvent)(System::TObject* Sender, System::TDateTime AStartTime, System::TDateTime AEndTime, int APosition, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, bool &ACanOpen);

typedef void __fastcall (__closure *TTMSFNCPlannerAfterOpenInplaceEditorEvent)(System::TObject* Sender, System::TDateTime AStartTime, System::TDateTime AEndTime, int APosition, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, Fmx::Controls::TControl* AInplaceEditor, const System::Types::TRectF &AInplaceEditorRect);

typedef void __fastcall (__closure *TTMSFNCPlannerCloseInplaceEditorEvent)(System::TObject* Sender, System::TDateTime AStartTime, System::TDateTime AEndTime, int APosition, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, bool ACancelled, bool &ACanClose);

typedef void __fastcall (__closure *TTMSFNCPlannerCloseInsertDialogEvent)(System::TObject* Sender, System::TDateTime AStartTime, System::TDateTime AEndTime, int APosition, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, bool ACancelled, bool &ACanClose);

typedef void __fastcall (__closure *TTMSFNCPlannerCloseUpdateDialogEvent)(System::TObject* Sender, System::TDateTime AStartTime, System::TDateTime AEndTime, int APosition, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, bool ACancelled, bool &ACanClose);

typedef void __fastcall (__closure *TTMSFNCPlannerItemCustomDrawMarkEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItemMarkType AMarkType, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem);

typedef void __fastcall (__closure *TTMSFNCPlannerBeforeDeleteItemEvent)(System::TObject* Sender, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, TTMSFNCPlannerItemDeleteMode AMode, bool &ACanDelete);

typedef void __fastcall (__closure *TTMSFNCPlannerBeforeSelectItemEvent)(System::TObject* Sender, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, bool &ACanSelect);

typedef void __fastcall (__closure *TTMSFNCPlannerAfterSelectItemEvent)(System::TObject* Sender, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem);

typedef void __fastcall (__closure *TTMSFNCPlannerItemClickEvent)(System::TObject* Sender, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem);

typedef void __fastcall (__closure *TTMSFNCPlannerItemDblClickEvent)(System::TObject* Sender, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem);

typedef void __fastcall (__closure *TTMSFNCPlannerAfterDeleteItemEvent)(System::TObject* Sender, int AItemIndex, System::UnicodeString ADBKey, TTMSFNCPlannerItemDeleteMode AMode);

typedef void __fastcall (__closure *TTMSFNCPlannerBeforeMoveItemEvent)(System::TObject* Sender, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, System::TDateTime &ANewStartTime, System::TDateTime &ANewEndTime, int &ANewPosition, bool &ACanMove);

typedef void __fastcall (__closure *TTMSFNCPlannerBeforeSizeItemEvent)(System::TObject* Sender, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, System::TDateTime &ANewStartTime, System::TDateTime &ANewEndTime, int &ANewPosition, bool &ACanSize);

typedef void __fastcall (__closure *TTMSFNCPlannerAfterMoveItemEvent)(System::TObject* Sender, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, System::TDateTime ANewStartTime, System::TDateTime ANewEndTime, int ANewPosition);

typedef void __fastcall (__closure *TTMSFNCPlannerAfterSizeItemEvent)(System::TObject* Sender, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, System::TDateTime ANewStartTime, System::TDateTime ANewEndTime, int ANewPosition);

typedef void __fastcall (__closure *TTMSFNCPlannerMoveItemEvent)(System::TObject* Sender, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, System::TDateTime ANewStartTime, System::TDateTime ANewEndTime, int ANewPosition);

typedef void __fastcall (__closure *TTMSFNCPlannerSizeItemEvent)(System::TObject* Sender, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, System::TDateTime ANewStartTime, System::TDateTime ANewEndTime, int ANewPosition);

typedef void __fastcall (__closure *TTMSFNCPlannerScrollEvent)(System::TObject* Sender, float APosition);

typedef void __fastcall (__closure *TTMSFNCPlannerBeforeDrawItemHelperEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, bool AIsStartTime, System::TDateTime AValue, bool &AAllow, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCPlannerBeforeDrawItemHelperTextEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, bool AIsStartTime, System::TDateTime AValue, System::UnicodeString AText, bool &AAllow);

typedef void __fastcall (__closure *TTMSFNCPlannerAfterDrawItemHelperEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, bool AIsStartTime, System::TDateTime AValue);

typedef void __fastcall (__closure *TTMSFNCPlannerAfterDrawItemHelperTextEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, bool AIsStartTime, System::TDateTime AValue, System::UnicodeString AText);

typedef void __fastcall (__closure *TTMSFNCPlannerGetItemHelperTextEvent)(System::TObject* Sender, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, bool AIsStartTime, System::TDateTime AValue, System::UnicodeString &AText);

typedef void __fastcall (__closure *TTMSFNCPlannerBeforeNavigateToDateTimeEvent)(System::TObject* Sender, TTMSFNCPlannerNavigationDirection ADirection, System::TDateTime ACurrentDateTime, System::TDateTime &ANewDateTime, bool &AAllow);

typedef void __fastcall (__closure *TTMSFNCPlannerAfterNavigateToDateTimeEvent)(System::TObject* Sender, TTMSFNCPlannerNavigationDirection ADirection, System::TDateTime ACurrentDateTime, System::TDateTime ANewDateTime);

enum DECLSPEC_DENUM TTMSFNCPlannerInActiveDay : unsigned char { padMonday, padTuesday, padWednesday, padThursday, padFriday, padSaturday, padSunday };

typedef System::Set<TTMSFNCPlannerInActiveDay, TTMSFNCPlannerInActiveDay::padMonday, TTMSFNCPlannerInActiveDay::padSunday> TTMSFNCPlannerInActiveDays;

class PASCALIMPLEMENTATION TTMSFNCPlannerModeSettings : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	TTMSFNCCustomPlanner* FPlanner;
	System::TDateTime FStartTime;
	System::TDateTime FEndTime;
	TTMSFNCPlannerInActiveDays FInActiveDays;
	bool FOverlappableItems;
	void __fastcall SetStartTime(const System::TDateTime Value);
	void __fastcall SetEndTime(const System::TDateTime Value);
	void __fastcall SetInActiveDays(const TTMSFNCPlannerInActiveDays Value);
	void __fastcall SetOverlappableItems(const bool Value);
	
public:
	__fastcall TTMSFNCPlannerModeSettings(TTMSFNCCustomPlanner* APlanner);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property System::TDateTime StartTime = {read=FStartTime, write=SetStartTime};
	__property System::TDateTime EndTime = {read=FEndTime, write=SetEndTime};
	__property TTMSFNCPlannerInActiveDays InActiveDays = {read=FInActiveDays, write=SetInActiveDays, default=96};
	__property bool OverlappableItems = {read=FOverlappableItems, write=SetOverlappableItems, default=1};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTMSFNCPlannerModeSettings() { }
	
};


enum DECLSPEC_DENUM TTMSFNCPlannerMouseInsertMode : unsigned char { pmimNone, pmimAfterSelection, pmimDialogAfterSelection };

enum DECLSPEC_DENUM TTMSFNCPlannerKeyboardInsertMode : unsigned char { pkimNone, pkimSelection, pkimSelectionDialog };

enum DECLSPEC_DENUM TTMSFNCPlannerMouseEditMode : unsigned char { pmemDoubleClick, pmemSingleClick, pmemSingleClickOnSelectedItem };

enum DECLSPEC_DENUM TTMSFNCPlannerUpdateMode : unsigned char { pumNone, pumInplace, pumDialog };

enum DECLSPEC_DENUM TTMSFNCPlannerInplaceEditorMode : unsigned char { piemText, piemTitle, piemItem };

enum DECLSPEC_DENUM TTMSFNCPlannerSizeMode : unsigned char { psmDesktop, psmMobile, psmAuto };

enum DECLSPEC_DENUM TTMSFNCPlannerMoveMode : unsigned char { pmmDesktop, pmmMobile, pmmAuto };

enum DECLSPEC_DENUM TTMSFNCPlannerDeleteMode : unsigned char { pdmDesktop, pdmMobile, pdmAuto };

enum DECLSPEC_DENUM TTMSFNCPlannerMouseInteractionMode : unsigned char { pmmMove, pmmSizeDown, pmmSizeUp };

enum DECLSPEC_DENUM TTMSFNCPlannerKeyboardMode : unsigned char { pkmDefault, pkmGrid };

class PASCALIMPLEMENTATION TTMSFNCPlannerInteraction : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	TTMSFNCCustomPlanner* FPlanner;
	TTMSFNCPlannerMouseInsertMode FMouseInsertMode;
	TTMSFNCPlannerUpdateMode FUpdateMode;
	TTMSFNCPlannerMouseEditMode FMouseEditMode;
	bool FKeyboardDelete;
	TTMSFNCPlannerKeyboardInsertMode FKeyboardInsertMode;
	bool FMultiSelect;
	bool FTouchScrolling;
	TTMSFNCPlannerInplaceEditorMode FInplaceEditorMode;
	bool FKeyboardEdit;
	bool FSwipeToNextDateTime;
	bool FSwipeToPreviousDateTime;
	bool FKeepSelection;
	TTMSFNCPlannerNavigationButtons FTopNavigationButtons;
	TTMSFNCPlannerNavigationButtons FBottomNavigationButtons;
	TTMSFNCPlannerSizeMode FSizeMode;
	TTMSFNCPlannerMoveMode FMoveMode;
	bool FShowSelection;
	bool FReadOnly;
	TTMSFNCPlannerDeleteMode FDeleteMode;
	bool FAutoDeleteLinkedItems;
	bool FAutoSelectLinkedItems;
	bool FAutoOpenURL;
	TTMSFNCPlannerKeyboardMode FKeyboardMode;
	void __fastcall SetMouseInsertMode(const TTMSFNCPlannerMouseInsertMode Value);
	void __fastcall SetUpdateMode(const TTMSFNCPlannerUpdateMode Value);
	void __fastcall SetMouseEditMode(const TTMSFNCPlannerMouseEditMode Value);
	void __fastcall SetKeyboardDelete(const bool Value);
	void __fastcall SetKeyboardInsertMode(const TTMSFNCPlannerKeyboardInsertMode Value);
	void __fastcall SetMultiSelect(const bool Value);
	void __fastcall SetTouchScrolling(const bool Value);
	void __fastcall SetInplaceEditorMode(const TTMSFNCPlannerInplaceEditorMode Value);
	void __fastcall SetKeyboardEdit(const bool Value);
	void __fastcall SetSwipeToNextDateTime(const bool Value);
	void __fastcall SetSwipeToPreviousDateTime(const bool Value);
	void __fastcall SetKeepSelection(const bool Value);
	void __fastcall SetSizeMode(const TTMSFNCPlannerSizeMode Value);
	void __fastcall SetTopNavigationButtons(const TTMSFNCPlannerNavigationButtons Value);
	void __fastcall SetBottomNavigationButtons(const TTMSFNCPlannerNavigationButtons Value);
	void __fastcall SetMoveMode(const TTMSFNCPlannerMoveMode Value);
	void __fastcall SetShowSelection(const bool Value);
	void __fastcall SetReadOnly(const bool Value);
	void __fastcall SetDeleteMode(const TTMSFNCPlannerDeleteMode Value);
	void __fastcall SetKeyboardMode(const TTMSFNCPlannerKeyboardMode Value);
	
public:
	__fastcall TTMSFNCPlannerInteraction(TTMSFNCCustomPlanner* APlanner);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property bool AutoOpenURL = {read=FAutoOpenURL, write=FAutoOpenURL, default=1};
	__property TTMSFNCPlannerMouseInsertMode MouseInsertMode = {read=FMouseInsertMode, write=SetMouseInsertMode, default=0};
	__property TTMSFNCPlannerMouseEditMode MouseEditMode = {read=FMouseEditMode, write=SetMouseEditMode, default=2};
	__property bool KeyboardDelete = {read=FKeyboardDelete, write=SetKeyboardDelete, default=0};
	__property bool KeyboardEdit = {read=FKeyboardEdit, write=SetKeyboardEdit, default=1};
	__property TTMSFNCPlannerKeyboardMode KeyboardMode = {read=FKeyboardMode, write=SetKeyboardMode, default=0};
	__property TTMSFNCPlannerKeyboardInsertMode KeyboardInsertMode = {read=FKeyboardInsertMode, write=SetKeyboardInsertMode, default=0};
	__property TTMSFNCPlannerUpdateMode UpdateMode = {read=FUpdateMode, write=SetUpdateMode, default=1};
	__property bool MultiSelect = {read=FMultiSelect, write=SetMultiSelect, default=0};
	__property bool TouchScrolling = {read=FTouchScrolling, write=SetTouchScrolling, default=1};
	__property TTMSFNCPlannerInplaceEditorMode InplaceEditorMode = {read=FInplaceEditorMode, write=SetInplaceEditorMode, default=0};
	__property bool SwipeToNextDateTime = {read=FSwipeToNextDateTime, write=SetSwipeToNextDateTime, default=1};
	__property bool SwipeToPreviousDateTime = {read=FSwipeToPreviousDateTime, write=SetSwipeToPreviousDateTime, default=1};
	__property bool KeepSelection = {read=FKeepSelection, write=SetKeepSelection, default=1};
	__property bool ShowSelection = {read=FShowSelection, write=SetShowSelection, default=1};
	__property TTMSFNCPlannerSizeMode SizeMode = {read=FSizeMode, write=SetSizeMode, default=2};
	__property TTMSFNCPlannerDeleteMode DeleteMode = {read=FDeleteMode, write=SetDeleteMode, default=2};
	__property TTMSFNCPlannerMoveMode MoveMode = {read=FMoveMode, write=SetMoveMode, default=2};
	__property TTMSFNCPlannerNavigationButtons TopNavigationButtons = {read=FTopNavigationButtons, write=SetTopNavigationButtons, default=0};
	__property TTMSFNCPlannerNavigationButtons BottomNavigationButtons = {read=FBottomNavigationButtons, write=SetBottomNavigationButtons, default=0};
	__property bool ReadOnly = {read=FReadOnly, write=SetReadOnly, default=0};
	__property bool AutoSelectLinkedItems = {read=FAutoSelectLinkedItems, write=FAutoSelectLinkedItems, default=0};
	__property bool AutoDeleteLinkedItems = {read=FAutoDeleteLinkedItems, write=FAutoDeleteLinkedItems, default=0};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTMSFNCPlannerInteraction() { }
	
};


enum DECLSPEC_DENUM TTMSFNCPlannerSizeHandlerPanelKind : unsigned char { pshpkStartTime, pshpkEndTime };

class PASCALIMPLEMENTATION TTMSFNCPlannerDeleteHandlerPanel : public Fmx::Tmsfnccustomcontrol::TTMSFNCCustomControl
{
	typedef Fmx::Tmsfnccustomcontrol::TTMSFNCCustomControl inherited;
	
private:
	TTMSFNCCustomPlanner* FPlanner;
	
protected:
	virtual System::Types::TRectF __fastcall GetClipRect();
	virtual void __fastcall RegisterRuntimeClasses();
	virtual void __fastcall Click();
	
public:
	__fastcall virtual TTMSFNCPlannerDeleteHandlerPanel(System::Classes::TComponent* AOwner);
	__property TTMSFNCCustomPlanner* Planner = {read=FPlanner, write=FPlanner};
	virtual void __fastcall Draw(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
public:
	/* TTMSFNCCustomControl.Destroy */ inline __fastcall virtual ~TTMSFNCPlannerDeleteHandlerPanel() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCPlannerSizeHandlerPanel : public Fmx::Tmsfnccustomcontrol::TTMSFNCCustomControl
{
	typedef Fmx::Tmsfnccustomcontrol::TTMSFNCCustomControl inherited;
	
private:
	System::Types::TPointF FDownPoint;
	bool FMouseDown;
	TTMSFNCCustomPlanner* FPlanner;
	TTMSFNCPlannerSizeHandlerPanelKind FKind;
	
protected:
	virtual System::Types::TRectF __fastcall GetClipRect();
	virtual void __fastcall RegisterRuntimeClasses();
	virtual void __fastcall HandleMouseDown(System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall HandleMouseMove(System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall HandleMouseUp(System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, float X, float Y);
	
public:
	__fastcall virtual TTMSFNCPlannerSizeHandlerPanel(System::Classes::TComponent* AOwner);
	__property TTMSFNCCustomPlanner* Planner = {read=FPlanner, write=FPlanner};
	__property TTMSFNCPlannerSizeHandlerPanelKind Kind = {read=FKind, write=FKind, default=0};
	virtual void __fastcall Draw(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
public:
	/* TTMSFNCCustomControl.Destroy */ inline __fastcall virtual ~TTMSFNCPlannerSizeHandlerPanel() { }
	
};


struct DECLSPEC_DRECORD TTMSFNCPlannerDeleteHandler
{
public:
	TTMSFNCPlannerDeleteHandlerPanel* Background;
};


struct DECLSPEC_DRECORD TTMSFNCPlannerSizeHandler
{
public:
	TTMSFNCPlannerSizeHandlerPanel* Background;
};


struct DECLSPEC_DRECORD TTMSFNCPlannerHintPopup
{
public:
	Fmx::Tmsfnccustomcontrol::TTMSFNCCustomControl* Panel;
	Fmx::Tmsfnchtmltext::TTMSFNCHTMLText* TextLabel;
};


struct DECLSPEC_DRECORD TTMSFNCPlannerEditingDialog
{
public:
	Fmx::Tmsfncimage::TTMSFNCImage* Background;
	Fmx::Stdctrls::TCheckBox* FullDayCheckBox;
	Fmx::Listbox::TComboBox* ResourcesComboBox;
	Fmx::Tmsfnccustomcontrol::TTMSFNCCustomControl* Panel;
	TTMSFNCPlannerTimeEdit* StartTimeEdit;
	TTMSFNCPlannerDateEdit* StartDateEdit;
	TTMSFNCPlannerTimeEdit* EndTimeEdit;
	TTMSFNCPlannerDateEdit* EndDateEdit;
	Fmx::Edit::TEdit* TitleEdit;
	Fmx::Memo::TMemo* TextMemo;
	Fmx::Stdctrls::TLabel* TitleLabel;
	Fmx::Stdctrls::TLabel* TextLabel;
	Fmx::Stdctrls::TLabel* StartTimeLabel;
	Fmx::Stdctrls::TLabel* EndTimeLabel;
	Fmx::Tmsfnccustomcontrol::TTMSFNCCustomControl* BottomPanel;
	Fmx::Stdctrls::TLabel* ButtonOK;
	Fmx::Stdctrls::TLabel* ButtonRemove;
	Fmx::Stdctrls::TLabel* ButtonCancel;
	Fmx::Stdctrls::TLabel* ResourceLabel;
	Fmx::Controls::TControl* ContentPanel;
	bool CustomContentPanel;
};


struct DECLSPEC_DRECORD TTMSFNCPlannerSceneDrawingScale
{
public:
	double SceneScale;
	System::Types::TPointF DrawingScale;
};


class PASCALIMPLEMENTATION TTMSFNCPlannerDateTimes : public System::Generics::Collections::TList__1<System::TDateTime>
{
	typedef System::Generics::Collections::TList__1<System::TDateTime> inherited;
	
public:
	/* {System_Generics_Collections}TList<System_TDateTime>.Create */ inline __fastcall TTMSFNCPlannerDateTimes()/* overload */ : System::Generics::Collections::TList__1<System::TDateTime>() { }
	/* {System_Generics_Collections}TList<System_TDateTime>.Create */ inline __fastcall TTMSFNCPlannerDateTimes(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<System::TDateTime> > AComparer)/* overload */ : System::Generics::Collections::TList__1<System::TDateTime>(AComparer) { }
	/* {System_Generics_Collections}TList<System_TDateTime>.Create */ inline __fastcall TTMSFNCPlannerDateTimes(System::Generics::Collections::TEnumerable__1<System::TDateTime>* const Collection)/* overload */ : System::Generics::Collections::TList__1<System::TDateTime>(Collection) { }
	/* {System_Generics_Collections}TList<System_TDateTime>.Create */ inline __fastcall TTMSFNCPlannerDateTimes(const System::TDateTime *Values, const int Values_High)/* overload */ : System::Generics::Collections::TList__1<System::TDateTime>(Values, Values_High) { }
	/* {System_Generics_Collections}TList<System_TDateTime>.Destroy */ inline __fastcall virtual ~TTMSFNCPlannerDateTimes() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCPlannerSelectedItems : public System::Generics::Collections::TList__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem*>
{
	typedef System::Generics::Collections::TList__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem*> inherited;
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerItem>.Create */ inline __fastcall TTMSFNCPlannerSelectedItems()/* overload */ : System::Generics::Collections::TList__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem*>() { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerItem>.Create */ inline __fastcall TTMSFNCPlannerSelectedItems(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem*> > AComparer)/* overload */ : System::Generics::Collections::TList__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem*>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerItem>.Create */ inline __fastcall TTMSFNCPlannerSelectedItems(System::Generics::Collections::TEnumerable__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem*>* const Collection)/* overload */ : System::Generics::Collections::TList__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem*>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerItem>.Create */ inline __fastcall TTMSFNCPlannerSelectedItems(Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* const *Values, const int Values_High)/* overload */ : System::Generics::Collections::TList__1<Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem*>(Values, Values_High) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCPlannerData_TTMSFNCPlannerItem>.Destroy */ inline __fastcall virtual ~TTMSFNCPlannerSelectedItems() { }
	
};


enum DECLSPEC_DENUM TTMSFNCPlannerInteractionDirection : unsigned char { idNone, idLeft, idRight, idUp, idDown, idLeftUp, idRightDown };

typedef System::DynamicArray<Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem*> TTMSFNCPlannerLinkedItemArray;

typedef System::DynamicArray<int> TTMSFNCPlannerItemArray;

enum DECLSPEC_DENUM TTMSFNCPlannerArrowKind : unsigned char { pakLeft, pakRight, pakUp, pakDown };

class PASCALIMPLEMENTATION TTMSFNCPlannerCustomToolBarPopup : public Fmx::Tmsfnctoolbarpopup::TTMSFNCCustomToolBarPopup
{
	typedef Fmx::Tmsfnctoolbarpopup::TTMSFNCCustomToolBarPopup inherited;
	
private:
	TTMSFNCCustomPlanner* FPlanner;
	Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* FPlannerItem;
	
protected:
	virtual void __fastcall Notification(System::Classes::TComponent* AComponent, System::Classes::TOperation Operation);
	__property TTMSFNCCustomPlanner* Planner = {read=FPlanner, write=FPlanner};
	__property Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* PlannerItem = {read=FPlannerItem, write=FPlannerItem};
	
public:
	__fastcall virtual TTMSFNCPlannerCustomToolBarPopup(System::Classes::TComponent* AOwner);
	__property PlacementControl;
	__property PlacementRectangle;
	__property Placement = {default=0};
public:
	/* TTMSFNCCustomToolBarPopup.Destroy */ inline __fastcall virtual ~TTMSFNCPlannerCustomToolBarPopup() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCustomPlanner : public Fmx::Tmsfncplannerdata::TTMSFNCPlannerData
{
	typedef Fmx::Tmsfncplannerdata::TTMSFNCPlannerData inherited;
	
private:
	TTMSFNCPlannerCustomizeItemRectEvent FOnCustomizeItemRect;
	TTMSFNCPlannerCustomToolBarPopup* FToolBarPopup;
	TTMSFNCPlannerCustomItemEditorFormClass FCustomItemEditorForm;
	bool FClosing;
	bool FInplaceEditorClosed;
	TTMSFNCPlannerAdapter* FAdapter;
	Fmx::Controls::TControl* FCurrentPanel;
	int FCallItemIndex;
	bool FCallAfterMoveMouseEvent;
	bool FCallAfterMoveKeyboardEvent;
	bool FCallAfterSizeMouseEvent;
	bool FCallAfterSizeKeyboardEvent;
	int FFindItemIndex;
	bool FNavigationButtonDown;
	TTMSFNCPlannerNavigationButtonState FTopLeftNavigationButtonState;
	TTMSFNCPlannerNavigationButtonState FTopRightNavigationButtonState;
	TTMSFNCPlannerNavigationButtonState FBottomLeftNavigationButtonState;
	TTMSFNCPlannerNavigationButtonState FBottomRightNavigationButtonState;
	System::TDate FDialogStartDate;
	System::TDate FDialogEndDate;
	System::TTime FDialogStartTime;
	System::TTime FDialogEndTime;
	bool FDblClicked;
	bool FDblClickedMouseMove;
	bool FCloseWithDialogKey;
	bool FInplaceEditorActive;
	bool FEditorDialogActive;
	TTMSFNCPlannerInplaceEditorClass FInplaceEditorClass;
	bool FNeedsInitialization;
	TTMSFNCPlannerSelectedItems* FSelectedItems;
	System::UnicodeString FDoItemAnchor;
	bool FDoItemSizeUp;
	bool FDoItemSizeDown;
	bool FDoItemMove;
	bool FDoItemDelete;
	Fmx::Controls::TControl* FInplaceEditor;
	bool FDrawItemHelpers;
	TTMSFNCPlannerDateTimes* FCustomDatesList;
	System::DelphiInterface<System::Generics::Defaults::IComparer__1<System::TDateTime> > FCompareCustomDates;
	bool FNeedsConflictsUpdate;
	int FInsertResource;
	int FUpdateItem;
	bool FEditingDialogCreated;
	bool FHintPopupCreated;
	bool FDeleteHandlerCreated;
	bool FStartTimeSizeHandlerCreated;
	bool FEndTimeSizeHandlerCreated;
	Fmx::Tmsfncimage::TTMSFNCImage* FEditingBackground;
	Fmx::Listbox::TComboBox* FResourcesComboBox;
	Fmx::Tmsfnccustomcontrol::TTMSFNCControl* FEditingDialog;
	Fmx::Tmsfnccustomcontrol::TTMSFNCControl* FBottomPanel;
	Fmx::Tmsfnccustomcontrol::TTMSFNCControl* FContentPanel;
	Fmx::Stdctrls::TLabel* FStartTimeLabel;
	Fmx::Stdctrls::TLabel* FResourceLabel;
	TTMSFNCPlannerTimeEdit* FStartTimeEdit;
	TTMSFNCPlannerDateEdit* FStartDateEdit;
	Fmx::Stdctrls::TLabel* FEndTimeLabel;
	TTMSFNCPlannerTimeEdit* FEndTimeEdit;
	TTMSFNCPlannerDateEdit* FEndDateEdit;
	Fmx::Stdctrls::TLabel* FTitleLabel;
	Fmx::Edit::TEdit* FTitleEdit;
	Fmx::Stdctrls::TLabel* FTextLabel;
	Fmx::Stdctrls::TCheckBox* FFullDayCheckBox;
	Fmx::Memo::TMemo* FTextMemo;
	TTMSFNCPlannerDeleteHandlerPanel* FDeletePanel;
	TTMSFNCPlannerSizeHandlerPanel* FStartTimeSizePanel;
	TTMSFNCPlannerSizeHandlerPanel* FEndTimeSizePanel;
	Fmx::Tmsfnccustomcontrol::TTMSFNCControl* FHintPanel;
	Fmx::Tmsfnchtmltext::TTMSFNCHTMLText* FHintLabel;
	Fmx::Stdctrls::TLabel* FButtonCancel;
	Fmx::Stdctrls::TLabel* FButtonOK;
	Fmx::Stdctrls::TLabel* FButtonRemove;
	System::TDateTime FDisplayStartTime;
	System::TDateTime FDisplayEndTime;
	System::TDateTime FActiveStartTime;
	System::TDateTime FActiveEndTime;
	int FDisplayStart;
	int FDisplayEnd;
	int FActiveStart;
	int FActiveEnd;
	Fmx::Tmsfncplannerbase::TTMSFNCPlannerSelection FPrevSelection;
	bool FScrolling;
	Fmx::Tmsfncplannerbase::TTMSFNCPlannerSelection FSelection;
	bool FDownOnPositions;
	bool FMoveOnPositions;
	Fmx::Tmsfncplannerbase::TTMSFNCPlannerCell FDownCell;
	Fmx::Tmsfncplannerbase::TTMSFNCPlannerCell FSizeCell;
	Fmx::Tmsfncplannerbase::TTMSFNCPlannerCell FRangeCell;
	Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* FDownItem;
	Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* FHoverItem;
	Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* FActiveItem;
	Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem* FPositionHover;
	Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem* FGroupHover;
	Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem* FFullDayHover;
	Fmx::Menus::TPopupMenu* FItemPopup;
	TTMSFNCPlannerAfterDrawGridEvent FOnAfterDrawGrid;
	TTMSFNCPlannerAfterDrawTimeLineEvent FOnAfterDrawTimeLine;
	int FDownCacheItemIdx;
	bool FDoubleSelection;
	bool FRangeSelection;
	int FDownTime;
	bool FMouseUp;
	bool FAnimateVerticalPos;
	bool FAnimateHorizontalPos;
	bool FAnimating;
	double FSpX;
	double FSpY;
	bool FMovePositionPrevious;
	bool FMovePositionNext;
	double FScrollX;
	double FScrollY;
	double FDownX;
	double FDownY;
	double FMouseX;
	double FMouseY;
	double FScrollVTo;
	double FScrollHTo;
	double FTimeStart;
	double FTimeStop;
	Fmx::Types::TTimer* FAnimateTimer;
	Fmx::Types::TTimer* FDownTimer;
	TTMSFNCPlannerGridCache* FGridCache;
	TTMSFNCPlannerItemCache* FItemCache;
	TTMSFNCPlannerFullDaysItemTopCache* FFullDaysItemTopCache;
	TTMSFNCPlannerFullDaysItemBottomCache* FFullDaysItemBottomCache;
	TTMSFNCPlannerPositionsTopCache* FPositionsTopCache;
	TTMSFNCPlannerPositionsBottomCache* FPositionsBottomCache;
	TTMSFNCPlannerConflicts* FConflicts;
	TTMSFNCPlannerDisplayGroups* FDisplayGroups;
	TTMSFNCPlannerGroupsTopCache* FGroupsTopCache;
	TTMSFNCPlannerGroupsBottomCache* FGroupsBottomCache;
	TTMSFNCPlannerDisplayFullDays* FDisplayFullDays;
	TTMSFNCPlannerFullDaysTopCache* FFullDaysTopCache;
	TTMSFNCPlannerFullDaysBottomCache* FFullDaysBottomCache;
	TTMSFNCPlannerTimeLineLeftCache* FTimeLineLeftCache;
	TTMSFNCPlannerTimeLineRightCache* FTimeLineRightCache;
	TTMSFNCPlannerGridDisplayList* FGridDisplay;
	TTMSFNCPlannerItemDisplayList* FItemDisplay;
	TTMSFNCPlannerFullDaysItemTopDisplayList* FFullDaysItemTopDisplay;
	TTMSFNCPlannerFullDaysItemBottomDisplayList* FFullDaysItemBottomDisplay;
	TTMSFNCPlannerPositionsTopDisplayList* FPositionsTopDisplay;
	TTMSFNCPlannerPositionsBottomDisplayList* FPositionsBottomDisplay;
	TTMSFNCPlannerGroupsTopDisplayList* FGroupsTopDisplay;
	TTMSFNCPlannerGroupsBottomDisplayList* FGroupsBottomDisplay;
	TTMSFNCPlannerFullDaysTopDisplayList* FFullDaysTopDisplay;
	TTMSFNCPlannerFullDaysBottomDisplayList* FFullDaysBottomDisplay;
	TTMSFNCPlannerTimeLineLeftDisplayList* FTimeLineLeftDisplay;
	TTMSFNCPlannerTimeLineRightDisplayList* FTimeLineRightDisplay;
	bool FGridCaching;
	TTMSFNCPlannerItemsAppearance* FItemsAppearance;
	bool FPositionsCaching;
	bool FGroupsCaching;
	bool FFullDaysCaching;
	bool FTimeLineCaching;
	TTMSFNCPlannerTimeLine* FTimeLine;
	TTMSFNCPlannerGroupsAppearance* FGroupsAppearance;
	TTMSFNCPlannerFullDaysAppearance* FFullDaysAppearance;
	TTMSFNCPlannerPositionsAppearance* FPositionsAppearance;
	TTMSFNCPlannerTimeLineAppearance* FTimeLineAppearance;
	TTMSFNCPlannerAfterDrawGroupEvent FOnAfterDrawGroup;
	TTMSFNCPlannerAfterDrawFullDayEvent FOnAfterDrawFullDay;
	TTMSFNCPlannerBeforeDrawPositionEvent FOnBeforeDrawPosition;
	TTMSFNCPlannerBeforeDrawItemEvent FOnBeforeDrawItem;
	TTMSFNCPlannerBeforeDrawTimeEvent FOnBeforeDrawTime;
	TTMSFNCPlannerAfterDrawPositionEvent FOnAfterDrawPosition;
	TTMSFNCPlannerBeforeDrawGroupEvent FOnBeforeDrawGroup;
	TTMSFNCPlannerBeforeDrawFullDayEvent FOnBeforeDrawFullDay;
	TTMSFNCPlannerAfterDrawItemEvent FOnAfterDrawItem;
	TTMSFNCPlannerAfterDrawTimeEvent FOnAfterDrawTime;
	TTMSFNCPlannerAfterDrawCellEvent FOnAfterDrawCell;
	TTMSFNCPlannerBeforeDrawCellEvent FOnBeforeDrawCell;
	TTMSFNCPlannerGridCellAppearance* FGridCellAppearance;
	TTMSFNCPlannerBeforeDrawItemTextEvent FOnBeforeDrawItemText;
	TTMSFNCPlannerBeforeDrawTimeTextEvent FOnBeforeDrawTimeText;
	TTMSFNCPlannerAfterDrawPositionTextEvent FOnAfterDrawPositionText;
	TTMSFNCPlannerBeforeDrawGroupTextEvent FOnBeforeDrawGroupText;
	TTMSFNCPlannerAfterDrawItemTextEvent FOnAfterDrawItemText;
	TTMSFNCPlannerAfterDrawTimeTextEvent FOnAfterDrawTimeText;
	TTMSFNCPlannerAfterDrawGroupTextEvent FOnAfterDrawGroupText;
	TTMSFNCPlannerBeforeDrawPositionTextEvent FOnBeforeDrawPositionText;
	TTMSFNCPlannerSelectionAppearance* FSelectionAppearance;
	TTMSFNCPlannerMode FMode;
	TTMSFNCPlannerModeSettings* FModeSettings;
	TTMSFNCPlannerInteraction* FInteraction;
	TTMSFNCPlannerSelectTimeEvent FOnSelectTime;
	TTMSFNCPlannerBeforeInsertItemEvent FOnBeforeInsertItem;
	TTMSFNCPlannerAfterInsertItemEvent FOnAfterInsertItem;
	TTMSFNCPlannerAfterUpdateItemEvent FOnAfterUpdateItem;
	TTMSFNCPlannerBeforeUpdateItemEvent FOnBeforeUpdateItem;
	TTMSFNCPlannerAfterDrawItemTitleTextEvent FOnAfterDrawItemTitleText;
	TTMSFNCPlannerBeforeDrawItemTitleTextEvent FOnBeforeDrawItemTitleText;
	TTMSFNCPlannerAfterDrawItemTitleEvent FOnAfterDrawItemTitle;
	TTMSFNCPlannerBeforeDrawItemTitleEvent FOnBeforeDrawItemTitle;
	TTMSFNCPlannerBeforeSelectItemEvent FOnBeforeSelectItem;
	TTMSFNCPlannerAfterSelectItemEvent FOnAfterSelectItem;
	TTMSFNCPlannerItemClickEvent FOnItemClick;
	TTMSFNCPlannerItemDblClickEvent FOnItemDblClick;
	Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* FDefaultItem;
	TTMSFNCPlannerBeforeOpenUpdateDialogEvent FOnBeforeOpenUpdateDialog;
	TTMSFNCPlannerBeforeOpenInsertDialogEvent FOnBeforeOpenInsertDialog;
	TTMSFNCPlannerAfterOpenUpdateDialogEvent FOnAfterOpenUpdateDialog;
	TTMSFNCPlannerAfterOpenInsertDialogEvent FOnAfterOpenInsertDialog;
	TTMSFNCPlannerBeforeDrawCellVerticalLineEvent FOnBeforeDrawCellVerticalLine;
	TTMSFNCPlannerBeforeDrawCellHorizontalLineEvent FOnBeforeDrawCellHorizontalLine;
	TTMSFNCPlannerAfterDrawCellVerticalLineEvent FOnAfterDrawCellVerticalLine;
	TTMSFNCPlannerAfterDrawCellHorizontalLineEvent FOnAfterDrawCellHorizontalLine;
	TTMSFNCPlannerPositions* FPositions;
	TTMSFNCPlannerIsDateTimeDisabledEvent FOnIsDateTimeDisabled;
	TTMSFNCPlannerDateTimes* FCustomDateTimes;
	TTMSFNCPlannerAfterMoveItemEvent FOnAfterMoveItem;
	TTMSFNCPlannerAfterSizeItemEvent FOnAfterSizeItem;
	TTMSFNCPlannerBeforeMoveItemEvent FOnBeforeMoveItem;
	TTMSFNCPlannerBeforeSizeItemEvent FOnBeforeSizeItem;
	TTMSFNCPlannerSelectTimeEvent FOnSelectingTime;
	TTMSFNCPlannerSelectCellEvent FOnSelectCell;
	TTMSFNCPlannerSelectCellEvent FOnSelectingCell;
	TTMSFNCPlannerBeforeOpenInplaceEditorEvent FOnBeforeOpenInplaceEditor;
	TTMSFNCPlannerAfterOpenInplaceEditorEvent FOnAfterOpenInplaceEditor;
	TTMSFNCPlannerGetInplaceEditorEvent FOnGetInplaceEditor;
	Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* FBitmapContainer;
	TTMSFNCPlannerAfterDrawMoveAreaEvent FOnAfterDrawMoveArea;
	TTMSFNCPlannerAfterDrawSizeAreaEvent FOnAfterDrawSizeArea;
	TTMSFNCPlannerBeforeDrawMoveAreaEvent FOnBeforeDrawMoveArea;
	TTMSFNCPlannerBeforeDrawSizeAreaEvent FOnBeforeDrawSizeArea;
	TTMSFNCPlannerGetColumnHintEvent FOnGetPositionHint;
	TTMSFNCPlannerGetColumnHintEvent FOnGetGroupHint;
	TTMSFNCPlannerGetColumnHintEvent FOnGetFullDayHint;
	TTMSFNCPlannerGetItemHintEvent FOnGetItemHint;
	TTMSFNCPlannerGetItemTextEvent FOnGetItemText;
	TTMSFNCPlannerGetTimeTextEvent FOnGetTimeText;
	TTMSFNCPlannerGetPositionTextEvent FOnGetPositionText;
	TTMSFNCPlannerGetGroupTextEvent FOnGetGroupText;
	TTMSFNCPlannerGetItemTitleTextEvent FOnGetItemTitleText;
	TTMSFNCPlannerItemAnchorClickEvent FOnItemAnchorClick;
	TTMSFNCPlannerItemRightClickEvent FOnItemRightClick;
	TTMSFNCPlannerItemPopupMenuPrepareEvent FOnItemPopupMenuPrepare;
	TTMSFNCPlannerItemAnchorClickEvent FOnItemTitleAnchorClick;
	TTMSFNCPlannerColumnAnchorClickEvent FOnGroupAnchorClick;
	TTMSFNCPlannerColumnAnchorClickEvent FOnPositionAnchorClick;
	TTMSFNCPlannerColumnClickEvent FOnGroupClick;
	TTMSFNCPlannerColumnClickEvent FOnFullDayClick;
	TTMSFNCPlannerColumnClickEvent FOnPositionClick;
	TTMSFNCPlannerColumnDblClickEvent FOnGroupDblClick;
	TTMSFNCPlannerColumnDblClickEvent FOnFullDayDblClick;
	TTMSFNCPlannerColumnDblClickEvent FOnPositionDblClick;
	TTMSFNCPlannerBeforeDrawCurrentTimeInGridEvent FOnBeforeDrawCurrentTimeInGrid;
	TTMSFNCPlannerAfterDrawCurrentTimeInTimeLineEvent FOnAfterDrawCurrentTimeInTimeLine;
	TTMSFNCPlannerAfterDrawCurrentTimeInGridEvent FOnAfterDrawCurrentTimeInGrid;
	TTMSFNCPlannerBeforeDrawCurrentTimeInTimeLineEvent FOnBeforeDrawCurrentTimeInTimeLine;
	TTMSFNCPlannerCloseUpdateDialogEvent FOnCloseUpdateDialog;
	TTMSFNCPlannerCloseInsertDialogEvent FOnCloseInsertDialog;
	TTMSFNCPlannerCloseInplaceEditorEvent FOnCloseInplaceEditor;
	TTMSFNCPlannerScrollEvent FOnVScroll;
	TTMSFNCPlannerScrollEvent FOnHScroll;
	TTMSFNCPlannerIsDateTimeInActiveEvent FOnIsDateTimeInActive;
	TTMSFNCPlannerAfterDrawItemHelperTextEvent FOnAfterDrawItemHelperText;
	TTMSFNCPlannerAfterDrawItemHelperEvent FOnAfterDrawItemHelper;
	TTMSFNCPlannerBeforeDrawItemHelperTextEvent FOnBeforeDrawItemHelperText;
	TTMSFNCPlannerBeforeDrawItemHelperEvent FOnBeforeDrawItemHelper;
	TTMSFNCPlannerGetItemHelperTextEvent FOnGetItemHelperText;
	TTMSFNCPlannerBeforeDrawTimeStrokeEvent FOnBeforeDrawTimeStroke;
	TTMSFNCPlannerAfterDrawTimeStrokeEvent FOnAfterDrawTimeStroke;
	TTMSFNCPlannerAfterNavigateToDateTimeEvent FOnAfterNavigateToDateTime;
	TTMSFNCPlannerBeforeNavigateToDateTimeEvent FOnBeforeNavigateToDateTime;
	TTMSFNCPlannerBeforeDrawTopNavigationButtonEvent FOnBeforeDrawTopNavigationButton;
	TTMSFNCPlannerAfterDrawBottomNavigationButtonEvent FOnAfterDrawBottomNavigationButton;
	TTMSFNCPlannerAfterDrawTopNavigationButtonEvent FOnAfterDrawTopNavigationButton;
	TTMSFNCPlannerBeforeDrawBottomNavigationButtonEvent FOnBeforeDrawBottomNavigationButton;
	TTMSFNCPlannerBeforeDrawPositionEmptySpaceEvent FOnBeforeDrawPositionEmptySpace;
	TTMSFNCPlannerAfterDrawPositionEmptySpaceEvent FOnAfterDrawPositionEmptySpace;
	TTMSFNCPlannerBeforeDrawGroupEmptySpaceEvent FOnBeforeDrawGroupEmptySpace;
	TTMSFNCPlannerAfterDrawGroupEmptySpaceEvent FOnAfterDrawGroupEmptySpace;
	TTMSFNCPlannerBeforeDrawFullDayEmptySpaceEvent FOnBeforeDrawFullDayEmptySpace;
	TTMSFNCPlannerAfterDrawFullDayEmptySpaceEvent FOnAfterDrawFullDayEmptySpace;
	TTMSFNCPlannerAfterDeleteItemEvent FOnAfterDeleteItem;
	TTMSFNCPlannerBeforeDeleteItemEvent FOnBeforeDeleteItem;
	TTMSFNCPlannerMoveItemEvent FOnMoveItem;
	TTMSFNCPlannerSizeItemEvent FOnSizeItem;
	TTMSFNCPlannerItemChangedEvent FOnItemChanged;
	TTMSFNCPlannerItemChangedEvent FOnAfterItemChanged;
	TTMSFNCPlannerItemToCustomContentPanelEvent FOnItemToCustomContentPanel;
	TTMSFNCPlannerCustomContentPanelToItemEvent FOnCustomContentPanelToItem;
	TTMSFNCPlannerGetCustomContentPanelEvent FOnGetCustomContentPanel;
	TTMSFNCPlannerInitializeCustomContentPanelEvent FOnInitializeCustomContentPanel;
	TTMSFNCPlannerCustomItemEditor* FItemEditor;
	TTMSFNCPlannerIsDateTimeSubEvent FOnIsDateTimeSub;
	TTMSFNCPlannerHasDateTimeSubEvent FOnHasDateTimeSub;
	TTMSFNCPlannerIsItemDeletableEvent FOnIsItemDeletable;
	TTMSFNCPlannerBeforeDrawDeleteAreaEvent FOnBeforeDrawDeleteArea;
	TTMSFNCPlannerAfterDrawDeleteAreaEvent FOnAfterDrawDeleteArea;
	TTMSFNCPlannerAfterDrawItemLink FOnAfterDrawItemLink;
	TTMSFNCPlannerBeforeDrawItemLink FOnBeforeDrawItemLink;
	TTMSFNCPlannerItemCustomDrawMarkEvent FOnItemCustomDrawMark;
	Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* FPopupPlannerItem;
	Fmx::Tmsfncgraphicstypes::TTMSFNCAppearanceGlobalFont* FGlobalFont;
	TTMSFNCPlannerCustomItemEditorForm* FEditorForm;
	void __fastcall SetItemsAppearance(TTMSFNCPlannerItemsAppearance* const Value);
	void __fastcall SetTimeLine(TTMSFNCPlannerTimeLine* const Value);
	void __fastcall SetGroupsAppearance(TTMSFNCPlannerGroupsAppearance* const Value);
	void __fastcall SetFullDaysAppearance(TTMSFNCPlannerFullDaysAppearance* const Value);
	void __fastcall SetPositionsAppearance(TTMSFNCPlannerPositionsAppearance* const Value);
	void __fastcall SetTimeLineAppearance(TTMSFNCPlannerTimeLineAppearance* const Value);
	void __fastcall SetGridCellAppearance(TTMSFNCPlannerGridCellAppearance* const Value);
	void __fastcall SetSelectionAppearance(TTMSFNCPlannerSelectionAppearance* const Value);
	void __fastcall SetMode(const TTMSFNCPlannerMode Value);
	void __fastcall SetModeSettings(TTMSFNCPlannerModeSettings* const Value);
	void __fastcall SetInteraction(TTMSFNCPlannerInteraction* const Value);
	void __fastcall SetActiveItem(Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* const Value);
	void __fastcall SetDefaultItem(Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* const Value);
	void __fastcall SetPositions(TTMSFNCPlannerPositions* const Value);
	void __fastcall SetAdapter(TTMSFNCPlannerAdapter* const Value);
	int __fastcall GetViewRow();
	void __fastcall SetViewRow(const int Value);
	int __fastcall GetViewCol();
	void __fastcall SetViewCol(const int Value);
	void __fastcall SetItemEditor(TTMSFNCPlannerCustomItemEditor* const Value);
	void __fastcall SetBitmapContainer(Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* const Value);
	Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* __fastcall GetBitmapContainer();
	void __fastcall SetGlobalFont(Fmx::Tmsfncgraphicstypes::TTMSFNCAppearanceGlobalFont* const Value);
	void __fastcall ChangeRectForMark(Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, System::Types::TRectF &ARect);
	
protected:
	virtual bool __fastcall IsFullDayMode();
	virtual bool __fastcall CanDisplayFullDayTop();
	virtual bool __fastcall CanDisplayFullDayBottom();
	virtual System::UnicodeString __fastcall GetDocURL();
	virtual System::UnicodeString __fastcall GetVersion();
	virtual System::UnicodeString __fastcall GetHintString();
	virtual bool __fastcall HasHint();
	virtual void __fastcall ChangeDPIScale(int M, int D);
	virtual void __fastcall ApplyStyle();
	void __fastcall DestroyEditingDialog();
	virtual void __fastcall ResetToDefaultStyle();
	virtual void __fastcall DoAbsoluteChanged();
	void __fastcall ApplyInplaceEditorStyleLookup(System::TObject* Sender);
	virtual void __fastcall FixStroke(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics);
	virtual void __fastcall ProcessNavigationButtonsMove(float X, float Y);
	virtual void __fastcall ProcessNavigationButtonsDown(float X, float Y);
	virtual void __fastcall ProcessNavigationButtonsUp(float X, float Y);
	virtual void __fastcall DrawArrow(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCPlannerArrowKind AArrowKind);
	virtual void __fastcall UpdateScrollPosition(bool AForce = true);
	virtual void __fastcall Notification(System::Classes::TComponent* AComponent, System::Classes::TOperation Operation);
	virtual void __fastcall DoBeforeDrawItemLink(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* ALinkedItem, bool &ACanDrawLink);
	virtual void __fastcall DoAfterDrawItemLink(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* ALinkedItem);
	void __fastcall DoBeforeDrawPositionEmptySpace(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCPlannerPositionEmptySpace ASpace, bool &AAllow, bool &ADefaultDraw);
	void __fastcall DoAfterDrawPositionEmptySpace(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCPlannerPositionEmptySpace ASpace);
	void __fastcall DoBeforeDrawGroupEmptySpace(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCPlannerGroupEmptySpace ASpace, bool &AAllow, bool &ADefaultDraw);
	void __fastcall DoAfterDrawGroupEmptySpace(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCPlannerGroupEmptySpace ASpace);
	void __fastcall DoBeforeDrawFullDayEmptySpace(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCPlannerFullDayEmptySpace ASpace, bool &AAllow, bool &ADefaultDraw);
	void __fastcall DoAfterDrawFullDayEmptySpace(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCPlannerFullDayEmptySpace ASpace);
	void __fastcall DoBeforeDrawTopNavigationButton(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCPlannerNavigationButton AButton, TTMSFNCPlannerNavigationButtonState AButtonState, bool &AAllow, bool &ADefaultDraw);
	void __fastcall DoBeforeDrawBottomNavigationButton(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCPlannerNavigationButton AButton, TTMSFNCPlannerNavigationButtonState AButtonState, bool &AAllow, bool &ADefaultDraw);
	void __fastcall DoAfterDrawTopNavigationButton(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCPlannerNavigationButton AButton, TTMSFNCPlannerNavigationButtonState AButtonState);
	void __fastcall DoAfterDrawBottomNavigationButton(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCPlannerNavigationButton AButton, TTMSFNCPlannerNavigationButtonState AButtonState);
	virtual void __fastcall DoBeforeDrawCurrentTimeInTimeLine(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItemKind AKind, double AValue, System::TDateTime ACurrentTime, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoAfterDrawCurrentTimeInTimeLine(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItemKind AKind, double AValue, System::TDateTime ACurrentTime);
	virtual void __fastcall DoBeforeDrawCurrentTimeInGrid(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, double AValue, System::TDateTime ACurrentTime, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoAfterDrawCurrentTimeInGrid(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, double AValue, System::TDateTime ACurrentTime);
	virtual void __fastcall DoBeforeDrawPosition(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int APosition, Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItemKind AKind, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoAfterDrawPosition(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int APosition, Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItemKind AKind);
	virtual void __fastcall DoBeforeDrawCell(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int ACol, int ARow, System::TDateTime AStartTime, System::TDateTime AEndTime, int APosition, Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItemKind AKind, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoAfterDrawCell(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int ACol, int ARow, System::TDateTime AStartTime, System::TDateTime AEndTime, int APosition, Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItemKind AKind);
	virtual void __fastcall DoBeforeDrawCellVerticalLine(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int ACol, int ARow, System::TDateTime AStartTime, System::TDateTime AEndTime, int APosition, Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItemKind AKind, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoAfterDrawCellVerticalLine(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int ACol, int ARow, System::TDateTime AStartTime, System::TDateTime AEndTime, int APosition, Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItemKind AKind);
	virtual void __fastcall DoBeforeDrawCellHorizontalLine(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, bool ASubUnit, int ACol, int ARow, System::TDateTime ADateTime, int APosition, Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItemKind AKind, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoAfterDrawCellHorizontalLine(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, bool ASubUnit, int ACol, int ARow, System::TDateTime ADateTime, int APosition, Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItemKind AKind);
	virtual void __fastcall DoBeforeDrawGroup(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AGroup, int AStartPosition, int AEndPosition, Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItemKind AKind, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoAfterDrawGroup(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AGroup, int AStartPosition, int AEndPosition, Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItemKind AKind);
	virtual void __fastcall DoBeforeDrawFullDay(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AFullDay, int AStartPosition, int AEndPosition, Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItemKind AKind, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoAfterDrawFullDay(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AFullDay, int AStartPosition, int AEndPosition, Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItemKind AKind);
	virtual void __fastcall DoBeforeDrawTime(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, double AValue, int ARow, Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItemKind AKind, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoAfterDrawTime(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, double AValue, int ARow, Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItemKind AKind);
	virtual void __fastcall DoBeforeDrawTimeStroke(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, double AValue, bool ASubUnit, int ARow, Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItemKind AKind, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoAfterDrawTimeStroke(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, double AValue, bool ASubUnit, int ARow, Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItemKind AKind);
	virtual void __fastcall DoBeforeDrawItem(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoAfterDrawItem(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem);
	virtual void __fastcall DoBeforeDrawMoveArea(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoAfterDrawMoveArea(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem);
	virtual void __fastcall DoBeforeDrawSizeArea(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoAfterDrawSizeArea(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem);
	virtual void __fastcall DoBeforeDrawDeleteArea(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoAfterDrawDeleteArea(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem);
	virtual void __fastcall DoBeforeDrawItemTitle(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, System::UnicodeString ATitle, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoAfterDrawItemTitle(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, System::UnicodeString ATitle);
	virtual void __fastcall DoGetPositionText(int APosition, Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItemKind AKind, System::UnicodeString &AText);
	virtual void __fastcall DoBeforeDrawPositionText(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int APosition, Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItemKind AKind, System::UnicodeString AText, bool &AAllow);
	virtual void __fastcall DoAfterDrawPositionText(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int APosition, Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItemKind AKind, System::UnicodeString AText);
	virtual void __fastcall DoGetGroupText(int AGroup, Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItemKind AKind, System::UnicodeString &AText);
	virtual void __fastcall DoBeforeDrawGroupText(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AGroup, int AStartPosition, int AEndPosition, Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItemKind AKind, System::UnicodeString AText, bool &AAllow);
	virtual void __fastcall DoAfterDrawGroupText(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AGroup, int AStartPosition, int AEndPosition, Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItemKind AKind, System::UnicodeString AText);
	virtual void __fastcall DoGetTimeText(double AValue, int ARow, bool ASubUnit, Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItemKind AKind, System::UnicodeString &AText);
	virtual void __fastcall DoBeforeDrawTimeText(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, double AValue, int ARow, bool ASubUnit, Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItemKind AKind, System::UnicodeString AText, bool &AAllow);
	virtual void __fastcall DoAfterDrawTimeText(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, double AValue, int ARow, bool ASubUnit, Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItemKind AKind, System::UnicodeString AText);
	void __fastcall DoGetGroupHint(int AGroupIndex, Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItemKind AKind, System::UnicodeString &AHint);
	void __fastcall DoGetFullDayHint(int AFullDayIndex, Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItemKind AKind, System::UnicodeString &AHint);
	void __fastcall DoGetPositionHint(int APosition, Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItemKind AKind, System::UnicodeString &AHint);
	virtual void __fastcall DoGetItemHint(Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, System::UnicodeString &AHint);
	virtual void __fastcall DoGetItemText(Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, TTMSFNCPlannerGetTextMode AMode, System::UnicodeString &AText);
	virtual void __fastcall DoBeforeDrawItemText(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, System::UnicodeString AText, bool &AAllow);
	virtual void __fastcall DoAfterDrawItemText(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, System::UnicodeString AText);
	virtual void __fastcall DoGetItemTitleText(Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, TTMSFNCPlannerGetTextMode AMode, System::UnicodeString &ATitle);
	virtual void __fastcall DoBeforeDrawItemTitleText(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, System::UnicodeString ATitle, bool &AAllow);
	virtual void __fastcall DoAfterDrawItemTitleText(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, System::UnicodeString ATitle);
	virtual void __fastcall DoGetCustomContentPanel(Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, Fmx::Controls::TControl* &AContentPanel);
	virtual void __fastcall DoInitializeCustomContentPanel(Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, Fmx::Controls::TControl* AContentPanel);
	virtual void __fastcall DoItemToCustomContentPanel(Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, Fmx::Controls::TControl* AContentPanel);
	virtual void __fastcall DoCustomContentPanelToItem(Fmx::Controls::TControl* AContentPanel, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem);
	virtual void __fastcall DoSelectTime(System::TDateTime AStartTime, System::TDateTime AEndTime, int APosition);
	virtual void __fastcall DoSelectingTime(System::TDateTime AStartTime, System::TDateTime AEndTime, int APosition);
	virtual void __fastcall DoSelectCell(const Fmx::Tmsfncplannerbase::TTMSFNCPlannerCell &AStartCell, const Fmx::Tmsfncplannerbase::TTMSFNCPlannerCell &AEndCell);
	virtual void __fastcall DoSelectingCell(const Fmx::Tmsfncplannerbase::TTMSFNCPlannerCell &AStartCell, const Fmx::Tmsfncplannerbase::TTMSFNCPlannerCell &AEndCell);
	virtual void __fastcall DoIsItemDeletable(Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, bool &ADeletable);
	virtual void __fastcall DoIsDateTimeDisabled(System::TDateTime ADateTime, int APosition, bool &ADisabled);
	virtual void __fastcall DoIsDateTimeInActive(System::TDateTime ADateTime, int APosition, bool &AInActive);
	virtual void __fastcall DoIsDateTimeSub(System::TDateTime ADateTime, bool &AIsSub);
	virtual void __fastcall DoHasDateTimeSub(bool &AHasSub);
	virtual void __fastcall DoBeforeInsertItem(System::TDateTime AStartTime, System::TDateTime AEndTime, int APosition, System::UnicodeString &ATitle, System::UnicodeString &AText, bool &ACanInsert);
	virtual void __fastcall DoAfterInsertItem(System::TDateTime AStartTime, System::TDateTime AEndTime, int APosition, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem);
	virtual void __fastcall DoBeforeOpenInsertDialog(System::TDateTime AStartTime, System::TDateTime AEndTime, int APosition, bool &ACanOpen);
	virtual void __fastcall DoAfterOpenInsertDialog(System::TDateTime AStartTime, System::TDateTime AEndTime, int APosition);
	virtual void __fastcall DoBeforeOpenUpdateDialog(System::TDateTime AStartTime, System::TDateTime AEndTime, int APosition, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, bool &ACanOpen);
	virtual void __fastcall DoAfterOpenUpdateDialog(System::TDateTime AStartTime, System::TDateTime AEndTime, int APosition, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem);
	virtual void __fastcall DoCloseInsertDialog(System::TDateTime AStartTime, System::TDateTime AEndTime, int APosition, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, bool ACancelled, bool &ACanClose);
	virtual void __fastcall DoCloseUpdateDialog(System::TDateTime AStartTime, System::TDateTime AEndTime, int APosition, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, bool ACancelled, bool &ACanClose);
	virtual void __fastcall DoBeforeOpenInplaceEditor(System::TDateTime AStartTime, System::TDateTime AEndTime, int APosition, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, bool &ACanOpen);
	virtual void __fastcall DoAfterOpenInplaceEditor(System::TDateTime AStartTime, System::TDateTime AEndTime, int APosition, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, Fmx::Controls::TControl* AInplaceEditor, const System::Types::TRectF &AInplaceEditorRect);
	virtual void __fastcall DoCloseInplaceEditor(System::TDateTime AStartTime, System::TDateTime AEndTime, int APosition, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, bool ACancelled, bool &ACanClose);
	virtual void __fastcall DoBeforeUpdateItem(System::TDateTime AStartTime, System::TDateTime AEndTime, int APosition, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, System::UnicodeString &ATitle, System::UnicodeString &AText, bool &ACanUpdate);
	virtual void __fastcall DoAfterUpdateItem(System::TDateTime AStartTime, System::TDateTime AEndTime, int APosition, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem);
	virtual void __fastcall DoItemPopupMenuPrepare(Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, Fmx::Menus::TPopupMenu* APopupMenu);
	virtual void __fastcall DoItemRightClick(Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem);
	virtual void __fastcall DoItemAnchorClick(Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, System::UnicodeString AAnchor);
	virtual void __fastcall DoItemTitleAnchorClick(Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, System::UnicodeString AAnchor);
	virtual void __fastcall DoGroupAnchorClick(int AGroupIndex, System::UnicodeString AAnchor);
	virtual void __fastcall DoPositionAnchorClick(int APosition, System::UnicodeString AAnchor);
	virtual void __fastcall DoGroupClick(int AGroupIndex, Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItemKind AKind);
	virtual void __fastcall DoFullDayClick(int AFullDayIndex, Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItemKind AKind);
	virtual void __fastcall DoPositionClick(int APosition, Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItemKind AKind);
	virtual void __fastcall DoGroupDblClick(int AGroupIndex, Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItemKind AKind);
	virtual void __fastcall DoFullDayDblClick(int AFullDayIndex, Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItemKind AKind);
	virtual void __fastcall DoPositionDblClick(int APosition, Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItemKind AKind);
	virtual void __fastcall CallBeforeMoveLinkedItems(Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, System::TDateTime ADiffStartDateTime, System::TDateTime ADiffEndDateTime, int ADiffResource);
	virtual void __fastcall CallBeforeSizeLinkedItems(Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, System::TDateTime ADiffStartDateTime, System::TDateTime ADiffEndDateTime, int ADiffResource);
	virtual void __fastcall CallBeforeUpdateLinkedItems(Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, System::TDateTime ADiffStartDateTime, System::TDateTime ADiffEndDateTime, int ADiffResource);
	virtual void __fastcall CallMoveLinkedItems(Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem);
	virtual void __fastcall CallSizeLinkedItems(Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem);
	virtual void __fastcall CallAfterMoveLinkedItems(Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem);
	virtual void __fastcall CallAfterSizeLinkedItems(Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem);
	virtual void __fastcall CallAfterUpdateLinkedItems(Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem);
	virtual void __fastcall DoBeforeMoveItem(Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, System::TDateTime &ANewStartTime, System::TDateTime &ANewEndTime, int &ANewPosition, bool &ACanMove);
	virtual void __fastcall DoBeforeSizeItem(Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, System::TDateTime &ANewStartTime, System::TDateTime &ANewEndTime, int &ANewPosition, bool &ACanSize);
	virtual void __fastcall DoAfterMoveItem(Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, System::TDateTime ANewStartTime, System::TDateTime ANewEndTime, int ANewPosition);
	virtual void __fastcall DoAfterSizeItem(Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, System::TDateTime ANewStartTime, System::TDateTime ANewEndTime, int ANewPosition);
	virtual void __fastcall DoMoveItem(Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, System::TDateTime ANewStartTime, System::TDateTime ANewEndTime, int ANewPosition);
	virtual void __fastcall DoSizeItem(Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, System::TDateTime ANewStartTime, System::TDateTime ANewEndTime, int ANewPosition);
	virtual void __fastcall DoItemChanged(Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem);
	virtual void __fastcall DoAfterItemChanged(Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem);
	virtual void __fastcall DoItemClick(Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem);
	virtual void __fastcall DoItemDblClick(Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem);
	virtual void __fastcall DoBeforeSelectItem(Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, bool &ACanSelect);
	virtual void __fastcall DoBeforeDeleteItem(Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, TTMSFNCPlannerItemDeleteMode AMode, bool &ACanDelete);
	virtual void __fastcall DoBeforeNavigateToDateTime(TTMSFNCPlannerNavigationDirection ADirection, System::TDateTime ACurrentDateTime, System::TDateTime &ANewDateTime, bool &AAllow);
	virtual void __fastcall DoAfterNavigateToDateTime(TTMSFNCPlannerNavigationDirection ADirection, System::TDateTime ACurrentDateTime, System::TDateTime ANewDateTime);
	virtual void __fastcall DoAfterSelectItem(Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem);
	virtual void __fastcall DoAfterDeleteItem(int AItemIndex, System::UnicodeString ADBKey, TTMSFNCPlannerItemDeleteMode AMode);
	virtual void __fastcall DoHScroll(float APosition);
	virtual void __fastcall DoVScroll(float APosition);
	virtual void __fastcall DoBeforeDrawItemHelper(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, bool AIsStartTime, System::TDateTime AValue, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoBeforeDrawItemHelperText(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, bool AIsStartTime, System::TDateTime AValue, System::UnicodeString AText, bool &AAllow);
	virtual void __fastcall DoAfterDrawItemHelper(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, bool AIsStartTime, System::TDateTime AValue);
	virtual void __fastcall DoAfterDrawItemHelperText(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, bool AIsStartTime, System::TDateTime AValue, System::UnicodeString AText);
	virtual void __fastcall DoGetItemHelperText(Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, bool AIsStartTime, System::TDateTime AValue, System::UnicodeString &AText);
	virtual void __fastcall DoGetInplaceEditor(System::TDateTime AStartTime, System::TDateTime AEndTime, int APosition, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, TTMSFNCPlannerInplaceEditorClass &AInplaceEditorClass);
	virtual void __fastcall CloseInplaceEditor(bool ACancel, bool AFlagClose = false);
	virtual void __fastcall DoCustomizeItemRect(Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, int APosition, double &AX, double &AY, double &AWidth, double &AHeight);
	virtual void __fastcall DoItemCustomDrawMark(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItemMarkType AMarkType, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem);
	void __fastcall Animate(System::TObject* Sender);
	void __fastcall DownTime(System::TObject* Sender);
	virtual void __fastcall StopAnimationTimer();
	virtual void __fastcall HandleDblClick(float X, float Y);
	virtual void __fastcall HandleSelection(const Fmx::Tmsfncplannerbase::TTMSFNCPlannerCell &AStartCell, const Fmx::Tmsfncplannerbase::TTMSFNCPlannerCell &AEndCell);
	virtual void __fastcall HandleCellSelection(bool ASelecting = false);
	virtual void __fastcall HandleDateTimeNavigation(TTMSFNCPlannerNavigationDirection ADirection, System::TDateTime ACurrentDateTime, System::TDateTime ANewDateTime);
	virtual void __fastcall HandleItemInsert(bool ADialog);
	virtual void __fastcall HandleItemDelete(Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, TTMSFNCPlannerItemDeleteMode AMode);
	virtual void __fastcall HandleItemEditing(Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem* ACacheItem = (Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem*)(0x0));
	virtual void __fastcall ProcessSelection(TTMSFNCPlannerInteractionDirection ADirection, System::Classes::TShiftState AShift, int AStepCol, int AStepRow);
	virtual void __fastcall BuildDisplay(TTMSFNCPlannerCache* ACache, TTMSFNCPlannerDisplayList* ADisplay);
	virtual void __fastcall UpdateCalculations(bool AForce = false);
	virtual void __fastcall RemoveLinkedItem(Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem);
	virtual void __fastcall NeedsConflictsUpdate(Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem = (Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem*)(0x0))/* overload */;
	virtual void __fastcall UpdateAutoSizing();
	virtual void __fastcall UpdateColumnRowCalculations();
	virtual void __fastcall UpdatePositionsCache();
	virtual void __fastcall UpdatePositionCache(TTMSFNCPlannerCache* ACache)/* overload */;
	virtual void __fastcall UpdateGroupsCache();
	virtual void __fastcall UpdateGroupCache(TTMSFNCPlannerCache* ACache)/* overload */;
	virtual void __fastcall UpdateFullDaysCache();
	virtual void __fastcall UpdateFullDayCache(TTMSFNCPlannerCache* ACache)/* overload */;
	virtual void __fastcall UpdateTimeLinesCache();
	virtual void __fastcall UpdateTimeLineCache(TTMSFNCPlannerCache* ACache)/* overload */;
	virtual void __fastcall UpdateGridCache();
	virtual void __fastcall UpdateItemCache();
	virtual void __fastcall UpdateFullDaysItemsCache();
	virtual void __fastcall UpdateFullDaysItemCache(TTMSFNCPlannerCache* ACache)/* overload */;
	virtual void __fastcall RemoveItemsFromCache(Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItemList* AList, int APosition = 0xffffffff);
	virtual void __fastcall RemoveAllItemsFromCache();
	virtual void __fastcall UpdateDisplay();
	virtual void __fastcall UpdatePositionsDisplay();
	virtual void __fastcall UpdateGroupsDisplay();
	virtual void __fastcall UpdateFullDaysDisplay();
	virtual void __fastcall UpdateTimeLineDisplay();
	virtual void __fastcall UpdateGridDisplay();
	virtual void __fastcall UpdateItemDisplay();
	virtual void __fastcall UpdateFullDaysItemDisplay();
	virtual void __fastcall UpdateInplaceEditorPosition();
	virtual void __fastcall VerticalScrollPositionChanged();
	virtual void __fastcall HorizontalScrollPositionChanged();
	virtual void __fastcall DrawItem(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, int ACacheIndex, bool ACaching = false);
	virtual void __fastcall DrawFullDaysItem(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, int ACacheIndex, Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItemKind AKind);
	virtual void __fastcall DrawCell(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int ACol, int ARow, System::TDateTime AStartTime, System::TDateTime AEndTime, int APosition, Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItemKind AKind);
	virtual void __fastcall DrawGroup(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AGroup, int AStartPosition, int AEndPosition, Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItemKind AKind);
	virtual void __fastcall DrawFullDay(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AFullDay, int AStartPosition, int AEndPosition, Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItemKind AKind);
	virtual void __fastcall DrawPosition(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int APosition, Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItemKind AKind);
	virtual void __fastcall DrawTime(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, double AValue, int ARow, Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItemKind AKind);
	virtual void __fastcall DrawSelection(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics);
	virtual void __fastcall DrawItems(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics);
	virtual void __fastcall DrawFullDaysItems(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics);
	virtual void __fastcall DrawItemLinks(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics);
	virtual void __fastcall DrawItemHelpers(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics);
	virtual void __fastcall DoAfterDrawGrid(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	virtual void __fastcall DoAfterDrawTimeLine(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, bool ALeft, const System::Types::TRectF &ARect);
	virtual void __fastcall DrawGrid(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics);
	virtual void __fastcall DrawPositions(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics);
	virtual void __fastcall DrawGroups(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics);
	virtual void __fastcall DrawFullDays(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics);
	virtual void __fastcall DrawTimeLine(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics);
	virtual void __fastcall DrawCurrentTimeInTimeLine(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, bool ALeft);
	virtual void __fastcall DrawCurrentTimeInGrid(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics);
	virtual void __fastcall DrawBorders(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics);
	virtual void __fastcall DrawNavigationButtons(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics);
	virtual void __fastcall DrawEmptySpaces(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics);
	virtual void __fastcall DrawDisplay(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, TTMSFNCPlannerDisplayList* ADisplay);
	virtual void __fastcall HandleMouseEnter();
	virtual void __fastcall HandleMouseLeave();
	virtual void __fastcall HandleMouseDown(System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall HandleMouseMove(System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall HandleMouseUp(System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall HandleKeyDown(System::Word &Key, System::Classes::TShiftState Shift);
	virtual void __fastcall HandleDialogKey(System::Word &Key, System::Classes::TShiftState Shift);
	virtual void __fastcall HandleKeyUp(System::Word &Key, System::Classes::TShiftState Shift);
	virtual void __fastcall HandleMouseWheel(System::Classes::TShiftState Shift, int WheelDelta, bool &Handled);
	virtual void __fastcall StartDateEditChanged(System::TObject* Sender);
	virtual void __fastcall EndDateEditChanged(System::TObject* Sender);
	virtual void __fastcall StartTimeEditChanged(System::TObject* Sender);
	virtual void __fastcall EndTimeEditChanged(System::TObject* Sender);
	virtual void __fastcall EditingDialogCancel(System::TObject* Sender);
	virtual void __fastcall EditingDialogRemove(System::TObject* Sender);
	virtual void __fastcall EditingDialogValidate(System::TObject* Sender);
	virtual void __fastcall DirtyItem(Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem);
	HIDESBASE virtual void __fastcall ShowHint(Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, double X, double Y);
	virtual void __fastcall UpdateLinkedItems(Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, System::TDateTime ADiffStartTime, System::TDateTime ADiffEndTime, int ADiffPosition);
	virtual void __fastcall ProcessNavigation(TTMSFNCPlannerInteractionDirection ADirection, System::Classes::TShiftState AShift, int AStepCol, int AStepRow);
	virtual void __fastcall HandleItemKeyboardInteraction(Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, TTMSFNCPlannerInteractionDirection ADirection, System::Classes::TShiftState AShift, int AColValue, int ARowValue, const Fmx::Tmsfncplannerbase::TTMSFNCPlannerCell &AStartCell, const Fmx::Tmsfncplannerbase::TTMSFNCPlannerCell &AEndCell);
	virtual void __fastcall HandleSelectItem(Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, bool AMultiSelect = false)/* overload */;
	virtual void __fastcall HandleUnselectItem(Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem);
	virtual void __fastcall HandleSelectLinkedItems(Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, bool AMultiSelect = false);
	virtual void __fastcall UpdateSizeHandlers();
	virtual void __fastcall UpdateDeleteHandler();
	void __fastcall GetNewDateTimeAndResource(Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItemLinkType ALinkType, System::TDateTime ADiffStartDateTime, System::TDateTime ADiffEndDateTime, System::TDateTime &AStartDateTime, System::TDateTime &AEndDateTime);
	virtual void __fastcall SetEditingDialogTabOrder();
	virtual bool __fastcall ColumnStretchingActive();
	virtual bool __fastcall AllowDesktopSize();
	virtual bool __fastcall HandleAfterMouseEvents();
	virtual bool __fastcall HandleAfterKeyboardEvents();
	virtual bool __fastcall IsMobile();
	virtual bool __fastcall AllowMobileSize();
	virtual bool __fastcall AllowDesktopMove();
	virtual bool __fastcall AllowMobileMove();
	virtual bool __fastcall AllowDesktopDelete();
	virtual bool __fastcall AllowMobileDelete();
	virtual bool __fastcall CanNavigate();
	virtual System::TDateTime __fastcall GetNextDateTime();
	virtual System::TDateTime __fastcall GetPreviousDateTime();
	virtual System::TDateTime __fastcall CurrentTime();
	virtual bool __fastcall HandleItemMouseInteraction(Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, const Fmx::Tmsfncplannerbase::TTMSFNCPlannerCell &AStartCell, const Fmx::Tmsfncplannerbase::TTMSFNCPlannerCell &AEndCell, const Fmx::Tmsfncplannerbase::TTMSFNCPlannerCell &ANewStartCell, const Fmx::Tmsfncplannerbase::TTMSFNCPlannerCell &ANewEndCell, TTMSFNCPlannerMouseInteractionMode AMode);
	virtual System::UnicodeString __fastcall GetModeName(TTMSFNCPlannerMode AMode);
	virtual System::Types::TRectF __fastcall GetInplaceEditorRect(Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem* ACacheItem, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem);
	virtual System::Types::TRectF __fastcall GetFirstRect(Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem);
	virtual System::Types::TRectF __fastcall GetLastRect(Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem);
	virtual bool __fastcall CanMoveCacheItem(Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem* ACacheItem);
	virtual bool __fastcall CanSizeCacheItemEndTime(Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem* ACacheItem);
	virtual bool __fastcall CanSizeCacheItemStartTime(Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem* ACacheItem);
	virtual bool __fastcall CanDeleteCacheItem(Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem* ACacheItem);
	virtual System::Types::TRectF __fastcall GetCacheItemEndTimeSizeRect(Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem* ACacheItem);
	virtual System::Types::TRectF __fastcall GetCacheItemStartTimeSizeRect(Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem* ACacheItem);
	virtual System::Types::TRectF __fastcall GetCacheItemMoveRect(Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem* ACacheItem);
	virtual System::Types::TRectF __fastcall GetCacheItemTextRect(Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem* ACacheItem);
	virtual System::Types::TRectF __fastcall GetCacheItemTitleRect(Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem* ACacheItem);
	virtual System::Types::TRectF __fastcall GetAnchorItemTitleRect(Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem* ACacheItem);
	virtual System::Types::TRectF __fastcall GetCacheItemDeleteRect(Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem* ACacheItem);
	virtual System::Types::TRectF __fastcall GetCacheItemRect(Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem* ACacheItem);
	virtual int __fastcall GetMaxPositionResources();
	virtual bool __fastcall CreateAndPrepareBitmap(Fmx::Graphics::TBitmap* &ABitmap, double AWidth, double AHeight);
	virtual TTMSFNCPlannerSceneDrawingScale __fastcall GetSceneDrawingScale();
	virtual Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* __fastcall GetDefaultItem();
	virtual System::UnicodeString __fastcall GetPositionFormat();
	virtual System::UnicodeString __fastcall GetPositionText(int APosition);
	virtual System::UnicodeString __fastcall GetPositionResourceText(int APosition);
	virtual System::UnicodeString __fastcall GetPositionResourceHint(int APosition);
	virtual System::UnicodeString __fastcall GetGroupText(int AGroup);
	virtual System::UnicodeString __fastcall GetGroupHint(int AGroup);
	virtual System::UnicodeString __fastcall GetFullDayHint(int AFullDay);
	virtual bool __fastcall IsDateTimeSub(System::TDateTime ADateTime);
	virtual bool __fastcall HasDateTimeSub();
	virtual System::UnicodeString __fastcall GetDateTimeText(System::TDateTime ADateTime, bool ASub);
	virtual bool __fastcall GetResourcesAvailable();
	virtual System::Classes::TStringList* __fastcall GetResources();
	virtual double __fastcall GetMaxDisplayUnitValue();
	virtual System::TDateTime __fastcall GetDisplayUnitValue();
	virtual System::TDateTime __fastcall GetDisplayOffsetValue();
	virtual double __fastcall GetPositionsTopSize();
	virtual double __fastcall GetPositionsBottomSize();
	virtual double __fastcall GetGroupsTopSize();
	virtual double __fastcall GetGroupsBottomSize();
	virtual double __fastcall GetFullDaysTopSize();
	virtual double __fastcall GetFullDaysBottomSize();
	virtual double __fastcall GetTimeLineLeftSize();
	virtual double __fastcall GetTimeLineRightSize();
	virtual System::Types::TRectF __fastcall GetCalculationRect();
	virtual System::Types::TRectF __fastcall GetGroupsTopRect();
	virtual System::Types::TRectF __fastcall GetFullDaysTopRect();
	System::UnicodeString __fastcall XYToGroupAnchorCache(float AX, float AY, TTMSFNCPlannerGroupsCache* ACache, int &AIndex);
	System::UnicodeString __fastcall XYToPositionAnchorCache(float AX, float AY, TTMSFNCPlannerPositionsCache* ACache, int &AIndex);
	Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem* __fastcall XYToGroupCache(float AX, float AY, TTMSFNCPlannerGroupsCache* ACache);
	Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem* __fastcall XYToFullDayCache(float AX, float AY, TTMSFNCPlannerFullDaysCache* ACache);
	Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem* __fastcall XYToPositionCache(float AX, float AY, TTMSFNCPlannerPositionsCache* ACache);
	virtual System::TDateTime __fastcall MaxPositionDateTime(System::TDateTime ADateTime, bool AEndDatetime, int APosition);
	virtual System::TDateTime __fastcall CalculatePositionDateTime(System::TDateTime ADateTime, int APosition);
	virtual System::Types::TRectF __fastcall GetGroupsBottomRect();
	virtual System::Types::TRectF __fastcall GetFullDaysBottomRect();
	virtual System::Types::TRectF __fastcall GetPositionsTopRect();
	virtual System::Types::TRectF __fastcall GetPositionTopLeftEmptyRect();
	virtual System::Types::TRectF __fastcall GetPositionBottomLeftEmptyRect();
	virtual System::Types::TRectF __fastcall GetPositionBottomRightEmptyRect();
	virtual System::Types::TRectF __fastcall GetPositionTopRightEmptyRect();
	virtual System::Types::TRectF __fastcall GetGroupTopLeftEmptyRect();
	virtual System::Types::TRectF __fastcall GetGroupBottomLeftEmptyRect();
	virtual System::Types::TRectF __fastcall GetGroupBottomRightEmptyRect();
	virtual System::Types::TRectF __fastcall GetGroupTopRightEmptyRect();
	virtual System::Types::TRectF __fastcall GetFullDayTopLeftEmptyRect();
	virtual System::Types::TRectF __fastcall GetFullDayBottomLeftEmptyRect();
	virtual System::Types::TRectF __fastcall GetFullDayBottomRightEmptyRect();
	virtual System::Types::TRectF __fastcall GetFullDayTopRightEmptyRect();
	virtual System::Types::TRectF __fastcall GetTopLeftNavigationButtonRect();
	virtual System::Types::TRectF __fastcall GetTopRightNavigationButtonRect();
	virtual System::Types::TRectF __fastcall GetBottomLeftNavigationButtonRect();
	virtual System::Types::TRectF __fastcall GetBottomRightNavigationButtonRect();
	virtual System::Types::TRectF __fastcall GetPositionsBottomRect();
	virtual System::Types::TRectF __fastcall GetTimeLineLeftRect();
	virtual System::Types::TRectF __fastcall GetTimeLineRightRect();
	virtual int __fastcall GetCacheWidth();
	virtual int __fastcall GetCacheHeight();
	virtual System::UnicodeString __fastcall GetDisplaySubUnitFormat();
	virtual System::UnicodeString __fastcall GetDisplayUnitFormat();
	virtual int __fastcall GetNumDays();
	virtual TTMSFNCPlannerMode __fastcall GetDisplayMode();
	virtual Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* __fastcall GetActiveItem();
	virtual void __fastcall UpdateActiveItem(Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem);
	virtual void __fastcall DrawItemMarks(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem);
	virtual void __fastcall SetFonts(Fmx::Tmsfncgraphicstypes::TTMSFNCAppearanceGlobalFontType ASetType);
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCAppearanceGlobalFont* GlobalFont = {read=FGlobalFont, write=SetGlobalFont};
	__property TTMSFNCPlannerAdapter* Adapter = {read=FAdapter, write=SetAdapter};
	__property TTMSFNCPlannerCustomItemEditor* ItemEditor = {read=FItemEditor, write=SetItemEditor};
	__property TTMSFNCPlannerSelectedItems* SelectedItems = {read=FSelectedItems};
	__property Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* ActiveItem = {read=FActiveItem, write=SetActiveItem};
	__property Fmx::Tmsfncplannerbase::TTMSFNCPlannerSelection Selection = {read=FSelection};
	__property bool NeedsInitialization = {read=FNeedsInitialization, write=FNeedsInitialization, nodefault};
	__property bool GridCaching = {read=FGridCaching, write=FGridCaching, default=0};
	__property bool PositionsCaching = {read=FPositionsCaching, write=FPositionsCaching, default=0};
	__property bool GroupsCaching = {read=FGroupsCaching, write=FGroupsCaching, default=0};
	__property bool FullDaysCaching = {read=FFullDaysCaching, write=FFullDaysCaching, default=0};
	__property bool TimeLineCaching = {read=FTimeLineCaching, write=FTimeLineCaching, default=0};
	__property TTMSFNCPlannerItemsAppearance* ItemsAppearance = {read=FItemsAppearance, write=SetItemsAppearance};
	__property TTMSFNCPlannerGridCellAppearance* GridCellAppearance = {read=FGridCellAppearance, write=SetGridCellAppearance};
	__property TTMSFNCPlannerTimeLineAppearance* TimeLineAppearance = {read=FTimeLineAppearance, write=SetTimeLineAppearance};
	__property TTMSFNCPlannerSelectionAppearance* SelectionAppearance = {read=FSelectionAppearance, write=SetSelectionAppearance};
	__property TTMSFNCPlannerPositionsAppearance* PositionsAppearance = {read=FPositionsAppearance, write=SetPositionsAppearance};
	__property TTMSFNCPlannerPositions* Positions = {read=FPositions, write=SetPositions};
	__property TTMSFNCPlannerGroupsAppearance* GroupsAppearance = {read=FGroupsAppearance, write=SetGroupsAppearance};
	__property TTMSFNCPlannerFullDaysAppearance* FullDaysAppearance = {read=FFullDaysAppearance, write=SetFullDaysAppearance};
	__property TTMSFNCPlannerTimeLine* TimeLine = {read=FTimeLine, write=SetTimeLine};
	__property TTMSFNCPlannerModeSettings* ModeSettings = {read=FModeSettings, write=SetModeSettings};
	__property Fmx::Menus::TPopupMenu* ItemPopup = {read=FItemPopup, write=FItemPopup};
	__property TTMSFNCPlannerAfterDrawTimeLineEvent OnAfterDrawTimeLine = {read=FOnAfterDrawTimeLine, write=FOnAfterDrawTimeLine};
	__property TTMSFNCPlannerAfterDrawGridEvent OnAfterDrawGrid = {read=FOnAfterDrawGrid, write=FOnAfterDrawGrid};
	__property TTMSFNCPlannerBeforeDrawItemLink OnBeforeDrawItemLink = {read=FOnBeforeDrawItemLink, write=FOnBeforeDrawItemLink};
	__property TTMSFNCPlannerAfterDrawItemLink OnAfterDrawItemLink = {read=FOnAfterDrawItemLink, write=FOnAfterDrawItemLink};
	__property TTMSFNCPlannerBeforeDrawPositionEmptySpaceEvent OnBeforeDrawPositionEmptySpace = {read=FOnBeforeDrawPositionEmptySpace, write=FOnBeforeDrawPositionEmptySpace};
	__property TTMSFNCPlannerAfterDrawPositionEmptySpaceEvent OnAfterDrawPositionEmptySpace = {read=FOnAfterDrawPositionEmptySpace, write=FOnAfterDrawPositionEmptySpace};
	__property TTMSFNCPlannerBeforeDrawGroupEmptySpaceEvent OnBeforeDrawGroupEmptySpace = {read=FOnBeforeDrawGroupEmptySpace, write=FOnBeforeDrawGroupEmptySpace};
	__property TTMSFNCPlannerAfterDrawGroupEmptySpaceEvent OnAfterDrawGroupEmptySpace = {read=FOnAfterDrawGroupEmptySpace, write=FOnAfterDrawGroupEmptySpace};
	__property TTMSFNCPlannerBeforeDrawFullDayEmptySpaceEvent OnBeforeDrawFullDayEmptySpace = {read=FOnBeforeDrawFullDayEmptySpace, write=FOnBeforeDrawFullDayEmptySpace};
	__property TTMSFNCPlannerAfterDrawFullDayEmptySpaceEvent OnAfterDrawFullDayEmptySpace = {read=FOnAfterDrawFullDayEmptySpace, write=FOnAfterDrawFullDayEmptySpace};
	__property TTMSFNCPlannerItemChangedEvent OnItemChanged = {read=FOnItemChanged, write=FOnItemChanged};
	__property TTMSFNCPlannerItemChangedEvent OnAfterItemChanged = {read=FOnAfterItemChanged, write=FOnAfterItemChanged};
	__property TTMSFNCPlannerCustomContentPanelToItemEvent OnCustomContentPanelToItem = {read=FOnCustomContentPanelToItem, write=FOnCustomContentPanelToItem};
	__property TTMSFNCPlannerItemToCustomContentPanelEvent OnItemToCustomContentPanel = {read=FOnItemToCustomContentPanel, write=FOnItemToCustomContentPanel};
	__property TTMSFNCPlannerGetCustomContentPanelEvent OnGetCustomContentPanel = {read=FOnGetCustomContentPanel, write=FOnGetCustomContentPanel};
	__property TTMSFNCPlannerInitializeCustomContentPanelEvent OnInitializeCustomContentPanel = {read=FOnInitializeCustomContentPanel, write=FOnInitializeCustomContentPanel};
	__property TTMSFNCPlannerBeforeDrawTopNavigationButtonEvent OnBeforeDrawTopNavigationButton = {read=FOnBeforeDrawTopNavigationButton, write=FOnBeforeDrawTopNavigationButton};
	__property TTMSFNCPlannerBeforeDrawBottomNavigationButtonEvent OnBeforeDrawBottomNavigationButton = {read=FOnBeforeDrawBottomNavigationButton, write=FOnBeforeDrawBottomNavigationButton};
	__property TTMSFNCPlannerAfterDrawTopNavigationButtonEvent OnAfterDrawTopNavigationButton = {read=FOnAfterDrawTopNavigationButton, write=FOnAfterDrawTopNavigationButton};
	__property TTMSFNCPlannerAfterDrawBottomNavigationButtonEvent OnAfterDrawBottomNavigationButton = {read=FOnAfterDrawBottomNavigationButton, write=FOnAfterDrawBottomNavigationButton};
	__property TTMSFNCPlannerBeforeDrawCurrentTimeInTimeLineEvent OnBeforeDrawCurrentTimeInTimeLine = {read=FOnBeforeDrawCurrentTimeInTimeLine, write=FOnBeforeDrawCurrentTimeInTimeLine};
	__property TTMSFNCPlannerAfterDrawCurrentTimeInTimeLineEvent OnAfterDrawCurrentTimeInTimeLine = {read=FOnAfterDrawCurrentTimeInTimeLine, write=FOnAfterDrawCurrentTimeInTimeLine};
	__property TTMSFNCPlannerBeforeDrawCurrentTimeInGridEvent OnBeforeDrawCurrentTimeInGrid = {read=FOnBeforeDrawCurrentTimeInGrid, write=FOnBeforeDrawCurrentTimeInGrid};
	__property TTMSFNCPlannerAfterDrawCurrentTimeInGridEvent OnAfterDrawCurrentTimeInGrid = {read=FOnAfterDrawCurrentTimeInGrid, write=FOnAfterDrawCurrentTimeInGrid};
	__property TTMSFNCPlannerBeforeDrawPositionEvent OnBeforeDrawPosition = {read=FOnBeforeDrawPosition, write=FOnBeforeDrawPosition};
	__property TTMSFNCPlannerAfterDrawPositionEvent OnAfterDrawPosition = {read=FOnAfterDrawPosition, write=FOnAfterDrawPosition};
	__property TTMSFNCPlannerBeforeDrawCellEvent OnBeforeDrawCell = {read=FOnBeforeDrawCell, write=FOnBeforeDrawCell};
	__property TTMSFNCPlannerAfterDrawCellEvent OnAfterDrawCell = {read=FOnAfterDrawCell, write=FOnAfterDrawCell};
	__property TTMSFNCPlannerBeforeDrawCellVerticalLineEvent OnBeforeDrawCellVerticalLine = {read=FOnBeforeDrawCellVerticalLine, write=FOnBeforeDrawCellVerticalLine};
	__property TTMSFNCPlannerAfterDrawCellVerticalLineEvent OnAfterDrawCellVerticalLine = {read=FOnAfterDrawCellVerticalLine, write=FOnAfterDrawCellVerticalLine};
	__property TTMSFNCPlannerBeforeDrawCellHorizontalLineEvent OnBeforeDrawCellHorizontalLine = {read=FOnBeforeDrawCellHorizontalLine, write=FOnBeforeDrawCellHorizontalLine};
	__property TTMSFNCPlannerAfterDrawCellHorizontalLineEvent OnAfterDrawCellHorizontalLine = {read=FOnAfterDrawCellHorizontalLine, write=FOnAfterDrawCellHorizontalLine};
	__property TTMSFNCPlannerBeforeDrawGroupEvent OnBeforeDrawGroup = {read=FOnBeforeDrawGroup, write=FOnBeforeDrawGroup};
	__property TTMSFNCPlannerAfterDrawGroupEvent OnAfterDrawGroup = {read=FOnAfterDrawGroup, write=FOnAfterDrawGroup};
	__property TTMSFNCPlannerBeforeDrawFullDayEvent OnBeforeDrawFullDay = {read=FOnBeforeDrawFullDay, write=FOnBeforeDrawFullDay};
	__property TTMSFNCPlannerAfterDrawFullDayEvent OnAfterDrawFullDay = {read=FOnAfterDrawFullDay, write=FOnAfterDrawFullDay};
	__property TTMSFNCPlannerBeforeDrawTimeEvent OnBeforeDrawTime = {read=FOnBeforeDrawTime, write=FOnBeforeDrawTime};
	__property TTMSFNCPlannerAfterDrawTimeEvent OnAfterDrawTime = {read=FOnAfterDrawTime, write=FOnAfterDrawTime};
	__property TTMSFNCPlannerBeforeDrawTimeStrokeEvent OnBeforeDrawTimeStroke = {read=FOnBeforeDrawTimeStroke, write=FOnBeforeDrawTimeStroke};
	__property TTMSFNCPlannerAfterDrawTimeStrokeEvent OnAfterDrawTimeStroke = {read=FOnAfterDrawTimeStroke, write=FOnAfterDrawTimeStroke};
	__property TTMSFNCPlannerBeforeDrawItemEvent OnBeforeDrawItem = {read=FOnBeforeDrawItem, write=FOnBeforeDrawItem};
	__property TTMSFNCPlannerAfterDrawItemEvent OnAfterDrawItem = {read=FOnAfterDrawItem, write=FOnAfterDrawItem};
	__property TTMSFNCPlannerBeforeDrawMoveAreaEvent OnBeforeDrawMoveArea = {read=FOnBeforeDrawMoveArea, write=FOnBeforeDrawMoveArea};
	__property TTMSFNCPlannerAfterDrawMoveAreaEvent OnAfterDrawMoveArea = {read=FOnAfterDrawMoveArea, write=FOnAfterDrawMoveArea};
	__property TTMSFNCPlannerBeforeDrawSizeAreaEvent OnBeforeDrawSizeArea = {read=FOnBeforeDrawSizeArea, write=FOnBeforeDrawSizeArea};
	__property TTMSFNCPlannerAfterDrawSizeAreaEvent OnAfterDrawSizeArea = {read=FOnAfterDrawSizeArea, write=FOnAfterDrawSizeArea};
	__property TTMSFNCPlannerBeforeDrawDeleteAreaEvent OnBeforeDrawDeleteArea = {read=FOnBeforeDrawDeleteArea, write=FOnBeforeDrawDeleteArea};
	__property TTMSFNCPlannerAfterDrawDeleteAreaEvent OnAfterDrawDeleteArea = {read=FOnAfterDrawDeleteArea, write=FOnAfterDrawDeleteArea};
	__property TTMSFNCPlannerBeforeDrawItemTitleEvent OnBeforeDrawItemTitle = {read=FOnBeforeDrawItemTitle, write=FOnBeforeDrawItemTitle};
	__property TTMSFNCPlannerAfterDrawItemTitleEvent OnAfterDrawItemTitle = {read=FOnAfterDrawItemTitle, write=FOnAfterDrawItemTitle};
	__property TTMSFNCPlannerBeforeDrawPositionTextEvent OnBeforeDrawPositionText = {read=FOnBeforeDrawPositionText, write=FOnBeforeDrawPositionText};
	__property TTMSFNCPlannerGetPositionTextEvent OnGetPositionText = {read=FOnGetPositionText, write=FOnGetPositionText};
	__property TTMSFNCPlannerAfterDrawPositionTextEvent OnAfterDrawPositionText = {read=FOnAfterDrawPositionText, write=FOnAfterDrawPositionText};
	__property TTMSFNCPlannerBeforeDrawGroupTextEvent OnBeforeDrawGroupText = {read=FOnBeforeDrawGroupText, write=FOnBeforeDrawGroupText};
	__property TTMSFNCPlannerGetGroupTextEvent OnGetGroupText = {read=FOnGetGroupText, write=FOnGetGroupText};
	__property TTMSFNCPlannerAfterDrawGroupTextEvent OnAfterDrawGroupText = {read=FOnAfterDrawGroupText, write=FOnAfterDrawGroupText};
	__property TTMSFNCPlannerBeforeDrawTimeTextEvent OnBeforeDrawTimeText = {read=FOnBeforeDrawTimeText, write=FOnBeforeDrawTimeText};
	__property TTMSFNCPlannerGetTimeTextEvent OnGetTimeText = {read=FOnGetTimeText, write=FOnGetTimeText};
	__property TTMSFNCPlannerAfterDrawTimeTextEvent OnAfterDrawTimeText = {read=FOnAfterDrawTimeText, write=FOnAfterDrawTimeText};
	__property TTMSFNCPlannerBeforeDrawItemTextEvent OnBeforeDrawItemText = {read=FOnBeforeDrawItemText, write=FOnBeforeDrawItemText};
	__property TTMSFNCPlannerGetItemHintEvent OnGetItemHint = {read=FOnGetItemHint, write=FOnGetItemHint};
	__property TTMSFNCPlannerGetColumnHintEvent OnGetPositionHint = {read=FOnGetPositionHint, write=FOnGetPositionHint};
	__property TTMSFNCPlannerGetColumnHintEvent OnGetGroupHint = {read=FOnGetGroupHint, write=FOnGetGroupHint};
	__property TTMSFNCPlannerGetColumnHintEvent OnGetFullDayHint = {read=FOnGetFullDayHint, write=FOnGetFullDayHint};
	__property TTMSFNCPlannerGetItemTextEvent OnGetItemText = {read=FOnGetItemText, write=FOnGetItemText};
	__property TTMSFNCPlannerAfterDrawItemTextEvent OnAfterDrawItemText = {read=FOnAfterDrawItemText, write=FOnAfterDrawItemText};
	__property TTMSFNCPlannerBeforeDrawItemTitleTextEvent OnBeforeDrawItemTitleText = {read=FOnBeforeDrawItemTitleText, write=FOnBeforeDrawItemTitleText};
	__property TTMSFNCPlannerGetItemTitleTextEvent OnGetItemTitleText = {read=FOnGetItemTitleText, write=FOnGetItemTitleText};
	__property TTMSFNCPlannerAfterDrawItemTitleTextEvent OnAfterDrawItemTitleText = {read=FOnAfterDrawItemTitleText, write=FOnAfterDrawItemTitleText};
	__property TTMSFNCPlannerSelectTimeEvent OnSelectTime = {read=FOnSelectTime, write=FOnSelectTime};
	__property TTMSFNCPlannerSelectTimeEvent OnSelectingTime = {read=FOnSelectingTime, write=FOnSelectingTime};
	__property TTMSFNCPlannerSelectCellEvent OnSelectCell = {read=FOnSelectCell, write=FOnSelectCell};
	__property TTMSFNCPlannerSelectCellEvent OnSelectingCell = {read=FOnSelectingCell, write=FOnSelectingCell};
	__property TTMSFNCPlannerBeforeInsertItemEvent OnBeforeInsertItem = {read=FOnBeforeInsertItem, write=FOnBeforeInsertItem};
	__property TTMSFNCPlannerAfterInsertItemEvent OnAfterInsertItem = {read=FOnAfterInsertItem, write=FOnAfterInsertItem};
	__property TTMSFNCPlannerBeforeUpdateItemEvent OnBeforeUpdateItem = {read=FOnBeforeUpdateItem, write=FOnBeforeUpdateItem};
	__property TTMSFNCPlannerAfterUpdateItemEvent OnAfterUpdateItem = {read=FOnAfterUpdateItem, write=FOnAfterUpdateItem};
	__property TTMSFNCPlannerBeforeOpenInsertDialogEvent OnBeforeOpenInsertDialog = {read=FOnBeforeOpenInsertDialog, write=FOnBeforeOpenInsertDialog};
	__property TTMSFNCPlannerAfterOpenInsertDialogEvent OnAfterOpenInsertDialog = {read=FOnAfterOpenInsertDialog, write=FOnAfterOpenInsertDialog};
	__property TTMSFNCPlannerBeforeOpenUpdateDialogEvent OnBeforeOpenUpdateDialog = {read=FOnBeforeOpenUpdateDialog, write=FOnBeforeOpenUpdateDialog};
	__property TTMSFNCPlannerAfterOpenUpdateDialogEvent OnAfterOpenUpdateDialog = {read=FOnAfterOpenUpdateDialog, write=FOnAfterOpenUpdateDialog};
	__property TTMSFNCPlannerBeforeOpenInplaceEditorEvent OnBeforeOpenInplaceEditor = {read=FOnBeforeOpenInplaceEditor, write=FOnBeforeOpenInplaceEditor};
	__property TTMSFNCPlannerBeforeNavigateToDateTimeEvent OnBeforeNavigateToDateTime = {read=FOnBeforeNavigateToDateTime, write=FOnBeforeNavigateToDateTime};
	__property TTMSFNCPlannerAfterNavigateToDateTimeEvent OnAfterNavigateToDateTime = {read=FOnAfterNavigateToDateTime, write=FOnAfterNavigateToDateTime};
	__property TTMSFNCPlannerCloseInplaceEditorEvent OnCloseInplaceEditor = {read=FOnCloseInplaceEditor, write=FOnCloseInplaceEditor};
	__property TTMSFNCPlannerCloseUpdateDialogEvent OnCloseUpdateDialog = {read=FOnCloseUpdateDialog, write=FOnCloseUpdateDialog};
	__property TTMSFNCPlannerCloseInsertDialogEvent OnCloseInsertDialog = {read=FOnCloseInsertDialog, write=FOnCloseInsertDialog};
	__property TTMSFNCPlannerAfterOpenInplaceEditorEvent OnAfterOpenInplaceEditor = {read=FOnAfterOpenInplaceEditor, write=FOnAfterOpenInplaceEditor};
	__property TTMSFNCPlannerBeforeSelectItemEvent OnBeforeSelectItem = {read=FOnBeforeSelectItem, write=FOnBeforeSelectItem};
	__property TTMSFNCPlannerBeforeDeleteItemEvent OnBeforeDeleteItem = {read=FOnBeforeDeleteItem, write=FOnBeforeDeleteItem};
	__property TTMSFNCPlannerBeforeMoveItemEvent OnBeforeMoveItem = {read=FOnBeforeMoveItem, write=FOnBeforeMoveItem};
	__property TTMSFNCPlannerBeforeSizeItemEvent OnBeforeSizeItem = {read=FOnBeforeSizeItem, write=FOnBeforeSizeItem};
	__property TTMSFNCPlannerAfterMoveItemEvent OnAfterMoveItem = {read=FOnAfterMoveItem, write=FOnAfterMoveItem};
	__property TTMSFNCPlannerAfterSizeItemEvent OnAfterSizeItem = {read=FOnAfterSizeItem, write=FOnAfterSizeItem};
	__property TTMSFNCPlannerMoveItemEvent OnMoveItem = {read=FOnMoveItem, write=FOnMoveItem};
	__property TTMSFNCPlannerSizeItemEvent OnSizeItem = {read=FOnSizeItem, write=FOnSizeItem};
	__property TTMSFNCPlannerAfterSelectItemEvent OnAfterSelectItem = {read=FOnAfterSelectItem, write=FOnAfterSelectItem};
	__property TTMSFNCPlannerAfterDeleteItemEvent OnAfterDeleteItem = {read=FOnAfterDeleteItem, write=FOnAfterDeleteItem};
	__property TTMSFNCPlannerIsItemDeletableEvent OnIsItemDeletable = {read=FOnIsItemDeletable, write=FOnIsItemDeletable};
	__property TTMSFNCPlannerIsDateTimeDisabledEvent OnIsDateTimeDisabled = {read=FOnIsDateTimeDisabled, write=FOnIsDateTimeDisabled};
	__property TTMSFNCPlannerIsDateTimeInActiveEvent OnIsDateTimeInActive = {read=FOnIsDateTimeInActive, write=FOnIsDateTimeInActive};
	__property TTMSFNCPlannerIsDateTimeSubEvent OnIsDateTimeSub = {read=FOnIsDateTimeSub, write=FOnIsDateTimeSub};
	__property TTMSFNCPlannerHasDateTimeSubEvent OnHasDateTimeSub = {read=FOnHasDateTimeSub, write=FOnHasDateTimeSub};
	__property TTMSFNCPlannerItemPopupMenuPrepareEvent OnItemPopupMenuPrepare = {read=FOnItemPopupMenuPrepare, write=FOnItemPopupMenuPrepare};
	__property TTMSFNCPlannerItemRightClickEvent OnItemRightClick = {read=FOnItemRightClick, write=FOnItemRightClick};
	__property TTMSFNCPlannerItemDblClickEvent OnItemDblClick = {read=FOnItemDblClick, write=FOnItemDblClick};
	__property TTMSFNCPlannerItemClickEvent OnItemClick = {read=FOnItemClick, write=FOnItemClick};
	__property TTMSFNCPlannerItemAnchorClickEvent OnItemAnchorClick = {read=FOnItemAnchorClick, write=FOnItemAnchorClick};
	__property TTMSFNCPlannerItemAnchorClickEvent OnItemTitleAnchorClick = {read=FOnItemTitleAnchorClick, write=FOnItemTitleAnchorClick};
	__property TTMSFNCPlannerColumnAnchorClickEvent OnGroupAnchorClick = {read=FOnGroupAnchorClick, write=FOnGroupAnchorClick};
	__property TTMSFNCPlannerColumnAnchorClickEvent OnPositionAnchorClick = {read=FOnPositionAnchorClick, write=FOnPositionAnchorClick};
	__property TTMSFNCPlannerColumnClickEvent OnGroupClick = {read=FOnGroupClick, write=FOnGroupClick};
	__property TTMSFNCPlannerColumnClickEvent OnFullDayClick = {read=FOnFullDayClick, write=FOnFullDayClick};
	__property TTMSFNCPlannerColumnClickEvent OnPositionClick = {read=FOnPositionClick, write=FOnPositionClick};
	__property TTMSFNCPlannerColumnDblClickEvent OnGroupDblClick = {read=FOnGroupDblClick, write=FOnGroupDblClick};
	__property TTMSFNCPlannerColumnDblClickEvent OnFullDayDblClick = {read=FOnFullDayDblClick, write=FOnFullDayDblClick};
	__property TTMSFNCPlannerColumnDblClickEvent OnPositionDblClick = {read=FOnPositionDblClick, write=FOnPositionDblClick};
	__property TTMSFNCPlannerGetInplaceEditorEvent OnGetInplaceEditor = {read=FOnGetInplaceEditor, write=FOnGetInplaceEditor};
	__property TTMSFNCPlannerMode Mode = {read=FMode, write=SetMode, default=3};
	__property TTMSFNCPlannerInteraction* Interaction = {read=FInteraction, write=SetInteraction};
	__property Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* DefaultItem = {read=FDefaultItem, write=SetDefaultItem};
	__property TTMSFNCPlannerDateTimes* CustomDateTimes = {read=FCustomDateTimes, write=FCustomDateTimes};
	__property Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* BitmapContainer = {read=GetBitmapContainer, write=SetBitmapContainer};
	__property TTMSFNCPlannerScrollEvent OnVScroll = {read=FOnVScroll, write=FOnVScroll};
	__property TTMSFNCPlannerScrollEvent OnHScroll = {read=FOnHScroll, write=FOnHScroll};
	__property TTMSFNCPlannerBeforeDrawItemHelperEvent OnBeforeDrawItemHelper = {read=FOnBeforeDrawItemHelper, write=FOnBeforeDrawItemHelper};
	__property TTMSFNCPlannerBeforeDrawItemHelperTextEvent OnBeforeDrawItemHelperText = {read=FOnBeforeDrawItemHelperText, write=FOnBeforeDrawItemHelperText};
	__property TTMSFNCPlannerAfterDrawItemHelperEvent OnAfterDrawItemHelper = {read=FOnAfterDrawItemHelper, write=FOnAfterDrawItemHelper};
	__property TTMSFNCPlannerAfterDrawItemHelperTextEvent OnAfterDrawItemHelperText = {read=FOnAfterDrawItemHelperText, write=FOnAfterDrawItemHelperText};
	__property TTMSFNCPlannerGetItemHelperTextEvent OnGetItemHelperText = {read=FOnGetItemHelperText, write=FOnGetItemHelperText};
	__property System::UnicodeString Version = {read=GetVersion};
	__property TTMSFNCPlannerCustomToolBarPopup* ToolBarPopup = {read=FToolBarPopup, write=FToolBarPopup};
	__property TTMSFNCPlannerCustomizeItemRectEvent OnCustomizeItemRect = {read=FOnCustomizeItemRect, write=FOnCustomizeItemRect};
	__property TTMSFNCPlannerItemCustomDrawMarkEvent OnItemCustomDrawMark = {read=FOnItemCustomDrawMark, write=FOnItemCustomDrawMark};
	__property TTMSFNCPlannerCustomItemEditorFormClass CustomItemEditorForm = {read=FCustomItemEditorForm, write=FCustomItemEditorForm};
	
public:
	__fastcall virtual TTMSFNCCustomPlanner(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCCustomPlanner();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	virtual void __fastcall Draw(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	virtual void __fastcall SelectCells(const Fmx::Tmsfncplannerbase::TTMSFNCPlannerCell &AStartCell, const Fmx::Tmsfncplannerbase::TTMSFNCPlannerCell &AEndCell);
	virtual void __fastcall Navigate(const Fmx::Tmsfncplannerbase::TTMSFNCPlannerCell &ACell, bool AForceScroll = false, bool AIgnoreColumn = false, bool AIgnoreRow = false);
	void __fastcall InitSample();
	virtual void __fastcall CloseEditingDialogAndRemoveItem();
	virtual void __fastcall CloseEditingDialog(bool ACancel);
	virtual void __fastcall OpenEditingDialog(System::TDateTime AStartTime, System::TDateTime AEndTime, int AResource, System::UnicodeString ATitle, System::UnicodeString AText, int AUpdateItem = 0xffffffff, Fmx::Types::TFmxObject* ACustomParent = (Fmx::Types::TFmxObject*)(0x0));
	virtual void __fastcall SelectItem(int AItemIndex)/* overload */;
	virtual void __fastcall SelectItems(TTMSFNCPlannerItemArray AItems);
	virtual void __fastcall SelectItem(Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem)/* overload */;
	virtual void __fastcall UnselectItem(Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem);
	virtual void __fastcall UnselectAllItems();
	virtual void __fastcall NavigateToNextDateTime(System::TDateTime ADateTime = -1.000000E+00);
	virtual void __fastcall NavigateToPreviousDateTime(System::TDateTime ADateTime = -1.000000E+00);
	virtual void __fastcall EditItem(Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem)/* overload */;
	virtual void __fastcall EditItem(int AItemIndex)/* overload */;
	virtual void __fastcall StopEditing();
	virtual void __fastcall CancelEditing();
	void __fastcall LinkItems(TTMSFNCPlannerLinkedItemArray AItems, bool ACircular = false, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItemLinkType ALinkType = (Fmx::Tmsfncplannerdata::TTMSFNCPlannerItemLinkType)(0x5));
	void __fastcall UnlinkItems(TTMSFNCPlannerLinkedItemArray AItems);
	void __fastcall SelectLinkedItems(Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem);
	virtual void __fastcall UpdateConflicts();
	virtual void __fastcall UpdateFullDayConflicts();
	virtual void __fastcall UpdateItemsCache();
	virtual void __fastcall UpdatePlannerCache(bool ADirtyItems = true);
	virtual void __fastcall ClearSelection();
	virtual bool __fastcall IsFullDayAutoSize();
	Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* __fastcall FindItemLinkedTo(Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem);
	virtual System::Types::TRectF __fastcall GetContentClipRect();
	virtual System::Types::TRectF __fastcall GetContentRect();
	virtual bool __fastcall IsEditing();
	virtual TTMSFNCPlannerDeleteHandler __fastcall GetDeleteHandler();
	virtual TTMSFNCPlannerSizeHandler __fastcall GetStartTimeSizeHandler();
	virtual TTMSFNCPlannerSizeHandler __fastcall GetEndTimeSizeHandler();
	virtual TTMSFNCPlannerHintPopup __fastcall GetHintPopup();
	virtual TTMSFNCPlannerEditingDialog __fastcall GetEditingDialog(int AItemIndex = 0xffffffff);
	virtual Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* __fastcall AddItemAtSelection();
	virtual Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* __fastcall AddItem(System::TDateTime AStartTime, System::TDateTime AEndTime);
	virtual Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* __fastcall AddOrUpdateItem(System::TDateTime AStartTime, System::TDateTime AEndTime, System::UnicodeString ATitle, System::UnicodeString AText, int AItemIndex = 0xffffffff)/* overload */;
	virtual Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* __fastcall AddOrUpdateItem(int AResource, System::TDateTime AStartTime, System::TDateTime AEndTime, System::UnicodeString ATitle = System::UnicodeString(), System::UnicodeString AText = System::UnicodeString(), int AItemIndex = 0xffffffff)/* overload */;
	virtual Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* __fastcall AddOrUpdateItem(System::UnicodeString AResourceName, System::TDateTime AStartTime, System::TDateTime AEndTime, System::UnicodeString ATitle = System::UnicodeString(), System::UnicodeString AText = System::UnicodeString(), int AItemIndex = 0xffffffff)/* overload */;
	virtual Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem* __fastcall XYToCacheItem(double X, double Y);
	virtual Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* __fastcall XYToFullDayItem(double X, double Y);
	virtual Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* __fastcall XYToItem(double X, double Y);
	virtual Fmx::Tmsfncplannerbase::TTMSFNCPlannerCell __fastcall XYToCell(double X, double Y);
	virtual Fmx::Tmsfncplannerbase::TTMSFNCPlannerTime __fastcall XYToTime(double X, double Y);
	virtual System::UnicodeString __fastcall XYToItemAnchor(Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, float AX, float AY);
	virtual System::UnicodeString __fastcall XYToItemTitleAnchor(Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem, float AX, float AY);
	virtual System::UnicodeString __fastcall XYToGroupAnchor(float AX, float AY, int &AIndex);
	virtual System::UnicodeString __fastcall XYToPositionAnchor(float AX, float AY, int &AIndex);
	virtual Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem* __fastcall XYToGroup(float AX, float AY);
	virtual Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem* __fastcall XYToFullDay(float AX, float AY);
	virtual Fmx::Tmsfncplannerdata::TTMSFNCPlannerCacheItem* __fastcall XYToPosition(float AX, float AY);
	virtual int __fastcall PositionToResource(int APosition);
	virtual int __fastcall ResourceToPosition(int AResource);
	virtual bool __fastcall IsDateTimeDisabled(System::TDateTime ADateTime, int APosition = 0xffffffff);
	virtual bool __fastcall IsDateTimeInActive(System::TDateTime ADateTime, int APosition = 0xffffffff);
	virtual bool __fastcall IsCellDisabled(const Fmx::Tmsfncplannerbase::TTMSFNCPlannerCell &ACell);
	virtual bool __fastcall IsCellInActive(const Fmx::Tmsfncplannerbase::TTMSFNCPlannerCell &ACell);
	virtual System::TDateTime __fastcall CellToDateTime(const Fmx::Tmsfncplannerbase::TTMSFNCPlannerCell &ACell);
	virtual System::TDateTime __fastcall CellToStartDatetime(const Fmx::Tmsfncplannerbase::TTMSFNCPlannerCell &ACell);
	virtual System::TDateTime __fastcall CellToEndDateTime(const Fmx::Tmsfncplannerbase::TTMSFNCPlannerCell &ACell);
	virtual System::TDateTime __fastcall SelectedStartDateTime();
	virtual System::TDateTime __fastcall SelectedEndDateTime();
	virtual int __fastcall SelectedResource();
	virtual Fmx::Tmsfncplannerbase::TTMSFNCPlannerCell __fastcall DateTimeToCell(System::TDateTime ADateTime, bool AEndDateTime = false);
	virtual Fmx::Tmsfncplannerbase::TTMSFNCPlannerCell __fastcall ItemToStartCell(Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem);
	virtual Fmx::Tmsfncplannerbase::TTMSFNCPlannerCell __fastcall ItemToEndCell(Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem);
	virtual bool __fastcall HasItem(System::TDateTime AStartTime, System::TDateTime AEndTime, int APosition, int ACompareWithItemIndex = 0xffffffff, bool ACheckOverlap = true);
	virtual Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* __fastcall FindFirstItem(System::TDateTime AStartTime, System::TDateTime AEndTime, int APosition);
	virtual Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* __fastcall FindNextItem(System::TDateTime AStartTime, System::TDateTime AEndTime, int APosition);
	virtual Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* __fastcall FindItemWithDBKey(System::UnicodeString ADBKey);
	virtual double __fastcall DateTimeToValue(System::TDateTime ADateTime, bool AEndDateTime = false, bool ACheckBounds = true);
	virtual System::TDateTime __fastcall ValueToDateTime(double AValue, int APosition = 0xffffffff, int ARow = 0xffffffff);
	virtual int __fastcall DateTimeToPosition(System::TDateTime ADateTime, bool AEndDateTime = false, bool ACheckBounds = true);
	virtual System::TDateTime __fastcall PositionToDateTime(int APosition);
	virtual bool __fastcall HasFullDayItemPosition(Fmx::Tmsfncplannerdata::TTMSFNCPlannerFullDayLayout ALayout, int APosition, Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem);
	virtual Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* __fastcall SelectNextItem();
	virtual Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* __fastcall SelectPreviousItem();
	virtual bool __fastcall IsValidItem(Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem);
	virtual bool __fastcall IsFullDayItem(Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* AItem);
	virtual Fmx::Controls::TControl* __fastcall GetInplaceEditor();
	virtual System::TDateTime __fastcall DisplayStartDateTime();
	virtual System::TDateTime __fastcall DisplayEndDateTime();
	__property int ViewCol = {read=GetViewCol, write=SetViewCol, nodefault};
	__property int ViewRow = {read=GetViewRow, write=SetViewRow, nodefault};
	__property Fmx::Tmsfncplannerdata::TTMSFNCPlannerItem* PopupPlannerItem = {read=FPopupPlannerItem};
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


class PASCALIMPLEMENTATION TTMSFNCPlanner : public TTMSFNCCustomPlanner
{
	typedef TTMSFNCCustomPlanner inherited;
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	
public:
	__property ItemCachingMode = {default=0};
	__property CustomDateTimes;
	__property CustomItemEditorForm;
	__property Selection;
	__property ActiveItem;
	__property SelectedItems;
	__property ItemPopup;
	
__published:
	__property Adapter;
	__property ToolBarPopup;
	__property ItemEditor;
	__property BitmapContainer;
	__property HorizontalScrollBarVisible = {default=1};
	__property VerticalScrollBarVisible = {default=1};
	__property DefaultItem;
	__property Fill;
	__property GridCellAppearance;
	__property Groups;
	__property GroupsAppearance;
	__property FullDaysAppearance;
	__property Interaction;
	__property Items;
	__property Mode = {default=3};
	__property ModeSettings;
	__property OrientationMode = {default=1};
	__property Positions;
	__property PositionsAppearance;
	__property Resources;
	__property SelectionAppearance;
	__property StretchScrollBars = {default=0};
	__property Stroke;
	__property TimeLine;
	__property TimeLineAppearance;
	__property ItemsAppearance;
	__property Version = {default=0};
	__property GlobalFont;
	__property OnAfterDrawTimeLine;
	__property OnAfterDrawGrid;
	__property OnBeforeDrawTopNavigationButton;
	__property OnBeforeDrawBottomNavigationButton;
	__property OnAfterDrawTopNavigationButton;
	__property OnAfterDrawBottomNavigationButton;
	__property OnBeforeDrawCell;
	__property OnAfterDrawCell;
	__property OnBeforeDrawItemLink;
	__property OnAfterDrawItemLink;
	__property OnBeforeDrawCellVerticalLine;
	__property OnAfterDrawCellVerticalLine;
	__property OnBeforeDrawCellHorizontalLine;
	__property OnAfterDrawCellHorizontalLine;
	__property OnBeforeDrawCurrentTimeInTimeLine;
	__property OnAfterDrawCurrentTimeInTimeLine;
	__property OnBeforeDrawCurrentTimeInGrid;
	__property OnAfterDrawCurrentTimeInGrid;
	__property OnBeforeDrawSizeArea;
	__property OnBeforeDrawMoveArea;
	__property OnBeforeDrawDeleteArea;
	__property OnAfterDrawSizeArea;
	__property OnAfterDrawMoveArea;
	__property OnAfterDrawDeleteArea;
	__property OnBeforeDrawPosition;
	__property OnAfterDrawPosition;
	__property OnBeforeDrawGroup;
	__property OnAfterDrawGroup;
	__property OnBeforeDrawFullDay;
	__property OnAfterDrawFullDay;
	__property OnBeforeDrawTime;
	__property OnAfterDrawTime;
	__property OnBeforeDrawTimeStroke;
	__property OnAfterDrawTimeStroke;
	__property OnBeforeDrawItem;
	__property OnAfterDrawItem;
	__property OnBeforeDrawItemTitle;
	__property OnAfterDrawItemTitle;
	__property OnBeforeDrawPositionText;
	__property OnGetPositionText;
	__property OnAfterDrawPositionText;
	__property OnBeforeDrawGroupText;
	__property OnGetGroupText;
	__property OnAfterDrawGroupText;
	__property OnBeforeDrawTimeText;
	__property OnBeforeNavigateToDateTime;
	__property OnAfterNavigateToDateTime;
	__property OnGetTimeText;
	__property OnAfterDrawTimeText;
	__property OnBeforeDrawItemText;
	__property OnGetItemText;
	__property OnGetItemHint;
	__property OnAfterDrawItemText;
	__property OnBeforeDrawItemTitleText;
	__property OnGetItemTitleText;
	__property OnAfterDrawItemTitleText;
	__property OnSelectTime;
	__property OnSelectingTime;
	__property OnSelectCell;
	__property OnSelectingCell;
	__property OnIsItemDeletable;
	__property OnIsDateTimeDisabled;
	__property OnItemChanged;
	__property OnAfterItemChanged;
	__property OnIsDateTimeInActive;
	__property OnItemAnchorClick;
	__property OnItemRightClick;
	__property OnItemClick;
	__property OnItemDblClick;
	__property OnItemPopupMenuPrepare;
	__property OnItemTitleAnchorClick;
	__property OnGroupAnchorClick;
	__property OnPositionAnchorClick;
	__property OnGroupDblClick;
	__property OnFullDayDblClick;
	__property OnPositionDblClick;
	__property OnGroupClick;
	__property OnFullDayClick;
	__property OnGetPositionHint;
	__property OnGetGroupHint;
	__property OnGetFullDayHint;
	__property OnPositionClick;
	__property OnIsDateTimeSub;
	__property OnHasDateTimeSub;
	__property OnBeforeUpdateItem;
	__property OnBeforeInsertItem;
	__property OnAfterUpdateItem;
	__property OnAfterInsertItem;
	__property OnBeforeOpenInsertDialog;
	__property OnAfterOpenInsertDialog;
	__property OnBeforeOpenUpdateDialog;
	__property OnAfterOpenUpdateDialog;
	__property OnBeforeOpenInplaceEditor;
	__property OnAfterOpenInplaceEditor;
	__property OnCloseInplaceEditor;
	__property OnCloseUpdateDialog;
	__property OnCloseInsertDialog;
	__property OnGetInplaceEditor;
	__property OnBeforeSelectItem;
	__property OnAfterSelectItem;
	__property OnBeforeDeleteItem;
	__property OnAfterDeleteItem;
	__property OnBeforeMoveItem;
	__property OnMoveItem;
	__property OnAfterMoveItem;
	__property OnBeforeSizeItem;
	__property OnSizeItem;
	__property OnAfterSizeItem;
	__property OnHScroll;
	__property OnVScroll;
	__property OnBeforeDrawPositionEmptySpace;
	__property OnAfterDrawPositionEmptySpace;
	__property OnBeforeDrawGroupEmptySpace;
	__property OnAfterDrawGroupEmptySpace;
	__property OnBeforeDrawFullDayEmptySpace;
	__property OnAfterDrawFullDayEmptySpace;
	__property OnBeforeDrawItemHelper;
	__property OnBeforeDrawItemHelperText;
	__property OnAfterDrawItemHelper;
	__property OnAfterDrawItemHelperText;
	__property OnGetItemHelperText;
	__property OnCustomContentPanelToItem;
	__property OnItemToCustomContentPanel;
	__property OnGetCustomContentPanel;
	__property OnInitializeCustomContentPanel;
	__property OnCustomizeItemRect;
public:
	/* TTMSFNCCustomPlanner.Create */ inline __fastcall virtual TTMSFNCPlanner(System::Classes::TComponent* AOwner) : TTMSFNCCustomPlanner(AOwner) { }
	/* TTMSFNCCustomPlanner.Destroy */ inline __fastcall virtual ~TTMSFNCPlanner() { }
	
};


//-- var, const, procedure ---------------------------------------------------
#define TTMSFNCPlannerDocURL u"https://download.tmssoftware.com/doc/tmsfncuipack/componen"\
	u"ts/ttmsfncplanner/"
static constexpr System::Word CACHEWIDTH = System::Word(0x3e8);
static constexpr System::Word CACHEHEIGHT = System::Word(0x3e8);
static constexpr System::Int8 SCROLLINGDELAY = System::Int8(0x28);
static constexpr unsigned TMSFNCPlannerAreaColor = unsigned(0xbfa9a9a9);
static constexpr System::Int8 MAJ_VER = System::Int8(0x2);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x1);
static constexpr System::Int8 BLD_VER = System::Int8(0x2);
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCPlannerOK;
#define Fmx_Tmsfncplanner_sTMSFNCPlannerOK System::LoadResourceString(&Fmx::Tmsfncplanner::_sTMSFNCPlannerOK)
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCPlannerCancel;
#define Fmx_Tmsfncplanner_sTMSFNCPlannerCancel System::LoadResourceString(&Fmx::Tmsfncplanner::_sTMSFNCPlannerCancel)
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCPlannerRemove;
#define Fmx_Tmsfncplanner_sTMSFNCPlannerRemove System::LoadResourceString(&Fmx::Tmsfncplanner::_sTMSFNCPlannerRemove)
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCPlannerStartTime;
#define Fmx_Tmsfncplanner_sTMSFNCPlannerStartTime System::LoadResourceString(&Fmx::Tmsfncplanner::_sTMSFNCPlannerStartTime)
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCPlannerEndTime;
#define Fmx_Tmsfncplanner_sTMSFNCPlannerEndTime System::LoadResourceString(&Fmx::Tmsfncplanner::_sTMSFNCPlannerEndTime)
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCPlannerPosition;
#define Fmx_Tmsfncplanner_sTMSFNCPlannerPosition System::LoadResourceString(&Fmx::Tmsfncplanner::_sTMSFNCPlannerPosition)
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCPlannerTitle;
#define Fmx_Tmsfncplanner_sTMSFNCPlannerTitle System::LoadResourceString(&Fmx::Tmsfncplanner::_sTMSFNCPlannerTitle)
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCPlannerText;
#define Fmx_Tmsfncplanner_sTMSFNCPlannerText System::LoadResourceString(&Fmx::Tmsfncplanner::_sTMSFNCPlannerText)
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCPlannerFullDay;
#define Fmx_Tmsfncplanner_sTMSFNCPlannerFullDay System::LoadResourceString(&Fmx::Tmsfncplanner::_sTMSFNCPlannerFullDay)
extern DELPHI_PACKAGE bool __fastcall DateTimeInRangeEx(System::TDateTime ADateTime, System::TDateTime AStartDateTime, System::TDateTime AEndDateTime, bool aInclusive = true);
extern DELPHI_PACKAGE Fmx::Tmsfncplannerbase::TTMSFNCPlannerCell __fastcall MakeCell(int ACol, int ARow);
}	/* namespace Tmsfncplanner */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCPLANNER)
using namespace Fmx::Tmsfncplanner;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncplannerHPP
