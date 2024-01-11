// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCUBreakList.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncubreaklistHPP
#define Fmx_TmsfncubreaklistHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <System.SysUtils.hpp>
#include <FMX.TMSFNCXlsMessages.hpp>
#include <FMX.TMSFNCUXlsBaseRecords.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncubreaklist
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TBreakList;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TBreakList : public System::Classes::TList
{
	typedef System::Classes::TList inherited;
	
private:
	int CurrentPos;
	int ZeroPos;
	
protected:
	virtual void __fastcall Notify(void * Ptr, System::Classes::TListNotification Action);
	
public:
	__fastcall TBreakList(const int aZeroPos);
	int __fastcall CurrentId();
	int __fastcall CurrentSize();
	int __fastcall AcumSize();
	void __fastcall IncCurrent();
	HIDESBASE void __fastcall Add(const int aId, const int aSize);
	void __fastcall AddToZeroPos(const int Delta);
public:
	/* TList.Destroy */ inline __fastcall virtual ~TBreakList() { }
	
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Tmsfncubreaklist */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCUBREAKLIST)
using namespace Fmx::Tmsfncubreaklist;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncubreaklistHPP
