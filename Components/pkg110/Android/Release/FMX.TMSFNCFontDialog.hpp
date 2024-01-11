// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCFontDialog.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncfontdialogHPP
#define Fmx_TmsfncfontdialogHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <FMX.StdCtrls.hpp>
#include <System.SysUtils.hpp>
#include <FMX.Graphics.hpp>
#include <FMX.Controls.hpp>
#include <System.Types.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <System.UITypes.hpp>
#include <FMX.ListBox.hpp>
#include <FMX.Types.hpp>
#include <FMX.Objects.hpp>
#include <FMX.Forms.hpp>
#include <FMX.TMSFNCCustomComponent.hpp>
#include <FMX.TMSFNCEdit.hpp>
#include <FMX.TMSFNCListBox.hpp>
#include <FMX.TMSFNCUtils.hpp>
#include <FMX.TMSFNCColorPicker.hpp>
#include <FMX.TMSFNCColorSelector.hpp>
#include <FMX.TMSFNCHTMLText.hpp>
#include <FMX.TMSFNCGraphicsTypes.hpp>
#include <FMX.TMSFNCGraphics.hpp>
#include <FMX.TMSFNCCustomControl.hpp>
#include <FMX.TMSFNCPopup.hpp>
#include <FMX.Controls.Presentation.hpp>
#include <System.Generics.Collections.hpp>
#include <System.Generics.Defaults.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncfontdialog
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCFontLabel;
class DELPHICLASS TTMSFNCFontCheckBox;
class DELPHICLASS TTMSFNCFontDialogButton;
class DELPHICLASS TTMSFNCCustomFontDialog;
class DELPHICLASS TTMSFNCFontDialogForm;
class DELPHICLASS TTMSFNCFontDialog;
//-- type declarations -------------------------------------------------------
typedef Fmx::Forms::TForm TTMSFNCFontForm;

typedef Fmx::Stdctrls::TButton TTMSFNCFontButton;

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCFontLabel : public Fmx::Stdctrls::TLabel
{
	typedef Fmx::Stdctrls::TLabel inherited;
	
private:
	void __fastcall SetCaption(const System::UnicodeString Value);
	HIDESBASE void __fastcall SetLeft(const float Value);
	HIDESBASE void __fastcall SetTop(const float Value);
	System::UnicodeString __fastcall GetC();
	float __fastcall GetL();
	float __fastcall GetT();
	
public:
	__property System::UnicodeString Caption = {read=GetC, write=SetCaption};
	__property float Top = {read=GetT, write=SetTop};
	__property float Left = {read=GetL, write=SetLeft};
public:
	/* TLabel.Create */ inline __fastcall virtual TTMSFNCFontLabel(System::Classes::TComponent* AOwner)/* overload */ : Fmx::Stdctrls::TLabel(AOwner) { }
	
public:
	/* TPresentedTextControl.Destroy */ inline __fastcall virtual ~TTMSFNCFontLabel() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCFontCheckBox : public Fmx::Stdctrls::TCheckBox
{
	typedef Fmx::Stdctrls::TCheckBox inherited;
	
private:
	void __fastcall SetCaption(const System::UnicodeString Value);
	void __fastcall SetChecked(const bool Value);
	HIDESBASE void __fastcall SetLeft(const float Value);
	HIDESBASE void __fastcall SetTop(const float Value);
	System::UnicodeString __fastcall GetC();
	bool __fastcall GetCh();
	float __fastcall GetL();
	float __fastcall GetT();
	
public:
	__property System::UnicodeString Caption = {read=GetC, write=SetCaption};
	__property float Top = {read=GetT, write=SetTop};
	__property float Left = {read=GetL, write=SetLeft};
	__property bool Checked = {read=GetCh, write=SetChecked, nodefault};
public:
	/* TCheckBox.Create */ inline __fastcall virtual TTMSFNCFontCheckBox(System::Classes::TComponent* AOwner)/* overload */ : Fmx::Stdctrls::TCheckBox(AOwner) { }
	
public:
	/* TPresentedTextControl.Destroy */ inline __fastcall virtual ~TTMSFNCFontCheckBox() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCFontDialogButton : public Fmx::Tmsfnccustomcontrol::TTMSFNCCustomControl
{
	typedef Fmx::Tmsfnccustomcontrol::TTMSFNCCustomControl inherited;
	
private:
	bool FMouseDown;
	bool FExpanded;
	System::Uitypes::TAlphaColor FSelectedColor;
	System::Classes::TNotifyEvent FOnButtonClicked;
	void __fastcall SetSelectedColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetExpanded(const bool Value);
	
protected:
	void __fastcall DoButtonClicked(System::TObject* Sender);
	virtual void __fastcall Draw(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	virtual void __fastcall HandleMouseDown(System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall HandleMouseUp(System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, float X, float Y);
	
public:
	__fastcall virtual TTMSFNCFontDialogButton(System::Classes::TComponent* AOwner);
	__property System::Classes::TNotifyEvent OnButtonClicked = {read=FOnButtonClicked, write=FOnButtonClicked};
	__property System::Uitypes::TAlphaColor SelectedColor = {read=FSelectedColor, write=SetSelectedColor, default=-16777216};
	__property bool Expanded = {read=FExpanded, write=SetExpanded, nodefault};
public:
	/* TTMSFNCCustomControl.Destroy */ inline __fastcall virtual ~TTMSFNCFontDialogButton() { }
	
};

#pragma pack(pop)

typedef void __fastcall (__closure *TTMSFNCCustomFontDialogResultEvent)(System::TObject* Sender, System::Uitypes::TModalResult AModalResult);

typedef void __fastcall (__closure *TTMSFNCCustomFontDialogFontNameChangedEvent)(System::TObject* Sender, System::UnicodeString FontName);

typedef void __fastcall (__closure *TTMSFNCCustomFontDialogFontSizeChangedEvent)(System::TObject* Sender, int FontSize);

typedef void __fastcall (__closure *TTMSFNCCustomFontDialogFontColorChangedEvent)(System::TObject* Sender, System::Uitypes::TAlphaColor FontColor);

typedef void __fastcall (__closure *TTMSFNCCustomFontDialogFontStyleChangedEvent)(System::TObject* Sender, bool ABold, bool AItalic, bool AUnderline, bool AStrikethrough);

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCustomFontDialog : public Fmx::Tmsfnccustomcomponent::TTMSFNCCustomComponent
{
	typedef Fmx::Tmsfnccustomcomponent::TTMSFNCCustomComponent inherited;
	
private:
	TTMSFNCFontDialogForm* FDialogForm;
	bool FApplicationIsParent;
	bool FUnderLineSelected;
	bool FItalicSelected;
	bool FBoldSelected;
	bool FStrikethroughSelected;
	int FFontSize;
	System::Uitypes::TAlphaColor FFontColor;
	System::UnicodeString FFontName;
	System::Classes::TNotifyEvent FOnDialogCreated;
	TTMSFNCCustomFontDialogFontSizeChangedEvent FOnFontSizeChanged;
	TTMSFNCCustomFontDialogResultEvent FOnDialogResult;
	TTMSFNCCustomFontDialogFontNameChangedEvent FOnFontNameChanged;
	System::Classes::TNotifyEvent FOnDialogClosed;
	TTMSFNCCustomFontDialogFontColorChangedEvent FOnFontColorChanged;
	TTMSFNCCustomFontDialogFontStyleChangedEvent FOnFontStyleChanged;
	void __fastcall SetApplicationIsParent(const bool Value);
	void __fastcall SetBoldSelected(const bool Value);
	void __fastcall SetItalicSelected(const bool Value);
	void __fastcall SetStrikethroughSelected(const bool Value);
	void __fastcall SetUnderlineSelected(const bool Value);
	void __fastcall SetFontSize(const int Value);
	void __fastcall SetFontColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetFontName(const System::UnicodeString Value);
	bool __fastcall IsFontNameStored();
	
protected:
	void __fastcall FontDialogCreated(System::TObject* Sender);
	void __fastcall FontDialogClosed(System::TObject* Sender, System::Uitypes::TCloseAction &CloseAction);
	virtual NativeUInt __fastcall GetInstance();
	virtual System::UnicodeString __fastcall GetVersion();
	__property bool BoldSelected = {read=FBoldSelected, write=SetBoldSelected, default=0};
	__property bool ItalicSelected = {read=FItalicSelected, write=SetItalicSelected, default=0};
	__property bool UnderlineSelected = {read=FUnderLineSelected, write=SetUnderlineSelected, default=0};
	__property bool StrikethroughSelected = {read=FStrikethroughSelected, write=SetStrikethroughSelected, default=0};
	__property int FontSize = {read=FFontSize, write=SetFontSize, default=-1};
	__property System::Uitypes::TAlphaColor FontColor = {read=FFontColor, write=SetFontColor, default=0};
	__property System::UnicodeString FontName = {read=FFontName, write=SetFontName, stored=IsFontNameStored};
	__property bool ApplicationIsParent = {read=FApplicationIsParent, write=SetApplicationIsParent, default=0};
	__property System::Classes::TNotifyEvent OnDialogCreated = {read=FOnDialogCreated, write=FOnDialogCreated};
	__property System::Classes::TNotifyEvent OnDialogClosed = {read=FOnDialogClosed, write=FOnDialogClosed};
	__property TTMSFNCCustomFontDialogFontNameChangedEvent OnFontNameChanged = {read=FOnFontNameChanged, write=FOnFontNameChanged};
	__property TTMSFNCCustomFontDialogFontSizeChangedEvent OnFontSizeChanged = {read=FOnFontSizeChanged, write=FOnFontSizeChanged};
	__property TTMSFNCCustomFontDialogFontColorChangedEvent OnFontColorChanged = {read=FOnFontColorChanged, write=FOnFontColorChanged};
	__property TTMSFNCCustomFontDialogFontStyleChangedEvent OnFontStyleChanged = {read=FOnFontStyleChanged, write=FOnFontStyleChanged};
	__property TTMSFNCCustomFontDialogResultEvent OnDialogResult = {read=FOnDialogResult, write=FOnDialogResult};
	
public:
	__fastcall virtual TTMSFNCCustomFontDialog(System::Classes::TComponent* AOwner);
	virtual void __fastcall Execute();
public:
	/* TControl.Destroy */ inline __fastcall virtual ~TTMSFNCCustomFontDialog() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCFontDialogForm : public Fmx::Forms::TForm
{
	typedef Fmx::Forms::TForm inherited;
	
private:
	Fmx::Objects::TRectangle* FRectangle;
	TTMSFNCCustomFontDialog* FFontDialog;
	int FVerMargin;
	int FHorMargin;
	int FHorSpacing;
	TTMSFNCFontLabel* FFontSampleLabel;
	Fmx::Stdctrls::TButton* FFontOKButton;
	Fmx::Stdctrls::TButton* FFontCancelButton;
	Fmx::Tmsfncedit::TTMSFNCEdit* FFontNameEdit;
	Fmx::Tmsfnclistbox::TTMSFNCListBox* FFontNameListBox;
	Fmx::Tmsfncedit::TTMSFNCEdit* FFontSizeEdit;
	Fmx::Tmsfnclistbox::TTMSFNCListBox* FFontSizeListBox;
	TTMSFNCFontDialogButton* FFontColorButton;
	Fmx::Tmsfnccolorselector::TTMSFNCColorSelector* FFontColorSelector;
	Fmx::Tmsfnchtmltext::TTMSFNCHTMLText* FFontSampleText;
	TTMSFNCFontCheckBox* FFontStyleBoldChk;
	TTMSFNCFontCheckBox* FFontStyleItalicChk;
	TTMSFNCFontCheckBox* FFontStyleUnderlineChk;
	TTMSFNCFontCheckBox* FFontStyleStrikethroughChk;
	
protected:
	virtual void __fastcall DoResult(System::Uitypes::TModalResult AModalResult);
	virtual void __fastcall DoFontNameChanged(System::UnicodeString FontName);
	virtual void __fastcall DoFontSizeChanged(int FontSize);
	virtual void __fastcall DoFontColorChanged(System::Uitypes::TAlphaColor FontColor);
	virtual void __fastcall DoFontStyleChanged(bool ABold, bool AItalic, bool AUnderline, bool AStrikethrough);
	void __fastcall FontNameKeyUp(System::TObject* Sender, System::Word &Key, System::WideChar &KeyChar, System::Classes::TShiftState Shift);
	void __fastcall FontSizeKeyUp(System::TObject* Sender, System::Word &Key, System::WideChar &KeyChar, System::Classes::TShiftState Shift);
	virtual void __fastcall DoClose(System::Uitypes::TCloseAction &CloseAction);
	void __fastcall NameListHandler(System::TObject* Sender, Fmx::Tmsfnclistbox::TTMSFNCListBoxItem* AItem);
	void __fastcall SizeListHandler(System::TObject* Sender, Fmx::Tmsfnclistbox::TTMSFNCListBoxItem* AItem);
	void __fastcall BoldClickHandler(System::TObject* Sender);
	void __fastcall ItalicClickHandler(System::TObject* Sender);
	void __fastcall UnderlineClickHandler(System::TObject* Sender);
	void __fastcall StrikethroughClickHandler(System::TObject* Sender);
	void __fastcall BtnClickHandler(System::TObject* Sender);
	void __fastcall FontColorHandler(System::TObject* Sender, System::Uitypes::TAlphaColor AColor);
	void __fastcall ColorButtonClicked(System::TObject* Sender);
	void __fastcall SetPositions();
	void __fastcall InitializeFontNames(Fmx::Tmsfnclistbox::TTMSFNCListBox* FontNames);
	void __fastcall InitializeFontSizes(Fmx::Tmsfnclistbox::TTMSFNCListBox* FontSizes);
	void __fastcall UpdateSampleText();
	Fmx::Types::TFmxObject* __fastcall GetParentControl();
	int __fastcall GetNameIndex(Fmx::Tmsfnclistbox::TTMSFNCListBox* FontNames, System::UnicodeString AName);
	int __fastcall GetSizeIndex(Fmx::Tmsfnclistbox::TTMSFNCListBox* FontSizes, int ASize);
	int __fastcall CalculateCheckBoxWidth(System::UnicodeString AText);
	
public:
	__fastcall virtual TTMSFNCFontDialogForm(System::Classes::TComponent* AOwner, NativeInt Dummy);
	__fastcall virtual ~TTMSFNCFontDialogForm();
	void __fastcall BuildFontDialog(TTMSFNCCustomFontDialog* FontDialog);
public:
	/* TCustomForm.Create */ inline __fastcall virtual TTMSFNCFontDialogForm(System::Classes::TComponent* AOwner) : Fmx::Forms::TForm(AOwner) { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCFontDialog : public TTMSFNCCustomFontDialog
{
	typedef TTMSFNCCustomFontDialog inherited;
	
__published:
	__property ApplicationIsParent = {default=0};
	__property BoldSelected = {default=0};
	__property ItalicSelected = {default=0};
	__property UnderlineSelected = {default=0};
	__property StrikethroughSelected = {default=0};
	__property FontSize = {default=-1};
	__property FontColor = {default=0};
	__property FontName = {default=0};
	__property OnDialogCreated;
	__property OnDialogClosed;
	__property OnFontNameChanged;
	__property OnFontSizeChanged;
	__property OnFontColorChanged;
	__property OnFontStyleChanged;
	__property OnDialogResult;
public:
	/* TTMSFNCCustomFontDialog.Create */ inline __fastcall virtual TTMSFNCFontDialog(System::Classes::TComponent* AOwner) : TTMSFNCCustomFontDialog(AOwner) { }
	
public:
	/* TControl.Destroy */ inline __fastcall virtual ~TTMSFNCFontDialog() { }
	
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x0);
static constexpr System::Int8 BLD_VER = System::Int8(0x1);
}	/* namespace Tmsfncfontdialog */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCFONTDIALOG)
using namespace Fmx::Tmsfncfontdialog;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncfontdialogHPP
