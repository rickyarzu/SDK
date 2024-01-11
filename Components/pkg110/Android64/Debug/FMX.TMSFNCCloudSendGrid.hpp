// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCCloudSendGrid.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfnccloudsendgridHPP
#define Fmx_TmsfnccloudsendgridHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <FMX.TMSFNCCloudBase.hpp>
#include <FMX.TMSFNCCloudOAuth.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.TMSFNCUtils.hpp>
#include <FMX.TMSFNCGraphicsTypes.hpp>
#include <FMX.TMSFNCGraphics.hpp>
#include <System.SysUtils.hpp>
#include <System.JSON.hpp>
#include <System.Generics.Collections.hpp>
#include <System.Generics.Defaults.hpp>
#include <System.Types.hpp>
#include <FMX.TMSFNCCustomComponent.hpp>
#include <FMX.Controls.hpp>
#include <FMX.Types.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfnccloudsendgrid
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCCloudSendGridAttachments;
class DELPHICLASS TTMSFNCCloudSendGridContents;
class DELPHICLASS TTMSFNCCloudSendGridReplyToList;
class DELPHICLASS TTMSFNCCloudSendGridBCCList;
class DELPHICLASS TTMSFNCCloudSendGridCCList;
class DELPHICLASS TTMSFNCCloudSendGridRecipientList;
class DELPHICLASS TTMSFNCCloudSendGridPersonList;
class DELPHICLASS TTMSFNCCloudSendGridPerson;
class DELPHICLASS TTMSFNCCloudSendGridRecipient;
class DELPHICLASS TTMSFNCCloudSendGridCC;
class DELPHICLASS TTMSFNCCloudSendGridBCC;
class DELPHICLASS TTMSFNCCloudSendGridReplyTo;
class DELPHICLASS TTMSFNCCloudSendGridContent;
class DELPHICLASS TTMSFNCCloudSendGridAttachment;
class DELPHICLASS TTMSFNCCloudSendGridMailTemplate;
class DELPHICLASS TTMSFNCCustomCloudSendGrid;
class DELPHICLASS TTMSFNCCloudSendGrid;
//-- type declarations -------------------------------------------------------
enum DECLSPEC_DENUM TTMSFNCCloudSendGridType : unsigned char { sgTo, sgCC, sgBCC, sgFrom, sgReplyTo };

enum DECLSPEC_DENUM TTMSFNCCloudSendGridAttachmentDisposition : unsigned char { adInline, adAttachment };

class PASCALIMPLEMENTATION TTMSFNCCloudSendGridAttachments : public System::Generics::Collections::TObjectList__1<TTMSFNCCloudSendGridAttachment*>
{
	typedef System::Generics::Collections::TObjectList__1<TTMSFNCCloudSendGridAttachment*> inherited;
	
public:
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudSendGrid_TTMSFNCCloudSendGridAttachment>.Create */ inline __fastcall TTMSFNCCloudSendGridAttachments()/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudSendGridAttachment*>() { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudSendGrid_TTMSFNCCloudSendGridAttachment>.Create */ inline __fastcall TTMSFNCCloudSendGridAttachments(bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudSendGridAttachment*>(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudSendGrid_TTMSFNCCloudSendGridAttachment>.Create */ inline __fastcall TTMSFNCCloudSendGridAttachments(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCloudSendGridAttachment*> > AComparer, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudSendGridAttachment*>(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudSendGrid_TTMSFNCCloudSendGridAttachment>.Create */ inline __fastcall TTMSFNCCloudSendGridAttachments(System::Generics::Collections::TEnumerable__1<TTMSFNCCloudSendGridAttachment*>* const Collection, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudSendGridAttachment*>(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudSendGrid_TTMSFNCCloudSendGridAttachment>.Destroy */ inline __fastcall virtual ~TTMSFNCCloudSendGridAttachments() { }
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudSendGrid_TTMSFNCCloudSendGridAttachment>.Create */ inline __fastcall TTMSFNCCloudSendGridAttachments(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCloudSendGridAttachment*> > AComparer)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudSendGridAttachment*>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudSendGrid_TTMSFNCCloudSendGridAttachment>.Create */ inline __fastcall TTMSFNCCloudSendGridAttachments(System::Generics::Collections::TEnumerable__1<TTMSFNCCloudSendGridAttachment*>* const Collection)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudSendGridAttachment*>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudSendGrid_TTMSFNCCloudSendGridAttachment>.Create */ inline __fastcall TTMSFNCCloudSendGridAttachments(TTMSFNCCloudSendGridAttachment* const *Values, const int Values_High)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudSendGridAttachment*>(Values, Values_High) { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudSendGridContents : public System::Generics::Collections::TObjectList__1<TTMSFNCCloudSendGridContent*>
{
	typedef System::Generics::Collections::TObjectList__1<TTMSFNCCloudSendGridContent*> inherited;
	
public:
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudSendGrid_TTMSFNCCloudSendGridContent>.Create */ inline __fastcall TTMSFNCCloudSendGridContents()/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudSendGridContent*>() { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudSendGrid_TTMSFNCCloudSendGridContent>.Create */ inline __fastcall TTMSFNCCloudSendGridContents(bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudSendGridContent*>(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudSendGrid_TTMSFNCCloudSendGridContent>.Create */ inline __fastcall TTMSFNCCloudSendGridContents(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCloudSendGridContent*> > AComparer, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudSendGridContent*>(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudSendGrid_TTMSFNCCloudSendGridContent>.Create */ inline __fastcall TTMSFNCCloudSendGridContents(System::Generics::Collections::TEnumerable__1<TTMSFNCCloudSendGridContent*>* const Collection, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudSendGridContent*>(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudSendGrid_TTMSFNCCloudSendGridContent>.Destroy */ inline __fastcall virtual ~TTMSFNCCloudSendGridContents() { }
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudSendGrid_TTMSFNCCloudSendGridContent>.Create */ inline __fastcall TTMSFNCCloudSendGridContents(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCloudSendGridContent*> > AComparer)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudSendGridContent*>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudSendGrid_TTMSFNCCloudSendGridContent>.Create */ inline __fastcall TTMSFNCCloudSendGridContents(System::Generics::Collections::TEnumerable__1<TTMSFNCCloudSendGridContent*>* const Collection)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudSendGridContent*>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudSendGrid_TTMSFNCCloudSendGridContent>.Create */ inline __fastcall TTMSFNCCloudSendGridContents(TTMSFNCCloudSendGridContent* const *Values, const int Values_High)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudSendGridContent*>(Values, Values_High) { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudSendGridReplyToList : public System::Generics::Collections::TList__1<TTMSFNCCloudSendGridReplyTo*>
{
	typedef System::Generics::Collections::TList__1<TTMSFNCCloudSendGridReplyTo*> inherited;
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudSendGrid_TTMSFNCCloudSendGridReplyTo>.Create */ inline __fastcall TTMSFNCCloudSendGridReplyToList()/* overload */ : System::Generics::Collections::TList__1<TTMSFNCCloudSendGridReplyTo*>() { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudSendGrid_TTMSFNCCloudSendGridReplyTo>.Create */ inline __fastcall TTMSFNCCloudSendGridReplyToList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCloudSendGridReplyTo*> > AComparer)/* overload */ : System::Generics::Collections::TList__1<TTMSFNCCloudSendGridReplyTo*>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudSendGrid_TTMSFNCCloudSendGridReplyTo>.Create */ inline __fastcall TTMSFNCCloudSendGridReplyToList(System::Generics::Collections::TEnumerable__1<TTMSFNCCloudSendGridReplyTo*>* const Collection)/* overload */ : System::Generics::Collections::TList__1<TTMSFNCCloudSendGridReplyTo*>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudSendGrid_TTMSFNCCloudSendGridReplyTo>.Create */ inline __fastcall TTMSFNCCloudSendGridReplyToList(TTMSFNCCloudSendGridReplyTo* const *Values, const int Values_High)/* overload */ : System::Generics::Collections::TList__1<TTMSFNCCloudSendGridReplyTo*>(Values, Values_High) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudSendGrid_TTMSFNCCloudSendGridReplyTo>.Destroy */ inline __fastcall virtual ~TTMSFNCCloudSendGridReplyToList() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudSendGridBCCList : public System::Generics::Collections::TList__1<TTMSFNCCloudSendGridBCC*>
{
	typedef System::Generics::Collections::TList__1<TTMSFNCCloudSendGridBCC*> inherited;
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudSendGrid_TTMSFNCCloudSendGridBCC>.Create */ inline __fastcall TTMSFNCCloudSendGridBCCList()/* overload */ : System::Generics::Collections::TList__1<TTMSFNCCloudSendGridBCC*>() { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudSendGrid_TTMSFNCCloudSendGridBCC>.Create */ inline __fastcall TTMSFNCCloudSendGridBCCList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCloudSendGridBCC*> > AComparer)/* overload */ : System::Generics::Collections::TList__1<TTMSFNCCloudSendGridBCC*>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudSendGrid_TTMSFNCCloudSendGridBCC>.Create */ inline __fastcall TTMSFNCCloudSendGridBCCList(System::Generics::Collections::TEnumerable__1<TTMSFNCCloudSendGridBCC*>* const Collection)/* overload */ : System::Generics::Collections::TList__1<TTMSFNCCloudSendGridBCC*>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudSendGrid_TTMSFNCCloudSendGridBCC>.Create */ inline __fastcall TTMSFNCCloudSendGridBCCList(TTMSFNCCloudSendGridBCC* const *Values, const int Values_High)/* overload */ : System::Generics::Collections::TList__1<TTMSFNCCloudSendGridBCC*>(Values, Values_High) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudSendGrid_TTMSFNCCloudSendGridBCC>.Destroy */ inline __fastcall virtual ~TTMSFNCCloudSendGridBCCList() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudSendGridCCList : public System::Generics::Collections::TList__1<TTMSFNCCloudSendGridCC*>
{
	typedef System::Generics::Collections::TList__1<TTMSFNCCloudSendGridCC*> inherited;
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudSendGrid_TTMSFNCCloudSendGridCC>.Create */ inline __fastcall TTMSFNCCloudSendGridCCList()/* overload */ : System::Generics::Collections::TList__1<TTMSFNCCloudSendGridCC*>() { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudSendGrid_TTMSFNCCloudSendGridCC>.Create */ inline __fastcall TTMSFNCCloudSendGridCCList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCloudSendGridCC*> > AComparer)/* overload */ : System::Generics::Collections::TList__1<TTMSFNCCloudSendGridCC*>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudSendGrid_TTMSFNCCloudSendGridCC>.Create */ inline __fastcall TTMSFNCCloudSendGridCCList(System::Generics::Collections::TEnumerable__1<TTMSFNCCloudSendGridCC*>* const Collection)/* overload */ : System::Generics::Collections::TList__1<TTMSFNCCloudSendGridCC*>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudSendGrid_TTMSFNCCloudSendGridCC>.Create */ inline __fastcall TTMSFNCCloudSendGridCCList(TTMSFNCCloudSendGridCC* const *Values, const int Values_High)/* overload */ : System::Generics::Collections::TList__1<TTMSFNCCloudSendGridCC*>(Values, Values_High) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudSendGrid_TTMSFNCCloudSendGridCC>.Destroy */ inline __fastcall virtual ~TTMSFNCCloudSendGridCCList() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudSendGridRecipientList : public System::Generics::Collections::TList__1<TTMSFNCCloudSendGridRecipient*>
{
	typedef System::Generics::Collections::TList__1<TTMSFNCCloudSendGridRecipient*> inherited;
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudSendGrid_TTMSFNCCloudSendGridRecipient>.Create */ inline __fastcall TTMSFNCCloudSendGridRecipientList()/* overload */ : System::Generics::Collections::TList__1<TTMSFNCCloudSendGridRecipient*>() { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudSendGrid_TTMSFNCCloudSendGridRecipient>.Create */ inline __fastcall TTMSFNCCloudSendGridRecipientList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCloudSendGridRecipient*> > AComparer)/* overload */ : System::Generics::Collections::TList__1<TTMSFNCCloudSendGridRecipient*>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudSendGrid_TTMSFNCCloudSendGridRecipient>.Create */ inline __fastcall TTMSFNCCloudSendGridRecipientList(System::Generics::Collections::TEnumerable__1<TTMSFNCCloudSendGridRecipient*>* const Collection)/* overload */ : System::Generics::Collections::TList__1<TTMSFNCCloudSendGridRecipient*>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudSendGrid_TTMSFNCCloudSendGridRecipient>.Create */ inline __fastcall TTMSFNCCloudSendGridRecipientList(TTMSFNCCloudSendGridRecipient* const *Values, const int Values_High)/* overload */ : System::Generics::Collections::TList__1<TTMSFNCCloudSendGridRecipient*>(Values, Values_High) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudSendGrid_TTMSFNCCloudSendGridRecipient>.Destroy */ inline __fastcall virtual ~TTMSFNCCloudSendGridRecipientList() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudSendGridPersonList : public System::Generics::Collections::TObjectList__1<TTMSFNCCloudSendGridPerson*>
{
	typedef System::Generics::Collections::TObjectList__1<TTMSFNCCloudSendGridPerson*> inherited;
	
public:
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudSendGrid_TTMSFNCCloudSendGridPerson>.Create */ inline __fastcall TTMSFNCCloudSendGridPersonList()/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudSendGridPerson*>() { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudSendGrid_TTMSFNCCloudSendGridPerson>.Create */ inline __fastcall TTMSFNCCloudSendGridPersonList(bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudSendGridPerson*>(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudSendGrid_TTMSFNCCloudSendGridPerson>.Create */ inline __fastcall TTMSFNCCloudSendGridPersonList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCloudSendGridPerson*> > AComparer, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudSendGridPerson*>(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudSendGrid_TTMSFNCCloudSendGridPerson>.Create */ inline __fastcall TTMSFNCCloudSendGridPersonList(System::Generics::Collections::TEnumerable__1<TTMSFNCCloudSendGridPerson*>* const Collection, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudSendGridPerson*>(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudSendGrid_TTMSFNCCloudSendGridPerson>.Destroy */ inline __fastcall virtual ~TTMSFNCCloudSendGridPersonList() { }
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudSendGrid_TTMSFNCCloudSendGridPerson>.Create */ inline __fastcall TTMSFNCCloudSendGridPersonList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCloudSendGridPerson*> > AComparer)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudSendGridPerson*>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudSendGrid_TTMSFNCCloudSendGridPerson>.Create */ inline __fastcall TTMSFNCCloudSendGridPersonList(System::Generics::Collections::TEnumerable__1<TTMSFNCCloudSendGridPerson*>* const Collection)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudSendGridPerson*>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudSendGrid_TTMSFNCCloudSendGridPerson>.Create */ inline __fastcall TTMSFNCCloudSendGridPersonList(TTMSFNCCloudSendGridPerson* const *Values, const int Values_High)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudSendGridPerson*>(Values, Values_High) { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudSendGridPerson : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	System::UnicodeString FName;
	System::UnicodeString FEmail;
	TTMSFNCCloudSendGridType FPersonType;
	void __fastcall SetEmail(const System::UnicodeString Value);
	void __fastcall SetName(const System::UnicodeString Value);
	
protected:
	__property TTMSFNCCloudSendGridType PersonType = {read=FPersonType, default=3};
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual TTMSFNCCloudSendGridPerson();
	System::UnicodeString __fastcall ToJSON();
	
__published:
	__property System::UnicodeString Email = {read=FEmail, write=SetEmail};
	__property System::UnicodeString Name = {read=FName, write=SetName};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTMSFNCCloudSendGridPerson() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudSendGridRecipient : public TTMSFNCCloudSendGridPerson
{
	typedef TTMSFNCCloudSendGridPerson inherited;
	
public:
	__fastcall virtual TTMSFNCCloudSendGridRecipient();
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTMSFNCCloudSendGridRecipient() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudSendGridCC : public TTMSFNCCloudSendGridPerson
{
	typedef TTMSFNCCloudSendGridPerson inherited;
	
public:
	__fastcall virtual TTMSFNCCloudSendGridCC();
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTMSFNCCloudSendGridCC() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudSendGridBCC : public TTMSFNCCloudSendGridPerson
{
	typedef TTMSFNCCloudSendGridPerson inherited;
	
public:
	__fastcall virtual TTMSFNCCloudSendGridBCC();
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTMSFNCCloudSendGridBCC() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudSendGridReplyTo : public TTMSFNCCloudSendGridPerson
{
	typedef TTMSFNCCloudSendGridPerson inherited;
	
public:
	__fastcall virtual TTMSFNCCloudSendGridReplyTo();
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTMSFNCCloudSendGridReplyTo() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudSendGridContent : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	System::UnicodeString FContentType;
	System::UnicodeString FValue;
	void __fastcall SetContentType(const System::UnicodeString Value);
	void __fastcall SetValue(const System::UnicodeString Value);
	
__published:
	__property System::UnicodeString ContentType = {read=FContentType, write=SetContentType};
	__property System::UnicodeString Value = {read=FValue, write=SetValue};
	
public:
	System::UnicodeString __fastcall ToJSON();
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTMSFNCCloudSendGridContent() { }
	
public:
	/* TObject.Create */ inline __fastcall TTMSFNCCloudSendGridContent() : System::Classes::TPersistent() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudSendGridAttachment : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	System::UnicodeString FAttachmentType;
	System::UnicodeString FFileName;
	TTMSFNCCloudSendGridAttachmentDisposition FDisposition;
	System::UnicodeString FContent;
	System::UnicodeString FID;
	void __fastcall SetAttachmentType(const System::UnicodeString Value);
	void __fastcall SetContent(const System::UnicodeString Value);
	void __fastcall SetDisposition(const TTMSFNCCloudSendGridAttachmentDisposition Value);
	void __fastcall SetFileName(const System::UnicodeString Value);
	void __fastcall SetID(const System::UnicodeString Value);
	
__published:
	__property System::UnicodeString ID = {read=FID, write=SetID};
	__property System::UnicodeString Content = {read=FContent, write=SetContent};
	__property System::UnicodeString FileName = {read=FFileName, write=SetFileName};
	__property System::UnicodeString AttachmentType = {read=FAttachmentType, write=SetAttachmentType};
	__property TTMSFNCCloudSendGridAttachmentDisposition Disposition = {read=FDisposition, write=SetDisposition, nodefault};
	
public:
	System::UnicodeString __fastcall ToJSON();
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTMSFNCCloudSendGridAttachment() { }
	
public:
	/* TObject.Create */ inline __fastcall TTMSFNCCloudSendGridAttachment() : System::Classes::TPersistent() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudSendGridMailTemplate : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	TTMSFNCCloudSendGridReplyTo* FReplyTo;
	TTMSFNCCloudSendGridPerson* FFrom;
	TTMSFNCCloudSendGridCCList* FCCList;
	TTMSFNCCloudSendGridRecipientList* FRecipientsList;
	TTMSFNCCloudSendGridReplyToList* FReplyToList;
	TTMSFNCCloudSendGridBCCList* FBCCList;
	TTMSFNCCloudSendGridPersonList* FPersons;
	System::Classes::TStringList* FCategories;
	System::UnicodeString FSubject;
	TTMSFNCCloudSendGridAttachments* FAttachments;
	TTMSFNCCloudSendGridContents* FContent;
	System::TDateTime FSendAt;
	System::UnicodeString FTemplateID;
	void __fastcall SetFrom(TTMSFNCCloudSendGridPerson* const Value);
	void __fastcall SetReplyTo(TTMSFNCCloudSendGridReplyTo* const Value);
	void __fastcall SetSubject(const System::UnicodeString Value);
	void __fastcall SetSendAt(const System::TDateTime Value);
	void __fastcall SetTemplateID(const System::UnicodeString Value);
	
protected:
	__property TTMSFNCCloudSendGridPersonList* Persons = {read=FPersons};
	
__published:
	__property TTMSFNCCloudSendGridPerson* From = {read=FFrom, write=SetFrom};
	__property TTMSFNCCloudSendGridReplyTo* ReplyTo = {read=FReplyTo, write=SetReplyTo};
	__property System::UnicodeString Subject = {read=FSubject, write=SetSubject};
	__property System::Classes::TStringList* Categories = {read=FCategories};
	__property System::UnicodeString TemplateID = {read=FTemplateID, write=SetTemplateID};
	__property System::TDateTime SendAt = {read=FSendAt, write=SetSendAt};
	
public:
	__fastcall TTMSFNCCloudSendGridMailTemplate();
	__fastcall virtual ~TTMSFNCCloudSendGridMailTemplate();
	__property TTMSFNCCloudSendGridRecipientList* RecipientsList = {read=FRecipientsList};
	__property TTMSFNCCloudSendGridCCList* CCList = {read=FCCList};
	__property TTMSFNCCloudSendGridBCCList* BCCList = {read=FBCCList};
	__property TTMSFNCCloudSendGridReplyToList* ReplyToList = {read=FReplyToList};
	__property TTMSFNCCloudSendGridContents* Content = {read=FContent};
	__property TTMSFNCCloudSendGridAttachments* Attachments = {read=FAttachments};
	TTMSFNCCloudSendGridRecipient* __fastcall AddRecipient()/* overload */;
	TTMSFNCCloudSendGridRecipient* __fastcall AddRecipient(System::UnicodeString AEmailAddress, System::UnicodeString AName = System::UnicodeString())/* overload */;
	TTMSFNCCloudSendGridCC* __fastcall AddCC()/* overload */;
	TTMSFNCCloudSendGridCC* __fastcall AddCC(System::UnicodeString AEmailAddress, System::UnicodeString AName = System::UnicodeString())/* overload */;
	TTMSFNCCloudSendGridBCC* __fastcall AddBCC()/* overload */;
	TTMSFNCCloudSendGridBCC* __fastcall AddBCC(System::UnicodeString AEmailAddress, System::UnicodeString AName = System::UnicodeString())/* overload */;
	TTMSFNCCloudSendGridReplyTo* __fastcall AddReplyTo()/* overload */;
	TTMSFNCCloudSendGridReplyTo* __fastcall AddReplyTo(System::UnicodeString AEmailAddress, System::UnicodeString AName = System::UnicodeString())/* overload */;
	TTMSFNCCloudSendGridContent* __fastcall AddContent(System::UnicodeString AContent = System::UnicodeString(), System::UnicodeString AType = System::UnicodeString());
	TTMSFNCCloudSendGridAttachment* __fastcall AddAttachment(System::UnicodeString AFile, TTMSFNCCloudSendGridAttachmentDisposition ADisposition = (TTMSFNCCloudSendGridAttachmentDisposition)(0x1), System::UnicodeString AID = System::UnicodeString());
	System::UnicodeString __fastcall ToJSON();
};


typedef void __fastcall (__closure *TTMSFNCCloudSendGridErrorEvent)(System::TObject* Sender, System::UnicodeString AErrorMessage);

class PASCALIMPLEMENTATION TTMSFNCCustomCloudSendGrid : public Fmx::Tmsfnccloudbase::TTMSFNCCloudBase
{
	typedef Fmx::Tmsfnccloudbase::TTMSFNCCloudBase inherited;
	
private:
	TTMSFNCCloudSendGridMailTemplate* FTemplate;
	System::UnicodeString FAPIKey;
	System::Classes::TNotifyEvent FOnSendSuccess;
	TTMSFNCCloudSendGridErrorEvent FOnError;
	void __fastcall SetAPIKey(const System::UnicodeString Value);
	
protected:
	virtual NativeUInt __fastcall GetInstance();
	virtual System::UnicodeString __fastcall GetVersion();
	__property System::UnicodeString APIKey = {read=FAPIKey, write=SetAPIKey};
	__property TTMSFNCCloudSendGridMailTemplate* Template = {read=FTemplate};
	__property TTMSFNCCloudSendGridErrorEvent OnError = {read=FOnError, write=FOnError};
	__property System::Classes::TNotifyEvent OnSendSuccess = {read=FOnSendSuccess, write=FOnSendSuccess};
	void __fastcall DoSendMail(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	
public:
	__fastcall virtual TTMSFNCCustomCloudSendGrid(System::Classes::TComponent* AOwner)/* overload */;
	__fastcall virtual ~TTMSFNCCustomCloudSendGrid();
	void __fastcall SendMail();
public:
	/* TTMSFNCCustomCloudBase.Create */ inline __fastcall virtual TTMSFNCCustomCloudSendGrid()/* overload */ : Fmx::Tmsfnccloudbase::TTMSFNCCloudBase() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCCloudSendGrid : public TTMSFNCCustomCloudSendGrid
{
	typedef TTMSFNCCustomCloudSendGrid inherited;
	
__published:
	__property APIKey = {default=0};
	__property Template;
	__property OnSendSuccess;
	__property OnError;
public:
	/* TTMSFNCCustomCloudSendGrid.Create */ inline __fastcall virtual TTMSFNCCloudSendGrid(System::Classes::TComponent* AOwner)/* overload */ : TTMSFNCCustomCloudSendGrid(AOwner) { }
	/* TTMSFNCCustomCloudSendGrid.Destroy */ inline __fastcall virtual ~TTMSFNCCloudSendGrid() { }
	
public:
	/* TTMSFNCCustomCloudBase.Create */ inline __fastcall virtual TTMSFNCCloudSendGrid()/* overload */ : TTMSFNCCustomCloudSendGrid() { }
	
};


//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x0);
static constexpr System::Int8 BLD_VER = System::Int8(0x0);
}	/* namespace Tmsfnccloudsendgrid */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCCLOUDSENDGRID)
using namespace Fmx::Tmsfnccloudsendgrid;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfnccloudsendgridHPP
