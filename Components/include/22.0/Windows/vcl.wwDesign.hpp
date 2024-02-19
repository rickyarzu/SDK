// CodeGear C++Builder
// Copyright (c) 1995, 2023 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'vcl.wwDesign.pas' rev: 36.00 (Windows)

#ifndef Vcl_WwdesignHPP
#define Vcl_WwdesignHPP

#pragma delphiheader begin
#pragma option push
#if defined(__BORLANDC__) && !defined(__clang__)
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#endif
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <System.Win.Registry.hpp>
#include <System.IniFiles.hpp>
#include <DesignIntf.hpp>
#include <ToolsAPI.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <vcl.Wwcommon.hpp>
#include <vcl.wwintl.hpp>
#include <Vcl.Controls.hpp>
#include <System.Generics.Collections.hpp>
#include <Vcl.Forms.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>
#include <System.Types.hpp>

//-- user supplied -----------------------------------------------------------

namespace Vcl
{
namespace Wwdesign
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TwwDesignNotifier;
class DELPHICLASS TwwEmbarcaderoManager;
//-- type declarations -------------------------------------------------------
#pragma pack(push,4)
class PASCALIMPLEMENTATION TwwDesignNotifier : public Toolsapi::TNotifierObject
{
	typedef Toolsapi::TNotifierObject inherited;
	
public:
	void __fastcall ItemDeleted(const Designintf::_di_IDesigner ADesigner, System::Classes::TPersistent* AItem);
	void __fastcall ItemInserted(const Designintf::_di_IDesigner ADesigner, System::Classes::TPersistent* AItem);
	void __fastcall ItemsModified(const Designintf::_di_IDesigner ADesigner);
	void __fastcall SelectionChanged(const Designintf::_di_IDesigner ADesigner, const Designintf::_di_IDesignerSelections ASelection);
	void __fastcall DesignerOpened(const Designintf::_di_IDesigner ADesigner, bool AResurrecting);
	void __fastcall DesignerClosed(const Designintf::_di_IDesigner ADesigner, bool AGoingDormant);
public:
	/* TObject.Create */ inline __fastcall TwwDesignNotifier() : Toolsapi::TNotifierObject() { }
	/* TObject.Destroy */ inline __fastcall virtual ~TwwDesignNotifier() { }
	
private:
	void *__IDesignNotification;	// Designintf::IDesignNotification 
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {E8C9F739-5601-4ADD-9D95-594132D4CEFD}
	operator Designintf::_di_IDesignNotification()
	{
		Designintf::_di_IDesignNotification intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator Designintf::IDesignNotification*(void) { return (Designintf::IDesignNotification*)&__IDesignNotification; }
	#endif
	
};

#pragma pack(pop)

class PASCALIMPLEMENTATION TwwEmbarcaderoManager : public System::Classes::TComponent
{
	typedef System::Classes::TComponent inherited;
	
private:
	Vcl::Extctrls::TTimer* EmbarcaderoVersionTimer;
	TwwDesignNotifier* DesignNotifier;
	
public:
	static System::Generics::Collections::TObjectList__1<Vcl::Controls::TControl*>* GridCheckControls;
	__fastcall virtual TwwEmbarcaderoManager(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TwwEmbarcaderoManager();
	void __fastcall RegisterDesigner();
	void __fastcall UnregisterDesigner();
	void __fastcall TimerExpired(System::TObject* Sender);
};


//-- var, const, procedure ---------------------------------------------------
#define registryName L"InfoPower4kSydney"
extern DELPHI_PACKAGE void __fastcall wwSaveFormPosition(Vcl::Forms::TCustomForm* form, System::UnicodeString SectionName);
extern DELPHI_PACKAGE void __fastcall wwRestoreFormPosition(Vcl::Forms::TCustomForm* form, System::UnicodeString SectionName);
}	/* namespace Wwdesign */
}	/* namespace Vcl */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_VCL_WWDESIGN)
using namespace Vcl::Wwdesign;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_VCL)
using namespace Vcl;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Vcl_WwdesignHPP
