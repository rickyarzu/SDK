//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "MainForm.h"
#include "AboutForm.h"
#include "QBOptionsForm.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "QBWindow"
#pragma resource "*.dfm"
const
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
  mmSQL->Lines->Text = QueryBuilder->SQL;
}
//---------------------------------------------------------------------------
void __fastcall TfmMain::QueryBuilderDragOver(TObject *Sender, TObject *Source,
  int X, int Y, TDragState State, bool &Accept)
{
  Accept = (Source == lvTables);
}
//---------------------------------------------------------------------------
void __fastcall TfmMain::QueryBuilderDragDrop(TObject *Sender, TObject *Source,
  int X, int Y)
{
  if (Source != lvTables) return;
  TListItem *SelLI = (dynamic_cast<TListView*>(Source))->Selected;
  if (!SelLI) return;
  TCursor OldCur = Screen->Cursor;
  Screen->Cursor = crHourGlass;
  try
  {
    Query->SQL->Text = Format(sSelect, ARRAYOFCONST(((String)FormatIdentifier(SelLI->Caption))));
    Query->Open();
    try
    {
      String TableName = lvTables->Selected->Caption;
      if( QueryBuilder->QuoteIdentifiers && (TableName.Pos(".") != 0) )
        TableName = "\"" + TableName + "\"";
      TQBTable *Tbl = QueryBuilder->Tables->AddTable(TableName, TableName, Query);
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
    Query->SQL->Text = Format(sSelect, ARRAYOFCONST(((String)FormatIdentifier(S))));
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
  Application->Title = Caption;
  tsResult->TabVisible = False;
  cbDatabase->Clear();
  Session->GetDatabaseNames(cbDatabase->Items);
  miQuoteIdents->Checked = QueryBuilder->QuoteIdentifiers;
}
//---------------------------------------------------------------------------
void __fastcall TfmMain::PagesChanging(TObject *Sender, bool &AllowChange)
{
  if (this->ComponentState.Contains(csLoading)) return;
  if (Pages->ActivePage == tsBuilder)
  {
    mmSQL->Lines->Text = QueryBuilder->SQL;
    mmSQL->Modified = False;
  }
  else if (Pages->ActivePage == tsSQL)
  {
    if (mmSQL->Modified)
    {
      QueryBuilder->SQL = mmSQL->Lines->Text;
      AllowChange = QueryBuilder->Parser->Success;
      mmSQL->Modified = !AllowChange;
    }
  }
}
//---------------------------------------------------------------------------
void __fastcall TfmMain::tbExecuteClick(TObject *Sender)
{
  String SQL = EmptyStr;
  if (Pages->ActivePage == tsBuilder)
    SQL = QueryBuilder->SQL;
  else if (Pages->ActivePage == tsSQL)
    SQL = mmSQL->Text;
  else return;

  Query->Close();
  Query->SQL->Text = SQL;
  Query->Open();
  tsResult->TabVisible = True;
  bool Param = True;
  PagesChanging(this, Param);
  Pages->ActivePage = tsResult;
}
//---------------------------------------------------------------------------
void __fastcall TfmMain::tbClearClick(TObject *Sender)
{
  QueryBuilder->SQL = EmptyStr;
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
    mmSQL->Modified = (Pages->ActivePage == tsSQL);
    QueryBuilder->SQL = mmSQL->Lines->Text;
    mmSQL->Lines->Text = QueryBuilder->SQL;
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
void __fastcall TfmMain::cbDatabaseChange(TObject *Sender)
{
  Query->Active = False;
  Query->DatabaseName = cbDatabase->Text;
  RefreshTableList();
  tbClear->Click();
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
void __fastcall TfmMain::miShowSystemClick(TObject *Sender)
{
  miShowSystem->Checked = !miShowSystem->Checked;
  RefreshTableList();
}
//---------------------------------------------------------------------------
void _fastcall TfmMain::RefreshTableList(void)
{
  TStringList *Tables = new TStringList();
  try
  {
    Session->GetTableNames(cbDatabase->Text, EmptyStr, True, miShowSystem->Checked,
      Tables);
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
String __fastcall TfmMain::FormatIdentifier(const String Ident)
{
  return ( QueryBuilder->QuoteIdentifiers && (Ident != "") &&
	  !QueryBuilder->Parser->Scanner->IsIdentQuote(Ident[1]) )
	  ? AnsiQuotedStr(Ident, QueryBuilder->Parser->Scanner->IdentQuote)
	  : Ident;
}
//---------------------------------------------------------------------------
void __fastcall TfmMain::miQuoteIdentsClick(TObject *Sender)
{
  miQuoteIdents->Checked = !miQuoteIdents->Checked;
  QueryBuilder->QuoteIdentifiers = miQuoteIdents->Checked;
}
//---------------------------------------------------------------------------
void __fastcall TfmMain::QueryBuilderParserError(TObject *Sender,
  const String ErrorMsg, const String Token, int LineNo, int LinePos)
{
  mmSQL->SelStart =  (dynamic_cast<TQBSelectParser*>(Sender))->Scanner->Position - Token.Length() - 1;
  mmSQL->SelLength = Token.Length();
  MessageDlg(ErrorMsg, mtError, TMsgDlgButtons() << mbOK, 0);
}
//---------------------------------------------------------------------------
void __fastcall TfmMain::miQuoteAliasesClick(TObject *Sender)
{
  miQuoteAliases->Checked = !miQuoteAliases->Checked;
  QueryBuilder->QuoteAliases = miQuoteAliases->Checked;
}
//---------------------------------------------------------------------------
