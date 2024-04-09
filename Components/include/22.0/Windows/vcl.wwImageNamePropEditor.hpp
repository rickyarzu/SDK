// CodeGear C++Builder
// Copyright (c) 1995, 2024 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'vcl.wwImageNamePropEditor.pas' rev: 36.00 (Windows)

#ifndef Vcl_WwimagenamepropeditorHPP
#define Vcl_WwimagenamepropeditorHPP

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
#include <System.SysUtils.hpp>
#include <System.Types.hpp>
#include <DesignEditors.hpp>
#include <VCLEditors.hpp>
#include <Vcl.ImgList.hpp>
#include <System.Math.hpp>
#include <System.TypInfo.hpp>
#include <Vcl.Graphics.hpp>
#include <System.UITypes.hpp>
#include <Winapi.Windows.hpp>
#include <vcl.wwbutton.hpp>
#include <vcl.wwspeedbutton.hpp>
#include <vcl.wwdbnavigator.hpp>

//-- user supplied -----------------------------------------------------------

namespace Vcl
{
namespace Wwimagenamepropeditor
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TwwImageNameProperty;
//-- type declarations -------------------------------------------------------
#pragma pack(push,4)
class PASCALIMPLEMENTATION TwwImageNameProperty : public Designeditors::TStringProperty
{
	typedef Designeditors::TStringProperty inherited;
	
protected:
	virtual Vcl::Imglist::TCustomImageList* __fastcall GetImages();
	
public:
	virtual Designintf::TPropertyAttributes __fastcall GetAttributes();
	virtual void __fastcall SetValue(const System::UnicodeString Value)/* overload */;
	virtual void __fastcall GetValues(System::Classes::TGetStrProc Proc);
	int __fastcall GetPropDrawImageWidth(const Winapi::Windows::TRect &ARect);
	void __fastcall ListMeasureWidth(const System::UnicodeString Value, Vcl::Graphics::TCanvas* ACanvas, int &AWidth);
	void __fastcall ListMeasureHeight(const System::UnicodeString Value, Vcl::Graphics::TCanvas* ACanvas, int &AHeight);
	void __fastcall ListDrawValue(const System::UnicodeString Value, Vcl::Graphics::TCanvas* ACanvas, const Winapi::Windows::TRect &ARect, bool ASelected);
	void __fastcall PropDrawName(Vcl::Graphics::TCanvas* ACanvas, const Winapi::Windows::TRect &ARect, bool ASelected);
	void __fastcall PropDrawValue(Vcl::Graphics::TCanvas* ACanvas, const Winapi::Windows::TRect &ARect, bool ASelected);
	Winapi::Windows::TRect __fastcall PropDrawNameRect(const Winapi::Windows::TRect &ARect);
	Winapi::Windows::TRect __fastcall PropDrawValueRect(const Winapi::Windows::TRect &ARect);
public:
	/* TPropertyEditor.Create */ inline __fastcall virtual TwwImageNameProperty(const Designintf::_di_IDesigner ADesigner, int APropCount) : Designeditors::TStringProperty(ADesigner, APropCount) { }
	/* TPropertyEditor.Destroy */ inline __fastcall virtual ~TwwImageNameProperty() { }
	
	/* Hoisted overloads: */
	
public:
	inline void __fastcall  SetValue(const System::WideString Value){ Designeditors::TPropertyEditor::SetValue(Value); }
	
private:
	void *__ICustomPropertyListDrawing;	// Vcleditors::ICustomPropertyListDrawing 
	void *__ICustomPropertyDrawing80;	// Vcleditors::ICustomPropertyDrawing80 
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {BE2B8CF7-DDCA-4D4B-BE26-2396B969F8E0}
	operator Vcleditors::_di_ICustomPropertyListDrawing()
	{
		Vcleditors::_di_ICustomPropertyListDrawing intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator Vcleditors::ICustomPropertyListDrawing*(void) { return (Vcleditors::ICustomPropertyListDrawing*)&__ICustomPropertyListDrawing; }
	#endif
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {73100176-DF0B-4900-AA52-4E67D7D04895}
	operator Vcleditors::_di_ICustomPropertyDrawing80()
	{
		Vcleditors::_di_ICustomPropertyDrawing80 intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator Vcleditors::ICustomPropertyDrawing80*(void) { return (Vcleditors::ICustomPropertyDrawing80*)&__ICustomPropertyDrawing80; }
	#endif
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {E1A50419-1288-4B26-9EFA-6608A35F0824}
	operator Vcleditors::_di_ICustomPropertyDrawing()
	{
		Vcleditors::_di_ICustomPropertyDrawing intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator Vcleditors::ICustomPropertyDrawing*(void) { return (Vcleditors::ICustomPropertyDrawing*)&__ICustomPropertyDrawing80; }
	#endif
	
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
}	/* namespace Wwimagenamepropeditor */
}	/* namespace Vcl */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_VCL_WWIMAGENAMEPROPEDITOR)
using namespace Vcl::Wwimagenamepropeditor;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_VCL)
using namespace Vcl;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Vcl_WwimagenamepropeditorHPP
