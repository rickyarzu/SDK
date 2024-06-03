{***************************************************************************}
{ TMS Cloud Pack                                                            }
{ for Delphi & C++Builder                                                   }
{                                                                           }
{ written by TMS Software                                                   }
{            copyright © 2012 - 2017                                        }
{            Email : info@tmssoftware.com                                   }
{            Web : http://www.tmssoftware.com                               }
{                                                                           }
{ The source code is given as is. The author is not responsible             }
{ for any possible damage done due to the use of this code.                 }
{ The component can be freely used in any application. The complete         }
{ source code remains property of the author and may not be distributed,    }
{ published, given or sold in any form as such. No parts of the source      }
{ code can be included in any other component or application without        }
{ written authorization of the author.                                      }
{***************************************************************************}
unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, CloudBase, CloudGoogleWin, CloudGContacts, CloudCustomGContacts,
  CloudImage, ComCtrls, ExtCtrls, CloudBaseWin, CloudCustomGoogle;

type
  TForm1 = class(TForm)
    GroupBox2: TGroupBox;
    Panel1: TPanel;
    Button1: TButton;
    AdvGContacts1: TAdvGContacts;
    Button6: TButton;
    lbGroups: TListBox;
    GroupBox3: TGroupBox;
    ListBox1: TListBox;
    Button2: TButton;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    AdvCloudImage1: TAdvCloudImage;
    Label9: TLabel;
    Label10: TLabel;
    Label17: TLabel;
    edFirstName: TEdit;
    edCompany: TEdit;
    edJob: TEdit;
    dpBirthDay: TDateTimePicker;
    edNickName: TEdit;
    edLastName: TEdit;
    meNotes: TMemo;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    Panel2: TPanel;
    btAddContact: TButton;
    btUpdateContact: TButton;
    btDeleteContact: TButton;
    GroupBox4: TGroupBox;
    Label19: TLabel;
    edGroupName: TEdit;
    Panel3: TPanel;
    btGroupAdd: TButton;
    btGroupUpdate: TButton;
    btGroupDelete: TButton;
    btRemove: TButton;
    Label2: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    lvEmail: TListView;
    cbEmailType: TComboBox;
    edEmail: TEdit;
    edEmailCustom: TEdit;
    cbEmailPrimary: TCheckBox;
    btAddEmail: TButton;
    btUpdateEmail: TButton;
    btDeleteEmail: TButton;
    lvPhone: TListView;
    edPhone: TEdit;
    Label8: TLabel;
    Label11: TLabel;
    cbPhoneType: TComboBox;
    edPhoneCustom: TEdit;
    Label12: TLabel;
    btAddPhone: TButton;
    btUpdatePhone: TButton;
    btDeletePhone: TButton;
    cbPhonePrimary: TCheckBox;
    btAddAddress: TButton;
    btDeleteAddress: TButton;
    btUpdateAddress: TButton;
    cbAddressPrimary: TCheckBox;
    edAddressCustom: TEdit;
    Label13: TLabel;
    Label14: TLabel;
    cbAddressType: TComboBox;
    edStreet: TEdit;
    Label15: TLabel;
    lvAddress: TListView;
    Label16: TLabel;
    edZip: TEdit;
    lbCity: TLabel;
    edCity: TEdit;
    lbCountry: TLabel;
    edCountry: TEdit;
    lvRelation: TListView;
    edRelation: TEdit;
    cbRelation: TComboBox;
    edCustomRelation: TEdit;
    Label18: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    btAddRelation: TButton;
    btUpdateRelation: TButton;
    btDeleteRelation: TButton;
    lvIM: TListView;
    edIM: TEdit;
    cbIMType: TComboBox;
    edIMCustom: TEdit;
    btAddIM: TButton;
    btUpdateIM: TButton;
    btDeleteIM: TButton;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    lvCustom: TListView;
    edCustomKey: TEdit;
    btAddCustom: TButton;
    btUpdateCustom: TButton;
    btDeleteCustom: TButton;
    Label26: TLabel;
    Label28: TLabel;
    edCustomValue: TEdit;
    edWebsite: TEdit;
    btDeleteWebsite: TButton;
    btUpdateWebsite: TButton;
    btAddWebsite: TButton;
    edCustomWebsite: TEdit;
    cbCustomWebsite: TComboBox;
    Label25: TLabel;
    Label27: TLabel;
    Label29: TLabel;
    lvWebsite: TListView;
    lvGroup: TListView;
    Label30: TLabel;
    cbGroups: TComboBox;
    btAddGroup: TButton;
    btDeleteGroup: TButton;
    OpenDialog1: TOpenDialog;
    btUpdateImage: TButton;
    btDeleteImage: TButton;
    Label31: TLabel;
    Image1: TImage;
    lbUpdated: TLabel;
    procedure ToggleControls;
    procedure ClearControls;
    procedure Button1Click(Sender: TObject);
    procedure AdvGContacts1ReceivedAccessToken(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure btAddContactClick(Sender: TObject);
    procedure btDeleteContactClick(Sender: TObject);
    procedure btUpdateContactClick(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure websiteClick(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure btGroupAddClick(Sender: TObject);
    procedure lbGroupsClick(Sender: TObject);
    procedure btGroupUpdateClick(Sender: TObject);
    procedure btGroupDeleteClick(Sender: TObject);
    procedure btRemoveClick(Sender: TObject);
    procedure btAddEmailClick(Sender: TObject);
    procedure btUpdateEmailClick(Sender: TObject);
    procedure btDeleteEmailClick(Sender: TObject);
    procedure lvEmailChange(Sender: TObject; Item: TListItem;
      Change: TItemChange);
    procedure lvPhoneChange(Sender: TObject; Item: TListItem;
      Change: TItemChange);
    procedure btAddPhoneClick(Sender: TObject);
    procedure btUpdatePhoneClick(Sender: TObject);
    procedure btDeletePhoneClick(Sender: TObject);
    procedure lvAddressChange(Sender: TObject; Item: TListItem;
      Change: TItemChange);
    procedure btAddAddressClick(Sender: TObject);
    procedure btUpdateAddressClick(Sender: TObject);
    procedure btDeleteAddressClick(Sender: TObject);
    procedure btAddRelationClick(Sender: TObject);
    procedure btUpdateRelationClick(Sender: TObject);
    procedure btDeleteRelationClick(Sender: TObject);
    procedure lvRelationChange(Sender: TObject; Item: TListItem;
      Change: TItemChange);
    procedure lvIMChange(Sender: TObject; Item: TListItem; Change: TItemChange);
    procedure btAddIMClick(Sender: TObject);
    procedure btUpdateIMClick(Sender: TObject);
    procedure lvCustomChange(Sender: TObject; Item: TListItem;
      Change: TItemChange);
    procedure btAddCustomClick(Sender: TObject);
    procedure btUpdateCustomClick(Sender: TObject);
    procedure btAddWebsiteClick(Sender: TObject);
    procedure btUpdateWebsiteClick(Sender: TObject);
    procedure btDeleteWebsiteClick(Sender: TObject);
    procedure lvWebsiteChange(Sender: TObject; Item: TListItem;
      Change: TItemChange);
    procedure btAddGroupClick(Sender: TObject);
    procedure btDeleteGroupClick(Sender: TObject);
    procedure btDeleteImageClick(Sender: TObject);
    procedure btUpdateImageClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Connected: boolean;
    Inserting: boolean;
    procedure FillContacts();
    procedure FillContactDetails();
    procedure FillGroups(Update: Boolean);
  end;

var
  Form1: TForm1;

implementation

uses
  ShellAPI;

{$R *.dfm}

// PLEASE USE A VALID INCLUDE FILE THAT CONTAINS THE APPLICATION KEY & SECRET
// FOR THE CLOUD STORAGE SERVICES YOU WANT TO USE
// STRUCTURE OF THIS .INC FILE SHOULD BE
//
// const
//  GAppkey = 'xxxxxxxxx';
//  GAppSecret = 'yyyyyyyy';

{$I APPIDS.INC}

procedure TForm1.AdvGContacts1ReceivedAccessToken(Sender: TObject);
begin
  AdvGContacts1.SaveTokens;
  Connected := true;
  ToggleControls;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  acc: boolean;
begin
  AdvGContacts1.App.Key := GAppkey;
  AdvGContacts1.App.Secret := GAppSecret;
  AdvGContacts1.Logging := true;

  if AdvGContacts1.App.Key <> '' then
  begin
    AdvGContacts1.PersistTokens.Location := plIniFile;
    AdvGContacts1.PersistTokens.Key := '.\google.ini';
    AdvGContacts1.PersistTokens.Section := 'tokens';
    AdvGContacts1.LoadTokens;

    acc := AdvGContacts1.TestTokens;

    if not acc then
    begin
      AdvGContacts1.RefreshAccess;
      AdvGContacts1.DoAuth;
    end
    else
    begin
      Connected := true;
      ToggleControls;
    end;
  end
  else
    ShowMessage('Please provide a valid application ID for the client component');

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  FillContacts;
end;

procedure TForm1.btAddContactClick(Sender: TObject);
var
  gc: TGContact;
begin
  if not (Inserting) then
  begin
    ClearControls;
    edFirstName.SetFocus;
    ListBox1.ItemIndex := -1;
    btAddContact.Caption := 'Insert';
    btAddContact.Hint := 'Insert the new Event';
    Inserting := true;
  end
  else
  begin
    btAddContact.Caption := 'New';
    btAddContact.Hint := 'Create a new Event';

    gc := AdvGContacts1.Contacts.Add;
    gc.FirstName := edFirstName.Text;
    gc.LastName := edLastName.Text;
    gc.Nickname := edNickName.Text;
    gc.JobTitle := edJob.Text;
    gc.Company := edCompany.Text;
    gc.BirthDay := dpBirthDay.Date;
    gc.Notes := meNotes.Text;
    AdvGContacts1.Add(gc);

    FillContacts;
    Inserting := false;
  end;
end;

procedure TForm1.btAddCustomClick(Sender: TObject);
var
  gc: TGCustomData;
begin
  if (edCustomKey.Text <> '') and (edCustomValue.Text <> '') then
  begin
    gc := AdvGContacts1.Contacts[ListBox1.ItemIndex].CustomItems.Add;
    gc.Key := edCustomKey.Text;
    gc.Value := edCustomValue.Text;
  end;
  FillContactDetails;
end;

procedure TForm1.btDeleteContactClick(Sender: TObject);
var
  buttonSelected: integer;
begin
  if ListBox1.ItemIndex >= 0 then
  begin
    buttonSelected := MessageDlg('Are you sure you want to delete the selected Contact?', mtConfirmation, mbOKCancel, 0);

    if buttonSelected = mrOk then
    begin
      AdvGContacts1.Delete(ListBox1.Items.Objects[ListBox1.ItemIndex] as TGContact);
      FillContacts;
      ClearControls;
    end;
  end
  else
  begin
    ShowMessage('Please select a Contact first.');
  end;
end;

procedure TForm1.btUpdateContactClick(Sender: TObject);
var
  buttonSelected: integer;
  gc: TGContact;
begin
  if ListBox1.ItemIndex >= 0 then
  begin
    buttonSelected := MessageDlg('Are you sure you want to update the selected Contact?', mtConfirmation, mbOKCancel, 0);

    if buttonSelected = mrOk then
    begin
      gc := ListBox1.Items.Objects[ListBox1.ItemIndex] as TGContact;
      gc.FirstName := edFirstName.Text;
      gc.LastName := edLastName.Text;
      gc.Nickname := edNickName.Text;
      gc.JobTitle := edJob.Text;
      gc.Company := edCompany.Text;
      gc.BirthDay := dpBirthDay.Date;
      gc.Notes := meNotes.Text;

      AdvGContacts1.Update(gc);
    end;
  end
  else
  begin
    ShowMessage('Please select a Contact first.');
  end;
end;

procedure TForm1.btUpdateCustomClick(Sender: TObject);
var
  gc: TGCustomData;
begin
  if lvCustom.ItemIndex >= 0 then
  begin
    if edIM.Text <> '' then
    begin
      gc := AdvGContacts1.Contacts[ListBox1.ItemIndex].CustomItems[lvCustom.ItemIndex];
      gc.Key := edCustomKey.Text;
      gc.Value := edCustomValue.Text;
    end;
    FillContactDetails;
  end;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  FillGroups(True);
end;

procedure TForm1.ClearControls;
begin
  edFirstName.Text := '';
  edLastName.Text := '';
  edNickName.Text := '';
  dpBirthDay.Date := 0;
  edCompany.Text := '';
  edJob.Text := '';
  meNotes.Text := '';
  PageControl1.Visible := False;
end;

procedure TForm1.btAddAddressClick(Sender: TObject);
var
  ge: TGEmail;
  I: Integer;
begin
    if (edStreet.Text <> '') or (edZip.Text <> '') or (edCity.Text <> '') or (edCountry.text <> '') then
  begin
    ge := AdvGContacts1.Contacts[ListBox1.ItemIndex].Emails.Add;
    ge.Address := edEmail.Text;
    ge.EmailType := TGFieldType(cbEmailType.ItemIndex);
    ge.CustomType := edAddressCustom.Text;

    if cbEmailPrimary.Checked then
    begin
      for I := 0 to AdvGContacts1.Contacts[ListBox1.ItemIndex].Emails.Count - 1 do
        AdvGContacts1.Contacts[ListBox1.ItemIndex].Emails[I].Primary := false;
    end;

    ge.Primary := cbEmailPrimary.Checked;
  end;
  FillContactDetails;
end;

procedure TForm1.btAddEmailClick(Sender: TObject);
var
  ge: TGEmail;
  I: Integer;
begin
  if edEmail.Text <> '' then
  begin
    ge := AdvGContacts1.Contacts[ListBox1.ItemIndex].Emails.Add;
    ge.Address := edEmail.Text;
    ge.EmailType := TGFieldType(cbEmailType.ItemIndex);
    ge.CustomType := edEmailCustom.Text;

    if cbEmailPrimary.Checked then
    begin
      for I := 0 to AdvGContacts1.Contacts[ListBox1.ItemIndex].Emails.Count - 1 do
        AdvGContacts1.Contacts[ListBox1.ItemIndex].Emails[I].Primary := false;
    end;

    ge.Primary := cbEmailPrimary.Checked;
  end;
  FillContactDetails;
end;

procedure TForm1.btAddGroupClick(Sender: TObject);
var
  gg: TGGroup;
  gcg: TGContactGroup;
begin
  if cbGroups.ItemIndex >= 0 then
  begin
    gcg := AdvGContacts1.Contacts[ListBox1.ItemIndex].Groups.Add;
    gg := cbGroups.Items.Objects[cbGroups.ItemIndex] as TGGroup;
    gcg.ID := gg.ID;
    FillContactDetails;
  end;
end;

procedure TForm1.btAddIMClick(Sender: TObject);
var
  gi: TGInstantMessenger;
begin
  if edIM.Text <> '' then
  begin
    gi := AdvGContacts1.Contacts[ListBox1.ItemIndex].InstantMessengers.Add;
    gi.ID := edEmail.Text;
    gi.InstantMessengerType := TGIMType(cbIMType.ItemIndex);
    gi.CustomType := edIMCustom.Text;
  end;
  FillContactDetails;
end;

procedure TForm1.btAddPhoneClick(Sender: TObject);
var
  ge: TGPhoneNumber;
  I: Integer;
begin
  if edPhone.Text <> '' then
  begin
    ge := AdvGContacts1.Contacts[ListBox1.ItemIndex].PhoneNumbers.Add;
    ge.Number := edPhone.Text;
    ge.PhoneType := TGPhoneType(cbPhoneType.ItemIndex);
    ge.CustomType := edPhoneCustom.Text;

    if cbPhonePrimary.Checked then
    begin
      for I := 0 to AdvGContacts1.Contacts[ListBox1.ItemIndex].PhoneNumbers.Count - 1 do
        AdvGContacts1.Contacts[ListBox1.ItemIndex].PhoneNumbers[I].Primary := false;
    end;

    ge.Primary := cbPhonePrimary.Checked;
  end;
  FillContactDetails;
end;

procedure TForm1.btAddRelationClick(Sender: TObject);
var
  gr: TGRelation;
begin
  if edRelation.Text <> '' then
  begin
    gr := AdvGContacts1.Contacts[ListBox1.ItemIndex].Relations.Add;
    gr.Value := edRelation.Text;
    gr.Relation := TGRelationType(cbRelation.ItemIndex);
    gr.CustomRelation := edCustomRelation.Text;
  end;
  FillContactDetails;
end;

procedure TForm1.btAddWebsiteClick(Sender: TObject);
var
  gw: TGWebsite;
begin
  if edWebsite.Text <> '' then
  begin
    gw := AdvGContacts1.Contacts[ListBox1.ItemIndex].Websites.Add;
    gw.URL := edWebsite.Text;
    gw.WebsiteType := TGWebsiteType(cbCustomWebsite.ItemIndex);
    gw.CustomType := edCustomWebsite.Text;
  end;
  FillContactDetails;
end;

procedure TForm1.btDeleteAddressClick(Sender: TObject);
begin
  if lvAddress.ItemIndex >= 0 then
  begin
    AdvGContacts1.Contacts[ListBox1.ItemIndex].PostalAddresses[lvEmail.ItemIndex].Free;
    FillContactDetails;
  end;
end;

procedure TForm1.btDeleteEmailClick(Sender: TObject);
begin
  if lvEmail.ItemIndex >= 0 then
  begin
    AdvGContacts1.Contacts[ListBox1.ItemIndex].Emails[lvEmail.ItemIndex].Free;
    FillContactDetails;
  end;
end;

procedure TForm1.btDeleteGroupClick(Sender: TObject);
begin
  if lvGroup.ItemIndex >= 0 then
  begin
    AdvGContacts1.Contacts[ListBox1.ItemIndex].Groups[lvGroup.ItemIndex].Free;
    FillContactDetails;
  end;
end;

procedure TForm1.btDeleteImageClick(Sender: TObject);
var
  buttonSelected: integer;
begin
  if ListBox1.ItemIndex >= 0 then
  begin
    buttonSelected := MessageDlg('Are you sure you want to delete the Image for the selected Contact?', mtConfirmation, mbOKCancel, 0);

    if buttonSelected = mrOk then
    begin
      AdvGContacts1.DeleteImage(ListBox1.Items.Objects[ListBox1.ItemIndex] as TGContact);
      AdvCloudImage1.URL := '';
      FillContacts;
    end;
  end
  else
  begin
    ShowMessage('Please select a Contact first.');
  end;
end;

procedure TForm1.btDeletePhoneClick(Sender: TObject);
begin
  if lvPhone.ItemIndex >= 0 then
  begin
    AdvGContacts1.Contacts[ListBox1.ItemIndex].PhoneNumbers[lvPhone.ItemIndex].Free;
    FillContactDetails;
  end;
end;

procedure TForm1.btDeleteRelationClick(Sender: TObject);
begin
  if lvRelation.ItemIndex >= 0 then
  begin
    AdvGContacts1.Contacts[ListBox1.ItemIndex].Relations[lvRelation.ItemIndex].Free;
    FillContactDetails;
  end;
end;

procedure TForm1.btDeleteWebsiteClick(Sender: TObject);
begin
  if lvWebsite.ItemIndex >= 0 then
  begin
    AdvGContacts1.Contacts[ListBox1.ItemIndex].Websites[lvWebsite.ItemIndex].Free;
    FillContactDetails;
  end;
end;

procedure TForm1.btUpdateAddressClick(Sender: TObject);
var
  ga: TGPostalAddress;
  I: Integer;
begin
  if lvAddress.ItemIndex >= 0 then
  begin
    if (edStreet.Text <> '') or (edZip.Text <> '') or (edCity.Text <> '') or (edCountry.text <> '') then
    begin
      ga := AdvGContacts1.Contacts[ListBox1.ItemIndex].PostalAddresses[lvAddress.ItemIndex];
      ga.Street := edStreet.Text;
      ga.PostCode := edZip.Text;
      ga.City := edCity.Text;
      ga.Country := edCountry.text;
      ga.AddressType := TGFieldType(cbAddressType.ItemIndex);

      if cbAddressPrimary.Checked then
      begin
        for I := 0 to AdvGContacts1.Contacts[ListBox1.ItemIndex].PostalAddresses.Count - 1 do
          AdvGContacts1.Contacts[ListBox1.ItemIndex].PostalAddresses[I].Primary := false;
      end;

      ga.Primary := cbAddressPrimary.Checked;
    end;
    FillContactDetails;
  end;
end;

procedure TForm1.btUpdateEmailClick(Sender: TObject);
var
  ge: TGEmail;
  I: Integer;
begin
  if lvEmail.ItemIndex >= 0 then
  begin
    if edEmail.Text <> '' then
    begin
      ge := AdvGContacts1.Contacts[ListBox1.ItemIndex].Emails[lvEmail.ItemIndex];
      ge.Address := edEmail.Text;
      ge.EmailType := TGFieldType(cbEmailType.ItemIndex);
      ge.CustomType := edEmailCustom.Text;

      if cbEmailPrimary.Checked then
      begin
        for I := 0 to AdvGContacts1.Contacts[ListBox1.ItemIndex].Emails.Count - 1 do
          AdvGContacts1.Contacts[ListBox1.ItemIndex].Emails[I].Primary := false;
      end;

      ge.Primary := cbEmailPrimary.Checked;
    end;
    FillContactDetails;
  end;
end;

procedure TForm1.btUpdateImageClick(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
      AdvGContacts1.UpdateImage(ListBox1.Items.Objects[ListBox1.ItemIndex] as TGContact, opendialog1.FileName);
      FillContacts;
  end;
end;

procedure TForm1.btUpdateIMClick(Sender: TObject);
var
  gi: TGInstantMessenger;
begin
  if lvIM.ItemIndex >= 0 then
  begin
    if edIM.Text <> '' then
    begin
      gi := AdvGContacts1.Contacts[ListBox1.ItemIndex].InstantMessengers[lvIM.ItemIndex];
      gi.ID := edIM.Text;
      gi.InstantMessengerType := TGIMType(cbIMType.ItemIndex);
      gi.CustomType := edIMCustom.Text;
    end;
    FillContactDetails;
  end;
end;

procedure TForm1.btUpdatePhoneClick(Sender: TObject);
var
  ge: TGPhoneNumber;
  I: Integer;
begin
  if lvPhone.ItemIndex >= 0 then
  begin
    if edPhone.Text <> '' then
    begin
      ge := AdvGContacts1.Contacts[ListBox1.ItemIndex].PhoneNumbers[lvPhone.ItemIndex];
      ge.Number := edPhone.Text;
      ge.PhoneType := TGPhoneType(cbPhoneType.ItemIndex);
      ge.CustomType := edPhoneCustom.Text;

      if cbPhonePrimary.Checked then
      begin
        for I := 0 to AdvGContacts1.Contacts[ListBox1.ItemIndex].PhoneNumbers.Count - 1 do
          AdvGContacts1.Contacts[ListBox1.ItemIndex].PhoneNumbers[I].Primary := false;
      end;

      ge.Primary := cbPhonePrimary.Checked;
    end;
    FillContactDetails;
  end;
end;

procedure TForm1.btUpdateRelationClick(Sender: TObject);
var
  gr: TGRelation;
begin
  if lvRelation.ItemIndex >= 0 then
  begin
    if edRelation.Text <> '' then
    begin
      gr := AdvGContacts1.Contacts[ListBox1.ItemIndex].Relations[lvRelation.ItemIndex];
      gr.Value := edRelation.Text;
      gr.Relation := TGRelationType(cbRelation.ItemIndex);
      gr.CustomRelation := edCustomRelation.Text;
    end;
    FillContactDetails;
  end;
end;

procedure TForm1.btUpdateWebsiteClick(Sender: TObject);
var
  gr: TGWebsite;
begin
  if lvWebsite.ItemIndex >= 0 then
  begin
    if edRelation.Text <> '' then
    begin
      gr := AdvGContacts1.Contacts[ListBox1.ItemIndex].Websites[lvWebsite.ItemIndex];
      gr.URL := edRelation.Text;
      gr.WebsiteType := TGWebsiteType(cbCustomWebsite.ItemIndex);
      gr.CustomType := edCustomWebsite.Text;
    end;
    FillContactDetails;
  end;
end;

procedure TForm1.btGroupAddClick(Sender: TObject);
var
  gr: TGGroup;
begin
  gr := AdvGContacts1.Groups.Add;
  gr.Summary := edGroupName.Text;
  AdvGContacts1.AddGroup(gr);
  FillGroups(False);
end;

procedure TForm1.btGroupDeleteClick(Sender: TObject);
var
  gg: TGGroup;
  buttonSelected: integer;
begin
  if lbGroups.ItemIndex >= 0 then
  begin
    buttonSelected := MessageDlg('Are you sure you want to delete the selected Group?', mtConfirmation, mbOKCancel, 0);

    if buttonSelected = mrOk then
    begin
      gg := lbGroups.Items.Objects[lbGroups.ItemIndex] as TGGroup;
      AdvGContacts1.DeleteGroup(gg);
      FillGroups(False);
    end;
  end
  else
    ShowMessage('Please select a Group first');
end;

procedure TForm1.btGroupUpdateClick(Sender: TObject);
var
  gg: TGGroup;
begin
  if lbGroups.ItemIndex >= 0 then
  begin
    gg := lbGroups.Items.Objects[lbGroups.ItemIndex] as TGGroup;
    gg.Summary := edGroupName.Text;
    AdvGContacts1.UpdateGroup(gg);
    FillGroups(False);
  end
  else
    ShowMessage('Please select a Group first');
end;

procedure TForm1.btRemoveClick(Sender: TObject);
begin
  AdvGContacts1.ClearTokens;
  Connected := false;
  ClearControls;
  lbGroups.Items.Clear;
  ListBox1.Clear;
  ToggleControls;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Connected := false;
  ToggleControls;
  PageControl1.Visible := False;

  AdvGContacts1.Contacts.Clear;
  AdvGContacts1.Groups.Clear;

  AdvGContacts1.PersistTokens.Location := plIniFile;
  AdvGContacts1.PersistTokens.Key := '.\google.ini';
  AdvGContacts1.PersistTokens.Section := 'tokens';
  AdvGContacts1.LoadTokens;
end;

procedure TForm1.lbGroupsClick(Sender: TObject);
var
  gg: TGGroup;
begin
  if lbGroups.ItemIndex >= 0 then
  begin
    gg := lbGroups.Items.Objects[lbGroups.ItemIndex] as TGGroup;
    edGroupName.Text := gg.Summary;
  end;
end;

procedure TForm1.FillContactDetails();
var
  gc: TGContact;
  I: Integer;
  fieldType, primary: string;
  J: Integer;
  li: TListItem;
begin
  if ListBox1.ItemIndex >= 0 then
  begin
    gc := ListBox1.Items.Objects[ListBox1.ItemIndex] as TGContact;
    edFirstName.Text := gc.FirstName;
    edLastName.Text := gc.LastName;
    meNotes.Lines.Text := gc.Notes;
    edCompany.Text := gc.Company;
    edJob.Text := gc.JobTitle;
    dpBirthDay.Date := gc.BirthDay;
    edNickName.Text := gc.Nickname;
    lbUpdated.Caption := 'Last updated: ' + DateTimeToStr(gc.Updated);

    lvEmail.Items.Clear;
    for I := 0 to gc.Emails.Count - 1 do
    begin
      case gc.Emails[I].EmailType of
        ftHome: fieldType := 'Home';
        ftWork: fieldType := 'Work';
        ftCustom: fieldType := gc.Emails[I].CustomType;
      end;
      li := lvEmail.Items.Add;
      li.Caption := gc.Emails[I].Address;
      li.SubItems.Add(fieldType);
      if gc.Emails[I].Primary then
        primary := 'True'
      else
        primary := 'False';
      li.SubItems.Add(primary);
      li.Data := gc.Emails[I];
    end;

    lvPhone.Items.Clear;
    for I := 0 to gc.PhoneNumbers.Count - 1 do
    begin
      case gc.PhoneNumbers[I].PhoneType of
        ptMobile: fieldType := 'Mobile';
        ptHome: fieldType := 'Home';
        ptWork: fieldType := 'Work';
        ptMain: fieldType := 'Main';
        ptHomeFax: fieldType := 'HomeFax';
        ptWorkFax: fieldType := 'WorkFax';
        ptWorkMobile: fieldType := 'WorkMobile';
        ptPager: fieldType := 'Pager';
        ptCustom: fieldType := gc.PhoneNumbers[I].CustomType;
      end;
      li := lvPhone.Items.Add;
      li.Caption := gc.PhoneNumbers[I].Number;
      li.SubItems.Add(fieldType);
      if gc.PhoneNumbers[I].Primary then
        primary := 'True'
      else
        primary := 'False';
      li.SubItems.Add(primary);
      li.Data := gc.PhoneNumbers[I];
    end;

    lvAddress.Items.Clear;
    for I := 0 to gc.PostalAddresses.Count - 1 do
    begin
      case gc.PostalAddresses[I].AddressType of
        ftHome: fieldType := 'Home';
        ftWork: fieldType := 'Work';
        ftCustom: fieldType := gc.PostalAddresses[I].CustomType;
      end;
      li := lvAddress.Items.Add;
      li.Caption := gc.PostalAddresses[I].Street + ', ' + gc.PostalAddresses[I].City;
      li.SubItems.Add(fieldType);
      if gc.PostalAddresses[I].Primary then
        primary := 'True'
      else
        primary := 'False';
      li.SubItems.Add(primary);
      li.Data := gc.PostalAddresses[I];
    end;

    lvWebsite.Items.Clear;
    for I := 0 to gc.Websites.Count - 1 do
    begin
      case gc.Websites[I].WebsiteType of
        wtProfile: fieldType := 'Profile';
        wtBlog: fieldType := 'Blog';
        wtHomePage: fieldType := 'HomePage';
        wtWork: fieldType := 'Work';
        wtCustom: fieldType := gc.Websites[I].CustomType;
      end;
      li := lvWebsite.Items.Add;
      li.Caption := gc.Websites[I].URL;
      li.SubItems.Add(fieldType);
      li.Data := gc.Websites[I];
    end;

    lvCustom.Items.Clear;
    for I := 0 to gc.CustomItems.Count - 1 do
    begin
      li := lvCustom.Items.Add;
      li.Caption := gc.CustomItems[I].Key;
      li.SubItems.Add(gc.CustomItems[I].Value);
      li.Data := gc.CustomItems[I];
    end;

    lvRelation.Items.Clear;
    for I := 0 to gc.Relations.Count - 1 do
    begin
      case gc.Relations[I].Relation of
        grSpouse: fieldType := 'Spouse';
        grChild: fieldType := 'Child';
        grMother: fieldType := 'Mother';
        grFather: fieldType := 'Father';
        grParent: fieldType := 'Parent';
        grBrother: fieldType := 'Brother';
        grSister: fieldType := 'Sister';
        grPartner: fieldType := 'Partner';
        grCustom: fieldType := gc.Relations[I].CustomRelation;
      end;
      li := lvRelation.Items.Add;
      li.Caption := gc.Relations[I].Value;
      li.SubItems.Add(fieldType);
      li.Data := gc.Relations[I];
    end;

    lvIM.Items.Clear;
    for I := 0 to gc.InstantMessengers.Count - 1 do
    begin
      case gc.InstantMessengers[I].InstantMessengerType of
        itGoogleTalk: fieldtype := 'Google Talk';
        itAIM: fieldtype := 'AIM';
        itYahoo: fieldtype := 'Yahoo';
        itSkype: fieldtype := 'Skype';
        itGQ: fieldtype := 'GQ';
        itMSN: fieldtype := 'MSN';
        itICQ: fieldtype := 'ICQ';
        itJabber: fieldtype := 'Jabber';
        itCustom: fieldtype := gc.InstantMessengers[I].CustomType;
      end;
      li := lvIM.Items.Add;
      li.Caption := gc.InstantMessengers[I].ID;
      li.SubItems.Add(fieldType);
      li.Data := gc.InstantMessengers[I];
    end;

    lvGroup.Items.Clear;
    for I := 0 to gc.Groups.Count - 1 do
    begin
      for J := 0 to AdvGContacts1.Groups.Count - 1 do
      begin
        if gc.Groups[I].ID = AdvGContacts1.Groups[J].ID then
        begin
          li := lvGroup.Items.Add;
          li.Caption := AdvGContacts1.Groups[J].Summary;
          li.Data := gc.Groups[I];
        end;
      end;
    end;

    AdvCloudImage1.URL := gc.ImageURL;
  end;
end;

procedure TForm1.FillContacts;
var
  i: integer;
begin
  ListBox1.Items.Clear;
  advgcontacts1.GetContacts;
  for i := 0 to advgcontacts1.Contacts.Count - 1 do
  begin
    listbox1.Items.AddObject(advgcontacts1.Contacts[i].Title, AdvGContacts1.Contacts[i]);
  end;
end;

procedure TForm1.FillGroups(Update: Boolean);
var
  i: integer;
begin
  if Update then
    advgcontacts1.GetContactGroups;
  lbGroups.Items.Clear;
  cbGroups.Items.Clear;
  for i := 0 to advgcontacts1.Groups.Count - 1 do
  begin
    lbGroups.Items.AddObject(advgcontacts1.Groups[i].Summary, AdvGContacts1.Groups[i]);

    cbGroups.Items.AddObject(AdvGContacts1.Groups[i].Summary, AdvGContacts1.Groups[i]);
    cbGroups.ItemIndex := 0;
  end;
end;

procedure TForm1.ListBox1Click(Sender: TObject);
begin
  FillContactDetails;
  PageControl1.Visible := true;
end;

procedure TForm1.lvAddressChange(Sender: TObject; Item: TListItem;
  Change: TItemChange);
var
  ga: TGPostalAddress;
begin
  if lvAddress.ItemIndex >= 0 then
  begin
    ga := lvAddress.Items[lvAddress.ItemIndex].Data;
    edStreet.Text := ga.Street;
    edZip.Text := ga.PostCode;
    edCity.Text := ga.City;
    edCountry.Text := ga.Country;
    edAddressCustom.Text := ga.CustomType;
    cbAddressPrimary.Checked := ga.Primary;
    cbAddressType.ItemIndex := Ord(ga.AddressType);
  end;
end;

procedure TForm1.lvCustomChange(Sender: TObject; Item: TListItem;
  Change: TItemChange);
var
  gc: TGCustomData;
begin
  if lvCustom.ItemIndex >= 0 then
  begin
    gc := lvCustom.Items[lvCustom.ItemIndex].Data;
    edCustomValue.Text := gc.Value;
    edCustomKey.Text := gc.Key;
  end;
end;

procedure TForm1.lvEmailChange(Sender: TObject; Item: TListItem;
  Change: TItemChange);
var
  ge: TGEmail;
begin
  if lvEmail.ItemIndex >= 0 then
  begin
    ge := lvEmail.Items[lvEmail.ItemIndex].Data;
    edEmail.Text := ge.Address;
    edEmailCustom.Text := ge.CustomType;
    cbEmailPrimary.Checked := ge.Primary;
    cbEmailType.ItemIndex := Ord(ge.EmailType);
  end;
end;

procedure TForm1.lvIMChange(Sender: TObject; Item: TListItem;
  Change: TItemChange);
var
  gi: TGInstantMessenger;
begin
  if lvIM.ItemIndex >= 0 then
  begin
    gi := lvIM.Items[lvIM.ItemIndex].Data;
    edIM.Text := gi.ID;
    edIMCustom.Text := gi.CustomType;
    cbIMType.ItemIndex := Ord(gi.InstantMessengerType);
  end;
end;

procedure TForm1.lvPhoneChange(Sender: TObject; Item: TListItem;
  Change: TItemChange);
var
  gp: TGPhoneNumber;
begin
  if lvPhone.ItemIndex >= 0 then
  begin
    gp := lvPhone.Items[lvPhone.ItemIndex].Data;
    edPhone.Text := gp.Number;
    edPhoneCustom.Text := gp.CustomType;
    cbPhonePrimary.Checked := gp.Primary;
    cbPhoneType.ItemIndex := Ord(gp.PhoneType);
  end;
end;

procedure TForm1.lvRelationChange(Sender: TObject; Item: TListItem;
  Change: TItemChange);
var
  gr: TGRelation;
begin
  if lvRelation.ItemIndex >= 0 then
  begin
    gr := lvRelation.Items[lvRelation.ItemIndex].Data;
    edRelation.Text := gr.Value;
    edCustomRelation.Text := gr.CustomRelation;
    cbRelation.ItemIndex := Ord(gr.Relation);
  end;
end;

procedure TForm1.lvWebsiteChange(Sender: TObject; Item: TListItem;
  Change: TItemChange);
var
  gw: TGWebsite;
begin
  if lvWebsite.ItemIndex >= 0 then
  begin
    gw := lvWebsite.Items[lvWebsite.ItemIndex].Data;
    edWebsite.Text := gw.URL;
    edCustomWebsite.Text := gw.CustomType;
    cbCustomWebsite.ItemIndex := Ord(gw.WebsiteType);
  end;
end;

procedure TForm1.ToggleControls;
begin
  Button1.Enabled := not Connected;
  btRemove.Enabled := Connected;
  Button6.Enabled := Connected;
  Button2.Enabled := Connected;
  lbGroups.Enabled := Connected;
  ListBox1.Enabled := Connected;
  edGroupName.Enabled := Connected;
  btGroupAdd.Enabled := Connected;
  btGroupUpdate.Enabled := Connected;
  btGroupDelete.Enabled := Connected;
  GroupBox1.Enabled := Connected;
  edFirstName.Enabled := Connected;
  edLastName.Enabled := Connected;
  edNickName.Enabled := Connected;
  dpBirthDay.Enabled := Connected;
  edCompany.Enabled := Connected;
  edJob.Enabled := Connected;
  meNotes.Enabled := Connected;
  btAddContact.Enabled := Connected;
  btUpdateContact.Enabled := Connected;
  btDeleteContact.Enabled := Connected;
  btUpdateImage.Enabled := Connected;
  btDeleteImage.Enabled := Connected;
end;

procedure TForm1.websiteClick(Sender: TObject);
begin
//  shellexecute(0,'open',pchar(website.Caption),nil,nil,SW_NORMAL);
end;

end.
