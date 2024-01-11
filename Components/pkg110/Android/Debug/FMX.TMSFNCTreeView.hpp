// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCTreeView.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfnctreeviewHPP
#define Fmx_TmsfnctreeviewHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <FMX.TMSFNCCustomTreeView.hpp>
#include <FMX.TMSFNCGraphics.hpp>
#include <FMX.TMSFNCTreeViewData.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.TMSFNCGraphicsTypes.hpp>
#include <FMX.TMSFNCControlPicker.hpp>
#include <System.UITypes.hpp>
#include <System.Types.hpp>
#include <FMX.Layouts.hpp>
#include <FMX.TMSFNCTreeViewBase.hpp>
#include <FMX.TMSFNCCustomControl.hpp>
#include <FMX.Controls.hpp>
#include <FMX.Types.hpp>
#include <System.Generics.Collections.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfnctreeview
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCTreeView;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TTMSFNCTreeView : public Fmx::Tmsfnccustomtreeview::TTMSFNCTreeViewPublished
{
	typedef Fmx::Tmsfnccustomtreeview::TTMSFNCTreeViewPublished inherited;
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	virtual void __fastcall DoAbsoluteChanged();
	virtual void __fastcall DoAfterSelectNode(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode);
	virtual void __fastcall DrawBorders(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics);
	virtual void __fastcall DrawEmptySpaces(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics);
	virtual void __fastcall DrawNodeColumns(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics);
	virtual void __fastcall DrawNode(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, bool ACaching = false, float AOffsetX = 0.000000E+00f, float AOffsetY = 0.000000E+00f);
	virtual void __fastcall DrawGroup(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AGroup, int AStartColumn, int AEndColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItemKind AKind);
	virtual void __fastcall DrawColumn(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewCacheItemKind AKind);
	virtual void __fastcall DrawSortIndicator(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, System::Uitypes::TAlphaColor AColor, int AColumn, int ASortIndex, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNodesSortKind ASortKind);
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
public:
	/* TTMSFNCCustomTreeView.Create */ inline __fastcall virtual TTMSFNCTreeView(System::Classes::TComponent* AOwner) : Fmx::Tmsfnccustomtreeview::TTMSFNCTreeViewPublished(AOwner) { }
	/* TTMSFNCCustomTreeView.Destroy */ inline __fastcall virtual ~TTMSFNCTreeView() { }
	
private:
	void *__ITMSFNCControlPickerFull;	// Fmx::Tmsfnccontrolpicker::ITMSFNCControlPickerFull 
	
public:
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
	
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Tmsfnctreeview */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCTREEVIEW)
using namespace Fmx::Tmsfnctreeview;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfnctreeviewHPP
