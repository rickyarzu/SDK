//---------------------------------------------------------------------------

#ifndef Unit1H
#define Unit1H
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include "scControls.hpp"
#include "scGPControls.hpp"
#include "scModernControls.hpp"
#include "scStyledForm.hpp"
#include "scStyleManager.hpp"
#include <Vcl.ComCtrls.hpp>
#include <Vcl.Imaging.pngimage.hpp>
#include <Vcl.Menus.hpp>
#include "scGPImages.hpp"
#include "scDrawUtils.hpp"
#include "scExtControls.hpp"
#include "scGPExtControls.hpp"
#include "scGPMeters.hpp"
#include "scGPPagers.hpp"
#include "scImageCollection.hpp"
#include <System.ImageList.hpp>
#include <Vcl.ImgList.hpp>
#include <Vcl.Mask.hpp>
//---------------------------------------------------------------------------
class TForm2 : public TForm
{
__published:	// IDE-managed Components
	TscStatusBar *scStatusBar1;
	TscGPPageControl *scGPPageControl1;
	TscGPPageControlPage *scGPPageControlPage6;
	TscGPPageControl *scGPPageControl2;
	TscGPPageControlPage *scGPPageControlPage12;
	TscGPGlyphButton *scGPGlyphButton4;
	TscGPGlyphButton *scGPGlyphButton5;
	TscGPGlyphButton *scGPGlyphButton2;
	TscGPGlyphButton *scGPGlyphButton3;
	TscGPPageControlPage *scGPPageControlPage8;
	TscLabel *scLabel13;
	TscGPPageControlPage *scGPPageControlPage9;
	TscGPPageControlPage *scGPPageControlPage10;
	TscGPPageControlPage *scGPPageControlPage11;
	TscGPPageControlPage *scGPPageControlPage7;
	TscLabel *scLabel11;
	TscLabel *scLabel12;
	TscGPTabControl *scGPTabControl1;
	TscLabel *scLabel14;
	TscLabel *scLabel15;
	TscGPToolPager *scGPToolPager1;
	TscGPButton *scGPButton7;
	TscGPToolPagerPage *scGPToolPagerPage2;
	TscGPGlyphButton *scGPGlyphButton15;
	TscGPToolPagerPage *scGPToolPagerPage3;
	TscGPToolPagerPage *scGPToolPagerPage1;
	TscGPToolGroupPanel *scGPToolGroupPanel2;
	TscGPGlyphButton *scGPGlyphButton9;
	TscGPGlyphButton *scGPGlyphButton10;
	TscGPGlyphButton *scGPGlyphButton11;
	TscGPToolGroupPanel *scGPToolGroupPanel1;
	TscGPGlyphButton *scGPGlyphButton6;
	TscGPGlyphButton *scGPGlyphButton7;
	TscGPGlyphButton *scGPGlyphButton8;
	TscGPToolGroupPanel *scGPToolGroupPanel3;
	TscGPGlyphButton *scGPGlyphButton12;
	TscGPGlyphButton *scGPGlyphButton13;
	TscGPGlyphButton *scGPGlyphButton14;
	TscGPPageControlPage *scGPPageControlPage2;
	TscGPListBox *scGPListBox1;
	TscGPListBox *scGPListBox4;
	TscGPListBox *scGPListBox3;
	TscGPComboBox *scGPComboBox1;
	TscGPComboBox *scGPComboBox2;
	TscGPComboEdit *scGPComboEdit1;
	TscGPComboEdit *scGPComboEdit2;
	TscGPEdit *scGPEdit1;
	TscGPSpinEdit *scGPSpinEdit1;
	TscGPSpinEdit *scGPSpinEdit2;
	TscGPEdit *scGPEdit2;
	TscGPComboEdit *scGPComboEdit3;
	TscGPComboBox *scGPComboBox3;
	TscGPNumericEdit *scGPNumericEdit1;
	TscGPDateEdit *scGPDateEdit1;
	TscGPPasswordEdit *scGPPasswordEdit1;
	TscGPTimeEdit *scGPTimeEdit2;
	TscGPTimeEdit *scGPTimeEdit1;
	TscGPMemo *scGPMemo1;
	TscGPMemo *scGPMemo2;
	TscGPEdit *scGPEdit3;
	TscGPPageControlPage *scGPPageControlPage5;
	TscGPPanel *scGPPanel3;
	TscLabel *scLabel6;
	TscLabel *scLabel1;
	TscGPImage *scGPImage2;
	TscGPSwitch *scGPSwitch4;
	TscGPImage *scGPImage1;
	TscGPImage *scGPImage3;
	TscGPImage *scGPImage4;
	TscLabel *scLabel3;
	TscLabel *scLabel4;
	TscGPButton *scGPButton9;
	TscGPButton *scGPButton10;
	TscLabel *scLabel5;
	TscButton *scButton1;
	TscButton *scButton2;
	TscSwitch *scSwitch1;
	TscSwitch *scSwitch2;
	TscCheckBox *scCheckBox1;
	TscCheckBox *scCheckBox2;
	TscGPPageControlPage *scGPPageControlPage4;
	TscGPHVMeter *scGPHVMeter1;
	TscGPHVMeter *scGPHVMeter2;
	TscGPHVMeter *scGPHVMeter3;
	TscGPSlider *scGPSlider2;
	TscGPSlider *scGPSlider1;
	TscGPHVMeter *scGPHVMeter4;
	TscGPHVMeter *scGPHVMeter5;
	TscGPSlider *scGPSlider3;
	TscGPSlider *scGPSlider4;
	TscGPCheckBox *scGPCheckBox5;
	TscGPCheckBox *scGPCheckBox4;
	TscGPPageControlPage *scGPPageControlPage3;
	TscGPMeter *scGPMeter2;
	TscGPMeter120 *scGPMeter1201;
	TscGPMeter *scGPMeter3;
	TscGPMeter *scGPMeter1;
	TscLabel *scLabel10;
	TscGPComboBox *scGPComboBox6;
	TscGPCheckBox *scGPCheckBox6;
	TscGPCheckBox *scGPCheckBox7;
	TscGPClock *scGPClock1;
	TscGPGearDial *scGPGearDial1;
	TscGPDial *scGPDial1;
	TscGPCheckBox *scGPCheckBox8;
	TscGPDial *scGPDial2;
	TscGPCheckBox *scGPCheckBox9;
	TscGPCheckBox *scGPCheckBox10;
	TscGPPageControlPage *scGPPageControlPage1;
	TscGPSwitch *scGPSwitch2;
	TscGPSwitch *scGPSwitch1;
	TscGPSwitch *scGPSwitch3;
	TscGPTrackBar *scGPTrackBar2;
	TscGPProgressBar *scGPProgressBar2;
	TscGPCircledProgressBar *scGPCircledProgressBar1;
	TscGPCircledProgressBar *scGPCircledProgressBar2;
	TscGPGearActivityIndicator *scGPGearActivityIndicator1;
	TscGPPanel *scGPPanel1;
	TscGPPanel *scGPPanel2;
	TscGPCheckBox *scGPCheckBox1;
	TscGPCheckBox *scGPCheckBox2;
	TscGPCheckBox *scGPCheckBox3;
	TscGPRadioButton *scGPRadioButton1;
	TscGPRadioButton *scGPRadioButton2;
	TscGPRadioButton *scGPRadioButton3;
	TscGPTrackBar *scGPTrackBar1;
	TscGPProgressBar *scGPProgressBar1;
	TscGPLabel *scGPLabel1;
	TscGPLabel *scGPLabel2;
	TscLabel *scLabel2;
	TscGPButton *scGPButton2;
	TscGPButton *scGPButton3;
	TscGPButton *scGPButton4;
	TscGPButton *scGPButton6;
	TscGPButton *scGPButton5;
	TscGPButton *scGPButton1;
	TscGPGroupBox *scGPGroupBox1;
	TscGPGlyphButton *scGPGlyphButton1;
	TscLabel *scLabel7;
	TscGPComboBox *scGPComboBox5;
	TscLabel *scLabel8;
	TscLabel *scLabel9;
	TscGPActivityBar *scGPActivityBar1;
	TscStyledForm *scStyledForm1;
	TscStyleManager *scStyleManager1;
	TPopupMenu *PopupMenu1;
	TMenuItem *N11;
	TMenuItem *N21;
	TMenuItem *N31;
	TMenuItem *N41;
	TMenuItem *N51;
	TImageList *ImageList1;
	TscGPVirtualImageList *scGPVirtualImageList1;
	TscGPVirtualImageList *scGPVirtualImageList2;
	TscGPImageCollection *scGPImageCollection1;
	TscGPVirtualImageList *scGPVirtualImageList3;
	TPopupMenu *PopupMenu2;
	TMenuItem *Item11;
	TMenuItem *Item21;
	TMenuItem *Item31;
	TPopupMenu *PopupMenu3;
	TMenuItem *MenuItem1;
	TMenuItem *MenuItem2;
	TMenuItem *MenuItem3;
	TMenuItem *MenuItem4;
	TMenuItem *MenuItem5;
	void __fastcall scGPSwitch4ChangeState(TObject *Sender);
	void __fastcall scGPTrackBar2Change(TObject *Sender);
	void __fastcall scGPTrackBar1Change(TObject *Sender);
	void __fastcall scGPButton5Click(TObject *Sender);
	void __fastcall scGPComboBox5Change(TObject *Sender);
	void __fastcall scGPCheckBox1Click(TObject *Sender);
	void __fastcall scGPPageControl1ChangePage(TObject *Sender);
	void __fastcall scGPComboBox6Change(TObject *Sender);
	void __fastcall scGPCheckBox6Click(TObject *Sender);
	void __fastcall scGPCheckBox7Click(TObject *Sender);
	void __fastcall scGPCheckBox8Click(TObject *Sender);
	void __fastcall scGPCheckBox9Click(TObject *Sender);
	void __fastcall scGPCheckBox10Click(TObject *Sender);
	void __fastcall scGPDial1Change(TObject *Sender);
	void __fastcall scGPDial2Change(TObject *Sender);
	void __fastcall scGPGearDial1Change(TObject *Sender);
	void __fastcall scGPCheckBox5Click(TObject *Sender);
	void __fastcall scGPCheckBox4Click(TObject *Sender);
	void __fastcall scGPSlider2Change(TObject *Sender);
	void __fastcall scGPSlider1LastChange(TObject *Sender);
	void __fastcall scGPSlider3Change(TObject *Sender);
	void __fastcall scGPSlider4Change(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TForm2(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm2 *Form2;
//---------------------------------------------------------------------------
#endif
