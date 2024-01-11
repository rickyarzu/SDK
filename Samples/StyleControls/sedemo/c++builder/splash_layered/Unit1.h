//---------------------------------------------------------------------------

#ifndef Unit1H
#define Unit1H
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <ExtCtrls.hpp>
#include <Graphics.hpp>
#include <jpeg.hpp>
#include "se_ani.hpp"
#include "se_effect.hpp"
#include "se_form.hpp"
#include "se_image.hpp"
#include "se_controls.hpp"
#include "se_pngimagelist.hpp"
//---------------------------------------------------------------------------
class TForm1 : public TForm
{
__published:	// IDE-managed Components
        TseLayeredSplashForm *seLayeredSplashForm1;
        TsePngImageStorage *sePngImageStorage1;
        void __fastcall FormKeyPress(TObject *Sender, char &Key);
        void __fastcall seImage1Click(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall TForm1(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm1 *Form1;
//---------------------------------------------------------------------------
#endif
