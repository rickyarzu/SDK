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
#include "scModernControls.hpp"
#include "scStyledForm.hpp"
#include "scStyleManager.hpp"
#include <System.ImageList.hpp>
#include <Vcl.ImgList.hpp>
//---------------------------------------------------------------------------
class TForm2 : public TForm
{
__published:	// IDE-managed Components
	TscPageViewer *scPageViewer1;
	TscPageViewerPage *scPageViewerPage2;
	TscLabel *scLabel2;
	TscPageViewerPage *scPageViewerPage1;
	TscLabel *scLabel1;
	TscSplitView *scSplitView2;
	TscLabel *scLabel4;
	TscLabel *scLabel28;
	TscLabel *scLabel5;
	TscButton *scButton10;
	TscLabel *scLabel6;
	TscSplitView *scSplitView1;
	TscButton *scButton6;
	TscButton *scButton2;
	TscButton *scButton3;
	TscButton *scButton1;
	TscButton *scButton4;
	TscSwitch *scSwitch1;
	TscLabel *scLabel3;
	TscStyleManager *scStyleManager1;
	TscStyledForm *scStyledForm1;
	TImageList *ImageList1;
	void __fastcall scButton6Click(TObject *Sender);
	void __fastcall scButton2Click(TObject *Sender);
	void __fastcall scButton3Click(TObject *Sender);
	void __fastcall scButton4Click(TObject *Sender);
	void __fastcall scButton1Click(TObject *Sender);
	void __fastcall scSwitch1ChangeState(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TForm2(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm2 *Form2;
//---------------------------------------------------------------------------
#endif
