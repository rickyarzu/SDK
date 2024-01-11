// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCRichEditorRuler.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncricheditorrulerHPP
#define Fmx_TmsfncricheditorrulerHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <System.SysUtils.hpp>
#include <System.Types.hpp>
#include <System.UITypes.hpp>
#include <FMX.Types.hpp>
#include <FMX.TMSFNCCustomControl.hpp>
#include <FMX.TMSFNCGraphics.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.TMSFNCUtils.hpp>
#include <FMX.TMSFNCGraphicsTypes.hpp>
#include <FMX.TMSFNCStyles.hpp>
#include <FMX.TMSFNCRichEditor.hpp>
#include <FMX.Forms.hpp>
#include <FMX.Controls.hpp>
#include <System.Generics.Collections.hpp>
#include <System.Generics.Defaults.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncricheditorruler
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCRichEditorCustomRulerAppearance;
class DELPHICLASS TTMSFNCRichEditorHorizontalRulerAppearance;
class DELPHICLASS TTMSFNCRichEditorRulerTickMarks;
class DELPHICLASS TTMSFNCRichEditorRulerTabItem;
class DELPHICLASS TTMSFNCRichEditorRulerTabCollection;
class DELPHICLASS TTMSFNCRichEditorCustomRulerLayout;
class DELPHICLASS TTMSFNCRichEditorHorizontalRulerLayout;
class DELPHICLASS TTMSFNCRichEditorCustomRuler;
class DELPHICLASS TTMSFNCRichEditorHorizontalRuler;
//-- type declarations -------------------------------------------------------
enum DECLSPEC_DENUM TTMSFNCRichEditorRulerPosition : unsigned char { rpTop, rpBottom };

enum DECLSPEC_DENUM TTMSFNCRichEditorRulerTabType : unsigned char { ttLeftTab, ttLeftIndent, ttRightIndent, ttHangingIndent, ttLeftMargin, ttRightMargin, ttNone };

enum DECLSPEC_DENUM TTMSFNCRichEditorRulerTabMove : unsigned char { tmTickMark, tmStep, tmLabel, tmAll, tmPixel };

class PASCALIMPLEMENTATION TTMSFNCRichEditorCustomRulerAppearance : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FFont;
	System::Uitypes::TAlphaColor FFontColorMargin;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FIndentFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FIndentStroke;
	Fmx::Tmsfnctypes::TTMSFNCBitmap* FLeftIndentBottomBitmap;
	Fmx::Tmsfnctypes::TTMSFNCBitmap* FLeftIndentTopBitmap;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FMarginFill;
	TTMSFNCRichEditorCustomRuler* FOwner;
	Fmx::Tmsfnctypes::TTMSFNCBitmap* FRightIndentBitmap;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FRulerFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FRulerStroke;
	System::Uitypes::TAlphaColor FTabColor;
	System::Uitypes::TAlphaColor FTabColorMoving;
	System::Uitypes::TAlphaColor FTickMarkColor;
	System::Uitypes::TAlphaColor FTickMarkMarginColor;
	System::Classes::TNotifyEvent FOnChange;
	void __fastcall SetFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetFontColorMargin(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetIndentFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetIndentStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetLeftIndentBottomBitmap(Fmx::Tmsfnctypes::TTMSFNCBitmap* const Value);
	void __fastcall SetLeftIndentTopBitmap(Fmx::Tmsfnctypes::TTMSFNCBitmap* const Value);
	void __fastcall SetMarginFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetRightIndentBitmap(Fmx::Tmsfnctypes::TTMSFNCBitmap* const Value);
	void __fastcall SetRulerFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetRulerStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetTabColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetTabColorMoving(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetTickMarkColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetTickMarkMarginColor(const System::Uitypes::TAlphaColor Value);
	
protected:
	void __fastcall BitmapChanged(System::TObject* Sender);
	void __fastcall Changed();
	void __fastcall FillChanged(System::TObject* Sender);
	void __fastcall StrokeChanged(System::TObject* Sender);
	void __fastcall FontChanged(System::TObject* Sender);
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* Font = {read=FFont, write=SetFont};
	__property System::Uitypes::TAlphaColor FontColorMargin = {read=FFontColorMargin, write=SetFontColorMargin, default=0};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* IndentFill = {read=FIndentFill, write=SetIndentFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* IndentStroke = {read=FIndentStroke, write=SetIndentStroke};
	__property Fmx::Tmsfnctypes::TTMSFNCBitmap* LeftIndentBottomBitmap = {read=FLeftIndentBottomBitmap, write=SetLeftIndentBottomBitmap};
	__property Fmx::Tmsfnctypes::TTMSFNCBitmap* LeftIndentTopBitmap = {read=FLeftIndentTopBitmap, write=SetLeftIndentTopBitmap};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* MarginFill = {read=FMarginFill, write=SetMarginFill};
	__property Fmx::Tmsfnctypes::TTMSFNCBitmap* RightIndentBitmap = {read=FRightIndentBitmap, write=SetRightIndentBitmap};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* RulerFill = {read=FRulerFill, write=SetRulerFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* RulerStroke = {read=FRulerStroke, write=SetRulerStroke};
	__property System::Uitypes::TAlphaColor TabColor = {read=FTabColor, write=SetTabColor, default=-16777216};
	__property System::Uitypes::TAlphaColor TabColorMoving = {read=FTabColorMoving, write=SetTabColorMoving, default=-2894893};
	__property System::Uitypes::TAlphaColor TickMarkColor = {read=FTickMarkColor, write=SetTickMarkColor, default=-8355712};
	__property System::Uitypes::TAlphaColor TickMarkMarginColor = {read=FTickMarkMarginColor, write=SetTickMarkMarginColor, default=0};
	
public:
	__fastcall TTMSFNCRichEditorCustomRulerAppearance(TTMSFNCRichEditorCustomRuler* AOwner);
	__fastcall virtual ~TTMSFNCRichEditorCustomRulerAppearance();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__property System::Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
};


class PASCALIMPLEMENTATION TTMSFNCRichEditorHorizontalRulerAppearance : public TTMSFNCRichEditorCustomRulerAppearance
{
	typedef TTMSFNCRichEditorCustomRulerAppearance inherited;
	
__published:
	__property Font;
	__property FontColorMargin = {default=0};
	__property IndentFill;
	__property IndentStroke;
	__property LeftIndentBottomBitmap;
	__property LeftIndentTopBitmap;
	__property MarginFill;
	__property RightIndentBitmap;
	__property RulerFill;
	__property RulerStroke;
	__property TabColor = {default=-16777216};
	__property TabColorMoving = {default=-2894893};
	__property TickMarkColor = {default=-8355712};
	__property TickMarkMarginColor = {default=0};
public:
	/* TTMSFNCRichEditorCustomRulerAppearance.Create */ inline __fastcall TTMSFNCRichEditorHorizontalRulerAppearance(TTMSFNCRichEditorCustomRuler* AOwner) : TTMSFNCRichEditorCustomRulerAppearance(AOwner) { }
	/* TTMSFNCRichEditorCustomRulerAppearance.Destroy */ inline __fastcall virtual ~TTMSFNCRichEditorHorizontalRulerAppearance() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCRichEditorRulerTickMarks : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	bool FContinuousLabelSteps;
	float FLabelStep;
	int FSize;
	float FSpacing;
	float FStep;
	int FStepHeight;
	System::Classes::TNotifyEvent FOnChanged;
	void __fastcall SetContinuousLabelSteps(const bool Value);
	void __fastcall SetLabelStep(const float Value);
	void __fastcall SetSize(const int Value);
	void __fastcall SetSpacing(const float Value);
	void __fastcall SetStep(const float Value);
	void __fastcall SetStepHeight(const int Value);
	
protected:
	void __fastcall Changed();
	
public:
	__fastcall TTMSFNCRichEditorRulerTickMarks();
	__fastcall virtual ~TTMSFNCRichEditorRulerTickMarks();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property bool ContinuousLabelSteps = {read=FContinuousLabelSteps, write=SetContinuousLabelSteps, default=0};
	__property float LabelStep = {read=FLabelStep, write=SetLabelStep};
	__property int Size = {read=FSize, write=SetSize, default=1};
	__property float Spacing = {read=FSpacing, write=SetSpacing};
	__property float Step = {read=FStep, write=SetStep};
	__property int StepHeight = {read=FStepHeight, write=SetStepHeight, default=6};
	__property System::Classes::TNotifyEvent OnChanged = {read=FOnChanged, write=FOnChanged};
};


class PASCALIMPLEMENTATION TTMSFNCRichEditorRulerTabItem : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	int FIndent;
	void __fastcall SetIndent(const int Value);
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property int Indent = {read=FIndent, write=SetIndent, default=-1};
public:
	/* TCollectionItem.Create */ inline __fastcall virtual TTMSFNCRichEditorRulerTabItem(System::Classes::TCollection* Collection) : System::Classes::TCollectionItem(Collection) { }
	/* TCollectionItem.Destroy */ inline __fastcall virtual ~TTMSFNCRichEditorRulerTabItem() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCRichEditorRulerTabCollection : public System::Classes::TOwnedCollection
{
	typedef System::Classes::TOwnedCollection inherited;
	
public:
	TTMSFNCRichEditorRulerTabItem* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCRichEditorCustomRuler* FOwner;
	HIDESBASE TTMSFNCRichEditorRulerTabItem* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCRichEditorRulerTabItem* const Value);
	
public:
	__fastcall TTMSFNCRichEditorRulerTabCollection(TTMSFNCRichEditorCustomRuler* AOwner);
	HIDESBASE TTMSFNCRichEditorRulerTabItem* __fastcall Add();
	int __fastcall AddTab(int AIndent = 0x0)/* overload */;
	int __fastcall AddTab(TTMSFNCRichEditorRulerTabItem* ATabItem)/* overload */;
	virtual void __fastcall EndUpdate();
	HIDESBASE TTMSFNCRichEditorRulerTabItem* __fastcall Insert(int Index);
	__property TTMSFNCRichEditorRulerTabItem* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	__property TTMSFNCRichEditorCustomRuler* TMSFNCRichEditorCustomRuler = {read=FOwner};
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCRichEditorRulerTabCollection() { }
	
};


typedef void __fastcall (__closure *TTMSFNCRichEditorRulerEvent)(System::TObject* Sender, int Indent);

typedef void __fastcall (__closure *TTMSFNCRichEditorRulerAfterDrawHangingBoxEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, TTMSFNCRichEditorRulerTabType AType, int APosition, const System::Types::TRectF &ARect);

typedef void __fastcall (__closure *TTMSFNCRichEditorRulerAfterDrawIndentEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, TTMSFNCRichEditorRulerTabType AType, int AIndent, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsPath* &APath);

typedef void __fastcall (__closure *TTMSFNCRichEditorRulerAfterDrawMarginEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, TTMSFNCRichEditorRulerTabType AType, int AMargin, const System::Types::TRectF &ARect);

typedef void __fastcall (__closure *TTMSFNCRichEditorRulerAfterDrawTickLabel)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TPointF &APosition, int AValue);

typedef void __fastcall (__closure *TTMSFNCRichEditorRulerBeforeDrawHangingBoxEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, TTMSFNCRichEditorRulerTabType AType, int APosition, const System::Types::TRectF &ARect, bool &AAllow, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCRichEditorRulerBeforeDrawIndentEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, TTMSFNCRichEditorRulerTabType AType, int AIndent, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsPath* &APath, bool &AAllow, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCRichEditorRulerBeforeDrawMarginEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, TTMSFNCRichEditorRulerTabType AType, int AMargin, const System::Types::TRectF &ARect, bool &AAllow, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCRichEditorRulerBeforeDrawTickLabel)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TPointF &APosition, int AValue, bool &AAllow, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCRichEditorRulerTabEvent)(System::TObject* Sender, int Index, int Indent);

class PASCALIMPLEMENTATION TTMSFNCRichEditorCustomRulerLayout : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	bool FAutoPosition;
	bool FAutoWidth;
	int FLeftMargin;
	TTMSFNCRichEditorCustomRuler* FOwner;
	int FPaddingBottom;
	int FPaddingLeft;
	int FPaddingRight;
	int FPaddingTop;
	int FRightMargin;
	TTMSFNCRichEditorRulerPosition FRulerPosition;
	bool FShowHangingIndent;
	bool FShowLeftIndent;
	bool FShowLeftMargin;
	bool FShowRightIndent;
	bool FShowRightMargin;
	TTMSFNCRichEditorRulerTabMove FTabMove;
	int FTabSize;
	TTMSFNCRichEditorRulerTickMarks* FTickMarks;
	System::Classes::TNotifyEvent FOnChange;
	void __fastcall SetAutoPosition(const bool Value);
	void __fastcall SetAutoWidth(const bool Value);
	void __fastcall SetLeftMargin(const int Value);
	void __fastcall SetPaddingBottom(const int Value);
	void __fastcall SetPaddingLeft(const int Value);
	void __fastcall SetPaddingRight(const int Value);
	void __fastcall SetPaddingTop(const int Value);
	void __fastcall SetRightMargin(const int Value);
	void __fastcall SetRulerPosition(const TTMSFNCRichEditorRulerPosition Value);
	void __fastcall SetShowHangingIndent(const bool Value);
	void __fastcall SetShowLeftIndent(const bool Value);
	void __fastcall SetShowLeftMargin(const bool Value);
	void __fastcall SetShowRightIndent(const bool Value);
	void __fastcall SetShowRightMargin(const bool Value);
	void __fastcall SetTabMove(const TTMSFNCRichEditorRulerTabMove Value);
	void __fastcall SetTabSize(const int Value);
	void __fastcall SetTickMarks(TTMSFNCRichEditorRulerTickMarks* const Value);
	
protected:
	void __fastcall Changed();
	__property bool AutoPosition = {read=FAutoPosition, write=SetAutoPosition, default=0};
	__property bool AutoWidth = {read=FAutoWidth, write=SetAutoWidth, default=0};
	__property int LeftMargin = {read=FLeftMargin, write=SetLeftMargin, default=50};
	__property int PaddingBottom = {read=FPaddingBottom, write=SetPaddingBottom, default=7};
	__property int PaddingLeft = {read=FPaddingLeft, write=SetPaddingLeft, default=4};
	__property int PaddingRight = {read=FPaddingRight, write=SetPaddingRight, default=4};
	__property int PaddingTop = {read=FPaddingTop, write=SetPaddingTop, default=7};
	__property int RightMargin = {read=FRightMargin, write=SetRightMargin, default=46};
	__property TTMSFNCRichEditorRulerPosition RulerPosition = {read=FRulerPosition, write=SetRulerPosition, default=0};
	__property bool ShowHangingIndent = {read=FShowHangingIndent, write=SetShowHangingIndent, default=0};
	__property bool ShowLeftIndent = {read=FShowLeftIndent, write=SetShowLeftIndent, default=1};
	__property bool ShowLeftMargin = {read=FShowLeftMargin, write=SetShowLeftMargin, default=1};
	__property bool ShowRightIndent = {read=FShowRightIndent, write=SetShowRightIndent, default=1};
	__property bool ShowRightMargin = {read=FShowRightMargin, write=SetShowRightMargin, default=1};
	__property TTMSFNCRichEditorRulerTabMove TabMove = {read=FTabMove, write=SetTabMove, default=3};
	__property int TabSize = {read=FTabSize, write=SetTabSize, default=5};
	__property TTMSFNCRichEditorRulerTickMarks* TickMarks = {read=FTickMarks, write=SetTickMarks};
	__property System::Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
	
public:
	__fastcall TTMSFNCRichEditorCustomRulerLayout(TTMSFNCRichEditorCustomRuler* AOwner);
	__fastcall virtual ~TTMSFNCRichEditorCustomRulerLayout();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
};


class PASCALIMPLEMENTATION TTMSFNCRichEditorHorizontalRulerLayout : public TTMSFNCRichEditorCustomRulerLayout
{
	typedef TTMSFNCRichEditorCustomRulerLayout inherited;
	
__published:
	__property AutoPosition = {default=0};
	__property AutoWidth = {default=0};
	__property LeftMargin = {default=50};
	__property PaddingBottom = {default=7};
	__property PaddingLeft = {default=4};
	__property PaddingRight = {default=4};
	__property PaddingTop = {default=7};
	__property RightMargin = {default=46};
	__property RulerPosition = {default=0};
	__property ShowHangingIndent = {default=0};
	__property ShowLeftIndent = {default=1};
	__property ShowLeftMargin = {default=1};
	__property ShowRightIndent = {default=1};
	__property ShowRightMargin = {default=1};
	__property TabMove = {default=3};
	__property TabSize = {default=5};
	__property TickMarks;
	__property OnChange;
public:
	/* TTMSFNCRichEditorCustomRulerLayout.Create */ inline __fastcall TTMSFNCRichEditorHorizontalRulerLayout(TTMSFNCRichEditorCustomRuler* AOwner) : TTMSFNCRichEditorCustomRulerLayout(AOwner) { }
	/* TTMSFNCRichEditorCustomRulerLayout.Destroy */ inline __fastcall virtual ~TTMSFNCRichEditorHorizontalRulerLayout() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCRichEditorCustomRuler : public Fmx::Tmsfnccustomcontrol::TTMSFNCCustomControl
{
	typedef Fmx::Tmsfnccustomcontrol::TTMSFNCCustomControl inherited;
	
private:
	TTMSFNCRichEditorCustomRulerAppearance* FAppearance;
	bool FDesignDraw;
	int FHangingIndent;
	TTMSFNCRichEditorCustomRulerLayout* FLayout;
	int FLeftIndent;
	bool FMouseDown;
	bool FMouseInRuler;
	int FMoveTabIdx;
	int FMoveTabPos;
	TTMSFNCRichEditorRulerTabType FMoveTabType;
	Fmx::Tmsfncricheditor::TTMSFNCRichEditor* FRichEditor;
	int FRightIndent;
	TTMSFNCRichEditorRulerTabCollection* FTabs;
	float FZeroPos;
	TTMSFNCRichEditorRulerAfterDrawHangingBoxEvent FOnAfterDrawHangingBox;
	TTMSFNCRichEditorRulerAfterDrawIndentEvent FOnAfterDrawHangingIndent;
	TTMSFNCRichEditorRulerAfterDrawIndentEvent FOnAfterDrawLeftIndent;
	TTMSFNCRichEditorRulerAfterDrawMarginEvent FOnAfterDrawLeftMargin;
	TTMSFNCRichEditorRulerAfterDrawIndentEvent FOnAfterDrawRightIndent;
	TTMSFNCRichEditorRulerAfterDrawMarginEvent FOnAfterDrawRightMargin;
	TTMSFNCRichEditorRulerAfterDrawTickLabel FOnAfterDrawTickLabel;
	System::Classes::TNotifyEvent FOnAppearanceChanged;
	TTMSFNCRichEditorRulerBeforeDrawHangingBoxEvent FOnBeforeDrawHangingBox;
	TTMSFNCRichEditorRulerBeforeDrawIndentEvent FOnBeforeDrawHangingIndent;
	TTMSFNCRichEditorRulerBeforeDrawIndentEvent FOnBeforeDrawLeftIndent;
	TTMSFNCRichEditorRulerBeforeDrawMarginEvent FOnBeforeDrawLeftMargin;
	TTMSFNCRichEditorRulerBeforeDrawIndentEvent FOnBeforeDrawRightIndent;
	TTMSFNCRichEditorRulerBeforeDrawMarginEvent FOnBeforeDrawRightMargin;
	TTMSFNCRichEditorRulerBeforeDrawTickLabel FOnBeforeDrawTickLable;
	TTMSFNCRichEditorRulerEvent FOnHangingIndentChange;
	TTMSFNCRichEditorRulerEvent FOnHangingIndentChanged;
	System::Classes::TNotifyEvent FOnLayoutChanged;
	TTMSFNCRichEditorRulerEvent FOnLeftIndentChange;
	TTMSFNCRichEditorRulerEvent FOnLeftIndentChanged;
	TTMSFNCRichEditorRulerEvent FOnLeftMarginChange;
	TTMSFNCRichEditorRulerEvent FOnLeftMarginChanged;
	TTMSFNCRichEditorRulerEvent FOnRightIndentChange;
	TTMSFNCRichEditorRulerEvent FOnRightIndentChanged;
	TTMSFNCRichEditorRulerEvent FOnRightMarginChange;
	TTMSFNCRichEditorRulerEvent FOnRightMarginChanged;
	TTMSFNCRichEditorRulerTabEvent FOnTabAdded;
	TTMSFNCRichEditorRulerTabEvent FOnTabChange;
	TTMSFNCRichEditorRulerTabEvent FOnTabChanged;
	TTMSFNCRichEditorRulerTabEvent FOnTabModified;
	TTMSFNCRichEditorRulerTabEvent FOnTabRemove;
	System::Classes::TNotifyEvent FOnTickMarksChanged;
	void __fastcall AppearanceChanged(System::TObject* Sender);
	void __fastcall DrawBackGroundColor(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics);
	void __fastcall DrawBorder(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics);
	void __fastcall DrawHangingIndent(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics);
	void __fastcall DrawLeftIndent(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics);
	void __fastcall DrawLabelStep(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, int AXPos, int AValue, System::Uitypes::TAlphaColor AColor);
	void __fastcall DrawLeftMargin(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics);
	void __fastcall DrawRightIndent(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics);
	void __fastcall DrawRightMargin(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics);
	void __fastcall DrawRulerColor(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics);
	void __fastcall DrawStep(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, int AXPos, System::Uitypes::TAlphaColor AColor);
	void __fastcall DrawTabs(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics);
	void __fastcall DrawTick(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, int AXPos, System::Uitypes::TAlphaColor AColor);
	void __fastcall DrawTickMarks(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics);
	System::Types::TRectF __fastcall GetActiveRect();
	System::Types::TRectF __fastcall GetBoxRect();
	int __fastcall GetClosestNewTabVal(float XPos);
	int __fastcall GetClosestPoint(float Xpos);
	void __fastcall GetIndentPath(float XPos, TTMSFNCRichEditorRulerTabType ATabType, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsPath* &APath)/* overload */;
	int __fastcall GetIndentPos(TTMSFNCRichEditorRulerTabType ATabType);
	float __fastcall GetLeftMarginPos();
	System::Types::TRectF __fastcall GetLeftMarginRect();
	float __fastcall GetRightMarginPos();
	System::Types::TRectF __fastcall GetRightMarginRect();
	float __fastcall GetRulerBottom();
	float __fastcall GetRulerLeft();
	float __fastcall GetRulerTop();
	float __fastcall GetWorkHeight();
	float __fastcall GetWorkWidth();
	void __fastcall LayoutChanged(System::TObject* Sender);
	bool __fastcall PointInHangingBox(const System::Types::TPointF &APoint);
	bool __fastcall PointInHangingIndent(const System::Types::TPointF &APoint);
	bool __fastcall PointInLeftIndent(const System::Types::TPointF &APoint);
	bool __fastcall PointInRightIndent(const System::Types::TPointF &APoint);
	bool __fastcall PointInRuler(const System::Types::TPointF &APoint);
	int __fastcall PointInTabs(const System::Types::TPointF &APoint);
	bool __fastcall PointOnLeftMargin(const System::Types::TPointF &APoint);
	bool __fastcall PointOnRightMargin(const System::Types::TPointF &APoint);
	void __fastcall ReleaseIndent(float X, float Y);
	void __fastcall SetAppearance(TTMSFNCRichEditorCustomRulerAppearance* const Value);
	void __fastcall SetHangingIndent(const int Value);
	void __fastcall SetIndentVal(float Xpos, TTMSFNCRichEditorRulerTabType ATabType, int AIndex = 0xffffffff);
	void __fastcall SetLayout(TTMSFNCRichEditorCustomRulerLayout* const Value);
	void __fastcall SetLeftIndent(const int Value);
	HIDESBASE void __fastcall SetPosition();
	void __fastcall SetRichEditor(Fmx::Tmsfncricheditor::TTMSFNCRichEditor* const Value);
	void __fastcall SetRightIndent(const int Value);
	void __fastcall SetRulerWidth();
	void __fastcall SyncTabs();
	
protected:
	virtual void __fastcall ChangeDPIScale(int M, int D);
	virtual void __fastcall HandleMouseDown(System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall HandleMouseLeave();
	virtual void __fastcall HandleMouseMove(System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall HandleMouseUp(System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall HandleTabsModified(int Index, int Indent);
	virtual void __fastcall Notification(System::Classes::TComponent* AComponent, System::Classes::TOperation Operation);
	DYNAMIC void __fastcall SetParentComponent(System::Classes::TComponent* Value);
	virtual void __fastcall DoAfterDrawHangingBox(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, TTMSFNCRichEditorRulerTabType AType, int APosition, const System::Types::TRectF &ARect);
	virtual void __fastcall DoAfterDrawHangingIndent(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, TTMSFNCRichEditorRulerTabType AType, int AIndent, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsPath* &APath);
	virtual void __fastcall DoAfterDrawLeftIndent(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, TTMSFNCRichEditorRulerTabType AType, int AIndent, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsPath* &APath);
	virtual void __fastcall DoAfterDrawLeftMargin(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, TTMSFNCRichEditorRulerTabType AType, int AMargin, const System::Types::TRectF &ARect);
	virtual void __fastcall DoAfterDrawRightIndent(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, TTMSFNCRichEditorRulerTabType AType, int AIndent, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsPath* &APath);
	virtual void __fastcall DoAfterDrawRightMargin(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, TTMSFNCRichEditorRulerTabType AType, int AMargin, const System::Types::TRectF &ARect);
	virtual void __fastcall DoAfterDrawTickLabel(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TPointF &APosition, int AValue);
	virtual void __fastcall DoAppearanceChanged(System::TObject* Sender);
	virtual void __fastcall DoBeforeDrawHangingBox(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, TTMSFNCRichEditorRulerTabType AType, int APosition, const System::Types::TRectF &ARect, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoBeforeDrawHangingIndent(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, TTMSFNCRichEditorRulerTabType AType, int AIndent, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsPath* &APath, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoBeforeDrawLeftIndent(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, TTMSFNCRichEditorRulerTabType AType, int AIndent, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsPath* &APath, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoBeforeDrawLeftMargin(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, TTMSFNCRichEditorRulerTabType AType, int AMargin, const System::Types::TRectF &ARect, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoBeforeDrawRightIndent(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, TTMSFNCRichEditorRulerTabType AType, int AIndent, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsPath* &APath, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoBeforeDrawRightMargin(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, TTMSFNCRichEditorRulerTabType AType, int AMargin, const System::Types::TRectF &ARect, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoBeforeDrawTickLabel(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TPointF &APosition, int AValue, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoHangingIndentChange(int Indent);
	virtual void __fastcall DoHangingIndentChanged(int Indent);
	void __fastcall DoLayoutChanged(System::TObject* Sender);
	virtual void __fastcall DoLeftIndentChange(int Indent);
	virtual void __fastcall DoLeftIndentChanged(int Indent);
	virtual void __fastcall DoLeftMarginChange(int Indent);
	virtual void __fastcall DoLeftMarginChanged(int Indent);
	virtual void __fastcall DoRightIndentChange(int Indent);
	virtual void __fastcall DoRightIndentChanged(int Indent);
	virtual void __fastcall DoRightMarginChange(int Indent);
	virtual void __fastcall DoRightMarginChanged(int Indent);
	virtual void __fastcall DoTabAdded(int Index, int Indent);
	virtual void __fastcall DoTabChange(int Index, int Indent);
	virtual void __fastcall DoTabChanged(int Index, int Indent);
	virtual void __fastcall DoTabModified(int Index, int Indent);
	virtual void __fastcall DoTabRemove(int Index, int Indent);
	virtual void __fastcall DoTickMarksChanged(System::TObject* Sender);
	void __fastcall DoUpdate(System::TObject* Sender);
	__property TTMSFNCRichEditorCustomRulerAppearance* Appearance = {read=FAppearance, write=SetAppearance};
	__property int HangingIndent = {read=FHangingIndent, write=SetHangingIndent, default=0};
	__property TTMSFNCRichEditorCustomRulerLayout* Layout = {read=FLayout, write=SetLayout};
	__property int LeftIndent = {read=FLeftIndent, write=SetLeftIndent, default=0};
	__property Fmx::Tmsfncricheditor::TTMSFNCRichEditor* RichEditor = {read=FRichEditor, write=SetRichEditor};
	__property int RightIndent = {read=FRightIndent, write=SetRightIndent, default=0};
	__property TTMSFNCRichEditorRulerTabCollection* Tabs = {read=FTabs, write=FTabs};
	__property TTMSFNCRichEditorRulerAfterDrawHangingBoxEvent OnAfterDrawHangingBox = {read=FOnAfterDrawHangingBox, write=FOnAfterDrawHangingBox};
	__property TTMSFNCRichEditorRulerAfterDrawIndentEvent OnAfterDrawHangingIndent = {read=FOnAfterDrawHangingIndent, write=FOnAfterDrawHangingIndent};
	__property TTMSFNCRichEditorRulerAfterDrawIndentEvent OnAfterDrawLeftIndent = {read=FOnAfterDrawLeftIndent, write=FOnAfterDrawLeftIndent};
	__property TTMSFNCRichEditorRulerAfterDrawMarginEvent OnAfterDrawLeftMargin = {read=FOnAfterDrawLeftMargin, write=FOnAfterDrawLeftMargin};
	__property TTMSFNCRichEditorRulerAfterDrawIndentEvent OnAfterDrawRightIndent = {read=FOnAfterDrawRightIndent, write=FOnAfterDrawRightIndent};
	__property TTMSFNCRichEditorRulerAfterDrawMarginEvent OnAfterDrawRightMargin = {read=FOnAfterDrawRightMargin, write=FOnAfterDrawRightMargin};
	__property TTMSFNCRichEditorRulerAfterDrawTickLabel OnAfterDrawTickLabel = {read=FOnAfterDrawTickLabel, write=FOnAfterDrawTickLabel};
	__property System::Classes::TNotifyEvent OnAppearanceChanged = {read=FOnAppearanceChanged, write=FOnAppearanceChanged};
	__property TTMSFNCRichEditorRulerBeforeDrawHangingBoxEvent OnBeforeDrawHangingBox = {read=FOnBeforeDrawHangingBox, write=FOnBeforeDrawHangingBox};
	__property TTMSFNCRichEditorRulerBeforeDrawIndentEvent OnBeforeDrawHangingIndent = {read=FOnBeforeDrawHangingIndent, write=FOnBeforeDrawHangingIndent};
	__property TTMSFNCRichEditorRulerBeforeDrawIndentEvent OnBeforeDrawLeftIndent = {read=FOnBeforeDrawLeftIndent, write=FOnBeforeDrawLeftIndent};
	__property TTMSFNCRichEditorRulerBeforeDrawMarginEvent OnBeforeDrawLeftMargin = {read=FOnBeforeDrawLeftMargin, write=FOnBeforeDrawLeftMargin};
	__property TTMSFNCRichEditorRulerBeforeDrawIndentEvent OnBeforeDrawRightIndent = {read=FOnBeforeDrawRightIndent, write=FOnBeforeDrawRightIndent};
	__property TTMSFNCRichEditorRulerBeforeDrawMarginEvent OnBeforeDrawRightMargin = {read=FOnBeforeDrawRightMargin, write=FOnBeforeDrawRightMargin};
	__property TTMSFNCRichEditorRulerBeforeDrawTickLabel OnBeforeDrawTickLabel = {read=FOnBeforeDrawTickLable, write=FOnBeforeDrawTickLable};
	__property TTMSFNCRichEditorRulerEvent OnHangingIndentChange = {read=FOnHangingIndentChange, write=FOnHangingIndentChange};
	__property TTMSFNCRichEditorRulerEvent OnHangingIndentChanged = {read=FOnHangingIndentChanged, write=FOnHangingIndentChanged};
	__property System::Classes::TNotifyEvent OnLayoutChanged = {read=FOnLayoutChanged, write=FOnLayoutChanged};
	__property TTMSFNCRichEditorRulerEvent OnLeftIndentChange = {read=FOnLeftIndentChange, write=FOnLeftIndentChange};
	__property TTMSFNCRichEditorRulerEvent OnLeftIndentChanged = {read=FOnLeftIndentChanged, write=FOnLeftIndentChanged};
	__property TTMSFNCRichEditorRulerEvent OnLeftMarginChange = {read=FOnLeftMarginChange, write=FOnLeftMarginChange};
	__property TTMSFNCRichEditorRulerEvent OnLeftMarginChanged = {read=FOnLeftMarginChanged, write=FOnLeftMarginChanged};
	__property TTMSFNCRichEditorRulerEvent OnRightIndentChange = {read=FOnRightIndentChange, write=FOnRightIndentChange};
	__property TTMSFNCRichEditorRulerEvent OnRightIndentChanged = {read=FOnRightIndentChanged, write=FOnRightIndentChanged};
	__property TTMSFNCRichEditorRulerEvent OnRightMarginChange = {read=FOnRightMarginChange, write=FOnRightMarginChange};
	__property TTMSFNCRichEditorRulerEvent OnRightMarginChanged = {read=FOnRightMarginChanged, write=FOnRightMarginChanged};
	__property TTMSFNCRichEditorRulerTabEvent OnTabAdded = {read=FOnTabAdded, write=FOnTabAdded};
	__property TTMSFNCRichEditorRulerTabEvent OnTabChange = {read=FOnTabChange, write=FOnTabChange};
	__property TTMSFNCRichEditorRulerTabEvent OnTabChanged = {read=FOnTabChanged, write=FOnTabChanged};
	__property TTMSFNCRichEditorRulerTabEvent OnTabModified = {read=FOnTabModified, write=FOnTabModified};
	__property TTMSFNCRichEditorRulerTabEvent OnTabRemove = {read=FOnTabRemove, write=FOnTabRemove};
	__property System::Classes::TNotifyEvent OnTickMarksChanged = {read=FOnTickMarksChanged, write=FOnTickMarksChanged};
	
public:
	__fastcall virtual TTMSFNCRichEditorCustomRuler(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCRichEditorCustomRuler();
	virtual void __fastcall Draw(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	virtual void __fastcall UpdateRichEditor();
};


class PASCALIMPLEMENTATION TTMSFNCRichEditorHorizontalRuler : public TTMSFNCRichEditorCustomRuler
{
	typedef TTMSFNCRichEditorCustomRuler inherited;
	
private:
	TTMSFNCRichEditorHorizontalRulerAppearance* __fastcall GetHorizontalAppearance();
	TTMSFNCRichEditorHorizontalRulerLayout* __fastcall GetHorizontalLayout();
	void __fastcall SetHorizontalAppearance(TTMSFNCRichEditorHorizontalRulerAppearance* const Value);
	void __fastcall SetHorizontalLayout(TTMSFNCRichEditorHorizontalRulerLayout* const Value);
	
__published:
	__property TTMSFNCRichEditorHorizontalRulerAppearance* Appearance = {read=GetHorizontalAppearance, write=SetHorizontalAppearance};
	__property HangingIndent = {default=0};
	__property TTMSFNCRichEditorHorizontalRulerLayout* Layout = {read=GetHorizontalLayout, write=SetHorizontalLayout};
	__property LeftIndent = {default=0};
	__property RichEditor;
	__property RightIndent = {default=0};
	__property Stroke;
	__property Tabs;
	__property OnAfterDrawHangingBox;
	__property OnAfterDrawHangingIndent;
	__property OnAfterDrawLeftIndent;
	__property OnAfterDrawLeftMargin;
	__property OnAfterDrawRightIndent;
	__property OnAfterDrawRightMargin;
	__property OnAfterDrawTickLabel;
	__property OnAppearanceChanged;
	__property OnBeforeDrawHangingBox;
	__property OnBeforeDrawHangingIndent;
	__property OnBeforeDrawLeftIndent;
	__property OnBeforeDrawLeftMargin;
	__property OnBeforeDrawRightIndent;
	__property OnBeforeDrawRightMargin;
	__property OnBeforeDrawTickLabel;
	__property OnHangingIndentChange;
	__property OnHangingIndentChanged;
	__property OnLayoutChanged;
	__property OnLeftIndentChange;
	__property OnLeftIndentChanged;
	__property OnLeftMarginChange;
	__property OnLeftMarginChanged;
	__property OnRightIndentChange;
	__property OnRightIndentChanged;
	__property OnRightMarginChange;
	__property OnRightMarginChanged;
	__property OnTabAdded;
	__property OnTabChange;
	__property OnTabChanged;
	__property OnTabRemove;
	__property OnTickMarksChanged;
public:
	/* TTMSFNCRichEditorCustomRuler.Create */ inline __fastcall virtual TTMSFNCRichEditorHorizontalRuler(System::Classes::TComponent* AOwner) : TTMSFNCRichEditorCustomRuler(AOwner) { }
	/* TTMSFNCRichEditorCustomRuler.Destroy */ inline __fastcall virtual ~TTMSFNCRichEditorHorizontalRuler() { }
	
};


//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x1);
static constexpr System::Int8 BLD_VER = System::Int8(0x0);
}	/* namespace Tmsfncricheditorruler */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCRICHEDITORRULER)
using namespace Fmx::Tmsfncricheditorruler;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncricheditorrulerHPP
