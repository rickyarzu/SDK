// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCCustomGroup.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfnccustomgroupHPP
#define Fmx_TmsfnccustomgroupHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <System.SysUtils.hpp>
#include <System.TypInfo.hpp>
#include <FMX.TMSFNCCustomControl.hpp>
#include <FMX.TMSFNCGraphics.hpp>
#include <FMX.Controls.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.TMSFNCBitmapContainer.hpp>
#include <FMX.TMSFNCUtils.hpp>
#include <FMX.TMSFNCGraphicsTypes.hpp>
#include <System.Generics.Collections.hpp>
#include <System.Types.hpp>
#include <System.Generics.Defaults.hpp>
#include <FMX.Types.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfnccustomgroup
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCCustomGroupList;
class DELPHICLASS TTMSFNCGroupTitle;
class DELPHICLASS TTMSFNCCustomGroup;
class DELPHICLASS TTMSFNCGroup;
//-- type declarations -------------------------------------------------------
_DECLARE_METACLASS(System::TMetaClass, TTMSFNCCustomGroupControlClass);

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCustomGroupList : public System::Generics::Collections::TList__1<Fmx::Controls::TControl*>
{
	typedef System::Generics::Collections::TList__1<Fmx::Controls::TControl*> inherited;
	
public:
	/* {System_Generics_Collections}TList<FMX_Controls_TControl>.Create */ inline __fastcall TTMSFNCCustomGroupList()/* overload */ : System::Generics::Collections::TList__1<Fmx::Controls::TControl*>() { }
	/* {System_Generics_Collections}TList<FMX_Controls_TControl>.Create */ inline __fastcall TTMSFNCCustomGroupList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<Fmx::Controls::TControl*> > AComparer)/* overload */ : System::Generics::Collections::TList__1<Fmx::Controls::TControl*>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_Controls_TControl>.Create */ inline __fastcall TTMSFNCCustomGroupList(System::Generics::Collections::TEnumerable__1<Fmx::Controls::TControl*>* const Collection)/* overload */ : System::Generics::Collections::TList__1<Fmx::Controls::TControl*>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_Controls_TControl>.Create */ inline __fastcall TTMSFNCCustomGroupList(Fmx::Controls::TControl* const *Values, const int Values_High)/* overload */ : System::Generics::Collections::TList__1<Fmx::Controls::TControl*>(Values, Values_High) { }
	/* {System_Generics_Collections}TList<FMX_Controls_TControl>.Destroy */ inline __fastcall virtual ~TTMSFNCCustomGroupList() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCGroupTitle : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	System::UnicodeString FText;
	System::Classes::TNotifyEvent FOnChange;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FFont;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign FAlignment;
	void __fastcall SetText(const System::UnicodeString Value);
	void __fastcall SetFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetAlignment(const Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign Value);
	
protected:
	void __fastcall FontChanged(System::TObject* Sender);
	__property System::Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
	void __fastcall Changed();
	
public:
	__fastcall virtual TTMSFNCGroupTitle();
	__fastcall virtual ~TTMSFNCGroupTitle();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property System::UnicodeString Text = {read=FText, write=SetText};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* Font = {read=FFont, write=SetFont};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsTextAlign Alignment = {read=FAlignment, write=SetAlignment, default=1};
};

#pragma pack(pop)

typedef void __fastcall (__closure *TTMSFNCGroupGetControlClassEvent)(System::TObject* Sender, int AIndex, TTMSFNCCustomGroupControlClass &AControlClass);

typedef void __fastcall (__closure *TTMSFNCGroupSetControlPropertiesEvent)(System::TObject* Sender, Fmx::Controls::TControl* AControl, int AIndex);

typedef void __fastcall (__closure *TTMSFNCGroupSetControlNameEvent)(System::TObject* Sender, Fmx::Controls::TControl* AControl, int AIndex);

typedef void __fastcall (__closure *TTMSFNCGroupSetControlTextEvent)(System::TObject* Sender, Fmx::Controls::TControl* AControl, int AIndex, System::UnicodeString AText);

typedef void __fastcall (__closure *TTMSFNCGroupSetControlBoundsEvent)(System::TObject* Sender, Fmx::Controls::TControl* AControl, int AIndex, float ALeft, float ATop, float AWidth, float AHeight);

typedef void __fastcall (__closure *TTMSFNCGroupGetControlTextEvent)(System::TObject* Sender, Fmx::Controls::TControl* AControl, int AIndex, System::UnicodeString &AText);

typedef void __fastcall (__closure *TTMSFNCGroupUpdateControlPropertiesEvent)(System::TObject* Sender, Fmx::Controls::TControl* AControl, int AIndex);

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCustomGroup : public Fmx::Tmsfnccustomcontrol::TTMSFNCCustomControl
{
	typedef Fmx::Tmsfnccustomcontrol::TTMSFNCCustomControl inherited;
	
private:
	int FUpdateCount;
	Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* FBitmapContainer;
	TTMSFNCCustomGroupList* FControls;
	System::Classes::TStrings* FItems;
	int FColumns;
	bool FIsReadingControl;
	bool FIsUpdatingControl;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FFont;
	TTMSFNCGroupTitle* FTitle;
	TTMSFNCGroupSetControlPropertiesEvent FOnSetControlProperties;
	TTMSFNCGroupGetControlClassEvent FOnGetControlClass;
	TTMSFNCGroupUpdateControlPropertiesEvent FOnUpdateControlProperties;
	TTMSFNCGroupSetControlTextEvent FOnSetControlText;
	TTMSFNCGroupGetControlTextEvent FOnGetControlText;
	System::Classes::TNotifyEvent FOnItemsChanged;
	TTMSFNCGroupSetControlBoundsEvent FOnSetControlBounds;
	TTMSFNCGroupSetControlNameEvent FOnSetControlName;
	Fmx::Controls::TControl* __fastcall GetControl(int Index);
	void __fastcall SetControlCount(int Value);
	void __fastcall SetColumns(int Value);
	void __fastcall SetItems(System::Classes::TStrings* Value);
	void __fastcall SetFnt(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetTitle(TTMSFNCGroupTitle* const Value);
	Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* __fastcall GetBitmapContainer();
	void __fastcall SetBitmapContainer(Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* const Value);
	System::UnicodeString __fastcall GetText(int AIndex);
	void __fastcall SetText(int AIndex, const System::UnicodeString Value);
	
protected:
	virtual System::UnicodeString __fastcall GetDocURL();
	virtual void __fastcall ChangeDPIScale(int M, int D);
	virtual void __fastcall ApplyStyle();
	virtual void __fastcall ResetToDefaultStyle();
	virtual void __fastcall CreateAdditionalControls();
	virtual void __fastcall InitializeProperties();
	virtual void __fastcall ArrangeControls();
	void __fastcall ItemsChange(System::TObject* Sender);
	void __fastcall FntChanged(System::TObject* Sender);
	void __fastcall UpdateControls();
	virtual void __fastcall SetEnabled(const bool Value);
	void __fastcall UpdateAllControlProperties();
	void __fastcall TitleChanged(System::TObject* Sender);
	virtual void __fastcall ItemsChanged();
	virtual void __fastcall UpdateItemIndexControl();
	virtual void __fastcall SetName(const System::Classes::TComponentName NewName);
	virtual void __fastcall Notification(System::Classes::TComponent* AComponent, System::Classes::TOperation Operation);
	virtual void __fastcall SetControlName(Fmx::Controls::TControl* AControl, int AIndex);
	virtual void __fastcall SetControlEnabled(Fmx::Controls::TControl* AControl, int AIndex);
	virtual void __fastcall SetControlBounds(Fmx::Controls::TControl* AControl, int AIndex, float ALeft, float ATop, float AWidth, float AHeight);
	virtual void __fastcall SetControlText(Fmx::Controls::TControl* AControl, int AIndex, System::UnicodeString AText);
	virtual void __fastcall SetControlProperties(Fmx::Controls::TControl* AControl, int AIndex);
	virtual void __fastcall UpdateControlProperties(Fmx::Controls::TControl* AControl, int AIndex);
	virtual void __fastcall Loaded();
	virtual void __fastcall ReadState(System::Classes::TReader* Reader);
	virtual void __fastcall DoSetControlProperties(Fmx::Controls::TControl* AControl, int AIndex);
	virtual void __fastcall DoSetControlName(Fmx::Controls::TControl* AControl, int AIndex);
	virtual void __fastcall DoSetControlText(Fmx::Controls::TControl* AControl, int AIndex, System::UnicodeString AText);
	virtual void __fastcall DoGetControlText(Fmx::Controls::TControl* AControl, int AIndex, System::UnicodeString &AText);
	virtual void __fastcall DoSetControlBounds(Fmx::Controls::TControl* AControl, int AIndex, float ALeft, float ATop, float AWidth, float AHeight);
	virtual void __fastcall DoUpdateControlProperties(Fmx::Controls::TControl* AControl, int AIndex);
	virtual void __fastcall DoItemsChanged();
	virtual void __fastcall DoGetControlClass(int AIndex, TTMSFNCCustomGroupControlClass &AControlClass);
	virtual bool __fastcall CanDrawTitle();
	virtual System::UnicodeString __fastcall GetControlText(Fmx::Controls::TControl* AControl, int AIndex);
	virtual TTMSFNCCustomGroupControlClass __fastcall GetControlClass(int AIndex);
	virtual System::Types::TRectF __fastcall GetTitleRect();
	virtual System::Types::TRectF __fastcall GetTitleDrawRect(const System::Types::TRectF &ARect);
	virtual TTMSFNCGroupTitle* __fastcall CreateGroupTitle();
	virtual bool __fastcall IsAppearanceProperty(System::TObject* AObject, System::UnicodeString APropertyName, System::TTypeKind APropertyType);
	__property int Columns = {read=FColumns, write=SetColumns, default=1};
	__property System::Classes::TStrings* Items = {read=FItems, write=SetItems};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* Font = {read=FFont, write=SetFnt};
	__property Fmx::Controls::TControl* Controls[int Index] = {read=GetControl};
	__property bool IsUpdatingControl = {read=FIsUpdatingControl, write=FIsUpdatingControl, nodefault};
	__property bool IsReadingControl = {read=FIsReadingControl, write=FIsReadingControl, nodefault};
	__property TTMSFNCCustomGroupList* ControlsList = {read=FControls};
	__property TTMSFNCGroupTitle* Title = {read=FTitle, write=SetTitle};
	__property Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* BitmapContainer = {read=GetBitmapContainer, write=SetBitmapContainer};
	__property System::UnicodeString Texts[int AIndex] = {read=GetText, write=SetText};
	__property TTMSFNCGroupGetControlClassEvent OnGetControlClass = {read=FOnGetControlClass, write=FOnGetControlClass};
	__property TTMSFNCGroupSetControlPropertiesEvent OnSetControlProperties = {read=FOnSetControlProperties, write=FOnSetControlProperties};
	__property TTMSFNCGroupSetControlNameEvent OnSetControlName = {read=FOnSetControlName, write=FOnSetControlName};
	__property TTMSFNCGroupSetControlTextEvent OnSetControlText = {read=FOnSetControlText, write=FOnSetControlText};
	__property TTMSFNCGroupGetControlTextEvent OnGetControlText = {read=FOnGetControlText, write=FOnGetControlText};
	__property TTMSFNCGroupUpdateControlPropertiesEvent OnUpdateControlProperties = {read=FOnUpdateControlProperties, write=FOnUpdateControlProperties};
	__property TTMSFNCGroupSetControlBoundsEvent OnSetControlBounds = {read=FOnSetControlBounds, write=FOnSetControlBounds};
	__property System::Classes::TNotifyEvent OnItemsChanged = {read=FOnItemsChanged, write=FOnItemsChanged};
	
public:
	__fastcall virtual TTMSFNCCustomGroup(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCCustomGroup();
	virtual void __fastcall UpdateControlAfterResize();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	virtual void __fastcall InitSample();
	virtual void __fastcall Reinitialize();
	virtual void __fastcall BeginUpdate();
	virtual void __fastcall EndUpdate();
	virtual void __fastcall Draw(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	virtual void __fastcall DrawBackground(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	virtual void __fastcall DrawText(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
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

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCGroup : public TTMSFNCCustomGroup
{
	typedef TTMSFNCCustomGroup inherited;
	
protected:
	virtual System::UnicodeString __fastcall GetVersion();
	
public:
	__property Texts;
	
__published:
	__property BitmapContainer;
	__property System::UnicodeString Version = {read=GetVersion};
	__property Items;
	__property Font;
	__property Columns = {default=1};
	__property Fill;
	__property Stroke;
	__property Title;
	__property OnGetControlClass;
	__property OnSetControlProperties;
	__property OnSetControlText;
	__property OnSetControlName;
	__property OnSetControlBounds;
	__property OnGetControlText;
	__property OnUpdateControlProperties;
public:
	/* TTMSFNCCustomGroup.Create */ inline __fastcall virtual TTMSFNCGroup(System::Classes::TComponent* AOwner) : TTMSFNCCustomGroup(AOwner) { }
	/* TTMSFNCCustomGroup.Destroy */ inline __fastcall virtual ~TTMSFNCGroup() { }
	
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x1);
static constexpr System::Int8 BLD_VER = System::Int8(0x0);
}	/* namespace Tmsfnccustomgroup */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCCUSTOMGROUP)
using namespace Fmx::Tmsfnccustomgroup;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfnccustomgroupHPP
