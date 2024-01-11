// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCHTMLEditor.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfnchtmleditorHPP
#define Fmx_TmsfnchtmleditorHPP

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
#include <FMX.TMSFNCHTMLText.hpp>
#include <FMX.TMSFNCBitmapContainer.hpp>
#include <FMX.Forms.hpp>
#include <FMX.TMSFNCGraphics.hpp>
#include <FMX.TMSFNCGraphicsTypes.hpp>
#include <FMX.TMSFNCEditorButton.hpp>
#include <FMX.TMSFNCEditorPanel.hpp>
#include <FMX.Types.hpp>
#include <FMX.Memo.hpp>
#include <FMX.ListBox.hpp>
#include <FMX.ComboEdit.hpp>
#include <System.UITypes.hpp>
#include <System.Types.hpp>
#include <FMX.Edit.hpp>
#include <FMX.Controls.Presentation.hpp>
#include <System.Generics.Collections.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfnchtmleditor
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCHTMLEditorComboBox;
class DELPHICLASS TTMSFNCHTMLEditor;
class DELPHICLASS TTMSFNCHTMLEditorForm;
//-- type declarations -------------------------------------------------------
typedef Fmx::Types::TFmxObject TTMSFNCHTMLEditorParent;

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCHTMLEditorComboBox : public Fmx::Comboedit::TComboEdit
{
	typedef Fmx::Comboedit::TComboEdit inherited;
	
public:
	/* TCustomComboEdit.Create */ inline __fastcall virtual TTMSFNCHTMLEditorComboBox(System::Classes::TComponent* AOwner)/* overload */ : Fmx::Comboedit::TComboEdit(AOwner) { }
	
public:
	/* TCustomEdit.Destroy */ inline __fastcall virtual ~TTMSFNCHTMLEditorComboBox() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCHTMLEditor : public Fmx::Tmsfnccustomcomponent::TTMSFNCCustomComponent
{
	typedef Fmx::Tmsfnccustomcomponent::TTMSFNCCustomComponent inherited;
	
private:
	Fmx::Tmsfnceditortoolbar::TTMSFNCEditorFormatToolBar* FFormatToolBar;
	Fmx::Tmsfnceditortoolbar::TTMSFNCEditorEditToolBar* FEditToolBar;
	Fmx::Tmsfnceditorpanel::TTMSFNCEditorPanel* FPanel;
	Fmx::Tmsfnceditorpanel::TTMSFNCEditorPanel* FContentPanel;
	Fmx::Tmsfnceditorpanel::TTMSFNCEditorPanel* FTopPanel;
	Fmx::Tmsfnceditorbutton::TTMSFNCEditorButton* FButtonOk;
	Fmx::Tmsfnceditorbutton::TTMSFNCEditorButton* FButtonCancel;
	Fmx::Memo::TMemo* FMemo;
	Fmx::Tmsfnchtmltext::TTMSFNCHTMLText* FHTMLText;
	System::UnicodeString FText;
	System::UnicodeString FOriginalText;
	Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* FBitmapContainer;
	Fmx::Tmsfnccustomcontrol::TTMSFNCCustomDesignerForm* frm;
	void __fastcall SetText(const System::UnicodeString Value);
	void __fastcall SetBitmapContainer(Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* const Value);
	
protected:
	virtual NativeUInt __fastcall GetInstance();
	virtual void __fastcall RegisterRuntimeClasses();
	virtual void __fastcall Notification(System::Classes::TComponent* AComponent, System::Classes::TOperation AOperation);
	virtual void __fastcall DoOpenFile(System::TObject* Sender);
	virtual void __fastcall DoSaveFile(System::TObject* Sender);
	virtual void __fastcall DoCut(System::TObject* Sender);
	virtual void __fastcall DoPaste(System::TObject* Sender);
	virtual void __fastcall DoCopy(System::TObject* Sender);
	virtual void __fastcall DoApplyFontName(System::TObject* Sender, System::UnicodeString AFontName);
	virtual void __fastcall DoApplyFontSize(System::TObject* Sender, int AFontSize);
	virtual void __fastcall DoApplyTextColor(System::TObject* Sender, System::Uitypes::TAlphaColor AColor);
	virtual void __fastcall DoApplyBold(System::TObject* Sender);
	virtual void __fastcall DoApplyItalic(System::TObject* Sender);
	virtual void __fastcall DoInsertHyperlink(System::TObject* Sender);
	virtual void __fastcall DoInsertBitmap(System::TObject* Sender);
	virtual void __fastcall DoApplyNumbering(System::TObject* Sender);
	virtual void __fastcall DoApplyIndent(System::TObject* Sender);
	virtual void __fastcall DoApplyUnderline(System::TObject* Sender);
	virtual void __fastcall DoAlignLeft(System::TObject* Sender);
	virtual void __fastcall DoAlignCenter(System::TObject* Sender);
	virtual void __fastcall DoAlignRight(System::TObject* Sender);
	virtual bool __fastcall HasTags(System::UnicodeString starttag, System::UnicodeString endtag);
	virtual bool __fastcall ScanForward(System::UnicodeString starttag, System::UnicodeString endtag);
	virtual bool __fastcall ScanBackward(System::UnicodeString starttag, System::UnicodeString endtag);
	virtual void __fastcall InsertTags(System::UnicodeString starttag, System::UnicodeString endtag);
	virtual void __fastcall RemoveTags(System::UnicodeString starttag, System::UnicodeString endtag);
	virtual void __fastcall ChangeTagProp(System::UnicodeString starttag, System::UnicodeString endtag, System::UnicodeString propname, System::UnicodeString propval);
	virtual void __fastcall DoMemoChanged(System::TObject* Sender);
	virtual void __fastcall DoMemoKeyUp(System::TObject* Sender, System::Word &Key, System::WideChar &KeyChar, System::Classes::TShiftState Shift);
	virtual void __fastcall DoMemoMouseUp(System::TObject* Sender, System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, float X, float Y);
	void __fastcall DoFormKeyDown(System::TObject* Sender, System::Word &Key, System::WideChar &KeyChar, System::Classes::TShiftState Shift);
	virtual void __fastcall BuildEditor(Fmx::Types::TFmxObject* AParent);
	virtual void __fastcall UpdateHTMLText();
	virtual void __fastcall UpdateButtons();
	
public:
	System::Uitypes::TModalResult __fastcall Execute();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property System::UnicodeString Text = {read=FText, write=SetText};
	__property Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* BitmapContainer = {read=FBitmapContainer, write=SetBitmapContainer};
public:
	/* TTMSFNCCustomComponent.Create */ inline __fastcall virtual TTMSFNCHTMLEditor(System::Classes::TComponent* AOwner) : Fmx::Tmsfnccustomcomponent::TTMSFNCCustomComponent(AOwner) { }
	
public:
	/* TControl.Destroy */ inline __fastcall virtual ~TTMSFNCHTMLEditor() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCHTMLEditorForm : public Fmx::Tmsfnccustomcontrol::TTMSFNCCustomDesignerForm
{
	typedef Fmx::Tmsfnccustomcontrol::TTMSFNCCustomDesignerForm inherited;
	
public:
	/* TCustomForm.Create */ inline __fastcall virtual TTMSFNCHTMLEditorForm(System::Classes::TComponent* AOwner) : Fmx::Tmsfnccustomcontrol::TTMSFNCCustomDesignerForm(AOwner) { }
	/* TCustomForm.CreateNew */ inline __fastcall virtual TTMSFNCHTMLEditorForm(System::Classes::TComponent* AOwner, NativeInt Dummy) : Fmx::Tmsfnccustomcontrol::TTMSFNCCustomDesignerForm(AOwner, Dummy) { }
	/* TCustomForm.Destroy */ inline __fastcall virtual ~TTMSFNCHTMLEditorForm() { }
	
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x1);
static constexpr System::Int8 REL_VER = System::Int8(0x0);
static constexpr System::Int8 BLD_VER = System::Int8(0x0);
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCHTMLEditorOK;
#define Fmx_Tmsfnchtmleditor_sTMSFNCHTMLEditorOK System::LoadResourceString(&Fmx::Tmsfnchtmleditor::_sTMSFNCHTMLEditorOK)
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCHTMLEditorCancel;
#define Fmx_Tmsfnchtmleditor_sTMSFNCHTMLEditorCancel System::LoadResourceString(&Fmx::Tmsfnchtmleditor::_sTMSFNCHTMLEditorCancel)
}	/* namespace Tmsfnchtmleditor */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCHTMLEDITOR)
using namespace Fmx::Tmsfnchtmleditor;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfnchtmleditorHPP
