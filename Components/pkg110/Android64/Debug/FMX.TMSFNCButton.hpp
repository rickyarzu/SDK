// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCButton.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncbuttonHPP
#define Fmx_TmsfncbuttonHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <FMX.StdCtrls.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.TMSFNCImage.hpp>
#include <FMX.Controls.hpp>
#include <FMX.TMSFNCHTMLText.hpp>
#include <FMX.TMSFNCBitmapContainer.hpp>
#include <FMX.TMSFNCGraphics.hpp>
#include <FMX.TMSFNCGraphicsTypes.hpp>
#include <FMX.Types.hpp>
#include <System.UIConsts.hpp>
#include <System.UITypes.hpp>
#include <System.Types.hpp>
#include <FMX.Controls.Presentation.hpp>
#include <System.Generics.Collections.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncbutton
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCButton;
//-- type declarations -------------------------------------------------------
typedef Fmx::Types::TAlignLayout TTMSFNCButtonAlignLayout;

class PASCALIMPLEMENTATION TTMSFNCButton : public Fmx::Stdctrls::TCustomButton
{
	typedef Fmx::Stdctrls::TCustomButton inherited;
	
private:
	bool FCancel;
	bool FDefault;
	System::Uitypes::TAlphaColor FOldFontColor;
	float FOldImageWidth;
	Fmx::Tmsfncimage::TTMSFNCImage* FImage;
	Fmx::Tmsfnchtmltext::TTMSFNCHTMLText* FText;
	bool FShowImage;
	Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* FBitmapContainer;
	Fmx::Tmsfnctypes::TTMSFNCBitmap* FBitmap;
	System::UnicodeString FBitmapName;
	int FBitmapSize;
	bool FShowText;
	void __fastcall SetBitmap(Fmx::Tmsfnctypes::TTMSFNCBitmap* const Value);
	void __fastcall SetBitmapContainer(Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* const Value);
	void __fastcall SetBitmapName(const System::UnicodeString Value);
	void __fastcall SetShowImage(const bool Value);
	System::UnicodeString __fastcall GetVersion();
	void __fastcall SetShowText(const bool Value);
	HIDESBASE Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* __fastcall GetFont();
	void __fastcall SetFnt(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	bool __fastcall GetWordWrapping();
	void __fastcall SetWordWrapping(const bool Value);
	Fmx::Types::TAlignLayout __fastcall GetImageAlign();
	HIDESBASE Fmx::Types::TAlignLayout __fastcall GetTextAlign();
	void __fastcall SetImageAlign(const Fmx::Types::TAlignLayout Value);
	HIDESBASE void __fastcall SetTextAlign(const Fmx::Types::TAlignLayout Value);
	void __fastcall SetBitmapSize(const int Value);
	Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* __fastcall GetBitmapContainer();
	
protected:
	void __fastcall ReadOldFontColor(System::Classes::TReader* Reader);
	void __fastcall WriteOldFontColor(System::Classes::TWriter* Writer);
	virtual void __fastcall DefineProperties(System::Classes::TFiler* Filer);
	virtual void __fastcall SetText(const System::UnicodeString Value);
	virtual System::UnicodeString __fastcall GetDefaultStyleLookupName();
	virtual void __fastcall ApplyStyle();
	virtual void __fastcall AfterDialogKey(System::Word &Key, System::Classes::TShiftState Shift);
	virtual void __fastcall Notification(System::Classes::TComponent* AComponent, System::Classes::TOperation Operation);
	void __fastcall BitmapChanged(System::TObject* Sender);
	virtual void __fastcall SetEnabled(const bool Value);
	virtual void __fastcall Loaded();
	
public:
	__property TintObject;
	__property IconTintObject;
	virtual void __fastcall RecalcEnabled();
	Fmx::Tmsfnchtmltext::TTMSFNCHTMLText* __fastcall HTMLText();
	Fmx::Tmsfncimage::TTMSFNCImage* __fastcall Image();
	__fastcall virtual TTMSFNCButton(System::Classes::TComponent* AOwner)/* overload */;
	__fastcall virtual ~TTMSFNCButton();
	
__published:
	__property Fmx::Types::TAlignLayout ImageAlign = {read=GetImageAlign, write=SetImageAlign, default=2};
	__property Fmx::Types::TAlignLayout TextAlign = {read=GetTextAlign, write=SetTextAlign, default=9};
	__property Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* BitmapContainer = {read=GetBitmapContainer, write=SetBitmapContainer};
	__property Fmx::Tmsfnctypes::TTMSFNCBitmap* Bitmap = {read=FBitmap, write=SetBitmap};
	__property System::UnicodeString BitmapName = {read=FBitmapName, write=SetBitmapName};
	__property int BitmapSize = {read=FBitmapSize, write=SetBitmapSize, default=30};
	__property bool ShowImage = {read=FShowImage, write=SetShowImage, default=0};
	__property bool ShowText = {read=FShowText, write=SetShowText, default=1};
	__property System::UnicodeString Version = {read=GetVersion};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* Font = {read=GetFont, write=SetFnt};
	__property bool WordWrapping = {read=GetWordWrapping, write=SetWordWrapping, default=0};
	__property bool Cancel = {read=FCancel, write=FCancel, default=0};
	__property bool Default = {read=FDefault, write=FDefault, default=0};
	__property StaysPressed = {default=0};
	__property Action;
	__property Size;
	__property Align = {default=0};
	__property Anchors;
	__property AutoTranslate = {default=1};
	__property CanFocus = {default=1};
	__property CanParentFocus = {default=0};
	__property ClipChildren = {default=0};
	__property ClipParent = {default=0};
	__property Cursor = {default=0};
	__property DisableFocusEffect = {default=0};
	__property DragMode = {default=0};
	__property EnableDragHighlight = {default=1};
	__property Enabled = {default=1};
	__property StyledSettings;
	__property Height;
	__property HelpContext = {default=0};
	__property HelpKeyword = {default=0};
	__property HelpType = {default=1};
	__property HitTest = {default=1};
	__property IsPressed = {default=0};
	__property Locked = {default=0};
	__property Padding;
	__property ModalResult = {default=0};
	__property Opacity;
	__property Margins;
	__property PopupMenu;
	__property Position;
	__property RepeatClick = {default=0};
	__property RotationAngle = {default=0};
	__property RotationCenter;
	__property Scale;
	__property StyleLookup = {default=0};
	__property TabOrder = {default=-1};
	__property TabStop = {default=1};
	__property TintColor;
	__property IconTintColor;
	__property Text = {default=0};
	__property TouchTargetExpansion;
	__property Visible = {default=1};
	__property Width;
	__property OnApplyStyleLookup;
	__property OnDragEnter;
	__property OnDragLeave;
	__property OnDragOver;
	__property OnDragDrop;
	__property OnDragEnd;
	__property OnKeyDown;
	__property OnKeyUp;
	__property OnCanFocus;
	__property OnClick;
	__property OnDblClick;
	__property OnEnter;
	__property OnExit;
	__property OnMouseDown;
	__property OnMouseMove;
	__property OnMouseUp;
	__property OnMouseWheel;
	__property OnMouseEnter;
	__property OnMouseLeave;
	__property OnPainting;
	__property OnPaint;
	__property OnResize;
private:
	void *__ITMSFNCBitmapContainer;	// Fmx::Tmsfncbitmapcontainer::ITMSFNCBitmapContainer 
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {ED26710D-395F-4971-8AC9-A31083BF2A3C}
	operator Fmx::Tmsfncbitmapcontainer::_di_ITMSFNCBitmapContainer()
	{
		Fmx::Tmsfncbitmapcontainer::_di_ITMSFNCBitmapContainer intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator Fmx::Tmsfncbitmapcontainer::ITMSFNCBitmapContainer*(void) { return (Fmx::Tmsfncbitmapcontainer::ITMSFNCBitmapContainer*)&__ITMSFNCBitmapContainer; }
	#endif
	
};


//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x1);
static constexpr System::Int8 BLD_VER = System::Int8(0x0);
}	/* namespace Tmsfncbutton */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCBUTTON)
using namespace Fmx::Tmsfncbutton;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncbuttonHPP
