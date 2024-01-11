// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCRichEditorBase.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncricheditorbaseHPP
#define Fmx_TmsfncricheditorbaseHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <System.Generics.Collections.hpp>
#include <System.Rtti.hpp>
#include <System.Types.hpp>
#include <System.SysUtils.hpp>
#include <System.UIConsts.hpp>
#include <System.Actions.hpp>
#include <FMX.Graphics.hpp>
#include <FMX.Types.hpp>
#include <FMX.Controls.hpp>
#include <FMX.ActnList.hpp>
#include <System.StrUtils.hpp>
#include <System.UITypes.hpp>
#include <FMX.TMSFNCScrollControl.hpp>
#include <FMX.TMSFNCGraphicsTypes.hpp>
#include <FMX.TMSFNCUtils.hpp>
#include <FMX.TMSFNCRichEditorPic.hpp>
#include <FMX.TMSFNCRichEditorRTF.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <System.Generics.Defaults.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncricheditorbase
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TMemoState;
class DELPHICLASS TStyleElement;
class DELPHICLASS TREElement;
class DELPHICLASS TTextElement;
class DELPHICLASS TLineBreakElement;
class DELPHICLASS TLineElement;
class DELPHICLASS TTabElement;
class DELPHICLASS TTabPersistElement;
class DELPHICLASS TCustomGraphicElement;
class DELPHICLASS TPictureElement;
class DELPHICLASS TNamedPictureElement;
class DELPHICLASS TEmoticonPictureElement;
class DELPHICLASS TGraphicElement;
class DELPHICLASS TBulletElement;
class DELPHICLASS TBulletStart;
class DELPHICLASS TBulletEnd;
class DELPHICLASS TTableElement;
class DELPHICLASS TElementSaver;
class DELPHICLASS TElementClassSaver;
class DELPHICLASS TStateSaver;
class DELPHICLASS TSelection;
class DELPHICLASS TCaret;
class DELPHICLASS TPageMargin;
struct TTextSize;
class DELPHICLASS TContext;
class DELPHICLASS TRichEditorAutoReplace;
class DELPHICLASS TRichEditorAutoCorrect;
class DELPHICLASS TWordList;
class DELPHICLASS TRichEditorAutoCompletion;
class DELPHICLASS TTabPosition;
class DELPHICLASS TTabPositions;
class DELPHICLASS TTMSFNCRichEditorBase;
class DELPHICLASS TTMSFNCRichEditorAction;
class DELPHICLASS TTMSFNCRichEditorClear;
class DELPHICLASS TTMSFNCRichEditorCut;
class DELPHICLASS TTMSFNCRichEditorCopy;
class DELPHICLASS TTMSFNCRichEditorPaste;
class DELPHICLASS TTMSFNCRichEditorUndo;
class DELPHICLASS TTMSFNCRichEditorRedo;
class DELPHICLASS TTMSFNCRichEditorSelectAll;
class DELPHICLASS TTMSFNCRichEditorAlignRight;
class DELPHICLASS TTMSFNCRichEditorAlignLeft;
class DELPHICLASS TTMSFNCRichEditorAlignCenter;
class DELPHICLASS TTMSFNCRichEditorBold;
class DELPHICLASS TTMSFNCRichEditorItalic;
class DELPHICLASS TTMSFNCRichEditorUnderline;
class DELPHICLASS TTMSFNCRichEditorStrikeOut;
class DELPHICLASS TTMSFNCRichEditorSubscript;
class DELPHICLASS TTMSFNCRichEditorSuperscript;
class DELPHICLASS TTMSFNCRichEditorSmallCaps;
class DELPHICLASS TTMSFNCRichEditorLargeCaps;
class DELPHICLASS TTMSFNCRichEditorTextColor;
class DELPHICLASS TTMSFNCRichEditorFontName;
class DELPHICLASS TTMSFNCRichEditorFontSize;
class DELPHICLASS TTMSFNCRichEditorFontSizeUp;
class DELPHICLASS TTMSFNCRichEditorFontSizeDown;
class DELPHICLASS TTMSFNCRichEditorBulletType;
class DELPHICLASS TTMSFNCRichEditorNumberedBulletType;
class DELPHICLASS TTMSFNCRichEditorColor;
class DELPHICLASS TTMSFNCRichEditorIndent;
class DELPHICLASS TTMSFNCRichEditorUnIndent;
//-- type declarations -------------------------------------------------------
typedef Fmx::Tmsfnctypes::TTMSFNCBitmap TPicture;

typedef Fmx::Tmsfnctypes::TTMSFNCBitmap TGDIPPicture;

typedef System::Uitypes::TAlphaColor TTMSFNCGraphicsColor;

enum DECLSPEC_DENUM TPenStyle : unsigned char { psSolid, psDash, psDot, psDashDot, psDashDotDot, psClear, psInsideFrame, psUserStyle, psAlternate };

enum DECLSPEC_DENUM TPictureFormat : unsigned char { pfBMP, pfGIF, pfJPG, pfPNG, pfICO, pfTiff, pfMetaFile, pfNone };

enum DECLSPEC_DENUM TURLAuto : unsigned char { uAuto, uOff };

enum DECLSPEC_DENUM TURLOpen : unsigned char { uoCtrl, uoAlt, uoClick, uoNone };

enum DECLSPEC_DENUM TRTEProducer : unsigned char { pVCL, pFMX };

class PASCALIMPLEMENTATION TMemoState : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	int FVersion;
	int FSelectionFromIndex;
	int FCaretIndex;
	int FSelectionTo;
	int FSelectionFrom;
	int FCaret;
	int FSelectionToIndex;
	int FTop;
	int FLeft;
	System::UnicodeString FAuthor;
	TRTEProducer FProducer;
	System::UnicodeString FTags;
	System::UnicodeString FLastModifiedBy;
	System::UnicodeString FComments;
	Fmx::Graphics::TFont* FDefaultFont;
	System::Uitypes::TAlphaColor FColor;
	System::Uitypes::TAlphaColor FTextColor;
	void __fastcall SetDefaultFont(Fmx::Graphics::TFont* const Value);
	unsigned __fastcall GetColor();
	System::UnicodeString __fastcall GetFontName();
	int __fastcall GetFontSize();
	System::Uitypes::TFontStyles __fastcall GetFontStyle();
	unsigned __fastcall GetTextColor();
	void __fastcall SetColor(const unsigned Value);
	void __fastcall SetFontName(const System::UnicodeString Value);
	void __fastcall SetFontSize(const int Value);
	void __fastcall SetFontStyle(const System::Uitypes::TFontStyles Value);
	void __fastcall SetTextColor(const unsigned Value);
	
public:
	__fastcall TMemoState();
	__fastcall virtual ~TMemoState();
	__property Fmx::Graphics::TFont* DefaultFont = {read=FDefaultFont, write=SetDefaultFont};
	
__published:
	__property System::UnicodeString Author = {read=FAuthor, write=FAuthor};
	__property TRTEProducer Producer = {read=FProducer, write=FProducer, nodefault};
	__property System::UnicodeString Comments = {read=FComments, write=FComments};
	__property System::UnicodeString FontName = {read=GetFontName, write=SetFontName};
	__property int FontSize = {read=GetFontSize, write=SetFontSize, nodefault};
	__property System::Uitypes::TFontStyles FontStyle = {read=GetFontStyle, write=SetFontStyle, nodefault};
	__property unsigned TextColorC = {read=GetTextColor, write=SetTextColor, nodefault};
	__property unsigned ColorC = {read=GetColor, write=SetColor, nodefault};
	__property System::UnicodeString LastModifiedBy = {read=FLastModifiedBy, write=FLastModifiedBy};
	__property int Caret = {read=FCaret, write=FCaret, nodefault};
	__property int CaretIndex = {read=FCaretIndex, write=FCaretIndex, nodefault};
	__property int SelectionFrom = {read=FSelectionFrom, write=FSelectionFrom, nodefault};
	__property int SelectionFromIndex = {read=FSelectionFromIndex, write=FSelectionFromIndex, nodefault};
	__property int SelectionTo = {read=FSelectionTo, write=FSelectionTo, nodefault};
	__property int SelectionToIndex = {read=FSelectionToIndex, write=FSelectionToIndex, nodefault};
	__property int Version = {read=FVersion, write=FVersion, nodefault};
	__property System::UnicodeString Tags = {read=FTags, write=FTags};
	__property int Top = {read=FTop, write=FTop, nodefault};
	__property int Left = {read=FLeft, write=FLeft, nodefault};
};


class PASCALIMPLEMENTATION TStyleElement : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	Fmx::Graphics::TFont* FFont;
	System::Uitypes::TAlphaColor FColor;
	System::Uitypes::TAlphaColor FTextColor;
	System::Classes::TAlignment FAlignment;
	void __fastcall SetFont(Fmx::Graphics::TFont* const Value);
	
public:
	__fastcall TStyleElement();
	__fastcall virtual ~TStyleElement();
	__property System::Classes::TAlignment Alignment = {read=FAlignment, write=FAlignment, nodefault};
	__property System::Uitypes::TAlphaColor Color = {read=FColor, write=FColor, nodefault};
	__property System::Uitypes::TAlphaColor TextColor = {read=FTextColor, write=FTextColor, nodefault};
	__property Fmx::Graphics::TFont* Font = {read=FFont, write=SetFont};
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


enum DECLSPEC_DENUM TTextBaseLine : unsigned char { tbRegular, tbSubscript, tbSuperScript };

class PASCALIMPLEMENTATION TREElement : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	System::Types::TPoint FXY;
	System::Types::TPoint FXYE;
	int FLH;
	int FTH;
	bool FSelected;
	int FSelFrom;
	int FSelTo;
	System::Classes::TAlignment FAlignment;
	System::UnicodeString FText;
	int FIndent;
	int FTag;
	System::UnicodeString FURL;
	System::UnicodeString FCN;
	System::Uitypes::TAlphaColor FColor;
	System::Uitypes::TAlphaColor FTextColor;
	Fmx::Graphics::TFont* FFont;
	int FBulletIndent;
	TTextBaseLine FBaseLine;
	System::UnicodeString FTagText;
	System::UnicodeString FMergeRef;
	bool FHighlight;
	System::UnicodeString FComment;
	System::UnicodeString FHint;
	bool FRW;
	int FFontCharset;
	void __fastcall SetFont(Fmx::Graphics::TFont* const Value);
	System::UnicodeString __fastcall GetFontName();
	int __fastcall GetFontSize();
	System::Uitypes::TFontStyles __fastcall GetFontStyle();
	void __fastcall SetFontName(const System::UnicodeString Value);
	void __fastcall SetFontSize(const int Value);
	void __fastcall SetFontStyle(const System::Uitypes::TFontStyles Value);
	unsigned __fastcall GetColor();
	unsigned __fastcall GetTextColor();
	void __fastcall SetColor(const unsigned Value);
	void __fastcall SetTextColor(const unsigned Value);
	int __fastcall GetLeftIndent();
	int __fastcall GetRightIndent();
	void __fastcall SetLeftIndent(const int Value);
	void __fastcall SetRightIndent(const int Value);
	
protected:
	System::UnicodeString __fastcall GetCN();
	
public:
	__fastcall virtual TREElement();
	__fastcall virtual ~TREElement();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	virtual bool __fastcall Equal(TREElement* AElement);
	virtual int __fastcall TextLength();
	virtual int __fastcall IndexAtEnd();
	virtual System::Types::TSize __fastcall Size();
	virtual System::Types::TSize __fastcall DrawSize();
	__property bool Selected = {read=FSelected, write=FSelected, nodefault};
	__property int SelFrom = {read=FSelFrom, write=FSelFrom, nodefault};
	__property int SelTo = {read=FSelTo, write=FSelTo, nodefault};
	__property System::Types::TPoint XY = {read=FXY, write=FXY};
	__property System::Types::TPoint XYE = {read=FXYE, write=FXYE};
	__property int LH = {read=FLH, write=FLH, nodefault};
	__property int TH = {read=FTH, write=FTH, nodefault};
	__property Fmx::Graphics::TFont* Font = {read=FFont, write=SetFont};
	__property System::Uitypes::TAlphaColor Color = {read=FColor, write=FColor, nodefault};
	__property System::Uitypes::TAlphaColor TextColor = {read=FTextColor, write=FTextColor, nodefault};
	System::UnicodeString __fastcall DisplayText();
	__classmethod TREElement* __fastcall Clone();
	__property bool WriteAccess = {read=FRW, write=FRW, nodefault};
	__property int FontCharset = {read=FFontCharset, write=FFontCharset, nodefault};
	__property int LeftIndent = {read=GetLeftIndent, write=SetLeftIndent, nodefault};
	__property int RightIndent = {read=GetRightIndent, write=SetRightIndent, nodefault};
	
__published:
	__property System::Classes::TAlignment Alignment = {read=FAlignment, write=FAlignment, nodefault};
	__property TTextBaseLine Baseline = {read=FBaseLine, write=FBaseLine, nodefault};
	__property int BulletIndent = {read=FBulletIndent, write=FBulletIndent, nodefault};
	__property unsigned ColorC = {read=GetColor, write=SetColor, nodefault};
	__property unsigned TextColorC = {read=GetTextColor, write=SetTextColor, nodefault};
	__property System::UnicodeString FontName = {read=GetFontName, write=SetFontName};
	__property int FontSize = {read=GetFontSize, write=SetFontSize, nodefault};
	__property System::Uitypes::TFontStyles FontStyle = {read=GetFontStyle, write=SetFontStyle, nodefault};
	__property bool Highlight = {read=FHighlight, write=FHighlight, nodefault};
	__property System::UnicodeString Hint = {read=FHint, write=FHint};
	__property System::UnicodeString Comment = {read=FComment, write=FComment};
	__property System::UnicodeString Text = {read=FText, write=FText};
	__property int Indent = {read=FIndent, write=FIndent, nodefault};
	__property System::UnicodeString MergeRef = {read=FMergeRef, write=FMergeRef};
	__property int Tag = {read=FTag, write=FTag, nodefault};
	__property System::UnicodeString TagText = {read=FTagText, write=FTagText};
	__property System::UnicodeString URL = {read=FURL, write=FURL};
	__property System::UnicodeString CN = {read=GetCN};
};


_DECLARE_METACLASS(System::TMetaClass, TREElementClass);

class PASCALIMPLEMENTATION TTextElement : public TREElement
{
	typedef TREElement inherited;
	
private:
	int FStyleTag;
	bool FTab;
	bool FLineBreak;
	int FTextWidth;
	int FTextHeight;
	bool FError;
	bool FLine;
	
public:
	__fastcall virtual TTextElement();
	__fastcall virtual ~TTextElement();
	virtual bool __fastcall Equal(TREElement* AElement);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	virtual int __fastcall TextLength();
	virtual int __fastcall IndexAtEnd();
	__property int TextWidth = {read=FTextWidth, write=FTextWidth, nodefault};
	__property int TextHeight = {read=FTextHeight, write=FTextHeight, nodefault};
	
__published:
	__property bool Error = {read=FError, write=FError, nodefault};
	__property int StyleTag = {read=FStyleTag, write=FStyleTag, nodefault};
	__property bool Line = {read=FLine, write=FLine, nodefault};
};


_DECLARE_METACLASS(System::TMetaClass, TTextElementClass);

class PASCALIMPLEMENTATION TLineBreakElement : public TREElement
{
	typedef TREElement inherited;
	
public:
	__fastcall virtual TLineBreakElement();
public:
	/* TREElement.Destroy */ inline __fastcall virtual ~TLineBreakElement() { }
	
};


class PASCALIMPLEMENTATION TLineElement : public TLineBreakElement
{
	typedef TLineBreakElement inherited;
	
private:
	int FWidth;
	TPenStyle FStyle;
	
public:
	__fastcall virtual TLineElement();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property TPenStyle Style = {read=FStyle, write=FStyle, nodefault};
	__property int Width = {read=FWidth, write=FWidth, nodefault};
public:
	/* TREElement.Destroy */ inline __fastcall virtual ~TLineElement() { }
	
};


class PASCALIMPLEMENTATION TTabElement : public TREElement
{
	typedef TREElement inherited;
	
private:
	int FWidth;
	
protected:
	__property int TabWidth = {read=FWidth, write=FWidth, nodefault};
	
public:
	virtual System::Types::TSize __fastcall Size();
public:
	/* TREElement.Create */ inline __fastcall virtual TTabElement() : TREElement() { }
	/* TREElement.Destroy */ inline __fastcall virtual ~TTabElement() { }
	
};


class PASCALIMPLEMENTATION TTabPersistElement : public TREElement
{
	typedef TREElement inherited;
	
private:
	System::UnicodeString FTabs;
	
__published:
	__property System::UnicodeString Tabs = {read=FTabs, write=FTabs};
public:
	/* TREElement.Create */ inline __fastcall virtual TTabPersistElement() : TREElement() { }
	/* TREElement.Destroy */ inline __fastcall virtual ~TTabPersistElement() { }
	
};


_DECLARE_METACLASS(System::TMetaClass, TTabPersistElementClass);

class PASCALIMPLEMENTATION TCustomGraphicElement : public TREElement
{
	typedef TREElement inherited;
	
private:
	double FDPIratio;
	
public:
	__property double DPIratio = {read=FDPIratio, write=FDPIratio};
public:
	/* TREElement.Create */ inline __fastcall virtual TCustomGraphicElement() : TREElement() { }
	/* TREElement.Destroy */ inline __fastcall virtual ~TCustomGraphicElement() { }
	
};


class PASCALIMPLEMENTATION TPictureElement : public TCustomGraphicElement
{
	typedef TCustomGraphicElement inherited;
	
private:
	Fmx::Tmsfnctypes::TTMSFNCBitmap* FPicture;
	int FPictureWidth;
	int FPictureHeight;
	int __fastcall GetPictureHeight();
	int __fastcall GetPictureWidth();
	
protected:
	virtual void __fastcall DefineProperties(System::Classes::TFiler* Filer);
	void __fastcall ReadData(System::Classes::TStream* Stream);
	void __fastcall WriteData(System::Classes::TStream* Stream);
	
public:
	__fastcall virtual TPictureElement();
	__fastcall virtual ~TPictureElement();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	virtual System::Types::TSize __fastcall Size();
	virtual System::Types::TSize __fastcall DrawSize();
	void __fastcall FitToPage(int Width, int Height);
	__property Fmx::Tmsfnctypes::TTMSFNCBitmap* Picture = {read=FPicture, write=FPicture};
	
__published:
	__property int PictureWidth = {read=GetPictureWidth, write=FPictureWidth, nodefault};
	__property int PictureHeight = {read=GetPictureHeight, write=FPictureHeight, nodefault};
};


class PASCALIMPLEMENTATION TNamedPictureElement : public TCustomGraphicElement
{
	typedef TCustomGraphicElement inherited;
	
private:
	System::UnicodeString FName;
	int FWidth;
	int FHeight;
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	virtual System::Types::TSize __fastcall Size();
	
__published:
	__property int Width = {read=FWidth, write=FWidth, nodefault};
	__property int Height = {read=FHeight, write=FHeight, nodefault};
	__property System::UnicodeString Name = {read=FName, write=FName};
public:
	/* TREElement.Create */ inline __fastcall virtual TNamedPictureElement() : TCustomGraphicElement() { }
	/* TREElement.Destroy */ inline __fastcall virtual ~TNamedPictureElement() { }
	
};


class PASCALIMPLEMENTATION TEmoticonPictureElement : public TNamedPictureElement
{
	typedef TNamedPictureElement inherited;
	
public:
	/* TREElement.Create */ inline __fastcall virtual TEmoticonPictureElement() : TNamedPictureElement() { }
	/* TREElement.Destroy */ inline __fastcall virtual ~TEmoticonPictureElement() { }
	
};


class PASCALIMPLEMENTATION TGraphicElement : public TCustomGraphicElement
{
	typedef TCustomGraphicElement inherited;
	
private:
	int FWidth;
	int FHeight;
	System::UnicodeString FID;
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	virtual System::Types::TSize __fastcall Size();
	
__published:
	__property int Width = {read=FWidth, write=FWidth, nodefault};
	__property int Height = {read=FHeight, write=FHeight, nodefault};
	__property System::UnicodeString ID = {read=FID, write=FID};
public:
	/* TREElement.Create */ inline __fastcall virtual TGraphicElement() : TCustomGraphicElement() { }
	/* TREElement.Destroy */ inline __fastcall virtual ~TGraphicElement() { }
	
};


enum DECLSPEC_DENUM TBulletType : unsigned char { btCircle, btSquare, btArrow, btTick, btStar, btNumber, btChar, btCustom, btNone };

class PASCALIMPLEMENTATION TBulletElement : public TREElement
{
	typedef TREElement inherited;
	
private:
	TBulletType FType;
	System::UnicodeString FBulletFont;
	System::UnicodeString FBullet;
	System::UnicodeString FBulletFormat;
	int FIndex;
	int FWidth;
	int FSpacing;
	
public:
	__fastcall virtual TBulletElement();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	virtual System::Types::TSize __fastcall Size();
	
__published:
	__property System::UnicodeString Bullet = {read=FBullet, write=FBullet};
	__property System::UnicodeString BulletFont = {read=FBulletFont, write=FBulletFont};
	__property System::UnicodeString BulletFormat = {read=FBulletFormat, write=FBulletFormat};
	__property int Index = {read=FIndex, write=FIndex, nodefault};
	__property TBulletType Type = {read=FType, write=FType, nodefault};
	__property int Spacing = {read=FSpacing, write=FSpacing, nodefault};
	__property int Width = {read=FWidth, write=FWidth, nodefault};
public:
	/* TREElement.Destroy */ inline __fastcall virtual ~TBulletElement() { }
	
};


_DECLARE_METACLASS(System::TMetaClass, TBulletElementClass);

class PASCALIMPLEMENTATION TBulletStart : public TREElement
{
	typedef TREElement inherited;
	
private:
	int FStartIndent;
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property int StartIndent = {read=FStartIndent, write=FStartIndent, nodefault};
public:
	/* TREElement.Create */ inline __fastcall virtual TBulletStart() : TREElement() { }
	/* TREElement.Destroy */ inline __fastcall virtual ~TBulletStart() { }
	
};


_DECLARE_METACLASS(System::TMetaClass, TBulletStartClass);

class PASCALIMPLEMENTATION TBulletEnd : public TREElement
{
	typedef TREElement inherited;
	
public:
	/* TREElement.Create */ inline __fastcall virtual TBulletEnd() : TREElement() { }
	/* TREElement.Destroy */ inline __fastcall virtual ~TBulletEnd() { }
	
};


_DECLARE_METACLASS(System::TMetaClass, TBulletEndClass);

_DECLARE_METACLASS(System::TMetaClass, TPictureElementClass);

_DECLARE_METACLASS(System::TMetaClass, TNamedPictureElementClass);

_DECLARE_METACLASS(System::TMetaClass, TEmoticonPictureElementClass);

_DECLARE_METACLASS(System::TMetaClass, TGraphicElementClass);

class PASCALIMPLEMENTATION TTableElement : public TREElement
{
	typedef TREElement inherited;
	
public:
	/* TREElement.Create */ inline __fastcall virtual TTableElement() : TREElement() { }
	/* TREElement.Destroy */ inline __fastcall virtual ~TTableElement() { }
	
};


class PASCALIMPLEMENTATION TElementSaver : public System::Classes::TComponent
{
	typedef System::Classes::TComponent inherited;
	
private:
	TREElement* FSaveElement;
	
__published:
	__property TREElement* SaveElement = {read=FSaveElement, write=FSaveElement};
	
public:
	System::UnicodeString __fastcall GetVersionNumber(System::Int8 AMaj, System::Int8 AMin, System::Int8 ARel, System::Int8 ABld);
public:
	/* TComponent.Create */ inline __fastcall virtual TElementSaver(System::Classes::TComponent* AOwner) : System::Classes::TComponent(AOwner) { }
	/* TComponent.Destroy */ inline __fastcall virtual ~TElementSaver() { }
	
};


class PASCALIMPLEMENTATION TElementClassSaver : public System::Classes::TComponent
{
	typedef System::Classes::TComponent inherited;
	
private:
	System::UnicodeString FElementClass;
	
__published:
	__property System::UnicodeString ElementClass = {read=FElementClass, write=FElementClass};
	
public:
	System::UnicodeString __fastcall GetVersionNumber(System::Int8 AMaj, System::Int8 AMin, System::Int8 ARel, System::Int8 ABld);
public:
	/* TComponent.Create */ inline __fastcall virtual TElementClassSaver(System::Classes::TComponent* AOwner) : System::Classes::TComponent(AOwner) { }
	/* TComponent.Destroy */ inline __fastcall virtual ~TElementClassSaver() { }
	
};


class PASCALIMPLEMENTATION TStateSaver : public System::Classes::TComponent
{
	typedef System::Classes::TComponent inherited;
	
private:
	TMemoState* FSaveState;
	
__published:
	__property TMemoState* SaveState = {read=FSaveState, write=FSaveState};
	
public:
	System::UnicodeString __fastcall GetVersionNumber(System::Int8 AMaj, System::Int8 AMin, System::Int8 ARel, System::Int8 ABld);
public:
	/* TComponent.Create */ inline __fastcall virtual TStateSaver(System::Classes::TComponent* AOwner) : System::Classes::TComponent(AOwner) { }
	/* TComponent.Destroy */ inline __fastcall virtual ~TStateSaver() { }
	
};


class PASCALIMPLEMENTATION TSelection : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	TREElement* FFromElement;
	TREElement* FToElement;
	int FFromChar;
	int FToChar;
	System::Classes::TNotifyEvent FOnChange;
	System::Types::TPoint FToXY;
	System::Types::TPoint FFromXY;
	void __fastcall SetFromChar(const int Value);
	void __fastcall SetFromElement(TREElement* const Value);
	void __fastcall SetToChar(const int Value);
	void __fastcall SetToElement(TREElement* const Value);
	
protected:
	void __fastcall Changed();
	
public:
	__fastcall TSelection();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__property TREElement* FromElement = {read=FFromElement, write=SetFromElement};
	__property TREElement* ToElement = {read=FToElement, write=SetToElement};
	__property int FromChar = {read=FFromChar, write=SetFromChar, nodefault};
	__property int ToChar = {read=FToChar, write=SetToChar, nodefault};
	__property System::Types::TPoint FromXY = {read=FFromXY, write=FFromXY};
	__property System::Types::TPoint ToXY = {read=FToXY, write=FToXY};
	__property System::Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TSelection() { }
	
};


class PASCALIMPLEMENTATION TCaret : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	bool FEndOfLine;
	System::Types::TPoint FXY;
	int FLH;
	int FDescent;
	System::Uitypes::TAlphaColor FColor;
	TREElement* FElement;
	int FCharIndex;
	System::Classes::TNotifyEvent FOnChange;
	bool FNextLine;
	int FBaseLine;
	void __fastcall SetCharIndex(const int Value);
	void __fastcall SetXY(const System::Types::TPoint &Value);
	
protected:
	void __fastcall Changed();
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__property System::Uitypes::TAlphaColor Color = {read=FColor, write=FColor, nodefault};
	__property bool EndOfLine = {read=FEndOfLine, write=FEndOfLine, nodefault};
	__property System::Types::TPoint XY = {read=FXY, write=SetXY};
	__property int LH = {read=FLH, write=FLH, nodefault};
	__property int Descent = {read=FDescent, write=FDescent, nodefault};
	__property int BaseLine = {read=FBaseLine, write=FBaseLine, nodefault};
	__property TREElement* Element = {read=FElement, write=FElement};
	__property int CharIndex = {read=FCharIndex, write=SetCharIndex, nodefault};
	__property bool NextLine = {read=FNextLine, write=FNextLine, nodefault};
	__property System::Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TCaret() { }
	
public:
	/* TObject.Create */ inline __fastcall TCaret() : System::Classes::TPersistent() { }
	
};


class PASCALIMPLEMENTATION TPageMargin : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	int FHorizontal;
	int FVertical;
	System::Classes::TNotifyEvent FOnChange;
	System::Uitypes::TAlphaColor FColor;
	int FRight;
	int FLeft;
	void __fastcall SetHorizontal(const int Value);
	void __fastcall SetVertical(const int Value);
	void __fastcall SetColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetRight(const int Value);
	void __fastcall SetLeft(const int Value);
	
protected:
	void __fastcall Changed();
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall TPageMargin();
	int __fastcall RightIndent();
	
__published:
	__property System::Uitypes::TAlphaColor Color = {read=FColor, write=SetColor, default=-8355712};
	__property int Horizontal = {read=FHorizontal, write=SetHorizontal, default=0};
	__property int Vertical = {read=FVertical, write=SetVertical, default=0};
	__property int Left = {read=FLeft, write=SetLeft, default=0};
	__property int Right = {read=FRight, write=SetRight, default=0};
	__property System::Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TPageMargin() { }
	
};


enum DECLSPEC_DENUM TCaretPos : unsigned char { cpBeginDoc, cpEndDoc };

enum DECLSPEC_DENUM TCharCommandState : unsigned char { ccNormal, ccShift, ccCtrl, ccCtrlShift };

enum DECLSPEC_DENUM TErrorSelection : unsigned char { esFirst, esNext, esPrevious, esLast, esUndo };

enum DECLSPEC_DENUM TSelectionType : unsigned char { stDefault, stWord, stLine, stSingle };

struct DECLSPEC_DRECORD TTextSize
{
public:
	int cx;
	int cy;
	int sup;
	int sub;
};


typedef System::Generics::Collections::TList__1<TREElement*>* TElements;

class PASCALIMPLEMENTATION TContext : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	System::Generics::Collections::TList__1<TREElement*>* FContent;
	System::Types::TRect FClientRect;
	TCaret* FCaret;
	TSelection* FSelection;
	
public:
	__fastcall TContext(const System::Types::TRect &ARect);
	__fastcall virtual ~TContext();
	__property System::Types::TRect ClientRect = {read=FClientRect, write=FClientRect};
	__property TCaret* Caret = {read=FCaret, write=FCaret};
	__property TSelection* Selection = {read=FSelection, write=FSelection};
	__property System::Generics::Collections::TList__1<TREElement*>* Content = {read=FContent, write=FContent};
	void __fastcall Clear();
	bool __fastcall Equal(TContext* AContext);
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


typedef void __fastcall (__closure *TEnterWordEvent)(System::TObject* Sender, System::UnicodeString AWord);

typedef void __fastcall (__closure *TCorrectWordEvent)(System::TObject* Sender, System::UnicodeString &AWord, bool &Error);

typedef void __fastcall (__closure *TContextCorrectWordEvent)(System::TObject* Sender, const System::Types::TPoint &MousePos, System::UnicodeString &AWord, TREElement* AElement, bool &Handled);

typedef void __fastcall (__closure *TMergeFieldEvent)(System::TObject* Sender, System::UnicodeString MergeName, System::UnicodeString &MergeValue, bool &DoMerge);

class PASCALIMPLEMENTATION TRichEditorAutoReplace : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	System::Classes::TStringList* FOldValue;
	System::Classes::TStringList* FNewValue;
	bool FDoAutoCorrect;
	bool FCaseSensitive;
	void __fastcall SetDoAutoCorrect(const bool Value);
	void __fastcall SetNewValue(System::Classes::TStringList* const Value);
	void __fastcall SetOldValue(System::Classes::TStringList* const Value);
	
protected:
	__property bool CaseSensitive = {read=FCaseSensitive, write=FCaseSensitive, default=1};
	
public:
	__fastcall TRichEditorAutoReplace();
	__fastcall virtual ~TRichEditorAutoReplace();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	void __fastcall Add(const System::UnicodeString AOldValue, const System::UnicodeString ANewValue);
	
__published:
	__property bool Active = {read=FDoAutoCorrect, write=SetDoAutoCorrect, default=1};
	__property System::Classes::TStringList* OldValue = {read=FOldValue, write=SetOldValue};
	__property System::Classes::TStringList* NewValue = {read=FNewValue, write=SetNewValue};
};


class PASCALIMPLEMENTATION TRichEditorAutoCorrect : public TRichEditorAutoReplace
{
	typedef TRichEditorAutoReplace inherited;
	
__published:
	__property CaseSensitive = {default=1};
public:
	/* TRichEditorAutoReplace.Create */ inline __fastcall TRichEditorAutoCorrect() : TRichEditorAutoReplace() { }
	/* TRichEditorAutoReplace.Destroy */ inline __fastcall virtual ~TRichEditorAutoCorrect() { }
	
};


class PASCALIMPLEMENTATION TWordList : public System::Classes::TStringList
{
	typedef System::Classes::TStringList inherited;
	
public:
	void __fastcall AutoComplete(System::UnicodeString AWord, System::UnicodeString &APrediction);
public:
	/* TStringList.Create */ inline __fastcall TWordList()/* overload */ : System::Classes::TStringList() { }
	/* TStringList.Create */ inline __fastcall TWordList(bool OwnsObjects)/* overload */ : System::Classes::TStringList(OwnsObjects) { }
	/* TStringList.Create */ inline __fastcall TWordList(System::WideChar QuoteChar, System::WideChar Delimiter)/* overload */ : System::Classes::TStringList(QuoteChar, Delimiter) { }
	/* TStringList.Create */ inline __fastcall TWordList(System::WideChar QuoteChar, System::WideChar Delimiter, System::Classes::TStringsOptions Options)/* overload */ : System::Classes::TStringList(QuoteChar, Delimiter, Options) { }
	/* TStringList.Create */ inline __fastcall TWordList(System::Types::TDuplicates Duplicates, bool Sorted, bool CaseSensitive)/* overload */ : System::Classes::TStringList(Duplicates, Sorted, CaseSensitive) { }
	/* TStringList.Destroy */ inline __fastcall virtual ~TWordList() { }
	
};


class PASCALIMPLEMENTATION TRichEditorAutoCompletion : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	bool FEnabled;
	System::Uitypes::TAlphaColor FTextColor;
	TWordList* FWords;
	bool FCaseSensitive;
	int FNumChars;
	void __fastcall SetWords(TWordList* const Value);
	void __fastcall SetCaseSensitive(const bool Value);
	
public:
	__fastcall TRichEditorAutoCompletion();
	__fastcall virtual ~TRichEditorAutoCompletion();
	
__published:
	__property bool CaseSensitive = {read=FCaseSensitive, write=SetCaseSensitive, default=0};
	__property bool Enabled = {read=FEnabled, write=FEnabled, default=0};
	__property int NumChars = {read=FNumChars, write=FNumChars, default=3};
	__property System::Uitypes::TAlphaColor TextColor = {read=FTextColor, write=FTextColor, default=-4144960};
	__property TWordList* Words = {read=FWords, write=SetWords};
};


enum DECLSPEC_DENUM THTMLImageGeneration : unsigned char { igFile, igInline, igID, igNone, igReference };

enum DECLSPEC_DENUM TPageSize : unsigned char { psA4, psA5, psA6, psLetter, psLegal };

typedef System::Generics::Collections::TList__1<Fmx::Tmsfnctypes::TTMSFNCBitmap*>* THTMLImageList;

typedef System::Generics::Collections::TList__1<TStyleElement*>* TStyleElements;

typedef System::Generics::Collections::TList__1<TContext*>* TContexts;

class PASCALIMPLEMENTATION TTabPosition : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	int FIndent;
	void __fastcall SetIndent(const int Value);
	
public:
	__fastcall virtual TTabPosition(System::Classes::TCollection* Collection);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__property int Indent = {read=FIndent, write=SetIndent, nodefault};
public:
	/* TCollectionItem.Destroy */ inline __fastcall virtual ~TTabPosition() { }
	
};


class PASCALIMPLEMENTATION TTabPositions : public System::Classes::TOwnedCollection
{
	typedef System::Classes::TOwnedCollection inherited;
	
public:
	TTabPosition* operator[](int Index) { return this->Items[Index]; }
	
private:
	System::Classes::TNotifyEvent FOnChange;
	HIDESBASE TTabPosition* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTabPosition* const Value);
	System::UnicodeString __fastcall GetAsText();
	void __fastcall SetAsText(const System::UnicodeString Value);
	
protected:
	virtual void __fastcall Update(System::Classes::TCollectionItem* Item);
	
public:
	__fastcall TTabPositions(System::Classes::TComponent* AOwner);
	HIDESBASE TTabPosition* __fastcall Add()/* overload */;
	HIDESBASE TTabPosition* __fastcall Add(int Indent)/* overload */;
	HIDESBASE TTabPosition* __fastcall Insert(int Index);
	__property TTabPosition* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	__property System::UnicodeString AsText = {read=GetAsText, write=SetAsText};
	__property System::Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTabPositions() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCRichEditorBase : public Fmx::Tmsfncscrollcontrol::TTMSFNCRECustomScrollControl
{
	typedef Fmx::Tmsfncscrollcontrol::TTMSFNCRECustomScrollControl inherited;
	
private:
	System::Classes::TAlignment FAlignment;
	TContext* FContext;
	TContext* FMergeContext;
	System::Generics::Collections::TList__1<TContext*>* FUndoRedo;
	int FUndoRedoIndex;
	System::Generics::Collections::TList__1<TREElement*>* FSelectionElements;
	System::Generics::Collections::TList__1<TStyleElement*>* FStyles;
	System::Uitypes::TAlphaColor FURLColor;
	bool FURLUnderline;
	TURLOpen FURLOpen;
	TURLAuto FURLAuto;
	TSelection* FSelection;
	TSelection* FWord;
	TREElement* FSelected;
	TSelection* FPaintSelection;
	TCaret* FCaret;
	TCaret* FDragCaret;
	TCaret* FTempCaret;
	TSelection* FTempSelection;
	System::Uitypes::TAlphaColor FSelectionTextColor;
	System::Uitypes::TAlphaColor FSelectionColor;
	System::Uitypes::TAlphaColor FHighlightColor;
	System::Uitypes::TAlphaColor FHighlightTextColor;
	bool FClip;
	int FPageWidth;
	int FPageHeight;
	TPageMargin* FPageMargin;
	TREElement* FLastElement;
	int FIndent;
	TCaret* FFindPos;
	System::UnicodeString FFindText;
	System::UnicodeString FReplaceText;
	bool FFindMatchCase;
	bool FDoUndo;
	bool FModified;
	int FUpdateCount;
	int FTextWidth;
	bool FClassesRegistered;
	TTextBaseLine FFontBaseline;
	Fmx::Tmsfncricheditorrtf::TRTFEngine* FRTFEngine;
	double FDPIratio;
	bool FHideSelection;
	int FModifyIndex;
	int FLastModifyIndex;
	Fmx::Graphics::TBitmap* FBuffer;
	System::Uitypes::TAlphaColor FFontColor;
	System::Classes::TNotifyEvent FOnChange;
	TEnterWordEvent FOnEnterWord;
	TCorrectWordEvent FOnCorrectWord;
	TCorrectWordEvent FOnAutoCorrectWord;
	TContextCorrectWordEvent FOnContextCorrectWord;
	System::Classes::TNotifyEvent FOnCaretChanged;
	System::Classes::TNotifyEvent FOnSelectionChanged;
	System::Classes::TNotifyEvent FOnToolBarUpdate;
	System::Classes::TNotifyEvent FOnModified;
	TRTEProducer FProducer;
	System::UnicodeString FAuthor;
	System::UnicodeString FComments;
	System::UnicodeString FTags;
	System::UnicodeString FLastModifiedBy;
	bool FLastResult;
	bool FDefaultChanged;
	TREElement* FCurrErr;
	TRichEditorAutoCorrect* FAutoCorrect;
	TRichEditorAutoCompletion* FAutoCompletion;
	TSelectionType FSelectionType;
	THTMLImageGeneration FHTMLImages;
	System::Generics::Collections::TList__1<Fmx::Tmsfnctypes::TTMSFNCBitmap*>* FHTMLImageList;
	int FTabSize;
	bool FWantTab;
	bool FWantReturn;
	int FBulletSpacing;
	System::Uitypes::TAlphaColor FDefaultColor;
	bool FIsMerged;
	TMergeFieldEvent FOnMergeField;
	bool FSpaceAsNbSp;
	bool FAllowFormatShortCuts;
	bool FAlwaysFocus;
	int FLineSpacing;
	TREElement* FLastInsertElement;
	TTabPositions* FTabPositions;
	System::Classes::TNotifyEvent FOnRulerUpdate;
	bool FRTFAnsiEncoding;
	bool FBlockDBUpdate;
	double FZoomFactor;
	void __fastcall SetPageHeight(const int Value);
	void __fastcall SetPageWidth(const int Value);
	void __fastcall SetPageMargin(TPageMargin* const Value);
	TREElement* __fastcall GetElement(int Index);
	int __fastcall GetElementsCount();
	HIDESBASE bool __fastcall GetFocused();
	void __fastcall SetSelLength(const int Value);
	void __fastcall SetSelStart(const int Value);
	void __fastcall SetAutoCorrect(TRichEditorAutoCorrect* const Value);
	System::UnicodeString __fastcall GetPlainTextContent();
	void __fastcall SetPlainTextContent(const System::UnicodeString Value);
	bool __fastcall GetIsMerged();
	void __fastcall SetLineSpacing(const int Value);
	void __fastcall SetTabPositions(TTabPositions* const Value);
	void __fastcall SetAutoCompletion(TRichEditorAutoCompletion* const Value);
	System::UnicodeString __fastcall GetAsText();
	void __fastcall SetAsText(const System::UnicodeString Value);
	
protected:
	bool FCaretUpdate;
	bool FSizeUpdate;
	System::UnicodeString FPrediction;
	virtual TTextSize __fastcall GetTextSize(Fmx::Graphics::TCanvas* ACanvas, TREElement* el, System::UnicodeString AValue);
	virtual int __fastcall GetTextDescent(Fmx::Graphics::TCanvas* ACanvas, TREElement* el);
	virtual System::Types::TSize __fastcall GetBulletSize(TREElement* el, System::UnicodeString AValue);
	virtual System::Types::TSize __fastcall GetPictureSize(TREElement* el);
	virtual int __fastcall GetPictureMargin();
	System::UnicodeString __fastcall GetText(TREElement* el);
	virtual int __fastcall GetCharInWord(TREElement* el, System::UnicodeString s, int X) = 0 ;
	virtual int __fastcall GetCharPos(System::UnicodeString AValue, int CharIndex) = 0 ;
	virtual Fmx::Graphics::TFont* __fastcall GetDefaultFont() = 0 ;
	virtual System::Uitypes::TAlphaColor __fastcall GetDefaultFontColor() = 0 ;
	System::UnicodeString __fastcall GetDefaultFontName();
	int __fastcall GetDefaultFontSize();
	int __fastcall GetDefaultFontCharset();
	virtual int __fastcall GetLineHeight(TREElement* AElement) = 0 ;
	virtual Fmx::Tmsfnctypes::TTMSFNCBitmap* __fastcall GetNamedPicture(TNamedPictureElement* AElement);
	void __fastcall CalcLine(Fmx::Graphics::TCanvas* ACanvas, int X, int Y, int FromElementIndex, int FromWordIndex, int MaxLineWidth, int &LineWidth, int &LineHeight, int &ToElementIndex, int &ToWordIndex, int &Descent, int &BaseLine, int &Indent, System::Classes::TAlignment &Alignment);
	virtual void __fastcall CalcCaret(Fmx::Graphics::TCanvas* ACanvas, TREElement* el, int x, int y, int LineHeight, int LineDescent, int LineBaseLine, System::UnicodeString AValue, int CharIndex, bool DoDraw = true);
	virtual void __fastcall DrawElement(Fmx::Graphics::TCanvas* ACanvas, TREElement* el, int x, int y, int MaxLineWidth, int LineHeight, int LineDescent, int LineBaseLine, System::UnicodeString AValue, int CharIndex, int ExtraChar) = 0 ;
	virtual void __fastcall DrawCaret(Fmx::Graphics::TCanvas* ACanvas) = 0 ;
	virtual void __fastcall DrawDragCaret(Fmx::Graphics::TCanvas* ACanvas) = 0 ;
	virtual void __fastcall DrawBackground(Fmx::Graphics::TCanvas* ACanvas) = 0 ;
	virtual void __fastcall DrawSelection(Fmx::Graphics::TCanvas* ACanvas, const System::Types::TRect &r) = 0 ;
	virtual void __fastcall DrawMargin(Fmx::Graphics::TCanvas* ACanvas) = 0 ;
	virtual bool __fastcall DrawGraphic(Fmx::Graphics::TCanvas* ACanvas, const System::Types::TRect &ARect, System::UnicodeString ID);
	virtual void __fastcall DrawLineBreak(Fmx::Graphics::TCanvas* ACanvas, int x, int y, TREElement* el) = 0 ;
	void __fastcall DrawLine(Fmx::Graphics::TCanvas* ACanvas, int X, int Y, int FromElementIndex, int FromWordIndex, int MaxLineWidth, int LineWidth, int LineHeight, int Descent, int BaseLine, bool DoDraw = true);
	virtual void __fastcall CopyToClipboardStr(System::UnicodeString s) = 0 ;
	virtual void __fastcall CopyPictureToClipboard(Fmx::Tmsfnctypes::TTMSFNCBitmap* APicture) = 0 ;
	virtual bool __fastcall ClipboardHasContent() = 0 ;
	System::UnicodeString __fastcall GetContentAsRTE(bool UseSelection);
	System::UnicodeString __fastcall GetContentAsRTF(bool UseSelection);
	System::UnicodeString __fastcall GetContentAsPlainText(bool UseSelection);
	System::UnicodeString __fastcall GetContentAsHTML(bool UseSelection, System::UnicodeString ImgPath = System::UnicodeString(), bool PlainHTML = false, System::UnicodeString BodyClass = System::UnicodeString(), System::UnicodeString Head = System::UnicodeString(), System::UnicodeString Target = System::UnicodeString());
	System::UnicodeString __fastcall GetRTEContent();
	void __fastcall SetRTEContent(const System::UnicodeString Value);
	void __fastcall SetIsMerged(const bool Value);
	virtual void __fastcall SetZoomFactor(const double Value);
	virtual void __fastcall Refresh() = 0 ;
	virtual void __fastcall Paint();
	__property Fmx::Graphics::TBitmap* Buffer = {read=FBuffer, write=FBuffer};
	virtual void __fastcall BeginPaintBuffer() = 0 ;
	virtual void __fastcall EndPaintBuffer() = 0 ;
	virtual Fmx::Graphics::TBitmap* __fastcall CreateBuffer() = 0 ;
	System::UnicodeString __fastcall TextForHeight();
	System::Types::TSize __fastcall GetSize(bool VertSizeOnly, int FromIndex);
	virtual int __fastcall GetLineWidth();
	int __fastcall GetSelLengthProp();
	int __fastcall GetSelStartProp();
	System::UnicodeString __fastcall SkipWords(const System::UnicodeString Value, int Count, int &CharsSkipped);
	System::UnicodeString __fastcall GetNextWord(System::UnicodeString &Value);
	int __fastcall FirstSeparator(System::UnicodeString Value);
	int __fastcall LastSeparator(System::UnicodeString Value);
	bool __fastcall IsSpace(System::WideChar Ch)/* overload */;
	bool __fastcall IsSpace(System::UnicodeString Ch)/* overload */;
	bool __fastcall IsSeparator(System::WideChar Ch)/* overload */;
	bool __fastcall IsSeparator(System::UnicodeString Ch)/* overload */;
	virtual bool __fastcall IsDelimiter(System::WideChar ch)/* overload */;
	virtual bool __fastcall IsDelimiter(System::UnicodeString ch)/* overload */;
	void __fastcall CaretChanged(System::TObject* Sender);
	virtual void __fastcall MoveToCaret();
	virtual void __fastcall UpdateElementXY();
	void __fastcall SelectionChanged(System::TObject* Sender);
	void __fastcall HandleURLS();
	virtual bool __fastcall IsURL(const System::UnicodeString Value);
	__property TSelection* PaintSelection = {read=FPaintSelection, write=FPaintSelection};
	void __fastcall SelectionToPaintSelection();
	virtual bool __fastcall IsForwardSelection();
	__property bool Clip = {read=FClip, write=FClip, nodefault};
	__property TREElement* Elements[int Index] = {read=GetElement};
	__property int ElementCount = {read=GetElementsCount, nodefault};
	__property TREElement* LastAddedElement = {read=FLastElement, write=FLastElement};
	__property TContext* MergeContext = {read=FMergeContext};
	TREElement* __fastcall AddElement(TREElement* el)/* overload */;
	TREElement* __fastcall AddElement(TREElementClass NewElement)/* overload */;
	TREElement* __fastcall InsertElement(int Index, TREElement* el)/* overload */;
	TREElement* __fastcall InsertElement(int Index, TREElementClass NewElement)/* overload */;
	TLineBreakElement* __fastcall InsertLB(bool bullet, TBulletType AType, int AIndent, bool IsShift, bool IsProg);
	void __fastcall OrderBullets(TREElement* AElement);
	void __fastcall FixBullets(TREElement* AElement);
	TBulletElement* __fastcall NextBullet(TREElement* AElement);
	TBulletElement* __fastcall PreviousBullet(TREElement* AElement);
	TBulletElement* __fastcall InBullet(TREElement* AElement);
	void __fastcall UnBullet(TREElement* AElement);
	TREElement* __fastcall NextDocElement(TREElement* AElement);
	TREElement* __fastcall PreviousDocElement(TREElement* AElement);
	int __fastcall SelectIndexAtEnd(TREElement* AElement);
	int __fastcall DeleteElement(TREElement* AElement);
	int __fastcall ElementIndex(TREElement* AElement);
	int __fastcall LastIndex(TREElement* AElement);
	TREElement* __fastcall NearbyTextElement(TREElement* AElement, int CharIndex);
	virtual void __fastcall TabPositionsChanged(System::TObject* Sender);
	void __fastcall CharCommand(System::Word AChar, TCharCommandState ACommandState);
	__classmethod System::UnicodeString __fastcall GetFontName(Fmx::Graphics::TFont* AFont);
	__classmethod void __fastcall SetFontName(Fmx::Graphics::TFont* AFont, System::UnicodeString AName);
	__classmethod int __fastcall GetFontCharset(Fmx::Graphics::TFont* AFont);
	__classmethod void __fastcall SetFontCharset(Fmx::Graphics::TFont* AFont, int ACharset);
	System::Uitypes::TAlphaColor __fastcall GetFontColor();
	__classmethod int __fastcall GetFontSize(Fmx::Graphics::TFont* AFont);
	__classmethod void __fastcall SetFontSize(Fmx::Graphics::TFont* AFont, int AValue);
	__property bool Focused = {read=GetFocused, nodefault};
	void __fastcall InsertElementAtCaret(TREElement* el);
	TREElement* __fastcall InsertAfterElement(TREElement* AElement, TREElement* NewElement)/* overload */;
	TREElement* __fastcall InsertBeforeElement(TREElement* AElement, TREElement* NewElement)/* overload */;
	TREElement* __fastcall InsertAfterElement(TREElement* AElement, TREElementClass NewElement)/* overload */;
	TREElement* __fastcall InsertBeforeElement(TREElement* AElement, TREElementClass NewElement)/* overload */;
	void __fastcall GetWordsAtCaret(System::UnicodeString &WordBefore, System::UnicodeString &WordsBefore, System::UnicodeString &WordsAfter);
	System::UnicodeString __fastcall GetWordAtCaret(TREElement* AElement, int AIndex, int &CharIndex, bool SpaceOnly, bool Select);
	void __fastcall SetWordAtCaret(TREElement* AElement, int AIndex, System::UnicodeString AValue);
	int __fastcall GetSelectionCount();
	void __fastcall GetSelectionElements(TSelectionType SelectionType = (TSelectionType)(0x0));
	void __fastcall EnsureCaret();
	TTextElement* __fastcall GetCaretTextElement();
	bool __fastcall IsNewBullet(TBulletType &AType, int &AIndex, int &AIndent);
	bool __fastcall CaretInBullet();
	void __fastcall ChangeBulletType(TBulletType AType, System::UnicodeString AFontName);
	void __fastcall DeleteBullets(TBulletType AType);
	TREElement* __fastcall GetFirstBullet(TREElement* AElement);
	TREElement* __fastcall GetLastBullet(TREElement* AElement);
	int __fastcall OffsetX();
	int __fastcall OffsetY();
	int __fastcall TabAtX(int x);
	bool __fastcall FindAndReplace(TREElement* FromElement, int FromPos, System::UnicodeString AText, System::UnicodeString AReplacement, bool MatchCase, bool DoReplace);
	virtual void __fastcall UpdateSize();
	void __fastcall UpdateSizeEx(int FromIndex);
	void __fastcall PushContext();
	void __fastcall PopContext();
	void __fastcall ClearContext();
	void __fastcall CloneContext(TContext* FromContext, TContext* ToContext);
	void __fastcall PushCaret();
	void __fastcall PopCaret();
	void __fastcall PushSelection();
	void __fastcall PopSelection();
	__property TCaret* DragCaret = {read=FDragCaret};
	void __fastcall RegisterClasses();
	void __fastcall DelChar(const bool Back);
	void __fastcall DelCaretElement(const bool Back);
	void __fastcall DoEnterWord();
	void __fastcall DoCorrectWord();
	virtual bool __fastcall IsEmoticon(const System::UnicodeString EmoticonID) = 0 ;
	void __fastcall LoadMemoState(TMemoState* AState, bool VersionOnly = false);
	void __fastcall SaveMemoState(TMemoState* AState);
	__property Fmx::Tmsfncricheditorrtf::TRTFEngine* RTFEngine = {read=FRTFEngine};
	__property double DPIratio = {read=FDPIratio, write=FDPIratio};
	__property bool HideSelection = {read=FHideSelection, write=FHideSelection, nodefault};
	virtual void __fastcall DoChanged();
	virtual void __fastcall DoCaretChanged();
	virtual void __fastcall DoSelectionChanged();
	virtual void __fastcall DoPaintEditor() = 0 ;
	virtual void __fastcall DoMergeField(System::UnicodeString MergeName, System::UnicodeString &MergeValue, bool &DoMerge);
	virtual System::UnicodeString __fastcall GetBulletChar(const TBulletType AType) = 0 ;
	__property TRTEProducer Producer = {read=FProducer, write=FProducer, nodefault};
	TREElement* __fastcall InsertLineBreak(bool IsShift, int AIndent = 0x0, bool Prog = false)/* overload */;
	TLineBreakElement* __fastcall InsertLineBreak(int Index)/* overload */;
	void __fastcall InsertLineBreakAndBullet(TBulletType AType, int AIndent);
	void __fastcall InsertFromStreamInt(System::Classes::TStream* const AStream, double f, bool Clipboard);
	bool __fastcall NextChar(bool SelectionUpdate = true);
	bool __fastcall PrevChar(bool SelectionUpdate = true);
	void __fastcall NextWord(bool SelectionUpdate = true);
	void __fastcall PrevWord(bool SelectionUpdate = true);
	void __fastcall PrevCharSel();
	void __fastcall NextCharSel();
	void __fastcall PrevWordSel();
	void __fastcall NextWordSel();
	void __fastcall UpdateTextSelectionType();
	virtual void __fastcall Backspace();
	TREElement* __fastcall AppendLineBreak();
	virtual void __fastcall InitializePictureSize(TNamedPictureElement* NamedPictureElement) = 0 ;
	virtual bool __fastcall EditCanModify();
	int __fastcall CalcCaretXY();
	__property TRichEditorAutoCorrect* AutoCorrect = {read=FAutoCorrect, write=SetAutoCorrect};
	__property TCorrectWordEvent OnAutoCorrectWord = {read=FOnAutoCorrectWord, write=FOnAutoCorrectWord};
	__property TContextCorrectWordEvent OnContextCorrectWord = {read=FOnContextCorrectWord, write=FOnContextCorrectWord};
	__property TMergeFieldEvent OnMergeField = {read=FOnMergeField, write=FOnMergeField};
	__property System::Classes::TNotifyEvent OnModified = {read=FOnModified, write=FOnModified};
	__property bool IsFocused = {read=GetFocused, nodefault};
	bool __fastcall ElementsSelected();
	virtual System::Types::TPoint __fastcall GetSelectionFromXY();
	virtual System::Types::TPoint __fastcall GetSelectionToXY();
	virtual System::Types::TPoint __fastcall GetCaretXY();
	virtual int __fastcall GetCaretLH();
	virtual int __fastcall GetElementCount();
	__property bool BlockDBUpdate = {read=FBlockDBUpdate, write=FBlockDBUpdate, nodefault};
	__property TSelectionType SelectionType = {read=FSelectionType, write=FSelectionType, nodefault};
	__property bool DefaultChanged = {read=FDefaultChanged, write=FDefaultChanged, nodefault};
	__property int TabSize = {read=FTabSize, write=FTabSize, nodefault};
	__property bool WantTab = {read=FWantTab, write=FWantTab, nodefault};
	__property bool WantReturn = {read=FWantReturn, write=FWantReturn, nodefault};
	__property int BulletSpacing = {read=FBulletSpacing, write=FBulletSpacing, nodefault};
	__property TREElement* LastInsertElement = {read=FLastInsertElement, write=FLastInsertElement};
	__property TRichEditorAutoCompletion* AutoCompletion = {read=FAutoCompletion, write=SetAutoCompletion};
	void __fastcall ClearLastElement();
	void __fastcall ClearSelectionInt(bool RestoreCaret = false);
	
public:
	__fastcall virtual TTMSFNCRichEditorBase(System::Classes::TComponent* AOwner)/* overload */;
	__fastcall virtual ~TTMSFNCRichEditorBase();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	void __fastcall TidyElements();
	virtual bool __fastcall HasSelection();
	bool __fastcall HasTextSelection();
	TREElement* __fastcall FirstElement();
	TREElement* __fastcall LastElement();
	int __fastcall LineCount();
	void __fastcall CaretToSelection();
	void __fastcall SelectionToCaret();
	TREElement* __fastcall NextElement(TREElement* AElement);
	TREElement* __fastcall PreviousElement(TREElement* AElement);
	virtual void __fastcall GetWordAndIndexAtCaret(System::UnicodeString &AValue, int &AIndex, bool SpaceOnly = false);
	virtual void __fastcall UpdateWordAndIndexAtCaret(System::UnicodeString AValue, int AIndex, bool SpaceOnly = false);
	virtual void __fastcall UpdateSelectionPoint(bool LeftSel, int &X, int &Y);
	bool __fastcall XYToElement(int X, int Y, TREElement* &el);
	int __fastcall XYToChar(int X, int Y, TREElement* el, int &CX, int &CY);
	System::UnicodeString __fastcall XYToWord(int X, int Y, TREElement* el)/* overload */;
	System::UnicodeString __fastcall XYToWord(int X, int Y)/* overload */;
	void __fastcall XYToCaret(int X, int Y, bool TestSelection, bool &IsSelected)/* overload */;
	void __fastcall XYToCaret(float X, float Y, bool TestSelection, bool &IsSelected)/* overload */;
	bool __fastcall IsCaretInBulletList(TBulletType &AType, int &AIndex, int &AIndent);
	TTextElement* __fastcall AddText(System::UnicodeString AValue)/* overload */;
	TTextElement* __fastcall AddText(System::UnicodeString AValue, System::Uitypes::TAlphaColor AColor)/* overload */;
	TTextElement* __fastcall AddText(System::UnicodeString AValue, System::Uitypes::TAlphaColor AColor, System::Uitypes::TAlphaColor BkColor)/* overload */;
	TTextElement* __fastcall AddText(System::UnicodeString AValue, Fmx::Graphics::TFont* AFont)/* overload */;
	TTextElement* __fastcall AddText(System::UnicodeString AValue, int AFontSize, System::UnicodeString AFontName, System::Uitypes::TFontStyles AFontStyle)/* overload */;
	TTextElement* __fastcall AddText(System::UnicodeString AValue, System::Classes::TAlignment AAlignment)/* overload */;
	TTextElement* __fastcall AddText(System::UnicodeString AValue, int AFontSize, System::UnicodeString AFontName, System::Uitypes::TFontStyles AFontStyle, System::Classes::TAlignment AAlignment)/* overload */;
	void __fastcall AddHyperlink(System::UnicodeString AValue, System::UnicodeString AURL);
	void __fastcall AddMultiLineText(System::UnicodeString AValue);
	TREElement* __fastcall AddLineBreak();
	void __fastcall AddLine(System::Uitypes::TAlphaColor AColor = (System::Uitypes::TAlphaColor)(0xff000000), int AWidth = 0x1, TPenStyle APenStyle = (TPenStyle)(0x0));
	TTabElement* __fastcall AddTab();
	void __fastcall AddBullet(TBulletType AType = (TBulletType)(0x0));
	TPictureElement* __fastcall AddImage(Fmx::Tmsfnctypes::TTMSFNCBitmap* Picture)/* overload */;
	TPictureElement* __fastcall AddImage(Fmx::Tmsfnctypes::TTMSFNCBitmap* Picture, int AWidth, int AHeight)/* overload */;
	TPictureElement* __fastcall AddImage(System::UnicodeString FileName)/* overload */;
	TPictureElement* __fastcall AddImage(System::UnicodeString FileName, int AWidth, int AHeight)/* overload */;
	void __fastcall AddGraphic(int AWidth, int AHeight, const System::UnicodeString AID);
	void __fastcall AddNamedPicture(int AWidth, int AHeight, const System::UnicodeString AName);
	void __fastcall AddEmoticonPicture(int AWidth, int AHeight, const System::UnicodeString AName);
	TTextElement* __fastcall InsertText(int Index, System::UnicodeString AValue)/* overload */;
	TTextElement* __fastcall InsertText(System::UnicodeString AValue)/* overload */;
	TTextElement* __fastcall InsertMultiLineText(System::UnicodeString AValue);
	TLineBreakElement* __fastcall InsertLineBreak()/* overload */;
	TPictureElement* __fastcall InsertImage(System::UnicodeString FileName, int AWidth = 0x0, int AHeight = 0x0)/* overload */;
	TPictureElement* __fastcall InsertImage(Fmx::Tmsfnctypes::TTMSFNCBitmap* Picture, int AWidth = 0x0, int AHeight = 0x0)/* overload */;
	TPictureElement* __fastcall InsertImage(System::Classes::TStream* AStream)/* overload */;
	TPictureElement* __fastcall InsertImage(System::Classes::TStream* AStream, int AWidth = 0x0, int AHeight = 0x0)/* overload */;
	TGraphicElement* __fastcall InsertGraphic(const System::UnicodeString ID, int AWidth, int AHeight);
	TNamedPictureElement* __fastcall InsertNamedPicture(const System::UnicodeString AName, int AWidth, int AHeight);
	TEmoticonPictureElement* __fastcall InsertEmoticonPicture(const System::UnicodeString AName, int AWidth, int AHeight);
	virtual void __fastcall InsertChar(System::WideChar ch)/* overload */;
	virtual void __fastcall InsertChar(System::UnicodeString value)/* overload */;
	TTabElement* __fastcall InsertTab()/* overload */;
	TTabElement* __fastcall InsertTab(int Index)/* overload */;
	TBulletElement* __fastcall InsertBullet(TBulletType AType = (TBulletType)(0x0));
	void __fastcall DeleteChar();
	void __fastcall DeleteCaretElement();
	virtual void __fastcall DeleteSelection();
	void __fastcall DeleteSelected();
	__property System::UnicodeString Text = {read=GetAsText, write=SetAsText};
	virtual System::UnicodeString __fastcall SelectedText();
	System::UnicodeString __fastcall SelectWordAtXY(int X, int Y);
	virtual System::UnicodeString __fastcall SelectWordAtCaret();
	System::UnicodeString __fastcall SelectURLAtCaret();
	void __fastcall SetFontColor(System::Uitypes::TAlphaColor AColor);
	System::UnicodeString __fastcall WordAtXY(int X, int Y);
	System::UnicodeString __fastcall WordAtCaret();
	bool __fastcall IsEmpty();
	int __fastcall ContentHeight();
	virtual void __fastcall CutToClipboard();
	void __fastcall ResetUndoRedo();
	virtual void __fastcall Merge(System::Classes::TStringList* NamesAndValues)/* overload */;
	void __fastcall UnMerge();
	void __fastcall GetMergeFields(System::Classes::TStringList* AList);
	void __fastcall UnSelect();
	virtual void __fastcall SelectAll();
	void __fastcall ShowTree();
	void __fastcall ShowSelection();
	void __fastcall SaveToText(System::UnicodeString AFileName)/* overload */;
	void __fastcall SaveToText(System::UnicodeString AFileName, System::Sysutils::TEncoding* Encoding)/* overload */;
	TREElement* __fastcall SelectError(TErrorSelection ErrorSelection);
	void __fastcall CorrectSelectedError(System::UnicodeString NewWord);
	void __fastcall CorrectAllErrors(System::UnicodeString ErrorWord, System::UnicodeString NewWord);
	void __fastcall IgnoreSelectedError(System::UnicodeString ErrorWord);
	void __fastcall IgnoreAllErrors(System::UnicodeString ErrorWord);
	int __fastcall ErrorCount();
	void __fastcall SetSelectionAttribute(Fmx::Graphics::TFont* AFont, System::Uitypes::TAlphaColor AColor)/* overload */;
	void __fastcall SetSelectionAttribute(Fmx::Graphics::TFont* AFont, System::Uitypes::TAlphaColor AColor, System::Uitypes::TAlphaColor BkColor)/* overload */;
	void __fastcall SetSelectionAttribute(System::UnicodeString AFontName, int AFontSize, System::Uitypes::TFontStyles AFontStyle, System::Uitypes::TAlphaColor AColor)/* overload */;
	void __fastcall SetSelectionAttribute(System::UnicodeString AFontName, int AFontSize, System::Uitypes::TFontStyles AFontStyle, System::Uitypes::TAlphaColor AColor, System::Uitypes::TAlphaColor BkColor)/* overload */;
	void __fastcall SetSelectionAttribute(System::Classes::TAlignment AAlignment)/* overload */;
	void __fastcall SetSelectionAttribute(bool AError)/* overload */;
	bool __fastcall SetSelectionColor(System::Uitypes::TAlphaColor AColor);
	void __fastcall SetSelectionBkColor(System::Uitypes::TAlphaColor AColor);
	bool __fastcall SetSelectionBold(bool DoBold);
	bool __fastcall SetSelectionItalic(bool DoItalic);
	bool __fastcall SetSelectionUnderline(bool DoUnderline);
	bool __fastcall SetSelectionStrikeOut(bool DoStrikeOut);
	void __fastcall SetSelectionUppercase(bool DoUppercase);
	void __fastcall SetSelectionLowercase(bool DoLowercase);
	void __fastcall SetSelectionNoCase(bool DoNoCase);
	void __fastcall SetSelectionError(bool DoError);
	void __fastcall SetSelectionLine(bool DoLine);
	bool __fastcall SetSelectionSubscript(bool DoSubScript);
	bool __fastcall SetSelectionSuperscript(bool DoSuperScript);
	void __fastcall SetSelectionIndent(int AIndent);
	void __fastcall SetSelectionIndentPos(int AIndentPos);
	void __fastcall SetSelectionRightIndent(int AIndent);
	void __fastcall SetSelectionBullets(TBulletType AType)/* overload */;
	void __fastcall SetSelectionBullets(TBulletType AType, System::UnicodeString AFontName)/* overload */;
	void __fastcall RemoveSelectionBullets();
	void __fastcall SetSelectionHyperlink(System::UnicodeString AURL);
	bool __fastcall SetSelectionFontName(System::UnicodeString AName);
	bool __fastcall SetSelectionFontSize(int ASize);
	bool __fastcall SetSelectionFontCharset(int ACharset);
	void __fastcall SetSelectionHighlight();
	void __fastcall SetSelectionMergeField(System::UnicodeString AMergeName);
	void __fastcall SetSelectionHint(System::UnicodeString AHint);
	bool __fastcall IsSelectionBold();
	bool __fastcall IsSelectionItalic();
	bool __fastcall IsSelectionUnderline();
	bool __fastcall IsSelectionStrikeOut();
	bool __fastcall IsSelectionSubscript();
	bool __fastcall IsSelectionSuperscript();
	bool __fastcall IsSelectionLowercase();
	bool __fastcall IsSelectionUppercase();
	bool __fastcall IsSelectionError();
	bool __fastcall IsSelectionLeft();
	bool __fastcall IsSelectionCenter();
	bool __fastcall IsSelectionRight();
	System::Uitypes::TAlphaColor __fastcall GetSelectionTextColor();
	System::Uitypes::TAlphaColor __fastcall GetSelectionBkColor();
	int __fastcall GetSelectionIndent();
	int __fastcall GetSelectionRightIndent();
	System::UnicodeString __fastcall GetSelectionFontName();
	int __fastcall GetSelectionFontSize();
	TBulletType __fastcall GetSelectionBullet();
	System::UnicodeString __fastcall ContentAsHTML(System::UnicodeString ImgPath = System::UnicodeString());
	System::UnicodeString __fastcall ContentAsPlainHTML(System::UnicodeString ImgPath = System::UnicodeString());
	System::UnicodeString __fastcall SelectionAsHTML();
	System::UnicodeString __fastcall ContentAsRTF();
	__property System::UnicodeString ContentAsRTE = {read=GetRTEContent, write=SetRTEContent};
	__property System::UnicodeString ContentAsPlainText = {read=GetPlainTextContent, write=SetPlainTextContent};
	System::UnicodeString __fastcall SelectionAsRTF();
	void __fastcall InsertAsRTF(System::UnicodeString rtfstring);
	virtual void __fastcall Clear();
	virtual void __fastcall ClearSelection();
	virtual void __fastcall ClearErrors();
	void __fastcall ClearCaret();
	void __fastcall SelectText(int FromChar, int ALength);
	void __fastcall SelectElement(TREElement* AElement);
	void __fastcall SetCaret(TCaretPos CaretPos)/* overload */;
	void __fastcall SetCaret(int CharPos)/* overload */;
	__property TSelection* Selection = {read=FSelection, write=FSelection};
	__property TCaret* Caret = {read=FCaret, write=FCaret};
	__property TREElement* Selected = {read=FSelected, write=FSelected};
	void __fastcall ScrollToCaret();
	void __fastcall ScrollToBegin();
	void __fastcall ScrollToEnd();
	System::UnicodeString __fastcall PlainText();
	void __fastcall ReadMemoState(System::Classes::TStream* AStream);
	void __fastcall LoadFromTextFile(const System::UnicodeString FileName)/* overload */;
	void __fastcall LoadFromTextFile(const System::UnicodeString FileName, System::Sysutils::TEncoding* Encoding)/* overload */;
	void __fastcall LoadFromStream(System::Classes::TStream* const AStream)/* overload */;
	void __fastcall LoadFromStream(System::Classes::TStream* const AStream, bool Internal)/* overload */;
	void __fastcall InsertFromStream(System::Classes::TStream* const AStream, double f);
	void __fastcall LoadFromFile(const System::UnicodeString FileName);
	void __fastcall AppendFile(const System::UnicodeString FileName);
	void __fastcall SaveToFile(const System::UnicodeString FileName);
	void __fastcall SaveToStream(System::Classes::TStream* const AStream);
	void __fastcall SaveSelectionToStream(System::Classes::TStream* const AStream);
	void __fastcall InsertSelectionFromStream(System::Classes::TStream* const AStream);
	bool __fastcall Find(System::UnicodeString AText, bool MatchCase = false);
	bool __fastcall FindFirst(System::UnicodeString AText, bool MatchCase = false);
	bool __fastcall FindNext();
	HIDESBASE bool __fastcall Replace(System::UnicodeString AText, System::UnicodeString AReplacement, bool MatchCase = false);
	bool __fastcall ReplaceAll(System::UnicodeString AText, System::UnicodeString AReplacement, bool MatchCase = false);
	bool __fastcall ReplaceFirst(System::UnicodeString AText, System::UnicodeString AReplacement, bool MatchCase = false);
	bool __fastcall ReplaceNext();
	System::UnicodeString __fastcall CheckFirstWord();
	System::UnicodeString __fastcall CheckNextWord();
	__property TSelection* CheckWord = {read=FWord, write=FWord};
	__property bool IsMerged = {read=GetIsMerged, nodefault};
	int __fastcall GetSelLength(TSelection* ASelection);
	int __fastcall GetSelStart(TSelection* ASelection);
	__property int SelStart = {read=GetSelStartProp, write=SetSelStart, nodefault};
	__property int SelLength = {read=GetSelLengthProp, write=SetSelLength, nodefault};
	bool __fastcall Highlight(System::UnicodeString AText, bool MatchCase = false);
	void __fastcall UnHighlight();
	bool __fastcall CanUnindent();
	bool __fastcall CanUndo();
	bool __fastcall CanRedo();
	void __fastcall Undo();
	void __fastcall Redo();
	void __fastcall GotoLineBegin();
	void __fastcall GotoLineEnd();
	HIDESBASE void __fastcall GotoTextBegin();
	HIDESBASE void __fastcall GotoTextEnd();
	virtual void __fastcall BeginUpdate();
	virtual void __fastcall EndUpdate();
	void __fastcall SetPageSize(TPageSize APageSize);
	__property bool RTFAnsiEncoding = {read=FRTFAnsiEncoding, write=FRTFAnsiEncoding, nodefault};
	__property bool AlwaysFocus = {read=FAlwaysFocus, write=FAlwaysFocus, nodefault};
	__property bool SpaceAsNbsp = {read=FSpaceAsNbSp, write=FSpaceAsNbSp, nodefault};
	__property TContext* Context = {read=FContext};
	__property TPageMargin* PageMargin = {read=FPageMargin, write=SetPageMargin};
	__property bool Modified = {read=FModified, write=FModified, nodefault};
	__property System::Classes::TNotifyEvent OnCaretChanged = {read=FOnCaretChanged, write=FOnCaretChanged};
	__property TCorrectWordEvent OnCorrectWord = {read=FOnCorrectWord, write=FOnCorrectWord};
	__property TEnterWordEvent OnEnterWord = {read=FOnEnterWord, write=FOnEnterWord};
	__property System::Classes::TNotifyEvent OnSelectionChanged = {read=FOnSelectionChanged, write=FOnSelectionChanged};
	__property System::Classes::TNotifyEvent OnToolBarUpdate = {read=FOnToolBarUpdate, write=FOnToolBarUpdate};
	__property System::Classes::TNotifyEvent OnRulerUpdate = {read=FOnRulerUpdate, write=FOnRulerUpdate};
	__property int PageWidth = {read=FPageWidth, write=SetPageWidth, nodefault};
	__property int PageHeight = {read=FPageHeight, write=SetPageHeight, nodefault};
	__property THTMLImageGeneration HTMLImages = {read=FHTMLImages, write=FHTMLImages, nodefault};
	__property System::Generics::Collections::TList__1<Fmx::Tmsfnctypes::TTMSFNCBitmap*>* HTMLImageList = {read=FHTMLImageList};
	__property TTabPositions* TabPositions = {read=FTabPositions, write=SetTabPositions};
	__property double ZoomFactor = {read=FZoomFactor, write=SetZoomFactor};
	
__published:
	__property System::UnicodeString Author = {read=FAuthor, write=FAuthor};
	__property bool AllowFormatShortCuts = {read=FAllowFormatShortCuts, write=FAllowFormatShortCuts, default=1};
	__property System::UnicodeString Comments = {read=FComments, write=FComments};
	__property System::Uitypes::TAlphaColor HighlightColor = {read=FHighlightColor, write=FHighlightColor, default=-256};
	__property System::Uitypes::TAlphaColor HighlightTextColor = {read=FHighlightTextColor, write=FHighlightTextColor, default=-16777216};
	__property System::UnicodeString LastModifiedBy = {read=FLastModifiedBy, write=FLastModifiedBy};
	__property int LineSpacing = {read=FLineSpacing, write=SetLineSpacing, default=0};
	__property System::Uitypes::TAlphaColor SelectionColor = {read=FSelectionColor, write=FSelectionColor, default=-16776961};
	__property System::Uitypes::TAlphaColor SelectionTextColor = {read=FSelectionTextColor, write=FSelectionTextColor, default=-1};
	__property System::UnicodeString Tags = {read=FTags, write=FTags};
	__property TURLAuto URLAuto = {read=FURLAuto, write=FURLAuto, default=0};
	__property System::Uitypes::TAlphaColor URLColor = {read=FURLColor, write=FURLColor, default=-16776961};
	__property bool URLUnderline = {read=FURLUnderline, write=FURLUnderline, default=1};
	__property TURLOpen URLOpen = {read=FURLOpen, write=FURLOpen, default=0};
	__property System::Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
};


class PASCALIMPLEMENTATION TTMSFNCRichEditorAction : public Fmx::Actnlist::TAction
{
	typedef Fmx::Actnlist::TAction inherited;
	
private:
	TTMSFNCRichEditorBase* FControl;
	void __fastcall SetControl(TTMSFNCRichEditorBase* Value);
	
protected:
	virtual TTMSFNCRichEditorBase* __fastcall GetControl(System::TObject* Target);
	virtual void __fastcall Notification(System::Classes::TComponent* AComponent, System::Classes::TOperation Operation);
	
public:
	__fastcall virtual ~TTMSFNCRichEditorAction();
	virtual bool __fastcall HandlesTarget(System::TObject* Target);
	virtual void __fastcall UpdateTarget(System::TObject* Target);
	__property TTMSFNCRichEditorBase* Control = {read=FControl, write=SetControl};
public:
	/* TAction.Create */ inline __fastcall virtual TTMSFNCRichEditorAction(System::Classes::TComponent* AOwner) : Fmx::Actnlist::TAction(AOwner) { }
	
};


class PASCALIMPLEMENTATION TTMSFNCRichEditorClear : public TTMSFNCRichEditorAction
{
	typedef TTMSFNCRichEditorAction inherited;
	
public:
	virtual void __fastcall UpdateTarget(System::TObject* Target);
	virtual void __fastcall ExecuteTarget(System::TObject* Target);
public:
	/* TTMSFNCRichEditorAction.Destroy */ inline __fastcall virtual ~TTMSFNCRichEditorClear() { }
	
public:
	/* TAction.Create */ inline __fastcall virtual TTMSFNCRichEditorClear(System::Classes::TComponent* AOwner) : TTMSFNCRichEditorAction(AOwner) { }
	
};


class PASCALIMPLEMENTATION TTMSFNCRichEditorCut : public TTMSFNCRichEditorAction
{
	typedef TTMSFNCRichEditorAction inherited;
	
public:
	virtual void __fastcall UpdateTarget(System::TObject* Target);
	virtual void __fastcall ExecuteTarget(System::TObject* Target);
public:
	/* TTMSFNCRichEditorAction.Destroy */ inline __fastcall virtual ~TTMSFNCRichEditorCut() { }
	
public:
	/* TAction.Create */ inline __fastcall virtual TTMSFNCRichEditorCut(System::Classes::TComponent* AOwner) : TTMSFNCRichEditorAction(AOwner) { }
	
};


class PASCALIMPLEMENTATION TTMSFNCRichEditorCopy : public TTMSFNCRichEditorAction
{
	typedef TTMSFNCRichEditorAction inherited;
	
public:
	virtual void __fastcall UpdateTarget(System::TObject* Target);
	virtual void __fastcall ExecuteTarget(System::TObject* Target);
public:
	/* TTMSFNCRichEditorAction.Destroy */ inline __fastcall virtual ~TTMSFNCRichEditorCopy() { }
	
public:
	/* TAction.Create */ inline __fastcall virtual TTMSFNCRichEditorCopy(System::Classes::TComponent* AOwner) : TTMSFNCRichEditorAction(AOwner) { }
	
};


class PASCALIMPLEMENTATION TTMSFNCRichEditorPaste : public TTMSFNCRichEditorAction
{
	typedef TTMSFNCRichEditorAction inherited;
	
public:
	virtual void __fastcall UpdateTarget(System::TObject* Target);
	virtual void __fastcall ExecuteTarget(System::TObject* Target);
public:
	/* TTMSFNCRichEditorAction.Destroy */ inline __fastcall virtual ~TTMSFNCRichEditorPaste() { }
	
public:
	/* TAction.Create */ inline __fastcall virtual TTMSFNCRichEditorPaste(System::Classes::TComponent* AOwner) : TTMSFNCRichEditorAction(AOwner) { }
	
};


class PASCALIMPLEMENTATION TTMSFNCRichEditorUndo : public TTMSFNCRichEditorAction
{
	typedef TTMSFNCRichEditorAction inherited;
	
public:
	virtual void __fastcall UpdateTarget(System::TObject* Target);
	virtual void __fastcall ExecuteTarget(System::TObject* Target);
public:
	/* TTMSFNCRichEditorAction.Destroy */ inline __fastcall virtual ~TTMSFNCRichEditorUndo() { }
	
public:
	/* TAction.Create */ inline __fastcall virtual TTMSFNCRichEditorUndo(System::Classes::TComponent* AOwner) : TTMSFNCRichEditorAction(AOwner) { }
	
};


class PASCALIMPLEMENTATION TTMSFNCRichEditorRedo : public TTMSFNCRichEditorAction
{
	typedef TTMSFNCRichEditorAction inherited;
	
public:
	virtual void __fastcall UpdateTarget(System::TObject* Target);
	virtual void __fastcall ExecuteTarget(System::TObject* Target);
public:
	/* TTMSFNCRichEditorAction.Destroy */ inline __fastcall virtual ~TTMSFNCRichEditorRedo() { }
	
public:
	/* TAction.Create */ inline __fastcall virtual TTMSFNCRichEditorRedo(System::Classes::TComponent* AOwner) : TTMSFNCRichEditorAction(AOwner) { }
	
};


class PASCALIMPLEMENTATION TTMSFNCRichEditorSelectAll : public TTMSFNCRichEditorAction
{
	typedef TTMSFNCRichEditorAction inherited;
	
public:
	virtual void __fastcall ExecuteTarget(System::TObject* Target);
	virtual void __fastcall UpdateTarget(System::TObject* Target);
public:
	/* TTMSFNCRichEditorAction.Destroy */ inline __fastcall virtual ~TTMSFNCRichEditorSelectAll() { }
	
public:
	/* TAction.Create */ inline __fastcall virtual TTMSFNCRichEditorSelectAll(System::Classes::TComponent* AOwner) : TTMSFNCRichEditorAction(AOwner) { }
	
};


class PASCALIMPLEMENTATION TTMSFNCRichEditorAlignRight : public TTMSFNCRichEditorAction
{
	typedef TTMSFNCRichEditorAction inherited;
	
public:
	virtual void __fastcall ExecuteTarget(System::TObject* Target);
	virtual void __fastcall UpdateTarget(System::TObject* Target);
public:
	/* TTMSFNCRichEditorAction.Destroy */ inline __fastcall virtual ~TTMSFNCRichEditorAlignRight() { }
	
public:
	/* TAction.Create */ inline __fastcall virtual TTMSFNCRichEditorAlignRight(System::Classes::TComponent* AOwner) : TTMSFNCRichEditorAction(AOwner) { }
	
};


class PASCALIMPLEMENTATION TTMSFNCRichEditorAlignLeft : public TTMSFNCRichEditorAction
{
	typedef TTMSFNCRichEditorAction inherited;
	
public:
	virtual void __fastcall ExecuteTarget(System::TObject* Target);
	virtual void __fastcall UpdateTarget(System::TObject* Target);
public:
	/* TTMSFNCRichEditorAction.Destroy */ inline __fastcall virtual ~TTMSFNCRichEditorAlignLeft() { }
	
public:
	/* TAction.Create */ inline __fastcall virtual TTMSFNCRichEditorAlignLeft(System::Classes::TComponent* AOwner) : TTMSFNCRichEditorAction(AOwner) { }
	
};


class PASCALIMPLEMENTATION TTMSFNCRichEditorAlignCenter : public TTMSFNCRichEditorAction
{
	typedef TTMSFNCRichEditorAction inherited;
	
public:
	virtual void __fastcall ExecuteTarget(System::TObject* Target);
	virtual void __fastcall UpdateTarget(System::TObject* Target);
public:
	/* TTMSFNCRichEditorAction.Destroy */ inline __fastcall virtual ~TTMSFNCRichEditorAlignCenter() { }
	
public:
	/* TAction.Create */ inline __fastcall virtual TTMSFNCRichEditorAlignCenter(System::Classes::TComponent* AOwner) : TTMSFNCRichEditorAction(AOwner) { }
	
};


class PASCALIMPLEMENTATION TTMSFNCRichEditorBold : public TTMSFNCRichEditorAction
{
	typedef TTMSFNCRichEditorAction inherited;
	
public:
	virtual void __fastcall ExecuteTarget(System::TObject* Target);
	virtual void __fastcall UpdateTarget(System::TObject* Target);
public:
	/* TTMSFNCRichEditorAction.Destroy */ inline __fastcall virtual ~TTMSFNCRichEditorBold() { }
	
public:
	/* TAction.Create */ inline __fastcall virtual TTMSFNCRichEditorBold(System::Classes::TComponent* AOwner) : TTMSFNCRichEditorAction(AOwner) { }
	
};


class PASCALIMPLEMENTATION TTMSFNCRichEditorItalic : public TTMSFNCRichEditorAction
{
	typedef TTMSFNCRichEditorAction inherited;
	
public:
	virtual void __fastcall ExecuteTarget(System::TObject* Target);
	virtual void __fastcall UpdateTarget(System::TObject* Target);
public:
	/* TTMSFNCRichEditorAction.Destroy */ inline __fastcall virtual ~TTMSFNCRichEditorItalic() { }
	
public:
	/* TAction.Create */ inline __fastcall virtual TTMSFNCRichEditorItalic(System::Classes::TComponent* AOwner) : TTMSFNCRichEditorAction(AOwner) { }
	
};


class PASCALIMPLEMENTATION TTMSFNCRichEditorUnderline : public TTMSFNCRichEditorAction
{
	typedef TTMSFNCRichEditorAction inherited;
	
public:
	virtual void __fastcall ExecuteTarget(System::TObject* Target);
	virtual void __fastcall UpdateTarget(System::TObject* Target);
public:
	/* TTMSFNCRichEditorAction.Destroy */ inline __fastcall virtual ~TTMSFNCRichEditorUnderline() { }
	
public:
	/* TAction.Create */ inline __fastcall virtual TTMSFNCRichEditorUnderline(System::Classes::TComponent* AOwner) : TTMSFNCRichEditorAction(AOwner) { }
	
};


class PASCALIMPLEMENTATION TTMSFNCRichEditorStrikeOut : public TTMSFNCRichEditorAction
{
	typedef TTMSFNCRichEditorAction inherited;
	
public:
	virtual void __fastcall ExecuteTarget(System::TObject* Target);
	virtual void __fastcall UpdateTarget(System::TObject* Target);
public:
	/* TTMSFNCRichEditorAction.Destroy */ inline __fastcall virtual ~TTMSFNCRichEditorStrikeOut() { }
	
public:
	/* TAction.Create */ inline __fastcall virtual TTMSFNCRichEditorStrikeOut(System::Classes::TComponent* AOwner) : TTMSFNCRichEditorAction(AOwner) { }
	
};


class PASCALIMPLEMENTATION TTMSFNCRichEditorSubscript : public TTMSFNCRichEditorAction
{
	typedef TTMSFNCRichEditorAction inherited;
	
public:
	virtual void __fastcall ExecuteTarget(System::TObject* Target);
	virtual void __fastcall UpdateTarget(System::TObject* Target);
public:
	/* TTMSFNCRichEditorAction.Destroy */ inline __fastcall virtual ~TTMSFNCRichEditorSubscript() { }
	
public:
	/* TAction.Create */ inline __fastcall virtual TTMSFNCRichEditorSubscript(System::Classes::TComponent* AOwner) : TTMSFNCRichEditorAction(AOwner) { }
	
};


class PASCALIMPLEMENTATION TTMSFNCRichEditorSuperscript : public TTMSFNCRichEditorAction
{
	typedef TTMSFNCRichEditorAction inherited;
	
public:
	virtual void __fastcall ExecuteTarget(System::TObject* Target);
	virtual void __fastcall UpdateTarget(System::TObject* Target);
public:
	/* TTMSFNCRichEditorAction.Destroy */ inline __fastcall virtual ~TTMSFNCRichEditorSuperscript() { }
	
public:
	/* TAction.Create */ inline __fastcall virtual TTMSFNCRichEditorSuperscript(System::Classes::TComponent* AOwner) : TTMSFNCRichEditorAction(AOwner) { }
	
};


class PASCALIMPLEMENTATION TTMSFNCRichEditorSmallCaps : public TTMSFNCRichEditorAction
{
	typedef TTMSFNCRichEditorAction inherited;
	
public:
	virtual void __fastcall ExecuteTarget(System::TObject* Target);
	virtual void __fastcall UpdateTarget(System::TObject* Target);
public:
	/* TTMSFNCRichEditorAction.Destroy */ inline __fastcall virtual ~TTMSFNCRichEditorSmallCaps() { }
	
public:
	/* TAction.Create */ inline __fastcall virtual TTMSFNCRichEditorSmallCaps(System::Classes::TComponent* AOwner) : TTMSFNCRichEditorAction(AOwner) { }
	
};


class PASCALIMPLEMENTATION TTMSFNCRichEditorLargeCaps : public TTMSFNCRichEditorAction
{
	typedef TTMSFNCRichEditorAction inherited;
	
public:
	virtual void __fastcall ExecuteTarget(System::TObject* Target);
	virtual void __fastcall UpdateTarget(System::TObject* Target);
public:
	/* TTMSFNCRichEditorAction.Destroy */ inline __fastcall virtual ~TTMSFNCRichEditorLargeCaps() { }
	
public:
	/* TAction.Create */ inline __fastcall virtual TTMSFNCRichEditorLargeCaps(System::Classes::TComponent* AOwner) : TTMSFNCRichEditorAction(AOwner) { }
	
};


class PASCALIMPLEMENTATION TTMSFNCRichEditorTextColor : public TTMSFNCRichEditorAction
{
	typedef TTMSFNCRichEditorAction inherited;
	
public:
	virtual void __fastcall ExecuteTarget(System::TObject* Target);
	virtual void __fastcall UpdateTarget(System::TObject* Target);
public:
	/* TTMSFNCRichEditorAction.Destroy */ inline __fastcall virtual ~TTMSFNCRichEditorTextColor() { }
	
public:
	/* TAction.Create */ inline __fastcall virtual TTMSFNCRichEditorTextColor(System::Classes::TComponent* AOwner) : TTMSFNCRichEditorAction(AOwner) { }
	
};


class PASCALIMPLEMENTATION TTMSFNCRichEditorFontName : public TTMSFNCRichEditorAction
{
	typedef TTMSFNCRichEditorAction inherited;
	
public:
	virtual bool __fastcall HandlesTarget(System::TObject* Target);
	virtual void __fastcall ExecuteTarget(System::TObject* Target);
	virtual void __fastcall UpdateTarget(System::TObject* Target);
public:
	/* TTMSFNCRichEditorAction.Destroy */ inline __fastcall virtual ~TTMSFNCRichEditorFontName() { }
	
public:
	/* TAction.Create */ inline __fastcall virtual TTMSFNCRichEditorFontName(System::Classes::TComponent* AOwner) : TTMSFNCRichEditorAction(AOwner) { }
	
};


class PASCALIMPLEMENTATION TTMSFNCRichEditorFontSize : public TTMSFNCRichEditorAction
{
	typedef TTMSFNCRichEditorAction inherited;
	
public:
	virtual bool __fastcall HandlesTarget(System::TObject* Target);
	virtual void __fastcall ExecuteTarget(System::TObject* Target);
	virtual void __fastcall UpdateTarget(System::TObject* Target);
public:
	/* TTMSFNCRichEditorAction.Destroy */ inline __fastcall virtual ~TTMSFNCRichEditorFontSize() { }
	
public:
	/* TAction.Create */ inline __fastcall virtual TTMSFNCRichEditorFontSize(System::Classes::TComponent* AOwner) : TTMSFNCRichEditorAction(AOwner) { }
	
};


class PASCALIMPLEMENTATION TTMSFNCRichEditorFontSizeUp : public TTMSFNCRichEditorAction
{
	typedef TTMSFNCRichEditorAction inherited;
	
public:
	virtual void __fastcall ExecuteTarget(System::TObject* Target);
	virtual void __fastcall UpdateTarget(System::TObject* Target);
public:
	/* TTMSFNCRichEditorAction.Destroy */ inline __fastcall virtual ~TTMSFNCRichEditorFontSizeUp() { }
	
public:
	/* TAction.Create */ inline __fastcall virtual TTMSFNCRichEditorFontSizeUp(System::Classes::TComponent* AOwner) : TTMSFNCRichEditorAction(AOwner) { }
	
};


class PASCALIMPLEMENTATION TTMSFNCRichEditorFontSizeDown : public TTMSFNCRichEditorAction
{
	typedef TTMSFNCRichEditorAction inherited;
	
public:
	virtual void __fastcall ExecuteTarget(System::TObject* Target);
	virtual void __fastcall UpdateTarget(System::TObject* Target);
public:
	/* TTMSFNCRichEditorAction.Destroy */ inline __fastcall virtual ~TTMSFNCRichEditorFontSizeDown() { }
	
public:
	/* TAction.Create */ inline __fastcall virtual TTMSFNCRichEditorFontSizeDown(System::Classes::TComponent* AOwner) : TTMSFNCRichEditorAction(AOwner) { }
	
};


class PASCALIMPLEMENTATION TTMSFNCRichEditorBulletType : public TTMSFNCRichEditorAction
{
	typedef TTMSFNCRichEditorAction inherited;
	
public:
	virtual bool __fastcall HandlesTarget(System::TObject* Target);
	virtual void __fastcall ExecuteTarget(System::TObject* Target);
	virtual void __fastcall UpdateTarget(System::TObject* Target);
public:
	/* TTMSFNCRichEditorAction.Destroy */ inline __fastcall virtual ~TTMSFNCRichEditorBulletType() { }
	
public:
	/* TAction.Create */ inline __fastcall virtual TTMSFNCRichEditorBulletType(System::Classes::TComponent* AOwner) : TTMSFNCRichEditorAction(AOwner) { }
	
};


class PASCALIMPLEMENTATION TTMSFNCRichEditorNumberedBulletType : public TTMSFNCRichEditorAction
{
	typedef TTMSFNCRichEditorAction inherited;
	
public:
	virtual bool __fastcall HandlesTarget(System::TObject* Target);
	virtual void __fastcall ExecuteTarget(System::TObject* Target);
	virtual void __fastcall UpdateTarget(System::TObject* Target);
public:
	/* TTMSFNCRichEditorAction.Destroy */ inline __fastcall virtual ~TTMSFNCRichEditorNumberedBulletType() { }
	
public:
	/* TAction.Create */ inline __fastcall virtual TTMSFNCRichEditorNumberedBulletType(System::Classes::TComponent* AOwner) : TTMSFNCRichEditorAction(AOwner) { }
	
};


class PASCALIMPLEMENTATION TTMSFNCRichEditorColor : public TTMSFNCRichEditorAction
{
	typedef TTMSFNCRichEditorAction inherited;
	
public:
	virtual void __fastcall ExecuteTarget(System::TObject* Target);
	virtual void __fastcall UpdateTarget(System::TObject* Target);
public:
	/* TTMSFNCRichEditorAction.Destroy */ inline __fastcall virtual ~TTMSFNCRichEditorColor() { }
	
public:
	/* TAction.Create */ inline __fastcall virtual TTMSFNCRichEditorColor(System::Classes::TComponent* AOwner) : TTMSFNCRichEditorAction(AOwner) { }
	
};


class PASCALIMPLEMENTATION TTMSFNCRichEditorIndent : public TTMSFNCRichEditorAction
{
	typedef TTMSFNCRichEditorAction inherited;
	
public:
	virtual void __fastcall ExecuteTarget(System::TObject* Target);
	virtual void __fastcall UpdateTarget(System::TObject* Target);
public:
	/* TTMSFNCRichEditorAction.Destroy */ inline __fastcall virtual ~TTMSFNCRichEditorIndent() { }
	
public:
	/* TAction.Create */ inline __fastcall virtual TTMSFNCRichEditorIndent(System::Classes::TComponent* AOwner) : TTMSFNCRichEditorAction(AOwner) { }
	
};


class PASCALIMPLEMENTATION TTMSFNCRichEditorUnIndent : public TTMSFNCRichEditorAction
{
	typedef TTMSFNCRichEditorAction inherited;
	
public:
	virtual void __fastcall ExecuteTarget(System::TObject* Target);
	virtual void __fastcall UpdateTarget(System::TObject* Target);
public:
	/* TTMSFNCRichEditorAction.Destroy */ inline __fastcall virtual ~TTMSFNCRichEditorUnIndent() { }
	
public:
	/* TAction.Create */ inline __fastcall virtual TTMSFNCRichEditorUnIndent(System::Classes::TComponent* AOwner) : TTMSFNCRichEditorAction(AOwner) { }
	
};


//-- var, const, procedure ---------------------------------------------------
static constexpr unsigned clBlue = unsigned(0xff0000ff);
static constexpr unsigned clWhite = unsigned(0xffffffff);
static constexpr unsigned clBlack = unsigned(0xff000000);
static constexpr unsigned clNone = unsigned(0x0);
static constexpr unsigned clGray = unsigned(0xff808080);
static constexpr unsigned clYellow = unsigned(0xffffff00);
static constexpr unsigned clSilver = unsigned(0xffc0c0c0);
static constexpr unsigned clRed = unsigned(0xffff0000);
static constexpr System::Int8 VK_A = System::Int8(0x41);
static constexpr System::Int8 VK_B = System::Int8(0x42);
static constexpr System::Int8 VK_C = System::Int8(0x43);
static constexpr System::Int8 VK_E = System::Int8(0x45);
static constexpr System::Int8 VK_I = System::Int8(0x49);
static constexpr System::Int8 VK_L = System::Int8(0x4c);
static constexpr System::Int8 VK_R = System::Int8(0x52);
static constexpr System::Int8 VK_U = System::Int8(0x55);
static constexpr System::Int8 VK_V = System::Int8(0x56);
static constexpr System::Int8 VK_X = System::Int8(0x58);
static constexpr System::Int8 VK_Y = System::Int8(0x59);
static constexpr System::Int8 VK_Z = System::Int8(0x5a);
static constexpr System::Int8 KEY_DELETE = System::Int8(0x2e);
static constexpr System::Int8 KEY_INSERT = System::Int8(0x2d);
static constexpr System::Int8 KEY_LEFT = System::Int8(0x25);
static constexpr System::Int8 KEY_RIGHT = System::Int8(0x27);
static constexpr System::Int8 KEY_UP = System::Int8(0x26);
static constexpr System::Int8 KEY_DOWN = System::Int8(0x28);
static constexpr System::Int8 KEY_NEXT = System::Int8(0x22);
static constexpr System::Int8 KEY_PRIOR = System::Int8(0x21);
static constexpr System::Int8 KEY_RETURN = System::Int8(0xd);
static constexpr System::Int8 KEY_TAB = System::Int8(0x9);
static constexpr System::Int8 KEY_HOME = System::Int8(0x24);
static constexpr System::Int8 KEY_END = System::Int8(0x23);
static constexpr System::Int8 KEY_BACK = System::Int8(0x8);
static constexpr System::Int8 KEY_C = System::Int8(0x43);
static constexpr System::Int8 KEY_V = System::Int8(0x56);
static constexpr System::Int8 KEY_X = System::Int8(0x58);
static constexpr System::Int8 KEY_L = System::Int8(0x4c);
static constexpr System::Int8 KEY_E = System::Int8(0x45);
static constexpr System::Int8 KEY_R = System::Int8(0x52);
static constexpr System::Int8 PICTURE_MARGIN = System::Int8(0x4);
static constexpr System::Int8 BULLETINDENT = System::Int8(0x18);
static constexpr System::Int8 BULLETSPACING = System::Int8(0x0);
extern DELPHI_PACKAGE System::UnicodeString __fastcall ColorToHtml(const System::Uitypes::TAlphaColor Value);
extern DELPHI_PACKAGE bool __fastcall EqualFont(Fmx::Graphics::TFont* Font1, Fmx::Graphics::TFont* Font2);
extern DELPHI_PACKAGE System::WideChar __fastcall CharInStr(System::UnicodeString s, int Index);
extern DELPHI_PACKAGE System::UnicodeString __fastcall StrInStr(System::UnicodeString s, int Index);
extern DELPHI_PACKAGE System::Classes::TStream* __fastcall DecodePicture(const System::UnicodeString str);
}	/* namespace Tmsfncricheditorbase */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCRICHEDITORBASE)
using namespace Fmx::Tmsfncricheditorbase;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncricheditorbaseHPP
