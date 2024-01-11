// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCPassLock.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncpasslockHPP
#define Fmx_TmsfncpasslockHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <FMX.TMSFNCCustomControl.hpp>
#include <FMX.Controls.hpp>
#include <FMX.Graphics.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.TMSFNCGraphics.hpp>
#include <FMX.TMSFNCGraphicsTypes.hpp>
#include <System.Generics.Collections.hpp>
#include <System.UITypes.hpp>
#include <System.Types.hpp>
#include <System.SysUtils.hpp>
#include <FMX.Types.hpp>
#include <System.Generics.Defaults.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncpasslock
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCPassLockDrawValue;
class DELPHICLASS TTMSFNCPassLockButtonList;
class DELPHICLASS TTMSFNCPassLockDrawEntry;
class DELPHICLASS TTMSFNCPassLockEntryList;
class DELPHICLASS TTMSFNCPassLockOptions;
class DELPHICLASS TTMSFNCPassLockButtonAppearance;
class DELPHICLASS TTMSFNCPassLockEntryAppearance;
class DELPHICLASS TTMSFNCCustomPassLock;
class DELPHICLASS TTMSFNCPassLock;
//-- type declarations -------------------------------------------------------
enum DECLSPEC_DENUM TTMSFNCPassLockButtonShape : unsigned char { plbsCircle, plbsRectangle, plbsRoundedRectangle };

enum DECLSPEC_DENUM TTMSFNCPassLockType : unsigned char { pltNumber, pltPattern };

class PASCALIMPLEMENTATION TTMSFNCPassLockDrawValue : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	System::Types::TRectF FItemRect;
	int FIndex;
	System::UnicodeString FValue;
	
public:
	__fastcall virtual TTMSFNCPassLockDrawValue(System::Classes::TCollection* Collection);
	__fastcall virtual ~TTMSFNCPassLockDrawValue();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__property System::Types::TRectF ItemRect = {read=FItemRect, write=FItemRect};
	__property System::UnicodeString Value = {read=FValue, write=FValue};
};


class PASCALIMPLEMENTATION TTMSFNCPassLockButtonList : public Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCPassLockDrawValue*>
{
	typedef Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCPassLockDrawValue*> inherited;
	
public:
	TTMSFNCPassLockDrawValue* operator[](int Index) { return this->Items[Index]; }
	
private:
	HIDESBASE TTMSFNCPassLockDrawValue* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCPassLockDrawValue* const Value);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall CreateItemClass();
	
public:
	__property TTMSFNCPassLockDrawValue* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	HIDESBASE TTMSFNCPassLockDrawValue* __fastcall Add()/* overload */;
	HIDESBASE TTMSFNCPassLockDrawValue* __fastcall Insert(int Index);
	HIDESBASE void __fastcall Add(TTMSFNCPassLockDrawValue* AEntry)/* overload */;
public:
	/* TOwnedCollection.Create */ inline __fastcall TTMSFNCPassLockButtonList(System::Classes::TPersistent* AOwner, System::Classes::TCollectionItemClass ItemClass) : Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCPassLockDrawValue*>(AOwner, ItemClass) { }
	
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCPassLockButtonList() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCPassLockDrawEntry : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	System::Types::TRectF FItemRect;
	int FIndex;
	bool FChecked;
	
public:
	__fastcall virtual TTMSFNCPassLockDrawEntry(System::Classes::TCollection* Collection);
	__fastcall virtual ~TTMSFNCPassLockDrawEntry();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__property System::Types::TRectF ItemRect = {read=FItemRect, write=FItemRect};
	__property bool Checked = {read=FChecked, write=FChecked, nodefault};
};


class PASCALIMPLEMENTATION TTMSFNCPassLockEntryList : public Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCPassLockDrawEntry*>
{
	typedef Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCPassLockDrawEntry*> inherited;
	
public:
	TTMSFNCPassLockDrawEntry* operator[](int Index) { return this->Items[Index]; }
	
private:
	HIDESBASE TTMSFNCPassLockDrawEntry* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCPassLockDrawEntry* const Value);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall CreateItemClass();
	
public:
	__property TTMSFNCPassLockDrawEntry* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	HIDESBASE TTMSFNCPassLockDrawEntry* __fastcall Add()/* overload */;
	HIDESBASE TTMSFNCPassLockDrawEntry* __fastcall Insert(int Index);
	HIDESBASE void __fastcall Add(TTMSFNCPassLockDrawEntry* AEntry)/* overload */;
public:
	/* TOwnedCollection.Create */ inline __fastcall TTMSFNCPassLockEntryList(System::Classes::TPersistent* AOwner, System::Classes::TCollectionItemClass ItemClass) : Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCPassLockDrawEntry*>(AOwner, ItemClass) { }
	
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCPassLockEntryList() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCPassLockOptions : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	bool FEnableKeyboardInput;
	bool FLearnMode;
	TTMSFNCPassLockType FLockType;
	bool FShowClearEntryButton;
	bool FShowEntry;
	bool FShowOKButton;
	bool FShowPasswordLength;
	System::Classes::TNotifyEvent FOnChanged;
	System::Classes::TNotifyEvent FOnLearnModeChanged;
	void __fastcall SetEnableKeyboardInput(const bool Value);
	void __fastcall SetLearnMode(const bool Value);
	void __fastcall SetLockType(const TTMSFNCPassLockType Value);
	void __fastcall SetShowClearEntryButton(const bool Value);
	void __fastcall SetShowEntry(const bool Value);
	void __fastcall SetShowOKButton(const bool Value);
	void __fastcall SetShowPasswordLength(const bool Value);
	
protected:
	virtual void __fastcall DoChanged(System::TObject* Sender);
	virtual void __fastcall DoLearnModeChanged();
	__property System::Classes::TNotifyEvent OnChanged = {read=FOnChanged, write=FOnChanged};
	__property System::Classes::TNotifyEvent OnLearnModeChanged = {read=FOnLearnModeChanged, write=FOnLearnModeChanged};
	
public:
	__fastcall TTMSFNCPassLockOptions(System::Classes::TPersistent* Source);
	__fastcall virtual ~TTMSFNCPassLockOptions();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property bool EnableKeyboardInput = {read=FEnableKeyboardInput, write=SetEnableKeyboardInput, default=1};
	__property bool LearnMode = {read=FLearnMode, write=SetLearnMode, default=0};
	__property TTMSFNCPassLockType LockType = {read=FLockType, write=SetLockType, default=0};
	__property bool ShowClearEntryButton = {read=FShowClearEntryButton, write=SetShowClearEntryButton, default=0};
	__property bool ShowOKButton = {read=FShowOKButton, write=SetShowOKButton, default=0};
	__property bool ShowEntry = {read=FShowEntry, write=SetShowEntry, default=1};
	__property bool ShowPasswordLength = {read=FShowPasswordLength, write=SetShowPasswordLength, default=1};
};


class PASCALIMPLEMENTATION TTMSFNCPassLockButtonAppearance : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FDownFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FDownFont;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FDownStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FFont;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FHoverFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FHoverFont;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FHoverStroke;
	float FMaxSize;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FPatternLine;
	TTMSFNCPassLockButtonShape FShape;
	float FSpacing;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FStroke;
	System::Classes::TNotifyEvent FOnChanged;
	System::UnicodeString FCaptionClearEntry;
	System::UnicodeString FCaptionOK;
	void __fastcall SetDownFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetDownFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetDownStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetHoverFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetHoverFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetHoverStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetMaxSize(const float Value);
	void __fastcall SetPatternLine(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetShape(const TTMSFNCPassLockButtonShape Value);
	void __fastcall SetSpacing(const float Value);
	void __fastcall SetStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetCaptionClearEntry(const System::UnicodeString Value);
	void __fastcall SetCaptionOK(const System::UnicodeString Value);
	
protected:
	virtual void __fastcall DoChanged(System::TObject* Sender);
	virtual void __fastcall FillChanged(System::TObject* Sender);
	virtual void __fastcall FontChanged(System::TObject* Sender);
	virtual void __fastcall StrokeChanged(System::TObject* Sender);
	__property System::Classes::TNotifyEvent OnChanged = {read=FOnChanged, write=FOnChanged};
	
public:
	__fastcall TTMSFNCPassLockButtonAppearance(System::Classes::TPersistent* Source);
	__fastcall virtual ~TTMSFNCPassLockButtonAppearance();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* DownFill = {read=FDownFill, write=SetDownFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* DownFont = {read=FDownFont, write=SetDownFont};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* DownStroke = {read=FDownStroke, write=SetDownStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* Fill = {read=FFill, write=SetFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* Font = {read=FFont, write=SetFont};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* HoverFill = {read=FHoverFill, write=SetHoverFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* HoverFont = {read=FHoverFont, write=SetHoverFont};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* HoverStroke = {read=FHoverStroke, write=SetHoverStroke};
	__property float MaxSize = {read=FMaxSize, write=SetMaxSize};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* PatternLine = {read=FPatternLine, write=SetPatternLine};
	__property TTMSFNCPassLockButtonShape Shape = {read=FShape, write=SetShape, default=0};
	__property float Spacing = {read=FSpacing, write=SetSpacing};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* Stroke = {read=FStroke, write=SetStroke};
	__property System::UnicodeString CaptionClearEntry = {read=FCaptionClearEntry, write=SetCaptionClearEntry};
	__property System::UnicodeString CaptionOK = {read=FCaptionOK, write=SetCaptionOK};
};


class PASCALIMPLEMENTATION TTMSFNCPassLockEntryAppearance : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FDownFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FDownStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FFill;
	float FMaxSize;
	float FSpacing;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FStroke;
	System::Classes::TNotifyEvent FOnChanged;
	void __fastcall SetDownFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetDownStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetMaxSize(const float Value);
	void __fastcall SetSpacing(const float Value);
	void __fastcall SetStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	
protected:
	virtual void __fastcall DoChanged(System::TObject* Sender);
	virtual void __fastcall FillChanged(System::TObject* Sender);
	virtual void __fastcall StrokeChanged(System::TObject* Sender);
	__property System::Classes::TNotifyEvent OnChanged = {read=FOnChanged, write=FOnChanged};
	
public:
	__fastcall TTMSFNCPassLockEntryAppearance(System::Classes::TPersistent* Source);
	__fastcall virtual ~TTMSFNCPassLockEntryAppearance();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* DownFill = {read=FDownFill, write=SetDownFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* DownStroke = {read=FDownStroke, write=SetDownStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* Fill = {read=FFill, write=SetFill};
	__property float MaxSize = {read=FMaxSize, write=SetMaxSize};
	__property float Spacing = {read=FSpacing, write=SetSpacing};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* Stroke = {read=FStroke, write=SetStroke};
};


typedef void __fastcall (__closure *TTMSFNCPassLockPasswordCheckEvent)(System::TObject* Sender, System::UnicodeString AEntry, bool &AMatch);

typedef void __fastcall (__closure *TTMSFNCPassLockAfterDrawBackgroundEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);

typedef void __fastcall (__closure *TTMSFNCPassLockBeforeDrawBackgroundEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, bool &AAllow, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCPassLockAfterDrawPatternEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsPathPolygon APath);

typedef void __fastcall (__closure *TTMSFNCPassLockBeforeDrawPatternEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsPathPolygon APath, bool &AAllow, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCPassLockAfterDrawPatternCircleEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);

typedef void __fastcall (__closure *TTMSFNCPassLockBeforeDrawPatternCircleEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, bool &AAllow, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCPassLockAfterDrawButtonEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCPassLockButtonShape AButtonShape, System::UnicodeString AValue);

typedef void __fastcall (__closure *TTMSFNCPassLockBeforeDrawButtonEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCPassLockButtonShape AButtonShape, System::UnicodeString AValue, bool &AAllow, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCPassLockBeforeDrawButtonValueEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, System::UnicodeString AValue, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign &AHorizontalTextAlign, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign &AVerticalTextAlign, bool &AWordWrap, bool &AAllow, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCPassLockAfterDrawButtonValueEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, System::UnicodeString AValue, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign AHorizontalTextAlign, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign AVerticalTextAlign, bool AWordWrap);

typedef void __fastcall (__closure *TTMSFNCPassLockAfterDrawEntryEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, bool AChecked);

typedef void __fastcall (__closure *TTMSFNCPassLockBeforeDrawEntryEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, bool AChecked, bool &AAllow, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCPassLockPasswordEvent)(System::TObject* Sender, System::UnicodeString APassword);

typedef void __fastcall (__closure *TTMSFNCPassLockPasswordEntryChangedEvent)(System::TObject* Sender, System::UnicodeString APasswordEntry, System::UnicodeString AValue);

class PASCALIMPLEMENTATION TTMSFNCCustomPassLock : public Fmx::Tmsfnccustomcontrol::TTMSFNCCustomControl
{
	typedef Fmx::Tmsfnccustomcontrol::TTMSFNCCustomControl inherited;
	
private:
	TTMSFNCPassLockButtonAppearance* FButtonAppearance;
	TTMSFNCPassLockButtonList* FButtonDrawList;
	int FDownIndex;
	TTMSFNCPassLockEntryAppearance* FEntryAppearance;
	TTMSFNCPassLockEntryList* FEntryDrawList;
	int FHoverIndex;
	System::UnicodeString FKeyChar;
	bool FLearned;
	System::UnicodeString FLearnPass;
	bool FMouseDown;
	TTMSFNCPassLockOptions* FOptions;
	System::UnicodeString FPasswordEntry;
	int FPasswordLength;
	System::UnicodeString FPasswordValue;
	TTMSFNCPassLockAfterDrawBackgroundEvent FOnAfterDrawBackground;
	TTMSFNCPassLockAfterDrawButtonEvent FOnAfterDrawButton;
	TTMSFNCPassLockAfterDrawButtonValueEvent FOnAfterDrawButtonValue;
	TTMSFNCPassLockAfterDrawEntryEvent FOnAfterDrawEntry;
	TTMSFNCPassLockAfterDrawPatternEvent FOnAfterDrawPattern;
	TTMSFNCPassLockAfterDrawPatternCircleEvent FOnAfterDrawPatternCircle;
	TTMSFNCPassLockBeforeDrawBackgroundEvent FOnBeforeDrawBackground;
	TTMSFNCPassLockBeforeDrawButtonEvent FOnBeforeDrawButton;
	TTMSFNCPassLockBeforeDrawButtonValueEvent FOnBeforeDrawButtonValue;
	TTMSFNCPassLockBeforeDrawEntryEvent FOnBeforeDrawEntry;
	TTMSFNCPassLockBeforeDrawPatternEvent FOnBeforeDrawPattern;
	TTMSFNCPassLockBeforeDrawPatternCircleEvent FOnBeforeDrawPatternCircle;
	System::Classes::TNotifyEvent FOnButtonAppearanceChanged;
	TTMSFNCPassLockPasswordEntryChangedEvent FOnButtonDownChanged;
	TTMSFNCPassLockPasswordEntryChangedEvent FOnButtonHoverChanged;
	TTMSFNCPassLockPasswordEntryChangedEvent FOnButtonUpChanged;
	TTMSFNCPassLockPasswordCheckEvent FOnConfirmPassword;
	System::Classes::TNotifyEvent FOnEntryAppearanceChanged;
	TTMSFNCPassLockPasswordEvent FOnLearnPassword;
	TTMSFNCPassLockPasswordEvent FOnNewPassword;
	System::Classes::TNotifyEvent FOnOptionsChanged;
	TTMSFNCPassLockPasswordEntryChangedEvent FOnPatternEntryChanged;
	TTMSFNCPassLockPasswordEvent FOnPatternEntryEnd;
	TTMSFNCPassLockPasswordCheckEvent FOnPasswordCheck;
	TTMSFNCPassLockPasswordEntryChangedEvent FOnPasswordEntryChanged;
	Fmx::Tmsfncgraphicstypes::TTMSFNCAppearanceGlobalFont* FGlobalFont;
	void __fastcall SetButtonAppearance(TTMSFNCPassLockButtonAppearance* const Value);
	void __fastcall SetEntryAppearance(TTMSFNCPassLockEntryAppearance* const Value);
	void __fastcall SetOptions(TTMSFNCPassLockOptions* const Value);
	void __fastcall SetPassEntry(const System::UnicodeString Value);
	void __fastcall SetPasswordValue(const System::UnicodeString Value);
	void __fastcall SetGlobalFont(Fmx::Tmsfncgraphicstypes::TTMSFNCAppearanceGlobalFont* const Value);
	
protected:
	virtual void __fastcall ChangeDPIScale(int M, int D);
	void __fastcall CalculateGrid();
	virtual void __fastcall DoAfterDrawBackground(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	virtual void __fastcall DoAfterDrawButton(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCPassLockButtonShape AButtonShape, System::UnicodeString AValue);
	virtual void __fastcall DoAfterDrawButtonValue(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, System::UnicodeString AValue, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign AHorizontalTextAlign, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign AVerticalTextAlign, bool AWordWrap);
	virtual void __fastcall DoAfterDrawEntry(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, bool AChecked);
	virtual void __fastcall DoAfterDrawPattern(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsPathPolygon APath);
	virtual void __fastcall DoAfterDrawPatternCircle(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	virtual void __fastcall DoBeforeDrawBackground(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoBeforeDrawButton(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCPassLockButtonShape AButtonShape, System::UnicodeString AValue, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoBeforeDrawButtonValue(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, System::UnicodeString AValue, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign &AHorizontalTextAlign, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign &AVerticalTextAlign, bool &AWordWrap, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoBeforeDrawEntry(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, bool AChecked, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoBeforeDrawPattern(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsPathPolygon APath, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoBeforeDrawPatternCircle(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoButtonAppearanceChanged(System::TObject* Sender);
	void __fastcall DoButtonDownChanged(System::UnicodeString AValue);
	void __fastcall DoButtonHoverChanged(System::UnicodeString AValue);
	void __fastcall DoButtonUpChanged(System::UnicodeString AValue);
	virtual void __fastcall DoConfirmPassword(bool AMatch);
	virtual void __fastcall DoEntryAppearanceChanged(System::TObject* Sender);
	virtual void __fastcall DoLearnModeChanged(System::TObject* Sender);
	virtual void __fastcall DoLearnPassword();
	virtual void __fastcall DoNewPassword();
	virtual void __fastcall DoOptionsChanged(System::TObject* Sender);
	virtual void __fastcall DoPasswordCheck(bool AMatch);
	void __fastcall DoPasswordEntryChanged(System::UnicodeString AValue);
	void __fastcall DoPatternEntryChanged(System::UnicodeString AValue);
	void __fastcall DoPatternEntryEnd();
	virtual void __fastcall DrawBackground(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	virtual void __fastcall DrawButtons(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	virtual void __fastcall DrawEntry(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	virtual void __fastcall DrawPattern(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	virtual void __fastcall HandleKeyPress(System::WideChar &Key);
	virtual void __fastcall HandleKeyUp(System::Word &Key, System::Classes::TShiftState Shift);
	virtual void __fastcall HandleMouseDown(System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall HandleMouseEnter();
	virtual void __fastcall HandleMouseLeave();
	virtual void __fastcall HandleMouseMove(System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall HandleMouseUp(System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, float X, float Y);
	void __fastcall PasswordEntered();
	int __fastcall XYToButton(float AX, float AY);
	virtual void __fastcall SetFonts(Fmx::Tmsfncgraphicstypes::TTMSFNCAppearanceGlobalFontType ASetType);
	__property TTMSFNCPassLockButtonAppearance* ButtonAppearance = {read=FButtonAppearance, write=SetButtonAppearance};
	__property TTMSFNCPassLockEntryAppearance* EntryAppearance = {read=FEntryAppearance, write=SetEntryAppearance};
	__property TTMSFNCPassLockOptions* Options = {read=FOptions, write=SetOptions};
	__property System::UnicodeString PasswordEntry = {read=FPasswordEntry, write=SetPassEntry};
	__property int PasswordLength = {read=FPasswordLength, default=4};
	__property System::UnicodeString PasswordValue = {read=FPasswordValue, write=SetPasswordValue};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCAppearanceGlobalFont* GlobalFont = {read=FGlobalFont, write=SetGlobalFont};
	__property TTMSFNCPassLockAfterDrawBackgroundEvent OnAfterDrawBackground = {read=FOnAfterDrawBackground, write=FOnAfterDrawBackground};
	__property TTMSFNCPassLockAfterDrawButtonEvent OnAfterDrawButton = {read=FOnAfterDrawButton, write=FOnAfterDrawButton};
	__property TTMSFNCPassLockAfterDrawButtonValueEvent OnAfterDrawButtonValue = {read=FOnAfterDrawButtonValue, write=FOnAfterDrawButtonValue};
	__property TTMSFNCPassLockAfterDrawEntryEvent OnAfterDrawEntry = {read=FOnAfterDrawEntry, write=FOnAfterDrawEntry};
	__property TTMSFNCPassLockAfterDrawPatternEvent OnAfterDrawPattern = {read=FOnAfterDrawPattern, write=FOnAfterDrawPattern};
	__property TTMSFNCPassLockAfterDrawPatternCircleEvent OnAfterDrawPatternCircle = {read=FOnAfterDrawPatternCircle, write=FOnAfterDrawPatternCircle};
	__property TTMSFNCPassLockBeforeDrawBackgroundEvent OnBeforeDrawBackground = {read=FOnBeforeDrawBackground, write=FOnBeforeDrawBackground};
	__property TTMSFNCPassLockBeforeDrawButtonEvent OnBeforeDrawButton = {read=FOnBeforeDrawButton, write=FOnBeforeDrawButton};
	__property TTMSFNCPassLockBeforeDrawButtonValueEvent OnBeforeDrawButtonValue = {read=FOnBeforeDrawButtonValue, write=FOnBeforeDrawButtonValue};
	__property TTMSFNCPassLockBeforeDrawEntryEvent OnBeforeDrawEntry = {read=FOnBeforeDrawEntry, write=FOnBeforeDrawEntry};
	__property TTMSFNCPassLockBeforeDrawPatternEvent OnBeforeDrawPattern = {read=FOnBeforeDrawPattern, write=FOnBeforeDrawPattern};
	__property TTMSFNCPassLockBeforeDrawPatternCircleEvent OnBeforeDrawPatternCircle = {read=FOnBeforeDrawPatternCircle, write=FOnBeforeDrawPatternCircle};
	__property System::Classes::TNotifyEvent OnButtonAppearanceChanged = {read=FOnButtonAppearanceChanged, write=FOnButtonAppearanceChanged};
	__property TTMSFNCPassLockPasswordEntryChangedEvent OnButtonDownChanged = {read=FOnButtonDownChanged, write=FOnButtonDownChanged};
	__property TTMSFNCPassLockPasswordEntryChangedEvent OnButtonHoverChanged = {read=FOnButtonHoverChanged, write=FOnButtonHoverChanged};
	__property TTMSFNCPassLockPasswordEntryChangedEvent OnButtonUpChanged = {read=FOnButtonUpChanged, write=FOnButtonUpChanged};
	__property TTMSFNCPassLockPasswordCheckEvent OnConfirmPassword = {read=FOnConfirmPassword, write=FOnConfirmPassword};
	__property System::Classes::TNotifyEvent OnEntryAppearanceChanged = {read=FOnEntryAppearanceChanged, write=FOnEntryAppearanceChanged};
	__property TTMSFNCPassLockPasswordEvent OnLearnPassword = {read=FOnLearnPassword, write=FOnLearnPassword};
	__property TTMSFNCPassLockPasswordEvent OnNewPassword = {read=FOnNewPassword, write=FOnNewPassword};
	__property System::Classes::TNotifyEvent OnOptionsChanged = {read=FOnOptionsChanged, write=FOnOptionsChanged};
	__property TTMSFNCPassLockPasswordCheckEvent OnPasswordCheck = {read=FOnPasswordCheck, write=FOnPasswordCheck};
	__property TTMSFNCPassLockPasswordEntryChangedEvent OnPasswordEntryChanged = {read=FOnPasswordEntryChanged, write=FOnPasswordEntryChanged};
	__property TTMSFNCPassLockPasswordEntryChangedEvent OnPatternEntryChanged = {read=FOnPatternEntryChanged, write=FOnPatternEntryChanged};
	__property TTMSFNCPassLockPasswordEvent OnPatternEntryEnd = {read=FOnPatternEntryEnd, write=FOnPatternEntryEnd};
	
public:
	__fastcall virtual TTMSFNCCustomPassLock(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCCustomPassLock();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	virtual void __fastcall EndUpdate();
	void __fastcall AddPasswordEntry(System::UnicodeString AEntry);
	void __fastcall ClearLastPasswordEntry();
	void __fastcall ClearPasswordEntry();
	virtual void __fastcall Draw(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	virtual void __fastcall Loaded();
	bool __fastcall PasswordCheck();
	virtual void __fastcall Resize();
	void __fastcall SetPasswordEntry(System::UnicodeString AEntry);
private:
	void *__ITMSFNCAppearanceGlobalFont;	// Fmx::Tmsfncgraphicstypes::ITMSFNCAppearanceGlobalFont 
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {85CF4F6B-3FF9-4CB7-AD6A-7FC477ED5462}
	operator Fmx::Tmsfncgraphicstypes::_di_ITMSFNCAppearanceGlobalFont()
	{
		Fmx::Tmsfncgraphicstypes::_di_ITMSFNCAppearanceGlobalFont intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator Fmx::Tmsfncgraphicstypes::ITMSFNCAppearanceGlobalFont*(void) { return (Fmx::Tmsfncgraphicstypes::ITMSFNCAppearanceGlobalFont*)&__ITMSFNCAppearanceGlobalFont; }
	#endif
	
};


class PASCALIMPLEMENTATION TTMSFNCPassLock : public TTMSFNCCustomPassLock
{
	typedef TTMSFNCCustomPassLock inherited;
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	
__published:
	__property ButtonAppearance;
	__property EntryAppearance;
	__property Fill;
	__property Options;
	__property PasswordEntry = {default=0};
	__property PasswordLength = {default=4};
	__property PasswordValue = {default=0};
	__property Stroke;
	__property GlobalFont;
	__property OnAfterDrawBackground;
	__property OnAfterDrawButton;
	__property OnAfterDrawButtonValue;
	__property OnAfterDrawEntry;
	__property OnAfterDrawPattern;
	__property OnAfterDrawPatternCircle;
	__property OnBeforeDrawBackground;
	__property OnBeforeDrawButton;
	__property OnBeforeDrawButtonValue;
	__property OnBeforeDrawEntry;
	__property OnBeforeDrawPattern;
	__property OnBeforeDrawPatternCircle;
	__property OnButtonAppearanceChanged;
	__property OnButtonDownChanged;
	__property OnButtonHoverChanged;
	__property OnButtonUpChanged;
	__property OnConfirmPassword;
	__property OnEntryAppearanceChanged;
	__property OnLearnPassword;
	__property OnNewPassword;
	__property OnOptionsChanged;
	__property OnPasswordCheck;
	__property OnPasswordEntryChanged;
	__property OnPatternEntryChanged;
	__property OnPatternEntryEnd;
public:
	/* TTMSFNCCustomPassLock.Create */ inline __fastcall virtual TTMSFNCPassLock(System::Classes::TComponent* AOwner) : TTMSFNCCustomPassLock(AOwner) { }
	/* TTMSFNCCustomPassLock.Destroy */ inline __fastcall virtual ~TTMSFNCPassLock() { }
	
};


//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x2);
static constexpr System::Int8 BLD_VER = System::Int8(0x3);
}	/* namespace Tmsfncpasslock */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCPASSLOCK)
using namespace Fmx::Tmsfncpasslock;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncpasslockHPP
