// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCAnalogTimeSelector.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncanalogtimeselectorHPP
#define Fmx_TmsfncanalogtimeselectorHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <FMX.Types.hpp>
#include <System.Types.hpp>
#include <System.UITypes.hpp>
#include <System.Classes.hpp>
#include <FMX.Controls.hpp>
#include <FMX.TMSFNCCustomControl.hpp>
#include <FMX.TMSFNCGraphics.hpp>
#include <FMX.TMSFNCGraphicsTypes.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.ExtCtrls.hpp>
#include <FMX.TMSFNCStyles.hpp>
#include <FMX.Graphics.hpp>
#include <FMX.TMSFNCUtils.hpp>
#include <System.Generics.Collections.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncanalogtimeselector
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCAnalogTimeSelectorAppearance;
class DELPHICLASS TTMSFNCAnalogTimeSelectorSettings;
class DELPHICLASS TTMSFNCCustomAnalogTimeSelector;
class DELPHICLASS TTMSFNCAnalogTimeSelector;
//-- type declarations -------------------------------------------------------
enum DECLSPEC_DENUM TTMSFNCAnalogTimeSelectorShape : unsigned char { wsCircle, wsRect, wsRoundRect };

enum DECLSPEC_DENUM TTMSFNCAnalogTimeSelectorTickMark : unsigned char { tmAll, tmHours, tmNone, tmQuartHours };

enum DECLSPEC_DENUM TTMSFNCAnalogTimeSelectorHourMarkStyle : unsigned char { hmsLine, hmsQuartDblLine };

enum DECLSPEC_DENUM TTMSFNCAnalogTimeSelectorPointerStyle : unsigned char { psLine, psShortLine, psPointer, psLineArrow };

enum DECLSPEC_DENUM TTMSFNCAnalogTimeSelectorStyle : unsigned char { wsClassic, wsFluorescent, wsEmerald, wsTower, wsFuchsia, wsBlack, wsBlackWhite, wsSuperNova, wsSports, wsSmooth, wsCustom };

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCAnalogTimeSelectorAppearance : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FStroke;
	TTMSFNCAnalogTimeSelectorShape FShape;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FHourMark;
	TTMSFNCAnalogTimeSelectorTickMark FTickMark;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FMinuteMark;
	float FHourMarkLength;
	float FMinuteMarkLength;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FHourFont;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FAMPMFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FAMPMStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FAMPMFont;
	bool FShowAMPM;
	TTMSFNCAnalogTimeSelectorPointerStyle FPointerStyle;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FMinutePointerShadow;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FHourPointerShadow;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FSecondPointer;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FMinutePointer;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FHourPointer;
	float FCenterPointSize;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FCenterPointFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FCenterPointStroke;
	bool FShowSecondPointer;
	bool FShowNumbers;
	System::Classes::TNotifyEvent FOnChange;
	TTMSFNCAnalogTimeSelectorHourMarkStyle FHourMarkStyle;
	System::Uitypes::TAlphaColor FCenterPointOuterColor;
	void __fastcall SetFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetShape(const TTMSFNCAnalogTimeSelectorShape Value);
	void __fastcall SetHourMark(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetMinuteMark(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetTickMark(const TTMSFNCAnalogTimeSelectorTickMark Value);
	void __fastcall SetHourMarkLength(const float Value);
	void __fastcall SetMinuteMarkLength(const float Value);
	void __fastcall SetHourFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetAMPMFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetAMPMFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetAMPMStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetShowAMPM(const bool Value);
	void __fastcall SetPointerStyle(const TTMSFNCAnalogTimeSelectorPointerStyle Value);
	void __fastcall SetHourPointerShadow(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetMinutePointerShadow(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetHourPointer(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetMinutePointer(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetSecondPointer(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetCenterPointFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetCenterPointSize(const float Value);
	void __fastcall SetCenterPointStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetShowSecondPointer(const bool Value);
	void __fastcall SetShowNumbers(const bool Value);
	void __fastcall SetHourMarkStyle(const TTMSFNCAnalogTimeSelectorHourMarkStyle Value);
	void __fastcall SetCenterPointOuterColor(const System::Uitypes::TAlphaColor Value);
	bool __fastcall IsHourMarkLengthStored();
	bool __fastcall IsMinuteMarkLengthStored();
	bool __fastcall IsCenterPointSizeStored();
	
protected:
	void __fastcall Changed();
	void __fastcall FillChanged(System::TObject* Sender);
	void __fastcall FontChanged(System::TObject* Sender);
	void __fastcall StrokeChanged(System::TObject* Sender);
	
public:
	__fastcall virtual TTMSFNCAnalogTimeSelectorAppearance();
	__fastcall virtual ~TTMSFNCAnalogTimeSelectorAppearance();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	void __fastcall InitializeDefault();
	__property System::Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
	
__published:
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* Fill = {read=FFill, write=SetFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* Stroke = {read=FStroke, write=SetStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* HourMark = {read=FHourMark, write=SetHourMark};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* HourFont = {read=FHourFont, write=SetHourFont};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* MinuteMark = {read=FMinuteMark, write=SetMinuteMark};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* AMPMFill = {read=FAMPMFill, write=SetAMPMFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* AMPMStroke = {read=FAMPMStroke, write=SetAMPMStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* AMPMFont = {read=FAMPMFont, write=SetAMPMFont};
	__property bool ShowAMPM = {read=FShowAMPM, write=SetShowAMPM, default=1};
	__property TTMSFNCAnalogTimeSelectorShape Shape = {read=FShape, write=SetShape, default=0};
	__property TTMSFNCAnalogTimeSelectorHourMarkStyle HourMarkStyle = {read=FHourMarkStyle, write=SetHourMarkStyle, default=0};
	__property float HourMarkLength = {read=FHourMarkLength, write=SetHourMarkLength, stored=IsHourMarkLengthStored};
	__property float MinuteMarkLength = {read=FMinuteMarkLength, write=SetMinuteMarkLength, stored=IsMinuteMarkLengthStored};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* HourPointer = {read=FHourPointer, write=SetHourPointer};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* MinutePointer = {read=FMinutePointer, write=SetMinutePointer};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* SecondPointer = {read=FSecondPointer, write=SetSecondPointer};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* HourPointerShadow = {read=FHourPointerShadow, write=SetHourPointerShadow};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* MinutePointerShadow = {read=FMinutePointerShadow, write=SetMinutePointerShadow};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* CenterPointFill = {read=FCenterPointFill, write=SetCenterPointFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* CenterPointStroke = {read=FCenterPointStroke, write=SetCenterPointStroke};
	__property System::Uitypes::TAlphaColor CenterPointOuterColor = {read=FCenterPointOuterColor, write=SetCenterPointOuterColor, default=0};
	__property float CenterPointSize = {read=FCenterPointSize, write=SetCenterPointSize, stored=IsCenterPointSizeStored};
	__property TTMSFNCAnalogTimeSelectorPointerStyle PointerStyle = {read=FPointerStyle, write=SetPointerStyle, default=0};
	__property TTMSFNCAnalogTimeSelectorTickMark TickMarks = {read=FTickMark, write=SetTickMark, default=0};
	__property bool ShowSecondPointer = {read=FShowSecondPointer, write=SetShowSecondPointer, default=0};
	__property bool ShowNumbers = {read=FShowNumbers, write=SetShowNumbers, default=1};
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCAnalogTimeSelectorSettings : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	bool FAuto;
	int FTimeOffset;
	bool FReadOnly;
	System::Classes::TNotifyEvent FOnChange;
	void __fastcall SetAuto(const bool Value);
	void __fastcall SetReadOnly(const bool Value);
	void __fastcall SetTimeOffset(const int Value);
	
protected:
	void __fastcall Changed();
	
public:
	__fastcall virtual TTMSFNCAnalogTimeSelectorSettings();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__property System::Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
	
__published:
	__property bool Auto = {read=FAuto, write=SetAuto, default=0};
	__property int TimeOffset = {read=FTimeOffset, write=SetTimeOffset, default=0};
	__property bool ReadOnly = {read=FReadOnly, write=SetReadOnly, default=0};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTMSFNCAnalogTimeSelectorSettings() { }
	
};

#pragma pack(pop)

typedef void __fastcall (__closure *TTMSFNCAnalogTimeSelectorBeforeDrawWatchBackgroundEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARectF, TTMSFNCAnalogTimeSelectorShape AShape, bool &AAllow, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCAnalogTimeSelectorAfterDrawWatchBackgroundEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARectF, TTMSFNCAnalogTimeSelectorShape AShape);

typedef void __fastcall (__closure *TTMSFNCAnalogTimeSelectorBeforeDrawTickMarkEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARectF, TTMSFNCAnalogTimeSelectorTickMark ATickMarks, float AHourMarkLength, float AMinuteMarkLength, bool &AAllow, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCAnalogTimeSelectorAfterDrawTickMarkEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARectF, TTMSFNCAnalogTimeSelectorTickMark ATickMarks, float AHourMarkLength, float AMinuteMarkLength);

typedef void __fastcall (__closure *TTMSFNCAnalogTimeSelectorBeforeDrawNumberEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARectF, int ANumber, bool &AAllow, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCAnalogTimeSelectorAfterDrawNumberEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARectF, int ANumber);

typedef void __fastcall (__closure *TTMSFNCAnalogTimeSelectorBeforeDrawAMPMEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARectF, bool AAM, bool &AAllow, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCAnalogTimeSelectorAfterDrawAMPMEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARectF, bool AAM);

typedef void __fastcall (__closure *TTMSFNCAnalogTimeSelectorBeforeDrawHourPointerEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TPointF &ACenterPoint, bool &AAllow, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCAnalogTimeSelectorAfterDrawHourPointerEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TPointF &ACenterPoint);

typedef void __fastcall (__closure *TTMSFNCAnalogTimeSelectorBeforeDrawMinutePointerEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TPointF &ACenterPoint, bool &AAllow, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCAnalogTimeSelectorAfterDrawMinutePointerEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TPointF &ACenterPoint);

typedef void __fastcall (__closure *TTMSFNCAnalogTimeSelectorBeforeDrawSecondPointerEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TPointF &ACenterPoint, bool &AAllow, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCAnalogTimeSelectorAfterDrawSecondPonterEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TPointF &ACenterPoint);

typedef void __fastcall (__closure *TTMSFNCAnalogTimeSelectorBeforeDrawCenterPointEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARectF, float ACenterPointSize, bool &AAllow, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCAnalogTimeSelectorAfterDrawCenterPointEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARectF, float ACenterPointSize);

typedef void __fastcall (__closure *TTMSFNCAnalogTimeSelectorSecondChangedEvent)(System::TObject* Sender, System::TTime ATime);

typedef void __fastcall (__closure *TTMSFNCAnalogTimeSelectorMinuteChangedEvent)(System::TObject* Sender, System::TTime ATime);

typedef void __fastcall (__closure *TTMSFNCAnalogTimeSelectorHourChangedEvent)(System::TObject* Sender, System::TTime ATime);

typedef void __fastcall (__closure *TTMSFNCAnalogTimeSelectorTimeChangedEvent)(System::TObject* Sender, System::TTime ATime);

class PASCALIMPLEMENTATION TTMSFNCCustomAnalogTimeSelector : public Fmx::Tmsfnccustomcontrol::TTMSFNCCustomControl
{
	typedef Fmx::Tmsfnccustomcontrol::TTMSFNCCustomControl inherited;
	
private:
	System::TTime FTime;
	Fmx::Types::TTimer* FWatchTimer;
	bool FMouseHourDown;
	bool FMouseMinuteDown;
	bool FAM;
	System::Word FPrevHour;
	System::Word FPrevMin;
	System::Word FPrevSec;
	System::Types::TRectF FAMRect;
	TTMSFNCAnalogTimeSelectorAppearance* FAppearance;
	TTMSFNCAnalogTimeSelectorSettings* FSettings;
	System::Classes::TNotifyEvent FOnChanged;
	TTMSFNCAnalogTimeSelectorBeforeDrawWatchBackgroundEvent FOnBeforeDrawBackground;
	TTMSFNCAnalogTimeSelectorAfterDrawWatchBackgroundEvent FOnAfterDrawBackground;
	TTMSFNCAnalogTimeSelectorBeforeDrawTickMarkEvent FOnBeforeDrawTickMark;
	TTMSFNCAnalogTimeSelectorAfterDrawTickMarkEvent FOnAfterDrawTickMark;
	TTMSFNCAnalogTimeSelectorBeforeDrawNumberEvent FOnBeforeDrawNumber;
	TTMSFNCAnalogTimeSelectorAfterDrawNumberEvent FOnAfterDrawNumber;
	TTMSFNCAnalogTimeSelectorBeforeDrawAMPMEvent FOnBeforeDrawAMPM;
	TTMSFNCAnalogTimeSelectorAfterDrawAMPMEvent FOnAfterDrawAMPM;
	TTMSFNCAnalogTimeSelectorAfterDrawHourPointerEvent FOnAfterDrawHourPointer;
	TTMSFNCAnalogTimeSelectorBeforeDrawHourPointerEvent FOnBeforeDrawHourPointer;
	TTMSFNCAnalogTimeSelectorAfterDrawMinutePointerEvent FOnAfterDrawMinutePointer;
	TTMSFNCAnalogTimeSelectorBeforeDrawMinutePointerEvent FOnBeforeDrawMinutePointer;
	TTMSFNCAnalogTimeSelectorBeforeDrawSecondPointerEvent FOnBeforeDrawSecondPointer;
	TTMSFNCAnalogTimeSelectorAfterDrawSecondPonterEvent FOnAfterDrawSecondPointer;
	TTMSFNCAnalogTimeSelectorAfterDrawCenterPointEvent FOnAfterDrawCenterPoint;
	TTMSFNCAnalogTimeSelectorBeforeDrawCenterPointEvent FOnBeforeDrawCenterPoint;
	TTMSFNCAnalogTimeSelectorMinuteChangedEvent FOnMinuteChanged;
	TTMSFNCAnalogTimeSelectorHourChangedEvent FOnHourChanged;
	TTMSFNCAnalogTimeSelectorSecondChangedEvent FOnSecondChanged;
	TTMSFNCAnalogTimeSelectorTimeChangedEvent FOnTimeChanged;
	TTMSFNCAnalogTimeSelectorStyle FStyle;
	bool FFollowMouse;
	Fmx::Tmsfncgraphicstypes::TTMSFNCAppearanceGlobalFont* FGlobalFont;
	void __fastcall SetTime(const System::TTime Value);
	void __fastcall SetAM(const bool Value);
	void __fastcall SetAppearance(TTMSFNCAnalogTimeSelectorAppearance* const Value);
	void __fastcall SetSettings(TTMSFNCAnalogTimeSelectorSettings* const Value);
	void __fastcall SetStyle(const TTMSFNCAnalogTimeSelectorStyle Value);
	void __fastcall SetFollowMouse(const bool Value);
	bool __fastcall PtInCircle(const System::Types::TPointF &APointF, const System::Types::TPointF &ACPoint, float ARadius);
	void __fastcall SetGlobalFont(Fmx::Tmsfncgraphicstypes::TTMSFNCAppearanceGlobalFont* const Value);
	
protected:
	virtual void __fastcall ChangeDPIScale(int M, int D);
	void __fastcall Changed();
	void __fastcall AppearanceChanged(System::TObject* Sender);
	void __fastcall SettingsChanged(System::TObject* Sender);
	void __fastcall OnWatchTimer(System::TObject* Sender);
	virtual void __fastcall Draw(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARectF);
	void __fastcall DrawWatchBackground(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARectF);
	void __fastcall DrawTickMarks(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARectF);
	void __fastcall DrawNumbers(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARectF);
	void __fastcall DrawAMPM(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARectF);
	void __fastcall DrawNeedles(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARectF);
	virtual void __fastcall DoBeforeDrawWatchBackground(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARectF, TTMSFNCAnalogTimeSelectorShape AShape, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoAfterDrawWatchBackground(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARectF, TTMSFNCAnalogTimeSelectorShape AShape);
	virtual void __fastcall DoBeforeDrawTickMark(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARectF, TTMSFNCAnalogTimeSelectorTickMark ATickMarks, float AHourMarkLength, float AMinuteMarkLength, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoAfterDrawTickMark(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARectF, TTMSFNCAnalogTimeSelectorTickMark ATickMarks, float AHourMarkLength, float AMinuteMarkLength);
	virtual void __fastcall DoBeforeDrawNumber(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARectF, int ANumber, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoAfterDrawNumber(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARectF, int ANumber);
	virtual void __fastcall DoBeforeDrawAMPM(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARectF, bool AAM, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoAfterDrawAMPM(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARectF, bool AAM);
	virtual void __fastcall DoBeforeDrawHourPointer(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TPointF &ACenterPoint, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoAfterDrawHourPointer(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TPointF &ACenterPoint);
	virtual void __fastcall DoBeforeDrawMinutePointer(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TPointF &ACenterPoint, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoAfterDrawMinutePointer(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TPointF &ACenterPoint);
	virtual void __fastcall DoBeforeDrawSecondPointer(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TPointF &ACenterPoint, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoAfterDrawSecondPonter(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TPointF &ACenterPoint);
	virtual void __fastcall DoBeforeDrawCenterPoint(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARectF, float ACenterPointSize, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoAfterDrawCenterPoint(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARectF, float ACenterPointSize);
	virtual void __fastcall DoSecondChanged(System::TTime ATime);
	virtual void __fastcall DoMinuteChanged(System::TTime ATime);
	virtual void __fastcall DoHourChanged(System::TTime ATime);
	virtual void __fastcall DoTimeChanged(System::TTime ATime);
	virtual void __fastcall HandleMouseDown(System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall HandleMouseUp(System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall HandleMouseMove(System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall HandleKeyDown(System::Word &Key, System::Classes::TShiftState Shift);
	virtual void __fastcall ApplyStyle();
	virtual void __fastcall ResetToDefaultStyle();
	virtual System::UnicodeString __fastcall GetVersion();
	System::Types::TRectF __fastcall GetWatchRect(const System::Types::TRectF &ARectF);
	System::Types::TPointF __fastcall GetCenterPoint(const System::Types::TRectF &ARectF);
	float __fastcall GetRadius(const System::Types::TRectF &ARectF);
	System::Types::TRectF __fastcall GetAMPMRect(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARectF);
	virtual void __fastcall SetFonts(Fmx::Tmsfncgraphicstypes::TTMSFNCAppearanceGlobalFontType ASetType);
	__property System::TTime Time = {read=FTime, write=SetTime};
	__property bool AM = {read=FAM, write=SetAM, default=1};
	__property TTMSFNCAnalogTimeSelectorAppearance* Appearance = {read=FAppearance, write=SetAppearance};
	__property TTMSFNCAnalogTimeSelectorSettings* Settings = {read=FSettings, write=SetSettings};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCAppearanceGlobalFont* GlobalFont = {read=FGlobalFont, write=SetGlobalFont};
	__property System::Classes::TNotifyEvent OnChanged = {read=FOnChanged, write=FOnChanged};
	__property TTMSFNCAnalogTimeSelectorBeforeDrawWatchBackgroundEvent OnBeforeDrawBackground = {read=FOnBeforeDrawBackground, write=FOnBeforeDrawBackground};
	__property TTMSFNCAnalogTimeSelectorAfterDrawWatchBackgroundEvent OnAfterDrawBackground = {read=FOnAfterDrawBackground, write=FOnAfterDrawBackground};
	__property TTMSFNCAnalogTimeSelectorBeforeDrawTickMarkEvent OnBeforeDrawTickMark = {read=FOnBeforeDrawTickMark, write=FOnBeforeDrawTickMark};
	__property TTMSFNCAnalogTimeSelectorAfterDrawTickMarkEvent OnAfterDrawTickMark = {read=FOnAfterDrawTickMark, write=FOnAfterDrawTickMark};
	__property TTMSFNCAnalogTimeSelectorBeforeDrawNumberEvent OnBeforeDrawNumber = {read=FOnBeforeDrawNumber, write=FOnBeforeDrawNumber};
	__property TTMSFNCAnalogTimeSelectorAfterDrawNumberEvent OnAfterDrawNumber = {read=FOnAfterDrawNumber, write=FOnAfterDrawNumber};
	__property TTMSFNCAnalogTimeSelectorBeforeDrawAMPMEvent OnBeforeDrawAMPM = {read=FOnBeforeDrawAMPM, write=FOnBeforeDrawAMPM};
	__property TTMSFNCAnalogTimeSelectorAfterDrawAMPMEvent OnAfterDrawAMPM = {read=FOnAfterDrawAMPM, write=FOnAfterDrawAMPM};
	__property TTMSFNCAnalogTimeSelectorBeforeDrawHourPointerEvent OnBeforeDrawHourPointer = {read=FOnBeforeDrawHourPointer, write=FOnBeforeDrawHourPointer};
	__property TTMSFNCAnalogTimeSelectorAfterDrawHourPointerEvent OnAfterDrawHourPointer = {read=FOnAfterDrawHourPointer, write=FOnAfterDrawHourPointer};
	__property TTMSFNCAnalogTimeSelectorBeforeDrawMinutePointerEvent OnBeforeDrawMinutePointer = {read=FOnBeforeDrawMinutePointer, write=FOnBeforeDrawMinutePointer};
	__property TTMSFNCAnalogTimeSelectorAfterDrawMinutePointerEvent OnAfterDrawMinutePointer = {read=FOnAfterDrawMinutePointer, write=FOnAfterDrawMinutePointer};
	__property TTMSFNCAnalogTimeSelectorBeforeDrawSecondPointerEvent OnBeforeDrawSecondPointer = {read=FOnBeforeDrawSecondPointer, write=FOnBeforeDrawSecondPointer};
	__property TTMSFNCAnalogTimeSelectorAfterDrawSecondPonterEvent OnAfterDrawSecondPointer = {read=FOnAfterDrawSecondPointer, write=FOnAfterDrawSecondPointer};
	__property TTMSFNCAnalogTimeSelectorBeforeDrawCenterPointEvent OnBeforeDrawCenterPoint = {read=FOnBeforeDrawCenterPoint, write=FOnBeforeDrawCenterPoint};
	__property TTMSFNCAnalogTimeSelectorAfterDrawCenterPointEvent OnAfterDrawCenterPoint = {read=FOnAfterDrawCenterPoint, write=FOnAfterDrawCenterPoint};
	__property TTMSFNCAnalogTimeSelectorSecondChangedEvent OnSecondChanged = {read=FOnSecondChanged, write=FOnSecondChanged};
	__property TTMSFNCAnalogTimeSelectorMinuteChangedEvent OnMinuteChanged = {read=FOnMinuteChanged, write=FOnMinuteChanged};
	__property TTMSFNCAnalogTimeSelectorHourChangedEvent OnHourChanged = {read=FOnHourChanged, write=FOnHourChanged};
	__property TTMSFNCAnalogTimeSelectorTimeChangedEvent OnTimeChanged = {read=FOnTimeChanged, write=FOnTimeChanged};
	__property TTMSFNCAnalogTimeSelectorStyle Style = {read=FStyle, write=SetStyle, default=0};
	__property bool FollowMouse = {read=FFollowMouse, write=SetFollowMouse, default=1};
	
public:
	__fastcall virtual TTMSFNCCustomAnalogTimeSelector(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCCustomAnalogTimeSelector();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	void __fastcall Initialize();
	int __fastcall XYToHour(float X, float Y);
	int __fastcall XYToMinute(float X, float Y);
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


class PASCALIMPLEMENTATION TTMSFNCAnalogTimeSelector : public TTMSFNCCustomAnalogTimeSelector
{
	typedef TTMSFNCCustomAnalogTimeSelector inherited;
	
__published:
	__property Fill;
	__property Stroke;
	__property Appearance;
	__property FollowMouse = {default=1};
	__property Settings;
	__property Time = {default=0};
	__property Style = {default=0};
	__property GlobalFont;
	__property OnChanged;
	__property OnSecondChanged;
	__property OnMinuteChanged;
	__property OnHourChanged;
	__property OnTimeChanged;
	__property OnBeforeDrawBackground;
	__property OnAfterDrawBackground;
	__property OnBeforeDrawTickMark;
	__property OnAfterDrawTickMark;
	__property OnBeforeDrawNumber;
	__property OnAfterDrawNumber;
	__property OnBeforeDrawAMPM;
	__property OnAfterDrawAMPM;
	__property OnBeforeDrawHourPointer;
	__property OnAfterDrawHourPointer;
	__property OnBeforeDrawMinutePointer;
	__property OnAfterDrawMinutePointer;
	__property OnBeforeDrawSecondPointer;
	__property OnAfterDrawSecondPointer;
	__property OnBeforeDrawCenterPoint;
	__property OnAfterDrawCenterPoint;
public:
	/* TTMSFNCCustomAnalogTimeSelector.Create */ inline __fastcall virtual TTMSFNCAnalogTimeSelector(System::Classes::TComponent* AOwner) : TTMSFNCCustomAnalogTimeSelector(AOwner) { }
	/* TTMSFNCCustomAnalogTimeSelector.Destroy */ inline __fastcall virtual ~TTMSFNCAnalogTimeSelector() { }
	
};


//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x2);
static constexpr System::Int8 BLD_VER = System::Int8(0x0);
}	/* namespace Tmsfncanalogtimeselector */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCANALOGTIMESELECTOR)
using namespace Fmx::Tmsfncanalogtimeselector;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncanalogtimeselectorHPP
