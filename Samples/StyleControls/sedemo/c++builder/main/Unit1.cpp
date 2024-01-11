//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "se_ani"
#pragma link "se_controls"
#pragma link "se_effect"
#pragma link "se_form"
#pragma link "se_image"
#pragma link "se_imagelist"
#pragma link "se_pngimagelist"
#pragma link "se_ani"
#pragma link "se_controls"
#pragma link "se_effect"
#pragma link "se_form"
#pragma link "se_image"
#pragma link "se_imagelist"
#pragma link "se_pngimagelist"
#pragma link "se_ani"
#pragma link "se_controls"
#pragma link "se_effect"
#pragma link "se_form"
#pragma link "se_image"
#pragma link "se_imagelist"
#pragma link "se_pngimagelist"
#pragma link "se_ani"
#pragma link "se_controls"
#pragma link "se_effect"
#pragma link "se_form"
#pragma link "se_image"
#pragma link "se_imagelist"
#pragma link "se_pngimagelist"
#pragma resource "*.dfm"
TForm1 *Form1;
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TForm1::sePngXButton1Click(TObject *Sender)
{
  Close();        
}
//---------------------------------------------------------------------------
void __fastcall TForm1::seToolBarEx1Change(TObject *Sender)
{
 sePageViewer1->PageIndex = seToolBarEx1->ItemIndex;
}
//---------------------------------------------------------------------------
void __fastcall TForm1::sePngXButton3Click(TObject *Sender)
{
 TestAnimation->ShowDesigner();        
}
//---------------------------------------------------------------------------
void __fastcall TForm1::sePngXButton2Click(TObject *Sender)
{
  if (seImage1->ImageIndex == 0)
    {seImage1->ImageIndex = 1;}
  else
  if (seImage1->ImageIndex == 1)
   { seImage1->ImageIndex = 2; }
  else
    seImage1->ImageIndex = 0;
}
//---------------------------------------------------------------------------
void __fastcall TForm1::sePngXButton5Click(TObject *Sender)
{
  if (sePanel2->BGImageIndex == 0)
    {sePanel2->BGImageIndex = 1;}
  else
    { sePanel2->BGImageIndex = 0; }
}
//---------------------------------------------------------------------------
void __fastcall TForm1::sePngXButton6Click(TObject *Sender)
{
 if (sePngImageView1->ImageIndex == 9)
  {  sePngImageView1->ImageIndex = 8; }
  else
    { sePngImageView1->ImageIndex = 9; }
}
//---------------------------------------------------------------------------
void __fastcall TForm1::seButtonLabel4CheckChanged(TObject *Sender)
{
 sePngImageView1->ReflectionEffect = seButtonLabel4->Checked;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sePngXButton7Click(TObject *Sender)
{
 seXLabel10->ChangeText(Edit1->Text);        
}
//---------------------------------------------------------------------------
void __fastcall TForm1::sePngXButton8Click(TObject *Sender)
{
 TestAnimation2->FreezeControlClient(Panel1, Panel1->ClientRect, 0);
 Button4->Left = random(80);
 Button4->Top = random(80);
 Panel1->Color = TColor(random(60000));
 TestAnimation2->Execute();
 TestAnimation2->Restore();
}
//---------------------------------------------------------------------------
void __fastcall TForm1::PageControl1Changing(TObject *Sender,
      bool &AllowChange)
{
 seAnimation3->FreezeControlClient(PageControl1, PageControl1->ClientRect, 0);
}
//---------------------------------------------------------------------------
void __fastcall TForm1::PageControl1Change(TObject *Sender)
{
 seAnimation3->Execute();
 seAnimation3->Restore();
}
//---------------------------------------------------------------------------


