// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCUXlsProtect.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncuxlsprotectHPP
#define Fmx_TmsfncuxlsprotectHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <FMX.TMSFNCUFlxMessages.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncuxlsprotect
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TEncryptionData;
class DELPHICLASS TEncryptionEngine;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TEncryptionData : public System::TObject
{
	typedef System::TObject inherited;
	
public:
	System::UnicodeString ReadPassword;
	TEncryptionEngine* Engine;
	int ActualRecordLen;
	__fastcall TEncryptionData(const System::UnicodeString aReadPassword, System::TObject* const aOnPassword, System::TObject* const aXls);
	int __fastcall TotalSize();
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TEncryptionData() { }
	
};


class PASCALIMPLEMENTATION TEncryptionEngine : public System::TObject
{
	typedef System::TObject inherited;
	
protected:
	__fastcall TEncryptionEngine();
	
public:
	virtual bool __fastcall CheckHash(const System::UnicodeString Password) = 0 ;
	virtual Fmx::Tmsfncuflxmessages::ByteArray __fastcall Decode(const Fmx::Tmsfncuflxmessages::ByteArray Data, const __int64 StreamPosition, const int StartPos, const int Count, const int RecordLen) = 0 ;
	virtual Fmx::Tmsfncuflxmessages::ByteArray __fastcall Encode(const void *Data, const __int64 StreamPosition, const int StartPos, const int Count, const int RecordLen) = 0 /* overload */;
	virtual System::Word __fastcall Encode(const System::Word Data, const __int64 StreamPosition, const int RecordLen) = 0 /* overload */;
	virtual unsigned __fastcall Encode(const unsigned Data, const __int64 StreamPosition, const int RecordLen) = 0 /* overload */;
	virtual Fmx::Tmsfncuflxmessages::ByteArray __fastcall GetFilePassRecord() = 0 ;
	virtual int __fastcall GetFilePassRecordLen() = 0 ;
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TEncryptionEngine() { }
	
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Tmsfncuxlsprotect */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCUXLSPROTECT)
using namespace Fmx::Tmsfncuxlsprotect;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncuxlsprotectHPP
