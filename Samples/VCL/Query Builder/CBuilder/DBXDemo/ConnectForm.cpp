//---------------------------------------------------------------------------
#include <vcl.h>
#pragma hdrstop

#include "ConnectForm.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
//---------------------------------------------------------------------------
__fastcall TfmConnect::TfmConnect(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------
bool __fastcall ShowConnectForm(TSQLConnection *Database)
{
  bool Result = False;
  if (!Database) return Result;
  TfmConnect *fmConnect = new TfmConnect(0);
  try
  {
    fmConnect->edHost->Text = Database->Params->Values["HostName"];
    fmConnect->edDBName->Text = Database->Params->Values["Database"];
    fmConnect->edUserName->Text = Database->Params->Values["User_Name"];
    fmConnect->edPassword->Text = Database->Params->Values["Password"];
    Result = fmConnect->ShowModal() == mrOk;

    if (Result)
    {
      Database->Connected = False;
      Database->Params->Values["HostName"] = fmConnect->edHost->Text;
      Database->Params->Values["Database"] = fmConnect->edDBName->Text;
      Database->Params->Values["User_Name"] = fmConnect->edUserName->Text;
      Database->Params->Values["Password"] = fmConnect->edPassword->Text;
      try
      {
        Database->Open();
      }
      catch (Exception &exception)
      {
        Application->ShowException(&exception);
      }
    }
  }
  __finally
  {
    fmConnect->Free();
  }
  return Result;
}
//---------------------------------------------------------------------------
