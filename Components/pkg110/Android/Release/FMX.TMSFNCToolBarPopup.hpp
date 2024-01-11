// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCToolBarPopup.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfnctoolbarpopupHPP
#define Fmx_TmsfnctoolbarpopupHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <FMX.TMSFNCPopup.hpp>
#include <FMX.TMSFNCToolBar.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.Types.hpp>
#include <System.SysUtils.hpp>
#include <FMX.TMSFNCCustomComponent.hpp>
#include <FMX.Controls.hpp>
#include <System.Generics.Collections.hpp>
#include <System.Generics.Defaults.hpp>
#include <System.Types.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfnctoolbarpopup
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCToolBarPopupButton;
class DELPHICLASS TTMSFNCToolBarPopupButtons;
class DELPHICLASS TTMSFNCCustomToolBarPopup;
class DELPHICLASS TTMSFNCToolBarPopup;
//-- type declarations -------------------------------------------------------
#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCToolBarPopupButton : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	TTMSFNCCustomToolBarPopup* FOwner;
	Fmx::Tmsfnctoolbar::TTMSFNCToolBarButton* FButton;
	System::UnicodeString FText;
	bool FDataBoolean;
	int FTag;
	System::UnicodeString FDataString;
	System::TObject* FDataObject;
	NativeInt FDataInteger;
	float FWidth;
	float FHeight;
	bool FEnabled;
	bool FVisible;
	float FTop;
	float FLeft;
	bool FLastElement;
	Fmx::Tmsfnctypes::TTMSFNCBitmap* FBitmap;
	void *FDataPointer;
	void __fastcall SetText(const System::UnicodeString Value);
	void __fastcall SetHeight(const float Value);
	void __fastcall SetWidth(const float Value);
	bool __fastcall IsHeightStored();
	bool __fastcall IsWidthStored();
	void __fastcall SetEnabled(const bool Value);
	void __fastcall SetVisible(const bool Value);
	bool __fastcall IsLeftStored();
	bool __fastcall IsTopStored();
	void __fastcall SetLeft(const float Value);
	void __fastcall SetTop(const float Value);
	void __fastcall SetLastElement(const bool Value);
	void __fastcall SetBitmap(Fmx::Tmsfnctypes::TTMSFNCBitmap* const Value);
	
protected:
	void __fastcall BitmapChanged(System::TObject* Sender);
	
public:
	__fastcall virtual TTMSFNCToolBarPopupButton(System::Classes::TCollection* Collection);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual ~TTMSFNCToolBarPopupButton();
	__property Fmx::Tmsfnctoolbar::TTMSFNCToolBarButton* Button = {read=FButton};
	__property void * DataPointer = {read=FDataPointer, write=FDataPointer};
	__property bool DataBoolean = {read=FDataBoolean, write=FDataBoolean, nodefault};
	__property System::TObject* DataObject = {read=FDataObject, write=FDataObject};
	__property System::UnicodeString DataString = {read=FDataString, write=FDataString};
	__property NativeInt DataInteger = {read=FDataInteger, write=FDataInteger, nodefault};
	
__published:
	__property System::UnicodeString Text = {read=FText, write=SetText};
	__property int Tag = {read=FTag, write=FTag, nodefault};
	__property float Left = {read=FLeft, write=SetLeft, stored=IsLeftStored};
	__property float Top = {read=FTop, write=SetTop, stored=IsTopStored};
	__property float Width = {read=FWidth, write=SetWidth, stored=IsWidthStored};
	__property float Height = {read=FHeight, write=SetHeight, stored=IsHeightStored};
	__property bool Enabled = {read=FEnabled, write=SetEnabled, default=1};
	__property bool Visible = {read=FVisible, write=SetVisible, default=1};
	__property bool LastElement = {read=FLastElement, write=SetLastElement, default=0};
	__property Fmx::Tmsfnctypes::TTMSFNCBitmap* Bitmap = {read=FBitmap, write=SetBitmap};
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCToolBarPopupButtons : public Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCToolBarPopupButton*>
{
	typedef Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCToolBarPopupButton*> inherited;
	
public:
	TTMSFNCToolBarPopupButton* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCCustomToolBarPopup* FOwner;
	HIDESBASE TTMSFNCToolBarPopupButton* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCToolBarPopupButton* const Value);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall CreateItemClass();
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	
public:
	__fastcall virtual TTMSFNCToolBarPopupButtons(TTMSFNCCustomToolBarPopup* AOwner);
	__property TTMSFNCToolBarPopupButton* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	HIDESBASE TTMSFNCToolBarPopupButton* __fastcall Add();
	HIDESBASE TTMSFNCToolBarPopupButton* __fastcall Insert(int Index);
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCToolBarPopupButtons() { }
	
};

#pragma pack(pop)

typedef void __fastcall (__closure *TTMSFNCToolBarPopupButtonClickEvent)(System::TObject* Sender, TTMSFNCToolBarPopupButton* AButton);

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCustomToolBarPopup : public Fmx::Tmsfncpopup::TTMSFNCCustomNonFocusablePopup
{
	typedef Fmx::Tmsfncpopup::TTMSFNCCustomNonFocusablePopup inherited;
	
private:
	bool FActivate;
	Fmx::Tmsfnctoolbar::TTMSFNCToolBar* FToolBar;
	TTMSFNCToolBarPopupButtons* FButtons;
	TTMSFNCToolBarPopupButtonClickEvent FButtonClick;
	System::Classes::TNotifyEvent FOnDeactivate;
	System::Classes::TNotifyEvent FOnActivate;
	void __fastcall SetButtons(TTMSFNCToolBarPopupButtons* const Value);
	bool __fastcall GetAutoAlign();
	void __fastcall SetAutoAlign(const bool Value);
	bool __fastcall GetDragGrip();
	void __fastcall SetDragGrip(const bool Value);
	
protected:
	virtual System::UnicodeString __fastcall GetVersion();
	virtual Fmx::Tmsfnctoolbar::TTMSFNCToolBar* __fastcall CreateToolBar();
	virtual TTMSFNCToolBarPopupButton* __fastcall FindPopupButton(Fmx::Tmsfnctoolbar::TTMSFNCToolBarButton* AButton);
	virtual NativeUInt __fastcall GetInstance();
	virtual void __fastcall SetAdaptToStyle(const bool Value);
	void __fastcall UpdateControls(System::TObject* Sender);
	virtual void __fastcall UpdateToolBar();
	virtual void __fastcall PrepareToolBar();
	void __fastcall ActivatePopup();
	void __fastcall DeactivatePopup();
	virtual void __fastcall DoClosePopup();
	void __fastcall ToolBarClick(System::TObject* Sender);
	void __fastcall ToolBarButtonClick(System::TObject* Sender);
	virtual void __fastcall DoDragGripMoving(System::TObject* Sender, double ADeltaX, double ADeltaY);
	__property TTMSFNCToolBarPopupButtons* Buttons = {read=FButtons, write=SetButtons};
	__property TTMSFNCToolBarPopupButtonClickEvent OnButtonClick = {read=FButtonClick, write=FButtonClick};
	__property bool AutoAlign = {read=GetAutoAlign, write=SetAutoAlign, default=1};
	__property System::Classes::TNotifyEvent OnActivate = {read=FOnActivate, write=FOnActivate};
	__property System::Classes::TNotifyEvent OnDeactivate = {read=FOnDeactivate, write=FOnDeactivate};
	__property bool DragGrip = {read=GetDragGrip, write=SetDragGrip, default=0};
	
public:
	__fastcall virtual TTMSFNCCustomToolBarPopup(System::Classes::TComponent* AOwner);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual ~TTMSFNCCustomToolBarPopup();
	virtual void __fastcall Activate();
	virtual void __fastcall Deactivate();
	virtual bool __fastcall DropDownActive();
	bool __fastcall Activated();
	__property Fmx::Tmsfnctoolbar::TTMSFNCToolBar* ToolBar = {read=FToolBar};
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCToolBarPopup : public TTMSFNCCustomToolBarPopup
{
	typedef TTMSFNCCustomToolBarPopup inherited;
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	
__published:
	__property AdaptToStyle = {default=0};
	__property OnButtonClick;
	__property AutoAlign = {default=1};
	__property Buttons;
	__property Placement = {default=0};
	__property PlacementRectangle;
	__property PlacementControl;
	__property OnActivate;
	__property OnDeactivate;
	__property Version = {default=0};
	__property DragGrip = {default=0};
public:
	/* TTMSFNCCustomToolBarPopup.Create */ inline __fastcall virtual TTMSFNCToolBarPopup(System::Classes::TComponent* AOwner) : TTMSFNCCustomToolBarPopup(AOwner) { }
	/* TTMSFNCCustomToolBarPopup.Destroy */ inline __fastcall virtual ~TTMSFNCToolBarPopup() { }
	
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x0);
static constexpr System::Int8 BLD_VER = System::Int8(0x0);
}	/* namespace Tmsfnctoolbarpopup */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCTOOLBARPOPUP)
using namespace Fmx::Tmsfnctoolbarpopup;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfnctoolbarpopupHPP
