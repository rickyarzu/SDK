﻿// CodeGear C++Builder
// Copyright (c) 1995, 2024 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'vcl.wwprppic.pas' rev: 36.00 (Windows)

#ifndef vcl_wwprppicHPP
#define vcl_wwprppicHPP

#pragma delphiheader begin
#pragma option push
#if defined(__BORLANDC__) && !defined(__clang__)
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#endif
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.SysUtils.hpp>
#include <Winapi.Windows.hpp>
#include <Winapi.Messages.hpp>
#include <System.Classes.hpp>
#include <Vcl.Graphics.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.Dialogs.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Data.DB.hpp>
#include <Vcl.Buttons.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.Mask.hpp>
#include <Vcl.Grids.hpp>
#include <vcl.wwdbedit.hpp>
#include <vcl.wwdotdot.hpp>
#include <vcl.wwdbigrd.hpp>
#include <vcl.Wwpicdb.hpp>
#include <vcl.wwdbgrid.hpp>
#include <System.IniFiles.hpp>
#include <System.Win.Registry.hpp>
#include <vcl.wwedtpic.hpp>
#include <vcl.ipdsgn.hpp>

//-- user supplied -----------------------------------------------------------

namespace Vcl
{
namespace Wwprppic
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TwwEditPictureForm;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TwwEditPictureForm : public Vcl::Forms::TForm
{
	typedef Vcl::Forms::TForm inherited;
	
__published:
	Vcl::Buttons::TBitBtn* OKBtn;
	Vcl::Buttons::TBitBtn* CancelBtn;
	Vcl::Stdctrls::TGroupBox* GroupBox1;
	Vcl::Stdctrls::TLabel* Label2;
	Vcl::Stdctrls::TMemo* PictureDescription;
	Vcl::Stdctrls::TButton* Button1;
	Vcl::Stdctrls::TButton* Button2;
	Vcl::Stdctrls::TGroupBox* GroupBox2;
	Vcl::Wwdbedit::TwwDBEdit* wwpictureEdit1;
	Vcl::Stdctrls::TLabel* Label1;
	Vcl::Stdctrls::TButton* Button3;
	Vcl::Extctrls::TPanel* Status;
	Vcl::Stdctrls::TCheckBox* AutoFill;
	Vcl::Stdctrls::TButton* Button4;
	Vcl::Wwdotdot::TwwDBComboDlg* NewPicture;
	void __fastcall NewPictureChange(System::TObject* Sender);
	void __fastcall wwpictureEdit1Change(System::TObject* Sender);
	void __fastcall Button1Click(System::TObject* Sender);
	void __fastcall FormShow(System::TObject* Sender);
	void __fastcall Button2Click(System::TObject* Sender);
	void __fastcall wwdblookupComboDlg1Change(System::TObject* Sender);
	void __fastcall AutoFillClick(System::TObject* Sender);
	void __fastcall Button3Click(System::TObject* Sender);
	void __fastcall Button4Click(System::TObject* Sender);
	void __fastcall FormKeyDown(System::TObject* Sender, System::Word &Key, System::Classes::TShiftState Shift);
	void __fastcall NewPictureCustomDlg(System::TObject* Sender);
	void __fastcall FormCreate(System::TObject* Sender);
	void __fastcall FormDestroy(System::TObject* Sender);
	void __fastcall NewPictureExit(System::TObject* Sender);
	
private:
	Vcl::Stdctrls::TCustomEdit* Component;
	System::UnicodeString OrigPictureMask;
	bool OrigAutoFill;
	void __fastcall RefreshDescription();
public:
	/* TCustomForm.Create */ inline __fastcall virtual TwwEditPictureForm(System::Classes::TComponent* AOwner) : Vcl::Forms::TForm(AOwner) { }
	/* TCustomForm.CreateNew */ inline __fastcall virtual TwwEditPictureForm(System::Classes::TComponent* AOwner, int Dummy) : Vcl::Forms::TForm(AOwner, Dummy) { }
	/* TCustomForm.CreateScaledNew */ inline __fastcall virtual TwwEditPictureForm(System::Classes::TComponent* AOwner, int ADPI, int Dummy) : Vcl::Forms::TForm(AOwner, ADPI, Dummy) { }
	/* TCustomForm.Destroy */ inline __fastcall virtual ~TwwEditPictureForm() { }
	
public:
	/* TWinControl.CreateParented */ inline __fastcall TwwEditPictureForm(HWND ParentWindow) : Vcl::Forms::TForm(ParentWindow) { }
	
};


//-- var, const, procedure ---------------------------------------------------
extern DELPHI_PACKAGE TwwEditPictureForm* wwEditPictureForm;
extern DELPHI_PACKAGE bool __fastcall wwPrpEdit_PictureMask(Vcl::Wwdbedit::TwwCustomMaskEdit* AComponent);
extern DELPHI_PACKAGE bool __fastcall wwPrpEdit_PictureMaskGen(Vcl::Stdctrls::TCustomEdit* AComponent);
}	/* namespace Wwprppic */
}	/* namespace Vcl */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_VCL_WWPRPPIC)
using namespace Vcl::Wwprppic;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_VCL)
using namespace Vcl;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// vcl_wwprppicHPP
