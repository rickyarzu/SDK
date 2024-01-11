//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "scControls"
#pragma link "scExtControls"
#pragma link "scModernControls"
#pragma link "scStyledForm"
#pragma link "scStyleManager"
#pragma resource "*.dfm"
TForm2 *Form2;
//---------------------------------------------------------------------------
__fastcall TForm2::TForm2(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TForm2::scButton6Click(TObject *Sender)
{
 scSplitView1->Opened = !scSplitView1->Opened;
}
//---------------------------------------------------------------------------
void __fastcall TForm2::scButton2Click(TObject *Sender)
{
  scPageViewer1->PageIndex = 0;
}
//---------------------------------------------------------------------------
void __fastcall TForm2::scButton3Click(TObject *Sender)
{
 scPageViewer1->PageIndex = 1;
}
//---------------------------------------------------------------------------
void __fastcall TForm2::scButton4Click(TObject *Sender)
{
 scSplitView2->Opened = !scSplitView2->Opened;
}
//---------------------------------------------------------------------------

void __fastcall TForm2::scButton1Click(TObject *Sender)
{
  Close();
}
//---------------------------------------------------------------------------

void __fastcall TForm2::scSwitch1ChangeState(TObject *Sender)
{
  if (scSplitView1->DisplayMode == scsvmDocked)
  {
   scSplitView1->DisplayMode = scsvmOverlay;
  }
  else
  {
   scSplitView1->DisplayMode = scsvmDocked;
  }
}
//---------------------------------------------------------------------------
