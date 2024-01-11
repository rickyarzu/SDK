// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCLabelEdit.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfnclabeleditHPP
#define Fmx_TmsfnclabeleditHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <System.Types.hpp>
#include <System.TypInfo.hpp>
#include <FMX.TMSFNCHTMLText.hpp>
#include <FMX.TMSFNCEdit.hpp>
#include <FMX.TMSFNCImage.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.TMSFNCGraphics.hpp>
#include <FMX.TMSFNCGraphicsTypes.hpp>
#include <FMX.TMSFNCCustomControl.hpp>
#include <FMX.Controls.hpp>
#include <FMX.Types.hpp>
#include <System.Generics.Collections.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfnclabeledit
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCCustomLabelEdit;
class DELPHICLASS TTMSFNCLabelEdit;
//-- type declarations -------------------------------------------------------
typedef void __fastcall (__closure *TTMSFNCCustomLabelEditEditKeyDownEvent)(System::TObject* Sender, System::Word &Key, System::WideChar &KeyChar, System::Classes::TShiftState Shift);

typedef void __fastcall (__closure *TTMSFNCCustomLabelEditBeforeDrawButton)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, bool &AAllow, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCCustomLabelEditAfterDrawButton)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);

class PASCALIMPLEMENTATION TTMSFNCCustomLabelEdit : public Fmx::Tmsfnchtmltext::TTMSFNCHTMLText
{
	typedef Fmx::Tmsfnchtmltext::TTMSFNCHTMLText inherited;
	
private:
	Fmx::Tmsfncimage::TTMSFNCImage* FCancelButton;
	Fmx::Tmsfncimage::TTMSFNCImage* FAcceptButton;
	Fmx::Tmsfncedit::TTMSFNCEdit* FEdit;
	bool FEditMode;
	bool FMouseDown;
	System::Classes::TNotifyEvent FOnAccept;
	System::Classes::TNotifyEvent FOnCancel;
	System::UnicodeString FPrevText;
	TTMSFNCCustomLabelEditEditKeyDownEvent FOnEditKeyDown;
	System::Classes::TNotifyEvent FOnEditExit;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FAcceptButtonStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FCancelButtonStroke;
	System::Classes::TNotifyEvent FOnEditStart;
	System::Classes::TNotifyEvent FOnEditEnd;
	void __fastcall SetAcceptButtonStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetCancelButtonStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetEditMode(const bool Value);
	Fmx::Tmsfncimage::TTMSFNCImage* __fastcall GetAcceptButton();
	Fmx::Tmsfncimage::TTMSFNCImage* __fastcall GetCancelButton();
	Fmx::Tmsfncedit::TTMSFNCEdit* __fastcall GetEdit();
	
protected:
	virtual void __fastcall ChangeDPIScale(int M, int D);
	virtual void __fastcall SetAdaptToStyle(const bool Value);
	virtual void __fastcall ApplyStyle();
	virtual void __fastcall ResetToDefaultStyle();
	virtual void __fastcall HandleMouseDown(System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall HandleMouseUp(System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall HandleKeyDown(System::Word &Key, System::Classes::TShiftState Shift);
	void __fastcall LabelEditKeyDown(System::TObject* Sender, System::Word &Key, System::WideChar &KeyChar, System::Classes::TShiftState Shift);
	void __fastcall AcceptButtonMouseDown(System::TObject* Sender, System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, float X, float Y);
	void __fastcall CancelButtonMouseDown(System::TObject* Sender, System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, float X, float Y);
	void __fastcall LabelEditExit(System::TObject* Sender);
	void __fastcall LabelEditStrokeChanged(System::TObject* Sender);
	void __fastcall DoBeforeDrawAcceptButton(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, bool &ADefaultDraw);
	void __fastcall DoBeforeDrawCancelButton(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, bool &ADefaultDraw);
	void __fastcall DoAccept();
	void __fastcall DoCancel();
	virtual bool __fastcall IsAppearanceProperty(System::TObject* AObject, System::UnicodeString APropertyName, System::TTypeKind APropertyType);
	virtual System::UnicodeString __fastcall GetVersion();
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* AcceptButtonStroke = {read=FAcceptButtonStroke, write=SetAcceptButtonStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* CancelButtonStroke = {read=FCancelButtonStroke, write=SetCancelButtonStroke};
	__property System::Classes::TNotifyEvent OnAccept = {read=FOnAccept, write=FOnAccept};
	__property System::Classes::TNotifyEvent OnCancel = {read=FOnCancel, write=FOnCancel};
	__property System::Classes::TNotifyEvent OnEditExit = {read=FOnEditExit, write=FOnEditExit};
	__property TTMSFNCCustomLabelEditEditKeyDownEvent OnEditKeyDown = {read=FOnEditKeyDown, write=FOnEditKeyDown};
	__property System::Classes::TNotifyEvent OnEditStart = {read=FOnEditStart, write=FOnEditStart};
	__property System::Classes::TNotifyEvent OnEditEnd = {read=FOnEditEnd, write=FOnEditEnd};
	
public:
	__fastcall virtual TTMSFNCCustomLabelEdit(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCCustomLabelEdit();
	__property Fmx::Tmsfncedit::TTMSFNCEdit* Edit = {read=GetEdit, write=FEdit};
	__property Fmx::Tmsfncimage::TTMSFNCImage* CancelButton = {read=GetCancelButton, write=FCancelButton};
	__property Fmx::Tmsfncimage::TTMSFNCImage* AcceptButton = {read=GetAcceptButton, write=FAcceptButton};
	__property bool EditMode = {read=FEditMode, write=SetEditMode, nodefault};
};


class PASCALIMPLEMENTATION TTMSFNCLabelEdit : public TTMSFNCCustomLabelEdit
{
	typedef TTMSFNCCustomLabelEdit inherited;
	
__published:
	__property AcceptButtonStroke;
	__property CancelButtonStroke;
	__property HorizontalTextAlign = {default=1};
	__property OnAccept;
	__property OnCancel;
	__property OnEditExit;
	__property OnEditKeyDown;
	__property OnEditStart;
	__property OnEditEnd;
public:
	/* TTMSFNCCustomLabelEdit.Create */ inline __fastcall virtual TTMSFNCLabelEdit(System::Classes::TComponent* AOwner) : TTMSFNCCustomLabelEdit(AOwner) { }
	/* TTMSFNCCustomLabelEdit.Destroy */ inline __fastcall virtual ~TTMSFNCLabelEdit() { }
	
};


//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x1);
static constexpr System::Int8 BLD_VER = System::Int8(0x0);
static constexpr System::Int8 BTNWIDTH = System::Int8(0x19);
}	/* namespace Tmsfnclabeledit */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCLABELEDIT)
using namespace Fmx::Tmsfnclabeledit;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfnclabeleditHPP
