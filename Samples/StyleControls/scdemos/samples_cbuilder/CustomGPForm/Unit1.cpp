//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "scAdvancedControls"
#pragma link "scControls"
#pragma link "scDrawUtils"
#pragma link "scExtControls"
#pragma link "scGPControls"
#pragma link "scGPImages"
#pragma link "scModernControls"
#pragma link "scStyledForm"
#pragma link "scStyleManager"
#pragma resource "*.dfm"
TForm1 *Form1;
bool FMaximized;
TRect FOldBoundsRect;
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TForm1::CloseButtonClick(TObject *Sender)
{
  Close();
}
//---------------------------------------------------------------------------
void __fastcall TForm1::MinButtonClick(TObject *Sender)
{
  Application->Minimize();
}
//---------------------------------------------------------------------------
void __fastcall TForm1::scGPGlyphButton1Click(TObject *Sender)
{
  scSplitView1->Opened = !scSplitView1->Opened;
}
//---------------------------------------------------------------------------
void __fastcall TForm1::scGPButton1Click(TObject *Sender)
{
  scPageViewer1->PageIndex = 0;
}
//---------------------------------------------------------------------------
void __fastcall TForm1::scGPButton2Click(TObject *Sender)
{
  scPageViewer1->PageIndex = 1;
}
//---------------------------------------------------------------------------
void __fastcall TForm1::scGPButton3Click(TObject *Sender)
{
 scPageViewer1->PageIndex = 2;
}
//---------------------------------------------------------------------------
void __fastcall TForm1::scCheckBox2Click(TObject *Sender)
{
   scGPSizeBox1->Visible = scCheckBox2->Checked;
}
//---------------------------------------------------------------------------
void __fastcall TForm1::scCheckBox1Click(TObject *Sender)
{
  MaxButton->Left = CloseButton->Left;
  MaxButton->Visible = scCheckBox1->Checked;
}
//---------------------------------------------------------------------------
void __fastcall TForm1::MaxButtonClick(TObject *Sender)
{
  if (FMaximized) {
	 BoundsRect =  FOldBoundsRect;
	 FMaximized = false;
	 scLabel1->DragForm = true;
	 MaxButton->GlyphOptions->Kind = scgpbgkMaximize;
	 scGPSizeBox1->Visible = scCheckBox2->Checked;
  }
  else
  {
	FOldBoundsRect = BoundsRect;
	BoundsRect = scStyledForm1->GetMaximizeBounds();
	FMaximized = true;
	scLabel1->DragForm = false;
	MaxButton->GlyphOptions->Kind = scgpbgkRestore;
	scGPSizeBox1->Visible = False;
  }

}
//---------------------------------------------------------------------------
void __fastcall TForm1::scLabel1DblClick(TObject *Sender)
{
  if (!scCheckBox1->Checked) { exit;}
  Form1->MaxButtonClick(Form1);
}
//---------------------------------------------------------------------------
void __fastcall TForm1::scRadioGroup1ButtonClick(TObject *Sender)
{
switch(scRadioGroup1->ItemIndex)
{
  case 0:
   {
	 PopupMenuButton->DropDownMenu = PopupMenu1;
	 PopupMenuButton->CustomDropDown = false;
	 PopupMenuButton->Left = 0;
	 PopupMenuButton->Visible = true;
	 DetailsButton->Left = 0;
	 DetailsButton->Visible = false;
	 scSplitView2->Opened = false;
   }
  case 1:
   {
	PopupMenuButton->Left = 0;
	PopupMenuButton->Visible = false;
	DetailsButton->Left = 0;
	DetailsButton->Visible = true;
   }
  case 2:
   {

   }
}
}
//---------------------------------------------------------------------------
void __fastcall TForm1::DetailsButtonClick(TObject *Sender)
{
  scSplitView2->Opened = !scSplitView2->Opened;
}
//---------------------------------------------------------------------------
void __fastcall TForm1::scGPSwitch4ChangeState(TObject *Sender)
{
 if (scSplitView2->DisplayMode == scsvmDocked) {
   scSplitView2->DisplayMode = scsvmOverlay;
 }
  else
  {
	scSplitView2->DisplayMode = scsvmDocked;
  }
}
//---------------------------------------------------------------------------
void __fastcall TForm1::scGPSwitch5ChangeState(TObject *Sender)
{
   scSplitView2->Animation = scGPSwitch5->IsOn();
}
//---------------------------------------------------------------------------
void __fastcall TForm1::FormCreate(TObject *Sender)
{
  scComboBox1->Items->Clear();
  scComboBox1->Items->AddStrings(TStyleManager::StyleNames);
  scComboBox1->ItemIndex = scComboBox1->Items->IndexOf(TStyleManager::ActiveStyle->Name);
}
//---------------------------------------------------------------------------
void __fastcall TForm1::scComboBox1Click(TObject *Sender)
{
  TStyleManager::SetStyle(scComboBox1->Items->Strings[scComboBox1->ItemIndex]);
}
//---------------------------------------------------------------------------
void __fastcall TForm1::scButton1Click(TObject *Sender)
{
  Close();
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Exit1Click(TObject *Sender)
{
  Close();
}
//---------------------------------------------------------------------------
