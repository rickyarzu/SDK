// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCGridCell.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncgridcellHPP
#define Fmx_TmsfncgridcellHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <FMX.TMSFNCGraphics.hpp>
#include <FMX.TMSFNCBitmapContainer.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.Controls.hpp>
#include <FMX.TMSFNCGraphicsTypes.hpp>
#include <System.UITypes.hpp>
#include <System.Generics.Collections.hpp>
#include <System.Types.hpp>
#include <FMX.StdCtrls.hpp>
#include <FMX.Graphics.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncgridcell
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCGridCellLayout;
class DELPHICLASS TTMSFNCGridCellProgressLayout;
class DELPHICLASS TTMSFNCGridCell;
class DELPHICLASS TTMSFNCBaseCheckGridCell;
class DELPHICLASS TTMSFNCRadioGridCell;
class DELPHICLASS TTMSFNCCheckGridCell;
class DELPHICLASS TTMSFNCButtonGridCell;
class DELPHICLASS TTMSFNCProgressGridCell;
class DELPHICLASS TTMSFNCCommentGridCell;
class DELPHICLASS TTMSFNCFixedGridCell;
class DELPHICLASS TTMSFNCNodeGridCell;
class DELPHICLASS TTMSFNCBitmapGridCell;
//-- type declarations -------------------------------------------------------
enum DECLSPEC_DENUM TTMSFNCGridNodeState : unsigned char { nsClosed, nsOpen };

enum DECLSPEC_DENUM TTMSFNCGridSortKind : unsigned char { skNone, skAscending, skDescending };

class PASCALIMPLEMENTATION TTMSFNCGridCellLayout : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsSides FSides;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign FVerticalTextAlign;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FFont;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign FTextAlign;
	bool FWordWrapping;
	System::Classes::TNotifyEvent FOnChange;
	void __fastcall SetFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetSides(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsSides Value);
	void __fastcall SetStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetTextAlign(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign Value);
	void __fastcall SetVerticalTextAlign(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign Value);
	void __fastcall SetWordWrapping(const bool Value);
	
protected:
	void __fastcall Changed();
	void __fastcall FillChanged(System::TObject* Sender);
	void __fastcall FontChanged(System::TObject* Sender);
	void __fastcall StrokeChanged(System::TObject* Sender);
	
public:
	__fastcall TTMSFNCGridCellLayout();
	__fastcall virtual ~TTMSFNCGridCellLayout();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsSides Sides = {read=FSides, write=SetSides, default=15};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* Fill = {read=FFill, write=SetFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* Stroke = {read=FStroke, write=SetStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* Font = {read=FFont, write=SetFont};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign TextAlign = {read=FTextAlign, write=SetTextAlign, default=1};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign VerticalTextAlign = {read=FVerticalTextAlign, write=SetVerticalTextAlign, default=0};
	__property bool WordWrapping = {read=FWordWrapping, write=SetWordWrapping, default=0};
	__property System::Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
};


class PASCALIMPLEMENTATION TTMSFNCGridCellProgressLayout : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	System::Uitypes::TAlphaColor FTextColor;
	System::Uitypes::TAlphaColor FColor;
	System::UnicodeString FFormat;
	System::Classes::TNotifyEvent FOnChange;
	bool FShowText;
	void __fastcall SetColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetTextColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetFormat(const System::UnicodeString Value);
	void __fastcall SetShowText(const bool Value);
	
protected:
	void __fastcall Changed();
	
public:
	__fastcall TTMSFNCGridCellProgressLayout();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property System::Uitypes::TAlphaColor Color = {read=FColor, write=SetColor, default=-6632142};
	__property System::Uitypes::TAlphaColor TextColor = {read=FTextColor, write=SetTextColor, default=-16777216};
	__property System::UnicodeString Format = {read=FFormat, write=SetFormat};
	__property bool ShowText = {read=FShowText, write=SetShowText, default=1};
	__property System::Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTMSFNCGridCellProgressLayout() { }
	
};


typedef void __fastcall (__closure *TTMSFNCCellBeforeDraw)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, System::Types::TRectF &ARect, System::Types::TRectF &ATextRect, bool &ADrawText, bool &ADrawBackGround, bool &ADrawBorder, bool &AllowDraw);

typedef void __fastcall (__closure *TTMSFNCCellAfterDraw)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, const System::Types::TRectF &ATextRect);

enum DECLSPEC_DENUM TTMSFNCGridCellControlPosition : unsigned char { gcpLeft, gcpTop, gcpRight, gcpBottom, gcpCenter };

class PASCALIMPLEMENTATION TTMSFNCGridCell : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	System::Classes::TComponent* FOwner;
	System::UnicodeString FText;
	TTMSFNCGridCellLayout* FLayout;
	Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* FBitmapContainer;
	bool FDisplayHTMLFormatting;
	float FWidth;
	float FHeight;
	float FTop;
	float FLeft;
	Fmx::Graphics::TBitmap* FControlBitmap;
	bool FControlEnabled;
	TTMSFNCCellBeforeDraw FOnBeforeDraw;
	TTMSFNCCellAfterDraw FOnAfterDraw;
	System::Classes::TNotifyEvent FOnControlClick;
	bool FControlStretched;
	TTMSFNCGridCellControlPosition FControlPosition;
	bool FOptimizedHTMLDrawing;
	float FScaleFactor;
	int FAngle;
	virtual void __fastcall SetText(const System::UnicodeString Value);
	virtual void __fastcall SetLayout(TTMSFNCGridCellLayout* const Value);
	virtual void __fastcall SetDisplayHTMLFormatting(const bool Value);
	virtual void __fastcall SetHeight(const float Value);
	virtual void __fastcall SetWidth(const float Value);
	virtual void __fastcall SetLeft(const float Value);
	virtual void __fastcall SetTop(const float Value);
	virtual void __fastcall SetControlBitmap(Fmx::Graphics::TBitmap* const Value);
	virtual Fmx::Graphics::TBitmap* __fastcall GetControlBitmap();
	void __fastcall SetControlEnabled(const bool Value);
	void __fastcall SetAngle(const int Value);
	
protected:
	void __fastcall Changed(System::TObject* Sender);
	void __fastcall DoControlClick(System::TObject* Sender);
	virtual void __fastcall HandleControlMouseDown(System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall HandleControlMouseUp(System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall HandleControlMouseMove(System::Classes::TShiftState Shift, float X, float Y, System::Uitypes::TCursor &ACursor);
	void __fastcall DoBeforeDraw(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, System::Types::TRectF &ARect, System::Types::TRectF &ATextRect, bool &ADrawText, bool &ADrawBackGround, bool &ADrawBorder, bool &AllowDraw);
	void __fastcall DoAfterDraw(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, const System::Types::TRectF &ATextRect);
	
public:
	bool __fastcall IsHTML();
	virtual float __fastcall GetTextWidth();
	virtual float __fastcall GetTextHeight();
	System::UnicodeString __fastcall XYToAnchor(float X, float Y);
	System::UnicodeString __fastcall GetStrippedHTMLText();
	virtual float __fastcall GetControlWidth();
	virtual float __fastcall GetControlHeight();
	virtual System::Types::TRectF __fastcall GetRealTextRect(bool AAbsolute = false);
	virtual System::Types::TRectF __fastcall GetTextRect(bool AAbsolute = false);
	virtual System::Types::TRectF __fastcall GetControlRect(bool AAbsolute = false);
	virtual void __fastcall HandleMouseMove(System::Classes::TShiftState Shift, float X, float Y, bool &AHandled, System::Uitypes::TCursor &ACursor);
	virtual void __fastcall HandleMouseDown(System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, float X, float Y, bool &AHandled);
	virtual void __fastcall HandleMouseUp(System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, float X, float Y, bool &AHandled);
	virtual void __fastcall Draw(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, bool ADrawText, bool ADrawBackGround, bool ADrawBorder);
	virtual void __fastcall DrawControl(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	void __fastcall AssignLayout(TTMSFNCGridCellLayout* Source);
	__property Fmx::Graphics::TBitmap* ControlBitmap = {read=GetControlBitmap, write=SetControlBitmap};
	__property bool ControlEnabled = {read=FControlEnabled, write=SetControlEnabled, nodefault};
	__property System::UnicodeString Text = {read=FText, write=SetText};
	__property float ScaleFactor = {read=FScaleFactor, write=FScaleFactor};
	__property bool DisplayHTMLFormatting = {read=FDisplayHTMLFormatting, write=SetDisplayHTMLFormatting, default=1};
	__property TTMSFNCGridCellLayout* Layout = {read=FLayout, write=SetLayout};
	__property Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* BitmapContainer = {read=FBitmapContainer, write=FBitmapContainer};
	__property bool OptimizedHTMLDrawing = {read=FOptimizedHTMLDrawing, write=FOptimizedHTMLDrawing, nodefault};
	__property float Width = {read=FWidth, write=SetWidth};
	__property float Height = {read=FHeight, write=SetHeight};
	__property int Angle = {read=FAngle, write=SetAngle, nodefault};
	__property float Left = {read=FLeft, write=SetLeft};
	__property float Top = {read=FTop, write=SetTop};
	__property bool ControlStretched = {read=FControlStretched, write=FControlStretched, default=0};
	__property TTMSFNCGridCellControlPosition ControlPosition = {read=FControlPosition, write=FControlPosition, default=0};
	__property TTMSFNCCellBeforeDraw OnBeforeDraw = {read=FOnBeforeDraw, write=FOnBeforeDraw};
	__property TTMSFNCCellAfterDraw OnAfterDraw = {read=FOnAfterDraw, write=FOnAfterDraw};
	__property System::Classes::TNotifyEvent OnControlClick = {read=FOnControlClick, write=FOnControlClick};
	__fastcall virtual TTMSFNCGridCell(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCGridCell();
};


_DECLARE_METACLASS(System::TMetaClass, TTMSFNCGridCellClass);

class PASCALIMPLEMENTATION TTMSFNCBaseCheckGridCell : public TTMSFNCGridCell
{
	typedef TTMSFNCGridCell inherited;
	
private:
	bool FChecked;
	System::Classes::TNotifyEvent FOnCheckChanged;
	void __fastcall SetChecked(const bool Value);
	
protected:
	virtual void __fastcall HandleControlMouseUp(System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall DoCheckChanged(System::TObject* Sender);
	
public:
	virtual float __fastcall GetControlWidth();
	virtual float __fastcall GetControlHeight();
	
__published:
	__property bool Checked = {read=FChecked, write=SetChecked, default=0};
	__property System::Classes::TNotifyEvent OnCheckChanged = {read=FOnCheckChanged, write=FOnCheckChanged};
public:
	/* TTMSFNCGridCell.Create */ inline __fastcall virtual TTMSFNCBaseCheckGridCell(System::Classes::TComponent* AOwner) : TTMSFNCGridCell(AOwner) { }
	/* TTMSFNCGridCell.Destroy */ inline __fastcall virtual ~TTMSFNCBaseCheckGridCell() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCRadioGridCell : public TTMSFNCBaseCheckGridCell
{
	typedef TTMSFNCBaseCheckGridCell inherited;
	
public:
	/* TTMSFNCGridCell.Create */ inline __fastcall virtual TTMSFNCRadioGridCell(System::Classes::TComponent* AOwner) : TTMSFNCBaseCheckGridCell(AOwner) { }
	/* TTMSFNCGridCell.Destroy */ inline __fastcall virtual ~TTMSFNCRadioGridCell() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCheckGridCell : public TTMSFNCBaseCheckGridCell
{
	typedef TTMSFNCBaseCheckGridCell inherited;
	
public:
	/* TTMSFNCGridCell.Create */ inline __fastcall virtual TTMSFNCCheckGridCell(System::Classes::TComponent* AOwner) : TTMSFNCBaseCheckGridCell(AOwner) { }
	/* TTMSFNCGridCell.Destroy */ inline __fastcall virtual ~TTMSFNCCheckGridCell() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCButtonGridCell : public TTMSFNCGridCell
{
	typedef TTMSFNCGridCell inherited;
	
private:
	bool FButtonDown;
	int FButtonWidth;
	System::UnicodeString FButtonText;
	int FButtonHeight;
	void __fastcall SetButtonText(const System::UnicodeString Value);
	void __fastcall SetButtonWidth(const int Value);
	void __fastcall SetButtonHeight(const int Value);
	
protected:
	virtual void __fastcall HandleControlMouseDown(System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall HandleControlMouseUp(System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, float X, float Y);
	
public:
	virtual float __fastcall GetControlWidth();
	virtual float __fastcall GetControlHeight();
	__fastcall virtual TTMSFNCButtonGridCell(System::Classes::TComponent* AOwner);
	virtual void __fastcall DrawControl(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics);
	
__published:
	__property System::UnicodeString ButtonText = {read=FButtonText, write=SetButtonText};
	__property int ButtonWidth = {read=FButtonWidth, write=SetButtonWidth, default=24};
	__property int ButtonHeight = {read=FButtonHeight, write=SetButtonHeight, default=20};
public:
	/* TTMSFNCGridCell.Destroy */ inline __fastcall virtual ~TTMSFNCButtonGridCell() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCProgressGridCell : public TTMSFNCGridCell
{
	typedef TTMSFNCGridCell inherited;
	
private:
	float FValue;
	System::Uitypes::TAlphaColor FColor;
	bool FShowText;
	System::Uitypes::TAlphaColor FTextColor;
	System::UnicodeString FFormat;
	void __fastcall SetValue(const float Value);
	void __fastcall SetColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetShowText(const bool Value);
	void __fastcall SetTextColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetFormat(const System::UnicodeString Value);
	
public:
	virtual void __fastcall Draw(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, bool ADrawText, bool ADrawBackGround, bool ADrawBorder);
	__fastcall virtual TTMSFNCProgressGridCell(System::Classes::TComponent* AOwner);
	
__published:
	__property float Value = {read=FValue, write=SetValue};
	__property System::Uitypes::TAlphaColor Color = {read=FColor, write=SetColor, default=-6632142};
	__property System::Uitypes::TAlphaColor TextColor = {read=FTextColor, write=SetTextColor, default=-16777216};
	__property bool ShowText = {read=FShowText, write=SetShowText, default=1};
	__property System::UnicodeString Format = {read=FFormat, write=SetFormat};
public:
	/* TTMSFNCGridCell.Destroy */ inline __fastcall virtual ~TTMSFNCProgressGridCell() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCommentGridCell : public TTMSFNCGridCell
{
	typedef TTMSFNCGridCell inherited;
	
private:
	System::Uitypes::TAlphaColor FCommentColor;
	System::UnicodeString FCommentText;
	System::Uitypes::TAlphaColor FCommentTextColor;
	
protected:
	virtual bool __fastcall PtInComment(float X, float Y);
	
public:
	__fastcall virtual TTMSFNCCommentGridCell(System::Classes::TComponent* AOwner);
	virtual void __fastcall HandleMouseDown(System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, float X, float Y, bool &AHandled);
	virtual void __fastcall HandleMouseMove(System::Classes::TShiftState Shift, float X, float Y, bool &AHandled, System::Uitypes::TCursor &ACursor);
	virtual void __fastcall HandleMouseUp(System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, float X, float Y, bool &AHandled);
	virtual void __fastcall Draw(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, bool ADrawText, bool ADrawBackGround, bool ADrawBorder);
	
__published:
	__property System::UnicodeString CommentText = {read=FCommentText, write=FCommentText};
	__property System::Uitypes::TAlphaColor CommentColor = {read=FCommentColor, write=FCommentColor, default=-65536};
	__property System::Uitypes::TAlphaColor CommentTextColor = {read=FCommentTextColor, write=FCommentTextColor, default=-16777216};
public:
	/* TTMSFNCGridCell.Destroy */ inline __fastcall virtual ~TTMSFNCCommentGridCell() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCFixedGridCell : public TTMSFNCGridCell
{
	typedef TTMSFNCGridCell inherited;
	
private:
	bool FShowDropDownButton;
	int FSortIndex;
	TTMSFNCGridSortKind FSortKind;
	int FSizeMargin;
	
protected:
	virtual bool __fastcall PtInDropDown(float X, float Y);
	
public:
	__fastcall virtual TTMSFNCFixedGridCell(System::Classes::TComponent* AOwner);
	virtual void __fastcall HandleMouseDown(System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, float X, float Y, bool &AHandled);
	virtual void __fastcall HandleMouseMove(System::Classes::TShiftState Shift, float X, float Y, bool &AHandled, System::Uitypes::TCursor &ACursor);
	virtual void __fastcall HandleMouseUp(System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, float X, float Y, bool &AHandled);
	virtual void __fastcall Draw(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, bool ADrawText, bool ADrawBackGround, bool ADrawBorder);
	virtual void __fastcall DrawSortIndicator(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	
__published:
	__property bool ShowDropDownButton = {read=FShowDropDownButton, write=FShowDropDownButton, default=0};
	__property TTMSFNCGridSortKind SortKind = {read=FSortKind, write=FSortKind, default=2};
	__property int SortIndex = {read=FSortIndex, write=FSortIndex, default=-1};
	__property int SizeMargin = {read=FSizeMargin, write=FSizeMargin, default=0};
public:
	/* TTMSFNCGridCell.Destroy */ inline __fastcall virtual ~TTMSFNCFixedGridCell() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCNodeGridCell : public TTMSFNCGridCell
{
	typedef TTMSFNCGridCell inherited;
	
private:
	TTMSFNCGridNodeState FState;
	
protected:
	virtual void __fastcall HandleControlMouseMove(System::Classes::TShiftState Shift, float X, float Y, System::Uitypes::TCursor &ACursor);
	
__published:
	__property TTMSFNCGridNodeState State = {read=FState, write=FState, default=0};
public:
	/* TTMSFNCGridCell.Create */ inline __fastcall virtual TTMSFNCNodeGridCell(System::Classes::TComponent* AOwner) : TTMSFNCGridCell(AOwner) { }
	/* TTMSFNCGridCell.Destroy */ inline __fastcall virtual ~TTMSFNCNodeGridCell() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCBitmapGridCell : public TTMSFNCGridCell
{
	typedef TTMSFNCGridCell inherited;
	
private:
	Fmx::Tmsfnctypes::TTMSFNCBitmap* FBitmap;
	System::UnicodeString FBitmapName;
	void __fastcall SetBitmap(Fmx::Tmsfnctypes::TTMSFNCBitmap* const Value);
	void __fastcall SetBitmapName(const System::UnicodeString Value);
	
public:
	__fastcall virtual TTMSFNCBitmapGridCell(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCBitmapGridCell();
	virtual Fmx::Graphics::TBitmap* __fastcall GetControlBitmap();
	
__published:
	__property System::UnicodeString BitmapName = {read=FBitmapName, write=SetBitmapName};
	__property Fmx::Tmsfnctypes::TTMSFNCBitmap* Bitmap = {read=FBitmap, write=SetBitmap};
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Tmsfncgridcell */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCGRIDCELL)
using namespace Fmx::Tmsfncgridcell;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncgridcellHPP
