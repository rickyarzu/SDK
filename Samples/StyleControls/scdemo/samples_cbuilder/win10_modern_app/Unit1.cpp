//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "scStyledForm"
#pragma link "scStyleManager"
#pragma link "scAdvancedControls"
#pragma link "scControls"
#pragma link "scExtControls"
#pragma link "scHint"
#pragma link "scImageCollection"
#pragma link "scModernControls"
#pragma resource "*.dfm"
TForm1 *Form1;
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TForm1::scSplitView1Click(TObject *Sender)
{
 scSplitView1->Opened = !scSplitView1->Opened;
}
//---------------------------------------------------------------------------
void __fastcall TForm1::scButton1Click(TObject *Sender)
{
  scSplitView1->Opened = false;
  scSplitView2->Opened = !scSplitView2->Opened;
}
//---------------------------------------------------------------------------
void __fastcall TForm1::scButton6Click(TObject *Sender)
{
  scModernSplitView1->Opened = !scModernSplitView1->Opened;
}
//---------------------------------------------------------------------------
void __fastcall TForm1::scButton7Click(TObject *Sender)
{
  scModernSplitView1->CloseAll();
  scSplitView2->Opened = false;
}
//---------------------------------------------------------------------------
void __fastcall TForm1::scButton2Click(TObject *Sender)
{
 scModernSplitView1->OpenPage(0, scButton2);
}
//---------------------------------------------------------------------------
void __fastcall TForm1::scButton3Click(TObject *Sender)
{
 scModernSplitView1->OpenPage(1, scButton3);
}
//---------------------------------------------------------------------------

void __fastcall TForm1::scButton4Click(TObject *Sender)
{
 scModernSplitView1->OpenPage(2, scButton4);
}
//---------------------------------------------------------------------------

void __fastcall TForm1::scEdit1Change(TObject *Sender)
{
  scAdvancedListBox1->Filter = scEdit1->Text;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::scModernSplitView1HideBackButton(TObject *Sender)
{
 if (scStyledForm1->Buttons->Items[0]->Visible)
	scStyledForm1->Buttons->Items[0]->Visible = false;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::scModernSplitView1ShowBackButton(TObject *Sender)
{
 if (!scStyledForm1->Buttons->Items[0]->Visible)
	scStyledForm1->Buttons->Items[0]->Visible = true;
}
//---------------------------------------------------------------------------


void __fastcall TForm1::scStyledForm1Buttons0Click(TObject *Sender)
{
 scModernSplitView1->Back();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::scSwitch1ChangeState(TObject *Sender)
{
  scActivityIndicator1->IndicatorColor = scSwitch1->FrameOnColor;
  scActivityIndicator1->Active = scSwitch1->IsOn();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::scSwitch2ChangeState(TObject *Sender)
{
  scActivityIndicator1->IndicatorColor = scSwitch2->FrameOnColor;
  scActivityIndicator1->Active = scSwitch2->IsOn();
}
//---------------------------------------------------------------------------


void __fastcall TForm1::scPageViewer1ChangePage(TObject *Sender)
{
  if ((scActivityIndicator1->Active) && (scPageViewer1->PageIndex != 2))
	{scActivityIndicator1->Active = false;}
  else
  {
  if (scPageViewer1->PageIndex == 2)
	scActivityIndicator1->Active = scSwitch1->IsOn() || scSwitch2->IsOn() ||
	scSwitch3->IsOn();}
}
//---------------------------------------------------------------------------


void __fastcall TForm1::scSwitch3ChangeState(TObject *Sender)
{
 scActivityIndicator1->IndicatorColor = scSwitch3->FrameOnColor;
 scActivityIndicator1->Active = scSwitch3->IsOn();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::scButton5Click(TObject *Sender)
{
  Close();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::scModernSplitView1HidePageViewer(TObject *Sender)
{
  if (scActivityIndicator1->Active)
	 scActivityIndicator1->Active = false;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::scModernSplitView1ShowPageViewer(TObject *Sender)
{
  if (scPageViewer1->PageIndex == 2)
   scActivityIndicator1->Active = (scSwitch1->IsOn() || scSwitch2->IsOn()
   || scSwitch3->IsOn());
}
//---------------------------------------------------------------------------

