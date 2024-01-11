//---------------------------------------------------------------------------

#ifndef Unit1H
#define Unit1H
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include "scAdvancedPager.hpp"
#include "scControls.hpp"
#include "scExtControls.hpp"
#include "scStyledForm.hpp"
#include "scStyleManager.hpp"
#include <System.ImageList.hpp>
#include <Vcl.ImgList.hpp>
#include <Vcl.Menus.hpp>
//---------------------------------------------------------------------------
class TForm1 : public TForm
{
__published:	// IDE-managed Components
	TscAdvancedPager *scAdvancedPager1;
	TscButton *scButton1;
	TscComboBox *scComboBox1;
	TscAdvancedPagerPage *scAdvancedPagerPage2;
	TscLabel *scLabel2;
	TscLabel *scLabel5;
	TscLabel *scLabel3;
	TscAdvancedPagerPage *scAdvancedPagerPage3;
	TscLabel *scLabel28;
	TscLabel *scLabel4;
	TscButton *scButton10;
	TscAdvancedPagerPage *scAdvancedPagerPage1;
	TscCheckBox *scCheckBox1;
	TscCheckBox *scCheckBox2;
	TscLabel *scLabel7;
	TscCheckBox *scCheckBox3;
	TscCheckBox *scCheckBox4;
	TscLabel *scLabel1;
	TscComboBox *scComboBox3;
	TscCheckBox *scCheckBox5;
	TImageList *ImageList1;
	TscStyleManager *scStyleManager1;
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
	TscComboBox *scComboBox2;
	void __fastcall FormCreate(TObject *Sender);
	void __fastcall scComboBox1Click(TObject *Sender);
	void __fastcall Exit1Click(TObject *Sender);
	void __fastcall scComboBox2Click(TObject *Sender);
	void __fastcall scCheckBox3Click(TObject *Sender);
	void __fastcall scCheckBox4Click(TObject *Sender);
	void __fastcall scCheckBox2Click(TObject *Sender);
	void __fastcall scCheckBox1Click(TObject *Sender);
	void __fastcall scCheckBox5Click(TObject *Sender);
	void __fastcall scComboBox3Click(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TForm1(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm1 *Form1;
//---------------------------------------------------------------------------
#endif
