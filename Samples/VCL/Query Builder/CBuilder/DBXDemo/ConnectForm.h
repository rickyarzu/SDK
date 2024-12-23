//---------------------------------------------------------------------------
#ifndef ConnectFormH
#define ConnectFormH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <Dialogs.hpp>
#include <ExtCtrls.hpp>
#include <SQLExpr.hpp>
//---------------------------------------------------------------------------
class TfmConnect : public TForm
{
__published:	// IDE-managed Components
    TEdit *edDBName;
    TEdit *edUserName;
    TEdit *edPassword;
    TLabel *laDBName;
    TLabel *laUserName;
    TLabel *laPassword;
    TPanel *paButtons;
    TButton *buOk;
    TButton *buCancel;
    TBevel *Bevel1;
    TOpenDialog *dlgOpen;
    TLabel *laHost;
    TEdit *edHost;
private:	// User declarations
public:		// User declarations
        __fastcall TfmConnect(TComponent* Owner);
};

bool __fastcall ShowConnectForm(TSQLConnection *Database);

//---------------------------------------------------------------------------
//extern PACKAGE TForm1 *Form1;
//---------------------------------------------------------------------------
#endif
 