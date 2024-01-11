// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCSpreadGridLibs.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncspreadgridlibsHPP
#define Fmx_TmsfncspreadgridlibsHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.SysUtils.hpp>
#include <System.Classes.hpp>
#include <FMX.TMSFNCFormulaParser.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <Data.DB.hpp>
#include <System.Generics.Collections.hpp>
#include <System.Generics.Defaults.hpp>
#include <System.Types.hpp>
#include <FMX.TMSFNCCustomComponent.hpp>
#include <FMX.Controls.hpp>
#include <FMX.Types.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncspreadgridlibs
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCMiscMathLib;
class DELPHICLASS TTMSFNCFinanceMathLib;
class DELPHICLASS TTMSFNCConversionMathLib;
class DELPHICLASS TTMSFNCStringMathLib;
class DELPHICLASS TTMSFNCDBMathLib;
//-- type declarations -------------------------------------------------------
#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCMiscMathLib : public Fmx::Tmsfncformulaparser::TTMSFNCMathLib
{
	typedef Fmx::Tmsfncformulaparser::TTMSFNCMathLib inherited;
	
public:
	virtual bool __fastcall HandlesFunction(System::UnicodeString FuncName);
	virtual double __fastcall CalcFunction(System::UnicodeString FuncName, System::Generics::Collections::TList__1<double>* Params, int &ErrType, int &ErrParam);
	virtual System::UnicodeString __fastcall GetEditHint(System::UnicodeString FuncName, int ParamIndex);
public:
	/* TTMSFNCCustomComponent.Create */ inline __fastcall virtual TTMSFNCMiscMathLib(System::Classes::TComponent* AOwner) : Fmx::Tmsfncformulaparser::TTMSFNCMathLib(AOwner) { }
	
public:
	/* TControl.Destroy */ inline __fastcall virtual ~TTMSFNCMiscMathLib() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCFinanceMathLib : public Fmx::Tmsfncformulaparser::TTMSFNCMathLib
{
	typedef Fmx::Tmsfncformulaparser::TTMSFNCMathLib inherited;
	
public:
	virtual bool __fastcall HandlesFunction(System::UnicodeString FuncName);
	virtual double __fastcall CalcFunction(System::UnicodeString FuncName, System::Generics::Collections::TList__1<double>* Params, int &ErrType, int &ErrParam);
public:
	/* TTMSFNCCustomComponent.Create */ inline __fastcall virtual TTMSFNCFinanceMathLib(System::Classes::TComponent* AOwner) : Fmx::Tmsfncformulaparser::TTMSFNCMathLib(AOwner) { }
	
public:
	/* TControl.Destroy */ inline __fastcall virtual ~TTMSFNCFinanceMathLib() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCConversionMathLib : public Fmx::Tmsfncformulaparser::TTMSFNCMathLib
{
	typedef Fmx::Tmsfncformulaparser::TTMSFNCMathLib inherited;
	
public:
	virtual bool __fastcall HandlesFunction(System::UnicodeString FuncName);
	virtual double __fastcall CalcFunction(System::UnicodeString FuncName, System::Generics::Collections::TList__1<double>* Params, int &ErrType, int &ErrParam);
public:
	/* TTMSFNCCustomComponent.Create */ inline __fastcall virtual TTMSFNCConversionMathLib(System::Classes::TComponent* AOwner) : Fmx::Tmsfncformulaparser::TTMSFNCMathLib(AOwner) { }
	
public:
	/* TControl.Destroy */ inline __fastcall virtual ~TTMSFNCConversionMathLib() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCStringMathLib : public Fmx::Tmsfncformulaparser::TTMSFNCMathLib
{
	typedef Fmx::Tmsfncformulaparser::TTMSFNCMathLib inherited;
	
public:
	virtual bool __fastcall HandlesStrFunction(System::UnicodeString FuncName);
	virtual System::UnicodeString __fastcall CalcStrFunction(System::UnicodeString FuncName, System::Classes::TStringList* Params, int &ErrType, int &ErrParam);
public:
	/* TTMSFNCCustomComponent.Create */ inline __fastcall virtual TTMSFNCStringMathLib(System::Classes::TComponent* AOwner) : Fmx::Tmsfncformulaparser::TTMSFNCMathLib(AOwner) { }
	
public:
	/* TControl.Destroy */ inline __fastcall virtual ~TTMSFNCStringMathLib() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCDBMathLib : public Fmx::Tmsfncformulaparser::TTMSFNCMathLib
{
	typedef Fmx::Tmsfncformulaparser::TTMSFNCMathLib inherited;
	
private:
	Data::Db::TDataSource* FDataSource;
	
protected:
	virtual void __fastcall Notification(System::Classes::TComponent* AComponent, System::Classes::TOperation AOperation);
	
public:
	virtual bool __fastcall HandlesStrFunction(System::UnicodeString FuncName);
	virtual System::UnicodeString __fastcall CalcStrFunction(System::UnicodeString FuncName, System::Classes::TStringList* Params, int &ErrType, int &ErrParam);
	
__published:
	__property Data::Db::TDataSource* DataSource = {read=FDataSource, write=FDataSource};
public:
	/* TTMSFNCCustomComponent.Create */ inline __fastcall virtual TTMSFNCDBMathLib(System::Classes::TComponent* AOwner) : Fmx::Tmsfncformulaparser::TTMSFNCMathLib(AOwner) { }
	
public:
	/* TControl.Destroy */ inline __fastcall virtual ~TTMSFNCDBMathLib() { }
	
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
}	/* namespace Tmsfncspreadgridlibs */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCSPREADGRIDLIBS)
using namespace Fmx::Tmsfncspreadgridlibs;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncspreadgridlibsHPP
