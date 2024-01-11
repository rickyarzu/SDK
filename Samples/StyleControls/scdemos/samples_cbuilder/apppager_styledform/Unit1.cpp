//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "scAppPager"
#pragma link "scControls"
#pragma link "scExtControls"
#pragma link "scStyledForm"
#pragma link "scStyleManager"
#pragma resource "*.dfm"
TForm1 *Form1;
bool StyleChanging;
bool PageChanging;
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
	: TForm(Owner)
{
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
  if (!StyleChanging)
	TStyleManager::SetStyle(scComboBox2->Items->Strings[scComboBox2->ItemIndex]);
}
//---------------------------------------------------------------------------
void __fastcall TForm1::scStyledForm1StyleChanged(TObject *Sender)
{
  StyleChanging = true;
  scPanel1->Visible = !TStyleManager::IsCustomStyleActive ||
	!scStyledForm1->ShowButtons;
  if (scPanel1->Visible)
  {
	PageChanging = True;
	if (scAppPager1->ActivePage == scAppPagerPage1)
	 { scButton2->Down = true; }
	else
	if (scAppPager1->ActivePage == scAppPagerPage2)
	 { scButton3->Down = true; }
	else
	if (scAppPager1->ActivePage == scAppPagerPage3)
	 { scButton4->Down = true; }
	PageChanging = false;
  }
  else
  {
	PageChanging = true;
	if (scAppPager1->ActivePage == scAppPagerPage1)
	  { scStyledForm1->TabIndex = 0; }
	else
	if (scAppPager1->ActivePage == scAppPagerPage2)
	  { scStyledForm1->TabIndex = 1; }
	else
   if (scAppPager1->ActivePage == scAppPagerPage3)
	 { scStyledForm1->TabIndex = 2; }
	PageChanging = false;
  }
  scComboBox2->ItemIndex
  = scComboBox2->Items->IndexOf(TStyleManager::ActiveStyle->Name);
  StyleChanging = false;
}
//---------------------------------------------------------------------------
void __fastcall TForm1::scCheckBox1Click(TObject *Sender)
{
 scStyledForm1->ShowIcon = scCheckBox1->Checked;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::scCheckBox2Click(TObject *Sender)
{
  scStyledForm1->ShowInactiveTab = scCheckBox2->Checked;
  if (scStyledForm1->ShowInactiveTab)
  {
	scButton2->StyleKind = scbsTab;
	scButton3->StyleKind = scbsTab;
	scButton4->StyleKind = scbsTab;
  }
  else
  {
	scButton2->StyleKind = scbsTabTransparent;
	scButton3->StyleKind = scbsTabTransparent;
	scButton4->StyleKind = scbsTabTransparent;
  };
}
//---------------------------------------------------------------------------
void __fastcall TForm1::scCheckBox3Click(TObject *Sender)
{
  scStyledForm1->ShowTabs = scCheckBox3->Checked;
  scStyledForm1->ShowButtons = scCheckBox3->Checked;
  scPanel1->Visible = !scStyledForm1->ShowButtons ||
	!TStyleManager::IsCustomStyleActive;
}
//---------------------------------------------------------------------------
void __fastcall TForm1::scButton2Click(TObject *Sender)
{
  if (!PageChanging)
	scAppPager1->ActivePage = scAppPagerPage1;
}
//---------------------------------------------------------------------------
void __fastcall TForm1::scButton3Click(TObject *Sender)
{
 if (!PageChanging)
	scAppPager1->ActivePage = scAppPagerPage2;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::scButton4Click(TObject *Sender)
{
 if (!PageChanging)
	scAppPager1->ActivePage = scAppPagerPage3;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::scStyledForm1TabChanged(TObject *Sender)
{
  if (!PageChanging)
  {
   switch(scStyledForm1->TabIndex)
   {
	 case 0 : scAppPager1->ActivePage = scAppPagerPage1; break;
	 case 1 : scAppPager1->ActivePage = scAppPagerPage2; break;
	 case 2 : scAppPager1->ActivePage = scAppPagerPage3; break;
	}
  }
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Exit1Click(TObject *Sender)
{
 Close();
}
//---------------------------------------------------------------------------
