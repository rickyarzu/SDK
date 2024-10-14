﻿// CodeGear C++Builder
// Copyright (c) 1995, 2024 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'vcl.wwprpedt.pas' rev: 36.00 (Windows)

#ifndef vcl_wwprpedtHPP
#define vcl_wwprpedtHPP

#pragma delphiheader begin
#pragma option push
#if defined(__BORLANDC__) && !defined(__clang__)
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#endif
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.Dialogs.hpp>
#include <vcl.wwdblook.hpp>
#include <System.Classes.hpp>
#include <Data.DB.hpp>
#include <vcl.wwdbgrid.hpp>
#include <vcl.wwdbigrd.hpp>
#include <System.Generics.Collections.hpp>
#include <System.Generics.Defaults.hpp>
#include <vcl.Wwcommon.hpp>
#include <System.SysUtils.hpp>
#include <vcl.wwselfld.hpp>
#include <vcl.Wwstr.hpp>
#include <DesignMenus.hpp>
#include <Vcl.Menus.hpp>
#include <vcl.wwidlg.hpp>
#include <vcl.wwdatainspector.hpp>
#include <vcl.wwricheditbar.hpp>
#include <vcl.wwlocate.hpp>
#include <vcl.wwfltfld.hpp>
#include <vcl.wwfltdlg.hpp>
#include <vcl.wwrcdvw.hpp>
#include <vcl.wwrcdpnl.hpp>
#include <Vcl.ComCtrls.hpp>
#include <vcl.wwrich.hpp>
#include <vcl.wwriched.hpp>
#include <Vcl.StdCtrls.hpp>
#include <vcl.ipabout.hpp>
#include <System.Win.Registry.hpp>
#include <vcl.wwrgxed2.hpp>
#include <DesignIntf.hpp>
#include <DesignEditors.hpp>
#include <Vcl.Buttons.hpp>
#include <vcl.wwintl.hpp>
#include <System.Types.hpp>

//-- user supplied -----------------------------------------------------------

namespace Vcl
{
namespace Wwprpedt
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TwwComponentEditor;
class DELPHICLASS TwwGridComponentEditor;
class DELPHICLASS TwwIndexDefsProperty;
class DELPHICLASS TwwControllerListProperty;
class DELPHICLASS TwwIndexFieldProperty;
class DELPHICLASS TwwSearchFieldProperty;
class DELPHICLASS TwwDBLookupDisplayProperty;
class DELPHICLASS TwwTableDisplayProperty;
class DELPHICLASS TwwDBLookupDisplayComponentEditor;
class DELPHICLASS TSelectedFieldsProperty;
class DELPHICLASS TwwDBGridComponentEditor;
class DELPHICLASS TwwRecordViewPanelComponentEditor;
class DELPHICLASS TwwObjPictureProperty;
class DELPHICLASS TwwObjRegexProperty;
class DELPHICLASS TwwFilterFieldsProperty;
class DELPHICLASS TwwComboItemsProperty;
class DELPHICLASS TwwMultiLineStringProperty;
class DELPHICLASS TwwPictureProperty;
class DELPHICLASS TwwPicturePropertyGen;
class DELPHICLASS TwwRegexProperty;
class DELPHICLASS TwwRecordViewComponentEditor;
class DELPHICLASS TwwRichEditItemsProperty;
class DELPHICLASS TwwRichEditComponentEditor;
class DELPHICLASS TwwRichEditBarComponentEditor;
class DELPHICLASS TwwGridIndicatorProperty;
class DELPHICLASS TComponentData;
//-- type declarations -------------------------------------------------------
#pragma pack(push,4)
class PASCALIMPLEMENTATION TwwComponentEditor : public Designeditors::TDefaultEditor
{
	typedef Designeditors::TDefaultEditor inherited;
	
private:
	void __fastcall ShowAboutBox();
	
protected:
	virtual void __fastcall DoCreateControlItem(System::TObject* Sender);
	
public:
	virtual int __fastcall GetVerbCount();
	virtual System::UnicodeString __fastcall GetVerb(int Index);
	virtual void __fastcall ExecuteVerb(int Index);
	__fastcall virtual TwwComponentEditor(System::Classes::TComponent* AComponent, Designintf::_di_IDesigner ADesigner);
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TwwComponentEditor() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TwwGridComponentEditor : public TwwComponentEditor
{
	typedef TwwComponentEditor inherited;
	
private:
	bool __fastcall SupportIniSave();
	
public:
	virtual int __fastcall GetVerbCount();
	virtual System::UnicodeString __fastcall GetVerb(int Index);
	virtual void __fastcall ExecuteVerb(int Index);
public:
	/* TwwComponentEditor.Create */ inline __fastcall virtual TwwGridComponentEditor(System::Classes::TComponent* AComponent, Designintf::_di_IDesigner ADesigner) : TwwComponentEditor(AComponent, ADesigner) { }
	
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TwwGridComponentEditor() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TwwIndexDefsProperty : public Designeditors::TStringProperty
{
	typedef Designeditors::TStringProperty inherited;
	
public:
	virtual Designintf::TPropertyAttributes __fastcall GetAttributes();
	virtual System::UnicodeString __fastcall GetValue();
public:
	/* TPropertyEditor.Create */ inline __fastcall virtual TwwIndexDefsProperty(const Designintf::_di_IDesigner ADesigner, int APropCount) : Designeditors::TStringProperty(ADesigner, APropCount) { }
	/* TPropertyEditor.Destroy */ inline __fastcall virtual ~TwwIndexDefsProperty() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TwwControllerListProperty : public Designeditors::TStringProperty
{
	typedef Designeditors::TStringProperty inherited;
	
public:
	virtual Designintf::TPropertyAttributes __fastcall GetAttributes();
	virtual System::UnicodeString __fastcall GetValue();
public:
	/* TPropertyEditor.Create */ inline __fastcall virtual TwwControllerListProperty(const Designintf::_di_IDesigner ADesigner, int APropCount) : Designeditors::TStringProperty(ADesigner, APropCount) { }
	/* TPropertyEditor.Destroy */ inline __fastcall virtual ~TwwControllerListProperty() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TwwIndexFieldProperty : public Designeditors::TStringProperty
{
	typedef Designeditors::TStringProperty inherited;
	
public:
	virtual Designintf::TPropertyAttributes __fastcall GetAttributes();
	virtual void __fastcall GetValues(System::Classes::TGetStrProc Proc);
public:
	/* TPropertyEditor.Create */ inline __fastcall virtual TwwIndexFieldProperty(const Designintf::_di_IDesigner ADesigner, int APropCount) : Designeditors::TStringProperty(ADesigner, APropCount) { }
	/* TPropertyEditor.Destroy */ inline __fastcall virtual ~TwwIndexFieldProperty() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TwwSearchFieldProperty : public Designeditors::TStringProperty
{
	typedef Designeditors::TStringProperty inherited;
	
public:
	virtual Designintf::TPropertyAttributes __fastcall GetAttributes();
	virtual void __fastcall GetValues(System::Classes::TGetStrProc Proc);
public:
	/* TPropertyEditor.Create */ inline __fastcall virtual TwwSearchFieldProperty(const Designintf::_di_IDesigner ADesigner, int APropCount) : Designeditors::TStringProperty(ADesigner, APropCount) { }
	/* TPropertyEditor.Destroy */ inline __fastcall virtual ~TwwSearchFieldProperty() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TwwDBLookupDisplayProperty : public Designeditors::TPropertyEditor
{
	typedef Designeditors::TPropertyEditor inherited;
	
public:
	virtual void __fastcall Edit();
	virtual Designintf::TPropertyAttributes __fastcall GetAttributes();
	virtual System::UnicodeString __fastcall GetValue();
public:
	/* TPropertyEditor.Create */ inline __fastcall virtual TwwDBLookupDisplayProperty(const Designintf::_di_IDesigner ADesigner, int APropCount) : Designeditors::TPropertyEditor(ADesigner, APropCount) { }
	/* TPropertyEditor.Destroy */ inline __fastcall virtual ~TwwDBLookupDisplayProperty() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TwwTableDisplayProperty : public Designeditors::TPropertyEditor
{
	typedef Designeditors::TPropertyEditor inherited;
	
public:
	virtual void __fastcall Edit();
	virtual Designintf::TPropertyAttributes __fastcall GetAttributes();
	virtual System::UnicodeString __fastcall GetValue();
public:
	/* TPropertyEditor.Create */ inline __fastcall virtual TwwTableDisplayProperty(const Designintf::_di_IDesigner ADesigner, int APropCount) : Designeditors::TPropertyEditor(ADesigner, APropCount) { }
	/* TPropertyEditor.Destroy */ inline __fastcall virtual ~TwwTableDisplayProperty() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TwwDBLookupDisplayComponentEditor : public TwwComponentEditor
{
	typedef TwwComponentEditor inherited;
	
public:
	virtual void __fastcall Edit();
public:
	/* TwwComponentEditor.Create */ inline __fastcall virtual TwwDBLookupDisplayComponentEditor(System::Classes::TComponent* AComponent, Designintf::_di_IDesigner ADesigner) : TwwComponentEditor(AComponent, ADesigner) { }
	
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TwwDBLookupDisplayComponentEditor() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TSelectedFieldsProperty : public Designeditors::TPropertyEditor
{
	typedef Designeditors::TPropertyEditor inherited;
	
public:
	virtual void __fastcall Edit();
	virtual Designintf::TPropertyAttributes __fastcall GetAttributes();
	virtual System::UnicodeString __fastcall GetValue();
public:
	/* TPropertyEditor.Create */ inline __fastcall virtual TSelectedFieldsProperty(const Designintf::_di_IDesigner ADesigner, int APropCount) : Designeditors::TPropertyEditor(ADesigner, APropCount) { }
	/* TPropertyEditor.Destroy */ inline __fastcall virtual ~TSelectedFieldsProperty() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TwwDBGridComponentEditor : public TwwGridComponentEditor
{
	typedef TwwGridComponentEditor inherited;
	
public:
	virtual void __fastcall Edit();
	
protected:
	virtual void __fastcall PrepareItem(int Index, const Designmenus::_di_IMenuItem AItem);
public:
	/* TwwComponentEditor.Create */ inline __fastcall virtual TwwDBGridComponentEditor(System::Classes::TComponent* AComponent, Designintf::_di_IDesigner ADesigner) : TwwGridComponentEditor(AComponent, ADesigner) { }
	
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TwwDBGridComponentEditor() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TwwRecordViewPanelComponentEditor : public TwwComponentEditor
{
	typedef TwwComponentEditor inherited;
	
public:
	virtual void __fastcall Edit();
public:
	/* TwwComponentEditor.Create */ inline __fastcall virtual TwwRecordViewPanelComponentEditor(System::Classes::TComponent* AComponent, Designintf::_di_IDesigner ADesigner) : TwwComponentEditor(AComponent, ADesigner) { }
	
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TwwRecordViewPanelComponentEditor() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TwwObjPictureProperty : public Designeditors::TClassProperty
{
	typedef Designeditors::TClassProperty inherited;
	
public:
	virtual void __fastcall Edit();
	virtual Designintf::TPropertyAttributes __fastcall GetAttributes();
	virtual System::UnicodeString __fastcall GetValue();
public:
	/* TPropertyEditor.Create */ inline __fastcall virtual TwwObjPictureProperty(const Designintf::_di_IDesigner ADesigner, int APropCount) : Designeditors::TClassProperty(ADesigner, APropCount) { }
	/* TPropertyEditor.Destroy */ inline __fastcall virtual ~TwwObjPictureProperty() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TwwObjRegexProperty : public Designeditors::TClassProperty
{
	typedef Designeditors::TClassProperty inherited;
	
public:
	virtual void __fastcall Edit();
	virtual Designintf::TPropertyAttributes __fastcall GetAttributes();
	virtual System::UnicodeString __fastcall GetValue();
public:
	/* TPropertyEditor.Create */ inline __fastcall virtual TwwObjRegexProperty(const Designintf::_di_IDesigner ADesigner, int APropCount) : Designeditors::TClassProperty(ADesigner, APropCount) { }
	/* TPropertyEditor.Destroy */ inline __fastcall virtual ~TwwObjRegexProperty() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TwwFilterFieldsProperty : public Designeditors::TPropertyEditor
{
	typedef Designeditors::TPropertyEditor inherited;
	
public:
	virtual void __fastcall Edit();
	virtual Designintf::TPropertyAttributes __fastcall GetAttributes();
	virtual System::UnicodeString __fastcall GetValue();
public:
	/* TPropertyEditor.Create */ inline __fastcall virtual TwwFilterFieldsProperty(const Designintf::_di_IDesigner ADesigner, int APropCount) : Designeditors::TPropertyEditor(ADesigner, APropCount) { }
	/* TPropertyEditor.Destroy */ inline __fastcall virtual ~TwwFilterFieldsProperty() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TwwComboItemsProperty : public Designeditors::TPropertyEditor
{
	typedef Designeditors::TPropertyEditor inherited;
	
public:
	virtual void __fastcall Edit();
	virtual Designintf::TPropertyAttributes __fastcall GetAttributes();
	virtual System::UnicodeString __fastcall GetValue();
public:
	/* TPropertyEditor.Create */ inline __fastcall virtual TwwComboItemsProperty(const Designintf::_di_IDesigner ADesigner, int APropCount) : Designeditors::TPropertyEditor(ADesigner, APropCount) { }
	/* TPropertyEditor.Destroy */ inline __fastcall virtual ~TwwComboItemsProperty() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TwwMultiLineStringProperty : public Designeditors::TClassProperty
{
	typedef Designeditors::TClassProperty inherited;
	
public:
	virtual void __fastcall Edit();
	virtual Designintf::TPropertyAttributes __fastcall GetAttributes();
	virtual System::UnicodeString __fastcall GetValue();
	virtual void __fastcall SetValue(const System::UnicodeString value)/* overload */;
public:
	/* TPropertyEditor.Create */ inline __fastcall virtual TwwMultiLineStringProperty(const Designintf::_di_IDesigner ADesigner, int APropCount) : Designeditors::TClassProperty(ADesigner, APropCount) { }
	/* TPropertyEditor.Destroy */ inline __fastcall virtual ~TwwMultiLineStringProperty() { }
	
	/* Hoisted overloads: */
	
public:
	inline void __fastcall  SetValue(const System::WideString Value){ Designeditors::TPropertyEditor::SetValue(Value); }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TwwPictureProperty : public Designeditors::TClassProperty
{
	typedef Designeditors::TClassProperty inherited;
	
public:
	virtual void __fastcall Edit();
	virtual Designintf::TPropertyAttributes __fastcall GetAttributes();
	virtual System::UnicodeString __fastcall GetValue();
public:
	/* TPropertyEditor.Create */ inline __fastcall virtual TwwPictureProperty(const Designintf::_di_IDesigner ADesigner, int APropCount) : Designeditors::TClassProperty(ADesigner, APropCount) { }
	/* TPropertyEditor.Destroy */ inline __fastcall virtual ~TwwPictureProperty() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TwwPicturePropertyGen : public Designeditors::TClassProperty
{
	typedef Designeditors::TClassProperty inherited;
	
public:
	virtual void __fastcall Edit();
	virtual Designintf::TPropertyAttributes __fastcall GetAttributes();
	virtual System::UnicodeString __fastcall GetValue();
public:
	/* TPropertyEditor.Create */ inline __fastcall virtual TwwPicturePropertyGen(const Designintf::_di_IDesigner ADesigner, int APropCount) : Designeditors::TClassProperty(ADesigner, APropCount) { }
	/* TPropertyEditor.Destroy */ inline __fastcall virtual ~TwwPicturePropertyGen() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TwwRegexProperty : public Designeditors::TClassProperty
{
	typedef Designeditors::TClassProperty inherited;
	
public:
	virtual void __fastcall Edit();
	virtual Designintf::TPropertyAttributes __fastcall GetAttributes();
	virtual System::UnicodeString __fastcall GetValue();
public:
	/* TPropertyEditor.Create */ inline __fastcall virtual TwwRegexProperty(const Designintf::_di_IDesigner ADesigner, int APropCount) : Designeditors::TClassProperty(ADesigner, APropCount) { }
	/* TPropertyEditor.Destroy */ inline __fastcall virtual ~TwwRegexProperty() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TwwRecordViewComponentEditor : public TwwComponentEditor
{
	typedef TwwComponentEditor inherited;
	
public:
	virtual void __fastcall Edit();
public:
	/* TwwComponentEditor.Create */ inline __fastcall virtual TwwRecordViewComponentEditor(System::Classes::TComponent* AComponent, Designintf::_di_IDesigner ADesigner) : TwwComponentEditor(AComponent, ADesigner) { }
	
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TwwRecordViewComponentEditor() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TwwRichEditItemsProperty : public Designeditors::TPropertyEditor
{
	typedef Designeditors::TPropertyEditor inherited;
	
public:
	virtual void __fastcall Edit();
	virtual Designintf::TPropertyAttributes __fastcall GetAttributes();
	virtual System::UnicodeString __fastcall GetValue();
public:
	/* TPropertyEditor.Create */ inline __fastcall virtual TwwRichEditItemsProperty(const Designintf::_di_IDesigner ADesigner, int APropCount) : Designeditors::TPropertyEditor(ADesigner, APropCount) { }
	/* TPropertyEditor.Destroy */ inline __fastcall virtual ~TwwRichEditItemsProperty() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TwwRichEditComponentEditor : public TwwComponentEditor
{
	typedef TwwComponentEditor inherited;
	
public:
	virtual void __fastcall Edit();
public:
	/* TwwComponentEditor.Create */ inline __fastcall virtual TwwRichEditComponentEditor(System::Classes::TComponent* AComponent, Designintf::_di_IDesigner ADesigner) : TwwComponentEditor(AComponent, ADesigner) { }
	
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TwwRichEditComponentEditor() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TwwRichEditBarComponentEditor : public TwwComponentEditor
{
	typedef TwwComponentEditor inherited;
	
public:
	virtual void __fastcall Edit();
public:
	/* TwwComponentEditor.Create */ inline __fastcall virtual TwwRichEditBarComponentEditor(System::Classes::TComponent* AComponent, Designintf::_di_IDesigner ADesigner) : TwwComponentEditor(AComponent, ADesigner) { }
	
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TwwRichEditBarComponentEditor() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TwwGridIndicatorProperty : public Designeditors::TPropertyEditor
{
	typedef Designeditors::TPropertyEditor inherited;
	
public:
	virtual void __fastcall Edit();
	virtual Designintf::TPropertyAttributes __fastcall GetAttributes();
	virtual System::UnicodeString __fastcall GetValue();
public:
	/* TPropertyEditor.Create */ inline __fastcall virtual TwwGridIndicatorProperty(const Designintf::_di_IDesigner ADesigner, int APropCount) : Designeditors::TPropertyEditor(ADesigner, APropCount) { }
	/* TPropertyEditor.Destroy */ inline __fastcall virtual ~TwwGridIndicatorProperty() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TComponentData : public System::TObject
{
	typedef System::TObject inherited;
	
public:
	System::Classes::TComponentClass classdesc;
	__fastcall TComponentData(System::Classes::TComponentClass classtype);
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TComponentData() { }
	
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
extern DELPHI_PACKAGE System::Generics::Collections::TObjectList__1<TComponentData*>* EditComponentList;
extern DELPHI_PACKAGE bool __fastcall EditSelectedFieldsProperty(System::Classes::TComponent* AComponent, System::Classes::TStrings* listHandle, Data::Db::TDataSet* dataSet, Designintf::_di_IDesigner designer, bool readFromTableComponent, bool &useTFields, Vcl::Wwselfld::TwwSelectedPropertyType propertyType);
extern DELPHI_PACKAGE void __fastcall Register(void);
}	/* namespace Wwprpedt */
}	/* namespace Vcl */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_VCL_WWPRPEDT)
using namespace Vcl::Wwprpedt;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_VCL)
using namespace Vcl;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// vcl_wwprpedtHPP
