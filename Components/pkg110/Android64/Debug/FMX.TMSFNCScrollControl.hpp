// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCScrollControl.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncscrollcontrolHPP
#define Fmx_TmsfncscrollcontrolHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <System.Generics.Collections.hpp>
#include <System.SysUtils.hpp>
#include <System.TypInfo.hpp>
#include <System.UITypes.hpp>
#include <System.Types.hpp>
#include <System.UIConsts.hpp>
#include <FMX.Graphics.hpp>
#include <FMX.Types.hpp>
#include <FMX.Controls.hpp>
#include <FMX.StdCtrls.hpp>
#include <FMX.Text.hpp>
#include <FMX.Objects.hpp>
#include <FMX.MagnifierGlass.hpp>
#include <FMX.TMSFNCGraphics.hpp>
#include <FMX.TMSFNCStyles.hpp>
#include <FMX.TMSFNCGraphicsTypes.hpp>
#include <FMX.Styles.hpp>
#include <System.Messaging.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.TMSFNCPersistence.hpp>
#include <FMX.KeyMapping.hpp>
#include <Androidapi.JNI.Widget.hpp>
#include <Androidapi.JNI.App.hpp>
#include <Androidapi.JNIBridge.hpp>
#include <Androidapi.JNI.GraphicsContentViewText.hpp>
#include <Androidapi.JNI.JavaTypes.hpp>
#include <Androidapi.Input.hpp>
#include <Androidapi.NativeActivity.hpp>
#include <Androidapi.AppGlue.hpp>
#include <Androidapi.JNI.Embarcadero.hpp>
#include <Androidapi.Helpers.hpp>
#include <FMX.ZOrder.Android.hpp>
#include <System.Generics.Defaults.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncscrollcontrol
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TCustomControl;
class DELPHICLASS TOpenCaret;
class DELPHICLASS TMargins;
class DELPHICLASS TTMSFNCRECustomScrollControlFocusChangeListener;
class DELPHICLASS TTMSFNCRECustomScrollControlKeyListener;
class DELPHICLASS TTMSFNCRECustomScrollControl;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TCustomControl : public Fmx::Controls::TStyledControl
{
	typedef Fmx::Controls::TStyledControl inherited;
	
public:
	/* TStyledControl.Create */ inline __fastcall virtual TCustomControl(System::Classes::TComponent* AOwner)/* overload */ : Fmx::Controls::TStyledControl(AOwner) { }
	/* TStyledControl.Destroy */ inline __fastcall virtual ~TCustomControl() { }
	
};


enum DECLSPEC_DENUM TTMSFMXBorderStyle : unsigned char { bsSingle, bsNone };

class PASCALIMPLEMENTATION TOpenCaret : public Fmx::Controls::TCaret
{
	typedef Fmx::Controls::TCaret inherited;
	
public:
	/* TCustomCaret.Create */ inline __fastcall virtual TOpenCaret(Fmx::Types::TFmxObject* const AOwner) : Fmx::Controls::TCaret(AOwner) { }
	/* TCustomCaret.Destroy */ inline __fastcall virtual ~TOpenCaret() { }
	
};


class PASCALIMPLEMENTATION TMargins : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	int FRight;
	int FBottom;
	int FTop;
	int FLeft;
	System::Classes::TNotifyEvent FOnChange;
	void __fastcall SetBottom(const int Value);
	void __fastcall SetLeft(const int Value);
	void __fastcall SetRight(const int Value);
	void __fastcall SetTop(const int Value);
	bool __fastcall IsLeftStored();
	bool __fastcall IsTopStored();
	bool __fastcall IsRightStored();
	bool __fastcall IsBottomStored();
	
protected:
	void __fastcall Changed();
	
public:
	__fastcall TMargins(System::Classes::TComponent* AOwner);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property int Left = {read=FLeft, write=SetLeft, stored=IsLeftStored, nodefault};
	__property int Top = {read=FTop, write=SetTop, stored=IsTopStored, nodefault};
	__property int Right = {read=FRight, write=SetRight, stored=IsRightStored, nodefault};
	__property int Bottom = {read=FBottom, write=SetBottom, stored=IsBottomStored, nodefault};
	__property System::Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TMargins() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCRECustomScrollControlFocusChangeListener : public Androidapi::Jnibridge::TJavaLocal
{
	typedef Androidapi::Jnibridge::TJavaLocal inherited;
	
private:
	TTMSFNCRECustomScrollControl* FControl;
	
public:
	void __cdecl onFocusChange(Androidapi::Jni::Graphicscontentviewtext::_di_JView v, bool hasFocus);
public:
	/* TJavaLocal.Create */ inline __fastcall TTMSFNCRECustomScrollControlFocusChangeListener() : Androidapi::Jnibridge::TJavaLocal() { }
	/* TJavaLocal.Destroy */ inline __fastcall virtual ~TTMSFNCRECustomScrollControlFocusChangeListener() { }
	
private:
	void *__JView_OnFocusChangeListener;	// Androidapi::Jni::Graphicscontentviewtext::JView_OnFocusChangeListener 
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {5FFFED8A-78CC-4E8C-BD41-8F7DBC6DF4AC}
	operator Androidapi::Jni::Graphicscontentviewtext::_di_JView_OnFocusChangeListener()
	{
		Androidapi::Jni::Graphicscontentviewtext::_di_JView_OnFocusChangeListener intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator Androidapi::Jni::Graphicscontentviewtext::JView_OnFocusChangeListener*(void) { return (Androidapi::Jni::Graphicscontentviewtext::JView_OnFocusChangeListener*)&__JView_OnFocusChangeListener; }
	#endif
	
};


class PASCALIMPLEMENTATION TTMSFNCRECustomScrollControlKeyListener : public Androidapi::Jnibridge::TJavaLocal
{
	typedef Androidapi::Jnibridge::TJavaLocal inherited;
	
private:
	TTMSFNCRECustomScrollControl* FControl;
	
public:
	bool __cdecl onKey(Androidapi::Jni::Graphicscontentviewtext::_di_JView v, int keyCode, Androidapi::Jni::Graphicscontentviewtext::_di_JKeyEvent event);
public:
	/* TJavaLocal.Create */ inline __fastcall TTMSFNCRECustomScrollControlKeyListener() : Androidapi::Jnibridge::TJavaLocal() { }
	/* TJavaLocal.Destroy */ inline __fastcall virtual ~TTMSFNCRECustomScrollControlKeyListener() { }
	
private:
	void *__JView_OnKeyListener;	// Androidapi::Jni::Graphicscontentviewtext::JView_OnKeyListener 
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {4E271738-0766-458B-883B-721CFD9F1DE6}
	operator Androidapi::Jni::Graphicscontentviewtext::_di_JView_OnKeyListener()
	{
		Androidapi::Jni::Graphicscontentviewtext::_di_JView_OnKeyListener intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator Androidapi::Jni::Graphicscontentviewtext::JView_OnKeyListener*(void) { return (Androidapi::Jni::Graphicscontentviewtext::JView_OnKeyListener*)&__JView_OnKeyListener; }
	#endif
	
};


class PASCALIMPLEMENTATION TTMSFNCRECustomScrollControl : public Fmx::Controls::TStyledControl
{
	typedef Fmx::Controls::TStyledControl inherited;
	
private:
	bool FAppearancePersisting;
	bool FIgnoreMouseMove;
	bool FInputEventAssigned;
	Androidapi::Appglue::TOnInputEvent FInputEvent;
	Androidapi::Jni::Graphicscontentviewtext::_di_JKeyCharacterMap FKeyCharacterMap;
	Fmx::Keymapping::TKeyMapping* FKeyMapping;
	TTMSFNCRECustomScrollControlFocusChangeListener* FFocusChangeListener;
	TTMSFNCRECustomScrollControlKeyListener* FKeyListener;
	Androidapi::Jni::Widget::_di_JTextView FTextView;
	int FStyleChangedId;
	bool FContextMenu;
	bool FMouseFollow;
	Fmx::Types::TVirtualKeyboardType FKeyboardType;
	Fmx::Types::TReturnKeyType FReturnKeyType;
	Fmx::Text::TTextService* FTextService;
	Fmx::Magnifierglass::_di_ILoupeService FLoupeService;
	Fmx::Objects::TSelectionPoint* FLeftSelPt;
	Fmx::Objects::TSelectionPoint* FRightSelPt;
	Fmx::Controls::TCaret* FCCaret;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FFont;
	System::Uitypes::TAlphaColor FColor;
	Fmx::Stdctrls::TScrollBar* FVertScrollBar;
	Fmx::Stdctrls::TScrollBar* FHorzScrollBar;
	TTMSFMXBorderStyle FBorderStyle;
	Fmx::Graphics::TStrokeJoin FStrokeJoin;
	float FStrokeThickness;
	Fmx::Graphics::TStrokeCap FStrokeCap;
	Fmx::Graphics::TStrokeDash FStrokeDash;
	Fmx::Graphics::TBrush* FFill;
	Fmx::Graphics::TBrush* FStroke;
	bool FReadOnly;
	bool FAdaptToStyle;
	bool FAdaptedToStyle;
	System::Types::TPoint __fastcall GetScrollPosition();
	void __fastcall SetScrollPosition(const System::Types::TPoint &Value);
	void __fastcall SetFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetBorderStyle(const TTMSFMXBorderStyle Value);
	void __fastcall SetStrokeCap(const Fmx::Graphics::TStrokeCap Value);
	void __fastcall SetStrokeDash(const Fmx::Graphics::TStrokeDash Value);
	void __fastcall SetStrokeJoin(const Fmx::Graphics::TStrokeJoin Value);
	bool __fastcall IsStrokeThicknessStored();
	void __fastcall SetStroke(Fmx::Graphics::TBrush* const Value);
	void __fastcall SetStrokeThickness(const float Value);
	void __fastcall SetFill(Fmx::Graphics::TBrush* const Value);
	bool __fastcall GetAllowFocus();
	void __fastcall SetAllowFocus(const bool Value);
	void __fastcall SelectionPointChanged(System::TObject* Sender, float &X, float &Y);
	void __fastcall SelectionPointMouseUp(System::TObject* Sender, System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, float X, float Y);
	void __fastcall SelectionPointMouseDown(System::TObject* Sender, System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, float X, float Y);
	void __fastcall SetReadOnly(const bool Value);
	bool __fastcall GetFocused();
	
protected:
	virtual bool __fastcall IsAppearanceProperty(System::TObject* AObject, System::UnicodeString APropertyName, System::TTypeKind APropertyType);
	virtual bool __fastcall CanSaveProperty(System::TObject* AObject, System::UnicodeString APropertyName, System::TTypeKind APropertyType);
	virtual bool __fastcall CanLoadProperty(System::TObject* AObject, System::UnicodeString APropertyName, System::TTypeKind APropertyType);
	virtual System::UnicodeString __fastcall GetVersion();
	virtual System::UnicodeString __fastcall GetDocURL();
	virtual System::UnicodeString __fastcall GetTipsURL();
	virtual bool __fastcall GetAdaptToStyle();
	virtual void __fastcall SetAdaptToStyle(const bool Value);
	virtual void __fastcall InitStyle();
	virtual void __fastcall ResetToDefaultStyle();
	void __fastcall InitializeStyle();
	virtual void __fastcall UpdateScrollBars();
	virtual void __fastcall DoEnter();
	virtual void __fastcall DoExit();
	void __fastcall Glue();
	void __fastcall UnGlue();
	virtual void __fastcall AddGlyph(Fmx::Tmsfnctypes::TTMSFNCBitmap* ABitmap, float AWidth, float AHeight);
	virtual void __fastcall AddFocus();
	virtual void __fastcall RemoveFocus();
	int __fastcall HandleAndroidKeyEvent(Androidapi::Input::PAInputEvent AEvent);
	int __fastcall HandleAndroidInputEvent(Androidapi::Appglue::TAndroidApplicationGlue* const AAppGlue, const Androidapi::Input::PAInputEvent AEvent);
	Fmx::Zorder::Android::TAndroidZOrderManager* __fastcall GetZOrderManager();
	virtual void __fastcall MouseWheel(System::Classes::TShiftState Shift, int WheelDelta, bool &Handled);
	HIDESBASE virtual void __fastcall StyleChangedHandler(System::TObject* const Sender, System::Messaging::TMessageBase* const Msg);
	virtual bool __fastcall DoSetSize(Fmx::Types::TControlSize* const ASize, const bool NewPlatformDefault, float ANewWidth, float ANewHeight, float &ALastWidth, float &ALastHeight);
	virtual void __fastcall TopLeftChanged();
	Fmx::Types::TCustomCaret* __fastcall GetCaret();
	void __fastcall ShowCaret();
	void __fastcall HideCaret();
	virtual void __fastcall Resize();
	virtual void __fastcall Show();
	virtual void __fastcall Hide();
	virtual void __fastcall Move();
	virtual void __fastcall DoAbsoluteChanged();
	virtual void __fastcall SetVisible(const bool Value);
	void __fastcall UpdateBounds();
	virtual Fmx::Controls::TCaret* __fastcall CreateCCaret();
	virtual void __fastcall CMGesture(Fmx::Types::TGestureEventInfo &EventInfo);
	void __fastcall LongTap(const float X, const float Y);
	void __fastcall DblTap();
	void __fastcall HideLoupe();
	void __fastcall ShowLoupe();
	void __fastcall SetLoupePosition(const float X, const float Y)/* overload */;
	virtual void __fastcall StartIMEInput();
	virtual void __fastcall EndIMEInput();
	void __fastcall UpdateCaretPoint();
	void __fastcall UpdateTextService();
	void __fastcall CreateTextService();
	void __fastcall IMEStateUpdated();
	Fmx::Text::TTextService* __fastcall GetTextService();
	System::Types::TPointF __fastcall GetTargetClausePointF();
	System::UnicodeString __fastcall GetSelection();
	System::Types::TRectF __fastcall GetSelectionRect();
	System::Types::TRect __fastcall GetSelectionBounds();
	System::Types::TSizeF __fastcall GetSelectionPointSize();
	bool __fastcall HasText();
	bool __fastcall HandleAllocated();
	bool __fastcall GetReadOnly();
	virtual void __fastcall DeleteSelection() = 0 ;
	virtual void __fastcall ClearSelection() = 0 ;
	void __fastcall PasteFromC();
	void __fastcall SelectWord();
	void __fastcall ResetSelection();
	void __fastcall GoToTextEnd();
	void __fastcall GoToTextBegin();
	void __fastcall Replace(const int AStartPos, const int ALength, const System::UnicodeString AStr);
	void __fastcall SetKeyboardType(Fmx::Types::TVirtualKeyboardType Value);
	void __fastcall SetReturnKeyType(Fmx::Types::TReturnKeyType Value);
	Fmx::Types::TVirtualKeyboardType __fastcall GetKeyboardType();
	Fmx::Types::TReturnKeyType __fastcall GetReturnKeyType();
	bool __fastcall IsPassword();
	virtual void __fastcall MouseDown(System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall MouseMove(System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall MouseUp(System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall MouseDownN(System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, int X, int Y) = 0 ;
	virtual void __fastcall MouseMoveN(System::Classes::TShiftState Shift, int X, int Y) = 0 ;
	virtual void __fastcall MouseUpN(System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, int X, int Y) = 0 ;
	virtual void __fastcall KeyDown(System::Word &Key, System::WideChar &KeyChar, System::Classes::TShiftState Shift);
	virtual void __fastcall KeyUp(System::Word &Key, System::WideChar &KeyChar, System::Classes::TShiftState Shift);
	virtual void __fastcall KeyDownN(System::Word &Key, System::Classes::TShiftState Shift) = 0 ;
	virtual void __fastcall KeyUpN(System::Word &Key, System::Classes::TShiftState Shift) = 0 ;
	virtual void __fastcall KeyPressN(System::WideChar &Key) = 0 ;
	bool __fastcall PageUp();
	bool __fastcall PageDown();
	virtual void __fastcall DoDblClick(int X, int Y);
	void __fastcall ScrollHorz(const int X);
	void __fastcall ScrollVert(const int Y);
	void __fastcall ScrollChanged(System::TObject* Sender);
	bool __fastcall ScrollUp(const int Delta);
	bool __fastcall ScrollDown(const int Delta);
	bool __fastcall ScrollHome();
	bool __fastcall ScrollEnd();
	int __fastcall ScrollSizeVert();
	int __fastcall ScrollSizeHorz();
	__property Fmx::Graphics::TBrush* Fill = {read=FFill, write=SetFill};
	__property Fmx::Graphics::TBrush* Stroke = {read=FStroke, write=SetStroke};
	__property float StrokeThickness = {read=FStrokeThickness, write=SetStrokeThickness, stored=IsStrokeThicknessStored};
	__property Fmx::Graphics::TStrokeCap StrokeCap = {read=FStrokeCap, write=SetStrokeCap, default=0};
	__property Fmx::Graphics::TStrokeDash StrokeDash = {read=FStrokeDash, write=SetStrokeDash, default=0};
	__property Fmx::Graphics::TStrokeJoin StrokeJoin = {read=FStrokeJoin, write=SetStrokeJoin, default=0};
	virtual bool __fastcall SetRange(const System::Types::TSize &ARange);
	virtual void __fastcall Backspace() = 0 ;
	virtual void __fastcall UpdateSize() = 0 ;
	virtual bool __fastcall HasSelection() = 0 ;
	virtual void __fastcall SelectAll() = 0 ;
	virtual System::UnicodeString __fastcall SelectWordAtCaret() = 0 ;
	virtual void __fastcall GetWordAndIndexAtCaret(System::UnicodeString &AValue, int &AIndex, bool SpaceOnly = false) = 0 ;
	virtual void __fastcall UpdateWordAndIndexAtCaret(System::UnicodeString AValue, int AIndex, bool SpaceOnly = false) = 0 ;
	virtual System::UnicodeString __fastcall SelectedText() = 0 ;
	virtual void __fastcall UpdateSelectionPoint(bool LeftSel, int &X, int &Y) = 0 ;
	virtual bool __fastcall IsForwardSelection() = 0 ;
	virtual bool __fastcall HasTextContent();
	virtual void __fastcall InsertChar(System::WideChar ch) = 0 /* overload */;
	virtual void __fastcall InsertChar(System::UnicodeString value) = 0 /* overload */;
	virtual void __fastcall DoSelectionChanged() = 0 ;
	virtual void __fastcall UpdateSelection();
	virtual System::Types::TPoint __fastcall GetSelectionFromXY() = 0 ;
	virtual System::Types::TPoint __fastcall GetSelectionToXY() = 0 ;
	virtual System::Types::TPoint __fastcall GetCaretXY() = 0 ;
	virtual int __fastcall GetCaretLH() = 0 ;
	virtual int __fastcall GetElementCount() = 0 ;
	virtual int __fastcall GetClientWidth() = 0 ;
	virtual int __fastcall GetClientHeight() = 0 ;
	virtual int __fastcall VScrollWidth();
	virtual int __fastcall HScrollHeight();
	virtual System::Types::TRect __fastcall ClientRect();
	__property bool ReadOnly = {read=FReadOnly, write=SetReadOnly, default=0};
	__property Fmx::Text::TTextService* TextService = {read=FTextService};
	
public:
	__fastcall virtual TTMSFNCRECustomScrollControl(System::Classes::TComponent* AOwner)/* overload */;
	__fastcall virtual ~TTMSFNCRECustomScrollControl();
	__property System::Types::TPoint TopLeft = {read=GetScrollPosition, write=SetScrollPosition};
	void __fastcall ScrollBy(const float Dx, const float Dy);
	Fmx::Stdctrls::TScrollBar* __fastcall VerticalScrollBar();
	Fmx::Stdctrls::TScrollBar* __fastcall HorizontalScrollBar();
	bool __fastcall HasVerticalScrollBar();
	bool __fastcall HasHorizontalScrollBar();
	virtual void __fastcall SetBounds(float X, float Y, float AWidth, float AHeight);
	virtual void __fastcall CopyToClipboard() = 0 ;
	virtual void __fastcall CutToClipboard() = 0 ;
	virtual System::UnicodeString __fastcall PasteFromClipboard() = 0 ;
	__property bool Focused = {read=GetFocused, nodefault};
	virtual void __fastcall SaveSettingsToFile(System::UnicodeString AFileName, bool AAppearanceOnly = false);
	virtual void __fastcall LoadSettingsFromFile(System::UnicodeString AFileName);
	virtual void __fastcall SaveSettingsToStream(System::Classes::TStream* AStream, bool AAppearanceOnly = false);
	virtual void __fastcall LoadSettingsFromStream(System::Classes::TStream* AStream);
	
__published:
	__property bool AdaptToStyle = {read=GetAdaptToStyle, write=SetAdaptToStyle, default=0};
	__property Align = {default=0};
	__property Anchors;
	__property bool AllowFocus = {read=GetAllowFocus, write=SetAllowFocus, default=1};
	__property TTMSFMXBorderStyle BorderStyle = {read=FBorderStyle, write=SetBorderStyle, default=0};
	__property System::Uitypes::TAlphaColor Color = {read=FColor, write=SetColor, default=-1};
	__property Cursor = {default=0};
	__property Enabled;
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* Font = {read=FFont, write=SetFont};
	__property Height;
	__property Margins;
	__property Padding;
	__property Position;
	__property Hint = {default=0};
	__property ShowHint;
	__property Size;
	__property TabStop = {default=1};
	__property Visible = {default=1};
	__property Width;
	__property Fmx::Types::TVirtualKeyboardType KeyboardType = {read=GetKeyboardType, write=SetKeyboardType, default=0};
	__property Fmx::Types::TReturnKeyType ReturnKeyType = {read=GetReturnKeyType, write=SetReturnKeyType, default=0};
private:
	void *__IReadOnly;	// Fmx::Types::IReadOnly 
	void *__ITMSFNCAdaptToStyle;	// Fmx::Tmsfncstyles::ITMSFNCAdaptToStyle 
	void *__ITMSFNCPersistence;	// Fmx::Tmsfncpersistence::ITMSFNCPersistence 
	void *__IVirtualKeyboardControl;	// Fmx::Types::IVirtualKeyboardControl 
	void *__ICaret;	// Fmx::Types::ICaret 
	void *__ITextActions;	// Fmx::Text::ITextActions 
	void *__ITextInput;	// Fmx::Text::ITextInput 
	void *__ITMSFNCProductInfo;	// Fmx::Tmsfnctypes::ITMSFNCProductInfo 
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {495B8B0C-D7C8-4835-AA5F-580939D21444}
	operator Fmx::Types::_di_IReadOnly()
	{
		Fmx::Types::_di_IReadOnly intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator Fmx::Types::IReadOnly*(void) { return (Fmx::Types::IReadOnly*)&__IReadOnly; }
	#endif
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {3EFF288D-3927-4E86-8E9D-EF684B501C9E}
	operator Fmx::Tmsfncstyles::_di_ITMSFNCAdaptToStyle()
	{
		Fmx::Tmsfncstyles::_di_ITMSFNCAdaptToStyle intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator Fmx::Tmsfncstyles::ITMSFNCAdaptToStyle*(void) { return (Fmx::Tmsfncstyles::ITMSFNCAdaptToStyle*)&__ITMSFNCAdaptToStyle; }
	#endif
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {363F04AF-B8A7-4C47-A2D6-8ED9C44CEFF6}
	operator Fmx::Tmsfncpersistence::_di_ITMSFNCPersistence()
	{
		Fmx::Tmsfncpersistence::_di_ITMSFNCPersistence intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator Fmx::Tmsfncpersistence::ITMSFNCPersistence*(void) { return (Fmx::Tmsfncpersistence::ITMSFNCPersistence*)&__ITMSFNCPersistence; }
	#endif
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {41127080-97FC-4C30-A880-AB6CD351A6C4}
	operator Fmx::Types::_di_IVirtualKeyboardControl()
	{
		Fmx::Types::_di_IVirtualKeyboardControl intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator Fmx::Types::IVirtualKeyboardControl*(void) { return (Fmx::Types::IVirtualKeyboardControl*)&__IVirtualKeyboardControl; }
	#endif
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {F4EFFFB8-E83C-421D-B123-C370FB7BCCC7}
	operator Fmx::Types::_di_ICaret()
	{
		Fmx::Types::_di_ICaret intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator Fmx::Types::ICaret*(void) { return (Fmx::Types::ICaret*)&__ICaret; }
	#endif
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {9DB49126-36DB-4193-AE96-C0BD27090DCD}
	operator Fmx::Text::_di_ITextActions()
	{
		Fmx::Text::_di_ITextActions intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator Fmx::Text::ITextActions*(void) { return (Fmx::Text::ITextActions*)&__ITextActions; }
	#endif
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {56D79E74-58D6-4C1E-B832-F133D669B952}
	operator Fmx::Text::_di_ITextInput()
	{
		Fmx::Text::_di_ITextInput intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator Fmx::Text::ITextInput*(void) { return (Fmx::Text::ITextInput*)&__ITextInput; }
	#endif
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {C53329EA-7B3A-4507-AD9E-88ACD6A85054}
	operator Fmx::Tmsfnctypes::_di_ITMSFNCProductInfo()
	{
		Fmx::Tmsfnctypes::_di_ITMSFNCProductInfo intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator Fmx::Tmsfnctypes::ITMSFNCProductInfo*(void) { return (Fmx::Tmsfnctypes::ITMSFNCProductInfo*)&__ITMSFNCProductInfo; }
	#endif
	
};


//-- var, const, procedure ---------------------------------------------------
extern DELPHI_PACKAGE System::Classes::TShortCut __fastcall ShortCut(System::Word Key, System::Classes::TShiftState Shift);
extern DELPHI_PACKAGE System::Types::TRectF __fastcall CalculateText(Fmx::Graphics::TCanvas* ACanvas, System::UnicodeString AValue, bool AWordWrap = false);
extern DELPHI_PACKAGE System::Types::TRectF __fastcall CalculateTextR(Fmx::Graphics::TCanvas* ACanvas, System::UnicodeString AValue, const System::Types::TRectF &AMaxRect, bool AWordWrap = false);
}	/* namespace Tmsfncscrollcontrol */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCSCROLLCONTROL)
using namespace Fmx::Tmsfncscrollcontrol;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncscrollcontrolHPP
