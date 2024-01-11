// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCRichEditor.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncricheditorHPP
#define Fmx_TmsfncricheditorHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <System.Types.hpp>
#include <System.Generics.Collections.hpp>
#include <FMX.TMSFNCRichEditorPic.hpp>
#include <FMX.TMSFNCRichEditorBase.hpp>
#include <FMX.TMSFNCRichEditorRTF.hpp>
#include <FMX.TMSFNCGraphicsTypes.hpp>
#include <FMX.TMSFNCUtils.hpp>
#include <FMX.TMSFNCScrollControl.hpp>
#include <FMX.TMSFNCToolBarRes.hpp>
#include <FMX.Graphics.hpp>
#include <FMX.Controls.hpp>
#include <FMX.Dialogs.hpp>
#include <FMX.Forms.hpp>
#include <FMX.ExtCtrls.hpp>
#include <FMX.Menus.hpp>
#include <FMX.Types.hpp>
#include <System.Math.Vectors.hpp>
#include <System.Actions.hpp>
#include <FMX.ActnList.hpp>
#include <System.UITypes.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.TMSFNCToolBarPopup.hpp>
#include <FMX.TMSFNCPopup.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>
#include <FMX.TMSFNCCustomComponent.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncricheditor
{
//-- forward type declarations -----------------------------------------------
__interface DELPHIINTERFACE ITMSRichEditorToolBar;
typedef System::DelphiInterface<ITMSRichEditorToolBar> _di_ITMSRichEditorToolBar;
class DELPHICLASS TGDIPBitmapContainer;
class DELPHICLASS TGraphicSelection;
class DELPHICLASS TTMSFNCRichEditorPopup;
class DELPHICLASS TTMSFNCRichEditorCustomToolBarPopup;
class DELPHICLASS TTMSFNCRichEditor;
//-- type declarations -------------------------------------------------------
typedef System::Uitypes::TAlphaColor TTMSFNCGraphicsColor;

__interface  INTERFACE_UUID("{91549009-2F25-418F-9BD5-32D16A82C31B}") ITMSRichEditorToolBar  : public System::IInterface 
{
	virtual void __fastcall UpdateToolBar() = 0 ;
};

typedef void __fastcall (__closure *TRichEditorDrawGraphicEvent)(System::TObject* Sender, Fmx::Graphics::TCanvas* ACanvas, const System::Types::TRect &ARect, System::UnicodeString AID);

typedef void __fastcall (__closure *TRichEditorDrawBackgroundEvent)(System::TObject* Sender, Fmx::Graphics::TCanvas* ACanvas, const System::Types::TRect &ARect);

typedef void __fastcall (__closure *THyperlinkClickEvent)(System::TObject* Sender, System::UnicodeString URL);

typedef void __fastcall (__closure *TGetElementHintEvent)(System::TObject* Sender, Fmx::Tmsfncricheditorbase::TREElement* AElement, System::UnicodeString &AHint);

typedef void __fastcall (__closure *TGraphicClickEvent)(System::TObject* Sender, Fmx::Tmsfncricheditorbase::TREElement* AGraphic);

typedef void __fastcall (__closure *TGraphicAllowEvent)(System::TObject* Sender, Fmx::Tmsfncricheditorbase::TREElement* AGraphic, bool &Allow);

typedef void __fastcall (__closure *TWordContextEvent)(System::TObject* Sender, const System::Types::TPoint &MousePos, System::UnicodeString AWord, Fmx::Tmsfncricheditorbase::TREElement* AElement, bool &Handled);

typedef void __fastcall (__closure *TPasteTextEvent)(System::TObject* Sender, System::UnicodeString &AText, bool &Allow);

typedef void __fastcall (__closure *TPasteBitmapEvent)(System::TObject* Sender, Fmx::Tmsfnctypes::TTMSFNCBitmap* ABitmap, bool &Allow);

typedef void __fastcall (__closure *TPasteFormattedTextEvent)(System::TObject* Sender, System::Classes::TStream* AStream);

typedef void __fastcall (__closure *TDropFileEvent)(System::TObject* Sender, System::UnicodeString AFileName, bool &Allow);

typedef void __fastcall (__closure *TDropImageEvent)(System::TObject* Sender, Fmx::Tmsfnctypes::TTMSFNCBitmap* AImage, bool &Allow);

enum DECLSPEC_DENUM TImageResizeCorner : unsigned char { irTopLeft, irTopRight, irBottomLeft, irBottomRight };

typedef void __fastcall (__closure *TImageNotFoundEvent)(System::TObject* Sender, System::UnicodeString ImageName, System::UnicodeString &replaceimage);

typedef void __fastcall (__closure *TAutoCompleteEvent)(System::TObject* Sender, System::UnicodeString WordBefore, System::UnicodeString WordsBefore, System::UnicodeString &ACompletion);

enum DECLSPEC_DENUM TGraphicSelectionStyle : unsigned char { gsRect, gsCircle };

enum DECLSPEC_DENUM TClipboardFormat : unsigned char { cfRTE, cfRTF, cfText, cfHTML, cfBMP, cfFile };

enum DECLSPEC_DENUM TPopupMenuAction : unsigned char { pmClear, pmCut, pmCopy, pmPaste, pmAlignLeft, pmAlignCenter, pmAlignRight, pmNone };

typedef void __fastcall (__closure *TPopupMenuEvent)(System::TObject* Sender, Fmx::Menus::TPopupMenu* APopupMenu);

typedef System::Set<TClipboardFormat, TClipboardFormat::cfRTE, TClipboardFormat::cfFile> TClipboardFormats;

#pragma pack(push,4)
class PASCALIMPLEMENTATION TGDIPBitmapContainer : public System::Classes::TComponent
{
	typedef System::Classes::TComponent inherited;
	
public:
	System::UnicodeString __fastcall GetVersionNumber(System::Int8 AMaj, System::Int8 AMin, System::Int8 ARel, System::Int8 ABld);
public:
	/* TComponent.Create */ inline __fastcall virtual TGDIPBitmapContainer(System::Classes::TComponent* AOwner) : System::Classes::TComponent(AOwner) { }
	/* TComponent.Destroy */ inline __fastcall virtual ~TGDIPBitmapContainer() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TGraphicSelection : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	System::Uitypes::TAlphaColor FBorderColor;
	System::Uitypes::TAlphaColor FColor;
	TGraphicSelectionStyle FStyle;
	
public:
	__fastcall TGraphicSelection();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property TGraphicSelectionStyle Style = {read=FStyle, write=FStyle, default=0};
	__property System::Uitypes::TAlphaColor Color = {read=FColor, write=FColor, default=-1};
	__property System::Uitypes::TAlphaColor BorderColor = {read=FBorderColor, write=FBorderColor, default=-8355712};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TGraphicSelection() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCRichEditorPopup : public System::Classes::TComponent
{
	typedef System::Classes::TComponent inherited;
	
private:
	TTMSFNCRichEditor* FRichEditor;
	bool FVisible;
	
protected:
	__property TTMSFNCRichEditor* RichEditor = {read=FRichEditor, write=FRichEditor};
	
public:
	virtual void __fastcall Show(const System::Types::TPoint &PT);
	virtual void __fastcall Hide();
	virtual bool __fastcall MouseInPopup(const System::Types::TPoint &PT) = 0 ;
	__property bool Visible = {read=FVisible, nodefault};
	System::UnicodeString __fastcall GetVersionNumber(System::Int8 AMaj, System::Int8 AMin, System::Int8 ARel, System::Int8 ABld);
public:
	/* TComponent.Create */ inline __fastcall virtual TTMSFNCRichEditorPopup(System::Classes::TComponent* AOwner) : System::Classes::TComponent(AOwner) { }
	/* TComponent.Destroy */ inline __fastcall virtual ~TTMSFNCRichEditorPopup() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCRichEditorCustomToolBarPopup : public Fmx::Tmsfnctoolbarpopup::TTMSFNCCustomToolBarPopup
{
	typedef Fmx::Tmsfnctoolbarpopup::TTMSFNCCustomToolBarPopup inherited;
	
private:
	TTMSFNCRichEditor* FRichEditor;
	
protected:
	virtual void __fastcall Notification(System::Classes::TComponent* AComponent, System::Classes::TOperation AOperation);
	__property TTMSFNCRichEditor* RichEditor = {read=FRichEditor, write=FRichEditor};
	
public:
	__fastcall virtual TTMSFNCRichEditorCustomToolBarPopup(System::Classes::TComponent* AOwner);
public:
	/* TTMSFNCCustomToolBarPopup.Destroy */ inline __fastcall virtual ~TTMSFNCRichEditorCustomToolBarPopup() { }
	
};

#pragma pack(pop)

typedef System::Generics::Collections::TList__1<_di_ITMSRichEditorToolBar>* TToolBarList;

class PASCALIMPLEMENTATION TTMSFNCRichEditor : public Fmx::Tmsfncricheditorbase::TTMSFNCRichEditorBase
{
	typedef Fmx::Tmsfncricheditorbase::TTMSFNCRichEditorBase inherited;
	
private:
	TTMSFNCRichEditorCustomToolBarPopup* FToolBarPopup;
	int FImeLine;
	int FImeStartIndex;
	System::UnicodeString FImeString;
	System::UnicodeString FBuffer;
	System::Generics::Collections::TList__1<_di_ITMSRichEditorToolBar>* FToolBarList;
	bool FDropTargetAssigned;
	bool FMouseDown;
	System::Types::TPoint FDownPos;
	System::Types::TPoint FDownXY;
	System::Types::TSize FDownSize;
	Fmx::Types::TTimer* FCaretTimer;
	int FSizeTimer;
	bool FDoCaret;
	bool FDoImageResize;
	TImageResizeCorner FImageResizeCorner;
	Fmx::Menus::TPopupMenu* FPopupMenu;
	TRichEditorDrawGraphicEvent FOnDrawGraphic;
	TRichEditorDrawBackgroundEvent FOnDrawBackground;
	THyperlinkClickEvent FOnClickHyperlink;
	TGraphicClickEvent FOnClickGraphic;
	TWordContextEvent FOnContextForWord;
	TGraphicAllowEvent FOnCanSelectGraphic;
	TGraphicAllowEvent FOnCanSizeGraphic;
	TPopupMenuEvent FOnBeforePopupMenu;
	TAutoCompleteEvent FOnAutoComplete;
	Fmx::Tmsfncricheditorbase::TTMSFNCRichEditorClear* FClearAction;
	Fmx::Tmsfncricheditorbase::TTMSFNCRichEditorCut* FCutAction;
	Fmx::Tmsfncricheditorbase::TTMSFNCRichEditorCopy* FCopyAction;
	Fmx::Tmsfncricheditorbase::TTMSFNCRichEditorPaste* FPasteAction;
	Fmx::Tmsfncricheditorbase::TTMSFNCRichEditorAlignLeft* FLeftAction;
	Fmx::Tmsfncricheditorbase::TTMSFNCRichEditorAlignCenter* FCenterAction;
	Fmx::Tmsfncricheditorbase::TTMSFNCRichEditorAlignRight* FRightAction;
	TGraphicSelection* FGraphicSelection;
	System::UnicodeString FLastHint;
	bool FClickOnSel;
	System::Types::TPoint FClickSelXY;
	bool FInternalDD;
	bool FSingleLine;
	TTMSFNCRichEditorPopup* FRichEditorPopup;
	bool FAllowSelect;
	TClipboardFormats FClipboardFormats;
	TPasteTextEvent FOnPasteText;
	TPasteBitmapEvent FOnPasteBitmap;
	TPasteFormattedTextEvent FOnPasteFormattedText;
	TImageNotFoundEvent FOnImageNotFound;
	TDropFileEvent FOnDropFile;
	TDropImageEvent FOnDropImage;
	TGetElementHintEvent FOnGetElementHint;
	Fmx::Graphics::TFont* FCacheFont;
	int FCacheHeight;
	System::Uitypes::TCursor FOrigCursor;
	bool FOrigIBeam;
	void __fastcall SetVersion(const System::UnicodeString Value);
	int __fastcall GetVersionNr();
	void __fastcall SetGraphicSelection(TGraphicSelection* const Value);
	
protected:
	virtual System::UnicodeString __fastcall GetVersion();
	virtual System::UnicodeString __fastcall GetDocURL();
	virtual System::UnicodeString __fastcall GetTipsURL();
	virtual int __fastcall GetTextDescent(Fmx::Graphics::TCanvas* ACanvas, Fmx::Tmsfncricheditorbase::TREElement* el);
	virtual Fmx::Tmsfncricheditorbase::TTextSize __fastcall GetTextSize(Fmx::Graphics::TCanvas* ACanvas, Fmx::Tmsfncricheditorbase::TREElement* el, System::UnicodeString AValue);
	void __fastcall UpdateBulletFont(Fmx::Graphics::TCanvas* ACanvas);
	virtual System::Types::TSize __fastcall GetBulletSize(Fmx::Tmsfncricheditorbase::TREElement* el, System::UnicodeString AValue);
	virtual System::Types::TSize __fastcall GetPictureSize(Fmx::Tmsfncricheditorbase::TREElement* el);
	virtual int __fastcall GetCharInWord(Fmx::Tmsfncricheditorbase::TREElement* el, System::UnicodeString s, int X);
	virtual int __fastcall GetCharPos(System::UnicodeString AValue, int CharIndex);
	virtual Fmx::Graphics::TFont* __fastcall GetDefaultFont();
	virtual System::Uitypes::TAlphaColor __fastcall GetDefaultFontColor();
	virtual int __fastcall GetLineHeight(Fmx::Tmsfncricheditorbase::TREElement* AElement);
	virtual int __fastcall GetClientWidth();
	virtual int __fastcall GetClientHeight();
	virtual System::UnicodeString __fastcall GetBulletChar(const Fmx::Tmsfncricheditorbase::TBulletType AType);
	virtual void __fastcall AddGlyph(Fmx::Tmsfnctypes::TTMSFNCBitmap* ABitmap, float AWidth, float AHeight);
	void __fastcall DrawErrorLine(Fmx::Graphics::TCanvas* ACanvas, int x, int w, int y, System::Uitypes::TAlphaColor AColor);
	virtual void __fastcall DrawElement(Fmx::Graphics::TCanvas* ACanvas, Fmx::Tmsfncricheditorbase::TREElement* el, int x, int y, int MaxLineWidth, int LineHeight, int LineDescent, int LineBaseLine, System::UnicodeString AValue, int CharIndex, int ExtraChar);
	virtual void __fastcall DrawSelection(Fmx::Graphics::TCanvas* ACanvas, const System::Types::TRect &r);
	virtual void __fastcall DrawCaret(Fmx::Graphics::TCanvas* ACanvas);
	virtual void __fastcall DrawDragCaret(Fmx::Graphics::TCanvas* ACanvas);
	virtual void __fastcall DrawBackground(Fmx::Graphics::TCanvas* ACanvas);
	virtual void __fastcall DrawMargin(Fmx::Graphics::TCanvas* ACanvas);
	virtual bool __fastcall DrawGraphic(Fmx::Graphics::TCanvas* ACanvas, const System::Types::TRect &ARect, System::UnicodeString ID);
	virtual void __fastcall DrawLineBreak(Fmx::Graphics::TCanvas* ACanvas, int x, int y, Fmx::Tmsfncricheditorbase::TREElement* el);
	virtual void __fastcall MouseDownN(System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, int X, int Y);
	virtual void __fastcall MouseMoveN(System::Classes::TShiftState Shift, int X, int Y);
	virtual void __fastcall MouseUpN(System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, int X, int Y);
	virtual void __fastcall KeyDownN(System::Word &Key, System::Classes::TShiftState Shift);
	virtual void __fastcall KeyUpN(System::Word &Key, System::Classes::TShiftState Shift);
	virtual void __fastcall KeyPressN(System::WideChar &Key);
	virtual void __fastcall MouseWheel(System::Classes::TShiftState Shift, int WheelDelta, bool &Handled);
	virtual void __fastcall DialogKey(System::Word &Key, System::Classes::TShiftState Shift);
	virtual bool __fastcall DoDropFile(System::UnicodeString Filename);
	virtual bool __fastcall DoDropImage(Fmx::Tmsfnctypes::TTMSFNCBitmap* APicture);
	virtual void __fastcall DoSelectionChanged();
	virtual void __fastcall DoDblClick(int X, int Y);
	virtual void __fastcall DoContextForWord(const System::Types::TPoint &MousePos, System::UnicodeString AWord, Fmx::Tmsfncricheditorbase::TREElement* AElement, bool &Handled);
	virtual void __fastcall DoClickHyperlink(System::UnicodeString URL, System::UnicodeString AValue);
	virtual void __fastcall DoClickGraphic(Fmx::Tmsfncricheditorbase::TREElement* AElement);
	virtual void __fastcall DoCanSelectGraphic(Fmx::Tmsfncricheditorbase::TREElement* AElement, bool &Allow);
	virtual void __fastcall DoCanSizeGraphic(Fmx::Tmsfncricheditorbase::TREElement* AElement, bool &Allow);
	virtual void __fastcall DoPaintEditor();
	virtual void __fastcall DoPasteText(System::UnicodeString &AText, bool &Allow);
	virtual void __fastcall DoPasteBitmap(Fmx::Tmsfnctypes::TTMSFNCBitmap* ABitmap, bool &Allow);
	virtual void __fastcall DoPasteFormattedText(System::Classes::TStream* AStream);
	virtual void __fastcall DoImageNotFound(System::UnicodeString ImageName, System::UnicodeString &replaceImage);
	void __fastcall DoPopupMenu(System::TObject* Sender);
	void __fastcall DoPopupOpen(System::TObject* Sender);
	virtual System::UnicodeString __fastcall GetVersionString();
	void __fastcall CaretTimerProc(System::TObject* Sender);
	virtual bool __fastcall IsEmoticon(const System::UnicodeString EmoticonID);
	void __fastcall ParseHTML(System::UnicodeString HTMLValue, TGDIPBitmapContainer* const Pictures = (TGDIPBitmapContainer*)(0x0));
	virtual void __fastcall CopyToClipboardStr(System::UnicodeString s);
	virtual void __fastcall CopyPictureToClipboard(Fmx::Tmsfnctypes::TTMSFNCBitmap* APicture);
	void __fastcall PasteFromClipboardStream(System::Classes::TMemoryStream* AStream);
	virtual void __fastcall InitializePictureSize(Fmx::Tmsfncricheditorbase::TNamedPictureElement* NamedPictureElement);
	System::UnicodeString __fastcall HintAtXY(int X, int Y);
	virtual void __fastcall Refresh();
	virtual void __fastcall DoEnter();
	virtual void __fastcall DoExit();
	virtual void __fastcall Resize();
	virtual void __fastcall Paint();
	virtual void __fastcall InitContextMenu();
	virtual void __fastcall AutoComplete(System::UnicodeString WordBefore, System::UnicodeString WordsBefore, System::UnicodeString &ACompletion);
	virtual void __fastcall InitStyle();
	virtual void __fastcall ResetToDefaultStyle();
	virtual void __fastcall BeginPaintBuffer();
	virtual void __fastcall EndPaintBuffer();
	virtual Fmx::Graphics::TBitmap* __fastcall CreateBuffer();
	virtual void __fastcall UpdateSelection();
	virtual void __fastcall Loaded();
	virtual void __fastcall Notification(System::Classes::TComponent* AComponent, System::Classes::TOperation AOperation);
	virtual bool __fastcall SetRange(const System::Types::TSize &ARange);
	void __fastcall SetRichEditorPopup(TTMSFNCRichEditorPopup* AValue);
	void __fastcall SetCaptureN();
	virtual void __fastcall SetZoomFactor(const double Value);
	void __fastcall ReleaseCaptureN();
	void __fastcall UpdateN();
	int __fastcall DrawTextN(Fmx::Graphics::TCanvas* ACanvas, System::UnicodeString s, const System::Types::TRect &r, unsigned Flags)/* overload */;
	int __fastcall DrawTextN(Fmx::Graphics::TCanvas* ACanvas, System::UnicodeString s, const System::Types::TRectF &r, unsigned Flags)/* overload */;
	void __fastcall UpdateCursor(System::Uitypes::TCursor ACursor);
	void __fastcall RestoreCursor();
	int __fastcall PaintToInternal(Fmx::Graphics::TCanvas* ACanvas, const System::Types::TRect &ARect, bool Calc);
	void __fastcall SetText(System::UnicodeString AValue);
	HIDESBASE void __fastcall SetSelStart(int AValue);
	HIDESBASE void __fastcall SetSelLength(int AValue);
	int __fastcall GetTextLength();
	
public:
	__fastcall virtual TTMSFNCRichEditor(System::Classes::TComponent* AOwner)/* overload */;
	__fastcall virtual ~TTMSFNCRichEditor();
	void __fastcall Print();
	HIDESBASE void __fastcall PaintTo(Fmx::Graphics::TCanvas* ACanvas, const System::Types::TRect &ARect);
	int __fastcall CalcHeight(Fmx::Graphics::TCanvas* ACanvas, const System::Types::TRect &ARect);
	__property bool SingleLine = {read=FSingleLine, write=FSingleLine, nodefault};
	void __fastcall AddToolBar(_di_ITMSRichEditorToolBar AToolBar);
	void __fastcall RemoveToolBar(_di_ITMSRichEditorToolBar AToolBar);
	void __fastcall CopyFormattedSelectionToClipboard();
	void __fastcall PasteFormattedSelectionFromClipboard();
	void __fastcall CopyRTFToClipboard();
	void __fastcall CopyHTMLToClipboard();
	virtual void __fastcall CutToClipboard();
	virtual void __fastcall CopyToClipboard();
	virtual System::UnicodeString __fastcall PasteFromClipboard();
	virtual bool __fastcall ClipboardHasContent();
	__property TClipboardFormats ClipboardFormats = {read=FClipboardFormats, write=FClipboardFormats, nodefault};
	__property Fmx::Types::TTimer* CaretTimer = {read=FCaretTimer};
	__property TabSize;
	__property BulletSpacing;
	__property Fmx::Menus::TPopupMenu* ContextMenu = {read=FPopupMenu};
	__property TImageNotFoundEvent OnImageNotFound = {read=FOnImageNotFound, write=FOnImageNotFound};
	
__published:
	__property Align = {default=0};
	__property bool AllowSelect = {read=FAllowSelect, write=FAllowSelect, default=1};
	__property Anchors;
	__property AutoCompletion;
	__property AutoCorrect;
	__property BorderStyle = {default=0};
	__property Color = {default=-1};
	__property Enabled;
	__property TGraphicSelection* GraphicSelection = {read=FGraphicSelection, write=SetGraphicSelection};
	__property Font;
	__property ReadOnly = {default=0};
	__property TTMSFNCRichEditorCustomToolBarPopup* ToolBarPopup = {read=FToolBarPopup, write=FToolBarPopup};
	__property ShowHint;
	__property TabOrder = {default=-1};
	__property TabStop = {default=1};
	__property System::UnicodeString Version = {read=GetVersion, write=SetVersion};
	__property Visible = {default=1};
	__property WantTab = {default=0};
	__property WantReturn = {default=1};
	__property TPopupMenuEvent OnBeforePopupMenu = {read=FOnBeforePopupMenu, write=FOnBeforePopupMenu};
	__property TGraphicAllowEvent OnCanSelectGraphic = {read=FOnCanSelectGraphic, write=FOnCanSelectGraphic};
	__property TGraphicAllowEvent OnCanSizeGraphic = {read=FOnCanSizeGraphic, write=FOnCanSizeGraphic};
	__property OnCaretChanged;
	__property TGraphicClickEvent OnClickGraphic = {read=FOnClickGraphic, write=FOnClickGraphic};
	__property THyperlinkClickEvent OnClickHyperlink = {read=FOnClickHyperlink, write=FOnClickHyperlink};
	__property TWordContextEvent OnContextForWord = {read=FOnContextForWord, write=FOnContextForWord};
	__property OnCorrectWord;
	__property OnDblClick;
	__property TRichEditorDrawGraphicEvent OnDrawGraphic = {read=FOnDrawGraphic, write=FOnDrawGraphic};
	__property TRichEditorDrawBackgroundEvent OnDrawBackground = {read=FOnDrawBackground, write=FOnDrawBackground};
	__property TDropFileEvent OnDropFile = {read=FOnDropFile, write=FOnDropFile};
	__property TDropImageEvent OnDropImage = {read=FOnDropImage, write=FOnDropImage};
	__property OnEnter;
	__property OnEnterWord;
	__property OnExit;
	__property TGetElementHintEvent OnGetElementHint = {read=FOnGetElementHint, write=FOnGetElementHint};
	__property OnGesture;
	__property OnMergeField;
	__property OnMouseEnter;
	__property OnMouseLeave;
	__property OnMouseMove;
	__property OnMouseDown;
	__property OnMouseWheel;
	__property OnMouseUp;
	__property OnKeyDown;
	__property OnKeyUp;
	__property TPasteBitmapEvent OnPasteBitmap = {read=FOnPasteBitmap, write=FOnPasteBitmap};
	__property TPasteTextEvent OnPasteText = {read=FOnPasteText, write=FOnPasteText};
	__property TPasteFormattedTextEvent OnPasteFormattedText = {read=FOnPasteFormattedText, write=FOnPasteFormattedText};
	__property OnSelectionChanged;
	__property TAutoCompleteEvent OnAutoComplete = {read=FOnAutoComplete, write=FOnAutoComplete};
private:
	void *__ITMSFNCCustomEditor;	// Fmx::Tmsfnctypes::ITMSFNCCustomEditor 
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {CC0C60B7-75F3-47CE-8A7F-8005A19F12E8}
	operator Fmx::Tmsfnctypes::_di_ITMSFNCCustomEditor()
	{
		Fmx::Tmsfnctypes::_di_ITMSFNCCustomEditor intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator Fmx::Tmsfnctypes::ITMSFNCCustomEditor*(void) { return (Fmx::Tmsfnctypes::ITMSFNCCustomEditor*)&__ITMSFNCCustomEditor; }
	#endif
	
};


//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x8);
static constexpr System::Int8 REL_VER = System::Int8(0x9);
static constexpr System::Int8 BLD_VER = System::Int8(0x7);
#define DATE_VER u"May, 2023"
#define TTMSFNCRichEditorDocURL u"https://download.tmssoftware.com/doc/tmsfncuipack/componen"\
	u"ts/ttmsfncricheditor/"
#define TTMSFNCRichEditorTipsURL u"http://www.tmssoftware.com/site/tmsfncuipack.asp?s=faq"
extern DELPHI_PACKAGE System::ResourceString _SRECopy;
#define Fmx_Tmsfncricheditor_SRECopy System::LoadResourceString(&Fmx::Tmsfncricheditor::_SRECopy)
extern DELPHI_PACKAGE System::ResourceString _SRECut;
#define Fmx_Tmsfncricheditor_SRECut System::LoadResourceString(&Fmx::Tmsfncricheditor::_SRECut)
extern DELPHI_PACKAGE System::ResourceString _SREPaste;
#define Fmx_Tmsfncricheditor_SREPaste System::LoadResourceString(&Fmx::Tmsfncricheditor::_SREPaste)
extern DELPHI_PACKAGE System::ResourceString _SREClear;
#define Fmx_Tmsfncricheditor_SREClear System::LoadResourceString(&Fmx::Tmsfncricheditor::_SREClear)
extern DELPHI_PACKAGE System::ResourceString _SREAlign;
#define Fmx_Tmsfncricheditor_SREAlign System::LoadResourceString(&Fmx::Tmsfncricheditor::_SREAlign)
extern DELPHI_PACKAGE System::ResourceString _SRELeft;
#define Fmx_Tmsfncricheditor_SRELeft System::LoadResourceString(&Fmx::Tmsfncricheditor::_SRELeft)
extern DELPHI_PACKAGE System::ResourceString _SRECenter;
#define Fmx_Tmsfncricheditor_SRECenter System::LoadResourceString(&Fmx::Tmsfncricheditor::_SRECenter)
extern DELPHI_PACKAGE System::ResourceString _SRERight;
#define Fmx_Tmsfncricheditor_SRERight System::LoadResourceString(&Fmx::Tmsfncricheditor::_SRERight)
}	/* namespace Tmsfncricheditor */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCRICHEDITOR)
using namespace Fmx::Tmsfncricheditor;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncricheditorHPP
