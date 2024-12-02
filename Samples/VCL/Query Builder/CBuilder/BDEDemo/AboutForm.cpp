//---------------------------------------------------------------------------
#include <tchar.h>
#include <vcl.h>
#pragma hdrstop

#include "AboutForm.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
//---------------------------------------------------------------------------
void __fastcall ShowAboutBox(void)
{
  TfmAbout *fmAbout = new TfmAbout(Application);
  try
  {
    fmAbout->ShowModal();
  }
  __finally
  {
    delete fmAbout;
  }
}
//---------------------------------------------------------------------------
__fastcall TfmAbout::TfmAbout(TComponent* Owner): TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TfmAbout::FormCreate(TObject *Sender)
{
  imLogo->Picture->Icon->ReleaseHandle();
  imLogo->Picture->Icon->Handle = LoadIcon(HInstance, _T("MAINICON"));
}
//---------------------------------------------------------------------------
void __fastcall TfmAbout::laURLClick(TObject *Sender)
{
  ShellExecute(Application->Handle, 0, (dynamic_cast<TLabel*>(Sender))->Caption.c_str(), 0, 0, SW_SHOWNORMAL);
}
//---------------------------------------------------------------------------
