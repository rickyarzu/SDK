// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCColorWheel.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfnccolorwheelHPP
#define Fmx_TmsfnccolorwheelHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.UITypes.hpp>
#include <FMX.StdCtrls.hpp>
#include <System.Classes.hpp>
#include <System.Types.hpp>
#include <FMX.Graphics.hpp>
#include <FMX.TMSFNCCustomControl.hpp>
#include <FMX.TMSFNCImage.hpp>
#include <FMX.TMSFNCGraphics.hpp>
#include <FMX.TMSFNCGraphicsTypes.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.TMSFNCEdit.hpp>
#include <FMX.TMSFNCStyles.hpp>
#include <FMX.TMSFNCUtils.hpp>
#include <FMX.Controls.Presentation.hpp>
#include <FMX.Controls.hpp>
#include <FMX.Types.hpp>
#include <System.Generics.Collections.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfnccolorwheel
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCRGBTrackBar;
class DELPHICLASS TTMSFNCImageColor;
struct TTMSFNCColorWheelHSColor;
class DELPHICLASS TTMSFNCCustomColorWheel;
class DELPHICLASS TTMSFNCColorWheel;
//-- type declarations -------------------------------------------------------
#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCRGBTrackBar : public Fmx::Stdctrls::TTrackBar
{
	typedef Fmx::Stdctrls::TTrackBar inherited;
	
private:
	HIDESBASE void __fastcall SetLeft(const float Value);
	HIDESBASE void __fastcall SetTop(const float Value);
	float __fastcall GetL();
	float __fastcall GetT();
	
public:
	__fastcall virtual TTMSFNCRGBTrackBar(System::Classes::TComponent* AOwner)/* overload */;
	__property float Left = {read=GetL, write=SetLeft};
	__property float Top = {read=GetT, write=SetTop};
public:
	/* TCustomTrack.Destroy */ inline __fastcall virtual ~TTMSFNCRGBTrackBar() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCImageColor : public Fmx::Tmsfncimage::TTMSFNCImage
{
	typedef Fmx::Tmsfncimage::TTMSFNCImage inherited;
	
private:
	bool FDPIChanged;
	bool FMouseDown;
	bool FImageLoaded;
	System::Uitypes::TAlphaColor FPixelColor;
	System::Classes::TNotifyEvent FOnColorChanged;
	float FX;
	float FY;
	Fmx::Graphics::TBitmapData FBmpDt;
	void __fastcall SetPixelColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetX(const float Value);
	void __fastcall SetY(const float Value);
	void __fastcall SetCoordinates(float AX, float AY);
	bool __fastcall PtInColorWheel(float X, float Y);
	
protected:
	virtual void __fastcall DoAfterDraw(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	virtual void __fastcall ChangeDPIScale(int M, int D);
	void __fastcall ColorChanged();
	void __fastcall BitmapLoaded(System::TObject* Sender);
	virtual void __fastcall HandleMouseDown(System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall HandleMouseMove(System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall HandleMouseUp(System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, float X, float Y);
	float __fastcall GetDPIScale();
	
public:
	__fastcall virtual TTMSFNCImageColor(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCImageColor();
	virtual void __fastcall Draw(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	void __fastcall MapPixels();
	void __fastcall UnmapPixels();
	System::Uitypes::TAlphaColor __fastcall XYToColor(float X, float Y);
	System::Types::TPointF __fastcall GetCenterPoint();
	float __fastcall GetRadius();
	__property float X = {read=FX, write=SetX};
	__property float Y = {read=FY, write=SetY};
	__property System::Uitypes::TAlphaColor PixelColor = {read=FPixelColor, write=SetPixelColor, default=-1};
	__property System::Classes::TNotifyEvent OnColorChanged = {read=FOnColorChanged, write=FOnColorChanged};
};

#pragma pack(pop)

struct DECLSPEC_DRECORD TTMSFNCColorWheelHSColor
{
public:
	double Hue;
	double Saturation;
};


typedef void __fastcall (__closure *TTMSFNCCustomColorWheelBeforeDrawSelectedColorPanelEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARectF, System::Uitypes::TAlphaColor ASelectedColor, bool &AAllow, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCCustomColorWheelAfterDrawSelectedColorPanelEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARectF, System::Uitypes::TAlphaColor ASelectedColor);

typedef void __fastcall (__closure *TTMSFNCCustomColorWheelSelectedColorChangedEvent)(System::TObject* Sender, System::Uitypes::TAlphaColor ASelectedColor);

typedef void __fastcall (__closure *TTMSFNCCustomColorWheelRValueChangedEvent)(System::TObject* Sender, int AR, System::Uitypes::TAlphaColor ASelectedColor);

typedef void __fastcall (__closure *TTMSFNCCustomColorWheelGValueChangedEvent)(System::TObject* Sender, int AG, System::Uitypes::TAlphaColor ASelectedColor);

typedef void __fastcall (__closure *TTMSFNCCustomColorWheelBValueChangedEvent)(System::TObject* Sender, int AB, System::Uitypes::TAlphaColor ASelectedColor);

class PASCALIMPLEMENTATION TTMSFNCCustomColorWheel : public Fmx::Tmsfnccustomcontrol::TTMSFNCCustomControl
{
	typedef Fmx::Tmsfnccustomcontrol::TTMSFNCCustomControl inherited;
	
private:
	TTMSFNCImageColor* FImage;
	Fmx::Tmsfncedit::TTMSFNCEdit* FREdit;
	Fmx::Tmsfncedit::TTMSFNCEdit* FGEdit;
	Fmx::Tmsfncedit::TTMSFNCEdit* FBEdit;
	Fmx::Tmsfncedit::TTMSFNCEdit* FHEXEdit;
	TTMSFNCRGBTrackBar* FRTrackBar;
	TTMSFNCRGBTrackBar* FGTrackBar;
	TTMSFNCRGBTrackBar* FBTrackBar;
	System::Uitypes::TAlphaColor FSelectedColor;
	int FGValue;
	int FRValue;
	int FBValue;
	TTMSFNCColorWheelHSColor FHSColor;
	TTMSFNCCustomColorWheelBValueChangedEvent FOnBValueChanged;
	TTMSFNCCustomColorWheelGValueChangedEvent FOnGValueChanged;
	TTMSFNCCustomColorWheelAfterDrawSelectedColorPanelEvent FOnAfterDrawSelectedColorPanel;
	TTMSFNCCustomColorWheelSelectedColorChangedEvent FOnSelectedColorChanged;
	TTMSFNCCustomColorWheelRValueChangedEvent FOnRValueChanged;
	TTMSFNCCustomColorWheelBeforeDrawSelectedColorPanelEvent FOnBeforeDrawSelectedColorPanel;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FFont;
	void __fastcall SetSelectedColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetBValue(const int Value);
	void __fastcall SetGValue(const int Value);
	void __fastcall SetRValue(const int Value);
	void __fastcall SetHEXValue(const System::UnicodeString Value);
	System::UnicodeString __fastcall GetHEXValue();
	bool __fastcall IsHEXValueStored();
	void __fastcall SetFnt(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	
protected:
	virtual void __fastcall Loaded();
	virtual void __fastcall ChangeDPIScale(int M, int D);
	virtual void __fastcall Draw(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	void __fastcall DrawColorPanel(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	void __fastcall DrawText(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	void __fastcall RFieldKeyDown(System::TObject* Sender, System::Word &Key, System::WideChar &KeyChar, System::Classes::TShiftState Shift);
	void __fastcall GFieldKeyDown(System::TObject* Sender, System::Word &Key, System::WideChar &KeyChar, System::Classes::TShiftState Shift);
	void __fastcall BFieldKeyDown(System::TObject* Sender, System::Word &Key, System::WideChar &KeyChar, System::Classes::TShiftState Shift);
	void __fastcall HEXFieldKeyDown(System::TObject* Sender, System::Word &Key, System::WideChar &KeyChar, System::Classes::TShiftState Shift);
	virtual void __fastcall DoBeforeDrawSelectedColorPanel(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARectF, System::Uitypes::TAlphaColor ASelectedColor, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoAfterDrawSelectedColorPanel(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARectF, System::Uitypes::TAlphaColor ASelectedColor);
	virtual void __fastcall DoSelectedColorChanged(System::Uitypes::TAlphaColor ASelectedColor);
	virtual void __fastcall DoRValueChanged(int AR, System::Uitypes::TAlphaColor ASelectedColor);
	virtual void __fastcall DoGValueChanged(int AG, System::Uitypes::TAlphaColor ASelectedColor);
	virtual void __fastcall DoBValueChanged(int AB, System::Uitypes::TAlphaColor ASelectedColor);
	void __fastcall ColorChanged(System::TObject* Sender);
	void __fastcall RTrackBarChanged(System::TObject* Sender);
	void __fastcall GTrackBarChanged(System::TObject* Sender);
	void __fastcall BTrackBarChanged(System::TObject* Sender);
	void __fastcall FillColorChanged(System::TObject* Sender);
	virtual void __fastcall ApplyStyle();
	virtual void __fastcall ResetToDefaultStyle();
	virtual void __fastcall UpdateControlAfterResize();
	void __fastcall SetIndicator();
	virtual System::UnicodeString __fastcall GetVersion();
	TTMSFNCColorWheelHSColor __fastcall RGBToHS(int AR, int AG, int AB);
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* Font = {read=FFont, write=SetFnt};
	__property System::Uitypes::TAlphaColor SelectedColor = {read=FSelectedColor, write=SetSelectedColor, default=-1};
	__property int RValue = {read=FRValue, write=SetRValue, default=255};
	__property int BValue = {read=FBValue, write=SetBValue, default=255};
	__property int GValue = {read=FGValue, write=SetGValue, default=255};
	__property System::UnicodeString HEXValue = {read=GetHEXValue, write=SetHEXValue, stored=IsHEXValueStored};
	__property TTMSFNCCustomColorWheelBeforeDrawSelectedColorPanelEvent OnBeforeDrawSelectedColorPanel = {read=FOnBeforeDrawSelectedColorPanel, write=FOnBeforeDrawSelectedColorPanel};
	__property TTMSFNCCustomColorWheelAfterDrawSelectedColorPanelEvent OnAfterDrawSelectedColorPanel = {read=FOnAfterDrawSelectedColorPanel, write=FOnAfterDrawSelectedColorPanel};
	__property TTMSFNCCustomColorWheelSelectedColorChangedEvent OnSelectedColorChanged = {read=FOnSelectedColorChanged, write=FOnSelectedColorChanged};
	__property TTMSFNCCustomColorWheelRValueChangedEvent OnRValueChanged = {read=FOnRValueChanged, write=FOnRValueChanged};
	__property TTMSFNCCustomColorWheelGValueChangedEvent OnGValueChanged = {read=FOnGValueChanged, write=FOnGValueChanged};
	__property TTMSFNCCustomColorWheelBValueChangedEvent OnBValueChanged = {read=FOnBValueChanged, write=FOnBValueChanged};
	
public:
	__fastcall virtual TTMSFNCCustomColorWheel(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCCustomColorWheel();
	int __fastcall ColorToRValue(System::Uitypes::TAlphaColor AColor);
	int __fastcall ColorToGValue(System::Uitypes::TAlphaColor AColor);
	int __fastcall ColorToBValue(System::Uitypes::TAlphaColor AColor);
	System::Uitypes::TAlphaColor __fastcall RGBToGraphicsColor(int R, int G, int B);
};


class PASCALIMPLEMENTATION TTMSFNCColorWheel : public TTMSFNCCustomColorWheel
{
	typedef TTMSFNCCustomColorWheel inherited;
	
__published:
	__property Font;
	__property Fill;
	__property Stroke;
	__property SelectedColor = {default=-1};
	__property RValue = {default=255};
	__property BValue = {default=255};
	__property GValue = {default=255};
	__property HEXValue;
	__property OnBeforeDrawSelectedColorPanel;
	__property OnAfterDrawSelectedColorPanel;
	__property OnSelectedColorChanged;
	__property OnRValueChanged;
	__property OnGValueChanged;
	__property OnBValueChanged;
public:
	/* TTMSFNCCustomColorWheel.Create */ inline __fastcall virtual TTMSFNCColorWheel(System::Classes::TComponent* AOwner) : TTMSFNCCustomColorWheel(AOwner) { }
	/* TTMSFNCCustomColorWheel.Destroy */ inline __fastcall virtual ~TTMSFNCColorWheel() { }
	
};


//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x1);
static constexpr System::Int8 BLD_VER = System::Int8(0x0);
}	/* namespace Tmsfnccolorwheel */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCCOLORWHEEL)
using namespace Fmx::Tmsfnccolorwheel;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfnccolorwheelHPP
