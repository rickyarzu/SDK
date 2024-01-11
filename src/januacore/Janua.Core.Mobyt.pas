// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://api.mobyt.it/mobws?wsdl
// >Import : http://api.mobyt.it/mobws?wsdl>0
// >Import : http://api.mobyt.it:80/mobws?xsd=1
// Encoding : UTF-8
// Version  : 1.0
// (07/09/2016 09:14:59 - - $Rev: 86412 $)
// ************************************************************************ //

unit Janua.Core.Mobyt;

{$I JANUACORE.INC}

interface

uses Soap.InvokeRegistry, Soap.SOAPHTTPClient, System.Types, Soap.XSBuiltIns,
  Janua.Core.Classes, Janua.Core.Functions, DB, Janua.Core.System;

const
  IS_OPTN = $0001;
  IS_UNBD = $0002;
  IS_NLBL = $0004;
  IS_UNQL = $0008;

type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Embarcadero types; however, they could also
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:int             - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:dateTime        - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:boolean         - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:long            - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:double          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:float           - "http://www.w3.org/2001/XMLSchema"[Gbl]

  TMobytGroup = class; { "http://api.mobyt.it/mobws"[GblCplx] }
  wssmsCredit = class; { "http://api.mobyt.it/mobws"[GblCplx] }
  FinalUser = class; { "http://api.mobyt.it/mobws"[GblCplx] }
  Tpoa = class; { "http://api.mobyt.it/mobws"[GblCplx] }
  Campaign = class; { "http://api.mobyt.it/mobws"[GblCplx] }
  CampaignIssue = class; { "http://api.mobyt.it/mobws"[GblCplx] }
  ReceivedMessage = class; { "http://api.mobyt.it/mobws"[GblCplx] }
  CreditMovement = class; { "http://api.mobyt.it/mobws"[GblCplx] }
  EmailSender = class; { "http://api.mobyt.it/mobws"[GblCplx] }
  Contact = class; { "http://api.mobyt.it/mobws"[GblCplx] }
  SMSStatus = class; { "http://api.mobyt.it/mobws"[GblCplx] }
  Subaccount = class; { "http://api.mobyt.it/mobws"[GblCplx] }
  SentMessage = class; { "http://api.mobyt.it/mobws"[GblCplx] }

{$SCOPEDENUMS ON}
  { "http://api.mobyt.it/mobws"[GblSmpl] }
  subaccountTYPE = (COMPANY, PRIVATE_);

{$SCOPEDENUMS OFF}
  getApprovedAGCOMSmsTpoasResponse = array of Tpoa;
  { "http://api.mobyt.it/mobws"[Lit][GblCplx] }
  getPurchasesResponse = array of CreditMovement;
  { "http://api.mobyt.it/mobws"[Lit][GblCplx] }
  getSubaccountsResponse = array of Subaccount;
  { "http://api.mobyt.it/mobws"[Lit][GblCplx] }
  getGroupPhonesResponse = array of string;
  { "http://api.mobyt.it/mobws"[Lit][GblCplx] }
  Array_Of_Contact = array of Contact; { "http://api.mobyt.it/mobws"[GblUbnd] }
  getActivableCampaignsResponse = array of Campaign;
  { "http://api.mobyt.it/mobws"[Lit][GblCplx] }

  // ************************************************************************ //
  // XML       : Group, global, <complexType>
  // Namespace : http://api.mobyt.it/mobws
  // ************************************************************************ //
  TMobytGroup = class(TRemotable)
  private
    FcontactsCount: Int64;
    Fid: string;
    Fid_Specified: boolean;
    Fid_group: Int64;
    Fname_: string;
    Fname__Specified: boolean;
    procedure Setid(Index: Integer; const Astring: string);
    function id_Specified(Index: Integer): boolean;
    procedure Setname_(Index: Integer; const Astring: string);
    function name__Specified(Index: Integer): boolean;
  published
    property contactsCount: Int64 Index(IS_UNQL)read FcontactsCount write FcontactsCount;
    property id: string Index(IS_OPTN or IS_UNQL)read Fid write Setid stored id_Specified;
    property id_group: Int64 Index(IS_UNQL)read Fid_group write Fid_group;
    property name_: string Index(IS_OPTN or IS_UNQL)read Fname_ write Setname_ stored name__Specified;
  end;

  // ************************************************************************ //
  // XML       : wssmsCredit, global, <complexType>
  // Namespace : http://api.mobyt.it/mobws
  // ************************************************************************ //
  wssmsCredit = class(TRemotable)
  private
    Fcredit: Int64;
    FmessageType: string;
    FmessageType_Specified: boolean;
    Fnation: string;
    Fnation_Specified: boolean;
    procedure SetmessageType(Index: Integer; const Astring: string);
    function messageType_Specified(Index: Integer): boolean;
    procedure Setnation(Index: Integer; const Astring: string);
    function nation_Specified(Index: Integer): boolean;
  published
    property credit: Int64 Index(IS_UNQL)read Fcredit write Fcredit;
    property messageType: string Index(IS_OPTN or IS_UNQL)read FmessageType write SetmessageType
      stored messageType_Specified;
    property nation: string Index(IS_OPTN or IS_UNQL)read Fnation write Setnation stored nation_Specified;
  end;

  // ************************************************************************ //
  // XML       : FinalUser, global, <complexType>
  // Namespace : http://api.mobyt.it/mobws
  // ************************************************************************ //
  FinalUser = class(TRemotable)
  private
    FfinalUser_address: string;
    FfinalUser_address_Specified: boolean;
    FfinalUser_city: string;
    FfinalUser_city_Specified: boolean;
    FfinalUser_codFiscale: string;
    FfinalUser_codFiscale_Specified: boolean;
    FfinalUser_companyName: string;
    FfinalUser_companyName_Specified: boolean;
    FfinalUser_contactInfo: string;
    FfinalUser_contactInfo_Specified: boolean;
    FfinalUser_contactType: string;
    FfinalUser_contactType_Specified: boolean;
    FfinalUser_name: string;
    FfinalUser_name_Specified: boolean;
    FfinalUser_postalCode: string;
    FfinalUser_postalCode_Specified: boolean;
    FfinalUser_surname: string;
    FfinalUser_surname_Specified: boolean;
    FfinalUser_vatNumber: string;
    FfinalUser_vatNumber_Specified: boolean;
    Fid_final_user: Int64;
    procedure SetfinalUser_address(Index: Integer; const Astring: string);
    function finalUser_address_Specified(Index: Integer): boolean;
    procedure SetfinalUser_city(Index: Integer; const Astring: string);
    function finalUser_city_Specified(Index: Integer): boolean;
    procedure SetfinalUser_codFiscale(Index: Integer; const Astring: string);
    function finalUser_codFiscale_Specified(Index: Integer): boolean;
    procedure SetfinalUser_companyName(Index: Integer; const Astring: string);
    function finalUser_companyName_Specified(Index: Integer): boolean;
    procedure SetfinalUser_contactInfo(Index: Integer; const Astring: string);
    function finalUser_contactInfo_Specified(Index: Integer): boolean;
    procedure SetfinalUser_contactType(Index: Integer; const Astring: string);
    function finalUser_contactType_Specified(Index: Integer): boolean;
    procedure SetfinalUser_name(Index: Integer; const Astring: string);
    function finalUser_name_Specified(Index: Integer): boolean;
    procedure SetfinalUser_postalCode(Index: Integer; const Astring: string);
    function finalUser_postalCode_Specified(Index: Integer): boolean;
    procedure SetfinalUser_surname(Index: Integer; const Astring: string);
    function finalUser_surname_Specified(Index: Integer): boolean;
    procedure SetfinalUser_vatNumber(Index: Integer; const Astring: string);
    function finalUser_vatNumber_Specified(Index: Integer): boolean;
  published
    property finalUser_address: string Index(IS_OPTN or IS_UNQL)read FfinalUser_address
      write SetfinalUser_address stored finalUser_address_Specified;
    property finalUser_city: string Index(IS_OPTN or IS_UNQL)read FfinalUser_city write SetfinalUser_city
      stored finalUser_city_Specified;
    property finalUser_codFiscale: string Index(IS_OPTN or IS_UNQL)read FfinalUser_codFiscale
      write SetfinalUser_codFiscale stored finalUser_codFiscale_Specified;
    property finalUser_companyName: string Index(IS_OPTN or IS_UNQL)read FfinalUser_companyName
      write SetfinalUser_companyName stored finalUser_companyName_Specified;
    property finalUser_contactInfo: string Index(IS_OPTN or IS_UNQL)read FfinalUser_contactInfo
      write SetfinalUser_contactInfo stored finalUser_contactInfo_Specified;
    property finalUser_contactType: string Index(IS_OPTN or IS_UNQL)read FfinalUser_contactType
      write SetfinalUser_contactType stored finalUser_contactType_Specified;
    property finalUser_name: string Index(IS_OPTN or IS_UNQL)read FfinalUser_name write SetfinalUser_name
      stored finalUser_name_Specified;
    property finalUser_postalCode: string Index(IS_OPTN or IS_UNQL)read FfinalUser_postalCode
      write SetfinalUser_postalCode stored finalUser_postalCode_Specified;
    property finalUser_surname: string Index(IS_OPTN or IS_UNQL)read FfinalUser_surname
      write SetfinalUser_surname stored finalUser_surname_Specified;
    property finalUser_vatNumber: string Index(IS_OPTN or IS_UNQL)read FfinalUser_vatNumber
      write SetfinalUser_vatNumber stored finalUser_vatNumber_Specified;
    property id_final_user: Int64 Index(IS_UNQL)read Fid_final_user write Fid_final_user;
  end;

  // ************************************************************************ //
  // XML       : Tpoa, global, <complexType>
  // Namespace : http://api.mobyt.it/mobws
  // ************************************************************************ //
  Tpoa = class(TRemotable)
  private
    Fid_alias: Int64;
    FnotificationTime: TXSDateTime;
    FnotificationTime_Specified: boolean;
    Fnumeric: boolean;
    Fsender: string;
    Fsender_Specified: boolean;
    Fstatus: Integer;
    FwsFinalUser: FinalUser;
    FwsFinalUser_Specified: boolean;
    procedure SetnotificationTime(Index: Integer; const ATXSDateTime: TXSDateTime);
    function notificationTime_Specified(Index: Integer): boolean;
    procedure Setsender(Index: Integer; const Astring: string);
    function sender_Specified(Index: Integer): boolean;
    procedure SetwsFinalUser(Index: Integer; const AFinalUser: FinalUser);
    function wsFinalUser_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property id_alias: Int64 Index(IS_UNQL)read Fid_alias write Fid_alias;
    property notificationTime: TXSDateTime Index(IS_OPTN or IS_UNQL)read FnotificationTime
      write SetnotificationTime stored notificationTime_Specified;
    property numeric: boolean Index(IS_UNQL)read Fnumeric write Fnumeric;
    property sender: string Index(IS_OPTN or IS_UNQL)read Fsender write Setsender stored sender_Specified;
    property status: Integer Index(IS_UNQL)read Fstatus write Fstatus;
    property wsFinalUser: FinalUser Index(IS_OPTN or IS_UNQL)read FwsFinalUser write SetwsFinalUser
      stored wsFinalUser_Specified;
  end;

  // ************************************************************************ //
  // XML       : Campaign, global, <complexType>
  // Namespace : http://api.mobyt.it/mobws
  // ************************************************************************ //
  Campaign = class(TRemotable)
  private
    Faddress: string;
    Faddress_Specified: boolean;
    Fcompany: string;
    Fcompany_Specified: boolean;
    Fcopiright: string;
    Fcopiright_Specified: boolean;
    FemailReplyTo: string;
    FemailReplyTo_Specified: boolean;
    FemailSender: string;
    FemailSender_Specified: boolean;
    Ffax: string;
    Ffax_Specified: boolean;
    Fid_campaign: Int64;
    Fid_language: string;
    Fid_language_Specified: boolean;
    Flabel_: string;
    Flabel__Specified: boolean;
    FoptInSubject: string;
    FoptInSubject_Specified: boolean;
    Fphone: string;
    Fphone_Specified: boolean;
    FsendToFriend: boolean;
    Fsender: string;
    Fsender_Specified: boolean;
    Fstatus: Integer;
    Ftitle: string;
    Ftitle_Specified: boolean;
    Furl: string;
    Furl_Specified: boolean;
    procedure Setaddress(Index: Integer; const Astring: string);
    function address_Specified(Index: Integer): boolean;
    procedure Setcompany(Index: Integer; const Astring: string);
    function company_Specified(Index: Integer): boolean;
    procedure Setcopiright(Index: Integer; const Astring: string);
    function copiright_Specified(Index: Integer): boolean;
    procedure SetemailReplyTo(Index: Integer; const Astring: string);
    function emailReplyTo_Specified(Index: Integer): boolean;
    procedure SetemailSender(Index: Integer; const Astring: string);
    function emailSender_Specified(Index: Integer): boolean;
    procedure Setfax(Index: Integer; const Astring: string);
    function fax_Specified(Index: Integer): boolean;
    procedure Setid_language(Index: Integer; const Astring: string);
    function id_language_Specified(Index: Integer): boolean;
    procedure Setlabel_(Index: Integer; const Astring: string);
    function label__Specified(Index: Integer): boolean;
    procedure SetoptInSubject(Index: Integer; const Astring: string);
    function optInSubject_Specified(Index: Integer): boolean;
    procedure Setphone(Index: Integer; const Astring: string);
    function phone_Specified(Index: Integer): boolean;
    procedure Setsender(Index: Integer; const Astring: string);
    function sender_Specified(Index: Integer): boolean;
    procedure Settitle(Index: Integer; const Astring: string);
    function title_Specified(Index: Integer): boolean;
    procedure Seturl(Index: Integer; const Astring: string);
    function url_Specified(Index: Integer): boolean;
  published
    property address: string Index(IS_OPTN or IS_UNQL)read Faddress write Setaddress stored address_Specified;
    property COMPANY: string Index(IS_OPTN or IS_UNQL)read Fcompany write Setcompany stored company_Specified;
    property copiright: string Index(IS_OPTN or IS_UNQL)read Fcopiright write Setcopiright
      stored copiright_Specified;
    property emailReplyTo: string Index(IS_OPTN or IS_UNQL)read FemailReplyTo write SetemailReplyTo
      stored emailReplyTo_Specified;
    property EmailSender: string Index(IS_OPTN or IS_UNQL)read FemailSender write SetemailSender
      stored emailSender_Specified;
    property fax: string Index(IS_OPTN or IS_UNQL)read Ffax write Setfax stored fax_Specified;
    property id_campaign: Int64 Index(IS_UNQL)read Fid_campaign write Fid_campaign;
    property id_language: string Index(IS_OPTN or IS_UNQL)read Fid_language write Setid_language
      stored id_language_Specified;
    property label_: string Index(IS_OPTN or IS_UNQL)read Flabel_ write Setlabel_ stored label__Specified;
    property optInSubject: string Index(IS_OPTN or IS_UNQL)read FoptInSubject write SetoptInSubject
      stored optInSubject_Specified;
    property phone: string Index(IS_OPTN or IS_UNQL)read Fphone write Setphone stored phone_Specified;
    property sendToFriend: boolean Index(IS_UNQL)read FsendToFriend write FsendToFriend;
    property sender: string Index(IS_OPTN or IS_UNQL)read Fsender write Setsender stored sender_Specified;
    property status: Integer Index(IS_UNQL)read Fstatus write Fstatus;
    property title: string Index(IS_OPTN or IS_UNQL)read Ftitle write Settitle stored title_Specified;
    property url: string Index(IS_OPTN or IS_UNQL)read Furl write Seturl stored url_Specified;
  end;

  getReceivedMessagesByIdResponse = array of ReceivedMessage;
  { "http://api.mobyt.it/mobws"[Lit][GblCplx] }
  Array_Of_double = array of Double;
  { "http://www.w3.org/2001/XMLSchema"[GblUbnd] }
  getSMSStatusResponse = array of SMSStatus;
  { "http://api.mobyt.it/mobws"[Lit][GblCplx] }

  // ************************************************************************ //
  // XML       : CampaignIssue, global, <complexType>
  // Namespace : http://api.mobyt.it/mobws
  // ************************************************************************ //
  CampaignIssue = class(TRemotable)
  private
    Fid_campaign: Int64;
    Fid_issue: Int64;
    FmessageHTML: string;
    FmessageHTML_Specified: boolean;
    FmessageText: string;
    FmessageText_Specified: boolean;
    Fname_: string;
    Fname__Specified: boolean;
    Fsubject: string;
    Fsubject_Specified: boolean;
    Furl_editor: string;
    Furl_editor_Specified: boolean;
    FwebAnalitics: string;
    FwebAnalitics_Specified: boolean;
    procedure SetmessageHTML(Index: Integer; const Astring: string);
    function messageHTML_Specified(Index: Integer): boolean;
    procedure SetmessageText(Index: Integer; const Astring: string);
    function messageText_Specified(Index: Integer): boolean;
    procedure Setname_(Index: Integer; const Astring: string);
    function name__Specified(Index: Integer): boolean;
    procedure Setsubject(Index: Integer; const Astring: string);
    function subject_Specified(Index: Integer): boolean;
    procedure Seturl_editor(Index: Integer; const Astring: string);
    function url_editor_Specified(Index: Integer): boolean;
    procedure SetwebAnalitics(Index: Integer; const Astring: string);
    function webAnalitics_Specified(Index: Integer): boolean;
  published
    property id_campaign: Int64 Index(IS_UNQL)read Fid_campaign write Fid_campaign;
    property id_issue: Int64 Index(IS_UNQL)read Fid_issue write Fid_issue;
    property messageHTML: string Index(IS_OPTN or IS_UNQL)read FmessageHTML write SetmessageHTML
      stored messageHTML_Specified;
    property messageText: string Index(IS_OPTN or IS_UNQL)read FmessageText write SetmessageText
      stored messageText_Specified;
    property name_: string Index(IS_OPTN or IS_UNQL)read Fname_ write Setname_ stored name__Specified;
    property subject: string Index(IS_OPTN or IS_UNQL)read Fsubject write Setsubject stored subject_Specified;
    property url_editor: string Index(IS_OPTN or IS_UNQL)read Furl_editor write Seturl_editor
      stored url_editor_Specified;
    property webAnalitics: string Index(IS_OPTN or IS_UNQL)read FwebAnalitics write SetwebAnalitics
      stored webAnalitics_Specified;
  end;

  getAvailableSenderAdressesResponse = array of EmailSender;
  { "http://api.mobyt.it/mobws"[Lit][GblCplx] }

  // ************************************************************************ //
  // XML       : ReceivedMessage, global, <complexType>
  // Namespace : http://api.mobyt.it/mobws
  // ************************************************************************ //
  ReceivedMessage = class(TRemotable)
  private
    Fkeyword: string;
    Fkeyword_Specified: boolean;
    FmessageId: Int64;
    FmessageText: string;
    FmessageText_Specified: boolean;
    Freceiver: string;
    Freceiver_Specified: boolean;
    Fsender: string;
    Fsender_Specified: boolean;
    FsmsDate: TXSDateTime;
    FsmsDate_Specified: boolean;
    procedure Setkeyword(Index: Integer; const Astring: string);
    function keyword_Specified(Index: Integer): boolean;
    procedure SetmessageText(Index: Integer; const Astring: string);
    function messageText_Specified(Index: Integer): boolean;
    procedure Setreceiver(Index: Integer; const Astring: string);
    function receiver_Specified(Index: Integer): boolean;
    procedure Setsender(Index: Integer; const Astring: string);
    function sender_Specified(Index: Integer): boolean;
    procedure SetsmsDate(Index: Integer; const ATXSDateTime: TXSDateTime);
    function smsDate_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property keyword: string Index(IS_OPTN or IS_UNQL)read Fkeyword write Setkeyword stored keyword_Specified;
    property messageId: Int64 Index(IS_UNQL)read FmessageId write FmessageId;
    property messageText: string Index(IS_OPTN or IS_UNQL)read FmessageText write SetmessageText
      stored messageText_Specified;
    property receiver: string Index(IS_OPTN or IS_UNQL)read Freceiver write Setreceiver
      stored receiver_Specified;
    property sender: string Index(IS_OPTN or IS_UNQL)read Fsender write Setsender stored sender_Specified;
    property smsDate: TXSDateTime Index(IS_OPTN or IS_UNQL)read FsmsDate write SetsmsDate
      stored smsDate_Specified;
  end;

  // ************************************************************************ //
  // XML       : CreditMovement, global, <complexType>
  // Namespace : http://api.mobyt.it/mobws
  // ************************************************************************ //
  CreditMovement = class(TRemotable)
  private
    Famount: Single;
    FavailableAmount: Single;
    Fid_purchase: Int64;
    Fis_donation: boolean;
    Fprice: Double;
    FpricePerMessage: Array_Of_double;
    FpricePerMessage_Specified: boolean;
    Frecording_date: TXSDateTime;
    Frecording_date_Specified: boolean;
    Fsms_type: string;
    Fsms_type_Specified: boolean;
    Fsms_types: getGroupPhonesResponse;
    Fsms_types_Specified: boolean;
    Fsubaccount_login: string;
    Fsubaccount_login_Specified: boolean;
    Fsuper_to_sub: boolean;
    procedure SetpricePerMessage(Index: Integer; const AArray_Of_double: Array_Of_double);
    function pricePerMessage_Specified(Index: Integer): boolean;
    procedure Setrecording_date(Index: Integer; const ATXSDateTime: TXSDateTime);
    function recording_date_Specified(Index: Integer): boolean;
    procedure Setsms_type(Index: Integer; const Astring: string);
    function sms_type_Specified(Index: Integer): boolean;
    procedure Setsms_types(Index: Integer; const AgetGroupPhonesResponse: getGroupPhonesResponse);
    function sms_types_Specified(Index: Integer): boolean;
    procedure Setsubaccount_login(Index: Integer; const Astring: string);
    function subaccount_login_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property amount: Single Index(IS_UNQL)read Famount write Famount;
    property availableAmount: Single Index(IS_UNQL)read FavailableAmount write FavailableAmount;
    property id_purchase: Int64 Index(IS_UNQL)read Fid_purchase write Fid_purchase;
    property is_donation: boolean Index(IS_UNQL)read Fis_donation write Fis_donation;
    property price: Double Index(IS_UNQL)read Fprice write Fprice;
    property pricePerMessage: Array_Of_double Index(IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL)
      read FpricePerMessage write SetpricePerMessage stored pricePerMessage_Specified;
    property recording_date: TXSDateTime Index(IS_OPTN or IS_UNQL)read Frecording_date write Setrecording_date
      stored recording_date_Specified;
    property sms_type: string Index(IS_OPTN or IS_UNQL)read Fsms_type write Setsms_type
      stored sms_type_Specified;
    property sms_types: getGroupPhonesResponse Index(IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL)read Fsms_types
      write Setsms_types stored sms_types_Specified;
    property subaccount_login: string Index(IS_OPTN or IS_UNQL)read Fsubaccount_login
      write Setsubaccount_login stored subaccount_login_Specified;
    property super_to_sub: boolean Index(IS_UNQL)read Fsuper_to_sub write Fsuper_to_sub;
  end;

  getSubaccountCreditsResponse = array of wssmsCredit;
  { "http://api.mobyt.it/mobws"[Lit][GblCplx] }

  // ************************************************************************ //
  // XML       : EmailSender, global, <complexType>
  // Namespace : http://api.mobyt.it/mobws
  // ************************************************************************ //
  EmailSender = class(TRemotable)
  private
    Factive: boolean;
    FemailAddress: string;
    FemailAddress_Specified: boolean;
    Fid_emailSender: Int64;
    procedure SetemailAddress(Index: Integer; const Astring: string);
    function emailAddress_Specified(Index: Integer): boolean;
  published
    property active: boolean Index(IS_UNQL)read Factive write Factive;
    property emailAddress: string Index(IS_OPTN or IS_UNQL)read FemailAddress write SetemailAddress
      stored emailAddress_Specified;
    property id_emailSender: Int64 Index(IS_UNQL)read Fid_emailSender write Fid_emailSender;
  end;

  listGroupsResponse = array of TMobytGroup;
  { "http://api.mobyt.it/mobws"[Lit][GblCplx] }

  // ************************************************************************ //
  // XML       : Contact, global, <complexType>
  // Namespace : http://api.mobyt.it/mobws
  // ************************************************************************ //
  Contact = class(TRemotable)
  private
    Faddress: string;
    Faddress_Specified: boolean;
    Fbirthdate: TXSDateTime;
    Fbirthdate_Specified: boolean;
    Fcity: string;
    Fcity_Specified: boolean;
    Femail: string;
    Femail_Specified: boolean;
    Fid: string;
    Fid_Specified: boolean;
    Fid_contact: Int64;
    Fname_: string;
    Fname__Specified: boolean;
    Fphone_number: string;
    Fphone_number_Specified: boolean;
    Fprovince: string;
    Fprovince_Specified: boolean;
    Fsex: string;
    Fsex_Specified: boolean;
    Fsurname: string;
    Fsurname_Specified: boolean;
    Fzip: string;
    Fzip_Specified: boolean;
    procedure Setaddress(Index: Integer; const Astring: string);
    function address_Specified(Index: Integer): boolean;
    procedure Setbirthdate(Index: Integer; const ATXSDateTime: TXSDateTime);
    function birthdate_Specified(Index: Integer): boolean;
    procedure Setcity(Index: Integer; const Astring: string);
    function city_Specified(Index: Integer): boolean;
    procedure Setemail(Index: Integer; const Astring: string);
    function email_Specified(Index: Integer): boolean;
    procedure Setid(Index: Integer; const Astring: string);
    function id_Specified(Index: Integer): boolean;
    procedure Setname_(Index: Integer; const Astring: string);
    function name__Specified(Index: Integer): boolean;
    procedure Setphone_number(Index: Integer; const Astring: string);
    function phone_number_Specified(Index: Integer): boolean;
    procedure Setprovince(Index: Integer; const Astring: string);
    function province_Specified(Index: Integer): boolean;
    procedure Setsex(Index: Integer; const Astring: string);
    function sex_Specified(Index: Integer): boolean;
    procedure Setsurname(Index: Integer; const Astring: string);
    function surname_Specified(Index: Integer): boolean;
    procedure Setzip(Index: Integer; const Astring: string);
    function zip_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property address: string Index(IS_OPTN or IS_UNQL)read Faddress write Setaddress stored address_Specified;
    property birthdate: TXSDateTime Index(IS_OPTN or IS_UNQL)read Fbirthdate write Setbirthdate
      stored birthdate_Specified;
    property city: string Index(IS_OPTN or IS_UNQL)read Fcity write Setcity stored city_Specified;
    property email: string Index(IS_OPTN or IS_UNQL)read Femail write Setemail stored email_Specified;
    property id: string Index(IS_OPTN or IS_UNQL)read Fid write Setid stored id_Specified;
    property id_contact: Int64 Index(IS_UNQL)read Fid_contact write Fid_contact;
    property name_: string Index(IS_OPTN or IS_UNQL)read Fname_ write Setname_ stored name__Specified;
    property phone_number: string Index(IS_OPTN or IS_UNQL)read Fphone_number write Setphone_number
      stored phone_number_Specified;
    property province: string Index(IS_OPTN or IS_UNQL)read Fprovince write Setprovince
      stored province_Specified;
    property sex: string Index(IS_OPTN or IS_UNQL)read Fsex write Setsex stored sex_Specified;
    property surname: string Index(IS_OPTN or IS_UNQL)read Fsurname write Setsurname stored surname_Specified;
    property zip: string Index(IS_OPTN or IS_UNQL)read Fzip write Setzip stored zip_Specified;
  end;

  // ************************************************************************ //
  // XML       : SMSStatus, global, <complexType>
  // Namespace : http://api.mobyt.it/mobws
  // ************************************************************************ //
  SMSStatus = class(TRemotable)
  private
    FdeliveryDate: TXSDateTime;
    FdeliveryDate_Specified: boolean;
    Frecipient: string;
    Frecipient_Specified: boolean;
    Fstatus: string;
    Fstatus_Specified: boolean;
    procedure SetdeliveryDate(Index: Integer; const ATXSDateTime: TXSDateTime);
    function deliveryDate_Specified(Index: Integer): boolean;
    procedure Setrecipient(Index: Integer; const Astring: string);
    function recipient_Specified(Index: Integer): boolean;
    procedure Setstatus(Index: Integer; const Astring: string);
    function status_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property deliveryDate: TXSDateTime Index(IS_OPTN or IS_UNQL)read FdeliveryDate write SetdeliveryDate
      stored deliveryDate_Specified;
    property recipient: string Index(IS_OPTN or IS_UNQL)read Frecipient write Setrecipient
      stored recipient_Specified;
    property status: string Index(IS_OPTN or IS_UNQL)read Fstatus write Setstatus stored status_Specified;
  end;

  // ************************************************************************ //
  // XML       : Subaccount, global, <complexType>
  // Namespace : http://api.mobyt.it/mobws
  // ************************************************************************ //
  Subaccount = class(TRemotable)
  private
    Factive: boolean;
    Faddress: string;
    Faddress_Specified: boolean;
    Fcity: string;
    Fcity_Specified: boolean;
    Fcompany_name: string;
    Fcompany_name_Specified: boolean;
    Fcredit_mode: Integer;
    Femail: string;
    Femail_Specified: boolean;
    Ffiscal_code: string;
    Ffiscal_code_Specified: boolean;
    Flogin: string;
    Flogin_Specified: boolean;
    Fmobile: string;
    Fmobile_Specified: boolean;
    Fname_: string;
    Fname__Specified: boolean;
    Fpassword: string;
    Fpassword_Specified: boolean;
    Fprovince: string;
    Fprovince_Specified: boolean;
    Fstr_subaccountType: string;
    Fstr_subaccountType_Specified: boolean;
    FsubaccountType: subaccountTYPE;
    FsubaccountType_Specified: boolean;
    Fsurname: string;
    Fsurname_Specified: boolean;
    Fvat_number: string;
    Fvat_number_Specified: boolean;
    Fzip: string;
    Fzip_Specified: boolean;
    procedure Setaddress(Index: Integer; const Astring: string);
    function address_Specified(Index: Integer): boolean;
    procedure Setcity(Index: Integer; const Astring: string);
    function city_Specified(Index: Integer): boolean;
    procedure Setcompany_name(Index: Integer; const Astring: string);
    function company_name_Specified(Index: Integer): boolean;
    procedure Setemail(Index: Integer; const Astring: string);
    function email_Specified(Index: Integer): boolean;
    procedure Setfiscal_code(Index: Integer; const Astring: string);
    function fiscal_code_Specified(Index: Integer): boolean;
    procedure Setlogin(Index: Integer; const Astring: string);
    function login_Specified(Index: Integer): boolean;
    procedure Setmobile(Index: Integer; const Astring: string);
    function mobile_Specified(Index: Integer): boolean;
    procedure Setname_(Index: Integer; const Astring: string);
    function name__Specified(Index: Integer): boolean;
    procedure Setpassword(Index: Integer; const Astring: string);
    function password_Specified(Index: Integer): boolean;
    procedure Setprovince(Index: Integer; const Astring: string);
    function province_Specified(Index: Integer): boolean;
    procedure Setstr_subaccountType(Index: Integer; const Astring: string);
    function str_subaccountType_Specified(Index: Integer): boolean;
    procedure SetsubaccountType(Index: Integer; const AsubaccountTYPE: subaccountTYPE);
    function subaccountType_Specified(Index: Integer): boolean;
    procedure Setsurname(Index: Integer; const Astring: string);
    function surname_Specified(Index: Integer): boolean;
    procedure Setvat_number(Index: Integer; const Astring: string);
    function vat_number_Specified(Index: Integer): boolean;
    procedure Setzip(Index: Integer; const Astring: string);
    function zip_Specified(Index: Integer): boolean;
  published
    property active: boolean Index(IS_UNQL)read Factive write Factive;
    property address: string Index(IS_OPTN or IS_UNQL)read Faddress write Setaddress stored address_Specified;
    property city: string Index(IS_OPTN or IS_UNQL)read Fcity write Setcity stored city_Specified;
    property company_name: string Index(IS_OPTN or IS_UNQL)read Fcompany_name write Setcompany_name
      stored company_name_Specified;
    property credit_mode: Integer Index(IS_UNQL)read Fcredit_mode write Fcredit_mode;
    property email: string Index(IS_OPTN or IS_UNQL)read Femail write Setemail stored email_Specified;
    property fiscal_code: string Index(IS_OPTN or IS_UNQL)read Ffiscal_code write Setfiscal_code
      stored fiscal_code_Specified;
    property login: string Index(IS_OPTN or IS_UNQL)read Flogin write Setlogin stored login_Specified;
    property mobile: string Index(IS_OPTN or IS_UNQL)read Fmobile write Setmobile stored mobile_Specified;
    property name_: string Index(IS_OPTN or IS_UNQL)read Fname_ write Setname_ stored name__Specified;
    property password: string Index(IS_OPTN or IS_UNQL)read Fpassword write Setpassword
      stored password_Specified;
    property province: string Index(IS_OPTN or IS_UNQL)read Fprovince write Setprovince
      stored province_Specified;
    property str_subaccountType: string Index(IS_OPTN or IS_UNQL)read Fstr_subaccountType
      write Setstr_subaccountType stored str_subaccountType_Specified;
    property subaccountTYPE: subaccountTYPE Index(IS_OPTN or IS_UNQL)read FsubaccountType
      write SetsubaccountType stored subaccountType_Specified;
    property surname: string Index(IS_OPTN or IS_UNQL)read Fsurname write Setsurname stored surname_Specified;
    property vat_number: string Index(IS_OPTN or IS_UNQL)read Fvat_number write Setvat_number
      stored vat_number_Specified;
    property zip: string Index(IS_OPTN or IS_UNQL)read Fzip write Setzip stored zip_Specified;
  end;

  getHistoryResponse = array of SentMessage;
  { "http://api.mobyt.it/mobws"[Lit][GblCplx] }

  // ************************************************************************ //
  // XML       : SentMessage, global, <complexType>
  // Namespace : http://api.mobyt.it/mobws
  // ************************************************************************ //
  SentMessage = class(TRemotable)
  private
    Fdate: TXSDateTime;
    Fdate_Specified: boolean;
    FmessageId: string;
    FmessageId_Specified: boolean;
    FmessageType: string;
    FmessageType_Specified: boolean;
    Frecipients: Integer;
    Fsender: string;
    Fsender_Specified: boolean;
    FsentWhen: TXSDateTime;
    FsentWhen_Specified: boolean;
    procedure Setdate(Index: Integer; const ATXSDateTime: TXSDateTime);
    function date_Specified(Index: Integer): boolean;
    procedure SetmessageId(Index: Integer; const Astring: string);
    function messageId_Specified(Index: Integer): boolean;
    procedure SetmessageType(Index: Integer; const Astring: string);
    function messageType_Specified(Index: Integer): boolean;
    procedure Setsender(Index: Integer; const Astring: string);
    function sender_Specified(Index: Integer): boolean;
    procedure SetsentWhen(Index: Integer; const ATXSDateTime: TXSDateTime);
    function sentWhen_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property date: TXSDateTime Index(IS_OPTN or IS_UNQL)read Fdate write Setdate stored date_Specified;
    property messageId: string Index(IS_OPTN or IS_UNQL)read FmessageId write SetmessageId
      stored messageId_Specified;
    property messageType: string Index(IS_OPTN or IS_UNQL)read FmessageType write SetmessageType
      stored messageType_Specified;
    property recipients: Integer Index(IS_UNQL)read Frecipients write Frecipients;
    property sender: string Index(IS_OPTN or IS_UNQL)read Fsender write Setsender stored sender_Specified;
    property sentWhen: TXSDateTime Index(IS_OPTN or IS_UNQL)read FsentWhen write SetsentWhen
      stored sentWhen_Specified;
  end;

  // ************************************************************************ //
  // Namespace : http://api.mobyt.it/mobws
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // use       : literal
  // binding   : MobytWSPortBinding
  // service   : MobytWSService
  // port      : MobytWSPort
  // URL       : http://api.mobyt.it:80/mobws
  // ************************************************************************ //
  MobytWS = interface(IInvokable)
    ['{833C6180-87ED-9B12-78A0-2AB26FA71B42}']
    function getAvailableSMS(const username: string; const password: string; const messageType: string;
      const nation: string): Int64; stdcall;
    function getCredits(const username: string; const password: string)
      : getSubaccountCreditsResponse; stdcall;
    function sendSMS(const username: string; const password: string; const message_type: string;
      const sender: string; const recipient: string; const message_: string; const order_id: string)
      : string; stdcall;
    function listGroups(const username: string; const password: string): listGroupsResponse; stdcall;
    function addGroupToCampaign(const username: string; const password: string;
      const groups: listGroupsResponse; const Campaign: Campaign; const sendOptIn: boolean)
      : Campaign; stdcall;
    function deleteContacts(const username: string; const password: string; const contacts: Array_Of_Contact)
      : Integer; stdcall;
    function getHistory(const username: string; const password: string; const from: TXSDateTime;
      const to_: TXSDateTime): getHistoryResponse; stdcall;
    function getReceivedMessages(const username: string; const password: string; const date_from: TXSDateTime;
      const date_to: TXSDateTime): getReceivedMessagesByIdResponse; stdcall;
    function getReceivedMessagesById(const username: string; const password: string; const messageId: Int64)
      : getReceivedMessagesByIdResponse; stdcall;
    function getNewReceivedMessages(const username: string; const password: string)
      : getReceivedMessagesByIdResponse; stdcall;
    function getStoredSmsTpoas(const username: string; const password: string)
      : getApprovedAGCOMSmsTpoasResponse; stdcall;
    function getApprovedAGCOMSmsTpoas(const username: string; const password: string)
      : getApprovedAGCOMSmsTpoasResponse; stdcall;
    function deleteAGCOMSmsTpoa(const username: string; const password: string; const id_tpoa: Int64)
      : boolean; stdcall;
    function addSmsTpoa(const username: string; const password: string; const Tpoa: string;
      const FinalUser: FinalUser): Tpoa; stdcall;
    function getSMSEditPage(const username: string; const password: string): string; stdcall;
    function getDashboardPage(const username: string; const password: string): string; stdcall;
    function removeDelayed(const username: string; const password: string; const order_id: string)
      : boolean; stdcall;
    function scheduleSMS(const username: string; const password: string; const message_type: string;
      const sender: string; const recipient: string; const message_: string; const order_id: string;
      const send_when: TXSDateTime): string; stdcall;
    function getSMSStatus(const username: string; const password: string; const orderId: string)
      : getSMSStatusResponse; stdcall;
    function createSubaccount(const username: string; const password: string; const Subaccount: Subaccount)
      : Subaccount; stdcall;
    function getSubaccounts(const username: string; const password: string): getSubaccountsResponse; stdcall;
    function lockSubaccount(const username: string; const password: string; const Subaccount: Subaccount)
      : Subaccount; stdcall;
    function unlockSubaccount(const username: string; const password: string; const Subaccount: Subaccount)
      : Subaccount; stdcall;
    procedure moveCredits(const username: string; const password: string;
      const CreditMovement: CreditMovement); stdcall;
    function getSubaccountCredits(const username: string; const password: string;
      const Subaccount: Subaccount): getSubaccountCreditsResponse; stdcall;
    procedure createPurchase(const username: string; const password: string;
      const CreditMovement: CreditMovement); stdcall;
    procedure deletePurchase(const username: string; const password: string;
      const CreditMovement: CreditMovement); stdcall;
    function getPurchases(const username: string; const password: string; const Subaccount: Subaccount)
      : getPurchasesResponse; stdcall;
    function groupAddContacts(const username: string; const password: string; const Group: TMobytGroup;
      const contacts: Array_Of_Contact; const sendOptIn: boolean): Integer; stdcall;
    function groupAddContact(const username: string; const password: string; const Group: TMobytGroup;
      const Contact: Contact; const sendOptIn: boolean): Contact; stdcall;
    function addGroup(const username: string; const password: string; const name_: string)
      : TMobytGroup; stdcall;
    function getContact(const username: string; const password: string; const contactId: string)
      : Contact; stdcall;
    function addContactsToCampaign(const username: string; const password: string;
      const contacts: Array_Of_Contact; const Campaign: Campaign; const sendOptIn: boolean)
      : Campaign; stdcall;
    function getContacts(const username: string; const password: string; const email: string)
      : Contact; stdcall;
    function renameGroup(const username: string; const password: string; const Group: TMobytGroup)
      : TMobytGroup; stdcall;
    function groupDelEmail(const username: string; const password: string; const Group: TMobytGroup;
      const email: string): boolean; stdcall;
    function groupAddEmail(const username: string; const password: string; const Group: TMobytGroup;
      const email: string; const sendOptIn: boolean): boolean; stdcall;
    function groupAddOrUpdateContact(const username: string; const password: string; const Group: TMobytGroup;
      const Contact: Contact; const sendOptIn: boolean): Contact; stdcall;
    function groupAddOrUpdateContacts(const username: string; const password: string;
      const Group: TMobytGroup; const contacts: Array_Of_Contact; const sendOptIn: boolean): Integer; stdcall;
    function groupsAddOrUpdateContact(const username: string; const password: string;
      const groups: listGroupsResponse; const Contact: Contact; const forceUpdate: boolean): Contact; stdcall;
    function groupDelContact(const username: string; const password: string; const Group: TMobytGroup;
      const Contact: Contact): boolean; stdcall;
    function groupAddPhone(const username: string; const password: string; const Group: TMobytGroup;
      const phone: string): boolean; stdcall;
    function groupDelPhone(const username: string; const password: string; const Group: TMobytGroup;
      const phone: string): boolean; stdcall;
    function getActiveCampaign(const username: string; const password: string)
      : getActivableCampaignsResponse; stdcall;
    function getActivableCampaigns(const username: string; const password: string)
      : getActivableCampaignsResponse; stdcall;
    function setUpCampaign(const username: string; const password: string; const Campaign: Campaign)
      : Campaign; stdcall;
    function requestForSenderAdressesActivation(const username: string; const password: string;
      const EmailSender: EmailSender): boolean; stdcall;
    function getAvailableSenderAdresses(const username: string; const password: string)
      : getAvailableSenderAdressesResponse; stdcall;
    function addSenderAddress(const username: string; const password: string; const address: string)
      : EmailSender; stdcall;
    function setGroupForIssue(const username: string; const password: string;
      const groups: listGroupsResponse; const issue: CampaignIssue): CampaignIssue; stdcall;
    function addContactToCampaign(const username: string; const password: string; const Contact: Contact;
      const Campaign: Campaign; const sendOptIn: boolean): Campaign; stdcall;
    function updateContact(const username: string; const password: string; const Contact: Contact)
      : Contact; stdcall;
    function getGroupEmails(const username: string; const password: string; const Group: TMobytGroup)
      : getGroupPhonesResponse; stdcall;
    function deleteEmail(const username: string; const password: string; const email: string)
      : boolean; stdcall;
    function deleteEmails(const username: string; const password: string;
      const emails: getGroupPhonesResponse): Integer; stdcall;
    function getGroupPhones(const username: string; const password: string; const Group: TMobytGroup)
      : getGroupPhonesResponse; stdcall;
    function deletePhone(const username: string; const password: string; const phone: string)
      : boolean; stdcall;
    function deletePhones(const username: string; const password: string;
      const phones: getGroupPhonesResponse): Integer; stdcall;
    function deleteContact(const username: string; const password: string; const Contact: Contact)
      : boolean; stdcall;
    function sendMultipleSMS(const username: string; const password: string; const message_type: string;
      const sender: string; const recipients: getGroupPhonesResponse; const message_: string;
      const order_id: string): string; stdcall;
    function scheduleMultipleSMS(const username: string; const password: string; const message_type: string;
      const sender: string; const recipients: getGroupPhonesResponse; const message_: string;
      const order_id: string; const send_when: TXSDateTime): string; stdcall;
    function delGroup(const username: string; const password: string; const Group: TMobytGroup)
      : boolean; stdcall;
  end;

function GetMobytWS(UseWSDL: boolean = System.False; Addr: string = ''; HTTPRIO: THTTPRIO = nil): MobytWS;

type
  TJanuaSMS = class(TJanuaCoreComponent)
  private
    Fpassword: string;
    Fusername: string;
    FSMSMessage: string;
    FSMSType: string;
    Fsender: string;
    FTestPhone: string;
    FDataset: TDataset;
    FNameField: string;
    FPhoneField: string;
    FFamilyName: string;
    procedure Setpassword(const Value: string);
    procedure Setusername(const Value: string);
    procedure SetSMSMessage(const Value: string);
    procedure Setsender(const Value: string);
    procedure SetSMSType(const Value: string);
    procedure SetTestPhone(const Value: string);
    procedure SetDataset(const Value: TDataset);
    procedure SetFamilyName(const Value: string);
    procedure SetNameField(const Value: string);
    procedure Setphone(const Value: string);
  public
    procedure Send(phone, aMessage: string); overload;
    procedure Send(aPhone: string); overload;
    procedure SendList; virtual;
    procedure SendTest;
    procedure SendListClick(sender: TObject);
  published
    property username: string read Fusername write Setusername;
    property password: string read Fpassword write Setpassword;
    property SMSMessage: string read FSMSMessage write SetSMSMessage;
    property sender: string read Fsender write Setsender;
    property SMSType: string read FSMSType write SetSMSType;
    property TestPhone: string read FTestPhone write SetTestPhone;
    property Dataset: TDataset read FDataset write SetDataset;
    property NameField: string read FNameField write SetNameField;
    property FamilyName: string read FFamilyName write SetFamilyName;
    property PhoneField: string read FPhoneField write Setphone;

  end;

implementation

uses System.SysUtils;

function GetMobytWS(UseWSDL: boolean; Addr: string; HTTPRIO: THTTPRIO): MobytWS;
const
  defWSDL = 'http://api.mobyt.it/mobws?wsdl';
  defURL = 'http://api.mobyt.it:80/mobws';
  defSvc = 'MobytWSService';
  defPrt = 'MobytWSPort';
var
  RIO: THTTPRIO;
begin
  Result := nil;
  if (Addr = '') then
  begin
    if UseWSDL then
      Addr := defWSDL
    else
      Addr := defURL;
  end;
  if HTTPRIO = nil then
    RIO := THTTPRIO.Create(nil)
  else
    RIO := HTTPRIO;
  try
    Result := (RIO as MobytWS);
    if UseWSDL then
    begin
      RIO.WSDLLocation := Addr;
      RIO.Service := defSvc;
      RIO.Port := defPrt;
    end
    else
      RIO.url := Addr;
  finally
    if (Result = nil) and (HTTPRIO = nil) then
      RIO.Free;
  end;
end;

procedure TMobytGroup.Setid(Index: Integer; const Astring: string);
begin
  Fid := Astring;
  Fid_Specified := True;
end;

function TMobytGroup.id_Specified(Index: Integer): boolean;
begin
  Result := Fid_Specified;
end;

procedure TMobytGroup.Setname_(Index: Integer; const Astring: string);
begin
  Fname_ := Astring;
  Fname__Specified := True;
end;

function TMobytGroup.name__Specified(Index: Integer): boolean;
begin
  Result := Fname__Specified;
end;

procedure wssmsCredit.SetmessageType(Index: Integer; const Astring: string);
begin
  FmessageType := Astring;
  FmessageType_Specified := True;
end;

function wssmsCredit.messageType_Specified(Index: Integer): boolean;
begin
  Result := FmessageType_Specified;
end;

procedure wssmsCredit.Setnation(Index: Integer; const Astring: string);
begin
  Fnation := Astring;
  Fnation_Specified := True;
end;

function wssmsCredit.nation_Specified(Index: Integer): boolean;
begin
  Result := Fnation_Specified;
end;

procedure FinalUser.SetfinalUser_address(Index: Integer; const Astring: string);
begin
  FfinalUser_address := Astring;
  FfinalUser_address_Specified := True;
end;

function FinalUser.finalUser_address_Specified(Index: Integer): boolean;
begin
  Result := FfinalUser_address_Specified;
end;

procedure FinalUser.SetfinalUser_city(Index: Integer; const Astring: string);
begin
  FfinalUser_city := Astring;
  FfinalUser_city_Specified := True;
end;

function FinalUser.finalUser_city_Specified(Index: Integer): boolean;
begin
  Result := FfinalUser_city_Specified;
end;

procedure FinalUser.SetfinalUser_codFiscale(Index: Integer; const Astring: string);
begin
  FfinalUser_codFiscale := Astring;
  FfinalUser_codFiscale_Specified := True;
end;

function FinalUser.finalUser_codFiscale_Specified(Index: Integer): boolean;
begin
  Result := FfinalUser_codFiscale_Specified;
end;

procedure FinalUser.SetfinalUser_companyName(Index: Integer; const Astring: string);
begin
  FfinalUser_companyName := Astring;
  FfinalUser_companyName_Specified := True;
end;

function FinalUser.finalUser_companyName_Specified(Index: Integer): boolean;
begin
  Result := FfinalUser_companyName_Specified;
end;

procedure FinalUser.SetfinalUser_contactInfo(Index: Integer; const Astring: string);
begin
  FfinalUser_contactInfo := Astring;
  FfinalUser_contactInfo_Specified := True;
end;

function FinalUser.finalUser_contactInfo_Specified(Index: Integer): boolean;
begin
  Result := FfinalUser_contactInfo_Specified;
end;

procedure FinalUser.SetfinalUser_contactType(Index: Integer; const Astring: string);
begin
  FfinalUser_contactType := Astring;
  FfinalUser_contactType_Specified := True;
end;

function FinalUser.finalUser_contactType_Specified(Index: Integer): boolean;
begin
  Result := FfinalUser_contactType_Specified;
end;

procedure FinalUser.SetfinalUser_name(Index: Integer; const Astring: string);
begin
  FfinalUser_name := Astring;
  FfinalUser_name_Specified := True;
end;

function FinalUser.finalUser_name_Specified(Index: Integer): boolean;
begin
  Result := FfinalUser_name_Specified;
end;

procedure FinalUser.SetfinalUser_postalCode(Index: Integer; const Astring: string);
begin
  FfinalUser_postalCode := Astring;
  FfinalUser_postalCode_Specified := True;
end;

function FinalUser.finalUser_postalCode_Specified(Index: Integer): boolean;
begin
  Result := FfinalUser_postalCode_Specified;
end;

procedure FinalUser.SetfinalUser_surname(Index: Integer; const Astring: string);
begin
  FfinalUser_surname := Astring;
  FfinalUser_surname_Specified := True;
end;

function FinalUser.finalUser_surname_Specified(Index: Integer): boolean;
begin
  Result := FfinalUser_surname_Specified;
end;

procedure FinalUser.SetfinalUser_vatNumber(Index: Integer; const Astring: string);
begin
  FfinalUser_vatNumber := Astring;
  FfinalUser_vatNumber_Specified := True;
end;

function FinalUser.finalUser_vatNumber_Specified(Index: Integer): boolean;
begin
  Result := FfinalUser_vatNumber_Specified;
end;

destructor Tpoa.Destroy;
begin
  (FnotificationTime.Free);
  (FwsFinalUser.Free);
  inherited Destroy;
end;

procedure Tpoa.SetnotificationTime(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FnotificationTime := ATXSDateTime;
  FnotificationTime_Specified := True;
end;

function Tpoa.notificationTime_Specified(Index: Integer): boolean;
begin
  Result := FnotificationTime_Specified;
end;

procedure Tpoa.Setsender(Index: Integer; const Astring: string);
begin
  Fsender := Astring;
  Fsender_Specified := True;
end;

function Tpoa.sender_Specified(Index: Integer): boolean;
begin
  Result := Fsender_Specified;
end;

procedure Tpoa.SetwsFinalUser(Index: Integer; const AFinalUser: FinalUser);
begin
  FwsFinalUser := AFinalUser;
  FwsFinalUser_Specified := True;
end;

function Tpoa.wsFinalUser_Specified(Index: Integer): boolean;
begin
  Result := FwsFinalUser_Specified;
end;

procedure Campaign.Setaddress(Index: Integer; const Astring: string);
begin
  Faddress := Astring;
  Faddress_Specified := True;
end;

function Campaign.address_Specified(Index: Integer): boolean;
begin
  Result := Faddress_Specified;
end;

procedure Campaign.Setcompany(Index: Integer; const Astring: string);
begin
  Fcompany := Astring;
  Fcompany_Specified := True;
end;

function Campaign.company_Specified(Index: Integer): boolean;
begin
  Result := Fcompany_Specified;
end;

procedure Campaign.Setcopiright(Index: Integer; const Astring: string);
begin
  Fcopiright := Astring;
  Fcopiright_Specified := True;
end;

function Campaign.copiright_Specified(Index: Integer): boolean;
begin
  Result := Fcopiright_Specified;
end;

procedure Campaign.SetemailReplyTo(Index: Integer; const Astring: string);
begin
  FemailReplyTo := Astring;
  FemailReplyTo_Specified := True;
end;

function Campaign.emailReplyTo_Specified(Index: Integer): boolean;
begin
  Result := FemailReplyTo_Specified;
end;

procedure Campaign.SetemailSender(Index: Integer; const Astring: string);
begin
  FemailSender := Astring;
  FemailSender_Specified := True;
end;

function Campaign.emailSender_Specified(Index: Integer): boolean;
begin
  Result := FemailSender_Specified;
end;

procedure Campaign.Setfax(Index: Integer; const Astring: string);
begin
  Ffax := Astring;
  Ffax_Specified := True;
end;

function Campaign.fax_Specified(Index: Integer): boolean;
begin
  Result := Ffax_Specified;
end;

procedure Campaign.Setid_language(Index: Integer; const Astring: string);
begin
  Fid_language := Astring;
  Fid_language_Specified := True;
end;

function Campaign.id_language_Specified(Index: Integer): boolean;
begin
  Result := Fid_language_Specified;
end;

procedure Campaign.Setlabel_(Index: Integer; const Astring: string);
begin
  Flabel_ := Astring;
  Flabel__Specified := True;
end;

function Campaign.label__Specified(Index: Integer): boolean;
begin
  Result := Flabel__Specified;
end;

procedure Campaign.SetoptInSubject(Index: Integer; const Astring: string);
begin
  FoptInSubject := Astring;
  FoptInSubject_Specified := True;
end;

function Campaign.optInSubject_Specified(Index: Integer): boolean;
begin
  Result := FoptInSubject_Specified;
end;

procedure Campaign.Setphone(Index: Integer; const Astring: string);
begin
  Fphone := Astring;
  Fphone_Specified := True;
end;

function Campaign.phone_Specified(Index: Integer): boolean;
begin
  Result := Fphone_Specified;
end;

procedure Campaign.Setsender(Index: Integer; const Astring: string);
begin
  Fsender := Astring;
  Fsender_Specified := True;
end;

function Campaign.sender_Specified(Index: Integer): boolean;
begin
  Result := Fsender_Specified;
end;

procedure Campaign.Settitle(Index: Integer; const Astring: string);
begin
  Ftitle := Astring;
  Ftitle_Specified := True;
end;

function Campaign.title_Specified(Index: Integer): boolean;
begin
  Result := Ftitle_Specified;
end;

procedure Campaign.Seturl(Index: Integer; const Astring: string);
begin
  Furl := Astring;
  Furl_Specified := True;
end;

function Campaign.url_Specified(Index: Integer): boolean;
begin
  Result := Furl_Specified;
end;

procedure CampaignIssue.SetmessageHTML(Index: Integer; const Astring: string);
begin
  FmessageHTML := Astring;
  FmessageHTML_Specified := True;
end;

function CampaignIssue.messageHTML_Specified(Index: Integer): boolean;
begin
  Result := FmessageHTML_Specified;
end;

procedure CampaignIssue.SetmessageText(Index: Integer; const Astring: string);
begin
  FmessageText := Astring;
  FmessageText_Specified := True;
end;

function CampaignIssue.messageText_Specified(Index: Integer): boolean;
begin
  Result := FmessageText_Specified;
end;

procedure CampaignIssue.Setname_(Index: Integer; const Astring: string);
begin
  Fname_ := Astring;
  Fname__Specified := True;
end;

function CampaignIssue.name__Specified(Index: Integer): boolean;
begin
  Result := Fname__Specified;
end;

procedure CampaignIssue.Setsubject(Index: Integer; const Astring: string);
begin
  Fsubject := Astring;
  Fsubject_Specified := True;
end;

function CampaignIssue.subject_Specified(Index: Integer): boolean;
begin
  Result := Fsubject_Specified;
end;

procedure CampaignIssue.Seturl_editor(Index: Integer; const Astring: string);
begin
  Furl_editor := Astring;
  Furl_editor_Specified := True;
end;

function CampaignIssue.url_editor_Specified(Index: Integer): boolean;
begin
  Result := Furl_editor_Specified;
end;

procedure CampaignIssue.SetwebAnalitics(Index: Integer; const Astring: string);
begin
  FwebAnalitics := Astring;
  FwebAnalitics_Specified := True;
end;

function CampaignIssue.webAnalitics_Specified(Index: Integer): boolean;
begin
  Result := FwebAnalitics_Specified;
end;

destructor ReceivedMessage.Destroy;
begin
  FsmsDate.Free;
  inherited Destroy;
end;

procedure ReceivedMessage.Setkeyword(Index: Integer; const Astring: string);
begin
  Fkeyword := Astring;
  Fkeyword_Specified := True;
end;

function ReceivedMessage.keyword_Specified(Index: Integer): boolean;
begin
  Result := Fkeyword_Specified;
end;

procedure ReceivedMessage.SetmessageText(Index: Integer; const Astring: string);
begin
  FmessageText := Astring;
  FmessageText_Specified := True;
end;

function ReceivedMessage.messageText_Specified(Index: Integer): boolean;
begin
  Result := FmessageText_Specified;
end;

procedure ReceivedMessage.Setreceiver(Index: Integer; const Astring: string);
begin
  Freceiver := Astring;
  Freceiver_Specified := True;
end;

function ReceivedMessage.receiver_Specified(Index: Integer): boolean;
begin
  Result := Freceiver_Specified;
end;

procedure ReceivedMessage.Setsender(Index: Integer; const Astring: string);
begin
  Fsender := Astring;
  Fsender_Specified := True;
end;

function ReceivedMessage.sender_Specified(Index: Integer): boolean;
begin
  Result := Fsender_Specified;
end;

procedure ReceivedMessage.SetsmsDate(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FsmsDate := ATXSDateTime;
  FsmsDate_Specified := True;
end;

function ReceivedMessage.smsDate_Specified(Index: Integer): boolean;
begin
  Result := FsmsDate_Specified;
end;

destructor CreditMovement.Destroy;
begin
  JanuaFree(Frecording_date);
  inherited Destroy;
end;

procedure CreditMovement.SetpricePerMessage(Index: Integer; const AArray_Of_double: Array_Of_double);
begin
  FpricePerMessage := AArray_Of_double;
  FpricePerMessage_Specified := True;
end;

function CreditMovement.pricePerMessage_Specified(Index: Integer): boolean;
begin
  Result := FpricePerMessage_Specified;
end;

procedure CreditMovement.Setrecording_date(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  Frecording_date := ATXSDateTime;
  Frecording_date_Specified := True;
end;

function CreditMovement.recording_date_Specified(Index: Integer): boolean;
begin
  Result := Frecording_date_Specified;
end;

procedure CreditMovement.Setsms_type(Index: Integer; const Astring: string);
begin
  Fsms_type := Astring;
  Fsms_type_Specified := True;
end;

function CreditMovement.sms_type_Specified(Index: Integer): boolean;
begin
  Result := Fsms_type_Specified;
end;

procedure CreditMovement.Setsms_types(Index: Integer; const AgetGroupPhonesResponse: getGroupPhonesResponse);
begin
  Fsms_types := AgetGroupPhonesResponse;
  Fsms_types_Specified := True;
end;

function CreditMovement.sms_types_Specified(Index: Integer): boolean;
begin
  Result := Fsms_types_Specified;
end;

procedure CreditMovement.Setsubaccount_login(Index: Integer; const Astring: string);
begin
  Fsubaccount_login := Astring;
  Fsubaccount_login_Specified := True;
end;

function CreditMovement.subaccount_login_Specified(Index: Integer): boolean;
begin
  Result := Fsubaccount_login_Specified;
end;

procedure EmailSender.SetemailAddress(Index: Integer; const Astring: string);
begin
  FemailAddress := Astring;
  FemailAddress_Specified := True;
end;

function EmailSender.emailAddress_Specified(Index: Integer): boolean;
begin
  Result := FemailAddress_Specified;
end;

destructor Contact.Destroy;
begin
  Fbirthdate.Free;
  inherited Destroy;
end;

procedure Contact.Setaddress(Index: Integer; const Astring: string);
begin
  Faddress := Astring;
  Faddress_Specified := True;
end;

function Contact.address_Specified(Index: Integer): boolean;
begin
  Result := Faddress_Specified;
end;

procedure Contact.Setbirthdate(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  Fbirthdate := ATXSDateTime;
  Fbirthdate_Specified := True;
end;

function Contact.birthdate_Specified(Index: Integer): boolean;
begin
  Result := Fbirthdate_Specified;
end;

procedure Contact.Setcity(Index: Integer; const Astring: string);
begin
  Fcity := Astring;
  Fcity_Specified := True;
end;

function Contact.city_Specified(Index: Integer): boolean;
begin
  Result := Fcity_Specified;
end;

procedure Contact.Setemail(Index: Integer; const Astring: string);
begin
  Femail := Astring;
  Femail_Specified := True;
end;

function Contact.email_Specified(Index: Integer): boolean;
begin
  Result := Femail_Specified;
end;

procedure Contact.Setid(Index: Integer; const Astring: string);
begin
  Fid := Astring;
  Fid_Specified := True;
end;

function Contact.id_Specified(Index: Integer): boolean;
begin
  Result := Fid_Specified;
end;

procedure Contact.Setname_(Index: Integer; const Astring: string);
begin
  Fname_ := Astring;
  Fname__Specified := True;
end;

function Contact.name__Specified(Index: Integer): boolean;
begin
  Result := Fname__Specified;
end;

procedure Contact.Setphone_number(Index: Integer; const Astring: string);
begin
  Fphone_number := Astring;
  Fphone_number_Specified := True;
end;

function Contact.phone_number_Specified(Index: Integer): boolean;
begin
  Result := Fphone_number_Specified;
end;

procedure Contact.Setprovince(Index: Integer; const Astring: string);
begin
  Fprovince := Astring;
  Fprovince_Specified := True;
end;

function Contact.province_Specified(Index: Integer): boolean;
begin
  Result := Fprovince_Specified;
end;

procedure Contact.Setsex(Index: Integer; const Astring: string);
begin
  Fsex := Astring;
  Fsex_Specified := True;
end;

function Contact.sex_Specified(Index: Integer): boolean;
begin
  Result := Fsex_Specified;
end;

procedure Contact.Setsurname(Index: Integer; const Astring: string);
begin
  Fsurname := Astring;
  Fsurname_Specified := True;
end;

function Contact.surname_Specified(Index: Integer): boolean;
begin
  Result := Fsurname_Specified;
end;

procedure Contact.Setzip(Index: Integer; const Astring: string);
begin
  Fzip := Astring;
  Fzip_Specified := True;
end;

function Contact.zip_Specified(Index: Integer): boolean;
begin
  Result := Fzip_Specified;
end;

destructor SMSStatus.Destroy;
begin
  JanuaFree(FdeliveryDate);
  inherited Destroy;
end;

procedure SMSStatus.SetdeliveryDate(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FdeliveryDate := ATXSDateTime;
  FdeliveryDate_Specified := True;
end;

function SMSStatus.deliveryDate_Specified(Index: Integer): boolean;
begin
  Result := FdeliveryDate_Specified;
end;

procedure SMSStatus.Setrecipient(Index: Integer; const Astring: string);
begin
  Frecipient := Astring;
  Frecipient_Specified := True;
end;

function SMSStatus.recipient_Specified(Index: Integer): boolean;
begin
  Result := Frecipient_Specified;
end;

procedure SMSStatus.Setstatus(Index: Integer; const Astring: string);
begin
  Fstatus := Astring;
  Fstatus_Specified := True;
end;

function SMSStatus.status_Specified(Index: Integer): boolean;
begin
  Result := Fstatus_Specified;
end;

procedure Subaccount.Setaddress(Index: Integer; const Astring: string);
begin
  Faddress := Astring;
  Faddress_Specified := True;
end;

function Subaccount.address_Specified(Index: Integer): boolean;
begin
  Result := Faddress_Specified;
end;

procedure Subaccount.Setcity(Index: Integer; const Astring: string);
begin
  Fcity := Astring;
  Fcity_Specified := True;
end;

function Subaccount.city_Specified(Index: Integer): boolean;
begin
  Result := Fcity_Specified;
end;

procedure Subaccount.Setcompany_name(Index: Integer; const Astring: string);
begin
  Fcompany_name := Astring;
  Fcompany_name_Specified := True;
end;

function Subaccount.company_name_Specified(Index: Integer): boolean;
begin
  Result := Fcompany_name_Specified;
end;

procedure Subaccount.Setemail(Index: Integer; const Astring: string);
begin
  Femail := Astring;
  Femail_Specified := True;
end;

function Subaccount.email_Specified(Index: Integer): boolean;
begin
  Result := Femail_Specified;
end;

procedure Subaccount.Setfiscal_code(Index: Integer; const Astring: string);
begin
  Ffiscal_code := Astring;
  Ffiscal_code_Specified := True;
end;

function Subaccount.fiscal_code_Specified(Index: Integer): boolean;
begin
  Result := Ffiscal_code_Specified;
end;

procedure Subaccount.Setlogin(Index: Integer; const Astring: string);
begin
  Flogin := Astring;
  Flogin_Specified := True;
end;

function Subaccount.login_Specified(Index: Integer): boolean;
begin
  Result := Flogin_Specified;
end;

procedure Subaccount.Setmobile(Index: Integer; const Astring: string);
begin
  Fmobile := Astring;
  Fmobile_Specified := True;
end;

function Subaccount.mobile_Specified(Index: Integer): boolean;
begin
  Result := Fmobile_Specified;
end;

procedure Subaccount.Setname_(Index: Integer; const Astring: string);
begin
  Fname_ := Astring;
  Fname__Specified := True;
end;

function Subaccount.name__Specified(Index: Integer): boolean;
begin
  Result := Fname__Specified;
end;

procedure Subaccount.Setpassword(Index: Integer; const Astring: string);
begin
  Fpassword := Astring;
  Fpassword_Specified := True;
end;

function Subaccount.password_Specified(Index: Integer): boolean;
begin
  Result := Fpassword_Specified;
end;

procedure Subaccount.Setprovince(Index: Integer; const Astring: string);
begin
  Fprovince := Astring;
  Fprovince_Specified := True;
end;

function Subaccount.province_Specified(Index: Integer): boolean;
begin
  Result := Fprovince_Specified;
end;

procedure Subaccount.Setstr_subaccountType(Index: Integer; const Astring: string);
begin
  Fstr_subaccountType := Astring;
  Fstr_subaccountType_Specified := True;
end;

function Subaccount.str_subaccountType_Specified(Index: Integer): boolean;
begin
  Result := Fstr_subaccountType_Specified;
end;

procedure Subaccount.SetsubaccountType(Index: Integer; const AsubaccountTYPE: subaccountTYPE);
begin
  FsubaccountType := AsubaccountTYPE;
  FsubaccountType_Specified := True;
end;

function Subaccount.subaccountType_Specified(Index: Integer): boolean;
begin
  Result := FsubaccountType_Specified;
end;

procedure Subaccount.Setsurname(Index: Integer; const Astring: string);
begin
  Fsurname := Astring;
  Fsurname_Specified := True;
end;

function Subaccount.surname_Specified(Index: Integer): boolean;
begin
  Result := Fsurname_Specified;
end;

procedure Subaccount.Setvat_number(Index: Integer; const Astring: string);
begin
  Fvat_number := Astring;
  Fvat_number_Specified := True;
end;

function Subaccount.vat_number_Specified(Index: Integer): boolean;
begin
  Result := Fvat_number_Specified;
end;

procedure Subaccount.Setzip(Index: Integer; const Astring: string);
begin
  Fzip := Astring;
  Fzip_Specified := True;
end;

function Subaccount.zip_Specified(Index: Integer): boolean;
begin
  Result := Fzip_Specified;
end;

destructor SentMessage.Destroy;
begin
  JanuaFree(Fdate);
  JanuaFree(FsentWhen);
  inherited Destroy;
end;

procedure SentMessage.Setdate(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  Fdate := ATXSDateTime;
  Fdate_Specified := True;
end;

function SentMessage.date_Specified(Index: Integer): boolean;
begin
  Result := Fdate_Specified;
end;

procedure SentMessage.SetmessageId(Index: Integer; const Astring: string);
begin
  FmessageId := Astring;
  FmessageId_Specified := True;
end;

function SentMessage.messageId_Specified(Index: Integer): boolean;
begin
  Result := FmessageId_Specified;
end;

procedure SentMessage.SetmessageType(Index: Integer; const Astring: string);
begin
  FmessageType := Astring;
  FmessageType_Specified := True;
end;

function SentMessage.messageType_Specified(Index: Integer): boolean;
begin
  Result := FmessageType_Specified;
end;

procedure SentMessage.Setsender(Index: Integer; const Astring: string);
begin
  Fsender := Astring;
  Fsender_Specified := True;
end;

function SentMessage.sender_Specified(Index: Integer): boolean;
begin
  Result := Fsender_Specified;
end;

procedure SentMessage.SetsentWhen(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FsentWhen := ATXSDateTime;
  FsentWhen_Specified := True;
end;

function SentMessage.sentWhen_Specified(Index: Integer): boolean;
begin
  Result := FsentWhen_Specified;
end;

{ TJanuaSMS }

procedure TJanuaSMS.Send(phone, aMessage: string);
var
  aMobytSms: MobytWS;
  aPhone: string;
begin
  aPhone := Janua.Core.Functions.StripString(phone);
  try
    aMobytSms := GetMobytWS;
    self.FLastMessage := aMobytSms.sendSMS(self.Fusername, self.Fpassword, 'N', 'BDM Genova', phone,
      aMessage, '0');
  except
    on e: exception do
    begin
      self.WriteError('TJanuaSMS.Send(phone, aMessage: string)', e, True);
    end;

  end;
end;

procedure TJanuaSMS.Send(aPhone: string);
begin
  self.Send(aPhone, self.FSMSMessage);
end;

procedure TJanuaSMS.SendList;
begin
  if assigned(self.FDataset) and self.FDataset.active and (self.Dataset.RecordCount > 0) then
  begin
    self.FDataset.First;
    while not self.FDataset.Eof do
    begin
      try
        Send('+39' + Janua.Core.Functions.StripString(FDataset.FieldByName(FPhoneField).AsWideString));
      except
        on e: exception do
        begin
          self.WriteError('Errore invio Sms: ', e, False);
        end;
      end;
      FDataset.Next;
    end;
  end;
end;

procedure TJanuaSMS.SendListClick(sender: TObject);
begin
  self.SendList;
end;

procedure TJanuaSMS.SendTest;
begin
  self.Send(self.FTestPhone);
end;

procedure TJanuaSMS.SetDataset(const Value: TDataset);
begin
  FDataset := Value;
end;

procedure TJanuaSMS.SetFamilyName(const Value: string);
begin
  FFamilyName := Value;
end;

procedure TJanuaSMS.SetNameField(const Value: string);
begin
  FNameField := Value;
end;

procedure TJanuaSMS.Setpassword(const Value: string);
begin
  Fpassword := Value;
end;

procedure TJanuaSMS.Setphone(const Value: string);
begin
  FPhoneField := Value;
end;

procedure TJanuaSMS.Setsender(const Value: string);
begin
  Fsender := Value;
end;

procedure TJanuaSMS.SetSMSMessage(const Value: string);
begin
  FSMSMessage := Value;
end;

procedure TJanuaSMS.SetSMSType(const Value: string);
begin
  FSMSType := Value;
end;

procedure TJanuaSMS.SetTestPhone(const Value: string);
begin
  FTestPhone := Value;
end;

procedure TJanuaSMS.Setusername(const Value: string);
begin
  Fusername := Value;
end;

initialization

try
  { MobytWS }
  InvRegistry.RegisterInterface(TypeInfo(MobytWS), 'http://api.mobyt.it/mobws', 'UTF-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(MobytWS), '');
  InvRegistry.RegisterInvokeOptions(TypeInfo(MobytWS), ioDocument);
  { MobytWS.getAvailableSMS }
  InvRegistry.RegisterMethodInfo(TypeInfo(MobytWS), 'getAvailableSMS', '', '[ReturnName="return"]',
    IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'getAvailableSMS', 'username', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'getAvailableSMS', 'password', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'getAvailableSMS', 'messageType', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'getAvailableSMS', 'nation', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'getAvailableSMS', 'return', '', '', IS_UNQL);
  { MobytWS.getCredits }
  InvRegistry.RegisterMethodInfo(TypeInfo(MobytWS), 'getCredits', '', '[ReturnName="return"]',
    IS_OPTN or IS_UNBD or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'getCredits', 'username', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'getCredits', 'password', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'getCredits', 'return', '', '[ArrayItemName="return"]',
    IS_UNBD or IS_UNQL);
  { MobytWS.sendSMS }
  InvRegistry.RegisterMethodInfo(TypeInfo(MobytWS), 'sendSMS', '', '[ReturnName="return"]',
    IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'sendSMS', 'username', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'sendSMS', 'password', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'sendSMS', 'message_type', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'sendSMS', 'sender', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'sendSMS', 'recipient', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'sendSMS', 'message_', 'message', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'sendSMS', 'order_id', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'sendSMS', 'return', '', '', IS_UNQL);
  { MobytWS.listGroups }
  InvRegistry.RegisterMethodInfo(TypeInfo(MobytWS), 'listGroups', '', '[ReturnName="return"]',
    IS_OPTN or IS_UNBD or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'listGroups', 'username', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'listGroups', 'password', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'listGroups', 'return', '', '[ArrayItemName="return"]',
    IS_UNBD or IS_UNQL);
  { MobytWS.addGroupToCampaign }
  InvRegistry.RegisterMethodInfo(TypeInfo(MobytWS), 'addGroupToCampaign', '', '[ReturnName="return"]',
    IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'addGroupToCampaign', 'username', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'addGroupToCampaign', 'password', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'addGroupToCampaign', 'groups', '',
    '[ArrayItemName="return"]', IS_UNBD or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'addGroupToCampaign', 'campaign', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'addGroupToCampaign', 'sendOptIn', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'addGroupToCampaign', 'return', '', '', IS_UNQL);
  { MobytWS.deleteContacts }
  InvRegistry.RegisterMethodInfo(TypeInfo(MobytWS), 'deleteContacts', '', '[ReturnName="return"]', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'deleteContacts', 'username', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'deleteContacts', 'password', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'deleteContacts', 'contacts', '', '', IS_UNBD or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'deleteContacts', 'return', '', '', IS_UNQL);
  { MobytWS.getHistory }
  InvRegistry.RegisterMethodInfo(TypeInfo(MobytWS), 'getHistory', '', '[ReturnName="return"]',
    IS_OPTN or IS_UNBD or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'getHistory', 'username', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'getHistory', 'password', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'getHistory', 'from', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'getHistory', 'to_', 'to', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'getHistory', 'return', '', '[ArrayItemName="return"]',
    IS_UNBD or IS_UNQL);
  { MobytWS.getReceivedMessages }
  InvRegistry.RegisterMethodInfo(TypeInfo(MobytWS), 'getReceivedMessages', '', '[ReturnName="return"]',
    IS_OPTN or IS_UNBD or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'getReceivedMessages', 'username', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'getReceivedMessages', 'password', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'getReceivedMessages', 'date_from', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'getReceivedMessages', 'date_to', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'getReceivedMessages', 'return', '',
    '[ArrayItemName="return"]', IS_UNBD or IS_UNQL);
  { MobytWS.getReceivedMessagesById }
  InvRegistry.RegisterMethodInfo(TypeInfo(MobytWS), 'getReceivedMessagesById', '', '[ReturnName="return"]',
    IS_OPTN or IS_UNBD or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'getReceivedMessagesById', 'username', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'getReceivedMessagesById', 'password', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'getReceivedMessagesById', 'messageId', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'getReceivedMessagesById', 'return', '',
    '[ArrayItemName="return"]', IS_UNBD or IS_UNQL);
  { MobytWS.getNewReceivedMessages }
  InvRegistry.RegisterMethodInfo(TypeInfo(MobytWS), 'getNewReceivedMessages', '', '[ReturnName="return"]',
    IS_OPTN or IS_UNBD or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'getNewReceivedMessages', 'username', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'getNewReceivedMessages', 'password', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'getNewReceivedMessages', 'return', '',
    '[ArrayItemName="return"]', IS_UNBD or IS_UNQL);
  { MobytWS.getStoredSmsTpoas }
  InvRegistry.RegisterMethodInfo(TypeInfo(MobytWS), 'getStoredSmsTpoas', '', '[ReturnName="return"]',
    IS_OPTN or IS_UNBD or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'getStoredSmsTpoas', 'username', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'getStoredSmsTpoas', 'password', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'getStoredSmsTpoas', 'return', '',
    '[ArrayItemName="return"]', IS_UNBD or IS_UNQL);
  { MobytWS.getApprovedAGCOMSmsTpoas }
  InvRegistry.RegisterMethodInfo(TypeInfo(MobytWS), 'getApprovedAGCOMSmsTpoas', '', '[ReturnName="return"]',
    IS_OPTN or IS_UNBD or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'getApprovedAGCOMSmsTpoas', 'username', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'getApprovedAGCOMSmsTpoas', 'password', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'getApprovedAGCOMSmsTpoas', 'return', '',
    '[ArrayItemName="return"]', IS_UNBD or IS_UNQL);
  { MobytWS.deleteAGCOMSmsTpoa }
  InvRegistry.RegisterMethodInfo(TypeInfo(MobytWS), 'deleteAGCOMSmsTpoa', '',
    '[ReturnName="return"]', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'deleteAGCOMSmsTpoa', 'username', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'deleteAGCOMSmsTpoa', 'password', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'deleteAGCOMSmsTpoa', 'id_tpoa', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'deleteAGCOMSmsTpoa', 'return', '', '', IS_UNQL);
  { MobytWS.addSmsTpoa }
  InvRegistry.RegisterMethodInfo(TypeInfo(MobytWS), 'addSmsTpoa', '', '[ReturnName="return"]',
    IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'addSmsTpoa', 'username', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'addSmsTpoa', 'password', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'addSmsTpoa', 'tpoa', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'addSmsTpoa', 'finalUser', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'addSmsTpoa', 'return', '', '', IS_UNQL);
  { MobytWS.getSMSEditPage }
  InvRegistry.RegisterMethodInfo(TypeInfo(MobytWS), 'getSMSEditPage', '', '[ReturnName="return"]',
    IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'getSMSEditPage', 'username', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'getSMSEditPage', 'password', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'getSMSEditPage', 'return', '', '', IS_UNQL);
  { MobytWS.getDashboardPage }
  InvRegistry.RegisterMethodInfo(TypeInfo(MobytWS), 'getDashboardPage', '', '[ReturnName="return"]',
    IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'getDashboardPage', 'username', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'getDashboardPage', 'password', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'getDashboardPage', 'return', '', '', IS_UNQL);
  { MobytWS.removeDelayed }
  InvRegistry.RegisterMethodInfo(TypeInfo(MobytWS), 'removeDelayed', '', '[ReturnName="return"]', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'removeDelayed', 'username', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'removeDelayed', 'password', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'removeDelayed', 'order_id', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'removeDelayed', 'return', '', '', IS_UNQL);
  { MobytWS.scheduleSMS }
  InvRegistry.RegisterMethodInfo(TypeInfo(MobytWS), 'scheduleSMS', '', '[ReturnName="return"]',
    IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'scheduleSMS', 'username', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'scheduleSMS', 'password', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'scheduleSMS', 'message_type', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'scheduleSMS', 'sender', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'scheduleSMS', 'recipient', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'scheduleSMS', 'message_', 'message', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'scheduleSMS', 'order_id', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'scheduleSMS', 'send_when', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'scheduleSMS', 'return', '', '', IS_UNQL);
  { MobytWS.getSMSStatus }
  InvRegistry.RegisterMethodInfo(TypeInfo(MobytWS), 'getSMSStatus', '', '[ReturnName="return"]',
    IS_OPTN or IS_UNBD or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'getSMSStatus', 'username', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'getSMSStatus', 'password', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'getSMSStatus', 'orderId', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'getSMSStatus', 'return', '', '[ArrayItemName="return"]',
    IS_UNBD or IS_UNQL);
  { MobytWS.createSubaccount }
  InvRegistry.RegisterMethodInfo(TypeInfo(MobytWS), 'createSubaccount', '', '[ReturnName="return"]',
    IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'createSubaccount', 'username', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'createSubaccount', 'password', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'createSubaccount', 'subaccount', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'createSubaccount', 'return', '', '', IS_UNQL);
  { MobytWS.getSubaccounts }
  InvRegistry.RegisterMethodInfo(TypeInfo(MobytWS), 'getSubaccounts', '', '[ReturnName="return"]',
    IS_OPTN or IS_UNBD or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'getSubaccounts', 'username', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'getSubaccounts', 'password', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'getSubaccounts', 'return', '', '[ArrayItemName="return"]',
    IS_UNBD or IS_UNQL);
  { MobytWS.lockSubaccount }
  InvRegistry.RegisterMethodInfo(TypeInfo(MobytWS), 'lockSubaccount', '', '[ReturnName="return"]',
    IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'lockSubaccount', 'username', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'lockSubaccount', 'password', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'lockSubaccount', 'subaccount', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'lockSubaccount', 'return', '', '', IS_UNQL);
  { MobytWS.unlockSubaccount }
  InvRegistry.RegisterMethodInfo(TypeInfo(MobytWS), 'unlockSubaccount', '', '[ReturnName="return"]',
    IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'unlockSubaccount', 'username', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'unlockSubaccount', 'password', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'unlockSubaccount', 'subaccount', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'unlockSubaccount', 'return', '', '', IS_UNQL);
  { MobytWS.moveCredits }
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'moveCredits', 'username', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'moveCredits', 'password', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'moveCredits', 'creditmovement', '', '', IS_UNQL);
  { MobytWS.getSubaccountCredits }
  InvRegistry.RegisterMethodInfo(TypeInfo(MobytWS), 'getSubaccountCredits', '', '[ReturnName="return"]',
    IS_OPTN or IS_UNBD or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'getSubaccountCredits', 'username', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'getSubaccountCredits', 'password', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'getSubaccountCredits', 'subaccount', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'getSubaccountCredits', 'return', '',
    '[ArrayItemName="return"]', IS_UNBD or IS_UNQL);
  { MobytWS.createPurchase }
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'createPurchase', 'username', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'createPurchase', 'password', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'createPurchase', 'creditmovement', '', '', IS_UNQL);
  { MobytWS.deletePurchase }
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'deletePurchase', 'username', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'deletePurchase', 'password', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'deletePurchase', 'creditmovement', '', '', IS_UNQL);
  { MobytWS.getPurchases }
  InvRegistry.RegisterMethodInfo(TypeInfo(MobytWS), 'getPurchases', '', '[ReturnName="return"]',
    IS_OPTN or IS_UNBD or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'getPurchases', 'username', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'getPurchases', 'password', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'getPurchases', 'subaccount', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'getPurchases', 'return', '', '[ArrayItemName="return"]',
    IS_UNBD or IS_UNQL);
  { MobytWS.groupAddContacts }
  InvRegistry.RegisterMethodInfo(TypeInfo(MobytWS), 'groupAddContacts', '', '[ReturnName="return"]', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'groupAddContacts', 'username', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'groupAddContacts', 'password', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'groupAddContacts', 'group', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'groupAddContacts', 'contacts', '', '',
    IS_UNBD or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'groupAddContacts', 'sendOptIn', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'groupAddContacts', 'return', '', '', IS_UNQL);
  { MobytWS.groupAddContact }
  InvRegistry.RegisterMethodInfo(TypeInfo(MobytWS), 'groupAddContact', '', '[ReturnName="return"]',
    IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'groupAddContact', 'username', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'groupAddContact', 'password', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'groupAddContact', 'group', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'groupAddContact', 'contact', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'groupAddContact', 'sendOptIn', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'groupAddContact', 'return', '', '', IS_UNQL);
  { MobytWS.addGroup }
  InvRegistry.RegisterMethodInfo(TypeInfo(MobytWS), 'addGroup', '', '[ReturnName="return"]',
    IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'addGroup', 'username', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'addGroup', 'password', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'addGroup', 'name_', 'name', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'addGroup', 'return', '', '', IS_UNQL);
  { MobytWS.getContact }
  InvRegistry.RegisterMethodInfo(TypeInfo(MobytWS), 'getContact', '', '[ReturnName="return"]',
    IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'getContact', 'username', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'getContact', 'password', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'getContact', 'contactId', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'getContact', 'return', '', '', IS_UNQL);
  { MobytWS.addContactsToCampaign }
  InvRegistry.RegisterMethodInfo(TypeInfo(MobytWS), 'addContactsToCampaign', '', '[ReturnName="return"]',
    IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'addContactsToCampaign', 'username', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'addContactsToCampaign', 'password', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'addContactsToCampaign', 'contacts', '', '',
    IS_UNBD or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'addContactsToCampaign', 'campaign', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'addContactsToCampaign', 'sendOptIn', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'addContactsToCampaign', 'return', '', '', IS_UNQL);
  { MobytWS.getContacts }
  InvRegistry.RegisterMethodInfo(TypeInfo(MobytWS), 'getContacts', '', '[ReturnName="return"]',
    IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'getContacts', 'username', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'getContacts', 'password', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'getContacts', 'email', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'getContacts', 'return', '', '', IS_UNQL);
  { MobytWS.renameGroup }
  InvRegistry.RegisterMethodInfo(TypeInfo(MobytWS), 'renameGroup', '', '[ReturnName="return"]',
    IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'renameGroup', 'username', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'renameGroup', 'password', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'renameGroup', 'group', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'renameGroup', 'return', '', '', IS_UNQL);
  { MobytWS.groupDelEmail }
  InvRegistry.RegisterMethodInfo(TypeInfo(MobytWS), 'groupDelEmail', '', '[ReturnName="return"]', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'groupDelEmail', 'username', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'groupDelEmail', 'password', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'groupDelEmail', 'group', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'groupDelEmail', 'email', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'groupDelEmail', 'return', '', '', IS_UNQL);
  { MobytWS.groupAddEmail }
  InvRegistry.RegisterMethodInfo(TypeInfo(MobytWS), 'groupAddEmail', '', '[ReturnName="return"]', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'groupAddEmail', 'username', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'groupAddEmail', 'password', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'groupAddEmail', 'group', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'groupAddEmail', 'email', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'groupAddEmail', 'sendOptIn', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'groupAddEmail', 'return', '', '', IS_UNQL);
  { MobytWS.groupAddOrUpdateContact }
  InvRegistry.RegisterMethodInfo(TypeInfo(MobytWS), 'groupAddOrUpdateContact', '', '[ReturnName="return"]',
    IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'groupAddOrUpdateContact', 'username', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'groupAddOrUpdateContact', 'password', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'groupAddOrUpdateContact', 'group', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'groupAddOrUpdateContact', 'contact', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'groupAddOrUpdateContact', 'sendOptIn', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'groupAddOrUpdateContact', 'return', '', '', IS_UNQL);
  { MobytWS.groupAddOrUpdateContacts }
  InvRegistry.RegisterMethodInfo(TypeInfo(MobytWS), 'groupAddOrUpdateContacts', '',
    '[ReturnName="return"]', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'groupAddOrUpdateContacts', 'username', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'groupAddOrUpdateContacts', 'password', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'groupAddOrUpdateContacts', 'group', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'groupAddOrUpdateContacts', 'contacts', '', '',
    IS_UNBD or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'groupAddOrUpdateContacts', 'sendOptIn', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'groupAddOrUpdateContacts', 'return', '', '', IS_UNQL);
  { MobytWS.groupsAddOrUpdateContact }
  InvRegistry.RegisterMethodInfo(TypeInfo(MobytWS), 'groupsAddOrUpdateContact', '', '[ReturnName="return"]',
    IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'groupsAddOrUpdateContact', 'username', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'groupsAddOrUpdateContact', 'password', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'groupsAddOrUpdateContact', 'groups', '',
    '[ArrayItemName="return"]', IS_UNBD or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'groupsAddOrUpdateContact', 'contact', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'groupsAddOrUpdateContact', 'forceUpdate', '', '',
    IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'groupsAddOrUpdateContact', 'return', '', '', IS_UNQL);
  { MobytWS.groupDelContact }
  InvRegistry.RegisterMethodInfo(TypeInfo(MobytWS), 'groupDelContact', '', '[ReturnName="return"]', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'groupDelContact', 'username', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'groupDelContact', 'password', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'groupDelContact', 'group', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'groupDelContact', 'contact', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'groupDelContact', 'return', '', '', IS_UNQL);
  { MobytWS.groupAddPhone }
  InvRegistry.RegisterMethodInfo(TypeInfo(MobytWS), 'groupAddPhone', '', '[ReturnName="return"]', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'groupAddPhone', 'username', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'groupAddPhone', 'password', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'groupAddPhone', 'group', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'groupAddPhone', 'phone', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'groupAddPhone', 'return', '', '', IS_UNQL);
  { MobytWS.groupDelPhone }
  InvRegistry.RegisterMethodInfo(TypeInfo(MobytWS), 'groupDelPhone', '', '[ReturnName="return"]', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'groupDelPhone', 'username', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'groupDelPhone', 'password', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'groupDelPhone', 'group', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'groupDelPhone', 'phone', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'groupDelPhone', 'return', '', '', IS_UNQL);
  { MobytWS.getActiveCampaign }
  InvRegistry.RegisterMethodInfo(TypeInfo(MobytWS), 'getActiveCampaign', '', '[ReturnName="return"]',
    IS_OPTN or IS_UNBD or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'getActiveCampaign', 'username', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'getActiveCampaign', 'password', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'getActiveCampaign', 'return', '',
    '[ArrayItemName="return"]', IS_UNBD or IS_UNQL);
  { MobytWS.getActivableCampaigns }
  InvRegistry.RegisterMethodInfo(TypeInfo(MobytWS), 'getActivableCampaigns', '', '[ReturnName="return"]',
    IS_OPTN or IS_UNBD or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'getActivableCampaigns', 'username', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'getActivableCampaigns', 'password', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'getActivableCampaigns', 'return', '',
    '[ArrayItemName="return"]', IS_UNBD or IS_UNQL);
  { MobytWS.setUpCampaign }
  InvRegistry.RegisterMethodInfo(TypeInfo(MobytWS), 'setUpCampaign', '', '[ReturnName="return"]',
    IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'setUpCampaign', 'username', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'setUpCampaign', 'password', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'setUpCampaign', 'campaign', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'setUpCampaign', 'return', '', '', IS_UNQL);
  { MobytWS.requestForSenderAdressesActivation }
  InvRegistry.RegisterMethodInfo(TypeInfo(MobytWS), 'requestForSenderAdressesActivation', '',
    '[ReturnName="return"]', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'requestForSenderAdressesActivation', 'username', '',
    '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'requestForSenderAdressesActivation', 'password', '',
    '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'requestForSenderAdressesActivation', 'emailSender', '',
    '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'requestForSenderAdressesActivation', 'return', '',
    '', IS_UNQL);
  { MobytWS.getAvailableSenderAdresses }
  InvRegistry.RegisterMethodInfo(TypeInfo(MobytWS), 'getAvailableSenderAdresses', '', '[ReturnName="return"]',
    IS_OPTN or IS_UNBD or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'getAvailableSenderAdresses', 'username', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'getAvailableSenderAdresses', 'password', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'getAvailableSenderAdresses', 'return', '',
    '[ArrayItemName="return"]', IS_UNBD or IS_UNQL);
  { MobytWS.addSenderAddress }
  InvRegistry.RegisterMethodInfo(TypeInfo(MobytWS), 'addSenderAddress', '', '[ReturnName="return"]',
    IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'addSenderAddress', 'username', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'addSenderAddress', 'password', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'addSenderAddress', 'address', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'addSenderAddress', 'return', '', '', IS_UNQL);
  { MobytWS.setGroupForIssue }
  InvRegistry.RegisterMethodInfo(TypeInfo(MobytWS), 'setGroupForIssue', '', '[ReturnName="return"]',
    IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'setGroupForIssue', 'username', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'setGroupForIssue', 'password', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'setGroupForIssue', 'groups', '',
    '[ArrayItemName="return"]', IS_UNBD or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'setGroupForIssue', 'issue', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'setGroupForIssue', 'return', '', '', IS_UNQL);
  { MobytWS.addContactToCampaign }
  InvRegistry.RegisterMethodInfo(TypeInfo(MobytWS), 'addContactToCampaign', '', '[ReturnName="return"]',
    IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'addContactToCampaign', 'username', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'addContactToCampaign', 'password', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'addContactToCampaign', 'contact', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'addContactToCampaign', 'campaign', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'addContactToCampaign', 'sendOptIn', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'addContactToCampaign', 'return', '', '', IS_UNQL);
  { MobytWS.updateContact }
  InvRegistry.RegisterMethodInfo(TypeInfo(MobytWS), 'updateContact', '', '[ReturnName="return"]',
    IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'updateContact', 'username', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'updateContact', 'password', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'updateContact', 'contact', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'updateContact', 'return', '', '', IS_UNQL);
  { MobytWS.getGroupEmails }
  InvRegistry.RegisterMethodInfo(TypeInfo(MobytWS), 'getGroupEmails', '', '[ReturnName="return"]',
    IS_OPTN or IS_UNBD or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'getGroupEmails', 'username', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'getGroupEmails', 'password', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'getGroupEmails', 'group', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'getGroupEmails', 'return', '', '[ArrayItemName="return"]',
    IS_UNBD or IS_UNQL);
  { MobytWS.deleteEmail }
  InvRegistry.RegisterMethodInfo(TypeInfo(MobytWS), 'deleteEmail', '', '[ReturnName="return"]', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'deleteEmail', 'username', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'deleteEmail', 'password', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'deleteEmail', 'email', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'deleteEmail', 'return', '', '', IS_UNQL);
  { MobytWS.deleteEmails }
  InvRegistry.RegisterMethodInfo(TypeInfo(MobytWS), 'deleteEmails', '', '[ReturnName="return"]', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'deleteEmails', 'username', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'deleteEmails', 'password', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'deleteEmails', 'emails', '', '[ArrayItemName="return"]',
    IS_UNBD or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'deleteEmails', 'return', '', '', IS_UNQL);
  { MobytWS.getGroupPhones }
  InvRegistry.RegisterMethodInfo(TypeInfo(MobytWS), 'getGroupPhones', '', '[ReturnName="return"]',
    IS_OPTN or IS_UNBD or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'getGroupPhones', 'username', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'getGroupPhones', 'password', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'getGroupPhones', 'group', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'getGroupPhones', 'return', '', '[ArrayItemName="return"]',
    IS_UNBD or IS_UNQL);
  { MobytWS.deletePhone }
  InvRegistry.RegisterMethodInfo(TypeInfo(MobytWS), 'deletePhone', '', '[ReturnName="return"]', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'deletePhone', 'username', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'deletePhone', 'password', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'deletePhone', 'phone', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'deletePhone', 'return', '', '', IS_UNQL);
  { MobytWS.deletePhones }
  InvRegistry.RegisterMethodInfo(TypeInfo(MobytWS), 'deletePhones', '', '[ReturnName="return"]', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'deletePhones', 'username', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'deletePhones', 'password', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'deletePhones', 'phones', '', '[ArrayItemName="return"]',
    IS_UNBD or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'deletePhones', 'return', '', '', IS_UNQL);
  { MobytWS.deleteContact }
  InvRegistry.RegisterMethodInfo(TypeInfo(MobytWS), 'deleteContact', '', '[ReturnName="return"]', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'deleteContact', 'username', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'deleteContact', 'password', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'deleteContact', 'contact', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'deleteContact', 'return', '', '', IS_UNQL);
  { MobytWS.sendMultipleSMS }
  InvRegistry.RegisterMethodInfo(TypeInfo(MobytWS), 'sendMultipleSMS', '', '[ReturnName="return"]',
    IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'sendMultipleSMS', 'username', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'sendMultipleSMS', 'password', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'sendMultipleSMS', 'message_type', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'sendMultipleSMS', 'sender', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'sendMultipleSMS', 'recipients', '',
    '[ArrayItemName="return"]', IS_UNBD or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'sendMultipleSMS', 'message_', 'message', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'sendMultipleSMS', 'order_id', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'sendMultipleSMS', 'return', '', '', IS_UNQL);
  { MobytWS.scheduleMultipleSMS }
  InvRegistry.RegisterMethodInfo(TypeInfo(MobytWS), 'scheduleMultipleSMS', '', '[ReturnName="return"]',
    IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'scheduleMultipleSMS', 'username', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'scheduleMultipleSMS', 'password', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'scheduleMultipleSMS', 'message_type', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'scheduleMultipleSMS', 'sender', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'scheduleMultipleSMS', 'recipients', '',
    '[ArrayItemName="return"]', IS_UNBD or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'scheduleMultipleSMS', 'message_', 'message', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'scheduleMultipleSMS', 'order_id', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'scheduleMultipleSMS', 'send_when', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'scheduleMultipleSMS', 'return', '', '', IS_UNQL);
  { MobytWS.delGroup }
  InvRegistry.RegisterMethodInfo(TypeInfo(MobytWS), 'delGroup', '', '[ReturnName="return"]', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'delGroup', 'username', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'delGroup', 'password', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'delGroup', 'group', '', '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MobytWS), 'delGroup', 'return', '', '', IS_UNQL);
  RemClassRegistry.RegisterXSInfo(TypeInfo(getApprovedAGCOMSmsTpoasResponse), 'http://api.mobyt.it/mobws',
    'getApprovedAGCOMSmsTpoasResponse');
  RemClassRegistry.RegisterXSInfo(TypeInfo(getPurchasesResponse), 'http://api.mobyt.it/mobws',
    'getPurchasesResponse');
  RemClassRegistry.RegisterXSInfo(TypeInfo(getSubaccountsResponse), 'http://api.mobyt.it/mobws',
    'getSubaccountsResponse');
  RemClassRegistry.RegisterXSInfo(TypeInfo(getGroupPhonesResponse), 'http://api.mobyt.it/mobws',
    'getGroupPhonesResponse');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_Contact), 'http://api.mobyt.it/mobws',
    'Array_Of_Contact');
  RemClassRegistry.RegisterXSInfo(TypeInfo(getActivableCampaignsResponse), 'http://api.mobyt.it/mobws',
    'getActivableCampaignsResponse');
  RemClassRegistry.RegisterXSClass(TMobytGroup, 'http://api.mobyt.it/mobws', 'Group');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(TMobytGroup), 'name_', '[ExtName="name"]');
  RemClassRegistry.RegisterXSClass(wssmsCredit, 'http://api.mobyt.it/mobws', 'wssmsCredit');
  RemClassRegistry.RegisterXSClass(FinalUser, 'http://api.mobyt.it/mobws', 'FinalUser');
  RemClassRegistry.RegisterXSClass(Tpoa, 'http://api.mobyt.it/mobws', 'Tpoa');
  RemClassRegistry.RegisterXSClass(Campaign, 'http://api.mobyt.it/mobws', 'Campaign');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(Campaign), 'label_', '[ExtName="label"]');
  RemClassRegistry.RegisterXSInfo(TypeInfo(getReceivedMessagesByIdResponse), 'http://api.mobyt.it/mobws',
    'getReceivedMessagesByIdResponse');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_double), 'http://www.w3.org/2001/XMLSchema',
    'Array_Of_double');
  RemClassRegistry.RegisterXSInfo(TypeInfo(getSMSStatusResponse), 'http://api.mobyt.it/mobws',
    'getSMSStatusResponse');
  RemClassRegistry.RegisterXSClass(CampaignIssue, 'http://api.mobyt.it/mobws', 'CampaignIssue');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(CampaignIssue), 'name_', '[ExtName="name"]');
  RemClassRegistry.RegisterXSInfo(TypeInfo(getAvailableSenderAdressesResponse), 'http://api.mobyt.it/mobws',
    'getAvailableSenderAdressesResponse');
  RemClassRegistry.RegisterXSClass(ReceivedMessage, 'http://api.mobyt.it/mobws', 'ReceivedMessage');
  RemClassRegistry.RegisterXSClass(CreditMovement, 'http://api.mobyt.it/mobws', 'CreditMovement');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(CreditMovement), 'sms_types',
    '[ArrayItemName="return"]');
  RemClassRegistry.RegisterXSInfo(TypeInfo(subaccountTYPE), 'http://api.mobyt.it/mobws', 'subaccountTYPE');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(subaccountTYPE), 'PRIVATE_', 'PRIVATE');
  RemClassRegistry.RegisterXSInfo(TypeInfo(getSubaccountCreditsResponse), 'http://api.mobyt.it/mobws',
    'getSubaccountCreditsResponse');
  RemClassRegistry.RegisterXSClass(EmailSender, 'http://api.mobyt.it/mobws', 'EmailSender');
  RemClassRegistry.RegisterXSInfo(TypeInfo(listGroupsResponse), 'http://api.mobyt.it/mobws',
    'listGroupsResponse');
  RemClassRegistry.RegisterXSClass(Contact, 'http://api.mobyt.it/mobws', 'Contact');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(Contact), 'name_', '[ExtName="name"]');
  RemClassRegistry.RegisterXSClass(SMSStatus, 'http://api.mobyt.it/mobws', 'SMSStatus');
  RemClassRegistry.RegisterXSClass(Subaccount, 'http://api.mobyt.it/mobws', 'Subaccount');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(Subaccount), 'name_', '[ExtName="name"]');
  RemClassRegistry.RegisterXSInfo(TypeInfo(getHistoryResponse), 'http://api.mobyt.it/mobws',
    'getHistoryResponse');
  RemClassRegistry.RegisterXSClass(SentMessage, 'http://api.mobyt.it/mobws', 'SentMessage');
except
  on e: exception do
    raise exception.Create('Core.Mobyt.Initialization ' + e.Message);
end;

end.
