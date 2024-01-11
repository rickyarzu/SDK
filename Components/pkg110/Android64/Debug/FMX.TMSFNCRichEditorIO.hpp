// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCRichEditorIO.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncricheditorioHPP
#define Fmx_TmsfncricheditorioHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <System.SysUtils.hpp>
#include <FMX.TMSFNCRichEditor.hpp>
#include <FMX.TMSFNCRichEditorBase.hpp>
#include <System.StrUtils.hpp>
#include <FMX.Forms.hpp>
#include <FMX.TMSFNCCustomComponent.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.TMSFNCScrollControl.hpp>
#include <FMX.Controls.hpp>
#include <FMX.Types.hpp>
#include <System.Generics.Collections.hpp>
#include <System.Generics.Defaults.hpp>
#include <System.Types.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncricheditorio
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCRichEditorBaseEx;
class DELPHICLASS TNVComponent;
class DELPHICLASS TTMSFNCRichEditorIO;
class DELPHICLASS TTMSFNCRichEditorHTMLIO;
class DELPHICLASS TTMSFNCRichEditorRTFIO;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TTMSFNCRichEditorBaseEx : public Fmx::Tmsfncricheditorbase::TTMSFNCRichEditorBase
{
	typedef Fmx::Tmsfncricheditorbase::TTMSFNCRichEditorBase inherited;
	
public:
	/* TTMSFNCRichEditorBase.Create */ inline __fastcall virtual TTMSFNCRichEditorBaseEx(System::Classes::TComponent* AOwner)/* overload */ : Fmx::Tmsfncricheditorbase::TTMSFNCRichEditorBase(AOwner) { }
	/* TTMSFNCRichEditorBase.Destroy */ inline __fastcall virtual ~TTMSFNCRichEditorBaseEx() { }
	
};


class PASCALIMPLEMENTATION TNVComponent : public Fmx::Tmsfnccustomcomponent::TTMSFNCCustomComponent
{
	typedef Fmx::Tmsfnccustomcomponent::TTMSFNCCustomComponent inherited;
	
protected:
	virtual NativeUInt __fastcall GetInstance();
public:
	/* TTMSFNCCustomComponent.Create */ inline __fastcall virtual TNVComponent(System::Classes::TComponent* AOwner) : Fmx::Tmsfnccustomcomponent::TTMSFNCCustomComponent(AOwner) { }
	
public:
	/* TControl.Destroy */ inline __fastcall virtual ~TNVComponent() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCRichEditorIO : public TNVComponent
{
	typedef TNVComponent inherited;
	
private:
	Fmx::Tmsfncricheditorbase::TTMSFNCRichEditorBase* FRichEditor;
	
protected:
	virtual void __fastcall SetRichEditor(Fmx::Tmsfncricheditorbase::TTMSFNCRichEditorBase* AValue);
	virtual void __fastcall Notification(System::Classes::TComponent* AComponent, System::Classes::TOperation AOperation);
	
public:
	__fastcall virtual TTMSFNCRichEditorIO(System::Classes::TComponent* AOwner);
	__property Fmx::Tmsfncricheditorbase::TTMSFNCRichEditorBase* RichEditor = {read=FRichEditor, write=SetRichEditor};
	virtual void __fastcall Save(System::Classes::TStream* AStream) = 0 /* overload */;
public:
	/* TControl.Destroy */ inline __fastcall virtual ~TTMSFNCRichEditorIO() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCRichEditorHTMLIO : public TTMSFNCRichEditorIO
{
	typedef TTMSFNCRichEditorIO inherited;
	
private:
	Fmx::Tmsfncricheditor::TImageNotFoundEvent FOnImageNotFound;
	bool FSpaceAsNbSp;
	bool FPlainHTML;
	System::UnicodeString FBodyClass;
	System::Classes::TStrings* FHead;
	System::UnicodeString FTarget;
	void __fastcall SetHead(System::Classes::TStrings* const Value);
	
protected:
	void __fastcall ImageNotFound(System::TObject* Sender, System::UnicodeString ImageName, System::UnicodeString &ReplaceImage);
	
public:
	bool FInlineImages;
	__fastcall virtual TTMSFNCRichEditorHTMLIO(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCRichEditorHTMLIO();
	HIDESBASE virtual void __fastcall Save(const System::UnicodeString FileName)/* overload */;
	HIDESBASE virtual void __fastcall Save(const System::UnicodeString FileName, System::UnicodeString ImgPath)/* overload */;
	HIDESBASE virtual void __fastcall Save(const System::UnicodeString FileName, System::Sysutils::TEncoding* AEncoding)/* overload */;
	HIDESBASE virtual void __fastcall Save(const System::UnicodeString FileName, System::UnicodeString ImgPath, System::Sysutils::TEncoding* AEncoding)/* overload */;
	virtual void __fastcall Save(System::Classes::TStream* AStream)/* overload */;
	void __fastcall Load(const System::UnicodeString FileName, System::Sysutils::TEncoding* Encoding = (System::Sysutils::TEncoding*)(0x0))/* overload */;
	void __fastcall Load(System::Classes::TStream* AStream, System::Sysutils::TEncoding* Encoding = (System::Sysutils::TEncoding*)(0x0))/* overload */;
	void __fastcall LoadHTML(System::UnicodeString HtmlValue);
	void __fastcall InsertHTML(System::UnicodeString HtmlValue);
	
__published:
	__property RichEditor;
	__property System::Classes::TStrings* Head = {read=FHead, write=SetHead};
	__property System::UnicodeString BodyClass = {read=FBodyClass, write=FBodyClass};
	__property System::UnicodeString HyperlinkTarget = {read=FTarget, write=FTarget};
	__property bool InlineImages = {read=FInlineImages, write=FInlineImages, default=0};
	__property bool PlainHTML = {read=FPlainHTML, write=FPlainHTML, default=0};
	__property bool SpaceAsNbSp = {read=FSpaceAsNbSp, write=FSpaceAsNbSp, default=1};
	__property Fmx::Tmsfncricheditor::TImageNotFoundEvent OnImageNotFound = {read=FOnImageNotFound, write=FOnImageNotFound};
};


class PASCALIMPLEMENTATION TTMSFNCRichEditorRTFIO : public TTMSFNCRichEditorIO
{
	typedef TTMSFNCRichEditorIO inherited;
	
public:
	void __fastcall Load(const System::UnicodeString FileName)/* overload */;
	void __fastcall Load(System::Classes::TStream* AStream)/* overload */;
	HIDESBASE virtual void __fastcall Save(const System::UnicodeString FileName)/* overload */;
	virtual void __fastcall Save(System::Classes::TStream* AStream)/* overload */;
	
__published:
	__property RichEditor;
public:
	/* TTMSFNCRichEditorIO.Create */ inline __fastcall virtual TTMSFNCRichEditorRTFIO(System::Classes::TComponent* AOwner) : TTMSFNCRichEditorIO(AOwner) { }
	
public:
	/* TControl.Destroy */ inline __fastcall virtual ~TTMSFNCRichEditorRTFIO() { }
	
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Tmsfncricheditorio */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCRICHEDITORIO)
using namespace Fmx::Tmsfncricheditorio;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncricheditorioHPP
