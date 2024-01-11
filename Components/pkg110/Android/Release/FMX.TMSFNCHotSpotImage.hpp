// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCHotSpotImage.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfnchotspotimageHPP
#define Fmx_TmsfnchotspotimageHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <FMX.TMSFNCCustomControl.hpp>
#include <FMX.TMSFNCImage.hpp>
#include <FMX.Controls.hpp>
#include <FMX.Graphics.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.TMSFNCGraphics.hpp>
#include <FMX.TMSFNCGraphicsTypes.hpp>
#include <System.UITypes.hpp>
#include <System.Types.hpp>
#include <FMX.Types.hpp>
#include <System.Generics.Collections.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>
#include <FMX.TMSFNCBitmapContainer.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfnchotspotimage
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCHotSpotAppearance;
class DELPHICLASS TTMSFNCHotSpot;
class DELPHICLASS TTMSFNCHotSpotCollection;
class DELPHICLASS TTMSFNCCustomHotSpotImage;
class DELPHICLASS TTMSFNCHotSpotImage;
//-- type declarations -------------------------------------------------------
enum DECLSPEC_DENUM TTMSFNCHotSpotNameLocation : unsigned char { nlNone, nlPolygonCenter, nlCenter, nlTopLeft, nlCenterLeft, nlBottomLeft, nlTopCenter };

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCHotSpotAppearance : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FDownFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FDownFont;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FDownStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FHoverFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FHoverFont;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FHoverStroke;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FSelectedFill;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FSelectedFont;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FSelectedStroke;
	System::Classes::TNotifyEvent FOnChanged;
	void __fastcall SetDownFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetDownFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetDownStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetHoverFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetHoverFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetHoverStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetSelectedFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetSelectedFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetSelectedStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	
protected:
	virtual void __fastcall DoChanged(System::TObject* Sender);
	virtual void __fastcall FillChanged(System::TObject* Sender);
	virtual void __fastcall FontChanged(System::TObject* Sender);
	virtual void __fastcall StrokeChanged(System::TObject* Sender);
	__property System::Classes::TNotifyEvent OnChanged = {read=FOnChanged, write=FOnChanged};
	
public:
	__fastcall TTMSFNCHotSpotAppearance(System::Classes::TPersistent* Source);
	__fastcall virtual ~TTMSFNCHotSpotAppearance();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* DownFill = {read=FDownFill, write=SetDownFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* DownFont = {read=FDownFont, write=SetDownFont};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* DownStroke = {read=FDownStroke, write=SetDownStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* HoverFill = {read=FHoverFill, write=SetHoverFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* HoverFont = {read=FHoverFont, write=SetHoverFont};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* HoverStroke = {read=FHoverStroke, write=SetHoverStroke};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* SelectedFill = {read=FSelectedFill, write=SetSelectedFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* SelectedFont = {read=FSelectedFont, write=SetSelectedFont};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* SelectedStroke = {read=FSelectedStroke, write=SetSelectedStroke};
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCHotSpot : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	TTMSFNCHotSpotAppearance* FAppearance;
	System::Types::TRectF FDrawBounds;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsPathPolygon FDrawPolygon;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsPathPolygon FHotSpotPolygon;
	System::UnicodeString FName;
	bool FSelectable;
	bool FSelected;
	bool FShowDown;
	bool FShowDownName;
	bool FShowHovered;
	bool FShowHoverName;
	bool FShowSelected;
	bool FShowSelectedName;
	System::UnicodeString FDataString;
	bool FHovered;
	void __fastcall AppearanceChanged(System::TObject* Sender);
	void __fastcall PolygonChanged();
	void __fastcall RecalculatePolygon(double WScale, double HScale, float XOffset, float YOffset);
	void __fastcall SetAppearance(TTMSFNCHotSpotAppearance* const Value);
	void __fastcall SetPolygon(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsPathPolygon Value);
	void __fastcall SetSelectable(const bool Value);
	void __fastcall SetSelected(const bool Value);
	void __fastcall SetShowDown(const bool Value);
	void __fastcall SetShowDownName(const bool Value);
	void __fastcall SetShowHovered(const bool Value);
	void __fastcall SetShowHoverName(const bool Value);
	void __fastcall SetShowSelected(const bool Value);
	void __fastcall SetShowSelectedName(const bool Value);
	void __fastcall SetName(const System::UnicodeString Value);
	
protected:
	virtual void __fastcall DefineProperties(System::Classes::TFiler* Filer);
	void __fastcall LoadPoints(System::Classes::TReader* Reader);
	void __fastcall StorePoints(System::Classes::TWriter* Writer);
	virtual void __fastcall RepaintOwner();
	
public:
	__fastcall virtual TTMSFNCHotSpot(System::Classes::TCollection* ACollection);
	__fastcall virtual ~TTMSFNCHotSpot();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	void __fastcall SetEllipse(const System::Types::TRectF &ABounds);
	void __fastcall SetPath(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsPath* APath);
	void __fastcall SetRectangle(const System::Types::TRectF &ARect);
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsPathPolygon HotSpotPolygon = {read=FHotSpotPolygon, write=SetPolygon};
	
__published:
	__property TTMSFNCHotSpotAppearance* Appearance = {read=FAppearance, write=SetAppearance};
	__property System::UnicodeString DataString = {read=FDataString, write=FDataString};
	__property bool Hovered = {read=FHovered, nodefault};
	__property System::UnicodeString Name = {read=FName, write=SetName};
	__property bool Selectable = {read=FSelectable, write=SetSelectable, default=1};
	__property bool Selected = {read=FSelected, write=SetSelected, default=0};
	__property bool ShowDownName = {read=FShowDownName, write=SetShowDownName, default=0};
	__property bool ShowHoverName = {read=FShowHoverName, write=SetShowHoverName, default=0};
	__property bool ShowOnDown = {read=FShowDown, write=SetShowDown, default=1};
	__property bool ShowOnHover = {read=FShowHovered, write=SetShowHovered, default=1};
	__property bool ShowOnSelect = {read=FShowSelected, write=SetShowSelected, default=1};
	__property bool ShowSelectedName = {read=FShowSelectedName, write=SetShowSelectedName, default=0};
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCHotSpotCollection : public System::Classes::TOwnedCollection
{
	typedef System::Classes::TOwnedCollection inherited;
	
public:
	TTMSFNCHotSpot* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCCustomHotSpotImage* FOwner;
	System::Classes::TNotifyEvent FOnChanged;
	HIDESBASE TTMSFNCHotSpot* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCHotSpot* const Value);
	
public:
	__fastcall TTMSFNCHotSpotCollection(TTMSFNCCustomHotSpotImage* AOwner);
	HIDESBASE TTMSFNCHotSpot* __fastcall Add();
	virtual void __fastcall EndUpdate();
	HIDESBASE TTMSFNCHotSpot* __fastcall Insert(int Index);
	__property TTMSFNCCustomHotSpotImage* HotSpotImage = {read=FOwner};
	__property TTMSFNCHotSpot* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	__property System::Classes::TNotifyEvent OnChanged = {read=FOnChanged, write=FOnChanged};
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCHotSpotCollection() { }
	
};

#pragma pack(pop)

typedef void __fastcall (__closure *TTMSFNCHotSpotImageItemChangeEvent)(System::TObject* Sender, int AIndex, bool &Allow);

typedef void __fastcall (__closure *TTMSFNCHotSpotImageItemChangedEvent)(System::TObject* Sender, int AIndex);

typedef void __fastcall (__closure *TTMSFNCHotSpotImageBeforeDrawNameEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, int AIndex, System::UnicodeString AText, const System::Types::TRectF &ARect, TTMSFNCHotSpotNameLocation ALocation, bool &AAllow, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCHotSpotImageAfterDrawNameEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, int AIndex, System::UnicodeString AText, const System::Types::TRectF &ARect, TTMSFNCHotSpotNameLocation ALocation);

typedef void __fastcall (__closure *TTMSFNCHotSpotImageBeforeDrawHotSpotEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, int AIndex, const System::Types::TRectF &ABoundsRect, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsPathPolygon APolygon, Fmx::Tmsfnctypes::TTMSFNCBitmap* ABitmap, bool &AAllow, bool &ADefaultDraw);

typedef void __fastcall (__closure *TTMSFNCHotSpotImageAfterDrawHotSpotEvent)(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, int AIndex, const System::Types::TRectF &ABoundsRect, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsPathPolygon APolygon, Fmx::Tmsfnctypes::TTMSFNCBitmap* ABitmap);

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCustomHotSpotImage : public Fmx::Tmsfncimage::TTMSFNCCustomImage
{
	typedef Fmx::Tmsfncimage::TTMSFNCCustomImage inherited;
	
private:
	TTMSFNCHotSpotAppearance* FDefaultHotSpotAppearance;
	int FDownIndex;
	TTMSFNCHotSpotNameLocation FHotSpotNameLocation;
	TTMSFNCHotSpotCollection* FHotSpots;
	Fmx::Tmsfnctypes::TTMSFNCBitmap* FHoverBitmap;
	int FHoverIndex;
	float FHScale;
	bool FMouseDown;
	bool FMultiSelect;
	Fmx::Tmsfnctypes::TTMSFNCBitmap* FSelectedBitmap;
	int FSelectedIndex;
	float FWScale;
	float FXOffset;
	float FYOffset;
	TTMSFNCHotSpotImageAfterDrawNameEvent FOnAfterDrawHotSpotName;
	TTMSFNCHotSpotImageBeforeDrawHotSpotEvent FOnBeforeDrawHoveredHotSpot;
	TTMSFNCHotSpotImageBeforeDrawNameEvent FOnBeforeDrawHotSpotName;
	TTMSFNCHotSpotImageItemChangedEvent FOnHotSpotAppearanceChanged;
	TTMSFNCHotSpotImageItemChangedEvent FOnHotSpotShapeChanged;
	TTMSFNCHotSpotImageItemChangeEvent FOnSelectedHotSpotChange;
	TTMSFNCHotSpotImageItemChangedEvent FOnSelectedHotSpotChanged;
	TTMSFNCHotSpotImageItemChangeEvent FOnHoveredHotSpotChange;
	TTMSFNCHotSpotImageItemChangedEvent FOnHoveredHotSpotChanged;
	TTMSFNCHotSpotImageBeforeDrawHotSpotEvent FOnBeforeDrawSelectedHotSpot;
	TTMSFNCHotSpotImageAfterDrawHotSpotEvent FOnAfterDrawDownHotSpot;
	TTMSFNCHotSpotImageAfterDrawHotSpotEvent FOnAfterDrawSelectedHotSpot;
	TTMSFNCHotSpotImageAfterDrawHotSpotEvent FOnAfterDrawHoveredHotSpot;
	TTMSFNCHotSpotImageBeforeDrawHotSpotEvent FOnBeforeDrawDownHotSpot;
	Fmx::Tmsfncgraphicstypes::TTMSFNCAppearanceGlobalFont* FGlobalFont;
	TTMSFNCHotSpot* __fastcall AddHotSpot(System::UnicodeString AName = System::UnicodeString(), TTMSFNCHotSpotAppearance* AAppearance = (TTMSFNCHotSpotAppearance*)(0x0));
	HIDESBASE void __fastcall BitmapChanged(System::TObject* Sender);
	bool __fastcall CalculateDrawScale();
	void __fastcall DrawDownHotSpot(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	void __fastcall DrawHotSpotBitmap(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, Fmx::Tmsfnctypes::TTMSFNCBitmap* ABitmap, int AIndex);
	void __fastcall DrawHotSpotTexture(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, Fmx::Tmsfnctypes::TTMSFNCBitmap* ATexture, int AIndex);
	void __fastcall DrawHoverHotSpot(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	void __fastcall DrawName(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect, int AIndex, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* AFont);
	void __fastcall DrawSelectedHotSpot(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	void __fastcall HotSpotAppearanceChanged(System::TObject* Sender, int AIndex);
	void __fastcall HotSpotPolygonChanged(System::TObject* Sender, int AIndex);
	int __fastcall GetHotSpotIndex(float AX, float AY);
	void __fastcall SetDefaultHotSpotAppearance(TTMSFNCHotSpotAppearance* const Value);
	void __fastcall SetHoverBitmap(Fmx::Tmsfnctypes::TTMSFNCBitmap* const Value);
	void __fastcall SetIndices(float AX, float AY);
	void __fastcall SetMultiSelect(const bool Value);
	void __fastcall SetSelectedBitmap(Fmx::Tmsfnctypes::TTMSFNCBitmap* const Value);
	void __fastcall SetSelectedIndex(const int Value);
	void __fastcall UpdateDrawPolygons();
	void __fastcall SetHotSpotNameLocation(const TTMSFNCHotSpotNameLocation Value);
	void __fastcall SetGlobalFont(Fmx::Tmsfncgraphicstypes::TTMSFNCAppearanceGlobalFont* const Value);
	
protected:
	virtual void __fastcall DoBeforeDrawHotSpotName(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, int AIndex, System::UnicodeString AText, const System::Types::TRectF &ARect, TTMSFNCHotSpotNameLocation ALocation, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoAfterDrawHotSpotName(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, int AIndex, System::UnicodeString AText, const System::Types::TRectF &ARect, TTMSFNCHotSpotNameLocation ALocation);
	virtual void __fastcall DoBeforeDrawHoveredHotSpot(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, int AIndex, const System::Types::TRectF &ABoundsRect, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsPathPolygon APolygon, Fmx::Tmsfnctypes::TTMSFNCBitmap* ABitmap, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoAfterDrawHoveredHotSpot(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, int AIndex, const System::Types::TRectF &ABoundsRect, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsPathPolygon APolygon, Fmx::Tmsfnctypes::TTMSFNCBitmap* ABitmap);
	virtual void __fastcall DoBeforeDrawDownHotSpot(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, int AIndex, const System::Types::TRectF &ABoundsRect, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsPathPolygon APolygon, Fmx::Tmsfnctypes::TTMSFNCBitmap* ABitmap, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoAfterDrawDownHotSpot(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, int AIndex, const System::Types::TRectF &ABoundsRect, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsPathPolygon APolygon, Fmx::Tmsfnctypes::TTMSFNCBitmap* ABitmap);
	virtual void __fastcall DoBeforeDrawSelectedHotSpot(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, int AIndex, const System::Types::TRectF &ABoundsRect, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsPathPolygon APolygon, Fmx::Tmsfnctypes::TTMSFNCBitmap* ABitmap, bool &AAllow, bool &ADefaultDraw);
	virtual void __fastcall DoAfterDrawSelectedHotSpot(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, int AIndex, const System::Types::TRectF &ABoundsRect, Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsPathPolygon APolygon, Fmx::Tmsfnctypes::TTMSFNCBitmap* ABitmap);
	virtual void __fastcall DoHotSpotAppearanceChanged(System::TObject* Sender, int AIndex);
	virtual void __fastcall DoHotSpotShapeChanged(int AIndex);
	virtual void __fastcall DoHoveredHotSpotChange(int AIndex, bool &AAllow);
	virtual void __fastcall DoHoveredHotSpotChanged(int AIndex);
	virtual void __fastcall DoSelectedHotSpotChange(int AIndex, bool &AAllow);
	virtual void __fastcall DoSelectedHotSpotChanged(int AIndex);
	virtual void __fastcall HandleMouseDown(System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall HandleMouseEnter();
	virtual void __fastcall HandleMouseLeave();
	virtual void __fastcall HandleMouseMove(System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall HandleMouseUp(System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall SetAS(const bool Value);
	virtual void __fastcall SetAspectRatio(const bool Value);
	virtual void __fastcall SetCenter(const bool Value);
	virtual void __fastcall SetCropping(const bool Value);
	virtual void __fastcall SetHeight(const float Value);
	virtual void __fastcall SetWidth(const float Value);
	virtual void __fastcall SetStretch(const bool Value);
	virtual void __fastcall ChangeDPIScale(int M, int D);
	virtual void __fastcall SetFonts(Fmx::Tmsfncgraphicstypes::TTMSFNCAppearanceGlobalFontType ASetType);
	__property TTMSFNCHotSpotAppearance* DefaultHotSpotAppearance = {read=FDefaultHotSpotAppearance, write=SetDefaultHotSpotAppearance};
	__property TTMSFNCHotSpotNameLocation HotSpotNameLocation = {read=FHotSpotNameLocation, write=SetHotSpotNameLocation, default=0};
	__property TTMSFNCHotSpotCollection* HotSpots = {read=FHotSpots, write=FHotSpots};
	__property Fmx::Tmsfnctypes::TTMSFNCBitmap* HoverBitmap = {read=FHoverBitmap, write=SetHoverBitmap};
	__property bool MultiSelect = {read=FMultiSelect, write=SetMultiSelect, default=0};
	__property Fmx::Tmsfnctypes::TTMSFNCBitmap* SelectedBitmap = {read=FSelectedBitmap, write=SetSelectedBitmap};
	__property int SelectedHotSpot = {read=FSelectedIndex, write=SetSelectedIndex, nodefault};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCAppearanceGlobalFont* GlobalFont = {read=FGlobalFont, write=SetGlobalFont};
	__property TTMSFNCHotSpotImageAfterDrawNameEvent OnAfterDrawHotSpotName = {read=FOnAfterDrawHotSpotName, write=FOnAfterDrawHotSpotName};
	__property TTMSFNCHotSpotImageAfterDrawHotSpotEvent OnAfterDrawHoveredHotSpot = {read=FOnAfterDrawHoveredHotSpot, write=FOnAfterDrawHoveredHotSpot};
	__property TTMSFNCHotSpotImageBeforeDrawHotSpotEvent OnBeforeDrawHoveredHotSpot = {read=FOnBeforeDrawHoveredHotSpot, write=FOnBeforeDrawHoveredHotSpot};
	__property TTMSFNCHotSpotImageAfterDrawHotSpotEvent OnAfterDrawDownHotSpot = {read=FOnAfterDrawDownHotSpot, write=FOnAfterDrawDownHotSpot};
	__property TTMSFNCHotSpotImageBeforeDrawHotSpotEvent OnBeforeDrawDownHotSpot = {read=FOnBeforeDrawDownHotSpot, write=FOnBeforeDrawDownHotSpot};
	__property TTMSFNCHotSpotImageAfterDrawHotSpotEvent OnAfterDrawSelectedHotSpot = {read=FOnAfterDrawSelectedHotSpot, write=FOnAfterDrawSelectedHotSpot};
	__property TTMSFNCHotSpotImageBeforeDrawHotSpotEvent OnBeforeDrawSelectedHotSpot = {read=FOnBeforeDrawSelectedHotSpot, write=FOnBeforeDrawSelectedHotSpot};
	__property TTMSFNCHotSpotImageBeforeDrawNameEvent OnBeforeDrawHotSpotName = {read=FOnBeforeDrawHotSpotName, write=FOnBeforeDrawHotSpotName};
	__property TTMSFNCHotSpotImageItemChangedEvent OnHotSpotAppearanceChanged = {read=FOnHotSpotAppearanceChanged, write=FOnHotSpotAppearanceChanged};
	__property TTMSFNCHotSpotImageItemChangedEvent OnHotSpotShapeChanged = {read=FOnHotSpotShapeChanged, write=FOnHotSpotShapeChanged};
	__property TTMSFNCHotSpotImageItemChangeEvent OnHoveredHotSpotChange = {read=FOnHoveredHotSpotChange, write=FOnHoveredHotSpotChange};
	__property TTMSFNCHotSpotImageItemChangedEvent OnHoveredHotSpotChanged = {read=FOnHoveredHotSpotChanged, write=FOnHoveredHotSpotChanged};
	__property TTMSFNCHotSpotImageItemChangeEvent OnSelectedHotSpotChange = {read=FOnSelectedHotSpotChange, write=FOnSelectedHotSpotChange};
	__property TTMSFNCHotSpotImageItemChangedEvent OnSelectedHotSpotChanged = {read=FOnSelectedHotSpotChanged, write=FOnSelectedHotSpotChanged};
	
public:
	virtual void __fastcall Resize();
	__fastcall virtual TTMSFNCCustomHotSpotImage(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCCustomHotSpotImage();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	virtual void __fastcall Draw(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	virtual void __fastcall Loaded();
	virtual TTMSFNCHotSpot* __fastcall AddRectangleHotSpot(const System::Types::TRectF &ARect, System::UnicodeString AName = System::UnicodeString(), TTMSFNCHotSpotAppearance* AAppearance = (TTMSFNCHotSpotAppearance*)(0x0));
	virtual TTMSFNCHotSpot* __fastcall AddEllipseHotSpot(const System::Types::TRectF &ABounds, System::UnicodeString AName = System::UnicodeString(), TTMSFNCHotSpotAppearance* AAppearance = (TTMSFNCHotSpotAppearance*)(0x0));
	virtual TTMSFNCHotSpot* __fastcall AddPolygonHotSpot(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsPathPolygon APolygon, System::UnicodeString AName = System::UnicodeString(), TTMSFNCHotSpotAppearance* AAppearance = (TTMSFNCHotSpotAppearance*)(0x0));
	virtual TTMSFNCHotSpot* __fastcall AddPathHotSpot(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsPath* APath, System::UnicodeString AName = System::UnicodeString(), TTMSFNCHotSpotAppearance* AAppearance = (TTMSFNCHotSpotAppearance*)(0x0));
	int __fastcall GetHotSpotIndexByName(System::UnicodeString AName);
	TTMSFNCHotSpot* __fastcall GetHotSpotByName(System::UnicodeString AName);
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

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCHotSpotImage : public TTMSFNCCustomHotSpotImage
{
	typedef TTMSFNCCustomHotSpotImage inherited;
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	
__published:
	__property AspectRatio = {default=1};
	__property AutoSize = {default=0};
	__property Bitmap;
	__property Bitmaps;
	__property BitmapContainer;
	__property Center = {default=1};
	__property Cropping = {default=0};
	__property Fill;
	__property Stretch = {default=0};
	__property Stroke;
	__property Version = {default=0};
	__property DefaultHotSpotAppearance;
	__property HotSpotNameLocation = {default=0};
	__property HotSpots;
	__property HoverBitmap;
	__property MultiSelect = {default=0};
	__property SelectedBitmap;
	__property SelectedHotSpot;
	__property GlobalFont;
	__property OnAfterDrawDownHotSpot;
	__property OnAfterDrawHotSpotName;
	__property OnAfterDrawHoveredHotSpot;
	__property OnAfterDrawSelectedHotSpot;
	__property OnBeforeDrawDownHotSpot;
	__property OnBeforeDrawHotSpotName;
	__property OnBeforeDrawHoveredHotSpot;
	__property OnBeforeDrawSelectedHotSpot;
	__property OnHotSpotAppearanceChanged;
	__property OnHotSpotShapeChanged;
	__property OnHoveredHotSpotChange;
	__property OnHoveredHotSpotChanged;
	__property OnSelectedHotSpotChange;
	__property OnSelectedHotSpotChanged;
public:
	/* TTMSFNCCustomHotSpotImage.Create */ inline __fastcall virtual TTMSFNCHotSpotImage(System::Classes::TComponent* AOwner) : TTMSFNCCustomHotSpotImage(AOwner) { }
	/* TTMSFNCCustomHotSpotImage.Destroy */ inline __fastcall virtual ~TTMSFNCHotSpotImage() { }
	
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x1);
static constexpr System::Int8 BLD_VER = System::Int8(0x2);
}	/* namespace Tmsfnchotspotimage */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCHOTSPOTIMAGE)
using namespace Fmx::Tmsfnchotspotimage;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfnchotspotimageHPP
