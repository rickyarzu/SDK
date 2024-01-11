// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCEdit.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfnceditHPP
#define Fmx_TmsfnceditHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <FMX.TMSFNCToolBar.hpp>
#include <FMX.TMSFNCToolBarRes.hpp>
#include <FMX.TMSFNCCustomControl.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.TMSFNCPopup.hpp>
#include <FMX.ExtCtrls.hpp>
#include <FMX.StdCtrls.hpp>
#include <FMX.Graphics.hpp>
#include <FMX.Controls.hpp>
#include <FMX.TMSFNCGraphicsTypes.hpp>
#include <FMX.TMSFNCBitmapContainer.hpp>
#include <FMX.ListBox.hpp>
#include <FMX.Edit.hpp>
#include <FMX.Types.hpp>
#include <System.UITypes.hpp>
#include <System.Generics.Collections.hpp>
#include <FMX.Controls.Model.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>
#include <System.Types.hpp>
#include <FMX.Presentation.Messages.hpp>
#include <FMX.Controls.Presentation.hpp>
#include <FMX.Text.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncedit
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCEditLookupSettings;
class DELPHICLASS TTMSFNCLookupListBoxItem;
class DELPHICLASS TTMSFNCLookupList;
class DELPHICLASS TTMSFNCCustomEditModel;
class DELPHICLASS TTMSFNCEdit;
class DELPHICLASS TTMSFNCEditButton;
//-- type declarations -------------------------------------------------------
enum DECLSPEC_DENUM TTMSFNCEditType : unsigned char { etString, etNumeric, etSignedNumeric, etFloat, etSignedFloat, etUppercase, etMixedCase, etLowerCase, etMoney, etHex, etAlphaNumeric, etValidChars };

enum DECLSPEC_DENUM TTMSFNCEditPrecisionDisplay : unsigned char { pdNormal, pdShortest };

class PASCALIMPLEMENTATION TTMSFNCEditLookupSettings : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	System::Classes::TStringList* FDisplayList;
	System::Classes::TStringList* FValueList;
	int FDisplayCount;
	System::Uitypes::TAlphaColor FColor;
	bool FEnabled;
	int FNumChars;
	bool FCaseSensitive;
	bool FHistory;
	bool FMulti;
	System::WideChar FSeparator;
	bool FAcceptOnTab;
	int FWidth;
	int FHeight;
	bool FUseValueList;
	int FMinimumWidth;
	int FMinimumHeight;
	void __fastcall SetDisplayList(System::Classes::TStringList* const Value);
	void __fastcall SetValueList(System::Classes::TStringList* const Value);
	void __fastcall SetNumChars(const int Value);
	void __fastcall SetHeight(const int Value);
	void __fastcall SetWidth(const int Value);
	void __fastcall SetMinimumHeight(const int Value);
	void __fastcall SetMinimumWidth(const int Value);
	
protected:
	__property bool AcceptOnTab = {read=FAcceptOnTab, write=FAcceptOnTab, default=0};
	__property System::Uitypes::TAlphaColor Color = {read=FColor, write=FColor, default=-1};
	
public:
	__fastcall TTMSFNCEditLookupSettings();
	__fastcall virtual ~TTMSFNCEditLookupSettings();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property bool CaseSensitive = {read=FCaseSensitive, write=FCaseSensitive, default=0};
	__property int DisplayCount = {read=FDisplayCount, write=FDisplayCount, default=4};
	__property System::Classes::TStringList* DisplayList = {read=FDisplayList, write=SetDisplayList};
	__property bool Enabled = {read=FEnabled, write=FEnabled, default=0};
	__property bool History = {read=FHistory, write=FHistory, default=0};
	__property int NumChars = {read=FNumChars, write=SetNumChars, default=2};
	__property System::Classes::TStringList* ValueList = {read=FValueList, write=SetValueList};
	__property bool Multi = {read=FMulti, write=FMulti, default=0};
	__property System::WideChar Separator = {read=FSeparator, write=FSeparator, nodefault};
	__property int Width = {read=FWidth, write=SetWidth, default=0};
	__property int Height = {read=FHeight, write=SetHeight, default=0};
	__property int MinimumWidth = {read=FMinimumWidth, write=SetMinimumWidth, default=0};
	__property int MinimumHeight = {read=FMinimumHeight, write=SetMinimumHeight, default=0};
	__property bool UseValueList = {read=FUseValueList, write=FUseValueList, default=1};
};


typedef void __fastcall (__closure *TTMSFNCEditLookupSelectEvent)(System::TObject* Sender, System::UnicodeString &Value);

typedef void __fastcall (__closure *TTMSFNCEditLookupIndexSelectEvent)(System::TObject* Sender, int Index, System::UnicodeString &Value);

typedef void __fastcall (__closure *TTMSFNCEditLookupNeedDataEvent)(System::TObject* Sender, System::UnicodeString Value, System::Classes::TStrings* List, int &ItemIndex);

typedef System::DynamicArray<System::WideChar> TTMSFNCEditHexCharacterArray;

class PASCALIMPLEMENTATION TTMSFNCLookupListBoxItem : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	int FIdx;
	
public:
	__fastcall TTMSFNCLookupListBoxItem(int AIdx);
	__property int Idx = {read=FIdx, nodefault};
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
	/* TObject.Destroy */ inline __fastcall virtual ~TTMSFNCLookupListBoxItem() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCLookupList : public System::Generics::Collections::TList__1<TTMSFNCLookupListBoxItem*>
{
	typedef System::Generics::Collections::TList__1<TTMSFNCLookupListBoxItem*> inherited;
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCEdit_TTMSFNCLookupListBoxItem>.Create */ inline __fastcall TTMSFNCLookupList()/* overload */ : System::Generics::Collections::TList__1<TTMSFNCLookupListBoxItem*>() { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCEdit_TTMSFNCLookupListBoxItem>.Create */ inline __fastcall TTMSFNCLookupList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCLookupListBoxItem*> > AComparer)/* overload */ : System::Generics::Collections::TList__1<TTMSFNCLookupListBoxItem*>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCEdit_TTMSFNCLookupListBoxItem>.Create */ inline __fastcall TTMSFNCLookupList(System::Generics::Collections::TEnumerable__1<TTMSFNCLookupListBoxItem*>* const Collection)/* overload */ : System::Generics::Collections::TList__1<TTMSFNCLookupListBoxItem*>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCEdit_TTMSFNCLookupListBoxItem>.Create */ inline __fastcall TTMSFNCLookupList(TTMSFNCLookupListBoxItem* const *Values, const int Values_High)/* overload */ : System::Generics::Collections::TList__1<TTMSFNCLookupListBoxItem*>(Values, Values_High) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCEdit_TTMSFNCLookupListBoxItem>.Destroy */ inline __fastcall virtual ~TTMSFNCLookupList() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCustomEditModel : public Fmx::Edit::TCustomEditModel
{
	typedef Fmx::Edit::TCustomEditModel inherited;
	
private:
	TTMSFNCEdit* FEdit;
	
protected:
	virtual void __fastcall DoChange();
public:
	/* TCustomEditModel.Create */ inline __fastcall virtual TTMSFNCCustomEditModel()/* overload */ : Fmx::Edit::TCustomEditModel() { }
	/* TCustomEditModel.Destroy */ inline __fastcall virtual ~TTMSFNCCustomEditModel() { }
	
public:
	/* TDataModel.Create */ inline __fastcall virtual TTMSFNCCustomEditModel(System::Classes::TComponent* const AOwner)/* overload */ : Fmx::Edit::TCustomEditModel(AOwner) { }
	
};


class PASCALIMPLEMENTATION TTMSFNCEdit : public Fmx::Edit::TCustomEdit
{
	typedef Fmx::Edit::TCustomEdit inherited;
	
private:
	TTMSFNCLookupList* FLookupListBoxItems;
	Fmx::Types::TTimer* FDoneLookupTimer;
	Fmx::Types::TTimer* FLookupFormTimer;
	System::Word FKeyDown;
	System::Classes::TShiftState FShiftState;
	TTMSFNCEditType FEditType;
	System::UnicodeString FValidChars;
	Fmx::Tmsfncpopup::TTMSFNCPopup* FLookupList;
	Fmx::Listbox::TListBox* FLookupListBox;
	TTMSFNCEditLookupSettings* FLookup;
	TTMSFNCEditLookupSelectEvent FOnLookupSelect;
	TTMSFNCEditLookupIndexSelectEvent FOnLookupIndexSelect;
	bool FSigned;
	System::UnicodeString FPrefix;
	System::UnicodeString FSuffix;
	bool FIsModified;
	short FLengthLimit;
	bool FFullTextSearch;
	bool FAutoThousandSeparator;
	short FPrecision;
	TTMSFNCEditPrecisionDisplay FPrecisionDisplay;
	bool FBlockChange;
	bool FAllowNumericNullValue;
	bool FAutoComplete;
	System::Classes::TNotifyEvent FOnCloseWithEscape;
	TTMSFNCEditLookupNeedDataEvent FOnLookupNeedData;
	bool FAutoClose;
	System::Classes::TNotifyEvent FOnLookupClose;
	System::Classes::TNotifyEvent FOnLookupOpen;
	void __fastcall CloseLookup();
	void __fastcall DoneLookup();
	void __fastcall UpdateLookup();
	void __fastcall UpdateAutoComplete();
	void __fastcall SetLookup(TTMSFNCEditLookupSettings* const Value);
	bool __fastcall AllowMin(System::WideChar ch);
	int __fastcall FixedLength(System::UnicodeString s);
	void __fastcall SetPrefix(const System::UnicodeString Value);
	void __fastcall SetSuffix(const System::UnicodeString Value);
	void __fastcall SetModified(const bool Value);
	int __fastcall DecimalPos();
	void __fastcall AutoSeparators();
	double __fastcall GetFloat();
	void __fastcall SetFloat(const double Value);
	void __fastcall SetAutoThousandSeparator(const bool Value);
	void __fastcall SetPrecision(const short Value);
	void __fastcall SetPrecisionDisplay(const TTMSFNCEditPrecisionDisplay Value);
	System::Extended __fastcall EStrToFloat(System::UnicodeString s);
	int __fastcall GetInt();
	void __fastcall SetInt(const int Value);
	void __fastcall SetEditType(const TTMSFNCEditType Value);
	bool __fastcall IsLookupListVisible();
	bool __fastcall GetAllowFocus();
	void __fastcall SetAllowFocus(const bool Value);
	
protected:
	virtual System::UnicodeString __fastcall GetVersion();
	void __fastcall DoLookupFormTimer(System::TObject* Sender);
	virtual Fmx::Controls::Model::TDataModelClass __fastcall DefineModelClass();
	void __fastcall DoDoneLookupTimer(System::TObject* Sender);
	virtual System::UnicodeString __fastcall GetDefaultStyleLookupName();
	virtual System::UnicodeString __fastcall GetT();
	HIDESBASE virtual int __fastcall GetCaretPosition();
	virtual void __fastcall Change();
	void __fastcall CleanupLookupList();
	HIDESBASE virtual void __fastcall SetCaretPosition(int ACaretPosition);
	virtual void __fastcall SetT(const System::UnicodeString Value);
	void __fastcall InsertText(const System::UnicodeString AText);
	void __fastcall ListKeyUp(System::TObject* Sender, System::Word &Key, System::WideChar &KeyChar, System::Classes::TShiftState Shift);
	void __fastcall ListMouseUp(System::TObject* Sender, System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall KeyDown(System::Word &Key, System::WideChar &KeyChar, System::Classes::TShiftState Shift);
	virtual void __fastcall KeyUp(System::Word &Key, System::WideChar &KeyChar, System::Classes::TShiftState Shift);
	virtual void __fastcall DoLookupNeedData(System::UnicodeString Value, System::Classes::TStrings* List, int &ItemIndex);
	virtual void __fastcall DoLookupOpen();
	virtual void __fastcall DoLookupClose();
	virtual void __fastcall DoExit();
	__property System::Classes::TNotifyEvent OnCloseWithEscape = {read=FOnCloseWithEscape, write=FOnCloseWithEscape};
	__property bool Signed = {read=FSigned, write=FSigned, default=0};
	__property System::UnicodeString Prefix = {read=FPrefix, write=SetPrefix};
	__property System::UnicodeString Suffix = {read=FSuffix, write=SetSuffix};
	__property bool AutoClose = {read=FAutoClose, write=FAutoClose, default=1};
	
public:
	Fmx::Listbox::TListBox* __fastcall LookupListbox();
	Fmx::Tmsfncpopup::TTMSFNCPopup* __fastcall LookupList();
	__fastcall virtual TTMSFNCEdit(System::Classes::TComponent* AOwner)/* overload */;
	__fastcall virtual ~TTMSFNCEdit();
	void __fastcall DisplayLookup();
	__property bool Modified = {read=FIsModified, write=SetModified, nodefault};
	__property double FloatValue = {read=GetFloat, write=SetFloat};
	__property int IntValue = {read=GetInt, write=SetInt, nodefault};
	__property Action;
	
__published:
	__property bool AllowFocus = {read=GetAllowFocus, write=SetAllowFocus, default=1};
	__property Cursor = {default=-4};
	__property CanParentFocus = {default=0};
	__property DisableFocusEffect = {default=0};
	__property KeyboardType = {default=0};
	__property ReturnKeyType = {default=0};
	__property Password = {default=0};
	__property ReadOnly = {default=0};
	__property TextSettings;
	__property ImeMode = {default=0};
	__property Position;
	__property Width;
	__property Height;
	__property ClipChildren = {default=0};
	__property ClipParent = {default=0};
	__property DragMode = {default=0};
	__property EnableDragHighlight = {default=1};
	__property Enabled = {default=1};
	__property Locked = {default=0};
	__property HitTest = {default=1};
	__property Hint = {default=0};
	__property HelpContext = {default=0};
	__property HelpKeyword = {default=0};
	__property HelpType = {default=1};
	__property Padding;
	__property Opacity;
	__property Margins;
	__property PopupMenu;
	__property RotationAngle = {default=0};
	__property RotationCenter;
	__property Scale;
	__property Size;
	__property TextPrompt = {default=0};
	__property StyleLookup = {default=0};
	__property StyledSettings;
	__property TouchTargetExpansion;
	__property Visible = {default=1};
	__property Caret;
	__property ShowHint;
	__property KillFocusByReturn = {default=0};
	__property CheckSpelling = {default=0};
	__property OnChange;
	__property OnChangeTracking;
	__property OnTyping;
	__property OnApplyStyleLookup;
	__property OnValidating;
	__property OnValidate;
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
	__property System::UnicodeString Text = {read=GetT, write=SetT};
	__property System::UnicodeString Version = {read=GetVersion};
	__property bool AutoComplete = {read=FAutoComplete, write=FAutoComplete, default=0};
	__property TTMSFNCEditType EditType = {read=FEditType, write=SetEditType, default=0};
	__property TTMSFNCEditLookupSettings* Lookup = {read=FLookup, write=SetLookup};
	__property System::UnicodeString ValidChars = {read=FValidChars, write=FValidChars};
	__property bool AllowNumericNullValue = {read=FAllowNumericNullValue, write=FAllowNumericNullValue, default=0};
	__property bool AutoThousandSeparator = {read=FAutoThousandSeparator, write=SetAutoThousandSeparator, default=1};
	__property bool FullTextSearch = {read=FFullTextSearch, write=FFullTextSearch, default=0};
	__property short LengthLimit = {read=FLengthLimit, write=FLengthLimit, default=0};
	__property short Precision = {read=FPrecision, write=SetPrecision, default=0};
	__property TTMSFNCEditPrecisionDisplay PrecisionDisplay = {read=FPrecisionDisplay, write=SetPrecisionDisplay, default=0};
	__property TTMSFNCEditLookupSelectEvent OnLookupSelect = {read=FOnLookupSelect, write=FOnLookupSelect};
	__property TTMSFNCEditLookupIndexSelectEvent OnLookupIndexSelect = {read=FOnLookupIndexSelect, write=FOnLookupIndexSelect};
	__property TTMSFNCEditLookupNeedDataEvent OnLookupNeedData = {read=FOnLookupNeedData, write=FOnLookupNeedData};
	__property System::Classes::TNotifyEvent OnLookupOpen = {read=FOnLookupOpen, write=FOnLookupOpen};
	__property System::Classes::TNotifyEvent OnLookupClose = {read=FOnLookupClose, write=FOnLookupClose};
};


class PASCALIMPLEMENTATION TTMSFNCEditButton : public Fmx::Tmsfnccustomcontrol::TTMSFNCCustomControl
{
	typedef Fmx::Tmsfnccustomcontrol::TTMSFNCCustomControl inherited;
	
private:
	bool FBlockDropDown;
	Fmx::Tmsfncpopup::TTMSFNCPopup* FPopup;
	TTMSFNCEdit* FEdit;
	Fmx::Tmsfnctoolbar::TTMSFNCToolBarDropDownButton* FButton;
	Fmx::Controls::TControl* FPopupControl;
	System::Classes::TNotifyEvent FOnButtonClick;
	bool FModalPopup;
	Fmx::Tmsfnctypes::TTMSFNCBitmap* FBitmap;
	System::UnicodeString FBitmapName;
	int FButtonSize;
	Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* FBitmapContainer;
	void __fastcall SetPopupControl(Fmx::Controls::TControl* const Value);
	System::UnicodeString __fastcall GetText();
	void __fastcall SetText(const System::UnicodeString Value);
	Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* __fastcall GetBitmapContainer();
	void __fastcall SetBitmap(Fmx::Tmsfnctypes::TTMSFNCBitmap* const Value);
	void __fastcall SetBitmapContainer(Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* const Value);
	void __fastcall SetBitmapName(const System::UnicodeString Value);
	void __fastcall SetButtonSize(const int Value);
	
protected:
	virtual void __fastcall ChangeDPIScale(int M, int D);
	virtual void __fastcall SetAdaptToStyle(const bool Value);
	virtual void __fastcall BeforeDropDown();
	virtual void __fastcall Loaded();
	virtual void __fastcall KeyDown(System::Word &Key, System::WideChar &KeyChar, System::Classes::TShiftState Shift);
	void __fastcall PopupKeyDown(System::TObject* Sender, System::Word &Key, System::WideChar &KeyChar, System::Classes::TShiftState Shift);
	virtual void __fastcall Notification(System::Classes::TComponent* AComponent, System::Classes::TOperation Operation);
	void __fastcall ButtonClick(System::TObject* Sender);
	void __fastcall ButtonDblClick(System::TObject* Sender);
	void __fastcall BitmapChanged(System::TObject* Sender);
	
public:
	__fastcall virtual TTMSFNCEditButton(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCEditButton();
	virtual void __fastcall DropDown();
	__property Fmx::Tmsfncpopup::TTMSFNCPopup* Popup = {read=FPopup, write=FPopup};
	__property Fmx::Tmsfnctoolbar::TTMSFNCToolBarDropDownButton* Button = {read=FButton};
	__property TTMSFNCEdit* Edit = {read=FEdit};
	__property bool ModalPopup = {read=FModalPopup, write=FModalPopup, default=0};
	
__published:
	__property Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* BitmapContainer = {read=GetBitmapContainer, write=SetBitmapContainer};
	__property Fmx::Tmsfnctypes::TTMSFNCBitmap* Bitmap = {read=FBitmap, write=SetBitmap};
	__property System::UnicodeString BitmapName = {read=FBitmapName, write=SetBitmapName};
	__property int ButtonSize = {read=FButtonSize, write=SetButtonSize, default=18};
	__property Fmx::Controls::TControl* PopupControl = {read=FPopupControl, write=SetPopupControl};
	__property System::Classes::TNotifyEvent OnButtonClick = {read=FOnButtonClick, write=FOnButtonClick};
	__property System::UnicodeString Text = {read=GetText, write=SetText};
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
static constexpr System::Int8 REL_VER = System::Int8(0x3);
static constexpr System::Int8 BLD_VER = System::Int8(0x2);
static constexpr System::Int8 LOOKUPITEMHEIGHT = System::Int8(0x12);
}	/* namespace Tmsfncedit */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCEDIT)
using namespace Fmx::Tmsfncedit;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfnceditHPP
