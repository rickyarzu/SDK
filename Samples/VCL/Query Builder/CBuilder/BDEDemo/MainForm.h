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
#include <DBTables.hpp>
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
    TPanel *paDatabases;
    TListView *lvTables;
    TLabel *laDatabase;
    TComboBox *cbDatabase;
    TSQLQueryBuilder *QueryBuilder;
    TMemo *mmSQL;
    TDBGrid *DBGrid1;
    TDBNavigator *DBNavigator1;
    TImageList *ilList;
    TDataSource *DataSource;
    TQuery *Query;
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
    TMenuItem *miView;
    TMenuItem *miQBOptions;
    TMenuItem *miSeparator3;
    TMenuItem *miShowSystem;
    TMenuItem *miQuoteIdents;
    TMenuItem *miQuoteAliases;
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
    void __fastcall cbDatabaseChange(TObject *Sender);
    void __fastcall miAboutClick(TObject *Sender);
    void __fastcall miQBOptionsClick(TObject *Sender);
    void __fastcall miShowSystemClick(TObject *Sender);
    void __fastcall miQuoteIdentsClick(TObject *Sender);
    void __fastcall QueryBuilderParserError(TObject *Sender, const String ErrorMsg, const String Token, int LineNo, int LinePos);
    void __fastcall miQuoteAliasesClick(TObject *Sender);
private:	// User declarations
	void __fastcall RefreshTableList(void);
	String __fastcall FormatIdentifier(const String Ident);
public:		// User declarations
    __fastcall TfmMain(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfmMain *fmMain;
//---------------------------------------------------------------------------
#endif
 