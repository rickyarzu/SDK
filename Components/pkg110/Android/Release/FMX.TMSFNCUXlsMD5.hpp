// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCUXlsMD5.pas' rev: 35.00 (Android)

#ifndef Fmx_Tmsfncuxlsmd5HPP
#define Fmx_Tmsfncuxlsmd5HPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.SysUtils.hpp>
#include <FMX.TMSFNCUFlxMessages.hpp>
#include <System.Classes.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncuxlsmd5
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TMd5Stream;
//-- type declarations -------------------------------------------------------
typedef System::StaticArray<unsigned, 4> TMd5Digest;

class PASCALIMPLEMENTATION TMd5Stream : public System::Classes::TStream
{
	typedef System::Classes::TStream inherited;
	
private:
	__int64 BlockCount;
	unsigned BufCount;
	System::StaticArray<unsigned, 16> Buffer;
	unsigned A;
	unsigned B;
	unsigned C;
	unsigned D;
	unsigned __fastcall F(unsigned X, unsigned Y, unsigned Z);
	unsigned __fastcall G(unsigned X, unsigned Y, unsigned Z);
	unsigned __fastcall H(unsigned X, unsigned Y, unsigned Z);
	unsigned __fastcall I(unsigned X, unsigned Y, unsigned Z);
	unsigned __fastcall Rotate(unsigned L, unsigned NumBits);
	
protected:
	virtual void __fastcall AddByte(System::Byte B);
	virtual System::UnicodeString __fastcall GetDigestString();
	virtual void __fastcall Initialize();
	virtual void __fastcall UpdateDigest();
	
public:
	__fastcall TMd5Stream();
	virtual int __fastcall Read(void *Buffer, int Count)/* overload */;
	virtual int __fastcall Seek(int Offset, System::Word Origin)/* overload */;
	virtual int __fastcall Write(const void *Buffer, int Count)/* overload */;
	virtual TMd5Digest __fastcall GetDigest();
	__property System::UnicodeString DigestString = {read=GetDigestString};
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TMd5Stream() { }
	
	/* Hoisted overloads: */
	
public:
	inline int __fastcall  Read(System::TArray__1<System::Byte> Buffer, int Offset, int Count){ return System::Classes::TStream::Read(Buffer, Offset, Count); }
	inline int __fastcall  Read(System::TArray__1<System::Byte> &Buffer, int Count){ return System::Classes::TStream::Read(Buffer, Count); }
	inline __int64 __fastcall  Seek(const __int64 Offset, System::Classes::TSeekOrigin Origin){ return System::Classes::TStream::Seek(Offset, Origin); }
	inline __int64 __fastcall  Seek(const __int64 Offset, System::Word Origin){ return System::Classes::TStream::Seek(Offset, Origin); }
	inline int __fastcall  Write(const System::TArray__1<System::Byte> Buffer, int Offset, int Count){ return System::Classes::TStream::Write(Buffer, Offset, Count); }
	inline int __fastcall  Write(const System::TArray__1<System::Byte> Buffer, int Count){ return System::Classes::TStream::Write(Buffer, Count); }
	
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Tmsfncuxlsmd5 */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCUXLSMD5)
using namespace Fmx::Tmsfncuxlsmd5;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_Tmsfncuxlsmd5HPP
