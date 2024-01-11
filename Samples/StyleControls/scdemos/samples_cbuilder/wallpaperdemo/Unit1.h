//---------------------------------------------------------------------------

#ifndef Unit1H
#define Unit1H
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include "scAdvancedControls.hpp"
#include "scControls.hpp"
#include "scImageCollection.hpp"
#include "scStyledForm.hpp"
#include "scStyleManager.hpp"
//---------------------------------------------------------------------------
class TForm1 : public TForm
{
__published:	// IDE-managed Components
	TscPanel *scPanel1;
	TscLabel *scLabel1;
	TscButton *scButton1;
	TscButton *scButton2;
	TscLabel *scLabel2;
	TscAdvancedListBox *scAdvancedListBox1;
	TscCheckBox *scCheckBox1;
	TscPanel *scPanel2;
	TscCheckBox *scCheckBox2;
	TscImageCollection *scImageCollection1;
	TscStyledForm *scStyledForm1;
	TscStyleManager *scStyleManager1;
	void __fastcall scButton2Click(TObject *Sender);
	void __fastcall scButton1Click(TObject *Sender);
	void __fastcall scCheckBox1Click(TObject *Sender);
	void __fastcall scCheckBox2Click(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TForm1(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm1 *Form1;
//---------------------------------------------------------------------------
#endif
