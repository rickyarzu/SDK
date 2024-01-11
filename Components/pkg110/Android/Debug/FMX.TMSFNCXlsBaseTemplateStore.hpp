// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCXlsBaseTemplateStore.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncxlsbasetemplatestoreHPP
#define Fmx_TmsfncxlsbasetemplatestoreHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.SysUtils.hpp>
#include <System.Classes.hpp>
#include <FMX.TMSFNCXlsMessages.hpp>
#include <FMX.TMSFNCUFlxMessages.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncxlsbasetemplatestore
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TXlsBaseTemplateStore;
//-- type declarations -------------------------------------------------------
#pragma pack(push,4)
class PASCALIMPLEMENTATION TXlsBaseTemplateStore : public System::Classes::TComponent
{
	typedef System::Classes::TComponent inherited;
	
protected:
	virtual Fmx::Tmsfncuflxmessages::ByteArray __fastcall GetStoredFile(System::UnicodeString Name) = 0 ;
	
public:
	__fastcall virtual TXlsBaseTemplateStore(System::Classes::TComponent* AOwner);
	virtual void __fastcall Loaded();
	virtual bool __fastcall IsUpToDate() = 0 ;
	virtual void __fastcall Refresh() = 0 ;
	__property Fmx::Tmsfncuflxmessages::ByteArray StoredFile[System::UnicodeString Name] = {read=GetStoredFile};
public:
	/* TComponent.Destroy */ inline __fastcall virtual ~TXlsBaseTemplateStore() { }
	
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
}	/* namespace Tmsfncxlsbasetemplatestore */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCXLSBASETEMPLATESTORE)
using namespace Fmx::Tmsfncxlsbasetemplatestore;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncxlsbasetemplatestoreHPP
