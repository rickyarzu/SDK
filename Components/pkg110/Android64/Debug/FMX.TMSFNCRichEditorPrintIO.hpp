// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCRichEditorPrintIO.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncricheditorprintioHPP
#define Fmx_TmsfncricheditorprintioHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <System.Types.hpp>
#include <FMX.TMSFNCRichEditorBase.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.TMSFNCPrintIO.hpp>
#include <FMX.TMSFNCRichEditorIO.hpp>
#include <FMX.TMSFNCGraphicsTypes.hpp>
#include <FMX.TMSFNCGraphics.hpp>
#include <FMX.TMSFNCBitmapContainer.hpp>
#include <System.Generics.Collections.hpp>
#include <System.UITypes.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>
#include <FMX.TMSFNCCustomComponent.hpp>
#include <FMX.Controls.hpp>
#include <FMX.Types.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncricheditorprintio
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCPrintGraphicsLibHTMLLine;
class DELPHICLASS TTMSFNCPrintGraphicsLibHTMLLineBreak;
class DELPHICLASS TTMSFNCPrintGraphicsLibHTMLImage;
class DELPHICLASS TTMSFNCPrintGraphicsLibHTMLLines;
class DELPHICLASS TTMSFNCRichEditorPrintIOOptions;
class DELPHICLASS TTMSFNCCustomRichEditorPrintIO;
class DELPHICLASS TTMSFNCRichEditorPrintIO;
//-- type declarations -------------------------------------------------------
typedef System::DynamicArray<System::Types::TRectF> TTMSFNCPrintGraphicsLibRectArray;

class PASCALIMPLEMENTATION TTMSFNCPrintGraphicsLibHTMLLine : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	System::Uitypes::TAlphaColor FBackgroundColor;
	Fmx::Tmsfnctypes::TTMSFNCBitmap* FBitmap;
	float FBitmapHeight;
	float FBitmapWidth;
	bool FBullet;
	System::UnicodeString FFontName;
	int FFontSize;
	System::Uitypes::TFontStyles FFontStyle;
	bool FHasImage;
	bool FIsLine;
	bool FIsURL;
	bool FLineBreak;
	System::Uitypes::TAlphaColor FLineColor;
	float FOffset;
	bool FSubscript;
	bool FSuperscript;
	System::UnicodeString FText;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign FTextAlign;
	System::Uitypes::TAlphaColor FTextColor;
	System::UnicodeString FURL;
	void __fastcall SetBitmap(Fmx::Tmsfnctypes::TTMSFNCBitmap* const Value);
	
public:
	__fastcall virtual TTMSFNCPrintGraphicsLibHTMLLine();
	__fastcall virtual ~TTMSFNCPrintGraphicsLibHTMLLine();
	void __fastcall Reset();
	__property System::Uitypes::TAlphaColor BackgroundColor = {read=FBackgroundColor, write=FBackgroundColor, nodefault};
	__property Fmx::Tmsfnctypes::TTMSFNCBitmap* Bitmap = {read=FBitmap, write=SetBitmap};
	__property float BitmapHeight = {read=FBitmapHeight, write=FBitmapHeight};
	__property float BitmapWidth = {read=FBitmapWidth, write=FBitmapWidth};
	__property bool Bullet = {read=FBullet, write=FBullet, nodefault};
	__property System::UnicodeString FontName = {read=FFontName, write=FFontName};
	__property int FontSize = {read=FFontSize, write=FFontSize, nodefault};
	__property System::Uitypes::TFontStyles FontStyle = {read=FFontStyle, write=FFontStyle, nodefault};
	__property bool HasImage = {read=FHasImage, write=FHasImage, nodefault};
	__property bool IsLine = {read=FIsLine, write=FIsLine, nodefault};
	__property bool IsUrl = {read=FIsURL, write=FIsURL, nodefault};
	__property bool LineBreak = {read=FLineBreak, write=FLineBreak, nodefault};
	__property System::Uitypes::TAlphaColor LineColor = {read=FLineColor, write=FLineColor, nodefault};
	__property float Offset = {read=FOffset, write=FOffset};
	__property bool Subscript = {read=FSubscript, write=FSubscript, nodefault};
	__property bool Superscript = {read=FSuperscript, write=FSuperscript, nodefault};
	__property System::UnicodeString Text = {read=FText, write=FText};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign TextAlign = {read=FTextAlign, write=FTextAlign, nodefault};
	__property System::Uitypes::TAlphaColor TextColor = {read=FTextColor, write=FTextColor, nodefault};
	__property System::UnicodeString URL = {read=FURL, write=FURL};
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


class PASCALIMPLEMENTATION TTMSFNCPrintGraphicsLibHTMLLineBreak : public TTMSFNCPrintGraphicsLibHTMLLine
{
	typedef TTMSFNCPrintGraphicsLibHTMLLine inherited;
	
public:
	__fastcall virtual TTMSFNCPrintGraphicsLibHTMLLineBreak();
public:
	/* TTMSFNCPrintGraphicsLibHTMLLine.Destroy */ inline __fastcall virtual ~TTMSFNCPrintGraphicsLibHTMLLineBreak() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCPrintGraphicsLibHTMLImage : public TTMSFNCPrintGraphicsLibHTMLLine
{
	typedef TTMSFNCPrintGraphicsLibHTMLLine inherited;
	
public:
	__fastcall virtual TTMSFNCPrintGraphicsLibHTMLImage();
public:
	/* TTMSFNCPrintGraphicsLibHTMLLine.Destroy */ inline __fastcall virtual ~TTMSFNCPrintGraphicsLibHTMLImage() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCPrintGraphicsLibHTMLLines : public System::Generics::Collections::TObjectList__1<TTMSFNCPrintGraphicsLibHTMLLine*>
{
	typedef System::Generics::Collections::TObjectList__1<TTMSFNCPrintGraphicsLibHTMLLine*> inherited;
	
public:
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCRichEditorPrintIO_TTMSFNCPrintGraphicsLibHTMLLine>.Create */ inline __fastcall TTMSFNCPrintGraphicsLibHTMLLines()/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCPrintGraphicsLibHTMLLine*>() { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCRichEditorPrintIO_TTMSFNCPrintGraphicsLibHTMLLine>.Create */ inline __fastcall TTMSFNCPrintGraphicsLibHTMLLines(bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCPrintGraphicsLibHTMLLine*>(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCRichEditorPrintIO_TTMSFNCPrintGraphicsLibHTMLLine>.Create */ inline __fastcall TTMSFNCPrintGraphicsLibHTMLLines(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCPrintGraphicsLibHTMLLine*> > AComparer, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCPrintGraphicsLibHTMLLine*>(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCRichEditorPrintIO_TTMSFNCPrintGraphicsLibHTMLLine>.Create */ inline __fastcall TTMSFNCPrintGraphicsLibHTMLLines(System::Generics::Collections::TEnumerable__1<TTMSFNCPrintGraphicsLibHTMLLine*>* const Collection, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCPrintGraphicsLibHTMLLine*>(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCRichEditorPrintIO_TTMSFNCPrintGraphicsLibHTMLLine>.Destroy */ inline __fastcall virtual ~TTMSFNCPrintGraphicsLibHTMLLines() { }
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCRichEditorPrintIO_TTMSFNCPrintGraphicsLibHTMLLine>.Create */ inline __fastcall TTMSFNCPrintGraphicsLibHTMLLines(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCPrintGraphicsLibHTMLLine*> > AComparer)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCPrintGraphicsLibHTMLLine*>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCRichEditorPrintIO_TTMSFNCPrintGraphicsLibHTMLLine>.Create */ inline __fastcall TTMSFNCPrintGraphicsLibHTMLLines(System::Generics::Collections::TEnumerable__1<TTMSFNCPrintGraphicsLibHTMLLine*>* const Collection)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCPrintGraphicsLibHTMLLine*>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCRichEditorPrintIO_TTMSFNCPrintGraphicsLibHTMLLine>.Create */ inline __fastcall TTMSFNCPrintGraphicsLibHTMLLines(TTMSFNCPrintGraphicsLibHTMLLine* const *Values, const int Values_High)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCPrintGraphicsLibHTMLLine*>(Values, Values_High) { }
	
};


class PASCALIMPLEMENTATION TTMSFNCRichEditorPrintIOOptions : public Fmx::Tmsfncprintio::TTMSFNCPrintIOOptions
{
	typedef Fmx::Tmsfncprintio::TTMSFNCPrintIOOptions inherited;
	
private:
	bool FExportImages;
	void __fastcall SetExportImages(const bool Value);
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual TTMSFNCRichEditorPrintIOOptions();
	
__published:
	__property bool ExportImages = {read=FExportImages, write=SetExportImages, default=1};
public:
	/* TTMSFNCPrintIOOptions.Destroy */ inline __fastcall virtual ~TTMSFNCRichEditorPrintIOOptions() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCustomRichEditorPrintIO : public Fmx::Tmsfncprintio::TTMSFNCCustomPrintIO
{
	typedef Fmx::Tmsfncprintio::TTMSFNCCustomPrintIO inherited;
	
private:
	TTMSFNCRichEditorPrintIOOptions* __fastcall GetOptions();
	Fmx::Tmsfncricheditorbase::TTMSFNCRichEditorBase* __fastcall GetRichEditor();
	HIDESBASE void __fastcall SetOptions(TTMSFNCRichEditorPrintIOOptions* const Value);
	void __fastcall SetRichEditor(Fmx::Tmsfncricheditorbase::TTMSFNCRichEditorBase* const Value);
	
protected:
	virtual NativeUInt __fastcall GetInstance();
	virtual System::UnicodeString __fastcall GetVersion();
	virtual Fmx::Tmsfncprintio::TTMSFNCPrintIOOptions* __fastcall CreateOptions();
	virtual void __fastcall DoPrintExport(Fmx::Tmsfncgraphics::TTMSFNCGraphics* const AGraphics, System::Classes::TComponent* const AExportObject, const System::Types::TRectF &AExportRect)/* overload */;
	virtual void __fastcall DoPrintExportRichEditor(Fmx::Tmsfncgraphics::TTMSFNCGraphics* const AGraphics, Fmx::Tmsfncricheditorbase::TTMSFNCRichEditorBase* const ARichEditor);
	int __fastcall DetectTextOverflow(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, System::UnicodeString AText, TTMSFNCPrintGraphicsLibRectArray ARects, float Padding = 5.000000E+00f, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign AAlignment = (Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign)(0x1))/* overload */;
	int __fastcall DetectTextOverflow(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, System::UnicodeString AText, const System::Types::TRectF &ARect, int AColumns, float APadding = 5.000000E+00f, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign AAlignment = (Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign)(0x1))/* overload */;
	System::Types::TRectF __fastcall DrawHTMLText(Fmx::Tmsfncgraphics::TTMSFNCGraphics* const AGraphics, System::UnicodeString AText, const System::Types::TRectF &ARect, Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* ABitmapContainer = (Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer*)(0x0), bool Paging = false, float AScale = 1.000000E+00f, bool Calculate = false)/* overload */;
	System::UnicodeString __fastcall FindNextWord(System::UnicodeString AText, int &APos);
	int __fastcall GetCharacterCount(Fmx::Tmsfncgraphics::TTMSFNCGraphics* const AGraphics, System::UnicodeString AText, float AWidth);
	TTMSFNCPrintGraphicsLibHTMLLines* __fastcall ParseHTML(System::UnicodeString AHTML, Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* ABitmapContainer = (Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer*)(0x0));
	__property TTMSFNCRichEditorPrintIOOptions* Options = {read=GetOptions, write=SetOptions};
	__property Fmx::Tmsfncricheditorbase::TTMSFNCRichEditorBase* RichEditor = {read=GetRichEditor, write=SetRichEditor};
	__property System::UnicodeString Version = {read=GetVersion};
	
public:
	__fastcall virtual TTMSFNCCustomRichEditorPrintIO(System::Classes::TComponent* AOwner);
public:
	/* TTMSFNCCustomPrintIO.Destroy */ inline __fastcall virtual ~TTMSFNCCustomRichEditorPrintIO() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCRichEditorPrintIO : public TTMSFNCCustomRichEditorPrintIO
{
	typedef TTMSFNCCustomRichEditorPrintIO inherited;
	
__published:
	__property Options;
	__property RichEditor;
	__property Version;
	__property OnAfterDrawContent;
	__property OnAfterDrawFooter;
	__property OnAfterDrawHeader;
	__property OnBeforeDrawContent;
	__property OnBeforeDrawFooter;
	__property OnBeforeDrawHeader;
public:
	/* TTMSFNCCustomRichEditorPrintIO.Create */ inline __fastcall virtual TTMSFNCRichEditorPrintIO(System::Classes::TComponent* AOwner) : TTMSFNCCustomRichEditorPrintIO(AOwner) { }
	
public:
	/* TTMSFNCCustomPrintIO.Destroy */ inline __fastcall virtual ~TTMSFNCRichEditorPrintIO() { }
	
};


//-- var, const, procedure ---------------------------------------------------
#define PRINTLHFACTOR  (1.400000E+00)
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x0);
static constexpr System::Int8 BLD_VER = System::Int8(0x1);
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCRichEditorPrintIORichEditorNotAssigned;
#define Fmx_Tmsfncricheditorprintio_sTMSFNCRichEditorPrintIORichEditorNotAssigned System::LoadResourceString(&Fmx::Tmsfncricheditorprintio::_sTMSFNCRichEditorPrintIORichEditorNotAssigned)
}	/* namespace Tmsfncricheditorprintio */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCRICHEDITORPRINTIO)
using namespace Fmx::Tmsfncricheditorprintio;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncricheditorprintioHPP
