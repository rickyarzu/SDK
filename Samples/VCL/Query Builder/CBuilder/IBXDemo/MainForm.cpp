//---------------------------------------------------------------------------
#include <vcl.h>
#pragma hdrstop

#include "MainForm.h"
#include "ConnectForm.h"
#include "AboutForm.h"
#include "QBOptionsForm.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "QBIBWindow"
#pragma link "QBWindow"
#pragma resource "*.dfm"
const
  String sCaption = "EMS InterBase/FireBird Query Builder demo application [%s] %s";
  String sDialect = "(SQL Dialect %d)";
  String sSelect = "SELECT * FROM %s WHERE 0 = 1";

TfmMain *fmMain;
//---------------------------------------------------------------------------
__fastcall TfmMain::TfmMain(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TfmMain::lvTablesDblClick(TObject *Sender)
{
  QueryBuilderDragDrop(this, Sender, 0, 0);
}
//---------------------------------------------------------------------------
void __fastcall TfmMain::QueryBuilderDragOver(TObject *Sender, TObject *Source,
  int X, int Y, TDragState State, bool &Accept)
{
  Accept = Source == lvTables;
}
//---------------------------------------------------------------------------
void __fastcall TfmMain::QueryBuilderDragDrop(TObject *Sender, TObject *Source,
  int X, int Y)
{
  if (Source != lvTables) return;

  TListItem *SelLI = dynamic_cast<TListView*>(Source)->Selected;
  if (!SelLI) return;
  TCursor OldCur = Screen->Cursor;
  Screen->Cursor = crHourGlass;
  try
  {
    Query->SQL->Text = Format(sSelect,
      ARRAYOFCONST(((String)FormatByDialect(SelLI->Caption, Database->SQLDialect))));
    Query->Open();
    try
    {
      TQBTable *Tbl = QueryBuilder->Tables->AddTable(lvTables->Selected->Caption, "", Query);
      if (Tbl && X && Y)
      {
        Tbl->Left = X;
        Tbl->Top = Y;
      }
    }
    __finally
    {
      Query->Close();
    }
  }
  __finally
  {
    Screen->Cursor = OldCur;
  }
}
//---------------------------------------------------------------------------
void __fastcall TfmMain::QueryBuilderGetTableFields(const String NameOfTable,
  TDataSet *&ADataSet, TParams *&AParams)
{
  Screen->Cursor = crHourGlass;
  try
  {
    Query->Active = False;
    String S = NameOfTable;
    Query->SQL->Text = Format(sSelect,
      ARRAYOFCONST(((String)FormatByDialect(S, Database->SQLDialect))));
    Query->Open();
    ADataSet = Query;
    AParams = 0;
  }
  __finally
  {
    Screen->Cursor = crDefault;
  }
}
//---------------------------------------------------------------------------
void __fastcall TfmMain::FormCreate(TObject *Sender)
{
  tsResult->TabVisible = False;
  Application->Title = Caption;
  UpdateCaption();
}
//---------------------------------------------------------------------------
void __fastcall TfmMain::PagesChanging(TObject *Sender, bool &AllowChange)
{
  if (this->ComponentState.Contains(csLoading)) return;
  if (Pages->ActivePage == tsBuilder)
  {
    mmSQL->Text = QueryBuilder->SQL;
    mmSQL->Modified = False;
  }
  else if (Pages->ActivePage == tsSQL)
  {
    if (mmSQL->Modified)
    {
      QueryBuilder->SQL = mmSQL->Text;
      AllowChange = QueryBuilder->Parser->Success;
      mmSQL->Modified = !AllowChange;
    }
  }
}
//---------------------------------------------------------------------------
void __fastcall TfmMain::tbExecuteClick(TObject *Sender)
{
  String SQL;
  if (Pages->ActivePage == tsBuilder) SQL = QueryBuilder->SQL;
  else if (Pages->ActivePage == tsSQL) SQL = mmSQL->Text;
  else return;

  bool Param;
  PagesChanging(this, Param);
  Query->Close();
  Query->SQL->Text = SQL;
  Query->Open();
  tsResult->TabVisible = True;
  Param = True;
  Pages->ActivePage = tsResult;
}
//---------------------------------------------------------------------------
void __fastcall TfmMain::tbClearClick(TObject *Sender)
{
  QueryBuilder->Clear();
  mmSQL->Lines->Text = EmptyStr;
  Query->Active = False;
  tsResult->TabVisible = False;
}
//---------------------------------------------------------------------------
void __fastcall TfmMain::tbLoadClick(TObject *Sender)
{
  if (dlgOpen->Execute())
  {
    mmSQL->Lines->LoadFromFile(dlgOpen->FileName);
    mmSQL->Modified = Pages->ActivePage == tsSQL;
  }
}
//---------------------------------------------------------------------------
void __fastcall TfmMain::tbSaveClick(TObject *Sender)
{
  if (dlgSave->Execute())
    mmSQL->Lines->SaveToFile(dlgSave->FileName);
}
//---------------------------------------------------------------------------
void __fastcall TfmMain::miExitClick(TObject *Sender)
{
  Close();
}
//---------------------------------------------------------------------------
void __fastcall TfmMain::UpdateCaption(void)
{
  if (Database->Connected)
    Caption = Format(sCaption,
      ARRAYOFCONST(((String)Database->DatabaseName,
                    (String)Format(sDialect, ARRAYOFCONST(((int)Database->SQLDialect))))));
    else Caption = Format(sCaption, ARRAYOFCONST(((String)Database->DatabaseName, (String)EmptyStr)));
}
//---------------------------------------------------------------------------
void __fastcall TfmMain::tbConnectClick(TObject *Sender)
{
  if (ShowConnectForm(Database))
    UpdateCaption();
}
//---------------------------------------------------------------------------
void __fastcall TfmMain::tbDisconnectClick(TObject *Sender)
{
  Database->Connected = False;
}
//---------------------------------------------------------------------------
void __fastcall TfmMain::DatabaseAfterConnect(TObject *Sender)
{
  Query->Active = False;
  RefreshTableList(miShowSystemTables->Checked);
  QueryBuilder->SQLDialect = (Database->SQLDialect == 1) ? qibDialect1 : qibDialect3;
  UpdateCaption();
  tbClear->Click();
}
//---------------------------------------------------------------------------
void __fastcall TfmMain::FormClose(TObject *Sender, TCloseAction &Action)
{
  Database->Connected = False;
}
//---------------------------------------------------------------------------
void __fastcall TfmMain::DatabaseAfterDisconnect(TObject *Sender)
{
  lvTables->Items->Clear();
  Database->DatabaseName = EmptyStr;
  tbClear->Click();
  UpdateCaption();
}
//---------------------------------------------------------------------------
void __fastcall TfmMain::miShowSystemTablesClick(TObject *Sender)
{
  miShowSystemTables->Checked = !miShowSystemTables->Checked;
  RefreshTableList(miShowSystemTables->Checked);
}
//---------------------------------------------------------------------------
void __fastcall TfmMain::RefreshTableList(bool ShowSystem)
{
  if (!Database->Connected)  return;
  TStringList *Tables = new TStringList();
  try
  {
    Database->GetTableNames(Tables, ShowSystem);
    Tables->Sort();
    lvTables->Items->BeginUpdate();
    try
    {
      lvTables->Items->Clear();
      for (int i = 0; i <= Tables->Count - 1; i++)
      {
        TListItem *NewItem = lvTables->Items->Add();
        NewItem->Caption = Tables->Strings[i];
        NewItem->ImageIndex = 0;
      }
    }
    __finally
    {
      lvTables->Items->EndUpdate();
    }
  }
  __finally
  {
    Tables->Free();
  }
}
//---------------------------------------------------------------------------
String __fastcall TfmMain::FormatByDialect(const String Ident,
  short Dialect)
{
  return (Dialect > 1) ? AnsiQuotedStr(Ident, '\"') : Ident;
}
//---------------------------------------------------------------------------
void __fastcall TfmMain::miAboutClick(TObject *Sender)
{
  ShowAboutBox();
}
//---------------------------------------------------------------------------
void __fastcall TfmMain::miQBOptionsClick(TObject *Sender)
{
  ShowQBOptions((TCustomQueryBuilder *)QueryBuilder);
}
//---------------------------------------------------------------------------
void __fastcall TfmMain::QueryBuilderParserError(TObject *Sender,
  const String ErrorMsg, const String Token,
  int LineNo, int LinePos)
{
  mmSQL->SelStart = dynamic_cast<TQBSelectParser*>(Sender)->Scanner->Position - Token.Length() - 1;
  mmSQL->SelLength = Token.Length();
  MessageDlg(ErrorMsg, mtError, TMsgDlgButtons() << mbOK, 0);
}
//---------------------------------------------------------------------------