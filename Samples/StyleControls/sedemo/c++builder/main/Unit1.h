//---------------------------------------------------------------------------

#ifndef Unit1H
#define Unit1H
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <ComCtrls.hpp>
#include <ExtCtrls.hpp>
#include <Graphics.hpp>
#include <ImgList.hpp>
#include "se_ani.hpp"
#include "se_controls.hpp"
#include "se_effect.hpp"
#include "se_form.hpp"
#include "se_image.hpp"
#include "se_imagelist.hpp"
#include "se_pngimagelist.hpp"
//---------------------------------------------------------------------------
class TForm1 : public TForm
{
__published:	// IDE-managed Components
        TsePanel *sePanel1;
        TsePngXButton *sePngXButton1;
        TseToolBarEx *seToolBarEx1;
        TsePageViewer *sePageViewer1;
        TsePageViewerPage *sePageViewerPage5;
        TseXLabel *seXLabel5;
        TseReflectLabel *seReflectLabel1;
        TsePageViewerPage *sePageViewerPage2;
        TsePngXButton *sePngXButton4;
        TseButtonLabel *seButtonLabel3;
        TsePngImageView *sePngImageView1;
        TsePngXButton *sePngXButton6;
        TseButtonLabel *seButtonLabel4;
        TseXLabel *seXLabel8;
        TseXLabel *seXLabel2;
        TsePngXButton *sePngXButton5;
        TsePanel *sePanel2;
        TseXLabel *seXLabel7;
        TseButtonLabel *seButtonLabel5;
        TsePageViewerPage *sePageViewerPage3;
        TseXLabel *seXLabel3;
        TseXLabel *seXLabel9;
        TseXLabel *seXLabel10;
        TsePngXButton *sePngXButton7;
        TseReflectLabel *seReflectLabel2;
        TEdit *Edit1;
        TsePageViewerPage *sePageViewerPage4;
        TseXLabel *seXLabel4;
        TsePngXButton *sePngXButton8;
        TPanel *Panel1;
        TButton *Button4;
        TPageControl *PageControl1;
        TTabSheet *TabSheet1;
        TButton *Button1;
        TTabSheet *TabSheet2;
        TGroupBox *GroupBox1;
        TTabSheet *TabSheet3;
        TEdit *Edit2;
        TsePageViewerPage *sePageViewerPage1;
        TseXLabel *seXLabel1;
        TsePngXButton *sePngXButton3;
        TsePngXButton *sePngXButton2;
        TseImage *seImage1;
        TseAnimationList *seAnimationList1;
        TseAnimation *PageAnimation;
        TseAnimation *FormShowAnimation;
        TseAnimation *seAnimation1;
        TseAnimation *TestAnimation;
        TseAnimation *seAnimation2;
        TseAnimation *TestAnimation2;
        TseAnimation *seAnimation3;
        TseAnimation *seAnimation4;
        TseImageList *seImageList1;
        TseAnimationForm *seAnimationForm1;
        TsePngImageStorage *sePngImageStorage1;
        TsePngImageList *sePngImageList1;
        TseImageList *seImageList2;
        TsePngImageList *sePngImageList2;
        TseButtonLabel *seButtonLabel1;
        TseXLabel *seXLabel6;
        void __fastcall sePngXButton1Click(TObject *Sender);
        void __fastcall seToolBarEx1Change(TObject *Sender);
        void __fastcall sePngXButton3Click(TObject *Sender);
        void __fastcall sePngXButton2Click(TObject *Sender);
        void __fastcall sePngXButton5Click(TObject *Sender);
        void __fastcall sePngXButton6Click(TObject *Sender);
        void __fastcall seButtonLabel4CheckChanged(TObject *Sender);
        void __fastcall sePngXButton7Click(TObject *Sender);
        void __fastcall sePngXButton8Click(TObject *Sender);
        void __fastcall PageControl1Changing(TObject *Sender,
          bool &AllowChange);
        void __fastcall PageControl1Change(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall TForm1(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm1 *Form1;
//---------------------------------------------------------------------------
#endif
