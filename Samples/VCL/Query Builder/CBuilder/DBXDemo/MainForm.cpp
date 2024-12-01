//---------------------------------------------------------------------------
#include <vcl.h>
#pragma hdrstop

#include "MainForm.h"
#include "ConnectForm.h"
#include "AboutForm.h"
#include "QBOptionsForm.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "QBMyWindow"
#pragma link "QBWindow"
#pragma resource "*.dfm"
const
  String sCaption = "EMS MySQL Query Builder demo application [%s]";
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
	SQLQuery->SQL->Text = Format(sSelect, ARRAYOFCONST(((String)FormatByQuotes(SelLI->Caption, miQuoteIdents->Checked))));
    SQLQuery->Open();
    try
    {
      TQBTable *Tbl = QueryBuilder->Tables->AddTable(lvTables->Selected->Caption, "", SQLQuery);
      if (Tbl && X && Y)
      {
        Tbl->Left = X;
        Tbl->Top = Y;
      }
    }
    __finally
    {
      SQLQuery->Close();
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
    SQLQuery->Active = False;
    String S = NameOfTable;
    SQLQuery->SQL->Text = Format(sSelect, ARRAYOFCONST(((String)FormatByQuotes(S, miQuoteIdents->Checked))));
    SQLQuery->Open();
    ADataSet = SQLQuery;
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
  String SQL = EmptyStr;
  if (Pages->ActivePage == tsBuilder)
    SQL = QueryBuilder->SQL;
  else if (Pages->ActivePage == tsSQL)
    SQL = mmSQL->Text;
  else return;

  ClientDataSet->Close();
  SQLQuery->SQL->Text = SQL;
  ClientDataSet->Open();
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
  ClientDataSet->Active = False;
  SQLQuery->Active = False;
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
/*  if (SQLConnection->Connected)
    Caption = Format(sCaption, [SQLConnection->Params->Values['Database']])
  else Caption = Format(sCaption, ['']);*/
  if (SQLConnection->Connected)
    Caption = Format(sCaption, ARRAYOFCONST(((String)SQLConnection->Params->Values["Database"])));
  else Caption = Format(sCaption, ARRAYOFCONST(((String)EmptyStr)));
}
//---------------------------------------------------------------------------
void __fastcall TfmMain::tbConnectClick(TObject *Sender)
{
  if (ShowConnectForm(SQLConnection)) UpdateCaption();
}
//---------------------------------------------------------------------------
void __fastcall TfmMain::tbDisconnectClick(TObject *Sender)
{
  SQLConnection->Connected = False;
}
//---------------------------------------------------------------------------
void __fastcall TfmMain::DatabaseAfterConnect(TObject *Sender)
{
  SQLQuery->Active = False;
  RefreshTableList();
  UpdateCaption();
  tbClear->Click();
}
//---------------------------------------------------------------------------
void __fastcall TfmMain::FormClose(TObject *Sender, TCloseAction &Action)
{
  SQLConnection->Connected = False;
}
//---------------------------------------------------------------------------
void __fastcall TfmMain::DatabaseAfterDisconnect(TObject *Sender)
{
  lvTables->Items->Clear();
  SQLConnection->Params->Values["Database"] = EmptyStr;
  tbClear->Click();
  UpdateCaption();
}
//---------------------------------------------------------------------------
void __fastcall TfmMain::miQuoteIdentsClick(TObject *Sender)
{
  miQuoteIdents->Checked = !miQuoteIdents->Checked;
  QueryBuilder->QuoteIdentifiers = miQuoteIdents->Checked;
  RefreshTableList();
}
//---------------------------------------------------------------------------
void __fastcall TfmMain::RefreshTableList(void)
{
  if (!SQLConnection->Connected) return;
  TStringList *Tables = new TStringList();
  try
  {
    SQLConnection->GetTableNames(Tables, False);
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
String __fastcall TfmMain::FormatByQuotes(const String  Ident,
  bool Quote)
{
  if (Quote) return Format("`%s`", ARRAYOFCONST(((String)Ident)));
  else return Ident;
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