// CodeGear C++Builder
// Copyright (c) 1995, 2023 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'vcl.wwdbnavedt.pas' rev: 36.00 (Windows)

#ifndef Vcl_WwdbnavedtHPP
#define Vcl_WwdbnavedtHPP

#pragma delphiheader begin
#pragma option push
#if defined(__BORLANDC__) && !defined(__clang__)
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#endif
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <DesignIntf.hpp>
#include <DesignEditors.hpp>
#include <vcl.wwdbnavigator.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.Dialogs.hpp>
#include <System.SysUtils.hpp>
#include <vcl.Wwcommon.hpp>
#include <vcl.wwcollection.hpp>
#include <vcl.wwcollectioneditor.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.Graphics.hpp>
#include <vcl.wwprpedt.hpp>

//-- user supplied -----------------------------------------------------------

namespace Vcl
{
namespace Wwdbnavedt
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TwwDBNavigatorEditorEvents;
class DELPHICLASS TwwDBNavigatorButtonsEditor;
class DELPHICLASS TwwNavButtonEditor;
class DELPHICLASS TwwDBNavigatorEditor;
//-- type declarations -------------------------------------------------------
#pragma pack(push,4)
class PASCALIMPLEMENTATION TwwDBNavigatorEditorEvents : public System::TObject
{
	typedef System::TObject inherited;
	
public:
	__classmethod void __fastcall AddInfoPowerDialogsClick(System::TObject* Sender);
public:
	/* TObject.Create */ inline __fastcall TwwDBNavigatorEditorEvents() : System::TObject() { }
	/* TObject.Destroy */ inline __fastcall virtual ~TwwDBNavigatorEditorEvents() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TwwDBNavigatorButtonsEditor : public Designeditors::TPropertyEditor
{
	typedef Designeditors::TPropertyEditor inherited;
	
public:
	virtual System::UnicodeString __fastcall GetValue();
	virtual Designintf::TPropertyAttributes __fastcall GetAttributes();
	virtual void __fastcall Edit();
	void __fastcall CollectionCustomize(Vcl::Wwcollectioneditor::TwwCollectionEditorForm* EditorForm);
public:
	/* TPropertyEditor.Create */ inline __fastcall virtual TwwDBNavigatorButtonsEditor(const Designintf::_di_IDesigner ADesigner, int APropCount) : Designeditors::TPropertyEditor(ADesigner, APropCount) { }
	/* TPropertyEditor.Destroy */ inline __fastcall virtual ~TwwDBNavigatorButtonsEditor() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TwwNavButtonEditor : public Designeditors::TComponentEditor
{
	typedef Designeditors::TComponentEditor inherited;
	
public:
	__fastcall virtual TwwNavButtonEditor(System::Classes::TComponent* AComponent, Designintf::_di_IDesigner ADesigner);
	__fastcall virtual ~TwwNavButtonEditor();
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TwwDBNavigatorEditor : public Vcl::Wwprpedt::TwwComponentEditor
{
	typedef Vcl::Wwprpedt::TwwComponentEditor inherited;
	
public:
	virtual void __fastcall Edit();
	virtual void __fastcall ExecuteVerb(int Index);
	virtual System::UnicodeString __fastcall GetVerb(int Index);
	virtual int __fastcall GetVerbCount();
	void __fastcall CollectionCustomize(Vcl::Wwcollectioneditor::TwwCollectionEditorForm* EditorForm);
public:
	/* TwwComponentEditor.Create */ inline __fastcall virtual TwwDBNavigatorEditor(System::Classes::TComponent* AComponent, Designintf::_di_IDesigner ADesigner) : Vcl::Wwprpedt::TwwComponentEditor(AComponent, ADesigner) { }
	
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TwwDBNavigatorEditor() { }
	
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
static const System::Int8 WW_ADD_BUTTON = System::Int8(0x0);
static const System::Int8 WW_ADD_INFOPOWERDIALOGS = System::Int8(0x1);
static const System::Int8 WW_SELECT_ALL = System::Int8(0x2);
static const System::Int8 WW_VERB_COUNT = System::Int8(0x3);
}	/* namespace Wwdbnavedt */
}	/* namespace Vcl */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_VCL_WWDBNAVEDT)
using namespace Vcl::Wwdbnavedt;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_VCL)
using namespace Vcl;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Vcl_WwdbnavedtHPP
