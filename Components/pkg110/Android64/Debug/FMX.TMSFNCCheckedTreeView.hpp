// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCCheckedTreeView.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfnccheckedtreeviewHPP
#define Fmx_TmsfnccheckedtreeviewHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <FMX.TMSFNCTreeView.hpp>
#include <FMX.TMSFNCTreeViewData.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.TMSFNCCustomTreeView.hpp>
#include <FMX.TMSFNCTreeViewBase.hpp>
#include <FMX.TMSFNCCustomControl.hpp>
#include <FMX.Controls.hpp>
#include <FMX.Types.hpp>
#include <System.Generics.Collections.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>
#include <System.Types.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfnccheckedtreeview
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCCheckedTreeViewNodeValue;
class DELPHICLASS TTMSFNCCheckedTreeViewNodeValues;
class DELPHICLASS TTMSFNCCheckedTreeViewNode;
class DELPHICLASS TTMSFNCCheckedTreeViewNodes;
class DELPHICLASS TTMSFNCCheckedTreeView;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TTMSFNCCheckedTreeViewNodeValue : public Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNodeValue
{
	typedef Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNodeValue inherited;
	
public:
	__fastcall virtual TTMSFNCCheckedTreeViewNodeValue(System::Classes::TCollection* Collection);
public:
	/* TTMSFNCTreeViewNodeValue.Destroy */ inline __fastcall virtual ~TTMSFNCCheckedTreeViewNodeValue() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCheckedTreeViewNodeValues : public Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNodeValues
{
	typedef Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNodeValues inherited;
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall GetItemClass();
public:
	/* TTMSFNCTreeViewNodeValues.Create */ inline __fastcall TTMSFNCCheckedTreeViewNodeValues(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewData* ATreeView, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNode* ANode) : Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNodeValues(ATreeView, ANode) { }
	
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCCheckedTreeViewNodeValues() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCheckedTreeViewNode : public Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNode
{
	typedef Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNode inherited;
	
protected:
	virtual Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNodeValues* __fastcall CreateNodeValues();
	virtual Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNodes* __fastcall CreateNodes();
public:
	/* TTMSFNCTreeViewNode.Create */ inline __fastcall virtual TTMSFNCCheckedTreeViewNode(System::Classes::TCollection* Collection) : Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNode(Collection) { }
	/* TTMSFNCTreeViewNode.Destroy */ inline __fastcall virtual ~TTMSFNCCheckedTreeViewNode() { }
	
};


typedef System::DynamicArray<Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNode*> TTMSFNCTreeViewCheckedNodes;

class PASCALIMPLEMENTATION TTMSFNCCheckedTreeViewNodes : public Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNodes
{
	typedef Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNodes inherited;
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall GetItemClass();
	virtual TTMSFNCTreeViewCheckedNodes __fastcall CheckedNodesInternal(int AColumn = 0x0, bool ARecurse = true);
	
public:
	virtual TTMSFNCTreeViewCheckedNodes __fastcall CheckedNodes(int AColumn = 0x0, bool ARecurse = true);
public:
	/* TTMSFNCTreeViewNodes.Create */ inline __fastcall TTMSFNCCheckedTreeViewNodes(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewData* ATreeView, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNode* ANode) : Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNodes(ATreeView, ANode) { }
	/* TTMSFNCTreeViewNodes.Destroy */ inline __fastcall virtual ~TTMSFNCCheckedTreeViewNodes() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCheckedTreeView : public Fmx::Tmsfnctreeview::TTMSFNCTreeView
{
	typedef Fmx::Tmsfnctreeview::TTMSFNCTreeView inherited;
	
private:
	bool __fastcall GetChecked(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNode* ANode);
	void __fastcall SetChecked(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNode* ANode, const bool Value);
	
protected:
	virtual Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNodes* __fastcall CreateNodes();
	virtual System::UnicodeString __fastcall GetVersion();
	
public:
	virtual void __fastcall InitSample();
	__property bool Checked[Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNode* ANode] = {read=GetChecked, write=SetChecked};
	virtual TTMSFNCTreeViewCheckedNodes __fastcall CheckedNodes(int AColumn = 0x0, bool ARecurse = true);
public:
	/* TTMSFNCCustomTreeView.Create */ inline __fastcall virtual TTMSFNCCheckedTreeView(System::Classes::TComponent* AOwner) : Fmx::Tmsfnctreeview::TTMSFNCTreeView(AOwner) { }
	/* TTMSFNCCustomTreeView.Destroy */ inline __fastcall virtual ~TTMSFNCCheckedTreeView() { }
	
};


//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x0);
static constexpr System::Int8 BLD_VER = System::Int8(0x1);
}	/* namespace Tmsfnccheckedtreeview */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCCHECKEDTREEVIEW)
using namespace Fmx::Tmsfnccheckedtreeview;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfnccheckedtreeviewHPP
