//---------------------------------------------------------------------------

#ifndef Unit1H
#define Unit1H
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include "scStyledForm.hpp"
#include "scStyleManager.hpp"
#include "scAdvancedControls.hpp"
#include "scControls.hpp"
#include "scExtControls.hpp"
#include "scHint.hpp"
#include "scImageCollection.hpp"
#include "scModernControls.hpp"
#include <System.ImageList.hpp>
#include <Vcl.ImgList.hpp>
#include <Vcl.Mask.hpp>
//---------------------------------------------------------------------------
class TForm1 : public TForm
{
__published:	// IDE-managed Components
	TscModernSplitView *scModernSplitView1;
	TscButton *scButton2;
	TscButton *scButton3;
	TscButton *scButton4;
	TscButton *scButton6;
	TscButton *scButton7;
	TscButton *scButton1;
	TscPageViewer *scPageViewer2;
	TscPageViewerPage *scPageViewerPage4;
	TscPanel *scPanel1;
	TscPageViewer *scPageViewer1;
	TscPageViewerPage *scPageViewerPage2;
	TscLabel *scLabel2;
	TscMemo *scMemo1;
	TscPageViewerPage *scPageViewerPage3;
	TscLabel *scLabel3;
	TscSwitch *scSwitch1;
	TscLabel *scLabel7;
	TscSwitch *scSwitch2;
	TscSwitch *scSwitch3;
	TscActivityIndicator *scActivityIndicator1;
	TscPageViewerPage *scPageViewerPage1;
	TscLabel *scLabel1;
	TscEdit *scEdit1;
	TscAdvancedListBox *scAdvancedListBox1;
	TscSplitView *scSplitView2;
	TscLabel *scLabel4;
	TscLabel *scLabel28;
	TscLabel *scLabel5;
	TscButton *scButton10;
	TscLabel *scLabel6;
	TscSplitView *scSplitView1;
	TscButton *scButton5;
	TscButton *scButton9;
	TscButton *scButton8;
	TscButton *scButton11;
	TscStyleManager *scStyleManager1;
	TscStyledForm *scStyledForm1;
	TImageList *ImageList1;
	TscImageCollection *scImageCollection1;
	TscGalleryMenu *scGalleryMenu1;
	TImageList *ImageList2;
	TscHint *scHint1;
	void __fastcall scSplitView1Click(TObject *Sender);
	void __fastcall scButton1Click(TObject *Sender);
	void __fastcall scButton6Click(TObject *Sender);
	void __fastcall scButton7Click(TObject *Sender);
	void __fastcall scButton2Click(TObject *Sender);
	void __fastcall scButton3Click(TObject *Sender);
	void __fastcall scButton4Click(TObject *Sender);
	void __fastcall scEdit1Change(TObject *Sender);
	void __fastcall scModernSplitView1HideBackButton(TObject *Sender);
	void __fastcall scModernSplitView1ShowBackButton(TObject *Sender);
	void __fastcall scStyledForm1Buttons0Click(TObject *Sender);
	void __fastcall scSwitch1ChangeState(TObject *Sender);
	void __fastcall scSwitch2ChangeState(TObject *Sender);
	void __fastcall scPageViewer1ChangePage(TObject *Sender);
	void __fastcall scSwitch3ChangeState(TObject *Sender);
	void __fastcall scButton5Click(TObject *Sender);
	void __fastcall scModernSplitView1HidePageViewer(TObject *Sender);
	void __fastcall scModernSplitView1ShowPageViewer(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TForm1(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm1 *Form1;
//---------------------------------------------------------------------------
#endif
