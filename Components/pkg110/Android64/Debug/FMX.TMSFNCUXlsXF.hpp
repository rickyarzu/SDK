// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCUXlsXF.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncuxlsxfHPP
#define Fmx_TmsfncuxlsxfHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <System.SysUtils.hpp>
#include <FMX.TMSFNCUXlsBaseRecords.hpp>
#include <FMX.TMSFNCUXlsBaseRecordLists.hpp>
#include <FMX.TMSFNCXlsMessages.hpp>
#include <FMX.TMSFNCUFlxFormats.hpp>
#include <FMX.TMSFNCUXlsStrings.hpp>
#include <FMX.TMSFNCUFlxMessages.hpp>
#include <System.Generics.Collections.hpp>
#include <FMX.TMSFNCUXlsBaseList.hpp>
#include <System.Generics.Defaults.hpp>
#include <System.Types.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncuxlsxf
{
//-- forward type declarations -----------------------------------------------
struct TXFDat;
class DELPHICLASS TXFRecord;
class DELPHICLASS TXFRecordList;
struct TFontDat;
class DELPHICLASS TFontRecord;
class DELPHICLASS TFontRecordList;
class DELPHICLASS TStyleRecord;
class DELPHICLASS TFormatRecord;
class DELPHICLASS TFormatRecordList;
//-- type declarations -------------------------------------------------------
#pragma pack(push,1)
struct DECLSPEC_DRECORD TXFDat
{
public:
	System::Word Font;
	System::Word Format;
	System::Word Options4;
	System::Word Options6;
	System::Word Options8;
	System::Word Options10;
	System::Word Options12;
	unsigned Options14;
	System::Word Options18;
};
#pragma pack(pop)


typedef TXFDat *PXFDat;

class PASCALIMPLEMENTATION TXFRecord : public Fmx::Tmsfncuxlsbaserecords::TBaseRecord
{
	typedef Fmx::Tmsfncuxlsbaserecords::TBaseRecord inherited;
	
public:
	int __fastcall CellPattern();
	int __fastcall CellFgColorIndex();
	int __fastcall CellBgColorIndex();
	int __fastcall FontIndex();
	int __fastcall FormatIndex();
	int __fastcall GetActualFontIndex(TFontRecordList* const FontList);
	Fmx::Tmsfncuflxformats::TFlxBorderStyle __fastcall GetBorderStyle(const int aPos, const System::Byte FirstBit);
	int __fastcall GetBorderColorIndex(const int aPos, const System::Byte FirstBit);
	Fmx::Tmsfncuflxformats::TFlxBorderStyle __fastcall GetBorderStyleExt(const int aPos, const System::Byte FirstBit);
	int __fastcall GetBorderColorIndexExt(const int aPos, const System::Byte FirstBit);
	Fmx::Tmsfncuflxformats::TFlxDiagonalBorder __fastcall DiagonalStyle();
	Fmx::Tmsfncuflxformats::TVFlxAlignment __fastcall VAlign();
	Fmx::Tmsfncuflxformats::THFlxAlignment __fastcall HAlign();
	void __fastcall FillMisc(/* out */ bool &Locked, /* out */ bool &Hidden, /* out */ int &Parent, /* out */ bool &WrapText, /* out */ bool &ShrinkToFit, /* out */ System::Byte &Rotation, /* out */ System::Byte &Indent);
	__fastcall TXFRecord(const Fmx::Tmsfncuflxformats::TFlxFormat &Fmt, TFontRecordList* const FontList, TFormatRecordList* const FormatList);
	Fmx::Tmsfncuflxformats::TFlxFormat __fastcall FlxFormat(TFontRecordList* const FontList, TFormatRecordList* const FormatList);
	void __fastcall FillUsedColors(const Fmx::Tmsfncuflxmessages::BooleanArray UsedColors, TFontRecordList* const FontList);
	int __fastcall Rotation();
	bool __fastcall WrapText();
public:
	/* TBaseRecord.Create */ inline __fastcall virtual TXFRecord(const System::Word aId, const Fmx::Tmsfncxlsmessages::PArrayOfByte aData, const int aDataSize) : Fmx::Tmsfncuxlsbaserecords::TBaseRecord(aId, aData, aDataSize) { }
	/* TBaseRecord.Destroy */ inline __fastcall virtual ~TXFRecord() { }
	
};


class PASCALIMPLEMENTATION TXFRecordList : public Fmx::Tmsfncuxlsbaserecordlists::TBaseRecordList
{
	typedef Fmx::Tmsfncuxlsbaserecordlists::TBaseRecordList inherited;
	
public:
	TXFRecord* operator[](int index) { return this->Items[index]; }
	
private:
	TXFRecord* __fastcall GetItems(int index);
	void __fastcall SetItems(int index, TXFRecord* const Value);
	
public:
	__property TXFRecord* Items[int index] = {read=GetItems, write=SetItems/*, default*/};
	HIDESBASE int __fastcall Add(TXFRecord* aRecord);
	HIDESBASE void __fastcall Insert(int Index, TXFRecord* aRecord);
	bool __fastcall FindFormat(TXFRecord* const XF, /* out */ int &Index);
	Fmx::Tmsfncuflxmessages::BooleanArray __fastcall GetUsedColors(const int ColorCount, TFontRecordList* const FontList);
public:
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TXFRecordList()/* overload */ : Fmx::Tmsfncuxlsbaserecordlists::TBaseRecordList() { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TXFRecordList(bool AOwnsObjects)/* overload */ : Fmx::Tmsfncuxlsbaserecordlists::TBaseRecordList(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TXFRecordList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<System::TObject*> > AComparer, bool AOwnsObjects)/* overload */ : Fmx::Tmsfncuxlsbaserecordlists::TBaseRecordList(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TXFRecordList(System::Generics::Collections::TEnumerable__1<System::TObject*>* const Collection, bool AOwnsObjects)/* overload */ : Fmx::Tmsfncuxlsbaserecordlists::TBaseRecordList(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Destroy */ inline __fastcall virtual ~TXFRecordList() { }
	
public:
	/* {System_Generics_Collections}TList<System_TObject>.Create */ inline __fastcall TXFRecordList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<System::TObject*> > AComparer)/* overload */ : Fmx::Tmsfncuxlsbaserecordlists::TBaseRecordList(AComparer) { }
	/* {System_Generics_Collections}TList<System_TObject>.Create */ inline __fastcall TXFRecordList(System::Generics::Collections::TEnumerable__1<System::TObject*>* const Collection)/* overload */ : Fmx::Tmsfncuxlsbaserecordlists::TBaseRecordList(Collection) { }
	/* {System_Generics_Collections}TList<System_TObject>.Create */ inline __fastcall TXFRecordList(System::TObject* const *Values, const int Values_High)/* overload */ : Fmx::Tmsfncuxlsbaserecordlists::TBaseRecordList(Values, Values_High) { }
	
};


#pragma pack(push,1)
struct DECLSPEC_DRECORD TFontDat
{
public:
	System::Word Height;
	System::Word GrBit;
	System::Word ColorIndex;
	System::Word BoldStyle;
	System::Word SuperSub;
	System::Byte Underline;
	System::Byte Family;
	System::Byte CharSet;
	System::Byte Reserved;
};
#pragma pack(pop)


typedef TFontDat *PFontDat;

class PASCALIMPLEMENTATION TFontRecord : public Fmx::Tmsfncuxlsbaserecords::TBaseRecord
{
	typedef Fmx::Tmsfncuxlsbaserecords::TBaseRecord inherited;
	
public:
	System::UnicodeString __fastcall Name();
	int __fastcall Height();
	int __fastcall ColorIndex();
	System::Byte __fastcall Family();
	System::Byte __fastcall Charset();
	Fmx::Tmsfncuflxformats::SetOfTFlxFontStyle __fastcall Style();
	Fmx::Tmsfncuflxformats::TFlxUnderline __fastcall Underline();
	__fastcall TFontRecord(const Fmx::Tmsfncuflxformats::TFlxFont &aFont);
	Fmx::Tmsfncuflxformats::TFlxFont __fastcall FlxFont();
public:
	/* TBaseRecord.Create */ inline __fastcall virtual TFontRecord(const System::Word aId, const Fmx::Tmsfncxlsmessages::PArrayOfByte aData, const int aDataSize) : Fmx::Tmsfncuxlsbaserecords::TBaseRecord(aId, aData, aDataSize) { }
	/* TBaseRecord.Destroy */ inline __fastcall virtual ~TFontRecord() { }
	
};


class PASCALIMPLEMENTATION TFontRecordList : public Fmx::Tmsfncuxlsbaserecordlists::TBaseRecordList
{
	typedef Fmx::Tmsfncuxlsbaserecordlists::TBaseRecordList inherited;
	
public:
	TFontRecord* operator[](int index) { return this->Items[index]; }
	
private:
	TFontRecord* __fastcall GetItems(int index);
	void __fastcall SetItems(int index, TFontRecord* const Value);
	
public:
	__property TFontRecord* Items[int index] = {read=GetItems, write=SetItems/*, default*/};
	HIDESBASE int __fastcall Add(TFontRecord* aRecord);
	HIDESBASE void __fastcall Insert(int Index, TFontRecord* aRecord);
	int __fastcall AddFont(const Fmx::Tmsfncuflxformats::TFlxFont &aFont);
public:
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TFontRecordList()/* overload */ : Fmx::Tmsfncuxlsbaserecordlists::TBaseRecordList() { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TFontRecordList(bool AOwnsObjects)/* overload */ : Fmx::Tmsfncuxlsbaserecordlists::TBaseRecordList(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TFontRecordList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<System::TObject*> > AComparer, bool AOwnsObjects)/* overload */ : Fmx::Tmsfncuxlsbaserecordlists::TBaseRecordList(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TFontRecordList(System::Generics::Collections::TEnumerable__1<System::TObject*>* const Collection, bool AOwnsObjects)/* overload */ : Fmx::Tmsfncuxlsbaserecordlists::TBaseRecordList(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Destroy */ inline __fastcall virtual ~TFontRecordList() { }
	
public:
	/* {System_Generics_Collections}TList<System_TObject>.Create */ inline __fastcall TFontRecordList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<System::TObject*> > AComparer)/* overload */ : Fmx::Tmsfncuxlsbaserecordlists::TBaseRecordList(AComparer) { }
	/* {System_Generics_Collections}TList<System_TObject>.Create */ inline __fastcall TFontRecordList(System::Generics::Collections::TEnumerable__1<System::TObject*>* const Collection)/* overload */ : Fmx::Tmsfncuxlsbaserecordlists::TBaseRecordList(Collection) { }
	/* {System_Generics_Collections}TList<System_TObject>.Create */ inline __fastcall TFontRecordList(System::TObject* const *Values, const int Values_High)/* overload */ : Fmx::Tmsfncuxlsbaserecordlists::TBaseRecordList(Values, Values_High) { }
	
};


class PASCALIMPLEMENTATION TStyleRecord : public Fmx::Tmsfncuxlsbaserecords::TBaseRecord
{
	typedef Fmx::Tmsfncuxlsbaserecords::TBaseRecord inherited;
	
public:
	/* TBaseRecord.Create */ inline __fastcall virtual TStyleRecord(const System::Word aId, const Fmx::Tmsfncxlsmessages::PArrayOfByte aData, const int aDataSize) : Fmx::Tmsfncuxlsbaserecords::TBaseRecord(aId, aData, aDataSize) { }
	/* TBaseRecord.Destroy */ inline __fastcall virtual ~TStyleRecord() { }
	
};


class PASCALIMPLEMENTATION TFormatRecord : public Fmx::Tmsfncuxlsbaserecords::TBaseRecord
{
	typedef Fmx::Tmsfncuxlsbaserecords::TBaseRecord inherited;
	
public:
	int __fastcall FormatId();
	System::UnicodeString __fastcall Value();
	__fastcall TFormatRecord(const System::UnicodeString Fmt, const int NewID);
public:
	/* TBaseRecord.Create */ inline __fastcall virtual TFormatRecord(const System::Word aId, const Fmx::Tmsfncxlsmessages::PArrayOfByte aData, const int aDataSize) : Fmx::Tmsfncuxlsbaserecords::TBaseRecord(aId, aData, aDataSize) { }
	/* TBaseRecord.Destroy */ inline __fastcall virtual ~TFormatRecord() { }
	
};


class PASCALIMPLEMENTATION TFormatRecordList : public Fmx::Tmsfncuxlsbaserecordlists::TBaseRecordList
{
	typedef Fmx::Tmsfncuxlsbaserecordlists::TBaseRecordList inherited;
	
public:
	System::UnicodeString operator[](int index) { return this->Format[index]; }
	
private:
	System::UnicodeString __fastcall GetFormat(int FormatId);
	TFormatRecord* __fastcall GetItems(int index);
	void __fastcall SetItems(int index, TFormatRecord* const Value);
	
public:
	__property TFormatRecord* Items[int index] = {read=GetItems, write=SetItems};
	HIDESBASE int __fastcall Add(TFormatRecord* aRecord);
	HIDESBASE void __fastcall Insert(int Index, TFormatRecord* aRecord);
	
private:
	bool Sorted;
	
public:
	bool __fastcall Find(const int aItem, int &Index);
	HIDESBASE void __fastcall Sort();
	__property System::UnicodeString Format[int index] = {read=GetFormat/*, default*/};
	int __fastcall AddFormat(const System::UnicodeString Fmt);
public:
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TFormatRecordList()/* overload */ : Fmx::Tmsfncuxlsbaserecordlists::TBaseRecordList() { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TFormatRecordList(bool AOwnsObjects)/* overload */ : Fmx::Tmsfncuxlsbaserecordlists::TBaseRecordList(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TFormatRecordList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<System::TObject*> > AComparer, bool AOwnsObjects)/* overload */ : Fmx::Tmsfncuxlsbaserecordlists::TBaseRecordList(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Create */ inline __fastcall TFormatRecordList(System::Generics::Collections::TEnumerable__1<System::TObject*>* const Collection, bool AOwnsObjects)/* overload */ : Fmx::Tmsfncuxlsbaserecordlists::TBaseRecordList(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<System_TObject>.Destroy */ inline __fastcall virtual ~TFormatRecordList() { }
	
public:
	/* {System_Generics_Collections}TList<System_TObject>.Create */ inline __fastcall TFormatRecordList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<System::TObject*> > AComparer)/* overload */ : Fmx::Tmsfncuxlsbaserecordlists::TBaseRecordList(AComparer) { }
	/* {System_Generics_Collections}TList<System_TObject>.Create */ inline __fastcall TFormatRecordList(System::Generics::Collections::TEnumerable__1<System::TObject*>* const Collection)/* overload */ : Fmx::Tmsfncuxlsbaserecordlists::TBaseRecordList(Collection) { }
	/* {System_Generics_Collections}TList<System_TObject>.Create */ inline __fastcall TFormatRecordList(System::TObject* const *Values, const int Values_High)/* overload */ : Fmx::Tmsfncuxlsbaserecordlists::TBaseRecordList(Values, Values_High) { }
	
};


//-- var, const, procedure ---------------------------------------------------
extern DELPHI_PACKAGE System::UnicodeString __fastcall XlsBuiltInFormats(const int z);
}	/* namespace Tmsfncuxlsxf */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCUXLSXF)
using namespace Fmx::Tmsfncuxlsxf;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncuxlsxfHPP
