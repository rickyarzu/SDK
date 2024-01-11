// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCTreeViewEditor.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfnctreevieweditorHPP
#define Fmx_TmsfnctreevieweditorHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <FMX.TMSFNCCustomComponent.hpp>
#include <FMX.TMSFNCCustomControl.hpp>
#include <FMX.Controls.hpp>
#include <FMX.TMSFNCEditorToolBar.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.StdCtrls.hpp>
#include <FMX.ExtCtrls.hpp>
#include <FMX.TMSFNCTreeView.hpp>
#include <FMX.TMSFNCCustomTreeView.hpp>
#include <FMX.TMSFNCBitmapContainer.hpp>
#include <FMX.Forms.hpp>
#include <FMX.TMSFNCGraphics.hpp>
#include <FMX.TMSFNCTreeViewData.hpp>
#include <FMX.TMSFNCGraphicsTypes.hpp>
#include <FMX.TMSFNCEditorPanel.hpp>
#include <FMX.TMSFNCEditorButton.hpp>
#include <FMX.Types.hpp>
#include <FMX.Memo.hpp>
#include <FMX.ListBox.hpp>
#include <FMX.ComboEdit.hpp>
#include <FMX.Graphics.hpp>
#include <System.UITypes.hpp>
#include <System.Types.hpp>
#include <FMX.Edit.hpp>
#include <FMX.Controls.Presentation.hpp>
#include <System.Generics.Collections.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>
#include <FMX.TMSFNCTreeViewBase.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfnctreevieweditor
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCTreeViewEditorComboBox;
class DELPHICLASS TTMSFNCTreeViewPreview;
class DELPHICLASS TTMSFNCTreeViewEditor;
class DELPHICLASS TTMSFNCTreeViewEditorForm;
//-- type declarations -------------------------------------------------------
typedef Fmx::Types::TFmxObject TTMSFNCTreeViewEditorParent;

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCTreeViewEditorComboBox : public Fmx::Comboedit::TComboEdit
{
	typedef Fmx::Comboedit::TComboEdit inherited;
	
public:
	/* TCustomComboEdit.Create */ inline __fastcall virtual TTMSFNCTreeViewEditorComboBox(System::Classes::TComponent* AOwner)/* overload */ : Fmx::Comboedit::TComboEdit(AOwner) { }
	
public:
	/* TCustomEdit.Destroy */ inline __fastcall virtual ~TTMSFNCTreeViewEditorComboBox() { }
	
};

#pragma pack(pop)

class PASCALIMPLEMENTATION TTMSFNCTreeViewPreview : public Fmx::Tmsfnctreeview::TTMSFNCTreeView
{
	typedef Fmx::Tmsfnctreeview::TTMSFNCTreeView inherited;
	
public:
	virtual bool __fastcall IsVirtualNodeSelected(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode);
public:
	/* TTMSFNCCustomTreeView.Create */ inline __fastcall virtual TTMSFNCTreeViewPreview(System::Classes::TComponent* AOwner) : Fmx::Tmsfnctreeview::TTMSFNCTreeView(AOwner) { }
	/* TTMSFNCCustomTreeView.Destroy */ inline __fastcall virtual ~TTMSFNCTreeViewPreview() { }
	
};


#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCTreeViewEditor : public Fmx::Tmsfnccustomcomponent::TTMSFNCCustomComponent
{
	typedef Fmx::Tmsfnccustomcomponent::TTMSFNCCustomComponent inherited;
	
private:
	Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNode* FActiveNode;
	int FActiveColumn;
	Fmx::Tmsfnceditorpanel::TTMSFNCEditorPanel* FPanel;
	Fmx::Tmsfnceditorpanel::TTMSFNCEditorPanel* FRightPanel;
	Fmx::Tmsfnceditorpanel::TTMSFNCEditorPanel* FTopPanel;
	Fmx::Tmsfnceditortoolbar::TTMSFNCEditorEditToolBar* FEditToolBar;
	Fmx::Tmsfnceditorbutton::TTMSFNCEditorButton* FButtonOk;
	Fmx::Tmsfnceditorbutton::TTMSFNCEditorButton* FButtonCancel;
	Fmx::Tmsfnceditorbutton::TTMSFNCEditorButton* FButtonAddNode;
	Fmx::Tmsfnceditorbutton::TTMSFNCEditorButton* FButtonAddChild;
	Fmx::Tmsfnceditorbutton::TTMSFNCEditorButton* FButtonAddColumn;
	Fmx::Tmsfnceditorbutton::TTMSFNCEditorButton* FButtonDeleteNode;
	Fmx::Tmsfnceditorbutton::TTMSFNCEditorButton* FButtonDeleteColumn;
	Fmx::Tmsfnceditorbutton::TTMSFNCEditorButton* FButtonEditNodeIcon;
	Fmx::Tmsfnceditorbutton::TTMSFNCEditorButton* FButtonMoveNodeUp;
	Fmx::Tmsfnceditorbutton::TTMSFNCEditorButton* FButtonMoveNodeDown;
	TTMSFNCTreeViewPreview* FTreeViewPreview;
	Fmx::Tmsfnccustomtreeview::TTMSFNCCustomTreeView* FTreeView;
	Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* FBitmapContainer;
	Fmx::Tmsfnccustomcontrol::TTMSFNCCustomDesignerForm* frm;
	void __fastcall SetBitmapContainer(Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* const Value);
	void __fastcall SetTreeView(Fmx::Tmsfnccustomtreeview::TTMSFNCCustomTreeView* const Value);
	
protected:
	virtual NativeUInt __fastcall GetInstance();
	virtual void __fastcall Notification(System::Classes::TComponent* AComponent, System::Classes::TOperation AOperation);
	virtual void __fastcall UpdateControls(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNode* ANode);
	virtual void __fastcall DoOpenFile(System::TObject* Sender);
	virtual void __fastcall DoClear(System::TObject* Sender);
	virtual void __fastcall DoSaveFile(System::TObject* Sender);
	virtual void __fastcall DoCut(System::TObject* Sender);
	virtual void __fastcall DoPaste(System::TObject* Sender);
	virtual void __fastcall DoCopy(System::TObject* Sender);
	virtual void __fastcall EditNode(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNode* ANode, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNode* AParentNode);
	virtual void __fastcall EditColumn(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewColumn* AColumn);
	virtual void __fastcall DoAddNode(System::TObject* Sender);
	virtual void __fastcall DoMoveNodeUp(System::TObject* Sender);
	virtual void __fastcall DoMoveNodeDown(System::TObject* Sender);
	virtual void __fastcall DoAddChild(System::TObject* Sender);
	virtual void __fastcall DoDeleteNode(System::TObject* Sender);
	virtual void __fastcall DoDeleteColumn(System::TObject* Sender);
	virtual void __fastcall DoEditNodeIcon(System::TObject* Sender);
	virtual void __fastcall DoAddColumn(System::TObject* Sender);
	virtual void __fastcall DoTreeViewKeyUp(System::TObject* Sender, System::Word &Key, System::WideChar &KeyChar, System::Classes::TShiftState Shift);
	virtual void __fastcall DoTreeViewMouseUp(System::TObject* Sender, System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, float X, float Y);
	void __fastcall DoFormKeyDown(System::TObject* Sender, System::Word &Key, System::WideChar &KeyChar, System::Classes::TShiftState Shift);
	virtual void __fastcall DoTreeViewNodeClick(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode);
	virtual void __fastcall DoTreeViewNodeDblClick(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode);
	virtual void __fastcall DoTreeViewAfterDraw(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	virtual void __fastcall DoTreeViewSelectNode(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode);
	virtual void __fastcall BuildEditor(Fmx::Types::TFmxObject* AParent);
	
public:
	__fastcall virtual TTMSFNCTreeViewEditor(System::Classes::TComponent* AOwner);
	System::Uitypes::TModalResult __fastcall Execute();
	
__published:
	__property Fmx::Tmsfnccustomtreeview::TTMSFNCCustomTreeView* TreeView = {read=FTreeView, write=SetTreeView};
	__property Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* BitmapContainer = {read=FBitmapContainer, write=SetBitmapContainer};
public:
	/* TControl.Destroy */ inline __fastcall virtual ~TTMSFNCTreeViewEditor() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCTreeViewEditorForm : public Fmx::Tmsfnccustomcontrol::TTMSFNCCustomDesignerForm
{
	typedef Fmx::Tmsfnccustomcontrol::TTMSFNCCustomDesignerForm inherited;
	
public:
	/* TCustomForm.Create */ inline __fastcall virtual TTMSFNCTreeViewEditorForm(System::Classes::TComponent* AOwner) : Fmx::Tmsfnccustomcontrol::TTMSFNCCustomDesignerForm(AOwner) { }
	/* TCustomForm.CreateNew */ inline __fastcall virtual TTMSFNCTreeViewEditorForm(System::Classes::TComponent* AOwner, NativeInt Dummy) : Fmx::Tmsfnccustomcontrol::TTMSFNCCustomDesignerForm(AOwner, Dummy) { }
	/* TCustomForm.Destroy */ inline __fastcall virtual ~TTMSFNCTreeViewEditorForm() { }
	
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x1);
static constexpr System::Int8 REL_VER = System::Int8(0x0);
static constexpr System::Int8 BLD_VER = System::Int8(0x0);
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCTreeViewEditorOK;
#define Fmx_Tmsfnctreevieweditor_sTMSFNCTreeViewEditorOK System::LoadResourceString(&Fmx::Tmsfnctreevieweditor::_sTMSFNCTreeViewEditorOK)
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCTreeViewEditorCancel;
#define Fmx_Tmsfnctreevieweditor_sTMSFNCTreeViewEditorCancel System::LoadResourceString(&Fmx::Tmsfnctreevieweditor::_sTMSFNCTreeViewEditorCancel)
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCTreeViewEditorColumns;
#define Fmx_Tmsfnctreevieweditor_sTMSFNCTreeViewEditorColumns System::LoadResourceString(&Fmx::Tmsfnctreevieweditor::_sTMSFNCTreeViewEditorColumns)
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCTreeViewEditorNodes;
#define Fmx_Tmsfnctreevieweditor_sTMSFNCTreeViewEditorNodes System::LoadResourceString(&Fmx::Tmsfnctreevieweditor::_sTMSFNCTreeViewEditorNodes)
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCTreeViewEditorAddNode;
#define Fmx_Tmsfnctreevieweditor_sTMSFNCTreeViewEditorAddNode System::LoadResourceString(&Fmx::Tmsfnctreevieweditor::_sTMSFNCTreeViewEditorAddNode)
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCTreeViewEditorAddColumn;
#define Fmx_Tmsfnctreevieweditor_sTMSFNCTreeViewEditorAddColumn System::LoadResourceString(&Fmx::Tmsfnctreevieweditor::_sTMSFNCTreeViewEditorAddColumn)
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCTreeViewEditorDeleteColumn;
#define Fmx_Tmsfnctreevieweditor_sTMSFNCTreeViewEditorDeleteColumn System::LoadResourceString(&Fmx::Tmsfnctreevieweditor::_sTMSFNCTreeViewEditorDeleteColumn)
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCTreeViewEditorAddChild;
#define Fmx_Tmsfnctreevieweditor_sTMSFNCTreeViewEditorAddChild System::LoadResourceString(&Fmx::Tmsfnctreevieweditor::_sTMSFNCTreeViewEditorAddChild)
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCTreeViewEditorDeleteNode;
#define Fmx_Tmsfnctreevieweditor_sTMSFNCTreeViewEditorDeleteNode System::LoadResourceString(&Fmx::Tmsfnctreevieweditor::_sTMSFNCTreeViewEditorDeleteNode)
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCTreeViewEditorMoveNodeUp;
#define Fmx_Tmsfnctreevieweditor_sTMSFNCTreeViewEditorMoveNodeUp System::LoadResourceString(&Fmx::Tmsfnctreevieweditor::_sTMSFNCTreeViewEditorMoveNodeUp)
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCTreeViewEditorMoveNodeDown;
#define Fmx_Tmsfnctreevieweditor_sTMSFNCTreeViewEditorMoveNodeDown System::LoadResourceString(&Fmx::Tmsfnctreevieweditor::_sTMSFNCTreeViewEditorMoveNodeDown)
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCTreeViewEditorEditNodeIcon;
#define Fmx_Tmsfnctreevieweditor_sTMSFNCTreeViewEditorEditNodeIcon System::LoadResourceString(&Fmx::Tmsfnctreevieweditor::_sTMSFNCTreeViewEditorEditNodeIcon)
}	/* namespace Tmsfnctreevieweditor */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCTREEVIEWEDITOR)
using namespace Fmx::Tmsfnctreevieweditor;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfnctreevieweditorHPP
