// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCRichEditorRTF.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncricheditorrtfHPP
#define Fmx_TmsfncricheditorrtfHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.SysUtils.hpp>
#include <System.Classes.hpp>
#include <System.Generics.Collections.hpp>
#include <FMX.TMSFNCRichEditorPic.hpp>
#include <FMX.TMSFNCGraphicsTypes.hpp>
#include <System.Types.hpp>
#include <FMX.Graphics.hpp>
#include <FMX.Controls.hpp>
#include <FMX.Forms.hpp>
#include <System.Character.hpp>
#include <System.UITypes.hpp>
#include <System.UIConsts.hpp>
#include <System.Generics.Defaults.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncricheditorrtf
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TCustomImageList;
class DELPHICLASS TRTFObject;
class DELPHICLASS TRTFColor;
class DELPHICLASS TRTFFont;
struct TRTFElementAttribute;
class DELPHICLASS TRTFElement;
class DELPHICLASS TRTFDocument;
struct TMetaFileHeader;
struct TMetaFileRecord;
struct TMetaFileStretchBlt;
class DELPHICLASS TFontItem;
class DELPHICLASS TFontCollection;
class DELPHICLASS TFontTable;
class DELPHICLASS TListTable;
class DELPHICLASS TTMSFNCGraphicsColorTable;
class DELPHICLASS TRTFHeader;
class DELPHICLASS TRTFEngine;
//-- type declarations -------------------------------------------------------
enum DECLSPEC_DENUM TRTFParseState : unsigned char { psNone, psObject, psType, psAttr, psData, psField, psComment };

enum DECLSPEC_DENUM TRTFDocState : unsigned char { dsNone, dsFont, dsColor, dsText };

typedef char * TAnsiString;

typedef char * PTAnsiChar;

typedef System::Uitypes::TAlphaColor TTMSFNCGraphicsColor;

#pragma pack(push,4)
class PASCALIMPLEMENTATION TCustomImageList : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TCustomImageList() { }
	
public:
	/* TObject.Create */ inline __fastcall TCustomImageList() : System::Classes::TPersistent() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TRTFObject : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	System::UnicodeString FRTFType;
	System::UnicodeString FRTFAttr;
	System::UnicodeString FRTFData;
	System::Classes::TStringStream* FDataStr;
	
protected:
	System::UnicodeString __fastcall GetRTFData();
	
public:
	__fastcall TRTFObject();
	__fastcall virtual ~TRTFObject();
	__property System::UnicodeString RTFType = {read=FRTFType, write=FRTFType};
	__property System::UnicodeString RTFAttr = {read=FRTFAttr, write=FRTFAttr};
	__property System::UnicodeString RTFData = {read=GetRTFData, write=FRTFData};
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TRTFColor : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	System::UnicodeString FID;
	System::Uitypes::TAlphaColor FColor;
	
public:
	__property System::UnicodeString ID = {read=FID, write=FID};
	__property System::Uitypes::TAlphaColor Color = {read=FColor, write=FColor, nodefault};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TRTFColor() { }
	
public:
	/* TObject.Create */ inline __fastcall TRTFColor() : System::Classes::TPersistent() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TRTFFont : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	System::UnicodeString FID;
	System::UnicodeString FName;
	int FCodePage;
	int FCharSet;
	
public:
	__property System::UnicodeString ID = {read=FID, write=FID};
	__property System::UnicodeString Name = {read=FName, write=FName};
	__property int CodePage = {read=FCodePage, write=FCodePage, nodefault};
	__property int CharSet = {read=FCharSet, write=FCharSet, nodefault};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TRTFFont() { }
	
public:
	/* TObject.Create */ inline __fastcall TRTFFont() : System::Classes::TPersistent() { }
	
};

#pragma pack(pop)

enum DECLSPEC_DENUM TRTFBaseLine : unsigned char { bNormal, bSubScript, bSuperScript };

enum DECLSPEC_DENUM TRTFBulletType : unsigned char { rbtNone, rbtStart, rbtItem, rbtEnd };

struct DECLSPEC_DRECORD TRTFElementAttribute
{
public:
	System::Uitypes::TAlphaColor rec;
	System::Uitypes::TAlphaColor rebc;
	System::UnicodeString ref;
	System::Uitypes::TFontStyles res;
	int refs;
	int refcs;
	System::Classes::TAlignment real;
	TRTFBaseLine rebl;
	int reind;
	bool rebul;
	int rebuldepth;
	bool retab;
};


#pragma pack(push,4)
class PASCALIMPLEMENTATION TRTFElement : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	System::Classes::TAlignment FAlignment;
	TRTFBaseLine FBaseLine;
	System::UnicodeString FText;
	System::Uitypes::TAlphaColor FBkColor;
	System::Uitypes::TAlphaColor FColor;
	System::UnicodeString FFontName;
	int FFontSize;
	System::Uitypes::TFontStyles FFontStyle;
	int FFontCharSet;
	Fmx::Graphics::TBitmap* FBitmap;
	int FIndent;
	TRTFBulletType FBulletType;
	bool FTab;
	System::UnicodeString FURL;
	int FPicWidth;
	int FPicHeight;
	
public:
	__fastcall TRTFElement();
	__fastcall virtual ~TRTFElement();
	__property TRTFBulletType BulletType = {read=FBulletType, write=FBulletType, nodefault};
	__property Fmx::Graphics::TBitmap* Bitmap = {read=FBitmap, write=FBitmap};
	__property System::Classes::TAlignment Alignment = {read=FAlignment, write=FAlignment, nodefault};
	__property TRTFBaseLine BaseLine = {read=FBaseLine, write=FBaseLine, nodefault};
	__property System::Uitypes::TAlphaColor BkColor = {read=FBkColor, write=FBkColor, nodefault};
	__property System::Uitypes::TAlphaColor Color = {read=FColor, write=FColor, nodefault};
	__property System::UnicodeString FontName = {read=FFontName, write=FFontName};
	__property int FontSize = {read=FFontSize, write=FFontSize, nodefault};
	__property System::Uitypes::TFontStyles FontStyle = {read=FFontStyle, write=FFontStyle, nodefault};
	__property int FontCharset = {read=FFontCharSet, write=FFontCharSet, nodefault};
	__property int Indent = {read=FIndent, write=FIndent, nodefault};
	__property int PicWidth = {read=FPicWidth, write=FPicWidth, nodefault};
	__property int PicHeight = {read=FPicHeight, write=FPicHeight, nodefault};
	__property System::UnicodeString Text = {read=FText, write=FText};
	__property bool Tab = {read=FTab, write=FTab, nodefault};
	__property System::UnicodeString URL = {read=FURL, write=FURL};
};

#pragma pack(pop)

typedef System::Generics::Collections::TList__1<TRTFColor*>* TRTFColorTable;

typedef System::Generics::Collections::TList__1<TRTFFont*>* TRTFFontTable;

typedef System::Generics::Collections::TList__1<TRTFElement*>* TRTFElementTable;

typedef System::Generics::Collections::TList__1<TRTFObject*>* TRTFObjects;

#pragma pack(push,4)
class PASCALIMPLEMENTATION TRTFDocument : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	System::Generics::Collections::TList__1<TRTFColor*>* FColorTable;
	System::Generics::Collections::TList__1<TRTFFont*>* FFontTable;
	System::Generics::Collections::TList__1<TRTFElement*>* FElementTable;
	System::Generics::Collections::TList__1<TRTFObject*>* FRTFObjects;
	TRTFElementAttribute FAttr;
	int FParseDepth;
	int FBullets;
	bool FPara;
	int FDefCP;
	int FDefUC;
	int FFontDPI;
	System::UnicodeString FURL;
	
protected:
	int __fastcall FindFont(System::UnicodeString ID);
	__property int DefCodePage = {read=FDefCP, write=FDefCP, nodefault};
	
public:
	__fastcall TRTFDocument();
	__fastcall virtual ~TRTFDocument();
	bool __fastcall IsUnicodeChar(System::UnicodeString s, int &len);
	System::UnicodeString __fastcall ParseUnicodeChar(System::UnicodeString s, System::WideChar &nextrep);
	TRTFParseState __fastcall ParseRTF(System::Classes::TStringStream* ts);
	System::Uitypes::TAlphaColor __fastcall ParseColor(System::UnicodeString s);
	System::UnicodeString __fastcall ParseFont(System::UnicodeString attr, System::UnicodeString s, int &cp);
	void __fastcall ParseColors(System::UnicodeString s, System::Generics::Collections::TList__1<TRTFColor*>* ColorTable);
	void __fastcall ParseElements(System::UnicodeString s, bool isBul = false);
	TRTFElement* __fastcall ParsePicture(System::UnicodeString Attr, System::UnicodeString Data);
	void __fastcall ParseObjects();
	void __fastcall AddBulletStart();
	void __fastcall AddBulletEnd();
	void __fastcall AddBullet();
	__property System::Generics::Collections::TList__1<TRTFElement*>* ElementTable = {read=FElementTable};
	__property System::Generics::Collections::TList__1<TRTFFont*>* FontTable = {read=FFontTable};
	__property System::Generics::Collections::TList__1<TRTFColor*>* ColorTable = {read=FColorTable};
};

#pragma pack(pop)

struct DECLSPEC_DRECORD TMetaFileHeader
{
public:
	System::Word metatype;
	System::Word headsize;
	System::Word versionnr;
	unsigned filesize;
	System::Word objects;
	unsigned maxsize;
	System::Word params;
};


struct DECLSPEC_DRECORD TMetaFileRecord
{
public:
	unsigned recordlen;
	System::Word func;
	System::Word data;
};


struct DECLSPEC_DRECORD TMetaFileStretchBlt
{
public:
	unsigned ROP;
	short srcHeight;
	short srcWidth;
	short ysrc;
	short xsrc;
	short destheight;
	short destwidth;
	short ydest;
	short xdest;
};


#pragma pack(push,4)
class PASCALIMPLEMENTATION TFontItem : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	System::UnicodeString FFaceName;
	void __fastcall SetFaceName(const System::UnicodeString Value);
	System::UnicodeString __fastcall GetCode();
	
public:
	__fastcall virtual TFontItem(System::Classes::TCollection* Collection);
	__fastcall virtual ~TFontItem();
	System::UnicodeString __fastcall GetText();
	
__published:
	__property System::UnicodeString FaceName = {read=FFaceName, write=SetFaceName};
	__property System::UnicodeString Code = {read=GetCode};
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TFontCollection : public System::Classes::TCollection
{
	typedef System::Classes::TCollection inherited;
	
public:
	TFontItem* operator[](int Index) { return this->Items[Index]; }
	
private:
	System::Classes::TNotifyEvent FOnChange;
	HIDESBASE TFontItem* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TFontItem* const Value);
	
public:
	__fastcall TFontCollection(System::Classes::TComponent* AOwner);
	__property TFontItem* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	HIDESBASE TFontItem* __fastcall Add();
	HIDESBASE TFontItem* __fastcall Insert(int Index);
	int __fastcall IndexOf(System::UnicodeString FaceName);
	__property System::Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TFontCollection() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TFontTable : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	TFontCollection* FFonts;
	
public:
	__fastcall TFontTable();
	__fastcall virtual ~TFontTable();
	System::UnicodeString __fastcall AddFont(Fmx::Graphics::TFont* AFont)/* overload */;
	System::UnicodeString __fastcall AddFont(System::Uitypes::TFontName AFaceName)/* overload */;
	System::UnicodeString __fastcall GetText();
	int __fastcall IndexOf(System::UnicodeString FaceName);
	void __fastcall LoadFonts(System::UnicodeString RTFString);
	__property TFontCollection* Fonts = {read=FFonts};
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TListTable : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	System::Classes::TStringList* FLists;
	
public:
	__fastcall TListTable();
	__fastcall virtual ~TListTable();
	int __fastcall AddList(System::UnicodeString ABullet)/* overload */;
	System::UnicodeString __fastcall GetText();
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCGraphicsColorTable : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	System::Classes::TStringList* FColorList;
	
public:
	__fastcall TTMSFNCGraphicsColorTable();
	__fastcall virtual ~TTMSFNCGraphicsColorTable();
	int __fastcall AddColor(System::Uitypes::TAlphaColor Clr);
	System::UnicodeString __fastcall GetText();
	void __fastcall LoadColors(System::UnicodeString RTFString);
	__property System::Classes::TStringList* Colors = {read=FColorList};
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TRTFHeader : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	TFontTable* FFontTable;
	TTMSFNCGraphicsColorTable* FColorTable;
	TListTable* FListTable;
	int FViewKind;
	
public:
	__fastcall TRTFHeader();
	__fastcall virtual ~TRTFHeader();
	System::UnicodeString __fastcall GetText();
	__property TFontTable* FontTable = {read=FFontTable};
	__property TListTable* ListTable = {read=FListTable};
	__property TTMSFNCGraphicsColorTable* ColorTable = {read=FColorTable};
};

#pragma pack(pop)

enum DECLSPEC_DENUM TRTFPageSize : unsigned char { A4, A5, Letter };

#pragma pack(push,4)
class PASCALIMPLEMENTATION TRTFEngine : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	TRTFHeader* FRTFHeader;
	bool FNewLine;
	bool FIsPreviouseKW;
	Fmx::Graphics::TFont* FFont;
	System::UnicodeString FText;
	bool FStartTable;
	int FTableWidth;
	bool FStartRow;
	bool FBold;
	bool FItalic;
	bool FUnderLine;
	System::Classes::TAlignment FHAlignment;
	int FFontSize;
	System::Uitypes::TAlphaColor FForeColor;
	System::Uitypes::TAlphaColor FBackColor;
	bool FStrikeOut;
	bool FStartBullet;
	System::UnicodeString FBulletFont;
	System::UnicodeString FBulletChar;
	System::Classes::TAlignment FTableAlignment;
	TCustomImageList* FImages;
	int FCurrentCol;
	int FTotalCol;
	System::Classes::TStringList* FColColorList;
	System::Uitypes::TAlphaColor FHighLightColor;
	bool FWithBorders;
	int FLI;
	int FFontDPI;
	TRTFPageSize FPageSize;
	bool FAnsiEncoding;
	System::UnicodeString __fastcall ReplaceCR(System::UnicodeString s, bool dobreak);
	
protected:
	bool __fastcall RefreshPara(System::UnicodeString S, int KWCode);
	void __fastcall AddInternal(System::UnicodeString S, int KWCode = 0x0);
	System::UnicodeString __fastcall PicAsString(Fmx::Tmsfncricheditorpic::TPicture* Pic)/* overload */;
	System::UnicodeString __fastcall PicAsString(Fmx::Tmsfncricheditorpic::TGDIPPicture* Pic, int PictureWidth, int PictureHeight)/* overload */;
	int __fastcall MaxPageWidth();
	int __fastcall MaxPageHeight();
	
public:
	__fastcall TRTFEngine();
	__fastcall virtual ~TRTFEngine();
	void __fastcall Clear();
	void __fastcall AddFont(Fmx::Graphics::TFont* AFont);
	void __fastcall AddFontName(System::Uitypes::TFontName FontName);
	void __fastcall AddBold(bool Value);
	void __fastcall AddItalic(bool Value);
	void __fastcall AddUnderLine(bool Value);
	void __fastcall AddStrikeOut(bool Value);
	void __fastcall AddFontSize(int Value)/* overload */;
	void __fastcall AddFontSize(float Value)/* overload */;
	void __fastcall AddText(System::UnicodeString T);
	void __fastcall AddNewLine();
	void __fastcall AddLine();
	void __fastcall AddTab();
	void __fastcall AddParagraph(int LeftInd = 0x2d0, int RightInd = 0x0);
	void __fastcall AddIndent(int Indent);
	void __fastcall AddForeColor(System::Uitypes::TAlphaColor Clr);
	void __fastcall AddHighLightColor(System::Uitypes::TAlphaColor Clr);
	void __fastcall AddBackGroundColor(System::Uitypes::TAlphaColor Clr);
	void __fastcall AddHAlignment(System::Classes::TAlignment Align);
	void __fastcall AddPageBreak();
	void __fastcall AddHTML(System::UnicodeString S);
	void __fastcall AddRTF(System::UnicodeString S);
	void __fastcall AddHyperLink(System::UnicodeString Link, System::UnicodeString Text, Fmx::Graphics::TFont* AFont)/* overload */;
	void __fastcall AddHyperLink(System::UnicodeString Link, System::UnicodeString Text, Fmx::Graphics::TFont* AFont, System::Uitypes::TAlphaColor URLColor)/* overload */;
	System::UnicodeString __fastcall AddBitmap(Fmx::Graphics::TBitmap* ABmp, System::Uitypes::TAlphaColor Bkg = (System::Uitypes::TAlphaColor)(0xffffffff))/* overload */;
	System::UnicodeString __fastcall AddBitmap(Fmx::Graphics::TBitmap* ABmp, int PictureWidth, int PictureHeight, System::Uitypes::TAlphaColor Bkg = (System::Uitypes::TAlphaColor)(0xffffffff))/* overload */;
	System::UnicodeString __fastcall AddPicture(Fmx::Tmsfncricheditorpic::TPicture* Pic)/* overload */;
	System::UnicodeString __fastcall AddPicture(Fmx::Tmsfncricheditorpic::TGDIPPicture* Pic, int PictureWidth, int PictureHeight)/* overload */;
	void __fastcall AddHyperLinkPic(System::UnicodeString Link, Fmx::Tmsfncricheditorpic::TPicture* Pic);
	void __fastcall AddSuperScript();
	void __fastcall AddSubScript();
	void __fastcall AddNormalScript();
	void __fastcall StartTable(System::Classes::TAlignment Align, bool WithBorders = true);
	void __fastcall EndTable();
	void __fastcall AddColumn(int ColWidth);
	void __fastcall StartRow();
	void __fastcall EndRow();
	void __fastcall AddRow();
	void __fastcall NextCell();
	void __fastcall ReDefColWidth();
	void __fastcall AddCellColor(System::Uitypes::TAlphaColor Clr);
	void __fastcall StartBullet(bool Number, System::Uitypes::TFontName FontName = u"Symbol", int CharNo = 0x7, System::Uitypes::TAlphaColor Color = (System::Uitypes::TAlphaColor)(0xff000000))/* overload */;
	void __fastcall NextBullet(bool Number, int Index = 0xffffffff)/* overload */;
	void __fastcall EndBullet();
	void __fastcall SaveToFile(System::UnicodeString FileName);
	System::UnicodeString __fastcall GetText();
	void __fastcall GetBuffer(System::UnicodeString &Buffer, System::UnicodeString &FontTable, System::UnicodeString &ColorTable);
	void __fastcall SaveToStream(System::Classes::TStream* st);
	__property int FontDPI = {read=FFontDPI, write=FFontDPI, nodefault};
	__property bool Bold = {read=FBold, nodefault};
	__property bool Italic = {read=FItalic, nodefault};
	__property bool UnderLine = {read=FUnderLine, nodefault};
	__property bool StrikeOut = {read=FStrikeOut, nodefault};
	__property int FontSize = {read=FFontSize, nodefault};
	__property System::Classes::TAlignment HAlignment = {read=FHAlignment, nodefault};
	__property System::Uitypes::TAlphaColor ForeColor = {read=FForeColor, nodefault};
	__property System::Uitypes::TAlphaColor BackColor = {read=FBackColor, nodefault};
	__property System::Uitypes::TAlphaColor HighLightColor = {read=FHighLightColor, nodefault};
	__property TCustomImageList* Images = {read=FImages, write=FImages};
	__property bool AnsiEncoding = {read=FAnsiEncoding, write=FAnsiEncoding, nodefault};
	__classmethod int __fastcall PixelsToTwips(int pixels);
	__classmethod int __fastcall TwipsToPixels(int twips);
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
static constexpr unsigned clBlack = unsigned(0xff000000);
extern DELPHI_PACKAGE bool __fastcall IsCharInStr(System::WideChar ch, System::UnicodeString s);
extern DELPHI_PACKAGE bool __fastcall IsNumChar(System::WideChar ch);
extern DELPHI_PACKAGE bool __fastcall IsAlphaChar(System::WideChar ch);
extern DELPHI_PACKAGE int __fastcall HexVal(System::UnicodeString s);
extern DELPHI_PACKAGE System::UnicodeString __fastcall RTFHeader(void);
}	/* namespace Tmsfncricheditorrtf */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCRICHEDITORRTF)
using namespace Fmx::Tmsfncricheditorrtf;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncricheditorrtfHPP
