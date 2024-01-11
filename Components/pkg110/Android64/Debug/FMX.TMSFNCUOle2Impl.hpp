// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCUOle2Impl.pas' rev: 35.00 (Android)

#ifndef Fmx_Tmsfncuole2implHPP
#define Fmx_Tmsfncuole2implHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <FMX.TMSFNCUFlxMessages.hpp>
#include <System.SysUtils.hpp>
#include <FMX.TMSFNCXlsMessages.hpp>
#include <System.Generics.Collections.hpp>
#include <FMX.TMSFNCUXlsProtect.hpp>
#include <System.Generics.Defaults.hpp>
#include <System.Types.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncuole2impl
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TOneDirEntry;
class DELPHICLASS TOle2Header;
class DELPHICLASS TOle2FAT;
class DELPHICLASS TOle2MiniFAT;
class DELPHICLASS TOle2Directory;
class DELPHICLASS TSectorBuffer;
class DELPHICLASS TOle2File;
//-- type declarations -------------------------------------------------------
enum DECLSPEC_DENUM STGTY : unsigned char { STGTY_INVALID, STGTY_STORAGE, STGTY_STREAM, STGTY_LOCKBYTES, STGTY_PROPERTY, STGTY_ROOT };

enum DECLSPEC_DENUM DECOLOR : unsigned char { DECOLOR_RED, DECOLOR_BLACK };

typedef System::Generics::Collections::TList__1<unsigned>* UInt32List;

class PASCALIMPLEMENTATION TOneDirEntry : public System::TObject
{
	typedef System::TObject inherited;
	
public:
	System::UnicodeString Name;
	int LeftSid;
	int RightSid;
	int ChildSid;
	bool Deleted;
	DECOLOR Color;
	__fastcall TOneDirEntry(const System::UnicodeString aName, const int aLeftSid, const int aRightSid, const int aChildSid, const DECOLOR aColor);
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TOneDirEntry() { }
	
};


typedef System::Generics::Collections::TObjectList__1<TOneDirEntry*>* TDirEntryList;

typedef System::DynamicArray<System::UnicodeString> StringArray;

class PASCALIMPLEMENTATION TOle2Header : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	Fmx::Tmsfncuflxmessages::ByteArray FileSignature;
	__classmethod bool __fastcall CompareArray(const Fmx::Tmsfncuflxmessages::ByteArray a1, const Fmx::Tmsfncuflxmessages::ByteArray a2, const int length);
	int __fastcall Get_FuSectorShift();
	unsigned __fastcall Get_FSectorSize();
	int __fastcall Get_uMiniSectorShift();
	unsigned __fastcall Get_MiniSectorSize();
	unsigned __fastcall Get_csectFat();
	void __fastcall Set_csectFat(const unsigned value);
	unsigned __fastcall Get_sectDirStart();
	void __fastcall Set_sectDirStart(const unsigned value);
	unsigned __fastcall Get_FulMiniSectorCutoff();
	unsigned __fastcall Get_sectMiniFatStart();
	void __fastcall Set_sectMiniFatStart(const unsigned value);
	unsigned __fastcall Get_csectMiniFat();
	void __fastcall Set_csectMiniFat(const unsigned value);
	unsigned __fastcall Get_sectDifStart();
	void __fastcall Set_sectDifStart(const unsigned value);
	unsigned __fastcall Get_csectDif();
	void __fastcall Set_csectDif(const unsigned value);
	__property int FuSectorShift = {read=Get_FuSectorShift, nodefault};
	__property unsigned FSectorSize = {read=Get_FSectorSize, nodefault};
	
public:
	bool NotXls97;
	Fmx::Tmsfncuflxmessages::ByteArray Data;
	__int64 StartOfs;
	unsigned SectorSize;
	int uSectorShift;
	unsigned ulMiniSectorCutoff;
	__fastcall TOle2Header(System::Classes::TStream* const aStream, const bool AvoidExceptions);
	void __fastcall Save(System::Classes::TStream* const aStream);
	int __fastcall uDIFEntryShift();
	__int64 __fastcall SectToStPos(const __int64 Sect)/* overload */;
	__int64 __fastcall SectToStPos(const __int64 Sect, const __int64 Ofs)/* overload */;
	__property int uMiniSectorShift = {read=Get_uMiniSectorShift, nodefault};
	__property unsigned MiniSectorSize = {read=Get_MiniSectorSize, nodefault};
	__property unsigned csectFat = {read=Get_csectFat, write=Set_csectFat, nodefault};
	__property unsigned sectDirStart = {read=Get_sectDirStart, write=Set_sectDirStart, nodefault};
	__property unsigned FulMiniSectorCutoff = {read=Get_FulMiniSectorCutoff, nodefault};
	__property unsigned sectMiniFatStart = {read=Get_sectMiniFatStart, write=Set_sectMiniFatStart, nodefault};
	__property unsigned csectMiniFat = {read=Get_csectMiniFat, write=Set_csectMiniFat, nodefault};
	__property unsigned sectDifStart = {read=Get_sectDifStart, write=Set_sectDifStart, nodefault};
	__property unsigned csectDif = {read=Get_csectDif, write=Set_csectDif, nodefault};
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TOle2Header() { }
	
};


class PASCALIMPLEMENTATION TOle2FAT : public System::Generics::Collections::TList__1<unsigned>
{
	typedef System::Generics::Collections::TList__1<unsigned> inherited;
	
private:
	TOle2Header* Header;
	__int64 LastFindSectorOfs;
	__int64 LastFindSectorStart;
	__int64 LastFindSectorRes;
	
protected:
	__fastcall TOle2FAT()/* overload */;
	
private:
	void __fastcall LoadDifSector(const Fmx::Tmsfncuflxmessages::ByteArray data, const unsigned inipos, const unsigned endpos, System::Classes::TStream* const aStream);
	void __fastcall LoadFatSector(const Fmx::Tmsfncuflxmessages::ByteArray data);
	
public:
	__fastcall TOle2FAT(TOle2Header* const aHeader, System::Classes::TStream* const aStream)/* overload */;
	__fastcall virtual ~TOle2FAT();
	int __fastcall uFATEntryShift();
	__int64 __fastcall GetNextSector(const __int64 Sect);
	__int64 __fastcall FindSector(const __int64 StartSect, const __int64 SectOfs);
public:
	/* {System_Generics_Collections}TList<System_Cardinal>.Create */ inline __fastcall TOle2FAT(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<unsigned> > AComparer)/* overload */ : System::Generics::Collections::TList__1<unsigned>(AComparer) { }
	/* {System_Generics_Collections}TList<System_Cardinal>.Create */ inline __fastcall TOle2FAT(System::Generics::Collections::TEnumerable__1<unsigned>* const Collection)/* overload */ : System::Generics::Collections::TList__1<unsigned>(Collection) { }
	/* {System_Generics_Collections}TList<System_Cardinal>.Create */ inline __fastcall TOle2FAT(const unsigned *Values, const int Values_High)/* overload */ : System::Generics::Collections::TList__1<unsigned>(Values, Values_High) { }
	
};


class PASCALIMPLEMENTATION TOle2MiniFAT : public System::Generics::Collections::TList__1<unsigned>
{
	typedef System::Generics::Collections::TList__1<unsigned> inherited;
	
private:
	TOle2Header* Header;
	
protected:
	__fastcall TOle2MiniFAT()/* overload */;
	
private:
	void __fastcall LoadMiniFatSector(const Fmx::Tmsfncuflxmessages::ByteArray data);
	
public:
	__fastcall TOle2MiniFAT(TOle2Header* const aHeader, System::Classes::TStream* const aStream, TOle2FAT* const aFAT)/* overload */;
	__int64 __fastcall GetNextSector(const __int64 Sect);
	__int64 __fastcall FindSector(const __int64 StartSect, const __int64 SectOfs);
public:
	/* {System_Generics_Collections}TList<System_Cardinal>.Create */ inline __fastcall TOle2MiniFAT(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<unsigned> > AComparer)/* overload */ : System::Generics::Collections::TList__1<unsigned>(AComparer) { }
	/* {System_Generics_Collections}TList<System_Cardinal>.Create */ inline __fastcall TOle2MiniFAT(System::Generics::Collections::TEnumerable__1<unsigned>* const Collection)/* overload */ : System::Generics::Collections::TList__1<unsigned>(Collection) { }
	/* {System_Generics_Collections}TList<System_Cardinal>.Create */ inline __fastcall TOle2MiniFAT(const unsigned *Values, const int Values_High)/* overload */ : System::Generics::Collections::TList__1<unsigned>(Values, Values_High) { }
	/* {System_Generics_Collections}TList<System_Cardinal>.Destroy */ inline __fastcall virtual ~TOle2MiniFAT() { }
	
};


class PASCALIMPLEMENTATION TOle2Directory : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	Fmx::Tmsfncuflxmessages::ByteArray Data;
	int __fastcall Get_NameSize();
	void __fastcall Set_NameSize(const int value);
	System::UnicodeString __fastcall Get_Name();
	void __fastcall Set_Name(const System::UnicodeString value);
	STGTY __fastcall Get_ObjType();
	void __fastcall Set_ObjType(const STGTY value);
	__int64 __fastcall Get_SectStart();
	void __fastcall Set_SectStart(const __int64 value);
	__int64 __fastcall Get_xulSize();
	void __fastcall Set_xulSize(const __int64 value);
	
public:
	__int64 ulSize;
	__fastcall TOle2Directory(const Fmx::Tmsfncuflxmessages::ByteArray aData);
	void __fastcall Save(System::Classes::TStream* const aStream);
	__classmethod int __fastcall GetNameSize(const Fmx::Tmsfncuflxmessages::ByteArray Data, const int StartPos);
	__classmethod System::UnicodeString __fastcall GetName(const Fmx::Tmsfncuflxmessages::ByteArray Data, const int StartPos);
	__classmethod STGTY __fastcall GetType(const Fmx::Tmsfncuflxmessages::ByteArray Data, const int StartPos);
	__classmethod __int64 __fastcall GetSectStart(const Fmx::Tmsfncuflxmessages::ByteArray Data, const int StartPos);
	__classmethod void __fastcall SetSectStart(const Fmx::Tmsfncuflxmessages::ByteArray Data, const int StartPos, const __int64 value);
	__classmethod __int64 __fastcall GetSize(const Fmx::Tmsfncuflxmessages::ByteArray Data, const int StartPos);
	__classmethod void __fastcall SetSize(const Fmx::Tmsfncuflxmessages::ByteArray Data, const int StartPos, const __int64 value);
	__classmethod void __fastcall Clear(const Fmx::Tmsfncuflxmessages::ByteArray Data, const int StartPos);
	__classmethod int __fastcall GetLeftSid(const Fmx::Tmsfncuflxmessages::ByteArray Data, const int StartPos);
	__classmethod void __fastcall SetLeftSid(const Fmx::Tmsfncuflxmessages::ByteArray Data, const int StartPos, const int value);
	__classmethod int __fastcall GetRightSid(const Fmx::Tmsfncuflxmessages::ByteArray Data, const int StartPos);
	__classmethod void __fastcall SetRightSid(const Fmx::Tmsfncuflxmessages::ByteArray Data, const int StartPos, const int value);
	__classmethod int __fastcall GetChildSid(const Fmx::Tmsfncuflxmessages::ByteArray Data, const int StartPos);
	__classmethod void __fastcall SetChildSid(const Fmx::Tmsfncuflxmessages::ByteArray Data, const int StartPos, const int value);
	__classmethod DECOLOR __fastcall GetColor(const Fmx::Tmsfncuflxmessages::ByteArray Data, const int StartPos);
	__classmethod void __fastcall SetColor(const Fmx::Tmsfncuflxmessages::ByteArray Data, const int StartPos, const DECOLOR value);
	__property int NameSize = {read=Get_NameSize, write=Set_NameSize, nodefault};
	__property System::UnicodeString Name = {read=Get_Name, write=Set_Name};
	__property STGTY ObjType = {read=Get_ObjType, write=Set_ObjType, nodefault};
	__property __int64 SectStart = {read=Get_SectStart, write=Set_SectStart};
	__property __int64 xulSize = {read=Get_xulSize, write=Set_xulSize};
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TOle2Directory() { }
	
};


class PASCALIMPLEMENTATION TSectorBuffer : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	Fmx::Tmsfncuflxmessages::ByteArray Data;
	bool Changed;
	__int64 FSectorId;
	TOle2Header* Header;
	System::Classes::TStream* DataStream;
	
public:
	__fastcall TSectorBuffer(TOle2Header* const aHeader, System::Classes::TStream* const aStream);
	void __fastcall Load(const __int64 SectNo);
	void __fastcall Save();
	void __fastcall Read(const Fmx::Tmsfncuflxmessages::ByteArray aBuffer, const __int64 BufferPos, /* out */ __int64 &nRead, const __int64 StartPos, const __int64 Count, const __int64 SectorSize);
	void __fastcall ReadMem(void *aBuffer, const __int64 BufferPos, /* out */ __int64 &nRead, const __int64 StartPos, const __int64 Count, const __int64 SectorSize);
	__property __int64 SectorId = {read=FSectorId};
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TSectorBuffer() { }
	
};


class PASCALIMPLEMENTATION TOle2File : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	System::Classes::TStream* FStream;
	TOle2Header* Header;
	TOle2FAT* FAT;
	TOle2MiniFAT* MiniFAT;
	TSectorBuffer* SectorBuffer;
	TOle2Directory* ROOT;
	Fmx::Tmsfncuxlsprotect::TEncryptionData* FEncryption;
	System::UnicodeString TOle2FileStr;
	bool disposed;
	TOle2Directory* DIR;
	__int64 StreamPos;
	bool PreparedForWrite;
	__int64 DIRStartPos;
	void __fastcall MarkDeleted(const int i, System::Generics::Collections::TObjectList__1<TOneDirEntry*>* const Result, const int Level);
	__classmethod void __fastcall DeleteNode(System::Generics::Collections::TObjectList__1<TOneDirEntry*>* const Result, int &ParentLeaf);
	void __fastcall FixNode(System::Generics::Collections::TObjectList__1<TOneDirEntry*>* const Result, int &ParentNode);
	System::Generics::Collections::TObjectList__1<TOneDirEntry*>* __fastcall ReadDirs(const StringArray DeletedStorages, bool &PaintItBlack);
	void __fastcall FinishStream();
	__int64 __fastcall Get_Length();
	__int64 __fastcall Get_Position();
	bool __fastcall Get_Eof();
	System::UnicodeString __fastcall Get_FileName();
	
public:
	bool NotXls97;
	__fastcall TOle2File(System::Classes::TStream* const aStream)/* overload */;
	__fastcall TOle2File(System::Classes::TStream* const aStream, const bool AvoidExceptions)/* overload */;
	__fastcall virtual ~TOle2File();
	void __fastcall Close();
	TOle2Directory* __fastcall FindDir(const System::UnicodeString DirName);
	TOle2Directory* __fastcall FindRoot();
	void __fastcall SelectStream(const System::UnicodeString StreamName);
	bool __fastcall NextEof(const int Count);
	void __fastcall ReadMem(void *aBuffer, const int Count);
	void __fastcall WriteRawMem(const void *Buffer, const int Count)/* overload */;
	void __fastcall WriteMem(const void *Buffer, const int Count)/* overload */;
	void __fastcall Read(const Fmx::Tmsfncuflxmessages::ByteArray aBuffer, const int Count);
	void __fastcall WriteRaw(const Fmx::Tmsfncuflxmessages::ByteArray Buffer, const int Count)/* overload */;
	void __fastcall Write(Fmx::Tmsfncuflxmessages::ByteArray Buffer, const int Count)/* overload */;
	void __fastcall WriteRaw(const Fmx::Tmsfncuflxmessages::ByteArray Buffer, const int StartPos, const int Count)/* overload */;
	void __fastcall WriteHeader(const System::Word Id, const System::Word Len);
	void __fastcall Write(Fmx::Tmsfncuflxmessages::ByteArray Buffer, const int StartPos, const int Count)/* overload */;
	void __fastcall Write16(System::Word Buffer);
	void __fastcall Write32(unsigned Buffer);
	__classmethod bool __fastcall FindString(const System::UnicodeString s, const StringArray list);
	void __fastcall SeekForward(const __int64 Offset);
	void __fastcall PrepareForWrite(System::Classes::TStream* const OutStream, const System::UnicodeString OStreamName, const StringArray DeleteStorages);
	__property Fmx::Tmsfncuxlsprotect::TEncryptionData* Encryption = {read=FEncryption};
	__property __int64 Length = {read=Get_Length};
	__property __int64 Position = {read=Get_Position};
	__property bool Eof = {read=Get_Eof, nodefault};
	__property System::UnicodeString FileName = {read=Get_FileName};
};


//-- var, const, procedure ---------------------------------------------------
static const System::Classes::TSeekOrigin soFromBeginning = (System::Classes::TSeekOrigin)(0);
static const System::Classes::TSeekOrigin soFromCurrent = (System::Classes::TSeekOrigin)(1);
static const System::Classes::TSeekOrigin soFromEnd = (System::Classes::TSeekOrigin)(2);
}	/* namespace Tmsfncuole2impl */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCUOLE2IMPL)
using namespace Fmx::Tmsfncuole2impl;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_Tmsfncuole2implHPP
