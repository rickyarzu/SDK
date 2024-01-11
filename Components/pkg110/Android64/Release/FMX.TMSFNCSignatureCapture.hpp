// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCSignatureCapture.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncsignaturecaptureHPP
#define Fmx_TmsfncsignaturecaptureHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Generics.Collections.hpp>
#include <System.UITypes.hpp>
#include <System.Classes.hpp>
#include <System.Types.hpp>
#include <FMX.TMSFNCCustomControl.hpp>
#include <FMX.Graphics.hpp>
#include <FMX.TMSFNCGraphicsTypes.hpp>
#include <FMX.TMSFNCGraphics.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <System.TypInfo.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>
#include <FMX.Controls.hpp>
#include <FMX.Types.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncsignaturecapture
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCSignatureCaptureStoredPoint;
class DELPHICLASS TTMSFNCSignatureCaptureClearPosition;
class DELPHICLASS TTMSFNCSignatureCaptureTextPosition;
class DELPHICLASS TTMSFNCSignatureCapturePoints;
class DELPHICLASS TTMSFNCCustomSignatureCapture;
class DELPHICLASS TTMSFNCSignatureCapture;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TTMSFNCSignatureCaptureStoredPoint : public System::TObject
{
	typedef System::TObject inherited;
	
public:
	float X;
	float Y;
	float PenWidth;
	bool DrawLine;
	System::Uitypes::TAlphaColor PenColor;
	System::UnicodeString __fastcall ToJSON()/* overload */;
	void __fastcall FromJSON(const System::UnicodeString Value);
	__property System::UnicodeString JSON = {read=ToJSON, write=FromJSON};
	System::UnicodeString __fastcall ToJSON(Fmx::Tmsfnctypes::TTMSFNCObjectExcludePropertyListArray AExcludedProperties)/* overload */;
	void __fastcall Log();
	void __fastcall SaveToJSONFile(const System::UnicodeString AFileName);
	void __fastcall LoadFromJSONFile(const System::UnicodeString AFileName);
	void __fastcall SaveToJSONStream(System::Classes::TStream* const AStream);
	void __fastcall LoadFromJSONStream(System::Classes::TStream* const AStream);
public:
	/* TObject.Create */ inline __fastcall TTMSFNCSignatureCaptureStoredPoint() : System::TObject() { }
	/* TObject.Destroy */ inline __fastcall virtual ~TTMSFNCSignatureCaptureStoredPoint() { }
	
};


enum DECLSPEC_DENUM TTMSFNCSignatureCaptureTextHintPosition : unsigned char { tpBottomCenter, tpBottomLeft, tpBottomRight, tpTopCenter, tpTopLeft, tpTopRight, tpXY, tpNone };

enum DECLSPEC_DENUM TTMSFNCSignatureCaptureClearSignPosition : unsigned char { cpBottomCenter, cpBottomLeft, cpBottomRight, cpTopCenter, cpTopLeft, cpTopRight, cpXY, cpNone };

class PASCALIMPLEMENTATION TTMSFNCSignatureCaptureClearPosition : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	Fmx::Tmsfnctypes::TTMSFNCBitmap* FImage;
	float FX;
	float FY;
	TTMSFNCSignatureCaptureClearSignPosition FPosition;
	System::Classes::TNotifyEvent FOnChange;
	void __fastcall SetImage(Fmx::Tmsfnctypes::TTMSFNCBitmap* const Value);
	void __fastcall SetPosition(const TTMSFNCSignatureCaptureClearSignPosition Value);
	void __fastcall SetX(const float Value);
	void __fastcall SetY(const float Value);
	bool __fastcall IsXStored();
	bool __fastcall IsYStored();
	
protected:
	void __fastcall ImageChanged(System::TObject* Sender);
	virtual void __fastcall Changed();
	
public:
	__fastcall TTMSFNCSignatureCaptureClearPosition();
	__fastcall virtual ~TTMSFNCSignatureCaptureClearPosition();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property float X = {read=FX, write=SetX, stored=IsXStored};
	__property float Y = {read=FY, write=SetY, stored=IsYStored};
	__property TTMSFNCSignatureCaptureClearSignPosition Position = {read=FPosition, write=SetPosition, default=1};
	__property Fmx::Tmsfnctypes::TTMSFNCBitmap* Image = {read=FImage, write=SetImage};
	__property System::Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
};


class PASCALIMPLEMENTATION TTMSFNCSignatureCaptureTextPosition : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	float FX;
	float FY;
	System::Classes::TNotifyEvent FOnChange;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FLine;
	TTMSFNCSignatureCaptureTextHintPosition FPosition;
	void __fastcall SetX(const float Value);
	void __fastcall SetY(const float Value);
	void __fastcall SetPosition(const TTMSFNCSignatureCaptureTextHintPosition Value);
	void __fastcall SetLine(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	bool __fastcall IsXStored();
	bool __fastcall IsYStored();
	
protected:
	virtual void __fastcall Changed();
	
public:
	__fastcall TTMSFNCSignatureCaptureTextPosition();
	__fastcall virtual ~TTMSFNCSignatureCaptureTextPosition();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property float X = {read=FX, write=SetX, stored=IsXStored};
	__property float Y = {read=FY, write=SetY, stored=IsYStored};
	__property TTMSFNCSignatureCaptureTextHintPosition Position = {read=FPosition, write=SetPosition, default=0};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* Line = {read=FLine, write=SetLine};
	__property System::Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
};


class PASCALIMPLEMENTATION TTMSFNCSignatureCapturePoints : public System::Generics::Collections::TObjectList__1<TTMSFNCSignatureCaptureStoredPoint*>
{
	typedef System::Generics::Collections::TObjectList__1<TTMSFNCSignatureCaptureStoredPoint*> inherited;
	
public:
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCSignatureCapture_TTMSFNCSignatureCaptureStoredPoint>.Create */ inline __fastcall TTMSFNCSignatureCapturePoints()/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCSignatureCaptureStoredPoint*>() { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCSignatureCapture_TTMSFNCSignatureCaptureStoredPoint>.Create */ inline __fastcall TTMSFNCSignatureCapturePoints(bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCSignatureCaptureStoredPoint*>(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCSignatureCapture_TTMSFNCSignatureCaptureStoredPoint>.Create */ inline __fastcall TTMSFNCSignatureCapturePoints(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCSignatureCaptureStoredPoint*> > AComparer, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCSignatureCaptureStoredPoint*>(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCSignatureCapture_TTMSFNCSignatureCaptureStoredPoint>.Create */ inline __fastcall TTMSFNCSignatureCapturePoints(System::Generics::Collections::TEnumerable__1<TTMSFNCSignatureCaptureStoredPoint*>* const Collection, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCSignatureCaptureStoredPoint*>(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCSignatureCapture_TTMSFNCSignatureCaptureStoredPoint>.Destroy */ inline __fastcall virtual ~TTMSFNCSignatureCapturePoints() { }
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCSignatureCapture_TTMSFNCSignatureCaptureStoredPoint>.Create */ inline __fastcall TTMSFNCSignatureCapturePoints(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCSignatureCaptureStoredPoint*> > AComparer)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCSignatureCaptureStoredPoint*>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCSignatureCapture_TTMSFNCSignatureCaptureStoredPoint>.Create */ inline __fastcall TTMSFNCSignatureCapturePoints(System::Generics::Collections::TEnumerable__1<TTMSFNCSignatureCaptureStoredPoint*>* const Collection)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCSignatureCaptureStoredPoint*>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCSignatureCapture_TTMSFNCSignatureCaptureStoredPoint>.Create */ inline __fastcall TTMSFNCSignatureCapturePoints(TTMSFNCSignatureCaptureStoredPoint* const *Values, const int Values_High)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCSignatureCaptureStoredPoint*>(Values, Values_High) { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCustomSignatureCapture : public Fmx::Tmsfnccustomcontrol::TTMSFNCCustomControl
{
	typedef Fmx::Tmsfnccustomcontrol::TTMSFNCCustomControl inherited;
	
private:
	bool FExport;
	Fmx::Graphics::TBitmap* FBmpStream;
	bool FDrawing;
	TTMSFNCSignatureCapturePoints* FSignaturePoints;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FPen;
	TTMSFNCSignatureCaptureTextPosition* FTextPosition;
	System::UnicodeString FText;
	TTMSFNCSignatureCaptureClearPosition* FClearSig;
	System::Types::TRectF FClearRect;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FFont;
	void __fastcall SetPen(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetTextPosition(TTMSFNCSignatureCaptureTextPosition* const Value);
	void __fastcall SetText(const System::UnicodeString Value);
	void __fastcall SetClearSig(TTMSFNCSignatureCaptureClearPosition* const Value);
	void __fastcall SetEmpty(const bool Value);
	void __fastcall SetFnt(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall WriteStringToStream(System::Classes::TStream* const Stream, const System::UnicodeString S);
	System::UnicodeString __fastcall ReadStringFromStream(System::Classes::TStream* const Stream);
	bool __fastcall IsTextStored();
	bool __fastcall GetEmpty();
	
protected:
	virtual void __fastcall ChangeDPIScale(int M, int D);
	void __fastcall ClearSignChanged(System::TObject* Sender);
	void __fastcall TextPositionChanged(System::TObject* Sender);
	virtual void __fastcall HandleMouseDown(System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall HandleMouseMove(System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall HandleMouseUp(System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall Draw(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	void __fastcall DrawSignText(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, System::Types::TRectF &ACRect);
	void __fastcall DrawClearIcon(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	void __fastcall DrawSignature(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics);
	virtual System::UnicodeString __fastcall GetVersion();
	System::Types::TRectF __fastcall GetClearRect(const System::Types::TRectF &ARect);
	virtual bool __fastcall IsAppearanceProperty(System::TObject* AObject, System::UnicodeString APropertyName, System::TTypeKind APropertyType);
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* Pen = {read=FPen, write=SetPen};
	__property System::UnicodeString Text = {read=FText, write=SetText, stored=IsTextStored};
	__property TTMSFNCSignatureCaptureTextPosition* TextPosition = {read=FTextPosition, write=SetTextPosition};
	__property TTMSFNCSignatureCaptureClearPosition* ClearSig = {read=FClearSig, write=SetClearSig};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* Font = {read=FFont, write=SetFnt};
	
public:
	__fastcall virtual TTMSFNCCustomSignatureCapture(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCCustomSignatureCapture();
	void __fastcall LoadFromStream(System::Classes::TStream* AStream);
	void __fastcall LoadFromFile(System::UnicodeString FileName);
	void __fastcall SaveToImageFile(System::UnicodeString FileName);
	void __fastcall SaveToImageStream(System::Classes::TStream* AStream);
	void __fastcall SaveToStream(System::Classes::TStream* AStream);
	void __fastcall SaveToFile(System::UnicodeString FileName);
	Fmx::Graphics::TBitmap* __fastcall GetImageFromStream(System::Classes::TStream* AStream);
	__property bool Empty = {read=GetEmpty, write=SetEmpty, nodefault};
	__property TTMSFNCSignatureCapturePoints* SignaturePoints = {read=FSignaturePoints};
};


class PASCALIMPLEMENTATION TTMSFNCSignatureCapture : public TTMSFNCCustomSignatureCapture
{
	typedef TTMSFNCCustomSignatureCapture inherited;
	
__published:
	__property Fill;
	__property Stroke;
	__property Font;
	__property Pen;
	__property Text;
	__property TextPosition;
	__property ClearSig;
public:
	/* TTMSFNCCustomSignatureCapture.Create */ inline __fastcall virtual TTMSFNCSignatureCapture(System::Classes::TComponent* AOwner) : TTMSFNCCustomSignatureCapture(AOwner) { }
	/* TTMSFNCCustomSignatureCapture.Destroy */ inline __fastcall virtual ~TTMSFNCSignatureCapture() { }
	
};


//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x1);
static constexpr System::Int8 BLD_VER = System::Int8(0x0);
}	/* namespace Tmsfncsignaturecapture */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCSIGNATURECAPTURE)
using namespace Fmx::Tmsfncsignaturecapture;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncsignaturecaptureHPP
