// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCCloudDemoListBox.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncclouddemolistboxHPP
#define Fmx_TmsfncclouddemolistboxHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <FMX.TMSFNCCustomScrollControl.hpp>
#include <FMX.TMSFNCGraphics.hpp>
#include <FMX.TMSFNCGraphicsTypes.hpp>
#include <FMX.Controls.hpp>
#include <System.Types.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <System.UITypes.hpp>
#include <FMX.TMSFNCCustomControl.hpp>
#include <FMX.Types.hpp>
#include <System.Generics.Collections.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncclouddemolistbox
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCCloudDemoListBoxItem;
class DELPHICLASS TTMSFNCCloudDemoListBoxItems;
class DELPHICLASS TTMSFNCCustomCloudDemoListBox;
class DELPHICLASS TTMSFNCCloudDemoListBox;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TTMSFNCCloudDemoListBoxItem : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	TTMSFNCCustomCloudDemoListBox* FOwner;
	System::UnicodeString FText;
	Fmx::Tmsfnctypes::TTMSFNCScaledBitmaps* FBitmaps;
	bool FDataBoolean;
	System::UnicodeString FDataString;
	System::TObject* FDataObject;
	NativeInt FDataInteger;
	void *FDataPointer;
	System::Uitypes::TAlphaColor FTextColor;
	void __fastcall SetText(const System::UnicodeString Value);
	void __fastcall SetBitmaps(Fmx::Tmsfnctypes::TTMSFNCScaledBitmaps* const Value);
	void __fastcall SetTextColor(const System::Uitypes::TAlphaColor Value);
	
protected:
	void __fastcall BitmapsChanged(System::TObject* Sender);
	
public:
	__fastcall virtual TTMSFNCCloudDemoListBoxItem(System::Classes::TCollection* Collection);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual ~TTMSFNCCloudDemoListBoxItem();
	__property void * DataPointer = {read=FDataPointer, write=FDataPointer};
	__property bool DataBoolean = {read=FDataBoolean, write=FDataBoolean, nodefault};
	__property System::TObject* DataObject = {read=FDataObject, write=FDataObject};
	__property System::UnicodeString DataString = {read=FDataString, write=FDataString};
	__property NativeInt DataInteger = {read=FDataInteger, write=FDataInteger};
	
__published:
	__property Fmx::Tmsfnctypes::TTMSFNCScaledBitmaps* Bitmaps = {read=FBitmaps, write=SetBitmaps};
	__property System::UnicodeString Text = {read=FText, write=SetText};
	__property System::Uitypes::TAlphaColor TextColor = {read=FTextColor, write=SetTextColor, default=-16777216};
};


class PASCALIMPLEMENTATION TTMSFNCCloudDemoListBoxItems : public System::Classes::TOwnedCollection
{
	typedef System::Classes::TOwnedCollection inherited;
	
public:
	TTMSFNCCloudDemoListBoxItem* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCCustomCloudDemoListBox* FOwner;
	HIDESBASE TTMSFNCCloudDemoListBoxItem* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCCloudDemoListBoxItem* const Value);
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall CreateItemClass();
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	
public:
	__fastcall virtual TTMSFNCCloudDemoListBoxItems(TTMSFNCCustomCloudDemoListBox* AOwner);
	__property TTMSFNCCloudDemoListBoxItem* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	HIDESBASE TTMSFNCCloudDemoListBoxItem* __fastcall Add();
	HIDESBASE TTMSFNCCloudDemoListBoxItem* __fastcall Insert(int Index);
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCCloudDemoListBoxItems() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCustomCloudDemoListBox : public Fmx::Tmsfnccustomscrollcontrol::TTMSFNCCustomScrollControl
{
	typedef Fmx::Tmsfnccustomscrollcontrol::TTMSFNCCustomScrollControl inherited;
	
private:
	float FItemHeight;
	TTMSFNCCloudDemoListBoxItems* FItems;
	int FItemIndex;
	System::Classes::TNotifyEvent FOnItemChanged;
	bool __fastcall IsItemHeightStored();
	void __fastcall SetItemHeight(const float Value);
	void __fastcall SetItems(TTMSFNCCloudDemoListBoxItems* const Value);
	void __fastcall SetItemIndex(const int Value);
	
protected:
	virtual void __fastcall ChangeDPIScale(int M, int D);
	virtual bool __fastcall ColumnStretchingActive();
	virtual double __fastcall GetTotalContentHeight();
	virtual int __fastcall XYToItem(float AX, float AY);
	System::UnicodeString __fastcall FileTypeToIcon(System::UnicodeString AFileType);
	virtual void __fastcall HandleMouseWheel(System::Classes::TShiftState Shift, int WheelDelta, bool &Handled);
	virtual void __fastcall HandleSelection(System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall RepaintItems();
	virtual void __fastcall Rebuild();
	virtual void __fastcall VerticalScrollPositionChanged();
	virtual void __fastcall UpdateControlScroll(double AHorizontalPos, double AVerticalPos, double ANewHorizontalPos, double ANewVerticalPos);
	virtual void __fastcall Draw(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	__property TTMSFNCCloudDemoListBoxItems* Items = {read=FItems, write=SetItems};
	__property float ItemHeight = {read=FItemHeight, write=SetItemHeight, stored=IsItemHeightStored};
	__property int ItemIndex = {read=FItemIndex, write=SetItemIndex, default=-1};
	
public:
	__fastcall virtual TTMSFNCCustomCloudDemoListBox(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCCustomCloudDemoListBox();
	void __fastcall AddItem(System::UnicodeString AText, System::UnicodeString AResource = System::UnicodeString(), System::TObject* AObject = (System::TObject*)(0x0));
	void __fastcall InsertItem(int AIndex, System::UnicodeString AText, System::UnicodeString AResource = System::UnicodeString(), System::TObject* AObject = (System::TObject*)(0x0));
	virtual void __fastcall EndUpdate();
	virtual void __fastcall Clear();
	bool __fastcall SupportsFileType(System::UnicodeString AFileType);
	__property System::Classes::TNotifyEvent OnItemChanged = {read=FOnItemChanged, write=FOnItemChanged};
};


class PASCALIMPLEMENTATION TTMSFNCCloudDemoListBox : public TTMSFNCCustomCloudDemoListBox
{
	typedef TTMSFNCCustomCloudDemoListBox inherited;
	
__published:
	__property ItemIndex = {default=-1};
	__property Items;
	__property ItemHeight;
public:
	/* TTMSFNCCustomCloudDemoListBox.Create */ inline __fastcall virtual TTMSFNCCloudDemoListBox(System::Classes::TComponent* AOwner) : TTMSFNCCustomCloudDemoListBox(AOwner) { }
	/* TTMSFNCCustomCloudDemoListBox.Destroy */ inline __fastcall virtual ~TTMSFNCCloudDemoListBox() { }
	
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Tmsfncclouddemolistbox */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCCLOUDDEMOLISTBOX)
using namespace Fmx::Tmsfncclouddemolistbox;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncclouddemolistboxHPP
