//---------------------------------------------------------------------------

#ifndef Unit1H
#define Unit1H
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include "scAppPager.hpp"
#include "scControls.hpp"
#include "scExtControls.hpp"
#include "scImageCollection.hpp"
#include "scStyledForm.hpp"
#include "scStyleManager.hpp"
#include <System.ImageList.hpp>
#include <Vcl.ImgList.hpp>
//---------------------------------------------------------------------------
class TForm1 : public TForm
{
__published:	// IDE-managed Components
	TscAppPager *scAppPager1;
	TscAppPagerPage *scAppPagerPage3;
	TscLabel *scLabel3;
	TscAppPagerPage *scAppPagerPage4;
	TscLabel *scLabel4;
	TscLabel *scLabel6;
	TscAppPagerPage *scAppPagerPage2;
	TscLabel *scLabel2;
	TscButton *scButton1;
	TscAppPagerPage *scAppPagerPage1;
	TscCheckBox *scCheckBox1;
	TscCheckBox *scCheckBox2;
	TscCheckBox *scCheckBox3;
	TscLabel *scLabel1;
	TscCheckBox *scCheckBox4;
	TscCheckBox *scCheckBox5;
	TscLabel *scLabel5;
	TscComboBox *scComboBox2;
	TscCheckBox *scCheckBox6;
	TscImageCollection *scImageCollection1;
	TImageList *ImageList1;
	TImageList *ImageList2;
	TscStyledForm *scStyledForm1;
	TscStyleManager *scStyleManager1;
	TscComboBox *scComboBox1;
	void __fastcall scCheckBox1Click(TObject *Sender);
	void __fastcall scCheckBox2Click(TObject *Sender);
	void __fastcall scCheckBox6Click(TObject *Sender);
	void __fastcall scCheckBox3Click(TObject *Sender);
	void __fastcall scComboBox1Click(TObject *Sender);
	void __fastcall scCheckBox4Click(TObject *Sender);
	void __fastcall scCheckBox5Click(TObject *Sender);
	void __fastcall FormCreate(TObject *Sender);
	void __fastcall scComboBox2Click(TObject *Sender);
	void __fastcall scAppPager1Items7Click(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TForm1(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm1 *Form1;
//---------------------------------------------------------------------------
#endif
