// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCCloudMailChimp.Transactions.pas' rev: 35.00 (Android)

#ifndef Fmx_Tmsfnccloudmailchimp_TransactionsHPP
#define Fmx_Tmsfnccloudmailchimp_TransactionsHPP

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
namespace Tmsfnccloudmailchimp
{
namespace Transactions
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCCLoudMailChimpRecipient;
class DELPHICLASS TTMSFNCCLoudMailChimpFile;
class DELPHICLASS TTMSFNCCloudMailChimpFiles;
class DELPHICLASS TTMSFNCCloudMailChimpVariable;
class DELPHICLASS TTMSFNCCloudMailChimpVariables;
class DELPHICLASS TTMSFNCCloudMailChimpMergeVariable;
class DELPHICLASS TTMSFNCCloudMailChimpTo;
class DELPHICLASS TTMSFNCCloudMailChimpMergeVariables;
class DELPHICLASS TTMSFNCCloudMailChimpMessage;
class DELPHICLASS TTMSFNCCustomCloudMailChimpTransactions;
class DELPHICLASS TTMSFNCCloudMailChimpTransactions;
//-- type declarations -------------------------------------------------------
enum DECLSPEC_DENUM TTMSFNCCloudMailChimpRecipientType : unsigned char { rtTo, rtCC, rtBCC };

enum DECLSPEC_DENUM TTMSFNCCloudMailChimpMergeLanguage : unsigned char { mlMailChimp, mrHandleBars };

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCLoudMailChimpRecipient : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	System::UnicodeString FRecipientName;
	System::UnicodeString FEmail;
	TTMSFNCCloudMailChimpRecipientType FRecipientType;
	void __fastcall SetEmail(const System::UnicodeString Value);
	void __fastcall SetName(const System::UnicodeString Value);
	void __fastcall SetRecipientType(const TTMSFNCCloudMailChimpRecipientType Value);
	
__published:
	__property System::UnicodeString Email = {read=FEmail, write=SetEmail};
	__property System::UnicodeString RecipientName = {read=FRecipientName, write=SetName};
	__property TTMSFNCCloudMailChimpRecipientType RecipientType = {read=FRecipientType, write=SetRecipientType, nodefault};
	
public:
	System::UnicodeString __fastcall ToJSON();
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTMSFNCCLoudMailChimpRecipient() { }
	
public:
	/* TObject.Create */ inline __fastcall TTMSFNCCLoudMailChimpRecipient() : System::Classes::TPersistent() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCLoudMailChimpFile : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	System::UnicodeString FFileName;
	System::UnicodeString FMimeType;
	System::UnicodeString FContent;
	void __fastcall SetContent(const System::UnicodeString Value);
	void __fastcall SetFileName(const System::UnicodeString Value);
	void __fastcall SetMimeType(const System::UnicodeString Value);
	
__published:
	__property System::UnicodeString MimeType = {read=FMimeType, write=SetMimeType};
	__property System::UnicodeString FileName = {read=FFileName, write=SetFileName};
	__property System::UnicodeString Content = {read=FContent, write=SetContent};
	
public:
	System::UnicodeString __fastcall ToJSON();
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTMSFNCCLoudMailChimpFile() { }
	
public:
	/* TObject.Create */ inline __fastcall TTMSFNCCLoudMailChimpFile() : System::Classes::TPersistent() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudMailChimpFiles : public System::Generics::Collections::TObjectList__1<TTMSFNCCLoudMailChimpFile*>
{
	typedef System::Generics::Collections::TObjectList__1<TTMSFNCCLoudMailChimpFile*> inherited;
	
public:
	System::UnicodeString __fastcall ToJSON();
public:
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudMailChimp_Transactions_TTMSFNCCLoudMailChimpFile>.Create */ inline __fastcall TTMSFNCCloudMailChimpFiles()/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCLoudMailChimpFile*>() { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudMailChimp_Transactions_TTMSFNCCLoudMailChimpFile>.Create */ inline __fastcall TTMSFNCCloudMailChimpFiles(bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCLoudMailChimpFile*>(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudMailChimp_Transactions_TTMSFNCCLoudMailChimpFile>.Create */ inline __fastcall TTMSFNCCloudMailChimpFiles(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCLoudMailChimpFile*> > AComparer, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCLoudMailChimpFile*>(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudMailChimp_Transactions_TTMSFNCCLoudMailChimpFile>.Create */ inline __fastcall TTMSFNCCloudMailChimpFiles(System::Generics::Collections::TEnumerable__1<TTMSFNCCLoudMailChimpFile*>* const Collection, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCLoudMailChimpFile*>(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudMailChimp_Transactions_TTMSFNCCLoudMailChimpFile>.Destroy */ inline __fastcall virtual ~TTMSFNCCloudMailChimpFiles() { }
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudMailChimp_Transactions_TTMSFNCCLoudMailChimpFile>.Create */ inline __fastcall TTMSFNCCloudMailChimpFiles(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCLoudMailChimpFile*> > AComparer)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCLoudMailChimpFile*>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudMailChimp_Transactions_TTMSFNCCLoudMailChimpFile>.Create */ inline __fastcall TTMSFNCCloudMailChimpFiles(System::Generics::Collections::TEnumerable__1<TTMSFNCCLoudMailChimpFile*>* const Collection)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCLoudMailChimpFile*>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudMailChimp_Transactions_TTMSFNCCLoudMailChimpFile>.Create */ inline __fastcall TTMSFNCCloudMailChimpFiles(TTMSFNCCLoudMailChimpFile* const *Values, const int Values_High)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCLoudMailChimpFile*>(Values, Values_High) { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudMailChimpVariable : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	System::UnicodeString FVariableName;
	System::UnicodeString FContent;
	void __fastcall SetVariableName(const System::UnicodeString Value);
	void __fastcall SetContent(const System::UnicodeString Value);
	
__published:
	__property System::UnicodeString VariableName = {read=FVariableName, write=SetVariableName};
	__property System::UnicodeString Content = {read=FContent, write=SetContent};
	
public:
	System::UnicodeString __fastcall ToJSON();
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTMSFNCCloudMailChimpVariable() { }
	
public:
	/* TObject.Create */ inline __fastcall TTMSFNCCloudMailChimpVariable() : System::Classes::TPersistent() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudMailChimpVariables : public System::Generics::Collections::TObjectList__1<TTMSFNCCloudMailChimpVariable*>
{
	typedef System::Generics::Collections::TObjectList__1<TTMSFNCCloudMailChimpVariable*> inherited;
	
public:
	System::UnicodeString __fastcall ToJSON();
public:
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudMailChimp_Transactions_TTMSFNCCloudMailChimpVariable>.Create */ inline __fastcall TTMSFNCCloudMailChimpVariables()/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudMailChimpVariable*>() { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudMailChimp_Transactions_TTMSFNCCloudMailChimpVariable>.Create */ inline __fastcall TTMSFNCCloudMailChimpVariables(bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudMailChimpVariable*>(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudMailChimp_Transactions_TTMSFNCCloudMailChimpVariable>.Create */ inline __fastcall TTMSFNCCloudMailChimpVariables(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCloudMailChimpVariable*> > AComparer, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudMailChimpVariable*>(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudMailChimp_Transactions_TTMSFNCCloudMailChimpVariable>.Create */ inline __fastcall TTMSFNCCloudMailChimpVariables(System::Generics::Collections::TEnumerable__1<TTMSFNCCloudMailChimpVariable*>* const Collection, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudMailChimpVariable*>(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudMailChimp_Transactions_TTMSFNCCloudMailChimpVariable>.Destroy */ inline __fastcall virtual ~TTMSFNCCloudMailChimpVariables() { }
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudMailChimp_Transactions_TTMSFNCCloudMailChimpVariable>.Create */ inline __fastcall TTMSFNCCloudMailChimpVariables(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCloudMailChimpVariable*> > AComparer)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudMailChimpVariable*>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudMailChimp_Transactions_TTMSFNCCloudMailChimpVariable>.Create */ inline __fastcall TTMSFNCCloudMailChimpVariables(System::Generics::Collections::TEnumerable__1<TTMSFNCCloudMailChimpVariable*>* const Collection)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudMailChimpVariable*>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudMailChimp_Transactions_TTMSFNCCloudMailChimpVariable>.Create */ inline __fastcall TTMSFNCCloudMailChimpVariables(TTMSFNCCloudMailChimpVariable* const *Values, const int Values_High)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudMailChimpVariable*>(Values, Values_High) { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudMailChimpMergeVariable : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	TTMSFNCCloudMailChimpVariables* FVars;
	System::UnicodeString FRecipient;
	void __fastcall SetRecipient(const System::UnicodeString Value);
	void __fastcall SetVars(TTMSFNCCloudMailChimpVariables* const Value);
	
__published:
	__property System::UnicodeString Recipient = {read=FRecipient, write=SetRecipient};
	__property TTMSFNCCloudMailChimpVariables* Vars = {read=FVars, write=SetVars};
	
public:
	System::UnicodeString __fastcall ToJSON();
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTMSFNCCloudMailChimpMergeVariable() { }
	
public:
	/* TObject.Create */ inline __fastcall TTMSFNCCloudMailChimpMergeVariable() : System::Classes::TPersistent() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudMailChimpTo : public System::Generics::Collections::TObjectList__1<TTMSFNCCLoudMailChimpRecipient*>
{
	typedef System::Generics::Collections::TObjectList__1<TTMSFNCCLoudMailChimpRecipient*> inherited;
	
public:
	System::UnicodeString __fastcall ToJSON();
public:
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudMailChimp_Transactions_TTMSFNCCLoudMailChimpRecipient>.Create */ inline __fastcall TTMSFNCCloudMailChimpTo()/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCLoudMailChimpRecipient*>() { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudMailChimp_Transactions_TTMSFNCCLoudMailChimpRecipient>.Create */ inline __fastcall TTMSFNCCloudMailChimpTo(bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCLoudMailChimpRecipient*>(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudMailChimp_Transactions_TTMSFNCCLoudMailChimpRecipient>.Create */ inline __fastcall TTMSFNCCloudMailChimpTo(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCLoudMailChimpRecipient*> > AComparer, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCLoudMailChimpRecipient*>(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudMailChimp_Transactions_TTMSFNCCLoudMailChimpRecipient>.Create */ inline __fastcall TTMSFNCCloudMailChimpTo(System::Generics::Collections::TEnumerable__1<TTMSFNCCLoudMailChimpRecipient*>* const Collection, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCLoudMailChimpRecipient*>(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudMailChimp_Transactions_TTMSFNCCLoudMailChimpRecipient>.Destroy */ inline __fastcall virtual ~TTMSFNCCloudMailChimpTo() { }
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudMailChimp_Transactions_TTMSFNCCLoudMailChimpRecipient>.Create */ inline __fastcall TTMSFNCCloudMailChimpTo(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCLoudMailChimpRecipient*> > AComparer)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCLoudMailChimpRecipient*>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudMailChimp_Transactions_TTMSFNCCLoudMailChimpRecipient>.Create */ inline __fastcall TTMSFNCCloudMailChimpTo(System::Generics::Collections::TEnumerable__1<TTMSFNCCLoudMailChimpRecipient*>* const Collection)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCLoudMailChimpRecipient*>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudMailChimp_Transactions_TTMSFNCCLoudMailChimpRecipient>.Create */ inline __fastcall TTMSFNCCloudMailChimpTo(TTMSFNCCLoudMailChimpRecipient* const *Values, const int Values_High)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCLoudMailChimpRecipient*>(Values, Values_High) { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudMailChimpMergeVariables : public System::Generics::Collections::TObjectList__1<TTMSFNCCloudMailChimpMergeVariable*>
{
	typedef System::Generics::Collections::TObjectList__1<TTMSFNCCloudMailChimpMergeVariable*> inherited;
	
public:
	System::UnicodeString __fastcall ToJSON();
public:
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudMailChimp_Transactions_TTMSFNCCloudMailChimpMergeVariable>.Create */ inline __fastcall TTMSFNCCloudMailChimpMergeVariables()/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudMailChimpMergeVariable*>() { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudMailChimp_Transactions_TTMSFNCCloudMailChimpMergeVariable>.Create */ inline __fastcall TTMSFNCCloudMailChimpMergeVariables(bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudMailChimpMergeVariable*>(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudMailChimp_Transactions_TTMSFNCCloudMailChimpMergeVariable>.Create */ inline __fastcall TTMSFNCCloudMailChimpMergeVariables(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCloudMailChimpMergeVariable*> > AComparer, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudMailChimpMergeVariable*>(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudMailChimp_Transactions_TTMSFNCCloudMailChimpMergeVariable>.Create */ inline __fastcall TTMSFNCCloudMailChimpMergeVariables(System::Generics::Collections::TEnumerable__1<TTMSFNCCloudMailChimpMergeVariable*>* const Collection, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudMailChimpMergeVariable*>(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<FMX_TMSFNCCloudMailChimp_Transactions_TTMSFNCCloudMailChimpMergeVariable>.Destroy */ inline __fastcall virtual ~TTMSFNCCloudMailChimpMergeVariables() { }
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudMailChimp_Transactions_TTMSFNCCloudMailChimpMergeVariable>.Create */ inline __fastcall TTMSFNCCloudMailChimpMergeVariables(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCloudMailChimpMergeVariable*> > AComparer)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudMailChimpMergeVariable*>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudMailChimp_Transactions_TTMSFNCCloudMailChimpMergeVariable>.Create */ inline __fastcall TTMSFNCCloudMailChimpMergeVariables(System::Generics::Collections::TEnumerable__1<TTMSFNCCloudMailChimpMergeVariable*>* const Collection)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudMailChimpMergeVariable*>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudMailChimp_Transactions_TTMSFNCCloudMailChimpMergeVariable>.Create */ inline __fastcall TTMSFNCCloudMailChimpMergeVariables(TTMSFNCCloudMailChimpMergeVariable* const *Values, const int Values_High)/* overload */ : System::Generics::Collections::TObjectList__1<TTMSFNCCloudMailChimpMergeVariable*>(Values, Values_High) { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudMailChimpMessage : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	System::UnicodeString FSigningDomain;
	System::UnicodeString FReturnPathDomain;
	bool FAutoText;
	TTMSFNCCloudMailChimpFiles* FAttachments;
	bool FImportant;
	System::Classes::TStringList* FHeaders;
	TTMSFNCCloudMailChimpFiles* FImages;
	TTMSFNCCloudMailChimpMergeLanguage FMergeLanguage;
	bool FMerge;
	System::Classes::TStringList* FGoogleAnalyticsDomain;
	System::UnicodeString FHTML;
	System::Classes::TStringList* FTags;
	bool FViewContentLink;
	System::UnicodeString FGoogleAnalyticsCampaign;
	bool FTrackOpens;
	System::UnicodeString FFromName;
	System::UnicodeString FSubject;
	System::UnicodeString FBCCAddress;
	System::UnicodeString FFromEmail;
	bool FAutoHTML;
	bool FURLStripQS;
	bool FPreserveRecipients;
	bool FInlineCSS;
	TTMSFNCCloudMailChimpTo* FSendTo;
	System::Classes::TStringList* FMetaData;
	System::UnicodeString FSubAccount;
	System::UnicodeString FText;
	System::UnicodeString FTrackingDomain;
	bool FTrackClick;
	TTMSFNCCloudMailChimpMergeVariables* FMergeVariables;
	TTMSFNCCloudMailChimpVariables* FGlobalMergeVariables;
	void __fastcall SetAttachments(TTMSFNCCloudMailChimpFiles* const Value);
	void __fastcall SetAutoHTML(const bool Value);
	void __fastcall SetAutoText(const bool Value);
	void __fastcall SetBCCAddress(const System::UnicodeString Value);
	void __fastcall SetFromEmail(const System::UnicodeString Value);
	void __fastcall SetFromName(const System::UnicodeString Value);
	void __fastcall SetGoogleAnalyticsCampaign(const System::UnicodeString Value);
	void __fastcall SetGoogleAnalyticsDomain(System::Classes::TStringList* const Value);
	void __fastcall SetHeaders(System::Classes::TStringList* const Value);
	void __fastcall SetHTML(const System::UnicodeString Value);
	void __fastcall SetImages(TTMSFNCCloudMailChimpFiles* const Value);
	void __fastcall SetImportant(const bool Value);
	void __fastcall SetInlineCSS(const bool Value);
	void __fastcall SetMerge(const bool Value);
	void __fastcall SetMergeLanguage(const TTMSFNCCloudMailChimpMergeLanguage Value);
	void __fastcall SetMergeVariables(TTMSFNCCloudMailChimpMergeVariables* const Value);
	void __fastcall SetMetaData(System::Classes::TStringList* const Value);
	void __fastcall SetPreserveRecipients(const bool Value);
	void __fastcall SetReturnPathDomain(const System::UnicodeString Value);
	void __fastcall SetSendTo(TTMSFNCCloudMailChimpTo* const Value);
	void __fastcall SetSigningDomain(const System::UnicodeString Value);
	void __fastcall SetSubAccount(const System::UnicodeString Value);
	void __fastcall SetSubject(const System::UnicodeString Value);
	void __fastcall SetTags(System::Classes::TStringList* const Value);
	void __fastcall SetText(const System::UnicodeString Value);
	void __fastcall SetTrackClick(const bool Value);
	void __fastcall SetTrackingDomain(const System::UnicodeString Value);
	void __fastcall SetTrackOpens(const bool Value);
	void __fastcall SetURLStripQS(const bool Value);
	void __fastcall SetViewContentLink(const bool Value);
	void __fastcall SetGlobalMergeVariables(TTMSFNCCloudMailChimpVariables* const Value);
	
__published:
	__property System::UnicodeString HTML = {read=FHTML, write=SetHTML};
	__property System::UnicodeString Text = {read=FText, write=SetText};
	__property System::UnicodeString Subject = {read=FSubject, write=SetSubject};
	__property System::UnicodeString FromEmail = {read=FFromEmail, write=SetFromEmail};
	__property System::UnicodeString FromName = {read=FFromName, write=SetFromName};
	__property TTMSFNCCloudMailChimpTo* SendTo = {read=FSendTo, write=SetSendTo};
	__property System::Classes::TStringList* Headers = {read=FHeaders, write=SetHeaders};
	__property bool Important = {read=FImportant, write=SetImportant, nodefault};
	__property bool TrackOpens = {read=FTrackOpens, write=SetTrackOpens, nodefault};
	__property bool TrackClick = {read=FTrackClick, write=SetTrackClick, nodefault};
	__property bool AutoText = {read=FAutoText, write=SetAutoText, nodefault};
	__property bool AutoHTML = {read=FAutoHTML, write=SetAutoHTML, nodefault};
	__property bool InlineCSS = {read=FInlineCSS, write=SetInlineCSS, nodefault};
	__property bool URLStripQS = {read=FURLStripQS, write=SetURLStripQS, nodefault};
	__property bool PreserveRecipients = {read=FPreserveRecipients, write=SetPreserveRecipients, nodefault};
	__property bool ViewContentLink = {read=FViewContentLink, write=SetViewContentLink, nodefault};
	__property System::UnicodeString BCCAddress = {read=FBCCAddress, write=SetBCCAddress};
	__property System::UnicodeString TrackingDomain = {read=FTrackingDomain, write=SetTrackingDomain};
	__property System::UnicodeString SigningDomain = {read=FSigningDomain, write=SetSigningDomain};
	__property System::UnicodeString ReturnPathDomain = {read=FReturnPathDomain, write=SetReturnPathDomain};
	__property bool Merge = {read=FMerge, write=SetMerge, nodefault};
	__property TTMSFNCCloudMailChimpMergeLanguage MergeLanguage = {read=FMergeLanguage, write=SetMergeLanguage, nodefault};
	__property TTMSFNCCloudMailChimpVariables* GlobalMergeVariables = {read=FGlobalMergeVariables, write=SetGlobalMergeVariables};
	__property TTMSFNCCloudMailChimpMergeVariables* MergeVariables = {read=FMergeVariables, write=SetMergeVariables};
	__property System::Classes::TStringList* Tags = {read=FTags, write=SetTags};
	__property System::UnicodeString SubAccount = {read=FSubAccount, write=SetSubAccount};
	__property System::Classes::TStringList* GoogleAnalyticsDomain = {read=FGoogleAnalyticsDomain, write=SetGoogleAnalyticsDomain};
	__property System::UnicodeString GoogleAnalyticsCampaign = {read=FGoogleAnalyticsCampaign, write=SetGoogleAnalyticsCampaign};
	__property TTMSFNCCloudMailChimpFiles* Attachments = {read=FAttachments, write=SetAttachments};
	__property TTMSFNCCloudMailChimpFiles* Images = {read=FImages, write=SetImages};
	__property System::Classes::TStringList* MetaData = {read=FMetaData, write=SetMetaData};
	
public:
	__fastcall TTMSFNCCloudMailChimpMessage();
	__fastcall virtual ~TTMSFNCCloudMailChimpMessage();
	System::UnicodeString __fastcall ToJSON();
};

#pragma pack(pop)

typedef void __fastcall (__closure *TTMSFNCCustomCloudMailChimpTransactionsErrorEvent)(System::TObject* Sender, System::UnicodeString AErrorMessage);

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCustomCloudMailChimpTransactions : public Fmx::Tmsfnccloudbase::TTMSFNCCloudBase
{
	typedef Fmx::Tmsfnccloudbase::TTMSFNCCloudBase inherited;
	
private:
	System::UnicodeString FAPIKey;
	System::Classes::TNotifyEvent FOnSendSuccessfull;
	TTMSFNCCustomCloudMailChimpTransactionsErrorEvent FOnError;
	void __fastcall SetAPIKey(const System::UnicodeString Value);
	
public:
	void __fastcall SendMail(TTMSFNCCloudMailChimpMessage* AMessage, bool AAsync = false, System::UnicodeString AIPPool = System::UnicodeString());
	
protected:
	virtual NativeUInt __fastcall GetInstance();
	virtual System::UnicodeString __fastcall GetVersion();
	void __fastcall DoSendMail(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	__property System::UnicodeString APIKey = {read=FAPIKey, write=SetAPIKey};
	__property System::Classes::TNotifyEvent OnSendSuccessful = {read=FOnSendSuccessfull, write=FOnSendSuccessfull};
	__property TTMSFNCCustomCloudMailChimpTransactionsErrorEvent OnError = {read=FOnError, write=FOnError};
public:
	/* TTMSFNCCustomCloudBase.Create */ inline __fastcall virtual TTMSFNCCustomCloudMailChimpTransactions()/* overload */ : Fmx::Tmsfnccloudbase::TTMSFNCCloudBase() { }
	/* TTMSFNCCustomCloudBase.Create */ inline __fastcall virtual TTMSFNCCustomCloudMailChimpTransactions(System::Classes::TComponent* AOwner)/* overload */ : Fmx::Tmsfnccloudbase::TTMSFNCCloudBase(AOwner) { }
	/* TTMSFNCCustomCloudBase.Destroy */ inline __fastcall virtual ~TTMSFNCCustomCloudMailChimpTransactions() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudMailChimpTransactions : public TTMSFNCCustomCloudMailChimpTransactions
{
	typedef TTMSFNCCustomCloudMailChimpTransactions inherited;
	
__published:
	__property APIKey = {default=0};
	__property OnSendSuccessful;
	__property OnError;
public:
	/* TTMSFNCCustomCloudBase.Create */ inline __fastcall virtual TTMSFNCCloudMailChimpTransactions()/* overload */ : TTMSFNCCustomCloudMailChimpTransactions() { }
	/* TTMSFNCCustomCloudBase.Create */ inline __fastcall virtual TTMSFNCCloudMailChimpTransactions(System::Classes::TComponent* AOwner)/* overload */ : TTMSFNCCustomCloudMailChimpTransactions(AOwner) { }
	/* TTMSFNCCustomCloudBase.Destroy */ inline __fastcall virtual ~TTMSFNCCloudMailChimpTransactions() { }
	
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x0);
static constexpr System::Int8 BLD_VER = System::Int8(0x0);
}	/* namespace Transactions */
}	/* namespace Tmsfnccloudmailchimp */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCCLOUDMAILCHIMP_TRANSACTIONS)
using namespace Fmx::Tmsfnccloudmailchimp::Transactions;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCCLOUDMAILCHIMP)
using namespace Fmx::Tmsfnccloudmailchimp;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_Tmsfnccloudmailchimp_TransactionsHPP
