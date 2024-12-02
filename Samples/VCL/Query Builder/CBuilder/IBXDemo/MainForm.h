//---------------------------------------------------------------------------

#ifndef MainFormH
#define MainFormH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <ComCtrls.hpp>
#include <DB.hpp>
#include <DBCtrls.hpp>
#include <DBGrids.hpp>
#include <Dialogs.hpp>
#include <ExtCtrls.hpp>
#include <Grids.hpp>
#include <ImgList.hpp>
#include <Menus.hpp>
#include <ToolWin.hpp>
#include <QBWindow.hpp>
#include <QBIBWindow.hpp>
#if defined(__CODEGEARC__) && (__CODEGEARC__ >= 0x0680)
#include <IBX.IBCustomDataSet.hpp>
#include <IBX.IBDatabase.hpp>
#include <IBX.IBQuery.hpp>
#else
#include <IBCustomDataSet.hpp>
#include <IBDatabase.hpp>
#include <IBQuery.hpp>
#endif
//---------------------------------------------------------------------------
class TfmMain : public TForm
{
__published:	// IDE-managed Components
    TStatusBar *StatusBar1;
    TPanel *paTables;
    TPanel *paPages;
    TPageControl *Pages;
    TTabSheet *tsBuilder;
    TTabSheet *tsSQL;
    TTabSheet *tsResult;
    TListView *lvTables;
    TInterBaseQueryBuilder *QueryBuilder;
    TMemo *mmSQL;
    TDBGrid *DBGrid;
    TDBNavigator *DBNavigator;
    TImageList *ilList;
    TDataSource *DataSource;
    TCoolBar *CoolBar;
    TToolBar *ToolBar;
    TToolButton *tbLoad;
    TToolButton *tbSave;
    TToolButton *ToolButton3;
    TToolButton *tbExecute;
    TToolButton *ToolButton5;
    TToolButton *tbClear;
    TMainMenu *MainMenu;
    TMenuItem *miFile;
    TMenuItem *miHelp;
    TMenuItem *miAbout;
    TMenuItem *miLoad;
    TMenuItem *miSave;
    TMenuItem *miSaveAs;
    TMenuItem *miSeparator1;
    TMenuItem *miExit;
    TMenuItem *miQuery;
    TMenuItem *miExecute;
    TMenuItem *miSeparator2;
    TMenuItem *miClear;
    TSplitter *Splitter;
    TImageList *ilMenu;
    TSaveDialog *dlgSave;
    TOpenDialog *dlgOpen;
    TToolButton *tbConnect;
    TToolButton *tbDisconnect;
    TToolButton *ToolButton4;
    TMenuItem *miSeparator3;
    TMenuItem *miConnect;
    TMenuItem *miDisconnect;
    TIBQuery *Query;
    TIBDatabase *Database;
    TIBTransaction *Transaction;
    TMenuItem *miView;
    TMenuItem *miShowSystemTables;
    TMenuItem *miSeparator4;
    TMenuItem *miQBOptions;
    void __fastcall lvTablesDblClick(TObject *Sender);
    void __fastcall QueryBuilderDragOver(TObject *Sender, TObject *Source, int X, int Y, TDragState State, bool &Accept);
    void __fastcall QueryBuilderDragDrop(TObject *Sender, TObject *Source, int X, int Y);
    void __fastcall QueryBuilderGetTableFields(const String NameOfTable, TDataSet *&ADataSet, TParams *&AParams);
    void __fastcall FormCreate(TObject *Sender);
    void __fastcall PagesChanging(TObject *Sender, bool &AllowChange);
    void __fastcall tbExecuteClick(TObject *Sender);
    void __fastcall tbClearClick(TObject *Sender);
    void __fastcall tbLoadClick(TObject *Sender);
    void __fastcall tbSaveClick(TObject *Sender);
    void __fastcall miExitClick(TObject *Sender);
    void __fastcall tbConnectClick(TObject *Sender);
    void __fastcall tbDisconnectClick(TObject *Sender);
    void __fastcall DatabaseAfterConnect(TObject *Sender);
    void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
    void __fastcall DatabaseAfterDisconnect(TObject *Sender);
    void __fastcall miShowSystemTablesClick(TObject *Sender);
    void __fastcall miAboutClick(TObject *Sender);
    void __fastcall miQBOptionsClick(TObject * Sender);
    void __fastcall QueryBuilderParserError(TObject *Sender, const String ErrorMsg, const String Token, int LineNo, int LinePos);
private:	// User declarations
    void __fastcall UpdateCaption();
    void __fastcall RefreshTableList(bool ShowSystem);
    String __fastcall FormatByDialect(const String Ident, short Dialect);
public:		// User declarations
    __fastcall TfmMain(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfmMain *fmMain;
//---------------------------------------------------------------------------
#endif
 