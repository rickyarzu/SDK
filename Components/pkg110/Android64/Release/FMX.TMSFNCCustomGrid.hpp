// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCCustomGrid.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfnccustomgridHPP
#define Fmx_TmsfnccustomgridHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <FMX.TMSFNCEdit.hpp>
#include <FMX.TMSFNCPersistence.hpp>
#include <FMX.TMSFNCCustomComponent.hpp>
#include <FMX.StdCtrls.hpp>
#include <FMX.TMSFNCColorPicker.hpp>
#include <FMX.TMSFNCImage.hpp>
#include <FMX.TMSFNCGridData.hpp>
#include <FMX.TMSFNCGridCell.hpp>
#include <FMX.TMSFNCPopup.hpp>
#include <FMX.TMSFNCGraphics.hpp>
#include <FMX.TMSFNCToolBarPopup.hpp>
#include <System.Types.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.Controls.hpp>
#include <FMX.TMSFNCGridOptions.hpp>
#include <FMX.TMSFNCGridDataUtil.hpp>
#include <FMX.TMSFNCGraphicsTypes.hpp>
#include <FMX.ExtCtrls.hpp>
#include <FMX.Memo.Types.hpp>
#include <FMX.DateTimeCtrls.hpp>
#include <FMX.SpinBox.hpp>
#include <FMX.ListBox.hpp>
#include <FMX.Memo.hpp>
#include <FMX.Types.hpp>
#include <System.UITypes.hpp>
#include <System.Generics.Collections.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>
#include <FMX.TMSFNCCustomPicker.hpp>
#include <FMX.TMSFNCCustomControl.hpp>
#include <FMX.Edit.hpp>
#include <FMX.Controls.Presentation.hpp>
#include <FMX.ScrollBox.hpp>
#include <FMX.EditBox.hpp>
#include <FMX.TMSFNCCustomScrollControl.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfnccustomgrid
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCGridCustomToolBarPopup;
class DELPHICLASS TTMSFNCGridColorPicker;
class DELPHICLASS TTMSFNCGridEdit;
class DELPHICLASS TTMSFNCGridComboBox;
class DELPHICLASS TTMSFNCGridTrackBar;
class DELPHICLASS TTMSFNCGridMemo;
class DELPHICLASS TTMSFNCGridDatePicker;
class DELPHICLASS TTMSFNCGridSpinBox;
class DELPHICLASS TTMSFNCGridProtectedControl;
class DELPHICLASS TTMSFNCGridAppearance;
class DELPHICLASS TTMSFNCGridAdapter;
class DELPHICLASS TTMSFNCCustomGrid;
//-- type declarations -------------------------------------------------------
enum DECLSPEC_DENUM TTMSFNCGridCustomToolBarPopupMode : unsigned char { tpmActiveCell, tpmHoverCell, tpmHoverNormalCell, tpmNone };

class PASCALIMPLEMENTATION TTMSFNCGridCustomToolBarPopup : public Fmx::Tmsfnctoolbarpopup::TTMSFNCCustomToolBarPopup
{
	typedef Fmx::Tmsfnctoolbarpopup::TTMSFNCCustomToolBarPopup inherited;
	
private:
	TTMSFNCCustomGrid* FGrid;
	Fmx::Tmsfncgriddata::TTMSFNCGridCellRec FGridCell;
	
protected:
	virtual void __fastcall Notification(System::Classes::TComponent* AComponent, System::Classes::TOperation Operation);
	__property TTMSFNCCustomGrid* Grid = {read=FGrid, write=FGrid};
	__property Fmx::Tmsfncgriddata::TTMSFNCGridCellRec GridCell = {read=FGridCell, write=FGridCell};
	
public:
	__fastcall virtual TTMSFNCGridCustomToolBarPopup(System::Classes::TComponent* AOwner);
public:
	/* TTMSFNCCustomToolBarPopup.Destroy */ inline __fastcall virtual ~TTMSFNCGridCustomToolBarPopup() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCGridColorPicker : public Fmx::Tmsfnccolorpicker::TTMSFNCColorPicker
{
	typedef Fmx::Tmsfnccolorpicker::TTMSFNCColorPicker inherited;
	
public:
	/* TTMSFNCCustomColorPicker.Create */ inline __fastcall virtual TTMSFNCGridColorPicker(System::Classes::TComponent* AOwner) : Fmx::Tmsfnccolorpicker::TTMSFNCColorPicker(AOwner) { }
	
public:
	/* TTMSFNCCustomPicker.Destroy */ inline __fastcall virtual ~TTMSFNCGridColorPicker() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCGridEdit : public Fmx::Tmsfncedit::TTMSFNCEdit
{
	typedef Fmx::Tmsfncedit::TTMSFNCEdit inherited;
	
public:
	__fastcall virtual TTMSFNCGridEdit(System::Classes::TComponent* AOwner)/* overload */;
public:
	/* TTMSFNCEdit.Destroy */ inline __fastcall virtual ~TTMSFNCGridEdit() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCGridComboBox : public Fmx::Listbox::TComboBox
{
	typedef Fmx::Listbox::TComboBox inherited;
	
public:
	/* TCustomComboBox.Create */ inline __fastcall virtual TTMSFNCGridComboBox(System::Classes::TComponent* AOwner)/* overload */ : Fmx::Listbox::TComboBox(AOwner) { }
	/* TCustomComboBox.Destroy */ inline __fastcall virtual ~TTMSFNCGridComboBox() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCGridTrackBar : public Fmx::Stdctrls::TTrackBar
{
	typedef Fmx::Stdctrls::TTrackBar inherited;
	
public:
	/* TTrackBar.Create */ inline __fastcall virtual TTMSFNCGridTrackBar(System::Classes::TComponent* AOwner)/* overload */ : Fmx::Stdctrls::TTrackBar(AOwner) { }
	
public:
	/* TCustomTrack.Destroy */ inline __fastcall virtual ~TTMSFNCGridTrackBar() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCGridMemo : public Fmx::Memo::TMemo
{
	typedef Fmx::Memo::TMemo inherited;
	
public:
	/* TCustomMemo.Create */ inline __fastcall virtual TTMSFNCGridMemo(System::Classes::TComponent* AOwner)/* overload */ : Fmx::Memo::TMemo(AOwner) { }
	
public:
	/* TPresentedControl.Destroy */ inline __fastcall virtual ~TTMSFNCGridMemo() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCGridDatePicker : public Fmx::Datetimectrls::TDateEdit
{
	typedef Fmx::Datetimectrls::TDateEdit inherited;
	
protected:
	virtual void __fastcall KeyDown(System::Word &Key, System::WideChar &KeyChar, System::Classes::TShiftState Shift);
public:
	/* TCustomDateEdit.Create */ inline __fastcall virtual TTMSFNCGridDatePicker(System::Classes::TComponent* AOwner)/* overload */ : Fmx::Datetimectrls::TDateEdit(AOwner) { }
	
public:
	/* TCustomDateTimeEdit.Destroy */ inline __fastcall virtual ~TTMSFNCGridDatePicker() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCGridSpinBox : public Fmx::Spinbox::TSpinBox
{
	typedef Fmx::Spinbox::TSpinBox inherited;
	
protected:
	virtual System::UnicodeString __fastcall GetDefaultStyleLookupName();
public:
	/* TCustomEditBox.Create */ inline __fastcall virtual TTMSFNCGridSpinBox(System::Classes::TComponent* AOwner)/* overload */ : Fmx::Spinbox::TSpinBox(AOwner) { }
	
public:
	/* TCustomEdit.Destroy */ inline __fastcall virtual ~TTMSFNCGridSpinBox() { }
	
};


typedef Fmx::Text::TCaretPosition TTMSFNCGridCaretPosition;

class PASCALIMPLEMENTATION TTMSFNCGridProtectedControl : public Fmx::Controls::TControl
{
	typedef Fmx::Controls::TControl inherited;
	
public:
	/* TControl.Create */ inline __fastcall virtual TTMSFNCGridProtectedControl(System::Classes::TComponent* AOwner) : Fmx::Controls::TControl(AOwner) { }
	/* TControl.Destroy */ inline __fastcall virtual ~TTMSFNCGridProtectedControl() { }
	
};


typedef void __fastcall (__closure *TTMSFNCGridOnGetCellClass)(System::TObject* Sender, int ACol, int ARow, Fmx::Tmsfncgridcell::TTMSFNCGridCellClass &CellClassType);

typedef void __fastcall (__closure *TTMSFNCGridTopLeftChanged)(System::TObject* Sender, int ATopRow, int ALeftCol);

typedef void __fastcall (__closure *TTMSFNCGridOnGetCellData)(System::TObject* Sender, int ACol, int ARow, System::UnicodeString &CellString);

typedef void __fastcall (__closure *TTMSFNCGridOnGetCellProperties)(System::TObject* Sender, int ACol, int ARow, Fmx::Tmsfncgridcell::TTMSFNCGridCell* Cell);

typedef void __fastcall (__closure *TTMSFNCGridOnGetCellMergeInfo)(System::TObject* Sender, int ACol, int ARow, int &ABaseCol, int &ABaseRow, int &AColSpan, int &ARowSpan);

typedef void __fastcall (__closure *TTMSFNCGridOnGetCellEditorCustomClassType)(System::TObject* Sender, int ACol, int ARow, Fmx::Tmsfncgriddata::TTMSFNCGridEditorClass &CellEditorCustomClassType);

typedef void __fastcall (__closure *TTMSFNCGridOnGetCellEditorType)(System::TObject* Sender, int ACol, int ARow, Fmx::Tmsfncgriddata::TTMSFNCGridEditorType &CellEditorType);

typedef void __fastcall (__closure *TTMSFNCGridOnCellEditGetData)(System::TObject* Sender, int ACol, int ARow, Fmx::Controls::TControl* CellEditor, System::UnicodeString &CellString);

typedef void __fastcall (__closure *TTMSFNCGridOnGetCellEditorProperties)(System::TObject* Sender, int ACol, int ARow, Fmx::Controls::TControl* CellEditor);

typedef void __fastcall (__closure *TTMSFNCGridOnCellEditValidateData)(System::TObject* Sender, int ACol, int ARow, Fmx::Controls::TControl* CellEditor, System::UnicodeString &CellString, bool &Allow);

typedef void __fastcall (__closure *TTMSFNCGridOnCellEditSetData)(System::TObject* Sender, int ACol, int ARow, Fmx::Controls::TControl* CellEditor, System::UnicodeString &CellString);

typedef void __fastcall (__closure *TTMSFNCGridOnCellComboCloseUp)(System::TObject* Sender, int ACol, int ARow, int ItemIndex, System::UnicodeString AValue);

typedef void __fastcall (__closure *TTMSFNCGridOnCellEditGetColor)(System::TObject* Sender, int ACol, int ARow, Fmx::Controls::TControl* CellEditor, System::Uitypes::TAlphaColor &CellColor);

typedef void __fastcall (__closure *TTMSFNCGridOnCellEditValidateColor)(System::TObject* Sender, int ACol, int ARow, Fmx::Controls::TControl* CellEditor, System::Uitypes::TAlphaColor &CellColor, bool &Allow);

typedef void __fastcall (__closure *TTMSFNCGridOnCellEditSetColor)(System::TObject* Sender, int ACol, int ARow, Fmx::Controls::TControl* CellEditor, System::Uitypes::TAlphaColor &CellColor);

typedef void __fastcall (__closure *TTMSFNCGridOnCellEditDone)(System::TObject* Sender, int ACol, int ARow, Fmx::Controls::TControl* CellEditor);

typedef void __fastcall (__closure *TTMSFNCGridOnCellEditCancel)(System::TObject* Sender, int ACol, int ARow);

typedef void __fastcall (__closure *TTMSFNCGridOnCanSizeColumn)(System::TObject* Sender, int ACol, bool &Allow);

typedef void __fastcall (__closure *TTMSFNCGridOnCanSizeRow)(System::TObject* Sender, int ARow, bool &Allow);

typedef void __fastcall (__closure *TTMSFNCGridOnColumnSize)(System::TObject* Sender, int ACol, float &NewWidth);

typedef void __fastcall (__closure *TTMSFNCGridOnRowSize)(System::TObject* Sender, int ARow, float &NewHeight);

typedef void __fastcall (__closure *TTMSFNCGridOnColumnSized)(System::TObject* Sender, int ACol, float NewWidth);

typedef void __fastcall (__closure *TTMSFNCGridOnRowSized)(System::TObject* Sender, int ARow, float NewHeight);

typedef void __fastcall (__closure *TTMSFNCGridOnColumnDragged)(System::TObject* Sender, int FromCol, int ToCol);

typedef void __fastcall (__closure *TTMSFNCGridOnRowDragged)(System::TObject* Sender, int FromRow, int ToRow);

typedef void __fastcall (__closure *TTMSFNCGridOnBeforeRowDrop)(System::TObject* Sender, int FromRow, int &ToRow, bool &Allow);

typedef void __fastcall (__closure *TTMSFNCGridOnBeforeColumnDrop)(System::TObject* Sender, int FromColumn, int &ToColumn, bool &Allow);

typedef void __fastcall (__closure *TTMSFNCGridOnCanSortColumn)(System::TObject* Sender, int ACol, bool &Allow);

typedef void __fastcall (__closure *TTMSFNCGridOnColumnSorted)(System::TObject* Sender, int ACol, Fmx::Tmsfncgriddata::TTMSFNCGridSortDirection Direction);

typedef void __fastcall (__closure *TTMSFNCGridOnCellAnchorClick)(System::TObject* Sender, int ACol, int ARow, System::UnicodeString AAnchor);

typedef void __fastcall (__closure *TTMSFNCGridOnGetCellReadOnly)(System::TObject* Sender, int ACol, int ARow, bool &AReadOnly);

typedef void __fastcall (__closure *TTMSFNCGridOnGetCellLayout)(System::TObject* Sender, int ACol, int ARow, Fmx::Tmsfncgridcell::TTMSFNCGridCellLayout* ALayout, Fmx::Tmsfncgriddata::TTMSFNCGridCellState ACellState);

typedef void __fastcall (__closure *TTMSFNCGridOnCellClick)(System::TObject* Sender, int ACol, int ARow);

typedef void __fastcall (__closure *TTMSFNCGridOnGetCellIsFixed)(System::TObject* Sender, int ACol, int ARow, bool &ACellFixed);

typedef void __fastcall (__closure *TTMSFNCGridOnGetCellRotation)(System::TObject* Sender, int ACol, int ARow, int &Angle);

typedef void __fastcall (__closure *TTMSFNCGridOnGetRowIsBand)(System::TObject* Sender, int ARow, bool &ARowBand);

typedef void __fastcall (__closure *TTMSFNCGridOnCanInsertRow)(System::TObject* Sender, int ARow, bool &Allow);

typedef void __fastcall (__closure *TTMSFNCGridOnCanDeleteRow)(System::TObject* Sender, int ARow, bool &Allow);

typedef void __fastcall (__closure *TTMSFNCGridOnCanAppendColumn)(System::TObject* Sender, int ACol, bool &Allow);

typedef void __fastcall (__closure *TTMSFNCGridOnCanAppendRow)(System::TObject* Sender, int ARow, bool &Allow);

typedef void __fastcall (__closure *TTMSFNCGridOnInsertRow)(System::TObject* Sender, int ARow);

typedef void __fastcall (__closure *TTMSFNCGridOnDeleteRow)(System::TObject* Sender, int ARow);

typedef void __fastcall (__closure *TTMSFNCGridOnAppendColumn)(System::TObject* Sender, int ACol);

typedef void __fastcall (__closure *TTMSFNCGridOnAppendRow)(System::TObject* Sender, int ARow);

typedef void __fastcall (__closure *TTMSFNCGridCellControlEvent)(System::TObject* Sender, int ACol, int ARow, Fmx::Tmsfncgridcell::TTMSFNCGridCell* ACell);

typedef System::DynamicArray<Fmx::Tmsfncgridcell::TTMSFNCGridCell*> Fmx_Tmsfnccustomgrid__11;

typedef System::DynamicArray<System::DynamicArray<Fmx::Tmsfncgridcell::TTMSFNCGridCell*> > TTMSFNCGridCellArray;

enum DECLSPEC_DENUM TTMSFNCGridSizeMode : unsigned char { smColumnSizing, smRowSizing, smPreviousColumnSizing, smPreviousRowSizing };

enum DECLSPEC_DENUM TTMSFNCGridDraggingMode : unsigned char { dmNone, dmRowDragging, dmColumnDragging };

typedef void __fastcall (__closure *TTMSFNCGridCellBeforeDraw)(System::TObject* Sender, int ACol, int ARow, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, System::Types::TRectF &ARect, System::Types::TRectF &ATextRect, bool &ADrawText, bool &ADrawBackGround, bool &ADrawBorder, bool &AllowDraw);

typedef void __fastcall (__closure *TTMSFNCGridCellEditBeforeExit)(System::TObject* Sender, int ACol, int ARow, Fmx::Controls::TControl* CellEditor, bool &AllowExit);

typedef void __fastcall (__closure *TTMSFNCGridCellAfterDraw)(System::TObject* Sender, int ACol, int ARow, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, const System::Types::TRectF &ATextRect);

enum DECLSPEC_DENUM TTMSFNCGridEditCellStart : unsigned char { csNone, csStart, csEnd };

enum DECLSPEC_DENUM TTMSFNCGridTabKeyMode : unsigned char { tkmNone, tkmNormal, tkmShift };

class PASCALIMPLEMENTATION TTMSFNCGridAppearance : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	Fmx::Tmsfncgridcell::TTMSFNCGridCellLayout* FBandLayout;
	Fmx::Tmsfncgridcell::TTMSFNCGridCellLayout* FFocusedLayout;
	Fmx::Tmsfncgridcell::TTMSFNCGridCellLayout* FFixedSelectedLayout;
	Fmx::Tmsfncgridcell::TTMSFNCGridCellLayout* FNormalLayout;
	Fmx::Tmsfncgridcell::TTMSFNCGridCellLayout* FSummaryLayout;
	System::Classes::TNotifyEvent FOnChange;
	Fmx::Tmsfncgridcell::TTMSFNCGridCellLayout* FSelectedLayout;
	Fmx::Tmsfncgridcell::TTMSFNCGridCellLayout* FFixedLayout;
	Fmx::Tmsfncgridcell::TTMSFNCGridCellLayout* FGroupLayout;
	Fmx::Tmsfncgridcell::TTMSFNCGridCellProgressLayout* FProgressLayout;
	bool FShowFocus;
	void __fastcall SetBandLayout(Fmx::Tmsfncgridcell::TTMSFNCGridCellLayout* const Value);
	void __fastcall SetFixedLayout(Fmx::Tmsfncgridcell::TTMSFNCGridCellLayout* const Value);
	void __fastcall SetFixedSelectedLayout(Fmx::Tmsfncgridcell::TTMSFNCGridCellLayout* const Value);
	void __fastcall SetFocusedLayout(Fmx::Tmsfncgridcell::TTMSFNCGridCellLayout* const Value);
	void __fastcall SetGroupLayout(Fmx::Tmsfncgridcell::TTMSFNCGridCellLayout* const Value);
	void __fastcall SetNormalLayout(Fmx::Tmsfncgridcell::TTMSFNCGridCellLayout* const Value);
	void __fastcall SetSelectedLayout(Fmx::Tmsfncgridcell::TTMSFNCGridCellLayout* const Value);
	void __fastcall SetSummaryLayout(Fmx::Tmsfncgridcell::TTMSFNCGridCellLayout* const Value);
	void __fastcall SetProgressLayout(Fmx::Tmsfncgridcell::TTMSFNCGridCellProgressLayout* const Value);
	void __fastcall SetShowFocus(const bool Value);
	
protected:
	void __fastcall LayoutChanged(System::TObject* Sender);
	virtual void __fastcall InitializeDefaultLayout();
	
public:
	__fastcall TTMSFNCGridAppearance();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual ~TTMSFNCGridAppearance();
	
__published:
	__property Fmx::Tmsfncgridcell::TTMSFNCGridCellLayout* FixedLayout = {read=FFixedLayout, write=SetFixedLayout};
	__property Fmx::Tmsfncgridcell::TTMSFNCGridCellLayout* NormalLayout = {read=FNormalLayout, write=SetNormalLayout};
	__property Fmx::Tmsfncgridcell::TTMSFNCGridCellLayout* GroupLayout = {read=FGroupLayout, write=SetGroupLayout};
	__property Fmx::Tmsfncgridcell::TTMSFNCGridCellLayout* SummaryLayout = {read=FSummaryLayout, write=SetSummaryLayout};
	__property Fmx::Tmsfncgridcell::TTMSFNCGridCellLayout* SelectedLayout = {read=FSelectedLayout, write=SetSelectedLayout};
	__property Fmx::Tmsfncgridcell::TTMSFNCGridCellLayout* FocusedLayout = {read=FFocusedLayout, write=SetFocusedLayout};
	__property Fmx::Tmsfncgridcell::TTMSFNCGridCellLayout* FixedSelectedLayout = {read=FFixedSelectedLayout, write=SetFixedSelectedLayout};
	__property Fmx::Tmsfncgridcell::TTMSFNCGridCellLayout* BandLayout = {read=FBandLayout, write=SetBandLayout};
	__property Fmx::Tmsfncgridcell::TTMSFNCGridCellProgressLayout* ProgressLayout = {read=FProgressLayout, write=SetProgressLayout};
	__property bool ShowFocus = {read=FShowFocus, write=SetShowFocus, default=1};
	__property System::Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
};


class PASCALIMPLEMENTATION TTMSFNCGridAdapter : public Fmx::Tmsfnccustomcomponent::TTMSFNCCustomComponent
{
	typedef Fmx::Tmsfnccustomcomponent::TTMSFNCCustomComponent inherited;
	
private:
	bool FBlockAdd;
	TTMSFNCCustomGrid* FGrid;
	bool FActive;
	void __fastcall SetActive(const bool Value);
	void __fastcall SetGrid(TTMSFNCCustomGrid* const Value);
	
protected:
	virtual NativeUInt __fastcall GetInstance();
	virtual bool __fastcall AlternateDisplayBuildUp();
	virtual bool __fastcall CanCancelEdit();
	virtual void __fastcall StartBuild(int ARow);
	virtual void __fastcall Notification(System::Classes::TComponent* AComponent, System::Classes::TOperation Operation);
	virtual void __fastcall UpdateBounds();
	virtual void __fastcall Initialize();
	virtual void __fastcall ScrollGrid(int ADelta, bool ABeforeDisplayCells = true, bool AScrollOnly = false);
	virtual void __fastcall SelectCell(const Fmx::Tmsfncgriddata::TTMSFNCGridCellRec &ACell);
	virtual void __fastcall GetCellData(int ACol, int ARow, System::UnicodeString &ACellData);
	virtual void __fastcall GetCellClass(int ACol, int ARow, Fmx::Tmsfncgridcell::TTMSFNCGridCellClass &ACellClassType);
	virtual void __fastcall GetCellProperties(int ACol, int ARow, Fmx::Tmsfncgridcell::TTMSFNCGridCell* ACell);
	virtual void __fastcall GetCellEditorProperties(int ACol, int ARow, Fmx::Controls::TControl* CellEditor);
	virtual void __fastcall GetCellEditorType(int ACol, int ARow, Fmx::Tmsfncgriddata::TTMSFNCGridEditorType &ACellEditorType);
	virtual void __fastcall GetCellReadOnly(int ACol, int ARow, bool &AReadOnly);
	virtual void __fastcall CellEditGetData(int ACol, int ARow, Fmx::Controls::TControl* CellEditor, System::UnicodeString &CellString);
	virtual void __fastcall CellEditValidateData(int ACol, int ARow, Fmx::Controls::TControl* CellEditor, System::UnicodeString &CellString, bool &Allow);
	virtual void __fastcall CellEditSetData(int ACol, int ARow, Fmx::Controls::TControl* CellEditor, System::UnicodeString &CellString);
	virtual void __fastcall CellEditDone(int ACol, int ARow, Fmx::Controls::TControl* CellEditor);
	virtual void __fastcall CellEditCancel(int ACol, int ARow);
	virtual void __fastcall CellBeforeEdit(int ACol, int ARow);
	virtual void __fastcall CellCheckBoxClick(int ACol, int ARow, Fmx::Tmsfncgridcell::TTMSFNCGridCell* ACell);
	virtual void __fastcall CellBeforeEditExit(int ACol, int ARow, Fmx::Controls::TControl* CellEditor, bool &AllowExit);
	virtual void __fastcall ExportNotification(Fmx::Tmsfncgriddata::TTMSFNCGridExportState AState, int ARow);
	virtual System::UnicodeString __fastcall GetColumnDisplayName(int ACol);
	
public:
	__fastcall virtual TTMSFNCGridAdapter(System::Classes::TComponent* AOwner);
	
__published:
	__property bool Active = {read=FActive, write=SetActive, default=0};
	__property TTMSFNCCustomGrid* Grid = {read=FGrid, write=SetGrid};
public:
	/* TControl.Destroy */ inline __fastcall virtual ~TTMSFNCGridAdapter() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCustomGrid : public Fmx::Tmsfncgriddata::TTMSFNCGridData
{
	typedef Fmx::Tmsfncgriddata::TTMSFNCGridData inherited;
	
private:
	Fmx::Tmsfncgriddata::TTMSFNCGridCellRec FToolBarPopupCell;
	Fmx::Tmsfnctypes::TTMSFNCBitmap* FDummyButtonBitmap;
	int FBlockUpdateAdapter;
	bool FBlockAdd;
	bool FKeyUsed;
	double FTimeStart;
	double FTimeStop;
	bool FAnimating;
	bool FAnimateVerticalPos;
	bool FAnimateHorizontalPos;
	double FScrollVTo;
	double FScrollHTo;
	Fmx::Types::TTimer* FAnimateTimer;
	Fmx::Types::TTimer* FFreeEditControlTimer;
	bool FDoubleSelection;
	double FSpX;
	double FSpY;
	double FScrollX;
	double FScrollY;
	Fmx::Tmsfncpopup::TTMSFNCPopup* FCommentPopup;
	bool FDoTouchScroll;
	Fmx::Tmsfncpopup::TTMSFNCPopup* FFilterPopup;
	System::UnicodeString FActiveComment;
	System::Uitypes::TAlphaColor FActiveCommentTextColor;
	Fmx::Tmsfnctypes::TTMSFNCBitmap* FNodeOpenBitmap;
	Fmx::Tmsfnctypes::TTMSFNCBitmap* FNodeClosedBitmap;
	bool FCellKeyDown;
	int FCellPosX;
	int FCellPosY;
	float FContainerWidth;
	float FContainerHeight;
	bool FClearMouseDown;
	bool ChangeCursor;
	System::Uitypes::TCursor OldCursor;
	bool FBlockHide;
	TTMSFNCGridTabKeyMode FTabKey;
	int FTopr;
	int FLeftC;
	bool FDblClick;
	Fmx::Tmsfncgridcell::TTMSFNCGridCell* FSaveTopCell;
	Fmx::Tmsfncgriddata::TTMSFNCGridCellRecRange FPrevSelection;
	Fmx::Tmsfncgriddata::TTMSFNCGridCellRec FCellAnchor;
	System::UnicodeString FCellAnchorString;
	System::UnicodeString FLookupString;
	TTMSFNCGridDraggingMode FDraggingMode;
	Fmx::Tmsfncimage::TTMSFNCImage* FDragBitmap;
	bool FDragFixed;
	bool FTouchScrolling;
	double FMouseX;
	double FMouseY;
	Fmx::Tmsfncgriddata::TTMSFNCGridCellRec FDragCell;
	Fmx::Tmsfncgriddata::TTMSFNCGridCellRec FDragScrollCell;
	Fmx::Tmsfncgriddata::TTMSFNCGridCellRec FEditCell;
	Fmx::Controls::TControl* FEditControl;
	TTMSFNCGridEdit* FCellEdit;
	TTMSFNCGridComboBox* FCellComboBox;
	Fmx::Tmsfncgriddata::TTMSFNCGridCellRec FRealCell;
	float FX;
	float FY;
	float FPrevX;
	float FPrevY;
	float FSizeX;
	float FSaveDragX;
	float FSaveDragY;
	float FSizeY;
	float FDragX;
	float FDragY;
	float FDownX;
	float FDownY;
	float FTouchX;
	float FTouchY;
	Fmx::Types::TTimer* FScrollTimer;
	Fmx::Types::TTimer* FDragTimer;
	Fmx::Tmsfncgriddata::TTMSFNCGridCellRec FPrevSelectedCell;
	Fmx::Tmsfncgriddata::TTMSFNCGridCellRec FFirstCell;
	Fmx::Tmsfncgriddata::TTMSFNCGridCellRec FSaveCell;
	bool FMouseDown;
	bool FMouseDblClick;
	bool FMouseUp;
	bool FMouseScrollingUp;
	bool FMouseSizing;
	bool FSizing;
	TTMSFNCGridSizeMode FSizeMode;
	bool FMouseDragging;
	int FCStart;
	int FRStart;
	int FCStop;
	int FRStop;
	int FOldTopRow;
	bool FReset;
	TTMSFNCGridCellArray FCellArray;
	TTMSFNCGridOnGetCellClass FOnGetCellClass;
	TTMSFNCGridOnGetCellData FOnGetCellData;
	int FFreezeRows;
	int FFreezeColumns;
	TTMSFNCGridOnGetCellMergeInfo FOnGetCellMergeInfo;
	TTMSFNCGridOnCellEditSetData FOnCellEditSetData;
	TTMSFNCGridOnCellEditDone FOnCellEditDone;
	TTMSFNCGridOnGetCellEditorCustomClassType FOnGetCellEditorCustomClassType;
	TTMSFNCGridOnCellEditValidateData FOnCellEditValidateData;
	TTMSFNCGridOnCellEditGetData FOnCellEditGetData;
	TTMSFNCGridOnGetCellEditorProperties FOnGetCellEditorProperties;
	TTMSFNCGridCellControlEvent FOnCellRadioButtonClick;
	TTMSFNCGridCellControlEvent FOnCellCheckBoxClick;
	TTMSFNCGridCellControlEvent FOnCellBitmapClick;
	TTMSFNCGridCellControlEvent FOnCellCommentClick;
	TTMSFNCGridCellControlEvent FOnCellSortClick;
	TTMSFNCGridOnRowSized FOnRowSized;
	TTMSFNCGridOnColumnSized FOnColumnSized;
	TTMSFNCGridOnCanSizeRow FOnCanSizeRow;
	TTMSFNCGridOnCanSizeColumn FOnCanSizeColumn;
	TTMSFNCGridOnCanSizeRow FOnCanDragRow;
	TTMSFNCGridOnCanSizeColumn FOnCanDragColumn;
	TTMSFNCGridOnColumnDragged FOnColumnDragged;
	TTMSFNCGridOnRowDragged FOnRowDragged;
	TTMSFNCGridOnRowSize FOnRowSize;
	TTMSFNCGridOnColumnSize FOnColumnSize;
	TTMSFNCGridCellControlEvent FOnCellNodeClick;
	TTMSFNCGridOnCanSortColumn FOnCanSortColumn;
	TTMSFNCGridOnColumnSorted FOnColumnSorted;
	TTMSFNCGridOnCellAnchorClick FOnCellAnchorClick;
	TTMSFNCGridOnCellClick FOnCellClick;
	TTMSFNCGridOnCellClick FOnFixedCellClick;
	TTMSFNCGridOnCellClick FOnCellRightClick;
	TTMSFNCGridOnCellClick FOnFixedCellRightClick;
	TTMSFNCGridOnGetCellReadOnly FOnGetCellReadOnly;
	TTMSFNCGridOnGetCellLayout FOnGetCellLayout;
	TTMSFNCGridOnGetCellIsFixed FOnGetCellIsFixed;
	TTMSFNCGridOnGetCellEditorType FOnGetCellEditorType;
	TTMSFNCGridSpinBox* FCellSpinBox;
	TTMSFNCGridColorPicker* FCellColorPicker;
	TTMSFNCGridDatePicker* FCellDatePicker;
	TTMSFNCGridTrackBar* FCellTrackBar;
	TTMSFNCGridOnCellEditGetColor FOnCellEditGetColor;
	TTMSFNCGridOnCellEditSetColor FOnCellEditSetColor;
	TTMSFNCGridOnCellEditValidateColor FOnCellEditValidateColor;
	TTMSFNCGridOnGetRowIsBand FOnGetRowIsBand;
	TTMSFNCGridOnCanDeleteRow FOnCanDeleteRow;
	TTMSFNCGridOnCanAppendRow FOnCanAppendRow;
	TTMSFNCGridOnCanAppendColumn FOnCanAppendColumn;
	TTMSFNCGridOnCanInsertRow FOnCanInsertRow;
	TTMSFNCGridOnDeleteRow FOnDeleteRow;
	TTMSFNCGridOnAppendRow FOnAppendRow;
	TTMSFNCGridOnAppendColumn FOnAppendColumn;
	TTMSFNCGridOnInsertRow FOnInsertRow;
	TTMSFNCGridCellAfterDraw FOnCellAfterDraw;
	TTMSFNCGridCellBeforeDraw FOnCellBeforeDraw;
	TTMSFNCGridCellControlEvent FOnFixedCellDropDownButtonClick;
	bool FEditing;
	Fmx::Listbox::TListBox* FFilterListBox;
	Fmx::Types::TTimer* FFilterTimer;
	TTMSFNCGridTopLeftChanged FOnTopLeftChanged;
	TTMSFNCGridOnCellEditCancel FOnCellEditCancel;
	TTMSFNCGridMemo* FCellMemo;
	TTMSFNCGridOnBeforeRowDrop FOnBeforeRowDrop;
	TTMSFNCGridOnBeforeColumnDrop FOnBeforeColumnDrop;
	TTMSFNCGridOnGetCellProperties FOnGetCellProperties;
	TTMSFNCGridAppearance* FAppearance;
	TTMSFNCGridCellEditBeforeExit FOnBeforeCellEditExit;
	TTMSFNCGridAdapter* FAdapter;
	TTMSFNCGridCellControlEvent FOnCellButtonClick;
	TTMSFNCGridCustomToolBarPopupMode FToolBarPopupMode;
	TTMSFNCGridCustomToolBarPopup* FToolBarPopup;
	TTMSFNCGridOnCellComboCloseUp FOnCellComboCloseUp;
	TTMSFNCGridOnCellEditDone FOnInternalCellEditDone;
	bool FDesignTimeSampleData;
	TTMSFNCGridOnCellClick FOnFixedCellDblClick;
	TTMSFNCGridOnCellClick FOnCellDblClick;
	TTMSFNCGridOnGetCellRotation FOnGetCellRotation;
	void __fastcall SetFreezeColumns(const int Value);
	void __fastcall SetFreezeRows(const int Value);
	void __fastcall SetLeftCol(const int Value);
	void __fastcall SetTopRow(const int Value);
	void __fastcall SetC(const System::Uitypes::TCursor Value);
	int __fastcall GetLeftCol();
	int __fastcall GetTopRow();
	TTMSFNCGridMemo* __fastcall GetCellMemo();
	TTMSFNCGridEdit* __fastcall GetCellEdit();
	TTMSFNCGridSpinBox* __fastcall GetCellSpinBox();
	TTMSFNCGridColorPicker* __fastcall GetCellColorPicker();
	TTMSFNCGridDatePicker* __fastcall GetCellDatePicker();
	TTMSFNCGridTrackBar* __fastcall GetCellTrackBar();
	TTMSFNCGridComboBox* __fastcall GetCellComboBox();
	System::Uitypes::TCursor __fastcall GetC();
	void __fastcall SetAppearance(TTMSFNCGridAppearance* const Value);
	void __fastcall SetAdapter(TTMSFNCGridAdapter* const Value);
	int __fastcall GetBottomRow();
	int __fastcall GetRightCol();
	Fmx::Tmsfncgriddata::TTMSFNCGridCellRec __fastcall GetPrevFocusedCell();
	void __fastcall SetDesignTimeSampleData(const bool Value);
	
protected:
	HIDESBASE void __fastcall Animate(System::TObject* Sender);
	void __fastcall DoFreeEditControl(System::TObject* Sender);
	virtual void __fastcall ApplyStyle();
	virtual void __fastcall SetAdaptToStyle(const bool Value);
	virtual void __fastcall ResetToDefaultStyle();
	virtual void __fastcall BeforeExport();
	virtual void __fastcall AfterExport();
	virtual void __fastcall ChangeDPIScale(int M, int D);
	virtual void __fastcall SetRowSelect(int Row, const bool Value);
	Fmx::Controls::TPopup* __fastcall FindPopup(System::Classes::TComponent* AControl);
	void __fastcall EditApplyStyleLookup(System::TObject* Sender);
	virtual System::UnicodeString __fastcall GetColumnDisplayName(int ACol);
	Fmx::Tmsfncgridcell::TTMSFNCGridCellLayout* __fastcall GetCellAppearance(Fmx::Tmsfncgriddata::TTMSFNCGridCellState AState, int ACol, int ARow);
	int __fastcall GetPageScrollSize();
	float __fastcall GetColumnViewPortSize();
	float __fastcall GetRowViewPortSize();
	virtual System::UnicodeString __fastcall GetVersion();
	virtual System::UnicodeString __fastcall GetDocURL();
	virtual int __fastcall GetHorizontalContentCount();
	virtual double __fastcall GetHorizontalContentViewPortSize();
	virtual int __fastcall GetVerticalContentCount();
	virtual double __fastcall GetVerticalContentViewPortSize();
	float __fastcall GetHorizontalPos(int AStartCol, int AStopCol);
	float __fastcall GetVerticalPos(int AStartRow, int AStopRow);
	virtual bool __fastcall DoIsCellSelected(int ACol, int ARow);
	bool __fastcall DoIsFixedCellSelected(int ACol, int ARow);
	virtual Fmx::Tmsfncgridcell::TTMSFNCGridCellLayout* __fastcall GetDefaultFixedLayout();
	virtual Fmx::Tmsfncgridcell::TTMSFNCGridCellLayout* __fastcall GetDefaultNormalLayout();
	virtual Fmx::Tmsfncgridcell::TTMSFNCGridCellLayout* __fastcall GetDefaultGroupLayout();
	virtual Fmx::Tmsfncgridcell::TTMSFNCGridCellLayout* __fastcall GetDefaultSummaryLayout();
	virtual Fmx::Tmsfncgridcell::TTMSFNCGridCellLayout* __fastcall GetDefaultSelectedLayout();
	virtual Fmx::Tmsfncgridcell::TTMSFNCGridCellLayout* __fastcall GetDefaultFocusedLayout();
	virtual Fmx::Tmsfncgridcell::TTMSFNCGridCellLayout* __fastcall GetDefaultFixedSelectedLayout();
	virtual Fmx::Tmsfncgridcell::TTMSFNCGridCellLayout* __fastcall GetDefaultBandLayout();
	Fmx::Tmsfnctypes::TTMSFNCBitmap* __fastcall GetNodeBitmap(Fmx::Tmsfncgridcell::TTMSFNCGridNodeState AState);
	virtual Fmx::Tmsfnctypes::TTMSFNCBitmap* __fastcall GetDummyButtonBitmap(Fmx::Tmsfncgridcell::TTMSFNCButtonGridCell* ACell);
	virtual void __fastcall Notification(System::Classes::TComponent* AComponent, System::Classes::TOperation Operation);
	void __fastcall AppearanceChanged(System::TObject* Sender);
	void __fastcall DoPaintCommentPopup(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	void __fastcall ClearFixedSorting(Fmx::Tmsfncgridcell::TTMSFNCGridCell* ACell);
	virtual void __fastcall HandleMouseLeave();
	virtual void __fastcall HandleDblClick(float X, float Y);
	virtual void __fastcall HandleMouseDown(System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall HandleMouseMove(System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall HandleMouseUp(System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall HandleMouseWheel(System::Classes::TShiftState Shift, int WheelDelta, bool &Handled);
	virtual void __fastcall HandleKeyDown(System::Word &Key, System::Classes::TShiftState Shift);
	virtual void __fastcall HandleKeyPress(System::WideChar &Key);
	virtual void __fastcall HandleDialogKey(System::Word &Key, System::Classes::TShiftState Shift);
	void __fastcall HandleFilterListClick(System::TObject* Sender);
	void __fastcall ApplyFilterListBoxStyleLookUp(System::TObject* Sender);
	void __fastcall HandleFilterTimer(System::TObject* Sender);
	virtual void __fastcall HandleKeyUp(System::Word &Key, System::Classes::TShiftState Shift);
	void __fastcall DoCellKeyDown(int ACol, int ARow, System::Word &Key, System::Classes::TShiftState Shift);
	void __fastcall DoCellKeyUp(int ACol, int ARow, System::Word &Key, System::Classes::TShiftState Shift);
	void __fastcall ProcessTab(System::Word &Key, System::Classes::TShiftState Shift, Fmx::Tmsfncgridoptions::TTMSFNCGridTabKeyDirection Mode, Fmx::Tmsfncgridoptions::TTMSFNCGridTabKeyHandling Handling, bool DirectEdit, TTMSFNCGridEditCellStart CellStart = (TTMSFNCGridEditCellStart)(0x0));
	void __fastcall UpdateCursor(System::Uitypes::TCursor ACursor);
	virtual void __fastcall DoExit();
	virtual void __fastcall DoEnter();
	virtual void __fastcall StopAnimationTimer();
	virtual void __fastcall UpdateControlCache();
	virtual void __fastcall UpdateControlDisplay();
	virtual void __fastcall VerticalScrollPositionChanged();
	virtual void __fastcall HorizontalScrollPositionChanged();
	virtual bool __fastcall HideEdit(bool AEnterKey = false, bool ATestHiding = false);
	virtual void __fastcall CellControlKeyDown(System::TObject* Sender, System::Word &Key, System::WideChar &KeyChar, System::Classes::TShiftState Shift);
	virtual void __fastcall CellEditKeyDown(System::TObject* Sender, System::Word &Key, System::WideChar &KeyChar, System::Classes::TShiftState Shift);
	virtual void __fastcall CellExit(System::TObject* Sender);
	virtual void __fastcall CellEditBtnKeyDown(System::TObject* Sender, System::Word &Key, System::WideChar &KeyChar, System::Classes::TShiftState Shift);
	virtual void __fastcall CellComboBoxKeyDown(System::TObject* Sender, System::Word &Key, System::WideChar &KeyChar, System::Classes::TShiftState Shift);
	virtual void __fastcall CellComboBoxChange(System::TObject* Sender);
	virtual void __fastcall CellComboBoxCloseUp(System::TObject* Sender);
	void __fastcall ScrollTimer(System::TObject* Sender);
	void __fastcall DragTimer(System::TObject* Sender);
	void __fastcall AutoSizeColumnInt(int ACol, bool Accurate = true, const int Padding = 0x5);
	void __fastcall AutoSizeRowInt(int ARow, const int Padding = 0x5);
	void __fastcall DoCheckBoxClick(System::TObject* Sender);
	void __fastcall DoRadioButtonClick(System::TObject* Sender);
	void __fastcall DoButtonClick(System::TObject* Sender);
	void __fastcall DoNodeClick(System::TObject* Sender);
	void __fastcall DoBitmapClick(System::TObject* Sender);
	void __fastcall DoCommentClick(System::TObject* Sender);
	void __fastcall DoFixedDropDownButtonClick(System::TObject* Sender);
	virtual void __fastcall DoCellAnchorClick(int ACol, int ARow, System::UnicodeString AAnchor);
	virtual void __fastcall DoCanSizeColumn(int ACol, bool &Allow);
	virtual void __fastcall DoCanSizeRow(int ARow, bool &Allow);
	virtual void __fastcall DoColumnSize(int ACol, float &NewWidth);
	virtual void __fastcall DoRowSize(int ARow, float &NewHeight);
	virtual void __fastcall DoColumnSized(int ACol, float NewWidth);
	virtual void __fastcall DoRowSized(int ARow, float NewHeight);
	virtual void __fastcall DoCanSortColumn(int ACol, bool &Allow);
	virtual void __fastcall DoColumnSorted(int ACol, Fmx::Tmsfncgriddata::TTMSFNCGridSortDirection Direction);
	virtual void __fastcall DoCanDragColumn(int ACol, bool &Allow);
	virtual void __fastcall DoCanDragRow(int ARow, bool &Allow);
	virtual void __fastcall DoColumnDragged(int FromColumn, int ToColumn);
	virtual void __fastcall DoRowDragged(int FromRow, int ToRow);
	virtual void __fastcall DoBeforeCellEditExit(int ACol, int ARow, Fmx::Controls::TControl* CellEditor, bool &AllowExit);
	virtual void __fastcall DoBeforeColumnDrop(int FromColumn, int &ToColumn, bool &Allow);
	virtual void __fastcall DoBeforeRowDrop(int FromRow, int &ToRow, bool &Allow);
	virtual void __fastcall DoFixedCellDropDownButtonClick(int ACol, int ARow, Fmx::Tmsfncgridcell::TTMSFNCGridCell* ACell);
	virtual void __fastcall DoCellCheckBoxClick(int ACol, int ARow, Fmx::Tmsfncgridcell::TTMSFNCGridCell* ACell);
	virtual void __fastcall DoCellRadioButtonClick(int ACol, int ARow, Fmx::Tmsfncgridcell::TTMSFNCGridCell* ACell);
	virtual void __fastcall DoCellButtonClick(int ACol, int ARow, Fmx::Tmsfncgridcell::TTMSFNCGridCell* ACell);
	virtual void __fastcall DoGetCellIsFixed(int ACol, int ARow, bool &ACellFixed);
	virtual void __fastcall DoGetRowIsBand(int ARow, bool &ARowBand);
	virtual void __fastcall DoCellBitmapClick(int ACol, int ARow, Fmx::Tmsfncgridcell::TTMSFNCGridCell* ACell);
	virtual void __fastcall DoCellCommentClick(int ACol, int ARow, Fmx::Tmsfncgridcell::TTMSFNCGridCell* ACell);
	virtual void __fastcall DoCellSortClick(System::Classes::TShiftState Shift, int ACol, int ARow, Fmx::Tmsfncgriddata::TTMSFNCGridSortDirection Direction, Fmx::Tmsfncgridcell::TTMSFNCGridCell* ACell);
	virtual void __fastcall DoCellNodeClick(int ACol, int ARow, Fmx::Tmsfncgridcell::TTMSFNCGridCell* ACell);
	virtual void __fastcall DoInsertRow(int ARow);
	virtual void __fastcall DoDeleteRow(int ARow);
	virtual void __fastcall DoAppendRow(int ARow);
	virtual void __fastcall DoAppendColumn(int ACol);
	virtual void __fastcall DoCanInsertRow(int ARow, bool &Allow);
	virtual void __fastcall DoCanDeleteRow(int ARow, bool &Allow);
	virtual void __fastcall DoCanAppendRow(int ARow, bool &Allow);
	virtual void __fastcall DoCanAppendColumn(int ACol, bool &Allow);
	virtual void __fastcall DoCellRightClick(int ACol, int ARow);
	virtual void __fastcall DoFixedCellRightClick(int ACol, int ARow);
	virtual void __fastcall DoCellClick(int ACol, int ARow);
	virtual void __fastcall DoFixedCellClick(System::Classes::TShiftState Shift, int ACol, int ARow);
	virtual void __fastcall DoCellDblClick(int ACol, int ARow);
	virtual void __fastcall DoFixedCellDblClick(int ACol, int ARow);
	virtual void __fastcall DoGetCellClass(int ACol, int ARow, Fmx::Tmsfncgridcell::TTMSFNCGridCellClass &CellClassType);
	virtual void __fastcall DoGetCellData(int ACol, int ARow, System::UnicodeString &CellString);
	virtual void __fastcall DoGetCellRotation(int ACol, int ARow, int &Angle);
	virtual void __fastcall DoGetCellLayout(int ACol, int ARow, Fmx::Tmsfncgridcell::TTMSFNCGridCellLayout* ALayout, Fmx::Tmsfncgriddata::TTMSFNCGridCellState ACellState);
	virtual void __fastcall DoGetCellProperties(int ACol, int ARow, Fmx::Tmsfncgridcell::TTMSFNCGridCell* Cell);
	virtual void __fastcall DoGetCellMergeInfo(int ACol, int ARow, int &ABaseCol, int &ABaseRow, int &AColSpan, int &ARowSpan);
	virtual void __fastcall DoGetCellEditorCustomClassType(int ACol, int ARow, Fmx::Tmsfncgriddata::TTMSFNCGridEditorClass &CellEditorCustomClassType);
	virtual void __fastcall DoGetCellEditorType(int ACol, int ARow, Fmx::Tmsfncgriddata::TTMSFNCGridEditorType &CellEditorType);
	virtual void __fastcall DoCellEditGetData(int ACol, int ARow, Fmx::Controls::TControl* CellEditor, System::UnicodeString &CellString);
	virtual void __fastcall DoCellEditValidateData(int ACol, int ARow, Fmx::Controls::TControl* CellEditor, System::UnicodeString &CellString, bool &Allow);
	virtual void __fastcall DoCellEditSetData(int ACol, int ARow, Fmx::Controls::TControl* CellEditor, System::UnicodeString &CellString);
	void __fastcall DoCellComboCloseUp(int ACol, int ARow, int ItemIndex, System::UnicodeString Value);
	virtual void __fastcall DoCellEditGetColor(int ACol, int ARow, Fmx::Controls::TControl* CellEditor, System::Uitypes::TAlphaColor &CellColor);
	virtual void __fastcall DoCellEditValidateColor(int ACol, int ARow, Fmx::Controls::TControl* CellEditor, System::Uitypes::TAlphaColor &CellColor, bool &Allow);
	virtual void __fastcall DoCellEditSetColor(int ACol, int ARow, Fmx::Controls::TControl* CellEditor, System::Uitypes::TAlphaColor &CellColor);
	virtual void __fastcall DoCellEditDone(int ACol, int ARow, Fmx::Controls::TControl* CellEditor);
	void __fastcall DoCellEditCancel(int ACol, int ARow);
	virtual void __fastcall DoGetCellEditorProperties(int ACol, int ARow, Fmx::Controls::TControl* CellEditor);
	virtual void __fastcall DoGetCellReadOnly(int ACol, int ARow, bool &AReadOnly);
	virtual void __fastcall DoBeforeDrawCell(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, System::Types::TRectF &ARect, System::Types::TRectF &ATextRect, bool &ADrawText, bool &ADrawBackGround, bool &ADrawBorder, bool &AllowDraw);
	virtual void __fastcall DoAfterDrawCell(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, const System::Types::TRectF &ATextRect);
	virtual void __fastcall DoBeforeDrawGridCell(int ACol, int ARow, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, System::Types::TRectF &ARect, System::Types::TRectF &ATextRect, bool &ADrawText, bool &ADrawBackGround, bool &ADrawBorder, bool &AllowDraw);
	virtual void __fastcall DoAfterDrawGridCell(int ACol, int ARow, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, const System::Types::TRectF &ATextRect);
	__property TTMSFNCGridAdapter* Adapter = {read=FAdapter, write=SetAdapter};
	__property int TopRow = {read=GetTopRow, write=SetTopRow, nodefault};
	__property int BottomRow = {read=GetBottomRow, nodefault};
	__property int LeftCol = {read=GetLeftCol, write=SetLeftCol, nodefault};
	__property int RightCol = {read=GetRightCol, nodefault};
	__property int FreezeColumns = {read=FFreezeColumns, write=SetFreezeColumns, default=0};
	__property int FreezeRows = {read=FFreezeRows, write=SetFreezeRows, default=0};
	__property TTMSFNCGridTopLeftChanged OnTopLeftChanged = {read=FOnTopLeftChanged, write=FOnTopLeftChanged};
	__property TTMSFNCGridOnGetCellClass OnGetCellClass = {read=FOnGetCellClass, write=FOnGetCellClass};
	__property TTMSFNCGridOnGetCellData OnGetCellData = {read=FOnGetCellData, write=FOnGetCellData};
	__property TTMSFNCGridOnGetCellProperties OnGetCellProperties = {read=FOnGetCellProperties, write=FOnGetCellProperties};
	__property TTMSFNCGridOnGetCellLayout OnGetCellLayout = {read=FOnGetCellLayout, write=FOnGetCellLayout};
	__property TTMSFNCGridOnGetCellMergeInfo OnGetCellMergeInfo = {read=FOnGetCellMergeInfo, write=FOnGetCellMergeInfo};
	__property TTMSFNCGridOnGetCellReadOnly OnGetCellReadOnly = {read=FOnGetCellReadOnly, write=FOnGetCellReadOnly};
	__property TTMSFNCGridOnGetRowIsBand OnGetRowIsBand = {read=FOnGetRowIsBand, write=FOnGetRowIsBand};
	__property TTMSFNCGridOnGetCellRotation OnGetCellRotation = {read=FOnGetCellRotation, write=FOnGetCellRotation};
	__property Fmx::Listbox::TListBox* FilterListbox = {read=FFilterListBox};
	__property TTMSFNCGridOnCanInsertRow OnCanInsertRow = {read=FOnCanInsertRow, write=FOnCanInsertRow};
	__property TTMSFNCGridOnCanAppendRow OnCanAppendRow = {read=FOnCanAppendRow, write=FOnCanAppendRow};
	__property TTMSFNCGridOnCanAppendColumn OnCanAppendColumn = {read=FOnCanAppendColumn, write=FOnCanAppendColumn};
	__property TTMSFNCGridOnCanDeleteRow OnCanDeleteRow = {read=FOnCanDeleteRow, write=FOnCanDeleteRow};
	__property TTMSFNCGridOnInsertRow OnInsertRow = {read=FOnInsertRow, write=FOnInsertRow};
	__property TTMSFNCGridOnAppendRow OnAppendRow = {read=FOnAppendRow, write=FOnAppendRow};
	__property TTMSFNCGridOnAppendColumn OnAppendColumn = {read=FOnAppendColumn, write=FOnAppendColumn};
	__property TTMSFNCGridOnDeleteRow OnDeleteRow = {read=FOnDeleteRow, write=FOnDeleteRow};
	__property TTMSFNCGridOnCellAnchorClick OnCellAnchorClick = {read=FOnCellAnchorClick, write=FOnCellAnchorClick};
	__property TTMSFNCGridOnGetCellEditorCustomClassType OnGetCellEditorCustomClassType = {read=FOnGetCellEditorCustomClassType, write=FOnGetCellEditorCustomClassType};
	__property TTMSFNCGridOnGetCellEditorType OnGetCellEditorType = {read=FOnGetCellEditorType, write=FOnGetCellEditorType};
	__property TTMSFNCGridOnCellEditGetData OnCellEditGetData = {read=FOnCellEditGetData, write=FOnCellEditGetData};
	__property TTMSFNCGridOnCellEditValidateData OnCellEditValidateData = {read=FOnCellEditValidateData, write=FOnCellEditValidateData};
	__property TTMSFNCGridOnCellEditSetData OnCellEditSetData = {read=FOnCellEditSetData, write=FOnCellEditSetData};
	__property TTMSFNCGridOnCellComboCloseUp OnCellComboCloseUp = {read=FOnCellComboCloseUp, write=FOnCellComboCloseUp};
	__property TTMSFNCGridOnCellEditGetColor OnCellEditGetColor = {read=FOnCellEditGetColor, write=FOnCellEditGetColor};
	__property TTMSFNCGridOnCellEditValidateColor OnCellEditValidateColor = {read=FOnCellEditValidateColor, write=FOnCellEditValidateColor};
	__property TTMSFNCGridOnCellEditSetColor OnCellEditSetColor = {read=FOnCellEditSetColor, write=FOnCellEditSetColor};
	__property TTMSFNCGridOnCellEditDone OnInternalCellEditDone = {read=FOnInternalCellEditDone, write=FOnInternalCellEditDone};
	__property TTMSFNCGridOnCellEditDone OnCellEditDone = {read=FOnCellEditDone, write=FOnCellEditDone};
	__property TTMSFNCGridOnCellEditCancel OnCellEditCancel = {read=FOnCellEditCancel, write=FOnCellEditCancel};
	__property TTMSFNCGridOnGetCellEditorProperties OnGetCellEditorProperties = {read=FOnGetCellEditorProperties, write=FOnGetCellEditorProperties};
	__property TTMSFNCGridOnGetCellIsFixed OnGetCellIsFixed = {read=FOnGetCellIsFixed, write=FOnGetCellIsFixed};
	__property TTMSFNCGridCellControlEvent OnFixedCellDropDownButtonClick = {read=FOnFixedCellDropDownButtonClick, write=FOnFixedCellDropDownButtonClick};
	__property TTMSFNCGridCellBeforeDraw OnCellBeforeDraw = {read=FOnCellBeforeDraw, write=FOnCellBeforeDraw};
	__property TTMSFNCGridCellEditBeforeExit OnBeforeCellEditExit = {read=FOnBeforeCellEditExit, write=FOnBeforeCellEditExit};
	__property TTMSFNCGridCellAfterDraw OnCellAfterDraw = {read=FOnCellAfterDraw, write=FOnCellAfterDraw};
	__property TTMSFNCGridCellControlEvent OnCellBitmapClick = {read=FOnCellBitmapClick, write=FOnCellBitmapClick};
	__property TTMSFNCGridCellControlEvent OnCellRadioButtonClick = {read=FOnCellRadioButtonClick, write=FOnCellRadioButtonClick};
	__property TTMSFNCGridCellControlEvent OnCellButtonClick = {read=FOnCellButtonClick, write=FOnCellButtonClick};
	__property TTMSFNCGridCellControlEvent OnCellCheckBoxClick = {read=FOnCellCheckBoxClick, write=FOnCellCheckBoxClick};
	__property TTMSFNCGridCellControlEvent OnCellCommentClick = {read=FOnCellCommentClick, write=FOnCellCommentClick};
	__property TTMSFNCGridCellControlEvent OnCellSortClick = {read=FOnCellSortClick, write=FOnCellSortClick};
	__property TTMSFNCGridCellControlEvent OnCellNodeClick = {read=FOnCellNodeClick, write=FOnCellNodeClick};
	__property TTMSFNCGridOnCanSizeColumn OnCanSizeColumn = {read=FOnCanSizeColumn, write=FOnCanSizeColumn};
	__property TTMSFNCGridOnCanSizeRow OnCanSizeRow = {read=FOnCanSizeRow, write=FOnCanSizeRow};
	__property TTMSFNCGridOnColumnSize OnColumnSize = {read=FOnColumnSize, write=FOnColumnSize};
	__property TTMSFNCGridOnRowSize OnRowSize = {read=FOnRowSize, write=FOnRowSize};
	__property TTMSFNCGridOnColumnSized OnColumnSized = {read=FOnColumnSized, write=FOnColumnSized};
	__property TTMSFNCGridOnRowSized OnRowSized = {read=FOnRowSized, write=FOnRowSized};
	__property TTMSFNCGridOnCanSizeColumn OnCanDragColumn = {read=FOnCanDragColumn, write=FOnCanDragColumn};
	__property TTMSFNCGridOnCanSizeRow OnCanDragRow = {read=FOnCanDragRow, write=FOnCanDragRow};
	__property TTMSFNCGridOnColumnDragged OnColumnDragged = {read=FOnColumnDragged, write=FOnColumnDragged};
	__property TTMSFNCGridOnRowDragged OnRowDragged = {read=FOnRowDragged, write=FOnRowDragged};
	__property TTMSFNCGridOnBeforeColumnDrop OnBeforeColumnDrop = {read=FOnBeforeColumnDrop, write=FOnBeforeColumnDrop};
	__property TTMSFNCGridOnBeforeRowDrop OnBeforeRowDrop = {read=FOnBeforeRowDrop, write=FOnBeforeRowDrop};
	__property TTMSFNCGridOnColumnSorted OnColumnSorted = {read=FOnColumnSorted, write=FOnColumnSorted};
	__property TTMSFNCGridOnCanSortColumn OnCanSortColumn = {read=FOnCanSortColumn, write=FOnCanSortColumn};
	__property TTMSFNCGridOnCellClick OnCellClick = {read=FOnCellClick, write=FOnCellClick};
	__property TTMSFNCGridOnCellClick OnFixedCellClick = {read=FOnFixedCellClick, write=FOnFixedCellClick};
	__property TTMSFNCGridOnCellClick OnCellRightClick = {read=FOnCellRightClick, write=FOnCellRightClick};
	__property TTMSFNCGridOnCellClick OnFixedCellRightClick = {read=FOnFixedCellRightClick, write=FOnFixedCellRightClick};
	__property TTMSFNCGridOnCellClick OnCellDblClick = {read=FOnCellDblClick, write=FOnCellDblClick};
	__property TTMSFNCGridOnCellClick OnFixedCellDblClick = {read=FOnFixedCellDblClick, write=FOnFixedCellDblClick};
	__property TTMSFNCGridAppearance* Appearance = {read=FAppearance, write=SetAppearance};
	__property Fmx::Tmsfncgriddata::TTMSFNCGridCellRec PrevFocusedCell = {read=GetPrevFocusedCell};
	__property TTMSFNCGridCustomToolBarPopup* ToolBarPopup = {read=FToolBarPopup, write=FToolBarPopup};
	__property TTMSFNCGridCustomToolBarPopupMode ToolBarPopupMode = {read=FToolBarPopupMode, write=FToolBarPopupMode, default=0};
	__property bool DesignTimeSampleData = {read=FDesignTimeSampleData, write=SetDesignTimeSampleData, nodefault};
	void __fastcall DisplayCellsAlternate(float x, float y, float xOrig, float yOrig, int CStart, int CStop, int RStart, int RStop, int Ci, int Ri, int ResetCi, bool Fixed = false);
	void __fastcall DisplayCellsNormal(float x, float y, float xOrig, float yOrig, int CStart, int CStop, int RStart, int RStop, int Ci, int Ri, int ResetCi, bool Fixed = false);
	
public:
	__fastcall virtual TTMSFNCCustomGrid(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCCustomGrid();
	int __fastcall VisibleRowCount();
	int __fastcall VisibleColumnCount();
	Fmx::Tmsfncgriddata::TTMSFNCGridCellRec __fastcall GetDisplayCell(const Fmx::Tmsfncgriddata::TTMSFNCGridCellRec &ACell);
	Fmx::Tmsfncgriddata::TTMSFNCGridCellRec __fastcall GetRealCell(const Fmx::Tmsfncgriddata::TTMSFNCGridCellRec &ACell);
	Fmx::Tmsfncgridcell::TTMSFNCGridCell* __fastcall GetCellObject(const Fmx::Tmsfncgriddata::TTMSFNCGridCellRec &ACell);
	Fmx::Tmsfncgridcell::TTMSFNCGridCell* __fastcall GetCell(const Fmx::Tmsfncgriddata::TTMSFNCGridCellRec &ACell);
	Fmx::Tmsfncgriddata::TTMSFNCGridCellRec __fastcall GetCellByObject(Fmx::Tmsfncgridcell::TTMSFNCGridCell* Cell);
	Fmx::Tmsfncgriddata::TTMSFNCGridCellRec __fastcall GetDisplayCellByObject(Fmx::Tmsfncgridcell::TTMSFNCGridCell* Cell);
	float __fastcall GetTotalColumnWidth();
	float __fastcall GetTotalRowHeight();
	virtual double __fastcall GetTotalContentWidth();
	virtual double __fastcall GetTotalContentHeight();
	virtual void __fastcall EndUpdate();
	virtual void __fastcall RemoveAllCells();
	virtual void __fastcall ClearSelection();
	virtual void __fastcall ExportNotification(Fmx::Tmsfncgriddata::TTMSFNCGridExportState AState, int ARow);
	void __fastcall ApplyCellState(int ACol, int ARow, Fmx::Tmsfncgridcell::TTMSFNCGridCell* Cell);
	virtual Fmx::Tmsfncgriddata::TTMSFNCGridCellState __fastcall GetCellState(int ACol, int ARow);
	Fmx::Tmsfncgriddata::TTMSFNCGridCellRec __fastcall XYToCell(float X, float Y);
	int __fastcall GetFixedCols();
	int __fastcall GetFixedRows();
	float __fastcall GetFixedWidth();
	float __fastcall GetFixedOnlyHeight();
	float __fastcall GetFixedOnlyWidth();
	float __fastcall GetFixedHeight();
	float __fastcall GetFixedRightWidth();
	float __fastcall GetFixedFooterHeight();
	int __fastcall GetCellContainerPosX();
	int __fastcall GetCellContainerPosY();
	virtual bool __fastcall ColumnStretchingActive();
	virtual void __fastcall DrawContent(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	virtual void __fastcall EditCell(const Fmx::Tmsfncgriddata::TTMSFNCGridCellRec &ACell, TTMSFNCGridEditCellStart CellStart = (TTMSFNCGridEditCellStart)(0x0), bool InsertKey = false, System::UnicodeString Value = System::UnicodeString(), System::Word Key = (System::Word)(0x0));
	void __fastcall CancelEdit();
	virtual void __fastcall StopEdit();
	void __fastcall NextPage();
	void __fastcall PreviousPage();
	virtual void __fastcall LoadSettingsFromFile(System::UnicodeString AFileName);
	virtual void __fastcall LoadSettingsFromStream(System::Classes::TStream* AStream);
	void __fastcall Navigate(const Fmx::Tmsfncgriddata::TTMSFNCGridCellRec &ACell, bool ForceScroll = false);
	virtual void __fastcall UpdateControlAfterResize();
	void __fastcall AutoSizeGrid(bool Accurate, const int PaddingCol = 0x5, const int PaddingRow = 0x5);
	void __fastcall AutoSizeColumn(int ACol, bool Accurate = true, const int Padding = 0x5);
	void __fastcall AutoSizeColumns(bool Accurate = true, const int Padding = 0x5);
	void __fastcall AutoSizeRow(int ARow, const int Padding = 0x5);
	void __fastcall AutoSizeRows(const int Padding = 0x5);
	void __fastcall StretchColumn(int ACol, float ANewWidth = -1.000000E+00f);
	virtual void __fastcall SelectCell(const Fmx::Tmsfncgriddata::TTMSFNCGridCellRec &Cell, System::Classes::TShiftState Shift = System::Classes::TShiftState() , bool MouseDragging = false);
	virtual void __fastcall UpdateGridCells(bool AScrollOnly = false);
	virtual void __fastcall UpdateControlScroll(double AHorizontalPos, double AVerticalPos, double ANewHorizontalPos, double ANewVerticalPos);
	void __fastcall UpdateGridCellDisplay();
	void __fastcall DoUpdateGridCellDisplay(const Fmx::Tmsfncgriddata::TTMSFNCGridCellRecRange &ASelection);
	void __fastcall PaintCells(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, int CStart, int CStop, int RStart, int RStop, int Ci, int Ri, int ResetCi);
	void __fastcall DisplayCells(float x, float y, float xOrig, float yOrig, int CStart, int CStop, int RStart, int RStop, int Ci, int Ri, int ResetCi, bool Fixed = false);
	virtual void __fastcall InitSample();
	virtual void __fastcall LoadSampleData();
	__property bool Editing = {read=FEditing, nodefault};
	__property System::Uitypes::TCursor Cursor = {read=GetC, write=SetC, nodefault};
	__property TTMSFNCGridEdit* CellEdit = {read=GetCellEdit, write=FCellEdit};
	__property TTMSFNCGridMemo* CellMemo = {read=GetCellMemo, write=FCellMemo};
	__property TTMSFNCGridComboBox* CellComboBox = {read=GetCellComboBox, write=FCellComboBox};
	__property TTMSFNCGridSpinBox* CellSpinBox = {read=GetCellSpinBox, write=FCellSpinBox};
	__property TTMSFNCGridColorPicker* CellColorPicker = {read=GetCellColorPicker, write=FCellColorPicker};
	__property TTMSFNCGridDatePicker* CellDatePicker = {read=GetCellDatePicker, write=FCellDatePicker};
	__property TTMSFNCGridTrackBar* CellTrackBar = {read=GetCellTrackBar, write=FCellTrackBar};
	__property Fmx::Controls::TControl* ActiveEditControl = {read=FEditControl, write=FEditControl};
};


//-- var, const, procedure ---------------------------------------------------
#define TTMSFNCGridDocURL u"https://download.tmssoftware.com/doc/tmsfncuipack/componen"\
	u"ts/ttmsfncgrid/"
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x1);
static constexpr System::Int8 REL_VER = System::Int8(0x0);
static constexpr System::Int8 BLD_VER = System::Int8(0x2);
static constexpr System::Int8 SCROLLINGDELAY = System::Int8(0x0);
static constexpr System::Word SWIPECOUNT = System::Word(0x12c);
static constexpr System::Int8 DOWNCOUNT = System::Int8(0x64);
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCGridFilterAll;
#define Fmx_Tmsfnccustomgrid_sTMSFNCGridFilterAll System::LoadResourceString(&Fmx::Tmsfnccustomgrid::_sTMSFNCGridFilterAll)
}	/* namespace Tmsfnccustomgrid */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCCUSTOMGRID)
using namespace Fmx::Tmsfnccustomgrid;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfnccustomgridHPP
