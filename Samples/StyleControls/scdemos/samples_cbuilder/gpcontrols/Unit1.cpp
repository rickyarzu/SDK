//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "scControls"
#pragma link "scGPControls"
#pragma link "scModernControls"
#pragma link "scStyledForm"
#pragma link "scStyleManager"
#pragma link "scGPImages"
#pragma link "scDrawUtils"
#pragma link "scExtControls"
#pragma link "scGPExtControls"
#pragma link "scGPMeters"
#pragma link "scGPPagers"
#pragma link "scImageCollection"
#pragma resource "*.dfm"
TForm2 *Form2;
//---------------------------------------------------------------------------
__fastcall TForm2::TForm2(TComponent* Owner)
	: TForm(Owner)
{
 scGPActivityBar1->Activate();
 scGPCircledProgressBar2->Activate();
 scGPGearActivityIndicator1->Activate();
}
//---------------------------------------------------------------------------
void __fastcall TForm2::scGPSwitch4ChangeState(TObject *Sender)
{
  if (scGPSwitch4->IsOn()) {
	scGPImage1->ClipFrame = scgpcfEllipse;
	scGPImage2->ClipFrame = scgpcfRoundedRect;
	scGPImage1->RotateAnimation = true;
  }
  else
  {
	scGPImage1->ClipFrame = scgpcfNone;
	scGPImage2->ClipFrame = scgpcfNone;
	scGPImage1->RotateAnimation = false;
    scGPImage1->RotationAngle = 0;
  }
}
//---------------------------------------------------------------------------

void __fastcall TForm2::scGPTrackBar2Change(TObject *Sender)
{
  scGPProgressBar2->Value = scGPTrackBar2->Value;
}
//---------------------------------------------------------------------------

void __fastcall TForm2::scGPTrackBar1Change(TObject *Sender)
{
  scGPProgressBar1->Value = scGPTrackBar1->Value;
  scGPCircledProgressBar1->Value = scGPTrackBar1->Value;
  scGPCircledProgressBar2->Value = scGPTrackBar1->Value;
}
//---------------------------------------------------------------------------


void __fastcall TForm2::scGPButton5Click(TObject *Sender)
{
 scGPLabel2->Caption = "TscGPLabel with frame, glow effect and margins";
}
//---------------------------------------------------------------------------

void __fastcall TForm2::scGPComboBox5Change(TObject *Sender)
{
 scGPGlyphButton1->GlyphOptions->Kind = TscGPButtonGlyphKind(scGPComboBox5->ItemIndex);
}
//---------------------------------------------------------------------------

void __fastcall TForm2::scGPCheckBox1Click(TObject *Sender)
{
 scGPCircledProgressBar2->AnimationAcceleration = scGPCheckBox1->Checked;
 scGPGearActivityIndicator1->AnimationAcceleration = scGPCheckBox1->Checked;
}
//---------------------------------------------------------------------------

void __fastcall TForm2::scGPPageControl1ChangePage(TObject *Sender)
{
  scGPImage3->RotateAnimation = scGPPageControl1-> TabIndex == 4;
  scGPImage1->RotateAnimation = (scGPSwitch4->IsOn() & scGPImage3->RotateAnimation);
  scGPActivityBar1->Active = scGPPageControl1->TabIndex == 0;
  scGPGearActivityIndicator1->Active = scGPPageControl1->TabIndex == 0;
  scGPCircledProgressBar2->Active = (scGPActivityBar1->Active & scGPSwitch1->IsOn());
  scGPProgressBar1->Active = (scGPActivityBar1->Active & scGPSwitch3->IsOn());
}
//---------------------------------------------------------------------------


void __fastcall TForm2::scGPComboBox6Change(TObject *Sender)
{
  scGPMeter1->ArrowType = TscGPMeterArrowType(scGPComboBox6->ItemIndex);
  scGPMeter2->ArrowType = TscGPMeterArrowType(scGPComboBox6->ItemIndex);
  scGPMeter3->ArrowType = TscGPMeterArrowType(scGPComboBox6->ItemIndex);
  scGPMeter1201->ArrowType = TscGPMeterArrowType(scGPComboBox6->ItemIndex);
}
//---------------------------------------------------------------------------

void __fastcall TForm2::scGPCheckBox6Click(TObject *Sender)
{
  scGPMeter1->ArrowShadow = scGPCheckBox6->Checked;
  scGPMeter2->ArrowShadow = scGPCheckBox6->Checked;
  scGPMeter3->ArrowShadow = scGPCheckBox6->Checked;
  scGPMeter1201->ArrowShadow = scGPCheckBox6->Checked;
  scGPClock1->ArrowShadow = scGPCheckBox6->Checked;
}
//---------------------------------------------------------------------------

void __fastcall TForm2::scGPCheckBox7Click(TObject *Sender)
{
  scGPMeter1->FrameShadow = scGPCheckBox7->Checked;
  scGPMeter2->FrameShadow = scGPCheckBox7->Checked;
  scGPMeter3->FrameShadow = scGPCheckBox7->Checked;
  scGPClock1->FrameShadow = scGPCheckBox7->Checked;
}
//---------------------------------------------------------------------------

void __fastcall TForm2::scGPCheckBox8Click(TObject *Sender)
{
  scGPDial1->KnobShadow = scGPCheckBox8->Checked;
  scGPDial2->KnobShadow = scGPCheckBox8->Checked;
  scGPGearDial1->KnobShadow = scGPCheckBox8->Checked;
}
//---------------------------------------------------------------------------

void __fastcall TForm2::scGPCheckBox9Click(TObject *Sender)
{
  scGPDial2->ShowImage = scGPCheckBox9->Checked;
  scGPGearDial1->ShowImage = scGPCheckBox9->Checked;
}
//---------------------------------------------------------------------------

void __fastcall TForm2::scGPCheckBox10Click(TObject *Sender)
{
  scGPDial2->ShowValue = scGPCheckBox10->Checked;
  scGPGearDial1->ShowValue = scGPCheckBox10->Checked;
}
//---------------------------------------------------------------------------

void __fastcall TForm2::scGPDial1Change(TObject *Sender)
{
  scGPMeter1->Value = scGPDial1->Value;
  scGPMeter1201->Value = scGPDial1->Value;
}
//---------------------------------------------------------------------------

void __fastcall TForm2::scGPDial2Change(TObject *Sender)
{
  scGPMeter3->Value = scGPDial2->Value;
}
//---------------------------------------------------------------------------

void __fastcall TForm2::scGPGearDial1Change(TObject *Sender)
{
  scGPMeter2->Value = scGPGearDial1->Value;
}
//---------------------------------------------------------------------------

void __fastcall TForm2::scGPCheckBox5Click(TObject *Sender)
{
  scGPSlider1->ThumbShadow = scGPCheckBox5->Checked;
  scGPSlider2->ThumbShadow = scGPCheckBox5->Checked;
  scGPSlider3->ThumbShadow = scGPCheckBox5->Checked;
  scGPSlider4->ThumbShadow = scGPCheckBox5->Checked;

  scGPHVMeter1->ArrowShadow = scGPCheckBox5->Checked;
  scGPHVMeter2->ArrowShadow = scGPCheckBox5->Checked;
  scGPHVMeter3->ArrowShadow = scGPCheckBox5->Checked;
  scGPHVMeter4->ArrowShadow = scGPCheckBox5->Checked;
}
//---------------------------------------------------------------------------

void __fastcall TForm2::scGPCheckBox4Click(TObject *Sender)
{
  scGPHVMeter1->SmoothTicks = scGPCheckBox4->Checked;
  scGPHVMeter2->SmoothTicks = scGPCheckBox4->Checked;
  scGPHVMeter3->SmoothTicks = scGPCheckBox4->Checked;
  scGPHVMeter4->SmoothTicks = scGPCheckBox4->Checked;
  scGPHVMeter5->SmoothTicks = scGPCheckBox4->Checked;

  scGPSlider1->SmoothTicks = scGPCheckBox4->Checked;
  scGPSlider3->SmoothTicks = scGPCheckBox4->Checked;
  scGPSlider4->SmoothTicks = scGPCheckBox4->Checked;
}
//---------------------------------------------------------------------------

void __fastcall TForm2::scGPSlider2Change(TObject *Sender)
{
  scGPHVMeter1->Value = scGPSlider2->Value;
  scGPHVMeter2->Value = -scGPSlider2->Value;
  scGPHVMeter3->Value = scGPSlider2->Value;
  scGPHVMeter4->Value = scGPSlider2->Value / 50;
  scGPHVMeter5->Value = scGPSlider2->Value;
}
//---------------------------------------------------------------------------


void __fastcall TForm2::scGPSlider1LastChange(TObject *Sender)
{
  scGPHVMeter1->Value = scGPSlider1->Value;
  scGPHVMeter2->Value = -scGPSlider1->Value;
  scGPHVMeter3->Value = scGPSlider1->Value;
  scGPHVMeter4->Value = scGPSlider1->Value / 50;
  scGPHVMeter5->Value = scGPSlider1->Value;
}
//---------------------------------------------------------------------------

void __fastcall TForm2::scGPSlider3Change(TObject *Sender)
{
  scGPHVMeter1->Value = scGPSlider3->Value;
  scGPHVMeter2->Value = -scGPSlider3->Value;
  scGPHVMeter3->Value = scGPSlider3->Value;
  scGPHVMeter4->Value = scGPSlider3->Value / 50;
  scGPHVMeter5->Value = scGPSlider3->Value;
}
//---------------------------------------------------------------------------

void __fastcall TForm2::scGPSlider4Change(TObject *Sender)
{
  scGPHVMeter1->Value = scGPSlider4->Value;
  scGPHVMeter2->Value = -scGPSlider4->Value;
  scGPHVMeter3->Value = scGPSlider4->Value;
  scGPHVMeter4->Value = scGPSlider4->Value / 50;
  scGPHVMeter5->Value = scGPSlider4->Value;
}
//---------------------------------------------------------------------------

