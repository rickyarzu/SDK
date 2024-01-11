// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCGridData.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncgriddataHPP
#define Fmx_TmsfncgriddataHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <System.SysUtils.hpp>
#include <FMX.Controls.hpp>
#include <FMX.TMSFNCGraphics.hpp>
#include <FMX.TMSFNCDataBinding.hpp>
#include <FMX.TMSFNCGridCell.hpp>
#include <FMX.TMSFNCGridDataUtil.hpp>
#include <FMX.Graphics.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.TMSFNCCustomScrollControl.hpp>
#include <System.Types.hpp>
#include <FMX.TMSFNCBitmapContainer.hpp>
#include <FMX.TMSFNCGridOptions.hpp>
#include <FMX.TMSFNCGraphicsTypes.hpp>
#include <System.UITypes.hpp>
#include <System.Generics.Collections.hpp>
#include <Xml.XMLIntf.hpp>
#include <Xml.xmldom.hpp>
#include <Xml.XMLDoc.hpp>
#include <FMX.ListBox.hpp>
#include <FMX.Types.hpp>
#include <FMX.StdCtrls.hpp>
#include <System.Generics.Defaults.hpp>
#include <FMX.TMSFNCCustomControl.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncgriddata
{
//-- forward type declarations -----------------------------------------------
struct TTMSFNCGridVariantItem;
class DELPHICLASS TTMSFNCGridVariantList;
struct TTMSFNCGridCellRec;
struct TTMSFNCGridCellRecRange;
class DELPHICLASS TTMSFNCGridCellProperty;
class DELPHICLASS TTMSFNCGridCellCheckBox;
class DELPHICLASS TTMSFNCGridCellDataCheckBox;
class DELPHICLASS TTMSFNCGridCellRadioButton;
class DELPHICLASS TTMSFNCGridCellButton;
class DELPHICLASS TTMSFNCGridCellBitmapName;
class DELPHICLASS TTMSFNCGridCellBitmap;
class DELPHICLASS TTMSFNCGridCellNode;
class DELPHICLASS TTMSFNCGridCellSummary;
class DELPHICLASS TTMSFNCGridCellProgressBar;
class DELPHICLASS TTMSFNCGridCellCombo;
class DELPHICLASS TTMSFNCGridSortIndexList;
class DELPHICLASS TTMSFNCGridDataList;
class DELPHICLASS TTMSFNCGridRowInfo;
class DELPHICLASS TTMSFNCGridFilterData;
class DELPHICLASS TTMSFNCGridFilter;
struct TTMSFNCGridCellCoordinate;
class DELPHICLASS TTMSFNCGridFileStringList;
class DELPHICLASS TTMSFNCGridSingleListItem;
class DELPHICLASS TTMSFNCGridSingleList;
class DELPHICLASS TTMSFNCGridCellMarkItem;
class DELPHICLASS TTMSFNCGridCellMarkList;
class DELPHICLASS TTMSFNCGridCellList;
class DELPHICLASS TTMSFNCGridColumn;
class DELPHICLASS TTMSFNCGridColumns;
class DELPHICLASS TTMSFNCGridRowInfoList;
class DELPHICLASS TTMSFNCGridIntegerList;
class DELPHICLASS TTMSFNCGridSList;
class DELPHICLASS TTMSFNCGridData;
//-- type declarations -------------------------------------------------------
typedef System::UnicodeString TTMSFNCGridCellData;

typedef Fmx::Controls::TControl TTMSFNCGridEditor;

_DECLARE_METACLASS(System::TMetaClass, TTMSFNCGridEditorClass);

typedef Xml::Xmlintf::_di_IXMLNode TTMSFNCGridXMLNode;

typedef Xml::Xmlintf::_di_IXMLDocument TTMSFNCGridXMLDocument;

typedef Xml::Xmldom::_di_IDOMNode TTMSFNCGridXMLDomNode;

struct DECLSPEC_DRECORD TTMSFNCGridVariantItem
{
public:
	System::UnicodeString FString;
	System::TObject* FObject;
};


typedef System::DynamicArray<TTMSFNCGridVariantItem> TTMSFNCGridVariantItemList;

typedef int __fastcall (*TTMSFNCGridVariantListSortCompare)(TTMSFNCGridVariantList* List, int Index1, int Index2);

class PASCALIMPLEMENTATION TTMSFNCGridVariantList : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
public:
	System::UnicodeString operator[](int Index) { return this->Values[Index]; }
	
private:
	TTMSFNCGridVariantItemList FList;
	int FCount;
	int FCapacity;
	bool FSorted;
	System::Types::TDuplicates FDuplicates;
	bool FCaseSensitive;
	System::Classes::TNotifyEvent FOnChange;
	System::Classes::TNotifyEvent FOnChanging;
	bool FOwnsObject;
	int FUpdateCount;
	void __fastcall ExchangeItems(int Index1, int Index2);
	void __fastcall Grow();
	void __fastcall QuickSort(int L, int R, TTMSFNCGridVariantListSortCompare SCompare);
	void __fastcall SetSorted(bool Value);
	void __fastcall SetCaseSensitive(const bool Value);
	System::UnicodeString __fastcall GetVariant(int Index);
	void __fastcall PutVariant(int Index, const System::UnicodeString Value);
	System::UnicodeString __fastcall GetTextStr();
	
protected:
	virtual void __fastcall Changed();
	virtual void __fastcall Changing();
	System::UnicodeString __fastcall Get(int Index);
	int __fastcall GetCapacity();
	int __fastcall GetCount();
	System::TObject* __fastcall GetObject(int Index);
	void __fastcall Put(int Index, const System::UnicodeString S);
	void __fastcall PutObject(int Index, System::TObject* AObject);
	void __fastcall SetCapacity(int NewCapacity);
	void __fastcall SetUpdateState(bool Updating);
	int __fastcall CompareVariants(const System::UnicodeString S1, const System::UnicodeString S2);
	virtual void __fastcall InsertItem(int Index, const System::UnicodeString S, System::TObject* AObject);
	void __fastcall Error(const System::UnicodeString Msg, int Data)/* overload */;
	virtual int __fastcall CompareStrings(const System::UnicodeString S1, const System::UnicodeString S2);
	System::UnicodeString __fastcall GetAsText(System::WideChar Delim);
	
public:
	__fastcall TTMSFNCGridVariantList()/* overload */;
	__fastcall TTMSFNCGridVariantList(bool OwnsObjects)/* overload */;
	__fastcall virtual ~TTMSFNCGridVariantList();
	void __fastcall BeginUpdate();
	void __fastcall EndUpdate();
	int __fastcall Add(const System::UnicodeString S);
	int __fastcall AddObject(const System::UnicodeString S, System::TObject* AObject);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	void __fastcall Clear();
	void __fastcall Delete(int Index);
	virtual void __fastcall Move(int CurIndex, int NewIndex);
	void __fastcall Exchange(int Index1, int Index2);
	virtual bool __fastcall Find(const System::UnicodeString S, int &Index);
	int __fastcall IndexOf(const System::UnicodeString S);
	void __fastcall Insert(int Index, const System::UnicodeString S);
	void __fastcall InsertObject(int Index, const System::UnicodeString S, System::TObject* AObject);
	virtual void __fastcall Sort();
	virtual void __fastcall CustomSort(TTMSFNCGridVariantListSortCompare Compare);
	__property int Count = {read=GetCount, nodefault};
	__property System::UnicodeString Values[int Index] = {read=GetVariant, write=PutVariant/*, default*/};
	__property System::TObject* Objects[int Index] = {read=GetObject, write=PutObject};
	__property System::Types::TDuplicates Duplicates = {read=FDuplicates, write=FDuplicates, nodefault};
	__property bool Sorted = {read=FSorted, write=SetSorted, nodefault};
	__property bool CaseSensitive = {read=FCaseSensitive, write=SetCaseSensitive, nodefault};
	__property System::Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
	__property System::Classes::TNotifyEvent OnChanging = {read=FOnChanging, write=FOnChanging};
	__property bool OwnsObjects = {read=FOwnsObject, write=FOwnsObject, nodefault};
	__property System::UnicodeString Text = {read=GetTextStr};
};


struct DECLSPEC_DRECORD TTMSFNCGridCellRec
{
public:
	int Col;
	int Row;
};


struct DECLSPEC_DRECORD TTMSFNCGridCellRecRange
{
public:
	int StartCol;
	int StartRow;
	int EndCol;
	int EndRow;
};


enum DECLSPEC_DENUM TTMSFNCGridCellState : unsigned char { csNormal, csFocused, csFixed, csFixedSelected, csSelected };

enum DECLSPEC_DENUM TTMSFNCGridSortDirection : unsigned char { sdAscending, sdDescending };

enum DECLSPEC_DENUM TTMSFNCGridSortFormat : unsigned char { ssAutomatic, ssAlphabetic, ssAlphabeticNoCase, ssNumeric, ssDate, ssHTML, ssCheckBox, ssCustom, ssRaw };

typedef void __fastcall (__closure *TTMSFNCGridSortFormatEvent)(System::TObject* Sender, int Col, TTMSFNCGridSortFormat &SortFormat, System::UnicodeString &APrefix, System::UnicodeString &ASuffix);

typedef void __fastcall (__closure *TTMSFNCGridCustomCompareEvent)(System::TObject* Sender, System::UnicodeString Value1, System::UnicodeString Value2, int &res);

typedef void __fastcall (__closure *TTMSFNCGridRawCompareEvent)(System::TObject* Sender, int Col, int Row1, int Row2, int &res);

typedef void __fastcall (__closure *TTMSFNCGridClipboardBeforePasteEvent)(System::TObject* Sender, int Col, int Row, System::UnicodeString &Value, bool &Allow);

typedef void __fastcall (__closure *TTMSFNCGridClipboardAfterPasteEvent)(System::TObject* Sender, int Col, int Row, System::UnicodeString Value);

typedef void __fastcall (__closure *TTMSFNCGridNeedFilterDropDownEvent)(System::TObject* Sender, int Col, int Row, bool &Allow);

typedef void __fastcall (__closure *TTMSFNCGridNeedFilterDropDownDataEvent)(System::TObject* Sender, int Col, int Row, System::Classes::TStrings* AValues);

typedef void __fastcall (__closure *TTMSFNCGridFilterSelectEvent)(System::TObject* Sender, int Col, System::UnicodeString &Condition);

typedef void __fastcall (__closure *TTMSFNCGridAfterApplyFilterEvent)(System::TObject* Sender, int Col, System::UnicodeString Condition, bool &UpdateCalculations);

typedef void __fastcall (__closure *TTMSFNCGridCellsChangedEvent)(System::TObject* Sender, const TTMSFNCGridCellRecRange &Cells);

typedef void __fastcall (__closure *TTMSFNCGridColumnCalcEvent)(System::TObject* Sender, int ACol, int FromRow, int ToRow, double &Res);

typedef void __fastcall (__closure *TTMSFNCGridOnSelectCell)(System::TObject* Sender, int ACol, int ARow, bool &Allow);

typedef void __fastcall (__closure *TTMSFNCGridOnSelectedCell)(System::TObject* Sender, int ACol, int ARow);

enum DECLSPEC_DENUM TTMSFNCGridColumnCalculation : unsigned char { ccNone, ccSum, ccAvg, ccCount, ccMin, ccMax, ccCUSTOM, ccDistinct, ccStdDev };

enum DECLSPEC_DENUM TTMSFNCGridCellCalcState : unsigned char { csNoCalc, csCalcOk, csCalcErr };

class PASCALIMPLEMENTATION TTMSFNCGridCellProperty : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FDefaultFont;
	System::Uitypes::TAlphaColor FColor;
	int FBaseCol;
	int FBaseRow;
	int FColSpan;
	int FRowSpan;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign FAlignHorz;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign FAlignVert;
	System::TObject* FControl;
	System::TObject* FObject;
	bool FReadOnly;
	int FPrintPageNr;
	System::Uitypes::TFontStyles FFontStyle;
	float FFontSize;
	System::UnicodeString FFontName;
	System::Uitypes::TAlphaColor FFontColor;
	int FAngle;
	System::UnicodeString FComment;
	System::Uitypes::TAlphaColor FCommentColor;
	System::Uitypes::TAlphaColor FBorderColor;
	int FBorderWidth;
	bool FWordWrap;
	bool FFixed;
	TTMSFNCGridCellCalcState FCalcState;
	System::Variant FCalcValue;
	int FNameIndex;
	
protected:
	__property int PrintPageNr = {read=FPrintPageNr, write=FPrintPageNr, nodefault};
	
public:
	virtual void __fastcall Assign(TTMSFNCGridCellProperty* Source);
	__fastcall TTMSFNCGridCellProperty(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* DefaultFont);
	__fastcall virtual ~TTMSFNCGridCellProperty();
	bool __fastcall IsBaseCell(int Col, int Row);
	void __fastcall FreeControl();
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign AlignHorz = {read=FAlignHorz, write=FAlignHorz, nodefault};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign AlignVert = {read=FAlignVert, write=FAlignVert, nodefault};
	__property int BaseCol = {read=FBaseCol, write=FBaseCol, nodefault};
	__property int BaseRow = {read=FBaseRow, write=FBaseRow, nodefault};
	__property System::Uitypes::TAlphaColor BorderColor = {read=FBorderColor, write=FBorderColor, nodefault};
	__property int BorderWidth = {read=FBorderWidth, write=FBorderWidth, nodefault};
	__property TTMSFNCGridCellCalcState CalcState = {read=FCalcState, write=FCalcState, nodefault};
	__property System::Variant CalcValue = {read=FCalcValue, write=FCalcValue};
	__property System::TObject* CellObject = {read=FObject, write=FObject};
	__property int ColSpan = {read=FColSpan, write=FColSpan, nodefault};
	__property System::Uitypes::TAlphaColor Color = {read=FColor, write=FColor, nodefault};
	__property System::UnicodeString Comment = {read=FComment, write=FComment};
	__property System::Uitypes::TAlphaColor CommentColor = {read=FCommentColor, write=FCommentColor, nodefault};
	__property System::TObject* Control = {read=FControl, write=FControl};
	__property bool Fixed = {read=FFixed, write=FFixed, nodefault};
	__property System::Uitypes::TFontStyles FontStyle = {read=FFontStyle, write=FFontStyle, nodefault};
	__property float FontSize = {read=FFontSize, write=FFontSize};
	__property System::UnicodeString FontName = {read=FFontName, write=FFontName};
	__property System::Uitypes::TAlphaColor FontColor = {read=FFontColor, write=FFontColor, nodefault};
	__property int NameIndex = {read=FNameIndex, write=FNameIndex, nodefault};
	__property bool ReadOnly = {read=FReadOnly, write=FReadOnly, nodefault};
	__property int RowSpan = {read=FRowSpan, write=FRowSpan, nodefault};
	__property bool WordWrap = {read=FWordWrap, write=FWordWrap, nodefault};
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


class PASCALIMPLEMENTATION TTMSFNCGridCellCheckBox : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	bool FChecked;
	bool FHeader;
	
public:
	__property bool Checked = {read=FChecked, write=FChecked, nodefault};
	__property bool Header = {read=FHeader, write=FHeader, nodefault};
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
	/* TObject.Create */ inline __fastcall TTMSFNCGridCellCheckBox() : System::TObject() { }
	/* TObject.Destroy */ inline __fastcall virtual ~TTMSFNCGridCellCheckBox() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCGridCellDataCheckBox : public System::TObject
{
	typedef System::TObject inherited;
	
public:
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
	/* TObject.Create */ inline __fastcall TTMSFNCGridCellDataCheckBox() : System::TObject() { }
	/* TObject.Destroy */ inline __fastcall virtual ~TTMSFNCGridCellDataCheckBox() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCGridCellRadioButton : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	bool FChecked;
	int FIndex;
	
public:
	__property bool Checked = {read=FChecked, write=FChecked, nodefault};
	__property int Index = {read=FIndex, write=FIndex, nodefault};
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
	/* TObject.Create */ inline __fastcall TTMSFNCGridCellRadioButton() : System::TObject() { }
	/* TObject.Destroy */ inline __fastcall virtual ~TTMSFNCGridCellRadioButton() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCGridCellButton : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	System::UnicodeString FText;
	int FWidth;
	int FHeight;
	
public:
	__property System::UnicodeString Text = {read=FText, write=FText};
	__property int Width = {read=FWidth, write=FWidth, nodefault};
	__property int Height = {read=FHeight, write=FHeight, nodefault};
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
	/* TObject.Create */ inline __fastcall TTMSFNCGridCellButton() : System::TObject() { }
	/* TObject.Destroy */ inline __fastcall virtual ~TTMSFNCGridCellButton() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCGridCellBitmapName : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	System::UnicodeString FBitmapName;
	bool FData;
	
public:
	__fastcall TTMSFNCGridCellBitmapName();
	__property bool Data = {read=FData, write=FData, nodefault};
	__property System::UnicodeString BitmapName = {read=FBitmapName, write=FBitmapName};
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
	/* TObject.Destroy */ inline __fastcall virtual ~TTMSFNCGridCellBitmapName() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCGridCellBitmap : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	Fmx::Tmsfnctypes::TTMSFNCBitmap* FBitmap;
	void __fastcall SetBitmap(Fmx::Tmsfnctypes::TTMSFNCBitmap* const Value);
	
public:
	__fastcall TTMSFNCGridCellBitmap(TTMSFNCGridData* AOwner);
	__fastcall virtual ~TTMSFNCGridCellBitmap();
	__property Fmx::Tmsfnctypes::TTMSFNCBitmap* Bitmap = {read=FBitmap, write=SetBitmap};
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


class PASCALIMPLEMENTATION TTMSFNCGridCellNode : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	Fmx::Tmsfncgridcell::TTMSFNCGridNodeState FState;
	int FSpan;
	
public:
	__property Fmx::Tmsfncgridcell::TTMSFNCGridNodeState State = {read=FState, write=FState, nodefault};
	__property int Span = {read=FSpan, write=FSpan, nodefault};
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
	/* TObject.Create */ inline __fastcall TTMSFNCGridCellNode() : System::TObject() { }
	/* TObject.Destroy */ inline __fastcall virtual ~TTMSFNCGridCellNode() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCGridCellSummary : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	bool FMerged;
	
public:
	__property bool Merged = {read=FMerged, write=FMerged, nodefault};
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
	/* TObject.Create */ inline __fastcall TTMSFNCGridCellSummary() : System::TObject() { }
	/* TObject.Destroy */ inline __fastcall virtual ~TTMSFNCGridCellSummary() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCGridCellProgressBar : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	float FValue;
	bool FData;
	
public:
	__property float Value = {read=FValue, write=FValue};
	__property bool Data = {read=FData, write=FData, nodefault};
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
	/* TObject.Create */ inline __fastcall TTMSFNCGridCellProgressBar() : System::TObject() { }
	/* TObject.Destroy */ inline __fastcall virtual ~TTMSFNCGridCellProgressBar() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCGridCellCombo : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	System::Classes::TStringList* FItems;
	void __fastcall SetItems(System::Classes::TStringList* const Value);
	
public:
	__fastcall TTMSFNCGridCellCombo();
	__fastcall virtual ~TTMSFNCGridCellCombo();
	__property System::Classes::TStringList* Items = {read=FItems, write=SetItems};
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


class PASCALIMPLEMENTATION TTMSFNCGridSortIndexList : public Fmx::Tmsfncgriddatautil::TTMSFNCGridIntList
{
	typedef Fmx::Tmsfncgriddatautil::TTMSFNCGridIntList inherited;
	
private:
	int __fastcall GetSortColumns(int i);
	bool __fastcall GetSortDirections(int i);
	void __fastcall SetSortColumns(int i, const int Value);
	void __fastcall SetSortDirections(int i, const bool Value);
	
public:
	System::UnicodeString __fastcall SaveToString();
	void __fastcall LoadFromString(System::UnicodeString s);
	void __fastcall AddIndex(int ColumnIndex, TTMSFNCGridSortDirection ADirection);
	int __fastcall FindIndex(int ColumnIndex);
	void __fastcall ToggleIndex(int ColumnIndex);
	__property int SortColumns[int i] = {read=GetSortColumns, write=SetSortColumns};
	__property bool SortDirections[int i] = {read=GetSortDirections, write=SetSortDirections};
public:
	/* {System_Generics_Collections}TList<System_Integer>.Create */ inline __fastcall TTMSFNCGridSortIndexList()/* overload */ : Fmx::Tmsfncgriddatautil::TTMSFNCGridIntList() { }
	/* {System_Generics_Collections}TList<System_Integer>.Create */ inline __fastcall TTMSFNCGridSortIndexList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<int> > AComparer)/* overload */ : Fmx::Tmsfncgriddatautil::TTMSFNCGridIntList(AComparer) { }
	/* {System_Generics_Collections}TList<System_Integer>.Create */ inline __fastcall TTMSFNCGridSortIndexList(System::Generics::Collections::TEnumerable__1<int>* const Collection)/* overload */ : Fmx::Tmsfncgriddatautil::TTMSFNCGridIntList(Collection) { }
	/* {System_Generics_Collections}TList<System_Integer>.Create */ inline __fastcall TTMSFNCGridSortIndexList(const int *Values, const int Values_High)/* overload */ : Fmx::Tmsfncgriddatautil::TTMSFNCGridIntList(Values, Values_High) { }
	/* {System_Generics_Collections}TList<System_Integer>.Destroy */ inline __fastcall virtual ~TTMSFNCGridSortIndexList() { }
	
};


enum DECLSPEC_DENUM TTMSFNCGridFilterCells : unsigned char { fcVirtual, fcNormal, fcStripHTML, fcRow };

enum DECLSPEC_DENUM TTMSFNCGridFilterOperation : unsigned char { foSHORT, foNONE, foAND, foXOR, foOR };

enum DECLSPEC_DENUM TTMSFNCGridRowState : unsigned char { rsDefault, rsSelected };

enum DECLSPEC_DENUM TTMSFNCClipOperation : unsigned char { coCut, coCopy, coNone };

class PASCALIMPLEMENTATION TTMSFNCGridDataList : public TTMSFNCGridVariantList
{
	typedef TTMSFNCGridVariantList inherited;
	
public:
	/* TTMSFNCGridVariantList.Create */ inline __fastcall TTMSFNCGridDataList()/* overload */ : TTMSFNCGridVariantList() { }
	/* TTMSFNCGridVariantList.Create */ inline __fastcall TTMSFNCGridDataList(bool OwnsObjects)/* overload */ : TTMSFNCGridVariantList(OwnsObjects) { }
	/* TTMSFNCGridVariantList.Destroy */ inline __fastcall virtual ~TTMSFNCGridDataList() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCGridRowInfo : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	TTMSFNCGridDataList* FData;
	TTMSFNCGridRowState FState;
	void __fastcall SetState(const TTMSFNCGridRowState Value);
	
public:
	__fastcall TTMSFNCGridRowInfo();
	__fastcall virtual ~TTMSFNCGridRowInfo();
	__property TTMSFNCGridDataList* Data = {read=FData};
	__property TTMSFNCGridRowState State = {read=FState, write=SetState, nodefault};
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


class PASCALIMPLEMENTATION TTMSFNCGridFilterData : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	short FColumn;
	System::UnicodeString FCondition;
	bool FCaseSensitive;
	System::UnicodeString FSuffix;
	System::UnicodeString FPrefix;
	TTMSFNCGridFilterOperation FOperation;
	TTMSFNCGridFilterCells FData;
	
public:
	__fastcall virtual TTMSFNCGridFilterData(System::Classes::TCollection* ACollection);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property short Column = {read=FColumn, write=FColumn, nodefault};
	__property System::UnicodeString Condition = {read=FCondition, write=FCondition};
	__property bool CaseSensitive = {read=FCaseSensitive, write=FCaseSensitive, default=1};
	__property TTMSFNCGridFilterCells Data = {read=FData, write=FData, default=0};
	__property System::UnicodeString Prefix = {read=FPrefix, write=FPrefix};
	__property System::UnicodeString Suffix = {read=FSuffix, write=FSuffix};
	__property TTMSFNCGridFilterOperation Operation = {read=FOperation, write=FOperation, nodefault};
public:
	/* TCollectionItem.Destroy */ inline __fastcall virtual ~TTMSFNCGridFilterData() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCGridFilter : public Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCGridFilterData*>
{
	typedef Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCGridFilterData*> inherited;
	
public:
	TTMSFNCGridFilterData* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCGridData* FOwner;
	HIDESBASE TTMSFNCGridFilterData* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCGridFilterData* const Value);
	TTMSFNCGridFilterData* __fastcall GetColFilter(int Col);
	
public:
	__fastcall TTMSFNCGridFilter(TTMSFNCGridData* AOwner);
	HIDESBASE TTMSFNCGridFilterData* __fastcall Add();
	HIDESBASE TTMSFNCGridFilterData* __fastcall Insert(int index);
	__property TTMSFNCGridFilterData* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	__property TTMSFNCGridFilterData* ColumnFilter[int Col] = {read=GetColFilter};
	bool __fastcall HasFilter(int Col);
	void __fastcall RemoveColumnFilter(int Col);
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCGridFilter() { }
	
};


struct DECLSPEC_DRECORD TTMSFNCGridCellCoordinate
{
public:
	int Col;
	int Row;
};


class PASCALIMPLEMENTATION TTMSFNCGridFileStringList : public System::Classes::TStringList
{
	typedef System::Classes::TStringList inherited;
	
private:
	int fp;
	System::UnicodeString cache;
	bool __fastcall GetEOF();
	
public:
	void __fastcall Reset();
	void __fastcall ReadLn(System::UnicodeString &s);
	void __fastcall Write(System::UnicodeString s);
	void __fastcall WriteLn(System::UnicodeString s);
	__property bool Eof = {read=GetEOF, nodefault};
public:
	/* TStringList.Create */ inline __fastcall TTMSFNCGridFileStringList()/* overload */ : System::Classes::TStringList() { }
	/* TStringList.Create */ inline __fastcall TTMSFNCGridFileStringList(bool OwnsObjects)/* overload */ : System::Classes::TStringList(OwnsObjects) { }
	/* TStringList.Create */ inline __fastcall TTMSFNCGridFileStringList(System::WideChar QuoteChar, System::WideChar Delimiter)/* overload */ : System::Classes::TStringList(QuoteChar, Delimiter) { }
	/* TStringList.Create */ inline __fastcall TTMSFNCGridFileStringList(System::WideChar QuoteChar, System::WideChar Delimiter, System::Classes::TStringsOptions Options)/* overload */ : System::Classes::TStringList(QuoteChar, Delimiter, Options) { }
	/* TStringList.Create */ inline __fastcall TTMSFNCGridFileStringList(System::Types::TDuplicates Duplicates, bool Sorted, bool CaseSensitive)/* overload */ : System::Classes::TStringList(Duplicates, Sorted, CaseSensitive) { }
	/* TStringList.Destroy */ inline __fastcall virtual ~TTMSFNCGridFileStringList() { }
	
};


enum DECLSPEC_DENUM TTMSFNCGridFindParameters : unsigned char { fnMatchCase, fnMatchFull, fnMatchRegular, fnDirectionLeftRight, fnMatchStart, fnFindInCurrentRow, fnFindInCurrentCol, fnIncludeFixed, fnAutoGoto, fnIgnoreHTMLTags, fnBackward, fnIncludeHiddenColumns, fnFindInPresetCol, fnFindInPresetRow, fnSelectedCells, fnIncludeHiddenRows };

typedef System::Set<TTMSFNCGridFindParameters, TTMSFNCGridFindParameters::fnMatchCase, TTMSFNCGridFindParameters::fnIncludeHiddenRows> TTMSFNCGridFindParams;

class PASCALIMPLEMENTATION TTMSFNCGridSingleListItem : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	TTMSFNCGridData* FOwner;
	float FValue;
	int FCellVal;
	void __fastcall SetValue(const float Value);
	
public:
	__fastcall virtual TTMSFNCGridSingleListItem(System::Classes::TCollection* Collection);
	
__published:
	__property float Value = {read=FValue, write=SetValue};
	__property int CellVal = {read=FCellVal, write=FCellVal, nodefault};
public:
	/* TCollectionItem.Destroy */ inline __fastcall virtual ~TTMSFNCGridSingleListItem() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCGridSingleList : public Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCGridSingleListItem*>
{
	typedef Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCGridSingleListItem*> inherited;
	
public:
	TTMSFNCGridSingleListItem* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCGridData* FOwner;
	System::Classes::TNotifyEvent FOnChange;
	HIDESBASE TTMSFNCGridSingleListItem* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCGridSingleListItem* const Value);
	
protected:
	__property System::Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
	
public:
	int __fastcall IndexOf(int ACellVal);
	__fastcall TTMSFNCGridSingleList(TTMSFNCGridData* AOwner);
	__property TTMSFNCGridSingleListItem* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	HIDESBASE TTMSFNCGridSingleListItem* __fastcall Add();
	HIDESBASE TTMSFNCGridSingleListItem* __fastcall Insert(int Index);
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCGridSingleList() { }
	
};


enum DECLSPEC_DENUM TTMSFNCGridMarkType : unsigned char { mtHighlight, mtError };

class PASCALIMPLEMENTATION TTMSFNCGridCellMarkItem : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	TTMSFNCGridCellRecRange FCellRange;
	System::UnicodeString FValue;
	bool FCaseSensitive;
	TTMSFNCGridMarkType FMarkType;
	
public:
	__property TTMSFNCGridCellRecRange CellRange = {read=FCellRange, write=FCellRange};
	
__published:
	__property bool CaseSensitive = {read=FCaseSensitive, write=FCaseSensitive, nodefault};
	__property System::UnicodeString Value = {read=FValue, write=FValue};
	__property TTMSFNCGridMarkType MarkType = {read=FMarkType, write=FMarkType, nodefault};
public:
	/* TCollectionItem.Create */ inline __fastcall virtual TTMSFNCGridCellMarkItem(System::Classes::TCollection* Collection) : System::Classes::TCollectionItem(Collection) { }
	/* TCollectionItem.Destroy */ inline __fastcall virtual ~TTMSFNCGridCellMarkItem() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCGridCellMarkList : public Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCGridCellMarkItem*>
{
	typedef Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCGridCellMarkItem*> inherited;
	
public:
	TTMSFNCGridCellMarkItem* operator[](int Index) { return this->Items[Index]; }
	
private:
	HIDESBASE TTMSFNCGridCellMarkItem* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCGridCellMarkItem* const Value);
	
public:
	__fastcall TTMSFNCGridCellMarkList(TTMSFNCGridData* AOwner);
	__property TTMSFNCGridCellMarkItem* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	HIDESBASE TTMSFNCGridCellMarkItem* __fastcall Add();
	HIDESBASE TTMSFNCGridCellMarkItem* __fastcall Insert(int Index);
	void __fastcall RemoveMarker(const TTMSFNCGridCellRecRange &CellRange, TTMSFNCGridMarkType MarkerType);
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCGridCellMarkList() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCGridCellList : public System::Generics::Collections::TList__1<TTMSFNCGridCellRec>
{
	typedef System::Generics::Collections::TList__1<TTMSFNCGridCellRec> inherited;
	
public:
	__fastcall TTMSFNCGridCellList();
	__fastcall virtual ~TTMSFNCGridCellList();
	void __fastcall AddCell(const TTMSFNCGridCellRec &Cell);
	void __fastcall DeleteCell(const TTMSFNCGridCellRec &Cell)/* overload */;
	void __fastcall DeleteCell(int index)/* overload */;
	HIDESBASE void __fastcall Clear();
	int __fastcall Find(const TTMSFNCGridCellRec &Cell);
	int __fastcall FindFixed(const TTMSFNCGridCellRec &Cell);
};


enum DECLSPEC_DENUM TTMSFNCGridExportState : unsigned char { esExportStart, esExportNewRow, esExportDone, esExportSelRow, esExportFail, esExportNextRow, esExportFindRow };

enum DECLSPEC_DENUM TTMSFNCGridImportState : unsigned char { isImportStart, isImportNewRow, isImportDone, isImportSelRow };

enum DECLSPEC_DENUM TTMSFNCGridEditorType : unsigned char { etEdit, etNumericEdit, etSignedNumericEdit, etFloatEdit, etSignedFloatEdit, etUppercaseEdit, etMixedCaseEdit, etLowerCaseEdit, etMoneyEdit, etHexEdit, etAlphaNumericEdit, etValidCharsEdit, etComboBox, etSpinBox, etDatePicker, etColorPicker, etTrackBar, etMemo, etCustom };

typedef void __fastcall (__closure *TTMSFNCGridIOProgressEvent)(System::TObject* Sender, int CurrentRow, int TotalRows, short Progres);

typedef void __fastcall (__closure *TTMSFNCGridIOEvent)(System::TObject* Sender, int Col, int Row, System::UnicodeString &Value);

enum DECLSPEC_DENUM TTMSFNCGridColumnType : unsigned char { ctDefault, ctButton, ctCheckBox, ctProgressBar, ctRadioButton };

class PASCALIMPLEMENTATION TTMSFNCGridColumn : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	TTMSFNCGridData* FGrid;
	System::Uitypes::TAlphaColor FColor;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign FVertAlignment;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign FHorzAlignment;
	TTMSFNCGridSortFormat FSortFormat;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FFont;
	TTMSFNCGridEditorType FEditor;
	bool FReadOnly;
	System::Uitypes::TAlphaColor FBorderColor;
	System::UnicodeString FID;
	int FBorderWidth;
	bool FWordWrap;
	bool FFixed;
	System::UnicodeString FSortPrefix;
	System::UnicodeString FSortSuffix;
	NativeInt FTag;
	System::Classes::TStringList* FComboItems;
	TTMSFNCGridColumnType FColumnType;
	System::UnicodeString FName;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FFixedFont;
	void __fastcall SetColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetHorzAlignment(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign Value);
	void __fastcall SetVertAlignment(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign Value);
	void __fastcall SetFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetBorderColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetBorderWidth(const int Value);
	void __fastcall SetWordWrap(const bool Value);
	void __fastcall SetFixed(const bool Value);
	void __fastcall SetComboItems(System::Classes::TStringList* const Value);
	void __fastcall SetColumnType(const TTMSFNCGridColumnType Value);
	float __fastcall GetWidth();
	void __fastcall SetWidth(const float Value);
	void __fastcall SetFixedFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	bool __fastcall IsWidthStored();
	
protected:
	HIDESBASE void __fastcall Changed();
	virtual System::UnicodeString __fastcall GetDisplayName();
	
public:
	__fastcall virtual TTMSFNCGridColumn(System::Classes::TCollection* Collection);
	__fastcall virtual ~TTMSFNCGridColumn();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property System::Uitypes::TAlphaColor BorderColor = {read=FBorderColor, write=SetBorderColor, default=-4144960};
	__property int BorderWidth = {read=FBorderWidth, write=SetBorderWidth, nodefault};
	__property System::Uitypes::TAlphaColor Color = {read=FColor, write=SetColor, default=0};
	__property TTMSFNCGridColumnType ColumnType = {read=FColumnType, write=SetColumnType, default=0};
	__property System::Classes::TStringList* ComboItems = {read=FComboItems, write=SetComboItems};
	__property TTMSFNCGridEditorType Editor = {read=FEditor, write=FEditor, default=0};
	__property bool Fixed = {read=FFixed, write=SetFixed, default=0};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FixedFont = {read=FFixedFont, write=SetFixedFont};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* Font = {read=FFont, write=SetFont};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign HorzAlignment = {read=FHorzAlignment, write=SetHorzAlignment, default=1};
	__property System::UnicodeString ID = {read=FID, write=FID};
	__property System::UnicodeString Name = {read=FName, write=FName};
	__property bool ReadOnly = {read=FReadOnly, write=FReadOnly, default=0};
	__property TTMSFNCGridSortFormat SortFormat = {read=FSortFormat, write=FSortFormat, default=0};
	__property System::UnicodeString SortSuffix = {read=FSortSuffix, write=FSortSuffix};
	__property System::UnicodeString SortPrefix = {read=FSortPrefix, write=FSortPrefix};
	__property NativeInt Tag = {read=FTag, write=FTag, default=0};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign VertAlignment = {read=FVertAlignment, write=SetVertAlignment, default=0};
	__property float Width = {read=GetWidth, write=SetWidth, stored=IsWidthStored};
	__property bool WordWrap = {read=FWordWrap, write=SetWordWrap, default=0};
};


class PASCALIMPLEMENTATION TTMSFNCGridColumns : public Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCGridColumn*>
{
	typedef Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCGridColumn*> inherited;
	
public:
	TTMSFNCGridColumn* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCGridData* FGrid;
	HIDESBASE TTMSFNCGridColumn* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCGridColumn* const Value);
	
public:
	__fastcall virtual TTMSFNCGridColumns(TTMSFNCGridData* AGrid);
	TTMSFNCGridColumn* __fastcall ColumnByName(System::UnicodeString AName);
	TTMSFNCGridColumn* __fastcall ColumnByID(System::UnicodeString AID);
	__property TTMSFNCGridColumn* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	HIDESBASE TTMSFNCGridColumn* __fastcall Add();
	HIDESBASE TTMSFNCGridColumn* __fastcall Insert(int Index);
	TTMSFNCGridColumn* __fastcall ByID(System::UnicodeString Id);
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCGridColumns() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCGridRowInfoList : public System::Generics::Collections::TList__1<TTMSFNCGridRowInfo*>
{
	typedef System::Generics::Collections::TList__1<TTMSFNCGridRowInfo*> inherited;
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCGridData_TTMSFNCGridRowInfo>.Create */ inline __fastcall TTMSFNCGridRowInfoList()/* overload */ : System::Generics::Collections::TList__1<TTMSFNCGridRowInfo*>() { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCGridData_TTMSFNCGridRowInfo>.Create */ inline __fastcall TTMSFNCGridRowInfoList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCGridRowInfo*> > AComparer)/* overload */ : System::Generics::Collections::TList__1<TTMSFNCGridRowInfo*>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCGridData_TTMSFNCGridRowInfo>.Create */ inline __fastcall TTMSFNCGridRowInfoList(System::Generics::Collections::TEnumerable__1<TTMSFNCGridRowInfo*>* const Collection)/* overload */ : System::Generics::Collections::TList__1<TTMSFNCGridRowInfo*>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCGridData_TTMSFNCGridRowInfo>.Create */ inline __fastcall TTMSFNCGridRowInfoList(TTMSFNCGridRowInfo* const *Values, const int Values_High)/* overload */ : System::Generics::Collections::TList__1<TTMSFNCGridRowInfo*>(Values, Values_High) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCGridData_TTMSFNCGridRowInfo>.Destroy */ inline __fastcall virtual ~TTMSFNCGridRowInfoList() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCGridIntegerList : public System::Generics::Collections::TList__1<int>
{
	typedef System::Generics::Collections::TList__1<int> inherited;
	
public:
	/* {System_Generics_Collections}TList<System_Integer>.Create */ inline __fastcall TTMSFNCGridIntegerList()/* overload */ : System::Generics::Collections::TList__1<int>() { }
	/* {System_Generics_Collections}TList<System_Integer>.Create */ inline __fastcall TTMSFNCGridIntegerList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<int> > AComparer)/* overload */ : System::Generics::Collections::TList__1<int>(AComparer) { }
	/* {System_Generics_Collections}TList<System_Integer>.Create */ inline __fastcall TTMSFNCGridIntegerList(System::Generics::Collections::TEnumerable__1<int>* const Collection)/* overload */ : System::Generics::Collections::TList__1<int>(Collection) { }
	/* {System_Generics_Collections}TList<System_Integer>.Create */ inline __fastcall TTMSFNCGridIntegerList(const int *Values, const int Values_High)/* overload */ : System::Generics::Collections::TList__1<int>(Values, Values_High) { }
	/* {System_Generics_Collections}TList<System_Integer>.Destroy */ inline __fastcall virtual ~TTMSFNCGridIntegerList() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCGridSList : public System::Generics::Collections::TList__1<float>
{
	typedef System::Generics::Collections::TList__1<float> inherited;
	
public:
	/* {System_Generics_Collections}TList<System_Single>.Create */ inline __fastcall TTMSFNCGridSList()/* overload */ : System::Generics::Collections::TList__1<float>() { }
	/* {System_Generics_Collections}TList<System_Single>.Create */ inline __fastcall TTMSFNCGridSList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<float> > AComparer)/* overload */ : System::Generics::Collections::TList__1<float>(AComparer) { }
	/* {System_Generics_Collections}TList<System_Single>.Create */ inline __fastcall TTMSFNCGridSList(System::Generics::Collections::TEnumerable__1<float>* const Collection)/* overload */ : System::Generics::Collections::TList__1<float>(Collection) { }
	/* {System_Generics_Collections}TList<System_Single>.Create */ inline __fastcall TTMSFNCGridSList(const float *Values, const int Values_High)/* overload */ : System::Generics::Collections::TList__1<float>(Values, Values_High) { }
	/* {System_Generics_Collections}TList<System_Single>.Destroy */ inline __fastcall virtual ~TTMSFNCGridSList() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCGridData : public Fmx::Tmsfnccustomscrollcontrol::TTMSFNCCustomScrollControl
{
	typedef Fmx::Tmsfnccustomscrollcontrol::TTMSFNCCustomScrollControl inherited;
	
private:
	Fmx::Tmsfncgridcell::TTMSFNCGridCellLayout* FDefaultLayout;
	float FOldSize;
	bool FInternalColumnUpdate;
	bool FInternalRowUpdate;
	TTMSFNCGridCellProperty* FColumnProp;
	TTMSFNCGridColumns* FColumns;
	bool FUseColumns;
	bool FFirstCellApply;
	bool FBlockUpdate;
	TTMSFNCGridCellRec FFocusedCell;
	TTMSFNCGridCellRec FStartCell;
	TTMSFNCGridCellRec FStopCell;
	TTMSFNCGridRowInfoList* FRowList;
	TTMSFNCGridIntegerList* FRowDisplayList;
	TTMSFNCGridIntegerList* FColumnDisplayList;
	TTMSFNCGridIntegerList* FSuppressedColumnList;
	TTMSFNCGridIntegerList* FHiddenColumnList;
	TTMSFNCGridIntegerList* FHiddenRowList;
	Fmx::Tmsfncgriddatautil::TTMSFNCGridIntList* FColSelect;
	TTMSFNCGridCellList* FSelectedCells;
	int FRowCount;
	bool FFilterApplied;
	TTMSFNCGridSortDirection FSortDirection;
	int FSortColumn;
	int FSortDir;
	System::Types::TPoint FIOOffset;
	TTMSFNCGridFilter* FFilter;
	TTMSFNCGridSortIndexList* FSortIndexes;
	Fmx::Tmsfncgriddatautil::TTMSFNCGridIntList* FCellCalcList;
	bool FSaveHiddenCells;
	int FFindCol;
	int FFindRow;
	System::Types::TPoint FSearchCell;
	System::UnicodeString FSearchCache;
	TTMSFNCGridFindParams FFindParams;
	bool FFindBusy;
	int FColumnCount;
	int FFixedRows;
	int FFixedColumns;
	TTMSFNCGridSingleList* FRowH;
	int FFixedRightColumns;
	TTMSFNCGridSingleList* FColumnW;
	TTMSFNCGridSingleList* FOrigColumnW;
	int FFixedFooterRows;
	float FDefaultRowHeight;
	float FDefaultColumnWidth;
	System::UnicodeString FCheckFalse;
	System::UnicodeString FCheckTrue;
	short FPrevProgress;
	int FGroupColumn;
	float FGroupWidth;
	System::UnicodeString FGroupCaption;
	System::UnicodeString FGroupFooter;
	bool FIsGrouping;
	System::UnicodeString FFloatFormat;
	System::Types::TPoint FClipTopLeft;
	TTMSFNCClipOperation FClipOperation;
	Fmx::Tmsfncgriddatautil::TTMSFNCGridIntList* FColumnOrder;
	Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* FBitmapContainer;
	TTMSFNCGridIOProgressEvent FOnIOProgress;
	TTMSFNCGridSortFormatEvent FOnSortFormat;
	TTMSFNCGridCustomCompareEvent FOnCustomCompare;
	TTMSFNCGridRawCompareEvent FOnRawCompare;
	Fmx::Tmsfncgridoptions::TTMSFNCGridOptions* FOptions;
	TTMSFNCGridCellMarkList* FMarkList;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FDefaultFont;
	TTMSFNCGridClipboardAfterPasteEvent FOnClipboardAfterPasteCell;
	TTMSFNCGridClipboardBeforePasteEvent FOnClipboardBeforePasteCell;
	TTMSFNCGridCellsChangedEvent FOnCellsChanged;
	TTMSFNCGridCellsChangedEvent FOnClipboardPaste;
	TTMSFNCGridIOEvent FOnLoadCell;
	TTMSFNCGridIOEvent FOnSaveCell;
	TTMSFNCGridNeedFilterDropDownEvent FOnNeedFilterDropDown;
	TTMSFNCGridNeedFilterDropDownDataEvent FOnNeedFilterDropDownData;
	TTMSFNCGridFilterSelectEvent FOnFilterSelect;
	TTMSFNCGridColumnCalcEvent FOnGroupCalc;
	TTMSFNCGridColumnCalcEvent FOnColumnCalc;
	TTMSFNCGridAfterApplyFilterEvent FOnAfterApplyFilter;
	bool FBlockSelectEventHandler;
	TTMSFNCGridOnSelectedCell FOnSelectedCell;
	TTMSFNCGridOnSelectCell FOnSelectCell;
	Fmx::Tmsfncgraphicstypes::TTMSFNCAppearanceGlobalFont* FGlobalFont;
	void __fastcall SetDefaultColumnWidth(const float Value);
	void __fastcall SetDefaultRowHeight(const float Value);
	void __fastcall EnsureRow(int Row);
	void __fastcall EnsureCol(int Col);
	System::UnicodeString __fastcall GetCells(int Col, int Row);
	void __fastcall SetCells(int Col, int Row, const System::UnicodeString Value);
	System::TObject* __fastcall GetIntObjects(int Col, int Row);
	void __fastcall SetIntObjects(int Col, int Row, System::TObject* const Value);
	int __fastcall GetRowCount();
	int __fastcall GetHiddenColCount();
	int __fastcall GetHiddenRowCount();
	int __fastcall GetTotalColCount();
	int __fastcall GetTotalRowCount();
	System::UnicodeString __fastcall GetAllCells(int Col, int Row);
	void __fastcall SetAllCells(int Col, int Row, const System::UnicodeString Value);
	System::Uitypes::TAlphaColor __fastcall GetColors(int Col, int Row);
	void __fastcall SetColors(int Col, int Row, const System::Uitypes::TAlphaColor Value);
	void __fastcall SetColumnCount(const int Value);
	void __fastcall SetRowCount(const int Value);
	void __fastcall SetColumnW(TTMSFNCGridSingleList* const Value);
	void __fastcall SetFixedColumns(const int Value);
	void __fastcall SetFixedFooterRows(const int Value);
	void __fastcall SetFixedRightColumns(const int Value);
	void __fastcall SetFixedRows(const int Value);
	void __fastcall SetRowH(TTMSFNCGridSingleList* const Value);
	int __fastcall GetColumnCount();
	void __fastcall SetColWidths(int Col, const float Value);
	void __fastcall SetRowHeights(int Row, const float Value);
	TTMSFNCGridCellRecRange __fastcall GetSelection();
	void __fastcall SetSelection(const TTMSFNCGridCellRecRange &Value);
	TTMSFNCGridCellRec __fastcall GetFocusedCell();
	void __fastcall SetFocusedCell(const TTMSFNCGridCellRec &Value);
	TTMSFNCGridCellProperty* __fastcall GetCellProps(int Col, int Row);
	bool __fastcall GetRowSelect(int Row);
	void __fastcall SetSortColumn(const int Value);
	void __fastcall SetSortDirection(const TTMSFNCGridSortDirection Value);
	void __fastcall SetOptions(Fmx::Tmsfncgridoptions::TTMSFNCGridOptions* const Value);
	System::TObject* __fastcall GetObjects(int Col, int Row);
	void __fastcall SetObjects(int Col, int Row, System::TObject* const Value);
	double __fastcall GetAllFloats(int Col, int Row);
	void __fastcall SetAllFloats(int Col, int Row, const double Value);
	int __fastcall GetAllInts(int Col, int Row);
	void __fastcall SetAllInts(int Col, int Row, const int Value);
	int __fastcall GetMergeCellPrintPageNr(int Col, int Row);
	void __fastcall SetMergeCellPrintPageNr(int Col, int Row, const int Value);
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign __fastcall GetHorzAlignments(int Col, int Row);
	void __fastcall SetHorzAlignments(int Col, int Row, const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign Value);
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign __fastcall GetVertAlignments(int Col, int Row);
	void __fastcall SetVertAlignments(int Col, int Row, const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign Value);
	System::Uitypes::TFontStyles __fastcall GetFontStyles(int Col, int Row);
	void __fastcall SetFontStyles(int Col, int Row, const System::Uitypes::TFontStyles Value);
	float __fastcall GetFontSizes(int Col, int Row);
	void __fastcall SetFontSizes(int Col, int Row, const float Value);
	System::UnicodeString __fastcall GetFontNames(int Col, int Row);
	void __fastcall SetFontNames(int Col, int Row, const System::UnicodeString Value);
	System::Uitypes::TAlphaColor __fastcall GetFontColors(int Col, int Row);
	void __fastcall SetFontColors(int Col, int Row, const System::Uitypes::TAlphaColor Value);
	int __fastcall GetRowSelectionCount();
	bool __fastcall GetReadOnlys(int Col, int Row);
	void __fastcall SetReadOnlys(int Col, int Row, const bool Value);
	System::UnicodeString __fastcall SaveToHTMLString(System::UnicodeString dir);
	bool __fastcall GetColumnSelect(int Col);
	int __fastcall GetColumnSelectionCount();
	void __fastcall SetColumnSelect(int Col, const bool Value);
	bool __fastcall GetCellSelect(int Col, int Row);
	int __fastcall GetCellSelectionCount();
	void __fastcall SetCellSelect(int Col, int Row, const bool Value);
	int __fastcall GetSelectedColumn(int index);
	int __fastcall GetSelectedRow(int index);
	TTMSFNCGridCellRec __fastcall GetSelectedCell(int index);
	bool __fastcall GetCheckBoxState(int Col, int Row);
	void __fastcall SetCheckBoxState(int Col, int Row, const bool Value);
	bool __fastcall GetFixedCellSelect(int Col, int Row);
	System::UnicodeString __fastcall GetComments(int Col, int Row);
	void __fastcall SetComments(int Col, int Row, const System::UnicodeString Value);
	System::Uitypes::TAlphaColor __fastcall GetCommentColors(int Col, int Row);
	void __fastcall SetCommentColors(int Col, int Row, const System::Uitypes::TAlphaColor Value);
	TTMSFNCGridColumnCalculation __fastcall GetColumnCalculation(int Col);
	void __fastcall SetColumnCalculation(int Col, const TTMSFNCGridColumnCalculation Value);
	void __fastcall UpdateColumnCalc(int Col, TTMSFNCGridColumnCalculation Value);
	double __fastcall GetFloats(int Col, int Row);
	void __fastcall SetFloats(int Col, int Row, const double Value);
	int __fastcall GetInts(int Col, int Row);
	void __fastcall SetInts(int Col, int Row, const int Value);
	System::UnicodeString __fastcall GetStrippedCells(int Col, int Row);
	System::UnicodeString __fastcall GetRowText(int Row);
	Fmx::Tmsfnctypes::TTMSFNCBitmap* __fastcall GetBitmaps(int Col, int Row);
	bool __fastcall GetBooleans(int Col, int Row);
	void __fastcall SetBitmaps(int Col, int Row, Fmx::Tmsfnctypes::TTMSFNCBitmap* const Value);
	void __fastcall SetBooleans(int Col, int Row, const bool Value);
	void __fastcall SetColumns(TTMSFNCGridColumns* const Value);
	void __fastcall SetOrigColumnW(TTMSFNCGridSingleList* const Value);
	bool __fastcall IsDefaultColumnWidthStored();
	bool __fastcall IsDefaultRowHeightStored();
	void __fastcall SetRowText(int Row, const System::UnicodeString Value);
	Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* __fastcall GetBitmapContainer();
	void __fastcall SetBitmapContainer(Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* const Value);
	TTMSFNCGridCellCalcState __fastcall GetCellCalcStates(int Col, int Row);
	void __fastcall SetCellCalcStates(int Col, int Row, const TTMSFNCGridCellCalcState Value);
	System::Variant __fastcall GetCalcValues(int Col, int Row);
	void __fastcall SetCalcValues(int Col, int Row, const System::Variant &Value);
	void __fastcall SetDefaultFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetGlobalFont(Fmx::Tmsfncgraphicstypes::TTMSFNCAppearanceGlobalFont* const Value);
	
protected:
	int __fastcall GetDataRowCount();
	int __fastcall DataGetItemIndex();
	void __fastcall ClearData();
	void __fastcall SetDataColumnCount(int AValue);
	void __fastcall SetDataRowCount(int AValue);
	void __fastcall SetDataValue(int AColumn, int ARow, System::UnicodeString AValue);
	void __fastcall SetDataHeader(int AColumn, System::UnicodeString AValue);
	void __fastcall DataBeginUpdate();
	void __fastcall DataEndUpdate();
	void __fastcall DataInsertRow(int AInsertPosition);
	void __fastcall DataSetItemIndex(int AValue);
	virtual void __fastcall SetRowSelect(int Row, const bool Value);
	__property TTMSFNCGridRowInfoList* RowList = {read=FRowList};
	__property TTMSFNCGridIntegerList* HiddenColumnList = {read=FHiddenColumnList};
	__property TTMSFNCGridIntegerList* SuppressedColumnList = {read=FSuppressedColumnList};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* DefaultFont = {read=FDefaultFont, write=SetDefaultFont};
	__property float OldSize = {read=FOldSize};
	virtual System::UnicodeString __fastcall GetColumnDisplayName(int ACol);
	__property bool FirstCellApply = {read=FFirstCellApply, write=FFirstCellApply, nodefault};
	__property int GroupColumn = {read=FGroupColumn, nodefault};
	virtual void __fastcall SelectCell(const TTMSFNCGridCellRec &Cell, System::Classes::TShiftState Shift = System::Classes::TShiftState() , bool MouseDragging = false);
	__property TTMSFNCGridCellRec StartCell = {read=FStartCell, write=FStartCell};
	__property TTMSFNCGridCellRec StopCell = {read=FStopCell, write=FStopCell};
	__property TTMSFNCGridCellRec FocCell = {read=FFocusedCell, write=FFocusedCell};
	void __fastcall SetStartCell(int ACol, int ARow);
	void __fastcall SetStopCell(int ACol, int ARow);
	void __fastcall SetFocusCell(int ACol, int ARow);
	float __fastcall GetColWidths(int AIndex);
	float __fastcall GetRowHeights(int AIndex);
	int __fastcall CompareLine(int Col, int Row1, int Row2);
	int __fastcall CompareRows(int Col, int Row1, int Row2);
	int __fastcall CompareRowsIndexed(int Col, int Row1, int Row2);
	void __fastcall QuickSortRows(int Col, int L, int R);
	void __fastcall QuickSortRowsIndexed(int Col, int L, int R);
	void __fastcall SortGroupedInt(bool Indexed);
	virtual bool __fastcall MatchFilter(int ARow);
	bool __fastcall MatchCell(int Col, int Row);
	int __fastcall MaxCharsInCol(int ACol);
	void __fastcall InputFromCSVStream(System::Classes::TStream* AStream, System::Sysutils::TEncoding* Encoding, bool insertmode, int MaxRows = 0xffffffff);
	void __fastcall InputFromCSV(System::UnicodeString FileName, System::Sysutils::TEncoding* Encoding, bool insertmode, int MaxRows = 0xffffffff);
	void __fastcall OutputToCSV(System::UnicodeString FileName, bool appendmode, bool unicode);
	void __fastcall OutputToHTML(System::UnicodeString FileName, bool appendmode, bool ShowHTML = false, bool Unicode = true);
	void __fastcall OutputToAscii(System::UnicodeString FileName, bool appendmode, bool unicode);
	void __fastcall OutputToCSVStream(System::Classes::TStream* AStream, System::Sysutils::TEncoding* Encoding = (System::Sysutils::TEncoding*)(0x0));
	System::Types::TPoint __fastcall FindInternal(const System::Types::TPoint &StartC, System::UnicodeString s, TTMSFNCGridFindParams FindParams);
	virtual int __fastcall CellNameIndex(System::UnicodeString AName);
	virtual void __fastcall UpdateGridCells(bool AScrollOnly = false);
	__property TTMSFNCGridSingleList* ColumnW = {read=FColumnW, write=SetColumnW};
	__property TTMSFNCGridSingleList* OrigColumnW = {read=FOrigColumnW, write=SetOrigColumnW};
	__property TTMSFNCGridSingleList* RowH = {read=FRowH, write=SetRowH};
	__property TTMSFNCGridCellProperty* CellProps[int Col][int Row] = {read=GetCellProps};
	virtual void __fastcall ExportNotification(TTMSFNCGridExportState AState, int ARow);
	virtual void __fastcall ImportNotification(TTMSFNCGridImportState AState, int ARow);
	virtual void __fastcall DoRowCountChanged();
	virtual void __fastcall DoColumnCountChanged();
	virtual void __fastcall DoIOProgress(int CurrentRow, int TotalRows);
	virtual void __fastcall DoSortFormat(int Col, TTMSFNCGridSortFormat &SortFormat, System::UnicodeString &Prefix, System::UnicodeString &Suffix);
	virtual void __fastcall DoCustomCompare(System::UnicodeString Value1, System::UnicodeString Value2, int &res);
	virtual void __fastcall DoRawCompare(int Col, int Row1, int Row2, int &res);
	virtual void __fastcall DoClipboardBeforePasteCell(int Col, int Row, System::UnicodeString &AValue, bool &Allow);
	virtual void __fastcall DoClipboardAfterPasteCell(int Col, int Row, System::UnicodeString AValue);
	virtual void __fastcall DoNeedFilterDropDown(int Col, int Row, bool &Allow);
	virtual void __fastcall DoNeedFilterDropDownData(int Col, int Row, System::Classes::TStrings* Values);
	virtual void __fastcall DoCellsChanged(const TTMSFNCGridCellRecRange &Cells);
	virtual void __fastcall DoClipboardPaste(const TTMSFNCGridCellRecRange &Cells);
	virtual System::UnicodeString __fastcall DoSaveCell(int Col, int Row);
	virtual void __fastcall DoLoadCell(int Col, int Row, System::UnicodeString &Value);
	virtual void __fastcall DoFilterSelect(int Col, System::UnicodeString &Condition);
	virtual void __fastcall DoAfterApplyFilter(int Col, System::UnicodeString Condition, bool &UpdateCalculations);
	virtual void __fastcall SetHorizontalScrollBarVisible(const bool Value);
	virtual void __fastcall SetVerticalScrollBarVisible(const bool Value);
	void __fastcall RemoveCellControl(int Col, int Row, System::TClass AClass);
	bool __fastcall IsCellControl(int Col, int Row, System::TClass AClass);
	bool __fastcall IsIgnoredColumn(int Col);
	virtual void __fastcall Notification(System::Classes::TComponent* AComponent, System::Classes::TOperation Operation);
	virtual void __fastcall Loaded();
	__property int MergeCellPrintPageNr[int Col][int Row] = {read=GetMergeCellPrintPageNr, write=SetMergeCellPrintPageNr};
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* __fastcall GetDefaultFont(int Col, int Row);
	virtual Fmx::Tmsfncgridcell::TTMSFNCGridCellLayout* __fastcall GetDefaultFixedLayout();
	virtual Fmx::Tmsfncgridcell::TTMSFNCGridCellLayout* __fastcall GetDefaultNormalLayout();
	virtual Fmx::Tmsfncgridcell::TTMSFNCGridCellLayout* __fastcall GetDefaultGroupLayout();
	virtual Fmx::Tmsfncgridcell::TTMSFNCGridCellLayout* __fastcall GetDefaultSummaryLayout();
	virtual Fmx::Tmsfncgridcell::TTMSFNCGridCellLayout* __fastcall GetDefaultSelectedLayout();
	virtual Fmx::Tmsfncgridcell::TTMSFNCGridCellLayout* __fastcall GetDefaultFocusedLayout();
	virtual Fmx::Tmsfncgridcell::TTMSFNCGridCellLayout* __fastcall GetDefaultFixedSelectedLayout();
	virtual Fmx::Tmsfncgridcell::TTMSFNCGridCellLayout* __fastcall GetDefaultBandLayout();
	virtual Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* __fastcall GetDefaultSortFill();
	virtual Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* __fastcall GetDefaultIndexedSortFill();
	virtual Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* __fastcall GetDefaultSortStroke();
	virtual Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* __fastcall GetDefaultIndexedSortStroke();
	virtual Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* __fastcall GetDefaultSortFont();
	virtual Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* __fastcall GetDefaultIndexedSortFont();
	virtual void __fastcall SetFonts(Fmx::Tmsfncgraphicstypes::TTMSFNCAppearanceGlobalFontType ASetType);
	void __fastcall DoOptionsChange(System::TObject* Sender);
	__property bool FixedCellSelect[int Col][int Row] = {read=GetFixedCellSelect};
	virtual void __fastcall DoGetCellReadOnly(int ACol, int ARow, bool &AReadOnly);
	virtual bool __fastcall DoGetCellIsDataCheckBox(int ACol, int ARow);
	virtual void __fastcall DoFixedCellCheckBoxClick(int ACol, int ARow, Fmx::Tmsfncgridcell::TTMSFNCGridCell* ACell);
	virtual void __fastcall DoFixedCellSpinBoxChange(int ACol, int ARow, Fmx::Tmsfncgridcell::TTMSFNCGridCell* ACell);
	virtual void __fastcall DoFixedCellButtonClick(int ACol, int ARow, Fmx::Tmsfncgridcell::TTMSFNCGridCell* ACell);
	virtual void __fastcall DoFixedCellDropDownButtonClick(int ACol, int ARow, Fmx::Tmsfncgridcell::TTMSFNCGridCell* ACell);
	virtual void __fastcall DoFixedCellBitmapClick(int ACol, int ARow, Fmx::Tmsfncgridcell::TTMSFNCGridCell* ACell);
	virtual void __fastcall DoCellRightClick(int ACol, int ARow);
	virtual void __fastcall DoFixedCellRightClick(int ACol, int ARow);
	virtual void __fastcall DoCellClick(int ACol, int ARow);
	virtual void __fastcall DoFixedCellClick(System::Classes::TShiftState Shift, int ACol, int ARow);
	virtual void __fastcall DoCellDblClick(int ACol, int ARow);
	virtual void __fastcall DoFixedCellDblClick(int ACol, int ARow);
	virtual void __fastcall DoCellCheckBoxClick(int ACol, int ARow, Fmx::Tmsfncgridcell::TTMSFNCGridCell* ACell);
	virtual void __fastcall DoCellRadioButtonClick(int ACol, int ARow, Fmx::Tmsfncgridcell::TTMSFNCGridCell* ACell);
	virtual void __fastcall DoCellButtonClick(int ACol, int ARow, Fmx::Tmsfncgridcell::TTMSFNCGridCell* ACell);
	virtual void __fastcall DoCellBitmapClick(int ACol, int ARow, Fmx::Tmsfncgridcell::TTMSFNCGridCell* ACell);
	virtual void __fastcall DoCellCommentClick(int ACol, int ARow, Fmx::Tmsfncgridcell::TTMSFNCGridCell* ACell);
	virtual void __fastcall DoCellSortClick(System::Classes::TShiftState Shift, int ACol, int ARow, TTMSFNCGridSortDirection Direction, Fmx::Tmsfncgridcell::TTMSFNCGridCell* ACell);
	virtual void __fastcall DoCellNodeClick(int ACol, int ARow, Fmx::Tmsfncgridcell::TTMSFNCGridCell* ACell);
	virtual void __fastcall DoGetCellIsFixed(int ACol, int ARow, bool &ACellFixed);
	virtual void __fastcall DoGetRowIsBand(int ARow, bool &ARowBand);
	virtual void __fastcall DoCanInsertRow(int ARow, bool &Allow);
	virtual void __fastcall DoCanDeleteRow(int ARow, bool &Allow);
	virtual void __fastcall DoCanAppendRow(int ARow, bool &Allow);
	virtual void __fastcall DoCanAppendColumn(int ACol, bool &Allow);
	virtual void __fastcall DoInsertRow(int ARow);
	virtual void __fastcall DoDeleteRow(int ARow);
	virtual void __fastcall DoAppendRow(int ARow);
	virtual void __fastcall DoAppendColumn(int ACol);
	virtual void __fastcall DoGetCellClass(int ACol, int ARow, Fmx::Tmsfncgridcell::TTMSFNCGridCellClass &CellClassType);
	virtual void __fastcall DoGetCellData(int ACol, int ARow, System::UnicodeString &CellString);
	virtual void __fastcall DoGetCellRotation(int ACol, int ARow, int &Angle);
	virtual void __fastcall DoGetCellLayout(int ACol, int ARow, Fmx::Tmsfncgridcell::TTMSFNCGridCellLayout* ALayout, TTMSFNCGridCellState ACellState);
	virtual void __fastcall DoGetCellProperties(int ACol, int ARow, Fmx::Tmsfncgridcell::TTMSFNCGridCell* Cell);
	virtual void __fastcall DoGetCellMergeInfo(int ACol, int ARow, int &ABaseCol, int &ABaseRow, int &AColSpan, int &ARowSpan);
	virtual void __fastcall DoGetCellEditorType(int ACol, int ARow, TTMSFNCGridEditorType &CellEditorType);
	virtual void __fastcall DoGetCellEditorCustomClassType(int ACol, int ARow, TTMSFNCGridEditorClass &CellEditorCustomClassType);
	virtual void __fastcall DoCellEditGetData(int ACol, int ARow, Fmx::Controls::TControl* CellEditor, System::UnicodeString &CellString);
	virtual void __fastcall DoCellEditValidateData(int ACol, int ARow, Fmx::Controls::TControl* CellEditor, System::UnicodeString &CellString, bool &Allow);
	virtual void __fastcall DoCellEditSetData(int ACol, int ARow, Fmx::Controls::TControl* CellEditor, System::UnicodeString &CellString);
	virtual void __fastcall DoCellEditGetColor(int ACol, int ARow, Fmx::Controls::TControl* CellEditor, System::Uitypes::TAlphaColor &CellColor);
	virtual void __fastcall DoCellEditValidateColor(int ACol, int ARow, Fmx::Controls::TControl* CellEditor, System::Uitypes::TAlphaColor &CellColor, bool &Allow);
	virtual void __fastcall DoCellEditSetColor(int ACol, int ARow, Fmx::Controls::TControl* CellEditor, System::Uitypes::TAlphaColor &CellColor);
	virtual void __fastcall DoCellEditDone(int ACol, int ARow, Fmx::Controls::TControl* CellEditor);
	virtual void __fastcall DoGetCellEditorProperties(int ACol, int ARow, Fmx::Controls::TControl* CellEditor);
	virtual double __fastcall DoColumnCalc(int Acol, int FromRow, int ToRow);
	virtual double __fastcall DoColumnCalcGroup(int Acol, int FromRow, int ToRow);
	virtual void __fastcall DoCellAnchorClick(int ACol, int ARow, System::UnicodeString AAnchor);
	virtual void __fastcall DoCanEditCell(int ACol, int ARow, bool &Allow);
	virtual void __fastcall DoCanSizeColumn(int ACol, bool &Allow);
	virtual void __fastcall DoCanSizeRow(int ARow, bool &Allow);
	virtual void __fastcall DoColumnSize(int ACol, float &NewWidth);
	virtual void __fastcall DoRowSize(int ARow, float &NewHeight);
	virtual void __fastcall DoColumnSized(int ACol, float NewWidth);
	virtual void __fastcall DoRowSized(int ARow, float NewHeight);
	virtual void __fastcall DoCanSortColumn(int ACol, bool &Allow);
	virtual void __fastcall DoColumnSorted(int ACol, TTMSFNCGridSortDirection Direction);
	virtual bool __fastcall DoIsCellSelected(int ACol, int ARow);
	void __fastcall CreateColumnProp();
	virtual void __fastcall DoPasteNotify(const System::Types::TPoint &Origin, const TTMSFNCGridCellRecRange &ARange, TTMSFNCClipOperation AOperation);
	__property bool BlockSelectEventHandler = {read=FBlockSelectEventHandler, write=FBlockSelectEventHandler, nodefault};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCAppearanceGlobalFont* GlobalFont = {read=FGlobalFont, write=SetGlobalFont};
	
public:
	__property bool BlockUpdate = {read=FBlockUpdate, write=FBlockUpdate, nodefault};
	__fastcall virtual TTMSFNCGridData(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCGridData();
	void __fastcall Clear();
	void __fastcall ClearSortColumn();
	void __fastcall ClearCells(const TTMSFNCGridCellRecRange &CellRange);
	void __fastcall ClearNormalCells();
	void __fastcall Debug();
	void __fastcall GetCellMergeInfo(int ACol, int ARow, int &ABaseCol, int &ABaseRow, int &AColSpan, int &ARowSpan);
	virtual TTMSFNCGridCellState __fastcall GetCellState(int ACol, int ARow);
	virtual Fmx::Tmsfncgridcell::TTMSFNCGridCellLayout* __fastcall GetCellLayout(int ACol, int ARow, TTMSFNCGridCellState ACellState);
	int __fastcall DisplToRealRow(int Row);
	int __fastcall RealToDisplRow(int Row);
	int __fastcall DisplToRealColumn(int Col);
	int __fastcall RealToDisplColumn(int Col);
	TTMSFNCGridCellRecRange __fastcall GetColumnRange(int Col, bool DoFixed = false);
	TTMSFNCGridCellRecRange __fastcall GetRowRange(int Row, bool DoFixed = false);
	TTMSFNCGridCellRecRange __fastcall GetGridRange(bool DoFixed = false);
	TTMSFNCGridCellRecRange __fastcall GetCellRecRange(int Col, int Row);
	void __fastcall InitOriginalColumnSizes();
	void __fastcall RandomFill(bool DoFixed = false, int rnd = 0x64);
	void __fastcall LinearFill(bool DoFixed = false);
	__property TTMSFNCGridColumns* Columns = {read=FColumns, write=SetColumns};
	__property System::UnicodeString FloatFormat = {read=FFloatFormat, write=FFloatFormat};
	__property int ColumnSelectionCount = {read=GetColumnSelectionCount, nodefault};
	__property bool ColumnSelect[int Col] = {read=GetColumnSelect, write=SetColumnSelect};
	__property int CellSelectionCount = {read=GetCellSelectionCount, nodefault};
	__property bool CellSelect[int Col][int Row] = {read=GetCellSelect, write=SetCellSelect};
	__property int SelectedRow[int index] = {read=GetSelectedRow};
	__property int SelectedColumn[int index] = {read=GetSelectedColumn};
	__property TTMSFNCGridCellRec SelectedCell[int index] = {read=GetSelectedCell};
	__property int RowSelectionCount = {read=GetRowSelectionCount, nodefault};
	__property bool RowSelect[int Row] = {read=GetRowSelect, write=SetRowSelect};
	__property TTMSFNCGridCellRecRange Selection = {read=GetSelection, write=SetSelection};
	__property TTMSFNCGridCellRec FocusedCell = {read=GetFocusedCell, write=SetFocusedCell};
	TTMSFNCGridCellRecRange __fastcall CellRange(int AStartCol, int AStartRow, int AEndCol, int AEndRow);
	TTMSFNCGridCellRec __fastcall SingleCell(int ACol, int ARow);
	bool __fastcall IsReadOnly(int Col, int Row);
	void __fastcall ClearRowSelect();
	int __fastcall GetSelectedRowCount();
	void __fastcall SelectRows(int FromRow, int ToRow);
	void __fastcall UnSelectRows(int FromRow, int ToRow);
	void __fastcall ClearColumnSelect();
	int __fastcall GetSelectedColumnCount();
	void __fastcall SelectColumns(int FromColumn, int ToColumn);
	void __fastcall UnSelectColumns(int FromColumn, int ToColumn);
	void __fastcall ClearCellSelect();
	int __fastcall GetSelectedCellCount();
	void __fastcall SelectCells(const TTMSFNCGridCellRecRange &ARange);
	void __fastcall UnSelectCells(const TTMSFNCGridCellRecRange &ARange);
	void __fastcall SetColumnOrder();
	void __fastcall ResetColumnOrder();
	System::UnicodeString __fastcall ColumnStatesToString();
	void __fastcall StringToColumnStates(System::UnicodeString Value);
	int __fastcall ColumnPosition(int ACol);
	int __fastcall ColumnAtPosition(int ACol);
	System::Types::TPoint __fastcall Find(const System::Types::TPoint &StartC, System::UnicodeString s, TTMSFNCGridFindParams FindParams);
	System::Types::TPoint __fastcall FindFirst(System::UnicodeString s, TTMSFNCGridFindParams FindParams);
	System::Types::TPoint __fastcall FindNext();
	int __fastcall Replace(System::UnicodeString OrigStr, System::UnicodeString NewStr, TTMSFNCGridFindParams FindParams);
	virtual bool __fastcall IsFixed(int Col, int Row);
	virtual bool __fastcall IsBand(int Row);
	virtual bool __fastcall IsNormalFixed(int Col, int Row);
	virtual TTMSFNCGridCellRec __fastcall NextSelectableRow(int Col, int Row);
	virtual TTMSFNCGridCellRec __fastcall NextSelectableColumn(int Col, int Row);
	virtual TTMSFNCGridCellRec __fastcall PreviousSelectableColumn(int Col, int Row);
	virtual TTMSFNCGridCellRec __fastcall PreviousSelectableRow(int Col, int Row);
	void __fastcall ApplyFilter();
	void __fastcall RemoveFilter();
	void __fastcall RemoveFilters();
	__property int FindCol = {read=FFindCol, write=FFindCol, nodefault};
	__property int FindRow = {read=FFindRow, write=FFindRow, nodefault};
	int __fastcall LookupInColumn(int Col, System::UnicodeString AValue, bool AllRows = false, bool AutoGoto = false);
	int __fastcall LookupInColumnFromRow(int Col, int Row, System::UnicodeString AValue, bool AllRows = false, bool AutoGoto = false);
	__property int SortColumn = {read=FSortColumn, write=SetSortColumn, nodefault};
	__property TTMSFNCGridSortDirection SortDirection = {read=FSortDirection, write=SetSortDirection, nodefault};
	__property System::Types::TPoint IOOffset = {read=FIOOffset, write=FIOOffset};
	__property TTMSFNCGridFilter* Filter = {read=FFilter};
	void __fastcall AutoNumberCol(int Col, int StartRow = 0x0, int StartValue = 0x0);
	void __fastcall AutoNumberRow(int Row, int StartColumn = 0x0, int StartValue = 0x0);
	void __fastcall AddHeaderCheckBox(int Col, int Row, bool State = false);
	void __fastcall AddCheckBox(int Col, int Row, bool State = false);
	void __fastcall AddCheckBoxColumn(int Col);
	void __fastcall RemoveCheckBox(int Col, int Row);
	bool __fastcall IsCheckBox(int Col, int Row);
	__property bool CheckBoxState[int Col][int Row] = {read=GetCheckBoxState, write=SetCheckBoxState};
	void __fastcall AddDataCheckBox(int Col, int Row, bool State = false);
	void __fastcall AddDataCheckBoxColumn(int Col);
	void __fastcall AddRadioButton(int Col, int Row, int Index, bool State = false);
	void __fastcall AddRadioButtonColumn(int Col, int Index);
	void __fastcall RemoveRadioButton(int Col, int Row);
	bool __fastcall IsRadioButton(int Col, int Row);
	bool __fastcall RadioButtonState(int Col, int Row);
	void __fastcall AddRotated(int Col, int Row, int AAngle, const System::UnicodeString Value);
	void __fastcall SetRotated(int Col, int Row, int AAngle);
	void __fastcall RemoveRotated(int Col, int Row);
	bool __fastcall IsRotated(int Col, int Row, int &AAngle);
	void __fastcall AddButton(int Col, int Row, System::UnicodeString AText, int AWidth = 0x14, int AHeight = 0x14);
	bool __fastcall IsButton(int Col, int Row);
	void __fastcall RemoveButton(int Col, int Row);
	void __fastcall AddBitmap(int Col, int Row, System::UnicodeString AName)/* overload */;
	void __fastcall AddBitmap(int Col, int Row, Fmx::Tmsfnctypes::TTMSFNCBitmap* ABitmap)/* overload */;
	void __fastcall AddBitmapFile(int Col, int Row, System::UnicodeString AFileName);
	Fmx::Tmsfnctypes::TTMSFNCBitmap* __fastcall CreateBitmap(int Col, int Row);
	bool __fastcall CreateCheck(int Col, int Row);
	void __fastcall AddDataBitmap(int Col, int Row);
	void __fastcall RemoveBitmap(int Col, int Row);
	bool __fastcall IsBitmap(int Col, int Row);
	Fmx::Tmsfnctypes::TTMSFNCBitmap* __fastcall GetBitmap(int Col, int Row);
	void __fastcall SetBitmapName(int Col, int Row, System::UnicodeString AName);
	System::UnicodeString __fastcall GetBitmapName(int Col, int Row);
	void __fastcall AddProgressBar(int Col, int Row, float Value);
	void __fastcall AddDataProgressBar(int Col, int Row);
	void __fastcall SetProgressBarValue(int Col, int Row, float Value);
	float __fastcall GetProgressBarValue(int Col, int Row);
	bool __fastcall IsProgressBar(int Col, int Row);
	void __fastcall RemoveProgressBar(int Col, int Row);
	void __fastcall AddSummary(int Row);
	void __fastcall RemoveSummary(int Row);
	bool __fastcall IsSummary(int Row);
	void __fastcall AddNode(int Row, int Span);
	void __fastcall RemoveNode(int Row);
	bool __fastcall IsNode(int Row);
	void __fastcall SetNodeState(int Row, Fmx::Tmsfncgridcell::TTMSFNCGridNodeState State);
	Fmx::Tmsfncgridcell::TTMSFNCGridNodeState __fastcall GetNodeState(int Row);
	void __fastcall SetNodeSpan(int Row, int Span);
	int __fastcall GetNodeSpan(int Row);
	TTMSFNCGridCellNode* __fastcall GetNode(int Row);
	void __fastcall OpenNode(int Row);
	void __fastcall CloseNode(int Row);
	void __fastcall OpenAllNodes();
	void __fastcall CloseAllNodes();
	void __fastcall AddComboBox(int Col, int Row, System::Classes::TStrings* Items);
	void __fastcall RemoveComboBox(int Col, int Row);
	bool __fastcall IsComboBox(int Col, int Row);
	int __fastcall GetComboIndex(int Col, int Row);
	void __fastcall SetComboIndex(int Col, int Row, int Value);
	void __fastcall MergeSelection(const TTMSFNCGridCellRecRange &ASelection);
	void __fastcall MergeCells(int Col, int Row, int ColCount, int RowCount);
	bool __fastcall IsMerged(int Col, int Row);
	bool __fastcall IsYMergedCell(int Col, int Row);
	bool __fastcall IsXMergedCell(int Col, int Row);
	bool __fastcall IsBaseCell(int Col, int Row);
	int __fastcall ColSpan(int Col, int Row);
	int __fastcall RowSpan(int Col, int Row);
	System::Types::TPoint __fastcall CellSpan(int Col, int Row);
	System::Types::TSizeF __fastcall GetCellSize(int Col, int Row);
	TTMSFNCGridCellRec __fastcall BaseCell(int Col, int Row);
	bool __fastcall IsBaseCellEx(int Col, int Row, int &BaseCol, int &BaseRow);
	void __fastcall SplitCell(int Col, int Row);
	void __fastcall DeleteRow(int Row);
	virtual void __fastcall DeleteRows(int Row, int Count);
	void __fastcall InsertRow(int Row);
	virtual void __fastcall InsertRows(int Row, int Count);
	void __fastcall SwapCells(int Col, int Row1, int Row2);
	void __fastcall SwapNormalCells(int Row1, int Row2);
	void __fastcall SwapRows(int Row1, int Row2);
	void __fastcall MoveRow(int FromRow, int ToRow);
	void __fastcall HighlightInCell(bool DoCase, int Col, int Row, System::UnicodeString HiText);
	void __fastcall HighlightInCol(bool DoFixed, bool DoCase, int Col, System::UnicodeString HiText);
	void __fastcall HighlightInRow(bool DoFixed, bool DoCase, int Row, System::UnicodeString HiText);
	void __fastcall HighlightInGrid(bool DoFixed, bool DoCase, System::UnicodeString HiText);
	void __fastcall UnHighlightInCell(int Col, int Row);
	void __fastcall UnHighlightInCol(bool DoFixed, int Col);
	void __fastcall UnHighlightInRow(bool DoFixed, int Row);
	void __fastcall UnHighlightInGrid(bool DoFixed);
	void __fastcall UnHighlightAll();
	void __fastcall MarkInCell(bool DoCase, int Col, int Row, System::UnicodeString HiText);
	void __fastcall MarkInCol(bool DoFixed, bool DoCase, int Col, System::UnicodeString HiText);
	void __fastcall MarkInRow(bool DoFixed, bool DoCase, int Row, System::UnicodeString HiText);
	void __fastcall MarkInGrid(bool DoFixed, bool DoCase, System::UnicodeString HiText);
	void __fastcall UnMarkInCell(int Col, int Row);
	void __fastcall UnMarkInCol(bool DoFixed, int Col);
	void __fastcall UnMarkInRow(bool DoFixed, int Row);
	void __fastcall UnMarkInGrid(bool DoFixed);
	void __fastcall UnMarkAll();
	void __fastcall UnGroup();
	void __fastcall Group(int Column);
	void __fastcall GroupCalc(int Col, int method);
	void __fastcall GroupSum(int Col);
	void __fastcall GroupAvg(int Col);
	void __fastcall GroupMin(int Col);
	void __fastcall GroupMax(int Col);
	double __fastcall ColumnSum(int ACol, int FromRow = 0xffffffff, int ToRow = 0xffffffff);
	double __fastcall ColumnAvg(int ACol, int FromRow = 0xffffffff, int ToRow = 0xffffffff);
	double __fastcall ColumnMin(int ACol, int FromRow = 0xffffffff, int ToRow = 0xffffffff);
	double __fastcall ColumnMax(int ACol, int FromRow = 0xffffffff, int ToRow = 0xffffffff);
	double __fastcall ColumnDistinct(int ACol, int FromRow = 0xffffffff, int ToRow = 0xffffffff);
	double __fastcall ColumnStdDev(int ACol, int FromRow = 0xffffffff, int ToRow = 0xffffffff);
	double __fastcall ColumnCustomCalc(int ACol, int FromRow = 0xffffffff, int ToRow = 0xffffffff);
	double __fastcall ColumnCustomCalcGroup(int ACol, int FromRow = 0xffffffff, int ToRow = 0xffffffff);
	void __fastcall UpdateCalculations();
	void __fastcall UpdateCalculation(int ACol);
	void __fastcall GroupCustomCalc(int Col);
	void __fastcall GroupCount(int Col);
	void __fastcall GroupDistinct(int Col);
	void __fastcall GroupStdDev(int Col);
	void __fastcall HideRow(int Row);
	void __fastcall HideRows(int Row, int Count);
	void __fastcall UnHideRow(int Row);
	void __fastcall UnHideRows(int Row, int Count);
	void __fastcall UnHideRowsAll();
	bool __fastcall IsHiddenRow(int Row);
	void __fastcall UpdateColumnWidth(int ACol, float AWidth);
	void __fastcall UpdateRowHeight(int ARow, float AHeight);
	void __fastcall HideColumn(int Col);
	void __fastcall HideColumns(int Col, int Count);
	void __fastcall UnHideColumn(int Col);
	void __fastcall UnHideColumns(int Col, int Count);
	void __fastcall UnHideColumnsAll();
	bool __fastcall IsHiddenColumn(int Col);
	void __fastcall SuppressColumn(int Col);
	void __fastcall SuppressColumns(int Col, int Count);
	void __fastcall UnSuppressColumn(int Col);
	void __fastcall UnSuppressColumns(int Col, int Count);
	void __fastcall UnSuppressColumnsAll();
	bool __fastcall IsSuppressedColumn(int Col);
	virtual void __fastcall DeleteColumn(int Col);
	virtual void __fastcall InsertColumn(int Col);
	void __fastcall MoveColumn(int FromCol, int ToCol);
	void __fastcall SwapColumns(int Col1, int Col2);
	void __fastcall SortData(int Column, TTMSFNCGridSortDirection Direction);
	void __fastcall SortIndexed();
	void __fastcall SortGrouped(int Column, TTMSFNCGridSortDirection Direction);
	void __fastcall SortGroupedIndexed();
	__property TTMSFNCGridSortIndexList* SortIndexes = {read=FSortIndexes};
	__property System::UnicodeString Cells[int Col][int Row] = {read=GetCells, write=SetCells};
	__property System::UnicodeString StrippedCells[int Col][int Row] = {read=GetStrippedCells};
	__property System::UnicodeString RowText[int Row] = {read=GetRowText, write=SetRowText};
	__property float ColumnWidths[int Col] = {read=GetColWidths, write=SetColWidths};
	__property float RowHeights[int Row] = {read=GetRowHeights, write=SetRowHeights};
	__property System::UnicodeString AllCells[int Col][int Row] = {read=GetAllCells, write=SetAllCells};
	__property double AllFloats[int Col][int Row] = {read=GetAllFloats, write=SetAllFloats};
	__property int AllInts[int Col][int Row] = {read=GetAllInts, write=SetAllInts};
	__property Fmx::Tmsfnctypes::TTMSFNCBitmap* Bitmaps[int Col][int Row] = {read=GetBitmaps, write=SetBitmaps};
	__property bool Booleans[int Col][int Row] = {read=GetBooleans, write=SetBooleans};
	__property double Floats[int Col][int Row] = {read=GetFloats, write=SetFloats};
	__property int Ints[int Col][int Row] = {read=GetInts, write=SetInts};
	__property TTMSFNCGridCellCalcState CalcStates[int Col][int Row] = {read=GetCellCalcStates, write=SetCellCalcStates};
	__property System::Variant CalcValues[int Col][int Row] = {read=GetCalcValues, write=SetCalcValues};
	__property System::Uitypes::TAlphaColor Colors[int Col][int Row] = {read=GetColors, write=SetColors};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign HorzAlignments[int Col][int Row] = {read=GetHorzAlignments, write=SetHorzAlignments};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign VertAlignments[int Col][int Row] = {read=GetVertAlignments, write=SetVertAlignments};
	__property float FontSizes[int Col][int Row] = {read=GetFontSizes, write=SetFontSizes};
	__property System::Uitypes::TFontStyles FontStyles[int Col][int Row] = {read=GetFontStyles, write=SetFontStyles};
	__property System::UnicodeString FontNames[int Col][int Row] = {read=GetFontNames, write=SetFontNames};
	__property System::Uitypes::TAlphaColor FontColors[int Col][int Row] = {read=GetFontColors, write=SetFontColors};
	__property bool ReadOnlys[int Col][int Row] = {read=GetReadOnlys, write=SetReadOnlys};
	__property System::TObject* Objects[int Col][int Row] = {read=GetObjects, write=SetObjects};
	__property System::UnicodeString Comments[int Col][int Row] = {read=GetComments, write=SetComments};
	__property System::Uitypes::TAlphaColor CommentColors[int Col][int Row] = {read=GetCommentColors, write=SetCommentColors};
	__property System::TObject* IntObjects[int Col][int Row] = {read=GetIntObjects, write=SetIntObjects};
	__property TTMSFNCGridColumnCalculation ColumnCalculation[int Col] = {read=GetColumnCalculation, write=SetColumnCalculation};
	__property int HiddenRowCount = {read=GetHiddenRowCount, nodefault};
	__property int HiddenColumnCount = {read=GetHiddenColCount, nodefault};
	__property bool SaveHiddenCells = {read=FSaveHiddenCells, write=FSaveHiddenCells, nodefault};
	__property int TotalRowCount = {read=GetTotalRowCount, nodefault};
	__property int TotalColCount = {read=GetTotalColCount, nodefault};
	void __fastcall CopyToClipboard(bool SelectedCells = true);
	void __fastcall CutToClipboard(bool SelectedCells = true);
	void __fastcall PasteFromClipboard();
	void __fastcall LoadFromCSV(System::UnicodeString FileName, int MaxRows = 0xffffffff)/* overload */;
	void __fastcall InsertFromCSV(System::UnicodeString FileName, int MaxRows = 0xffffffff)/* overload */;
	void __fastcall LoadFromCSV(System::UnicodeString FileName, System::Sysutils::TEncoding* Encoding, int MaxRows = 0xffffffff)/* overload */;
	void __fastcall InsertFromCSV(System::UnicodeString FileName, System::Sysutils::TEncoding* Encoding, int MaxRows = 0xffffffff)/* overload */;
	void __fastcall LoadFromCSVStream(System::Classes::TStream* AStream, int MaxRows = 0xffffffff)/* overload */;
	void __fastcall InsertFromCSVStream(System::Classes::TStream* AStream, int MaxRows = 0xffffffff)/* overload */;
	void __fastcall LoadFromCSVStream(System::Classes::TStream* AStream, System::Sysutils::TEncoding* Encoding, int MaxRows = 0xffffffff)/* overload */;
	void __fastcall InsertFromCSVStream(System::Classes::TStream* AStream, System::Sysutils::TEncoding* Encoding, int MaxRows = 0xffffffff)/* overload */;
	void __fastcall LoadFromFile(System::UnicodeString FileName);
	void __fastcall LoadXMLFromFile(System::UnicodeString AFileName, bool LoadFieldDescr = true, bool IgnoreFixedColumns = false);
	void __fastcall LoadXMLFromStream(System::Classes::TStream* const AStream, bool LoadFieldDescr = true, bool IgnoreFixedColumns = false);
	void __fastcall LoadXMLFromText(System::UnicodeString AText, bool LoadFieldDescr = true, bool IgnoreFixedColumns = false);
	void __fastcall SaveToCSVStream(System::Classes::TStream* AStream, System::Sysutils::TEncoding* Encoding = (System::Sysutils::TEncoding*)(0x0));
	void __fastcall LoadFromFixed(System::UnicodeString FileName, Fmx::Tmsfncgriddatautil::TTMSFNCGridIntList* positions, bool DoTrim = true, int MaxRows = 0xffffffff);
	void __fastcall LoadFromStream(System::Classes::TStream* Stream);
	void __fastcall SaveToFile(System::UnicodeString FileName, bool Unicode = true);
	void __fastcall SaveToCSV(System::UnicodeString FileName, bool Unicode = true);
	void __fastcall AppendToCSV(System::UnicodeString FileName, bool Unicode = true);
	void __fastcall AppendToHTML(System::UnicodeString FileName, bool ShowHTML = false, bool Unicode = true);
	void __fastcall SaveToHTML(System::UnicodeString FileName, bool ShowHTML = false, bool Unicode = true);
	void __fastcall SaveToASCII(System::UnicodeString FileName, bool Unicode = true);
	void __fastcall AppendToASCII(System::UnicodeString FileName, bool Unicode = true);
	void __fastcall SaveToFixed(System::UnicodeString FileName, Fmx::Tmsfncgriddatautil::TTMSFNCGridIntList* Positions);
	void __fastcall SaveToStream(System::Classes::TStream* Stream);
	void __fastcall SaveToXML(System::UnicodeString FileName, System::UnicodeString ListDescr, System::UnicodeString RecordDescr, System::Classes::TStrings* FieldDescr, bool ExportEmptyCells = false);
	__property System::UnicodeString CheckTrue = {read=FCheckTrue, write=FCheckTrue};
	__property System::UnicodeString CheckFalse = {read=FCheckFalse, write=FCheckFalse};
	__property bool UseColumns = {read=FUseColumns, write=FUseColumns, nodefault};
	
__published:
	__property Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* BitmapContainer = {read=GetBitmapContainer, write=SetBitmapContainer};
	__property float DefaultRowHeight = {read=FDefaultRowHeight, write=SetDefaultRowHeight, stored=IsDefaultRowHeightStored};
	__property float DefaultColumnWidth = {read=FDefaultColumnWidth, write=SetDefaultColumnWidth, stored=IsDefaultColumnWidthStored};
	__property int FixedColumns = {read=FFixedColumns, write=SetFixedColumns, default=1};
	__property int FixedRows = {read=FFixedRows, write=SetFixedRows, default=1};
	__property int FixedRightColumns = {read=FFixedRightColumns, write=SetFixedRightColumns, default=0};
	__property int FixedFooterRows = {read=FFixedFooterRows, write=SetFixedFooterRows, default=0};
	__property int ColumnCount = {read=GetColumnCount, write=SetColumnCount, default=5};
	__property int RowCount = {read=GetRowCount, write=SetRowCount, default=10};
	__property TTMSFNCGridColumnCalcEvent OnColumnCalc = {read=FOnColumnCalc, write=FOnColumnCalc};
	__property TTMSFNCGridColumnCalcEvent OnGroupCalc = {read=FOnGroupCalc, write=FOnGroupCalc};
	__property TTMSFNCGridCustomCompareEvent OnCustomCompare = {read=FOnCustomCompare, write=FOnCustomCompare};
	__property TTMSFNCGridIOProgressEvent OnIOProgress = {read=FOnIOProgress, write=FOnIOProgress};
	__property TTMSFNCGridRawCompareEvent OnRawCompare = {read=FOnRawCompare, write=FOnRawCompare};
	__property TTMSFNCGridSortFormatEvent OnSortFormat = {read=FOnSortFormat, write=FOnSortFormat};
	__property TTMSFNCGridCellsChangedEvent OnCellsChanged = {read=FOnCellsChanged, write=FOnCellsChanged};
	__property TTMSFNCGridClipboardBeforePasteEvent OnClipboardBeforePasteCell = {read=FOnClipboardBeforePasteCell, write=FOnClipboardBeforePasteCell};
	__property TTMSFNCGridClipboardAfterPasteEvent OnClipboardAfterPasteCell = {read=FOnClipboardAfterPasteCell, write=FOnClipboardAfterPasteCell};
	__property TTMSFNCGridCellsChangedEvent OnClipboardPaste = {read=FOnClipboardPaste, write=FOnClipboardPaste};
	__property TTMSFNCGridNeedFilterDropDownEvent OnNeedFilterDropDown = {read=FOnNeedFilterDropDown, write=FOnNeedFilterDropDown};
	__property TTMSFNCGridNeedFilterDropDownDataEvent OnNeedFilterDropDownData = {read=FOnNeedFilterDropDownData, write=FOnNeedFilterDropDownData};
	__property TTMSFNCGridFilterSelectEvent OnFilterSelect = {read=FOnFilterSelect, write=FOnFilterSelect};
	__property TTMSFNCGridAfterApplyFilterEvent OnAfterApplyFilter = {read=FOnAfterApplyFilter, write=FOnAfterApplyFilter};
	__property TTMSFNCGridIOEvent OnLoadCell = {read=FOnLoadCell, write=FOnLoadCell};
	__property TTMSFNCGridIOEvent OnSaveCell = {read=FOnSaveCell, write=FOnSaveCell};
	__property Fmx::Tmsfncgridoptions::TTMSFNCGridOptions* Options = {read=FOptions, write=SetOptions};
	__property TTMSFNCGridOnSelectCell OnSelectCell = {read=FOnSelectCell, write=FOnSelectCell};
	__property TTMSFNCGridOnSelectedCell OnSelectedCell = {read=FOnSelectedCell, write=FOnSelectedCell};
private:
	void *__ITMSFNCAppearanceGlobalFont;	// Fmx::Tmsfncgraphicstypes::ITMSFNCAppearanceGlobalFont 
	void *__ITMSFNCDataBinderSelection;	// Fmx::Tmsfncdatabinding::ITMSFNCDataBinderSelection 
	void *__ITMSFNCDataBinderGrid;	// Fmx::Tmsfncdatabinding::ITMSFNCDataBinderGrid 
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
	// {F7D3F4D2-F202-48C0-9036-3F03E642F1E5}
	operator Fmx::Tmsfncdatabinding::_di_ITMSFNCDataBinderSelection()
	{
		Fmx::Tmsfncdatabinding::_di_ITMSFNCDataBinderSelection intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator Fmx::Tmsfncdatabinding::ITMSFNCDataBinderSelection*(void) { return (Fmx::Tmsfncdatabinding::ITMSFNCDataBinderSelection*)&__ITMSFNCDataBinderSelection; }
	#endif
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {D23BDEAA-49B1-451A-9401-0D0D11A9957A}
	operator Fmx::Tmsfncdatabinding::_di_ITMSFNCDataBinderGrid()
	{
		Fmx::Tmsfncdatabinding::_di_ITMSFNCDataBinderGrid intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator Fmx::Tmsfncdatabinding::ITMSFNCDataBinderGrid*(void) { return (Fmx::Tmsfncdatabinding::ITMSFNCDataBinderGrid*)&__ITMSFNCDataBinderGrid; }
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


//-- var, const, procedure ---------------------------------------------------
extern DELPHI_PACKAGE System::StaticArray<System::WideChar, 10> CSVSeparators;
extern DELPHI_PACKAGE TTMSFNCGridCellRec __fastcall MakeCell(int ACol, int ARow);
extern DELPHI_PACKAGE TTMSFNCGridCellRecRange __fastcall MakeCellRange(int AStartCol, int AStartRow, int AEndCol, int AEndRow);
extern DELPHI_PACKAGE bool __fastcall EqualsCellRange(const TTMSFNCGridCellRecRange &Range1, const TTMSFNCGridCellRecRange &Range2);
extern DELPHI_PACKAGE bool __fastcall InCellRange(int Col, int Row, const TTMSFNCGridCellRecRange &Range);
}	/* namespace Tmsfncgriddata */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCGRIDDATA)
using namespace Fmx::Tmsfncgriddata;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncgriddataHPP
