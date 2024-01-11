//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "scAppPager"
#pragma link "scControls"
#pragma link "scExtControls"
#pragma link "scImageCollection"
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
void __fastcall TForm1::scCheckBox1Click(TObject *Sender)
{
  scAppPager1->ShowCaption = scCheckBox1->Checked;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::scCheckBox2Click(TObject *Sender)
{
  if (scCheckBox2->Checked)
   { scAppPager1->WallpaperIndex = 0; }
  else
   { scAppPager1->WallpaperIndex = -1; }
}
//---------------------------------------------------------------------------
void __fastcall TForm1::scCheckBox6Click(TObject *Sender)
{
  if (scCheckBox6->Checked)
   { scAppPager1->CustomBackgroundImageIndex = 7; }
  else
   { scAppPager1->CustomBackgroundImageIndex = -1; }
}
//---------------------------------------------------------------------------
void __fastcall TForm1::scCheckBox3Click(TObject *Sender)
{
  if (scCheckBox3->Checked)
   { scAppPager1->CustomOverContentImageIndex = 1; }
  else
   { scAppPager1->CustomOverContentImageIndex = -1; }
}
//---------------------------------------------------------------------------
void __fastcall TForm1::scComboBox1Click(TObject *Sender)
{
  scAppPager1->SelectionStyle = TscAppPagerSelectionStyle(scComboBox1->ItemIndex);
  if (scAppPager1->SelectionStyle == scapsCustomImageOverColor)
  {
	scAppPager1->ItemHotImageIndex = 5;
	scAppPager1->ItemSelectedImageIndex = 5;
	scAppPager1->ItemSelectedFocusedImageIndex = 6;
  }
  if (scAppPager1->SelectionStyle == scapsCustomImage)
  {
	scAppPager1->ItemFontHotColor = clWindowText;
	scAppPager1->ItemFontSelectedColor = clWindowText;
	scAppPager1->ItemFontSelectedFocusedColor = clWindowText;
	scAppPager1->ItemHotImageIndex = 3;
	scAppPager1->ItemSelectedImageIndex = 3;
	scAppPager1->ItemSelectedFocusedImageIndex = 4;
  }
  else
  {
	scAppPager1->ItemFontHotColor = clBtnText;
	scAppPager1->ItemFontSelectedColor = clHighlightText;
	scAppPager1->ItemFontSelectedFocusedColor = clHighlightText;
  };
}
//---------------------------------------------------------------------------
void __fastcall TForm1::scCheckBox4Click(TObject *Sender)
{
  scAppPager1->ItemGlowEffect->Enabled = scCheckBox4->Checked;
}
//---------------------------------------------------------------------------
void __fastcall TForm1::scCheckBox5Click(TObject *Sender)
{
 scAppPager1->CaptionGlowEffect->Enabled = scCheckBox5->Checked;
}
//---------------------------------------------------------------------------
void __fastcall TForm1::FormCreate(TObject *Sender)
{
 scComboBox2->Items->Clear();
 scComboBox2->Items->AddStrings(TStyleManager::StyleNames);
 scComboBox2->ItemIndex = scComboBox2->Items->IndexOf(TStyleManager::ActiveStyle->Name);
}
//---------------------------------------------------------------------------
void __fastcall TForm1::scComboBox2Click(TObject *Sender)
{
TStyleManager::SetStyle(scComboBox2->Items->Strings[scComboBox2->ItemIndex]);
}
//---------------------------------------------------------------------------
void __fastcall TForm1::scAppPager1Items7Click(TObject *Sender)
{
  Close();
}
//---------------------------------------------------------------------------
