//---------------------------------------------------------------------------

#ifndef Unit1H
#define Unit1H
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include "scAdvancedControls.hpp"
#include "scControls.hpp"
#include "scDrawUtils.hpp"
#include "scExtControls.hpp"
#include "scGPControls.hpp"
#include "scGPImages.hpp"
#include "scModernControls.hpp"
#include "scStyledForm.hpp"
#include "scStyleManager.hpp"
#include <System.ImageList.hpp>
#include <Vcl.ImgList.hpp>
#include <Vcl.Mask.hpp>
#include <Vcl.Menus.hpp>
//---------------------------------------------------------------------------
class TForm1 : public TForm
{
__published:	// IDE-managed Components
	TscGPPanel *scGPPanel1;
	TscGPPanel *scGPPanel2;
	TscGPGlyphButton *CloseButton;
	TscGPGlyphButton *MinButton;
	TscGPButton *scGPButton1;
	TscLabel *scLabel1;
	TscGPButton *PopupMenuButton;
	TscGPButton *scGPButton2;
	TscGPButton *scGPButton3;
	TscGPGlyphButton *scGPGlyphButton1;
	TscGPGlyphButton *scGPGlyphButton2;
	TscGPGlyphButton *scGPGlyphButton3;
	TscGPGlyphButton *scGPGlyphButton4;
	TscGPGlyphButton *MaxButton;
	TscGPGlyphButton *DetailsButton;
	TscPageViewer *scPageViewer1;
	TscPageViewerPage *scPageViewerPage3;
	TscLabel *scLabel7;
	TscPageViewerPage *scPageViewerPage2;
	TscLabel *scLabel3;
	TscPageViewerPage *scPageViewerPage1;
	TscLabel *scLabel2;
	TscMemo *scMemo1;
	TscLabel *scLabel8;
	TscComboBox *scComboBox1;
	TscCheckBox *scCheckBox1;
	TscCheckBox *scCheckBox2;
	TscRadioGroup *scRadioGroup1;
	TscSplitView *scSplitView1;
	TscLabel *scLabel4;
	TscScrollBox *scScrollBox1;
	TscListGroupPanel *scListGroupPanel1;
	TscLabel *scLabel5;
	TscLabel *scLabel6;
	TscLabel *scLabel9;
	TscGPSwitch *scGPSwitch1;
	TscGPSwitch *scGPSwitch2;
	TscGPSwitch *scGPSwitch3;
	TscListGroupPanel *scListGroupPanel3;
	TscLabel *scLabel12;
	TscLabel *scLabel17;
	TscPasswordEdit *scPasswordEdit1;
	TscEdit *scEdit2;
	TscListGroupPanel *scListGroupPanel4;
	TscLabel *scLabel18;
	TscAdvancedComboBox *scAdvancedComboBox1;
	TscCheckBox *scCheckBox5;
	TscCheckBox *scCheckBox6;
	TscGPPanel *scGPPanel3;
	TscGPTrackBar *scGPTrackBar1;
	TscGPGlyphButton *scGPGlyphButton5;
	TscGPGlyphButton *scGPGlyphButton6;
	TscGPSizeBox *scGPSizeBox1;
	TscLabel *scLabel10;
	TscSplitView *scSplitView2;
	TscButton *scButton2;
	TscButton *scButton3;
	TscButton *scButton1;
	TscButton *scButton4;
	TscButton *scButton5;
	TscGPSwitch *scGPSwitch4;
	TscLabel *scLabel11;
	TscLabel *scLabel16;
	TscGPSwitch *scGPSwitch5;
	TscStyledForm *scStyledForm1;
	TPopupMenu *PopupMenu1;
	TMenuItem *Open1;
	TMenuItem *New1;
	TMenuItem *Save1;
	TMenuItem *SaveAs1;
	TMenuItem *N2;
	TMenuItem *Print1;
	TMenuItem *PrintSetup1;
	TMenuItem *N1;
	TMenuItem *Exit1;
	TscStyleManager *scStyleManager1;
	TImageList *ImageList48;
	TscGPVirtualImageList *scGPVirtualImageList1;
	void __fastcall CloseButtonClick(TObject *Sender);
	void __fastcall MinButtonClick(TObject *Sender);
	void __fastcall scGPGlyphButton1Click(TObject *Sender);
	void __fastcall scGPButton1Click(TObject *Sender);
	void __fastcall scGPButton2Click(TObject *Sender);
	void __fastcall scGPButton3Click(TObject *Sender);
	void __fastcall scCheckBox2Click(TObject *Sender);
	void __fastcall scCheckBox1Click(TObject *Sender);
	void __fastcall MaxButtonClick(TObject *Sender);
	void __fastcall scLabel1DblClick(TObject *Sender);
	void __fastcall scRadioGroup1ButtonClick(TObject *Sender);
	void __fastcall DetailsButtonClick(TObject *Sender);
	void __fastcall scGPSwitch4ChangeState(TObject *Sender);
	void __fastcall scGPSwitch5ChangeState(TObject *Sender);
	void __fastcall FormCreate(TObject *Sender);
	void __fastcall scComboBox1Click(TObject *Sender);
	void __fastcall scButton1Click(TObject *Sender);
	void __fastcall Exit1Click(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TForm1(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm1 *Form1;
//---------------------------------------------------------------------------
#endif
