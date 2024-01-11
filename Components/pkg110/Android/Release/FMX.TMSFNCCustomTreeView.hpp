// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCCustomTreeView.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfnccustomtreeviewHPP
#define Fmx_TmsfnccustomtreeviewHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <FMX.TMSFNCTreeViewData.hpp>
#include <FMX.TMSFNCCustomComponent.hpp>
#include <FMX.TMSFNCGraphics.hpp>
#include <FMX.TMSFNCPopup.hpp>
#include <FMX.TMSFNCImage.hpp>
#include <System.Types.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.Controls.hpp>
#include <FMX.ExtCtrls.hpp>
#include <FMX.StdCtrls.hpp>
#include <FMX.TMSFNCGraphicsTypes.hpp>
#include <System.UITypes.hpp>
#include <System.Generics.Collections.hpp>
#include <FMX.Types.hpp>
#include <FMX.Memo.hpp>
#include <FMX.Edit.hpp>
#include <FMX.ListBox.hpp>
#include <FMX.Memo.Types.hpp>
#include <System.JSON.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>
#include <FMX.ScrollBox.hpp>
#include <FMX.Controls.Presentation.hpp>
#include <FMX.TMSFNCTreeViewBase.hpp>
#include <FMX.TMSFNCCustomControl.hpp>
#include <FMX.TMSFNCBitmapContainer.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfnccustomtreeview
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCTreeViewCache;
class DELPHICLASS TTMSFNCTreeViewNodeCache;
class DELPHICLASS TTMSFNCTreeViewColumnsCache;
class DELPHICLASS TTMSFNCTreeViewColumnsTopCache;
class DELPHICLASS TTMSFNCTreeViewColumnsBottomCache;
class DELPHICLASS TTMSFNCTreeViewGroupsCache;
class DELPHICLASS TTMSFNCTreeViewGroupsTopCache;
class DELPHICLASS TTMSFNCTreeViewGroupsBottomCache;
class DELPHICLASS TTMSFNCTreeViewDisplayList;
class DELPHICLASS TTMSFNCTreeViewNodeDisplayList;
class DELPHICLASS TTMSFNCTreeViewColumnsDisplayList;
class DELPHICLASS TTMSFNCTreeViewColumnsTopDisplayList;
class DELPHICLASS TTMSFNCTreeViewColumnsBottomDisplayList;
class DELPHICLASS TTMSFNCTreeViewGroupsDisplayList;
class DELPHICLASS TTMSFNCTreeViewGroupsTopDisplayList;
class DELPHICLASS TTMSFNCTreeViewGroupsBottomDisplayList;
class DELPHICLASS TTMSFNCTreeViewNodesAppearance;
class DELPHICLASS TTMSFNCTreeViewColumnsAppearance;
class DELPHICLASS TTMSFNCTreeViewGroupsAppearance;
class DELPHICLASS TTMSFNCTreeViewLookup;
class DELPHICLASS TTMSFNCTreeViewInteraction;
struct TTMSFNCTreeViewSceneDrawingScale;
class DELPHICLASS TTMSFNCTreeViewSelectedNodes;
struct TTMSFNCTreeViewNodeCheck;
struct TTMSFNCTreeViewNodeAnchor;
class DELPHICLASS TTMSFNCTreeViewComboBox;
class DELPHICLASS TTMSFNCTreeViewMemo;
class DELPHICLASS TTMSFNCTreeViewEdit;
class DELPHICLASS TTMSFNCTreeViewCopyNodes;
class DELPHICLASS TTMSFNCTreeViewAdapter;
class DELPHICLASS TTMSFNCTreeViewViewJSONOptions;
class DELPHICLASS TTMSFNCCustomTreeView;
class DELPHICLASS TTMSFNCTreeViewPublished;
//-- type declarations -------------------------------------------------------
#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCTreeViewCache : public System::Generics::Collections::TObjectList__1<Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItem*>
{
	typedef System::Generics::Collections::TObjectList__1<Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItem*> inherited;
	
public:
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Create */ inline __fastcall TTMSFNCTreeViewCache()/* overload */ : System::Generics::Collections::TObjectList__1<Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItem*>() { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Create */ inline __fastcall TTMSFNCTreeViewCache(bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItem*>(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Create */ inline __fastcall TTMSFNCTreeViewCache(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItem*> > AComparer, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItem*>(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Create */ inline __fastcall TTMSFNCTreeViewCache(System::Generics::Collections::TEnumerable__1<Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItem*>* const Collection, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItem*>(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Destroy */ inline __fastcall virtual ~TTMSFNCTreeViewCache() { }
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Create */ inline __fastcall TTMSFNCTreeViewCache(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItem*> > AComparer)/* overload */ : System::Generics::Collections::TObjectList__1<Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItem*>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Create */ inline __fastcall TTMSFNCTreeViewCache(System::Generics::Collections::TEnumerable__1<Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItem*>* const Collection)/* overload */ : System::Generics::Collections::TObjectList__1<Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItem*>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Create */ inline __fastcall TTMSFNCTreeViewCache(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItem* const *Values, const int Values_High)/* overload */ : System::Generics::Collections::TObjectList__1<Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItem*>(Values, Values_High) { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCTreeViewNodeCache : public TTMSFNCTreeViewCache
{
	typedef TTMSFNCTreeViewCache inherited;
	
public:
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Create */ inline __fastcall TTMSFNCTreeViewNodeCache()/* overload */ : TTMSFNCTreeViewCache() { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Create */ inline __fastcall TTMSFNCTreeViewNodeCache(bool AOwnsObjects)/* overload */ : TTMSFNCTreeViewCache(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Create */ inline __fastcall TTMSFNCTreeViewNodeCache(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItem*> > AComparer, bool AOwnsObjects)/* overload */ : TTMSFNCTreeViewCache(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Create */ inline __fastcall TTMSFNCTreeViewNodeCache(System::Generics::Collections::TEnumerable__1<Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItem*>* const Collection, bool AOwnsObjects)/* overload */ : TTMSFNCTreeViewCache(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Destroy */ inline __fastcall virtual ~TTMSFNCTreeViewNodeCache() { }
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Create */ inline __fastcall TTMSFNCTreeViewNodeCache(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItem*> > AComparer)/* overload */ : TTMSFNCTreeViewCache(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Create */ inline __fastcall TTMSFNCTreeViewNodeCache(System::Generics::Collections::TEnumerable__1<Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItem*>* const Collection)/* overload */ : TTMSFNCTreeViewCache(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Create */ inline __fastcall TTMSFNCTreeViewNodeCache(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItem* const *Values, const int Values_High)/* overload */ : TTMSFNCTreeViewCache(Values, Values_High) { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCTreeViewColumnsCache : public TTMSFNCTreeViewCache
{
	typedef TTMSFNCTreeViewCache inherited;
	
public:
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Create */ inline __fastcall TTMSFNCTreeViewColumnsCache()/* overload */ : TTMSFNCTreeViewCache() { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Create */ inline __fastcall TTMSFNCTreeViewColumnsCache(bool AOwnsObjects)/* overload */ : TTMSFNCTreeViewCache(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Create */ inline __fastcall TTMSFNCTreeViewColumnsCache(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItem*> > AComparer, bool AOwnsObjects)/* overload */ : TTMSFNCTreeViewCache(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Create */ inline __fastcall TTMSFNCTreeViewColumnsCache(System::Generics::Collections::TEnumerable__1<Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItem*>* const Collection, bool AOwnsObjects)/* overload */ : TTMSFNCTreeViewCache(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Destroy */ inline __fastcall virtual ~TTMSFNCTreeViewColumnsCache() { }
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Create */ inline __fastcall TTMSFNCTreeViewColumnsCache(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItem*> > AComparer)/* overload */ : TTMSFNCTreeViewCache(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Create */ inline __fastcall TTMSFNCTreeViewColumnsCache(System::Generics::Collections::TEnumerable__1<Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItem*>* const Collection)/* overload */ : TTMSFNCTreeViewCache(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Create */ inline __fastcall TTMSFNCTreeViewColumnsCache(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItem* const *Values, const int Values_High)/* overload */ : TTMSFNCTreeViewCache(Values, Values_High) { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCTreeViewColumnsTopCache : public TTMSFNCTreeViewColumnsCache
{
	typedef TTMSFNCTreeViewColumnsCache inherited;
	
public:
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Create */ inline __fastcall TTMSFNCTreeViewColumnsTopCache()/* overload */ : TTMSFNCTreeViewColumnsCache() { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Create */ inline __fastcall TTMSFNCTreeViewColumnsTopCache(bool AOwnsObjects)/* overload */ : TTMSFNCTreeViewColumnsCache(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Create */ inline __fastcall TTMSFNCTreeViewColumnsTopCache(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItem*> > AComparer, bool AOwnsObjects)/* overload */ : TTMSFNCTreeViewColumnsCache(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Create */ inline __fastcall TTMSFNCTreeViewColumnsTopCache(System::Generics::Collections::TEnumerable__1<Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItem*>* const Collection, bool AOwnsObjects)/* overload */ : TTMSFNCTreeViewColumnsCache(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Destroy */ inline __fastcall virtual ~TTMSFNCTreeViewColumnsTopCache() { }
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Create */ inline __fastcall TTMSFNCTreeViewColumnsTopCache(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItem*> > AComparer)/* overload */ : TTMSFNCTreeViewColumnsCache(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Create */ inline __fastcall TTMSFNCTreeViewColumnsTopCache(System::Generics::Collections::TEnumerable__1<Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItem*>* const Collection)/* overload */ : TTMSFNCTreeViewColumnsCache(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Create */ inline __fastcall TTMSFNCTreeViewColumnsTopCache(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItem* const *Values, const int Values_High)/* overload */ : TTMSFNCTreeViewColumnsCache(Values, Values_High) { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCTreeViewColumnsBottomCache : public TTMSFNCTreeViewColumnsCache
{
	typedef TTMSFNCTreeViewColumnsCache inherited;
	
public:
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Create */ inline __fastcall TTMSFNCTreeViewColumnsBottomCache()/* overload */ : TTMSFNCTreeViewColumnsCache() { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Create */ inline __fastcall TTMSFNCTreeViewColumnsBottomCache(bool AOwnsObjects)/* overload */ : TTMSFNCTreeViewColumnsCache(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Create */ inline __fastcall TTMSFNCTreeViewColumnsBottomCache(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItem*> > AComparer, bool AOwnsObjects)/* overload */ : TTMSFNCTreeViewColumnsCache(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Create */ inline __fastcall TTMSFNCTreeViewColumnsBottomCache(System::Generics::Collections::TEnumerable__1<Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItem*>* const Collection, bool AOwnsObjects)/* overload */ : TTMSFNCTreeViewColumnsCache(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Destroy */ inline __fastcall virtual ~TTMSFNCTreeViewColumnsBottomCache() { }
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Create */ inline __fastcall TTMSFNCTreeViewColumnsBottomCache(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItem*> > AComparer)/* overload */ : TTMSFNCTreeViewColumnsCache(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Create */ inline __fastcall TTMSFNCTreeViewColumnsBottomCache(System::Generics::Collections::TEnumerable__1<Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItem*>* const Collection)/* overload */ : TTMSFNCTreeViewColumnsCache(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Create */ inline __fastcall TTMSFNCTreeViewColumnsBottomCache(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItem* const *Values, const int Values_High)/* overload */ : TTMSFNCTreeViewColumnsCache(Values, Values_High) { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCTreeViewGroupsCache : public TTMSFNCTreeViewCache
{
	typedef TTMSFNCTreeViewCache inherited;
	
public:
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Create */ inline __fastcall TTMSFNCTreeViewGroupsCache()/* overload */ : TTMSFNCTreeViewCache() { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Create */ inline __fastcall TTMSFNCTreeViewGroupsCache(bool AOwnsObjects)/* overload */ : TTMSFNCTreeViewCache(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Create */ inline __fastcall TTMSFNCTreeViewGroupsCache(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItem*> > AComparer, bool AOwnsObjects)/* overload */ : TTMSFNCTreeViewCache(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Create */ inline __fastcall TTMSFNCTreeViewGroupsCache(System::Generics::Collections::TEnumerable__1<Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItem*>* const Collection, bool AOwnsObjects)/* overload */ : TTMSFNCTreeViewCache(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Destroy */ inline __fastcall virtual ~TTMSFNCTreeViewGroupsCache() { }
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Create */ inline __fastcall TTMSFNCTreeViewGroupsCache(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItem*> > AComparer)/* overload */ : TTMSFNCTreeViewCache(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Create */ inline __fastcall TTMSFNCTreeViewGroupsCache(System::Generics::Collections::TEnumerable__1<Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItem*>* const Collection)/* overload */ : TTMSFNCTreeViewCache(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Create */ inline __fastcall TTMSFNCTreeViewGroupsCache(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItem* const *Values, const int Values_High)/* overload */ : TTMSFNCTreeViewCache(Values, Values_High) { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCTreeViewGroupsTopCache : public TTMSFNCTreeViewGroupsCache
{
	typedef TTMSFNCTreeViewGroupsCache inherited;
	
public:
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Create */ inline __fastcall TTMSFNCTreeViewGroupsTopCache()/* overload */ : TTMSFNCTreeViewGroupsCache() { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Create */ inline __fastcall TTMSFNCTreeViewGroupsTopCache(bool AOwnsObjects)/* overload */ : TTMSFNCTreeViewGroupsCache(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Create */ inline __fastcall TTMSFNCTreeViewGroupsTopCache(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItem*> > AComparer, bool AOwnsObjects)/* overload */ : TTMSFNCTreeViewGroupsCache(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Create */ inline __fastcall TTMSFNCTreeViewGroupsTopCache(System::Generics::Collections::TEnumerable__1<Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItem*>* const Collection, bool AOwnsObjects)/* overload */ : TTMSFNCTreeViewGroupsCache(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Destroy */ inline __fastcall virtual ~TTMSFNCTreeViewGroupsTopCache() { }
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Create */ inline __fastcall TTMSFNCTreeViewGroupsTopCache(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItem*> > AComparer)/* overload */ : TTMSFNCTreeViewGroupsCache(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Create */ inline __fastcall TTMSFNCTreeViewGroupsTopCache(System::Generics::Collections::TEnumerable__1<Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItem*>* const Collection)/* overload */ : TTMSFNCTreeViewGroupsCache(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Create */ inline __fastcall TTMSFNCTreeViewGroupsTopCache(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItem* const *Values, const int Values_High)/* overload */ : TTMSFNCTreeViewGroupsCache(Values, Values_High) { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCTreeViewGroupsBottomCache : public TTMSFNCTreeViewGroupsCache
{
	typedef TTMSFNCTreeViewGroupsCache inherited;
	
public:
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Create */ inline __fastcall TTMSFNCTreeViewGroupsBottomCache()/* overload */ : TTMSFNCTreeViewGroupsCache() { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Create */ inline __fastcall TTMSFNCTreeViewGroupsBottomCache(bool AOwnsObjects)/* overload */ : TTMSFNCTreeViewGroupsCache(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Create */ inline __fastcall TTMSFNCTreeViewGroupsBottomCache(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItem*> > AComparer, bool AOwnsObjects)/* overload */ : TTMSFNCTreeViewGroupsCache(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Create */ inline __fastcall TTMSFNCTreeViewGroupsBottomCache(System::Generics::Collections::TEnumerable__1<Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItem*>* const Collection, bool AOwnsObjects)/* overload */ : TTMSFNCTreeViewGroupsCache(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Destroy */ inline __fastcall virtual ~TTMSFNCTreeViewGroupsBottomCache() { }
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Create */ inline __fastcall TTMSFNCTreeViewGroupsBottomCache(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItem*> > AComparer)/* overload */ : TTMSFNCTreeViewGroupsCache(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Create */ inline __fastcall TTMSFNCTreeViewGroupsBottomCache(System::Generics::Collections::TEnumerable__1<Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItem*>* const Collection)/* overload */ : TTMSFNCTreeViewGroupsCache(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Create */ inline __fastcall TTMSFNCTreeViewGroupsBottomCache(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItem* const *Values, const int Values_High)/* overload */ : TTMSFNCTreeViewGroupsCache(Values, Values_High) { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCTreeViewDisplayList : public System::Generics::Collections::TList__1<Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItem*>
{
	typedef System::Generics::Collections::TList__1<Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItem*> inherited;
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Create */ inline __fastcall TTMSFNCTreeViewDisplayList()/* overload */ : System::Generics::Collections::TList__1<Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItem*>() { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Create */ inline __fastcall TTMSFNCTreeViewDisplayList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItem*> > AComparer)/* overload */ : System::Generics::Collections::TList__1<Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItem*>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Create */ inline __fastcall TTMSFNCTreeViewDisplayList(System::Generics::Collections::TEnumerable__1<Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItem*>* const Collection)/* overload */ : System::Generics::Collections::TList__1<Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItem*>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Create */ inline __fastcall TTMSFNCTreeViewDisplayList(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItem* const *Values, const int Values_High)/* overload */ : System::Generics::Collections::TList__1<Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItem*>(Values, Values_High) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Destroy */ inline __fastcall virtual ~TTMSFNCTreeViewDisplayList() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCTreeViewNodeDisplayList : public TTMSFNCTreeViewDisplayList
{
	typedef TTMSFNCTreeViewDisplayList inherited;
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Create */ inline __fastcall TTMSFNCTreeViewNodeDisplayList()/* overload */ : TTMSFNCTreeViewDisplayList() { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Create */ inline __fastcall TTMSFNCTreeViewNodeDisplayList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItem*> > AComparer)/* overload */ : TTMSFNCTreeViewDisplayList(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Create */ inline __fastcall TTMSFNCTreeViewNodeDisplayList(System::Generics::Collections::TEnumerable__1<Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItem*>* const Collection)/* overload */ : TTMSFNCTreeViewDisplayList(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Create */ inline __fastcall TTMSFNCTreeViewNodeDisplayList(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItem* const *Values, const int Values_High)/* overload */ : TTMSFNCTreeViewDisplayList(Values, Values_High) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Destroy */ inline __fastcall virtual ~TTMSFNCTreeViewNodeDisplayList() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCTreeViewColumnsDisplayList : public TTMSFNCTreeViewDisplayList
{
	typedef TTMSFNCTreeViewDisplayList inherited;
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Create */ inline __fastcall TTMSFNCTreeViewColumnsDisplayList()/* overload */ : TTMSFNCTreeViewDisplayList() { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Create */ inline __fastcall TTMSFNCTreeViewColumnsDisplayList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItem*> > AComparer)/* overload */ : TTMSFNCTreeViewDisplayList(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Create */ inline __fastcall TTMSFNCTreeViewColumnsDisplayList(System::Generics::Collections::TEnumerable__1<Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItem*>* const Collection)/* overload */ : TTMSFNCTreeViewDisplayList(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Create */ inline __fastcall TTMSFNCTreeViewColumnsDisplayList(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItem* const *Values, const int Values_High)/* overload */ : TTMSFNCTreeViewDisplayList(Values, Values_High) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Destroy */ inline __fastcall virtual ~TTMSFNCTreeViewColumnsDisplayList() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCTreeViewColumnsTopDisplayList : public TTMSFNCTreeViewColumnsDisplayList
{
	typedef TTMSFNCTreeViewColumnsDisplayList inherited;
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Create */ inline __fastcall TTMSFNCTreeViewColumnsTopDisplayList()/* overload */ : TTMSFNCTreeViewColumnsDisplayList() { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Create */ inline __fastcall TTMSFNCTreeViewColumnsTopDisplayList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItem*> > AComparer)/* overload */ : TTMSFNCTreeViewColumnsDisplayList(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Create */ inline __fastcall TTMSFNCTreeViewColumnsTopDisplayList(System::Generics::Collections::TEnumerable__1<Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItem*>* const Collection)/* overload */ : TTMSFNCTreeViewColumnsDisplayList(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Create */ inline __fastcall TTMSFNCTreeViewColumnsTopDisplayList(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItem* const *Values, const int Values_High)/* overload */ : TTMSFNCTreeViewColumnsDisplayList(Values, Values_High) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Destroy */ inline __fastcall virtual ~TTMSFNCTreeViewColumnsTopDisplayList() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCTreeViewColumnsBottomDisplayList : public TTMSFNCTreeViewColumnsDisplayList
{
	typedef TTMSFNCTreeViewColumnsDisplayList inherited;
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Create */ inline __fastcall TTMSFNCTreeViewColumnsBottomDisplayList()/* overload */ : TTMSFNCTreeViewColumnsDisplayList() { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Create */ inline __fastcall TTMSFNCTreeViewColumnsBottomDisplayList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItem*> > AComparer)/* overload */ : TTMSFNCTreeViewColumnsDisplayList(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Create */ inline __fastcall TTMSFNCTreeViewColumnsBottomDisplayList(System::Generics::Collections::TEnumerable__1<Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItem*>* const Collection)/* overload */ : TTMSFNCTreeViewColumnsDisplayList(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Create */ inline __fastcall TTMSFNCTreeViewColumnsBottomDisplayList(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItem* const *Values, const int Values_High)/* overload */ : TTMSFNCTreeViewColumnsDisplayList(Values, Values_High) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Destroy */ inline __fastcall virtual ~TTMSFNCTreeViewColumnsBottomDisplayList() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCTreeViewGroupsDisplayList : public TTMSFNCTreeViewDisplayList
{
	typedef TTMSFNCTreeViewDisplayList inherited;
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Create */ inline __fastcall TTMSFNCTreeViewGroupsDisplayList()/* overload */ : TTMSFNCTreeViewDisplayList() { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Create */ inline __fastcall TTMSFNCTreeViewGroupsDisplayList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItem*> > AComparer)/* overload */ : TTMSFNCTreeViewDisplayList(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Create */ inline __fastcall TTMSFNCTreeViewGroupsDisplayList(System::Generics::Collections::TEnumerable__1<Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItem*>* const Collection)/* overload */ : TTMSFNCTreeViewDisplayList(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Create */ inline __fastcall TTMSFNCTreeViewGroupsDisplayList(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItem* const *Values, const int Values_High)/* overload */ : TTMSFNCTreeViewDisplayList(Values, Values_High) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Destroy */ inline __fastcall virtual ~TTMSFNCTreeViewGroupsDisplayList() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCTreeViewGroupsTopDisplayList : public TTMSFNCTreeViewGroupsDisplayList
{
	typedef TTMSFNCTreeViewGroupsDisplayList inherited;
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Create */ inline __fastcall TTMSFNCTreeViewGroupsTopDisplayList()/* overload */ : TTMSFNCTreeViewGroupsDisplayList() { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Create */ inline __fastcall TTMSFNCTreeViewGroupsTopDisplayList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItem*> > AComparer)/* overload */ : TTMSFNCTreeViewGroupsDisplayList(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Create */ inline __fastcall TTMSFNCTreeViewGroupsTopDisplayList(System::Generics::Collections::TEnumerable__1<Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItem*>* const Collection)/* overload */ : TTMSFNCTreeViewGroupsDisplayList(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Create */ inline __fastcall TTMSFNCTreeViewGroupsTopDisplayList(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItem* const *Values, const int Values_High)/* overload */ : TTMSFNCTreeViewGroupsDisplayList(Values, Values_High) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Destroy */ inline __fastcall virtual ~TTMSFNCTreeViewGroupsTopDisplayList() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCTreeViewGroupsBottomDisplayList : public TTMSFNCTreeViewGroupsDisplayList
{
	typedef TTMSFNCTreeViewGroupsDisplayList inherited;
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Create */ inline __fastcall TTMSFNCTreeViewGroupsBottomDisplayList()/* overload */ : TTMSFNCTreeViewGroupsDisplayList() { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Create */ inline __fastcall TTMSFNCTreeViewGroupsBottomDisplayList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItem*> > AComparer)/* overload */ : TTMSFNCTreeViewGroupsDisplayList(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Create */ inline __fastcall TTMSFNCTreeViewGroupsBottomDisplayList(System::Generics::Collections::TEnumerable__1<Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItem*>* const Collection)/* overload */ : TTMSFNCTreeViewGroupsDisplayList(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Create */ inline __fastcall TTMSFNCTreeViewGroupsBottomDisplayList(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItem* const *Values, const int Values_High)/* overload */ : TTMSFNCTreeViewGroupsDisplayList(Values, Values_High) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewCacheItem>.Destroy */ inline __fastcall virtual ~TTMSFNCTreeViewGroupsBottomDisplayList() { }
	
};

#pragma pack(pop)

enum DECLSPEC_DENUM TTMSFNCTreeViewColumnsLayout : unsigned char { tclTop, tclBottom };

typedef System::Set<TTMSFNCTreeViewColumnsLayout, TTMSFNCTreeViewColumnsLayout::tclTop, TTMSFNCTreeViewColumnsLayout::tclBottom> TTMSFNCTreeViewColumnsLayouts;

enum DECLSPEC_DENUM TTMSFNCTreeViewGroupLayout : unsigned char { tglTop, tglBottom };

typedef System::Set<TTMSFNCTreeViewGroupLayout, TTMSFNCTreeViewGroupLayout::tglTop, TTMSFNCTreeViewGroupLayout::tglBottom> TTMSFNCTreeViewGroupsLayouts;

enum DECLSPEC_DENUM TTMSFNCTreeViewNodeHeightMode : unsigned char { tnhmFixed, tnhmVariable };

enum DECLSPEC_DENUM TTMSFNCTreeViewSelectionArea : unsigned char { tsaDefault, tsaFull, tsaFromLevel, tsaFromText };

class PASCALIMPLEMENTATION TTMSFNCTreeViewNodesAppearance : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	TTMSFNCCustomTreeView* FTreeView;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FFont;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FDisabledFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FSelectedFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FDisabledStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FSelectedStroke;
	TTMSFNCTreeViewSelectionArea FSelectionArea;
	int FExpandColumn;
	double FExpandWidth;
	double FExpandHeight;
	double FLevelIndent;
	TTMSFNCTreeViewNodeHeightMode FHeightMode;
	double FFixedHeight;
	double FVariableMinimumHeight;
	System::Uitypes::TAlphaColor FSelectedFontColor;
	System::Uitypes::TAlphaColor FDisabledFontColor;
	System::Uitypes::TAlphaColor FExtendedFontColor;
	System::Uitypes::TAlphaColor FExtendedSelectedFontColor;
	System::Uitypes::TAlphaColor FExtendedDisabledFontColor;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FExtendedDisabledFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FExtendedFont;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FExtendedSelectedFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FExtendedDisabledStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FExtendedSelectedStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FExtendedFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FExtendedStroke;
	bool FShowLines;
	Fmx::Tmsfnctypes::TTMSFNCBitmap* FExpandNodeIcon;
	Fmx::Tmsfnctypes::TTMSFNCBitmap* FCollapseNodeIcon;
	Fmx::Tmsfnctypes::TTMSFNCBitmap* FExpandNodeIconLarge;
	Fmx::Tmsfnctypes::TTMSFNCBitmap* FCollapseNodeIconLarge;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FColumnStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FLineStroke;
	bool FShowFocus;
	double FSpacing;
	System::Uitypes::TAlphaColor FDisabledTitleFontColor;
	System::Uitypes::TAlphaColor FSelectedTitleFontColor;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FTitleFont;
	void __fastcall SetFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetDisabledFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetDisabledStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetSelectedFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetSelectedStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetSelectionArea(const TTMSFNCTreeViewSelectionArea Value);
	void __fastcall SetExtendedFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetExtendedStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetExtendedFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetExtendedDisabledFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetExtendedDisabledStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetExtendedSelectedFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetExtendedSelectedStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetExpandColumn(const int Value);
	void __fastcall SetExpandWidth(const double Value);
	void __fastcall SetExpandHeight(const double Value);
	void __fastcall SetLevelIndent(const double Value);
	void __fastcall SetFixedHeight(const double Value);
	void __fastcall SetVariableMinimumHeight(const double Value);
	void __fastcall SetSelectedFontColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetDisabledFontColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetExtendedFontColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetExtendedSelectedFontColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetExtendedDisabledFontColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetHeightMode(const TTMSFNCTreeViewNodeHeightMode Value);
	void __fastcall SetShowLines(const bool Value);
	void __fastcall SetCollapseNodeIcon(Fmx::Tmsfnctypes::TTMSFNCBitmap* const Value);
	void __fastcall SetExpandNodeIcon(Fmx::Tmsfnctypes::TTMSFNCBitmap* const Value);
	void __fastcall SetCollapseNodeIconLarge(Fmx::Tmsfnctypes::TTMSFNCBitmap* const Value);
	void __fastcall SetExpandNodeIconLarge(Fmx::Tmsfnctypes::TTMSFNCBitmap* const Value);
	void __fastcall SetColumnStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetLineStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetShowFocus(const bool Value);
	bool __fastcall IsSpacingStored();
	void __fastcall SetSpacing(const double Value);
	void __fastcall SetDisabledTitleFontColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetSelectedTitleFontColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetTitleFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	
protected:
	void __fastcall Changed(System::TObject* Sender);
	void __fastcall BitmapChanged(System::TObject* Sender);
	
public:
	__fastcall TTMSFNCTreeViewNodesAppearance(TTMSFNCCustomTreeView* ATreeView);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual ~TTMSFNCTreeViewNodesAppearance();
	
__published:
	__property bool ShowFocus = {read=FShowFocus, write=SetShowFocus, default=1};
	__property int ExpandColumn = {read=FExpandColumn, write=SetExpandColumn, default=0};
	__property double ExpandWidth = {read=FExpandWidth, write=SetExpandWidth};
	__property double ExpandHeight = {read=FExpandHeight, write=SetExpandHeight};
	__property double LevelIndent = {read=FLevelIndent, write=SetLevelIndent};
	__property double Spacing = {read=FSpacing, write=SetSpacing, stored=IsSpacingStored};
	__property double FixedHeight = {read=FFixedHeight, write=SetFixedHeight};
	__property double VariableMinimumHeight = {read=FVariableMinimumHeight, write=SetVariableMinimumHeight};
	__property TTMSFNCTreeViewNodeHeightMode HeightMode = {read=FHeightMode, write=SetHeightMode, default=0};
	__property bool ShowLines = {read=FShowLines, write=SetShowLines, default=1};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* Fill = {read=FFill, write=SetFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* Stroke = {read=FStroke, write=SetStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* ColumnStroke = {read=FColumnStroke, write=SetColumnStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* LineStroke = {read=FLineStroke, write=SetLineStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* Font = {read=FFont, write=SetFont};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* TitleFont = {read=FTitleFont, write=SetTitleFont};
	__property System::Uitypes::TAlphaColor SelectedFontColor = {read=FSelectedFontColor, write=SetSelectedFontColor, default=-1};
	__property System::Uitypes::TAlphaColor DisabledFontColor = {read=FDisabledFontColor, write=SetDisabledFontColor, default=-4144960};
	__property System::Uitypes::TAlphaColor SelectedTitleFontColor = {read=FSelectedTitleFontColor, write=SetSelectedTitleFontColor, default=-1};
	__property System::Uitypes::TAlphaColor DisabledTitleFontColor = {read=FDisabledTitleFontColor, write=SetDisabledTitleFontColor, default=-4144960};
	__property System::Uitypes::TAlphaColor ExtendedFontColor = {read=FExtendedFontColor, write=SetExtendedFontColor, default=-16777216};
	__property System::Uitypes::TAlphaColor ExtendedSelectedFontColor = {read=FExtendedSelectedFontColor, write=SetExtendedSelectedFontColor, default=-1};
	__property System::Uitypes::TAlphaColor ExtendedDisabledFontColor = {read=FExtendedDisabledFontColor, write=SetExtendedDisabledFontColor, default=-4144960};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* SelectedFill = {read=FSelectedFill, write=SetSelectedFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* SelectedStroke = {read=FSelectedStroke, write=SetSelectedStroke};
	__property TTMSFNCTreeViewSelectionArea SelectionArea = {read=FSelectionArea, write=SetSelectionArea, default=3};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* DisabledFill = {read=FDisabledFill, write=SetDisabledFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* DisabledStroke = {read=FDisabledStroke, write=SetDisabledStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* ExtendedFill = {read=FExtendedFill, write=SetExtendedFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* ExtendedStroke = {read=FExtendedStroke, write=SetExtendedStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* ExtendedFont = {read=FExtendedFont, write=SetExtendedFont};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* ExtendedSelectedFill = {read=FExtendedSelectedFill, write=SetExtendedSelectedFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* ExtendedSelectedStroke = {read=FExtendedSelectedStroke, write=SetExtendedSelectedStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* ExtendedDisabledFill = {read=FExtendedDisabledFill, write=SetExtendedDisabledFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* ExtendedDisabledStroke = {read=FExtendedDisabledStroke, write=SetExtendedDisabledStroke};
	__property Fmx::Tmsfnctypes::TTMSFNCBitmap* ExpandNodeIcon = {read=FExpandNodeIcon, write=SetExpandNodeIcon};
	__property Fmx::Tmsfnctypes::TTMSFNCBitmap* CollapseNodeIcon = {read=FCollapseNodeIcon, write=SetCollapseNodeIcon};
	__property Fmx::Tmsfnctypes::TTMSFNCBitmap* ExpandNodeIconLarge = {read=FExpandNodeIconLarge, write=SetExpandNodeIconLarge};
	__property Fmx::Tmsfnctypes::TTMSFNCBitmap* CollapseNodeIconLarge = {read=FCollapseNodeIconLarge, write=SetCollapseNodeIconLarge};
};


class PASCALIMPLEMENTATION TTMSFNCTreeViewColumnsAppearance : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	TTMSFNCCustomTreeView* FTreeView;
	TTMSFNCTreeViewColumnsLayouts FLayouts;
	bool FStretch;
	int FStretchColumn;
	bool FStretchAll;
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
	bool FTopVerticalText;
	bool FBottomVerticalText;
	bool FFillEmptySpaces;
	System::Uitypes::TAlphaColor FSortIndicatorColor;
	bool FOptimizedColumnDisplay;
	void __fastcall SetLayouts(const TTMSFNCTreeViewColumnsLayouts Value);
	void __fastcall SetStretch(const bool Value);
	void __fastcall SetStretchAll(const bool Value);
	void __fastcall SetStretchColumn(const int Value);
	void __fastcall SetBottomSize(const double Value);
	void __fastcall SetTopSize(const double Value);
	void __fastcall SetBottomFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetBottomStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetTopFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetTopStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetBottomFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetTopFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetTopVerticalText(const bool Value);
	void __fastcall SetBottomVerticalText(const bool Value);
	void __fastcall SetFillEmptySpaces(const bool Value);
	void __fastcall SetSortIndicatorColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetOptimizedColumnDisplay(const bool Value);
	
protected:
	void __fastcall Changed(System::TObject* Sender);
	
public:
	__fastcall TTMSFNCTreeViewColumnsAppearance(TTMSFNCCustomTreeView* ATreeView);
	__fastcall virtual ~TTMSFNCTreeViewColumnsAppearance();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property TTMSFNCTreeViewColumnsLayouts Layouts = {read=FLayouts, write=SetLayouts, default=1};
	__property bool Stretch = {read=FStretch, write=SetStretch, default=1};
	__property int StretchColumn = {read=FStretchColumn, write=SetStretchColumn, default=-1};
	__property bool StretchAll = {read=FStretchAll, write=SetStretchAll, default=1};
	__property double TopSize = {read=FTopSize, write=SetTopSize};
	__property double BottomSize = {read=FBottomSize, write=SetBottomSize};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* TopFont = {read=FTopFont, write=SetTopFont};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* BottomFont = {read=FBottomFont, write=SetBottomFont};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* TopFill = {read=FTopFill, write=SetTopFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* BottomFill = {read=FBottomFill, write=SetBottomFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* TopStroke = {read=FTopStroke, write=SetTopStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* BottomStroke = {read=FBottomStroke, write=SetBottomStroke};
	__property bool TopVerticalText = {read=FTopVerticalText, write=SetTopVerticalText, default=0};
	__property bool BottomVerticalText = {read=FBottomVerticalText, write=SetBottomVerticalText, default=0};
	__property bool FillEmptySpaces = {read=FFillEmptySpaces, write=SetFillEmptySpaces, default=1};
	__property System::Uitypes::TAlphaColor SortIndicatorColor = {read=FSortIndicatorColor, write=SetSortIndicatorColor, default=-12156236};
	__property bool OptimizedColumnDisplay = {read=FOptimizedColumnDisplay, write=SetOptimizedColumnDisplay, default=1};
};


enum DECLSPEC_DENUM TTMSFNCTreeViewColumnEmptySpace : unsigned char { tcesTopLeft, tcesTopRight, tcesBottomLeft, tcesBottomRight };

enum DECLSPEC_DENUM TTMSFNCTreeViewGroupEmptySpace : unsigned char { tgesTopLeft, tgesTopRight, tgesBottomLeft, tgesBottomRight };

class PASCALIMPLEMENTATION TTMSFNCTreeViewGroupsAppearance : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	TTMSFNCCustomTreeView* FTreeView;
	TTMSFNCTreeViewGroupsLayouts FLayouts;
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
	bool FTopVerticalText;
	bool FBottomVerticalText;
	bool FFillEmptySpaces;
	void __fastcall SetLayouts(const TTMSFNCTreeViewGroupsLayouts Value);
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
	void __fastcall SetTopVerticalText(const bool Value);
	void __fastcall SetBottomVerticalText(const bool Value);
	void __fastcall SetFillEmptySpaces(const bool Value);
	
protected:
	void __fastcall Changed(System::TObject* Sender);
	
public:
	__fastcall TTMSFNCTreeViewGroupsAppearance(TTMSFNCCustomTreeView* ATreeView);
	__fastcall virtual ~TTMSFNCTreeViewGroupsAppearance();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property TTMSFNCTreeViewGroupsLayouts Layouts = {read=FLayouts, write=SetLayouts, default=1};
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
	__property bool TopVerticalText = {read=FTopVerticalText, write=SetTopVerticalText, default=0};
	__property bool BottomVerticalText = {read=FBottomVerticalText, write=SetBottomVerticalText, default=0};
	__property bool FillEmptySpaces = {read=FFillEmptySpaces, write=SetFillEmptySpaces, default=1};
};


typedef void __fastcall (__closure *TTMSFNCTreeViewBeforeDrawSortIndicatorEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AColumn, int ASortIndex, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNodesSortKind ASortKind, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCTreeViewAfterDrawSortIndicatorEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AColumn, int ASortIndex, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNodesSortKind ASortKind);

typedef void __fastcall (__closure *TTMSFNCTreeViewNodeCompareEvent)(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNode* Node1, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNode* Node2, int AColumn, int &ACompareResult);

typedef void __fastcall (__closure *TTMSFNCTreeViewBeforeSizeColumnEvent)(System::TObject* Sender, int AColumn, double AColumnSize, double &ANewColumnSize, bool &AAllow);

typedef void __fastcall (__closure *TTMSFNCTreeViewAfterSizeColumnEvent)(System::TObject* Sender, int AColumn, double AColumnSize);

typedef void __fastcall (__closure *TTMSFNCTreeViewBeforeDrawColumnEmptySpaceEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCTreeViewColumnEmptySpace ASpace, bool &AAllow, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCTreeViewAfterDrawColumnEmptySpaceEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCTreeViewColumnEmptySpace ASpace);

typedef void __fastcall (__closure *TTMSFNCTreeViewBeforeDrawGroupEmptySpaceEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCTreeViewGroupEmptySpace ASpace, bool &AAllow, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCTreeViewAfterDrawGroupEmptySpaceEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCTreeViewGroupEmptySpace ASpace);

typedef void __fastcall (__closure *TTMSFNCTreeViewNeedFilterDropDownDataEvent)(System::TObject* Sender, int AColumn, System::Classes::TStrings* AValues);

typedef void __fastcall (__closure *TTMSFNCTreeViewBeforeDrawColumnEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AColumn, bool &AAllow, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCTreeViewAfterDrawColumnEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AColumn);

typedef void __fastcall (__closure *TTMSFNCTreeViewBeforeDrawColumnHeaderEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItemKind AKind, bool &AAllow, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCTreeViewAfterDrawColumnHeaderEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItemKind AKind);

typedef void __fastcall (__closure *TTMSFNCTreeViewBeforeDrawGroupEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AGroup, int AStartColumn, int AEndColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItemKind AKind, bool &AAllow, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCTreeViewAfterDrawGroupEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AGroup, int AStartColumn, int AEndColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItemKind AKind);

typedef void __fastcall (__closure *TTMSFNCTreeViewBeforeDrawNodeEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, bool &AAllow, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCTreeViewAfterDrawNodeEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode);

typedef void __fastcall (__closure *TTMSFNCTreeViewGetNumberOfNodesEvent)(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int &ANumberOfNodes);

typedef void __fastcall (__closure *TTMSFNCTreeViewGetColumnTextEvent)(System::TObject* Sender, int AColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItemKind AKind, System::UnicodeString &AText);

typedef void __fastcall (__closure *TTMSFNCTreeViewBeforeDrawColumnTextEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItemKind AKind, System::UnicodeString AText, bool &AAllow);

typedef void __fastcall (__closure *TTMSFNCTreeViewAfterDrawColumnTextEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItemKind AKind, System::UnicodeString AText);

typedef void __fastcall (__closure *TTMSFNCTreeViewGetGroupTextEvent)(System::TObject* Sender, int AGroup, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItemKind AKind, System::UnicodeString &AText);

typedef void __fastcall (__closure *TTMSFNCTreeViewBeforeDrawGroupTextEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AGroup, int AStartColumn, int AEndColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItemKind AKind, System::UnicodeString AText, bool &AAllow);

typedef void __fastcall (__closure *TTMSFNCTreeViewAfterDrawGroupTextEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AGroup, int AStartColumn, int AEndColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItemKind AKind, System::UnicodeString AText);

typedef void __fastcall (__closure *TTMSFNCTreeViewNodeAnchorClickEvent)(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, System::UnicodeString AAnchor);

typedef void __fastcall (__closure *TTMSFNCTreeViewNodeTitleAnchorClickEvent)(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, System::UnicodeString AAnchor);

typedef void __fastcall (__closure *TTMSFNCTreeViewNodeChangedEvent)(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode);

typedef void __fastcall (__closure *TTMSFNCTreeViewGetNodeTextEvent)(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNodeTextMode AMode, System::UnicodeString &AText);

typedef void __fastcall (__closure *TTMSFNCTreeViewGetNodeDataEvent)(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode);

typedef void __fastcall (__closure *TTMSFNCTreeViewGetNodeTitleEvent)(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNodeTextMode AMode, System::UnicodeString &ATitle);

typedef void __fastcall (__closure *TTMSFNCTreeViewGetNodeTitleExpandedEvent)(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, bool &AExpanded);

typedef void __fastcall (__closure *TTMSFNCTreeViewGetNodeSidesEvent)(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsSides &ASides);

typedef void __fastcall (__closure *TTMSFNCTreeViewGetNodeRoundingEvent)(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int &ARounding, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsCorners &ACorners);

typedef void __fastcall (__closure *TTMSFNCTreeViewGetNodeTrimmingEvent)(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextTrimming &ATrimming);

typedef void __fastcall (__closure *TTMSFNCTreeViewGetNodeHorizontalTextAlignEvent)(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign &AHorizontalTextAlign);

typedef void __fastcall (__closure *TTMSFNCTreeViewGetNodeVerticalTextAlignEvent)(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign &AVerticalTextAlign);

typedef void __fastcall (__closure *TTMSFNCTreeViewGetNodeWordWrappingEvent)(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, bool &AWordWrapping);

typedef void __fastcall (__closure *TTMSFNCTreeViewGetNodeExtraSizeEvent)(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, float &AExtraSize);

typedef void __fastcall (__closure *TTMSFNCTreeViewGetNodeTitleExtraSizeEvent)(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, float &ATitleExtraSize);

typedef void __fastcall (__closure *TTMSFNCTreeViewGetColumnTrimmingEvent)(System::TObject* Sender, int AColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItemKind AKind, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextTrimming &ATrimming);

typedef void __fastcall (__closure *TTMSFNCTreeViewGetColumnHorizontalTextAlignEvent)(System::TObject* Sender, int AColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItemKind AKind, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign &AHorizontalTextAlign);

typedef void __fastcall (__closure *TTMSFNCTreeViewGetColumnVerticalTextAlignEvent)(System::TObject* Sender, int AColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItemKind AKind, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign &AVerticalTextAlign);

typedef void __fastcall (__closure *TTMSFNCTreeViewGetColumnWordWrappingEvent)(System::TObject* Sender, int AColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItemKind AKind, bool &AWordWrapping);

typedef void __fastcall (__closure *TTMSFNCTreeViewGetNodeIconEvent)(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, bool ALarge, Fmx::Tmsfnctypes::TTMSFNCBitmap* &AIcon);

typedef void __fastcall (__closure *TTMSFNCTreeViewGetNodeIconSizeEvent)(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, bool ALarge, Fmx::Tmsfnctypes::TTMSFNCBitmap* AIcon, double &AIconWidth, double &AIconHeight);

typedef void __fastcall (__closure *TTMSFNCTreeViewFocusedNodeChangedEvent)(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode);

typedef void __fastcall (__closure *TTMSFNCTreeViewGetNodeHeightEvent)(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, double &AHeight);

typedef void __fastcall (__closure *TTMSFNCTreeViewBeforeDrawNodeTextEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, System::UnicodeString AText, bool &AAllow);

typedef void __fastcall (__closure *TTMSFNCTreeViewAfterDrawNodeTextEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, System::UnicodeString AText);

typedef void __fastcall (__closure *TTMSFNCTreeViewBeforeDrawNodeTitleEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, System::UnicodeString ATitle, bool &AAllow);

typedef void __fastcall (__closure *TTMSFNCTreeViewAfterDrawNodeTitleEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, System::UnicodeString ATitle);

typedef void __fastcall (__closure *TTMSFNCTreeViewBeforeDrawNodeExpandEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, Fmx::Tmsfnctypes::TTMSFNCBitmap* AExpand, bool &AAllow);

typedef void __fastcall (__closure *TTMSFNCTreeViewAfterDrawNodeExpandEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, Fmx::Tmsfnctypes::TTMSFNCBitmap* AExpand);

typedef void __fastcall (__closure *TTMSFNCTreeViewBeforeDrawNodeIconEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, Fmx::Tmsfnctypes::TTMSFNCBitmap* AIcon, bool &AAllow);

typedef void __fastcall (__closure *TTMSFNCTreeViewAfterDrawNodeIconEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, Fmx::Tmsfnctypes::TTMSFNCBitmap* AIcon);

typedef void __fastcall (__closure *TTMSFNCTreeViewBeforeDrawNodeExtraEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, bool &AAllow);

typedef void __fastcall (__closure *TTMSFNCTreeViewAfterDrawNodeExtraEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode);

typedef void __fastcall (__closure *TTMSFNCTreeViewDrawNodeExtraEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode);

typedef void __fastcall (__closure *TTMSFNCTreeViewBeforeDrawNodeTitleExtraEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, bool &AAllow);

typedef void __fastcall (__closure *TTMSFNCTreeViewAfterDrawNodeTitleExtraEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode);

typedef void __fastcall (__closure *TTMSFNCTreeViewDrawNodeTitleExtraEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode);

typedef void __fastcall (__closure *TTMSFNCTreeViewBeforeDrawNodeCheckEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, Fmx::Tmsfnctypes::TTMSFNCBitmap* ACheck, bool &AAllow);

typedef void __fastcall (__closure *TTMSFNCTreeViewAfterDrawNodeCheckEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, Fmx::Tmsfnctypes::TTMSFNCBitmap* ACheck);

typedef void __fastcall (__closure *TTMSFNCTreeViewGetNodeColorEvent)(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, System::Uitypes::TAlphaColor &AColor);

typedef void __fastcall (__closure *TTMSFNCTreeViewGetNodeCheckTypeEvent)(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNodeCheckType &ACheckType);

typedef void __fastcall (__closure *TTMSFNCTreeViewGetNodeTextColorEvent)(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, System::Uitypes::TAlphaColor &ATextColor);

typedef void __fastcall (__closure *TTMSFNCTreeViewGetNodeTitleColorEvent)(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, System::Uitypes::TAlphaColor &ATitleColor);

typedef void __fastcall (__closure *TTMSFNCTreeViewIsNodeExtendedEvent)(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, bool &AExtended);

typedef void __fastcall (__closure *TTMSFNCTreeViewColumnAnchorClickEvent)(System::TObject* Sender, int AColumn, System::UnicodeString AAnchor);

typedef void __fastcall (__closure *TTMSFNCTreeViewIsNodeDeletableEvent)(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, bool &ADeletable);

typedef void __fastcall (__closure *TTMSFNCTreeViewIsNodeCheckedEvent)(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, bool &AChecked);

typedef void __fastcall (__closure *TTMSFNCTreeViewIsNodeExpandedEvent)(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, bool &AExpanded);

typedef void __fastcall (__closure *TTMSFNCTreeViewIsNodeVisibleEvent)(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, bool &AVisible);

typedef void __fastcall (__closure *TTMSFNCTreeViewIsNodeEnabledEvent)(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, bool &AEnabled);

typedef void __fastcall (__closure *TTMSFNCTreeViewBeforeUpdateNodeEvent)(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, System::UnicodeString &AText, bool &ACanUpdate);

typedef void __fastcall (__closure *TTMSFNCTreeViewAfterUpdateNodeEvent)(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn);

typedef void __fastcall (__closure *TTMSFNCTreeViewBeforeCollapseNodeEvent)(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, bool &ACanCollapse);

typedef void __fastcall (__closure *TTMSFNCTreeViewAfterCollapseNodeEvent)(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode);

typedef void __fastcall (__closure *TTMSFNCTreeViewBeforeExpandNodeEvent)(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, bool &ACanExpand);

typedef void __fastcall (__closure *TTMSFNCTreeViewAfterExpandNodeEvent)(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode);

typedef void __fastcall (__closure *TTMSFNCTreeViewBeforeCheckNodeEvent)(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, bool &ACanCheck);

typedef void __fastcall (__closure *TTMSFNCTreeViewAfterCheckNodeEvent)(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn);

typedef void __fastcall (__closure *TTMSFNCTreeViewBeforeUnCheckNodeEvent)(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, bool &ACanUnCheck);

typedef void __fastcall (__closure *TTMSFNCTreeViewAfterUnCheckNodeEvent)(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn);

typedef void __fastcall (__closure *TTMSFNCTreeViewBeforeSelectAllNodesEvent)(System::TObject* Sender, bool &ACanSelect);

typedef void __fastcall (__closure *TTMSFNCTreeViewAfterSelectAllNodesEvent)(System::TObject* Sender);

typedef void __fastcall (__closure *TTMSFNCTreeViewBeforeSelectNodeEvent)(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, bool &ACanSelect);

typedef void __fastcall (__closure *TTMSFNCTreeViewAfterSelectNodeEvent)(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode);

typedef void __fastcall (__closure *TTMSFNCTreeViewBeforeUnSelectNodeEvent)(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, bool &ACanUnSelect);

typedef void __fastcall (__closure *TTMSFNCTreeViewAfterUnSelectNodeEvent)(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode);

typedef void __fastcall (__closure *TTMSFNCTreeViewNodeClickEvent)(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode);

typedef void __fastcall (__closure *TTMSFNCTreeViewNodeMouseEnterEvent)(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode);

typedef void __fastcall (__closure *TTMSFNCTreeViewNodeMouseLeaveEvent)(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode);

typedef void __fastcall (__closure *TTMSFNCTreeViewScrollEvent)(System::TObject* Sender, float APosition);

typedef void __fastcall (__closure *TTMSFNCTreeViewBeforeAddJSONNodeEvent)(System::TObject* Sender, System::Json::TJSONValue* AJSONValue, bool &AAddNode);

typedef void __fastcall (__closure *TTMSFNCTreeViewAfterAddJSONNodeEvent)(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNode* ANode, System::Json::TJSONValue* AJSONValue);

typedef void __fastcall (__closure *TTMSFNCTreeViewGetHTMLTemplateValueEvent)(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNodeValue* ANodeValue, System::UnicodeString AName, System::UnicodeString &AValue);

typedef void __fastcall (__closure *TTMSFNCTreeViewGetHTMLTemplateEvent)(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNodeValue* ANodeValue, int AColumnIndex, System::UnicodeString &AHTMLTemplate);

typedef Fmx::Controls::TControl TTMSFNCTreeViewInplaceEditor;

_DECLARE_METACLASS(System::TMetaClass, TTMSFNCTreeViewInplaceEditorClass);

typedef void __fastcall (__closure *TTMSFNCTreeViewCustomizeInplaceEditorEvent)(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, Fmx::Controls::TControl* AInplaceEditor);

typedef void __fastcall (__closure *TTMSFNCTreeViewGetInplaceEditorRectEvent)(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, Fmx::Controls::TControl* AInplaceEditor, System::Types::TRectF &AInplaceEditorRect);

typedef void __fastcall (__closure *TTMSFNCTreeViewGetInplaceEditorEvent)(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, bool &ATransparent, TTMSFNCTreeViewInplaceEditorClass &AInplaceEditorClass);

typedef void __fastcall (__closure *TTMSFNCTreeViewBeforeOpenInplaceEditorEvent)(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, bool &ACanOpen);

typedef void __fastcall (__closure *TTMSFNCTreeViewAfterOpenInplaceEditorEvent)(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, Fmx::Controls::TControl* AInplaceEditor, const System::Types::TRectF &AInplaceEditorRect);

typedef void __fastcall (__closure *TTMSFNCTreeViewCloseInplaceEditorEvent)(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, Fmx::Controls::TControl* AInplaceEditor, bool ACancelled, bool &ACanClose);

typedef void __fastcall (__closure *TTMSFNCTreeViewBeforeReorderNodeEvent)(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* AFromNode, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* AToNode, bool &ACanReorder);

typedef void __fastcall (__closure *TTMSFNCTreeViewAfterReorderNodeEvent)(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* AFromNode, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* AToNode);

typedef void __fastcall (__closure *TTMSFNCTreeViewBeforeSortNodesEvent)(System::TObject* Sender, int ASortColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNodesSortMode ASortMode, bool &ACanSort);

typedef void __fastcall (__closure *TTMSFNCTreeViewAfterSortNodesEvent)(System::TObject* Sender, int ASortColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNodesSortMode ASortMode);

typedef void __fastcall (__closure *TTMSFNCTreeViewBeforeDropNodeEvent)(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* AFromNode, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* AToNode, bool &ACanDrop);

typedef void __fastcall (__closure *TTMSFNCTreeViewAfterDropNodeEvent)(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* AFromNode, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* AToNode);

typedef void __fastcall (__closure *TTMSFNCTreeViewBeforeCopyToClipboardEvent)(System::TObject* Sender, bool &ACanCopy);

typedef void __fastcall (__closure *TTMSFNCTreeViewBeforeCutToClipboardEvent)(System::TObject* Sender, bool &ACanCut);

typedef void __fastcall (__closure *TTMSFNCTreeViewBeforePasteFromClipboardEvent)(System::TObject* Sender, bool &ACanPaste);

typedef void __fastcall (__closure *TTMSFNCTreeViewAfterCopyToClipboardEvent)(System::TObject* Sender);

typedef void __fastcall (__closure *TTMSFNCTreeViewAfterCutToClipboardEvent)(System::TObject* Sender);

typedef void __fastcall (__closure *TTMSFNCTreeViewAfterPasteFromClipboardEvent)(System::TObject* Sender);

typedef void __fastcall (__closure *TTMSFNCTreeViewFilterSelectEvent)(System::TObject* Sender, int AColumn, System::UnicodeString &ACondition);

enum DECLSPEC_DENUM TTMSFNCTreeViewMouseEditMode : unsigned char { tmemDoubleClick, tmemSingleClick, tmemSingleClickOnSelectedNode };

enum DECLSPEC_DENUM TTMSFNCTreeViewClipboardMode : unsigned char { tcmNone, tcmTextOnly, tcmFull };

enum DECLSPEC_DENUM TTMSFNCTreeViewDragDropMode : unsigned char { tdmNone, tdmMove, tdmCopy };

enum DECLSPEC_DENUM TMultiSelectStyles : unsigned char { msControlSelect, msShiftSelect, msVisibleOnly, msSiblingOnly };

typedef System::Set<TMultiSelectStyles, TMultiSelectStyles::msControlSelect, TMultiSelectStyles::msSiblingOnly> TMultiSelectStyle;

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCTreeViewLookup : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	TTMSFNCTreeViewInteraction* FOwner;
	bool FEnabled;
	bool FCaseSensitive;
	bool FIncremental;
	int FColumn;
	bool FAutoSelect;
	bool FRootNodesOnly;
	bool FAutoExpand;
	bool FVisibleNodesOnly;
	
public:
	__fastcall TTMSFNCTreeViewLookup(TTMSFNCTreeViewInteraction* AOwner);
	__fastcall virtual ~TTMSFNCTreeViewLookup();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property bool CaseSensitive = {read=FCaseSensitive, write=FCaseSensitive, default=0};
	__property bool Enabled = {read=FEnabled, write=FEnabled, default=1};
	__property bool Incremental = {read=FIncremental, write=FIncremental, default=1};
	__property int Column = {read=FColumn, write=FColumn, default=-1};
	__property bool RootNodesOnly = {read=FRootNodesOnly, write=FRootNodesOnly, default=0};
	__property bool VisibleNodesOnly = {read=FVisibleNodesOnly, write=FVisibleNodesOnly, default=0};
	__property bool AutoExpand = {read=FAutoExpand, write=FAutoExpand, default=0};
	__property bool AutoSelect = {read=FAutoSelect, write=FAutoSelect, default=1};
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCTreeViewInteraction : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	TTMSFNCCustomTreeView* FTreeView;
	bool FMultiSelect;
	bool FTouchScrolling;
	bool FReadOnly;
	bool FColumnSizing;
	bool FColumnAutoSizeOnDblClick;
	bool FExtendedSelectable;
	bool FSelectionFollowsFocus;
	bool FKeyboardEdit;
	TTMSFNCTreeViewMouseEditMode FMouseEditMode;
	bool FExtendedEditable;
	TTMSFNCTreeViewClipboardMode FClipboardMode;
	bool FReorder;
	TTMSFNCTreeViewDragDropMode FDragDropMode;
	TTMSFNCTreeViewLookup* FLookup;
	bool FExpandCollapseOnDblClick;
	bool FAutoOpenURL;
	bool FURLDetectionOnMouseMove;
	float FMouseWheelDelta;
	float FAnimationFactor;
	TMultiSelectStyle FMultiSelectStyle;
	void __fastcall SetMultiSelect(const bool Value);
	void __fastcall SetTouchScrolling(const bool Value);
	void __fastcall SetReadOnly(const bool Value);
	void __fastcall SetColumnSizing(const bool Value);
	void __fastcall SetColumnAutoSizeOnDblClick(const bool Value);
	void __fastcall SetExtendedSelectable(const bool Value);
	void __fastcall SetSelectionFollowsFocus(const bool Value);
	void __fastcall SetMouseEditMode(const TTMSFNCTreeViewMouseEditMode Value);
	void __fastcall SetExtendedEditable(const bool Value);
	void __fastcall SetDragDropMode(const TTMSFNCTreeViewDragDropMode Value);
	void __fastcall SetReorder(const bool Value);
	void __fastcall SetLookup(TTMSFNCTreeViewLookup* const Value);
	void __fastcall SetExpandCollapseOnDblClick(const bool Value);
	void __fastcall SetURLDetectionOnMouseMove(const bool Value);
	bool __fastcall IsMouseWheelDeltaStored();
	void __fastcall SetMouseWheelDelta(const float Value);
	bool __fastcall IsAnimationFactorStored();
	void __fastcall SetMultiSelectStyle(const TMultiSelectStyle Value);
	
protected:
	__property bool SelectionFollowsFocus = {read=FSelectionFollowsFocus, write=SetSelectionFollowsFocus, default=1};
	
public:
	__fastcall TTMSFNCTreeViewInteraction(TTMSFNCCustomTreeView* ATreeView);
	__fastcall virtual ~TTMSFNCTreeViewInteraction();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property float AnimationFactor = {read=FAnimationFactor, write=FAnimationFactor, stored=IsAnimationFactorStored};
	__property bool AutoOpenURL = {read=FAutoOpenURL, write=FAutoOpenURL, default=1};
	__property bool MultiSelect = {read=FMultiSelect, write=SetMultiSelect, default=0};
	__property TMultiSelectStyle MultiSelectStyle = {read=FMultiSelectStyle, write=SetMultiSelectStyle, default=3};
	__property bool ExtendedSelectable = {read=FExtendedSelectable, write=SetExtendedSelectable, default=0};
	__property bool ExtendedEditable = {read=FExtendedEditable, write=SetExtendedEditable, default=0};
	__property TTMSFNCTreeViewMouseEditMode MouseEditMode = {read=FMouseEditMode, write=SetMouseEditMode, default=2};
	__property float MouseWheelDelta = {read=FMouseWheelDelta, write=SetMouseWheelDelta, stored=IsMouseWheelDeltaStored};
	__property bool TouchScrolling = {read=FTouchScrolling, write=SetTouchScrolling, default=1};
	__property bool KeyboardEdit = {read=FKeyboardEdit, write=FKeyboardEdit, default=1};
	__property bool ReadOnly = {read=FReadOnly, write=SetReadOnly, default=0};
	__property bool ExpandCollapseOnDblClick = {read=FExpandCollapseOnDblClick, write=SetExpandCollapseOnDblClick, default=1};
	__property bool ColumnSizing = {read=FColumnSizing, write=SetColumnSizing, default=0};
	__property bool ColumnAutoSizeOnDblClick = {read=FColumnAutoSizeOnDblClick, write=SetColumnAutoSizeOnDblClick, default=0};
	__property TTMSFNCTreeViewClipboardMode ClipboardMode = {read=FClipboardMode, write=FClipboardMode, default=0};
	__property bool Reorder = {read=FReorder, write=SetReorder, default=0};
	__property TTMSFNCTreeViewDragDropMode DragDropMode = {read=FDragDropMode, write=SetDragDropMode, default=0};
	__property TTMSFNCTreeViewLookup* Lookup = {read=FLookup, write=SetLookup};
	__property bool URLDetectionOnMouseMove = {read=FURLDetectionOnMouseMove, write=SetURLDetectionOnMouseMove, default=1};
};

#pragma pack(pop)

struct DECLSPEC_DRECORD TTMSFNCTreeViewSceneDrawingScale
{
public:
	double SceneScale;
	System::Types::TPointF DrawingScale;
};


#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCTreeViewSelectedNodes : public System::Generics::Collections::TList__1<Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode*>
{
	typedef System::Generics::Collections::TList__1<Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode*> inherited;
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewVirtualNode>.Create */ inline __fastcall TTMSFNCTreeViewSelectedNodes()/* overload */ : System::Generics::Collections::TList__1<Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode*>() { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewVirtualNode>.Create */ inline __fastcall TTMSFNCTreeViewSelectedNodes(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode*> > AComparer)/* overload */ : System::Generics::Collections::TList__1<Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode*>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewVirtualNode>.Create */ inline __fastcall TTMSFNCTreeViewSelectedNodes(System::Generics::Collections::TEnumerable__1<Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode*>* const Collection)/* overload */ : System::Generics::Collections::TList__1<Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode*>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewVirtualNode>.Create */ inline __fastcall TTMSFNCTreeViewSelectedNodes(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* const *Values, const int Values_High)/* overload */ : System::Generics::Collections::TList__1<Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode*>(Values, Values_High) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCTreeViewData_TTMSFNCTreeViewVirtualNode>.Destroy */ inline __fastcall virtual ~TTMSFNCTreeViewSelectedNodes() { }
	
};

#pragma pack(pop)

typedef System::DynamicArray<Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNode*> TTMSFNCTreeViewNodeArray;

struct DECLSPEC_DRECORD TTMSFNCTreeViewNodeCheck
{
public:
	int AColumn;
	Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode;
};


struct DECLSPEC_DRECORD TTMSFNCTreeViewNodeAnchor
{
public:
	System::UnicodeString AAnchor;
	int AColumn;
};


#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCTreeViewComboBox : public Fmx::Listbox::TComboBox
{
	typedef Fmx::Listbox::TComboBox inherited;
	
public:
	/* TCustomComboBox.Create */ inline __fastcall virtual TTMSFNCTreeViewComboBox(System::Classes::TComponent* AOwner)/* overload */ : Fmx::Listbox::TComboBox(AOwner) { }
	/* TCustomComboBox.Destroy */ inline __fastcall virtual ~TTMSFNCTreeViewComboBox() { }
	
};

#pragma pack(pop)

typedef Fmx::Text::TCaretPosition TTMSFNCTreeViewCaretPosition;

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCTreeViewMemo : public Fmx::Memo::TMemo
{
	typedef Fmx::Memo::TMemo inherited;
	
public:
	/* TCustomMemo.Create */ inline __fastcall virtual TTMSFNCTreeViewMemo(System::Classes::TComponent* AOwner)/* overload */ : Fmx::Memo::TMemo(AOwner) { }
	
public:
	/* TPresentedControl.Destroy */ inline __fastcall virtual ~TTMSFNCTreeViewMemo() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCTreeViewEdit : public Fmx::Edit::TEdit
{
	typedef Fmx::Edit::TEdit inherited;
	
protected:
	virtual System::UnicodeString __fastcall GetDefaultStyleLookupName();
public:
	/* TCustomEdit.Create */ inline __fastcall virtual TTMSFNCTreeViewEdit(System::Classes::TComponent* AOwner)/* overload */ : Fmx::Edit::TEdit(AOwner) { }
	/* TCustomEdit.Destroy */ inline __fastcall virtual ~TTMSFNCTreeViewEdit() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCTreeViewCopyNodes : public Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNodes
{
	typedef Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNodes inherited;
	
public:
	/* TTMSFNCTreeViewNodes.Create */ inline __fastcall TTMSFNCTreeViewCopyNodes(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewData* ATreeView, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNode* ANode) : Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNodes(ATreeView, ANode) { }
	/* TTMSFNCTreeViewNodes.Destroy */ inline __fastcall virtual ~TTMSFNCTreeViewCopyNodes() { }
	
};

#pragma pack(pop)

typedef void __fastcall (__closure *TTMSFNCTreeViewDragOverEvent)(System::TObject* Sender, System::TObject* Source, const System::Types::TPointF &Point, bool &Accept);

typedef void __fastcall (__closure *TTMSFNCTreeViewDragDropEvent)(System::TObject* Sender, System::TObject* Source, const System::Types::TPointF &Point);

typedef void __fastcall (__closure *TTMSFNCTreeViewColumnSortEvent)(System::TObject* Sender, int AColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNodesSortMode ASortMode);

typedef void __fastcall (__closure *TTMSFNCTreeViewLookupEvent)(System::TObject* Sender, System::UnicodeString ALookupString);

typedef void __fastcall (__closure *TTMSFNCTreeViewReorderEvent)(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* AFromNode, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* AToNode);

enum DECLSPEC_DENUM TTMSFNCTreeViewExportState : unsigned char { tvesExportStart, tvesExportNewRow, tvesExportDone, tvesExportSelRow, tvesExportFail, tvesExportNextRow, tvesExportFindRow };

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCTreeViewAdapter : public Fmx::Tmsfnccustomcomponent::TTMSFNCCustomComponent
{
	typedef Fmx::Tmsfnccustomcomponent::TTMSFNCCustomComponent inherited;
	
private:
	bool FBlockAdd;
	TTMSFNCCustomTreeView* FTreeView;
	bool FActive;
	void __fastcall SetActive(const bool Value);
	void __fastcall SetTreeView(TTMSFNCCustomTreeView* const Value);
	
protected:
	virtual NativeUInt __fastcall GetInstance();
	virtual void __fastcall GetNumberOfNodes(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int &ANumberOfNodes);
	virtual void __fastcall Notification(System::Classes::TComponent* AComponent, System::Classes::TOperation Operation);
	virtual void __fastcall UpdateBounds();
	virtual void __fastcall Initialize();
	virtual void __fastcall ScrollTreeView(int ADelta);
	virtual void __fastcall SelectNode(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode);
	virtual void __fastcall GetNodeText(int ACol, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, System::UnicodeString &AText);
	virtual void __fastcall ExportNotification(TTMSFNCTreeViewExportState AState, int ARow);
	virtual System::UnicodeString __fastcall GetColumnDisplayName(int ACol);
	
public:
	__fastcall virtual TTMSFNCTreeViewAdapter(System::Classes::TComponent* AOwner);
	
__published:
	__property bool Active = {read=FActive, write=SetActive, default=0};
	__property TTMSFNCCustomTreeView* TreeView = {read=FTreeView, write=SetTreeView};
public:
	/* TControl.Destroy */ inline __fastcall virtual ~TTMSFNCTreeViewAdapter() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCTreeViewViewJSONOptions : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	System::UnicodeString FValueHTMLTemplate;
	bool FExpandNodes;
	System::UnicodeString FNameHTMLTemplate;
	System::Classes::TNotifyEvent FOnChange;
	int FStretchColumn;
	System::UnicodeString FArrayItemPrefix;
	System::UnicodeString FArrayItemSuffix;
	
protected:
	void __fastcall Changed();
	
public:
	__fastcall TTMSFNCTreeViewViewJSONOptions();
	__fastcall virtual ~TTMSFNCTreeViewViewJSONOptions();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__property System::Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
	
__published:
	__property bool ExpandNodes = {read=FExpandNodes, write=FExpandNodes, default=1};
	__property int StretchColumn = {read=FStretchColumn, write=FStretchColumn, default=1};
	__property System::UnicodeString NameHTMLTemplate = {read=FNameHTMLTemplate, write=FNameHTMLTemplate};
	__property System::UnicodeString ValueHTMLTemplate = {read=FValueHTMLTemplate, write=FValueHTMLTemplate};
	__property System::UnicodeString ArrayItemPrefix = {read=FArrayItemPrefix, write=FArrayItemPrefix};
	__property System::UnicodeString ArrayItemSuffix = {read=FArrayItemSuffix, write=FArrayItemSuffix};
};

#pragma pack(pop)

class PASCALIMPLEMENTATION TTMSFNCCustomTreeView : public Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewData
{
	typedef Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewData inherited;
	
private:
	Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItem* FPrevDSP;
	int FOldTopRow;
	bool FCompactMode;
	double FVerticalOffset;
	double FVerticalOffsetTo;
	bool FAccepted;
	System::UnicodeString FLookupString;
	float FY;
	float FDragY;
	float FSaveDragY;
	float FX;
	Fmx::Tmsfncimage::TTMSFNCImage* FDragBitmap;
	bool FReorderMode;
	bool FDragMode;
	bool FDragModeStarted;
	int FSortColumn;
	bool FClosing;
	bool FInplaceEditorClosed;
	double FColumnSize;
	bool FCloseWithDialogKey;
	Fmx::Tmsfncpopup::TTMSFNCPopup* FFilterPopup;
	Fmx::Listbox::TListBox* FFilterListBox;
	Fmx::Types::TTimer* FFilterTimer;
	TTMSFNCTreeViewInplaceEditorClass FInplaceEditorClass;
	Fmx::Controls::TControl* FInplaceEditor;
	Fmx::Controls::TControl* FOldInplaceEditor;
	bool FInplaceEditorActive;
	int FSizeColumn;
	int FDownColumn;
	int FDownColumnFilter;
	int FDownColumnExpand;
	int FUpdateNodeColumn;
	Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* FUpdateNode;
	TTMSFNCTreeViewCopyNodes* FCopyNodes;
	Fmx::Types::TTimer* FScrollBarTimer;
	Fmx::Types::TTimer* FInplaceEditorTimer;
	bool FDoubleSelection;
	Fmx::Types::TTimer* FDragTimer;
	int FDragRow;
	Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* FDownNode;
	Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* FFocusedNode;
	Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* FDragNode;
	bool FDblClicked;
	TTMSFNCTreeViewNodeAnchor FDoNodeAnchor;
	TTMSFNCTreeViewNodeAnchor FDoNodeTitleAnchor;
	TTMSFNCTreeViewNodeCheck FDoNodeCheck;
	bool FDoNodeExpand;
	bool FDoNodeExtra;
	bool FDoNodeTitleExtra;
	bool FScrolling;
	bool FMouseUp;
	bool FAnimateVerticalPos;
	bool FAnimateHorizontalPos;
	bool FAnimateVerticalOffset;
	bool FAnimating;
	double FSpX;
	double FSpY;
	double FScrollX;
	double FScrollY;
	double FDownX;
	double FDownY;
	double FMouseX;
	double FMouseY;
	double FSizeX;
	double FScrollVTo;
	double FScrollHTo;
	double FTimeStart;
	double FTimeStop;
	Fmx::Types::TTimer* FAnimateTimer;
	TTMSFNCTreeViewNodeCache* FNodeCache;
	TTMSFNCTreeViewColumnsTopCache* FColumnsTopCache;
	TTMSFNCTreeViewColumnsBottomCache* FColumnsBottomCache;
	TTMSFNCTreeViewGroupsTopCache* FGroupsTopCache;
	TTMSFNCTreeViewGroupsBottomCache* FGroupsBottomCache;
	TTMSFNCTreeViewNodeDisplayList* FNodeDisplay;
	TTMSFNCTreeViewColumnsTopDisplayList* FColumnsTopDisplay;
	TTMSFNCTreeViewColumnsBottomDisplayList* FColumnsBottomDisplay;
	TTMSFNCTreeViewGroupsTopDisplayList* FGroupsTopDisplay;
	TTMSFNCTreeViewGroupsBottomDisplayList* FGroupsBottomDisplay;
	TTMSFNCTreeViewNodesAppearance* FNodesAppearance;
	bool FColumnsCaching;
	bool FGroupsCaching;
	TTMSFNCTreeViewGroupsAppearance* FGroupsAppearance;
	TTMSFNCTreeViewColumnsAppearance* FColumnsAppearance;
	TTMSFNCTreeViewAfterDrawGroupEvent FOnAfterDrawGroup;
	TTMSFNCTreeViewNodeCompareEvent FOnNodeCompare;
	TTMSFNCTreeViewBeforeSizeColumnEvent FOnBeforeSizeColumn;
	TTMSFNCTreeViewAfterSizeColumnEvent FOnAfterSizeColumn;
	TTMSFNCTreeViewBeforeDrawColumnEvent FOnBeforeDrawColumn;
	TTMSFNCTreeViewBeforeDrawColumnHeaderEvent FOnBeforeDrawColumnHeader;
	TTMSFNCTreeViewAfterDrawColumnHeaderEvent FOnAfterDrawColumnHeader;
	TTMSFNCTreeViewBeforeDrawNodeEvent FOnBeforeDrawNode;
	TTMSFNCTreeViewAfterDrawColumnEvent FOnAfterDrawColumn;
	TTMSFNCTreeViewBeforeDrawGroupEvent FOnBeforeDrawGroup;
	TTMSFNCTreeViewAfterDrawNodeEvent FOnAfterDrawNode;
	TTMSFNCTreeViewBeforeDrawNodeTextEvent FOnBeforeDrawNodeText;
	TTMSFNCTreeViewBeforeDrawNodeTitleEvent FOnBeforeDrawNodeTitle;
	TTMSFNCTreeViewGetNodeHeightEvent FOnGetNodeHeight;
	TTMSFNCTreeViewAfterDrawColumnTextEvent FOnAfterDrawColumnText;
	TTMSFNCTreeViewBeforeDrawGroupTextEvent FOnBeforeDrawGroupText;
	TTMSFNCTreeViewAfterDrawNodeTextEvent FOnAfterDrawNodeText;
	TTMSFNCTreeViewAfterDrawNodeTitleEvent FOnAfterDrawNodeTitle;
	TTMSFNCTreeViewAfterDrawGroupTextEvent FOnAfterDrawGroupText;
	TTMSFNCTreeViewBeforeDrawColumnTextEvent FOnBeforeDrawColumnText;
	TTMSFNCTreeViewInteraction* FInteraction;
	TTMSFNCTreeViewAfterUpdateNodeEvent FOnAfterUpdateNode;
	TTMSFNCTreeViewBeforeUpdateNodeEvent FOnBeforeUpdateNode;
	TTMSFNCTreeViewAfterUnCheckNodeEvent FOnAfterUnCheckNode;
	TTMSFNCTreeViewBeforeUnCheckNodeEvent FOnBeforeUnCheckNode;
	TTMSFNCTreeViewAfterCheckNodeEvent FOnAfterCheckNode;
	TTMSFNCTreeViewBeforeCheckNodeEvent FOnBeforeCheckNode;
	TTMSFNCTreeViewAfterExpandNodeEvent FOnAfterExpandNode;
	TTMSFNCTreeViewBeforeExpandNodeEvent FOnBeforeExpandNode;
	TTMSFNCTreeViewAfterCollapseNodeEvent FOnAfterCollapseNode;
	TTMSFNCTreeViewBeforeCollapseNodeEvent FOnBeforeCollapseNode;
	TTMSFNCTreeViewBeforeSelectNodeEvent FOnBeforeSelectNode;
	TTMSFNCTreeViewAfterSelectNodeEvent FOnAfterSelectNode;
	TTMSFNCTreeViewBeforeSelectAllNodesEvent FOnBeforeSelectAllNodes;
	TTMSFNCTreeViewAfterSelectAllNodesEvent FOnAfterSelectAllNodes;
	TTMSFNCTreeViewNodeClickEvent FOnNodeClick;
	TTMSFNCTreeViewNodeClickEvent FOnNodeDblClick;
	TTMSFNCTreeViewGetNodeTextEvent FOnGetNodeText;
	TTMSFNCTreeViewGetNodeTitleEvent FOnGetNodeTitle;
	TTMSFNCTreeViewGetColumnTextEvent FOnGetColumnText;
	TTMSFNCTreeViewGetGroupTextEvent FOnGetGroupText;
	TTMSFNCTreeViewNodeAnchorClickEvent FOnNodeAnchorClick;
	TTMSFNCTreeViewScrollEvent FOnVScroll;
	TTMSFNCTreeViewScrollEvent FOnHScroll;
	TTMSFNCTreeViewBeforeDrawColumnEmptySpaceEvent FOnBeforeDrawColumnEmptySpace;
	TTMSFNCTreeViewAfterDrawColumnEmptySpaceEvent FOnAfterDrawColumnEmptySpace;
	TTMSFNCTreeViewBeforeDrawGroupEmptySpaceEvent FOnBeforeDrawGroupEmptySpace;
	TTMSFNCTreeViewAfterDrawGroupEmptySpaceEvent FOnAfterDrawGroupEmptySpace;
	TTMSFNCTreeViewGetNumberOfNodesEvent FOnGetNumberOfNodes;
	TTMSFNCTreeViewIsNodeExpandedEvent FOnIsNodeExpanded;
	TTMSFNCTreeViewIsNodeEnabledEvent FOnIsNodeEnabled;
	TTMSFNCTreeViewIsNodeVisibleEvent FOnIsNodeVisible;
	TTMSFNCTreeViewSelectedNodes* FSelectedNodes;
	TTMSFNCTreeViewGetNodeColorEvent FOnGetNodeDisabledColor;
	TTMSFNCTreeViewGetNodeTextColorEvent FOnGetNodeTextColor;
	TTMSFNCTreeViewGetNodeTitleColorEvent FOnGetNodeTitleColor;
	TTMSFNCTreeViewGetNodeColorEvent FOnGetNodeSelectedColor;
	TTMSFNCTreeViewGetNodeColorEvent FOnGetNodeColor;
	TTMSFNCTreeViewGetNodeTextColorEvent FOnGetNodeDisabledTextColor;
	TTMSFNCTreeViewGetNodeTextColorEvent FOnGetNodeSelectedTextColor;
	TTMSFNCTreeViewGetNodeTitleColorEvent FOnGetNodeDisabledTitleColor;
	TTMSFNCTreeViewGetNodeTitleColorEvent FOnGetNodeSelectedTitleColor;
	TTMSFNCTreeViewIsNodeExtendedEvent FOnIsNodeExtended;
	TTMSFNCTreeViewGetNodeIconEvent FOnGetNodeIcon;
	TTMSFNCTreeViewGetColumnWordWrappingEvent FOnGetColumnWordWrapping;
	TTMSFNCTreeViewGetColumnVerticalTextAlignEvent FOnGetColumnVerticalTextAlign;
	TTMSFNCTreeViewGetColumnTrimmingEvent FOnGetColumnTrimming;
	TTMSFNCTreeViewGetColumnHorizontalTextAlignEvent FOnGetColumnHorizontalTextAlign;
	TTMSFNCTreeViewGetNodeWordWrappingEvent FOnGetNodeWordWrapping;
	TTMSFNCTreeViewGetNodeVerticalTextAlignEvent FOnGetNodeVerticalTextAlign;
	TTMSFNCTreeViewGetNodeTrimmingEvent FOnGetNodeTrimming;
	TTMSFNCTreeViewGetNodeHorizontalTextAlignEvent FOnGetNodeHorizontalTextAlign;
	TTMSFNCTreeViewIsNodeCheckedEvent FOnIsNodeChecked;
	TTMSFNCTreeViewBeforeDrawNodeIconEvent FOnBeforeDrawNodeIcon;
	TTMSFNCTreeViewBeforeDrawNodeExpandEvent FOnBeforeDrawNodeExpand;
	TTMSFNCTreeViewAfterDrawNodeIconEvent FOnAfterDrawNodeIcon;
	TTMSFNCTreeViewAfterDrawNodeExpandEvent FOnAfterDrawNodeExpand;
	TTMSFNCTreeViewGetNodeCheckTypeEvent FOnGetNodeCheckType;
	TTMSFNCTreeViewAfterDrawNodeCheckEvent FOnAfterDrawNodeCheck;
	TTMSFNCTreeViewBeforeDrawNodeCheckEvent FOnBeforeDrawNodeCheck;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FColumnStroke;
	TTMSFNCTreeViewAfterDrawColumnEvent FOnAfterDrawNodeColumn;
	TTMSFNCTreeViewBeforeDrawColumnEvent FOnBeforeDrawNodeColumn;
	TTMSFNCTreeViewBeforeUnSelectNodeEvent FOnBeforeUnSelectNode;
	TTMSFNCTreeViewAfterUnSelectNodeEvent FOnAfterUnSelectNode;
	TTMSFNCTreeViewAfterOpenInplaceEditorEvent FOnAfterOpenInplaceEditor;
	TTMSFNCTreeViewGetInplaceEditorEvent FOnGetInplaceEditor;
	TTMSFNCTreeViewCloseInplaceEditorEvent FOnCloseInplaceEditor;
	TTMSFNCTreeViewBeforeOpenInplaceEditorEvent FOnBeforeOpenInplaceEditor;
	TTMSFNCTreeViewNodeChangedEvent FOnNodeChanged;
	TTMSFNCTreeViewCustomizeInplaceEditorEvent FOnCustomizeInplaceEditor;
	TTMSFNCTreeViewGetInplaceEditorRectEvent FOnGetInplaceEditorRect;
	TTMSFNCTreeViewBeforeReorderNodeEvent FOnBeforeReorderNode;
	TTMSFNCTreeViewAfterReorderNodeEvent FOnAfterReorderNode;
	TTMSFNCTreeViewAfterDropNodeEvent FOnAfterDropNode;
	TTMSFNCTreeViewBeforeDropNodeEvent FOnBeforeDropNode;
	TTMSFNCTreeViewAfterCutToClipboardEvent FOnAfterCutToClipboard;
	TTMSFNCTreeViewBeforePasteFromClipboardEvent FOnBeforePasteFromClipboard;
	TTMSFNCTreeViewBeforeCopyToClipboardEvent FOnBeforeCopyToClipboard;
	TTMSFNCTreeViewAfterPasteFromClipboardEvent FOnAfterPasteFromClipboard;
	TTMSFNCTreeViewBeforeCutToClipboardEvent FOnBeforeCutToClipboard;
	TTMSFNCTreeViewAfterCopyToClipboardEvent FOnAfterCopyToClipboard;
	TTMSFNCTreeViewNeedFilterDropDownDataEvent FOnNeedFilterDropDownData;
	TTMSFNCTreeViewFilterSelectEvent FOnFilterSelect;
	TTMSFNCTreeViewReorderEvent FOnCustomReorder;
	TTMSFNCTreeViewDragDropEvent FOnCustomDragDrop;
	TTMSFNCTreeViewDragOverEvent FOnCustomDragOver;
	System::Classes::TNotifyEvent FOnCustomCopyToClipboard;
	System::Classes::TNotifyEvent FOnCustomCutToClipboard;
	System::Classes::TNotifyEvent FOnCustomPasteFromClipboard;
	TTMSFNCTreeViewColumnSortEvent FOnCustomColumnSort;
	TTMSFNCTreeViewLookupEvent FOnCustomLookup;
	TTMSFNCTreeViewBeforeDrawSortIndicatorEvent FOnBeforeDrawSortIndicator;
	TTMSFNCTreeViewAfterDrawSortIndicatorEvent FOnAfterDrawSortIndicator;
	TTMSFNCTreeViewAdapter* FAdapter;
	TTMSFNCTreeViewGetNodeSidesEvent FOnGetNodeSides;
	TTMSFNCTreeViewGetNodeExtraSizeEvent FOnGetNodeExtraSize;
	TTMSFNCTreeViewGetNodeTitleExtraSizeEvent FOnGetNodeTitleExtraSize;
	TTMSFNCTreeViewAfterDrawNodeExtraEvent FOnAfterDrawNodeExtra;
	TTMSFNCTreeViewBeforeDrawNodeExtraEvent FOnBeforeDrawNodeExtra;
	TTMSFNCTreeViewDrawNodeExtraEvent FOnDrawNodeExtra;
	TTMSFNCTreeViewGetNodeTrimmingEvent FOnGetNodeTitleTrimming;
	TTMSFNCTreeViewGetNodeHorizontalTextAlignEvent FOnGetNodeTitleHorizontalTextAlign;
	TTMSFNCTreeViewGetNodeWordWrappingEvent FOnGetNodeTitleWordWrapping;
	TTMSFNCTreeViewGetNodeVerticalTextAlignEvent FOnGetNodeTitleVerticalTextAlign;
	TTMSFNCTreeViewNodeTitleAnchorClickEvent FOnNodeTitleAnchorClick;
	TTMSFNCTreeViewGetNodeTitleExpandedEvent FOnGetNodeExpanded;
	TTMSFNCTreeViewBeforeDrawNodeTitleExtraEvent FOnBeforeDrawNodeTitleExtra;
	TTMSFNCTreeViewAfterDrawNodeTitleExtraEvent FOnAfterDrawNodeTitleExtra;
	TTMSFNCTreeViewDrawNodeTitleExtraEvent FOnDrawNodeTitleExtra;
	TTMSFNCTreeViewNodeMouseEnterEvent FOnNodeMouseEnter;
	TTMSFNCTreeViewNodeMouseLeaveEvent FOnNodeMouseLeave;
	TTMSFNCTreeViewGetNodeIconSizeEvent FOnGetNodeIconSize;
	TTMSFNCTreeViewColumnAnchorClickEvent FOnColumnAnchorClick;
	TTMSFNCTreeViewFocusedNodeChangedEvent FOnFocusedNodeChanged;
	TTMSFNCTreeViewGetNodeDataEvent FOnGetNodeData;
	TTMSFNCTreeViewAfterSortNodesEvent FOnAfterSortNodes;
	TTMSFNCTreeViewBeforeSortNodesEvent FOnBeforeSortNodes;
	Fmx::Tmsfncgraphicstypes::TTMSFNCAppearanceGlobalFont* FGlobalFont;
	TTMSFNCTreeViewGetNodeRoundingEvent FOnGetNodeRounding;
	TTMSFNCTreeViewGetNodeColorEvent FOnGetNodeDisabledStrokeColor;
	TTMSFNCTreeViewGetNodeColorEvent FOnGetNodeSelectedStrokeColor;
	TTMSFNCTreeViewGetNodeColorEvent FOnGetNodeStrokeColor;
	TTMSFNCTreeViewGetHTMLTemplateValueEvent FOnGetHTMLTemplateValue;
	TTMSFNCTreeViewGetHTMLTemplateEvent FOnGetHTMLTemplate;
	TTMSFNCTreeViewViewJSONOptions* FDefaultViewJSONOptions;
	TTMSFNCTreeViewAfterAddJSONNodeEvent FOnAfterAddJSONNode;
	TTMSFNCTreeViewBeforeAddJSONNodeEvent FOnBeforeAddJSONNode;
	void __fastcall SetNodesAppearance(TTMSFNCTreeViewNodesAppearance* const Value);
	void __fastcall SetGroupsAppearance(TTMSFNCTreeViewGroupsAppearance* const Value);
	void __fastcall SetColumnsAppearance(TTMSFNCTreeViewColumnsAppearance* const Value);
	void __fastcall SetInteraction(TTMSFNCTreeViewInteraction* const Value);
	Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNode* __fastcall GetFocusedNode();
	Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* __fastcall GetFocusedVirtualNode();
	Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNode* __fastcall GetSelNode(int AIndex);
	Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* __fastcall GetSelVirtualNode(int AIndex);
	void __fastcall SetColumnStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetFocusedNode(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNode* const Value);
	void __fastcall SetFocusedVirtualNode(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* const Value);
	void __fastcall SetSortColumn(const int Value);
	void __fastcall HandleFilterTimer(System::TObject* Sender);
	void __fastcall SetAdapter(TTMSFNCTreeViewAdapter* const Value);
	void __fastcall SetSelectedNode(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNode* const Value);
	void __fastcall SetSelectedVirtualNode(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* const Value);
	void __fastcall SetCompactMode(const bool Value);
	int __fastcall GetSelectedVirtualNodeRow();
	int __fastcall GetTopRow();
	void __fastcall SetTopRow(const int Value);
	int __fastcall GetBottomRow();
	void __fastcall SetGlobalFont(Fmx::Tmsfncgraphicstypes::TTMSFNCAppearanceGlobalFont* const Value);
	void __fastcall SetDefaultViewJSONOptions(TTMSFNCTreeViewViewJSONOptions* const Value);
	
protected:
	virtual void __fastcall ChangeDPIScale(int M, int D);
	virtual void __fastcall RegisterRuntimeClasses();
	virtual void __fastcall ApplyStyle();
	virtual void __fastcall DoEnter();
	virtual void __fastcall DoExit();
	virtual void __fastcall UpdateControlAfterResize();
	virtual void __fastcall ResetToDefaultStyle();
	virtual void __fastcall Notification(System::Classes::TComponent* AComponent, System::Classes::TOperation Operation);
	virtual void __fastcall InitializeColumnSorting(int AColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNodesSortMode ASortMode);
	virtual void __fastcall AutoSizeColumnInternal(int ACol, bool AUpdate = false, bool ACallEventHandlers = false);
	virtual void __fastcall DoNodeCompare(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNode* ANode1, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNode* ANode2, int AColumn, int &ACompareResult);
	virtual void __fastcall SetFonts(Fmx::Tmsfncgraphicstypes::TTMSFNCAppearanceGlobalFontType ASetType);
	virtual void __fastcall ExportNotification(TTMSFNCTreeViewExportState AState, int ARow);
	virtual void __fastcall DoBeforeSortNodes(int ASortColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNodesSortMode ASortMode, bool &ACanSort);
	virtual void __fastcall DoAfterSortNodes(int ASortColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNodesSortMode ASortMode);
	virtual void __fastcall DoBeforeDrawSortIndicator(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AColumn, int ASortIndex, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNodesSortKind ASortKind, bool &ADefaultDraw);
	virtual void __fastcall DoAfterDrawSortIndicator(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AColumn, int ASortIndex, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNodesSortKind ASortKind);
	virtual void __fastcall DoBeforeCutToClipboard(bool &ACanCut);
	virtual void __fastcall DoBeforeCopyToClipboard(bool &ACanCopy);
	virtual void __fastcall DoBeforePasteFromClipboard(bool &ACanPaste);
	virtual void __fastcall DoAfterCutToClipboard();
	virtual void __fastcall DoAfterCopyToClipboard();
	virtual void __fastcall DoAfterPasteFromClipboard();
	virtual void __fastcall DoBeforeReorderNode(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* AFromNode, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* AToNode, bool &ACanReorder);
	virtual void __fastcall DoAfterReorderNode(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* AFromNode, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* AToNode);
	virtual void __fastcall DoBeforeDropNode(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* AFromNode, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* AToNode, bool &ACanDrop);
	virtual void __fastcall DoAfterDropNode(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* AFromNode, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* AToNode);
	void __fastcall DoBeforeDrawColumnEmptySpace(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCTreeViewColumnEmptySpace ASpace, bool &AAllow, bool &ADefaultDraw);
	void __fastcall DoAfterDrawColumnEmptySpace(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCTreeViewColumnEmptySpace ASpace);
	void __fastcall DoBeforeDrawGroupEmptySpace(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCTreeViewGroupEmptySpace ASpace, bool &AAllow, bool &ADefaultDraw);
	void __fastcall DoAfterDrawGroupEmptySpace(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCTreeViewGroupEmptySpace ASpace);
	virtual void __fastcall DoBeforeDrawColumnHeader(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItemKind AKind, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoAfterDrawColumnHeader(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItemKind AKind);
	virtual void __fastcall DoBeforeDrawColumn(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AColumn, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoAfterDrawColumn(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AColumn);
	virtual void __fastcall DoBeforeDrawNodeColumn(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AColumn, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoAfterDrawNodeColumn(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AColumn);
	virtual void __fastcall DoBeforeDrawGroup(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AGroup, int AStartColumn, int AEndColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItemKind AKind, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoAfterDrawGroup(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AGroup, int AStartColumn, int AEndColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItemKind AKind);
	virtual void __fastcall DoBeforeDrawNode(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoAfterDrawNode(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode);
	virtual void __fastcall DoGetColumnText(int AColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItemKind AKind, System::UnicodeString &AText);
	virtual void __fastcall DoBeforeDrawColumnText(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItemKind AKind, System::UnicodeString AText, bool &AAllow);
	virtual void __fastcall DoAfterDrawColumnText(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItemKind AKind, System::UnicodeString AText);
	virtual void __fastcall DoGetGroupText(int AGroup, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItemKind AKind, System::UnicodeString &AText);
	virtual void __fastcall DoBeforeDrawGroupText(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AGroup, int AStartColumn, int AEndColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItemKind AKind, System::UnicodeString AText, bool &AAllow);
	virtual void __fastcall DoAfterDrawGroupText(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AGroup, int AStartColumn, int AEndColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItemKind AKind, System::UnicodeString AText);
	virtual void __fastcall DoNodeClick(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode);
	virtual void __fastcall DoNodeMouseLeave(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode);
	virtual void __fastcall DoNodeMouseEnter(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode);
	virtual void __fastcall DoNodeDblClick(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode);
	virtual void __fastcall DoGetNumberOfNodes(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int &ANumberOfNodes);
	virtual void __fastcall DoGetNodeText(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNodeTextMode AMode, System::UnicodeString &AText);
	virtual void __fastcall DoGetNodeData(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode);
	virtual void __fastcall DoGetNodeTitle(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNodeTextMode AMode, System::UnicodeString &ATitle);
	virtual void __fastcall DoGetNodeTitleExpanded(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, bool &AExpanded);
	virtual void __fastcall DoGetNodeTrimming(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextTrimming &ATrimming);
	virtual void __fastcall DoGetNodeHorizontalTextAlign(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign &AHorizontalTextAlign);
	virtual void __fastcall DoGetNodeVerticalTextAlign(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign &AVerticalTextAlign);
	virtual void __fastcall DoGetNodeWordWrapping(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, bool &AWordWrapping);
	virtual void __fastcall DoGetNodeTitleTrimming(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextTrimming &ATrimming);
	virtual void __fastcall DoGetNodeTitleHorizontalTextAlign(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign &AHorizontalTextAlign);
	virtual void __fastcall DoGetNodeTitleVerticalTextAlign(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign &AVerticalTextAlign);
	virtual void __fastcall DoGetNodeTitleWordWrapping(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, bool &AWordWrapping);
	virtual void __fastcall DoGetNodeExtraSize(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, float &AExtraSize);
	virtual void __fastcall DoGetNodeTitleExtraSize(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, float &ATitleExtraSize);
	virtual void __fastcall DoGetColumnTrimming(int AColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItemKind AKind, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextTrimming &ATrimming);
	virtual void __fastcall DoGetColumnHorizontalTextAlign(int AColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItemKind AKind, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign &AHorizontalTextAlign);
	virtual void __fastcall DoGetColumnVerticalTextAlign(int AColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItemKind AKind, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign &AVerticalTextAlign);
	virtual void __fastcall DoGetColumnWordWrapping(int AColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItemKind AKind, bool &AWordWrapping);
	virtual void __fastcall DoGetNodeCheckType(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNodeCheckType &ACheckType);
	virtual void __fastcall DoGetNodeHeight(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, double &AHeight);
	virtual void __fastcall DoGetNodeIcon(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, bool ALarge, Fmx::Tmsfnctypes::TTMSFNCBitmap* &AIcon);
	virtual void __fastcall DoGetNodeIconSize(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, bool ALarge, Fmx::Tmsfnctypes::TTMSFNCBitmap* AIcon, double &AIconWidth, double &AIconHeight);
	virtual void __fastcall DoGetNodeSelectedColor(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, System::Uitypes::TAlphaColor &AColor);
	virtual void __fastcall DoGetNodeSelectedStrokeColor(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, System::Uitypes::TAlphaColor &AColor);
	virtual void __fastcall DoGetNodeSides(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsSides &ASides);
	virtual void __fastcall DoGetNodeRounding(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int &ARounding, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsCorners &ACorners);
	virtual void __fastcall DoGetNodeDisabledColor(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, System::Uitypes::TAlphaColor &AColor);
	virtual void __fastcall DoGetNodeDisabledStrokeColor(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, System::Uitypes::TAlphaColor &AColor);
	virtual void __fastcall DoGetNodeColor(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, System::Uitypes::TAlphaColor &AColor);
	virtual void __fastcall DoGetNodeStrokeColor(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, System::Uitypes::TAlphaColor &AColor);
	virtual void __fastcall DoGetNodeSelectedTextColor(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, System::Uitypes::TAlphaColor &ATextColor);
	virtual void __fastcall DoGetNodeDisabledTextColor(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, System::Uitypes::TAlphaColor &ATextColor);
	virtual void __fastcall DoGetNodeTextColor(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, System::Uitypes::TAlphaColor &ATextColor);
	virtual void __fastcall DoGetNodeSelectedTitleColor(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, System::Uitypes::TAlphaColor &ATitleColor);
	virtual void __fastcall DoGetNodeDisabledTitleColor(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, System::Uitypes::TAlphaColor &ATitleColor);
	virtual void __fastcall DoGetNodeTitleColor(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, System::Uitypes::TAlphaColor &ATitleColor);
	virtual void __fastcall DoIsNodeExpanded(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, bool &AExpanded);
	virtual void __fastcall DoIsNodeExtended(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, bool &AExtended);
	virtual void __fastcall DoIsNodeChecked(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, bool &AChecked);
	virtual void __fastcall DoIsNodeVisible(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, bool &AVisible);
	virtual void __fastcall DoIsNodeEnabled(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, bool &AEnabled);
	virtual void __fastcall DoBeforeDrawNodeText(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, System::UnicodeString AText, bool &AAllow);
	virtual void __fastcall DoAfterDrawNodeText(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, System::UnicodeString AText);
	virtual void __fastcall DoBeforeDrawNodeTitle(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, System::UnicodeString ATitle, bool &AAllow);
	virtual void __fastcall DoAfterDrawNodeTitle(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, System::UnicodeString ATitle);
	virtual void __fastcall DoBeforeDrawNodeIcon(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, Fmx::Tmsfnctypes::TTMSFNCBitmap* AIcon, bool &AAllow);
	virtual void __fastcall DoAfterDrawNodeIcon(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, Fmx::Tmsfnctypes::TTMSFNCBitmap* AIcon);
	virtual void __fastcall DoBeforeDrawNodeExtra(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, bool &AAllow);
	virtual void __fastcall DoDrawNodeExtra(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode);
	virtual void __fastcall DoAfterDrawNodeExtra(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode);
	virtual void __fastcall DoBeforeDrawNodeTitleExtra(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, bool &AAllow);
	virtual void __fastcall DoDrawNodeTitleExtra(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode);
	virtual void __fastcall DoAfterDrawNodeTitleExtra(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode);
	virtual void __fastcall DoBeforeDrawNodeCheck(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, Fmx::Tmsfnctypes::TTMSFNCBitmap* ACheck, bool &AAllow);
	virtual void __fastcall DoAfterDrawNodeCheck(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, Fmx::Tmsfnctypes::TTMSFNCBitmap* ACheck);
	virtual void __fastcall DoBeforeDrawNodeExpand(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, Fmx::Tmsfnctypes::TTMSFNCBitmap* AExpand, bool &AAllow);
	virtual void __fastcall DoAfterDrawNodeExpand(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, Fmx::Tmsfnctypes::TTMSFNCBitmap* AExpand);
	virtual void __fastcall DoBeforeSelectNode(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, bool &ACanSelect);
	virtual void __fastcall DoBeforeSelectAllNodes(bool &ACanSelect);
	virtual void __fastcall DoBeforeUnSelectNode(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, bool &ACanUnSelect);
	virtual void __fastcall DoCustomizeInplaceEditor(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, Fmx::Controls::TControl* AInplaceEditor);
	virtual void __fastcall DoBeforeSizeColumn(int AColumn, double AColumnSize, double &ANewColumnSize, bool &AAllow);
	virtual void __fastcall DoAfterSizeColumn(int AColumn, double AColumnSize);
	virtual void __fastcall DoBeforeUpdateNode(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, System::UnicodeString &AText, bool &ACanUpdate);
	virtual void __fastcall DoNodeChanged(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode);
	virtual void __fastcall DoAfterUpdateNode(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn);
	virtual void __fastcall DoUpdateNodeText(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, System::UnicodeString AText);
	virtual void __fastcall DoUpdateNodeTitle(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, System::UnicodeString ATitle);
	virtual void __fastcall DoBeforeExpandNode(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, bool &ACanExpand);
	virtual void __fastcall DoAfterExpandNode(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode);
	virtual void __fastcall DoBeforeCollapseNode(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, bool &ACanCollapse);
	virtual void __fastcall DoAfterCollapseNode(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode);
	virtual void __fastcall DoBeforeCheckNode(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, bool &ACanCheck);
	virtual void __fastcall DoAfterCheckNode(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn);
	virtual void __fastcall DoBeforeUnCheckNode(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, bool &ACanUnCheck);
	virtual void __fastcall DoAfterUnCheckNode(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn);
	virtual void __fastcall DoNodeAnchorClick(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, System::UnicodeString AAnchor);
	virtual void __fastcall DoNodeTitleAnchorClick(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, System::UnicodeString AAnchor);
	virtual void __fastcall DoColumnAnchorClick(int AColumn, System::UnicodeString AAnchor);
	virtual void __fastcall DoGetHTMLTemplateValue(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNodeValue* ANodeValue, System::UnicodeString AName, System::UnicodeString &AValue);
	virtual void __fastcall DoGetHTMLTemplate(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNodeValue* ANodeValue, int AColumnIndex, System::UnicodeString &AHTMLTemplate);
	void __fastcall ApplyInplaceEditorStyleLookup(System::TObject* Sender);
	void __fastcall DoBeforeAddJSONNode(System::Json::TJSONValue* AJSONValue, bool &AAddNode);
	void __fastcall DoAfterAddJSONNode(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNode* ANode, System::Json::TJSONValue* AJSONValue);
	virtual void __fastcall DoBeforeOpenInplaceEditor(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, bool &ACanOpen);
	virtual void __fastcall DoAfterOpenInplaceEditor(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, Fmx::Controls::TControl* AInplaceEditor, const System::Types::TRectF &AInplaceEditorRect);
	virtual void __fastcall DoCloseInplaceEditor(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, Fmx::Controls::TControl* AInplaceEditor, bool ACancelled, bool &ACanClose);
	virtual void __fastcall UpdateInplaceEditorPosition();
	virtual void __fastcall DoGetInplaceEditor(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, bool &ATransparent, TTMSFNCTreeViewInplaceEditorClass &AInplaceEditorClass);
	virtual void __fastcall CloseInplaceEditor(bool ACancel, bool AFlagClose = false);
	virtual void __fastcall DoFocusedNodeChanged(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode);
	virtual void __fastcall DoAfterSelectNode(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode);
	virtual void __fastcall DoAfterSelectAllNodes();
	virtual void __fastcall DoAfterUnSelectNode(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode);
	virtual void __fastcall DoHScroll(float APosition);
	virtual void __fastcall DoVScroll(float APosition);
	virtual void __fastcall ResetNodes(bool AUpdateAll = true);
	virtual void __fastcall CreateDragBitmap();
	virtual void __fastcall DestroyDragBitmap();
	void __fastcall HandleSelectNode(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, bool ATriggerEvents, bool AKeyBoard, bool AMultiSelect);
	void __fastcall Animate(System::TObject* Sender);
	void __fastcall ScrollBarChanged(System::TObject* Sender);
	void __fastcall DoInplaceEditorTimer(System::TObject* Sender);
	void __fastcall ColumnStrokeChanged(System::TObject* Sender);
	void __fastcall DragTime(System::TObject* Sender);
	virtual void __fastcall StopAnimationTimer();
	virtual void __fastcall HandleNodeToggle(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode);
	virtual void __fastcall HandleNodeExtra(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode);
	virtual void __fastcall HandleNodeTitleExtra(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode);
	virtual void __fastcall HandleNodeToggleCheck(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn);
	virtual void __fastcall HandleNodeExpand(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, bool ARecurse);
	virtual void __fastcall HandleNodeCollapse(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, bool ARecurse);
	virtual void __fastcall HandleCustomKeys(System::Word AKey);
	virtual void __fastcall OffsetNodeRects(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, float AX, float AY, System::Types::TRectF &ARect);
	virtual void __fastcall BuildDisplay(TTMSFNCTreeViewCache* ACache, TTMSFNCTreeViewDisplayList* ADisplay);
	virtual void __fastcall UpdateCalculations();
	virtual void __fastcall UpdateAutoSizing();
	virtual void __fastcall UpdateColumnRowCalculations(bool AUpdateTotalRowHeight = true);
	virtual void __fastcall UpdateColumnsCache();
	virtual void __fastcall UpdateColumnCache(TTMSFNCTreeViewCache* ACache)/* overload */;
	virtual void __fastcall UpdateGroupsCache();
	virtual void __fastcall UpdateGroupCache(TTMSFNCTreeViewCache* ACache)/* overload */;
	virtual void __fastcall UpdateNodesCache(bool AUpdateNodes = true, bool AResetNodes = false);
	virtual void __fastcall UpdateNodeCache();
	virtual void __fastcall CustomizeNodeCache(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, float AStartY);
	virtual void __fastcall UpdateDisplay();
	virtual void __fastcall UpdateTreeViewCache();
	virtual void __fastcall UpdateColumnsDisplay();
	virtual void __fastcall UpdateGroupsDisplay();
	virtual void __fastcall UpdateNodeDisplay();
	virtual void __fastcall VerticalScrollPositionChanged();
	virtual void __fastcall Scroll(double AHorizontalPos, double AVerticalPos);
	virtual void __fastcall HorizontalScrollPositionChanged();
	virtual void __fastcall DrawNode(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, bool ACaching = false, float AOffsetX = 0.000000E+00f, float AOffsetY = 0.000000E+00f);
	virtual void __fastcall DrawGroup(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AGroup, int AStartColumn, int AEndColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItemKind AKind);
	virtual void __fastcall DrawColumn(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItemKind AKind);
	virtual void __fastcall DrawNodes(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics);
	virtual void __fastcall DrawColumns(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics);
	virtual void __fastcall DrawNodeColumns(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics);
	virtual void __fastcall DrawGroups(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics);
	virtual void __fastcall DrawBorders(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics);
	virtual void __fastcall DrawEmptySpaces(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics);
	virtual void __fastcall DrawDisplay(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, TTMSFNCTreeViewDisplayList* ADisplay);
	virtual void __fastcall HandleDragStart(float X, float Y);
	virtual void __fastcall HandleDragOver(System::TObject* const Source, const System::Types::TPointF &Point, bool &Accept);
	virtual void __fastcall HandleDragDrop(System::TObject* const Source, const System::Types::TPointF &Point);
	virtual void __fastcall HandleMouseDown(System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall HandleMouseMove(System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall HandleDblClick(float X, float Y);
	virtual void __fastcall DoNeedFilterDropDownData(int AColumn, System::Classes::TStrings* AValues);
	virtual void __fastcall DoFilterSelect(int AColumn, System::UnicodeString &ACondition);
	virtual void __fastcall HandleFilter(int AColumn);
	virtual void __fastcall HandleExpand(int AColumn);
	virtual void __fastcall HandleMouseUp(System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall StartVerticalOffsetAnimation();
	virtual void __fastcall ClearFocusedNode(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode);
	virtual void __fastcall SetVerticalOffset(float AVerticalOffset);
	virtual void __fastcall HandleKeyPress(System::WideChar &Key);
	virtual void __fastcall HandleKeyDown(System::Word &Key, System::Classes::TShiftState Shift);
	virtual void __fastcall HandleDialogKey(System::Word &Key, System::Classes::TShiftState Shift);
	void __fastcall HandleFilterListClick(System::TObject* Sender);
	void __fastcall ApplyFilterListBoxStyleLookUp(System::TObject* Sender);
	virtual void __fastcall HandleKeyUp(System::Word &Key, System::Classes::TShiftState Shift);
	virtual void __fastcall HandleMouseWheel(System::Classes::TShiftState Shift, int WheelDelta, bool &Handled);
	virtual void __fastcall HandleNodeEditing(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn);
	virtual void __fastcall CustomizeInplaceEditor(Fmx::Controls::TControl* AInplaceEditor, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewColumn* AColumn);
	virtual void __fastcall StartReload();
	virtual void __fastcall ConfigureNodeRect(int AIndex, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, System::Types::TRectF &ARect);
	virtual void __fastcall GetNodeOffset(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, float &ALeft, float &ATop, float &ARight, float &ABottom);
	virtual void __fastcall GetNodeMargins(float &ALeft, float &ATop, float &ARight, float &ABottom);
	virtual void __fastcall HandleAlternativeDragOver(float X, float Y);
	virtual void __fastcall HandleAlternativeDragDrop(float X, float Y);
	virtual void __fastcall InternalSelectVirtualNode(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode);
	virtual bool __fastcall CanStartDragFromMouseDown();
	virtual bool __fastcall CanStartDragFromMouseMove();
	virtual bool __fastcall AlternativeDragDrop();
	virtual float __fastcall GetNodesSpacing();
	virtual bool __fastcall IsAnimating();
	virtual System::Types::TRectF __fastcall GetNodesRect();
	virtual bool __fastcall CanApplyVerticalOffset();
	virtual float __fastcall GetReloadOffset();
	virtual bool __fastcall NeedsReload(float AVerticalOffset);
	virtual bool __fastcall IsVariableNodeHeight();
	virtual Fmx::Tmsfnctypes::TTMSFNCBitmap* __fastcall GetDragObjectScreenShot();
	virtual bool __fastcall ColumnStretchingActive();
	System::UnicodeString __fastcall GetBufStart(System::UnicodeString ABuffer, int &ALevel);
	virtual int __fastcall GetFirstEditableColumn();
	virtual int __fastcall GetLastEditableColumn();
	virtual int __fastcall GetPreviousEditableColumn(int AColumn);
	virtual int __fastcall GetNextEditableColumn(int AColumn);
	System::Types::TRectF __fastcall GetInplaceEditorRect(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn);
	virtual Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* __fastcall GetNextFocusableNode(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode);
	virtual Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* __fastcall GetPreviousFocusableNode(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode);
	virtual System::UnicodeString __fastcall GetVersion();
	virtual int __fastcall GetFirstVisibleColumn();
	virtual int __fastcall GetLastVisibleColumn();
	virtual bool __fastcall ConfigureNode(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, int AIndex, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, float &AStartY);
	System::UnicodeString __fastcall XYToColumnAnchorCache(float AX, float AY, TTMSFNCTreeViewColumnsCache* ACache, int &AIndex);
	virtual System::UnicodeString __fastcall GetDocURL();
	virtual double __fastcall GetRowHeight(int ARow);
	virtual System::UnicodeString __fastcall GetColumnText(int AColumn);
	virtual System::UnicodeString __fastcall GetGroupText(int AGroup);
	virtual double __fastcall GetColumnsTopSize();
	virtual double __fastcall GetColumnsExtraSize();
	virtual double __fastcall GetColumnsBottomSize();
	virtual double __fastcall GetGroupsTopSize();
	virtual double __fastcall GetGroupsBottomSize();
	virtual System::Types::TRectF __fastcall GetContentClipRect();
	virtual System::Types::TRectF __fastcall GetContentRect();
	virtual System::Types::TRectF __fastcall GetCalculationRect();
	virtual System::Types::TRectF __fastcall GetGroupsTopRect();
	virtual System::Types::TRectF __fastcall GetGroupsBottomRect();
	virtual System::Types::TRectF __fastcall GetColumnsTopRect();
	virtual System::Types::TRectF __fastcall GetColumnTopLeftEmptyRect();
	virtual System::Types::TRectF __fastcall GetColumnBottomLeftEmptyRect();
	virtual System::Types::TRectF __fastcall GetColumnBottomRightEmptyRect();
	virtual System::Types::TRectF __fastcall GetColumnTopRightEmptyRect();
	virtual System::Types::TRectF __fastcall GetGroupTopLeftEmptyRect();
	virtual System::Types::TRectF __fastcall GetGroupBottomLeftEmptyRect();
	virtual System::Types::TRectF __fastcall GetGroupBottomRightEmptyRect();
	virtual System::Types::TRectF __fastcall GetGroupTopRightEmptyRect();
	virtual System::Types::TRectF __fastcall GetColumnsBottomRect();
	virtual int __fastcall GetCacheWidth();
	virtual int __fastcall GetCacheHeight();
	virtual Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItem* __fastcall XYToCacheItem(double X, double Y, float OffsetX = 0.000000E+00f);
	virtual Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItem* __fastcall GetFirstVisibleCacheItem();
	virtual bool __fastcall IsReorderActive();
	virtual bool __fastcall IsDragDropActive();
	virtual System::UnicodeString __fastcall GetHTMLTemplate(int AColumnIndex);
	__property int SelectedVirtualNodeRow = {read=GetSelectedVirtualNodeRow, nodefault};
	__property TTMSFNCTreeViewAdapter* Adapter = {read=FAdapter, write=SetAdapter};
	__property TTMSFNCTreeViewNodesAppearance* NodesAppearance = {read=FNodesAppearance, write=SetNodesAppearance};
	__property TTMSFNCTreeViewColumnsAppearance* ColumnsAppearance = {read=FColumnsAppearance, write=SetColumnsAppearance};
	__property TTMSFNCTreeViewGroupsAppearance* GroupsAppearance = {read=FGroupsAppearance, write=SetGroupsAppearance};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCAppearanceGlobalFont* GlobalFont = {read=FGlobalFont, write=SetGlobalFont};
	__property TTMSFNCTreeViewViewJSONOptions* DefaultViewJSONOptions = {read=FDefaultViewJSONOptions, write=SetDefaultViewJSONOptions};
	__property TTMSFNCTreeViewBeforeCutToClipboardEvent OnBeforeCutToClipboard = {read=FOnBeforeCutToClipboard, write=FOnBeforeCutToClipboard};
	__property TTMSFNCTreeViewBeforeCopyToClipboardEvent OnBeforeCopyToClipboard = {read=FOnBeforeCopyToClipboard, write=FOnBeforeCopyToClipboard};
	__property TTMSFNCTreeViewBeforePasteFromClipboardEvent OnBeforePasteFromClipboard = {read=FOnBeforePasteFromClipboard, write=FOnBeforePasteFromClipboard};
	__property TTMSFNCTreeViewAfterCutToClipboardEvent OnAfterCutToClipboard = {read=FOnAfterCutToClipboard, write=FOnAfterCutToClipboard};
	__property TTMSFNCTreeViewAfterCopyToClipboardEvent OnAfterCopyToClipboard = {read=FOnAfterCopyToClipboard, write=FOnAfterCopyToClipboard};
	__property TTMSFNCTreeViewAfterPasteFromClipboardEvent OnAfterPasteFromClipboard = {read=FOnAfterPasteFromClipboard, write=FOnAfterPasteFromClipboard};
	__property TTMSFNCTreeViewBeforeSortNodesEvent OnBeforeSortNodes = {read=FOnBeforeSortNodes, write=FOnBeforeSortNodes};
	__property TTMSFNCTreeViewAfterSortNodesEvent OnAfterSortNodes = {read=FOnAfterSortNodes, write=FOnAfterSortNodes};
	__property TTMSFNCTreeViewBeforeReorderNodeEvent OnBeforeReorderNode = {read=FOnBeforeReorderNode, write=FOnBeforeReorderNode};
	__property TTMSFNCTreeViewAfterReorderNodeEvent OnAfterReorderNode = {read=FOnAfterReorderNode, write=FOnAfterReorderNode};
	__property TTMSFNCTreeViewBeforeDropNodeEvent OnBeforeDropNode = {read=FOnBeforeDropNode, write=FOnBeforeDropNode};
	__property TTMSFNCTreeViewAfterDropNodeEvent OnAfterDropNode = {read=FOnAfterDropNode, write=FOnAfterDropNode};
	__property TTMSFNCTreeViewBeforeOpenInplaceEditorEvent OnBeforeOpenInplaceEditor = {read=FOnBeforeOpenInplaceEditor, write=FOnBeforeOpenInplaceEditor};
	__property TTMSFNCTreeViewCloseInplaceEditorEvent OnCloseInplaceEditor = {read=FOnCloseInplaceEditor, write=FOnCloseInplaceEditor};
	__property TTMSFNCTreeViewAfterOpenInplaceEditorEvent OnAfterOpenInplaceEditor = {read=FOnAfterOpenInplaceEditor, write=FOnAfterOpenInplaceEditor};
	__property TTMSFNCTreeViewGetInplaceEditorEvent OnGetInplaceEditor = {read=FOnGetInplaceEditor, write=FOnGetInplaceEditor};
	__property TTMSFNCTreeViewCustomizeInplaceEditorEvent OnCustomizeInplaceEditor = {read=FOnCustomizeInplaceEditor, write=FOnCustomizeInplaceEditor};
	__property TTMSFNCTreeViewGetInplaceEditorRectEvent OnGetInplaceEditorRect = {read=FOnGetInplaceEditorRect, write=FOnGetInplaceEditorRect};
	__property TTMSFNCTreeViewNodeCompareEvent OnNodeCompare = {read=FOnNodeCompare, write=FOnNodeCompare};
	__property TTMSFNCTreeViewBeforeSizeColumnEvent OnBeforeSizeColumn = {read=FOnBeforeSizeColumn, write=FOnBeforeSizeColumn};
	__property TTMSFNCTreeViewAfterSizeColumnEvent OnAfterSizeColumn = {read=FOnAfterSizeColumn, write=FOnAfterSizeColumn};
	__property TTMSFNCTreeViewBeforeDrawColumnEmptySpaceEvent OnBeforeDrawColumnEmptySpace = {read=FOnBeforeDrawColumnEmptySpace, write=FOnBeforeDrawColumnEmptySpace};
	__property TTMSFNCTreeViewAfterDrawColumnEmptySpaceEvent OnAfterDrawColumnEmptySpace = {read=FOnAfterDrawColumnEmptySpace, write=FOnAfterDrawColumnEmptySpace};
	__property TTMSFNCTreeViewBeforeDrawGroupEmptySpaceEvent OnBeforeDrawGroupEmptySpace = {read=FOnBeforeDrawGroupEmptySpace, write=FOnBeforeDrawGroupEmptySpace};
	__property TTMSFNCTreeViewAfterDrawGroupEmptySpaceEvent OnAfterDrawGroupEmptySpace = {read=FOnAfterDrawGroupEmptySpace, write=FOnAfterDrawGroupEmptySpace};
	__property TTMSFNCTreeViewNeedFilterDropDownDataEvent OnNeedFilterDropDownData = {read=FOnNeedFilterDropDownData, write=FOnNeedFilterDropDownData};
	__property TTMSFNCTreeViewFilterSelectEvent OnFilterSelect = {read=FOnFilterSelect, write=FOnFilterSelect};
	__property TTMSFNCTreeViewBeforeDrawColumnEvent OnBeforeDrawColumn = {read=FOnBeforeDrawColumn, write=FOnBeforeDrawColumn};
	__property TTMSFNCTreeViewAfterDrawColumnEvent OnAfterDrawColumn = {read=FOnAfterDrawColumn, write=FOnAfterDrawColumn};
	__property TTMSFNCTreeViewBeforeDrawColumnEvent OnBeforeDrawNodeColumn = {read=FOnBeforeDrawNodeColumn, write=FOnBeforeDrawNodeColumn};
	__property TTMSFNCTreeViewAfterDrawColumnEvent OnAfterDrawNodeColumn = {read=FOnAfterDrawNodeColumn, write=FOnAfterDrawNodeColumn};
	__property TTMSFNCTreeViewBeforeDrawColumnHeaderEvent OnBeforeDrawColumnHeader = {read=FOnBeforeDrawColumnHeader, write=FOnBeforeDrawColumnHeader};
	__property TTMSFNCTreeViewAfterDrawColumnHeaderEvent OnAfterDrawColumnHeader = {read=FOnAfterDrawColumnHeader, write=FOnAfterDrawColumnHeader};
	__property TTMSFNCTreeViewBeforeDrawGroupEvent OnBeforeDrawGroup = {read=FOnBeforeDrawGroup, write=FOnBeforeDrawGroup};
	__property TTMSFNCTreeViewAfterDrawGroupEvent OnAfterDrawGroup = {read=FOnAfterDrawGroup, write=FOnAfterDrawGroup};
	__property TTMSFNCTreeViewBeforeDrawNodeEvent OnBeforeDrawNode = {read=FOnBeforeDrawNode, write=FOnBeforeDrawNode};
	__property TTMSFNCTreeViewAfterDrawNodeEvent OnAfterDrawNode = {read=FOnAfterDrawNode, write=FOnAfterDrawNode};
	__property TTMSFNCTreeViewBeforeDrawColumnTextEvent OnBeforeDrawColumnText = {read=FOnBeforeDrawColumnText, write=FOnBeforeDrawColumnText};
	__property TTMSFNCTreeViewGetColumnTextEvent OnGetColumnText = {read=FOnGetColumnText, write=FOnGetColumnText};
	__property TTMSFNCTreeViewAfterDrawColumnTextEvent OnAfterDrawColumnText = {read=FOnAfterDrawColumnText, write=FOnAfterDrawColumnText};
	__property TTMSFNCTreeViewBeforeDrawGroupTextEvent OnBeforeDrawGroupText = {read=FOnBeforeDrawGroupText, write=FOnBeforeDrawGroupText};
	__property TTMSFNCTreeViewGetGroupTextEvent OnGetGroupText = {read=FOnGetGroupText, write=FOnGetGroupText};
	__property TTMSFNCTreeViewAfterDrawGroupTextEvent OnAfterDrawGroupText = {read=FOnAfterDrawGroupText, write=FOnAfterDrawGroupText};
	__property TTMSFNCTreeViewBeforeDrawNodeTextEvent OnBeforeDrawNodeText = {read=FOnBeforeDrawNodeText, write=FOnBeforeDrawNodeText};
	__property TTMSFNCTreeViewBeforeDrawNodeTitleEvent OnBeforeDrawNodeTitle = {read=FOnBeforeDrawNodeTitle, write=FOnBeforeDrawNodeTitle};
	__property TTMSFNCTreeViewAfterDrawSortIndicatorEvent OnAfterDrawSortIndicator = {read=FOnAfterDrawSortIndicator, write=FOnAfterDrawSortIndicator};
	__property TTMSFNCTreeViewBeforeDrawSortIndicatorEvent OnBeforeDrawSortIndicator = {read=FOnBeforeDrawSortIndicator, write=FOnBeforeDrawSortIndicator};
	__property TTMSFNCTreeViewGetNodeHeightEvent OnGetNodeHeight = {read=FOnGetNodeHeight, write=FOnGetNodeHeight};
	__property TTMSFNCTreeViewGetNodeTextEvent OnGetNodeText = {read=FOnGetNodeText, write=FOnGetNodeText};
	__property TTMSFNCTreeViewGetNodeTitleEvent OnGetNodeTitle = {read=FOnGetNodeTitle, write=FOnGetNodeTitle};
	__property TTMSFNCTreeViewGetNodeTitleExpandedEvent OnGetNodeTitleExpanded = {read=FOnGetNodeExpanded, write=FOnGetNodeExpanded};
	__property TTMSFNCTreeViewGetNodeSidesEvent OnGetNodeSides = {read=FOnGetNodeSides, write=FOnGetNodeSides};
	__property TTMSFNCTreeViewGetNodeRoundingEvent OnGetNodeRounding = {read=FOnGetNodeRounding, write=FOnGetNodeRounding};
	__property TTMSFNCTreeViewGetNodeDataEvent OnGetNodeData = {read=FOnGetNodeData, write=FOnGetNodeData};
	__property TTMSFNCTreeViewGetNodeTrimmingEvent OnGetNodeTrimming = {read=FOnGetNodeTrimming, write=FOnGetNodeTrimming};
	__property TTMSFNCTreeViewGetNodeWordWrappingEvent OnGetNodeWordWrapping = {read=FOnGetNodeWordWrapping, write=FOnGetNodeWordWrapping};
	__property TTMSFNCTreeViewGetNodeTrimmingEvent OnGetNodeTitleTrimming = {read=FOnGetNodeTitleTrimming, write=FOnGetNodeTitleTrimming};
	__property TTMSFNCTreeViewGetNodeWordWrappingEvent OnGetNodeTitleWordWrapping = {read=FOnGetNodeTitleWordWrapping, write=FOnGetNodeTitleWordWrapping};
	__property TTMSFNCTreeViewGetNodeExtraSizeEvent OnGetNodeExtraSize = {read=FOnGetNodeExtraSize, write=FOnGetNodeExtraSize};
	__property TTMSFNCTreeViewGetNodeTitleExtraSizeEvent OnGetNodeTitleExtraSize = {read=FOnGetNodeTitleExtraSize, write=FOnGetNodeTitleExtraSize};
	__property TTMSFNCTreeViewGetNodeHorizontalTextAlignEvent OnGetNodeHorizontalTextAlign = {read=FOnGetNodeHorizontalTextAlign, write=FOnGetNodeHorizontalTextAlign};
	__property TTMSFNCTreeViewGetNodeVerticalTextAlignEvent OnGetNodeVerticalTextAlign = {read=FOnGetNodeVerticalTextAlign, write=FOnGetNodeVerticalTextAlign};
	__property TTMSFNCTreeViewGetNodeHorizontalTextAlignEvent OnGetNodeTitleHorizontalTextAlign = {read=FOnGetNodeTitleHorizontalTextAlign, write=FOnGetNodeTitleHorizontalTextAlign};
	__property TTMSFNCTreeViewGetNodeVerticalTextAlignEvent OnGetNodeTitleVerticalTextAlign = {read=FOnGetNodeTitleVerticalTextAlign, write=FOnGetNodeTitleVerticalTextAlign};
	__property TTMSFNCTreeViewGetColumnTrimmingEvent OnGetColumnTrimming = {read=FOnGetColumnTrimming, write=FOnGetColumnTrimming};
	__property TTMSFNCTreeViewGetColumnWordWrappingEvent OnGetColumnWordWrapping = {read=FOnGetColumnWordWrapping, write=FOnGetColumnWordWrapping};
	__property TTMSFNCTreeViewGetColumnHorizontalTextAlignEvent OnGetColumnHorizontalTextAlign = {read=FOnGetColumnHorizontalTextAlign, write=FOnGetColumnHorizontalTextAlign};
	__property TTMSFNCTreeViewGetColumnVerticalTextAlignEvent OnGetColumnVerticalTextAlign = {read=FOnGetColumnVerticalTextAlign, write=FOnGetColumnVerticalTextAlign};
	__property TTMSFNCTreeViewGetNodeIconEvent OnGetNodeIcon = {read=FOnGetNodeIcon, write=FOnGetNodeIcon};
	__property TTMSFNCTreeViewGetNodeIconSizeEvent OnGetNodeIconSize = {read=FOnGetNodeIconSize, write=FOnGetNodeIconSize};
	__property TTMSFNCTreeViewGetNumberOfNodesEvent OnGetNumberOfNodes = {read=FOnGetNumberOfNodes, write=FOnGetNumberOfNodes};
	__property TTMSFNCTreeViewAfterDrawNodeTextEvent OnAfterDrawNodeText = {read=FOnAfterDrawNodeText, write=FOnAfterDrawNodeText};
	__property TTMSFNCTreeViewAfterDrawNodeTitleEvent OnAfterDrawNodeTitle = {read=FOnAfterDrawNodeTitle, write=FOnAfterDrawNodeTitle};
	__property TTMSFNCTreeViewAfterDrawNodeIconEvent OnAfterDrawNodeIcon = {read=FOnAfterDrawNodeIcon, write=FOnAfterDrawNodeIcon};
	__property TTMSFNCTreeViewBeforeDrawNodeIconEvent OnBeforeDrawNodeIcon = {read=FOnBeforeDrawNodeIcon, write=FOnBeforeDrawNodeIcon};
	__property TTMSFNCTreeViewAfterDrawNodeExtraEvent OnAfterDrawNodeExtra = {read=FOnAfterDrawNodeExtra, write=FOnAfterDrawNodeExtra};
	__property TTMSFNCTreeViewDrawNodeExtraEvent OnDrawNodeExtra = {read=FOnDrawNodeExtra, write=FOnDrawNodeExtra};
	__property TTMSFNCTreeViewBeforeDrawNodeExtraEvent OnBeforeDrawNodeExtra = {read=FOnBeforeDrawNodeExtra, write=FOnBeforeDrawNodeExtra};
	__property TTMSFNCTreeViewAfterDrawNodeTitleExtraEvent OnAfterDrawNodeTitleExtra = {read=FOnAfterDrawNodeTitleExtra, write=FOnAfterDrawNodeTitleExtra};
	__property TTMSFNCTreeViewDrawNodeTitleExtraEvent OnDrawNodeTitleExtra = {read=FOnDrawNodeTitleExtra, write=FOnDrawNodeTitleExtra};
	__property TTMSFNCTreeViewBeforeDrawNodeTitleExtraEvent OnBeforeDrawNodeTitleExtra = {read=FOnBeforeDrawNodeTitleExtra, write=FOnBeforeDrawNodeTitleExtra};
	__property TTMSFNCTreeViewAfterDrawNodeExpandEvent OnAfterDrawNodeExpand = {read=FOnAfterDrawNodeExpand, write=FOnAfterDrawNodeExpand};
	__property TTMSFNCTreeViewBeforeDrawNodeExpandEvent OnBeforeDrawNodeExpand = {read=FOnBeforeDrawNodeExpand, write=FOnBeforeDrawNodeExpand};
	__property TTMSFNCTreeViewAfterDrawNodeCheckEvent OnAfterDrawNodeCheck = {read=FOnAfterDrawNodeCheck, write=FOnAfterDrawNodeCheck};
	__property TTMSFNCTreeViewBeforeDrawNodeCheckEvent OnBeforeDrawNodeCheck = {read=FOnBeforeDrawNodeCheck, write=FOnBeforeDrawNodeCheck};
	__property TTMSFNCTreeViewBeforeUpdateNodeEvent OnBeforeUpdateNode = {read=FOnBeforeUpdateNode, write=FOnBeforeUpdateNode};
	__property TTMSFNCTreeViewAfterUpdateNodeEvent OnAfterUpdateNode = {read=FOnAfterUpdateNode, write=FOnAfterUpdateNode};
	__property TTMSFNCTreeViewBeforeUnCheckNodeEvent OnBeforeUnCheckNode = {read=FOnBeforeUnCheckNode, write=FOnBeforeUnCheckNode};
	__property TTMSFNCTreeViewAfterUnCheckNodeEvent OnAfterUnCheckNode = {read=FOnAfterUnCheckNode, write=FOnAfterUnCheckNode};
	__property TTMSFNCTreeViewBeforeCheckNodeEvent OnBeforeCheckNode = {read=FOnBeforeCheckNode, write=FOnBeforeCheckNode};
	__property TTMSFNCTreeViewAfterCheckNodeEvent OnAfterCheckNode = {read=FOnAfterCheckNode, write=FOnAfterCheckNode};
	__property TTMSFNCTreeViewFocusedNodeChangedEvent OnFocusedNodeChanged = {read=FOnFocusedNodeChanged, write=FOnFocusedNodeChanged};
	__property TTMSFNCTreeViewBeforeCollapseNodeEvent OnBeforeCollapseNode = {read=FOnBeforeCollapseNode, write=FOnBeforeCollapseNode};
	__property TTMSFNCTreeViewAfterCollapseNodeEvent OnAfterCollapseNode = {read=FOnAfterCollapseNode, write=FOnAfterCollapseNode};
	__property TTMSFNCTreeViewBeforeExpandNodeEvent OnBeforeExpandNode = {read=FOnBeforeExpandNode, write=FOnBeforeExpandNode};
	__property TTMSFNCTreeViewAfterExpandNodeEvent OnAfterExpandNode = {read=FOnAfterExpandNode, write=FOnAfterExpandNode};
	__property TTMSFNCTreeViewBeforeSelectAllNodesEvent OnBeforeSelectAllNodes = {read=FOnBeforeSelectAllNodes, write=FOnBeforeSelectAllNodes};
	__property TTMSFNCTreeViewAfterSelectAllNodesEvent OnAfterSelectAllNodes = {read=FOnAfterSelectAllNodes, write=FOnAfterSelectAllNodes};
	__property TTMSFNCTreeViewBeforeSelectNodeEvent OnBeforeSelectNode = {read=FOnBeforeSelectNode, write=FOnBeforeSelectNode};
	__property TTMSFNCTreeViewAfterSelectNodeEvent OnAfterSelectNode = {read=FOnAfterSelectNode, write=FOnAfterSelectNode};
	__property TTMSFNCTreeViewNodeClickEvent OnNodeClick = {read=FOnNodeClick, write=FOnNodeClick};
	__property TTMSFNCTreeViewNodeMouseLeaveEvent OnNodeMouseLeave = {read=FOnNodeMouseLeave, write=FOnNodeMouseLeave};
	__property TTMSFNCTreeViewNodeMouseEnterEvent OnNodeMouseEnter = {read=FOnNodeMouseEnter, write=FOnNodeMouseEnter};
	__property TTMSFNCTreeViewNodeClickEvent OnNodeDblClick = {read=FOnNodeDblClick, write=FOnNodeDblClick};
	__property TTMSFNCTreeViewBeforeUnSelectNodeEvent OnBeforeUnSelectNode = {read=FOnBeforeUnSelectNode, write=FOnBeforeUnSelectNode};
	__property TTMSFNCTreeViewAfterUnSelectNodeEvent OnAfterUnSelectNode = {read=FOnAfterUnSelectNode, write=FOnAfterUnSelectNode};
	__property TTMSFNCTreeViewIsNodeCheckedEvent OnIsNodeChecked = {read=FOnIsNodeChecked, write=FOnIsNodeChecked};
	__property TTMSFNCTreeViewIsNodeExpandedEvent OnIsNodeExpanded = {read=FOnIsNodeExpanded, write=FOnIsNodeExpanded};
	__property TTMSFNCTreeViewIsNodeVisibleEvent OnIsNodeVisible = {read=FOnIsNodeVisible, write=FOnIsNodeVisible};
	__property TTMSFNCTreeViewIsNodeEnabledEvent OnIsNodeEnabled = {read=FOnIsNodeEnabled, write=FOnIsNodeEnabled};
	__property TTMSFNCTreeViewGetNodeColorEvent OnGetNodeColor = {read=FOnGetNodeColor, write=FOnGetNodeColor};
	__property TTMSFNCTreeViewGetNodeColorEvent OnGetNodeStrokeColor = {read=FOnGetNodeStrokeColor, write=FOnGetNodeStrokeColor};
	__property TTMSFNCTreeViewGetNodeCheckTypeEvent OnGetNodeCheckType = {read=FOnGetNodeCheckType, write=FOnGetNodeCheckType};
	__property TTMSFNCTreeViewGetNodeColorEvent OnGetNodeSelectedColor = {read=FOnGetNodeSelectedStrokeColor, write=FOnGetNodeSelectedStrokeColor};
	__property TTMSFNCTreeViewGetNodeColorEvent OnGetNodeSelectedStrokeColor = {read=FOnGetNodeSelectedColor, write=FOnGetNodeSelectedColor};
	__property TTMSFNCTreeViewGetNodeColorEvent OnGetNodeDisabledColor = {read=FOnGetNodeDisabledColor, write=FOnGetNodeDisabledColor};
	__property TTMSFNCTreeViewGetNodeColorEvent OnGetNodeDisabledStrokeColor = {read=FOnGetNodeDisabledStrokeColor, write=FOnGetNodeDisabledStrokeColor};
	__property TTMSFNCTreeViewGetNodeTextColorEvent OnGetNodeTextColor = {read=FOnGetNodeTextColor, write=FOnGetNodeTextColor};
	__property TTMSFNCTreeViewGetNodeTextColorEvent OnGetNodeSelectedTextColor = {read=FOnGetNodeSelectedTextColor, write=FOnGetNodeSelectedTextColor};
	__property TTMSFNCTreeViewGetNodeTextColorEvent OnGetNodeDisabledTextColor = {read=FOnGetNodeDisabledTextColor, write=FOnGetNodeDisabledTextColor};
	__property TTMSFNCTreeViewGetNodeTitleColorEvent OnGetNodeTitleColor = {read=FOnGetNodeTitleColor, write=FOnGetNodeTitleColor};
	__property TTMSFNCTreeViewGetNodeTitleColorEvent OnGetNodeSelectedTitleColor = {read=FOnGetNodeSelectedTitleColor, write=FOnGetNodeSelectedTitleColor};
	__property TTMSFNCTreeViewGetNodeTitleColorEvent OnGetNodeDisabledTitleColor = {read=FOnGetNodeDisabledTitleColor, write=FOnGetNodeDisabledTitleColor};
	__property TTMSFNCTreeViewIsNodeExtendedEvent OnIsNodeExtended = {read=FOnIsNodeExtended, write=FOnIsNodeExtended};
	__property TTMSFNCTreeViewNodeAnchorClickEvent OnNodeAnchorClick = {read=FOnNodeAnchorClick, write=FOnNodeAnchorClick};
	__property TTMSFNCTreeViewNodeTitleAnchorClickEvent OnNodeTitleAnchorClick = {read=FOnNodeTitleAnchorClick, write=FOnNodeTitleAnchorClick};
	__property TTMSFNCTreeViewNodeChangedEvent OnNodeChanged = {read=FOnNodeChanged, write=FOnNodeChanged};
	__property TTMSFNCTreeViewInteraction* Interaction = {read=FInteraction, write=SetInteraction};
	__property TTMSFNCTreeViewScrollEvent OnVScroll = {read=FOnVScroll, write=FOnVScroll};
	__property TTMSFNCTreeViewScrollEvent OnHScroll = {read=FOnHScroll, write=FOnHScroll};
	__property System::UnicodeString Version = {read=GetVersion};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* ColumnStroke = {read=FColumnStroke, write=SetColumnStroke};
	__property bool InplaceEditorActive = {read=FInplaceEditorActive, write=FInplaceEditorActive, nodefault};
	__property int UpdateNodeColumn = {read=FUpdateNodeColumn, write=FUpdateNodeColumn, nodefault};
	__property TTMSFNCTreeViewColumnAnchorClickEvent OnColumnAnchorClick = {read=FOnColumnAnchorClick, write=FOnColumnAnchorClick};
	__property TTMSFNCTreeViewBeforeAddJSONNodeEvent OnBeforeAddJSONNode = {read=FOnBeforeAddJSONNode, write=FOnBeforeAddJSONNode};
	__property TTMSFNCTreeViewAfterAddJSONNodeEvent OnAfterAddJSONNode = {read=FOnAfterAddJSONNode, write=FOnAfterAddJSONNode};
	__property TTMSFNCTreeViewGetHTMLTemplateValueEvent OnGetHTMLTemplateValue = {read=FOnGetHTMLTemplateValue, write=FOnGetHTMLTemplateValue};
	__property TTMSFNCTreeViewGetHTMLTemplateEvent OnGetHTMLTemplate = {read=FOnGetHTMLTemplate, write=FOnGetHTMLTemplate};
	__property Fmx::Tmsfncimage::TTMSFNCImage* DragBitmap = {read=FDragBitmap};
	
public:
	__fastcall virtual TTMSFNCCustomTreeView(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCCustomTreeView();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	virtual void __fastcall Draw(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	virtual void __fastcall InitSample();
	virtual void __fastcall CutToClipboard(bool ATextOnly = false);
	virtual void __fastcall CopyToClipboard(bool ATextOnly = false);
	virtual void __fastcall PasteFromClipboard();
	HIDESBASE virtual void __fastcall Sort(int AColumn = 0x0, bool ARecurse = false, bool ACaseSensitive = true, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNodesSortMode ASortingMode = (Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNodesSortMode)(0x0), bool AClearNodeList = true);
	void __fastcall ClearSorting();
	void __fastcall LoadFromStream(System::Classes::TStream* const AStream)/* overload */;
	void __fastcall LoadFromFile(const System::UnicodeString AFileName)/* overload */;
	void __fastcall SaveToFile(const System::UnicodeString AFileName, const bool ATextOnly = true)/* overload */;
	void __fastcall SaveToStream(System::Classes::TStream* const AStream, const bool ATextOnly = true)/* overload */;
	virtual void __fastcall ViewJSON(System::UnicodeString AFileName, TTMSFNCTreeViewViewJSONOptions* AViewOptions = (TTMSFNCTreeViewViewJSONOptions*)(0x0));
	virtual void __fastcall ViewJSONFromStream(System::Classes::TStream* AStream, TTMSFNCTreeViewViewJSONOptions* AViewOptions = (TTMSFNCTreeViewViewJSONOptions*)(0x0));
	virtual void __fastcall ViewJSONFromText(System::UnicodeString AText, TTMSFNCTreeViewViewJSONOptions* AViewOptions = (TTMSFNCTreeViewViewJSONOptions*)(0x0));
	virtual void __fastcall RemoveSelectedVirtualNodes();
	virtual void __fastcall RemoveSelectedNodes();
	virtual void __fastcall UnSelectAllNodes();
	virtual void __fastcall SelectAllNodes();
	virtual void __fastcall UnSelectAllVirtualNodes();
	virtual void __fastcall SelectAllVirtualNodes();
	virtual void __fastcall SelectNode(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNode* ANode);
	virtual void __fastcall SelectVirtualNodeByRow(int ARow);
	virtual void __fastcall SelectVirtualNode(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode);
	virtual void __fastcall SelectNodes(TTMSFNCTreeViewNodeArray ANodes);
	virtual void __fastcall SelectVirtualNodes(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNodeArray ANodes);
	virtual void __fastcall UnSelectNode(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNode* ANode);
	virtual void __fastcall UnSelectVirtualNode(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode);
	virtual void __fastcall UnSelectNodes(TTMSFNCTreeViewNodeArray ANodes);
	virtual void __fastcall UnSelectVirtualNodes(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNodeArray ANodes);
	virtual void __fastcall RemoveNodeFromSelection(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode);
	virtual void __fastcall AddNodeToSelection(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode);
	virtual void __fastcall EditNode(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNode* ANode, int AColumn);
	virtual void __fastcall EditVirtualNode(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn);
	virtual void __fastcall StopEditing();
	virtual void __fastcall CancelEditing();
	virtual void __fastcall Clear();
	virtual int __fastcall GetVisibleNodeCount();
	virtual Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* __fastcall GetFirstVisibleVirtualNode();
	virtual Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* __fastcall GetLastVisibleVirtualNode();
	virtual int __fastcall GetFirstVisibleVirtualNodeRow();
	virtual int __fastcall GetLastVisibleVirtualNodeRow();
	virtual TTMSFNCTreeViewCopyNodes* __fastcall GetNodesFromClipboard();
	virtual bool __fastcall IsEditing();
	virtual Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* __fastcall LookupNode(System::UnicodeString ALookupString, bool ARootNodesOnly = false, int AColumn = 0xffffffff, bool ACaseSensitive = false, bool AAutoSelect = false, bool AAutoExpand = false);
	virtual Fmx::Controls::TControl* __fastcall GetInplaceEditor();
	virtual bool __fastcall IsNodeSelectable(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNode* ANode);
	virtual bool __fastcall IsVirtualNodeSelectable(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode);
	virtual System::UnicodeString __fastcall XYToColumnAnchor(float AX, float AY, int &AIndex);
	virtual Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* __fastcall XYToNode(double X, double Y, float OffsetX = 0.000000E+00f);
	virtual TTMSFNCTreeViewNodeAnchor __fastcall XYToNodeAnchor(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, float X, float Y);
	virtual TTMSFNCTreeViewNodeAnchor __fastcall XYToNodeTitleAnchor(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, float X, float Y);
	virtual bool __fastcall XYToNodeExpand(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, float X, float Y);
	virtual bool __fastcall XYToNodeExtra(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, float X, float Y);
	virtual bool __fastcall XYToNodeTitleExtra(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, float X, float Y);
	virtual TTMSFNCTreeViewNodeCheck __fastcall XYToNodeCheck(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, float X, float Y);
	virtual int __fastcall XYToNodeTextColumn(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, float X, float Y);
	virtual int __fastcall XYToColumnSize(float X, float Y);
	virtual int __fastcall XYToColumn(float X, float Y, bool AIncludeRows = false);
	virtual int __fastcall XYToColumnFilter(float X, float Y);
	virtual int __fastcall XYToColumnExpand(float X, float Y);
	virtual int __fastcall SelectedNodeCount();
	virtual int __fastcall SelectedVirtualNodeCount();
	virtual bool __fastcall IsNodeSelected(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNode* ANode);
	virtual bool __fastcall IsVirtualNodeSelected(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode);
	__property Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* FocusedVirtualNode = {read=GetFocusedVirtualNode, write=SetFocusedVirtualNode};
	__property Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNode* FocusedNode = {read=GetFocusedNode, write=SetFocusedNode};
	__property Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNode* SelectedNodes[int AIndex] = {read=GetSelNode};
	__property Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* SelectedVirtualNode = {read=GetFocusedVirtualNode, write=SetSelectedVirtualNode};
	__property Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNode* SelectedNode = {read=GetFocusedNode, write=SetSelectedNode};
	__property Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* SelectedVirtualNodes[int AIndex] = {read=GetSelVirtualNode};
	__property int SortColumn = {read=FSortColumn, write=SetSortColumn, default=-1};
	__property Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* DragNode = {read=FDragNode, write=FDragNode};
	__property bool DragModeStarted = {read=FDragModeStarted, nodefault};
	__property bool CompactMode = {read=FCompactMode, write=SetCompactMode, nodefault};
	__property int TopRow = {read=GetTopRow, write=SetTopRow, nodefault};
	__property int BottomRow = {read=GetBottomRow, nodefault};
	__property TTMSFNCTreeViewReorderEvent OnCustomReorder = {read=FOnCustomReorder, write=FOnCustomReorder};
	__property TTMSFNCTreeViewDragOverEvent OnCustomDragOver = {read=FOnCustomDragOver, write=FOnCustomDragOver};
	__property TTMSFNCTreeViewDragDropEvent OnCustomDragDrop = {read=FOnCustomDragDrop, write=FOnCustomDragDrop};
	__property System::Classes::TNotifyEvent OnCustomCopyToClipboard = {read=FOnCustomCopyToClipboard, write=FOnCustomCopyToClipboard};
	__property System::Classes::TNotifyEvent OnCustomCutToClipboard = {read=FOnCustomCutToClipboard, write=FOnCustomCutToClipboard};
	__property System::Classes::TNotifyEvent OnCustomPasteFromClipboard = {read=FOnCustomPasteFromClipboard, write=FOnCustomPasteFromClipboard};
	__property TTMSFNCTreeViewColumnSortEvent OnCustomColumnSort = {read=FOnCustomColumnSort, write=FOnCustomColumnSort};
	__property TTMSFNCTreeViewLookupEvent OnCustomLookup = {read=FOnCustomLookup, write=FOnCustomLookup};
private:
	void *__ITMSFNCAppearanceGlobalFont;	// Fmx::Tmsfncgraphicstypes::ITMSFNCAppearanceGlobalFont 
	
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
	
};


class PASCALIMPLEMENTATION TTMSFNCTreeViewPublished : public TTMSFNCCustomTreeView
{
	typedef TTMSFNCCustomTreeView inherited;
	
__published:
	__property Fill;
	__property Stroke;
	__property BitmapContainer;
	__property HorizontalScrollBarVisible = {default=1};
	__property VerticalScrollBarVisible = {default=1};
	__property Groups;
	__property GroupsAppearance;
	__property ColumnStroke;
	__property Columns;
	__property Nodes;
	__property ColumnsAppearance;
	__property NodesAppearance;
	__property Interaction;
	__property StretchScrollBars = {default=1};
	__property Version = {default=0};
	__property PopupMenu;
	__property GlobalFont;
	__property OnNeedFilterDropDownData;
	__property OnFilterSelect;
	__property OnBeforeDrawColumn;
	__property OnAfterDrawColumn;
	__property OnBeforeDrawColumnHeader;
	__property OnAfterDrawColumnHeader;
	__property OnBeforeDrawNodeColumn;
	__property OnAfterDrawNodeColumn;
	__property OnBeforeSortNodes;
	__property OnAfterSortNodes;
	__property OnBeforeDrawGroup;
	__property OnAfterDrawGroup;
	__property OnBeforeDrawNode;
	__property OnAfterDrawNode;
	__property OnBeforeDrawColumnText;
	__property OnGetColumnText;
	__property OnNodeCompare;
	__property OnAfterDrawColumnText;
	__property OnBeforeDrawGroupText;
	__property OnGetGroupText;
	__property OnAfterDrawGroupText;
	__property OnBeforeDrawNodeText;
	__property OnAfterDrawNodeIcon;
	__property OnAfterDrawNodeExpand;
	__property OnBeforeDrawNodeIcon;
	__property OnBeforeDrawNodeExpand;
	__property OnAfterDrawNodeCheck;
	__property OnBeforeDrawNodeCheck;
	__property OnGetNodeCheckType;
	__property OnGetNodeText;
	__property OnGetNodeData;
	__property OnBeforeSizeColumn;
	__property OnAfterSizeColumn;
	__property OnGetNodeTrimming;
	__property OnGetNodeWordWrapping;
	__property OnGetNodeHorizontalTextAlign;
	__property OnGetNodeVerticalTextAlign;
	__property OnGetColumnTrimming;
	__property OnFocusedNodeChanged;
	__property OnGetColumnWordWrapping;
	__property OnGetColumnHorizontalTextAlign;
	__property OnGetColumnVerticalTextAlign;
	__property OnBeforeUnCheckNode;
	__property OnAfterUnCheckNode;
	__property OnBeforeCheckNode;
	__property OnAfterCheckNode;
	__property OnBeforeCollapseNode;
	__property OnAfterCollapseNode;
	__property OnBeforeExpandNode;
	__property OnAfterExpandNode;
	__property OnGetNodeIcon;
	__property OnGetNodeIconSize;
	__property OnGetNumberOfNodes;
	__property OnIsNodeExtended;
	__property OnIsNodeExpanded;
	__property OnAfterDrawNodeText;
	__property OnIsNodeChecked;
	__property OnNodeAnchorClick;
	__property OnBeforeUpdateNode;
	__property OnAfterUpdateNode;
	__property OnBeforeSelectNode;
	__property OnAfterSelectNode;
	__property OnBeforeSelectAllNodes;
	__property OnAfterSelectAllNodes;
	__property OnNodeClick;
	__property OnNodeMouseLeave;
	__property OnNodeMouseEnter;
	__property OnNodeDblClick;
	__property OnBeforeUnSelectNode;
	__property OnAfterUnSelectNode;
	__property OnGetNodeSides;
	__property OnBeforeOpenInplaceEditor;
	__property OnCloseInplaceEditor;
	__property OnAfterOpenInplaceEditor;
	__property OnGetInplaceEditor;
	__property OnCustomizeInplaceEditor;
	__property OnGetInplaceEditorRect;
	__property OnNodeChanged;
	__property OnHScroll;
	__property OnVScroll;
	__property OnBeforeDrawColumnEmptySpace;
	__property OnAfterDrawColumnEmptySpace;
	__property OnBeforeDrawGroupEmptySpace;
	__property OnAfterDrawGroupEmptySpace;
	__property OnIsNodeEnabled;
	__property OnGetNodeColor;
	__property OnGetNodeSelectedColor;
	__property OnGetNodeDisabledColor;
	__property OnGetNodeTextColor;
	__property OnGetNodeSelectedTextColor;
	__property OnGetNodeDisabledTextColor;
	__property OnGetNodeHeight;
	__property OnBeforeReorderNode;
	__property OnAfterReorderNode;
	__property OnBeforeDropNode;
	__property OnAfterDropNode;
	__property OnBeforeCutToClipboard;
	__property OnBeforeCopyToClipboard;
	__property OnBeforePasteFromClipboard;
	__property OnAfterCutToClipboard;
	__property OnAfterCopyToClipboard;
	__property OnAfterPasteFromClipboard;
	__property OnBeforeDrawSortIndicator;
	__property OnAfterDrawSortIndicator;
	__property OnColumnAnchorClick;
	__property OnBeforeAddJSONNode;
	__property OnAfterAddJSONNode;
	__property DefaultViewJSONOptions;
	__property OnGetHTMLTemplateValue;
	__property OnGetHTMLTemplate;
public:
	/* TTMSFNCCustomTreeView.Create */ inline __fastcall virtual TTMSFNCTreeViewPublished(System::Classes::TComponent* AOwner) : TTMSFNCCustomTreeView(AOwner) { }
	/* TTMSFNCCustomTreeView.Destroy */ inline __fastcall virtual ~TTMSFNCTreeViewPublished() { }
	
};


//-- var, const, procedure ---------------------------------------------------
#define TTMSFNCTreeViewDocURL u"https://download.tmssoftware.com/doc/tmsfncuipack/componen"\
	u"ts/ttmsfnctreeview/"
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x2);
static constexpr System::Int8 REL_VER = System::Int8(0x0);
static constexpr System::Int8 BLD_VER = System::Int8(0x4);
#define CLP_FMT u"#TREEVIEW#"
#define ENDOFLINE u"\r\n"
static constexpr System::Int8 DRAGMARGIN = System::Int8(0xa);
static constexpr System::Word CACHEWIDTH = System::Word(0x3e8);
static constexpr System::Word CACHEHEIGHT = System::Word(0x3e8);
static constexpr System::Int8 SCROLLINGDELAY = System::Int8(0x28);
static constexpr unsigned TTMSFNCTreeViewColorExtended = unsigned(0xfff4f4f4);
static constexpr unsigned TTMSFNCTreeViewColorSelection = unsigned(0xff1badf8);
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCTreeViewFilterAll;
#define Fmx_Tmsfnccustomtreeview_sTMSFNCTreeViewFilterAll System::LoadResourceString(&Fmx::Tmsfnccustomtreeview::_sTMSFNCTreeViewFilterAll)
}	/* namespace Tmsfnccustomtreeview */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCCUSTOMTREEVIEW)
using namespace Fmx::Tmsfnccustomtreeview;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfnccustomtreeviewHPP
