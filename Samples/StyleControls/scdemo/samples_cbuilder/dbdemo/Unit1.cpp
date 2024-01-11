//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "scCalendar"
#pragma link "scControls"
#pragma link "scDBControls"
#pragma link "scDBGrids"
#pragma link "scExtControls"
#pragma link "scGrids"
#pragma link "scImageCollection"
#pragma link "scStyledForm"
#pragma link "scStyleManager"
#pragma link "Vcl.Themes"
#pragma link "scAdvancedControls"
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
  int i, j;
  bool b;
  TDateTime FDate;
  ClientDataSet1->CreateDataSet();
  ClientDataSet2->CreateDataSet();
  ClientDataSet1->Open();
  ClientDataSet2->Open();
  b = true;
  for (i = 0; i < 50; i++)
  {
   scDBComboBox1->AddItem("Item" + IntToStr(i), NULL);
  }
  FDate = Now();
  for (i = 0; i < 50; i++)
  {
	b = !b;
	j = Random(100);
	ClientDataSet1->Insert();
	ClientDataSet1->FieldByName("Field1")->AsString = "item" + IntToStr(i);
	ClientDataSet1->FieldByName("Field2")->AsInteger = j;
	ClientDataSet1->FieldByName("Field3")->AsBoolean = b;
	ClientDataSet1->FieldByName("Field4")->AsDateTime = FDate;
	ClientDataSet1->FieldByName("Field5")->AsDateTime = FDate;
	ClientDataSet1->FieldByName("Field6")->AsString = "memo" + IntToStr(i);
	ClientDataSet1->Post();
	ClientDataSet2->Insert();
	ClientDataSet2->FieldByName("Field1")->AsString = "item" + IntToStr(i);
	ClientDataSet2->FieldByName("Field2")->AsInteger = j;
	ClientDataSet2->FieldByName("Field3")->AsDateTime = FDate;
	ClientDataSet2->Post();
  }
  ClientDataSet1->First();
  scComboBox1->Items->Clear();
  scComboBox1->Items->AddStrings(TStyleManager::StyleNames);
  scComboBox1->ItemIndex = scComboBox1->Items->IndexOf(TStyleManager::ActiveStyle->Name);
}
//---------------------------------------------------------------------------
void __fastcall TForm1::scComboBox1Click(TObject *Sender)
{
  String s = scComboBox1->Items->Strings[scComboBox1->ItemIndex];
  TStyleManager::SetStyle(s);
}
//---------------------------------------------------------------------------


void __fastcall TForm1::scCheckBox1Click(TObject *Sender)
{
 if (scCheckBox1->Checked) {
	scDBGrid1 -> BackgroundStyle = scgbTransparent;}
  else
  {
	scDBGrid1 -> BackgroundStyle = scgbColor;
  }
}
//---------------------------------------------------------------------------


void __fastcall TForm1::scCheckBox3Click(TObject *Sender)
{
  scDBGrid1->ShowFocusRect = scCheckBox3->Checked;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::scCheckBox2Click(TObject *Sender)
{
 if (scCheckBox2->Checked) {
 scDBGrid1->Options = TscDBGridOptions(scDBGrid1->Options) << scdgRowSelect;
 }
 else
 {
 scDBGrid1->Options = TscDBGridOptions(scDBGrid1->Options) >> scdgRowSelect;
 scDBGrid1->Options = TscDBGridOptions(scDBGrid1->Options) << scdgEditing;
 }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::scCheckBox4Click(TObject *Sender)
{
   scDBNavigator1->Flat = scCheckBox4->Checked;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::scCheckBox5Click(TObject *Sender)
{
  scDBNavigator1->TabStop = scCheckBox5->Checked;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::scCheckBox6Click(TObject *Sender)
{
 scDBNavigator1->Animation =  scCheckBox6->Checked;
}
//---------------------------------------------------------------------------

