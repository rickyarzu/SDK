unit ufrmVCLOutlookOLEAutomation;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, CRGrid,
  Janua.Vcl.EnhCRDBGrid, MemDS, VirtualTable, DBAccess, Uni, Janua.Unidac.Connection, Vcl.ExtCtrls,
  Vcl.DBCtrls,
  // Januaproject
  Janua.ViewModels.Intf, uJanuaVCLForm, Janua.Core.Types, Janua.Core.Classes.Intf, Janua.Orm.Intf,
  Janua.Bindings.Intf, Janua.Forms.Types, Janua.Controls.Intf, Janua.Controls.Forms.Intf,
  // Interposers
  Janua.Vcl.Interposers, Janua.TMS.Interposers;

type
  TfrmVCLOutlookOLEAutomation = class(TJanuaVCLFormModel, IJanuaForm, IJanuaContainer, IJanuaBindable)
    btnSynchro: TButton;
    EnhCRDBGrid1: TEnhCRDBGrid;
    tbContacts: TVirtualTable;
    DBNavigator1: TDBNavigator;
    UniDataSource1: TUniDataSource;
    tbContactsFirstName: TStringField;
    tbContactsLastName: TStringField;
    tbContactsEMail: TStringField;
    procedure btnSynchroClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVCLOutlookOLEAutomation: TfrmVCLOutlookOLEAutomation;

implementation

uses System.Win.ComObj;

{$R *.dfm}

procedure TfrmVCLOutlookOLEAutomation.btnSynchroClick(Sender: TObject);
const
  olFolderContacts = $0000000A;
var
  outlook, NameSpace, Contacts, Contact: OleVariant;
  i: Integer;
begin
  outlook := CreateOleObject('Outlook.Application');
  NameSpace := outlook.GetNameSpace('MAPI');

  tbContacts.Open;

  Contacts := NameSpace.GetDefaultFolder(olFolderContacts);
  for i := 1 to Contacts.Items.Count do
  begin
    Contact := Contacts.Items.Item(i);
    { now you can read any property of contact. For example, full name and
      email address }
    tbContacts.Append;
    tbContactsFirstName.AsWideString := Contact.FirstName;
    tbContactsLastName.AsWideString := Contact.LastName;
    tbContactsEMail.AsWideString := Contact.Email1Address;
    tbContacts.Post;
    // ShowMessage(Contact.FullName + ' <' + Contact.Email1Address + '>');
  end;

  outlook := UnAssigned;
end;

{ if you need a birthday, you can retrieve it as DateToStr(Contact.Birthday)

  Any contact item have a lot of properties. See a list (alphabet):

  Birthday
  Business2TelephoneNumber
  BusinessAddress
  BusinessAddressCity
  BusinessAddressCountry
  BusinessAddressPostalCode
  BusinessAddressPostOfficeBox
  BusinessAddressState
  BusinessAddressStreet
  BusinessFaxNumber
  BusinessHomePage
  BusinessTelephoneNumber
  CompanyAndFullName
  CompanyMainTelephoneNumber
  CompanyName
  ComputerNetworkName
  Department
  Email1Address
  Email1AddressType
  Email1DisplayName
  Email2Address
  Email2AddressType
  Email2DisplayName
  Email3Address
  Email3AddressType
  Email3DisplayName
  FirstName
  FTPSite
  FullName
  FullNameAndCompany
  GovernmentIDNumber
  Hobby
  Home2TelephoneNumber
  HomeAddress
  HomeAddressCity
  HomeAddressCountry
  HomeAddressPostalCode
  HomeAddressPostOfficeBox
  HomeAddressState
  HomeAddressStree
  HomeFaxNumber
  HomeTelephoneNumber
  Initials
  ISDNNumber
  JobTitle
  Language
  LastName
  LastNameAndFirstName
  MailingAddress
  MailingAddressCity
  MailingAddressCountry
  MailingAddressPostalCode
  MailingAddressPostOfficeBox
  MailingAddressState
  MailingAddressStreet
  MiddleName
  NickName
  OfficeLocation
  OrganizationalIDNumber
  PersonalHomePage
  PrimaryTelephoneNumber
  Profession
  Suffix
  Title
  WebPage }

end.
