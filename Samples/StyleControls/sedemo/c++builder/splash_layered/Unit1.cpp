//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "se_ani"
#pragma link "se_effect"
#pragma link "se_form"
#pragma link "se_ani"
#pragma link "se_effect"
#pragma link "se_form"
#pragma link "se_image"
#pragma link "se_ani"
#pragma link "se_effect"
#pragma link "se_form"
#pragma link "se_image"
#pragma link "se_controls"
#pragma link "se_pngimagelist"
#pragma resource "*.dfm"
TForm1 *Form1;
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TForm1::FormKeyPress(TObject *Sender, char &Key)
{
  Close();
}
//---------------------------------------------------------------------------
void __fastcall TForm1::seImage1Click(TObject *Sender)
{
   Close();       
}
//---------------------------------------------------------------------------

