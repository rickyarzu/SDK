// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCObjectInspector.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncobjectinspectorHPP
#define Fmx_TmsfncobjectinspectorHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Generics.Collections.hpp>
#include <System.Classes.hpp>
#include <FMX.TMSFNCCustomControl.hpp>
#include <FMX.TMSFNCImage.hpp>
#include <FMX.TMSFNCCustomTreeView.hpp>
#include <FMX.TMSFNCTreeViewData.hpp>
#include <FMX.TMSFNCBitmapContainer.hpp>
#include <System.Types.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.TMSFNCTreeView.hpp>
#include <FMX.TMSFNCGraphics.hpp>
#include <FMX.TMSFNCGraphicsTypes.hpp>
#include <System.TypInfo.hpp>
#include <FMX.ExtCtrls.hpp>
#include <FMX.StdCtrls.hpp>
#include <FMX.TMSFNCCustomComponent.hpp>
#include <FMX.Controls.hpp>
#include <FMX.Forms.hpp>
#include <FMX.Types.hpp>
#include <FMX.ListBox.hpp>
#include <FMX.ComboEdit.hpp>
#include <FMX.Memo.hpp>
#include <System.UITypes.hpp>
#include <Data.DB.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>
#include <FMX.Edit.hpp>
#include <FMX.Controls.Presentation.hpp>
#include <FMX.TMSFNCTreeViewBase.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncobjectinspector
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCObjectList;
class DELPHICLASS TTMSFNCObjectInspectorEditorComboBox;
class DELPHICLASS TTMSFNCObjectInspectorEditor;
class DELPHICLASS TTMSFNCObjectInspectorDataLink;
class DELPHICLASS TTMSFNCObjectInspector;
//-- type declarations -------------------------------------------------------
#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCObjectList : public System::Generics::Collections::TObjectList__1<System::TObject*>
{
	typedef System::Generics::Collections::TObjectList__1<System::TObject*> inherited;
	
public:
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TTMSFNCObjectList()/* overload */ : System::Generics::Collections::TObjectList__1<System::TObject*>() { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TTMSFNCObjectList(bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<System::TObject*>(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TTMSFNCObjectList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<System::TObject*> > AComparer, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<System::TObject*>(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TTMSFNCObjectList(System::Generics::Collections::TEnumerable__1<System::TObject*>* const Collection, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<System::TObject*>(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Destroy */ inline __fastcall virtual ~TTMSFNCObjectList() { }
	
public:
	/* {System_Generics_Collections}TList<System_TObject>.Create */ inline __fastcall TTMSFNCObjectList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<System::TObject*> > AComparer)/* overload */ : System::Generics::Collections::TObjectList__1<System::TObject*>(AComparer) { }
	/* {System_Generics_Collections}TList<System_TObject>.Create */ inline __fastcall TTMSFNCObjectList(System::Generics::Collections::TEnumerable__1<System::TObject*>* const Collection)/* overload */ : System::Generics::Collections::TObjectList__1<System::TObject*>(Collection) { }
	/* {System_Generics_Collections}TList<System_TObject>.Create */ inline __fastcall TTMSFNCObjectList(System::TObject* const *Values, const int Values_High)/* overload */ : System::Generics::Collections::TObjectList__1<System::TObject*>(Values, Values_High) { }
	
};

#pragma pack(pop)

typedef System::Typinfo::PPropInfo TTMSFNCPropertyInfo;

typedef System::DynamicArray<System::TObject*> TTMSFNCObjectArray;

typedef void __fastcall (__closure *TTMSFNCObjectInspectorReadDBField)(System::TObject* Sender, Data::Db::TField* AField, bool &ACanRead);

typedef void __fastcall (__closure *TTMSFNCObjectInspectorReadDBFieldValue)(System::TObject* Sender, Data::Db::TField* AField, System::UnicodeString &AFieldValue, bool &ACanRead);

typedef void __fastcall (__closure *TTMSFNCObjectInspectorWriteDBFieldValue)(System::TObject* Sender, Data::Db::TField* AField, System::UnicodeString &AFieldValue, bool &ACanWrite);

typedef void __fastcall (__closure *TTMSFNCObjectInspectorFieldValueChanged)(System::TObject* Sender, Data::Db::TField* AField, System::UnicodeString APropertyValue);

typedef void __fastcall (__closure *TTMSFNCObjectInspectorReadProperty)(System::TObject* Sender, System::TObject* AObject, System::Typinfo::PPropInfo APropertyInfo, System::UnicodeString APropertyName, System::TTypeKind APropertyType, bool &ACanRead);

typedef void __fastcall (__closure *TTMSFNCObjectInspectorReadPropertyValue)(System::TObject* Sender, System::TObject* AObject, System::Typinfo::PPropInfo APropertyInfo, System::UnicodeString APropertyName, System::TTypeKind APropertyType, System::UnicodeString &APropertyValue, bool &ACanRead);

typedef void __fastcall (__closure *TTMSFNCObjectInspectorWritePropertyValue)(System::TObject* Sender, System::TObject* AObject, System::Typinfo::PPropInfo APropertyInfo, System::UnicodeString APropertyName, System::TTypeKind APropertyType, System::UnicodeString &APropertyValue, bool &ACanWrite);

typedef void __fastcall (__closure *TTMSFNCObjectInspectorPropertyValueChanged)(System::TObject* Sender, System::TObject* AObject, System::Typinfo::PPropInfo APropertyInfo, System::UnicodeString APropertyName, System::TTypeKind APropertyType, System::UnicodeString APropertyValue);

typedef void __fastcall (__closure *TTMSFNCObjectInspectorBeforeOpenObjectEditor)(System::TObject* Sender, System::TObject* AObject, System::Typinfo::PPropInfo APropertyInfo, System::UnicodeString APropertyName, System::TTypeKind APropertyType, System::TObject* APropertyValueObject, bool &ACanOpen);

typedef void __fastcall (__closure *TTMSFNCObjectInspectorCustomizeObjectEditor)(System::TObject* Sender, System::TObject* AObject, System::Typinfo::PPropInfo APropertyInfo, System::UnicodeString APropertyName, System::TTypeKind APropertyType, System::TObject* APropertyValueObject, TTMSFNCObjectInspectorEditor* AEditor, Fmx::Tmsfnccustomcontrol::TTMSFNCCustomDesignerForm* AEditorForm, TTMSFNCObjectInspector* AEditorObjectInspector);

typedef Fmx::Types::TFmxObject TTMSFNCObjectInspectorEditorParent;

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCObjectInspectorEditorComboBox : public Fmx::Comboedit::TComboEdit
{
	typedef Fmx::Comboedit::TComboEdit inherited;
	
public:
	/* TCustomComboEdit.Create */ inline __fastcall virtual TTMSFNCObjectInspectorEditorComboBox(System::Classes::TComponent* AOwner)/* overload */ : Fmx::Comboedit::TComboEdit(AOwner) { }
	
public:
	/* TCustomEdit.Destroy */ inline __fastcall virtual ~TTMSFNCObjectInspectorEditorComboBox() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCObjectInspectorEditor : public Fmx::Tmsfnccustomcomponent::TTMSFNCCustomComponent
{
	typedef Fmx::Tmsfnccustomcomponent::TTMSFNCCustomComponent inherited;
	
private:
	Fmx::Tmsfnccustomcontrol::TTMSFNCCustomDesignerForm* FEditor;
	int FBlockUpdate;
	Fmx::Stdctrls::TPanel* FPanel;
	Fmx::Stdctrls::TPanel* FTopPanel;
	Fmx::Stdctrls::TButton* FButtonOk;
	Fmx::Stdctrls::TButton* FButtonCancel;
	Fmx::Stdctrls::TButton* FButtonSelectImage;
	Fmx::Stdctrls::TButton* FButtonClearImage;
	Fmx::Stdctrls::TButton* FButtonAdd;
	Fmx::Stdctrls::TButton* FButtonDelete;
	Fmx::Listbox::TComboBox* FComboBoxBitmapContainer;
	Fmx::Listbox::TListBox* FListBox;
	TTMSFNCObjectInspector* FObjectInspector;
	Fmx::Memo::TMemo* FMemo;
	Fmx::Tmsfncimage::TTMSFNCImage* FImage;
	Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* FBitmapContainer;
	System::TObject* FObject;
	Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* __fastcall GetBitmapContainer();
	void __fastcall SetBitmapContainer(Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* const Value);
	void __fastcall SetObject(System::TObject* const Value);
	
protected:
	virtual NativeUInt __fastcall GetInstance();
	virtual void __fastcall RegisterRuntimeClasses();
	virtual void __fastcall Notification(System::Classes::TComponent* AComponent, System::Classes::TOperation AOperation);
	virtual void __fastcall BuildEditor(Fmx::Types::TFmxObject* AParent);
	virtual void __fastcall UpdateControls();
	void __fastcall DoDeleteItem(System::TObject* Sender);
	void __fastcall DoAddItem(System::TObject* Sender);
	void __fastcall DoImageSelected(System::TObject* Sender);
	void __fastcall DoSelectImageItem(System::TObject* Sender);
	void __fastcall DoClearImageItem(System::TObject* Sender);
	void __fastcall DoItemChanged(System::TObject* Sender);
	void __fastcall DoMemoChanged(System::TObject* Sender);
	void __fastcall DoButtonCancelClick(System::TObject* Sender);
	void __fastcall DoButtonOKClick(System::TObject* Sender);
	
public:
	System::Uitypes::TModalResult __fastcall Execute();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__property System::TObject* Object = {read=FObject, write=SetObject};
	
__published:
	__property Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* BitmapContainer = {read=FBitmapContainer, write=SetBitmapContainer};
public:
	/* TTMSFNCCustomComponent.Create */ inline __fastcall virtual TTMSFNCObjectInspectorEditor(System::Classes::TComponent* AOwner) : Fmx::Tmsfnccustomcomponent::TTMSFNCCustomComponent(AOwner) { }
	
public:
	/* TControl.Destroy */ inline __fastcall virtual ~TTMSFNCObjectInspectorEditor() { }
	
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

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCObjectInspectorDataLink : public Data::Db::TDataLink
{
	typedef Data::Db::TDataLink inherited;
	
private:
	bool FModified;
	TTMSFNCObjectInspector* FObjectInspector;
	
protected:
	virtual void __fastcall ActiveChanged();
	virtual void __fastcall DataSetChanged();
	virtual void __fastcall DataSetScrolled(int Distance);
	virtual void __fastcall RecordChanged(Data::Db::TField* Field);
	virtual void __fastcall UpdateData();
	TTMSFNCObjectInspector* __fastcall ObjectInspector();
	
public:
	__fastcall TTMSFNCObjectInspectorDataLink(TTMSFNCObjectInspector* AObjectInspector);
	__fastcall virtual ~TTMSFNCObjectInspectorDataLink();
	void __fastcall Modified();
	void __fastcall Reset();
};

#pragma pack(pop)

enum DECLSPEC_DENUM TTMSFNCObjectInspectorMode : unsigned char { oimAll, oimProperties, oimEvents };

class PASCALIMPLEMENTATION TTMSFNCObjectInspector : public Fmx::Tmsfnctreeview::TTMSFNCTreeView
{
	typedef Fmx::Tmsfnctreeview::TTMSFNCTreeView inherited;
	
private:
	int FInternalCall;
	TTMSFNCObjectInspectorDataLink* FDataLink;
	Fmx::Types::TTimer* FInplaceEditorTimer;
	Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* FBitmapContainer;
	TTMSFNCObjectInspectorEditor* FEditor;
	System::TObject* FObject;
	TTMSFNCObjectInspectorReadProperty FOnReadProperty;
	TTMSFNCObjectInspectorWritePropertyValue FOnWritePropertyValue;
	TTMSFNCObjectInspectorReadPropertyValue FOnReadPropertyValue;
	TTMSFNCObjectInspectorPropertyValueChanged FOnPropertyValueChanged;
	Data::Db::TDataSource* FDataSource;
	TTMSFNCObjectInspectorReadDBField FOnReadDBField;
	TTMSFNCObjectInspectorWriteDBFieldValue FOnWriteDBFieldValue;
	TTMSFNCObjectInspectorFieldValueChanged FOnFieldValueChanged;
	TTMSFNCObjectInspectorReadDBFieldValue FOnReadDBFieldValue;
	System::Classes::TComponent* FDesigner;
	TTMSFNCObjectInspectorMode FMode;
	TTMSFNCObjectInspectorBeforeOpenObjectEditor FOnBeforeOpenObjectEditor;
	TTMSFNCObjectInspectorCustomizeObjectEditor FOnCustomizeObjectEditor;
	void __fastcall SetObject(System::TObject* const Value);
	void __fastcall SetDataSource(Data::Db::TDataSource* const Value);
	void __fastcall SetMode(const TTMSFNCObjectInspectorMode Value);
	
protected:
	virtual System::UnicodeString __fastcall GetDocURL();
	void __fastcall UpdateFields();
	void __fastcall LoadFields();
	void __fastcall InternalRebuildList(bool AUpdate = false);
	virtual void __fastcall Notification(System::Classes::TComponent* AComponent, System::Classes::TOperation AOperation);
	void __fastcall StopInternalEditing();
	HIDESBASE void __fastcall DoInplaceEditorTimer(System::TObject* Sender);
	void __fastcall DoColorSelected(System::TObject* Sender, System::Uitypes::TAlphaColor AColor);
	void __fastcall DoDateSelected(System::TObject* Sender, System::TDate ADate);
	void __fastcall DoTimeSelected(System::TObject* Sender, System::TTime ATime);
	void __fastcall DoFillKindSelected(System::TObject* Sender, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFillKind AFillKind);
	void __fastcall DoStrokeKindSelected(System::TObject* Sender, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStrokeKind AStrokeKind);
	void __fastcall DoComboChange(System::TObject* Sender);
	virtual void __fastcall DoBeforeUpdateNode(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, System::UnicodeString &AText, bool &ACanUpdate);
	virtual void __fastcall DoGetInplaceEditor(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, bool &ATransparent, Fmx::Tmsfnccustomtreeview::TTMSFNCTreeViewInplaceEditorClass &AInplaceEditorClass);
	virtual void __fastcall DoCustomizeInplaceEditor(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, Fmx::Controls::TControl* AInplaceEditor);
	virtual void __fastcall DoNodeChanged(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode);
	virtual void __fastcall DoBeforeDrawNodeText(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AColumn, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, System::UnicodeString AText, bool &AAllow);
	virtual void __fastcall DoBeforeOpenInplaceEditor(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, bool &ACanOpen);
	virtual void __fastcall DoAfterOpenInplaceEditor(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, Fmx::Controls::TControl* AInplaceEditor, const System::Types::TRectF &AInplaceEditorRect);
	virtual void __fastcall DoNodeClick(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode);
	virtual void __fastcall DoBeforeOpenObjectEditor(System::TObject* AObject, System::Typinfo::PPropInfo APropertyInfo, System::UnicodeString APropertyName, System::TTypeKind APropertyType, System::TObject* APropertyValueObject, bool &ACanOpen);
	virtual void __fastcall DoCustomizeObjectEditor(System::TObject* AObject, System::Typinfo::PPropInfo APropertyInfo, System::UnicodeString APropertyName, System::TTypeKind APropertyType, System::TObject* APropertyValueObject, TTMSFNCObjectInspectorEditor* AEditor, Fmx::Tmsfnccustomcontrol::TTMSFNCCustomDesignerForm* AEditorForm, TTMSFNCObjectInspector* AEditorObjectInspector);
	virtual void __fastcall DoReadDBField(Data::Db::TField* AField, bool &ACanRead);
	virtual void __fastcall DoReadDBFieldValue(Data::Db::TField* AField, System::UnicodeString &AFieldValue, bool &ACanRead);
	virtual void __fastcall DoWriteDBFieldValue(Data::Db::TField* AField, System::UnicodeString &AFieldValue, bool &ACanWrite);
	virtual void __fastcall DoFieldValueChanged(Data::Db::TField* AField, System::UnicodeString AFieldValue);
	virtual void __fastcall DoGetNodeTextColor(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, int AColumn, System::Uitypes::TAlphaColor &ATextColor);
	virtual void __fastcall DoReadProperty(System::TObject* AObject, System::Typinfo::PPropInfo APropertyInfo, System::UnicodeString APropertyName, System::TTypeKind APropertyType, bool &ACanRead);
	virtual void __fastcall DoReadPropertyValue(System::TObject* AObject, System::Typinfo::PPropInfo APropertyInfo, System::UnicodeString APropertyName, System::TTypeKind APropertyType, System::UnicodeString &APropertyValue, System::TObject* &APropertyValueObject, bool &ACanRead);
	virtual void __fastcall DoWritePropertyValue(System::TObject* AObject, System::Typinfo::PPropInfo APropertyInfo, System::UnicodeString APropertyName, System::TTypeKind APropertyType, System::UnicodeString &APropertyValue, System::TObject* &APropertyValueObject, bool &ACanWrite);
	virtual void __fastcall DoPropertyValueChanged(System::TObject* AObject, System::Typinfo::PPropInfo APropertyInfo, System::UnicodeString APropertyName, System::TTypeKind APropertyType, System::UnicodeString APropertyValue, System::TObject* APropertyValueObject);
	virtual void __fastcall ReadObject(System::TObject* AObject, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNode* ANode = (Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNode*)(0x0));
	virtual void __fastcall ReadProperties(System::TObject* AObject, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNode* ANode = (Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNode*)(0x0));
	virtual void __fastcall ReadProperty(System::TObject* AObject, System::Typinfo::PPropInfo PropInfo, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNode* ANode = (Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNode*)(0x0), Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNode* AReplaceNode = (Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNode*)(0x0));
	virtual void __fastcall ReadGenericList(TTMSFNCObjectList* AList, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNode* ANode = (Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNode*)(0x0));
	virtual void __fastcall ReadCollection(System::Classes::TCollection* ACollection, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNode* ANode = (Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNode*)(0x0));
	virtual void __fastcall ReadBitmap(Fmx::Tmsfnctypes::TTMSFNCBitmap* ABitmap, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNode* ANode = (Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNode*)(0x0));
	virtual void __fastcall ReadSingleObject(System::TObject* AObject, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNode* ANode = (Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNode*)(0x0));
	virtual void __fastcall Read(System::TObject* AObject);
	virtual void __fastcall ReadDB(bool AUpdate = false);
	virtual void __fastcall WritePropInfoValue(System::TObject* AInstance, System::Typinfo::PPropInfo APropInfo, System::UnicodeString AValue, System::TObject* AValueObject, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNode* ANode);
	virtual void __fastcall DrawBorders(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics);
	__classmethod void __fastcall GetEnumValues(System::Classes::TStrings* AValues, System::Typinfo::PPropInfo APropInfo);
	__classmethod virtual System::TTypeKind __fastcall GetPropInfoType(System::Typinfo::PPropInfo APropInfo);
	__classmethod virtual System::UnicodeString __fastcall GetPropInfoName(System::Typinfo::PPropInfo APropInfo);
	__classmethod System::UnicodeString __fastcall GetPropInfoTypeName(System::Typinfo::PPropInfo APropInfo);
	__classmethod virtual bool __fastcall IsWriteOnly(System::Typinfo::PPropInfo APropInfo);
	__classmethod virtual bool __fastcall IsReadOnly(System::Typinfo::PPropInfo APropInfo);
	__classmethod virtual bool __fastcall IsAssignableProperty(System::TObject* AObject, System::Typinfo::PPropInfo APropInfo);
	virtual System::UnicodeString __fastcall ReadPropInfoValue(System::TObject* AInstance, System::Typinfo::PPropInfo APropInfo);
	
public:
	__fastcall virtual TTMSFNCObjectInspector(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCObjectInspector();
	virtual void __fastcall RebuildList();
	virtual void __fastcall Initialize();
	__classmethod virtual void __fastcall GetDescendingComponents(System::Classes::TStrings* AValues, System::Classes::TComponent* ADesigner, System::TObject* AObject, System::UnicodeString AClassParent);
	__classmethod bool __fastcall InputListQuery(const System::UnicodeString ACaption, const System::UnicodeString APrompt, System::Classes::TStringList* SL, System::UnicodeString &Value);
	__classmethod virtual bool __fastcall IsColor(System::UnicodeString APropertyName);
	__classmethod virtual bool __fastcall IsStrokeKind(System::UnicodeString APropertyName);
	__classmethod virtual bool __fastcall IsFillKind(System::UnicodeString APropertyName);
	__classmethod virtual bool __fastcall IsDate(System::UnicodeString APropertyName);
	__classmethod virtual bool __fastcall IsDateTime(System::UnicodeString APropertyName);
	__classmethod virtual bool __fastcall IsTime(System::UnicodeString APropertyName);
	__classmethod virtual bool __fastcall IsGenericList(System::TClass AClass);
	__classmethod virtual bool __fastcall IsCollection(System::TClass AClass);
	__classmethod virtual bool __fastcall IsComponent(System::TClass AClass);
	__classmethod virtual bool __fastcall IsControl(System::TClass AClass);
	__classmethod virtual bool __fastcall IsList(System::TClass AClass);
	__classmethod virtual bool __fastcall IsDescendingClass(System::TClass AClass, System::UnicodeString *AClassParentList, const int AClassParentList_High);
	__classmethod virtual bool __fastcall IsBitmap(System::TClass AClass);
	__classmethod virtual bool __fastcall IsStrings(System::TClass AClass);
	__property System::TObject* Object = {read=FObject, write=SetObject};
	__property TTMSFNCObjectInspectorMode Mode = {read=FMode, write=SetMode, default=1};
	
__published:
	__property System::Classes::TComponent* Designer = {read=FDesigner, write=FDesigner};
	__property Data::Db::TDataSource* DataSource = {read=FDataSource, write=SetDataSource};
	__property TTMSFNCObjectInspectorReadProperty OnReadProperty = {read=FOnReadProperty, write=FOnReadProperty};
	__property TTMSFNCObjectInspectorReadPropertyValue OnReadPropertyValue = {read=FOnReadPropertyValue, write=FOnReadPropertyValue};
	__property TTMSFNCObjectInspectorWritePropertyValue OnWritePropertyValue = {read=FOnWritePropertyValue, write=FOnWritePropertyValue};
	__property TTMSFNCObjectInspectorPropertyValueChanged OnPropertyValueChanged = {read=FOnPropertyValueChanged, write=FOnPropertyValueChanged};
	__property TTMSFNCObjectInspectorReadDBField OnReadDBField = {read=FOnReadDBField, write=FOnReadDBField};
	__property TTMSFNCObjectInspectorReadDBFieldValue OnReadDBFieldValue = {read=FOnReadDBFieldValue, write=FOnReadDBFieldValue};
	__property TTMSFNCObjectInspectorWriteDBFieldValue OnWriteDBFieldValue = {read=FOnWriteDBFieldValue, write=FOnWriteDBFieldValue};
	__property TTMSFNCObjectInspectorFieldValueChanged OnFieldValueChanged = {read=FOnFieldValueChanged, write=FOnFieldValueChanged};
	__property TTMSFNCObjectInspectorBeforeOpenObjectEditor OnBeforeOpenObjectEditor = {read=FOnBeforeOpenObjectEditor, write=FOnBeforeOpenObjectEditor};
	__property TTMSFNCObjectInspectorCustomizeObjectEditor OnCustomizeObjectEditor = {read=FOnCustomizeObjectEditor, write=FOnCustomizeObjectEditor};
};


//-- var, const, procedure ---------------------------------------------------
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCObjectInspectorUnidirectionalDataSet;
#define Fmx_Tmsfncobjectinspector_sTMSFNCObjectInspectorUnidirectionalDataSet System::LoadResourceString(&Fmx::Tmsfncobjectinspector::_sTMSFNCObjectInspectorUnidirectionalDataSet)
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCObjectInspectorName;
#define Fmx_Tmsfncobjectinspector_sTMSFNCObjectInspectorName System::LoadResourceString(&Fmx::Tmsfncobjectinspector::_sTMSFNCObjectInspectorName)
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCObjectInspectorValue;
#define Fmx_Tmsfncobjectinspector_sTMSFNCObjectInspectorValue System::LoadResourceString(&Fmx::Tmsfncobjectinspector::_sTMSFNCObjectInspectorValue)
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCObjectInspectorEditorOK;
#define Fmx_Tmsfncobjectinspector_sTMSFNCObjectInspectorEditorOK System::LoadResourceString(&Fmx::Tmsfncobjectinspector::_sTMSFNCObjectInspectorEditorOK)
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCObjectInspectorEditorCancel;
#define Fmx_Tmsfncobjectinspector_sTMSFNCObjectInspectorEditorCancel System::LoadResourceString(&Fmx::Tmsfncobjectinspector::_sTMSFNCObjectInspectorEditorCancel)
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCObjectInspectorEditorDelete;
#define Fmx_Tmsfncobjectinspector_sTMSFNCObjectInspectorEditorDelete System::LoadResourceString(&Fmx::Tmsfncobjectinspector::_sTMSFNCObjectInspectorEditorDelete)
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCObjectInspectorEditorAdd;
#define Fmx_Tmsfncobjectinspector_sTMSFNCObjectInspectorEditorAdd System::LoadResourceString(&Fmx::Tmsfncobjectinspector::_sTMSFNCObjectInspectorEditorAdd)
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCObjectInspectorEditorSelectImage;
#define Fmx_Tmsfncobjectinspector_sTMSFNCObjectInspectorEditorSelectImage System::LoadResourceString(&Fmx::Tmsfncobjectinspector::_sTMSFNCObjectInspectorEditorSelectImage)
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCObjectInspectorEditorClearImage;
#define Fmx_Tmsfncobjectinspector_sTMSFNCObjectInspectorEditorClearImage System::LoadResourceString(&Fmx::Tmsfncobjectinspector::_sTMSFNCObjectInspectorEditorClearImage)
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x0);
static constexpr System::Int8 BLD_VER = System::Int8(0x4);
static constexpr unsigned TTMSFNCObjectInspectorColorSelected = unsigned(0xfff0f0f0);
}	/* namespace Tmsfncobjectinspector */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCOBJECTINSPECTOR)
using namespace Fmx::Tmsfncobjectinspector;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncobjectinspectorHPP
