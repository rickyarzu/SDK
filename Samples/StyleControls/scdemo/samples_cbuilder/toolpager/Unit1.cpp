//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "scControls"
#pragma link "scExtControls"
#pragma link "scImageCollection"
#pragma link "scStyledForm"
#pragma link "scStyleManager"
#pragma link "scToolPager"
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

void __fastcall TForm1::scButton4Click(TObject *Sender)
{
 Close();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Exit1Click(TObject *Sender)
{
  Close();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::scComboBox2Click(TObject *Sender)
{
 scToolPager1->BorderStyle = TscToolPagerBorderStyle(scComboBox2->ItemIndex);
}
//---------------------------------------------------------------------------

void __fastcall TForm1::scCheckBox1Click(TObject *Sender)
{
  scToolPager1->ShowFocusRect = scCheckBox1->Checked;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::scCheckBox2Click(TObject *Sender)
{
 scToolPager1->TabGlowEffect->Enabled = scCheckBox2->Checked;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::scCheckBox3Click(TObject *Sender)
{
  if (scCheckBox3->Checked)
  {
	scToolPager1->WallpaperIndex = 0;
	scToolPagerPage1->WallpaperIndex = 3;
	scStyleManager1->MenuWallpaperIndex = 0;
  }
  else
  {
	scToolPager1->WallpaperIndex = -1;
	scToolPagerPage1->WallpaperIndex = -1;
	scStyleManager1->MenuWallpaperIndex = -1;
  };
}
//---------------------------------------------------------------------------

void __fastcall TForm1::scCheckBox4Click(TObject *Sender)
{
 scPanel4->Visible = scCheckBox4->Checked;
}
//---------------------------------------------------------------------------


