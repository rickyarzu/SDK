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
#if defined(__CODEGEARC__) && (__CODEGEARC__ >= 0x0680)
#include <IBX.IBDatabase.hpp>
#else
#include <IBDatabase.hpp>
#endif
//---------------------------------------------------------------------------
class TfmConnect : public TForm
{
__published:	// IDE-managed Components
    TEdit *edDBFile;
    TEdit *edUserName;
    TEdit *edPassword;
    TEdit *edRole;
    TComboBox *cbCharset;
    TLabel *laDBFile;
    TLabel *laUserName;
    TLabel *laPassword;
    TLabel *laRole;
    TLabel *laCharset;
    TPanel *paButtons;
    TButton *buOk;
    TButton *buCancel;
    TBevel *Bevel1;
    TButton *buBrowse;
    TBevel *Bevel2;
    TOpenDialog *dlgOpen;
    TRadioGroup *rgDialect;
    void __fastcall buBrowseClick(TObject *Sender);
    void __fastcall FormCreate(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall TfmConnect(TComponent* Owner);
};

bool __fastcall ShowConnectForm(TIBDatabase *Database);

//---------------------------------------------------------------------------
#endif
 