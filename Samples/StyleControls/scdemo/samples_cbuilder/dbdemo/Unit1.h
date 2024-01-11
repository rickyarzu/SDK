//---------------------------------------------------------------------------

#ifndef Unit1H
#define Unit1H
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include "scCalendar.hpp"
#include "scControls.hpp"
#include "scDBControls.hpp"
#include "scDBGrids.hpp"
#include "scExtControls.hpp"
#include "scGrids.hpp"
#include "scImageCollection.hpp"
#include "scStyledForm.hpp"
#include "scStyleManager.hpp"
#include <Data.DB.hpp>
#include <Datasnap.DBClient.hpp>
#include <Vcl.DBCtrls.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.Mask.hpp>
#include "scAdvancedControls.hpp"
//---------------------------------------------------------------------------
class TForm1 : public TForm
{
__published:	// IDE-managed Components
	TscDBText *scDBText1;
	TscDBEdit *scDBEdit1;
	TscDBComboBox *scDBComboBox1;
	TscDBTimeEdit *scDBTimeEdit1;
	TscDBDateEdit *scDBDateEdit1;
	TscDBCheckBox *scDBCheckBox1;
	TscPanel *scPanel1;
	TscLabel *scLabel3;
	TscComboBox *scComboBox1;
	TscCheckBox *scCheckBox1;
	TscCheckBox *scCheckBox2;
	TscCheckBox *scCheckBox3;
	TscLabel *scLabel5;
	TscComboBox *scComboBox2;
	TscDBSpinEdit *scDBSpinEdit1;
	TscDBProgressBar *scDBProgressBar1;
	TscDBTrackBar *scDBTrackBar1;
	TscDBMemo *scDBMemo1;
	TscLabel *scLabel4;
	TscDBGrid *scDBGrid1;
	TscDBNavigator *scDBNavigator1;
	TscCheckBox *scCheckBox4;
	TscCheckBox *scCheckBox5;
	TscCheckBox *scCheckBox6;
	TscPanel *scPanel4;
	TscDBTimeEdit *scDBTimeEdit2;
	TClientDataSet *ClientDataSet1;
	TDataSource *DataSource1;
	TscStyleManager *scStyleManager1;
	TscStyledForm *scStyledForm1;
	TClientDataSet *ClientDataSet2;
	TDataSource *DataSource2;
	TscImageCollection *scImageCollection1;
	void __fastcall FormCreate(TObject *Sender);
	void __fastcall scComboBox1Click(TObject *Sender);
	void __fastcall scCheckBox1Click(TObject *Sender);
	void __fastcall scCheckBox3Click(TObject *Sender);
	void __fastcall scCheckBox2Click(TObject *Sender);
	void __fastcall scCheckBox4Click(TObject *Sender);
	void __fastcall scCheckBox5Click(TObject *Sender);
	void __fastcall scCheckBox6Click(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TForm1(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm1 *Form1;
//---------------------------------------------------------------------------
#endif
