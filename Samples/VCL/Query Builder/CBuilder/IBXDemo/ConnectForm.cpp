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
bool __fastcall ShowConnectForm(TIBDatabase *Database)
{
  bool Result = False;
  if (!Database) return Result;
  TfmConnect *fmConnect = new TfmConnect(0);
  try
  {
    int i;
    fmConnect->edDBFile->Text = Database->DatabaseName;
    fmConnect->edUserName->Text = Database->Params->Values["user_name"] ;
    fmConnect->edPassword->Text = Database->Params->Values["password"];
    fmConnect->edRole->Text = Database->Params->Values["sql_role"];
    fmConnect->cbCharset->Text = Database->Params->Values["lc_ctype"];

    fmConnect->rgDialect->ItemIndex = (Database->SQLDialect == 3) ? 1 : 0;
    Result = fmConnect->ShowModal() == mrOk;
    if (Result)
    {
      Database->Connected = False;
      Database->DatabaseName = fmConnect->edDBFile->Text;
      Database->Params->Values["user_name"] = fmConnect->edUserName->Text;
      Database->Params->Values["password"] = fmConnect->edPassword->Text;
      Database->Params->Values["sql_role"] = fmConnect->edRole->Text;

      Database->Params->Values["lc_ctype"] = (AnsiCompareText(fmConnect->cbCharset->Text, "NONE") != 0)
                                             ? fmConnect->cbCharset->Text
                                             : EmptyStr;

      Database->SQLDialect = (!fmConnect->rgDialect->ItemIndex) ? 1 : 3;
      Database->Connected = True;
    }
  }
  __finally
  {
    fmConnect->Free();
  }
  return Result;
}
//---------------------------------------------------------------------------
void __fastcall TfmConnect::buBrowseClick(TObject *Sender)
{
  if (dlgOpen->Execute()) edDBFile->Text = dlgOpen->FileName;
}
//---------------------------------------------------------------------------
void __fastcall TfmConnect::FormCreate(TObject *Sender)
{
  cbCharset->ItemIndex = 0;
}
//---------------------------------------------------------------------------
