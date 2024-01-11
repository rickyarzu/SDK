//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "scAdvancedControls"
#pragma link "scControls"
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
void __fastcall TForm1::scButton2Click(TObject *Sender)
{
  if (TStyleManager::ActiveStyle->Name == "Windows")
   { TStyleManager::SetStyle("Glossy");  }
  else
   { TStyleManager::SetStyle("Windows"); }
}
//---------------------------------------------------------------------------
void __fastcall TForm1::scButton1Click(TObject *Sender)
{
  if (scPanel1->WallpaperIndex == 0)
  {
	scPanel1->WallpaperIndex = 1;
	scLabel2->Caption = "scImageCollection1.Images[Index].DrawStyle = idsTile";
  }
  else
  if (scPanel1->WallpaperIndex == 1)
  {
	scPanel1->WallpaperIndex = 2;
	scLabel2->Caption = "scImageCollection1.Images[Index].DrawStyle = idsTopRight";
  }
  else
  {
	scPanel1->WallpaperIndex = 0;
	scLabel2->Caption = "scImageCollection1.Images[Index].DrawStyle = idsCenter";
  };
}
//---------------------------------------------------------------------------
void __fastcall TForm1::scCheckBox1Click(TObject *Sender)
{
  if (scCheckBox1->Checked)
	{ scPanel1->CustomImageIndex = 3; }
  else
	{ scPanel1->CustomImageIndex = -1; }
}
//---------------------------------------------------------------------------
void __fastcall TForm1::scCheckBox2Click(TObject *Sender)
{
  if (scCheckBox2->Checked)
	{ scAdvancedListBox1->CustomOverContentImageIndex = 8; }
  else
	{ scAdvancedListBox1->CustomOverContentImageIndex = -1; }
}
//---------------------------------------------------------------------------
