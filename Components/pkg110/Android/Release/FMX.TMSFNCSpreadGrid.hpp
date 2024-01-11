// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCSpreadGrid.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncspreadgridHPP
#define Fmx_TmsfncspreadgridHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <System.Variants.hpp>
#include <FMX.TMSFNCGrid.hpp>
#include <FMX.TMSFNCFormulaParser.hpp>
#include <FMX.TMSFNCGridData.hpp>
#include <FMX.TMSFNCUtils.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.TMSFNCSpreadGridTypes.hpp>
#include <System.Types.hpp>
#include <System.Generics.Collections.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>
#include <FMX.TMSFNCCustomGrid.hpp>
#include <FMX.TMSFNCCustomScrollControl.hpp>
#include <FMX.TMSFNCCustomControl.hpp>
#include <FMX.Controls.hpp>
#include <FMX.Types.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncspreadgrid
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TCellRefList;
class DELPHICLASS TTMSFNCSpreadGrid;
//-- type declarations -------------------------------------------------------
#pragma pack(push,4)
class PASCALIMPLEMENTATION TCellRefList : public System::Generics::Collections::TList__1<Fmx::Tmsfncspreadgridtypes::TCellRef>
{
	typedef System::Generics::Collections::TList__1<Fmx::Tmsfncspreadgridtypes::TCellRef> inherited;
	
private:
	void __fastcall ShowCellRefs();
	
public:
	void __fastcall DeleteRef(TTMSFNCSpreadGrid* AGrid, const Fmx::Tmsfncspreadgridtypes::TGridCoord &gc);
	void __fastcall DeleteAll();
	void __fastcall ClearAll();
	void __fastcall ClearCell(int ACol, int ARow);
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCSpreadGridTypes_TCellRef>.Create */ inline __fastcall TCellRefList()/* overload */ : System::Generics::Collections::TList__1<Fmx::Tmsfncspreadgridtypes::TCellRef>() { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCSpreadGridTypes_TCellRef>.Create */ inline __fastcall TCellRefList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<Fmx::Tmsfncspreadgridtypes::TCellRef> > AComparer)/* overload */ : System::Generics::Collections::TList__1<Fmx::Tmsfncspreadgridtypes::TCellRef>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCSpreadGridTypes_TCellRef>.Create */ inline __fastcall TCellRefList(System::Generics::Collections::TEnumerable__1<Fmx::Tmsfncspreadgridtypes::TCellRef>* const Collection)/* overload */ : System::Generics::Collections::TList__1<Fmx::Tmsfncspreadgridtypes::TCellRef>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCSpreadGridTypes_TCellRef>.Create */ inline __fastcall TCellRefList(const Fmx::Tmsfncspreadgridtypes::TCellRef *Values, const int Values_High)/* overload */ : System::Generics::Collections::TList__1<Fmx::Tmsfncspreadgridtypes::TCellRef>(Values, Values_High) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCSpreadGridTypes_TCellRef>.Destroy */ inline __fastcall virtual ~TCellRefList() { }
	
};

#pragma pack(pop)

enum DECLSPEC_DENUM TCellNameMode : unsigned char { nmA1, nmRC };

enum DECLSPEC_DENUM TErrorDisplay : unsigned char { edFormula, edErrorText };

typedef void __fastcall (__closure *TFormulaErrorEvent)(System::TObject* Sender, int ACol, int ARow, int ErrType, int ErrPos, int ErrParam, System::UnicodeString ErrStr);

class PASCALIMPLEMENTATION TTMSFNCSpreadGrid : public Fmx::Tmsfncgrid::TTMSFNCGrid
{
	typedef Fmx::Tmsfncgrid::TTMSFNCGrid inherited;
	
private:
	Fmx::Tmsfncformulaparser::TGridFormula* FFormula;
	Fmx::Tmsfncformulaparser::TLibBinderItems* FLibs;
	TCellRefList* FCellRefList;
	TCellNameMode FCellNameMode;
	bool FShowFormula;
	System::Classes::TNotifyEvent FOnAfterRecalc;
	System::Classes::TNotifyEvent FOnBeforeRecalc;
	bool FAutoHeaders;
	bool FAutoRecalc;
	Fmx::Tmsfncformulaparser::TTMSFNCGridBinder* FBinder;
	TFormulaErrorEvent FOnFormulaError;
	System::UnicodeString FFloatFormat;
	void __fastcall SetCellNameMode(const TCellNameMode Value);
	void __fastcall SetShowFormula(const bool Value);
	System::UnicodeString __fastcall CalcCell(int ACol, int ARow);
	void __fastcall DelCellRef(int ACol, int ARow);
	void __fastcall AddCellRef(int ACol, int ARow, System::UnicodeString s);
	bool __fastcall HasCellRef(int ACol, int ARow);
	void __fastcall ClearCellRefs();
	void __fastcall UpdCellRef();
	void __fastcall CalcCellRef(int ACol, int ARow);
	void __fastcall CalcFormula(int ACol, int ARow);
	System::UnicodeString __fastcall GetCellName(int ACol, int ARow);
	void __fastcall SetCellName(int ACol, int ARow, const System::UnicodeString Value);
	Fmx::Tmsfncformulaparser::TCalcCustomFunction __fastcall GetCalcCustomFunction();
	Fmx::Tmsfncformulaparser::TIsCustomFunction __fastcall GetIsCustomFunction();
	void __fastcall SetCalcCustomFunction(const Fmx::Tmsfncformulaparser::TCalcCustomFunction Value);
	void __fastcall SetIsCustomFunction(const Fmx::Tmsfncformulaparser::TIsCustomFunction Value);
	void __fastcall SetAutoHeaders(const bool Value);
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	virtual void __fastcall Notification(System::Classes::TComponent* AComponent, System::Classes::TOperation AOperation);
	void __fastcall CellToNameEx(int Col, int Row, System::UnicodeString &ColName, System::UnicodeString &RowName);
	void __fastcall RangeToNameEx(const Fmx::Tmsfncspreadgridtypes::TGridRect &gr, System::UnicodeString &ColName1, System::UnicodeString &RowName1, System::UnicodeString &ColName2, System::UnicodeString &RowName2);
	virtual System::UnicodeString __fastcall GetDocURL();
	System::UnicodeString __fastcall ModifyFormula(System::UnicodeString s, int ptx, int pty, int ofsx, int ofsy, int rngx, int rngy);
	System::UnicodeString __fastcall ModifyRange(System::UnicodeString s, System::UnicodeString absc1, System::UnicodeString absr1, System::UnicodeString absc2, System::UnicodeString absr2, int ptx, int pty, int ofsx, int ofsy, int rngx, int rngy);
	System::UnicodeString __fastcall ModifyName(System::UnicodeString s, System::UnicodeString absc, System::UnicodeString absr, int ptx, int pty, int ofsx, int ofsy);
	void __fastcall AutoSpreadHeaders();
	void __fastcall ClearSpreadHeaders();
	virtual System::UnicodeString __fastcall GetVersion();
	virtual int __fastcall CellNameIndex(System::UnicodeString AName);
	virtual System::UnicodeString __fastcall ErrorToString(int ErrType);
	void __fastcall RecalcCells();
	void __fastcall HandleFormulaError(System::TObject* Sender, int ACol, int ARow, int ErrType, int ErrPos, int ErrParam, System::UnicodeString ErrStr);
	virtual void __fastcall DoRowCountChanged();
	virtual void __fastcall DoColumnCountChanged();
	virtual void __fastcall DoAfterRecalc();
	virtual void __fastcall DoBeforeRecalc();
	System::UnicodeString __fastcall DoCalcCell(System::UnicodeString Expression, int ACol, int ARow);
	System::UnicodeString __fastcall DoFormatCell(const System::Variant &AValue);
	virtual void __fastcall DoHandleError(int ACol, int ARow, int ErrType, int ErrPos, int ErrParam);
	virtual void __fastcall DoGetCellData(int ACol, int ARow, System::UnicodeString &CellString);
	virtual void __fastcall DoCellEditDone(int ACol, int ARow, Fmx::Controls::TControl* CellEditor);
	virtual void __fastcall DoPasteNotify(const System::Types::TPoint &Origin, const Fmx::Tmsfncgriddata::TTMSFNCGridCellRecRange &ARange, Fmx::Tmsfncgriddata::TTMSFNCClipOperation AOperation);
	void __fastcall RegisterBinder(Fmx::Tmsfncformulaparser::TTMSFNCGridBinder* ABinder);
	void __fastcall UnregisterBinder(Fmx::Tmsfncformulaparser::TTMSFNCGridBinder* ABinder);
	
public:
	__fastcall virtual TTMSFNCSpreadGrid(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCSpreadGrid();
	virtual void __fastcall Loaded();
	Fmx::Tmsfncspreadgridtypes::TGridCoord __fastcall FindCellName(System::UnicodeString value);
	System::UnicodeString __fastcall CellToName(int Col, int Row);
	Fmx::Tmsfncspreadgridtypes::TGridCoord __fastcall NameToCell(System::UnicodeString s);
	System::UnicodeString __fastcall RangeToName(const Fmx::Tmsfncspreadgridtypes::TGridRect &gr);
	Fmx::Tmsfncspreadgridtypes::TGridRect __fastcall NameToRange(System::UnicodeString s);
	void __fastcall Recalc();
	__property System::UnicodeString CellName[int Col][int Row] = {read=GetCellName, write=SetCellName};
	System::UnicodeString __fastcall SetFormulaError(System::UnicodeString Expression, int ErrPos, int ErrLen);
	virtual void __fastcall DeleteRows(int Row, int Count);
	virtual void __fastcall InsertRows(int Row, int Count);
	virtual void __fastcall DeleteColumn(int Col);
	virtual void __fastcall InsertColumn(int Col);
	
__published:
	__property bool AutoHeaders = {read=FAutoHeaders, write=SetAutoHeaders, default=1};
	__property bool AutoRecalc = {read=FAutoRecalc, write=FAutoRecalc, default=1};
	__property TCellNameMode CellNameMode = {read=FCellNameMode, write=SetCellNameMode, default=0};
	__property System::UnicodeString FloatFormat = {read=FFloatFormat, write=FFloatFormat};
	__property Fmx::Tmsfncformulaparser::TLibBinderItems* Libs = {read=FLibs};
	__property bool ShowFormula = {read=FShowFormula, write=SetShowFormula, default=0};
	__property TFormulaErrorEvent OnFormulaError = {read=FOnFormulaError, write=FOnFormulaError};
	__property System::Classes::TNotifyEvent OnAfterRecalc = {read=FOnAfterRecalc, write=FOnAfterRecalc};
	__property System::Classes::TNotifyEvent OnBeforeRecalc = {read=FOnBeforeRecalc, write=FOnBeforeRecalc};
	__property Fmx::Tmsfncformulaparser::TIsCustomFunction OnIsCustomFunction = {read=GetIsCustomFunction, write=SetIsCustomFunction};
	__property Fmx::Tmsfncformulaparser::TCalcCustomFunction OnCalcCustomFunction = {read=GetCalcCustomFunction, write=SetCalcCustomFunction};
private:
	void *__IGridBinder;	// Fmx::Tmsfncformulaparser::IGridBinder 
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {3C8BCD1C-2B18-443C-8D00-D7AD13FC371B}
	operator Fmx::Tmsfncformulaparser::_di_IGridBinder()
	{
		Fmx::Tmsfncformulaparser::_di_IGridBinder intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator Fmx::Tmsfncformulaparser::IGridBinder*(void) { return (Fmx::Tmsfncformulaparser::IGridBinder*)&__IGridBinder; }
	#endif
	
};


//-- var, const, procedure ---------------------------------------------------
#define TTMSFNCSpreadGridDocURL u"https://download.tmssoftware.com/doc/tmsfncuipack/componen"\
	u"ts/ttmsfncspreadgrid/"
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x0);
static constexpr System::Int8 BLD_VER = System::Int8(0x1);
}	/* namespace Tmsfncspreadgrid */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCSPREADGRID)
using namespace Fmx::Tmsfncspreadgrid;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncspreadgridHPP
