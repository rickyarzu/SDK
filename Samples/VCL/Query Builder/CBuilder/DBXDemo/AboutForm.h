//---------------------------------------------------------------------------
#ifndef AboutFormH
#define AboutFormH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <ExtCtrls.hpp>
//---------------------------------------------------------------------------
class TfmAbout : public TForm
{
__published:	// IDE-managed Components
    TPanel *paButton;
    TPanel *paClient;
    TButton *buOK;
    TImage *imLogo;
    TLabel *laTitle;
    TLabel *laCopyright;
    TLabel *laInfo;
    TLabel *laURL;
    void __fastcall FormCreate(TObject *Sender);
    void __fastcall laURLClick(TObject *Sender);
public:		// User declarations
    __fastcall TfmAbout(TComponent* Owner);
};

void __fastcall ShowAboutBox(void);
#endif
 