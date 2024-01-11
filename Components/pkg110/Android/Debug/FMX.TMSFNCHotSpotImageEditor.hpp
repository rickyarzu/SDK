// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCHotSpotImageEditor.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfnchotspotimageeditorHPP
#define Fmx_TmsfnchotspotimageeditorHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <FMX.TMSFNCCustomComponent.hpp>
#include <FMX.TMSFNCCustomControl.hpp>
#include <FMX.Controls.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.StdCtrls.hpp>
#include <FMX.ExtCtrls.hpp>
#include <FMX.TMSFNCBitmapContainer.hpp>
#include <FMX.Forms.hpp>
#include <FMX.TMSFNCGraphics.hpp>
#include <FMX.TMSFNCPageControl.hpp>
#include <FMX.TMSFNCGraphicsTypes.hpp>
#include <FMX.TMSFNCHotSpotImage.hpp>
#include <FMX.TMSFNCPanel.hpp>
#include <FMX.TMSFNCImage.hpp>
#include <FMX.TMSFNCSplitter.hpp>
#include <FMX.TMSFNCToolBar.hpp>
#include <FMX.TMSFNCColorPicker.hpp>
#include <FMX.TMSFNCStrokeKindPicker.hpp>
#include <FMX.TMSFNCFillKindPicker.hpp>
#include <FMX.TMSFNCFontSizePicker.hpp>
#include <FMX.TMSFNCFontNamePicker.hpp>
#include <FMX.TMSFNCBitmapEditor.hpp>
#include <FMX.TMSFNCEditorPanel.hpp>
#include <FMX.TMSFNCEditorButton.hpp>
#include <FMX.TMSFNCEditorListView.hpp>
#include <FMX.TMSFNCCheckBox.hpp>
#include <FMX.Types.hpp>
#include <FMX.Memo.hpp>
#include <FMX.ListBox.hpp>
#include <FMX.ComboEdit.hpp>
#include <FMX.Edit.hpp>
#include <FMX.Layouts.hpp>
#include <System.UITypes.hpp>
#include <System.Types.hpp>
#include <FMX.Controls.Presentation.hpp>
#include <System.Generics.Collections.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfnchotspotimageeditor
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCHotSpotImageEditorComboBox;
class DELPHICLASS TTMSFNCHotSpotImageEditor;
class DELPHICLASS TTMSFNCHotSpotImageEditorForm;
//-- type declarations -------------------------------------------------------
typedef Fmx::Types::TFmxObject TTMSFNCHotSpotImageEditorParent;

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCHotSpotImageEditorComboBox : public Fmx::Comboedit::TComboEdit
{
	typedef Fmx::Comboedit::TComboEdit inherited;
	
public:
	/* TCustomComboEdit.Create */ inline __fastcall virtual TTMSFNCHotSpotImageEditorComboBox(System::Classes::TComponent* AOwner)/* overload */ : Fmx::Comboedit::TComboEdit(AOwner) { }
	
public:
	/* TCustomEdit.Destroy */ inline __fastcall virtual ~TTMSFNCHotSpotImageEditorComboBox() { }
	
};

#pragma pack(pop)

class PASCALIMPLEMENTATION TTMSFNCHotSpotImageEditor : public Fmx::Tmsfnccustomcomponent::TTMSFNCCustomComponent
{
	typedef Fmx::Tmsfnccustomcomponent::TTMSFNCCustomComponent inherited;
	
	
private:
	typedef System::DynamicArray<System::Types::TRectF> _TTMSFNCHotSpotImageEditor__1;
	
	typedef System::DynamicArray<Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsPathPolygon> _TTMSFNCHotSpotImageEditor__2;
	
	
private:
	Fmx::Tmsfnccustomcontrol::TTMSFNCCustomDesignerForm* frm;
	int FMovePtIndex;
	int FSelPtIdx;
	bool FDrag;
	bool FSetting;
	double FHScale;
	double FWScale;
	float FXOffset;
	float FYOffset;
	Fmx::Tmsfnceditorpanel::TTMSFNCEditorPanel* FPanel;
	Fmx::Tmsfnceditorpanel::TTMSFNCEditorPanel* FRightPanel;
	Fmx::Tmsfnceditorpanel::TTMSFNCEditorPanel* FLeftPanel;
	Fmx::Tmsfncpagecontrol::TTMSFNCPageControl* FPageControl;
	Fmx::Tmsfncpagecontrol::TTMSFNCPageControlPage* FHsPage;
	Fmx::Tmsfncpagecontrol::TTMSFNCPageControlPage* FFillPg;
	Fmx::Tmsfncpagecontrol::TTMSFNCPageControlPage* FStrokePg;
	Fmx::Tmsfncpagecontrol::TTMSFNCPageControlPage* FFontPg;
	Fmx::Tmsfnceditorpanel::TTMSFNCEditorPanel* FHsPanel;
	Fmx::Tmsfnceditorpanel::TTMSFNCEditorPanel* FHsHeaderPanel;
	Fmx::Stdctrls::TLabel* FHsHeaderLbl;
	Fmx::Stdctrls::TLabel* FFillLbl;
	Fmx::Stdctrls::TLabel* FFColLbl;
	Fmx::Stdctrls::TLabel* FFCol2Lbl;
	Fmx::Stdctrls::TLabel* FFColMirLbl;
	Fmx::Stdctrls::TLabel* FFColMir2Lbl;
	Fmx::Stdctrls::TLabel* FFOpacityLbl;
	Fmx::Stdctrls::TLabel* FFOrientLbl;
	Fmx::Stdctrls::TLabel* FFModeLbl;
	Fmx::Stdctrls::TLabel* FFKindLbl;
	Fmx::Stdctrls::TLabel* FFontLbl;
	Fmx::Stdctrls::TLabel* FStrokeLbl;
	Fmx::Stdctrls::TLabel* FSWidthLbl;
	Fmx::Stdctrls::TLabel* FSOpacityLbl;
	Fmx::Stdctrls::TLabel* FWandSensLbl;
	Fmx::Stdctrls::TLabel* FWandDensLbl;
	Fmx::Stdctrls::TLabel* FFTextureLbl;
	Fmx::Tmsfncimage::TTMSFNCImage* FImage;
	Fmx::Tmsfncimage::TTMSFNCImage* FFillImg;
	Fmx::Tmsfnctoolbar::TTMSFNCToolBar* FPtTb;
	Fmx::Listbox::TComboBox* FFOrientCombo;
	Fmx::Listbox::TComboBox* FFModeCombo;
	Fmx::Tmsfnceditorlistview::TTMSFNCEditorList* FHsLb;
	Fmx::Tmsfnceditorlistview::TTMSFNCEditorList* FPtLb;
	Fmx::Layouts::TVertScrollBox* FVHsScrlBox;
	Fmx::Layouts::TVertScrollBox* FVPtScrlBox;
	Fmx::Tmsfnccheckbox::TTMSFNCCheckBox* FShowHotSpot;
	Fmx::Tmsfnccheckbox::TTMSFNCCheckBox* FSelectableHotSpot;
	Fmx::Tmsfnccheckbox::TTMSFNCCheckBox* FShowName;
	Fmx::Tmsfncsplitter::TTMSFNCSplitter* FSpT;
	Fmx::Tmsfnccolorpicker::TTMSFNCColorPicker* FFColPick;
	Fmx::Tmsfnccolorpicker::TTMSFNCColorPicker* FFColToPick;
	Fmx::Tmsfnccolorpicker::TTMSFNCColorPicker* FFColMirPick;
	Fmx::Tmsfnccolorpicker::TTMSFNCColorPicker* FFColMirToPick;
	Fmx::Tmsfnccolorpicker::TTMSFNCColorPicker* FSColPick;
	Fmx::Tmsfnccolorpicker::TTMSFNCColorPicker* FTColPick;
	Fmx::Tmsfncfillkindpicker::TTMSFNCFillKindPicker* FFillKindPick;
	Fmx::Tmsfncfontnamepicker::TTMSFNCFontNamePicker* FTNamePick;
	Fmx::Tmsfncfontsizepicker::TTMSFNCFontSizePicker* FTSizePick;
	Fmx::Tmsfncstrokekindpicker::TTMSFNCStrokeKindPicker* FSKindPick;
	Fmx::Tmsfnceditorbutton::TTMSFNCEditorButton* FHoverBtn;
	Fmx::Tmsfnceditorbutton::TTMSFNCEditorButton* FDownBtn;
	Fmx::Tmsfnceditorbutton::TTMSFNCEditorButton* FSelectBtn;
	Fmx::Tmsfnceditorbutton::TTMSFNCEditorButton* FAddHsBtn;
	Fmx::Tmsfnceditorbutton::TTMSFNCEditorButton* FChangNameHsBtn;
	Fmx::Tmsfnceditorbutton::TTMSFNCEditorButton* FDelHsBtn;
	Fmx::Tmsfnceditorbutton::TTMSFNCEditorButton* FAssignBitmap;
	Fmx::Tmsfnctoolbar::TTMSFNCToolBarButton* FAddPtBtn;
	Fmx::Tmsfnctoolbar::TTMSFNCToolBarButton* FSquarePtBtn;
	Fmx::Tmsfnctoolbar::TTMSFNCToolBarButton* FClearPtBtn;
	Fmx::Tmsfnctoolbar::TTMSFNCToolBarButton* FDelPtBtn;
	Fmx::Tmsfnctoolbar::TTMSFNCToolBarButton* FEllPtBtn;
	Fmx::Tmsfnctoolbar::TTMSFNCToolBarButton* FSelPtBtn;
	Fmx::Tmsfnctoolbar::TTMSFNCToolBarButton* FWandBtn;
	Fmx::Tmsfnctoolbar::TTMSFNCToolBarButton* FAddHsTbBtn;
	Fmx::Tmsfnctoolbar::TTMSFNCToolBarButton* FDelHsTbBtn;
	Fmx::Stdctrls::TTrackBar* FFOpacityTB;
	Fmx::Stdctrls::TTrackBar* FSOpacityTB;
	Fmx::Stdctrls::TTrackBar* FSWidthTB;
	Fmx::Stdctrls::TTrackBar* FWndSensTB;
	Fmx::Stdctrls::TTrackBar* FWndDensTB;
	Fmx::Edit::TEdit* FNameEdit;
	Fmx::Tmsfnceditorbutton::TTMSFNCEditorButton* FButtonOk;
	Fmx::Tmsfnceditorbutton::TTMSFNCEditorButton* FButtonCancel;
	Fmx::Tmsfnceditorbutton::TTMSFNCEditorButton* FButtonOpen;
	Fmx::Tmsfnchotspotimage::TTMSFNCHotSpotImage* FCopyHotSpotImage;
	_TTMSFNCHotSpotImageEditor__1 FDrawBounds;
	_TTMSFNCHotSpotImageEditor__2 FDrawPolygons;
	Fmx::Tmsfnchotspotimage::TTMSFNCHotSpotImage* FHotSpotImage;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsPathPolygon FTempPolygon;
	Fmx::Tmsfncgraphicstypes::TTMSFNCGraphicsPathPolygon FTempDrawPolygon;
	System::Types::TPointF FTempPt;
	void __fastcall DrawHotSpotBitmap(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, int AIndex);
	void __fastcall DrawHotSpotTexture(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, int AIndex, Fmx::Tmsfnctypes::TTMSFNCBitmap* ATexture);
	bool __fastcall CalculateDrawScale();
	void __fastcall ClearPtBtns();
	void __fastcall RecalculatePolygon(int AIndex);
	void __fastcall RecalculatePolygons();
	void __fastcall RecalculateTempPolygon();
	void __fastcall SetHotSpotImage(Fmx::Tmsfnchotspotimage::TTMSFNCHotSpotImage* const Value);
	void __fastcall SetLayoutProperties();
	void __fastcall SetShowCheckbox();
	void __fastcall SetViewBtn(int ABtnIdx);
	bool __fastcall CheckPointListBoxIndexRange(int AIndex = 0xffffffff);
	
protected:
	void __fastcall DoFormShow(System::TObject* Sender);
	virtual NativeUInt __fastcall GetInstance();
	virtual void __fastcall RegisterRuntimeClasses();
	virtual void __fastcall Notification(System::Classes::TComponent* AComponent, System::Classes::TOperation AOperation);
	virtual void __fastcall BuildEditor(Fmx::Types::TFmxObject* AParent);
	virtual void __fastcall DoBitmapAssignClick(System::TObject* Sender);
	virtual void __fastcall DoDownBtnClick(System::TObject* Sender);
	virtual void __fastcall DoHoverBtnClick(System::TObject* Sender);
	virtual void __fastcall DoSelectBtnClick(System::TObject* Sender);
	virtual void __fastcall DoAfterDraw(System::TObject* Sender, Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	virtual void __fastcall DoHsLbChange(System::TObject* Sender, int AIndex, Fmx::Tmsfnceditorlistview::TTMSFNCEditorListItem* AItem, bool ASelected);
	virtual void __fastcall DoPtLbChange(System::TObject* Sender, int AIndex, Fmx::Tmsfnceditorlistview::TTMSFNCEditorListItem* AItem, bool ASelected);
	void __fastcall UpdateHsLbAfterChange();
	virtual void __fastcall DoShowHotSpotChange(System::TObject* Sender);
	virtual void __fastcall DoShowNameChange(System::TObject* Sender);
	virtual void __fastcall DoSelectableHotSpotChange(System::TObject* Sender);
	virtual void __fastcall DoChangNameHsBtn(System::TObject* Sender);
	virtual void __fastcall DoImageResize(System::TObject* Sender);
	virtual void __fastcall DoImagePaint(System::TObject* Sender);
	virtual void __fastcall DoAddHsBtnClick(System::TObject* Sender);
	virtual void __fastcall DoDelHsBtnClick(System::TObject* Sender);
	virtual void __fastcall DoAddPtBtnClick(System::TObject* Sender);
	virtual void __fastcall DoEllipsePtBtnClick(System::TObject* Sender);
	virtual void __fastcall DoSquarePtBtnClick(System::TObject* Sender);
	virtual void __fastcall DoDelPtBtnClick(System::TObject* Sender);
	virtual void __fastcall DoClearPtBtnClick(System::TObject* Sender);
	virtual void __fastcall DoSelectPtBtnClick(System::TObject* Sender);
	virtual void __fastcall DoWandBtnClick(System::TObject* Sender);
	virtual void __fastcall DoWandChange(System::TObject* Sender);
	virtual void __fastcall DoFillKindChange(System::TObject* Sender, int AIndex);
	virtual void __fastcall DoFillColorChange(System::TObject* Sender, int AItemIndex);
	virtual void __fastcall DoFillColorToChange(System::TObject* Sender, int AItemIndex);
	virtual void __fastcall DoFillColorMirrorChange(System::TObject* Sender, int AItemIndex);
	virtual void __fastcall DoFillColorMirrorToChange(System::TObject* Sender, int AItemIndex);
	virtual void __fastcall DoStrokeKindChange(System::TObject* Sender, int AItemIndex);
	virtual void __fastcall DoStrokeColorChange(System::TObject* Sender, int AItemIndex);
	virtual void __fastcall DoStrokeOpacityTrackBarChange(System::TObject* Sender);
	virtual void __fastcall DoStrokeWidthTrackBarChange(System::TObject* Sender);
	virtual void __fastcall DoFillOpacityTrackBarChange(System::TObject* Sender);
	virtual void __fastcall DoFontNameChange(System::TObject* Sender, System::UnicodeString AFontName);
	virtual void __fastcall DoFontSizeChange(System::TObject* Sender, float AFontSize);
	virtual void __fastcall DoFontColorChange(System::TObject* Sender, int AItemIndex);
	virtual void __fastcall DoFillOrientationChange(System::TObject* Sender);
	virtual void __fastcall DoTextureModeChange(System::TObject* Sender);
	virtual void __fastcall DoAssignStateBitmapClick(System::TObject* Sender);
	virtual void __fastcall DoFillTextureImageClick(System::TObject* Sender);
	virtual void __fastcall DoFillImagePaint(System::TObject* Sender);
	virtual void __fastcall DoImageMouseDown(System::TObject* Sender, System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall DoImageMouseMove(System::TObject* Sender, System::Classes::TShiftState Shift, float X, float Y);
	virtual void __fastcall DoImageMouseUp(System::TObject* Sender, System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, float X, float Y);
	void __fastcall DoFormKeyDown(System::TObject* Sender, System::Word &Key, System::WideChar &KeyChar, System::Classes::TShiftState Shift);
	void __fastcall UpdateHsList(bool AUpdateControls = false);
	void __fastcall UpdatePtList();
	
public:
	__fastcall virtual TTMSFNCHotSpotImageEditor(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCHotSpotImageEditor();
	System::Uitypes::TModalResult __fastcall Execute();
	
__published:
	__property Fmx::Tmsfnchotspotimage::TTMSFNCHotSpotImage* HotSpotImage = {read=FHotSpotImage, write=SetHotSpotImage};
};


#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCHotSpotImageEditorForm : public Fmx::Tmsfnccustomcontrol::TTMSFNCCustomDesignerForm
{
	typedef Fmx::Tmsfnccustomcontrol::TTMSFNCCustomDesignerForm inherited;
	
public:
	/* TCustomForm.Create */ inline __fastcall virtual TTMSFNCHotSpotImageEditorForm(System::Classes::TComponent* AOwner) : Fmx::Tmsfnccustomcontrol::TTMSFNCCustomDesignerForm(AOwner) { }
	/* TCustomForm.CreateNew */ inline __fastcall virtual TTMSFNCHotSpotImageEditorForm(System::Classes::TComponent* AOwner, NativeInt Dummy) : Fmx::Tmsfnccustomcontrol::TTMSFNCCustomDesignerForm(AOwner, Dummy) { }
	/* TCustomForm.Destroy */ inline __fastcall virtual ~TTMSFNCHotSpotImageEditorForm() { }
	
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x1);
static constexpr System::Int8 REL_VER = System::Int8(0x0);
static constexpr System::Int8 BLD_VER = System::Int8(0x0);
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCHotSpotEditorOK;
#define Fmx_Tmsfnchotspotimageeditor_sTMSFNCHotSpotEditorOK System::LoadResourceString(&Fmx::Tmsfnchotspotimageeditor::_sTMSFNCHotSpotEditorOK)
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCHotSpotEditorCancel;
#define Fmx_Tmsfnchotspotimageeditor_sTMSFNCHotSpotEditorCancel System::LoadResourceString(&Fmx::Tmsfnchotspotimageeditor::_sTMSFNCHotSpotEditorCancel)
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCHotSpotEditorImage;
#define Fmx_Tmsfnchotspotimageeditor_sTMSFNCHotSpotEditorImage System::LoadResourceString(&Fmx::Tmsfnchotspotimageeditor::_sTMSFNCHotSpotEditorImage)
extern DELPHI_PACKAGE System::ResourceString _sTMSFNCHotSpotEditorNew;
#define Fmx_Tmsfnchotspotimageeditor_sTMSFNCHotSpotEditorNew System::LoadResourceString(&Fmx::Tmsfnchotspotimageeditor::_sTMSFNCHotSpotEditorNew)
}	/* namespace Tmsfnchotspotimageeditor */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCHOTSPOTIMAGEEDITOR)
using namespace Fmx::Tmsfnchotspotimageeditor;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfnchotspotimageeditorHPP
