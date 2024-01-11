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
#include "scStyledForm.hpp"
#include "scStyleManager.hpp"
#include <System.ImageList.hpp>
#include <Vcl.ImgList.hpp>
#include <Vcl.Menus.hpp>
//---------------------------------------------------------------------------
class TForm1 : public TForm
{
__published:	// IDE-managed Components
	TscAppPager *scAppPager1;
	TscAppPagerPage *scAppPagerPage2;
	TscLabel *scLabel2;
	TscAppPagerPage *scAppPagerPage3;
	TscLabel *scLabel28;
	TscLabel *scLabel30;
	TscButton *scButton6;
	TscLabel *scLabel1;
	TscAppPagerPage *scAppPagerPage1;
	TscCheckBox *scCheckBox1;
	TscLabel *scLabel5;
	TscComboBox *scComboBox2;
	TscCheckBox *scCheckBox2;
	TscCheckBox *scCheckBox3;
	TscPanel *scPanel1;
	TscButton *scButton2;
	TscButton *scButton3;
	TscButton *scButton4;
	TscButton *scButton1;
	TscButton *scButton5;
	TscButton *scButton7;
	TscButton *scButton8;
	TscButton *scButton9;
	TImageList *ImageList1;
	TImageList *ImageList2;
	TscStyledForm *scStyledForm1;
	TPopupMenu *PopupMenu1;
	TMenuItem *New1;
	TMenuItem *Open1;
	TMenuItem *Close1;
	TMenuItem *N3;
	TMenuItem *Print1;
	TMenuItem *PrintSetup1;
	TMenuItem *N2;
	TMenuItem *Save1;
	TMenuItem *SaveAs1;
	TMenuItem *N1;
	TMenuItem *Exit1;
	TPopupMenu *PopupMenu2;
	TMenuItem *Item11;
	TMenuItem *itewm21;
	TMenuItem *Item31;
	TscStyleManager *scStyleManager1;
	void __fastcall FormCreate(TObject *Sender);
	void __fastcall scComboBox2Click(TObject *Sender);
	void __fastcall scStyledForm1StyleChanged(TObject *Sender);
	void __fastcall scCheckBox1Click(TObject *Sender);
	void __fastcall scCheckBox2Click(TObject *Sender);
	void __fastcall scCheckBox3Click(TObject *Sender);
	void __fastcall scButton2Click(TObject *Sender);
	void __fastcall scButton3Click(TObject *Sender);
	void __fastcall scButton4Click(TObject *Sender);
	void __fastcall scStyledForm1TabChanged(TObject *Sender);
	void __fastcall Exit1Click(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TForm1(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm1 *Form1;
//---------------------------------------------------------------------------
#endif
