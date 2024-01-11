//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "scAdvancedPager"
#pragma link "scControls"
#pragma link "scExtControls"
#pragma link "scStyledForm"
#pragma link "scStyleManager"
#pragma resource "*.dfm"
TForm1 *Form1;
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
	: TForm(Owner)
{
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
void __fastcall TForm1::Exit1Click(TObject *Sender)
{
 Close();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::scComboBox2Click(TObject *Sender)
{
 scAdvancedPager1->BorderStyle = TscAdvancedPagerBorderStyle(scComboBox2->ItemIndex);
}
//---------------------------------------------------------------------------
void __fastcall TForm1::scCheckBox3Click(TObject *Sender)
{
  scAdvancedPager1->ShowInActiveTab = scCheckBox3->Checked;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::scCheckBox4Click(TObject *Sender)
{
  scAdvancedPager1->ShowCloseButtons = scCheckBox4->Checked;
}
//---------------------------------------------------------------------------
void __fastcall TForm1::scCheckBox2Click(TObject *Sender)
{
  scAdvancedPager1->TabGlowEffect->Enabled = scCheckBox2->Checked;
}
//---------------------------------------------------------------------------
void __fastcall TForm1::scCheckBox1Click(TObject *Sender)
{
 scAdvancedPager1->ShowFocusRect = scCheckBox1->Checked;
}
//---------------------------------------------------------------------------
void __fastcall TForm1::scCheckBox5Click(TObject *Sender)
{
  scAdvancedPager1->MouseWheelSupport = scCheckBox5->Checked;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::scComboBox3Click(TObject *Sender)
{
 scAdvancedPagerPage1->BackgroundStyle = TscsbBackgroundStyle(scComboBox3->ItemIndex);
}
//---------------------------------------------------------------------------

