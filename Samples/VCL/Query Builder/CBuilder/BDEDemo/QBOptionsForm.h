//---------------------------------------------------------------------------

#ifndef QBOptionsFormH
#define QBOptionsFormH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <Dialogs.hpp>
#include <ExtCtrls.hpp>
#include <QBWindow.hpp>
//---------------------------------------------------------------------------
class TfmQBOptions : public TForm
{
__published:	// IDE-managed Components
    TGroupBox *gbGeneral;
    TCheckBox *chRowSelect;
    TCheckBox *chDragFieldName;
    TCheckBox *chHideSelection;
    TCheckBox *chShowFieldTypes;
    TGroupBox *gbPalette;
    TLabel *laActiveConditionRow;
    TLabel *laTableClient;
    TColorDialog *dlgColors;
    TPaintBox *pbActiveCondition;
    TPaintBox *pbTableClient;
    TGroupBox *gbStyle;
    TComboBox *cbConditionButton;
    TComboBox *cbObjectBorderKind;
    TLabel *laConditionButton;
    TLabel *laObjectBorderKind;
    TCheckBox *chFlatObjects;
    TCheckBox *chFlatObjectButtons;
    TPanel *paButtons;
    TButton *buOk;
    TButton *buCancel;
    TGroupBox *gbVisibleTabs;
    TCheckBox *chCriterions;
    TCheckBox *chSelection;
    TCheckBox *chGroupCriterions;
    TCheckBox *chSorting;
    TLabel *laActiveCaption;
    TPaintBox *pbActiveCaption;
    TLabel *laInactiveCaption;
    TPaintBox *pbInactiveCaption;
    TPaintBox *pbConditionText;
    TLabel *laConditionText;
    TLabel *Label1;
    TPaintBox *pbConditionItemText;
    TLabel *laFieldText;
    TPaintBox *pbFieldText;
    TLabel *laSelectedFieldText;
    TPaintBox *pbSelectedFieldText;
    TGroupBox *gbScriptFormat;
    TLabel *laKeywordsFormat;
    TComboBox *cbKeywordsFormat;
    TLabel *laFunctionsFormat;
    TComboBox *cbFunctionsFormat;
    void __fastcall ColorClick(TObject *Sender);
    void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
    void __fastcall ColorPaint(TObject *Sender);
private:	// User declarations
    TCustomQueryBuilder *FQueryBuilder;
    void __fastcall SetQueryBuilder(TCustomQueryBuilder *Value);
public:		// User declarations
        __fastcall TfmQBOptions(TComponent* Owner);
    __property TCustomQueryBuilder *QueryBuilder = {read = FQueryBuilder,
      write = SetQueryBuilder};
};

void __fastcall ShowQBOptions(TCustomQueryBuilder *QueryBuilder);

//---------------------------------------------------------------------------
extern PACKAGE TfmQBOptions *fmQBOptions;
//---------------------------------------------------------------------------
#endif
 