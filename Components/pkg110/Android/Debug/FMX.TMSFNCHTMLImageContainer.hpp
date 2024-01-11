// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCHTMLImageContainer.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfnchtmlimagecontainerHPP
#define Fmx_TmsfnchtmlimagecontainerHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <System.Types.hpp>
#include <System.UITypes.hpp>
#include <FMX.TMSFNCCustomControl.hpp>
#include <FMX.TMSFNCBitmapContainer.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.TMSFNCGraphics.hpp>
#include <FMX.TMSFNCGraphicsTypes.hpp>
#include <FMX.TMSFNCUtils.hpp>
#include <FMX.TMSFNCStyles.hpp>
#include <FMX.Controls.hpp>
#include <FMX.Types.hpp>
#include <System.Generics.Collections.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfnchtmlimagecontainer
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCHTMLImageContainer;
//-- type declarations -------------------------------------------------------
enum DECLSPEC_DENUM TTMSFNCHTMLImageContainerWidgetPosition : unsigned char { hwpLeft, hwpRight };

typedef void __fastcall (__closure *TTMSFNCHTMLImageContainerBeforeDrawWidgetEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCHTMLImageContainerWidgetPosition AWidgetPosition, bool &AAllow, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCHTMLImageContainerAfterDrawWidgetEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCHTMLImageContainerWidgetPosition AWidgetPosition);

typedef void __fastcall (__closure *TTMSFNCHTMLImageContainerBeforeDrawTextEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, System::UnicodeString AText, bool &AAllow, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCHTMLImageContainerAfterDrawTextEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, System::UnicodeString AText);

typedef void __fastcall (__closure *TTMSFNCHTMLImageContainerAnchorClickEvent)(System::TObject* Sender, System::UnicodeString AAnchor);

typedef void __fastcall (__closure *TTMSFNCHTMLImageContainerCheckedStateChangedEvent)(System::TObject* Sender, bool AChecked);

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCHTMLImageContainer : public Fmx::Tmsfnccustomcontrol::TTMSFNCCustomControl
{
	typedef Fmx::Tmsfnccustomcontrol::TTMSFNCCustomControl inherited;
	
private:
	Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* FBitmapContainer;
	bool FChecked;
	System::UnicodeString FText;
	bool FWordWrapping;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextTrimming FTrimming;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign FVerticalTextAlign;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign FHorizontalTextAlign;
	System::Classes::TNotifyEvent FOnChange;
	TTMSFNCHTMLImageContainerWidgetPosition FWidgetPosition;
	TTMSFNCHTMLImageContainerAfterDrawTextEvent FOnAfterDrawText;
	TTMSFNCHTMLImageContainerAfterDrawWidgetEvent FOnAfterDrawWidget;
	TTMSFNCHTMLImageContainerBeforeDrawTextEvent FOnBeforeDrawText;
	TTMSFNCHTMLImageContainerBeforeDrawWidgetEvent FOnBeforeDrawWidget;
	System::UnicodeString FBitmapName;
	Fmx::Tmsfnctypes::TTMSFNCBitmap* FWidgetImage;
	TTMSFNCHTMLImageContainerAnchorClickEvent FOnAnchorClick;
	TTMSFNCHTMLImageContainerCheckedStateChangedEvent FOnCheckedStateChanged;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FFont;
	void __fastcall SetBitmapContainer(Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* const Value);
	void __fastcall SetText(const System::UnicodeString Value);
	void __fastcall SetTrimming(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextTrimming Value);
	void __fastcall SetWordWrapping(const bool Value);
	void __fastcall SetHorizontalTextAlign(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign Value);
	void __fastcall SetVerticalTextAlign(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign Value);
	void __fastcall SetWidgetPosition(const TTMSFNCHTMLImageContainerWidgetPosition Value);
	void __fastcall SetBitmapName(const System::UnicodeString Value);
	void __fastcall SetWidgetImage(Fmx::Tmsfnctypes::TTMSFNCBitmap* const Value);
	void __fastcall SetFnt(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* __fastcall GetBitmapContainer();
	bool __fastcall IsTextStored();
	
protected:
	System::UnicodeString AnchorText;
	virtual void __fastcall Notification(System::Classes::TComponent* AComponent, System::Classes::TOperation Operation);
	virtual void __fastcall Draw(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	virtual void __fastcall HandleMouseMove(System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall HandleMouseUp(System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall DoDrawWidget(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	virtual void __fastcall DoDrawText(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	virtual void __fastcall DoExit();
	virtual void __fastcall DoEnter();
	virtual void __fastcall ChangeDPIScale(int M, int D);
	virtual void __fastcall ApplyStyle();
	virtual void __fastcall ResetToDefaultStyle();
	virtual void __fastcall DoChange();
	virtual void __fastcall DoBeforeDrawWidget(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCHTMLImageContainerWidgetPosition AWidgetPosition, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoAfterDrawWidget(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, TTMSFNCHTMLImageContainerWidgetPosition AWidgetPosition);
	virtual void __fastcall DoBeforeDrawText(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, System::UnicodeString AText, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoAfterDrawText(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, System::UnicodeString AText);
	virtual void __fastcall DoAnchorClick(System::UnicodeString AAnchor);
	void __fastcall DoCheckedStateChanged(bool AChecked);
	virtual void __fastcall SetChecked(const bool Value);
	virtual void __fastcall SetEnabled(const bool Value);
	System::UnicodeString __fastcall XYToAnchor(float AX, float AY);
	Fmx::Tmsfnctypes::TTMSFNCBitmap* __fastcall GetWidgetImage(System::UnicodeString AName);
	System::Types::TRectF __fastcall GetTextRect();
	System::Types::TRectF __fastcall GetWidgetAreaRect();
	System::Types::TRectF __fastcall GetWidgetRectangle(const System::Types::TRectF &ARect);
	__property Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* BitmapContainer = {read=GetBitmapContainer, write=SetBitmapContainer};
	__property Fmx::Tmsfnctypes::TTMSFNCBitmap* WidgetImage = {read=FWidgetImage, write=SetWidgetImage};
	__property System::UnicodeString BitmapName = {read=FBitmapName, write=SetBitmapName};
	__property bool Checked = {read=FChecked, write=SetChecked, default=0};
	__property System::UnicodeString Text = {read=FText, write=SetText, stored=IsTextStored};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* Font = {read=FFont, write=SetFnt};
	__property bool WordWrapping = {read=FWordWrapping, write=SetWordWrapping, default=0};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextTrimming Trimming = {read=FTrimming, write=SetTrimming, default=0};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign HorizontalTextAlign = {read=FHorizontalTextAlign, write=SetHorizontalTextAlign, default=1};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign VerticalTextAlign = {read=FVerticalTextAlign, write=SetVerticalTextAlign, default=0};
	__property TTMSFNCHTMLImageContainerWidgetPosition WidgetPosition = {read=FWidgetPosition, write=SetWidgetPosition, default=0};
	__property System::Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
	__property TTMSFNCHTMLImageContainerBeforeDrawWidgetEvent OnBeforeDrawWidget = {read=FOnBeforeDrawWidget, write=FOnBeforeDrawWidget};
	__property TTMSFNCHTMLImageContainerAfterDrawWidgetEvent OnAfterDrawWidget = {read=FOnAfterDrawWidget, write=FOnAfterDrawWidget};
	__property TTMSFNCHTMLImageContainerBeforeDrawTextEvent OnBeforeDrawText = {read=FOnBeforeDrawText, write=FOnBeforeDrawText};
	__property TTMSFNCHTMLImageContainerAfterDrawTextEvent OnAfterDrawText = {read=FOnAfterDrawText, write=FOnAfterDrawText};
	__property TTMSFNCHTMLImageContainerAnchorClickEvent OnAnchorClick = {read=FOnAnchorClick, write=FOnAnchorClick};
	__property TTMSFNCHTMLImageContainerCheckedStateChangedEvent OnCheckedStateChanged = {read=FOnCheckedStateChanged, write=FOnCheckedStateChanged};
	
public:
	__fastcall virtual TTMSFNCHTMLImageContainer(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCHTMLImageContainer();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
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

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
}	/* namespace Tmsfnchtmlimagecontainer */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCHTMLIMAGECONTAINER)
using namespace Fmx::Tmsfnchtmlimagecontainer;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfnchtmlimagecontainerHPP
