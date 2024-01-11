// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCGridDatabaseAdapter.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncgriddatabaseadapterHPP
#define Fmx_TmsfncgriddatabaseadapterHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <FMX.TMSFNCCustomGrid.hpp>
#include <FMX.TMSFNCGridCell.hpp>
#include <FMX.TMSFNCGridData.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.Graphics.hpp>
#include <FMX.ExtCtrls.hpp>
#include <FMX.Types.hpp>
#include <Data.DB.hpp>
#include <System.SysUtils.hpp>
#include <FMX.TMSFNCCustomComponent.hpp>
#include <FMX.Controls.hpp>
#include <System.Generics.Collections.hpp>
#include <System.Generics.Defaults.hpp>
#include <System.Types.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncgriddatabaseadapter
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCGridDatabaseAdapterItemDataLink;
class DELPHICLASS TTMSFNCGridDatabaseAdapterColumn;
class DELPHICLASS TTMSFNCGridDatabaseAdapterColumns;
class DELPHICLASS TTMSFNCGridDatabaseAdapterLookupItem;
class DELPHICLASS TTMSFNCGridDatabaseAdapter;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TTMSFNCGridDatabaseAdapterItemDataLink : public Data::Db::TDataLink
{
	typedef Data::Db::TDataLink inherited;
	
private:
	bool FModified;
	TTMSFNCGridDatabaseAdapter* FAdapter;
	
protected:
	virtual void __fastcall ActiveChanged();
	virtual void __fastcall DataSetChanged();
	virtual void __fastcall DataSetScrolled(int Distance);
	virtual void __fastcall RecordChanged(Data::Db::TField* Field);
	virtual void __fastcall UpdateData();
	Fmx::Tmsfnccustomgrid::TTMSFNCGridAdapter* __fastcall Adapter();
	
public:
	__fastcall TTMSFNCGridDatabaseAdapterItemDataLink(TTMSFNCGridDatabaseAdapter* AAdapter);
	__fastcall virtual ~TTMSFNCGridDatabaseAdapterItemDataLink();
	void __fastcall Modified();
	void __fastcall Reset();
};


class PASCALIMPLEMENTATION TTMSFNCGridDatabaseAdapterColumn : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	TTMSFNCGridDatabaseAdapter* FAdapter;
	Data::Db::TField* FField;
	System::UnicodeString FFieldName;
	bool FAutoCreated;
	System::UnicodeString FHeader;
	bool FCheckBoxField;
	bool FPictureField;
	bool FProgressField;
	System::UnicodeString FCheckTrue;
	System::UnicodeString FCheckFalse;
	bool FUseLookupEditor;
	System::UnicodeString FHTMLTemplate;
	bool FUseColumnEditor;
	void __fastcall SetFieldName(const System::UnicodeString Value);
	Data::Db::TField* __fastcall GetField();
	void __fastcall SetField(Data::Db::TField* Value);
	void __fastcall SetHeader(const System::UnicodeString Value);
	void __fastcall SetCheckBoxField(const bool Value);
	void __fastcall SetPictureField(const bool Value);
	void __fastcall SetProgressField(const bool Value);
	void __fastcall SetHTMLTemplate(const System::UnicodeString Value);
	
protected:
	virtual System::UnicodeString __fastcall GetDisplayName();
	__property bool AutoCreated = {read=FAutoCreated, write=FAutoCreated, nodefault};
	
public:
	__fastcall virtual TTMSFNCGridDatabaseAdapterColumn(System::Classes::TCollection* ACollection);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	TTMSFNCGridDatabaseAdapter* __fastcall Adapter();
	__property Data::Db::TField* Field = {read=GetField, write=SetField};
	
__published:
	__property System::UnicodeString FieldName = {read=FFieldName, write=SetFieldName};
	__property System::UnicodeString Header = {read=FHeader, write=SetHeader};
	__property bool CheckBoxField = {read=FCheckBoxField, write=SetCheckBoxField, default=0};
	__property bool ProgressField = {read=FProgressField, write=SetProgressField, default=0};
	__property bool PictureField = {read=FPictureField, write=SetPictureField, default=0};
	__property System::UnicodeString CheckFalse = {read=FCheckFalse, write=FCheckFalse};
	__property bool UseLookupEditor = {read=FUseLookupEditor, write=FUseLookupEditor, default=1};
	__property bool UseColumnEditor = {read=FUseColumnEditor, write=FUseColumnEditor, default=0};
	__property System::UnicodeString CheckTrue = {read=FCheckTrue, write=FCheckTrue};
	__property System::UnicodeString HTMLTemplate = {read=FHTMLTemplate, write=SetHTMLTemplate};
public:
	/* TCollectionItem.Destroy */ inline __fastcall virtual ~TTMSFNCGridDatabaseAdapterColumn() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCGridDatabaseAdapterColumns : public Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCGridDatabaseAdapterColumn*>
{
	typedef Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCGridDatabaseAdapterColumn*> inherited;
	
public:
	TTMSFNCGridDatabaseAdapterColumn* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCGridDatabaseAdapter* FAdapter;
	HIDESBASE TTMSFNCGridDatabaseAdapterColumn* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCGridDatabaseAdapterColumn* const Value);
	
public:
	__fastcall TTMSFNCGridDatabaseAdapterColumns(TTMSFNCGridDatabaseAdapter* AAdapter);
	bool __fastcall HasFieldsDefined();
	HIDESBASE TTMSFNCGridDatabaseAdapterColumn* __fastcall Add();
	HIDESBASE TTMSFNCGridDatabaseAdapterColumn* __fastcall Insert(int index);
	TTMSFNCGridDatabaseAdapter* __fastcall Adapter();
	__property TTMSFNCGridDatabaseAdapterColumn* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCGridDatabaseAdapterColumns() { }
	
};


enum DECLSPEC_DENUM TTMSFNCGridDatabaseAdapterDataSetType : unsigned char { adsSequenced, adsNonSequenced };

enum DECLSPEC_DENUM TTMSFNCGridDatabaseAdapterPostMode : unsigned char { apmNone, apmCell, apmRow };

typedef void __fastcall (__closure *TTMSFNCGridDatabaseAdapterGetRecordCountEvent)(System::TObject* Sender, int &ARecordCount);

typedef void __fastcall (__closure *TTMSFNCGridDatabaseAdapterGetHTMLTemplateDataEvent)(System::TObject* Sender, int ACol, int ARow, System::UnicodeString AFieldname, System::UnicodeString &AData);

typedef void __fastcall (__closure *TTMSFNCGridDatabaseAdapterGetHTMLTemplateEvent)(System::TObject* Sender, int ACol, int ARow, System::UnicodeString &AHTMLTemplate, Data::Db::TFields* AFields);

class PASCALIMPLEMENTATION TTMSFNCGridDatabaseAdapterLookupItem : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	int FIndex;
	
public:
	__fastcall TTMSFNCGridDatabaseAdapterLookupItem(int AIndex);
	__property int Index = {read=FIndex, nodefault};
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
	/* TObject.Destroy */ inline __fastcall virtual ~TTMSFNCGridDatabaseAdapterLookupItem() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCGridDatabaseAdapter : public Fmx::Tmsfnccustomgrid::TTMSFNCGridAdapter
{
	typedef Fmx::Tmsfnccustomgrid::TTMSFNCGridAdapter inherited;
	
private:
	bool FSkipRetrieveData;
	Fmx::Tmsfncgriddata::TTMSFNCGridCellRec FCellToSelect;
	Fmx::Types::TTimer* FSelectTimer;
	bool FDoNotCountRow;
	int FMustEnableControls;
	int FExportStartRow;
	System::TArray__1<System::Byte> FOldPosition;
	bool FSelExport;
	int FExportRow;
	bool FOldIsBOF;
	int FOldAR;
	int FOldTopRow;
	bool FOldIsEOF;
	bool FExporting;
	System::UnicodeString FEditText;
	System::Classes::TStringList* FLookupKeys;
	int FPrevRecNo;
	bool FRecordChanged;
	int FOffset;
	TTMSFNCGridDatabaseAdapterDataSetType FOldDatasetType;
	int FInternalCall;
	Data::Db::TDataSetState FOldState;
	bool FEmptyDataSet;
	bool FShowDefinedFields;
	bool FNewAppendRecord;
	int FVisibleFieldCount;
	Fmx::Tmsfncgriddata::TTMSFNCGridCellRec FPreviousCell;
	TTMSFNCGridDatabaseAdapterItemDataLink* FDataLink;
	TTMSFNCGridDatabaseAdapterColumns* FColumns;
	bool FAutoRemoveColumns;
	bool FAutoCreateColumns;
	TTMSFNCGridDatabaseAdapterGetRecordCountEvent FOnGetRecordCount;
	TTMSFNCGridDatabaseAdapterDataSetType FDataSetType;
	bool FDataSetTypeAuto;
	bool FShowPictureFields;
	bool FShowBooleanFields;
	TTMSFNCGridDatabaseAdapterPostMode FPostMode;
	bool FShowMemoFields;
	TTMSFNCGridDatabaseAdapterGetHTMLTemplateDataEvent FOnGetHTMLTemplateData;
	TTMSFNCGridDatabaseAdapterGetHTMLTemplateEvent FOnGetHTMLTemplate;
	Data::Db::TDataSource* __fastcall GetDataSource();
	void __fastcall SetDataSource(Data::Db::TDataSource* const Value);
	void __fastcall SetColumns(TTMSFNCGridDatabaseAdapterColumns* const Value);
	Data::Db::TField* __fastcall GetFieldAtColumn(int ACol);
	int __fastcall GetFieldIndexAtColumn(int ACol);
	void __fastcall SetDataSetType(const TTMSFNCGridDatabaseAdapterDataSetType Value);
	
protected:
	virtual System::UnicodeString __fastcall GetDocURL();
	void __fastcall ClearOldPosition();
	virtual void __fastcall RegisterRuntimeClasses();
	virtual void __fastcall Notification(System::Classes::TComponent* AComponent, System::Classes::TOperation AOperation);
	void __fastcall RecordChanged(Data::Db::TField* Field);
	void __fastcall UpdateData();
	void __fastcall ActiveChange();
	void __fastcall DataSetChanged();
	void __fastcall UpdateVisibleFields();
	void __fastcall UpdateGrid();
	void __fastcall Scroll(int Distance);
	void __fastcall UpdateRowCount();
	void __fastcall DoSelectTimer(System::TObject* Sender);
	void __fastcall BitmapChanged(System::TObject* Sender);
	virtual void __fastcall UpdateBounds();
	virtual void __fastcall Initialize();
	virtual void __fastcall ScrollGrid(int ADelta, bool ABeforeDisplayCells = true, bool AScrollOnly = false);
	virtual void __fastcall SelectCell(const Fmx::Tmsfncgriddata::TTMSFNCGridCellRec &ACell);
	virtual void __fastcall DoAutoRemoveColumns(bool ARemoveDefined);
	virtual void __fastcall DoGetRecordCount(int &ARecordCount);
	virtual void __fastcall CellEditGetData(int ACol, int ARow, Fmx::Controls::TControl* CellEditor, System::UnicodeString &CellString);
	virtual void __fastcall CellEditValidateData(int ACol, int ARow, Fmx::Controls::TControl* CellEditor, System::UnicodeString &CellString, bool &Allow);
	virtual void __fastcall CellEditSetData(int ACol, int ARow, Fmx::Controls::TControl* CellEditor, System::UnicodeString &CellString);
	virtual void __fastcall CellEditDone(int ACol, int ARow, Fmx::Controls::TControl* CellEditor);
	virtual void __fastcall GetCellReadOnly(int ACol, int ARow, bool &AReadOnly);
	virtual void __fastcall GetCellData(int ACol, int ARow, System::UnicodeString &ACellData);
	virtual void __fastcall GetCellProperties(int ACol, int ARow, Fmx::Tmsfncgridcell::TTMSFNCGridCell* ACell);
	virtual void __fastcall GetCellEditorProperties(int ACol, int ARow, Fmx::Controls::TControl* CellEditor);
	virtual void __fastcall GetCellClass(int ACol, int ARow, Fmx::Tmsfncgridcell::TTMSFNCGridCellClass &ACellClassType);
	virtual void __fastcall GetCellEditorType(int ACol, int ARow, Fmx::Tmsfncgriddata::TTMSFNCGridEditorType &ACellEditorType);
	virtual void __fastcall CellCheckBoxClick(int ACol, int ARow, Fmx::Tmsfncgridcell::TTMSFNCGridCell* ACell);
	virtual void __fastcall ExportNotification(Fmx::Tmsfncgriddata::TTMSFNCGridExportState AState, int ARow);
	void __fastcall LoadLookupList(Data::Db::TField* AField, System::Classes::TStrings* AList);
	virtual void __fastcall CellBeforeEdit(int ACol, int ARow);
	virtual void __fastcall CellBeforeEditExit(int ACol, int ARow, Fmx::Controls::TControl* CellEditor, bool &AllowExit);
	virtual void __fastcall CellEditCancel(int ACol, int ARow);
	virtual System::UnicodeString __fastcall GetVersion();
	virtual bool __fastcall CanCancelEdit();
	virtual bool __fastcall AlternateDisplayBuildUp();
	bool __fastcall CheckDatasetType();
	virtual int __fastcall GetBufferCount();
	virtual int __fastcall GetRecordCount();
	virtual int __fastcall GetRecordNo();
	System::UnicodeString __fastcall GetLookupKey(int AIndex);
	System::UnicodeString __fastcall HTMLDBReplace(System::UnicodeString AValue, Data::Db::TDataSet* ADataset, int ACol, int ARow);
	virtual System::UnicodeString __fastcall GetColumnDisplayName(int ACol);
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual TTMSFNCGridDatabaseAdapter(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCGridDatabaseAdapter();
	bool __fastcall CheckDataSet();
	__property TTMSFNCGridDatabaseAdapterItemDataLink* DataLink = {read=FDataLink};
	__property Data::Db::TField* FieldAtColumn[int ACol] = {read=GetFieldAtColumn};
	__property int FieldIndexAtColumn[int ACol] = {read=GetFieldIndexAtColumn};
	void __fastcall SetActiveRecord(int ARow);
	void __fastcall AddAllFields();
	void __fastcall RemoveAllFields();
	void __fastcall RemoveAllColumns();
	void __fastcall LoadAllDataAndDisconnect();
	__classmethod void __fastcall BlobFieldToPicture(Data::Db::TBlobField* AField, Fmx::Tmsfnctypes::TTMSFNCBitmap* ABitmap);
	
__published:
	__property System::UnicodeString Version = {read=GetVersion};
	__property Data::Db::TDataSource* DataSource = {read=GetDataSource, write=SetDataSource};
	__property TTMSFNCGridDatabaseAdapterColumns* Columns = {read=FColumns, write=SetColumns};
	__property bool AutoCreateColumns = {read=FAutoCreateColumns, write=FAutoCreateColumns, default=1};
	__property bool AutoRemoveColumns = {read=FAutoRemoveColumns, write=FAutoRemoveColumns, default=1};
	__property TTMSFNCGridDatabaseAdapterGetRecordCountEvent OnGetRecordCount = {read=FOnGetRecordCount, write=FOnGetRecordCount};
	__property TTMSFNCGridDatabaseAdapterGetHTMLTemplateDataEvent OnGetHTMLTemplateData = {read=FOnGetHTMLTemplateData, write=FOnGetHTMLTemplateData};
	__property TTMSFNCGridDatabaseAdapterGetHTMLTemplateEvent OnGetHTMLTemplate = {read=FOnGetHTMLTemplate, write=FOnGetHTMLTemplate};
	__property TTMSFNCGridDatabaseAdapterDataSetType DataSetType = {read=FDataSetType, write=SetDataSetType, default=0};
	__property bool DataSetTypeAuto = {read=FDataSetTypeAuto, write=FDataSetTypeAuto, default=1};
	__property bool ShowBooleanFields = {read=FShowBooleanFields, write=FShowBooleanFields, default=1};
	__property bool ShowPictureFields = {read=FShowPictureFields, write=FShowPictureFields, default=1};
	__property bool ShowMemoFields = {read=FShowMemoFields, write=FShowMemoFields, default=0};
	__property TTMSFNCGridDatabaseAdapterPostMode PostMode = {read=FPostMode, write=FPostMode, default=2};
};


//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x0);
static constexpr System::Int8 BLD_VER = System::Int8(0x11);
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCGridDatabaseAdapterUnidirectionalDataSet;
#define Fmx_Tmsfncgriddatabaseadapter_sTMSFNCGridDatabaseAdapterUnidirectionalDataSet System::LoadResourceString(&Fmx::Tmsfncgriddatabaseadapter::_sTMSFNCGridDatabaseAdapterUnidirectionalDataSet)
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCGridDatabaseAdapterNoGridAssigned;
#define Fmx_Tmsfncgriddatabaseadapter_sTMSFNCGridDatabaseAdapterNoGridAssigned System::LoadResourceString(&Fmx::Tmsfncgriddatabaseadapter::_sTMSFNCGridDatabaseAdapterNoGridAssigned)
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCGridDatabaseAdapterNoFieldsSpecified;
#define Fmx_Tmsfncgriddatabaseadapter_sTMSFNCGridDatabaseAdapterNoFieldsSpecified System::LoadResourceString(&Fmx::Tmsfncgriddatabaseadapter::_sTMSFNCGridDatabaseAdapterNoFieldsSpecified)
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCGridDatabaseAdapterCannotAddFieldsDataSource;
#define Fmx_Tmsfncgriddatabaseadapter_sTMSFNCGridDatabaseAdapterCannotAddFieldsDataSource System::LoadResourceString(&Fmx::Tmsfncgriddatabaseadapter::_sTMSFNCGridDatabaseAdapterCannotAddFieldsDataSource)
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCGridDatabaseAdapterCannotAddFieldsDataSet;
#define Fmx_Tmsfncgriddatabaseadapter_sTMSFNCGridDatabaseAdapterCannotAddFieldsDataSet System::LoadResourceString(&Fmx::Tmsfncgriddatabaseadapter::_sTMSFNCGridDatabaseAdapterCannotAddFieldsDataSet)
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCGridDatabaseAdapterCheckBoxField;
#define Fmx_Tmsfncgriddatabaseadapter_sTMSFNCGridDatabaseAdapterCheckBoxField System::LoadResourceString(&Fmx::Tmsfncgriddatabaseadapter::_sTMSFNCGridDatabaseAdapterCheckBoxField)
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCGridDatabaseAdapterPictureField;
#define Fmx_Tmsfncgriddatabaseadapter_sTMSFNCGridDatabaseAdapterPictureField System::LoadResourceString(&Fmx::Tmsfncgriddatabaseadapter::_sTMSFNCGridDatabaseAdapterPictureField)
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCGridDatabaseAdapterCheckPictureField;
#define Fmx_Tmsfncgriddatabaseadapter_sTMSFNCGridDatabaseAdapterCheckPictureField System::LoadResourceString(&Fmx::Tmsfncgriddatabaseadapter::_sTMSFNCGridDatabaseAdapterCheckPictureField)
}	/* namespace Tmsfncgriddatabaseadapter */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCGRIDDATABASEADAPTER)
using namespace Fmx::Tmsfncgriddatabaseadapter;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncgriddatabaseadapterHPP
