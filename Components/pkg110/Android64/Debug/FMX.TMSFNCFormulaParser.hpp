// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCFormulaParser.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncformulaparserHPP
#define Fmx_TmsfncformulaparserHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <System.SysUtils.hpp>
#include <System.Variants.hpp>
#include <FMX.Dialogs.hpp>
#include <FMX.TMSFNCCustomComponent.hpp>
#include <FMX.TMSFNCGrid.hpp>
#include <FMX.TMSFNCUtils.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.TMSFNCGridData.hpp>
#include <FMX.TMSFNCSpreadGridTypes.hpp>
#include <System.Types.hpp>
#include <System.Generics.Collections.hpp>
#include <FMX.Types.hpp>
#include <System.Generics.Defaults.hpp>
#include <FMX.Controls.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncformulaparser
{
//-- forward type declarations -----------------------------------------------
struct TokenRec;
class DELPHICLASS TTMSFNCMathLib;
class DELPHICLASS TTMSFNCGridBinderItem;
class DELPHICLASS TTMSFNCGridBinderItems;
class DELPHICLASS TTMSFNCGridBinder;
__interface DELPHIINTERFACE IGridBinder;
typedef System::DelphiInterface<IGridBinder> _di_IGridBinder;
class DELPHICLASS TLibBinderItem;
class DELPHICLASS TLibBinder;
class DELPHICLASS TLibBinderItems;
class DELPHICLASS TCellNameList;
class DELPHICLASS TGridFormula;
//-- type declarations -------------------------------------------------------
enum DECLSPEC_DENUM TokenType : unsigned char { Delimiter, Non, Variable, Digit, EndExpr, Error, Func, Operator, Text };

typedef TokenRec *TokenPtr;

struct DECLSPEC_DRECORD TokenRec
{
public:
	TokenRec *Next;
	short Start;
	short Close;
};


typedef void __fastcall (__closure *TIsCustomFunction)(System::TObject* sender, System::UnicodeString &func, bool &match);

typedef void __fastcall (__closure *TCalcCustomFunction)(System::TObject* sender, System::UnicodeString &func, double &param);

typedef void __fastcall (__closure *TErrorEvent)(System::TObject* Sender, int ACol, int ARow, int ErrType, int ErrPos, int ErrParam, System::UnicodeString ErrStr);

typedef System::Generics::Collections::TList__1<double>* TParamList;

class PASCALIMPLEMENTATION TTMSFNCMathLib : public Fmx::Tmsfnccustomcomponent::TTMSFNCCustomComponent
{
	typedef Fmx::Tmsfnccustomcomponent::TTMSFNCCustomComponent inherited;
	
protected:
	virtual NativeUInt __fastcall GetInstance();
	
public:
	virtual bool __fastcall HandlesConstant(System::UnicodeString Constant);
	virtual double __fastcall GetConstant(System::UnicodeString Constant);
	virtual bool __fastcall HandlesFunction(System::UnicodeString FuncName);
	virtual bool __fastcall HandlesStrFunction(System::UnicodeString FuncName);
	virtual double __fastcall CalcFunction(System::UnicodeString FuncName, System::Generics::Collections::TList__1<double>* Params, int &ErrType, int &ErrParam);
	virtual System::UnicodeString __fastcall CalcStrFunction(System::UnicodeString FuncName, System::Classes::TStringList* Params, int &ErrType, int &ErrParam);
	System::UnicodeString __fastcall GetErrorMessage(int ErrType);
	virtual System::UnicodeString __fastcall GetEditHint(System::UnicodeString FuncName, int ParamIndex);
public:
	/* TTMSFNCCustomComponent.Create */ inline __fastcall virtual TTMSFNCMathLib(System::Classes::TComponent* AOwner) : Fmx::Tmsfnccustomcomponent::TTMSFNCCustomComponent(AOwner) { }
	
public:
	/* TControl.Destroy */ inline __fastcall virtual ~TTMSFNCMathLib() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCGridBinderItem : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	Fmx::Tmsfncgrid::TTMSFNCGrid* FGrid;
	System::UnicodeString FName;
	void __fastcall SetGrid(Fmx::Tmsfncgrid::TTMSFNCGrid* const Value);
	
public:
	__fastcall virtual TTMSFNCGridBinderItem(System::Classes::TCollection* Collection);
	__fastcall virtual ~TTMSFNCGridBinderItem();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property Fmx::Tmsfncgrid::TTMSFNCGrid* Grid = {read=FGrid, write=SetGrid};
	__property System::UnicodeString Name = {read=FName, write=FName};
};


class PASCALIMPLEMENTATION TTMSFNCGridBinderItems : public System::Classes::TCollection
{
	typedef System::Classes::TCollection inherited;
	
public:
	TTMSFNCGridBinderItem* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCGridBinder* FOwner;
	HIDESBASE TTMSFNCGridBinderItem* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCGridBinderItem* const Value);
	Fmx::Tmsfncgrid::TTMSFNCGrid* __fastcall GetGridByName(System::UnicodeString Name);
	
public:
	HIDESBASE TTMSFNCGridBinderItem* __fastcall Add();
	__fastcall TTMSFNCGridBinderItems(TTMSFNCGridBinder* AOwner);
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	__property TTMSFNCGridBinderItem* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	__property Fmx::Tmsfncgrid::TTMSFNCGrid* GridByName[System::UnicodeString Name] = {read=GetGridByName};
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCGridBinderItems() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCGridBinder : public Fmx::Tmsfnccustomcomponent::TTMSFNCCustomComponent
{
	typedef Fmx::Tmsfnccustomcomponent::TTMSFNCCustomComponent inherited;
	
private:
	TTMSFNCGridBinderItems* FGrids;
	void __fastcall SetGrids(TTMSFNCGridBinderItems* const Value);
	
protected:
	virtual NativeUInt __fastcall GetInstance();
	virtual void __fastcall Notification(System::Classes::TComponent* AComponent, System::Classes::TOperation AOperation);
	
public:
	__fastcall virtual TTMSFNCGridBinder(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCGridBinder();
	
__published:
	__property TTMSFNCGridBinderItems* Grids = {read=FGrids, write=SetGrids};
};


__interface  INTERFACE_UUID("{3C8BCD1C-2B18-443C-8D00-D7AD13FC371B}") IGridBinder  : public System::IInterface 
{
	virtual void __fastcall RegisterBinder(TTMSFNCGridBinder* ABinder) = 0 ;
	virtual void __fastcall UnregisterBinder(TTMSFNCGridBinder* ABinder) = 0 ;
};

class PASCALIMPLEMENTATION TLibBinderItem : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	TTMSFNCMathLib* FMathLib;
	
public:
	__fastcall virtual TLibBinderItem(System::Classes::TCollection* Collection);
	__fastcall virtual ~TLibBinderItem();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property TTMSFNCMathLib* MathLib = {read=FMathLib, write=FMathLib};
};


class PASCALIMPLEMENTATION TLibBinder : public System::TObject
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
	/* TObject.Create */ inline __fastcall TLibBinder() : System::TObject() { }
	/* TObject.Destroy */ inline __fastcall virtual ~TLibBinder() { }
	
};


class PASCALIMPLEMENTATION TLibBinderItems : public System::Classes::TCollection
{
	typedef System::Classes::TCollection inherited;
	
public:
	TLibBinderItem* operator[](int Index) { return this->Items[Index]; }
	
private:
	HIDESBASE TLibBinderItem* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TLibBinderItem* const Value);
	
public:
	__fastcall TLibBinderItems();
	HIDESBASE TLibBinderItem* __fastcall Add();
	HIDESBASE TLibBinderItem* __fastcall Insert(int Index);
	__property TLibBinderItem* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TLibBinderItems() { }
	
};


class PASCALIMPLEMENTATION TCellNameList : public System::Generics::Collections::TList__1<Fmx::Tmsfncspreadgridtypes::TCellName>
{
	typedef System::Generics::Collections::TList__1<Fmx::Tmsfncspreadgridtypes::TCellName> inherited;
	
public:
	int __fastcall AddName(System::UnicodeString AName, int ACol, int ARow);
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCSpreadGridTypes_TCellName>.Create */ inline __fastcall TCellNameList()/* overload */ : System::Generics::Collections::TList__1<Fmx::Tmsfncspreadgridtypes::TCellName>() { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCSpreadGridTypes_TCellName>.Create */ inline __fastcall TCellNameList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<Fmx::Tmsfncspreadgridtypes::TCellName> > AComparer)/* overload */ : System::Generics::Collections::TList__1<Fmx::Tmsfncspreadgridtypes::TCellName>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCSpreadGridTypes_TCellName>.Create */ inline __fastcall TCellNameList(System::Generics::Collections::TEnumerable__1<Fmx::Tmsfncspreadgridtypes::TCellName>* const Collection)/* overload */ : System::Generics::Collections::TList__1<Fmx::Tmsfncspreadgridtypes::TCellName>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCSpreadGridTypes_TCellName>.Create */ inline __fastcall TCellNameList(const Fmx::Tmsfncspreadgridtypes::TCellName *Values, const int Values_High)/* overload */ : System::Generics::Collections::TList__1<Fmx::Tmsfncspreadgridtypes::TCellName>(Values, Values_High) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCSpreadGridTypes_TCellName>.Destroy */ inline __fastcall virtual ~TCellNameList() { }
	
};


class PASCALIMPLEMENTATION TGridFormula : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	int FScanPos;
	int FVarlen;
	bool FFirstError;
	System::UnicodeString FOrigExpression;
	System::UnicodeString FExpression;
	int FCol;
	int FRow;
	int FErrorPosition;
	Fmx::Tmsfncgrid::TTMSFNCGrid* FGrid;
	TCellNameList* FCellNameList;
	TIsCustomFunction FIsCustomFunction;
	TCalcCustomFunction FCalcCustomFunction;
	bool FUseRCNames;
	bool FDateFunc;
	TLibBinderItems* FMathLibs;
	TTMSFNCGridBinder* FBinder;
	TErrorEvent FOnError;
	Fmx::Tmsfncutils::TTMSFNCUtilsCharSet FTokenEnd;
	Fmx::Tmsfncutils::TTMSFNCUtilsCharSet FParamEnd;
	System::UnicodeString __fastcall ReadWord();
	System::UnicodeString __fastcall ReadWordEx();
	System::UnicodeString __fastcall ReadStr();
	double __fastcall ReadNumber();
	TokenType __fastcall GetToken();
	System::WideChar __fastcall TokenAtScanPos();
	bool __fastcall MatchFunc(System::UnicodeString Match, double &Res, TokenType &n);
	bool __fastcall MatchFuncStr(System::UnicodeString Match, System::UnicodeString &Res, TokenType &n);
	bool __fastcall MatchDualParamFuncStr(System::UnicodeString Match, System::UnicodeString &Res1, System::UnicodeString &Res2, TokenType &n);
	bool __fastcall MatchDualParamFunc(System::UnicodeString Match, double &Res1, double &Res2, TokenType &n);
	bool __fastcall MatchTriParamFunc(System::UnicodeString Match, double &Res1, double &Res2, double &Res3, TokenType &n);
	bool __fastcall MatchVarParamFunc(System::UnicodeString Match, System::Generics::Collections::TList__1<double>* pl, TokenType &n, bool SkipEmptyCells = false);
	bool __fastcall MatchVarStrParamFunc(System::UnicodeString Match, System::Classes::TStringList* pl, TokenType &n);
	bool __fastcall MatchRangeDualNumFunc(System::UnicodeString Match, System::Classes::TStringList* pl, TokenType &n);
	bool __fastcall MatchStrNumFunc(System::UnicodeString Match, System::UnicodeString &resstr, double &resnum, TokenType &n);
	bool __fastcall MatchStrDualNumFunc(System::UnicodeString Match, System::UnicodeString &resstr, double &resnum1, double &resnum2, TokenType &n);
	bool __fastcall MatchToken(System::UnicodeString Match);
	bool __fastcall DoPI(double &r);
	bool __fastcall DoE(double &r);
	bool __fastcall DoTrue(double &r);
	bool __fastcall DoFalse(double &r);
	bool __fastcall DoCol(double &r);
	bool __fastcall DoRow(double &r);
	bool __fastcall DoNow(double &r);
	bool __fastcall DoToday(double &r);
	bool __fastcall DoChoose(double &Res, TokenType &n);
	bool __fastcall DoLt(double &Res, TokenType &n);
	bool __fastcall DoSt(double &Res, TokenType &n);
	bool __fastcall DoEq(double &Res, TokenType &n);
	bool __fastcall DoCompare(double &Res, TokenType &n);
	bool __fastcall DoFrac(double &Res, TokenType &n);
	bool __fastcall DoFact(double &Res, TokenType &n);
	bool __fastcall DoInt(double &Res, TokenType &n);
	bool __fastcall DoIndex(double &Res, System::UnicodeString &resstr, TokenType &n);
	bool __fastcall DoMatch(double &Res, TokenType &n);
	bool __fastcall DoLookup(System::UnicodeString &ResStr, TokenType &n);
	bool __fastcall DoChs(double &Res, TokenType &n);
	bool __fastcall DoSin(double &Res, TokenType &n);
	bool __fastcall DoCos(double &Res, TokenType &n);
	bool __fastcall DoTan(double &res, TokenType &n);
	bool __fastcall DoCoTan(double &res, TokenType &n);
	bool __fastcall DoSinh(double &Res, TokenType &n);
	bool __fastcall DoCosh(double &Res, TokenType &n);
	bool __fastcall DoTanh(double &res, TokenType &n);
	bool __fastcall DoCoTanh(double &res, TokenType &n);
	bool __fastcall DoMonth(double &res, TokenType &n);
	bool __fastcall DoYear(double &res, TokenType &n);
	bool __fastcall DoDay(double &res, TokenType &n);
	bool __fastcall DoDayOfWeek(double &res, TokenType &n);
	bool __fastcall DoMinute(double &res, TokenType &n);
	bool __fastcall DoSecond(double &res, TokenType &n);
	bool __fastcall DoHour(double &res, TokenType &n);
	bool __fastcall DoExp(double &Res, TokenType &n);
	bool __fastcall DoLn(double &res, TokenType &n);
	bool __fastcall DoLog10(double &res, TokenType &n);
	bool __fastcall DoLog2(double &res, TokenType &n);
	bool __fastcall DoAbs(double &res, TokenType &n);
	bool __fastcall DoArcTan(double &res, TokenType &n);
	bool __fastcall DoArcCoTan(double &res, TokenType &n);
	bool __fastcall DoRound(double &res, TokenType &n);
	bool __fastcall DoCeiling(double &res, TokenType &n);
	bool __fastcall DoTrunc(double &res, TokenType &n);
	bool __fastcall DoDegrees(double &res, TokenType &n);
	bool __fastcall DoRadians(double &res, TokenType &n);
	bool __fastcall DoRand(double &res, TokenType &n);
	bool __fastcall DoSqr(double &res, TokenType &n);
	bool __fastcall DoCube(double &res, TokenType &n);
	bool __fastcall DoSqrt(double &res, TokenType &n);
	bool __fastcall DoArcSin(double &res, TokenType &n);
	bool __fastcall DoArcCos(double &res, TokenType &n);
	bool __fastcall DoOR(double &res, TokenType &n);
	bool __fastcall DoAND(double &res, TokenType &n);
	bool __fastcall DoNOR(double &res, TokenType &n);
	bool __fastcall DoXOR(double &res, TokenType &n);
	bool __fastcall DoNAND(double &res, TokenType &n);
	bool __fastcall DoNOT(double &res, TokenType &n);
	bool __fastcall DoSum(double &res, TokenType &n);
	bool __fastcall DoProduct(double &res, TokenType &n);
	bool __fastcall DoAverage(double &res, TokenType &n);
	bool __fastcall DoCount(double &res, TokenType &n);
	bool __fastcall DoCountA(double &res, TokenType &n);
	bool __fastcall DoCountBlank(double &res, TokenType &n);
	bool __fastcall DoCountIF(double &res, TokenType &n);
	bool __fastcall DoMin(double &res, TokenType &n);
	bool __fastcall DoMax(double &res, TokenType &n);
	bool __fastcall DoStDev(double &res, TokenType &n);
	bool __fastcall DoDevSQ(double &res, TokenType &n);
	bool __fastcall DoStDevP(double &res, TokenType &n);
	bool __fastcall DoPower(double &res, TokenType &n);
	bool __fastcall DoVar(double &res, TokenType &n);
	bool __fastcall DoUpper(System::UnicodeString &res, TokenType &n);
	bool __fastcall DoLower(System::UnicodeString &res, TokenType &n);
	bool __fastcall DoTrim(System::UnicodeString &res, TokenType &n);
	bool __fastcall DoLen(double &res, System::UnicodeString &resstr, TokenType &n);
	bool __fastcall DoSearch(double &res, System::UnicodeString &resstr, TokenType &n);
	bool __fastcall DoConcatenate(System::UnicodeString &res, TokenType &n);
	bool __fastcall DoSubstitute(System::UnicodeString &res, TokenType &n);
	bool __fastcall DoLeft(System::UnicodeString &res, TokenType &n);
	bool __fastcall DoRight(System::UnicodeString &res, TokenType &n);
	bool __fastcall DoMid(System::UnicodeString &res, TokenType &n);
	void __fastcall DoFunc(double &res, System::UnicodeString &ResStr, TokenType &n);
	void __fastcall Primitive(double &Res, System::UnicodeString &ResStr, TokenType &n);
	double __fastcall Sign(double Number);
	void __fastcall Level6(double &res, System::UnicodeString &resstr, TokenType &n);
	void __fastcall Level5(double &res, System::UnicodeString &resstr, TokenType &n);
	void __fastcall Level4(double &res, System::UnicodeString &resstr, TokenType &n);
	void __fastcall Level3(double &res, System::UnicodeString &resstr, TokenType &n);
	void __fastcall Level2(double &res, System::UnicodeString &resstr, TokenType &n);
	void __fastcall Level1(double &res, System::UnicodeString &resstr, TokenType &n);
	System::Variant __fastcall GetExpr(bool &Valid);
	void __fastcall DoErr(TokenType &n, int ErrPos, int ErrType, System::UnicodeString ErrStr);
	int __fastcall GetNextVar(System::UnicodeString &Full, System::UnicodeString &Expr, System::UnicodeString &c, System::UnicodeString &r);
	bool __fastcall IsCellVar();
	bool __fastcall GetCellRange(System::UnicodeString Sheet, System::UnicodeString Range, System::Generics::Collections::TList__1<double>* Params, bool SkipEmptyCells = false);
	bool __fastcall GetCellRangeCoord(System::UnicodeString Range, System::Types::TRect &gr);
	bool __fastcall GetCellStrRange(System::UnicodeString Sheet, System::UnicodeString Range, System::Classes::TStringList* Params);
	System::Variant __fastcall GetCellVar();
	System::Variant __fastcall GetCellVal(System::UnicodeString Sheet, int ACol, int ARow);
	System::Variant __fastcall GetCellValStr(System::UnicodeString Sheet, int ACol, int ARow);
	int __fastcall IsCellNameRef(System::UnicodeString Sheet, System::UnicodeString Match);
	bool __fastcall SolveCellNameRef(System::UnicodeString Sheet, System::UnicodeString Match, double &Res);
	System::Types::TPoint __fastcall GetCoord(System::UnicodeString rng);
	System::UnicodeString __fastcall GetExpression();
	void __fastcall SetExpression(const System::UnicodeString Value);
	
public:
	__fastcall TGridFormula(Fmx::Tmsfncgrid::TTMSFNCGrid* Grid);
	__fastcall virtual ~TGridFormula();
	__property System::UnicodeString Expression = {read=GetExpression, write=SetExpression};
	__property int Row = {read=FRow, write=FRow, nodefault};
	__property int Col = {read=FCol, write=FCol, nodefault};
	__property int ErrorPosition = {read=FErrorPosition, write=FErrorPosition, nodefault};
	__property bool DateFunc = {read=FDateFunc, write=FDateFunc, nodefault};
	bool __fastcall Calc(System::Variant &r);
	__property TCellNameList* CellNameList = {read=FCellNameList};
	int __fastcall CellNameIndex(System::UnicodeString Match);
	__property bool UseRCNames = {read=FUseRCNames, write=FUseRCNames, nodefault};
	__property TTMSFNCGridBinder* Binder = {read=FBinder, write=FBinder};
	__property TLibBinderItems* Libs = {read=FMathLibs, write=FMathLibs};
	__property TIsCustomFunction IsCustomFunction = {read=FIsCustomFunction, write=FIsCustomFunction};
	__property TCalcCustomFunction CalcCustomFunction = {read=FCalcCustomFunction, write=FCalcCustomFunction};
	__property TErrorEvent OnError = {read=FOnError, write=FOnError};
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


//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 Error_NoError = System::Int8(0x0);
static constexpr System::Int8 Error_NoFormula = System::Int8(0x1);
static constexpr System::Int8 Error_DivisionByZero = System::Int8(0x2);
static constexpr System::Int8 Error_InvalidValue = System::Int8(0x3);
static constexpr System::Int8 Error_InvalidCellRef = System::Int8(0x4);
static constexpr System::Int8 Error_InvalidRangeRef = System::Int8(0x5);
static constexpr System::Int8 Error_InvalidGridRef = System::Int8(0x6);
static constexpr System::Int8 Error_InvalidNrOfParams = System::Int8(0x7);
static constexpr System::Int8 Error_CircularReference = System::Int8(0x8);
static constexpr System::Int8 Error_NoOpenParenthesis = System::Int8(0x9);
static constexpr System::Int8 Error_NoCloseParenthesis = System::Int8(0xa);
static constexpr System::Int8 Error_PrematureEndOfFormula = System::Int8(0xb);
static constexpr System::Int8 Error_UnknownError = System::Int8(0xc);
static constexpr System::Int8 Error_InvalidQualifier = System::Int8(0xd);
static constexpr System::Int8 Error_InvalidTokenAtPosition = System::Int8(0xe);
static constexpr System::Int8 Error_Overflow = System::Int8(0xf);
static constexpr System::Int8 Error_Underflow = System::Int8(0x10);
static constexpr System::Int8 Error_CircularRange = System::Int8(0x11);
static constexpr System::Int8 Error_NoDataSource = System::Int8(0x12);
static constexpr System::Int8 Error_NoDataSet = System::Int8(0x13);
static constexpr System::Int8 Error_NoDataSetActive = System::Int8(0x14);
static constexpr System::Int8 Error_MaxErrorNumber = System::Int8(0x64);
}	/* namespace Tmsfncformulaparser */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCFORMULAPARSER)
using namespace Fmx::Tmsfncformulaparser;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncformulaparserHPP
