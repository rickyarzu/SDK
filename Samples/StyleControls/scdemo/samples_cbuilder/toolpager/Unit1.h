//---------------------------------------------------------------------------

#ifndef Unit1H
#define Unit1H
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include "scControls.hpp"
#include "scExtControls.hpp"
#include "scImageCollection.hpp"
#include "scStyledForm.hpp"
#include "scStyleManager.hpp"
#include "scToolPager.hpp"
#include <System.ImageList.hpp>
#include <Vcl.ImgList.hpp>
#include <Vcl.Menus.hpp>
//---------------------------------------------------------------------------
class TForm1 : public TForm
{
__published:	// IDE-managed Components
	TscCheckBox *scCheckBox1;
	TscCheckBox *scCheckBox2;
	TscCheckBox *scCheckBox3;
	TscPanel *scPanel4;
	TscCheckBox *scCheckBox4;
	TscLabel *scLabel7;
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
	TImageList *ImageList1;
	TImageList *ImageList2;
	TscImageCollection *scImageCollection1;
	TscStyledForm *scStyledForm1;
	TscStyleManager *scStyleManager1;
	TscToolPager *scToolPager1;
	TscButton *scButton1;
	TscButton *scButton2;
	TscButton *scButton4;
	TscLabel *scLabel1;
	TscComboBox *scComboBox1;
	TscToolPagerPage *scToolPagerPage2;
	TscLabel *scLabel2;
	TscLabel *scLabel3;
	TscLabel *scLabel5;
	TscLabel *scLabel6;
	TscToolPagerPage *scToolPagerPage1;
	TscButton *scButton5;
	TscButton *scButton6;
	TscPanel *scPanel1;
	TscButton *scButton7;
	TscButton *scButton8;
	TscPanel *scPanel2;
	TscButton *scButton9;
	TscPanel *scPanel3;
	TscButton *scButton3;
	TscToolPagerPage *scToolPagerPage3;
	TscToolGroupPanel *scToolGroupPanel1;
	TscButton *scButton10;
	TscButton *scButton12;
	TscButton *scButton13;
	TscButton *scButton14;
	TscToolGroupPanel *scToolGroupPanel2;
	TscLabel *scLabel8;
	TscLabel *scLabel9;
	TscButton *scButton11;
	TscComboBox *scComboBox2;
	void __fastcall FormCreate(TObject *Sender);
	void __fastcall scComboBox1Click(TObject *Sender);
	void __fastcall scButton4Click(TObject *Sender);
	void __fastcall Exit1Click(TObject *Sender);
	void __fastcall scComboBox2Click(TObject *Sender);
	void __fastcall scCheckBox1Click(TObject *Sender);
	void __fastcall scCheckBox2Click(TObject *Sender);
	void __fastcall scCheckBox3Click(TObject *Sender);
	void __fastcall scCheckBox4Click(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TForm1(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm1 *Form1;
//---------------------------------------------------------------------------
#endif
