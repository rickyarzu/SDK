// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCRichEditorToolBar.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncricheditortoolbarHPP
#define Fmx_TmsfncricheditortoolbarHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <FMX.TMSFNCToolBar.hpp>
#include <FMX.TMSFNCRichEditor.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.TMSFNCGraphicsTypes.hpp>
#include <FMX.TMSFNCCustomControl.hpp>
#include <FMX.Controls.hpp>
#include <FMX.Types.hpp>
#include <System.Generics.Collections.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>
#include <System.Types.hpp>
#include <System.UITypes.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncricheditortoolbar
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCRichEditorToolBar;
class DELPHICLASS TTMSFNCRichEditorFormatToolBar;
class DELPHICLASS TTMSFNCRichEditorEditToolBar;
//-- type declarations -------------------------------------------------------
#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCRichEditorToolBar : public Fmx::Tmsfnctoolbar::TTMSFNCToolBar
{
	typedef Fmx::Tmsfnctoolbar::TTMSFNCToolBar inherited;
	
private:
	static bool FBlockBuildControls;
	Fmx::Tmsfncricheditor::TTMSFNCRichEditor* FRichEditor;
	void __fastcall SetRichEditor(Fmx::Tmsfncricheditor::TTMSFNCRichEditor* const Value);
	
protected:
	virtual System::UnicodeString __fastcall GetDocURL();
	virtual bool __fastcall CanBuildControls();
	virtual System::UnicodeString __fastcall GetVersion();
	HIDESBASE virtual void __fastcall UpdateToolBar() = 0 ;
	virtual void __fastcall Notification(System::Classes::TComponent* AComponent, System::Classes::TOperation AOperation);
	
public:
	/* static */ __property bool BlockBuildControls = {read=FBlockBuildControls, write=FBlockBuildControls, nodefault};
	__fastcall virtual TTMSFNCRichEditorToolBar(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCRichEditorToolBar();
	
__published:
	__property Fmx::Tmsfncricheditor::TTMSFNCRichEditor* RichEditor = {read=FRichEditor, write=SetRichEditor};
private:
	void *__ITMSRichEditorToolBar;	// Fmx::Tmsfncricheditor::ITMSRichEditorToolBar 
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {91549009-2F25-418F-9BD5-32D16A82C31B}
	operator Fmx::Tmsfncricheditor::_di_ITMSRichEditorToolBar()
	{
		Fmx::Tmsfncricheditor::_di_ITMSRichEditorToolBar intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator Fmx::Tmsfncricheditor::ITMSRichEditorToolBar*(void) { return (Fmx::Tmsfncricheditor::ITMSRichEditorToolBar*)&__ITMSRichEditorToolBar; }
	#endif
	
};

#pragma pack(pop)

typedef void __fastcall (__closure *TTMSFNCRichEditorFormatToolBarApplyFontSize)(System::TObject* Sender, int AFontSize);

typedef void __fastcall (__closure *TTMSFNCRichEditorFormatToolBarApplyFontName)(System::TObject* Sender, System::UnicodeString AFontName);

typedef void __fastcall (__closure *TTMSFNCRichEditorFormatToolBarApplyColor)(System::TObject* Sender, System::Uitypes::TAlphaColor AColor);

typedef void __fastcall (__closure *TTMSFNCRichEditorFormatToolBarApplyBullets)(System::TObject* Sender, int AIndex);

enum DECLSPEC_DENUM TTMSFNCRichEditorFormatToolBarOption : unsigned char { ftoFontName, ftoFontSize, ftoBold, ftoItalic, ftoUnderline, ftoStrikeout, ftoAlignLeft, ftoAlignCenter, ftoAlignRight, ftoTextColor, ftoBackgroundColor, ftoImage, ftoHyperlink, ftoBullets, ftoNumbering, ftoUnindent, ftoIndent };

typedef System::Set<TTMSFNCRichEditorFormatToolBarOption, TTMSFNCRichEditorFormatToolBarOption::ftoFontName, TTMSFNCRichEditorFormatToolBarOption::ftoIndent> TTMSFNCRichEditorFormatToolBarOptions;

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCRichEditorFormatToolBar : public TTMSFNCRichEditorToolBar
{
	typedef TTMSFNCRichEditorToolBar inherited;
	
private:
	bool FCreated;
	Fmx::Tmsfnctoolbar::TTMSFNCToolBarSeparator* FSep1;
	Fmx::Tmsfnctoolbar::TTMSFNCToolBarSeparator* FSep2;
	Fmx::Tmsfnctoolbar::TTMSFNCToolBarSeparator* FSep3;
	Fmx::Tmsfnctoolbar::TTMSFNCToolBarSeparator* FSep4;
	Fmx::Tmsfnctoolbar::TTMSFNCToolBarButton* FBold;
	Fmx::Tmsfnctoolbar::TTMSFNCToolBarButton* FItalic;
	Fmx::Tmsfnctoolbar::TTMSFNCToolBarButton* FUnderline;
	Fmx::Tmsfnctoolbar::TTMSFNCToolBarButton* FStrikeout;
	Fmx::Tmsfnctoolbar::TTMSFNCToolBarButton* FAlignLeft;
	Fmx::Tmsfnctoolbar::TTMSFNCToolBarButton* FAlignCenter;
	Fmx::Tmsfnctoolbar::TTMSFNCToolBarButton* FAlignRight;
	Fmx::Tmsfnctoolbar::TTMSFNCToolBarButton* FUnindent;
	Fmx::Tmsfnctoolbar::TTMSFNCToolBarButton* FIndent;
	Fmx::Tmsfnctoolbar::TTMSFNCToolBarButton* FImage;
	Fmx::Tmsfnctoolbar::TTMSFNCToolBarButton* FNumbering;
	Fmx::Tmsfnctoolbar::TTMSFNCToolBarButton* FHyperlink;
	Fmx::Tmsfnctoolbar::TTMSFNCToolBarFontNamePicker* FFontNamePicker;
	Fmx::Tmsfnctoolbar::TTMSFNCToolBarFontSizePicker* FFontSizePicker;
	Fmx::Tmsfnctoolbar::TTMSFNCToolBarColorPicker* FTextColorPicker;
	Fmx::Tmsfnctoolbar::TTMSFNCToolBarColorPicker* FBackgroundColorPicker;
	Fmx::Tmsfnctoolbar::TTMSFNCToolBarBitmapPicker* FBitmapPicker;
	TTMSFNCRichEditorFormatToolBarApplyFontSize FOnApplyFontSize;
	TTMSFNCRichEditorFormatToolBarApplyFontName FOnApplyFontName;
	TTMSFNCRichEditorFormatToolBarApplyColor FOnApplyBackgroundColor;
	TTMSFNCRichEditorFormatToolBarApplyColor FOnApplyTextColor;
	TTMSFNCRichEditorFormatToolBarApplyBullets FOnApplyBullets;
	System::Classes::TNotifyEvent FOnAlignCenter;
	System::Classes::TNotifyEvent FOnAlignLeft;
	System::Classes::TNotifyEvent FOnApplyStrikeout;
	System::Classes::TNotifyEvent FOnApplyBold;
	System::Classes::TNotifyEvent FOnAlignRight;
	System::Classes::TNotifyEvent FOnApplyNumbering;
	System::Classes::TNotifyEvent FOnApplyUnderline;
	System::Classes::TNotifyEvent FOnApplyItalic;
	System::Classes::TNotifyEvent FOnInsertHyperlink;
	System::Classes::TNotifyEvent FOnIndent;
	System::Classes::TNotifyEvent FOnUnindent;
	System::Classes::TNotifyEvent FOnInsertBitmap;
	TTMSFNCRichEditorFormatToolBarOptions FOptions;
	void __fastcall SetOptions(const TTMSFNCRichEditorFormatToolBarOptions Value);
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	virtual void __fastcall UpdateToolBar();
	void __fastcall FontName(System::TObject* Sender);
	void __fastcall FontSize(System::TObject* Sender);
	void __fastcall TextColor(System::TObject* Sender);
	void __fastcall Bullets(System::TObject* Sender);
	void __fastcall BackgroundColor(System::TObject* Sender);
	void __fastcall BitmapSelected(System::TObject* Sender, Fmx::Tmsfnctypes::TTMSFNCBitmap* ABitmap);
	void __fastcall FontNameSelected(System::TObject* Sender, System::UnicodeString AFontName);
	void __fastcall FontSizeSelected(System::TObject* Sender, float AFontSize);
	void __fastcall TextColorSelected(System::TObject* Sender, System::Uitypes::TAlphaColor AColor);
	void __fastcall BackgroundColorSelected(System::TObject* Sender, System::Uitypes::TAlphaColor AColor);
	void __fastcall Bold(System::TObject* Sender);
	void __fastcall Italic(System::TObject* Sender);
	void __fastcall InsertHyperlink(System::TObject* Sender);
	void __fastcall InsertBitmap(System::TObject* Sender);
	void __fastcall Numbering(System::TObject* Sender);
	void __fastcall Indent(System::TObject* Sender);
	void __fastcall Unindent(System::TObject* Sender);
	void __fastcall Underline(System::TObject* Sender);
	void __fastcall Strikeout(System::TObject* Sender);
	void __fastcall AlignLeft(System::TObject* Sender);
	void __fastcall AlignCenter(System::TObject* Sender);
	void __fastcall AlignRight(System::TObject* Sender);
	virtual void __fastcall Loaded();
	virtual void __fastcall UpdateOptions();
	virtual void __fastcall DoApplyFontName(System::UnicodeString AFontName);
	virtual void __fastcall DoApplyFontSize(int AFontSize);
	virtual void __fastcall DoApplyBackgroundColor(System::Uitypes::TAlphaColor AColor);
	virtual void __fastcall DoApplyTextColor(System::Uitypes::TAlphaColor AColor);
	virtual void __fastcall DoApplyBullets(int AIndex);
	virtual void __fastcall DoApplyBold();
	virtual void __fastcall DoApplyItalic();
	virtual void __fastcall DoInsertHyperlink(System::UnicodeString AValue);
	virtual void __fastcall DoInsertBitmap(System::UnicodeString AFileName);
	virtual void __fastcall DoApplyNumbering();
	virtual void __fastcall DoApplyIndent();
	virtual void __fastcall DoApplyUnindent();
	virtual void __fastcall DoApplyUnderline();
	virtual void __fastcall DoApplyStrikeout();
	virtual void __fastcall DoAlignLeft();
	virtual void __fastcall DoAlignCenter();
	virtual void __fastcall DoAlignRight();
	
public:
	__fastcall virtual TTMSFNCRichEditorFormatToolBar(System::Classes::TComponent* AOwner);
	Fmx::Tmsfnctoolbar::TTMSFNCToolBarSeparator* __fastcall FirstSeparator();
	Fmx::Tmsfnctoolbar::TTMSFNCToolBarSeparator* __fastcall SecondSeparator();
	Fmx::Tmsfnctoolbar::TTMSFNCToolBarSeparator* __fastcall ThirdSeparator();
	Fmx::Tmsfnctoolbar::TTMSFNCToolBarSeparator* __fastcall FourthSeparator();
	Fmx::Tmsfnctoolbar::TTMSFNCToolBarFontNamePicker* __fastcall FontNamePicker();
	Fmx::Tmsfnctoolbar::TTMSFNCToolBarFontSizePicker* __fastcall FontSizePicker();
	Fmx::Tmsfnctoolbar::TTMSFNCToolBarColorPicker* __fastcall BackgroundColorPicker();
	Fmx::Tmsfnctoolbar::TTMSFNCToolBarColorPicker* __fastcall TextColorPicker();
	Fmx::Tmsfnctoolbar::TTMSFNCToolBarBitmapPicker* __fastcall BulletsPicker();
	Fmx::Tmsfnctoolbar::TTMSFNCToolBarButton* __fastcall NumberingButton();
	Fmx::Tmsfnctoolbar::TTMSFNCToolBarButton* __fastcall AlignLeftButton();
	Fmx::Tmsfnctoolbar::TTMSFNCToolBarButton* __fastcall AlignCenterButton();
	Fmx::Tmsfnctoolbar::TTMSFNCToolBarButton* __fastcall AlignRightButton();
	Fmx::Tmsfnctoolbar::TTMSFNCToolBarButton* __fastcall StrikeoutButton();
	Fmx::Tmsfnctoolbar::TTMSFNCToolBarButton* __fastcall BoldButton();
	Fmx::Tmsfnctoolbar::TTMSFNCToolBarButton* __fastcall ItalicButton();
	Fmx::Tmsfnctoolbar::TTMSFNCToolBarButton* __fastcall UnderlineButton();
	Fmx::Tmsfnctoolbar::TTMSFNCToolBarButton* __fastcall IndentButton();
	Fmx::Tmsfnctoolbar::TTMSFNCToolBarButton* __fastcall UnindentButton();
	Fmx::Tmsfnctoolbar::TTMSFNCToolBarButton* __fastcall ImageButton();
	Fmx::Tmsfnctoolbar::TTMSFNCToolBarButton* __fastcall HyperlinkButton();
	
__published:
	__property System::Classes::TNotifyEvent OnApplyBold = {read=FOnApplyBold, write=FOnApplyBold};
	__property System::Classes::TNotifyEvent OnApplyItalic = {read=FOnApplyItalic, write=FOnApplyItalic};
	__property System::Classes::TNotifyEvent OnApplyNumbering = {read=FOnApplyNumbering, write=FOnApplyNumbering};
	__property System::Classes::TNotifyEvent OnApplyUnderline = {read=FOnApplyUnderline, write=FOnApplyUnderline};
	__property System::Classes::TNotifyEvent OnApplyStrikeout = {read=FOnApplyStrikeout, write=FOnApplyStrikeout};
	__property System::Classes::TNotifyEvent OnAlignLeft = {read=FOnAlignLeft, write=FOnAlignLeft};
	__property System::Classes::TNotifyEvent OnAlignCenter = {read=FOnAlignCenter, write=FOnAlignCenter};
	__property System::Classes::TNotifyEvent OnAlignRight = {read=FOnAlignRight, write=FOnAlignRight};
	__property System::Classes::TNotifyEvent OnApplyIndent = {read=FOnIndent, write=FOnIndent};
	__property System::Classes::TNotifyEvent OnApplyUnindent = {read=FOnUnindent, write=FOnUnindent};
	__property System::Classes::TNotifyEvent OnInsertHyperlink = {read=FOnInsertHyperlink, write=FOnInsertHyperlink};
	__property System::Classes::TNotifyEvent OnInsertBitmap = {read=FOnInsertBitmap, write=FOnInsertBitmap};
	__property TTMSFNCRichEditorFormatToolBarApplyBullets OnApplyBullets = {read=FOnApplyBullets, write=FOnApplyBullets};
	__property TTMSFNCRichEditorFormatToolBarApplyFontName OnApplyFontName = {read=FOnApplyFontName, write=FOnApplyFontName};
	__property TTMSFNCRichEditorFormatToolBarApplyFontSize OnApplyFontSize = {read=FOnApplyFontSize, write=FOnApplyFontSize};
	__property TTMSFNCRichEditorFormatToolBarApplyColor OnApplyBackgroundColor = {read=FOnApplyBackgroundColor, write=FOnApplyBackgroundColor};
	__property TTMSFNCRichEditorFormatToolBarApplyColor OnApplyTextColor = {read=FOnApplyTextColor, write=FOnApplyTextColor};
	__property TTMSFNCRichEditorFormatToolBarOptions Options = {read=FOptions, write=SetOptions, default=131071};
public:
	/* TTMSFNCRichEditorToolBar.Destroy */ inline __fastcall virtual ~TTMSFNCRichEditorFormatToolBar() { }
	
};

#pragma pack(pop)

enum DECLSPEC_DENUM TTMSFNCRichEditorEditToolBarOption : unsigned char { etoOpenFile, etoSaveFile, etoCut, etoCopy, etoPaste, etoUndo, etoRedo };

typedef System::Set<TTMSFNCRichEditorEditToolBarOption, TTMSFNCRichEditorEditToolBarOption::etoOpenFile, TTMSFNCRichEditorEditToolBarOption::etoRedo> TTMSFNCRichEditorEditToolBarOptions;

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCRichEditorEditToolBar : public TTMSFNCRichEditorToolBar
{
	typedef TTMSFNCRichEditorToolBar inherited;
	
private:
	bool FCreated;
	System::Classes::TNotifyEvent FOnSaveFile;
	System::Classes::TNotifyEvent FOnOpenFile;
	System::Classes::TNotifyEvent FOnCut;
	System::Classes::TNotifyEvent FOnPaste;
	System::Classes::TNotifyEvent FOnUndo;
	System::Classes::TNotifyEvent FOnRedo;
	System::Classes::TNotifyEvent FOnCopy;
	TTMSFNCRichEditorEditToolBarOptions FOptions;
	Fmx::Tmsfnctoolbar::TTMSFNCToolBarSeparator* FSep1;
	Fmx::Tmsfnctoolbar::TTMSFNCToolBarSeparator* FSep2;
	Fmx::Tmsfnctoolbar::TTMSFNCToolBarButton* FOpen;
	Fmx::Tmsfnctoolbar::TTMSFNCToolBarButton* FSave;
	Fmx::Tmsfnctoolbar::TTMSFNCToolBarButton* FCut;
	Fmx::Tmsfnctoolbar::TTMSFNCToolBarButton* FCopy;
	Fmx::Tmsfnctoolbar::TTMSFNCToolBarButton* FPaste;
	Fmx::Tmsfnctoolbar::TTMSFNCToolBarButton* FUndo;
	Fmx::Tmsfnctoolbar::TTMSFNCToolBarButton* FRedo;
	void __fastcall SetOptions(const TTMSFNCRichEditorEditToolBarOptions Value);
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	virtual void __fastcall UpdateToolBar();
	void __fastcall OpenFile(System::TObject* Sender);
	void __fastcall SaveFile(System::TObject* Sender);
	void __fastcall Cut(System::TObject* Sender);
	void __fastcall Paste(System::TObject* Sender);
	void __fastcall Undo(System::TObject* Sender);
	void __fastcall Redo(System::TObject* Sender);
	void __fastcall Copy(System::TObject* Sender);
	virtual void __fastcall UpdateOptions();
	virtual void __fastcall DoOpenFile(System::UnicodeString AFileName);
	virtual void __fastcall DoSaveFile(System::UnicodeString AFileName);
	virtual void __fastcall DoCut();
	virtual void __fastcall DoPaste();
	virtual void __fastcall DoUndo();
	virtual void __fastcall DoRedo();
	virtual void __fastcall DoCopy();
	void __fastcall SaveToHTML(System::UnicodeString AFileName);
	void __fastcall SaveToRTF(System::UnicodeString AFileName);
	virtual void __fastcall Loaded();
	
public:
	__fastcall virtual TTMSFNCRichEditorEditToolBar(System::Classes::TComponent* AOwner);
	Fmx::Tmsfnctoolbar::TTMSFNCToolBarSeparator* __fastcall FirstSeparator();
	Fmx::Tmsfnctoolbar::TTMSFNCToolBarSeparator* __fastcall SecondSeparator();
	Fmx::Tmsfnctoolbar::TTMSFNCToolBarButton* __fastcall OpenFileButton();
	Fmx::Tmsfnctoolbar::TTMSFNCToolBarButton* __fastcall SaveFileButton();
	Fmx::Tmsfnctoolbar::TTMSFNCToolBarButton* __fastcall CutButton();
	Fmx::Tmsfnctoolbar::TTMSFNCToolBarButton* __fastcall CopyButton();
	Fmx::Tmsfnctoolbar::TTMSFNCToolBarButton* __fastcall PasteButton();
	Fmx::Tmsfnctoolbar::TTMSFNCToolBarButton* __fastcall RedoButton();
	Fmx::Tmsfnctoolbar::TTMSFNCToolBarButton* __fastcall UndoButton();
	
__published:
	__property System::Classes::TNotifyEvent OnOpenFile = {read=FOnOpenFile, write=FOnOpenFile};
	__property System::Classes::TNotifyEvent OnSaveFile = {read=FOnSaveFile, write=FOnSaveFile};
	__property System::Classes::TNotifyEvent OnCut = {read=FOnCut, write=FOnCut};
	__property System::Classes::TNotifyEvent OnCopy = {read=FOnCopy, write=FOnCopy};
	__property System::Classes::TNotifyEvent OnPaste = {read=FOnPaste, write=FOnPaste};
	__property System::Classes::TNotifyEvent OnRedo = {read=FOnRedo, write=FOnRedo};
	__property System::Classes::TNotifyEvent OnUndo = {read=FOnUndo, write=FOnUndo};
	__property TTMSFNCRichEditorEditToolBarOptions Options = {read=FOptions, write=SetOptions, default=127};
public:
	/* TTMSFNCRichEditorToolBar.Destroy */ inline __fastcall virtual ~TTMSFNCRichEditorEditToolBar() { }
	
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x0);
static constexpr System::Int8 BLD_VER = System::Int8(0x1);
#define AllFormatOptions (System::Set<TTMSFNCRichEditorFormatToolBarOption, TTMSFNCRichEditorFormatToolBarOption::ftoFontName, TTMSFNCRichEditorFormatToolBarOption::ftoIndent>() << TTMSFNCRichEditorFormatToolBarOption::ftoFontName << TTMSFNCRichEditorFormatToolBarOption::ftoFontSize << TTMSFNCRichEditorFormatToolBarOption::ftoBold << TTMSFNCRichEditorFormatToolBarOption::ftoItalic << TTMSFNCRichEditorFormatToolBarOption::ftoUnderline << TTMSFNCRichEditorFormatToolBarOption::ftoStrikeout << TTMSFNCRichEditorFormatToolBarOption::ftoAlignLeft << TTMSFNCRichEditorFormatToolBarOption::ftoAlignCenter << TTMSFNCRichEditorFormatToolBarOption::ftoAlignRight << TTMSFNCRichEditorFormatToolBarOption::ftoTextColor << TTMSFNCRichEditorFormatToolBarOption::ftoBackgroundColor \
	<< TTMSFNCRichEditorFormatToolBarOption::ftoImage << TTMSFNCRichEditorFormatToolBarOption::ftoHyperlink << TTMSFNCRichEditorFormatToolBarOption::ftoBullets << TTMSFNCRichEditorFormatToolBarOption::ftoNumbering << TTMSFNCRichEditorFormatToolBarOption::ftoUnindent << TTMSFNCRichEditorFormatToolBarOption::ftoIndent )
#define AllEditOptions (System::Set<TTMSFNCRichEditorEditToolBarOption, TTMSFNCRichEditorEditToolBarOption::etoOpenFile, TTMSFNCRichEditorEditToolBarOption::etoRedo>() << TTMSFNCRichEditorEditToolBarOption::etoOpenFile << TTMSFNCRichEditorEditToolBarOption::etoSaveFile << TTMSFNCRichEditorEditToolBarOption::etoCut << TTMSFNCRichEditorEditToolBarOption::etoCopy << TTMSFNCRichEditorEditToolBarOption::etoPaste << TTMSFNCRichEditorEditToolBarOption::etoUndo << TTMSFNCRichEditorEditToolBarOption::etoRedo )
}	/* namespace Tmsfncricheditortoolbar */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCRICHEDITORTOOLBAR)
using namespace Fmx::Tmsfncricheditortoolbar;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncricheditortoolbarHPP
