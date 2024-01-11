// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCTaskDialog.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfnctaskdialogHPP
#define Fmx_TmsfnctaskdialogHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <FMX.Forms.hpp>
#include <FMX.StdCtrls.hpp>
#include <System.SysUtils.hpp>
#include <FMX.Graphics.hpp>
#include <System.Types.hpp>
#include <FMX.Controls.hpp>
#include <FMX.Types.hpp>
#include <FMX.Memo.hpp>
#include <FMX.ListBox.hpp>
#include <FMX.DateTimeCtrls.hpp>
#include <FMX.Objects.hpp>
#include <System.UITypes.hpp>
#include <FMX.TMSFNCCustomComponent.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.TMSFNCHTMLText.hpp>
#include <FMX.TMSFNCGraphicsTypes.hpp>
#include <FMX.TMSFNCGraphics.hpp>
#include <FMX.TMSFNCImage.hpp>
#include <FMX.TMSFNCCustomControl.hpp>
#include <FMX.TMSFNCPanel.hpp>
#include <FMX.TMSFNCEdit.hpp>
#include <FMX.TMSFNCUtils.hpp>
#include <FMX.TMSFNCBitmapContainer.hpp>
#include <FMX.TMSFNCPopup.hpp>
#include <FMX.Controls.Presentation.hpp>
#include <System.Generics.Collections.hpp>
#include <System.Generics.Defaults.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfnctaskdialog
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCCustomTaskDialogButton;
class DELPHICLASS TTMSFNCCustomTaskDialogLabel;
class DELPHICLASS TTMSFNCTaskDialogButton;
class DELPHICLASS TTMSFNCTaskDialogAppearance;
class DELPHICLASS TTMSFNCCustomTaskDialog;
class DELPHICLASS TTMSFNCTaskDialogForm;
class DELPHICLASS TTMSFNCTaskDialog;
//-- type declarations -------------------------------------------------------
typedef Fmx::Forms::TForm TTMSFNCCustomTaskDialogForm;

typedef Fmx::Stdctrls::TProgressBar TTMSFNCCustomTaskDialogProgressBar;

typedef Fmx::Stdctrls::TRadioButton TTMSFNCCustomTaskDialogRadioButton;

typedef Fmx::Stdctrls::TCheckBox TTMSFNCCustomTaskDialogCheckBox;

typedef Fmx::Memo::TMemo TTMSFNCCustomTaskDialogMemo;

typedef Fmx::Listbox::TComboBox TTMSFNCCustomTaskDialogComboBox;

typedef Fmx::Datetimectrls::TTimeEdit TTMSFNCCustomTaskDialogTimeInput;

typedef Fmx::Datetimectrls::TDateEdit TTMSFNCCustomTaskDialogDateInput;

class PASCALIMPLEMENTATION TTMSFNCCustomTaskDialogButton : public Fmx::Stdctrls::TButton
{
	typedef Fmx::Stdctrls::TButton inherited;
	
private:
	void __fastcall SetCaption(const System::UnicodeString Value);
	HIDESBASE void __fastcall SetLeft(const float Value);
	HIDESBASE void __fastcall SetTop(const float Value);
	System::UnicodeString __fastcall GetC();
	float __fastcall GetL();
	float __fastcall GetT();
	
public:
	__property float Left = {read=GetL, write=SetLeft};
	__property float Top = {read=GetT, write=SetTop};
	__property System::UnicodeString Caption = {read=GetC, write=SetCaption};
public:
	/* TCustomButton.Create */ inline __fastcall virtual TTMSFNCCustomTaskDialogButton(System::Classes::TComponent* AOwner)/* overload */ : Fmx::Stdctrls::TButton(AOwner) { }
	/* TCustomButton.Destroy */ inline __fastcall virtual ~TTMSFNCCustomTaskDialogButton() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCustomTaskDialogLabel : public Fmx::Stdctrls::TLabel
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
	/* TLabel.Create */ inline __fastcall virtual TTMSFNCCustomTaskDialogLabel(System::Classes::TComponent* AOwner)/* overload */ : Fmx::Stdctrls::TLabel(AOwner) { }
	
public:
	/* TPresentedTextControl.Destroy */ inline __fastcall virtual ~TTMSFNCCustomTaskDialogLabel() { }
	
};


enum DECLSPEC_DENUM TTMSFNCTaskDialogOption : unsigned char { tdoCommandLinks, tdoCommandLinksNoIcon, tdoExpandedDefault, tdoAllowMinimize, tdoAllowDialogCancel, tdoVerifyChecked, tdoProgressBar, tdoTimer, tdoNoDefaultRadioButton };

typedef System::Set<TTMSFNCTaskDialogOption, TTMSFNCTaskDialogOption::tdoCommandLinks, TTMSFNCTaskDialogOption::tdoNoDefaultRadioButton> TTMSFNCTaskDialogOptions;

enum DECLSPEC_DENUM TTMSFNCTaskDialogDisplayedButtons : unsigned char { tdbNone, tdbDefault };

enum DECLSPEC_DENUM TTMSFNCTaskDialogCommonButton : unsigned char { tcbOK, tcbYes, tcbNo, tcbCancel, tcbRetry, tcbClose };

typedef System::Set<TTMSFNCTaskDialogCommonButton, TTMSFNCTaskDialogCommonButton::tcbOK, TTMSFNCTaskDialogCommonButton::tcbClose> TTMSFNCTaskDialogCommonButtons;

enum DECLSPEC_DENUM TTMSFNCTaskDialogPosition : unsigned char { tdpScreenCenter, tdpOwnerFormCenter };

enum DECLSPEC_DENUM TTMSFNCTaskDialogInputType : unsigned char { titEdit, titMemo, titComboList, titDate, titCustom, titNone, titTime, titPassword };

enum DECLSPEC_DENUM TTMSFNCTaskDialogIcon : unsigned char { tdiBlank, tdiWarning, tdiQuestion, tdiError, tdiInformation, tdiShield, tdiAbout };

enum DECLSPEC_DENUM TTMSFNCTaskDialogFooterIcon : unsigned char { tfiBlank, tfiWarning, tfiQuestion, tfiError, tfiInformation, tfiShield, tfiAbout };

class PASCALIMPLEMENTATION TTMSFNCTaskDialogButton : public Fmx::Tmsfnccustomcontrol::TTMSFNCCustomControl
{
	typedef Fmx::Tmsfnccustomcontrol::TTMSFNCCustomControl inherited;
	
private:
	Fmx::Tmsfncimage::TTMSFNCImage* FIcon;
	System::UnicodeString FCaption;
	System::Uitypes::TModalResult FModalResult;
	bool FInside;
	bool FMouseDown;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FTextFont;
	System::Classes::TNotifyEvent FOnButtonClicked;
	System::Uitypes::TAlphaColor FButtonFill;
	void __fastcall SetIcon(Fmx::Tmsfncimage::TTMSFNCImage* const Value);
	void __fastcall SetCap(const System::UnicodeString Value);
	void __fastcall SetModalResult(const System::Uitypes::TModalResult Value);
	void __fastcall SetTextFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	
protected:
	virtual void __fastcall DoEnter();
	virtual void __fastcall DoExit();
	virtual void __fastcall Draw(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	void __fastcall BitmapLoaded(System::TObject* Sender);
	virtual void __fastcall HandleMouseLeave();
	virtual void __fastcall HandleMouseEnter();
	virtual void __fastcall HandleMouseDown(System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall HandleMouseUp(System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, float X, float Y);
	
public:
	__fastcall virtual TTMSFNCTaskDialogButton(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCTaskDialogButton();
	__property System::Classes::TNotifyEvent OnButtonClicked = {read=FOnButtonClicked, write=FOnButtonClicked};
	__property Fmx::Tmsfncimage::TTMSFNCImage* Icon = {read=FIcon, write=SetIcon};
	__property System::UnicodeString Caption = {read=FCaption, write=SetCap};
	__property System::Uitypes::TModalResult ModalResult = {read=FModalResult, write=SetModalResult, nodefault};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* TextFont = {read=FTextFont, write=SetTextFont};
};


class PASCALIMPLEMENTATION TTMSFNCTaskDialogAppearance : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* FDialogPanelStroke;
	System::Uitypes::TAlphaColor FColor;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* FDialogPanelFill;
	System::Uitypes::TAlphaColor FInstructionColor;
	System::Uitypes::TAlphaColor FFooterColor;
	System::Uitypes::TAlphaColor FContentColor;
	System::Uitypes::TAlphaColor FExpandedTextColor;
	void __fastcall SetColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetDialogPanelFill(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* const Value);
	void __fastcall SetDialogPanelStroke(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* const Value);
	void __fastcall SetInstructionColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetContentColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetExpandedTextColor(const System::Uitypes::TAlphaColor Value);
	void __fastcall SetFooterColor(const System::Uitypes::TAlphaColor Value);
	
public:
	__fastcall TTMSFNCTaskDialogAppearance();
	__fastcall virtual ~TTMSFNCTaskDialogAppearance();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property System::Uitypes::TAlphaColor DialogColor = {read=FColor, write=SetColor, nodefault};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFill* DialogPanelFill = {read=FDialogPanelFill, write=SetDialogPanelFill};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsStroke* DialogPanelStroke = {read=FDialogPanelStroke, write=SetDialogPanelStroke};
	__property System::Uitypes::TAlphaColor InstructionColor = {read=FInstructionColor, write=SetInstructionColor, nodefault};
	__property System::Uitypes::TAlphaColor ContentColor = {read=FContentColor, write=SetContentColor, nodefault};
	__property System::Uitypes::TAlphaColor ExpandedTextColor = {read=FExpandedTextColor, write=SetExpandedTextColor, nodefault};
	__property System::Uitypes::TAlphaColor FooterColor = {read=FFooterColor, write=SetFooterColor, nodefault};
};


typedef void __fastcall (__closure *TTMSFNCCustomTaskDialogVerifyClickEvent)(System::TObject* Sender, bool Checked);

typedef void __fastcall (__closure *TTMSFNCCustomTaskDialogRadioClickEvent)(System::TObject* Sender, int RadioID);

typedef void __fastcall (__closure *TTMSFNCCustomTaskDialogButtonClickEvent)(System::TObject* Sender, int ButtonID);

typedef void __fastcall (__closure *TTMSFNCCustomTaskDialogProgressEvent)(System::TObject* Sender, int &Pos);

typedef void __fastcall (__closure *TTMSFNCCustomTaskDialogExandButtonClickEvent)(System::TObject* Sender, bool Expanded);

typedef void __fastcall (__closure *TTMSFNCCustomTaskDialogDialogResultEvent)(System::TObject* Sender, System::Uitypes::TModalResult AModalResult);

typedef void __fastcall (__closure *TTMSFNCCustomTaskDialogBeforeCloseEvent)(System::TObject* Sender, bool &AAllow);

class PASCALIMPLEMENTATION TTMSFNCCustomTaskDialog : public Fmx::Tmsfnccustomcomponent::TTMSFNCCustomComponent
{
	typedef Fmx::Tmsfnccustomcomponent::TTMSFNCCustomComponent inherited;
	
private:
	Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* FBitmapContainer;
	System::UnicodeString FTitle;
	System::UnicodeString FInstruction;
	System::UnicodeString FContent;
	TTMSFNCTaskDialogOptions FOptions;
	int FMinDialogWidth;
	TTMSFNCTaskDialogIcon FIcon;
	bool FApplicationIsParent;
	Fmx::Tmsfnctypes::TTMSFNCBitmap* FCustomIcon;
	System::Classes::TStringList* FRadioButtons;
	int FProgressBarMin;
	int FProgressBarMax;
	int FDefaultRadioButton;
	TTMSFNCTaskDialogPosition FDialogPosition;
	TTMSFNCTaskDialogCommonButtons FCommonButtons;
	System::Classes::TStringList* FCustomButtons;
	System::UnicodeString FCollapseControlText;
	System::UnicodeString FExpandedText;
	System::UnicodeString FExpandControlText;
	System::UnicodeString FVerifyText;
	TTMSFNCTaskDialogIcon FFooterIcon;
	System::UnicodeString FFooter;
	TTMSFNCTaskDialogInputType FInputType;
	System::Classes::TStringList* FInputItems;
	System::UnicodeString FInputText;
	Fmx::Controls::TControl* FInputControl;
	TTMSFNCCustomTaskDialogRadioClickEvent FOnDialogRadioClick;
	TTMSFNCCustomTaskDialogVerifyClickEvent FOnDialogVerifyClick;
	TTMSFNCCustomTaskDialogButtonClickEvent FOnDialogButtonClick;
	int FRadioButtonResult;
	bool FVerifyResult;
	System::Classes::TNotifyEvent FOnDialogCreated;
	System::Classes::TNotifyEvent FOnDialogClosed;
	System::Classes::TNotifyEvent FOnDialogTimer;
	TTMSFNCTaskDialogForm* FDialogForm;
	Fmx::Objects::TRectangle* FDialogLayer;
	System::DelphiInterface<System::Sysutils::TProc__1<System::Uitypes::TModalResult> > FResultProc;
	Fmx::Types::TTimer* FCreatedTimer;
	TTMSFNCCustomTaskDialogProgressEvent FOnDialogProgress;
	bool FAutoClose;
	int FAutoCloseTimeOut;
	int FAutoCloseCounter;
	System::Classes::TNotifyEvent FOnAutoClose;
	int FMaxDialogWidth;
	TTMSFNCCustomTaskDialogExandButtonClickEvent FOnDialogExpandButtonClick;
	TTMSFNCCustomTaskDialogDialogResultEvent FOnDialogResult;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FButtonFont;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* FCommandLinkFont;
	TTMSFNCTaskDialogDisplayedButtons FDisplayedButtons;
	Fmx::Tmsfncgraphicstypes::TTMSFNCAppearanceGlobalFont* FGlobalFont;
	TTMSFNCTaskDialogAppearance* FAppearance;
	TTMSFNCCustomTaskDialogBeforeCloseEvent FOnBeforeCloseDialog;
	void __fastcall SetContent(const System::UnicodeString Value);
	void __fastcall SetInstruction(const System::UnicodeString Value);
	void __fastcall SetTitle(const System::UnicodeString Value);
	void __fastcall SetMinDialogWidth(const int Value);
	void __fastcall SetIcon(const TTMSFNCTaskDialogIcon Value);
	void __fastcall SetApplicationIsParent(const bool Value);
	void __fastcall SetCustomIcon(Fmx::Tmsfnctypes::TTMSFNCBitmap* const Value);
	void __fastcall SetRadioButtons(System::Classes::TStringList* const Value);
	void __fastcall SetProgressBarMax(const int Value);
	void __fastcall SetProgressBarMin(const int Value);
	void __fastcall SetDefaultRadioButton(const int Value);
	void __fastcall SetDialogPosition(const TTMSFNCTaskDialogPosition Value);
	void __fastcall SetCommonButtons(const TTMSFNCTaskDialogCommonButtons Value);
	void __fastcall SetCustomButtons(System::Classes::TStringList* const Value);
	void __fastcall SetCollapseControlText(const System::UnicodeString Value);
	void __fastcall SetExpandControlText(const System::UnicodeString Value);
	void __fastcall SetExpandedText(const System::UnicodeString Value);
	void __fastcall SetVerifytext(const System::UnicodeString Value);
	void __fastcall SetFooter(const System::UnicodeString Value);
	void __fastcall SetFooterIcon(const TTMSFNCTaskDialogIcon Value);
	void __fastcall SetInputItems(System::Classes::TStringList* const Value);
	void __fastcall SetInputType(const TTMSFNCTaskDialogInputType Value);
	void __fastcall SetInputText(const System::UnicodeString Value);
	void __fastcall SetRadioButtonResult(const int Value);
	void __fastcall SetVerifyResult(const bool Value);
	void __fastcall SetAutoClose(const bool Value);
	void __fastcall SetAutoCloseTimeOut(const int Value);
	void __fastcall SetOnAutoClose(const System::Classes::TNotifyEvent Value);
	void __fastcall SetBitmapContainer(Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* const Value);
	void __fastcall SetMaxDialogWidth(const int Value);
	void __fastcall SetButtonFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetCommandLinkFont(Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* const Value);
	void __fastcall SetInputControl(Fmx::Controls::TControl* const Value);
	bool __fastcall IsCollapseControlTextStored();
	bool __fastcall IsExpandControlTextStored();
	bool __fastcall IsInputTextStored();
	bool __fastcall IsInstructionStored();
	bool __fastcall IsTitleStored();
	bool __fastcall IsVerifyTextStored();
	bool __fastcall IsContentStored();
	bool __fastcall IsExpandedTextStored();
	bool __fastcall IsFooterStored();
	Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* __fastcall GetBitmapContainer();
	void __fastcall SetGlobalFont(Fmx::Tmsfncgraphicstypes::TTMSFNCAppearanceGlobalFont* const Value);
	void __fastcall SetAppearance(TTMSFNCTaskDialogAppearance* const Value);
	
protected:
	virtual void __fastcall ChangeDPIScale(int M, int D);
	virtual void __fastcall DoAutoClose();
	virtual void __fastcall DoDialogCreated();
	virtual void __fastcall DoBeforeCloseDialog(bool &AAllow);
	void __fastcall Close();
	virtual void __fastcall Notification(System::Classes::TComponent* AComponent, System::Classes::TOperation Operation);
	void __fastcall TaskDialogFormCreated(System::TObject* Sender);
	void __fastcall TaskDialogFromClosed(System::TObject* Sender);
	void __fastcall DoCreatedTimer(System::TObject* Sender);
	virtual NativeUInt __fastcall GetInstance();
	TTMSFNCCustomTaskDialogButton* __fastcall CreateButton(System::Classes::TComponent* AOwner);
	Fmx::Stdctrls::TRadioButton* __fastcall CreateRadioButton(System::Classes::TComponent* AOwner);
	virtual System::UnicodeString __fastcall GetVersion();
	virtual void __fastcall SetFonts(Fmx::Tmsfncgraphicstypes::TTMSFNCAppearanceGlobalFontType ASetType);
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCAppearanceGlobalFont* GlobalFont = {read=FGlobalFont, write=SetGlobalFont};
	__property TTMSFNCTaskDialogDisplayedButtons DisplayedButtons = {read=FDisplayedButtons, write=FDisplayedButtons, default=1};
	__property Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* BitmapContainer = {read=GetBitmapContainer, write=SetBitmapContainer};
	__property System::UnicodeString Title = {read=FTitle, write=SetTitle, stored=IsTitleStored};
	__property System::UnicodeString Instruction = {read=FInstruction, write=SetInstruction, stored=IsInstructionStored};
	__property System::UnicodeString Content = {read=FContent, write=SetContent, stored=IsContentStored};
	__property TTMSFNCTaskDialogOptions Options = {read=FOptions, write=FOptions, default=0};
	__property int MinDialogWidth = {read=FMinDialogWidth, write=SetMinDialogWidth, default=350};
	__property int MaxDialogWidth = {read=FMaxDialogWidth, write=SetMaxDialogWidth, default=1000};
	__property TTMSFNCTaskDialogIcon Icon = {read=FIcon, write=SetIcon, default=0};
	__property TTMSFNCTaskDialogIcon FooterIcon = {read=FFooterIcon, write=SetFooterIcon, default=0};
	__property System::UnicodeString Footer = {read=FFooter, write=SetFooter, stored=IsFooterStored};
	__property bool ApplicationIsParent = {read=FApplicationIsParent, write=SetApplicationIsParent, default=0};
	__property Fmx::Tmsfnctypes::TTMSFNCBitmap* CustomIcon = {read=FCustomIcon, write=SetCustomIcon};
	__property System::Classes::TStringList* RadioButtons = {read=FRadioButtons, write=SetRadioButtons};
	__property int ProgressBarMin = {read=FProgressBarMin, write=SetProgressBarMin, default=0};
	__property int ProgressBarMax = {read=FProgressBarMax, write=SetProgressBarMax, default=100};
	__property int DefaultRadioButton = {read=FDefaultRadioButton, write=SetDefaultRadioButton, default=0};
	__property TTMSFNCTaskDialogPosition DialogPosition = {read=FDialogPosition, write=SetDialogPosition, default=0};
	__property TTMSFNCTaskDialogCommonButtons CommonButtons = {read=FCommonButtons, write=SetCommonButtons, default=0};
	__property System::Classes::TStringList* CustomButtons = {read=FCustomButtons, write=SetCustomButtons};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* ButtonFont = {read=FButtonFont, write=SetButtonFont};
	__property Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsFont* CommandLinkFont = {read=FCommandLinkFont, write=SetCommandLinkFont};
	__property System::UnicodeString ExpandControlText = {read=FExpandControlText, write=SetExpandControlText, stored=IsExpandControlTextStored};
	__property System::UnicodeString CollapseControlText = {read=FCollapseControlText, write=SetCollapseControlText, stored=IsCollapseControlTextStored};
	__property System::UnicodeString ExpandedText = {read=FExpandedText, write=SetExpandedText, stored=IsExpandedTextStored};
	__property System::UnicodeString VerifyText = {read=FVerifyText, write=SetVerifytext, stored=IsVerifyTextStored};
	__property TTMSFNCTaskDialogInputType InputType = {read=FInputType, write=SetInputType, default=5};
	__property System::Classes::TStringList* InputItems = {read=FInputItems, write=SetInputItems};
	__property System::UnicodeString InputText = {read=FInputText, write=SetInputText, stored=IsInputTextStored};
	__property Fmx::Controls::TControl* InputControl = {read=FInputControl, write=SetInputControl};
	__property bool AutoClose = {read=FAutoClose, write=SetAutoClose, default=0};
	__property int AutoCloseTimeOut = {read=FAutoCloseTimeOut, write=SetAutoCloseTimeOut, default=0};
	__property TTMSFNCTaskDialogAppearance* Appearance = {read=FAppearance, write=SetAppearance};
	__property TTMSFNCCustomTaskDialogVerifyClickEvent OnDialogVerifyClick = {read=FOnDialogVerifyClick, write=FOnDialogVerifyClick};
	__property TTMSFNCCustomTaskDialogRadioClickEvent OnDialogRadioClick = {read=FOnDialogRadioClick, write=FOnDialogRadioClick};
	__property TTMSFNCCustomTaskDialogButtonClickEvent OnDialogButtonClick = {read=FOnDialogButtonClick, write=FOnDialogButtonClick};
	__property TTMSFNCCustomTaskDialogExandButtonClickEvent OnDialogExpandButtonClick = {read=FOnDialogExpandButtonClick, write=FOnDialogExpandButtonClick};
	__property System::Classes::TNotifyEvent OnDialogCreated = {read=FOnDialogCreated, write=FOnDialogCreated};
	__property System::Classes::TNotifyEvent OnDialogClosed = {read=FOnDialogClosed, write=FOnDialogClosed};
	__property System::Classes::TNotifyEvent OnDialogTimer = {read=FOnDialogTimer, write=FOnDialogTimer};
	__property TTMSFNCCustomTaskDialogDialogResultEvent OnDialogResult = {read=FOnDialogResult, write=FOnDialogResult};
	__property TTMSFNCCustomTaskDialogProgressEvent OnDialogProgress = {read=FOnDialogProgress, write=FOnDialogProgress};
	__property System::Classes::TNotifyEvent OnAutoClose = {read=FOnAutoClose, write=SetOnAutoClose};
	__property TTMSFNCCustomTaskDialogBeforeCloseEvent OnBeforeCloseDialog = {read=FOnBeforeCloseDialog, write=FOnBeforeCloseDialog};
	
public:
	__fastcall virtual TTMSFNCCustomTaskDialog(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCCustomTaskDialog();
	virtual void __fastcall Execute(const System::DelphiInterface<System::Sysutils::TProc__1<System::Uitypes::TModalResult> > ResultProc = System::DelphiInterface<System::Sysutils::TProc__1<System::Uitypes::TModalResult> >());
	__property TTMSFNCTaskDialogForm* DialogForm = {read=FDialogForm};
	__property int RadioButtonResult = {read=FRadioButtonResult, write=SetRadioButtonResult, nodefault};
	__property bool VerifyResult = {read=FVerifyResult, write=SetVerifyResult, nodefault};
private:
	void *__ITMSFNCAppearanceGlobalFont;	// Fmx::Tmsfncgraphicstypes::ITMSFNCAppearanceGlobalFont 
	void *__ITMSFNCBitmapContainer;	// Fmx::Tmsfncbitmapcontainer::ITMSFNCBitmapContainer 
	
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


class PASCALIMPLEMENTATION TTMSFNCTaskDialogForm : public Fmx::Tmsfncpopup::TTMSFNCPopup
{
	typedef Fmx::Tmsfncpopup::TTMSFNCPopup inherited;
	
private:
	System::Classes::TComponent* FOwner;
	TTMSFNCCustomTaskDialog* FTaskDialog;
	TTMSFNCCustomTaskDialogLabel* FMessage;
	Fmx::Tmsfnchtmltext::TTMSFNCHTMLText* FContent;
	int FHorMargin;
	int FVerMargin;
	int FHorSpacing;
	int FVerSpacing;
	int FMinFormWidth;
	Fmx::Objects::TRectangle* FRectangle;
	Fmx::Tmsfncimage::TTMSFNCImage* FIcon;
	System::Classes::TList* FRadioButtons;
	Fmx::Stdctrls::TProgressBar* FProgressBar;
	System::Classes::TList* FCommBtnList;
	System::Classes::TList* FCustBtnList;
	Fmx::Tmsfncimage::TTMSFNCImage* FExpandButtonIcon;
	bool FExpanded;
	Fmx::Tmsfnchtmltext::TTMSFNCHTMLText* FExpandedText;
	TTMSFNCCustomTaskDialogLabel* FExpandButtonText;
	Fmx::Tmsfncpanel::TTMSFNCPanel* FPanel;
	Fmx::Stdctrls::TCheckBox* FVerify;
	Fmx::Tmsfnchtmltext::TTMSFNCHTMLText* FFooter;
	Fmx::Tmsfncimage::TTMSFNCImage* FFooterIcon;
	Fmx::Tmsfncedit::TTMSFNCEdit* FInputEdit;
	Fmx::Memo::TMemo* FInputMemo;
	Fmx::Listbox::TComboBox* FInputComboBox;
	Fmx::Datetimectrls::TDateEdit* FInputDate;
	Fmx::Datetimectrls::TTimeEdit* FInputTime;
	Fmx::Types::TTimer* FTimer;
	int FMaxFormWidth;
	Fmx::Types::TFmxObject* FOldParent;
	float FScale;
	void __fastcall SetFormWidth(const int Value);
	void __fastcall SetIcon(Fmx::Tmsfncimage::TTMSFNCImage* const Value);
	void __fastcall SetRadioButtons(System::Classes::TList* const Value);
	void __fastcall SetExpandedText(Fmx::Tmsfnchtmltext::TTMSFNCHTMLText* const Value);
	void __fastcall SetExpandButtonText(TTMSFNCCustomTaskDialogLabel* const Value);
	void __fastcall SetExpandButton(Fmx::Tmsfncimage::TTMSFNCImage* const Value);
	void __fastcall SetVerify(Fmx::Stdctrls::TCheckBox* const Value);
	void __fastcall SetBitmapContainer(Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* const Value);
	void __fastcall SetMaxFormWidth(const int Value);
	Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* __fastcall GetBitmapContainer();
	
protected:
	void __fastcall FormBitmapUpdated(System::TObject* Sender);
	virtual void __fastcall DoClosePopup();
	void __fastcall CloseMobileDialog();
	virtual void __fastcall DoTimer(System::TObject* Sender);
	virtual void __fastcall DoVerifyClick(System::TObject* Sender);
	virtual void __fastcall DoRadioClick(System::TObject* Sender);
	virtual void __fastcall DoUpdateInput();
	virtual void __fastcall DoResult(System::Uitypes::TModalResult AModalResult);
	void __fastcall BtnClickHandler(System::TObject* Sender);
	void __fastcall CommandLinkHandler(System::TObject* Sender);
	void __fastcall DrawLines(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	void __fastcall ExpandIconClicked(System::TObject* Sender);
	void __fastcall ExpandIconChanged(System::TObject* Sender);
	void __fastcall ExpandIconKeyDown(System::TObject* Sender, System::Word &Key, System::WideChar &KeyChar, System::Classes::TShiftState Shift);
	void __fastcall CommandLinkKeyDown(System::TObject* Sender, System::Word &Key, System::WideChar &KeyChar, System::Classes::TShiftState Shift);
	void __fastcall SetExpanded(bool Value);
	Fmx::Types::TFmxObject* __fastcall GetParentControl();
	int __fastcall CalculateCmButtonWidth();
	int __fastcall CalculateButtonListWidth(System::Classes::TList* AList, bool ACustom, TTMSFNCTaskDialogDisplayedButtons ADisplayed);
	int __fastcall CalculateCsButtonWidth();
	int __fastcall CalculateExpButtonWidth();
	int __fastcall CalculateCheckBoxWidth(System::UnicodeString ChkBx);
	int __fastcall CalculateCsInputWidth();
	int __fastcall GetCsBtnWidth(TTMSFNCCustomTaskDialogButton* AButton);
	__property int MinFormWidth = {read=FMinFormWidth, write=SetFormWidth, default=350};
	__property int MaxFormWidth = {read=FMaxFormWidth, write=SetMaxFormWidth, default=1000};
	__property Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* BitmapContainer = {read=GetBitmapContainer, write=SetBitmapContainer};
	__property Fmx::Stdctrls::TCheckBox* Verify = {read=FVerify, write=SetVerify};
	__property Fmx::Tmsfncimage::TTMSFNCImage* Icon = {read=FIcon, write=SetIcon};
	__property System::Classes::TList* RadioButtons = {read=FRadioButtons, write=SetRadioButtons};
	__property Fmx::Tmsfncimage::TTMSFNCImage* ExpandButton = {read=FExpandButtonIcon, write=SetExpandButton};
	__property bool Expanded = {read=FExpanded, default=0};
	__property Fmx::Tmsfnchtmltext::TTMSFNCHTMLText* ExpandedText = {read=FExpandedText, write=SetExpandedText};
	__property TTMSFNCCustomTaskDialogLabel* ExpandButtonText = {read=FExpandButtonText, write=SetExpandButtonText};
	
public:
	__fastcall virtual TTMSFNCTaskDialogForm(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCTaskDialogForm();
	void __fastcall BuildTaskDialog(TTMSFNCCustomTaskDialog* TaskDialog);
	void __fastcall SetPositions();
	__property Fmx::Tmsfncedit::TTMSFNCEdit* InputEdit = {read=FInputEdit};
	__property Fmx::Memo::TMemo* InputMemo = {read=FInputMemo};
	__property Fmx::Listbox::TComboBox* InputComboBox = {read=FInputComboBox};
	__property Fmx::Datetimectrls::TDateEdit* InputDate = {read=FInputDate};
	__property Fmx::Datetimectrls::TTimeEdit* InputTime = {read=FInputTime};
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


class PASCALIMPLEMENTATION TTMSFNCTaskDialog : public TTMSFNCCustomTaskDialog
{
	typedef TTMSFNCCustomTaskDialog inherited;
	
__published:
	__property ApplicationIsParent = {default=0};
	__property Appearance;
	__property DisplayedButtons = {default=1};
	__property BitmapContainer;
	__property Title;
	__property Instruction;
	__property Options = {default=0};
	__property Icon = {default=0};
	__property CustomIcon;
	__property Content;
	__property RadioButtons;
	__property DefaultRadioButton = {default=0};
	__property DialogPosition = {default=0};
	__property CommonButtons = {default=0};
	__property CustomButtons;
	__property ButtonFont;
	__property CommandLinkFont;
	__property ExpandedText;
	__property ExpandControlText;
	__property CollapseControlText;
	__property MinDialogWidth = {default=350};
	__property MaxDialogWidth = {default=1000};
	__property VerifyText;
	__property FooterIcon = {default=0};
	__property Footer;
	__property InputType = {default=5};
	__property InputItems;
	__property InputText;
	__property InputControl;
	__property AutoClose = {default=0};
	__property AutoCloseTimeOut = {default=0};
	__property GlobalFont;
	__property OnAutoClose;
	__property OnDialogVerifyClick;
	__property OnDialogRadioClick;
	__property OnDialogButtonClick;
	__property OnDialogExpandButtonClick;
	__property OnDialogCreated;
	__property OnDialogClosed;
	__property OnDialogTimer;
	__property OnDialogProgress;
	__property OnDialogResult;
	__property OnBeforeCloseDialog;
public:
	/* TTMSFNCCustomTaskDialog.Create */ inline __fastcall virtual TTMSFNCTaskDialog(System::Classes::TComponent* AOwner) : TTMSFNCCustomTaskDialog(AOwner) { }
	/* TTMSFNCCustomTaskDialog.Destroy */ inline __fastcall virtual ~TTMSFNCTaskDialog() { }
	
};


typedef System::StaticArray<System::UnicodeString, 6> Fmx_Tmsfnctaskdialog__8;

//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x4);
static constexpr System::Int8 BLD_VER = System::Int8(0x0);
extern DELPHI_PACKAGE Fmx_Tmsfnctaskdialog__8 ButtonNames;
extern DELPHI_PACKAGE System::StaticArray<int, 6> ModalResults;
}	/* namespace Tmsfnctaskdialog */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCTASKDIALOG)
using namespace Fmx::Tmsfnctaskdialog;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfnctaskdialogHPP
